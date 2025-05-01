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

/**
 * This file provides a definition of a GS3 proof: the object & the exported functions.
 **/

package gs3

import (
	"strings"

	. "github.com/GoelandProver/Goeland/global"
	"github.com/GoelandProver/Goeland/modules/dmt"
	basictypes "github.com/GoelandProver/Goeland/types/basic-types"
	tableaux "github.com/GoelandProver/Goeland/visualization_proof"
)

type dependencyMap []Pair[basictypes.Term, *basictypes.FormList]

func (d dependencyMap) Copy() dependencyMap {
	oth := make([]Pair[basictypes.Term, *basictypes.FormList], 0)
	for _, v := range d {
		if v.Fst != nil {
			p := MakePair(v.Fst.Copy(), basictypes.NewFormList(v.Snd.Slice()...))
			oth = append(oth, p)
		}
	}
	return oth
}

func (d dependencyMap) Get(t basictypes.Term) (*basictypes.FormList, bool) {
	for _, v := range d {
		if v.Fst != nil && v.Fst.Equals(t) {
			return v.Snd, true
		}
	}
	return basictypes.NewFormList(), false
}

func (d *dependencyMap) Add(t basictypes.Term, f ...basictypes.Form) {
	found := false
	formList := basictypes.NewFormList(f...)
	for i, v := range *d {
		if v.Fst != nil && t != nil && v.Fst.Equals(t) {
			formList.Append(v.Snd.Slice()...)
			(*d)[i] = MakePair(t, formList)
			found = true
		}
	}

	if !found {
		*d = append(*d, MakePair(t, formList))
	}
}

func (d *dependencyMap) Set(t basictypes.Term, fl *basictypes.FormList) {
	for i, v := range *d {
		if v.Fst != nil && v.Fst.Equals(t) {
			(*d)[i] = MakePair(t, fl)
		}
	}
}

// Utilitary struct to build the proof. Keeps everything that's needed on a proofstep.
type GS3Proof struct {
	dependency   dependencyMap        // Dependency graph for formulas
	branchForms  *basictypes.FormList // The formulas generated at the current point in the proof.
	rulesApplied []Pair[Rule, tableaux.ProofStruct]
	lastNode     *GS3Sequent
	betaHisto    []Pair[int, int]
	deltaHisto   []Pair[basictypes.Term, Pair[basictypes.Form, int]]
}

var MakeGS3Proof = func(proof []tableaux.ProofStruct) *GS3Sequent {
	gs3Proof := GS3Proof{
		rulesApplied: make([]Pair[Rule, tableaux.ProofStruct], 0),
		betaHisto:    make([]Pair[int, int], 0),
		deltaHisto:   make([]Pair[basictypes.Term, Pair[basictypes.Form, int]], 0),
		branchForms:  basictypes.NewFormList(),
		dependency:   make([]Pair[basictypes.Term, *basictypes.FormList], 0),
	}
	if IsLoaded("dmt") {
		gs3Proof.branchForms.Append(dmt.GetRegisteredAxioms().Slice()...)
		gs3Proof.branchForms.Append(proof[0].Formula.GetForm())
	}
	sequent := gs3Proof.makeProof(proof)
	return sequent
}

func (gs GS3Proof) Copy() GS3Proof {
	return GS3Proof{
		dependency:   gs.dependency.Copy(),
		branchForms:  basictypes.NewFormList(appcp(gs.branchForms.Slice())...),
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
	var resultFormulas []*basictypes.FormList
	if gs.branchForms.Len() == 0 {
		gs.branchForms.Append(proof[0].Formula.GetForm())
	}

	// For each proofstep, create a node & populate which is a child of the last proofstep.
	for _, prf := range proof {
		resultFormulas = gs.makeProofOneStep(prf, subRoot)
	}

	// The last proofstep is a branching proofstep, so launch makeProof back on each child.
	for i, child := range proof[len(proof)-1].GetChildren() {
		childProof := GS3Proof{
			dependency:   gs.dependency.Copy(),
			branchForms:  basictypes.NewFormList(appcp(gs.branchForms.Slice(), resultFormulas[i].Slice()...)...),
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
func (gs *GS3Proof) makeProofOneStep(proofStep tableaux.ProofStruct, parent *GS3Sequent) []*basictypes.FormList {
	seq := MakeNewSequent()
	seq.setHypotheses(gs.branchForms)
	seq.nodeId = proofStep.Node_id

	rule := proofStructRuleToGS3Rule(proofStep.GetRuleName())
	form := proofStep.GetFormula().GetForm()

	// TODO: manage rewrite rules: second return value of proofStructRuleToGS3Rule
	switch rule {
	// Immediate, just apply the rule.
	case NNOT, NOR, NIMP, AND, NAND, NEQU, OR, IMP, EQU, AX, REWRITE:
		seq.setAppliedRule(rule)
		seq.setAppliedOn(form)
		if rule == REWRITE {
			seq.setRewrittenWith(proofStep.Id_dmt)
		}
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
	case R: // Ignore this rule (reintroduction)
		seq = MakeNewSequent()
	}

	if !seq.IsEmpty() {
		if gs.lastNode != nil {
			gs.lastNode.addChild(seq)
		}
		gs.lastNode = seq
	}

	// Manage the proof's rules, offspring graph & format the result formulas properly.
	forms := gs.postTreatment(proofStep, rule)

	if !seq.IsEmpty() {
		seq.setFormsGenerated(forms)
	}

	// If the length is superior, then it's a branching rule and it needs to be taken care of in makeProof.
	if IsAlphaRule(rule) || IsGammaRule(rule) || IsDeltaRule(rule) || rule == REWRITE {
		gs.branchForms.Append(forms[0].Slice()...)
		// If rule is rewrite: do not weaken the base form, as it is important to get when applying rules back.
		// It may however induce bad weakenings.
		// TODO: fix the bad weakenings in the sequent.
	}

	seq.proof = gs.Copy()

	return forms
}

func (gs *GS3Proof) manageGammaStep(proofStep tableaux.ProofStruct, rule Rule, seq *GS3Sequent) *GS3Sequent {
	// Manage gamma: add all the gammas except the result formula to the thing
	resultForm := proofStep.GetResultFormulas()[0].GetForms().Get(0)
	originForm := proofStep.GetFormula().GetForm()
	// TODO: what happens if the result form doesn't care of what it's instantiated with?
	// JRO: Should be OKAY as "nil" is returned if I understand everything properly.
	term := manageGammasInstantiations(originForm, resultForm)

	for _, t := range getDepFromTerm(term).Slice() {
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

func getDepFromTerm(term basictypes.Term) *basictypes.TermList {
	if typedFun, ok := term.(basictypes.Fun); ok {
		if strings.Contains(typedFun.GetID().GetName(), "sko") {
			return basictypes.NewTermList(typedFun)
		}

		res := basictypes.NewTermList()

		for _, t := range typedFun.GetArgs().Slice() {
			res.Append(getDepFromTerm(t).Slice()...)
		}

		return res
	}

	return basictypes.NewTermList(term)
}

// TODO: factorise this function to merge some steps that are similar between the two cases.
func (gs *GS3Proof) manageDeltaStep(proofStep tableaux.ProofStruct, rule Rule, parent *GS3Sequent) basictypes.Form {
	originForm := proofStep.GetFormula().GetForm()
	resultForm := proofStep.GetResultFormulas()[0].GetForms().Get(0)
	termGenerated := manageDeltasSkolemisations(proofStep.GetFormula().GetForm(), resultForm)

	if IsPreInnerSko() && !gs.termHasBeenIntroducedByBranch(termGenerated, proofStep.Node_id) {
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
		deltaSeq = gs.applyDeltaRule(originForm, resultForm, rule, termGenerated, proofStep.Node_id)
		if parent.IsEmpty() {
			*parent = *deltaSeq
			deltaSeq = parent
			gs.lastNode = deltaSeq
		} else {
			gs.lastNode.addChild(deltaSeq)
		}
		previousRulesApplied = append(previousRulesApplied, MakePair(rule, makeProofStructFrom(originForm, resultForm, rule)))
		gs.lastNode = deltaSeq
		gs.branchForms.Append(resultForm)
		subRoot, childrenIndex := gs.applyRulesBack(previousRulesApplied, rulesApplied, offsprings)
		if subRoot != nil {
			gs.lastNode.addChild(subRoot)
			deltaSeq = gs.getLastSequent(subRoot, childrenIndex)
		}
	} else {
		forms, rulesBack := gs.weakenAllFormsRelatedToTheTerm(termGenerated)
		if forms.Len() > 0 {
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
		deltaSeq = gs.applyDeltaRule(originForm, resultForm, rule, termGenerated, proofStep.Node_id)
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

func (gs *GS3Proof) postTreatment(proofStep tableaux.ProofStruct, rule Rule) []*basictypes.FormList {
	// Add the rule applied & the formula it has been applied on.
	gs.rulesApplied = append(gs.rulesApplied, MakePair(rule, proofStep))

	var forms []*basictypes.FormList
	for i, fs := range proofStep.GetResultFormulas() {
		forms = append(forms, fs.GetForms())
		if (rule == NOR || rule == NIMP || rule == AND || rule == EQU) && forms[i].Len() == 1 {
			forms[i].Append(forms[i].Get(0).Copy())
		}
	}

	return forms
}

func makeProofStructFrom(f, nf basictypes.Form, rule Rule) tableaux.ProofStruct {
	proofStruct := tableaux.MakeEmptyProofStruct()
	proofStruct.Formula = basictypes.MakeFormAndTerm(f, nil)
	proofStruct.Result_formulas = []tableaux.IntFormAndTermsList{tableaux.MakeIntFormAndTermsList(0, basictypes.MakeSingleElementFormAndTermList(basictypes.MakeFormAndTerm(nf, nil)))}
	proofStruct.Rule_name = ruleToTableauxString(rule)
	return proofStruct
}

func (gs GS3Proof) getFormulasDependantFromTerm(term basictypes.Term) (*basictypes.FormList, bool) {
	fs, ok := gs.dependency.Get(term)
	return fs, ok
}

func (gs GS3Proof) getRulesAppliedInOrder(term basictypes.Term, dependantForms *basictypes.FormList, deltaForm basictypes.Form) ([]Pair[Rule, tableaux.ProofStruct], *basictypes.FormList) {
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

func (gs GS3Proof) getOffspringsOf(term basictypes.Term) *basictypes.FormList {
	offsprings := basictypes.NewFormList()
	for _, form := range gs.branchForms.Slice() {
		if form.GetSubTerms().Contains(term) {
			offsprings.Append(form)
		}
	}
	return offsprings
}

func (gs *GS3Proof) weakenForms(forms *basictypes.FormList, parent *GS3Sequent) *GS3Sequent {
	for i, form := range forms.Slice() {
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

func (gs *GS3Proof) weakenForm(form basictypes.Form) *GS3Sequent {
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

func (gs *GS3Proof) weakenTerm(term basictypes.Term) *GS3Sequent {
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

func (gs *GS3Proof) removeHypothesis(form basictypes.Form) {
	index, _ := gs.branchForms.GetIndexOf(form)
	gs.branchForms.Remove(index)
}

func (gs *GS3Proof) removeDependency(form basictypes.Form) {
	for _, v := range gs.dependency {
		if v.Fst != nil {
			ls, _ := gs.dependency.Get(v.Fst)
			removed := ls.Copy()
			nb_rm := 0
			for i, f := range v.Snd.Slice() {
				if f.Equals(form) {
					removed.Remove(i - nb_rm)
					nb_rm++
				}
			}
			gs.dependency.Set(v.Fst, removed)
		}
	}
}

func (gs *GS3Proof) removeRuleAppliedOn(form basictypes.Form) {
	for i, rule := range gs.rulesApplied {
		if rule.Snd.GetFormula().GetForm().Equals(form) {
			gs.rulesApplied = append(gs.rulesApplied[:i], gs.rulesApplied[i+1:]...)
			break
		}
	}
}

func (gs *GS3Proof) applyDeltaRule(form, result basictypes.Form, rule Rule, term basictypes.Term, nodeId int) *GS3Sequent {
	seq := MakeNewSequent()
	seq.setHypotheses(gs.branchForms)
	seq.setAppliedRule(rule)
	seq.setAppliedOn(form)
	seq.setTermGenerated(term)
	seq.setFormsGenerated([]*basictypes.FormList{basictypes.NewFormList(result)})

	gs.branchForms.Append(result)
	gs.deltaHisto = append(gs.deltaHisto, MakePair(term, MakePair(result, nodeId)))
	gs.rulesApplied = append(gs.rulesApplied, MakePair(rule, makeProofStructFrom(form, result, rule)))

	seq.proof = gs.Copy()

	return seq
}

func (gs GS3Proof) applyRulesBack(rulesApplied, rulesToApply []Pair[Rule, tableaux.ProofStruct], weakenedForms *basictypes.FormList) (*GS3Sequent, []int) {
	// Transform everything back to a proof struct & call makeProof on it.
	// We need to have the right proofstructs here: the proofstructs of the branches that is not this one
	// on the beta formulas.
	// It should fit properly so it's good
	// Just need to weaken tho
	proof, childrenIndex := gs.rebuildProof(rulesApplied, rulesToApply, weakenedForms)
	gs.lastNode = nil
	return gs.makeProof(proof), childrenIndex
}

func (gs *GS3Proof) rebuildProof(rulesApplied, rules []Pair[Rule, tableaux.ProofStruct], weakenedForms *basictypes.FormList) ([]tableaux.ProofStruct, []int) {
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

func (gs GS3Proof) getFormsToWeaken(rulesApplied, rulesAlreadyWeakened []Pair[Rule, tableaux.ProofStruct]) *basictypes.FormList {
	formsToWeaken := basictypes.NewFormList()
	rule := getFirstRuleAppliedAfter(gs.rulesApplied, rulesAlreadyWeakened[0])
	canBeAppending := false
	for _, r := range gs.rulesApplied {
		if equalRulePair(r, rule) {
			canBeAppending = true
		}
		if canBeAppending {
			if !IsPreInnerSko() || !(rule.Fst == EX || rule.Fst == NALL) {
				formsToWeaken.Append(gs.getIntersectionBetweenResultAndBranchForms(rule.Snd.GetResultFormulas()).Slice()...)
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

func (gs GS3Proof) getIntersectionBetweenResultAndBranchForms(forms []tableaux.IntFormAndTermsList) *basictypes.FormList {
	fs := basictypes.NewFormList()
	for _, fl := range forms {
		for _, f := range fl.GetForms().Slice() {
			if gs.branchForms.Contains(f) {
				fs.Append(f)
			}
		}
	}
	return fs
}

func equalRulePair(a, b Pair[Rule, tableaux.ProofStruct]) bool {
	return a.Fst == b.Fst && a.Snd.Formula.GetForm().Equals(b.Snd.Formula.GetForm())
}

func makeWeakeningProofStructs(forms *basictypes.FormList) []tableaux.ProofStruct {
	resultingProof := make([]tableaux.ProofStruct, 0)
	for _, f := range forms.Slice() {
		proofStruct := tableaux.MakeEmptyProofStruct()
		proofStruct.SetFormulaProof(basictypes.MakeFormAndTerm(f, basictypes.NewTermList()))
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

func getAllFormulasDependantOn(term basictypes.Term, form basictypes.Form) *basictypes.FormList {
	switch f := form.(type) {
	case basictypes.All:
		return getSubformulas(term, f.GetVarList()[0], f.GetForm())
	case basictypes.Not:
		if ex, isEx := f.GetForm().(basictypes.Ex); isEx {
			return getSubformulas(term, ex.GetVarList()[0], basictypes.MakerNot(f.GetForm()))
		}
	}
	return basictypes.NewFormList()
}

func getSubformulas(term basictypes.Term, v basictypes.Var, form basictypes.Form) *basictypes.FormList {
	subforms := form.GetSubFormulasRecur()
	dependantSubforms := basictypes.NewFormList()
	for _, f := range subforms.Slice() {
		f, res := f.ReplaceTermByTerm(v, term)
		if res {
			dependantSubforms.Append(f)
		}
	}
	return dependantSubforms
}

func (gs GS3Proof) findInDeltaHisto(term basictypes.Term, forms *basictypes.FormList) (*basictypes.FormList, bool) {
	for _, p := range gs.deltaHisto {
		if p.Fst != nil && p.Fst.Equals(term) {
			result := forms.Copy()
			result.Append(p.Snd.Fst)
			return result, true
		}
	}
	return forms, false
}

func (gs *GS3Proof) removeFromDeltaHisto(term basictypes.Term) {
	for i, p := range gs.deltaHisto {
		if p.Fst != nil && p.Fst.Equals(term) {
			gs.deltaHisto = append(gs.deltaHisto[:i], gs.deltaHisto[i+1:]...)
		}
	}
}

func (gs *GS3Proof) weakenAllFormsRelatedToTheTerm(term basictypes.Term) (*basictypes.FormList, []Pair[Rule, tableaux.ProofStruct]) {
	rules := []Pair[Rule, tableaux.ProofStruct]{}
	forms := basictypes.NewFormList()
	for _, form := range gs.branchForms.Slice() {
		if form.GetSubTerms().Contains(term) {
			// Get the rule to apply it back
			for _, rule := range gs.rulesApplied {
				f := rule.Snd.GetFormula().GetForm()
				if f.Equals(form) {
					rules = append(rules, rule)
				}
			}
			forms.Append(form)
		}
	}
	return forms, rules
}

func (gs GS3Proof) termHasBeenIntroducedByBranch(term basictypes.Term, nodeId int) bool {
	for _, p := range gs.deltaHisto {
		if p.Fst.Equals(term) {
			// DMT needs the nodeId here, as the same formula will produce the same skolem symbol in two different
			// branches potentially.
			return p.Snd.Snd == nodeId
		}
	}
	// Term has not been introduced yet, as such it has been introduced by the current branch
	return true
}
