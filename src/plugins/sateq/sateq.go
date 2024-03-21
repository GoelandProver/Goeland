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
	"fmt"
	"time"

	treetypes "github.com/GoelandProver/Goeland/code-trees/tree-types"
	"github.com/GoelandProver/Goeland/global"
	"github.com/GoelandProver/Goeland/plugins/equality"
	"github.com/go-air/gini"
	"github.com/go-air/gini/z"
)

func Enable() {
	equality.RunEqualityReasoning = RunEqualityReasoning
}

func RunEqualityReasoning(epml equality.EqualityProblemMultiList) (success bool, subs []treetypes.Substitutions) {
	if len(epml) == 0 {
		return false, []treetypes.Substitutions{}
	}

	t := time.Now()

	problem := format(epml)

	fmt.Printf("normalization time: %s\n", time.Since(t))

	if problem.HasTrivialGoals() {
		fmt.Printf("trivially sat problem\n")
		// congruence closure alone finds a solution
		return true, append(treetypes.MakeEmptySubstitutionList(), treetypes.MakeEmptySubstitution())
	}
	if problem.IsGround() {
		fmt.Printf("trivially unsat problem\n")
		// ground problem that is not solved by CC has no solution
		return false, []treetypes.Substitutions{}
	}

	t = time.Now()

	satBuilder := buildSAT(problem)

	fmt.Printf("constraint building time: %s\n", time.Since(t))

	t = time.Now()
	subs, success = findSolution(satBuilder)

	fmt.Printf("SAT solving and reconstruction: %s\n", time.Since(t))
	return success, subs
}

func format(epml equality.EqualityProblemMultiList) *Problem {
	problem := NewProblem()

	for _, eq := range epml[0][0].GetE() {
		problem.AddAssumption(eq)
	}

	for _, epl := range epml {
		goal := make([]equality.TermPair, 0)
		for _, ep := range epl {
			goal = append(goal, equality.MakeTermPair(ep.GetS(), ep.GetT()))
		}
		problem.AddGoal(goal)
	}

	return problem
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
