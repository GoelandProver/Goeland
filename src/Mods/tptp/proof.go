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

	"github.com/GoelandProver/Goeland/AST"
	"github.com/GoelandProver/Goeland/Glob"
	"github.com/GoelandProver/Goeland/Mods/gs3"
)

var mutex_proof_step sync.Mutex
var id_proof_step = 0
var mutex_constant sync.Mutex
var original_term = make([]AST.Term, 0)
var constant_created = make([]AST.Term, 0)
var prefix_step = "f"
var prefix_axiom_cut = "ac"
var prefix_const = "sko_"
var dummyTerm = AST.MakerConst(AST.MakerId("Goeland_I"))

func makeTptpProofFromGS3(proof *gs3.GS3Sequent) string {
	axioms, conjecture := processMainFormula(proof.GetTargetForm())
	resultingString := makeTheorem(axioms, conjecture)
	hypotheses := axioms.Copy()
	hypotheses.Append(AST.MakerNot(conjecture.Copy()))

	AxiomCut := performCutAxiomStep(axioms, conjecture)

	firstStep, nextId := performFirstStep(axioms, conjecture, hypotheses, 0)

	if axioms.Len() == 0 {
		resultingString += followProofSteps(proof, hypotheses, nextId)
	} else {
		resultingString += followProofSteps(proof.Child(0), hypotheses, nextId)
	}

	res := resultingString + "\n" + firstStep + AxiomCut

	return res
}

/*** Proof Steps ***/

func followProofSteps(proof *gs3.GS3Sequent, hypotheses *AST.FormList, new_current_id int) string {
	var resultingString string
	var resultingStringParent string
	var childrenHypotheses []*AST.FormList
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

func makeProofStep(proof *gs3.GS3Sequent, hypotheses *AST.FormList, new_current_id int) (string, []*AST.FormList, int) {
	stepResult, childrenHypotheses, next_child_weakened_id := makeStep(proof, hypotheses, new_current_id)
	return stepResult, childrenHypotheses, next_child_weakened_id
}

func findIndexPos(f AST.Form, hypotheses *AST.FormList, target int) int {
	targetPos := -1

	switch initial_formula := f.(type) {
	case AST.Not:
		targetPos = get(initial_formula.GetForm(), hypotheses)
	default:
		targetPos = target
	}

	if targetPos == -1 {
		Glob.Anomaly("TPTP - makeStep", "complementary literal not found")
	}

	return targetPos
}

func makeStep(proof *gs3.GS3Sequent, hypotheses *AST.FormList, new_current_id int) (string, []*AST.FormList, int) {
	var resultingString string
	childrenHypotheses := []*AST.FormList{hypotheses}
	next_child_weakened_id := -1

	updateId(proof, new_current_id)
	target := get(proof.GetTargetForm(), hypotheses)

	switch proof.Rule() {

	// Closure.
	case gs3.AX:
		if isPredEqual(proof.GetTargetForm()) {
			resultingString = fmt.Sprintf("fof("+prefix_step+"%d, plain, [%s] --> [], inference(%s, [status(thm)], [%s])).",
				proof.GetId(),
				mapDefault(AST.ListToMappedString(hypotheses.Slice(), ", ", "", tptpMapConnectors(), Glob.GetTypeProof())),
				"congruence",
				"")
		} else {
			targetPos := findIndexPos(proof.GetTargetForm(), hypotheses, target)

			resultingString = fmt.Sprintf("fof("+prefix_step+"%d, plain, [%s] --> [], inference(%s, [status(thm), %d], [%s])).",
				proof.GetId(),
				mapDefault(AST.ListToMappedString(hypotheses.Slice(), ", ", "", tptpMapConnectors(), Glob.GetTypeProof())),
				"leftHyp",
				targetPos,
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
		resultingString, childrenHypotheses = NotEquStep(proof, hypotheses, target)
	case gs3.OR:
		resultingString, childrenHypotheses = betaStep(proof, hypotheses, target, "leftOr")
	case gs3.IMP:
		resultingString, childrenHypotheses = betaStep(proof, hypotheses, target, "leftImp2")
	case gs3.EQU:
		resultingString, childrenHypotheses = EquStep(proof, hypotheses, target)

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
			resultingString = fmt.Sprintf("leftWeaken %s", findInConstants(proof.TermGenerated()).ToMappedString(tptpMapConnectors(), Glob.GetTypeProof()))
		} else {
			resultingString, childrenHypotheses, next_child_weakened_id = weakenStep(proof, hypotheses, target, "leftWeaken")
		}

	case gs3.REWRITE:
		resultingString, childrenHypotheses = rewriteStep(proof.GetRewriteWith(), hypotheses, target, proof.GetResultFormulasOfChild(0).Get(0))
	}

	return resultingString + "\n", childrenHypotheses, next_child_weakened_id
}

func alphaStep(proof *gs3.GS3Sequent, hypotheses *AST.FormList, target int, format string) (string, []*AST.FormList) {

	children_id := []int{}
	for _, c := range proof.Children() {
		new_id := incrByOne(&id_proof_step, &mutex_proof_step)
		children_id = append(children_id, new_id)
		c.SetId(new_id)
	}

	resultingString := fmt.Sprintf("fof(%s%d, plain, [%s] --> [], inference(%s, [status(thm), %d], [%s])).",
		prefix_step,
		proof.GetId(),
		mapDefault(AST.ListToMappedString(hypotheses.Slice(), ", ", "", tptpMapConnectors(), Glob.GetTypeProof())),
		format,
		target,
		Glob.IntListToString(children_id, prefix_step))

	newHypotheses := hypotheses.Copy()
	newHypotheses.AppendIfNotContains(proof.GetResultFormulasOfChild(0).Slice()...)
	return resultingString, []*AST.FormList{newHypotheses}
}

func betaStep(proof *gs3.GS3Sequent, hypotheses *AST.FormList, target int, format string) (string, []*AST.FormList) {
	resultHyps := []*AST.FormList{}
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
		mapDefault(AST.ListToMappedString(hypotheses.Slice(), ", ", "", tptpMapConnectors(), false)),
		format,
		target,
		Glob.IntListToString(children_id, prefix_step))

	return resultingString, resultHyps
}

func deltaStep(proof *gs3.GS3Sequent, hypotheses *AST.FormList, target int, format string) (string, []*AST.FormList) {
	children_id := []int{}
	for _, c := range proof.Children() {
		new_id := incrByOne(&id_proof_step, &mutex_proof_step)
		children_id = append(children_id, new_id)
		c.SetId(new_id)
	}

	new_term := createNewConstant(proof.TermGenerated())
	
	proof = updateSkolemSymbol(proof.TermGenerated(), new_term, proof)

	resultingString := fmt.Sprintf("fof(%s%d, plain, [%s] --> [], inference(%s, [status(thm), %d, '%s'], [%s])).",
		prefix_step,
		proof.GetId(),
		mapDefault(AST.ListToMappedString(hypotheses.Slice(), ", ", "", tptpMapConnectors(), Glob.GetTypeProof())),
		format,
		target,
		new_term.ToMappedString(tptpMapConnectors(), Glob.GetTypeProof()),
		Glob.IntListToString(children_id, prefix_step))

	newHypotheses := hypotheses.Copy()
	newHypotheses.AppendIfNotContains(proof.GetResultFormulasOfChild(0).Slice()...)

	return resultingString, []*AST.FormList{newHypotheses}
}

func gammaStep(proof *gs3.GS3Sequent, hypotheses *AST.FormList, target int, format string) (string, []*AST.FormList) {
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
		mapDefault(AST.ListToMappedString(hypotheses.Slice(), ", ", "", tptpMapConnectors(), Glob.GetTypeProof())),
		format,
		target,
		findInConstants(proof.TermGenerated()).ToMappedString(tptpMapConnectors(), Glob.GetTypeProof()),
		Glob.IntListToString(children_id, prefix_step))

	newHypotheses := hypotheses.Copy()
	newHypotheses.AppendIfNotContains(proof.GetResultFormulasOfChild(0).Slice()...)

	return resultingString, []*AST.FormList{newHypotheses}
}

func weakenStep(proof *gs3.GS3Sequent, hypotheses *AST.FormList, target int, format string) (string, []*AST.FormList, int) {
	child_id := incrByOne(&id_proof_step, &mutex_proof_step)

	if target != -1 {
		hypotheses.Remove(target)
	}

	resultingString := fmt.Sprintf("fof(%s%d, plain, [%s] --> [], inference(%s, [status(thm), %d], [%s%d])).",
		prefix_step,
		proof.GetId(),
		mapDefault(AST.ListToMappedString(hypotheses.Slice(), ", ", "", tptpMapConnectors(), false)),
		format,
		target,
		prefix_step,
		child_id)

	return resultingString, []*AST.FormList{hypotheses}, child_id
}

func rewriteStep(rewriteRule AST.Form, hypotheses *AST.FormList, target int, replacementForm AST.Form) (string, []*AST.FormList) {
	// resultingString := fmt.Sprintf("rewrite %s in %s.", introName(get(rewriteRule, hypotheses)), introName(target))
	// hypotheses[target] = replacementForm
	// return resultingString, []*AST.FormList{hypotheses}
	return "", []*AST.FormList{}
}

func EquStep(proof *gs3.GS3Sequent, hypotheses *AST.FormList, target int) (string, []*AST.FormList) {
	resultingString := ""
	resultHyps := []*AST.FormList{}
	children_id := []int{}

	for i, c := range proof.Children() {
		new_id := incrByOne(&id_proof_step, &mutex_proof_step)
		children_id = append(children_id, new_id)
		c.SetId(new_id)
		newHypotheses := hypotheses.Copy()
		newHypotheses.AppendIfNotContains(proof.GetResultFormulasOfChild(i).Slice()...)
		resultHyps = append(resultHyps, newHypotheses)
	}

	// Sub-formulas
	A := hypotheses.Get(target).(AST.Equ).GetF1()
	B := hypotheses.Get(target).(AST.Equ).GetF2()
	notA := AST.MakerNot(A)
	notB := AST.MakerNot(B)
	A_imp_B := AST.MakerImp(A, B)
	B_imp_A := AST.MakerImp(B, A)

	// from A <=> B to A => B, B => A (unary)
	s1_id := fmt.Sprintf("%s%dext1", prefix_step, proof.GetId())
	resultingString = fmt.Sprintf("fof(%s%d, plain, [%s] --> [], inference(%s, [status(thm), %d], [%s])).",
	prefix_step,
	proof.GetId(),
	mapDefault(AST.ListToMappedString(hypotheses.Slice(), ", ", "", tptpMapConnectors(), Glob.GetTypeProof())),
	"leftIff",
	target,
	s1_id) + resultingString 

	// from A => B, B => A to ~A, B => A | B, B => A (binary)
	s2_id := fmt.Sprintf("%s%dext2", prefix_step, proof.GetId())
	s3_id := fmt.Sprintf("%s%dext3", prefix_step, proof.GetId())
	newHyp := hypotheses.Copy()
	newHyp.AppendIfNotContains([]AST.Form{A_imp_B, B_imp_A}...)
	resultingString = fmt.Sprintf("fof(%s, plain, [%s] --> [], inference(%s, [status(thm), %d], [%s, %s])).\n\n",
	s1_id,
	mapDefault(AST.ListToMappedString(newHyp.Slice(), ", ", "", tptpMapConnectors(), Glob.GetTypeProof())),
	"leftImp2",
	get(A_imp_B, newHyp),
	s2_id, 
	s3_id) + resultingString

	// Branch s2 : from ~A, B => A to ~A, ~B | ~A, A
	s2_closure_id := fmt.Sprintf("%sext1", s2_id)
	newHypS2 := newHyp.Copy()
	newHypS2.AppendIfNotContains(notA)
	resultingString = fmt.Sprintf("fof(%s, plain, [%s] --> [], inference(%s, [status(thm), %d], [%s%d, %s])).\n\n",
	s2_id,
	mapDefault(AST.ListToMappedString(newHypS2.Slice(), ", ", "", tptpMapConnectors(), Glob.GetTypeProof())),
	"leftImp2",
	get(B_imp_A, newHypS2),
	prefix_step,
	children_id[0], 
	s2_closure_id) + resultingString
	resultHyps[0].AppendIfNotContains(newHypS2.Slice()...)


	// Branch 2.closure : from ~A, A closure - check polarity before
	newHypS2Closure := newHypS2.Copy()
	newHypS2Closure.AppendIfNotContains(A)
	targetPosS2 := findIndexPos(A, newHypS2Closure, get(A, newHypS2Closure))
	resultingString = fmt.Sprintf("fof(%s, plain, [%s] --> [], inference(%s, [status(thm), %d], [%s])).\n\n",
	s2_closure_id,
	mapDefault(AST.ListToMappedString(newHypS2Closure.Slice(), ", ", "", tptpMapConnectors(), Glob.GetTypeProof())),
	"leftHyp",
	targetPosS2,
	"") + resultingString

	// Branch s3: from B, B => A to B, ~B | B, A
	s3_closure_id := fmt.Sprintf("%sext1", s3_id)
	newHypS3 := newHyp.Copy()
	newHypS3.AppendIfNotContains(B)
	resultingString = fmt.Sprintf("fof(%s, plain, [%s] --> [], inference(%s, [status(thm), %d], [%s, %s%d])).\n\n",
	s3_id,
	mapDefault(AST.ListToMappedString(newHypS3.Slice(), ", ", "", tptpMapConnectors(), Glob.GetTypeProof())),
	"leftImp2",
	get(B_imp_A, newHypS3),
	s3_closure_id,
	prefix_step,
	children_id[1]) + resultingString
	resultHyps[1].AppendIfNotContains(newHypS3.Slice()...)

	// Branch 3.closure : from B, ~B closure - check polarity before
	newHypS3Closure := newHypS3.Copy()
	newHypS3Closure.AppendIfNotContains(notB)
	targetPosS3 := findIndexPos(B, newHypS3Closure, get(B, newHypS3Closure))
	resultingString = fmt.Sprintf("fof(%s, plain, [%s] --> [], inference(%s, [status(thm), %d], [%s])).\n\n",
	s3_closure_id,
	mapDefault(AST.ListToMappedString(newHypS3Closure.Slice(), ", ", "", tptpMapConnectors(), Glob.GetTypeProof())),
	"leftHyp",
	targetPosS3,
	"") + resultingString

	return resultingString, resultHyps
}

func NotEquStep(proof *gs3.GS3Sequent, hypotheses *AST.FormList, target int) (string, []*AST.FormList) {
	resultingString := ""
	resultHyps := []*AST.FormList{}
	children_id := []int{}

	for i, c := range proof.Children() {
		new_id := incrByOne(&id_proof_step, &mutex_proof_step)
		children_id = append(children_id, new_id)
		c.SetId(new_id)
		newHypotheses := hypotheses.Copy()
		newHypotheses.AppendIfNotContains(proof.GetResultFormulasOfChild(i).Slice()...)
		resultHyps = append(resultHyps, newHypotheses)
	}

	// Sub-formulas
	equ := hypotheses.Get(target).(AST.Not).GetForm().(AST.Equ)
	A := equ.GetF1()
	B := equ.GetF2()
	not_A_imp_B := AST.MakerNot(AST.MakerImp(A, B))
	not_B_imp_A := AST.MakerNot(AST.MakerImp(B, A))

	// from ~(A <=> B) to ~(A => B) | ~(B => A) (binary)
	s1_id := fmt.Sprintf("%s%dext1", prefix_step, proof.GetId())
	s2_id := fmt.Sprintf("%s%dext2", prefix_step, proof.GetId())
	resultingString = fmt.Sprintf("fof(%s%d, plain, [%s] --> [], inference(%s, [status(thm), %d], [%s, %s])).",
	prefix_step,
	proof.GetId(),
	mapDefault(AST.ListToMappedString(hypotheses.Slice(), ", ", "", tptpMapConnectors(), Glob.GetTypeProof())),
	"leftNotIff",
	target,
	s1_id,
	s2_id) + resultingString 

	// from ~(A => B) to A, ~B
	newHyp1 := hypotheses.Copy()
	newHyp1.AppendIfNotContains(not_A_imp_B)
	resultingString = fmt.Sprintf("fof(%s, plain, [%s] --> [], inference(%s, [status(thm), %d], [%s%d])).\n\n",
	s1_id,
	mapDefault(AST.ListToMappedString(newHyp1.Slice(), ", ", "", tptpMapConnectors(), Glob.GetTypeProof())),
	"leftNotImplies",
	get(not_A_imp_B, newHyp1),
	prefix_step,
	children_id[1]) + resultingString
	resultHyps[1].AppendIfNotContains(newHyp1.Slice()...)

	// from ~(B => A) to B, ~A
	newHyp2 := hypotheses.Copy()
	newHyp2.AppendIfNotContains(not_B_imp_A)
	resultingString = fmt.Sprintf("fof(%s, plain, [%s] --> [], inference(%s, [status(thm), %d], [%s%d])).\n\n",
	s2_id,
	mapDefault(AST.ListToMappedString(newHyp2.Slice(), ", ", "", tptpMapConnectors(), Glob.GetTypeProof())),
	"leftNotImplies",
	get(not_B_imp_A, newHyp2),
	prefix_step,
	children_id[0]) + resultingString
	resultHyps[0].AppendIfNotContains(newHyp2.Slice()...)

	return resultingString, resultHyps
}


/*** Initial Formula Management ***/

// Processes the formula that was proven by Goéland.
func processMainFormula(form AST.Form) (*AST.FormList, AST.Form) {
	formList := AST.NewFormList()
	switch nf := form.(type) {
	case AST.Not:
		form = nf.GetForm()
	case AST.And:
		last := nf.FormList.Len() - 1
		formList = AST.NewFormList(nf.FormList.GetElements(0, last)...)
		switch f := nf.FormList.Get(last).(type) {
			case AST.Not:
				form = f.GetForm()
			default: 
				form = f
		}
	}
	return formList, form
}

// Prints the theorem's name & properly formats the first formula.
func makeTheorem(axioms *AST.FormList, conjecture AST.Form) string {
	var resulting_string string
	problemName := strings.ReplaceAll(strings.ReplaceAll(strings.ReplaceAll(Glob.GetProblemName(), ".", "_"), "=", "_"), "+", "_")

	for _, ax := range axioms.Slice() {
		resulting_string = resulting_string + "fof(" + fmt.Sprintf("ax%d", ax.GetIndex()) + ", axiom, " + mapDefault(ax.ToMappedString(tptpMapConnectors(), Glob.GetTypeProof())) + ").\n\n"
	}

	resulting_string = resulting_string + "fof(c_" + problemName + ", conjecture, " + mapDefault(conjecture.ToMappedString(tptpMapConnectors(), Glob.GetTypeProof())) + ").\n\n"
	return resulting_string
}

// Perform the first step to go from ax |- c to ax, ~c |-
func performFirstStep(axioms *AST.FormList, conjecture AST.Form, hypothesis *AST.FormList, nextId int) (string, int) {
	cutFormNotId := incrByOne(&id_proof_step, &mutex_proof_step)
	cutFormHypId := incrByOne(&id_proof_step, &mutex_proof_step)
	nextFormId := incrByOne(&id_proof_step, &mutex_proof_step)

	// Cut initial formula, |- ~c, c step
	cutFormNot := fmt.Sprintf("fof("+prefix_step+"%d, plain, [%s] --> [%s, %s], inference(%s, [status(thm), %d], [%s])).",
		cutFormNotId,
		mapDefault(AST.ListToMappedString(axioms.Slice(), ", ", "", tptpMapConnectors(), Glob.GetTypeProof())),
		mapDefault(conjecture.ToMappedString(tptpMapConnectors(), false)),
		mapDefault(AST.MakerNot(conjecture).ToMappedString(tptpMapConnectors(), Glob.GetTypeProof())),
		"rightNot",
		1,
		prefix_step+strconv.Itoa(cutFormHypId))

	// Cut initial formula, c |- c step
	cutFormHyp := fmt.Sprintf("fof("+prefix_step+"%d, plain, [%s] --> [%s], inference(%s, [status(thm), %d], [%s])).",
		cutFormHypId,
		mapDefault(AST.ListToMappedString(append(axioms.Slice(), conjecture), ", ", "", tptpMapConnectors(), Glob.GetTypeProof())),
		mapDefault(conjecture.ToMappedString(tptpMapConnectors(), Glob.GetTypeProof())),
		"hyp",
		axioms.Len(),
		// 0,
		"")

	// Actual start of the formula with H |- C
	// indexHyp, _ := hypothesis.GetIndexOf(AST.MakerNot(conjecture))
	startForm := fmt.Sprintf("fof(f%d, plain, [%s] --> [%s], inference(cut, [status(thm), %d], [%s%d, %s%d])).\n\n",
		nextId,
		mapDefault(AST.ListToMappedString(axioms.Slice(), ", ", "", tptpMapConnectors(), Glob.GetTypeProof())),
		mapDefault(conjecture.ToMappedString(tptpMapConnectors(), Glob.GetTypeProof())),
		1,
		//indexHyp,
		prefix_step,
		cutFormNotId,
		prefix_step,
		nextFormId)

	return cutFormHyp + "\n\n" + cutFormNot + "\n\n" + startForm, nextFormId
}


// Perform the cut axiom steps
func performCutAxiomStep(axioms *AST.FormList, conjecture AST.Form) string {

	resultString := ""

	// Loop on axioms
	for i, ax := range axioms.Slice() {
		var nextStep string
		if i == axioms.Len()-1 {
			nextStep = "f0"
		} else {
			nextStep = prefix_axiom_cut + strconv.Itoa(i+1)
		}

		cutAxiomStep := fmt.Sprintf("fof(%s%d, plain, [%s] --> [%s], inference(cut, [status(thm), %d], [%s%d, %s])).\n",
			prefix_axiom_cut,
			i,
			// AST.ListToMappedString(axioms.GetElements(0, i), ", ", "", tptpMapConnectors(), GetTypeProof()),
			mapDefault(AST.ListToMappedString(axioms.GetElements(0, i), ", ", "", tptpMapConnectors(), Glob.GetTypeProof())),
			mapDefault(conjecture.ToMappedString(tptpMapConnectors(), Glob.GetTypeProof())),
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

func get(f AST.Form, fl *AST.FormList) int {
	for i, h := range fl.Slice() {
		if h.Equals(f) {
			return i
		}
	}
	return -1
}

func isPredEqual(f AST.Form) bool {
	if not, isNot := f.(AST.Not); isNot {
		f = not.GetForm()
	}
	if p, isPred := f.(AST.Pred); isPred {
		return p.GetID().Equals(AST.Id_eq)
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
	if i != -1 {
		proof.SetId(i)
	}
}

func updateSkolemSymbol(old, new AST.Term, proof *gs3.GS3Sequent) *gs3.GS3Sequent {

	// Update Target Form
	new_target_form, _ := proof.GetTargetForm().ReplaceTermByTerm(old, new)
	proof.SetTargetForm(new_target_form)

	// Update generated term
	if proof.TermGenerated() != nil {
		new_generated_term := proof.TermGenerated().ReplaceSubTermBy(old, new)
		proof.SetTermGenerated(new_generated_term)
	}

	new_forms_generated := make([]*AST.FormList, len(proof.GetResultFormulasOfChildren()))
	for i, fg := range proof.GetResultFormulasOfChildren() {
		new_forms_generated_bis := AST.NewFormList()
		for _, fg_bis := range fg.Slice() {
			new_term, _ := fg_bis.ReplaceTermByTerm(old, new)
			new_forms_generated_bis.Append(new_term)
		}
		new_forms_generated[i] = new_forms_generated_bis
	}	
	proof.SetFormGenerated(new_forms_generated)

	// Update Children
	new_children := make([]*gs3.GS3Sequent, len(proof.Children()))
	for i, child := range proof.Children() {
		new_children[i] = updateSkolemSymbol(old, new, child)
	}

	proof.SetChildren(new_children)

	return proof
}

/*** Constant created Management ***/

func createNewConstant(term AST.Term) AST.Term {
	mutex_constant.Lock()
	new_id := len(constant_created)
	new_term_name := fmt.Sprintf("%s%d", prefix_const, new_id)
	new_term := AST	.MakerConst(AST.MakerNewId(new_term_name))
	original_term = append(original_term, term)
	constant_created = append(constant_created, new_term)
	mutex_constant.Unlock()
	return new_term
}

func findInConstants(term AST.Term) AST.Term {
	if term == nil {
		return dummyTerm
	} else {
		return getCreatedFromOriginal(term)
	}
}

func getCreatedFromOriginal(term AST.Term) AST.Term {
	for i, t := range original_term {
		if t.Equals(term) {
			return constant_created[i]
		}
	}
	return term
}
