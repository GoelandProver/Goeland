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
	var index int
	var id btypes.Id
	var terms []btypes.Term
	var vars []typing.TypeApp

	if whatIsSet(state.consequence) == formIsSet {
		index = (state.consequence.f).(btypes.Pred).GetIndex()
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
	typeScheme, err := state.globalContext.getTypeScheme(id, vars, terms)
	if err != nil {
		return Reconstruct{
			result: false,
			err:    err,
		}
	}

	// Affect new type scheme to the prooftree
	root.typeScheme = typeScheme
	primitives := typeScheme.GetPrimitives()

	// Type predicate or function
	if whatIsSet(state.consequence) == formIsSet {
		fTyped := btypes.MakePred(index, id, terms, vars, typeScheme)
		return reconstructForm(launchChildren(createAppChildren(state, vars, terms, primitives), root, fatherChan), fTyped)
	} else {
		fTyped := btypes.MakeFun(id, terms, vars, typeScheme)
		return reconstructTerm(launchChildren(createAppChildren(state, vars, terms, primitives), root, fatherChan), fTyped)
	}
}

/* Applies the Var rule for a term variable. */
func applyVarRule(state Sequent, root *ProofTree, fatherChan chan Reconstruct) Reconstruct {
	// Add applied rule to the prooftree
	root.appliedRule = "Var"

	// Find current variable in the local context
	if _, ok := getTermFromLocalContext(state.localContext, state.consequence.t); !ok {
		return Reconstruct{
			result: false,
			err:    fmt.Errorf("term %s not found in the local context", state.consequence.t.ToString()),
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

	return reconstructTerm(launchChildren(children, root, fatherChan), state.consequence.t)
}

/* Utils functions */

/**
 * Takes all the types of the terms and makes a cross product of everything
 **/
func getArgsTypes(context GlobalContext, terms []btypes.Term) (typing.TypeApp, error) {
	if len(terms) == 0 {
		return nil, nil
	}

	var types []typing.TypeApp

	for _, term := range terms {
		switch tmpTerm := term.(type) {
		case btypes.Fun:
			typeScheme, err := context.getTypeScheme(
				tmpTerm.GetID(),
				tmpTerm.GetTypeVars(),
				tmpTerm.GetArgs(),
			)
			if err != nil {
				return nil, err
			}
			if typeScheme == nil {
				return nil, fmt.Errorf("function %s not found in global context", tmpTerm.GetName())
			}
			types = append(types, typing.GetOutType(typeScheme))
		case btypes.Var:
			// Variables can't be of type TypeScheme, so this line shouldn't fail.
			types = append(types, tmpTerm.GetTypeApp())
		// There shouldn't be Metas yet.
		case btypes.Meta:
			global.PrintDebug("GAT", "Found a Meta while typing everything.")
			// ID is filtered out
		}
	}

	return typing.MkTypeCross(types...), nil
}

/* Creates children for app rule */
func createAppChildren(state Sequent, vars []typing.TypeApp, terms []btypes.Term, primitives []typing.TypeApp) []Sequent {
	children := []Sequent{}

	// 1 for each type in the vars
	for _, var_ := range vars {
		children = append(children, Sequent{
			globalContext: state.globalContext,
			localContext:  state.localContext.copy(),
			consequence:   Consequence{a: var_},
		})
	}

	// 1 for each term
	for i, term := range terms {
		switch t := term.(type) {
		case btypes.Fun:
			term = btypes.MakeFun(t.GetID(), t.GetArgs(), t.GetTypeVars(), primitives[i].(typing.TypeScheme))
		case btypes.Meta:
			term = btypes.MakeMeta(t.GetIndex(), t.GetName(), t.GetFormula(), primitives[i])
		case btypes.Var:
			term = btypes.MakeVar(t.GetIndex(), t.GetName(), primitives[i])
		}
		children = append(children, Sequent{
			globalContext: state.globalContext,
			localContext:  state.localContext.copy(),
			consequence:   Consequence{t: term},
		})
	}

	return children
}

/* Finds the given term in the local context, returns false if it couldn't */
func getTermFromLocalContext(localContext LocalContext, term btypes.Term) (btypes.Var, bool) {
	for _, var_ := range localContext.vars {
		if var_.Equals(term) {
			return var_, true
		}
	}
	return btypes.Var{}, false
}
