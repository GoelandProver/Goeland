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
/* formula.go */
/**************/
/**
* This file contains functions and types which describe the formula's data structure
**/

package basictypes

import (
	. "github.com/GoelandProver/Goeland/global"
	typing "github.com/GoelandProver/Goeland/polymorphism/typing"
)

/*** Structure ***/

/* Formula  */
type Form interface {
	GetIndex() int
	GetMetas() MetaList
	GetType() typing.TypeScheme
	GetSubTerms() TermList

	Stringable
	Comparable
	Copyable[Form]

	ToMappedString(MapString, bool) string

	ReplaceTypeByMeta([]typing.TypeVar, int) Form
	ReplaceVarByTerm(old Var, new Term) Form
	RenameVariables() Form
	CleanFormula() Form
}

/*** Functions ***/

/* Makers */
func MakePred(index int, id Id, terms TermList, typeApps []typing.TypeApp, typeSchemes ...typing.TypeScheme) Pred {
	if len(typeSchemes) == 1 {
		return Pred{index, id, terms, typeApps, typeSchemes[0]}
	} else {
		return Pred{index, id, terms, typeApps, typing.DefaultPropType(len(terms))}
	}
}

func MakerPred(id Id, terms TermList, typeApps []typing.TypeApp, typeSchemes ...typing.TypeScheme) Pred {
	return MakePred(MakerIndexFormula(), id, terms, typeApps, typeSchemes...)
}

func MakeTop(i int) Top {
	return Top{i}
}

func MakerTop() Top {
	return MakeTop(MakerIndexFormula())
}

func MakeBot(i int) Bot {
	return Bot{i}
}

func MakerBot() Bot {
	return MakeBot(MakerIndexFormula())
}

func MakeImp(i int, firstForm, secondForm Form) Imp {
	return Imp{i, firstForm, secondForm}
}

func MakerImp(firstForm, secondForm Form) Imp {
	return MakeImp(MakerIndexFormula(), firstForm, secondForm)
}

func MakeEqu(i int, firstForm, secondForm Form) Equ {
	return Equ{i, firstForm, secondForm}
}

func MakerEqu(firstForm, secondForm Form) Equ {
	return MakeEqu(MakerIndexFormula(), firstForm, secondForm)
}

func MakeEx(i int, vars []Var, form Form) Ex {
	return Ex{i, vars, form}
}

func MakerEx(vars []Var, form Form) Ex {
	return MakeEx(MakerIndexFormula(), vars, form)
}

func MakeAll(i int, vars []Var, forms Form) All {
	return All{i, vars, forms}
}

func MakerAll(vars []Var, forms Form) All {
	return MakeAll(MakerIndexFormula(), vars, forms)
}

func MakeAllType(i int, typeVars []typing.TypeVar, form Form) AllType {
	return AllType{i, typeVars, form}
}

func MakerAllType(typeVars []typing.TypeVar, form Form) AllType {
	return AllType{MakerIndexFormula(), typeVars, form}
}

/* Replace a Var by a term inside a function */
func replaceVarInTermList(terms TermList, oldVar Var, newTerm Term) TermList {
	new_list := make(TermList, len(terms))
	for i, val := range terms {
		switch nf := val.(type) {
		case Var:
			if oldVar.GetIndex() == nf.GetIndex() {
				new_list[i] = newTerm
			} else {
				new_list[i] = val
			}
		case Fun:
			new_list[i] = MakerFun(nf.GetP(), replaceVarInTermList(nf.GetArgs(), oldVar, newTerm), nf.GetTypeVars(), nf.GetTypeHint())
		default:
			new_list[i] = val
		}
	}
	return new_list
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
func metasUnion(forms FormList) MetaList {
	res := MakeEmptyMetaList()

	for _, form := range forms {
		res = res.Merge(form.GetMetas())
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

func replaceVarInFormList(oldForms FormList, oldVar Var, newTerm Term) FormList {
	newForms := MakeEmptyFormList()

	for _, form := range oldForms {
		newForms = append(newForms, form.ReplaceVarByTerm(oldVar, newTerm))
	}

	return newForms
}

// Creates and returns a FormList with its Forms renamed
func renameFormList(forms FormList) FormList {
	newForms := MakeEmptyFormList()

	for _, form := range forms {
		newForms = append(newForms, form.RenameVariables())
	}

	return newForms
}
