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
* This file provides a coq proof from Goéland's proof.
**/

package coq

import (
	"fmt"
	"strings"

	. "github.com/GoelandProver/Goeland/global"
	"github.com/GoelandProver/Goeland/modules/dmt"
	"github.com/GoelandProver/Goeland/proof_output/gs3"
	basictypes "github.com/GoelandProver/Goeland/types/basic-types"
)

var dummy int

func makeCoqProofFromGS3(proof *gs3.GS3Sequent) string {
	dummy = 0
	axioms, conjecture := processMainFormula(proof.GetTargetForm())
	totalAxioms := axioms.Len()
	if IsLoaded("dmt") {
		axioms.Append(dmt.GetRegisteredAxioms().Slice()...)
	}
	var resultingString string
	resultingString = makeTheorem(axioms, conjecture)
	resultingString += "Proof.\n"
	hypotheses := basictypes.NewFormList()
	if axioms.Len() > 0 {
		indices := make([]int, axioms.Len())
		for i, form := range axioms.Slice() {
			indices[i], hypotheses = introduce(form, hypotheses)
		}
		resultingString += "intros " + strings.Join(MapTo(indices, func(_ int, index int) string { return introName(index) }), " ") + ". "
		if totalAxioms > 0 {
			proof = proof.Child(0)
		}
	}
	index, hypotheses := introduce(basictypes.MakerNot(conjecture), hypotheses)
	resultingString += "intro " + introName(index) + ". "
	resultingString += followProofSteps(proof, hypotheses, make([]basictypes.Term, 0))

	return resultingString + "\nQed.\n"
}

func followProofSteps(proof *gs3.GS3Sequent, hypotheses *basictypes.FormList, constantsCreated []basictypes.Term) string {
	var resultingString string
	var childrenHypotheses []*basictypes.FormList
	if !proof.IsEmpty() {
		resultingString, childrenHypotheses, constantsCreated = makeProofStep(proof, hypotheses, constantsCreated)
	}
	for i, child := range proof.Children() {
		if proof.IsEmpty() {
			resultingString += "\n" + followProofSteps(child, hypotheses.Copy(), cp(constantsCreated))
		} else {
			resultingString += "\n" + followProofSteps(child, childrenHypotheses[i].Copy(), cp(constantsCreated))
		}
	}
	return resultingString
}

func makeProofStep(proof *gs3.GS3Sequent, hypotheses *basictypes.FormList, constantsCreated []basictypes.Term) (string, []*basictypes.FormList, []basictypes.Term) {
	stepResult, childrenHypotheses, constantsCreated := makeStep(proof, hypotheses, constantsCreated)
	return stepResult, childrenHypotheses, constantsCreated
}

func makeStep(proof *gs3.GS3Sequent, hypotheses *basictypes.FormList, constantsCreated []basictypes.Term) (string, []*basictypes.FormList, []basictypes.Term) {
	var resultingString string
	childrenHypotheses := []*basictypes.FormList{hypotheses}

	target, _ := hypotheses.GetIndexOf(proof.GetTargetForm())
	switch proof.Rule() {
	// Closure.
	case gs3.AX:
		if isPredEqual(proof.GetTargetForm()) {
			resultingString = "congruence."
		} else {
			resultingString = "auto."
		}

	// Alpha rules
	case gs3.NNOT:
		resultingString, childrenHypotheses = alphaStep(proof, hypotheses, target, "%s")
	case gs3.AND:
		resultingString, childrenHypotheses = alphaStep(proof, hypotheses, target, "(goeland_and_s _ _ %s)")
	case gs3.NOR:
		resultingString, childrenHypotheses = alphaStep(proof, hypotheses, target, "(goeland_notor_s _ _ %s)")
	case gs3.NIMP:
		resultingString, childrenHypotheses = alphaStep(proof, hypotheses, target, "(goeland_notimply_s _ _ %s)")

	// Beta rules
	case gs3.NAND:
		resultingString, childrenHypotheses = betaStep(proof, hypotheses, target, "(goeland_notand_s _ _ %s)")
	case gs3.NEQU:
		resultingString, childrenHypotheses = betaStep(proof, hypotheses, target, "(goeland_notequiv_s _ _ %s)")
	case gs3.OR:
		resultingString, childrenHypotheses = betaStep(proof, hypotheses, target, "(goeland_or_s _ _ %s)")
	case gs3.IMP:
		resultingString, childrenHypotheses = betaStep(proof, hypotheses, target, "(goeland_imply_s _ _ %s)")
	case gs3.EQU:
		resultingString, childrenHypotheses = betaStep(proof, hypotheses, target, "(goeland_equiv_s _ _ %s)")

	// Delta rules
	case gs3.NALL:
		resultingString, childrenHypotheses, constantsCreated = deltaStep(proof, hypotheses, target, "apply %s. intros %s. apply NNPP. intros %s. ", constantsCreated)
	case gs3.EX:
		resultingString, childrenHypotheses, constantsCreated = deltaStep(proof, hypotheses, target, "elim %s. intros %s. intros %s. ", constantsCreated)

	// Gamma rules
	case gs3.ALL:
		resultingString, childrenHypotheses = gammaStep(proof, hypotheses, target, "generalize (%s %s). intros %s. ", constantsCreated)
	case gs3.NEX:
		resultingString, childrenHypotheses = gammaStep(proof, hypotheses, target, "apply %s. exists %s. apply NNPP. intros %s. ", constantsCreated)

	// Weakening rule
	case gs3.W:
		if proof.TermGenerated() != nil {
			resultingString = fmt.Sprintf("clear %s.", getConstantName(proof.TermGenerated().(basictypes.Fun).GetID()))
		} else {
			resultingString, childrenHypotheses = cleanHypotheses(hypotheses, proof.GetTargetForm())
		}

	case gs3.REWRITE:
		resultingString, childrenHypotheses = rewriteStep(proof.GetRewriteWith(), hypotheses, target, proof.GetResultFormulasOfChild(0).Get(0))
	}

	return resultingString, childrenHypotheses, constantsCreated
}

func alphaStep(proof *gs3.GS3Sequent, hypotheses *basictypes.FormList, target int, format string) (string, []*basictypes.FormList) {
	var indices []int
	indices, hypotheses = introduceList(proof.GetResultFormulasOfChild(0), hypotheses)
	resultingString := fmt.Sprintf("apply "+format+". intros %s. ", introName(target), introNames(indices))
	return resultingString, []*basictypes.FormList{hypotheses}
}

func betaStep(proof *gs3.GS3Sequent, hypotheses *basictypes.FormList, target int, format string) (string, []*basictypes.FormList) {
	resultHyps := []*basictypes.FormList{}
	var indices []int
	resultingString := fmt.Sprintf("apply "+format+"; ", introName(target))
	introducedNames := make([]string, 0)
	for i := range proof.Children() {
		hypoCopy := hypotheses.Copy()
		indices, hypoCopy = introduceList(proof.GetResultFormulasOfChild(i), hypoCopy)
		introducedNames = append(introducedNames, "intros "+introNames(indices, " "))
		resultHyps = append(resultHyps, hypoCopy)
	}

	return resultingString + "[ " + strings.Join(introducedNames, " | ") + " ].", resultHyps
}

func deltaStep(proof *gs3.GS3Sequent, hypotheses *basictypes.FormList, target int, format string, constantsCreated []basictypes.Term) (string, []*basictypes.FormList, []basictypes.Term) {
	var indices []int
	var name string
	//PrintInfo("DELTA", fmt.Sprintf("%s\n%s", hypotheses[target].ToString(), proof.GetResultFormulasOfChild(0).ToString()))
	indices, hypotheses = introduceList(proof.GetResultFormulasOfChild(0), hypotheses)
	constantsCreated, name = addTermGenerated(constantsCreated, proof.TermGenerated())
	resultingString := fmt.Sprintf(format, introName(target), name, introNames(indices))
	return resultingString, []*basictypes.FormList{hypotheses}, constantsCreated
}

func gammaStep(proof *gs3.GS3Sequent, hypotheses *basictypes.FormList, target int, format string, constantsCreated []basictypes.Term) (string, []*basictypes.FormList) {
	var indices []int
	indices, hypotheses = introduceList(proof.GetResultFormulasOfChild(0), hypotheses)
	name := "(" + getRealConstantName(constantsCreated, proof.TermGenerated()) + ")"
	resultingString := fmt.Sprintf(format, introName(target), name, introNames(indices))
	return resultingString, []*basictypes.FormList{hypotheses}
}

func rewriteStep(rewriteRule basictypes.Form, hypotheses *basictypes.FormList, target int, replacementForm basictypes.Form) (string, []*basictypes.FormList) {
	index, _ := hypotheses.GetIndexOf(rewriteRule)
	resultingString := fmt.Sprintf("rewrite %s in %s.", introName(index), introName(target))
	hypotheses.Set(target, replacementForm)
	return resultingString, []*basictypes.FormList{hypotheses}
}

// Processes the formula that was proven by Goéland.
func processMainFormula(form basictypes.Form) (*basictypes.FormList, basictypes.Form) {
	formList := basictypes.NewFormList()
	switch nf := form.(type) {
	case basictypes.Not:
		form = nf.GetForm()
	case basictypes.And:
		last := nf.FormList.Len() - 1
		formList = basictypes.NewFormList(nf.FormList.GetElements(0, last)...)
		form = nf.FormList.Get(last).(basictypes.Not).GetForm()
	}
	return formList, form
}

// Prints the theorem's name & properly formats the first formula.
func makeTheorem(axioms *basictypes.FormList, conjecture basictypes.Form) string {
	problemName := strings.ReplaceAll(strings.ReplaceAll(strings.ReplaceAll(GetProblemName(), ".", "_"), "=", "_"), "+", "_")
	axiomsWithConj := axioms.Copy()
	axiomsWithConj.Append(basictypes.MakerNot(basictypes.MakerNot(conjecture)))
	formattedProblem := makeImpChain(axiomsWithConj)
	return "Theorem goeland_proof_of_" + problemName + " : " + mapDefault(formattedProblem.ToMappedString(coqMapConnectors(), GetTypeProof())) + ".\n"
}

// If [F1, F2, F3] is a formlist, then this function returns F1 -> (F2 -> F3).
func makeImpChain(forms *basictypes.FormList) basictypes.Form {
	last := forms.Len() - 1
	form := forms.Get(last)
	for i := last - 1; i >= 0; i-- {
		form = basictypes.MakerImp(forms.Get(i), form)
	}
	return form
}

// Introduces a new formula in coq's hypotheses.
func introduce(f basictypes.Form, hypotheses *basictypes.FormList) (int, *basictypes.FormList) {
	//PrintInfo("INTRODUCING", f.ToString())
	index := hypotheses.Len()
	hypotheses.Append(f)
	return index, hypotheses
}

func introduceList(fl, hypotheses *basictypes.FormList) ([]int, *basictypes.FormList) {
	indices := make([]int, fl.Len())
	for i, f := range fl.Slice() {
		indices[i], hypotheses = introduce(f, hypotheses)
	}
	return indices, hypotheses
}

// Makes a Coq's name for a new hypothesis.
func introName(i int) string {
	return fmt.Sprintf("H%d", i)
}

func introNames(il []int, sep ...string) string {
	var s string
	if len(sep) == 0 {
		s = " "
	} else {
		s = sep[0]
	}
	return strings.Join(MapTo(il, func(_ int, f int) string { return introName(f) }), s)
}

func isPredEqual(f basictypes.Form) bool {
	if not, isNot := f.(basictypes.Not); isNot {
		f = not.GetForm()
	}
	if p, isPred := f.(basictypes.Pred); isPred {
		return p.GetID().Equals(basictypes.Id_eq)
	}
	return false
}

func addTermGenerated(constantsCreated []basictypes.Term, term basictypes.Term) ([]basictypes.Term, string) {
	if term == nil {
		dummy++
		return constantsCreated, fmt.Sprintf("x%d", dummy-1)
	}
	constantsCreated = append(constantsCreated, term)
	return constantsCreated, getConstantName(term.(basictypes.Fun).GetID())
}

func getRealConstantName(constantsCreated []basictypes.Term, term basictypes.Term) string {
	if term == nil {
		return "goeland_I"
	}
	if fun, isFun := term.(basictypes.Fun); isFun {
		res := ""
		if isGroundTerm(fun.GetID()) {
			res = fun.GetID().ToMappedString(coqMapConnectors(), GetTypeProof())
			subterms := make([]string, 0)
			for _, t := range fun.GetArgs().Slice() {
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

func findInConstants(constantsCreated []basictypes.Term, term basictypes.Term) string {
	if term == nil {
		return "goeland_I"
	}
	if hasBeenCreated(constantsCreated, term) {
		return getConstantName(term.(basictypes.Fun).GetID())
	}
	if isGroundTerm(term) {
		return "(" + term.ToMappedString(coqMapConnectors(), GetTypeProof()) + ")"
	}
	return "goeland_I"
}

func cp[T any](source []T) []T {
	arr := make([]T, len(source))
	copy(arr, source)
	return arr
}

func cleanHypotheses(hypotheses *basictypes.FormList, form basictypes.Form) (string, []*basictypes.FormList) {
	result := ""
	index, _ := hypotheses.GetIndexOf(form)
	if index != -1 {
		hypotheses.Set(index, basictypes.MakerTop())
		result = fmt.Sprintf("clear %s. ", introName(index))
	}
	return result, []*basictypes.FormList{hypotheses}
}

func getConstantName(id basictypes.Id) string {
	return id.ToString()
}

func hasBeenCreated(constantsCreated []basictypes.Term, term basictypes.Term) bool {
	for _, t := range constantsCreated {
		if t.Equals(term) {
			return true
		}
	}
	return false
}

func isGroundTerm(term basictypes.Term) bool {
	return !strings.Contains(term.ToString(), "sko")
}
