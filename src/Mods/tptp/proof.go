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

package tptp

import (
	"fmt"
	"strings"

	"github.com/GoelandProver/Goeland/AST"
	"github.com/GoelandProver/Goeland/Glob"
	"github.com/GoelandProver/Goeland/Lib"
	"github.com/GoelandProver/Goeland/Mods/CertifUtils"
	"github.com/GoelandProver/Goeland/Search"
)

type proof_with_id struct {
	id    int
	proof Search.IProof
}

var original_terms = Lib.NewList[Lib.Either[AST.Ty, AST.Term]]()
var prefix_step = "f"
var prefix_axiom_cut = "ac"
var prefix_const = "sko_"
var dummyTerm = AST.MakeConst(AST.MakeId("Goeland_I"))
var dummyType = AST.MkTyConst("Goeland_T")
var epsilon CertifUtils.Epsilon
var current_id = 0

func makeTPTPProofFromIProof(proof Search.IProof) string {
	axioms, conjecture := CertifUtils.ProcessMainFormula(proof.AppliedOn())
	resultingString := makeTheorem(axioms, conjecture)
	hypotheses := Lib.ListCpy(axioms).Push(AST.MakeNot(conjecture))
	cut_hypotheses := performCutAxiomStep(axioms, conjecture)
	first_steps, next_id := performFirstStep(axioms, conjecture)

	epsilon = CertifUtils.EmptyEpsilon(
		proof.AppliedOn().GetSubTerms(),
		func(term AST.Term) AST.Term {
			new_term_name := fmt.Sprintf("%s%d", prefix_const, original_terms.Len())
			new_term := AST.MakeConst(AST.MakeId(new_term_name))
			original_terms.Append(Lib.MkRight[AST.Ty, AST.Term](term))
			return new_term
		},
		func(ty AST.Ty) AST.Ty {
			new_ty_name := fmt.Sprintf("%s%d", prefix_const, original_terms.Len())
			new_ty := AST.MkTyConst(new_ty_name)
			original_terms.Append(Lib.MkLeft[AST.Ty, AST.Term](ty))
			return new_ty
		},
		func(t Lib.Either[AST.Ty, AST.Term]) string {
			switch index := original_terms.IndexOf(t, Lib.EitherEquals).(type) {
			case Lib.Some[int]:
				return fmt.Sprintf("%s%d", prefix_const, index.Val)
			}
			Glob.Anomaly("tptp", "introduced constant not found")
			return ""
		},
	)

	annotated_proof := proof_with_id{id: next_id, proof: proof}
	current_id = next_id

	if axioms.Len() == 0 {
		resultingString += followProofSteps(annotated_proof, hypotheses)
	} else {
		annotated_proof.proof = proof.Children().At(0)
		resultingString += followProofSteps(annotated_proof, hypotheses)
	}

	return resultingString + "\n" + first_steps + "\n\n" + cut_hypotheses
}

func fofInference(
	node_id, inference_type string,
	sequent_lhs, sequent_rhs Lib.List[AST.Form],
	rule string,
	additional_infos string,
	next_steps Lib.List[Lib.String],
) string {
	if additional_infos != "" {
		additional_infos = ", " + additional_infos
	}

	return fmt.Sprintf(
		"fof(%s, %s, [%s] --> [%s], inference(%s, [status(thm)%s], [%s])).",
		node_id,
		inference_type,
		Lib.ListToString(sequent_lhs, ", ", ""),
		Lib.ListToString(sequent_rhs, ", ", ""),
		rule,
		additional_infos,
		Lib.ListToString(next_steps, ", ", ""),
	)
}

func axiomIndex(ax AST.Form, axioms Lib.List[AST.Form]) int {
	switch i := Lib.ListIndexOf(ax, axioms).(type) {
	case Lib.Some[int]:
		return i.Val
	}

	raise_anomaly(
		fmt.Sprintf(
			"Axiom %s not found in [%s]",
			ax.ToString(),
			Lib.ListToString(axioms, ", ", ""),
		),
	)
	return -1
}

func performCutAxiomStep(axioms Lib.List[AST.Form], conjecture AST.Form) string {
	axiom_steps := []string{}

	for i, ax := range axioms.GetSlice() {
		var nextStep string
		if i == axioms.Len()-1 {
			nextStep = prefix_step + "0"
		} else {
			nextStep = fmt.Sprintf("%s%d", prefix_axiom_cut, i+1)
		}

		cut_axiom_step := fofInference(
			fmt.Sprintf("%s%d", prefix_axiom_cut, i),
			"plain",
			Lib.MkListV(axioms.Get(0, i)...),
			Lib.MkListV(conjecture),
			"cut",
			"0",
			Lib.MkListV(
				Lib.MkString(fmt.Sprintf("ax%d", axiomIndex(ax, axioms))),
				Lib.MkString(nextStep),
			),
		)

		axiom_steps = append(axiom_steps, cut_axiom_step)
	}

	return strings.Join(axiom_steps, "\n")
}

/*** Proof Steps ***/

func followProofSteps(
	proof proof_with_id,
	hypotheses Lib.List[AST.Form],
) string {
	var resultingString string
	resultingStringParent, childrenHypotheses, childrenAnnotated := makeStep(
		proof,
		hypotheses,
	)
	for i, child := range childrenAnnotated {
		newHypotheses := Lib.ListCpy(hypotheses)
		newHypotheses = Lib.ListAdd(newHypotheses, childrenHypotheses[i].GetSlice()...)
		resultingString += followProofSteps(child, newHypotheses) + "\n"
	}
	return resultingString + resultingStringParent
}

func find_index_of_pos(f AST.Form, hypotheses Lib.List[AST.Form], target int) int {
	if form, is_not := f.(AST.Not); is_not {
		target = CertifUtils.GetTargetFormIndex(form, hypotheses)

		if target == CertifUtils.INVALID_INDEX {
			raise_anomaly("Complementary litteral not found")
		}
	}

	return target
}

func makeStep(
	annotated_proof proof_with_id,
	hypotheses Lib.List[AST.Form],
) (string, []Lib.List[AST.Form], []proof_with_id) {
	var resultingString string
	childrenHypotheses := []Lib.List[AST.Form]{hypotheses}
	childrenAnnotated := []proof_with_id{}

	proof := annotated_proof.proof
	assigned_id := annotated_proof.id

	target_form := epsilon.Substitute(dummyTerm, proof.AppliedOn())
	target := CertifUtils.GetTargetFormIndex(target_form, hypotheses)
	switch Search.KindOfRule(proof.RuleApplied()) {
	case Search.KindAlpha, Search.KindBeta, Search.KindDelta, Search.KindGamma:
		if target == CertifUtils.INVALID_INDEX {
			raise_anomaly("Non closure rule targets an equality.")
		}
	}

	closure_rule := func(rule string, target string) string {
		return fofInference(
			fmt.Sprintf("%s%d", prefix_step, assigned_id),
			"plain",
			hypotheses,
			Lib.NewList[AST.Form](),
			rule,
			target,
			Lib.NewList[Lib.String](),
		)
	}
	alpha_rule := func(rule string) (string, []Lib.List[AST.Form], []proof_with_id) {
		return alphaStep(
			annotated_proof,
			hypotheses,
			target,
			rule,
		)
	}
	beta_rule := func(rule string) (string, []Lib.List[AST.Form], []proof_with_id) {
		return betaStep(
			annotated_proof,
			hypotheses,
			target,
			rule,
		)
	}
	delta_rule := func(rule string) (string, []Lib.List[AST.Form], []proof_with_id) {
		return deltaStep(
			annotated_proof,
			hypotheses,
			target,
			rule,
		)
	}
	gamma_rule := func(rule string) (string, []Lib.List[AST.Form], []proof_with_id) {
		return gammaStep(
			annotated_proof,
			hypotheses,
			target,
			rule,
		)
	}

	switch proof.RuleApplied() {

	case Search.RuleClosure:
		if CertifUtils.IsPredEqual(proof.AppliedOn()) {
			resultingString = closure_rule("congruence", "")
		} else {
			target_positive := find_index_of_pos(target_form, hypotheses, target)
			resultingString = closure_rule("leftHyp", fmt.Sprintf("%d", target_positive))
		}

	case Search.RuleNotNot:
		resultingString, childrenHypotheses, childrenAnnotated = alpha_rule("leftNotNot")
	case Search.RuleAnd:
		resultingString, childrenHypotheses, childrenAnnotated = alpha_rule("leftAnd")
	case Search.RuleNotOr:
		resultingString, childrenHypotheses, childrenAnnotated = alpha_rule("leftNotOr")
	case Search.RuleNotImp:
		resultingString, childrenHypotheses, childrenAnnotated = alpha_rule("leftNotImplies")

	case Search.RuleNotAnd:
		resultingString, childrenHypotheses, childrenAnnotated = beta_rule("leftNotAnd")
	case Search.RuleOr:
		resultingString, childrenHypotheses, childrenAnnotated = beta_rule("leftOr")
	case Search.RuleImp:
		resultingString, childrenHypotheses, childrenAnnotated = beta_rule("leftImp2")
	case Search.RuleNotEqu:
		resultingString, childrenHypotheses, childrenAnnotated = notEquStep(
			annotated_proof,
			hypotheses,
			target,
		)
	case Search.RuleEqu:
		resultingString, childrenHypotheses, childrenAnnotated = equStep(
			annotated_proof,
			hypotheses,
			target,
		)

	case Search.RuleNotAll:
		resultingString, childrenHypotheses, childrenAnnotated = delta_rule("leftNotAll")
	case Search.RuleEx:
		resultingString, childrenHypotheses, childrenAnnotated = delta_rule("leftExists")

	case Search.RuleAll:
		resultingString, childrenHypotheses, childrenAnnotated = gamma_rule("leftForall")
	case Search.RuleNotEx:
		resultingString, childrenHypotheses, childrenAnnotated = gamma_rule("leftNotEx")

	// Weakening rule
	case Search.RuleWeaken:
		resultingString, childrenHypotheses, childrenAnnotated = weakenStep(
			annotated_proof,
			hypotheses,
			target,
		)

	case Search.RuleRew:
		Glob.Fatal("tptp", "rewrite rules not yet implemented")
	}

	return resultingString + "\n", childrenHypotheses, childrenAnnotated
}

func alphaStep(
	annotated_proof proof_with_id,
	hypotheses Lib.List[AST.Form],
	target int,
	rule string,
) (string, []Lib.List[AST.Form], []proof_with_id) {
	result_hyps, children_id, annotated_children := genAnnotateChildren(annotated_proof, hypotheses)

	resultingString := fofInference(
		fmt.Sprintf("%s%d", prefix_step, annotated_proof.id),
		"plain",
		hypotheses,
		Lib.NewList[AST.Form](),
		rule,
		fmt.Sprintf("%d", target),
		children_id,
	)

	return resultingString, result_hyps, annotated_children
}

func genAnnotateChildren(
	annotated_proof proof_with_id,
	hypotheses Lib.List[AST.Form],
) ([]Lib.List[AST.Form], Lib.List[Lib.String], []proof_with_id) {
	result_hyps := []Lib.List[AST.Form]{}
	annotated_children := []proof_with_id{}
	proof := annotated_proof.proof
	children_id := Lib.NewList[Lib.String]()

	for i, c := range proof.Children().GetSlice() {
		current_id++
		annotated_children = append(annotated_children,
			proof_with_id{id: current_id, proof: c},
		)
		child_hyps := Lib.ListMap(proof.ResultFormulas().At(i),
			func(f AST.Form) AST.Form { return epsilon.Substitute(dummyTerm, f) },
		)
		result_hyps = append(
			result_hyps,
			Lib.ListCpy(hypotheses).Push(child_hyps.GetSlice()...),
		)
		children_id = children_id.Push(
			Lib.MkString(fmt.Sprintf("%s%d", prefix_step, current_id)),
		)
	}

	return result_hyps, children_id, annotated_children
}

func betaStep(
	annotated_proof proof_with_id,
	hypotheses Lib.List[AST.Form],
	target int,
	rule string,
) (string, []Lib.List[AST.Form], []proof_with_id) {
	result_hyps, children_id, annotated_children := genAnnotateChildren(annotated_proof, hypotheses)

	resulting_string := fofInference(
		fmt.Sprintf("%s%d", prefix_step, annotated_proof.id),
		"plain",
		hypotheses,
		Lib.NewList[AST.Form](),
		rule,
		fmt.Sprintf("%d", target),
		children_id,
	)

	return resulting_string, result_hyps, annotated_children
}

func deltaStep(
	annotated_proof proof_with_id,
	hypotheses Lib.List[AST.Form],
	target int,
	rule string,
) (string, []Lib.List[AST.Form], []proof_with_id) {
	var generated_term string
	switch tm := epsilon.Generate(annotated_proof.proof.TermGenerated()).(type) {
	case Lib.Some[Lib.Either[AST.Ty, AST.Term]]:
		switch t := tm.Val.(type) {
		case Lib.Left[AST.Ty, AST.Term]:
			generated_term = t.Val.ToString()
		case Lib.Right[AST.Ty, AST.Term]:
			generated_term = t.Val.ToString()
		}
	default:
		generated_term = dummyTerm.ToString()
	}

	result_hyps, children_id, annotated_children := genAnnotateChildren(annotated_proof, hypotheses)

	resulting_string := fofInference(
		fmt.Sprintf("%s%d", prefix_step, annotated_proof.id),
		"plain",
		hypotheses,
		Lib.NewList[AST.Form](),
		rule,
		fmt.Sprintf("%d, '%s'", target, generated_term),
		children_id,
	)

	return resulting_string, result_hyps, annotated_children
}

func gammaStep(
	annotated_proof proof_with_id,
	hypotheses Lib.List[AST.Form],
	target int,
	rule string,
) (string, []Lib.List[AST.Form], []proof_with_id) {
	result_hyps, children_id, annotated_children := genAnnotateChildren(annotated_proof, hypotheses)

	resulting_string := fofInference(
		fmt.Sprintf("%s%d", prefix_step, annotated_proof.id),
		"plain",
		hypotheses,
		Lib.NewList[AST.Form](),
		rule,
		fmt.Sprintf(
			"%d, $fot(%s)",
			target,
			epsilon.Instantiate(
				dummyType.ToString(),
				dummyTerm.ToString(),
				annotated_proof.proof.TermGenerated(),
			),
		),
		children_id,
	)

	return resulting_string, result_hyps, annotated_children
}

func weakenStep(
	annotated_proof proof_with_id,
	hypotheses Lib.List[AST.Form],
	target int,
) (string, []Lib.List[AST.Form], []proof_with_id) {
	_, children_id, annotated_children := genAnnotateChildren(annotated_proof, hypotheses)

	var additional_infos string

	switch t := annotated_proof.proof.TermGenerated().(type) {
	case Lib.Some[Lib.Either[AST.Ty, AST.Term]]:
		additional_infos = fmt.Sprintf("'%s'", epsilon.Instantiate(dummyTerm.ToString(), dummyType.ToString(), t))
	default:
		additional_infos = fmt.Sprintf("%d", target)
		hypotheses = hypotheses.RemoveAt(target)
	}

	resulting_string := fofInference(
		fmt.Sprintf("%s%d", prefix_step, annotated_proof.id),
		"plain",
		hypotheses,
		Lib.NewList[AST.Form](),
		"leftWeaken",
		additional_infos,
		children_id,
	)
	return resulting_string, []Lib.List[AST.Form]{hypotheses}, annotated_children
}

func equStep(
	annotated_proof proof_with_id,
	hypotheses Lib.List[AST.Form],
	target int,
) (string, []Lib.List[AST.Form], []proof_with_id) {
	result_hyps, children_id, annotated_children := genAnnotateChildren(annotated_proof, hypotheses)

	var A, B, notA, notB, A_imp_B, B_imp_A AST.Form
	switch form := hypotheses.At(target).(type) {
	case AST.Equ:
		A = form.GetF1()
		B = form.GetF2()
		notA = AST.MakeNot(A)
		notB = AST.MakeNot(B)
		A_imp_B = AST.MakeImp(A, B)
		B_imp_A = AST.MakeImp(B, A)

	default:
		raise_anomaly(fmt.Sprintf("Expected %s to be an equivalence.", form.ToString()))
	}

	// Expansion of the tableau rules to match TPTP rules.
	// 1. apply the rule [leftIff] to generate one branch [Gamma, A_imp_B, B_imp_A |-].
	// 2. do 2 applications of the rule [leftImp2] to get 4 branches:
	//   - [Gamma, A_imp_B, B_imp_A, ~A, ~B |-]
	//   - [Gamma, A_imp_B, B_imp_A, ~A, A |-]
	//   - [Gamma, A_imp_B, B_imp_A, B, ~B |-]
	//   - [Gamma, A_imp_B, B_imp_A, B, A |-]
	// 3. conclude on the children 2 & 3 and continue outputing the proof for the others.

	// 1.
	child1_ext_id := fmt.Sprintf("%s%dext1", prefix_step, annotated_proof.id)
	first_inference := fofInference(
		fmt.Sprintf("%s%d", prefix_step, annotated_proof.id),
		"plain",
		hypotheses,
		Lib.NewList[AST.Form](),
		"leftIff",
		fmt.Sprintf("%d", target),
		Lib.MkListV(Lib.MkString(child1_ext_id)),
	)

	// 2.
	child2_ext_id := fmt.Sprintf("%s%dext2", prefix_step, annotated_proof.id)
	child3_ext_id := fmt.Sprintf("%s%dext3", prefix_step, annotated_proof.id)
	child2_closure_rule_id := fmt.Sprintf("%sext1", child2_ext_id)
	child3_closure_rule_id := fmt.Sprintf("%sext1", child3_ext_id)

	child1_inference := fofInference(
		child1_ext_id,
		"plain",
		Lib.ListCpy(hypotheses).Push(A_imp_B, B_imp_A),
		Lib.NewList[AST.Form](),
		"leftImp2",
		fmt.Sprintf("%d", hypotheses.Len()),
		Lib.MkListV(Lib.MkString(child2_ext_id), Lib.MkString(child3_ext_id)),
	)

	child2_inference := fofInference(
		child2_ext_id,
		"plain",
		Lib.ListCpy(hypotheses).Push(A_imp_B, B_imp_A, notA),
		Lib.NewList[AST.Form](),
		"leftImp2",
		fmt.Sprintf("%d", hypotheses.Len()+1),
		Lib.MkListV(
			children_id.At(0),
			Lib.MkString(child2_closure_rule_id),
		),
	)
	result_hyps[0] = result_hyps[0].Push(A_imp_B, B_imp_A, notA, notB)

	child2_closure := fofInference(
		child2_closure_rule_id,
		"plain",
		Lib.ListCpy(hypotheses).Push(A_imp_B, B_imp_A, notA, A),
		Lib.NewList[AST.Form](),
		"leftHyp",
		fmt.Sprintf("%d", hypotheses.Len()+3),
		Lib.NewList[Lib.String](),
	)

	child3_inference := fofInference(
		child3_ext_id,
		"plain",
		Lib.ListCpy(hypotheses).Push(A_imp_B, B_imp_A, B),
		Lib.NewList[AST.Form](),
		"leftImp2",
		fmt.Sprintf("%d", hypotheses.Len()+1),
		Lib.MkListV(
			Lib.MkString(child3_closure_rule_id),
			children_id.At(1),
		),
	)
	result_hyps[1] = result_hyps[1].Push(A_imp_B, B_imp_A, B, A)

	child3_closure := fofInference(
		child3_closure_rule_id,
		"plain",
		Lib.ListCpy(hypotheses).Push(A_imp_B, B_imp_A, B, notB),
		Lib.NewList[AST.Form](),
		"leftHyp",
		fmt.Sprintf("%d", hypotheses.Len()+2),
		Lib.NewList[Lib.String](),
	)

	return child3_closure + "\n\n" + child3_inference + "\n\n" + child2_closure + "\n\n" + child2_inference + "\n\n" +
		child1_inference + "\n\n" + first_inference, result_hyps, annotated_children
}

func notEquStep(
	annotated_proof proof_with_id,
	hypotheses Lib.List[AST.Form],
	target int,
) (string, []Lib.List[AST.Form], []proof_with_id) {
	result_hyps, children_id, annotated_children := genAnnotateChildren(annotated_proof, hypotheses)

	var A, B, not_A_imp_B, not_B_imp_A AST.Form

	switch formula := hypotheses.At(target).(type) {
	case AST.Not:
		switch f := formula.GetForm().(type) {
		case AST.Equ:
			A = f.GetF1()
			B = f.GetF2()
			not_A_imp_B = AST.MakeNot(AST.MakeImp(A, B))
			not_B_imp_A = AST.MakeNot(AST.MakeImp(B, A))

		default:
			raise_anomaly(fmt.Sprintf("Expected formula %s to be an equivalence", f.ToString()))
		}

	default:
		raise_anomaly(fmt.Sprintf("Expected formula %s to be a negation", formula.ToString()))
	}

	// Expansion of the tableau rules to match TPTP rules.
	// 1. apply the rule [leftNotIff] to generate two branches [Gamma, not_A_imp_B |-] and [Gamma, not_B_imp_A |-]
	// 2. apply the rule [leftNotImplies] in both branches to get [Gamma, A, ~B |-] and [Gamma, B, ~A |-].

	// 1.
	ext_child1_id := fmt.Sprintf("%s%dext1", prefix_step, annotated_proof.id)
	ext_child2_id := fmt.Sprintf("%s%dext2", prefix_step, annotated_proof.id)
	first_inference := fofInference(
		fmt.Sprintf("%s%d", prefix_step, annotated_proof.id),
		"plain",
		hypotheses,
		Lib.NewList[AST.Form](),
		"leftNotIff",
		fmt.Sprintf("%d", target),
		Lib.MkListV(Lib.MkString(ext_child1_id), Lib.MkString(ext_child2_id)),
	)

	// 2.
	child1_inference := fofInference(
		ext_child1_id,
		"plain",
		Lib.ListCpy(hypotheses).Push(not_A_imp_B),
		Lib.NewList[AST.Form](),
		"leftNotImplies",
		fmt.Sprintf("%d", hypotheses.Len()),
		Lib.MkListV(children_id.At(1)),
	)
	result_hyps[1] = result_hyps[1].Push(not_A_imp_B)

	child2_inference := fofInference(
		ext_child2_id,
		"plain",
		Lib.ListCpy(hypotheses).Push(not_B_imp_A),
		Lib.NewList[AST.Form](),
		"leftNotImplies",
		fmt.Sprintf("%d", hypotheses.Len()),
		Lib.MkListV(children_id.At(0)),
	)
	result_hyps[0] = result_hyps[0].Push(not_B_imp_A)

	return child2_inference + "\n\n" + child1_inference + "\n\n" + first_inference, result_hyps, annotated_children
}

/*** Initial Formula Management ***/

// TPTP-style first formula declaration:
// 1. declare all the hypotheses of the theorem as axioms
// 2. declare the base formula
func makeTheorem(axioms Lib.List[AST.Form], conjecture AST.Form) string {
	problemName := CertifUtils.SanitizedTheoremName()

	declared_axioms := []string{}
	for _, ax := range axioms.GetSlice() {
		declared_axioms = append(
			declared_axioms,
			fmt.Sprintf("fof(ax%d, axiom, %s).", axiomIndex(ax, axioms), ax.ToString()),
		)
	}

	declared_axioms = append(
		declared_axioms,
		fmt.Sprintf("fof(c_%s, conjecture, %s).", problemName, conjecture.ToString()),
	)

	return strings.Join(declared_axioms, "\n\n") + "\n\n"
}

// Use DNE to perform the first step to go from [ax |- c] to [ax, ~c |-].
func performFirstStep(
	axioms Lib.List[AST.Form],
	conjecture AST.Form,
) (string, int) {
	cut_form_not_id := 1
	cut_form_hyp_id := 2
	next_form_id := 3

	// From a sequent [H1, ..., Hn |- c], cut ~c to get two chidren: [H1, ..., Hn, ~c |-] and [H1, ..., Hn |- ~c, c].
	start := fofInference(
		fmt.Sprintf("%s%d", prefix_step, 0),
		"plain",
		axioms,
		Lib.MkListV(conjecture),
		"cut",
		"1",
		Lib.MkListV(
			Lib.MkString(fmt.Sprintf("%s%d", prefix_step, cut_form_not_id)),
			Lib.MkString(fmt.Sprintf("%s%d", prefix_step, next_form_id)),
		),
	)

	// On the branch [H1, ..., Hn |- ~c, c], apply [rightNot] to get [H1, ..., Hn, c |- c].
	cut_form_not := fofInference(
		fmt.Sprintf("%s%d", prefix_step, cut_form_not_id),
		"plain",
		axioms,
		Lib.MkListV[AST.Form](conjecture, AST.MakeNot(conjecture)),
		"rightNot",
		"1",
		Lib.MkListV(
			Lib.MkString(fmt.Sprintf("%s%d", prefix_step, cut_form_hyp_id)),
		),
	)

	// Conclude this branch.
	cut_form_hyp := fofInference(
		fmt.Sprintf("%s%d", prefix_step, cut_form_hyp_id),
		"plain",
		axioms.Push(conjecture),
		Lib.MkListV(conjecture),
		"hyp",
		fmt.Sprintf("%d", axioms.Len()),
		Lib.NewList[Lib.String](),
	)

	// Use a sequent style and start by the last inference down to the first one
	return cut_form_hyp + "\n\n" + cut_form_not + "\n\n" + start, next_form_id
}
