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

/**************/
/*  rules.go  */
/**************/

package polyrules

import (
	"reflect"

	typing "github.com/GoelandProver/Goeland/polymorphism/typing"
	basictypes "github.com/GoelandProver/Goeland/types/basic-types"
	btypes "github.com/GoelandProver/Goeland/types/basic-types"
)

/**
 * This file contains the functions to create a typing proof tree.
 * It defines the TypingProofTree structure and all the rules to check if a
 * system is well-typed.
 **/

/* Stores the local context */
type LocalContext struct {
	vars 	 []btypes.Var
	typeVars []typing.TypeVar
}

/* LocalContext methods */

/* Adds a var to a copy of the local context and returns it. */
func (lc LocalContext) addVar(var_ btypes.Var) LocalContext {
	newLc := lc.copy()
	newLc.vars = append(newLc.vars, var_)
	return newLc
}

/* Adds a type var to a copy of the local context and returns it. */
func (lc LocalContext) addTypeVar(var_ typing.TypeVar) LocalContext {
	newLc := lc.copy()
	newLc.typeVars = append(newLc.typeVars, var_)
	return newLc
}

/* Copies a LocalContext. */
func (lc LocalContext) copy() LocalContext {
	newVars := make([]btypes.Var, len(lc.vars))
	newTypeVars := make([]typing.TypeVar, len(lc.typeVars))
	copy(newVars, lc.vars)
	copy(newTypeVars, lc.typeVars)
	return LocalContext{vars: newVars, typeVars: newTypeVars}
}

/* True if all the slices are cleared */
func (lc LocalContext) isEmpty() bool {
	return len(lc.vars) + len(lc.typeVars) == 0
}

/**
 * Copies the context and pops the first var (and returns it with the new local context). 
 * It doesn't check if the size of the array is positive, it should be checked before.
 **/
func (lc LocalContext) popVar() (btypes.Var, LocalContext) {
	newLc := lc.copy()
	newLc.vars = newLc.vars[1:]
	return lc.vars[0], newLc
}

/**
 * Copies the context and pops the first type var (and returns it with the new local context). 
 * It doesn't check if the size of the array is positive, it should be checked before.
 **/
func (lc LocalContext) popTypeVar() (typing.TypeVar, LocalContext) {
	newLc := lc.copy()
	newLc.typeVars = newLc.typeVars[1:]
	return lc.typeVars[0], newLc
}

/* Stores the consequence of the sequent */
type Consequence struct {
	f btypes.Form
	t btypes.Term
	a typing.TypeApp
}

/* A Sequent is formed of a global context, local context, and a formula or a term to type */
type Sequent struct {
	globalContext map[string][]typing.App
	localContext LocalContext
	consequence Consequence
}

/* Makes a typing prooftree to output. */
type ProofTree struct {
	sequent Sequent 
	appliedRule string 
	typeScheme typing.TypeScheme
	children []*ProofTree
}

/* ProofTree meta-type */
var metaType typing.TypeHint

/* ProofTree methods */

/* Creates and adds a child to the prooftree and returns it. */
func (pt *ProofTree) addChildWith(sequent Sequent) *ProofTree {
	child := ProofTree{
		sequent: sequent,
		children: []*ProofTree{},
	}
	pt.children = append(pt.children, &child)
	return &child
}

/**
 * Tries to type form.
 * If the system is well-formed, all subforms and subterms of the formula will 
 * be typed after this step.
 * Otherwise, it will return an error.
 **/
func WellFormedVerification(form btypes.Form, dump bool) (btypes.Form, error) {
	// Sequent creation
	state := Sequent{
		globalContext: getGlobalContext(typing.GetGlobalContext()),
		localContext: LocalContext{vars: []btypes.Var{}, typeVars: []typing.TypeVar{}},
		consequence: Consequence{f: form},
	}

	// Prooftree creation
	root := ProofTree{
		sequent: state,
		children: []*ProofTree{},
	}

	// Instanciate meta type
	metaType = typing.MkTypeHint("Type")

	// Launch the typing system
	form, err := launchRuleApplication(state, &root)

	// Dump prooftree in json if it's asked & there is no error
	if err == nil && dump {
		root.DumpJson()
	}

	return form, err
}

// TODO: copy global context if WF1 rule is found useful
func getGlobalContext(context map[string][]typing.App) map[string][]typing.App {
	return context
}

// If WF1 rule is found useful, we can not do that anymore.
func getTypeSchemeFromGlobalContext(context map[string][]typing.App, id btypes.Id, vars []typing.TypeApp, terms []btypes.Term) typing.TypeScheme {
	args := getArgsTypes(context, terms)
	if args == nil {
		return typing.GetType(id.GetName())
	}

	typeScheme := typing.GetType(id.GetName(), args)
	if typeScheme == nil {
		typeScheme = typing.GetPolymorphicType(id.GetName(), len(vars), len(terms))
	}
	return typeScheme
}

/* Reconstructs a Form depending on what the children has returned */
func reconstructForm(reconstruction Reconstruct, baseForm btypes.Form) Reconstruct {
	if !reconstruction.result {
		return reconstruction
	}

	var f btypes.Form
	switch form := baseForm.(type) {
	case btypes.All:
		f = btypes.MakeAll(form.GetVarList(), unquantify(reconstruction.forms[1], form))
	case btypes.AllType:
		f = btypes.MakeAllType(form.GetVarList(), unquantify(reconstruction.forms[1], form)) 
	case btypes.Ex:
		f = btypes.MakeEx(form.GetVarList(), unquantify(reconstruction.forms[1], form))
	case btypes.And:
		f = btypes.MakeAnd(reconstruction.forms)
	case btypes.Or:
		f = btypes.MakeOr(reconstruction.forms)
	case btypes.Imp:
		f = btypes.MakeImp(reconstruction.forms[0], reconstruction.forms[1])
	case btypes.Equ:
		f = btypes.MakeEqu(reconstruction.forms[0], reconstruction.forms[1])
	case btypes.Not:
		f = btypes.MakeNot(reconstruction.forms[0])
	case btypes.Pred:
		f = form
	}

	return Reconstruct{result: true, forms: []btypes.Form{f}, err: nil}
}

/* Reconstructs a Term depending on what the children has returned */
func reconstructTerm(reconstruction Reconstruct, baseTerm btypes.Term) Reconstruct {
	if !reconstruction.result {
		return reconstruction
	}

	return Reconstruct{result: true, terms: []btypes.Term{baseTerm}, err: nil}
}

/* Utils for reconstructions function */

/* Removes all the quantifiers of form of the same type of quant. */
func unquantify(form basictypes.Form, quant btypes.Form) btypes.Form {
	for reflect.TypeOf(form) == reflect.TypeOf(quant) {
		switch quant.(type) {
		case btypes.All:
			form = form.(btypes.All).GetForm()
		case btypes.AllType:
			form = form.(btypes.AllType).GetForm()
		case btypes.Ex:
			form = form.(btypes.Ex).GetForm()
		}
	}
	return form
}