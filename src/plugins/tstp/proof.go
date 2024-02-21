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
* This file provides a TSTP proof from Goéland's proof.
**/

package tstp

import (
	"fmt"
	"strings"

	. "github.com/GoelandProver/Goeland/global"
	"github.com/GoelandProver/Goeland/plugins/gs3"
	btps "github.com/GoelandProver/Goeland/types/basic-types"
)

var dummy int

func makeTstpProofFromGS3(proof *gs3.GS3Sequent) string {
	dummy = 0
	axioms, conjecture := processMainFormula(proof.GetTargetForm())
	var resultingString string
	resultingString = makeTheorem(axioms, conjecture)
	hypotheses := make(btps.FormList, 0)
	_, hypotheses = addH(btps.MakerNot(conjecture), hypotheses)
	resultingString += followProofSteps(proof, hypotheses)

	return "% SZS output start Proof for " + GetProblemName() + "\n\n" + resultingString + "\n% SZS output end Proof for " + GetProblemName() + "\n\n"
}

func followProofSteps(proof *gs3.GS3Sequent, hypotheses btps.FormList) string {
	var resultingString string
	var resultingStringParent string
	var childrenHypotheses []btps.FormList
	if !proof.IsEmpty() {
		resultingStringParent, childrenHypotheses = makeProofStep(proof, hypotheses)
	}
	for i, child := range proof.Children() {
		if proof.IsEmpty() {
			resultingString += followProofSteps(child, cp(hypotheses)) + "\n"
		} else {
			resultingString += followProofSteps(child, hypotheses.Merge(childrenHypotheses[i])) + "\n"
		}
	}
	return resultingString + resultingStringParent
}

func makeProofStep(proof *gs3.GS3Sequent, hypotheses btps.FormList) (string, []btps.FormList) {
	stepResult, childrenHypotheses := makeStep(proof, hypotheses)
	return stepResult, childrenHypotheses
}

func makeStep(proof *gs3.GS3Sequent, hypotheses btps.FormList) (string, []btps.FormList) {
	var resultingString string
	childrenHypotheses := []btps.FormList{hypotheses}

	fmt.Printf("---------------------------\n")
	fmt.Printf("%s\n", proof.ToString())
	fmt.Printf("---------------------------\n")

	target := get(proof.GetTargetForm(), hypotheses)

	switch proof.Rule() {
	// Closure.
	case gs3.AX:
		if isPredEqual(proof.GetTargetForm()) {
			resultingString = "equality."
		} else {
			target2 := get(btps.MakerNot(proof.GetTargetForm()), hypotheses)
			if target2 == -1 {
				PrintError("TSTP - makeStep", "complementary literal not found")
			}
			resultingString = fmt.Sprintf("fof(%d, plain, [%s] --> [], inference(%s, param(%d, %d), [%s])) ",
				proof.GetId(),
				mapDefault(btps.ListToMappedString(hypotheses, ", ", "", tstpMapConnectors(), false)),
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
		resultingString, childrenHypotheses = betaStep(proof, hypotheses, target, "leftNotEqu")
	case gs3.OR:
		resultingString, childrenHypotheses = betaStep(proof, hypotheses, target, "leftOr")
	case gs3.IMP:
		resultingString, childrenHypotheses = betaStep(proof, hypotheses, target, "leftImp")
	case gs3.EQU:
		resultingString, childrenHypotheses = betaStep(proof, hypotheses, target, "leftEqu")

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
			resultingString = fmt.Sprintf("weaken %s", getConstantName(proof.TermGenerated().(btps.Fun).GetID()))
		} else {
			resultingString, childrenHypotheses = cleanHypotheses(hypotheses, proof.GetTargetForm())
		}

	case gs3.REWRITE:
		resultingString, childrenHypotheses = rewriteStep(proof.GetRewriteWith(), hypotheses, target, proof.GetResultFormulasOfChild(0)[0])
	}

	return resultingString + "\n", childrenHypotheses
}

func alphaStep(proof *gs3.GS3Sequent, hypotheses btps.FormList, target int, format string) (string, []btps.FormList) {
	// fmt.Printf("proof.GetTargetForm() : \n%s\n", proof.GetTargetForm().ToString())
	// fmt.Printf("proof.child : \n%s\n", proof.GetResultFormulasOfChild(0).ToString())

	children_id := []int{}
	for _, c_id := range proof.Children() {
		children_id = append(children_id, c_id.GetId())
	}

	resultingString := fmt.Sprintf("fof(%d, plain, [%s] --> [], inference(%s, param(%d), [%s])) ",
		proof.GetId(),
		mapDefault(btps.ListToMappedString(hypotheses, ", ", "", tstpMapConnectors(), false)),
		format,
		target,
		IntListToString(children_id))

	return resultingString, []btps.FormList{hypotheses.Merge(proof.GetResultFormulasOfChild(0))}
}

func betaStep(proof *gs3.GS3Sequent, hypotheses btps.FormList, target int, format string) (string, []btps.FormList) {
	var hypoCopy btps.FormList
	resultHyps := []btps.FormList{}
	children_id := []int{}

	for i, c_id := range proof.Children() {
		children_id = append(children_id, c_id.GetId())
		hypoCopy = cp(hypotheses)
		resultHyps = append(resultHyps, hypoCopy.Merge(proof.GetResultFormulasOfChild(i)))
	}

	resultingString := fmt.Sprintf("fof(%d, plain, [%s] --> [], inference(%s, param(%d), [%s])) ",
		proof.GetId(),
		mapDefault(btps.ListToMappedString(hypotheses, ", ", "", tstpMapConnectors(), false)),
		format,
		target,
		IntListToString(children_id))

	return resultingString, resultHyps
}

func deltaStep(proof *gs3.GS3Sequent, hypotheses btps.FormList, target int, format string) (string, []btps.FormList) {

	// fmt.Printf("proof.GetTargetForm() : \n%s\n", proof.GetTargetForm().ToString())
	// fmt.Printf("proof.child : \n%s\n", proof.GetResultFormulasOfChild(0).ToString())

	// children_id := []int{}
	// for _, c_id := range proof.Children() {
	// 	children_id = append(children_id, c_id.GetId())
	// }

	// resultingString := fmt.Sprintf("fof(%d, plain, [%s] --> [], inference(%s, param(%d), [%s])) ",
	// 	proof.GetId(),
	// 	btps.ListToMappedString(hypotheses, ", ", "", tstpMapConnectors(), false),
	// 	format,
	// 	target,
	// 	IntListToString(children_id))

	// return resultingString, []btps.FormList{hypotheses.Merge(proof.GetResultFormulasOfChild(0))}

	// 	var indices []int
	// 	var name string
	// 	//PrintInfo("DELTA", fmt.Sprintf("%s\n%s", hypotheses[target].ToString(), proof.GetResultFormulasOfChild(0).ToString()))
	// 	indices, hypotheses = introduceList(proof.GetResultFormulasOfChild(0), hypotheses)
	// 	resultingString := fmt.Sprintf(format, introName(target), name, introNames(indices))
	// 	return resultingString, []btps.FormList{hypotheses}

	return "", []btps.FormList{}
}

func gammaStep(proof *gs3.GS3Sequent, hypotheses btps.FormList, target int, format string) (string, []btps.FormList) {
	fmt.Printf("proof.GetTargetForm() : \n%s\n", proof.GetTargetForm().ToString())
	fmt.Printf("proof.child : \n%s\n", proof.GetResultFormulasOfChild(0).ToString())

	children_id := []int{}
	for _, c_id := range proof.Children() {
		children_id = append(children_id, c_id.GetId())
	}

	resultingString := fmt.Sprintf("fof(%d, plain, [%s] --> [], inference(%s, param(%d, $fot(%s)), [%s])) ",
		proof.GetId(),
		mapDefault(btps.ListToMappedString(hypotheses, ", ", "", tstpMapConnectors(), false)),
		format,
		target,
		proof.TermGenerated().ToMappedString(tstpMapConnectors(), false),
		IntListToString(children_id))

	return resultingString, []btps.FormList{hypotheses.Merge(proof.GetResultFormulasOfChild(0))}
}

func rewriteStep(rewriteRule btps.Form, hypotheses btps.FormList, target int, replacementForm btps.Form) (string, []btps.FormList) {
	// resultingString := fmt.Sprintf("rewrite %s in %s.", introName(get(rewriteRule, hypotheses)), introName(target))
	// hypotheses[target] = replacementForm
	// return resultingString, []btps.FormList{hypotheses}
	return "", []btps.FormList{}
}

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
	problemName := strings.ReplaceAll(strings.ReplaceAll(strings.ReplaceAll(GetProblemName(), ".", "_"), "=", "_"), "+", "_")
	formattedProblem := makeImpChain(append(axioms, btps.MakerNot(conjecture)))
	return "fof(" + problemName + ", conjecture, " + mapDefault(formattedProblem.ToMappedString(tstpMapConnectors(), false)) + ").\n\n"
}

// If [F1, F2, F3] is a formlist, then this function returns F1 -> (F2 -> F3).
func makeImpChain(forms btps.FormList) btps.Form {
	last := len(forms) - 1
	form := forms[last]
	for i := last - 1; i >= 0; i-- {
		form = btps.MakerImp(forms[i], form)
	}
	return form
}

// Introduces a new formula in TSTP's hypotheses.
func addH(f btps.Form, hypotheses btps.FormList) (int, btps.FormList) {
	PrintInfo("Add in hypothesis", f.ToString())
	index := len(hypotheses)
	hypotheses = append(hypotheses, f)
	return index, hypotheses
}

func get(f btps.Form, fl btps.FormList) int {
	for i, h := range fl {
		if h.Equals(f) {
			return i
		}
	}
	// PrintInfo("GET", f.ToString())
	// for _, h := range hypotheses {
	// 	PrintInfo("H", h.ToString())
	// }
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

func addTermGenerated(constantsCreated []btps.Term, term btps.Term) ([]btps.Term, string) {
	if term == nil {
		dummy++
		return constantsCreated, fmt.Sprintf("x%d", dummy-1)
	}
	constantsCreated = append(constantsCreated, term)
	return constantsCreated, getConstantName(term.(btps.Fun).GetID())
}

func getRealConstantName(constantsCreated []btps.Term, term btps.Term) string {
	if term == nil {
		return "goeland_I"
	}
	if fun, isFun := term.(btps.Fun); isFun {
		res := ""
		if isGroundTerm(fun.GetID()) {
			res = fun.GetID().ToMappedString(tstpMapConnectors(), false)
			subterms := make([]string, 0)
			for _, t := range fun.GetArgs() {
				subterms = append(subterms, getRealConstantName(constantsCreated, t))
			}
			if len(subterms) > 0 {
				res += "(" + strings.Join(subterms, ", ") + ")"
			}
		} else {
			res = findInConstants(constantsCreated, term)
		}
		return res
	}
	return findInConstants(constantsCreated, term)
}

func findInConstants(constantsCreated []btps.Term, term btps.Term) string {
	if term == nil {
		return "goeland_I"
	}
	if hasBeenCreated(constantsCreated, term) {
		return getConstantName(term.(btps.Fun).GetID())
	}
	if isGroundTerm(term) {
		return "(" + term.ToMappedString(tstpMapConnectors(), false) + ")"
	}
	return "goeland_I"
}

func cp[T any](source []T) []T {
	arr := make([]T, len(source))
	copy(arr, source)
	return arr
}

func cleanHypotheses(hypotheses btps.FormList, form btps.Form) (string, []btps.FormList) {
	result := ""
	// index := get(form, hypotheses)
	// if index != -1 {
	// 	hypotheses[index] = btps.MakerTop()
	// 	result = fmt.Sprintf("clear %s. ", introName(index))
	// }
	return result, []btps.FormList{hypotheses}
}

func getConstantName(id btps.Id) string {
	return id.ToString()
}

func hasBeenCreated(constantsCreated []btps.Term, term btps.Term) bool {
	for _, t := range constantsCreated {
		if t.Equals(term) {
			return true
		}
	}
	return false
}

func isGroundTerm(term btps.Term) bool {
	return !strings.Contains(term.ToString(), "sko")
}
