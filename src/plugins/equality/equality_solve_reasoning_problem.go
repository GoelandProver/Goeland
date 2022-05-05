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
	"reflect"

	treetypes "github.com/GoelandProver/Goeland/code-trees/tree-types"
	"github.com/GoelandProver/Goeland/global"
)

/*** Instaniation ***/
/* Launches the first instance of applyEqualityReasoningProblem. */
func launchEqualityReasoningProblem(ep EqualityProblem) []treetypes.Substitutions {
	superFatherChan := make(chan answerEP)
	go tryEqualityReasoningProblem(ep, superFatherChan, makeEmptyRuleStructList())
	res := <-superFatherChan
	return res.substs
}

/* try equalityReasoningProblem */
func tryEqualityReasoningProblem(ep EqualityProblem, father_chan chan answerEP, rsl ruleStructList) {
	select {
	case <-father_chan: // kil order
	default:
		// No kill order, let's apply the next rules.
		found, substs, applied_rules := equalityReasoningProblem(ep, father_chan, rsl)
		global.PrintDebug("TERP", "Send solution to father_chan")
		select {
		case <-father_chan: // Kill order received, it's finished anyway.
			global.PrintDebug("TERP", "Kill order recieved")
		case father_chan <- makeAnswerEP(found, substs, applied_rules): // Otherwise, send result to father.
			global.PrintDebug("TERP", "Message sent")
		}
	}
}

/* launch an equality reasoning problem resolution. Stop when the first solution is found */
func equalityReasoningProblem(ep EqualityProblem, father_chan chan answerEP, applied_rules ruleStructList) (bool, []treetypes.Substitutions, ruleStructList) {
	global.PrintDebug("ERP", fmt.Sprintf("EP : %v", ep.toString()))
	substs_res := []treetypes.Substitutions{}

	// Check if an unification exist between s and t and if its consistant with constraints
	check_unif_found, check_unif_substs_res := checkUnif(ep)
	if check_unif_found {
		substs_res = append(substs_res, check_unif_substs_res...)
	}

	// Check stop case
	if checkStopCases(ep) {
		global.PrintDebug("ERP", fmt.Sprintf("Stop case found ! Send : %v", treetypes.SubstListToString(substs_res)))
		return true, substs_res, applied_rules
	} else {
		global.PrintDebug("ERP", "Stop case not found")
	}

	// Compute available rules
	global.PrintDebug("ERP", "Try apply rules !")
	rr, lr := tryApplyRules(ep)
	global.PrintDebug("ERP", fmt.Sprintf("There is %v - %v rules available : %v and %v ", len(rr), len(lr), rr.toString(), lr.toString()))

	// Apply avaibalbe rule
	solution_found, solution_subst, new_applied_rules := manageRLRules(ep, rr, lr, father_chan, applied_rules)
	if solution_found {
		substs_res = append(substs_res, solution_subst...)
	}

	global.PrintDebug("ERP", fmt.Sprintf("Send : %v !", treetypes.SubstListToString(substs_res)))
	return (check_unif_found || solution_found), substs_res, new_applied_rules
}

/*** Launch rules ***/

/* Manage application of right and left rules - // bewteen same type, sequential bewteen doffrent types */
func manageRLRules(ep EqualityProblem, rr, lr ruleStructList, father chan answerEP, applied_rules ruleStructList) (bool, []treetypes.Substitutions, ruleStructList) {
	res_right, subst_right, applied_rules_apfter_right := manageRule(ep, rr, father, applied_rules)
	if res_right {
		return true, subst_right, applied_rules_apfter_right
	} else {
		// Ne pas réappliquer les règles déjà appliquer, faire la différences des deux listes, manage rule return applied rules
		// remaining_lr := makeEmptyRuleStructList()
		// for _, r := range lr {
		// 	if !applied_rules_apfter_right.contains(r) {
		// 		remaining_lr = append(remaining_lr, r)
		// 	}
		// }
		// fmt.Printf("Len remaingin lr : %v", len(remaining_lr))
		return manageRule(ep, lr, father, applied_rules)
		// TODO : TEST HERE SYN074
		// return false, []treetypes.Substitutions{}
	}
}

func manageRule(ep EqualityProblem, rsl ruleStructList, father chan answerEP, applied_rules ruleStructList) (bool, []treetypes.Substitutions, ruleStructList) {
	chan_tab := tryLaunchRule(ep, rsl, applied_rules)
	applied_rules.merge(rsl)
	return selectAnswerEP(chan_tab, father, applied_rules)
}

func tryLaunchRule(ep EqualityProblem, rules ruleStructList, applied_rules ruleStructList) [](chan answerEP) {
	chan_tab := [](chan answerEP){}
	for _, r := range rules {
		chan_tab = append(chan_tab, launchApplyRules(r, ep, applied_rules))
	}
	return chan_tab
}

/* Lanch an equality reasoning problem, return a channel */
func launchApplyRules(rs ruleStruct, ep EqualityProblem, applied_rules ruleStructList) chan answerEP {
	chan_child := make(chan answerEP)
	go applyRule(rs, ep, chan_child, global.GetGID(), applied_rules)
	return chan_child
}

/*** Retrieve result ***/

/* Wait for children to close. Return chen the fisrt child with a substitution answer */
func selectAnswerEP(chan_tab [](chan answerEP), chan_parent chan answerEP, applied_rules ruleStructList) (bool, []treetypes.Substitutions, ruleStructList) {
	// Instantiation
	cases := makeCases(chan_tab, chan_parent)
	hasAnswered := make([]bool, len(chan_tab)) // Everything to false
	remaining, indexQuit := len(chan_tab), len(chan_tab)
	answer_found := false
	stop_found := false
	substs_res := []treetypes.Substitutions{}

	// Wait for at least on child to finish.
	for remaining > 0 && !answer_found && !stop_found {
		index, value, _ := reflect.Select(cases)
		remaining--
		if index == indexQuit {
			global.PrintDebug("SAEP", "Close order received")
			stop_found = true
		} else {
			res := value.Interface().(answerEP)
			global.PrintDebug("SAEP", fmt.Sprintf("Recieved from %v : %v !", res.id, treetypes.SubstListToString(res.substs)))
			hasAnswered[index] = true
			if res.found {
				answer_found = true
				substs_res = append(substs_res, res.substs...)
			} else {
				global.PrintDebug("SAEP", "Child provide no solution")
			}
			applied_rules.merge(res.applied_rules)
		}
	}

	selectCleanup(hasAnswered, chan_tab)
	return answer_found, substs_res, applied_rules
}

/* Make cases : take a list of chan an make a select structure */
func makeCases(chan_tab [](chan answerEP), chan_parent chan answerEP) []reflect.SelectCase {
	cases := make([]reflect.SelectCase, len(chan_tab)+1)
	// Children
	for i, chan_ := range chan_tab {
		cases[i] = reflect.SelectCase{Dir: reflect.SelectRecv, Chan: reflect.ValueOf(chan_)}
	}
	// Parent
	cases[len(chan_tab)] = reflect.SelectCase{Dir: reflect.SelectRecv, Chan: reflect.ValueOf(chan_parent)}
	return cases
}

/* kills all the remaining children. */
func selectCleanup(hasAnswered []bool, chansTab [](chan answerEP)) {
	for i, answered := range hasAnswered {
		if !answered {
			select {
			case <-chansTab[i]: // Filter out, he already responded
			case chansTab[i] <- makeEmptyAnswerEP(): // Kill child
			}
		}
	}
}
