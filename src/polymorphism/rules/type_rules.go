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

/*******************/
/*  type_rules.go  */
/*******************/

package polyrules

import (
	"fmt"

	typing "github.com/GoelandProver/Goeland/polymorphism/typing"
)

/**
 * This file contains the rules for typing terms, and also the App rule.
 * The App rule is used for predicates and functions.
 **/

/* Applies the Var rule for a type variable: erase consequence */
func applyLocalTypeVarRule(state Sequent, root *ProofTree, fatherChan chan Reconstruct) Reconstruct {
	// Add applied rule to the prooftree
	root.appliedRule = "Var"

	// Find current variable in the local context
	if _, ok := getTypeFromLocalContext(state.localContext, state.consequence.a.(typing.TypeVar)); !ok {
		return Reconstruct{
			result: false,
			err: fmt.Errorf("TypeVar %s not found in the local context", state.consequence.a.ToString()),
		}
	}

	// No consequence: next rule is the WF rule.
	children := []Sequent{
		{
			globalContext: getGlobalContext(state.globalContext),
			localContext: state.localContext.copy(),
			consequence: Consequence{},
		},
	}

	return launchChildren(children, root, fatherChan)
}

/* Applies the Var rule for a type hint: erase consequence */
func applyGlobalTypeVarRule(state Sequent, root *ProofTree, fatherChan chan Reconstruct) Reconstruct {
	// Add applied rule to the prooftree
	root.appliedRule = "Var"

	// Find current variable in the local context
	if _, ok := getTypeFromGlobalContext(state.globalContext, state.consequence.a.ToTypeScheme()); !ok {
		return Reconstruct{
			result: false,
			err: fmt.Errorf("TypeVar %s not found in the local context", state.consequence.a.ToString()),
		}
	}

	// No consequence: next rule is the WF rule.
	children := []Sequent{
		{
			globalContext: getGlobalContext(state.globalContext),
			localContext: state.localContext.copy(),
			consequence: Consequence{},
		},
	}

	return launchChildren(children, root, fatherChan)
}

/* Applies Type rule: erase consequence */
func applyTypeWFRule(state Sequent, root *ProofTree, fatherChan chan Reconstruct) Reconstruct {
	// Add applied rule to the prooftree
	root.appliedRule = "Type"

	// WF child
	children := []Sequent{
		{
			globalContext: getGlobalContext(state.globalContext),
			localContext: state.localContext.copy(),
			consequence: Consequence{},
		},
	}

	return launchChildren(children, root, fatherChan)
}

/* Applies Cross rule */
func applyCrossRule(state Sequent, root *ProofTree, fatherChan chan Reconstruct) Reconstruct {
	// Add applied rule to the prooftree
	root.appliedRule = "Cross"

	if tc, ok := state.consequence.a.(typing.TypeCross); ok {
		// Construct a child for every type recovered
		return launchChildren(constructWithTypes(state, tc.GetAllUnderlyingTypes()), root, fatherChan)
	} else {
		return Reconstruct{
			result: false,
			err: fmt.Errorf("CrossRule type on something that is not a TypeCross: %s", state.consequence.a.ToString()),
		}
	}
}

/* Utils functions */

/* Finds the given term in the local context, returns false if it couldn't */
func getTypeFromLocalContext(localContext LocalContext, typeApp typing.TypeVar) (typing.TypeApp, bool) {
	for _, type_ := range localContext.typeVars {
		if typeApp.Equals(type_) {
			return type_, true
		}
	}
	return typing.TypeVar{}, false
}

/* Finds the given term in the global context, returns false if it couldn't */
func getTypeFromGlobalContext(context map[string][]typing.App, typeApp typing.TypeScheme) (typing.TypeScheme, bool) {
	for _, type_ := range context {
		for _, t := range type_ {
			if t.App.Equals(typeApp) {
				return t.App, true
			}
		}
	}
	return nil, false
}

/* Constructs all the children of a composed type */
func constructWithTypes(state Sequent, types []typing.TypeApp) []Sequent {
	children := []Sequent{}
	for _, type_ := range types {
		children = append(children, Sequent{
			globalContext: getGlobalContext(state.globalContext),
			localContext: state.localContext.copy(),
			consequence: Consequence{a: type_},
		})
	}
	return children
}