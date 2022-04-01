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

/*****************/
/*  contexts.go  */
/*****************/

package polyrules

import (
	"fmt"

	typing "github.com/GoelandProver/Goeland/polymorphism/typing"
	btypes "github.com/GoelandProver/Goeland/types/basic-types"
)

/**
 * This file defines the global & local contexts types.
 **/

/* Stores the local context */
type LocalContext struct {
	vars     []btypes.Var
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
	return len(lc.vars)+len(lc.typeVars) == 0
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

/* Stores the global context */
type GlobalContext struct {
	primitiveTypes   []typing.TypeHint
	composedType     map[string]typing.TypeCross
	simpleSchemes    map[string][]typing.TypeScheme
	polymorphSchemes map[string][]typing.QuantifiedType
}

/* Copies a GlobalContext into a new variable and returns it. */
func (gc GlobalContext) copy() GlobalContext {
	context := GlobalContext{
		primitiveTypes:   make([]typing.TypeHint, len(gc.primitiveTypes)),
		simpleSchemes:    make(map[string][]typing.TypeScheme),
		polymorphSchemes: make(map[string][]typing.QuantifiedType),
	}
	copy(context.primitiveTypes, gc.primitiveTypes)

	for name, list := range gc.simpleSchemes {
		context.simpleSchemes[name] = make([]typing.TypeScheme, len(list))
		copy(context.simpleSchemes[name], list)
	}

	for name, list := range gc.polymorphSchemes {
		context.polymorphSchemes[name] = make([]typing.QuantifiedType, len(list))
		copy(context.polymorphSchemes[name], list)
	}

	return context
}

/* Gets a simple / polymorphic type scheme from an ID, type variables, and terms */
func (gc GlobalContext) getTypeScheme(id btypes.Id, vars []typing.TypeApp, terms []btypes.Term) (typing.TypeScheme, error) {
	args, err := getArgsTypes(gc, terms)
	if err != nil {
		return nil, err
	}

	typeScheme, err := gc.getSimpleTypeScheme(id.GetName(), args)

	if args != nil && typeScheme == nil {
		typeScheme, err = gc.getPolymorphicTypeScheme(id.GetName(), len(vars), len(terms))
	}

	if err != nil {
		return nil, err
	}

	return typeScheme, nil
}

/* Search for a TypeScheme with the name & the arguments type */
func (gc GlobalContext) getSimpleTypeScheme(name string, termsType typing.TypeApp) (typing.TypeScheme, error) {
	if termsType == nil {
		if typeScheme, found := gc.simpleSchemes[name]; found {
			return typeScheme[0], nil
		} else {
			return nil, fmt.Errorf("No constant function with the name %s in the global context.", name)
		}
	}

	if typeSchemeList, found := gc.simpleSchemes[name]; found {
		for _, typeScheme := range typeSchemeList {
			if typing.GetInputType(typeScheme).ToTypeScheme().Equals(termsType.ToTypeScheme()) {
				return typeScheme, nil
			}
		}
	}
	return nil, fmt.Errorf("No predicate/function with the name %s in the global context.", name)
}

/* Gets the polymorphic type scheme corresponding to the input. */
func (gc GlobalContext) getPolymorphicTypeScheme(name string, varsLen, termsLen int) (typing.TypeScheme, error) {
	if typeSchemeList, found := gc.polymorphSchemes[name]; found {
		for _, typeScheme := range typeSchemeList {
			if termsLen == typeScheme.Size()-1 && varsLen == typeScheme.QuantifiedVarsLen() {
				return typeScheme, nil
			}
		}
	}
	return nil, fmt.Errorf("No predicate/function with the name %s in the global context.", name)
}

/* Returns true if the TypeHint is found in the context */
func (gc GlobalContext) isTypeInContext(typeApp typing.TypeScheme) bool {
	for _, type_ := range gc.primitiveTypes {
		if type_.Equals(typeApp) {
			return true
		}
	}
	for _, type_ := range gc.composedType {
		if type_.Equals(typeApp) {
			return true
		}
	}
	return false
}

/* Tests if there are no more TypeScheme stored (doesn't check for primitive types) */
func (gc GlobalContext) isEmpty() bool {
	result := true

	for _, app := range gc.simpleSchemes {
		result = result && (len(app) == 0)
	}
	for _, app := range gc.polymorphSchemes {
		result = result && (len(app) == 0)
	}

	return result
}

/* Utils */

/**
 * Creates a global context from all the types / type schemes recorded in the map of types.
 * Incrementally verifies if the context is well typed.
 * If not, an error is returned.
 **/
func createGlobalContext(context map[string][]typing.App) (GlobalContext, error) {
	globalContext := GlobalContext{
		primitiveTypes:   []typing.TypeHint{},
		composedType:     make(map[string]typing.TypeCross),
		simpleSchemes:    make(map[string][]typing.TypeScheme),
		polymorphSchemes: make(map[string][]typing.QuantifiedType),
	}

	// Fill first the primitive types
	for name, appList := range context {
		for _, app := range appList {
			if type_, isTypeHint := app.App.(typing.TypeHint); isTypeHint {
				if !typing.IsConstant(name) {
					globalContext.primitiveTypes = append(globalContext.primitiveTypes, type_)
				}
			}
		}
	}

	for name, appList := range context {
		// Then, fill everything else
		for _, app := range appList {
			switch type_ := app.App.(type) {
			case typing.TypeHint:
				if typing.IsConstant(name) {
					globalContext.simpleSchemes[name] = append(globalContext.simpleSchemes[name], type_)
				}
			case typing.TypeCross:
				globalContext.composedType[name] = type_
			case typing.TypeArrow:
				globalContext.simpleSchemes[name] = append(globalContext.simpleSchemes[name], type_)
			case typing.QuantifiedType:
				globalContext.polymorphSchemes[name] = append(globalContext.polymorphSchemes[name], type_)
			}
			if err := incrementalVerificationOfGlobalContext(globalContext.copy(), name, app.App); err != nil {
				return GlobalContext{}, err
			}
		}
	}

	if !globalContextIsWellTyped {
		globalContextIsWellTyped = true
	}
	return globalContext, nil
}

/**
 * Triggers rules to verify the global context while it's constructed.
 * It will avoid combinatorial explosion on global context well formedness verification.
 **/
func incrementalVerificationOfGlobalContext(globalContext GlobalContext, name string, app typing.TypeScheme) error {
	if globalContextIsWellTyped {
		return nil
	}

	sequent := Sequent{
		globalContext: globalContext,
		localContext:  LocalContext{},
	}
	rec := Reconstruct{err: nil}
	proofTree, chan_ := new(ProofTree), make(chan Reconstruct)

	switch type_ := app.(type) {
	case typing.TypeCross:
		sequent.consequence = Consequence{a: type_}
		rec = applyCrossRule(sequent, proofTree, chan_)
	case typing.QuantifiedType, typing.TypeArrow:
		sequent.consequence = Consequence{s: app}
		rec = applySymRule(sequent, proofTree, chan_)
	case typing.TypeHint:
		if typing.IsConstant(name) {
			sequent.consequence = Consequence{a: type_}
			rec = applyGlobalTypeVarRule(sequent, proofTree, chan_)
		}
	}
	return rec.err
}
