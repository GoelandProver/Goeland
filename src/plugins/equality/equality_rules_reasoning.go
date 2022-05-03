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
/*******************************/
/* equality_rules_reasoning.go */
/*******************************/
/**
* This file contains the functions to apply equality raasoning on a problem, a list and a multilist.
**/

package main

import (
	"fmt"

	treesearch "github.com/GoelandProver/Goeland/code-trees/tree-search"
	treetypes "github.com/GoelandProver/Goeland/code-trees/tree-types"
	"github.com/GoelandProver/Goeland/global"
)

type answerEP struct {
	id     uint64
	substs []treetypes.Substitutions
}

/**
* EqualityReasoningMultiList
* Data : a whole equality problem (EqualityProblemMultiList)
* Result : true if at least on of the list return a solution, and the corresponding substitutions
**/
/** Todo :
* On parallèlise ?
* On s'arrête au premier trouvé ?
**/
func equalityReasoningMultiList(epml EqualityProblemMultiList) (bool, []treetypes.Substitutions) {
	global.PrintDebug("ERML", fmt.Sprintf("Start of Equality reasoning multilist : %v", len(epml)))
	global.PrintDebug("ERML", fmt.Sprintf("LPO : %v", lpo.toString()))
	substs_res := []treetypes.Substitutions{}
	found := false

	for _, epl := range epml {
		global.PrintDebug("ERML", fmt.Sprintf("iteration on EPL : %v", epl.toString()))
		if has_solution, subst_res_tmp := equalityReasoningList(epl); has_solution {
			global.PrintDebug("ERML", fmt.Sprintf("Solution found for one EPL : %v !", treetypes.SubstListToString(subst_res_tmp)))
			found = true
			for subst_res_tmp_element := range subst_res_tmp {
				substs_res = treetypes.AppendIfNotContainsSubst(substs_res, subst_res_tmp[subst_res_tmp_element])
			}
			// TODO : return ?
		}
	}
	global.PrintDebug("ERML", fmt.Sprintf("Final subst after ER : %v", treetypes.SubstListToString(substs_res)))
	return found, substs_res
}

/**
* EqualityReasoningList
* Data : an equality problem list (EqualityProblemList), corresponding to an inequality or two complementary predicates
* Result : true if all of the problem in the list agrees on at least one substitution, and the corresponding substitutions
**/
func equalityReasoningList(epl EqualityProblemList) (bool, []treetypes.Substitutions) {
	global.PrintDebug("ERML", fmt.Sprintf("Start of Equality reasoning list : %v", epl.toString()))

	substs_res := []treetypes.Substitutions{}

	for _, ep := range epl {
		global.PrintDebug("ERL", fmt.Sprintf("Iteration on EP : %v", ep.toString()))
		if has_solution, subst_res_tmp := equalityReasoningProblemWithApplySubst(ep.copy(), substs_res); has_solution {
			global.PrintDebug("ERL", fmt.Sprintf("Solution found for on EP : %v !", treetypes.SubstListToString(subst_res_tmp)))
			substs_res = append(substs_res, subst_res_tmp...)
		} else {
			return false, []treetypes.Substitutions{treetypes.Failure()}
		}
	}
	return true, substs_res
}

/**
* equalityReasoningWithApplySubst
* return true if at least on subst on the subst list returns result, and the corresponding substitution list
**/
func equalityReasoningProblemWithApplySubst(ep EqualityProblem, sl []treetypes.Substitutions) (bool, []treetypes.Substitutions) {
	global.PrintDebug("ERPWAS", "Start on equality reasoning  problem with apply subst")
	substs_res := []treetypes.Substitutions{}
	found := false
	children_chan := make(chan answerEP)

	if len(sl) == 0 {
		global.PrintDebug("ERPWAS", "No subst ! - Launch goroutine ")
		found, substs_res = lanchEqualityReasoningProblem(treetypes.MakeEmptySubstitution(), ep, children_chan)
	} else {
		global.PrintDebug("ERPWAS", "Subst ! - lauche goroutine ")
		for _, s := range sl {
			found, substs_res = lanchEqualityReasoningProblem(s, ep, children_chan)
		}
	}

	return found, substs_res
}

/* Lanch an equality reasoning problem */
func lanchEqualityReasoningProblem(s treetypes.Substitutions, ep EqualityProblem, children_chan chan answerEP) (bool, []treetypes.Substitutions) {
	substs_res := []treetypes.Substitutions{}
	found := false
	global.PrintDebug("ERPWAS", fmt.Sprintf("Go ! - with %v", s.ToString()))
	go equalityReasoningProblem(ep.applySubstitution(s.Copy()), children_chan, global.GetGID())
	subst_res_chan := <-children_chan
	global.PrintDebug("REPWAS", fmt.Sprintf("Recieved from %v : %v !", subst_res_chan.id, treetypes.SubstListToString(subst_res_chan.substs)))
	if len(subst_res_chan.substs) > 0 {
		for _, subst_element := range subst_res_chan.substs {
			merged_subst, same_key := treesearch.MergeSubstitutions(s.Copy(), subst_element.Copy())
			if same_key {
				global.PrintDebug("ERPWAS", "Error in EqualityReasoningList : same key appears in merge")
				fmt.Printf("[ERPWAS] Error in EqualityReasoningList : same key appears in merge\n")
			}
			if merged_subst.Equals(treetypes.Failure()) {
				global.PrintDebug("ERPWAS", "Error in EqualityReasoningList : merge returns failure")
				fmt.Printf("[ERPWAS] Error in EqualityReasoningList : merge returns failure\n")
			} else {
				found = true
				substs_res = append(substs_res, merged_subst)
			}
		}
	}
	return found, substs_res
}

// Brancher pour règles
func equalityReasoningProblem(ep EqualityProblem, parent chan answerEP, father_id uint64) {
	global.PrintDebug("ERP", fmt.Sprintf("Child of %v", father_id))
	global.PrintDebug("ERP", fmt.Sprintf("EP : %v", ep.toString()))
	substs_res := []treetypes.Substitutions{}

	// Check if an unification exist between s and t and if its consistant with constraints
	if ok, subst_found := checkUnif(ep.getS(), ep.getT()); ok {
		global.PrintDebug("ERP", "Unif found !")
		new_subst := treesearch.AddUnification(ep.getS(), ep.getT(), ep.getC().getSubst())
		if !new_subst.Equals(treetypes.Failure()) {
			is_consistant := ep.c.getPrec().isConsistantWithSubst(new_subst)
			if is_consistant {
				global.PrintDebug("ERP", fmt.Sprintf("Unif found and consistant : %v", new_subst.ToString()))
				substs_res = append(substs_res, new_subst)
			} else {
				global.PrintDebug("ERP", fmt.Sprintf("Unif found but not consistant : %v", subst_found.ToString()))
			}
		} else {
			global.PrintDebug("ERP", fmt.Sprintf("Unif found but not consistant with other unifications : %v", subst_found.ToString()))
		}
	} else {
		global.PrintDebug("ERP", "Unification not found")
	}

	// Check stop case
	if checkStopCases(ep) {
		global.PrintDebug("ERP", fmt.Sprintf("Stop case found ! Send : %v", treetypes.SubstListToString(substs_res)))
		parent <- answerEP{global.GetGID(), substs_res}
		return
	} else {
		global.PrintDebug("ERP", "Stop case not found")
	}

	// Compute available rules
	global.PrintDebug("ERP", "Try apply rules !")
	rr, lr := tryApplyRules(ep)
	global.PrintDebug("ERP", fmt.Sprintf("There is %v - %v rules available : %v and %v ", len(rr), len(lr), ruleStructListToString(rr), ruleStructListToString(lr)))

	// TODO : select

	// Right rule
	tab_chan := [](chan answerEP){}
	for _, r := range rr {
		global.PrintDebug("ERP", "Go !")
		chan_rule := make(chan answerEP)
		go applyRule(r, ep, chan_rule, global.GetGID())
		tab_chan = append(tab_chan, chan_rule)
	}

	for _, c := range tab_chan {
		res := <-c
		global.PrintDebug("ERP", fmt.Sprintf("Recieved (rr) %v : %v - len(subst) = %v", res.id, treetypes.SubstListToString(res.substs), len(res.substs)))
		if len(res.substs) > 0 {
			for _, s := range res.substs {
				if !s.Equals(treetypes.Failure()) {
					global.PrintDebug("ERP", fmt.Sprintf("RR :subst found : %v ", s.ToString()))
					substs_res = append(substs_res, s)
				}
			}
		}
	}

	// Left rule
	if len(substs_res) == 0 {
		global.PrintDebug("ERP", "Right rule dosen't works, try left rules")
		tab_chan = [](chan answerEP){}
		for _, r := range lr {
			global.PrintDebug("ERP", "Go !")
			chan_rule := make(chan answerEP)
			go applyRule(r, ep, chan_rule, global.GetGID())
			tab_chan = append(tab_chan, chan_rule)
		}

		for _, c := range tab_chan {
			res := <-c
			global.PrintDebug("ERP", fmt.Sprintf("Recieved (lr) %v : %v - len(subst) = %v", res.id, treetypes.SubstListToString(res.substs), len(res.substs)))
			if len(res.substs) > 0 {
				for _, s := range res.substs {
					if !s.Equals(treetypes.Failure()) {
						global.PrintDebug("ERP", fmt.Sprintf("LR : subst found : %v ", s.ToString()))
						substs_res = append(substs_res, s)
					}
				}
			}
		}
	}

	global.PrintDebug("ERP", fmt.Sprintf("Send : %v !", treetypes.SubstListToString(substs_res)))
	parent <- answerEP{global.GetGID(), substs_res}
	global.PrintDebug("ERP", "die")
}
