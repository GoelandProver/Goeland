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
	"github.com/GoelandProver/Goeland/plugins/gs3"
	btps "github.com/GoelandProver/Goeland/types/basic-types"
)

var mutex_proof_step sync.Mutex
var id_proof_step = 0
var prefix_step = "f"
var prefix_axiom_cut = "ac"

func makeTptpProofFromGS3(proof *gs3.GS3Sequent) string {
	axioms, conjecture := processMainFormula(proof.GetTargetForm())
	resultingString := makeTheorem(axioms, conjecture)
	hypotheses := axioms.Copy().AppendIfNotContains(btps.MakerNot(conjecture.Copy()))

	AxiomCut := performCutAxiomStep(axioms, conjecture)

	firstStep, nextId := performFirstStep(axioms, conjecture, hypotheses, 0)

	if len(axioms) == 0 {
		resultingString += followProofSteps(proof, hypotheses, nextId)
	} else {
		resultingString += followProofSteps(proof.Child(0), hypotheses, nextId)
	}

	res := "\n% SZS output start Proof for " + GetProblemName() + "\n\n\n" + resultingString + "\n" + firstStep + AxiomCut + "\n% SZS output end Proof for " + GetProblemName() + "\n"

	return res
}

/*** Proof Steps ***/

func followProofSteps(proof *gs3.GS3Sequent, hypotheses btps.FormList, new_current_id int) string {
	var resultingString string
	var resultingStringParent string
	var childrenHypotheses []btps.FormList

	if !proof.IsEmpty() {
		resultingStringParent, childrenHypotheses, new_current_id = makeProofStep(proof, hypotheses, new_current_id)
	}
	for i, child := range proof.Children() {
		if proof.IsEmpty() {
			resultingString += followProofSteps(child, cp(hypotheses), new_current_id) + "\n"
		} else {
			resultingString += followProofSteps(child, hypotheses.Merge(childrenHypotheses[i]), new_current_id) + "\n"
		}
	}
	return resultingString + resultingStringParent
}

func makeProofStep(proof *gs3.GS3Sequent, hypotheses btps.FormList, new_current_id int) (string, []btps.FormList, int) {
	stepResult, childrenHypotheses, next_child_weakened_id := makeStep(proof, hypotheses, new_current_id)
	return stepResult, childrenHypotheses, next_child_weakened_id
}

func makeStep(proof *gs3.GS3Sequent, hypotheses btps.FormList, new_current_id int) (string, []btps.FormList, int) {
	var resultingString string
	childrenHypotheses := []btps.FormList{hypotheses}
	next_child_weakened_id := -1

	updateId(proof, new_current_id)

	// fmt.Printf("---------------------------\n")
	// fmt.Printf("%s\n", proof.ToString())
	// fmt.Printf("---------------------------\n")

	target := get(proof.GetTargetForm(), hypotheses)

	// fmt.Printf("Target : %d\n", target)
	// fmt.Printf("Proof Rule : %d\n", proof.Rule())

	switch proof.Rule() {

	// Closure.
	case gs3.AX:
		if isPredEqual(proof.GetTargetForm()) {
			resultingString = fmt.Sprintf("fof("+prefix_step+"%d, plain, [%s] --> [], inference(%s, param(%d, %d), [%s])).",
				proof.GetId(),
				mapDefault(btps.ListToMappedString(hypotheses, ", ", "", tptpMapConnectors(), false)),
				"leftCongruence",
				target,
				target,
				"")
		} else {
			target2 := -1
			switch initial_formula := proof.GetTargetForm().(type) {
			case btps.Pred:
				target2 = get(btps.MakerNot(initial_formula), hypotheses)
			case btps.Not:
				target2 = get(initial_formula.GetForm(), hypotheses)
			}

			if target2 == -1 {
				PrintError("TPTP - makeStep", "complementary literal not found")
			}

			resultingString = fmt.Sprintf("fof("+prefix_step+"%d, plain, [%s] --> [], inference(%s, param(%d, %d), [%s])).",
				proof.GetId(),
				mapDefault(btps.ListToMappedString(hypotheses, ", ", "", tptpMapConnectors(), false)),
				"leftHyp",
				target,
				target2,
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
		resultingString, childrenHypotheses = alphaStep(proof, hypotheses, target, "leftNotImp")

	// Beta rules
	case gs3.NAND:
		resultingString, childrenHypotheses = betaStep(proof, hypotheses, target, "leftNotAnd")
	case gs3.NEQU:
		resultingString, childrenHypotheses = betaStep(proof, hypotheses, target, "leftNotIff")
	case gs3.OR:
		resultingString, childrenHypotheses = betaStep(proof, hypotheses, target, "leftOr")
	case gs3.IMP:
		resultingString, childrenHypotheses = betaStep(proof, hypotheses, target, "leftImp2")
	case gs3.EQU:
		resultingString, childrenHypotheses = betaStep(proof, hypotheses, target, "leftIff")

	// Delta rules
	case gs3.NALL:
		resultingString, childrenHypotheses = deltaStep(proof, hypotheses, target, "leftNotForall")
	case gs3.EX:
		resultingString, childrenHypotheses = deltaStep(proof, hypotheses, target, "leftEx")

	// Gamma rules
	case gs3.ALL:
		resultingString, childrenHypotheses = gammaStep(proof, hypotheses, target, "leftForall")
	case gs3.NEX:
		resultingString, childrenHypotheses = gammaStep(proof, hypotheses, target, "leftNotEx")

	// Weakening rule
	case gs3.W:
		if proof.TermGenerated() != nil {
			resultingString = fmt.Sprintf("leftWeaken %s", proof.TermGenerated().ToMappedString(tptpMapConnectors(), false))
		} else {
			resultingString, childrenHypotheses, next_child_weakened_id = weakenStep(proof, hypotheses, target, "leftWeaken")
		}

	case gs3.REWRITE:
		resultingString, childrenHypotheses = rewriteStep(proof.GetRewriteWith(), hypotheses, target, proof.GetResultFormulasOfChild(0)[0])
	}

	return resultingString + "\n", childrenHypotheses, next_child_weakened_id
}

func alphaStep(proof *gs3.GS3Sequent, hypotheses btps.FormList, target int, format string) (string, []btps.FormList) {

	children_id := []int{}
	for _, c := range proof.Children() {
		new_id := incrByOne(&id_proof_step, &mutex_proof_step)
		children_id = append(children_id, new_id)
		c.SetId(new_id)
	}

	resultingString := fmt.Sprintf("fof(%s%d, plain, [%s] --> [], inference(%s, param(%d), [%s])).",
		prefix_step,
		proof.GetId(),
		mapDefault(btps.ListToMappedString(hypotheses, ", ", "", tptpMapConnectors(), false)),
		format,
		target,
		IntListToString(children_id, prefix_step))

	return resultingString, []btps.FormList{hypotheses.Merge(proof.GetResultFormulasOfChild(0))}
}

func betaStep(proof *gs3.GS3Sequent, hypotheses btps.FormList, target int, format string) (string, []btps.FormList) {
	var hypoCopy btps.FormList
	resultHyps := []btps.FormList{}
	children_id := []int{}

	for i, c := range proof.Children() {
		new_id := incrByOne(&id_proof_step, &mutex_proof_step)
		children_id = append(children_id, new_id)
		c.SetId(new_id)
		hypoCopy = cp(hypotheses)
		resultHyps = append(resultHyps, hypoCopy.Merge(proof.GetResultFormulasOfChild(i)))
	}

	resultingString := fmt.Sprintf("fof(%s%d, plain, [%s] --> [], inference(%s, param(%d), [%s])).",
		prefix_step,
		proof.GetId(),
		mapDefault(btps.ListToMappedString(hypotheses, ", ", "", tptpMapConnectors(), false)),
		format,
		target,
		IntListToString(children_id, prefix_step))

	return resultingString, resultHyps
}

func deltaStep(proof *gs3.GS3Sequent, hypotheses btps.FormList, target int, format string) (string, []btps.FormList) {
	children_id := []int{}
	for _, c := range proof.Children() {
		new_id := incrByOne(&id_proof_step, &mutex_proof_step)
		children_id = append(children_id, new_id)
		c.SetId(new_id)
	}

	generated_term := ToUpperCaseFirstLetter(proof.TermGenerated().ToMappedString(tptpMapConnectors(), false))

	resultingString := fmt.Sprintf("fof(%s%d, plain, [%s] --> [], inference(%s, param(%d, $fot(%s)), [%s])).",
		prefix_step,
		proof.GetId(),
		mapDefault(btps.ListToMappedString(hypotheses, ", ", "", tptpMapConnectors(), false)),
		format,
		target,
		generated_term,
		IntListToString(children_id, prefix_step))

	return resultingString, []btps.FormList{hypotheses.Merge(proof.GetResultFormulasOfChild(0))}
}

func gammaStep(proof *gs3.GS3Sequent, hypotheses btps.FormList, target int, format string) (string, []btps.FormList) {
	children_id := []int{}
	for _, c := range proof.Children() {
		new_id := incrByOne(&id_proof_step, &mutex_proof_step)
		children_id = append(children_id, new_id)
		c.SetId(new_id)
	}

	generated_term := ToUpperCaseFirstLetter(proof.TermGenerated().ToMappedString(tptpMapConnectors(), false))

	resultingString := fmt.Sprintf("fof(%s%d, plain, [%s] --> [], inference(%s, param(%d, $fot(%s)), [%s])).",
		prefix_step,
		proof.GetId(),
		mapDefault(btps.ListToMappedString(hypotheses, ", ", "", tptpMapConnectors(), false)),
		format,
		target,
		generated_term,
		IntListToString(children_id, prefix_step))

	return resultingString, []btps.FormList{hypotheses.Merge(proof.GetResultFormulasOfChild(0))}
}

func weakenStep(proof *gs3.GS3Sequent, hypotheses btps.FormList, target int, format string) (string, []btps.FormList, int) {
	child_id := incrByOne(&id_proof_step, &mutex_proof_step)

	if target != -1 {
		hypotheses = hypotheses.Remove(target)
	}

	resultingString := fmt.Sprintf("fof(%s%d, plain, [%s] --> [], inference(%s, param(%d), [%s%d])).",
		prefix_step,
		proof.GetId(),
		mapDefault(btps.ListToMappedString(hypotheses, ", ", "", tptpMapConnectors(), false)),
		format,
		target,
		prefix_step,
		child_id)

	return resultingString, []btps.FormList{hypotheses}, child_id
}

func rewriteStep(rewriteRule btps.Form, hypotheses btps.FormList, target int, replacementForm btps.Form) (string, []btps.FormList) {
	// resultingString := fmt.Sprintf("rewrite %s in %s.", introName(get(rewriteRule, hypotheses)), introName(target))
	// hypotheses[target] = replacementForm
	// return resultingString, []btps.FormList{hypotheses}
	return "", []btps.FormList{}
}

/*** Initial Formula Management ***/

// Processes the formula that was proven by Goéland.
func processMainFormula(form btps.Form) (btps.FormList, btps.Form) {
	formList := make(btps.FormList, 0)
	switch nf := form.(type) {
	case btps.Not:
		form = nf.GetForm()
	case btps.And:
		last := len(nf.FormList) - 1
		formList = nf.FormList[:last]
		form = nf.FormList[last].(btps.Not).GetForm()
	}
	return formList, form
}

// Prints the theorem's name & properly formats the first formula.
func makeTheorem(axioms btps.FormList, conjecture btps.Form) string {
	var resulting_string string
	problemName := strings.ReplaceAll(strings.ReplaceAll(strings.ReplaceAll(GetProblemName(), ".", "_"), "=", "_"), "+", "_")

	for _, ax := range axioms {
		resulting_string = resulting_string + "fof(" + fmt.Sprintf("ax%d", ax.GetIndex()) + ", axiom, " + mapDefault(ax.ToMappedString(tptpMapConnectors(), false)) + ").\n\n"
	}

	resulting_string = resulting_string + "fof(c_" + problemName + ", conjecture, " + mapDefault(conjecture.ToMappedString(tptpMapConnectors(), false)) + ").\n\n"
	return resulting_string
}

// Perform the first step to go from ax |- c to ax, ~c |-
func performFirstStep(axioms btps.FormList, conjecture btps.Form, hypothesis btps.FormList, nextId int) (string, int) {
	cutFormNotId := incrByOne(&id_proof_step, &mutex_proof_step)
	cutFormHypId := incrByOne(&id_proof_step, &mutex_proof_step)
	nextFormId := incrByOne(&id_proof_step, &mutex_proof_step)

	// Cut initial formula, |- ~c, c step
	cutFormNot := fmt.Sprintf("fof("+prefix_step+"%d, plain, [%s] --> [%s, %s], inference(%s, param(%d), [%s])).",
		cutFormNotId,
		mapDefault(btps.ListToMappedString(axioms, ", ", "", tptpMapConnectors(), false)),
		mapDefault(conjecture.ToMappedString(tptpMapConnectors(), false)),
		mapDefault(btps.MakerNot(conjecture).ToMappedString(tptpMapConnectors(), false)),
		"rightNot",
		1,
		prefix_step+strconv.Itoa(cutFormHypId))

	// Cut initial formula, c |- c step
	cutFormHyp := fmt.Sprintf("fof("+prefix_step+"%d, plain, [%s] --> [%s], inference(%s, param(%d, %d), [%s])).",
		cutFormHypId,
		mapDefault(btps.ListToMappedString(append(axioms, conjecture), ", ", "", tptpMapConnectors(), false)),
		mapDefault(conjecture.ToMappedString(tptpMapConnectors(), false)),
		"rightHyp",
		len(axioms),
		0,
		"")

	// Actual start of the formula with H |- C
	startForm := fmt.Sprintf("fof(f%d, plain, [%s] --> [%s], inference(cut, param(%d, %d), [%s%d, %s%d])).\n\n",
		nextId,
		mapDefault(btps.ListToMappedString(axioms, ", ", "", tptpMapConnectors(), false)),
		mapDefault(conjecture.ToMappedString(tptpMapConnectors(), false)),
		1,
		hypothesis.Find(btps.MakerNot(conjecture)),
		prefix_step,
		cutFormNotId,
		prefix_step,
		nextFormId)

	return cutFormHyp + "\n\n" + cutFormNot + "\n\n" + startForm, nextFormId
}

// Perform the cut axiom steps
func performCutAxiomStep(axioms btps.FormList, conjecture btps.Form) string {

	resultString := ""

	// Loop on axioms
	for i, ax := range axioms {
		var nextStep string
		if i == axioms.Len()-1 {
			nextStep = "f0"
		} else {
			nextStep = prefix_axiom_cut + strconv.Itoa(i+1)
		}

		cutAxiomStep := fmt.Sprintf("fof(%s%d, plain, [%s] --> [%s], inference(cut, param(%d, %d), [%s%d, %s])).\n",
			prefix_axiom_cut,
			i,
			btps.ListToMappedString(axioms[:i], ", ", "", tptpMapConnectors(), false),
			mapDefault(conjecture.ToMappedString(tptpMapConnectors(), false)),
			0,
			i,
			"ax",
			ax.GetIndex(),
			nextStep)

		resultString = cutAxiomStep + "\n" + resultString
	}
	return resultString + "\n"
}

/*** Utility Functions ***/

func get(f btps.Form, fl btps.FormList) int {
	for i, h := range fl {
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

func cp[T any](source []T) []T {
	arr := make([]T, len(source))
	copy(arr, source)
	return arr
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

// TODO ; tester avec desko en pre-inner pour les id -- exemple papier
// fX1 et fx2 ?
