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

/********************/
/*  apply_rules.go  */
/********************/

package polyrules

import (
	"fmt"

	typing "github.com/GoelandProver/Goeland/polymorphism/typing"
	btypes "github.com/GoelandProver/Goeland/types/basic-types"
)

/**
 * This file contains all the rules of the typing system.
 **/

const (
	formIsSet = iota
	termIsSet = iota
	typeIsSet = iota
	noConsequence = iota
)

/* Launch the rules depending on what's on the right side of the sequent. */
func applyRule(state Sequent, root *ProofTree, fatherChan chan Reconstruct) Reconstruct {
	// Only one of the three should be set
	if !onlyOneConsequenceIsSet(state) {
		return Reconstruct{
			result: false, 
			err: fmt.Errorf("Multiple elements on the right-side of the sequent. Cannot type this system."),
		}
	}

	// The applicable rules depend on what is set: the form, the term, or the type ?
	switch whatIsSet(state.consequence) {
	case formIsSet:
		return applyFormRule(state, root, fatherChan)
	case termIsSet:
		return applyTermRule(state, root, fatherChan)
	case typeIsSet:
		return applyTypeRule(state, root, fatherChan)
	case noConsequence:
		return applyWFRule(state, root, fatherChan)
	}

	return Reconstruct{result: true, err: nil}
}

/* Applies one of the forms rule based on the type of the form. */
func applyFormRule(state Sequent, root *ProofTree, fatherChan chan Reconstruct) Reconstruct {
	var rec Reconstruct
	switch (state.consequence.f).(type) {
	case btypes.All, btypes.AllType, btypes.Ex:
		rec = applyQuantRule(state, root, fatherChan)
	case btypes.And, btypes.Or:
		rec = applyNAryRule(state, root, fatherChan)
	case btypes.Imp, btypes.Equ:
		rec = applyBinaryRule(state, root, fatherChan)
	case btypes.Top, btypes.Bot:
		rec = applyBotTopRule(state, root, fatherChan)
	case btypes.Not:
		rec = applyNotRule(state, root, fatherChan)
	case btypes.Pred:
		// TODO: = rule
		rec = applyAppRule(state, root, fatherChan)
	}
	return rec
}

/* Applies one of the terms rule based on the type of the form. */
func applyTermRule(state Sequent, root *ProofTree, fatherChan chan Reconstruct) Reconstruct {
	var rec Reconstruct
	switch (state.consequence.t).(type) {
	case btypes.Fun:
		rec = applyAppRule(state, root, fatherChan)
	case btypes.Var:
		rec = applyVarRule(state, root, fatherChan)
		// Metas shoudln't appear in the formula yet.
		// IDs are not a real Term.
	}
	return rec
}

/* Applies one of the types rule based on the type of the form. */
func applyTypeRule(state Sequent, root *ProofTree, fatherChan chan Reconstruct) Reconstruct {
	var rec Reconstruct
	switch type_ := (state.consequence.a).(type) {
	case typing.TypeHint:
		if type_.Equals(metaType) {
			rec = applyTypeWFRule(state, root, fatherChan)
		} else {
			rec = applyGlobalTypeVarRule(state, root, fatherChan)
		}
	case typing.TypeVar:
		rec = applyLocalTypeVarRule(state, root, fatherChan)
	case typing.TypeCross:
		// Apply composed rule: launch a child for each TypeHint of the composed type. 
		rec = applyCrossRule(state, root, fatherChan)
		// There shouldn't be any TypeArrow: can not type a variable with it in first order.
	}
	return rec
}

/* Applies one of the WF rule based on the type of the form. */
func applyWFRule(state Sequent, root *ProofTree, fatherChan chan Reconstruct) Reconstruct {
	if (state.localContext.isEmpty()) {
		root.appliedRule = "WF_0"
		return Reconstruct{
			result: true,
			err: nil,
		}
	}

	return applyWF1(state, root, fatherChan)
}

func applyWF1(state Sequent, root *ProofTree, fatherChan chan Reconstruct) Reconstruct {
	root.appliedRule = "WF_1"

	// Try to empty vars first
	if len(state.localContext.vars) > 0 {
		// Launch child on the type of the first var
		var_, newLocalContext := state.localContext.popVar()
		child := []Sequent{
			{
				localContext: newLocalContext,
				globalContext: getGlobalContext(state.globalContext),
				consequence: Consequence{a: var_.GetTypeApp()},
			},
		}
		return launchChildren(child, root, fatherChan)
	}

	// Then, if vars is not empty, empty the types
	_, newLocalContext := state.localContext.popTypeVar()
	child := []Sequent{
		{
			localContext: newLocalContext,
			globalContext: getGlobalContext(state.globalContext),
			consequence: Consequence{a: metaType},
		},
	}
	return launchChildren(child, root, fatherChan)
}

/* Checks that at most one consequence of the sequent is set. */
func onlyOneConsequenceIsSet(state Sequent) bool {
	isFormSet := state.consequence.f != nil
	isTermSet := state.consequence.t != nil
	isTypeSet := state.consequence.a != nil

	return !((isFormSet && isTermSet) || (isFormSet && isTypeSet) || (isTermSet && isTypeSet))
}

/** 
 * Returns what is set in the consequence of the sequent. Either it's the form, 
 * the term, or the type. 
 * It doesn't check if multiple elements are set, it should be done before.
 **/
func whatIsSet(cons Consequence) int {
	var set int 
	if cons.f != nil {
		set = formIsSet
	} else if cons.t != nil {
		set = termIsSet
	} else if cons.a != nil {
		set = typeIsSet
	} else {
		set = noConsequence
	}
	return set
}