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

package basictypes

import (
	. "github.com/GoelandProver/Goeland/global"
	typing "github.com/GoelandProver/Goeland/polymorphism/typing"
)

/*** Structure ***/

type Form interface {
	GetIndex() int
	GetMetas() *MetaList
	GetInternalMetas() *MetaList
	SetInternalMetas(*MetaList)
	GetType() typing.TypeScheme
	GetSubTerms() *TermList
	GetSubFormulasRecur() *FormList
	GetChildFormulas() *FormList

	Copyable[Form]
	MappableString

	ReplaceTypeByMeta([]typing.TypeVar, int)
	ReplaceVarByTerm(old Var, new Term) bool
	RenameVariables()
	SubstituteVarByMeta(old Var, new Meta)
}

/* Replace a Var by a term inside a function */
func replaceVarInTermList(terms *TermList, oldVar Var, newTerm Term) (*TermList, bool) {
	res := false
	newTermList := NewTermList()

	for _, val := range terms.Slice() {
		switch nf := val.(type) {
		case Var:
			if oldVar.GetIndex() == nf.GetIndex() {
				newTermList.Append(newTerm)
				res = true
			} else {
				newTermList.Append(val)
			}
		case Fun:
			termList, r := replaceVarInTermList(nf.GetArgs(), oldVar, newTerm)
			newTermList.Append(MakerFun(nf.GetP(), termList, nf.GetTypeVars(), nf.GetTypeHint()))
			res = res || r
		default:
			newTermList.Append(val)
		}
	}

	return newTermList, res
}

/* Utils */

func instanciateTypeAppList(typeApps []typing.TypeApp, vars []typing.TypeVar, index int) []typing.TypeApp {
	// For each typeVar € nf.GetTypeVars(), if typeVar € varList, instanciate typeVar
	typeVars := []typing.TypeApp{}
	for _, typeVar := range typeApps {
		if Is[typing.TypeVar](typeVar) {
			tv := To[typing.TypeVar](typeVar)
			if ComparableList[typing.TypeVar](vars).Contains(tv) {
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

func replaceList(oldForms *FormList, vars []typing.TypeVar, index int) {
	for _, form := range oldForms.Slice() {
		form.ReplaceTypeByMeta(vars, index)
	}
}

func replaceVarInFormList(oldForms *FormList, oldVar Var, newTerm Term) bool {
	res := false

	for _, form := range oldForms.Slice() {
		r := form.ReplaceVarByTerm(oldVar, newTerm)
		res = res || r
	}

	return res
}

// Renames the variables of the given FormList
func renameFormList(forms *FormList) {
	for _, form := range forms.Slice() {
		form.RenameVariables()
	}
}
