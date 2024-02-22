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
	"github.com/GoelandProver/Goeland/util"
)

func normalize(problem *Problem) *Problem {
	problem = ApplyAllGoalName(problem)
	problem = ApplyAllEqName(problem)
	problem = ApplyAllEqFlatten(problem)
	problem = ApplyAllDupElim(problem)
	return problem
}

func ApplyAllGoalName(problem *Problem) *Problem {
	for i, goal := range problem.goals.Slice() {
		newGoal := global.NewList[*Equality]()

		for _, equ := range goal.Slice() {
			const1 := makeConstant()
			const2 := makeConstant()
			goalEqu := NewEquality(const1, const2)
			assEqu1 := NewEquality(const1, equ.GetFst())
			assEqu2 := NewEquality(const2, equ.GetSnd())

			newGoal.Append(goalEqu)

			problem.addAssumption(assEqu1)
			problem.addAssumption(assEqu2)
		}

		problem.goals.Set(i, newGoal)
	}

	return problem
}

func ApplyAllEqName(problem *Problem) *Problem {
	newAssumptions := global.NewList[*Equality]()

	for _, equ := range problem.assumptions.Slice() {
		_, okFst := equ.GetFst().(constant)
		_, okSnd := equ.GetSnd().(constant)

		if okFst || okSnd {
			newAssumptions.Append(equ)
		} else {
			constant := makeConstant()

			equ1 := NewEquality(constant, equ.GetFst())
			newAssumptions.Append(equ1)

			equ2 := NewEquality(constant, equ.GetSnd())
			newAssumptions.Append(equ2)
		}
	}

	problem.assumptions = newAssumptions
	return problem
}

func ApplyAllEqFlatten(problem *Problem) *Problem {
	assumptions, toDo := global.NewList[*Equality](), problem.assumptions

	for toDo.Len() > 0 {
		chosen := toDo.Get(0)
		toDo.Remove(0)
		done, nextToDo := ApplyEqFlattenOn(chosen)

		assumptions.Append(done.Slice()...)
		toDo.Append(nextToDo.Slice()...)
	}

	problem.assumptions = assumptions
	return problem
}

func ApplyEqFlattenOn(equ *Equality) (done *global.List[*Equality], toDo *global.List[*Equality]) {
	done, toDo = global.NewList[*Equality](), global.NewList[*Equality]()

	if typed, ok := equ.GetSnd().(basictypes.Fun); ok {
		argsAsConstants := basictypes.NewTermList()

		for _, term := range typed.GetArgs().Slice() {
			constant := makeConstant()
			argsAsConstants.Append(constant)

			newAssumption := NewEquality(constant, term)
			toDo.Append(newAssumption)
		}

		if newTyped, ok := typed.PointerCopy().(*basictypes.Fun); ok {
			newTyped.SetArgs(argsAsConstants)
			done.Append(NewEquality(equ.GetFst(), newTyped))
		}
	} else {
		done.Append(equ)
	}

	return done, toDo
}

func ApplyAllDupElim(problem *Problem) *Problem {
	numberRemoved := 1

	for numberRemoved > 0 {
		replaceConstants(problem)
		numberRemoved = problem.removeDuplicates()
	}

	return problem
}

func replaceConstants(problem *Problem) {
	constantMap := buildConstantMapOf(problem)
	disjointSet := buildDisjointSetOf(problem)

	unionizeDisjointSet(constantMap, disjointSet)
	replaceConstantsInProblem(problem, disjointSet)
}

func buildConstantMapOf(problem *Problem) *global.MapWithList[basictypes.Term, constant] {
	constantMap := global.NewMapWithList[basictypes.Term, constant]()

	for _, equ := range problem.assumptions.Slice() {
		if typed, ok := equ.GetFst().(constant); ok {
			constantMap.AddIfNotContains(equ.GetSnd(), typed)
		}
	}

	return constantMap
}

func buildDisjointSetOf(problem *Problem) *util.DisjointSet[constant] {
	disjointSet := util.NewDisjointSet[constant]()
	for _, constant := range problem.getConstants().Slice() {
		disjointSet.MakeSet(constant)
	}
	return disjointSet
}

func unionizeDisjointSet(constantMap *global.MapWithList[basictypes.Term, constant], disjointSet *util.DisjointSet[constant]) {
	for _, value := range constantMap.Values() {
		for i := range value.Slice() {
			if i != 0 {
				disjointSet.Union(value.Get(i-1), value.Get(i))
			}
		}
	}
}

func replaceConstantsInProblem(problem *Problem, disjointSet *util.DisjointSet[constant]) {
	for _, constant := range problem.getConstants().Slice() {
		problem.replaceAllWith(constant, disjointSet.Find(constant))
	}
}
