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

/**
* This file contains functions and types which describe the formula's data structure
**/

package AST

import (
	"github.com/GoelandProver/Goeland/Glob"
	"github.com/GoelandProver/Goeland/Lib"
)

/*** Structure ***/

type Form interface {
	GetIndex() int
	GetMetas() Lib.Set[Meta]
	GetSubTerms() Lib.List[Term]
	GetSubFormulasRecur() Lib.List[Form]
	GetChildFormulas() Lib.List[Form]

	Lib.Copyable[Form]
	MappableString

	ReplaceTermByTerm(old Term, new Term) (Form, bool)
	RenameVariables() Form
	SubstituteVarByMeta(old Var, new Meta) Form
	ReplaceMetaByTerm(meta Meta, term Term) Form
}

/* Replace a term by a term inside a function. */
func replaceTermInTermList(
	terms Lib.List[Term],
	oldTerm Term,
	newTerm Term,
) (Lib.List[Term], bool) {
	res := false
	newTermList := Lib.MkList[Term](terms.Len())

	for i, val := range terms.GetSlice() {
		switch nf := val.(type) {
		case Var:
			if oldTerm.GetIndex() == nf.GetIndex() {
				newTermList.Upd(i, newTerm)
				res = true
			} else {
				newTermList.Upd(i, val)
			}
		case Fun:
			if oldTerm.GetIndex() == nf.GetIndex() {
				newTermList.Upd(i, newTerm)
				res = true
			} else {
				termList, r := replaceTermInTermList(
					nf.GetArgs(),
					oldTerm,
					newTerm,
				)
				newTermList.Upd(i, MakerFun(
					nf.GetP(),
					termList,
				))
				res = res || r
			}
		case Meta:
			if oldTerm.Equals(newTerm) {
				newTermList.Upd(i, newTerm)
				res = true
			} else {
				newTermList.Upd(i, val)
			}
		default:
			Glob.Anomaly("ReplaceTermInTermList", "Term is not a Var, a Fun, or a Meta")
		}
	}

	return newTermList, res
}

/* Utils */

func instanciateTypeAppList(typeApps []TypeApp, vars []TypeVar, index int) []TypeApp {
	// For each typeVar € nf.GetTypeVars(), if typeVar € varList, instanciate typeVar
	typeVars := []TypeApp{}
	for _, typeVar := range typeApps {
		if Glob.Is[TypeVar](typeVar) {
			tv := Glob.To[TypeVar](typeVar)
			if Lib.ComparableList[TypeVar](vars).Contains(tv) {
				tv.ShouldBeMeta(index)
			}
			typeVars = append(typeVars, tv)
		} else {
			typeVars = append(typeVars, typeVar)
		}
	}

	return typeVars
}

func metasUnion(forms Lib.List[Form]) Lib.Set[Meta] {
	res := Lib.EmptySet[Meta]()

	for _, form := range forms.GetSlice() {
		res = res.Union(form.GetMetas())
	}

	return res
}

// Returns whether the term has been replaced in a subformula or not
func replaceTermInFormList(oldForms Lib.List[Form], oldTerm Term, newTerm Term) (Lib.List[Form], bool) {
	newForms := Lib.MkList[Form](oldForms.Len())
	res := false

	for i, form := range oldForms.GetSlice() {
		newForm, r := form.ReplaceTermByTerm(oldTerm, newTerm)
		res = res || r
		newForms.Upd(i, newForm)
	}

	return newForms, res
}

func renameFormList(forms Lib.List[Form]) Lib.List[Form] {
	newForms := Lib.MkList[Form](forms.Len())

	for i, form := range forms.GetSlice() {
		newForms.Upd(i, form.RenameVariables())
	}

	return newForms
}
