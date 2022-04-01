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
/*  forms_rules.go  */
/********************/

package polyrules

import (
	typing "github.com/GoelandProver/Goeland/polymorphism/typing"
	btypes "github.com/GoelandProver/Goeland/types/basic-types"
)

/**
 * This file contains all the rules that the typing system can apply on a formula.
 **/

/* Applies quantification rule and launches 2 goroutines waiting its children. */
func applyQuantRule(state Sequent, root *ProofTree, fatherChan chan Reconstruct) Reconstruct {
	// Add rule to prooftree
	switch (state.consequence.f).(type) {
	case btypes.All, btypes.AllType:
		root.appliedRule = "∀"
	case btypes.Ex:
		root.appliedRule = "∃"
	}

	var newForm btypes.Form
	var varTreated btypes.Var
	var typeTreated typing.TypeVar

	varInstantiated := false

	switch f := (state.consequence.f).(type) {
	case btypes.All, btypes.Ex:
		varTreated, newForm = removeOneVar(state.consequence.f)
		varInstantiated = true
	case btypes.AllType:
		v := f.GetVarList()[0]
		if len(f.GetVarList()) > 1 {
			typeTreated, newForm = v, btypes.MakeAllType(f.GetVarList()[1:], f.GetForm())
		} else {
			typeTreated, newForm = v, f.GetForm()
		}
	}

	// Create 2 children:
	//	1 - First one with the type of the quantified variable. It should be a TypeApp.
	//	2 - Second one with the quantified variable added in the local context.
	// => copy the local context and use the function to get the global context (copy or not).
	// The underlying form should be gotten to be properly typed.
	children := mkQuantChildren(state, varInstantiated, varTreated, typeTreated, newForm)

	// Launch the children in a goroutine, and wait for it to close.
	// If one branch closes with an error, then the system is not well-typed.
	return reconstructForm(launchChildren(children, root, fatherChan), state.consequence.f)
}

/* Applies OR or AND rule and launches n goroutines waiting its children */
func applyNAryRule(state Sequent, root *ProofTree, fatherChan chan Reconstruct) Reconstruct {
	formList := btypes.MakeEmptyFormList()
	// Add rule to prooftree
	switch f := (state.consequence.f).(type) {
	case btypes.And:
		root.appliedRule = "∧"
		formList = f.GetLF()
	case btypes.Or:
		root.appliedRule = "∨"
		formList = f.GetLF()
	}

	// Construct children with all the formulas
	children := []Sequent{}
	for _, form := range formList {
		children = append(children, Sequent{
			globalContext: state.globalContext,
			localContext:  state.localContext.copy(),
			consequence:   Consequence{f: form},
		})
	}

	// Launch the children in a goroutine, and wait for it to close.
	// If one branch closes with an error, then the system is not well-typed.
	return reconstructForm(launchChildren(children, root, fatherChan), state.consequence.f)
}

/* Applies => or <=> rule and launches 2 goroutines waiting its children */
func applyBinaryRule(state Sequent, root *ProofTree, fatherChan chan Reconstruct) Reconstruct {
	var f1, f2 btypes.Form
	// Add rule to prooftree
	switch f := (state.consequence.f).(type) {
	case btypes.Imp:
		root.appliedRule = "⇒"
		f1, f2 = f.GetF1(), f.GetF2()
	case btypes.Equ:
		root.appliedRule = "⇔"
		f1, f2 = f.GetF1(), f.GetF2()
	}

	// Construct children with the 2 formulas
	children := []Sequent{
		{
			globalContext: state.globalContext,
			localContext:  state.localContext.copy(),
			consequence:   Consequence{f: f1},
		},
		{
			globalContext: state.globalContext,
			localContext:  state.localContext.copy(),
			consequence:   Consequence{f: f2},
		},
	}

	// Launch the children in a goroutine, and wait for it to close.
	// If one branch closes with an error, then the system is not well-typed.
	return reconstructForm(launchChildren(children, root, fatherChan), state.consequence.f)
}

/* Applies BOT or TOP rule and does not create a new goroutine */
func applyBotTopRule(state Sequent, root *ProofTree, fatherChan chan Reconstruct) Reconstruct {
	// Add rule to prooftree
	switch (state.consequence.f).(type) {
	case btypes.Top:
		root.appliedRule = "⊤"
	case btypes.Bot:
		root.appliedRule = "⊥"
	}

	// Construct children with the contexts
	children := []Sequent{
		{
			globalContext: state.globalContext,
			localContext:  state.localContext.copy(),
			consequence:   Consequence{},
		},
	}

	// If the branch closes with an error, then the system is not well-typed.
	return reconstructForm(launchChildren(children, root, fatherChan), state.consequence.f)
}

func applyNotRule(state Sequent, root *ProofTree, fatherChan chan Reconstruct) Reconstruct {
	// Add rule to prooftree
	root.appliedRule = "¬"
	form := (state.consequence.f).(btypes.Not).GetForm()

	// Construct children with the contexts
	children := []Sequent{
		{
			globalContext: state.globalContext,
			localContext:  state.localContext.copy(),
			consequence:   Consequence{f: form},
		},
	}

	// If the branch closes with an error, then the system is not well-typed.
	return reconstructForm(launchChildren(children, root, fatherChan), state.consequence.f)
}

/**
 * Removes the first variable of an exitential or universal form, and returns a
 * universal / existential form iff it still possesses other vars.
 * Otherwise, it returns the form gotten with GetForm().
 **/
func removeOneVar(form btypes.Form) (btypes.Var, btypes.Form) {
	// It's pretty much the same thing, but I don't have a clue on how to factorize this..
	switch f := form.(type) {
	case btypes.Ex:
		v := f.GetVarList()[0]
		if len(f.GetVarList()) > 1 {
			return v, btypes.MakeEx(f.GetVarList()[1:], f.GetForm())
		}
		return v, f.GetForm()
	case btypes.All:
		v := f.GetVarList()[0]
		if len(f.GetVarList()) > 1 {
			return v, btypes.MakeAll(f.GetVarList()[1:], f.GetForm())
		}
		return v, f.GetForm()
	}
	return btypes.Var{}, nil
}

/* Makes the child treating the variable depending on which is set. */
func mkQuantChildren(state Sequent, varInstantiated bool, varTreated btypes.Var, typeTreated typing.TypeVar, newForm btypes.Form) []Sequent {
	var type_ typing.TypeApp
	var newLocalContext LocalContext
	if varInstantiated {
		type_ = varTreated.GetTypeApp()
		newLocalContext = state.localContext.addVar(varTreated)
	} else {
		type_ = metaType
		newLocalContext = state.localContext.addTypeVar(typeTreated)
	}

	return []Sequent{
		{
			globalContext: state.globalContext,
			localContext:  state.localContext.copy(),
			consequence:   Consequence{a: type_},
		},
		{
			globalContext: state.globalContext,
			localContext:  newLocalContext,
			consequence:   Consequence{f: newForm},
		},
	}
}
