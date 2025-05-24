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
	GetMetas() *MetaList
	GetInternalMetas() *MetaList
	SetInternalMetas(*MetaList) Form
	GetType() TypeScheme
	GetSubTerms() Lib.List[Term]
	GetSubFormulasRecur() *FormList
	GetChildFormulas() *FormList

	Lib.Copyable[Form]
	MappableString

	ReplaceTypeByMeta([]TypeVar, int) Form
	ReplaceTermByTerm(old Term, new Term) (Form, bool)
	RenameVariables() Form
	SubstituteVarByMeta(old Var, new Meta) Form
	ReplaceMetaByTerm(meta Meta, term Term) Form
}

/* Replace a term by a term inside a function */
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
					nf.GetTypeVars(),
					nf.GetTypeHint(),
				))
				res = res || r
			}
		default:
			newTermList.Upd(i, val)
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

// Creates and returns a MetaList from a FormList, making sure there are no duplicates
func metasUnion(forms *FormList) *MetaList {
	res := NewMetaList()

	for _, form := range forms.Slice() {
		res.AppendIfNotContains(form.GetInternalMetas().Slice()...)
	}

	return res
}

// Creates and returns a FormList
func replaceList(oldForms *FormList, vars []TypeVar, index int) *FormList {
	newForms := NewFormList()

	for _, form := range oldForms.Slice() {
		newForms.Append(form.ReplaceTypeByMeta(vars, index))
	}

	return newForms
}

func replaceTermInFormList(oldForms *FormList, oldTerm Term, newTerm Term) (*FormList, bool) {
	newForms := NewFormList()
	res := false

	for _, form := range oldForms.Slice() {
		newForm, r := form.ReplaceTermByTerm(oldTerm, newTerm)
		res = res || r
		newForms.Append(newForm)
	}

	return newForms, res
}

// Creates and returns a FormList with its Forms renamed
func renameFormList(forms *FormList) *FormList {
	newForms := NewFormList()

	for _, form := range forms.Slice() {
		newForms.Append(form.RenameVariables())
	}

	return newForms
}
