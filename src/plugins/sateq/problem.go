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
package sateq

import (
	"github.com/GoelandProver/Goeland/global"
	basictypes "github.com/GoelandProver/Goeland/types/basic-types"
)

type Equality struct {
	*global.BasicPair[basictypes.Term, basictypes.Term]
}

func NewEquality(fst basictypes.Term, snd basictypes.Term) *Equality {
	return &Equality{global.NewBasicPair(fst, snd)}
}

func (equ *Equality) ToString() string {
	return equ.GetFst().ToMappedString(basictypes.DefaultMapString, false) + " ≃ " + equ.GetSnd().ToMappedString(basictypes.DefaultMapString, false)
}

func (equ *Equality) Equals(other any) bool {
	if typed, ok := other.(*Equality); ok {
		return equ.BasicPair.Equals(typed.BasicPair)
	}
	return false
}

func (equ *Equality) replaceAllWith(oldTerm, newTerm basictypes.Term) {
	if typed, ok := equ.GetFst().(basictypes.Fun); ok {
		equ.SetFst(typed.ReplaceAllSubTerm(oldTerm, newTerm))
	} else {
		equ.SetFst(equ.GetFst().ReplaceSubTermBy(oldTerm, newTerm))
	}

	if typed, ok := equ.GetSnd().(basictypes.Fun); ok {
		equ.SetSnd(typed.ReplaceAllSubTerm(oldTerm, newTerm))
	} else {
		equ.SetSnd(equ.GetSnd().ReplaceSubTermBy(oldTerm, newTerm))
	}
}

type Problem struct {
	assumptions *global.List[*Equality]
	goals       *global.List[*global.List[*Equality]]

	leftHandIndex       map[termIndex]constant
	rightHandIndex      map[termIndex]basictypes.Term
	representativeIndex map[constant]*global.List[termIndex]

	metas     *global.List[termIndex]
	constants *global.List[constant]
}

func NewProblem(assumptions *global.List[*Equality], goals *global.List[*global.List[*Equality]]) *Problem {
	pb := &Problem{
		assumptions,
		goals,

		make(map[termIndex]constant),
		make(map[termIndex]basictypes.Term),
		make(map[constant]*global.List[termIndex]),

		global.NewList[termIndex](),
		global.NewList[constant](),
	}

	return pb
}

func (problem *Problem) format() {
	for i, eq := range problem.assumptions.AsSlice() {
		rhs := termIndex(i)
		problem.rightHandIndex[rhs] = eq.GetSnd()

		if typed, ok := eq.GetFst().(constant); ok {
			problem.leftHandIndex[rhs] = typed

			if problem.representativeIndex[typed] == nil {
				problem.representativeIndex[typed] = global.NewList[termIndex]()
			}

			problem.representativeIndex[typed].Append(rhs)
		}

		if eq.GetSnd().IsMeta() {
			problem.metas.Append(rhs)
		}
	}

	for k := range problem.representativeIndex {
		problem.constants.Append(k)
	}
}

func isTrivialGoal(goal *global.List[*Equality]) bool {
	for _, eq := range goal.AsSlice() {
		if eq.GetFst() != eq.GetSnd() {
			return false
		}
	}
	return true
}

func (problem *Problem) HasTrivialGoals() bool {
	for _, goal := range problem.goals.AsSlice() {
		if isTrivialGoal(goal) {
			return true
		}
	}
	return false
}

func (problem *Problem) IsGround() bool {
	// TODO
	return false
}

func (problem *Problem) ToString() string {
	result := ""

	for _, ass := range problem.assumptions.AsSlice() {
		result += ass.ToString() + ", "
	}

	result = result[:len(result)-2] + " ⊨ "

	for _, goal := range problem.goals.AsSlice() {
		result += goal.ToString() + ", "
	}

	return result[:len(result)-2]
}

func (problem *Problem) addAssumption(equ *Equality) {
	problem.assumptions.AppendIfNotContains(equ)
}

func (problem *Problem) replaceAllWith(oldTerm, newTerm basictypes.Term) {
	for _, equ := range problem.assumptions.AsSlice() {
		equ.replaceAllWith(oldTerm, newTerm)
	}
	for _, goal := range problem.goals.AsSlice() {
		for _, equ := range goal.AsSlice() {
			equ.replaceAllWith(oldTerm, newTerm)
		}
	}
}

func (problem *Problem) removeDuplicates() int {
	cpt := 0

	for i := 0; i < problem.assumptions.Length()-1; i++ {
		for j := i + 1; j < problem.assumptions.Length(); j++ {
			if problem.assumptions.Get(i).Equals(problem.assumptions.Get(j)) {
				problem.assumptions.Remove(j)
				j--
				cpt++
			}
		}
	}

	return cpt
}

func (problem *Problem) getConstants() *global.List[constant] {
	result := global.NewList[constant]()

	for _, equ := range problem.assumptions.AsSlice() {
		if typed, ok := equ.GetFst().(constant); ok {
			result.AppendIfNotContains(typed)
		}
	}

	return result
}
