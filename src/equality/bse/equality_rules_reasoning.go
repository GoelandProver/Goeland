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
* This file contains the functions to apply equality raasoning on a problem, a list and a multilist.
**/

package equality

import (
	"fmt"

	treesearch "github.com/GoelandProver/Goeland/code-trees/tree-search"
	treetypes "github.com/GoelandProver/Goeland/code-trees/tree-types"
	"github.com/GoelandProver/Goeland/equality/eqStruct"
	"github.com/GoelandProver/Goeland/global"
)

type BasicEqualityStruct struct {
	assumptions *global.List[eqStruct.TermPair]
	goals       *global.List[*global.List[eqStruct.TermPair]]
}

func NewBasicEqualityStruct() eqStruct.EqualityStruct {
	return &BasicEqualityStruct{global.NewList[eqStruct.TermPair](), global.NewList[*global.List[eqStruct.TermPair]]()}
}

func (bes *BasicEqualityStruct) AddAssumption(assumption eqStruct.TermPair) {
	bes.assumptions.AppendIfNotContains(assumption)
}

func (bes *BasicEqualityStruct) AddGoal(goal []eqStruct.TermPair) {
	newGoal := global.NewList[eqStruct.TermPair]()
	newGoal.AppendIfNotContains(goal...)

	bes.goals.AppendIfNotContains(newGoal)
}

func (bes *BasicEqualityStruct) Solve() (subs []treetypes.Substitutions, success bool) {
	global.PrintDebug("ERML", fmt.Sprintf("Start of Equality reasoning multilist : %v", bes.goals.Len()))
	substs_res := []treetypes.Substitutions{}
	found := false

	for _, goal := range bes.goals.Slice() {
		epl := makeEqualityProblemList(bes.assumptions.Slice(), goal.Slice())

		global.PrintDebug("ERML", fmt.Sprintf("iteration on EPL : %v", epl.ToString()))
		if has_solution, subst_res_tmp := equalityReasoningList(epl); has_solution {
			global.PrintDebug("ERML", fmt.Sprintf("Solution found for one EPL : %v !", treetypes.SubstListToString(subst_res_tmp)))
			found = true
			for subst_res_tmp_element := range subst_res_tmp {
				substs_res = treetypes.AppendIfNotContainsSubst(substs_res, subst_res_tmp[subst_res_tmp_element])
			}
		}
	}

	global.PrintDebug("ERML", fmt.Sprintf("Final subst after ER : %v", treetypes.SubstListToString(substs_res)))
	return substs_res, found
}

func (bes *BasicEqualityStruct) Copy() eqStruct.EqualityStruct {
	newBES := NewBasicEqualityStruct()

	for _, goal := range bes.goals.Slice() {
		newBES.AddGoal(goal.Slice())
	}

	for _, assumption := range bes.assumptions.Slice() {
		newBES.AddAssumption(assumption)
	}

	return newBES
}

// Add the new equality problems to the EqualityStruct and run the equality reasoning.
func RunEqualityReasoning(es eqStruct.EqualityStruct, epml EqualityProblemMultiList) (bool, []treetypes.Substitutions) {
	for _, eq := range epml[0][0].GetE() {
		es.AddAssumption(eq)
	}

	for _, epl := range epml {
		goal := []eqStruct.TermPair{}

		for _, ep := range epl {
			goal = append(goal, eqStruct.MakeTermPair(ep.GetS(), ep.GetT()))
		}

		es.AddGoal(goal)
	}

	subs, found := es.Solve()
	return found, subs
}

/**
* EqualityReasoningList
* Data : an equality problem list (EqualityProblemList), corresponding to an inequality or two complementary predicates
* Result : true if all of the problem in the list agrees on at least one substitution, and the corresponding substitutions
**/
func equalityReasoningList(epl EqualityProblemList) (bool, []treetypes.Substitutions) {
	global.PrintDebug("ERML", fmt.Sprintf("Start of Equality reasoning list : %v", epl.ToString()))

	substs_res := []treetypes.Substitutions{}

	for _, ep := range epl {
		global.PrintDebug("ERL", fmt.Sprintf("Iteration on EP : %v", ep.ToString()))
		// Each step manage one problem with n subtitutions
		if has_solution, subst_res_tmp := manageEqualityReasoningProblem(ep.copy(), substs_res); has_solution {
			global.PrintDebug("ERL", fmt.Sprintf("Solution found for on EP : %v !", treetypes.SubstListToString(subst_res_tmp)))
			substs_res = treetypes.CopySubstList(subst_res_tmp)
		} else {
			return false, []treetypes.Substitutions{treetypes.Failure()}
		}
	}
	return true, substs_res
}

/* return true if at least on subst on the subst list returns result, and the corresponding substitution list */
func manageEqualityReasoningProblem(ep EqualityProblem, sl []treetypes.Substitutions) (bool, []treetypes.Substitutions) {
	global.PrintDebug("ERPWAS", "Start on equality reasoning  problem with apply subst")
	if len(sl) == 0 {
		subst := launchEqualityReasoningProblem(ep)
		return len(subst) > 0, subst
	} else {
		found := false
		res_substs := []treetypes.Substitutions{}
		for _, s := range sl {
			s_subst := launchEqualityReasoningProblem(ep.applySubstitution(s))
			if len(s_subst) > 0 {
				for _, subst_element := range s_subst {
					merged_subst, same_key := treesearch.MergeSubstitutions(s.Copy(), subst_element.Copy())
					if same_key {
						global.PrintError("ERPWAS", "Error in EqualityReasoningList : same key appears in merge")
					}
					if merged_subst.Equals(treetypes.Failure()) {
						global.PrintError("ERPWAS", "Error in EqualityReasoningList : merge returns failure")
					} else {
						found = true
						res_substs = append(res_substs, merged_subst)
					}
				}
			}
		}
		return found, res_substs
	}
}