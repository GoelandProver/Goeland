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
		if v.Fst != nil {
			p := MakePair(v.Fst.Copy(), make([]btps.Form, len(v.Snd)))
			copy(p.Snd, v.Snd)
			oth = append(oth, p)
		}
	}
	return oth
}

func (d dependencyMap) Get(t btps.Term) ([]btps.Form, bool) {
	for _, v := range d {
		if v.Fst != nil && v.Fst.Equals(t) {
			return v.Snd, true
		}
	}
	return []btps.Form{}, false
}

func (d *dependencyMap) Add(t btps.Term, f btps.Form) {
	found := false
	for i, v := range *d {
		if v.Fst != nil && t != nil && v.Fst.Equals(t) {
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
		if v.Fst != nil && v.Fst.Equals(t) {
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

func (gs GS3Proof) Copy() GS3Proof {
	return GS3Proof{
		dependency:   gs.dependency.Copy(),
		offspring:    gs.offspring.Copy(),
		branchForms:  appcp(gs.branchForms),
		lastNode:     nil,
		rulesApplied: appcp(gs.rulesApplied),
	}
}

// ----------------------------------------------------------------------------
// Private methods.
// ----------------------------------------------------------------------------

// Makes a GS3 proof from a tableaux proof.
func (gs GS3Proof) makeProof(proof []tableaux.ProofStruct) *GS3Sequent {
	if len(proof) == 0 {
		return nil
	}
	subRoot := MakeNewSequent()
	var resultFormulas [][]btps.Form
	gs.branchForms = append(gs.branchForms, proof[0].Formula.GetForm())

	// For each proofstep, create a node & populate which is a child of the last proofstep.
	for _, prf := range proof {
		resultFormulas = gs.makeProofOneStep(prf, subRoot)
	}

	// The last proofstep is a branching proofstep, so launch makeProof back on each child.
	for i, child := range proof[len(proof)-1].GetChildren() {
		childProof := GS3Proof{
			dependency:   gs.dependency.Copy(),
			offspring:    gs.offspring.Copy(),
			branchForms:  appcp(gs.branchForms, resultFormulas[i]...),
			lastNode:     nil,
			rulesApplied: make([]Pair[int, tableaux.ProofStruct], len(gs.rulesApplied)),
		}
		copy(childProof.rulesApplied, gs.rulesApplied)
		for _, f := range resultFormulas[i] {
			childProof.offspring.AddEdge(proof[len(proof)-1].Formula.GetForm(), f)
		}
		childRoot := childProof.makeProof(child)
		if childRoot != nil {
			gs.lastNode.addChild(childRoot)
		}
	}

	return subRoot
}

// Returns a sequent and the result formulas: they can not be
func (gs *GS3Proof) makeProofOneStep(proofStep tableaux.ProofStruct, parent *GS3Sequent) [][]btps.Form {
	seq := MakeNewSequent()
	seq.setHypotheses(gs.branchForms)

	rule, _ := proofStructRuleToGS3Rule(proofStep.GetRuleName())
	form := proofStep.GetFormula().GetForm()

	// TODO: manage rewrite rules: second return value of proofStructRuleToGS3Rule
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
		form = gs.manageGammaStep(proofStep, rule, parent)
		seq = MakeNewSequent()
	// Be extra careful as it is a delta-rule
	case NALL, EX:
		form = gs.manageDeltaStep(proofStep, rule, parent)
		seq = MakeNewSequent()
	case W:
		seq = gs.weakenForm(form)
	case R: // Ignore this rule
		seq = MakeNewSequent()
	}

	if !seq.isEmpty() {
		if gs.lastNode != nil {
			gs.lastNode.addChild(seq)
		}
		gs.lastNode = seq
	}

	// Manage the proof's rules, offspring graph & format the result formulas properly.
	forms := gs.postTreatment(proofStep, rule, form)
	if !seq.isEmpty() {
		seq.setFormsGenerated(forms)
	}

	// If the length is superior, then it's a branching rule and it needs to be taken care of in makeProof.
	if len(forms) == 1 {
		gs.branchForms = append(gs.branchForms, forms[0]...)
	}
	seq.proof = gs.Copy()
	return forms
}

func (gs *GS3Proof) manageGammaStep(proofStep tableaux.ProofStruct, rule int, seq *GS3Sequent) btps.Form {
	// Manage gamma: add all the gammas except the result formula to the thing
	resultForm := proofStep.GetResultFormulas()[0].GetForms()[0]
	// TODO: what happens if the result form doesn't care of what it's instantiated with?
	// JRO: Should be OKAY as "nil" is returned if I understand everything properly.
	intermediateForms, termsDependency := manageGammasInstantiations(proofStep.GetFormula().GetForm(), resultForm)

	// Update dependency graph & offspring tree.
	for i, term := range termsDependency {
		// TODO: add intermediate form + its subformulas with free variables
		gs.dependency.Add(term, intermediateForms[i])
	}
	for i := 0; i < len(intermediateForms)-1; i++ {
		gs.offspring.AddEdge(intermediateForms[i], intermediateForms[i+1])
	}

	// Create all the next sequents needed.
	lastForm := proofStep.GetResultFormulas()[0].GetFL()[0].GetForm()
	s := gs.createSubSequents(intermediateForms, termsDependency, rule, seq)
	s.setFormsGenerated([][]btps.Form{{lastForm}})
	gs.rulesApplied = append(gs.rulesApplied, MakePair(rule, makeGammaProofStructFrom(intermediateForms[len(intermediateForms)-1], lastForm, rule)))

	// Needed to have the right offspring tree when updating later
	return intermediateForms[len(intermediateForms)-1]
}

func (gs *GS3Proof) manageDeltaStep(proofStep tableaux.ProofStruct, rule int, parent *GS3Sequent) btps.Form {
	resultForm := proofStep.GetResultFormulas()[0].GetForms()[0]
	intermediateForms, termsGenerated := manageDeltasSkolemisations(proofStep.GetFormula().GetForm(), resultForm)

	var deltaSeq *GS3Sequent
	for i := 0; i < len(intermediateForms); i++ {
		dependantForms, atLeastOneDependantForm := gs.getFormulasDependantFromTerm(termsGenerated[i])
		currentResultForm := resultForm
		if i < len(intermediateForms)-1 {
			currentResultForm = intermediateForms[i+1]
		}
		if atLeastOneDependantForm {
			rulesApplied, offsprings := gs.getRulesAppliedInOrder(dependantForms)
			rulesAppliedBeforeWeakening := appcp(gs.rulesApplied)
			_, escaped := gs.weakenForms(offsprings, intermediateForms[i], parent)
			deltaSeq = gs.applyDeltaRule(intermediateForms[i], currentResultForm, rule, termsGenerated[i])
			if parent.isEmpty() {
				*parent = *deltaSeq
				deltaSeq = parent
				gs.lastNode = deltaSeq
			}
			rulesAppliedBeforeWeakening = append(rulesAppliedBeforeWeakening, MakePair(rule, makeGammaProofStructFrom(intermediateForms[i], currentResultForm, rule)))
			gs.lastNode.addChild(deltaSeq)
			if escaped {
				seq := gs.weakenForm(intermediateForms[i])
				deltaSeq.addChild(seq)
				deltaSeq = seq
			}
			gs.lastNode = deltaSeq
			gs.branchForms = append(gs.branchForms, currentResultForm)
			subRoot, childrenIndex := gs.applyRulesBack(rulesAppliedBeforeWeakening, rulesApplied, offsprings)
			if subRoot != nil {
				gs.lastNode.addChild(subRoot)
				deltaSeq = gs.getLastSequent(subRoot, childrenIndex)
			}
		} else {
			// Just apply the delta-rule.
			deltaSeq = gs.applyDeltaRule(intermediateForms[i], currentResultForm, rule, termsGenerated[i])
			gs.branchForms = append(gs.branchForms, currentResultForm)
			if parent.isEmpty() {
				*parent = *deltaSeq
				deltaSeq = parent
			}
			if gs.lastNode != nil {
				gs.lastNode.addChild(deltaSeq)
			}
		}
		gs.lastNode = deltaSeq
	}
	return intermediateForms[len(intermediateForms)-1]
}

func (gs *GS3Proof) postTreatment(proofStep tableaux.ProofStruct, rule int, form btps.Form) [][]btps.Form {
	// Add the rule applied & the formula it has been applied on.
	if !(isGammaRule(rule) || isDeltaRule(rule)) {
		//PrintInfo("ADDED RULE", proofStep.Formula.ToString())
		gs.rulesApplied = append(gs.rulesApplied, MakePair(rule, proofStep))
	}

	var forms [][]btps.Form
	for i, fs := range proofStep.GetResultFormulas() {
		forms = append(forms, fs.GetForms())
		if (rule == NOR || rule == NIMP || rule == AND || rule == EQU) && len(forms[i]) == 1 {
			forms[i] = append(forms[i], forms[i][0].Copy())
		}
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
			gs.rulesApplied = append(gs.rulesApplied, MakePair(rule, makeGammaProofStructFrom(intermediateForms[i], intermediateForms[i+1], rule)))
			current.setFormsGenerated([][]btps.Form{{intermediateForms[i+1]}})
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

func (gs GS3Proof) getRulesAppliedInOrder(dependantForms btps.FormList) ([]Pair[int, tableaux.ProofStruct], []btps.Form) {
	offsprings := btps.MakeEmptyFormList()
	for _, form := range dependantForms {
		offsprings = append(offsprings, gs.getOffspringsOf(form)...)
		if res := offsprings.Find(form); res != -1 {
			offsprings = append(offsprings[:res], offsprings[res+1:]...)
		}
	}

	lastRule := AX
	rules := []Pair[int, tableaux.ProofStruct]{}
	for _, rule := range gs.rulesApplied {
		if offsprings.Contains(rule.Snd.GetFormula().GetForm()) || dependantForms.Contains(rule.Snd.GetFormula().GetForm()) {
			if !((isGammaRule(lastRule) && isGammaRule(rule.Fst)) || (isDeltaRule(lastRule) && isDeltaRule(rule.Fst))) {
				rules = append(rules, rule)
				lastRule = rule.Fst
			} else {
				rules[len(rules)-1].Snd.Result_formulas = rule.Snd.Result_formulas
			}
		}
	}

	return rules, offsprings
}

func (gs GS3Proof) getOffspringsOf(form btps.Form) []btps.Form {
	// TODO: only take the offsprings in which the FV appears: intersection between offspring & dependency
	dfs := gs.offspring.DepthFirstSearch(form)
	return dfs
}

func (gs *GS3Proof) weakenForms(forms []btps.Form, except btps.Form, parent *GS3Sequent) (*GS3Sequent, bool) {
	found := false
	for i, form := range forms {
		if !form.Equals(except) {
			newSeq := gs.weakenForm(form)

			if i == 0 && parent.isEmpty() {
				*parent = *newSeq
				newSeq = parent
			} else {
				gs.lastNode.addChild(newSeq)
			}
			gs.lastNode = newSeq
		} else {
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
	gs.removeRuleAppliedOn(form)

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

func (gs *GS3Proof) removeRuleAppliedOn(form btps.Form) {
	for i, rule := range gs.rulesApplied {
		if rule.Snd.GetFormula().GetForm().Equals(form) {
			gs.rulesApplied = append(gs.rulesApplied[:i], gs.rulesApplied[i+1:]...)
			break
		}
	}
}

func (gs *GS3Proof) applyDeltaRule(form, result btps.Form, rule int, term btps.Term) *GS3Sequent {
	seq := MakeNewSequent()
	seq.setHypotheses(gs.branchForms)
	seq.setAppliedRule(rule)
	seq.setAppliedOn(form)
	seq.setTermGenerated(term)
	seq.setFormsGenerated([][]btps.Form{{result}})

	gs.branchForms = append(gs.branchForms, form)
	gs.offspring.AddEdge(form, result)
	gs.rulesApplied = append(gs.rulesApplied, MakePair(rule, makeGammaProofStructFrom(form, result, rule)))

	return seq
}

func (gs GS3Proof) applyRulesBack(rulesApplied, rulesToApply []Pair[int, tableaux.ProofStruct], weakenedForms []btps.Form) (*GS3Sequent, []int) {
	// Transform everything back to a proof struct & call makeProof on it.
	// We need to have the right proofstructs here: the proofstructs of the branches that is not this one
	// on the beta formulas.
	// It should fit properly so it's good
	// Just need to weaken tho
	proof, childrenIndex := gs.rebuildProof(rulesApplied, rulesToApply, weakenedForms)
	childrenIndex = childrenIndex[:len(childrenIndex)-1]
	gs.lastNode = nil
	return gs.makeProof(proof), childrenIndex
}

func (gs *GS3Proof) rebuildProof(rulesApplied, rules []Pair[int, tableaux.ProofStruct], weakenedForms []btps.Form) ([]tableaux.ProofStruct, []int) {
	rebuiltProof := make([]tableaux.ProofStruct, 0)
	childrenIndex := make([]int, 0)
	for i, rule := range rules {
		// These rules correspond to a beta-rule.
		if rule.Fst == NAND || rule.Fst == NEQU || rule.Fst == EQU || rule.Fst == OR || rule.Fst == IMP {
			node := rule.Snd.Copy()
			currentBranchChildId := gs.getCurrentBranchChildId(node.GetResultFormulas(), weakenedForms)
			if currentBranchChildId == -1 {
				PrintError("RP", "Child not found. What to do?")
			}
			for j, child := range node.Children {
				if child[0].GetNodeId() == currentBranchChildId {
					childrenIndex = append(childrenIndex, j)
					if i+1 < len(rules) {
						var children []int
						node.Children[j], children = gs.rebuildProof(rulesApplied, rules[i+1:], weakenedForms)
						childrenIndex = append(childrenIndex, children...)
					} else {
						node.Children[j] = []tableaux.ProofStruct{node.Children[j][0]}
						node.Children[j][0].Children = make([][]tableaux.ProofStruct, 0)
						childrenIndex = append(childrenIndex, 0)
					}
				} else {
					// Weaken the formulas that shouldn't be here, i.e. the ones generated after.
					formsToWeaken := gs.getFormsToWeaken(rulesApplied, rules[i:])
					node.Children[j] = append(makeWeakeningProofStructs(formsToWeaken), node.Children[j]...)
				}
			}
			// Put the child to the left, to make it easy to find it back later.
			rebuiltProof = append(rebuiltProof, node)
			break
		} else {
			if isGammaRule(rule.Fst) || isDeltaRule(rule.Fst) {
				childrenIndex = append(childrenIndex, createAsManyZerosAsNeeded(rule.Snd.GetFormula().GetForm())...)
			} else {
				childrenIndex = append(childrenIndex, 0)
			}
			rebuiltProof = append(rebuiltProof, rule.Snd)
		}
	}
	return rebuiltProof, childrenIndex
}

func (gs GS3Proof) getCurrentBranchChildId(resultForms []tableaux.IntFormAndTermsList, weakenedForms []btps.Form) int {
	for _, ifat := range resultForms {
		for _, form := range ifat.GetFL() {
			if gs.branchForms.Contains(form.GetForm()) {
				return ifat.GetI()
			}
			for _, f := range weakenedForms {
				if form.GetForm().Equals(f) {
					return ifat.GetI()
				}
			}
		}
	}
	return -1
}

func (gs GS3Proof) getFormsToWeaken(rulesApplied, rulesAlreadyWeakened []Pair[int, tableaux.ProofStruct]) []btps.Form {
	formsToWeaken := make([]btps.Form, 0)
	index := getFirstRuleAppliedAfter(rulesApplied, rulesAlreadyWeakened[0])
	if index == -1 {
		PrintError("GFTW", "Beta-rule not found in applied rules. What to do?")
	}
	for _, rule := range rulesApplied[index+1:] {
		// Get form in result formulas inter the ones in the branch.
		formsToWeaken = append(formsToWeaken, gs.getIntersectionBetweenResultAndBranchForms(rule.Snd.GetResultFormulas())...)
	}
	return formsToWeaken
}

func getFirstRuleAppliedAfter(rulesApplied []Pair[int, tableaux.ProofStruct], firstRuleWeakened Pair[int, tableaux.ProofStruct]) int {
	for i, rule := range rulesApplied {
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

func (gs *GS3Proof) getLastSequent(seq *GS3Sequent, childrenIndex []int) *GS3Sequent {
	for _, index := range childrenIndex {
		seq = seq.children[index]
	}
	*gs = seq.proof
	return seq
}

func isGammaRule(rule int) bool {
	return rule == ALL || rule == NEX
}

func isDeltaRule(rule int) bool {
	return rule == NALL || rule == EX
}

func createAsManyZerosAsNeeded(f btps.Form) []int {
	switch nf := f.(type) {
	case btps.Ex:
		return make([]int, len(nf.GetVarList()))
	case btps.All:
		return make([]int, len(nf.GetVarList()))
	case btps.Not:
		return createAsManyZerosAsNeeded(nf.GetForm())
	}
	return make([]int, 0)
}
