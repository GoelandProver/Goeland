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
	"reflect"

	. "github.com/GoelandProver/Goeland/global"
	sp "github.com/GoelandProver/Goeland/polymorphism/second-pass"
	typing "github.com/GoelandProver/Goeland/polymorphism/typing"
	basictypes "github.com/GoelandProver/Goeland/types/basic-types"
)

/**
 * This file contains the functions to create a typing proof tree.
 * It defines the TypingProofTree structure and all the rules to check if a
 * system is well-typed.
 **/

/* Stores the consequence of the sequent */
type Consequence struct {
	f basictypes.Form
	t basictypes.Term
	a typing.TypeApp
	s typing.TypeScheme
}

/* A Sequent is formed of a global context, local context, and a formula or a term to type */
type Sequent struct {
	globalContext GlobalContext
	localContext  LocalContext
	consequence   Consequence
}

/* Makes a typing prooftree to output. */
type ProofTree struct {
	sequent     Sequent
	appliedRule string
	typeScheme  typing.TypeScheme
	children    []*ProofTree
}

/* ProofTree meta-type */
var metaType typing.TypeHint

/* ProofTree methods */

/* Creates and adds a child to the prooftree and returns it. */
func (pt *ProofTree) addChildWith(sequent Sequent) *ProofTree {
	child := ProofTree{
		sequent:  sequent,
		children: []*ProofTree{},
	}
	pt.children = append(pt.children, &child)
	return &child
}

var globalContextIsWellTyped bool = false

/**
 * Tries to type form.
 * If the system is well-formed, all subforms and subterms of the formula will
 * be typed after this step.
 * Otherwise, it will return an error.
 **/
func WellFormedVerification(form basictypes.Form, dump bool) (basictypes.Form, error) {
	// Instanciate meta type
	metaType = typing.MkTypeHint("$tType")

	// Second pass to type variables & to give the typevars to functions and predicates
	form = sp.SecondPass(form)

	globalContext, err := createGlobalContext(typing.GetGlobalContext())
	if err != nil {
		return nil, err
	}

	// Sequent creation
	state := Sequent{
		globalContext: globalContext,
		localContext:  LocalContext{vars: []basictypes.Var{}, typeVars: []typing.TypeVar{}},
		consequence:   Consequence{f: form},
	}

	// Prooftree creation
	root := ProofTree{
		sequent:  state,
		children: []*ProofTree{},
	}

	// Launch the typing system
	form, err = launchRuleApplication(state, &root)

	// Dump prooftree in json if it's asked & there is no error
	if dump && err == nil {
		err = root.DumpJson()
	}

	return form, err
}

/* Reconstructs a Form depending on what the children has returned */
func reconstructForm(reconstruction Reconstruct, baseForm basictypes.Form) Reconstruct {
	if !reconstruction.result {
		return reconstruction
	}

	var f basictypes.Form
	switch form := baseForm.(type) {
	case basictypes.All:
		f = basictypes.MakeAll(form.GetIndex(), form.GetVarList(), unquantify(reconstruction.forms.Get(1), form))
	case basictypes.AllType:
		f = basictypes.MakeAllType(form.GetIndex(), form.GetVarList(), unquantify(reconstruction.forms.Get(1), form))
	case basictypes.Ex:
		f = basictypes.MakeEx(form.GetIndex(), form.GetVarList(), unquantify(reconstruction.forms.Get(1), form))
	case basictypes.And:
		f = basictypes.MakeAnd(form.GetIndex(), reconstruction.forms)
	case basictypes.Or:
		f = basictypes.MakeOr(form.GetIndex(), reconstruction.forms)
	case basictypes.Imp:
		f = basictypes.MakeImp(form.GetIndex(), reconstruction.forms.Get(0), reconstruction.forms.Get(1))
	case basictypes.Equ:
		f = basictypes.MakeEqu(form.GetIndex(), reconstruction.forms.Get(0), reconstruction.forms.Get(1))
	case basictypes.Not:
		f = basictypes.MakeNot(form.GetIndex(), reconstruction.forms.Get(0))
	case basictypes.Pred:
		// The len(form.GetTypeVars()) first children launched are children for typevars.
		// So the len(form.GetTypeVars()) first children will return <nil>
		if reconstruction.terms.Len() > len(form.GetTypeVars()) {
			terms := basictypes.NewTermList(reconstruction.terms.GetElements(len(form.GetTypeVars()), reconstruction.terms.Len())...)
			f = basictypes.MakePred(form.GetIndex(), form.GetID(), terms, form.GetTypeVars(), form.GetType())
		} else {
			f = basictypes.MakePred(form.GetIndex(), form.GetID(), basictypes.NewTermList(), form.GetTypeVars(), form.GetType())
		}
	case basictypes.Top, basictypes.Bot:
		f = baseForm
	}

	return Reconstruct{result: true, forms: basictypes.NewFormList(f), err: nil}
}

/* Reconstructs a Term depending on what the children has returned */
func reconstructTerm(reconstruction Reconstruct, baseTerm basictypes.Term) Reconstruct {
	if !reconstruction.result {
		return reconstruction
	}

	// fun: reconstruct with children terms
	if Is[basictypes.Fun](baseTerm) {
		termFun := To[basictypes.Fun](baseTerm)
		var fun basictypes.Fun
		// The len(form.GetTypeVars()) first children launched are children for typevars.
		// So the len(form.GetTypeVars()) first children will return <nil>
		if reconstruction.terms.Len() > len(termFun.GetTypeVars()) {
			terms := basictypes.NewTermList(reconstruction.terms.GetElements(len(termFun.GetTypeVars()), reconstruction.terms.Len())...)
			fun = basictypes.MakerFun(termFun.GetID(), terms, termFun.GetTypeVars(), termFun.GetTypeHint())
		} else {
			fun = basictypes.MakerFun(termFun.GetID(), basictypes.NewTermList(), termFun.GetTypeVars(), termFun.GetTypeHint())
		}
		return Reconstruct{result: true, terms: basictypes.NewTermList(fun), err: nil}
	}

	return Reconstruct{result: true, terms: basictypes.NewTermList(baseTerm), err: nil}
}

/* Utils for reconstructions function */

/* Removes all the quantifiers of form of the same type of quant. */
func unquantify(form basictypes.Form, quant basictypes.Form) basictypes.Form {
	for reflect.TypeOf(form) == reflect.TypeOf(quant) {
		switch quant.(type) {
		case basictypes.All:
			form = To[basictypes.All](form).GetForm()
		case basictypes.AllType:
			form = To[basictypes.AllType](form).GetForm()
		case basictypes.Ex:
			form = To[basictypes.Ex](form).GetForm()
		}
	}
	return form
}
