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

// import (
// 	"reflect"

// 	"github.com/GoelandProver/Goeland/AST"
// 	"github.com/GoelandProver/Goeland/Glob"
// 	"github.com/GoelandProver/Goeland/Lib"
// )

// /**
//  * This file contains the functions to create a typing proof tree.
//  * It defines the TypingProofTree structure and all the rules to check if a
//  * system is well-typed.
//  **/

// /* Stores the consequence of the sequent */
// type Consequence struct {
// 	f AST.Form
// 	t AST.Term
// 	a AST.TypeApp
// 	s AST.TypeScheme
// }

// /* A Sequent is formed of a global context, local context, and a formula or a term to type */
// type Sequent struct {
// 	globalContext GlobalContext
// 	localContext  LocalContext
// 	consequence   Consequence
// }

// /* Makes a typing prooftree to output. */
// type ProofTree struct {
// 	sequent     Sequent
// 	appliedRule string
// 	typeScheme  AST.TypeScheme
// 	children    []*ProofTree
// }

// /* ProofTree meta-type */
// var metaType AST.TypeHint

// /* ProofTree methods */

// /* Creates and adds a child to the prooftree and returns it. */
// func (pt *ProofTree) addChildWith(sequent Sequent) *ProofTree {
// 	child := ProofTree{
// 		sequent:  sequent,
// 		children: []*ProofTree{},
// 	}
// 	pt.children = append(pt.children, &child)
// 	return &child
// }

// var globalContextIsWellTyped bool = false

// /**
//  * Tries to type form.
//  * If not well-typed, will return an error.
//  **/
// func WellFormedVerification(form AST.Form, dump bool) error {
// 	// Instanciate meta type
// 	metaType = AST.MkTypeHint("$tType")

// 	// Second pass to type variables & to give the typevars to functions and predicates
// 	form = SecondPass(form)

// 	globalContext, err := createGlobalContext(AST.GetGlobalContext())
// 	if err != nil {
// 		return err
// 	}

// 	// Sequent creation
// 	state := Sequent{
// 		globalContext: globalContext,
// 		localContext:  LocalContext{vars: []AST.Var{}, typeVars: []AST.TypeVar{}},
// 		consequence:   Consequence{f: form},
// 	}

// 	// Prooftree creation
// 	root := ProofTree{
// 		sequent:  state,
// 		children: []*ProofTree{},
// 	}

// 	// Launch the typing system
// 	_, err = launchRuleApplication(state, &root)

// 	// Dump prooftree in json if it's asked & there is no error
// 	if dump && err == nil {
// 		err = root.DumpJson()
// 	}

// 	return err
// }

// /* Reconstructs a Form depending on what the children has returned */
// func reconstructForm(reconstruction Reconstruct, baseForm AST.Form) Reconstruct {
// 	if !reconstruction.result {
// 		return reconstruction
// 	}

// 	var f AST.Form
// 	switch form := baseForm.(type) {
// 	case AST.All:
// 		f = AST.MakeAll(form.GetIndex(), form.GetVarList(), unquantify(reconstruction.forms.At(1), form))
// 	case AST.AllType:
// 		f = AST.MakeAllType(form.GetIndex(), form.GetVarList(), unquantify(reconstruction.forms.At(1), form))
// 	case AST.Ex:
// 		f = AST.MakeEx(form.GetIndex(), form.GetVarList(), unquantify(reconstruction.forms.At(1), form))
// 	case AST.And:
// 		f = AST.MakeAnd(form.GetIndex(), reconstruction.forms)
// 	case AST.Or:
// 		f = AST.MakeOr(form.GetIndex(), reconstruction.forms)
// 	case AST.Imp:
// 		f = AST.MakeImp(form.GetIndex(), reconstruction.forms.At(0), reconstruction.forms.At(1))
// 	case AST.Equ:
// 		f = AST.MakeEqu(form.GetIndex(), reconstruction.forms.At(0), reconstruction.forms.At(1))
// 	case AST.Not:
// 		f = AST.MakeNot(form.GetIndex(), reconstruction.forms.At(0))
// 	case AST.Pred:
// 		// The len(form.GetTypeVars()) first children launched are children for typevars.
// 		// So the len(form.GetTypeVars()) first children will return <nil>
// 		if reconstruction.terms.Len() > len(form.GetTypeVars()) {
// 			terms := Lib.MkListV(reconstruction.terms.Get(
// 				len(form.GetTypeVars()),
// 				reconstruction.terms.Len(),
// 			)...)
// 			f = AST.MakePred(
// 				form.GetIndex(),
// 				form.GetID(),
// 				terms,
// 				form.GetTypeVars(),
// 				form.GetType(),
// 			)
// 		} else {
// 			f = AST.MakePred(
// 				form.GetIndex(),
// 				form.GetID(),
// 				Lib.NewList[AST.Term](),
// 				form.GetTypeVars(),
// 				form.GetType(),
// 			)
// 		}
// 	case AST.Top, AST.Bot:
// 		f = baseForm
// 	}

// 	return Reconstruct{result: true, forms: Lib.MkListV(f), err: nil}
// }

// /* Reconstructs a Term depending on what the children has returned */
// func reconstructTerm(reconstruction Reconstruct, baseTerm AST.Term) Reconstruct {
// 	if !reconstruction.result {
// 		return reconstruction
// 	}

// 	// fun: reconstruct with children terms
// 	if Glob.Is[AST.Fun](baseTerm) {
// 		termFun := Glob.To[AST.Fun](baseTerm)
// 		var fun AST.Fun
// 		// The len(form.GetTypeVars()) first children launched are children for typevars.
// 		// So the len(form.GetTypeVars()) first children will return <nil>
// 		if reconstruction.terms.Len() > len(termFun.GetTypeVars()) {
// 			terms := Lib.MkListV(reconstruction.terms.Get(
// 				len(termFun.GetTypeVars()),
// 				reconstruction.terms.Len(),
// 			)...)
// 			fun = AST.MakerFun(
// 				termFun.GetID(),
// 				terms,
// 				termFun.GetTypeVars(),
// 				termFun.GetTypeHint(),
// 			)
// 		} else {
// 			fun = AST.MakerFun(
// 				termFun.GetID(),
// 				Lib.NewList[AST.Term](),
// 				termFun.GetTypeVars(),
// 				termFun.GetTypeHint(),
// 			)
// 		}
// 		return Reconstruct{result: true, terms: Lib.MkListV[AST.Term](fun), err: nil}
// 	}

// 	return Reconstruct{result: true, terms: Lib.MkListV(baseTerm), err: nil}
// }

// /* Utils for reconstructions function */

// /* Removes all the quantifiers of form of the same type of quant. */
// func unquantify(form AST.Form, quant AST.Form) AST.Form {
// 	for reflect.TypeOf(form) == reflect.TypeOf(quant) {
// 		switch quant.(type) {
// 		case AST.All:
// 			form = Glob.To[AST.All](form).GetForm()
// 		case AST.AllType:
// 			form = Glob.To[AST.AllType](form).GetForm()
// 		case AST.Ex:
// 			form = Glob.To[AST.Ex](form).GetForm()
// 		}
// 	}
// 	return form
// }
