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
package gs3

import (
	"strings"

	//. "github.com/GoelandProver/Goeland/global"

	"github.com/GoelandProver/Goeland/global"
	basictypes "github.com/GoelandProver/Goeland/types/basic-types"
)

type GS3Sequent struct {
	hypotheses     *basictypes.FormList
	rule           Rule
	appliedOn      int
	rewriteWith    int
	termGenerated  basictypes.Term
	formsGenerated []*basictypes.FormList
	children       []*GS3Sequent
	proof          GS3Proof
	nodeId         int
}

type Rule int

// Rules
const (
	AX Rule = iota
	W
	NOT
	IMP
	AND
	OR
	EQU
	EX
	ALL
	NNOT
	NIMP
	NAND
	NOR
	NEQU
	NEX
	NALL
	R
	REWRITE
)

func MakeNewSequent() *GS3Sequent {
	seq := new(GS3Sequent)
	seq.hypotheses = basictypes.NewFormList()
	seq.children = make([]*GS3Sequent, 0)
	return seq
}

func IsGammaRule(rule Rule) bool {
	return rule == ALL || rule == NEX
}

func IsDeltaRule(rule Rule) bool {
	return rule == NALL || rule == EX
}

func IsBetaRule(rule Rule) bool {
	return rule == NAND || rule == NEQU || rule == IMP || rule == EQU || rule == OR
}

func IsAlphaRule(rule Rule) bool {
	return rule == AND || rule == NOR || rule == NIMP || rule == NNOT
}

// ----------------------------------------------------------------------------
// Public methods
// ----------------------------------------------------------------------------

func (seq *GS3Sequent) GetTargetForm() basictypes.Form {
	return seq.hypotheses.Get(seq.appliedOn)
}

func (seq *GS3Sequent) Child(i int) *GS3Sequent {
	return seq.children[i]
}

func (seq *GS3Sequent) Children() []*GS3Sequent {
	return seq.children
}

func (seq *GS3Sequent) Rule() Rule {
	return seq.rule
}

func (seq *GS3Sequent) GetResultFormulasOfChild(i int) *basictypes.FormList {
	return seq.formsGenerated[i]
}

func (seq *GS3Sequent) GetResultFormulasOfChildren() []*basictypes.FormList {
	result := []*basictypes.FormList{}

	for i := range seq.children {
		result = append(result, seq.formsGenerated[i])
	}

	return result
}

func (seq *GS3Sequent) TermGenerated() basictypes.Term {
	return seq.termGenerated
}

func (seq *GS3Sequent) IsEmpty() bool {
	return seq.hypotheses.IsEmpty()
}

func (seq *GS3Sequent) ToString() string {
	return seq.toStringAux(0)
}

func (seq *GS3Sequent) GetRewriteWith() basictypes.Form {
	return seq.hypotheses.Get(seq.rewriteWith)
}

func (seq *GS3Sequent) GetId() int {
	return seq.nodeId
}

func (seq *GS3Sequent) SetId(i int) {
	seq.nodeId = i
}

func (seq *GS3Sequent) SetFormGenerated(fg []btps.FormList) {
	seq.formsGenerated = fg
}

func (seq *GS3Sequent) SetChildren(c []*GS3Sequent) {
	seq.children = c
}

func (seq *GS3Sequent) SetTargetForm(f btps.Form) {
	seq.hypotheses[seq.appliedOn] = f
}

func (seq *GS3Sequent) SetTermGenerated(t btps.Term) {
	seq.termGenerated = t
}

// ----------------------------------------------------------------------------
// Private methods & functions
// ----------------------------------------------------------------------------

func (seq *GS3Sequent) setHypotheses(forms *basictypes.FormList) {
	seq.hypotheses = forms.Copy()
	// If equality reasoning has been used to terminate the proof, then an empty predicate is expected
	// (see search_destructive, manageClosureRule on eq reasoning).
	// As such, add an hypothesis with the empty =
	seq.hypotheses.Append(basictypes.EmptyPredEq)
}

func (seq *GS3Sequent) setAppliedRule(rule Rule) {
	seq.rule = rule
}

func (seq *GS3Sequent) setAppliedOn(hypothesis basictypes.Form) {
	index := -1
	for i, h := range seq.hypotheses.Slice() {
		if hypothesis.Equals(h) {
			index = i
			break
		}
	}

	if index == -1 {
		global.PrintInfo("APPLIED ON", hypothesis.ToString())
		global.PrintPanic("GS3", "Failure: tried to apply a missing hypothesis")
	}

	seq.appliedOn = index
}

func (seq *GS3Sequent) setTermGenerated(t basictypes.Term) {
	seq.termGenerated = t
}

func (seq *GS3Sequent) addChild(oth ...*GS3Sequent) {
	seq.children = append(seq.children, oth...)
}

func (seq *GS3Sequent) toStringAux(i int) string {
	identation := strings.Repeat("  ", i)
	status := seq.ruleToString(seq.rule) + " on " + seq.hypotheses.Get(seq.appliedOn).ToString()
	if seq.IsEmpty() {
		status = "EMPTY"
	}
	childrenStrings := make([]string, len(seq.children))
	for j, child := range seq.children {
		if child != nil {
			childrenStrings[j] = child.toStringAux(i + 1)
		}
	}
	return "\n" + identation + status + strings.Join(childrenStrings, "")
}

func (seq *GS3Sequent) ruleToString(rule Rule) string {
	mapping := map[Rule]string{
		NNOT: "NOT_NOT (alpha)",
		NOR:  "NOT_OR (alpha)",
		NIMP: "NOT_IMPLY (alpha)",
		AND:  "AND (alpha)",
		NAND: "NOT_AND (beta)",
		NEQU: "NOT_EQUIV (beta)",
		OR:   "OR (beta)",
		IMP:  "IMPLY (beta)",
		EQU:  "EQUIV (beta)",
		NEX:  "NOT_EXISTS (gamma)",
		ALL:  "FORALL (gamma)",
		NALL: "NOT_FORALL (delta)",
		EX:   "EXISTS (delta)",
		AX:   "AXIOM",
		W:    "WEAKEN",
	}
	return mapping[rule]
}

func (seq *GS3Sequent) setFormsGenerated(forms []*basictypes.FormList) {
	seq.formsGenerated = forms
}

func proofStructRuleToGS3Rule(rule string) Rule {
	mapping := map[string]Rule{
		"ALPHA_NOT_NOT":    NNOT,
		"ALPHA_NOT_OR":     NOR,
		"ALPHA_NOT_IMPLY":  NIMP,
		"ALPHA_AND":        AND,
		"BETA_NOT_AND":     NAND,
		"BETA_NOT_EQUIV":   NEQU,
		"BETA_OR":          OR,
		"BETA_IMPLY":       IMP,
		"BETA_EQUIV":       EQU,
		"GAMMA_NOT_EXISTS": NEX,
		"GAMMA_FORALL":     ALL,
		"DELTA_NOT_FORALL": NALL,
		"DELTA_EXISTS":     EX,
		"CLOSURE":          AX,
		"WEAKEN":           W,
		"Reintroduction":   R,
		"Rewrite":          REWRITE,
	}
	return mapping[rule]
}
func ruleToTableauxString(rule Rule) string {
	mapping := map[Rule]string{
		NNOT:    "ALPHA_NOT_NOT",
		NOR:     "ALPHA_NOT_OR",
		NIMP:    "ALPHA_NOT_IMPLY",
		AND:     "ALPHA_AND",
		NAND:    "BETA_NOT_AND",
		NEQU:    "BETA_NOT_EQUIV",
		OR:      "BETA_OR",
		IMP:     "BETA_IMPLY",
		EQU:     "BETA_EQUIV",
		NEX:     "GAMMA_NOT_EXISTS",
		ALL:     "GAMMA_FORALL",
		NALL:    "DELTA_NOT_FORALL",
		EX:      "DELTA_EXISTS",
		AX:      "CLOSURE",
		W:       "WEAKEN",
		REWRITE: "REWRITE",
	}
	return mapping[rule]
}

func (seq *GS3Sequent) setRewrittenWith(rewriteId int) {
	for i, h := range seq.hypotheses.Slice() {
		endForm := h
		for global.Is[basictypes.All](endForm) {
			endForm = endForm.(basictypes.All).GetForm()
		}
		endForm = getAtomic(endForm)
		if endForm.GetIndex() == rewriteId {
			seq.rewriteWith = i
			return
		}
	}

	panic("Failure: tried to rewrite using a missing hypothesis")
}

func getAtomic(f basictypes.Form) basictypes.Form {
	switch nf := f.(type) {
	case basictypes.Imp:
		if pred, isPred := nf.GetF1().(basictypes.Pred); isPred {
			return pred
		}
		if pred, isPred := nf.GetF2().(basictypes.Pred); isPred {
			return pred
		}
	case basictypes.Equ:
		if pred, isPred := nf.GetF1().(basictypes.Pred); isPred {
			return pred
		}
		if pred, isPred := nf.GetF2().(basictypes.Pred); isPred {
			return pred
		}
	}
	return f
}
