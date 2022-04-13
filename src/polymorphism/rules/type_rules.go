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
			err:    fmt.Errorf("TypeVar %s not found in the local context", state.consequence.a.ToString()),
		}
	}

	// No consequence: next rule is the WF rule.
	children := []Sequent{
		{
			globalContext: state.globalContext,
			localContext:  state.localContext.copy(),
			consequence:   Consequence{},
		},
	}

	return launchChildren(children, root, fatherChan)
}

/* Applies the Var rule for a type hint: erase consequence */
func applyGlobalTypeVarRule(state Sequent, root *ProofTree, fatherChan chan Reconstruct) Reconstruct {
	// Add applied rule to the prooftree
	root.appliedRule = "Var"

	// Find current variable in the local context
	if found := state.globalContext.isTypeInContext(state.consequence.a.ToTypeScheme()); !found {
		return Reconstruct{
			result: false,
			err:    fmt.Errorf("TypeVar %s not found in the global context", state.consequence.a.ToString()),
		}
	}

	// No consequence: next rule is the WF rule.
	children := []Sequent{
		{
			globalContext: state.globalContext,
			localContext:  state.localContext.copy(),
			consequence:   Consequence{},
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
			globalContext: state.globalContext,
			localContext:  state.localContext.copy(),
			consequence:   Consequence{},
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
			err:    fmt.Errorf("CrossRule type on something that is not a TypeCross: %s", state.consequence.a.ToString()),
		}
	}
}

/* Sym rule: a child for each type in the input, and one for the output if it's a function */
func applySymRule(state Sequent, root *ProofTree, fatherChan chan Reconstruct) Reconstruct {
	root.appliedRule = "Sym"

	primitives := state.consequence.s.GetPrimitives()
	out := typing.GetOutType(state.consequence.s)

	newLocalContext := state.localContext.copy()
	if qt, found := state.consequence.s.(typing.QuantifiedType); found {
		newLocalContext.typeVars = append(newLocalContext.typeVars, qt.QuantifiedVars()...)
	}

	children := []Sequent{}
	if out.ToTypeScheme() != nil && !out.ToTypeScheme().Equals(typing.DefaultProp().ToTypeScheme()) {
		children = append(children, Sequent{
			globalContext: state.globalContext,
			localContext:  newLocalContext,
			consequence:   Consequence{a: out},
		})
	}

	for _, type_ := range primitives[:len(primitives)-1] {
		children = append(children, Sequent{
			globalContext: state.globalContext,
			localContext:  newLocalContext,
			consequence:   Consequence{a: type_},
		})
	}

	return launchChildren(children, root, fatherChan)
}

/* AppType rule: a child for each type in the input, and checks if the parameterized type exists. */
func applyAppTypeRule(state Sequent, root *ProofTree, fatherChan chan Reconstruct) Reconstruct {
	root.appliedRule = "App"

	type_ := state.consequence.a.(typing.ParameterizedType)
	types := type_.GetParameters()

	// Search for the ID in the global context
	if !state.globalContext.parameterizedTypesContains(type_.ToString()) {
		return Reconstruct{
			result: false,
			err:    fmt.Errorf("parameterized Type %s not in context", type_.ToString()),
		}
	}

	children := []Sequent{}
	for _, type_ := range types {
		children = append(children, Sequent{
			globalContext: state.globalContext,
			localContext:  state.localContext.copy(),
			consequence:   Consequence{a: type_},
		})
	}

	return launchChildren(children, root, fatherChan)
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

/* Constructs all the children of a composed type */
func constructWithTypes(state Sequent, types []typing.TypeApp) []Sequent {
	children := []Sequent{}
	for _, type_ := range types {
		children = append(children, Sequent{
			globalContext: state.globalContext,
			localContext:  state.localContext.copy(),
			consequence:   Consequence{a: type_},
		})
	}
	return children
}
