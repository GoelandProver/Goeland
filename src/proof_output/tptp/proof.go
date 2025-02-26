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
* This file provides a TPTP proof from Goéland's proof.
**/

// TODO :
// Equality
// unbound variables

package tptp

import (
	"fmt"
	"strconv"
	"strings"
	"sync"

	. "github.com/GoelandProver/Goeland/global"
	"github.com/GoelandProver/Goeland/proof_output/gs3"
	btps "github.com/GoelandProver/Goeland/types/basic-types"
)

var mutex_proof_step sync.Mutex
var id_proof_step = 0
var mutex_constant sync.Mutex
var original_term = make([]btps.Term, 0)
var constant_created = make([]btps.Term, 0)
var prefix_step = "f"
var prefix_axiom_cut = "ac"
var prefix_const = "Sko_"
var dummyTerm = btps.MakerNewId("Goeland_I")

func makeTptpProofFromGS3(proof *gs3.GS3Sequent) string {
	axioms, conjecture := processMainFormula(proof.GetTargetForm())
	resultingString := makeTheorem(axioms, conjecture)
	hypotheses := axioms.Copy()
	hypotheses.Append(btps.MakerNot(conjecture.Copy()))

	AxiomCut := performCutAxiomStep(axioms, conjecture)

	firstStep, nextId := performFirstStep(axioms, conjecture, hypotheses, 0)

	if axioms.Len() == 0 {
		resultingString += followProofSteps(proof, hypotheses, nextId)
	} else {
		resultingString += followProofSteps(proof.Child(0), hypotheses, nextId)
	}

	res := "\n% SZS output start Proof for " + GetProblemName() + "\n\n\n" + resultingString + "\n" + firstStep + AxiomCut + "\n% SZS output end Proof for " + GetProblemName() + "\n"

	return res
}

/*** Proof Steps ***/

func followProofSteps(proof *gs3.GS3Sequent, hypotheses *btps.FormList, new_current_id int) string {
	var resultingString string
	var resultingStringParent string
	var childrenHypotheses []*btps.FormList

	if !proof.IsEmpty() {
		resultingStringParent, childrenHypotheses, new_current_id = makeProofStep(proof, hypotheses, new_current_id)
	}
	for i, child := range proof.Children() {
		if proof.IsEmpty() {
			resultingString += followProofSteps(child, hypotheses.Copy(), new_current_id) + "\n"
		} else {
			newHypotheses := hypotheses.Copy()
			newHypotheses.AppendIfNotContains(childrenHypotheses[i].Slice()...)
			resultingString += followProofSteps(child, newHypotheses, new_current_id) + "\n"
		}
	}
	return resultingString + resultingStringParent
}

func makeProofStep(proof *gs3.GS3Sequent, hypotheses *btps.FormList, new_current_id int) (string, []*btps.FormList, int) {
	stepResult, childrenHypotheses, next_child_weakened_id := makeStep(proof, hypotheses, new_current_id)
	return stepResult, childrenHypotheses, next_child_weakened_id
}

func makeStep(proof *gs3.GS3Sequent, hypotheses *btps.FormList, new_current_id int) (string, []*btps.FormList, int) {
	var resultingString string
	childrenHypotheses := []*btps.FormList{hypotheses}
	next_child_weakened_id := -1

	updateId(proof, new_current_id)

	target := get(proof.GetTargetForm(), hypotheses)

	switch proof.Rule() {

	// Closure.
	case gs3.AX:
		if isPredEqual(proof.GetTargetForm()) {
			resultingString = fmt.Sprintf("fof("+prefix_step+"%d, plain, [%s] --> [], inference(%s, [status(thm)], [%s])).",
				proof.GetId(),
				mapDefault(btps.ListToMappedString(hypotheses.Slice(), ", ", "", tptpMapConnectors(), GetTypeProof())),
				"congruence",
				"")
		} else {
			target2 := -1
			targetNotNeg := -1
			switch initial_formula := proof.GetTargetForm().(type) {
			case btps.Pred:
				target2 = get(btps.MakerNot(initial_formula), hypotheses)
				targetNotNeg = target2
			case btps.Not:
				target2 = get(initial_formula.GetForm(), hypotheses)
				targetNotNeg = target
			}

			if target2 == -1 {
				PrintError("TPTP - makeStep", "complementary literal not found")
			}

			resultingString = fmt.Sprintf("fof("+prefix_step+"%d, plain, [%s] --> [], inference(%s, [status(thm), %d], [%s])).",
				proof.GetId(),
				mapDefault(btps.ListToMappedString(hypotheses.Slice(), ", ", "", tptpMapConnectors(), GetTypeProof())),
				"leftHyp",
				targetNotNeg,
				"")
		}

	// Alpha rules
	case gs3.NNOT:
		resultingString, childrenHypotheses = alphaStep(proof, hypotheses, target, "leftNotNot")
	case gs3.AND:
		resultingString, childrenHypotheses = alphaStep(proof, hypotheses, target, "leftAnd")
	case gs3.NOR:
		resultingString, childrenHypotheses = alphaStep(proof, hypotheses, target, "leftNotOr")
	case gs3.NIMP:
		resultingString, childrenHypotheses = alphaStep(proof, hypotheses, target, "leftNotImplies")

	// Beta rules
	case gs3.NAND:
		resultingString, childrenHypotheses = betaStep(proof, hypotheses, target, "leftNotAnd")
	case gs3.NEQU:
		resultingString, childrenHypotheses = betaStep(proof, hypotheses, target, "leftNotIff")
	case gs3.OR:
		resultingString, childrenHypotheses = betaStep(proof, hypotheses, target, "leftOr")
	case gs3.IMP:
		resultingString, childrenHypotheses = betaStep(proof, hypotheses, target, "leftImplies")
	case gs3.EQU:
		resultingString, childrenHypotheses = betaStep(proof, hypotheses, target, "leftIff")

	// Delta rules
	case gs3.NALL:
		resultingString, childrenHypotheses = deltaStep(proof, hypotheses, target, "leftNotAll")
	case gs3.EX:
		resultingString, childrenHypotheses = deltaStep(proof, hypotheses, target, "leftExists")

	// Gamma rules
	case gs3.ALL:
		resultingString, childrenHypotheses = gammaStep(proof, hypotheses, target, "leftForall")
	case gs3.NEX:
		resultingString, childrenHypotheses = gammaStep(proof, hypotheses, target, "leftNotEx")

	// Weakening rule
	case gs3.W:
		if proof.TermGenerated() != nil {
			resultingString = fmt.Sprintf("leftWeaken %s", findInConstants(proof.TermGenerated()).ToMappedString(tptpMapConnectors(), GetTypeProof()))
		} else {
			resultingString, childrenHypotheses, next_child_weakened_id = weakenStep(proof, hypotheses, target, "leftWeaken")
		}

	case gs3.REWRITE:
		resultingString, childrenHypotheses = rewriteStep(proof.GetRewriteWith(), hypotheses, target, proof.GetResultFormulasOfChild(0).Get(0))
	}

	return resultingString + "\n", childrenHypotheses, next_child_weakened_id
}

func alphaStep(proof *gs3.GS3Sequent, hypotheses *btps.FormList, target int, format string) (string, []*btps.FormList) {

	children_id := []int{}
	for _, c := range proof.Children() {
		new_id := incrByOne(&id_proof_step, &mutex_proof_step)
		children_id = append(children_id, new_id)
		c.SetId(new_id)
	}

	resultingString := fmt.Sprintf("fof(%s%d, plain, [%s] --> [], inference(%s, [status(thm), %d], [%s])).",
		prefix_step,
		proof.GetId(),
		mapDefault(btps.ListToMappedString(hypotheses.Slice(), ", ", "", tptpMapConnectors(), GetTypeProof())),
		format,
		target,
		IntListToString(children_id, prefix_step))

	newHypotheses := hypotheses.Copy()
	newHypotheses.AppendIfNotContains(proof.GetResultFormulasOfChild(0).Slice()...)
	return resultingString, []*btps.FormList{newHypotheses}
}

func betaStep(proof *gs3.GS3Sequent, hypotheses *btps.FormList, target int, format string) (string, []*btps.FormList) {
	resultHyps := []*btps.FormList{}
	children_id := []int{}

	for i, c := range proof.Children() {
		new_id := incrByOne(&id_proof_step, &mutex_proof_step)
		children_id = append(children_id, new_id)
		c.SetId(new_id)
		newHypotheses := hypotheses.Copy()
		newHypotheses.AppendIfNotContains(proof.GetResultFormulasOfChild(i).Slice()...)
		resultHyps = append(resultHyps, newHypotheses)
	}

	resultingString := fmt.Sprintf("fof(%s%d, plain, [%s] --> [], inference(%s, [status(thm), %d], [%s])).",
		prefix_step,
		proof.GetId(),
		mapDefault(btps.ListToMappedString(hypotheses.Slice(), ", ", "", tptpMapConnectors(), false)),
		format,
		target,
		IntListToString(children_id, prefix_step))

	return resultingString, resultHyps
}

func deltaStep(proof *gs3.GS3Sequent, hypotheses *btps.FormList, target int, format string) (string, []*btps.FormList) {
	children_id := []int{}
	for _, c := range proof.Children() {
		new_id := incrByOne(&id_proof_step, &mutex_proof_step)
		children_id = append(children_id, new_id)
		c.SetId(new_id)
	}

	new_term := createNewConstant(proof.TermGenerated())
	proof = updateSkolemSymbol(proof.TermGenerated(), new_term, proof)

	resultingString := fmt.Sprintf("fof(%s%d, plain, [%s] --> [], inference(%s, [status(thm), %d, $fot(%s)], [%s])).",
		prefix_step,
		proof.GetId(),
		mapDefault(btps.ListToMappedString(hypotheses.Slice(), ", ", "", tptpMapConnectors(), GetTypeProof())),
		format,
		target,
		new_term.ToMappedString(tptpMapConnectors(), GetTypeProof()),
		IntListToString(children_id, prefix_step))

	newHypotheses := hypotheses.Copy()
	newHypotheses.AppendIfNotContains(proof.GetResultFormulasOfChild(0).Slice()...)

	return resultingString, []*btps.FormList{newHypotheses}
}

func gammaStep(proof *gs3.GS3Sequent, hypotheses *btps.FormList, target int, format string) (string, []*btps.FormList) {
	children_id := []int{}
	for _, c := range proof.Children() {
		new_id := incrByOne(&id_proof_step, &mutex_proof_step)
		children_id = append(children_id, new_id)
		c.SetId(new_id)
	}

	get(proof.GetTargetForm(), hypotheses)

	resultingString := fmt.Sprintf("fof(%s%d, plain, [%s] --> [], inference(%s, [status(thm), %d, $fot(%s)], [%s])).",
		prefix_step,
		proof.GetId(),
		mapDefault(btps.ListToMappedString(hypotheses.Slice(), ", ", "", tptpMapConnectors(), GetTypeProof())),
		format,
		target,
		findInConstants(proof.TermGenerated()).ToMappedString(tptpMapConnectors(), GetTypeProof()),
		IntListToString(children_id, prefix_step))

	newHypotheses := hypotheses.Copy()
	newHypotheses.AppendIfNotContains(proof.GetResultFormulasOfChild(0).Slice()...)

	return resultingString, []*btps.FormList{newHypotheses}
}

func weakenStep(proof *gs3.GS3Sequent, hypotheses *btps.FormList, target int, format string) (string, []*btps.FormList, int) {
	child_id := incrByOne(&id_proof_step, &mutex_proof_step)

	if target != -1 {
		hypotheses.Remove(target)
	}

	resultingString := fmt.Sprintf("fof(%s%d, plain, [%s] --> [], inference(%s, [status(thm), %d], [%s%d])).",
		prefix_step,
		proof.GetId(),
		mapDefault(btps.ListToMappedString(hypotheses.Slice(), ", ", "", tptpMapConnectors(), false)),
		format,
		target,
		prefix_step,
		child_id)

	return resultingString, []*btps.FormList{hypotheses}, child_id
}

func rewriteStep(rewriteRule btps.Form, hypotheses *btps.FormList, target int, replacementForm btps.Form) (string, []*btps.FormList) {
	// resultingString := fmt.Sprintf("rewrite %s in %s.", introName(get(rewriteRule, hypotheses)), introName(target))
	// hypotheses[target] = replacementForm
	// return resultingString, []*btps.FormList{hypotheses}
	return "", []*btps.FormList{}
}

/*** Initial Formula Management ***/

// Processes the formula that was proven by Goéland.
func processMainFormula(form btps.Form) (*btps.FormList, btps.Form) {
	formList := btps.NewFormList()
	switch nf := form.(type) {
	case btps.Not:
		form = nf.GetForm()
	case btps.And:
		last := nf.FormList.Len() - 1
		formList = btps.NewFormList(nf.FormList.GetElements(0, last)...)
		form = nf.FormList.Get(last).(btps.Not).GetForm()
	}
	return formList, form
}

// Prints the theorem's name & properly formats the first formula.
func makeTheorem(axioms *btps.FormList, conjecture btps.Form) string {
	var resulting_string string
	problemName := strings.ReplaceAll(strings.ReplaceAll(strings.ReplaceAll(GetProblemName(), ".", "_"), "=", "_"), "+", "_")

	for _, ax := range axioms.Slice() {
		resulting_string = resulting_string + "fof(" + fmt.Sprintf("ax%d", ax.GetIndex()) + ", axiom, " + mapDefault(ax.ToMappedString(tptpMapConnectors(), GetTypeProof())) + ").\n\n"
	}

	resulting_string = resulting_string + "fof(c_" + problemName + ", conjecture, " + mapDefault(conjecture.ToMappedString(tptpMapConnectors(), GetTypeProof())) + ").\n\n"
	return resulting_string
}

// Perform the first step to go from ax |- c to ax, ~c |-
func performFirstStep(axioms *btps.FormList, conjecture btps.Form, hypothesis *btps.FormList, nextId int) (string, int) {
	cutFormNotId := incrByOne(&id_proof_step, &mutex_proof_step)
	cutFormHypId := incrByOne(&id_proof_step, &mutex_proof_step)
	nextFormId := incrByOne(&id_proof_step, &mutex_proof_step)

	// Cut initial formula, |- ~c, c step
	cutFormNot := fmt.Sprintf("fof("+prefix_step+"%d, plain, [%s] --> [%s, %s], inference(%s, [status(thm), %d], [%s])).",
		cutFormNotId,
		mapDefault(btps.ListToMappedString(axioms.Slice(), ", ", "", tptpMapConnectors(), GetTypeProof())),
		mapDefault(conjecture.ToMappedString(tptpMapConnectors(), false)),
		mapDefault(btps.MakerNot(conjecture).ToMappedString(tptpMapConnectors(), GetTypeProof())),
		"rightNot",
		1,
		prefix_step+strconv.Itoa(cutFormHypId))

	// Cut initial formula, c |- c step
	cutFormHyp := fmt.Sprintf("fof("+prefix_step+"%d, plain, [%s] --> [%s], inference(%s, [status(thm), %d], [%s])).",
		cutFormHypId,
		mapDefault(btps.ListToMappedString(append(axioms.Slice(), conjecture), ", ", "", tptpMapConnectors(), GetTypeProof())),
		mapDefault(conjecture.ToMappedString(tptpMapConnectors(), GetTypeProof())),
		"hyp",
		axioms.Len(),
		// 0,
		"")

	// Actual start of the formula with H |- C
	// indexHyp, _ := hypothesis.GetIndexOf(btps.MakerNot(conjecture))
	startForm := fmt.Sprintf("fof(f%d, plain, [%s] --> [%s], inference(cut, [status(thm), %d], [%s%d, %s%d])).\n\n",
		nextId,
		mapDefault(btps.ListToMappedString(axioms.Slice(), ", ", "", tptpMapConnectors(), GetTypeProof())),
		mapDefault(conjecture.ToMappedString(tptpMapConnectors(), GetTypeProof())),
		1,
		//indexHyp,
		prefix_step,
		cutFormNotId,
		prefix_step,
		nextFormId)

	return cutFormHyp + "\n\n" + cutFormNot + "\n\n" + startForm, nextFormId
}

// Perform the cut axiom steps
func performCutAxiomStep(axioms *btps.FormList, conjecture btps.Form) string {

	resultString := ""

	// Loop on axioms
	for i, ax := range axioms.Slice() {
		var nextStep string
		if i == axioms.Len()-1 {
			nextStep = "f0"
		} else {
			nextStep = prefix_axiom_cut + strconv.Itoa(i+1)
		}

		cutAxiomStep := fmt.Sprintf("fof(%s%d, plain, [%s] --> [%s], inference(cut, [status(thm), %d, %d], [%s%d, %s])).\n",
			prefix_axiom_cut,
			i,
			btps.ListToMappedString(axioms.GetElements(0, i), ", ", "", tptpMapConnectors(), GetTypeProof()),
			mapDefault(conjecture.ToMappedString(tptpMapConnectors(), GetTypeProof())),
			0,
			//i,
			"ax",
			ax.GetIndex(),
			nextStep)

		resultString = cutAxiomStep + "\n" + resultString
	}
	return resultString + "\n"
}

/*** Utility Functions ***/

func get(f btps.Form, fl *btps.FormList) int {
	for i, h := range fl.Slice() {
		if h.Equals(f) {
			return i
		}
	}
	return -1
}

func isPredEqual(f btps.Form) bool {
	if not, isNot := f.(btps.Not); isNot {
		f = not.GetForm()
	}
	if p, isPred := f.(btps.Pred); isPred {
		return p.GetID().Equals(btps.Id_eq)
	}
	return false
}

func incrByOne(cpt *int, mutex *sync.Mutex) int {
	res := -1
	mutex.Lock()
	*cpt = (*cpt) + 1
	res = *cpt
	mutex.Unlock()
	return res
}

func updateId(proof *gs3.GS3Sequent, i int) {
	// fmt.Printf("Your current Id is %d and I want to give you id %d\n", proof.GetId(), i)
	if i != -1 {
		proof.SetId(i)
	}
}

func updateSkolemSymbol(old, new btps.Term, proof *gs3.GS3Sequent) *gs3.GS3Sequent {

	// Update Target Form
	new_target_form, _ := proof.GetTargetForm().ReplaceTermByTerm(old, new)
	proof.SetTargetForm(new_target_form)

	// Update generated term
	if proof.TermGenerated() != nil {
		new_generated_term := proof.TermGenerated().ReplaceSubTermBy(old, new)
		proof.SetTermGenerated(new_generated_term)
	}

	// Update formGenerated
	new_forms_generated := make([]*btps.FormList, len(proof.GetResultFormulasOfChildren()))
	for i, fg := range proof.GetResultFormulasOfChildren() {
		new_forms_generated_bis := btps.NewFormList()
		for _, fg_bis := range fg.Slice() {
			new_term, _ := fg_bis.ReplaceTermByTerm(old, new)
			new_forms_generated_bis.Append(new_term)
		}
		new_forms_generated[i] = new_forms_generated_bis
	}

	proof.SetFormGenerated(new_forms_generated)

	// // Update Children
	new_children := make([]*gs3.GS3Sequent, len(proof.Children()))
	for i, child := range proof.Children() {
		new_children[i] = updateSkolemSymbol(old, new, child)
	}

	proof.SetChildren(new_children)

	return proof
}

/*** Constant created Management ***/

func createNewConstant(term btps.Term) btps.Term {
	mutex_constant.Lock()
	new_id := len(constant_created)
	new_term_name := fmt.Sprintf("%s%d", prefix_const, new_id)
	new_term := btps.MakerNewId(new_term_name)
	original_term = append(original_term, term)
	constant_created = append(constant_created, new_term)
	mutex_constant.Unlock()
	return new_term
}

func findInConstants(term btps.Term) btps.Term {
	if term == nil {
		return dummyTerm
	} else {
		return getCreatedFromOriginal(term)
	}
}

func getCreatedFromOriginal(term btps.Term) btps.Term {
	for i, t := range original_term {
		if t.Equals(term) {
			return constant_created[i]
		}
	}
	return term
}
