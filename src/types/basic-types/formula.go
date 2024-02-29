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
	SetInternalMetas(*MetaList) Form
	GetType() typing.TypeScheme
	GetSubTerms() TermList
	GetSubFormulasRecur() FormList
	GetChildFormulas() FormList

	Copyable[Form]
	MappableString

	ReplaceTypeByMeta([]typing.TypeVar, int) Form
	ReplaceTermByTerm(old Term, new Term) (Form, bool)
	RenameVariables() Form
	CleanFormula() Form
	SubstituteVarByMeta(old Var, new Meta) Form
}

/* Replace a term by a term inside a function */
func replaceTermInTermList(terms TermList, oldTerm Term, newTerm Term) (TermList, bool) {
	res := false
	new_list := make(TermList, len(terms))
	for i, val := range terms {
		switch nf := val.(type) {
		case Var:
			if oldTerm.GetIndex() == nf.GetIndex() {
				new_list[i] = newTerm
				res = true
			} else {
				new_list[i] = val
			}
		case Fun:
			termList, r := replaceTermInTermList(nf.GetArgs(), oldTerm, newTerm)
			new_list[i] = MakerFun(nf.GetP(), termList, nf.GetTypeVars(), nf.GetTypeHint())
			res = res || r
		default:
			new_list[i] = val
		}
	}
	return new_list, res
}

/* replace a var by another in a var list */
func replaceVarInVarList(vars []Var, oldVar, newVar Var) []Var {
	res := []Var{}
	for _, v := range vars {
		if v.GetIndex() == oldVar.GetIndex() {
			res = append(res, newVar)
		} else {
			res = append(res, v)
		}
	}
	return res
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
func metasUnion(forms FormList) *MetaList {
	res := NewMetaList()

	for _, form := range forms {
		res.AppendIfNotContains(form.GetInternalMetas().Slice()...)
	}

	return res
}

// Creates and returns a FormList
func replaceList(oldForms FormList, vars []typing.TypeVar, index int) FormList {
	newForms := MakeEmptyFormList()

	for _, form := range oldForms {
		newForms = append(newForms, form.ReplaceTypeByMeta(vars, index))
	}

	return newForms
}

func replaceTermInFormList(oldForms FormList, oldTerm Term, newTerm Term) (FormList, bool) {
	newForms := MakeEmptyFormList()
	res := false

	for _, form := range oldForms {
		newForm, r := form.ReplaceTermByTerm(oldTerm, newTerm)
		res = res || r
		newForms = append(newForms, newForm)
	}

	return newForms, res
}

// Creates and returns a FormList with its Forms renamed
func renameFormList(forms FormList) FormList {
	newForms := MakeEmptyFormList()

	for _, form := range forms {
		newForms = append(newForms, form.RenameVariables())
	}

	return newForms
}
