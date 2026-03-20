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
* This file provides a rocq proof from Goéland's proof.
**/

package rocq

import (
	"fmt"
	"strings"

	"github.com/GoelandProver/Goeland/AST"
	"github.com/GoelandProver/Goeland/Glob"
	"github.com/GoelandProver/Goeland/Lib"
	"github.com/GoelandProver/Goeland/Mods/CertifUtils"
	"github.com/GoelandProver/Goeland/Mods/dmt"
	"github.com/GoelandProver/Goeland/Search"
)

var dummy int

func makeRocqProofFromIProof(proof Search.IProof) string {
	dummy = 0
	axioms, conjecture := CertifUtils.ProcessMainFormula(proof.AppliedOn())
	totalAxioms := axioms.Len()
	if Glob.IsLoaded("dmt") {
		axioms.Append(dmt.GetRegisteredAxioms().GetSlice()...)
	}
	var resultingString string
	resultingString = makeTheorem(axioms, conjecture)
	resultingString += "Proof.\n"
	hypotheses := Lib.NewList[AST.Form]()
	if axioms.Len() > 0 {
		indices := make([]int, axioms.Len())
		for i, form := range axioms.GetSlice() {
			indices[i], hypotheses = introduce(form, hypotheses)
		}
		resultingString += "intros " + strings.Join(
			Glob.MapTo(indices, func(_ int, index int) string { return introName(index) }),
			" ",
		) + ". "
		if totalAxioms > 0 {
			proof = proof.Children().At(0)
		}
	}
	index, hypotheses := introduce(AST.MakeNot(conjecture), hypotheses)
	resultingString += "intro " + introName(index) + ". "

	debug(
		Lib.MkLazy(
			func() string {
				return fmt.Sprintf("Conjecture: %s, terms:\n%s",
					proof.AppliedOn().ToString(),
					Lib.ListToString(proof.AppliedOn().GetSubTerms().Elements(), "\n", "{}"),
				)
			}))

	resultingString += followProofSteps(proof, hypotheses, CertifUtils.EmptyEpsilon(
		proof.AppliedOn().GetSubTerms(),
		func(t AST.Term) AST.Term {
			switch id := AST.GetSymbol(t).(type) {
			case Lib.Some[AST.Id]:
				return AST.MakeConst(id.Val)
			}
			raise_anomaly(fmt.Sprintf("Expected %s to be a Skolem term", t.ToString()))
			return nil
		},
		func(t AST.Ty) AST.Ty {
			switch id := AST.GetTySymbol(t).(type) {
			case Lib.Some[AST.TyConstr]:
				return id.Val
			}
			raise_anomaly(fmt.Sprintf("Expected %s to be a Skolem type", t.ToString()))
			return nil
		},
		getConstantName,
	))

	return resultingString + "\nQed.\n"
}

func followProofSteps(
	proof Search.IProof,
	hypotheses Lib.List[AST.Form],
	epsilon CertifUtils.Epsilon,
) string {
	var resultingString string
	var childrenHypotheses []Lib.List[AST.Form]
	resultingString, childrenHypotheses, epsilon = makeStep(
		proof,
		hypotheses,
		epsilon,
	)
	for i, child := range proof.Children().GetSlice() {
		resultingString += "\n" + followProofSteps(
			child,
			Lib.ListCpy(childrenHypotheses[i]),
			epsilon.Copy(),
		)
	}
	return resultingString
}

func makeStep(
	proof Search.IProof,
	hypotheses Lib.List[AST.Form],
	epsilon CertifUtils.Epsilon,
) (string, []Lib.List[AST.Form], CertifUtils.Epsilon) {
	var resultingString string
	childrenHypotheses := []Lib.List[AST.Form]{hypotheses}

	target := CertifUtils.GetTargetFormIndex(proof.AppliedOn(), hypotheses)
	switch Search.KindOfRule(proof.RuleApplied()) {
	case Search.KindAlpha, Search.KindBeta, Search.KindDelta, Search.KindGamma:
		if target == CertifUtils.INVALID_INDEX {
			raise_anomaly("Non closure rule targets an equality.")
		}
	}

	switch proof.RuleApplied() {
	// Closure.
	case Search.RuleClosure:
		if CertifUtils.IsPredEqual(proof.AppliedOn()) {
			resultingString = "congruence."
		} else {
			resultingString = "auto."
		}

	// Alpha rules
	case Search.RuleNotNot:
		resultingString, childrenHypotheses = alphaStep(proof, hypotheses, target, "%s")
	case Search.RuleAnd:
		resultingString, childrenHypotheses = alphaStep(
			proof,
			hypotheses,
			target,
			"(goeland_and_s _ _ %s)",
		)
	case Search.RuleNotOr:
		resultingString, childrenHypotheses = alphaStep(
			proof,
			hypotheses,
			target,
			"(goeland_notor_s _ _ %s)",
		)
	case Search.RuleNotImp:
		resultingString, childrenHypotheses = alphaStep(
			proof,
			hypotheses,
			target,
			"(goeland_notimply_s _ _ %s)",
		)

	// Beta rules
	case Search.RuleNotAnd:
		resultingString, childrenHypotheses = betaStep(
			proof,
			hypotheses,
			target,
			"(goeland_notand_s _ _ %s)",
		)
	case Search.RuleNotEqu:
		resultingString, childrenHypotheses = betaStep(
			proof,
			hypotheses,
			target,
			"(goeland_notequiv_s _ _ %s)",
		)
	case Search.RuleOr:
		resultingString, childrenHypotheses = betaStep(
			proof,
			hypotheses,
			target,
			"(goeland_or_s _ _ %s)",
		)
	case Search.RuleImp:
		resultingString, childrenHypotheses = betaStep(
			proof,
			hypotheses,
			target,
			"(goeland_imply_s _ _ %s)",
		)
	case Search.RuleEqu:
		resultingString, childrenHypotheses = betaStep(
			proof,
			hypotheses,
			target,
			"(goeland_equiv_s _ _ %s)",
		)

	// Delta rules
	case Search.RuleNotAll:
		resultingString, childrenHypotheses, epsilon = deltaStep(
			proof,
			hypotheses,
			target,
			"apply %s. intros %s. apply NNPP. intros %s. ",
			epsilon,
		)
	case Search.RuleEx:
		resultingString, childrenHypotheses, epsilon = deltaStep(
			proof,
			hypotheses,
			target,
			"elim %s. intros %s. intros %s. ",
			epsilon,
		)

	// Gamma rules
	case Search.RuleAll:
		resultingString, childrenHypotheses = gammaStep(
			proof,
			hypotheses,
			target,
			"generalize (%s %s). intros %s. ",
			epsilon,
		)
	case Search.RuleNotEx:
		resultingString, childrenHypotheses = gammaStep(
			proof,
			hypotheses,
			target,
			"apply %s. exists %s. apply NNPP. intros %s. ",
			epsilon,
		)

	case Search.RuleWeaken:
		switch tm := proof.TermGenerated().(type) {
		case Lib.Some[Lib.Either[AST.Ty, AST.Term]]:
			if epsilon.Introduced(tm.Val) {
				resultingString = fmt.Sprintf(
					"clear %s.",
					getConstantName(tm.Val),
				)
			}
		case Lib.None[Lib.Either[AST.Ty, AST.Term]]:
			resultingString, childrenHypotheses = cleanHypotheses(hypotheses, proof.AppliedOn())
		}

	case Search.RuleRew:
		resultingString, childrenHypotheses = rewriteStep(
			proof.RewrittenWith(),
			hypotheses,
			target,
			proof.ResultFormulas().At(0).At(0),
		)

	default:
		Glob.Fatal(
			label,
			fmt.Sprintf("The rule %s has not yet been implemented", proof.RuleApplied().ToString()),
		)
	}

	return resultingString, childrenHypotheses, epsilon
}

func alphaStep(
	proof Search.IProof,
	hypotheses Lib.List[AST.Form],
	target int,
	format string,
) (string, []Lib.List[AST.Form]) {
	var indices []int
	indices, hypotheses = introduceList(proof.ResultFormulas().At(0), hypotheses)
	resultingString := fmt.Sprintf(
		"apply "+format+". intros %s. ",
		introName(target),
		introNames(indices),
	)
	return resultingString, []Lib.List[AST.Form]{hypotheses}
}

func betaStep(
	proof Search.IProof,
	hypotheses Lib.List[AST.Form],
	target int,
	format string,
) (string, []Lib.List[AST.Form]) {
	resultHyps := []Lib.List[AST.Form]{}
	var indices []int
	resultingString := fmt.Sprintf("apply "+format+"; ", introName(target))
	introducedNames := make([]string, 0)
	for _, formulas := range proof.ResultFormulas().GetSlice() {
		hypoCopy := Lib.ListCpy(hypotheses)
		indices, hypoCopy = introduceList(formulas, hypoCopy)
		introducedNames = append(introducedNames, "intros "+introNames(indices, " "))
		resultHyps = append(resultHyps, hypoCopy)
	}

	return resultingString + "[ " + strings.Join(introducedNames, " | ") + " ].", resultHyps
}

func deltaStep(
	proof Search.IProof,
	hypotheses Lib.List[AST.Form],
	target int,
	format string,
	epsilon CertifUtils.Epsilon,
) (string, []Lib.List[AST.Form], CertifUtils.Epsilon) {
	var indices []int
	var name string
	indices, hypotheses = introduceList(proof.ResultFormulas().At(0), hypotheses)
	epsilon, name = addTermGenerated(epsilon, proof.TermGenerated())
	resultingString := fmt.Sprintf(format, introName(target), name, introNames(indices))
	return resultingString, []Lib.List[AST.Form]{hypotheses}, epsilon
}

func gammaStep(
	proof Search.IProof,
	hypotheses Lib.List[AST.Form],
	target int,
	format string,
	epsilon CertifUtils.Epsilon,
) (string, []Lib.List[AST.Form]) {
	var indices []int
	indices, hypotheses = introduceList(proof.ResultFormulas().At(0), hypotheses)
	name := "(" + epsilon.Instantiate("goeland_T", "goeland_I", proof.TermGenerated()) + ")"
	resultingString := fmt.Sprintf(format, introName(target), name, introNames(indices))
	return resultingString, []Lib.List[AST.Form]{hypotheses}
}

func rewriteStep(
	rewriteRule Lib.Option[AST.Form],
	hypotheses Lib.List[AST.Form],
	target int,
	replacementForm AST.Form,
) (string, []Lib.List[AST.Form]) {
	var rewriteForm AST.Form
	switch f := rewriteRule.(type) {
	case Lib.Some[AST.Form]:
		rewriteForm = f.Val
	default:
		raise_anomaly("Trying to rewrite using an empty rule")
	}

	index := Lib.ListIndexOf(rewriteForm, hypotheses)
	var actualIndex int
	switch i := index.(type) {
	case Lib.Some[int]:
		actualIndex = i.Val
	case Lib.None[int]:
		raise_anomaly(fmt.Sprintf(
			"Index of %s not found in %s",
			rewriteForm.ToString(),
			Lib.ListToString(hypotheses, ", ", "[]"),
		))
	}

	resultingString := fmt.Sprintf("rewrite %s in %s.", introName(actualIndex), introName(target))
	hypotheses.Upd(target, replacementForm)
	return resultingString, []Lib.List[AST.Form]{hypotheses}
}

// Prints the theorem's name & properly formats the first formula.
func makeTheorem(axioms Lib.List[AST.Form], conjecture AST.Form) string {
	problemName := CertifUtils.SanitizedTheoremName()
	axiomsWithConj := Lib.ListCpy(axioms)
	axiomsWithConj.Append(AST.MakeNot(AST.MakeNot(conjecture)))
	formattedProblem := makeImpChain(axiomsWithConj)
	return "Theorem goeland_proof_of_" + problemName + " : " + formattedProblem.ToString() + ".\n"
}

// If [F1, F2, F3] is a formlist, then this function returns F1 -> (F2 -> F3).
func makeImpChain(forms Lib.List[AST.Form]) AST.Form {
	last := forms.Len() - 1
	form := forms.At(last)
	for i := last - 1; i >= 0; i-- {
		form = AST.MakeImp(forms.At(i), form)
	}
	return form
}

// Introduces a new formula in rocq's hypotheses.
func introduce(f AST.Form, hypotheses Lib.List[AST.Form]) (int, Lib.List[AST.Form]) {
	index := hypotheses.Len()
	hypotheses.Append(f)
	return index, hypotheses
}

func introduceList(fl, hypotheses Lib.List[AST.Form]) ([]int, Lib.List[AST.Form]) {
	indices := make([]int, fl.Len())
	for i, f := range fl.GetSlice() {
		indices[i], hypotheses = introduce(f, hypotheses)
	}
	return indices, hypotheses
}

// Makes a Rocq's name for a new hypothesis.
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
	return strings.Join(Glob.MapTo(il, func(_ int, f int) string { return introName(f) }), s)
}

func addTermGenerated(
	epsilon CertifUtils.Epsilon,
	term Lib.Option[Lib.Either[AST.Ty, AST.Term]],
) (CertifUtils.Epsilon, string) {
	switch tm := epsilon.Generate(term).(type) {
	case Lib.Some[Lib.Either[AST.Ty, AST.Term]]:
		return epsilon, getConstantName(tm.Val)
	default:
		dummy++
		return epsilon, fmt.Sprintf("x%d", dummy-1)
	}
}

func cp[T any](source []T) []T {
	arr := make([]T, len(source))
	copy(arr, source)
	return arr
}

func cleanHypotheses(hypotheses Lib.List[AST.Form], form AST.Form) (string, []Lib.List[AST.Form]) {
	result := ""
	index := Lib.ListIndexOf(form, hypotheses)
	var actualIndex int
	switch i := index.(type) {
	case Lib.Some[int]:
		actualIndex = i.Val
	case Lib.None[int]:
		raise_anomaly(fmt.Sprintf(
			"Index of %s not found in %s",
			form.ToString(),
			Lib.ListToString(hypotheses, ", ", "[]"),
		))
	}

	hypotheses.Upd(actualIndex, AST.MakeTop())
	result = fmt.Sprintf("clear %s. ", introName(actualIndex))
	return result, []Lib.List[AST.Form]{hypotheses}
}

func getConstantName(x Lib.Either[AST.Ty, AST.Term]) string {
	var str Lib.Option[string]

	switch t := x.(type) {
	case Lib.Left[AST.Ty, AST.Term]:
		str = AST.GetTySymbol(t.Val)
	case Lib.Right[AST.Ty, AST.Term]:
		str = Lib.OptBind(AST.GetSymbol(t.Val),
			func(id AST.Id) Lib.Option[string] { return Lib.MkSome(id.ToString()) })
	}

	switch res := str.(type) {
	case Lib.Some[string]:
		return res.Val
	}

	raise_anomaly("Skolemized term/type is not a functional symbol")
	return ""
}
