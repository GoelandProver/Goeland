package gs3

import (
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

func (seq *GS3Sequent) addChild(oth *GS3Sequent) {
	seq.children = append(seq.children, oth)
}
