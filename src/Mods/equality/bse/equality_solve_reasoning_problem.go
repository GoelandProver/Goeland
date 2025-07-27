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
	"reflect"

	"github.com/GoelandProver/Goeland/Glob"
	"github.com/GoelandProver/Goeland/Lib"
	"github.com/GoelandProver/Goeland/Unif"
)

/*** Instaniation ***/
/* Launches the first instance of applyEqualityReasoningProblem. */
func launchEqualityReasoningProblem(ep EqualityProblem) []Unif.Substitutions {
	superFatherChan := make(chan answerEP)
	go tryEqualityReasoningProblem(ep, superFatherChan, -1, RIGHT, Glob.GetGID())
	res := <-superFatherChan
	return res.substs
}

/* try equalityReasoningProblem */
func tryEqualityReasoningProblem(ep EqualityProblem, father_chan chan answerEP, last_applied_rule_index, last_applied_rule_type int, father_id uint64) {
	debug(
		Lib.MkLazy(func() string { return fmt.Sprintf("Child of %v", father_id) }),
	)
	select {
	case <-father_chan: // kil order
	default:
		// No kill order, let's apply the next rules.
		found, substs := equalityReasoningProblem(ep, father_chan, last_applied_rule_index, last_applied_rule_type)
		debug(
			Lib.MkLazy(func() string { return "Send solution to father_chan" }),
		)
		select {
		case <-father_chan: // Kill order received, it's finished anyway.
			debug(
				Lib.MkLazy(func() string { return "Kill order recieved" }),
			)
		case father_chan <- makeAnswerEP(found, substs): // Otherwise, send result to father.
			debug(Lib.MkLazy(func() string { return "Message sent" }))
		}
	}
}

/* launch an equality reasoning problem resolution. Stop when the first solution is found */
func equalityReasoningProblem(ep EqualityProblem, father_chan chan answerEP, last_applied_rule_index, last_applied_rule_type int) (bool, []Unif.Substitutions) {
	debug(Lib.MkLazy(func() string { return fmt.Sprintf("EP : %v", ep.ToString()) }))
	substs_res := []Unif.Substitutions{}
	unif_found := false

	// Check if an unification exist between s and t and if its consistant with constraints
	if last_applied_rule_type == RIGHT {
		check_unif_found, check_unif_substs_res := checkUnif(ep)
		if check_unif_found {
			unif_found = true
			substs_res = append(substs_res, check_unif_substs_res...)
		}
	}

	// Check stop case
	if checkStopCases(ep) {
		debug(
			Lib.MkLazy(func() string {
				return fmt.Sprintf(
					"Stop case found ! Send : %v",
					Unif.SubstListToString(substs_res))
			}),
		)
		return true, substs_res
	} else {
		debug(Lib.MkLazy(func() string { return "Stop case not found" }))
	}

	// Apply available rule
	solution_found, solution_subst := manageRLRules(ep, father_chan, last_applied_rule_index, last_applied_rule_type)
	if solution_found {
		unif_found = true
		substs_res = append(substs_res, solution_subst...)
	}

	debug(
		Lib.MkLazy(func() string { return fmt.Sprintf("Send : %v !", Unif.SubstListToString(substs_res)) }),
	)
	return unif_found, substs_res
}

/*** Launch rules ***/

/* Manage application of right and left rules - // bewteen same type, sequential bewteen diffrent types */
func manageRLRules(ep EqualityProblem, father chan answerEP, last_applied_rule_index, last_applied_rule_type int) (bool, []Unif.Substitutions) {

	// Compute right rule
	debug(Lib.MkLazy(func() string { return "Try apply right rules !" }))
	rules_to_apply := tryApplyRightRules(ep) // TODO : ne chercher la contradiction seulement avec l'index donné
	debug(
		Lib.MkLazy(func() string {
			return fmt.Sprintf(
				"There is %v right rules available : %v ",
				len(rules_to_apply),
				rules_to_apply.toString())
		}),
	)
	// apply right rules
	res_right, subst_right := manageRule(ep, rules_to_apply, father)

	if res_right {
		// TODO : HERE - lost completeness
		return true, subst_right
	} else {
		// Compute left rule
		debug(Lib.MkLazy(func() string { return "Try apply left rules !" }))
		index_begin := 0
		if last_applied_rule_type == LEFT {
			index_begin = last_applied_rule_index
		}
		rules_to_apply = tryApplyLeftRules(ep, index_begin)
		debug(
			Lib.MkLazy(func() string {
				return fmt.Sprintf(
					"There is %v left rules available : %v ",
					len(rules_to_apply),
					rules_to_apply.toString(),
				)
			}),
		)
		return manageRule(ep, rules_to_apply, father)
	}
}

func manageRule(ep EqualityProblem, rsl ruleStructList, father chan answerEP) (bool, []Unif.Substitutions) {
	chan_tab := tryLaunchRule(ep, rsl)
	return selectAnswerEP(chan_tab, father)
}

func tryLaunchRule(ep EqualityProblem, rules ruleStructList) [](chan answerEP) {
	chan_tab := [](chan answerEP){}
	for _, r := range rules {
		chan_tab = append(chan_tab, launchApplyRules(r, ep))
	}
	return chan_tab
}

/* Lanch an equality reasoning problem, return a channel */
func launchApplyRules(rs ruleStruct, ep EqualityProblem) chan answerEP {
	chan_child := make(chan answerEP)
	go applyRule(rs, ep, chan_child, Glob.GetGID())
	return chan_child
}

/*** Retrieve result ***/

/* Wait for children to close. Return chen the fisrt child with a substitution answer */
func selectAnswerEP(chan_tab [](chan answerEP), chan_parent chan answerEP) (bool, []Unif.Substitutions) {
	// Instantiation
	cases := makeCases(chan_tab, chan_parent)
	hasAnswered := make([]bool, len(chan_tab)) // Everything to false
	remaining, indexQuit := len(chan_tab), len(chan_tab)
	answer_found := false
	stop_found := false
	substs_res := []Unif.Substitutions{}

	// Wait for at least on child to finish.
	// TODO : perte complétude here
	for remaining > 0 && !answer_found && !stop_found {
		debug(
			Lib.MkLazy(func() string {
				return fmt.Sprintf(
					"Remainig : %v - answer_found : %v - stop_found : %v",
					remaining,
					answer_found,
					stop_found,
				)
			}),
		)
		index, value, _ := reflect.Select(cases)
		remaining--
		if index == indexQuit {
			debug(Lib.MkLazy(func() string { return "Close order received" }))
			stop_found = true
		} else {
			res := value.Interface().(answerEP)
			debug(
				Lib.MkLazy(func() string {
					return fmt.Sprintf(
						"Received from %v : %v !",
						res.id,
						Unif.SubstListToString(res.substs),
					)
				}),
			)
			hasAnswered[index] = true
			if res.found {
				answer_found = true
				for _, s := range res.substs {
					substs_res = Unif.AppendIfNotContainsSubst(substs_res, s)
				}
			} else {
				debug(Lib.MkLazy(func() string { return "Child provide no solution" }))
			}
		}
	}

	debug(Lib.MkLazy(func() string { return "End of select" }))

	selectCleanup(hasAnswered, chan_tab)
	return answer_found, substs_res
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
