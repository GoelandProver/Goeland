/**
 * Copyright 2022 by the authors (see AUTHORS).
 *
 * Goéland is an automated theorem prover for first order logic.
 *
 * This software is governed by the CeCILL license under French law and
 * abiding by the rules of distribution of free software.  You can  use,
 * modify and/ or redistribute the software under the terms of the CeCILL
 * license as circulated by CEA, CNRS and INRIA at the following URL
 * "http://www.cecill.info".
 *
 * As a counterpart to the access to the source code and  rights to copy,
 * modify and redistribute granted by the license, users are provided only
 * with a limited warranty  and the software's author,  the holder of the
 * economic rights,  and the successive licensors  have only  limited
 * liability.
 *
 * In this respect, the user's attention is drawn to the risks associated
 * with loading,  using,  modifying and/or developing or reproducing the
 * software by the user in light of its specific status of free software,
 * that may mean  that it is complicated to manipulate,  and  that  also
 * therefore means  that it is reserved for developers  and  experienced
 * professionals having in-depth computer knowledge. Users are therefore
 * encouraged to load and test the software's suitability as regards their
 * requirements in conditions enabling the security of their systems and/or
 * data to be ensured and,  more generally, to use and operate it in the
 * same conditions as regards security.
 *
 * The fact that you are presently reading this means that you have had
 * knowledge of the CeCILL license and that you accept its terms.
 **/

/************/
/* proof.go */
/************/

/**
 * This file provides a definition of a GS3 proof: the object & the exported functions.
 **/

package gs3

import (
	. "github.com/GoelandProver/Goeland/global"
	btps "github.com/GoelandProver/Goeland/types/basic-types"
	tableaux "github.com/GoelandProver/Goeland/visualization_proof"
)

type dependencyMap map[btps.Term][]btps.Form

func (d dependencyMap) Copy() dependencyMap {
	oth := make(dependencyMap)
	for k, v := range d {
		oth[k] = v
	}
	return oth
}

// Utilitary struct to build the proof. Keeps everything that's needed on a proofstep.
type GS3Proof struct {
	dependency   dependencyMap    // Dependency graph for formulas
	offspring    Graph[btps.Form] // Graph of the offsprings of a formula
	branchForms  btps.FormList    // The formulas generated at the current point in the proof.
	rulesApplied []Pair[int, btps.Form]
	lastNode     *GS3Sequent
}

func MakeGS3Proof(proof []tableaux.ProofStruct) *GS3Sequent {
	gs3Proof := GS3Proof{}
	return gs3Proof.makeProof(proof)
}

// ----------------------------------------------------------------------------
// Private methods.
// ----------------------------------------------------------------------------

// Makes a GS3 proof from a tableaux proof.
func (gs GS3Proof) makeProof(proof []tableaux.ProofStruct) *GS3Sequent {
	var subRoot *GS3Sequent
	var resultFormulas [][]btps.Form

	// For each proofstep, create a node & populate which is a child of the last proofstep.
	for _, prf := range proof {
		var node *GS3Sequent
		node, resultFormulas = gs.makeProofOneStep(prf)
		if gs.lastNode != nil {
			gs.lastNode.addChild(node)
		} else {
			subRoot = gs.lastNode
		}
		if len(resultFormulas) == 1 {
			gs.branchForms = append(gs.branchForms, resultFormulas[0]...)
		}
		gs.lastNode = node
	}

	// The last proofstep is a branching proofstep, so launch makeProof back on each child.
	for i, child := range proof[len(proof)-1].GetChildren() {
		childProof := GS3Proof{
			dependency:  gs.dependency.Copy(),
			offspring:   gs.offspring.Copy(),
			branchForms: appcp(gs.branchForms, resultFormulas[i]...),
		}
		for _, f := range resultFormulas[i] {
			childProof.offspring.AddEdge(proof[len(proof)-1].Formula.GetForm(), f)
		}
		gs.lastNode.children = append(gs.lastNode.children, childProof.makeProof(child))
	}

	return subRoot
}

// Returns a sequent and the result formulas: they can not be
func (gs *GS3Proof) makeProofOneStep(proofStep tableaux.ProofStruct) (*GS3Sequent, [][]btps.Form) {
	seq := GS3Sequent{}
	seq.setHypotheses(gs.branchForms)

	rule, _ := proofStructRuleToGS3Rule(proofStep.GetRuleName())
	form := proofStep.GetFormula().GetForm()

	// TODO: manage reintroduction and rewrite: second return value of proofStructRuleToGS3Rule
	switch rule {
	// Immediate, just apply the rule.
	case NNOT, NOR, NIMP, AND, NAND, NEQU, OR, IMP, EQU:
		seq.setAppliedRule(rule)
		seq.setAppliedOn(form)
	// Be careful as one gamma rule may instantiate multiple variables.
	case ALL, NEX:
		form, seq = gs.manageGammaStep(proofStep, rule)
	// Be extra careful as it is a delta-rule
	case NALL, EX:
		form, seq = gs.manageDeltaStep(proofStep, rule)
	}

	// Manage the proof's rules, offspring graph & format the result formulas properly.
	forms := gs.postTreatment(proofStep, rule, form)

	return &seq, forms
}

func proofStructRuleToGS3Rule(rule string) (int, bool) {
	mapping := map[string]int{
		"ALPHA_NOT_NOT":    NNOT,
		"ALPHA_NOT_OR":     NOR,
		"ALPHA_NOT_IMPLY":  NIMP,
		"ALPHA_AND":        AND,
		"BETA_NOT_AND":     NAND,
		"BETA_NOT_EQUIV":   NEQU,
		"BETA_OR":          OR,
		"BETA_IMPLY":       IMP,
		"BETA_EQUIV":       EQU,
		"GAMMA_NOT_EXISTS": NEX,
		"GAMMA_FORALL":     ALL,
		"DELTA_NOT_FORALL": NALL,
		"DELTA_EXISTS":     EX,
		"CLOSURE":          AX,
	}
	r, ok := mapping[rule]
	return r, ok
}

func (gs *GS3Proof) manageGammaStep(proofStep tableaux.ProofStruct, rule int) (btps.Form, GS3Sequent) {
	// Manage gamma: add all the gammas except the result formula to the thing
	resultForm := proofStep.GetResultFormulas()[0].GetForms()[0]
	// TODO: what happens if the result form doesn't care of what it's instantiated with?
	// JRO: Should be OKAY as "nil" is returned if I understand everything properly.
	intermediateForms, termsDependency := manageGammasInstantiations(proofStep.GetFormula().GetForm(), resultForm)

	// Update dependency graph & offspring tree.
	for i, term := range termsDependency {
		gs.dependency[term] = append(gs.dependency[term], intermediateForms[i])
	}
	for i := 0; i < len(intermediateForms)-1; i++ {
		gs.offspring.AddEdge(intermediateForms[i], intermediateForms[i+1])
	}

	// Create all the next sequents needed.
	seq := gs.createSubSequents(intermediateForms, termsDependency, rule)

	// Needed to have the right offspring tree when updating later
	return intermediateForms[len(intermediateForms)-1], seq
}

func (gs *GS3Proof) manageDeltaStep(proofStep tableaux.ProofStruct, rule int) (btps.Form, GS3Sequent) {
	resultForm := proofStep.GetResultFormulas()[0].GetForms()[0]
	intermediateForms, termsGenerated := manageDeltasSkolemisations(proofStep.GetFormula().GetForm(), resultForm)

	// TODO: look at the interaction with the last form
	for i := 0; i < len(intermediateForms); i++ {
		var deltaSeq *GS3Sequent
		dependantForms, atLeastOneDependantForm := gs.getFormulasDependantFromTerm(termsGenerated[i])
		currentResultForm := resultForm
		if i < len(intermediateForms)-1 {
			currentResultForm = intermediateForms[i+1]
		}
		if atLeastOneDependantForm {
			rulesApplied, offsprings := gs.getRulesAppliedInOrder(dependantForms)
			lastSequent := gs.weakenForms(offsprings)
			deltaSeq = gs.applyDeltaRule(intermediateForms[i], rule, termsGenerated[i])
			gs.branchForms = append(gs.branchForms, currentResultForm)
			lastSequent.children = append(lastSequent.children, deltaSeq)
			gs.applyRulesBack(rulesApplied)
			// apply rulesApplied back
			// TODO: get the last node corresponding to the current leaf...
		} else {
			// Just apply the delta-rule.
			deltaSeq = gs.applyDeltaRule(intermediateForms[i], rule, termsGenerated[i])
			gs.branchForms = append(gs.branchForms, currentResultForm)
		}

		// TODO: see what needs to be done with the next 4 lines.
		if i < len(intermediateForms)-1 {
			gs.lastNode.children = append(gs.lastNode.children, deltaSeq)
		}
		gs.lastNode = deltaSeq
	}

}

func (gs *GS3Proof) postTreatment(proofStep tableaux.ProofStruct, rule int, form btps.Form) [][]btps.Form {
	// Add the rule applied & the formula it has been applied on.
	gs.rulesApplied = append(gs.rulesApplied, MakePair(rule, form))

	var forms [][]btps.Form
	for _, fs := range proofStep.GetResultFormulas() {
		forms = append(forms, fs.GetForms())
	}

	// Add all the offsprings of the formula if it continues in the same branch.
	if len(forms) == 1 {
		for _, f := range forms[0] {
			gs.offspring.AddEdge(form, f)
		}
	}

	return forms
}

func (gs *GS3Proof) createSubSequents(intermediateForms []btps.Form, termsGenerated []btps.Term, rule int) GS3Sequent {
	var last *GS3Sequent
	for i, form := range intermediateForms {
		// The first formula should be the one on which the original rule is applied, so there's no need to add it in the branchForms.
		if i > 0 {
			gs.branchForms = append(gs.branchForms, form)
		}
		current := GS3Sequent{}
		current.setHypotheses(gs.branchForms)
		current.setAppliedRule(rule)
		current.setAppliedOn(form)
		current.setTermGenerated(termsGenerated[i])
		if last != nil {
			last.addChild(&current)
		} else {
			gs.lastNode.addChild(&current)
		}
		last = &current
		gs.rulesApplied = append(gs.rulesApplied, MakePair(rule, form))
	}
	// This update is needed as the proof is sequentially updated in makeProof. It is so that the rule matches
	// with the others rules.
	gs.lastNode = last
	gs.rulesApplied = gs.rulesApplied[:len(gs.rulesApplied)-1]
	return *last
}

func (gs GS3Proof) getFormulasDependantFromTerm(term btps.Term) ([]btps.Form, bool) {
	fs, ok := gs.dependency[term]
	return fs, ok
}

func (gs GS3Proof) getRulesAppliedInOrder(dependantForms []btps.Form) ([]Pair[int, btps.Form], []btps.Form) {
	offsprings := btps.MakeEmptyFormList()
	for _, form := range dependantForms {
		offsprings = append(offsprings, gs.getOffspringsOf(form)...)
	}

	rules := []Pair[int, btps.Form]{}
	for _, rule := range gs.rulesApplied {
		if offsprings.Contains(rule.Snd) {
			rules = append(rules, rule)
		}
	}

	return rules, offsprings
}

func (gs GS3Proof) getOffspringsOf(form btps.Form) []btps.Form {
	return gs.offspring.DepthFirstSearch(form)
}

func (gs *GS3Proof) weakenForms(forms []btps.Form) *GS3Sequent {
	var seq *GS3Sequent
	for _, form := range forms {
		newSeq := gs.weakenForm(form)
		seq.children = append(seq.children, newSeq)
		seq = newSeq
	}
	return seq
}

func (gs *GS3Proof) weakenForm(form btps.Form) *GS3Sequent {
	seq := GS3Sequent{}
	seq.setHypotheses(gs.branchForms)
	seq.setAppliedRule(W)
	seq.setAppliedOn(form)

	gs.removeHypothesis(form)
	gs.removeAncestryAndOffsprings(form)
	gs.removeDependency(form)

	return &seq
}

func (gs *GS3Proof) removeHypothesis(form btps.Form) {
	index := gs.branchForms.Find(form)
	gs.branchForms = append(gs.branchForms[:index], gs.branchForms[index+1:]...)
}

func (gs *GS3Proof) removeAncestryAndOffsprings(form btps.Form) {
	gs.offspring.CleanEdgesFromVertex(form)
}

func (gs *GS3Proof) removeDependency(form btps.Form) {
	for k, v := range gs.dependency {
		for i, f := range v {
			if f.Equals(form) {
				gs.dependency[k] = append(gs.dependency[k][:i], gs.dependency[k][i+1:]...)
				return
			}
		}
	}
}

func (gs *GS3Proof) applyDeltaRule(form btps.Form, rule int, term btps.Term) *GS3Sequent {
	seq := GS3Sequent{}
	seq.setHypotheses(gs.branchForms)
	seq.setAppliedRule(rule)
	seq.setAppliedOn(form)
	seq.setTermGenerated(term)

	return &seq
}

func (gs *GS3Proof) applyRulesBack(rulesToApply []Pair[int, btps.Form]) {
	// Transform everything back to a proof struct & call makeProof on it.
}
