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
/*  terms_rules.go  */
/********************/

package polyrules

import (
	"fmt"

	"github.com/GoelandProver/Goeland/global"
	typing "github.com/GoelandProver/Goeland/polymorphism/typing"
	btypes "github.com/GoelandProver/Goeland/types/basic-types"
)

/**
 * This file contains the rules for typing terms, and also the App rule.
 * The App rule is used for predicates and functions.
 **/

/* Applies the App rule for predicates or functions */
func applyAppRule(state Sequent, root *ProofTree, fatherChan chan Reconstruct) Reconstruct {
	var id btypes.Id
	var terms []btypes.Term
	var vars  []typing.TypeApp

	if whatIsSet(state.consequence) == formIsSet {
		id = (state.consequence.f).(btypes.Pred).GetID()
		terms = (state.consequence.f).(btypes.Pred).GetArgs()
		vars = (state.consequence.f).(btypes.Pred).GetTypeVars()
	} else {
		id = (state.consequence.t).(btypes.Fun).GetID()
		terms = (state.consequence.t).(btypes.Fun).GetArgs()
		vars = (state.consequence.t).(btypes.Fun).GetTypeVars()
	}

	root.appliedRule = "App"

	// Search for the ID in the global context
	typeScheme := getTypeSchemeFromGlobalContext(state.globalContext, id, vars, terms)
	if typeScheme == nil {
		return Reconstruct{
			result: false,
			err: fmt.Errorf("App not found in the global context: %s", id.GetName()),
		}
	}

	// Type predicate or function
	if whatIsSet(state.consequence) == formIsSet {
		// For an unknown reason, Go doesn't want setter to modify the object !
		// Wonderful!
		fTyped := btypes.MakePred(id, terms, vars, typeScheme)
		return reconstructForm(launchChildren(createAppChildren(state, vars, terms), root, fatherChan), fTyped)
	} else {
	 	//fTyped := btypes.MakeFun(id, terms, vars, typeScheme)
		//return reconstructTerm(launchChildren(createAppChildren(state, vars, terms), root, fatherChan), fTyped)
	}	
	return Reconstruct{}
}


/**
 * Takes all the types of the terms and makes a cross product of everything
 **/
func getArgsTypes(context map[string][]typing.App, terms []btypes.Term) typing.TypeApp {
	if len(terms) == 0 {
		return nil
	}

	var types []typing.TypeApp

	for _, term := range terms {
		switch tmpTerm := term.(type) {
		case btypes.Fun:
			types = append(types, typing.GetOutType(getTypeSchemeFromGlobalContext(
				context, 
				tmpTerm.GetID(), 
				tmpTerm.GetTypeVars(), 
				tmpTerm.GetArgs())),
			)
		case btypes.Var:
			// Variables can't be of type TypeScheme, so this line shouldn't fail.
			types = append(types, tmpTerm.GetTypeHint().(typing.TypeApp))
		// There shouldn't be Metas yet.
		case btypes.Meta:
			global.PrintDebug("GAT", "Found a Meta while typing everything.")
			// ID is filtered out
		}
	}

	return typing.MkTypeCross(types...)
}

/* Creates children for app rule */
func createAppChildren(state Sequent, vars []typing.TypeApp, terms []btypes.Term) []Sequent {
	children := []Sequent{}

	// 1 for each type in the vars
	for _, var_ := range vars {
		children = append(children, Sequent{
			globalContext: getGlobalContext(state.globalContext),
			localContext: state.localContext.copy(),
			consequence: Consequence{a: var_},
		})
	}

	// 1 for each term 
	for _, term := range terms {
		children = append(children, Sequent{
			globalContext: getGlobalContext(state.globalContext),
			localContext: state.localContext.copy(),
			consequence: Consequence{t: term},
		})
	}

	return children
}