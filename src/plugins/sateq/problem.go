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
	treetypes "github.com/GoelandProver/Goeland/code-trees/tree-types"
	"github.com/GoelandProver/Goeland/global"
	"github.com/GoelandProver/Goeland/plugins/eqStruct"
	"github.com/GoelandProver/Goeland/plugins/equality"
	basictypes "github.com/GoelandProver/Goeland/types/basic-types"
	"github.com/go-air/gini"
	"github.com/go-air/gini/z"
)

type Problem struct {
	goals *global.List[*global.List[*global.BasicPair[*eqClass, *eqClass]]]

	functionsIndex map[int]*global.List[*termRecord]      // terms indexed by their function symbol
	metasIndex     map[int]*termRecord                    // metas indexed by identifier
	partitionIndex map[*eqClass]*global.List[*termRecord] // terms in each eqClass
	supertermIndex map[*eqClass]*global.List[*termRecord] // superterms of a given eqClass
	// the last two indexes should be maintained so that only representatives of eqClasses are keys (i.e. not two keys should be congruent)
}

func NewProblem() *Problem {
	pb := &Problem{
		global.NewList[*global.List[*global.BasicPair[*eqClass, *eqClass]]](),

		make(map[int]*global.List[*termRecord]),
		make(map[int]*termRecord),
		make(map[*eqClass]*global.List[*termRecord]),
		make(map[*eqClass]*global.List[*termRecord]),
	}

	return pb
}

func (problem *Problem) format(epml equality.EqualityProblemMultiList) {
	for _, eq := range epml[0][0].GetE() {
		problem.AddAssumption(eq)
	}

	for _, epl := range epml {
		goal := make([]eqStruct.TermPair, 0)
		for _, ep := range epl {
			goal = append(goal, eqStruct.MakeTermPair(ep.GetS(), ep.GetT()))
		}
		problem.AddGoal(goal)
	}
}

func (problem *Problem) EquivalenceClasses() *global.List[*eqClass] {
	// TODO simplify this whenever the standard library gets a method to extract keys from a map
	l := global.NewList[*eqClass]()
	for k, _ := range problem.partitionIndex {
		l.Append(k)
	}
	return l
}

func (problem *Problem) TermsInClass(ec *eqClass) *global.List[*termRecord] {
	return problem.partitionIndex[ec.representative()]
}

func (problem *Problem) TermsWithSymbol(symbolIndex int) *global.List[*termRecord] {
	return problem.functionsIndex[symbolIndex]
}

func (problem *Problem) Metas() *global.List[*termRecord] {
	// TODO simplify this whenever the standard library gets a method to extract keys from a map
	l := global.NewList[*termRecord]()
	for _, v := range problem.metasIndex {
		l.Append(v)
	}
	return l
}

func (problem *Problem) getEquivalenceClass(t basictypes.Term) *eqClass {
	if t.IsMeta() {
		if tr, found := problem.metasIndex[t.GetIndex()]; found {
			return tr.eqClass
		}
		if typed, ok := t.(basictypes.Meta); ok {
			return problem.addNewTermRecord(metaTermRecord(typed))
		}
	} else {
		if typed, ok := t.(basictypes.Fun); ok {
			args := make([]*eqClass, typed.GetArgs().Len())
			for i, st := range typed.GetArgs() {
				args[i] = problem.getEquivalenceClass(st)
			}
			tr1 := funTermRecord(typed, args)
			if idxList, found := problem.functionsIndex[tr1.index]; found {
				for _, tr2 := range idxList.AsSlice() {
					if tr1.congruent(tr2) {
						return tr2.eqClass
					}
				}
			}
			// no congruent term is present
			return problem.addNewTermRecord(tr1)
		}
	}
	// shouldn't be reached
	return nil
}

func (problem *Problem) addNewTermRecord(tr *termRecord) *eqClass {
	// this should only be called if there is no term congruent to tr
	ec := tr.eqClass.representative()
	problem.partitionIndex[ec] = global.NewList[*termRecord]()
	problem.partitionIndex[ec].Append(tr)
	problem.supertermIndex[ec] = global.NewList[*termRecord]()
	if tr.isMeta() {
		problem.metasIndex[tr.index] = tr
	} else {
		if _, found := problem.functionsIndex[tr.index]; !found {
			problem.functionsIndex[tr.index] = global.NewList[*termRecord]()
		}
		problem.functionsIndex[tr.index].Append(tr)
		problem.supertermIndex[ec].Append(tr)
	}
	return ec
}

func (problem *Problem) mergeEquivalenceClasses(ec1, ec2 *eqClass) {
	if ec1.congruent(ec2) {
		return
	}

	ecMerged := ec1.representative()
	ecDeleted := ec2.representative()

	ec1.merge(ec2)

	if ec1.representative() != ecMerged {
		ecMerged, ecDeleted = ecDeleted, ecMerged
	}

	// update indexes (see invariant above)
	problem.partitionIndex[ecMerged].Append(problem.partitionIndex[ecDeleted].AsSlice()...) // the entries of partitionIndex are disjoint
	problem.supertermIndex[ecMerged].AppendIfNotContains(problem.supertermIndex[ecDeleted].AsSlice()...)
	delete(problem.partitionIndex, ecDeleted)
	delete(problem.supertermIndex, ecDeleted)

	// propagate congruence
	for _, t3 := range problem.supertermIndex[ecMerged].AsSlice() {
		// !t3.isMeta
		for _, t4 := range problem.supertermIndex[ecMerged].AsSlice() {
			ec3 := t3.eqClass
			ec4 := t4.eqClass
			if !ec3.congruent(ec4) && t3.congruent(t4) {
				problem.mergeEquivalenceClasses(ec3, ec4)
			}
		}
	}
}

func (problem *Problem) AddAssumption(eq eqStruct.TermPair) {
	problem.mergeEquivalenceClasses(problem.getEquivalenceClass(eq.GetT1()), problem.getEquivalenceClass(eq.GetT2()))
}

func (problem *Problem) AddGoal(goal []eqStruct.TermPair) {
	g := global.NewList[*global.BasicPair[*eqClass, *eqClass]]()

	for _, eq := range goal {
		g.AppendIfNotContains(global.NewBasicPair(problem.getEquivalenceClass(eq.GetT1()), problem.getEquivalenceClass(eq.GetT2())))
	}

	problem.goals.AppendIfNotContains(g)
}

func isTrivialGoal(goal *global.List[*global.BasicPair[*eqClass, *eqClass]]) bool {
	for _, p := range goal.AsSlice() {
		if !p.GetFst().congruent(p.GetSnd()) {
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
	return len(problem.metasIndex) == 0
}

func (problem *Problem) Solve() (subs []treetypes.Substitutions, success bool) {
	if problem.HasTrivialGoals() {
		// congruence closure alone finds a solution
		return append(treetypes.MakeEmptySubstitutionList(), treetypes.MakeEmptySubstitution()), true
	}

	if problem.IsGround() {
		// ground problem that is not solved by CC has no solution
		return []treetypes.Substitutions{}, false
	}

	satBuilder := buildSAT(problem)
	return findSolution(satBuilder)
}

func findSolution(satBuilder *SatBuilder) (subs []treetypes.Substitutions, success bool) {
	solution, success := solve(satBuilder.gini, satBuilder.lits)

	if !success {
		return []treetypes.Substitutions{}, false
	}

	return gatherSubs(solution, satBuilder.sMapping, satBuilder.rMapping)
}

func solve(satInstance gini.Gini, litList *global.List[Lit]) (map[Lit]bool, bool) {
	result := satInstance.Solve()

	if result != 1 {
		return nil, false
	}

	assignmentMap := make(map[Lit]bool)

	for _, lit := range litList.AsSlice() {
		assignmentMap[lit] = satInstance.Value(z.Lit(lit))
	}
	return assignmentMap, true
}

func (problem *Problem) Copy() eqStruct.EqualityStruct {
	newProblem := NewProblem()

	for _, goal := range problem.goals.AsSlice() {
		newGoal := global.NewList[*global.BasicPair[*eqClass, *eqClass]]()

		for _, singleGoal := range goal.AsSlice() {
			newPair := global.NewBasicPair(singleGoal.GetFst(), singleGoal.GetSnd())
			newGoal.Append(newPair)
		}

		newProblem.goals.Append(newGoal)
	}

	newFunctionsIndex := make(map[int]*global.List[*termRecord])

	for k, v := range problem.functionsIndex {
		newFunctionsIndex[k] = v.Copy()
	}

	newProblem.functionsIndex = newFunctionsIndex

	newMetasIndex := make(map[int]*termRecord)

	for k, v := range problem.metasIndex {
		newMetasIndex[k] = v
	}

	newProblem.metasIndex = newMetasIndex

	newPartitionIndex := make(map[*eqClass]*global.List[*termRecord])

	for k, v := range problem.partitionIndex {
		newPartitionIndex[k] = v.Copy()
	}

	newProblem.partitionIndex = newPartitionIndex

	newSupertermIndex := make(map[*eqClass]*global.List[*termRecord])

	for k, v := range problem.supertermIndex {
		newSupertermIndex[k] = v.Copy()
	}

	newProblem.supertermIndex = newSupertermIndex

	return newProblem
}
