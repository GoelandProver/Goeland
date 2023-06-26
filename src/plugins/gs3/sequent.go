package gs3

import (
	"strings"

	. "github.com/GoelandProver/Goeland/global"
	btps "github.com/GoelandProver/Goeland/types/basic-types"
)

type GS3Sequent struct {
	hypotheses    []btps.Form
	rule          int
	appliedOn     int
	termGenerated btps.Term
	children      []*GS3Sequent
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
)

func MakeNewSequent() *GS3Sequent {
	seq := new(GS3Sequent)
	seq.hypotheses = make([]btps.Form, 0)
	seq.children = make([]*GS3Sequent, 0)
	return seq
}

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
	identation := strings.Repeat("\t", i)
	status := seq.ruleToString(seq.rule) + " on " + seq.hypotheses[seq.appliedOn].ToString()
	childrenStrings := make([]string, len(seq.children))
	for j, child := range seq.children {
		childrenStrings[j] = child.toStringAux(i + 1)
	}
	return "\n" + identation + status + strings.Join(childrenStrings, "") + "\n"
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
