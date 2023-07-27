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
	"strings"

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

func (d *dependencyMap) Add(t btps.Term, f ...btps.Form) {
	found := false
	for i, v := range *d {
		if v.Fst != nil && t != nil && v.Fst.Equals(t) {
			(*d)[i] = MakePair(t, append(v.Snd, f...))
			found = true
		}
	}

	if !found {
		*d = append(*d, MakePair(t, f))
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
	dependency   dependencyMap // Dependency graph for formulas
	branchForms  btps.FormList // The formulas generated at the current point in the proof.
	rulesApplied []Pair[Rule, tableaux.ProofStruct]
	lastNode     *GS3Sequent
	betaHisto    []Pair[int, int]
	deltaHisto   []Pair[btps.Term, btps.Form]
}

func MakeGS3Proof(proof []tableaux.ProofStruct) *GS3Sequent {
	gs3Proof := GS3Proof{
		rulesApplied: make([]Pair[Rule, tableaux.ProofStruct], 0),
		betaHisto:    make([]Pair[int, int], 0),
		deltaHisto:   make([]Pair[btps.Term, btps.Form], 0),
	}
	return gs3Proof.makeProof(proof)
}

func (gs GS3Proof) Copy() GS3Proof {
	return GS3Proof{
		dependency:   gs.dependency.Copy(),
		branchForms:  appcp(gs.branchForms),
		lastNode:     nil,
		rulesApplied: appcp(gs.rulesApplied),
		betaHisto:    appcp(gs.betaHisto),
		deltaHisto:   appcp(gs.deltaHisto),
	}
}

// ----------------------------------------------------------------------------
// Private methods.
// ----------------------------------------------------------------------------

// Makes a GS3 proof from a tableaux proof.
func (gs GS3Proof) makeProof(proof []tableaux.ProofStruct) *GS3Sequent {
	if len(proof) == 0 {
		seq := MakeNewSequent()
		seq.proof = gs.Copy()
		return seq
	}
	subRoot := MakeNewSequent()
	var resultFormulas []btps.FormList
	if len(gs.branchForms) == 0 {
		gs.branchForms = append(gs.branchForms, proof[0].Formula.GetForm())
	}

	// For each proofstep, create a node & populate which is a child of the last proofstep.
	for _, prf := range proof {
		resultFormulas = gs.makeProofOneStep(prf, subRoot)
	}

	// The last proofstep is a branching proofstep, so launch makeProof back on each child.
	for i, child := range proof[len(proof)-1].GetChildren() {
		childProof := GS3Proof{
			dependency:   gs.dependency.Copy(),
			branchForms:  appcp(gs.branchForms, resultFormulas[i]...),
			lastNode:     nil,
			rulesApplied: appcp(gs.rulesApplied),
			betaHisto:    appcp(gs.betaHisto, MakePair(i, proof[len(proof)-1].GetNodeId())),
			deltaHisto:   appcp(gs.deltaHisto),
		}
		childRoot := childProof.makeProof(child)
		if childRoot != nil {
			gs.lastNode.addChild(childRoot)
		}
	}

	return subRoot
}

// Returns a sequent and the result formulas.
func (gs *GS3Proof) makeProofOneStep(proofStep tableaux.ProofStruct, parent *GS3Sequent) []btps.FormList {
	seq := MakeNewSequent()
	seq.setHypotheses(gs.branchForms)
	seq.nodeId = proofStep.Node_id

	rule, _ := proofStructRuleToGS3Rule(proofStep.GetRuleName())
	form := proofStep.GetFormula().GetForm()

	// TODO: manage rewrite rules: second return value of proofStructRuleToGS3Rule
	switch rule {
	// Immediate, just apply the rule.
	case NNOT, NOR, NIMP, AND, NAND, NEQU, OR, IMP, EQU, AX:
		seq.setAppliedRule(rule)
		seq.setAppliedOn(form)
		if parent.IsEmpty() {
			*parent = *seq
			seq = parent
		}
	// Be careful as one gamma rule may instantiate multiple variables.
	case ALL, NEX:
		seq = gs.manageGammaStep(proofStep, rule, parent)
	// Be extra careful as it is a delta-rule
	case NALL, EX:
		form = gs.manageDeltaStep(proofStep, rule, parent)
		seq = MakeNewSequent()
	case W:
		seq = gs.weakenForm(form)
	case R: // Ignore this rule
		seq = MakeNewSequent()
	}

	if !seq.IsEmpty() {
		if gs.lastNode != nil {
			gs.lastNode.addChild(seq)
		}
		gs.lastNode = seq
	}

	// Manage the proof's rules, offspring graph & format the result formulas properly.
	forms := gs.postTreatment(proofStep, rule, form)

	if !seq.IsEmpty() {
		seq.setFormsGenerated(forms)
	}

	// If the length is superior, then it's a branching rule and it needs to be taken care of in makeProof.
	if IsAlphaRule(rule) || IsGammaRule(rule) || IsDeltaRule(rule) {
		gs.branchForms = append(gs.branchForms, forms[0]...)
	}
	seq.proof = gs.Copy()

	return forms
}

func (gs *GS3Proof) manageGammaStep(proofStep tableaux.ProofStruct, rule Rule, seq *GS3Sequent) *GS3Sequent {
	// Manage gamma: add all the gammas except the result formula to the thing
	resultForm := proofStep.GetResultFormulas()[0].GetForms()[0]
	originForm := proofStep.GetFormula().GetForm()
	// TODO: what happens if the result form doesn't care of what it's instantiated with?
	// JRO: Should be OKAY as "nil" is returned if I understand everything properly.
	term := manageGammasInstantiations(originForm, resultForm)

	for _, t := range getDepFromTerm(term) {
		gs.dependency.Add(t, originForm)
	}

	// Create all the next sequents needed.
	s := MakeNewSequent()
	s.setHypotheses(gs.branchForms)
	s.setAppliedRule(rule)
	s.setAppliedOn(originForm)
	s.setTermGenerated(term)

	if seq.IsEmpty() {
		*seq = *s
		s = seq
	}

	// Needed to have the right offspring tree when updating later
	return s
}

func getDepFromTerm(term btps.Term) btps.TermList {
	if fun, isFun := term.(btps.Fun); isFun {
		if strings.Contains(fun.GetID().GetName(), "sko") {
			return btps.TermList{fun}
		} else {
			res := btps.TermList{}
			for _, t := range fun.GetArgs() {
				res = append(res, getDepFromTerm(t)...)
			}
			return res
		}
	}
	return btps.TermList{term}
}

// TODO: factorise this function to merge some steps that are similar between the two cases.
func (gs *GS3Proof) manageDeltaStep(proofStep tableaux.ProofStruct, rule Rule, parent *GS3Sequent) btps.Form {
	originForm := proofStep.GetFormula().GetForm()
	resultForm := proofStep.GetResultFormulas()[0].GetForms()[0]
	termGenerated := manageDeltasSkolemisations(proofStep.GetFormula().GetForm(), resultForm)

	if IsPreInnerSko() && !gs.termHasBeenIntroducedByBranch(termGenerated, resultForm) {
		return resultForm
	}

	var deltaSeq *GS3Sequent
	previousRulesApplied := appcp(gs.rulesApplied)
	dependantForms, atLeastOneDependantForm := gs.getFormulasDependantFromTerm(termGenerated)
	rulesApplied, offsprings := gs.getRulesAppliedInOrder(termGenerated, dependantForms, resultForm)
	if atLeastOneDependantForm && len(rulesApplied) > 0 {
		// If the delta-rule has already been applied before, remove the term.
		var termPreviouslyInstantiated bool
		offsprings, termPreviouslyInstantiated = gs.findInDeltaHisto(termGenerated, offsprings)
		gs.weakenForms(offsprings, parent)
		if termPreviouslyInstantiated {
			gs.weakenTerm(termGenerated)
		}
		deltaSeq = gs.applyDeltaRule(originForm, resultForm, rule, termGenerated)
		if parent.IsEmpty() {
			*parent = *deltaSeq
			deltaSeq = parent
			gs.lastNode = deltaSeq
		} else {
			gs.lastNode.addChild(deltaSeq)
		}
		previousRulesApplied = append(previousRulesApplied, MakePair(rule, makeProofStructFrom(originForm, resultForm, rule)))
		gs.lastNode = deltaSeq
		gs.branchForms = append(gs.branchForms, resultForm)
		subRoot, childrenIndex := gs.applyRulesBack(previousRulesApplied, rulesApplied, offsprings)
		if subRoot != nil {
			gs.lastNode.addChild(subRoot)
			deltaSeq = gs.getLastSequent(subRoot, childrenIndex)
		}
	} else {
		forms, rulesBack := gs.weakenAllFormsRelatedToTheTerm(termGenerated)
		if len(forms) > 0 {
			gs.weakenForms(forms, parent)
		}
		_, inHist := gs.findInDeltaHisto(termGenerated, forms)
		if inHist {
			gs.weakenTerm(termGenerated)
			if parent.IsEmpty() {
				*parent = *gs.lastNode
				gs.lastNode = parent
			}
		}
		deltaSeq = gs.applyDeltaRule(originForm, resultForm, rule, termGenerated)
		if parent.IsEmpty() {
			*parent = *deltaSeq
			deltaSeq = parent
		}
		if gs.lastNode != nil {
			gs.lastNode.addChild(deltaSeq)
		}
		if len(rulesBack) > 0 {
			subRoot, childrenIndex := gs.applyRulesBack(gs.rulesApplied, rulesBack, forms)
			if subRoot != nil {
				deltaSeq.addChild(subRoot)
				deltaSeq = gs.getLastSequent(subRoot, childrenIndex)
			}
		}
	}
	gs.lastNode = deltaSeq
	gs.rulesApplied = previousRulesApplied
	return resultForm
}

func (gs *GS3Proof) postTreatment(proofStep tableaux.ProofStruct, rule Rule, form btps.Form) []btps.FormList {
	// Add the rule applied & the formula it has been applied on.
	gs.rulesApplied = append(gs.rulesApplied, MakePair(rule, proofStep))

	var forms []btps.FormList
	for i, fs := range proofStep.GetResultFormulas() {
		forms = append(forms, fs.GetForms())
		if (rule == NOR || rule == NIMP || rule == AND || rule == EQU) && len(forms[i]) == 1 {
			forms[i] = append(forms[i], forms[i][0].Copy())
		}
	}

	return forms
}

func makeProofStructFrom(f, nf btps.Form, rule Rule) tableaux.ProofStruct {
	proofStruct := tableaux.MakeEmptyProofStruct()
	proofStruct.Formula = btps.MakeFormAndTerm(f, nil)
	proofStruct.Result_formulas = []tableaux.IntFormAndTermsList{tableaux.MakeIntFormAndTermsList(0, btps.MakeSingleElementFormAndTermList(btps.MakeFormAndTerm(nf, nil)))}
	proofStruct.Rule_name = ruleToTableauxString(rule)
	return proofStruct
}

func (gs GS3Proof) getFormulasDependantFromTerm(term btps.Term) (btps.FormList, bool) {
	fs, ok := gs.dependency.Get(term)
	return fs, ok
}

func (gs GS3Proof) getRulesAppliedInOrder(term btps.Term, dependantForms btps.FormList, deltaForm btps.Form) ([]Pair[Rule, tableaux.ProofStruct], btps.FormList) {
	offsprings := gs.getOffspringsOf(term)
	rules := []Pair[Rule, tableaux.ProofStruct]{}
	for _, rule := range gs.rulesApplied {
		f := rule.Snd.GetFormula().GetForm()
		if !f.Equals(deltaForm) && (offsprings.Contains(f) || dependantForms.Contains(f)) {
			rules = append(rules, rule)
		}
	}

	return rules, offsprings
}

func (gs GS3Proof) getOffspringsOf(term btps.Term) btps.FormList {
	offsprings := btps.FormList{}
	for _, form := range gs.branchForms {
		if form.GetSubTerms().Contains(term) {
			offsprings = append(offsprings, form)
		}
	}
	return offsprings
}

func (gs *GS3Proof) weakenForms(forms btps.FormList, parent *GS3Sequent) *GS3Sequent {
	for i, form := range forms {
		newSeq := gs.weakenForm(form)
		if newSeq != nil {
			if i == 0 && parent.IsEmpty() {
				*parent = *newSeq
				newSeq = parent
			} else if gs.lastNode != nil {
				gs.lastNode.addChild(newSeq)
			}
			gs.lastNode = newSeq
		}
	}
	return gs.lastNode
}

func (gs *GS3Proof) weakenForm(form btps.Form) *GS3Sequent {
	defer func() {
		if r := recover(); r != nil {
			//PrintInfo("WEAKENING", "Recovered from bad weakening.")
		}
	}()
	seq := MakeNewSequent()
	seq.setHypotheses(gs.branchForms)
	seq.setAppliedRule(W)
	seq.setAppliedOn(form)

	gs.removeHypothesis(form)
	gs.removeDependency(form)
	gs.removeRuleAppliedOn(form)

	seq.proof = gs.Copy()

	return seq
}

func (gs *GS3Proof) weakenTerm(term btps.Term) *GS3Sequent {
	seq := MakeNewSequent()
	seq.setHypotheses(gs.branchForms)
	seq.setAppliedRule(W)
	seq.setTermGenerated(term)

	gs.removeFromDeltaHisto(term)

	if gs.lastNode != nil {
		gs.lastNode.addChild(seq)
	}
	gs.lastNode = seq
	seq.proof = gs.Copy()
	return seq
}

func (gs *GS3Proof) removeHypothesis(form btps.Form) {
	index := gs.branchForms.Find(form)
	gs.branchForms = append(gs.branchForms[:index], gs.branchForms[index+1:]...)
}

func (gs *GS3Proof) removeDependency(form btps.Form) {
	for _, v := range gs.dependency {
		for i, f := range v.Snd {
			if f.Equals(form) {
				ls, _ := gs.dependency.Get(v.Fst)
				gs.dependency.Set(v.Fst, append(ls[:i], ls[i+1:]...))
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

func (gs *GS3Proof) applyDeltaRule(form, result btps.Form, rule Rule, term btps.Term) *GS3Sequent {
	seq := MakeNewSequent()
	seq.setHypotheses(gs.branchForms)
	seq.setAppliedRule(rule)
	seq.setAppliedOn(form)
	seq.setTermGenerated(term)
	seq.setFormsGenerated([]btps.FormList{{result}})

	gs.branchForms = append(gs.branchForms, result)
	gs.deltaHisto = append(gs.deltaHisto, MakePair(term, result))
	gs.rulesApplied = append(gs.rulesApplied, MakePair(rule, makeProofStructFrom(form, result, rule)))

	seq.proof = gs.Copy()

	return seq
}

func (gs GS3Proof) applyRulesBack(rulesApplied, rulesToApply []Pair[Rule, tableaux.ProofStruct], weakenedForms []btps.Form) (*GS3Sequent, []int) {
	// Transform everything back to a proof struct & call makeProof on it.
	// We need to have the right proofstructs here: the proofstructs of the branches that is not this one
	// on the beta formulas.
	// It should fit properly so it's good
	// Just need to weaken tho
	proof, childrenIndex := gs.rebuildProof(rulesApplied, rulesToApply, weakenedForms)
	gs.lastNode = nil
	return gs.makeProof(proof), childrenIndex
}

func (gs *GS3Proof) rebuildProof(rulesApplied, rules []Pair[Rule, tableaux.ProofStruct], weakenedForms []btps.Form) ([]tableaux.ProofStruct, []int) {
	rebuiltProof := make([]tableaux.ProofStruct, 0)
	childrenIndex := make([]int, 0)
	for i, rule := range rules {
		// These rules correspond to a beta-rule.
		if rule.Fst == NAND || rule.Fst == NEQU || rule.Fst == EQU || rule.Fst == OR || rule.Fst == IMP {
			node := rule.Snd.Copy()
			currentBranchChildId := gs.getCurrentBranchChildId(node.GetNodeId())
			for j := range node.Children {
				if j == currentBranchChildId {
					childrenIndex = append(childrenIndex, j)
					if i+1 < len(rules) {
						var children []int
						node.Children[j], children = gs.rebuildProof(rulesApplied, rules[i+1:], weakenedForms)
						childrenIndex = append(childrenIndex, children...)
					} else {
						node.Children[j] = make([]tableaux.ProofStruct, 0)
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
			rebuiltProof = append(rebuiltProof, rule.Snd)
		}
	}
	return rebuiltProof, childrenIndex
}

func (gs GS3Proof) getCurrentBranchChildId(id int) int {
	for _, beta := range gs.betaHisto {
		if beta.Snd == id {
			return beta.Fst
		}
	}
	return -1
}

func (gs GS3Proof) getFormsToWeaken(rulesApplied, rulesAlreadyWeakened []Pair[Rule, tableaux.ProofStruct]) []btps.Form {
	formsToWeaken := make([]btps.Form, 0)
	rule := getFirstRuleAppliedAfter(gs.rulesApplied, rulesAlreadyWeakened[0])
	canBeAppending := false
	for _, r := range gs.rulesApplied {
		if equalRulePair(r, rule) {
			canBeAppending = true
		}
		if canBeAppending {
			if !IsPreInnerSko() || !(rule.Fst == EX || rule.Fst == NALL) {
				formsToWeaken = append(formsToWeaken, gs.getIntersectionBetweenResultAndBranchForms(rule.Snd.GetResultFormulas())...)
			}
		}
	}
	return formsToWeaken
}

func getFirstRuleAppliedAfter(rulesApplied []Pair[Rule, tableaux.ProofStruct], firstRuleWeakened Pair[Rule, tableaux.ProofStruct]) Pair[Rule, tableaux.ProofStruct] {
	for i, rule := range rulesApplied {
		if equalRulePair(rule, firstRuleWeakened) && i < len(rulesApplied) {
			return rulesApplied[i+1]
		}
	}
	return Pair[Rule, tableaux.ProofStruct]{}
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

func equalRulePair(a, b Pair[Rule, tableaux.ProofStruct]) bool {
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
	//PrintInfo("GETLASTSEQ", "")
	i := 0
	for len(seq.children) > 0 {
		if IsBetaRule(seq.rule) {
			index := gs.findInBetaHist(seq.nodeId)
			if index == -1 {
				index = childrenIndex[i]
				i++
			}
			seq = seq.children[index]
		} else {
			seq = seq.children[0]
		}
		//PrintInfo("SEQ", fmt.Sprintf("%v", seq))
	}
	*gs = seq.proof
	return seq
}

func (gs GS3Proof) findInBetaHist(id int) int {
	for _, pair := range gs.betaHisto {
		if pair.Snd == id {
			return pair.Fst
		}
	}
	return -1
}

func getAllFormulasDependantOn(term btps.Term, form btps.Form) btps.FormList {
	switch f := form.(type) {
	case btps.All:
		return getSubformulas(term, f.GetVarList()[0], f.GetForm())
	case btps.Not:
		if ex, isEx := f.GetForm().(btps.Ex); isEx {
			return getSubformulas(term, ex.GetVarList()[0], btps.MakerNot(f.GetForm()))
		}
	}
	return []btps.Form{}
}

func getSubformulas(term btps.Term, v btps.Var, form btps.Form) btps.FormList {
	subforms := form.GetSubFormulas()
	dependantSubforms := btps.FormList{}
	for _, f := range subforms {
		f, res := f.ReplaceVarByTerm(v, term)
		if res {
			dependantSubforms = append(dependantSubforms, f)
		}
	}
	return dependantSubforms
}

func (gs GS3Proof) findInDeltaHisto(term btps.Term, forms btps.FormList) (btps.FormList, bool) {
	for _, p := range gs.deltaHisto {
		if p.Fst != nil && p.Fst.Equals(term) {
			return append(forms, p.Snd), true
		}
	}
	return forms, false
}

func (gs *GS3Proof) removeFromDeltaHisto(term btps.Term) {
	for i, p := range gs.deltaHisto {
		if p.Fst != nil && p.Fst.Equals(term) {
			gs.deltaHisto = append(gs.deltaHisto[:i], gs.deltaHisto[i+1:]...)
		}
	}
}

func (gs *GS3Proof) weakenAllFormsRelatedToTheTerm(term btps.Term) (btps.FormList, []Pair[Rule, tableaux.ProofStruct]) {
	rules := []Pair[Rule, tableaux.ProofStruct]{}
	forms := make(btps.FormList, 0)
	for _, form := range gs.branchForms {
		if form.GetSubTerms().Contains(term) {
			// Get the rule to apply it back
			for _, rule := range gs.rulesApplied {
				f := rule.Snd.GetFormula().GetForm()
				if f.Equals(form) {
					rules = append(rules, rule)
				}
			}
			forms = append(forms, form)
		}
	}
	return forms, rules
}

func (gs GS3Proof) termHasBeenIntroducedByBranch(term btps.Term, form btps.Form) bool {
	for _, p := range gs.deltaHisto {
		if p.Fst.Equals(term) {
			// As the form may change (it can be substituted), it's better to compare ids that aren't changed.
			return p.Snd.GetIndex() == form.GetIndex()
		}
	}
	// Term has not been introduced yet, as such it has been introduced by the current branch
	return true
}

func (gs GS3Proof) findFormInDeltaHist(form btps.Form) (btps.Term, bool) {
	for _, p := range gs.deltaHisto {
		if p.Snd.Equals(form) {
			return p.Fst, true
		}
	}
	return nil, false
}
