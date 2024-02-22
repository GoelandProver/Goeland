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

package polyrules

import (
	"fmt"
	"reflect"

	btypes "github.com/GoelandProver/Goeland/types/basic-types"
)

/**
 * This file manages everything related to parallelism / concurrency.
 **/

type Reconstruct struct {
	result bool
	forms  []btypes.Form
	terms  *btypes.TermList
	err    error
}

/* Launches the first instance of applyRule. Do this to launch the typing system. */
func launchRuleApplication(state Sequent, root *ProofTree) (btypes.Form, error) {
	superFatherChan := make(chan Reconstruct)
	go tryApplyRule(state, root, superFatherChan)
	res := <-superFatherChan
	return treatReturns(res)
}

/* Launches applyRule and manages the error return. */
func tryApplyRule(state Sequent, root *ProofTree, fatherChan chan Reconstruct) {
	select {
	case <-fatherChan: // Message from the father received: it can only be a kill order.
	default:
		// No kill order, it's still properly typed, let's apply the next rules.
		reconstruct := applyRule(state, root, fatherChan)
		select {
		case <-fatherChan: // Kill order received, it's finished anyway.
		case fatherChan <- reconstruct: // Otherwise, send result to father.
		}
	}
}

/* Launch each sequent in a goroutine if sequent length > 1. */
func launchChildren(sequents []Sequent, root *ProofTree, fatherChan chan Reconstruct) Reconstruct {
	if len(sequents) == 1 {
		// Do not launch another goroutine if the applied rule has only 1 child.
		return applyRule(sequents[0], root.addChildWith(sequents[0]), fatherChan)
	} else {
		// Create a channel for each child, and launch it in a goroutine.
		chanTab := make([](chan Reconstruct), len(sequents))
		for i, sequent := range sequents {
			childChan := make(chan Reconstruct)
			chanTab[i] = childChan
			go tryApplyRule(sequent, root.addChildWith(sequent), childChan)
		}
		// If a child dies with an error, stops the typesearch procedure.
		return selectSequents(chanTab, fatherChan)
	}
}

/**
 * Waits for all the children to close.
 * If an error is received, stops the type-search of every children and sends an error
 * to the parent.
 **/
func selectSequents(chansTab [](chan Reconstruct), chanQuit chan Reconstruct) Reconstruct {
	// Instantiation
	cases := makeCases(chansTab, chanQuit)
	hasAnswered := make([]bool, len(chansTab)) // Everything to false
	remaining, indexQuit := len(chansTab), len(chansTab)
	var errorFound error = nil

	forms := make([]btypes.Form, len(chansTab))
	terms := btypes.NewTermList()

	// Wait for all children to finish.
	for remaining > 0 && errorFound == nil {
		index, value, _ := reflect.Select(cases)
		remaining--
		if index == indexQuit {
			errorFound = fmt.Errorf("father detected an error")
		} else {
			res := value.Interface().(Reconstruct)
			hasAnswered[index] = true
			if !res.result {
				errorFound = res.err
			} else {
				// Once the child sends back to the father, it should only have one item.
				if len(res.forms) == 1 {
					forms[index] = res.forms[0]
				}
				if res.terms.Len() == 1 {
					terms.Set(index, res.terms.Get(0))
				}
			}
		}
	}

	selectCleanup(errorFound, hasAnswered, chansTab)
	return Reconstruct{result: errorFound == nil, forms: forms, terms: terms, err: errorFound}
}

/* Utils functions for selectSequents */

/* Makes the array of cases from the channels */
func makeCases(chansTab [](chan Reconstruct), chanQuit chan Reconstruct) []reflect.SelectCase {
	cases := make([]reflect.SelectCase, len(chansTab)+1)
	// Children
	for i, chan_ := range chansTab {
		cases[i] = reflect.SelectCase{Dir: reflect.SelectRecv, Chan: reflect.ValueOf(chan_)}
	}
	// Father
	cases[len(chansTab)] = reflect.SelectCase{Dir: reflect.SelectRecv, Chan: reflect.ValueOf(chanQuit)}
	return cases
}

/* If an error was found, kills all the children. */
func selectCleanup(errorFound error, hasAnswered []bool, chansTab [](chan Reconstruct)) {
	if errorFound != nil {
		for i, answered := range hasAnswered {
			if !answered {
				select {
				case <-chansTab[i]: // Filter out, he already responded
				case chansTab[i] <- Reconstruct{result: false, err: errorFound}: // Kill child
				}
			}
		}
	}
}

/* Treats the different return types of the system. */
func treatReturns(res Reconstruct) (btypes.Form, error) {
	if !res.result {
		return nil, res.err
	} else {
		if len(res.forms) == 0 {
			return nil, res.err
		}
		if len(res.forms) > 1 {
			return nil, fmt.Errorf("more than one formula is returned by the typing system")
		}
		return res.forms[0], res.err
	}
}
