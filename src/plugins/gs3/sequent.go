package gs3

import (
	"strings"

	. "github.com/GoelandProver/Goeland/global"
	btps "github.com/GoelandProver/Goeland/types/basic-types"
)

type GS3Sequent struct {
	hypotheses     []btps.Form
	rule           int
	appliedOn      int
	termGenerated  btps.Term
	formsGenerated [][]btps.Form
	children       []*GS3Sequent
	proof          GS3Proof
}

// Rules
const (
	AX = iota
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
)

func MakeNewSequent() *GS3Sequent {
	seq := new(GS3Sequent)
	seq.hypotheses = make([]btps.Form, 0)
	seq.children = make([]*GS3Sequent, 0)
	return seq
}

// ----------------------------------------------------------------------------
// Public methods
// ----------------------------------------------------------------------------

func (seq *GS3Sequent) GetTargetForm() btps.Form {
	return seq.hypotheses[seq.appliedOn]
}

func (seq *GS3Sequent) Child(i int) *GS3Sequent {
	return seq.children[i]
}

func (seq *GS3Sequent) Children() []*GS3Sequent {
	return seq.children
}

func (seq *GS3Sequent) Rule() int {
	return seq.rule
}

func (seq *GS3Sequent) GetResultFormulasOfChild(i int) []btps.Form {
	return seq.formsGenerated[i]
}

func (seq *GS3Sequent) TermGenerated() btps.Term {
	return seq.termGenerated
}

// ----------------------------------------------------------------------------
// Private methods & functions
// ----------------------------------------------------------------------------

func (seq *GS3Sequent) setHypotheses(forms []btps.Form) {
	seq.hypotheses = make([]btps.Form, len(forms))
	copy(seq.hypotheses, forms)
}

func (seq *GS3Sequent) setAppliedRule(rule int) {
	seq.rule = rule
}

func (seq *GS3Sequent) setAppliedOn(hypothesis btps.Form) {
	index := -1
	for i, h := range seq.hypotheses {
		if hypothesis.Equals(h) {
			index = i
			break
		}
	}

	if index == -1 {
		PrintError("SAO", "A rule is applied on an hypothesis which doesn't exist in the current branch.")
		return
	}

	seq.appliedOn = index
}

func (seq *GS3Sequent) setTermGenerated(t btps.Term) {
	seq.termGenerated = t
}

func (seq *GS3Sequent) addChild(oth ...*GS3Sequent) {
	seq.children = append(seq.children, oth...)
}

func (seq *GS3Sequent) ToString() string {
	return seq.toStringAux(0)
}

func (seq *GS3Sequent) toStringAux(i int) string {
	identation := strings.Repeat("  ", i)
	status := seq.ruleToString(seq.rule) /* + " on " + seq.hypotheses[seq.appliedOn].ToString()*/
	childrenStrings := make([]string, len(seq.children))
	for j, child := range seq.children {
		if child != nil {
			childrenStrings[j] = child.toStringAux(i + 1)
		}
	}
	return "\n" + identation + status + strings.Join(childrenStrings, "")
}

func (seq *GS3Sequent) ruleToString(rule int) string {
	mapping := map[int]string{
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

func (seq *GS3Sequent) isEmpty() bool {
	return len(seq.hypotheses) == 0
}

func (seq *GS3Sequent) setFormsGenerated(forms [][]btps.Form) {
	seq.formsGenerated = forms
}

func proofStructRuleToGS3Rule(rule string) (int, bool) {
	mapping := map[string]int{
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
	}
	r, ok := mapping[rule]
	return r, ok
}
func ruleToTableauxString(rule int) string {
	mapping := map[int]string{
		NNOT: "ALPHA_NOT_NOT",
		NOR:  "ALPHA_NOT_OR",
		NIMP: "ALPHA_NOT_IMPLY",
		AND:  "ALPHA_AND",
		NAND: "ALPHA_NOT_AND",
		NEQU: "BETA_NOT_EQUIV",
		OR:   "BETA_OR",
		IMP:  "BETA_IMPLY",
		EQU:  "BETA_EQUIV",
		NEX:  "GAMMA_NOT_EXISTS",
		ALL:  "GAMMA_FORALL",
		NALL: "DELTA_NOT_FORALL",
		EX:   "DELTA_EXISTS",
		AX:   "CLOSURE",
		W:    "WEAKEN",
	}
	return mapping[rule]
}
