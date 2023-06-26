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

type dependencyMap []Pair[btps.Term, []btps.Form]

func (d dependencyMap) Copy() dependencyMap {
	oth := make(dependencyMap, len(d))
	for _, v := range d {
		p := MakePair(v.Fst.Copy(), make([]btps.Form, len(v.Snd)))
		copy(p.Snd, v.Snd)
		oth = append(oth, p)
	}
	return oth
}

func (d dependencyMap) Get(t btps.Term) ([]btps.Form, bool) {
	for _, v := range d {
		if v.Fst.Equals(t) {
			return v.Snd, true
		}
	}
	return []btps.Form{}, false
}

func (d *dependencyMap) Add(t btps.Term, f btps.Form) {
	found := false
	for i, v := range *d {
		if v.Fst.Equals(t) {
			(*d)[i] = MakePair(t, append(v.Snd, f))
			found = true
		}
	}

	if !found {
		*d = append(*d, MakePair(t, []btps.Form{f}))
	}
}

func (d *dependencyMap) Set(t btps.Term, fl []btps.Form) {
	for i, v := range *d {
		if v.Fst.Equals(t) {
			(*d)[i] = MakePair(t, fl)
		}
	}
}

// Utilitary struct to build the proof. Keeps everything that's needed on a proofstep.
type GS3Proof struct {
	dependency   dependencyMap    // Dependency graph for formulas
	offspring    Graph[btps.Form] // Graph of the offsprings of a formula
	branchForms  btps.FormList    // The formulas generated at the current point in the proof.
	rulesApplied []Pair[int, tableaux.ProofStruct]
	lastNode     *GS3Sequent
}

func MakeGS3Proof(proof []tableaux.ProofStruct) *GS3Sequent {
	gs3Proof := GS3Proof{}
	gs3Proof.offspring = MakeGraph[btps.Form]()
	return gs3Proof.makeProof(proof)
}

// ----------------------------------------------------------------------------
// Private methods.
// ----------------------------------------------------------------------------

// Makes a GS3 proof from a tableaux proof.
// TODO: get uninstanciated proof here to put in the offspring graph.
func (gs *GS3Proof) makeProof(proof []tableaux.ProofStruct) *GS3Sequent {
	subRoot := MakeNewSequent()
	var resultFormulas [][]btps.Form
	gs.branchForms = append(gs.branchForms, proof[0].Formula.GetForm())

	// For each proofstep, create a node & populate which is a child of the last proofstep.
	for _, prf := range proof {
		var node *GS3Sequent
		node, resultFormulas = gs.makeProofOneStep(prf, subRoot)
		if gs.lastNode != nil && gs.lastNode != node && node != nil {
			gs.lastNode.addChild(node)
			gs.lastNode = node
		}
		if len(resultFormulas) == 1 {
			gs.branchForms = append(gs.branchForms, resultFormulas[0]...)
		}
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
		gs.lastNode.addChild(childProof.makeProof(child))
	}

	return subRoot
}

// Returns a sequent and the result formulas: they can not be
func (gs *GS3Proof) makeProofOneStep(proofStep tableaux.ProofStruct, parent *GS3Sequent) (*GS3Sequent, [][]btps.Form) {
	seq := MakeNewSequent()
	seq.setHypotheses(gs.branchForms)

	PrintInfo("MPOS", proofStep.Rule_name)

	rule, _ := proofStructRuleToGS3Rule(proofStep.GetRuleName())
	form := proofStep.GetFormula().GetForm()

	// TODO: manage reintroduction and rewrite: second return value of proofStructRuleToGS3Rule
	switch rule {
	// Immediate, just apply the rule.
	case NNOT, NOR, NIMP, AND, NAND, NEQU, OR, IMP, EQU, AX:
		seq.setAppliedRule(rule)
		seq.setAppliedOn(form)
		if parent.isEmpty() {
			*parent = *seq
			seq = parent
		}
	// Be careful as one gamma rule may instantiate multiple variables.
	case ALL, NEX:
		form, seq = gs.manageGammaStep(proofStep, rule, parent)
	// Be extra careful as it is a delta-rule
	case NALL, EX:
		// TODO: pass parent to deltastep.
		form, seq = gs.manageDeltaStep(proofStep, rule, parent)
	case W:
		seq = gs.weakenForm(form)
	}

	// Manage the proof's rules, offspring graph & format the result formulas properly.
	forms := gs.postTreatment(proofStep, rule, form)

	return seq, forms
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
		"WEAKEN":           W,
	}
	r, ok := mapping[rule]
	return r, ok
}
func ruleToTableauxString(rule int) string {
	mapping := map[int]string{
		NNOT: "ALPHA_NOT_NOT",
		NOR:  "ALPHA_NOT_OR",
		NIMP: "ALPHA_NOT_IMPLY",
		AND:  "ALPHA_AND",
		NAND: "ALPHA_NOT_AND",
		NEQU: "BETA_NOT_EQUIV",
		OR:   "BETA_OR",
		IMP:  "BETA_IMPLY",
		EQU:  "BETA_EQUIV",
		NEX:  "GAMMA_NOT_EXISTS",
		ALL:  "GAMMA_FORALL",
		NALL: "DELTA_NOT_FORALL",
		EX:   "DELTA_EXISTS",
		AX:   "CLOSURE",
		W:    "WEAKEN",
	}
	return mapping[rule]
}

func (gs *GS3Proof) manageGammaStep(proofStep tableaux.ProofStruct, rule int, seq *GS3Sequent) (btps.Form, *GS3Sequent) {
	// Manage gamma: add all the gammas except the result formula to the thing
	resultForm := proofStep.GetResultFormulas()[0].GetForms()[0]
	// TODO: what happens if the result form doesn't care of what it's instantiated with?
	// JRO: Should be OKAY as "nil" is returned if I understand everything properly.
	intermediateForms, termsDependency := manageGammasInstantiations(proofStep.GetFormula().GetForm(), resultForm)

	// Update dependency graph & offspring tree.
	for i, term := range termsDependency {
		gs.dependency.Add(term, intermediateForms[i])
	}
	for i := 0; i < len(intermediateForms)-1; i++ {
		gs.offspring.AddEdge(intermediateForms[i], intermediateForms[i+1])
	}

	// Create all the next sequents needed.
	lastSeq := gs.createSubSequents(intermediateForms, termsDependency, rule, seq)

	// Needed to have the right offspring tree when updating later
	return intermediateForms[len(intermediateForms)-1], lastSeq
}

func (gs *GS3Proof) manageDeltaStep(proofStep tableaux.ProofStruct, rule int, parent *GS3Sequent) (btps.Form, *GS3Sequent) {
	resultForm := proofStep.GetResultFormulas()[0].GetForms()[0]
	intermediateForms, termsGenerated := manageDeltasSkolemisations(proofStep.GetFormula().GetForm(), resultForm)

	var deltaSeq *GS3Sequent
	// TODO: look at the interaction with the last form
	for i := 0; i < len(intermediateForms); i++ {
		dependantForms, atLeastOneDependantForm := gs.getFormulasDependantFromTerm(termsGenerated[i])
		currentResultForm := resultForm
		if i < len(intermediateForms)-1 {
			currentResultForm = intermediateForms[i+1]
		}
		if atLeastOneDependantForm {
			rulesApplied, offsprings := gs.getRulesAppliedInOrder(dependantForms)
			lastSequent, escaped := gs.weakenForms(offsprings, intermediateForms[i])
			deltaSeq = gs.applyDeltaRule(intermediateForms[i], rule, termsGenerated[i])
			lastSequent.addChild(deltaSeq)
			if escaped {
				seq := gs.weakenForm(intermediateForms[i])
				deltaSeq.addChild(seq)
				deltaSeq = seq
				gs.lastNode = deltaSeq
			}
			gs.branchForms = append(gs.branchForms, currentResultForm)
			// The subroot doesnt need to be added as a child of deltaSeq,
			// as it is already taken care of
			subRoot := gs.applyRulesBack(rulesApplied)
			deltaSeq = getLastSequent(subRoot)
		} else {
			// Just apply the delta-rule.
			deltaSeq = gs.applyDeltaRule(intermediateForms[i], rule, termsGenerated[i])
			gs.branchForms = append(gs.branchForms, currentResultForm)
			gs.lastNode.addChild(deltaSeq)
		}
		gs.lastNode = deltaSeq
	}
	return intermediateForms[len(intermediateForms)-1], nil
}

func (gs *GS3Proof) postTreatment(proofStep tableaux.ProofStruct, rule int, form btps.Form) [][]btps.Form {
	// Add the rule applied & the formula it has been applied on.
	gs.rulesApplied = append(gs.rulesApplied, MakePair(rule, proofStep))

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

func (gs *GS3Proof) createSubSequents(intermediateForms []btps.Form, termsGenerated []btps.Term, rule int, seq *GS3Sequent) *GS3Sequent {
	for i, form := range intermediateForms {
		// The first formula should be the one on which the original rule is applied, so there's no need to add it in the branchForms.
		if i > 0 {
			gs.branchForms = append(gs.branchForms, form)
		}
		current := MakeNewSequent()
		current.setHypotheses(gs.branchForms)
		current.setAppliedRule(rule)
		current.setAppliedOn(form)
		current.setTermGenerated(termsGenerated[i])
		if i < len(intermediateForms)-1 {
			gs.rulesApplied = append(gs.rulesApplied, MakePair(rule, makeGammaProofStructFrom(form, intermediateForms[i+1], rule)))
		}
		if gs.lastNode != nil {
			gs.lastNode.addChild(current)
		}
		if i == 0 && seq.isEmpty() {
			*seq = *current
			current = seq
		}
		gs.lastNode = current
	}
	// This update is needed as the proof is sequentially updated in makeProof. It is so that the rule matches
	// with the others rules.
	return gs.lastNode
}

func makeGammaProofStructFrom(f, nf btps.Form, rule int) tableaux.ProofStruct {
	proofStruct := tableaux.MakeEmptyProofStruct()
	proofStruct.Formula = btps.MakeFormAndTerm(f, nil)
	proofStruct.Result_formulas = []tableaux.IntFormAndTermsList{tableaux.MakeIntFormAndTermsList(0, btps.MakeSingleElementFormAndTermList(btps.MakeFormAndTerm(nf, nil)))}
	proofStruct.Rule_name = ruleToTableauxString(rule)
	return proofStruct
}

func (gs GS3Proof) getFormulasDependantFromTerm(term btps.Term) ([]btps.Form, bool) {
	fs, ok := gs.dependency.Get(term)
	return fs, ok
}

func (gs GS3Proof) getRulesAppliedInOrder(dependantForms []btps.Form) ([]Pair[int, tableaux.ProofStruct], []btps.Form) {
	offsprings := btps.MakeEmptyFormList()
	for _, form := range dependantForms {
		offsprings = append(offsprings, gs.getOffspringsOf(form)...)
	}

	rules := []Pair[int, tableaux.ProofStruct]{}
	for _, rule := range gs.rulesApplied {
		if offsprings.Contains(rule.Snd.GetFormula().GetForm()) {
			rules = append(rules, rule)
		}
	}

	return rules, offsprings
}

func (gs GS3Proof) getOffspringsOf(form btps.Form) []btps.Form {
	// TODO: only take the offsprings in which the FV appears (how to know that though?)
	dfs := gs.offspring.DepthFirstSearch(form)
	return dfs[1:]
}

func (gs *GS3Proof) weakenForms(forms []btps.Form, except btps.Form) (*GS3Sequent, bool) {
	found := false
	for _, form := range forms {
		if !form.Equals(except) {
			newSeq := gs.weakenForm(form)
			gs.lastNode.addChild(newSeq)
			gs.lastNode = newSeq
			found = true
		}
	}
	return gs.lastNode, found
}

func (gs *GS3Proof) weakenForm(form btps.Form) *GS3Sequent {
	seq := MakeNewSequent()
	seq.setHypotheses(gs.branchForms)
	seq.setAppliedRule(W)
	seq.setAppliedOn(form)

	gs.removeHypothesis(form)
	gs.removeAncestryAndOffsprings(form)
	gs.removeDependency(form)

	return seq
}

func (gs *GS3Proof) removeHypothesis(form btps.Form) {
	index := gs.branchForms.Find(form)
	gs.branchForms = append(gs.branchForms[:index], gs.branchForms[index+1:]...)
}

func (gs *GS3Proof) removeAncestryAndOffsprings(form btps.Form) {
	gs.offspring.CleanEdgesFromVertex(form)
}

func (gs *GS3Proof) removeDependency(form btps.Form) {
	for _, v := range gs.dependency {
		for i, f := range v.Snd {
			if f.Equals(form) {
				ls, _ := gs.dependency.Get(v.Fst)
				gs.dependency.Set(v.Fst, append(ls[:i], ls[i+1:]...))
				return
			}
		}
	}
}

func (gs *GS3Proof) applyDeltaRule(form btps.Form, rule int, term btps.Term) *GS3Sequent {
	seq := MakeNewSequent()
	seq.setHypotheses(gs.branchForms)
	seq.setAppliedRule(rule)
	seq.setAppliedOn(form)
	seq.setTermGenerated(term)

	return seq
}

func (gs *GS3Proof) applyRulesBack(rulesToApply []Pair[int, tableaux.ProofStruct]) *GS3Sequent {
	// Transform everything back to a proof struct & call makeProof on it.
	// We need to have the right proofstructs here: the proofstructs of the branches that is not this one
	// on the beta formulas.
	// It should fit properly so it's good
	// Just need to weaken tho
	proof := gs.rebuildProof(rulesToApply)
	return gs.makeProof(proof)
}

func (gs *GS3Proof) rebuildProof(rules []Pair[int, tableaux.ProofStruct]) []tableaux.ProofStruct {
	rebuiltProof := make([]tableaux.ProofStruct, 0)
	for i, rule := range rules {
		// These rules correspond to a beta-rule.
		if rule.Fst == NAND || rule.Fst == NEQU || rule.Fst == EQU || rule.Fst == OR || rule.Fst == IMP {
			node := rule.Snd
			currentBranchChildId := gs.getCurrentBranchChildId(node.GetResultFormulas())
			if currentBranchChildId == -1 {
				PrintError("RP", "Child not found. What to do?")
			}
			childIndex := -1
			for j, child := range node.GetChildren() {
				if child[0].GetNodeId() == currentBranchChildId {
					node.Children[j] = gs.rebuildProof(rules[i+1:])
					childIndex = j
				} else {
					// Weaken the formulas that shouldn't be here, i.e. the ones generated after.
					formsToWeaken := gs.getFormsToWeaken(rules[i:])
					node.Children[j] = append(makeWeakeningProofStructs(formsToWeaken), node.Children[j]...)
				}
			}
			// Put the child to the left, to make it easy to find it back later.
			tmp := node.Children[childIndex]
			node.Children[childIndex] = node.Children[0]
			node.Children[0] = tmp
			rebuiltProof = append(rebuiltProof, node)
			break
		} else {
			rebuiltProof = append(rebuiltProof, rule.Snd)
		}
	}
	return rebuiltProof
}

func (gs GS3Proof) getCurrentBranchChildId(resultForms []tableaux.IntFormAndTermsList) int {
	for _, ifat := range resultForms {
		for _, form := range ifat.GetFL() {
			if gs.branchForms.Contains(form.GetForm()) {
				return ifat.GetI()
			}
		}
	}
	return -1
}

func (gs GS3Proof) getFormsToWeaken(rulesAlreadyWeakened []Pair[int, tableaux.ProofStruct]) []btps.Form {
	formsToWeaken := make([]btps.Form, 0)
	index := gs.getFirstRuleAppliedAfter(rulesAlreadyWeakened[0])
	if index == -1 {
		PrintError("GFTW", "Beta-rule not found in applied rules. What to do?")
	}
	for _, rule := range gs.rulesApplied[index+1:] {
		// Get form in result formulas inter the ones in the branch.
		formsToWeaken = append(formsToWeaken, gs.getIntersectionBetweenResultAndBranchForms(rule.Snd.GetResultFormulas())...)
	}
	return formsToWeaken
}

func (gs GS3Proof) getFirstRuleAppliedAfter(firstRuleWeakened Pair[int, tableaux.ProofStruct]) int {
	for i, rule := range gs.rulesApplied {
		if equalRulePair(rule, firstRuleWeakened) {
			return i
		}
	}
	return -1
}

func (gs GS3Proof) getIntersectionBetweenResultAndBranchForms(forms []tableaux.IntFormAndTermsList) []btps.Form {
	fs := make([]btps.Form, 0)
	for _, fl := range forms {
		for _, f := range fl.GetForms() {
			if gs.branchForms.Contains(f) {
				fs = append(fs, f)
			}
		}
	}
	return fs
}

func equalRulePair(a, b Pair[int, tableaux.ProofStruct]) bool {
	return a.Fst == b.Fst && a.Snd.Formula.GetForm().Equals(b.Snd.Formula.GetForm())
}

func makeWeakeningProofStructs(forms []btps.Form) []tableaux.ProofStruct {
	resultingProof := make([]tableaux.ProofStruct, 0)
	for _, f := range forms {
		proofStruct := tableaux.MakeEmptyProofStruct()
		proofStruct.SetFormulaProof(btps.MakeFormAndTerm(f, btps.TermList{}))
		proofStruct.SetRuleNameProof("WEAKEN")
		resultingProof = append(resultingProof, proofStruct)
	}
	return resultingProof
}

func getLastSequent(seq *GS3Sequent) *GS3Sequent {
	// As it has been properly built, always take the first one.
	for len(seq.children) > 0 {
		seq = seq.children[0]
	}
	return seq
}
