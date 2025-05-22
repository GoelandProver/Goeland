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

package Typing

import (
	"github.com/GoelandProver/Goeland/AST"
)

/**
 * This file contains all the rules that the typing system can apply on a formula.
 **/

/* Applies quantification rule and launches 2 goroutines waiting its children. */
func applyQuantRule(state Sequent, root *ProofTree, fatherChan chan Reconstruct) Reconstruct {
	// Add rule to prooftree
	switch (state.consequence.f).(type) {
	case AST.All, AST.AllType:
		root.appliedRule = "∀"
	case AST.Ex:
		root.appliedRule = "∃"
	}

	var newForm AST.Form
	var varTreated AST.Var
	var typeTreated AST.TypeVar

	varInstantiated := false

	switch f := (state.consequence.f).(type) {
	case AST.All, AST.Ex:
		varTreated, newForm = removeOneVar(state.consequence.f)
		varInstantiated = true
	case AST.AllType:
		v := f.GetVarList()[0]
		if len(f.GetVarList()) > 1 {
			typeTreated, newForm = v, AST.MakeAllType(f.GetIndex(), f.GetVarList()[1:], f.GetForm())
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
	formList := AST.NewFormList()
	// Add rule to prooftree
	switch f := (state.consequence.f).(type) {
	case AST.And:
		root.appliedRule = "∧"
		formList = f.FormList
	case AST.Or:
		root.appliedRule = "∨"
		formList = f.FormList
	}

	// Construct children with all the formulas
	children := []Sequent{}
	for _, form := range formList.Slice() {
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
	var f1, f2 AST.Form
	// Add rule to prooftree
	switch f := (state.consequence.f).(type) {
	case AST.Imp:
		root.appliedRule = "⇒"
		f1, f2 = f.GetF1(), f.GetF2()
	case AST.Equ:
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
	case AST.Top:
		root.appliedRule = "⊤"
	case AST.Bot:
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
	form := (state.consequence.f).(AST.Not).GetForm()

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
func removeOneVar(form AST.Form) (AST.Var, AST.Form) {
	// It's pretty much the same thing, but I don't have a clue on how to factorize this..
	switch f := form.(type) {
	case AST.Ex:
		v := f.GetVarList()[0]
		if len(f.GetVarList()) > 1 {
			return v, AST.MakeEx(f.GetIndex(), f.GetVarList()[1:], f.GetForm())
		}
		return v, f.GetForm()
	case AST.All:
		v := f.GetVarList()[0]
		if len(f.GetVarList()) > 1 {
			return v, AST.MakeAll(f.GetIndex(), f.GetVarList()[1:], f.GetForm())
		}
		return v, f.GetForm()
	}
	return AST.Var{}, nil
}

/* Makes the child treating the variable depending on which is set. */
func mkQuantChildren(state Sequent, varInstantiated bool, varTreated AST.Var, typeTreated AST.TypeVar, newForm AST.Form) []Sequent {
	var type_ AST.TypeApp
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
