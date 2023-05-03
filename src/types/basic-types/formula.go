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
	"strings"

	. "github.com/GoelandProver/Goeland/global"
	typing "github.com/GoelandProver/Goeland/polymorphism/typing"
)

/*** Structure ***/

/* Formula  */
type Form interface {
	Stringable
	Comparable
	Copyable[Form]

	GetIndex() int
	GetMetas() MetaList
	GetType() typing.TypeScheme
	GetSubTerms() TermList

	ToMappedString(MapString, bool) string
	ToStringWithSuffixMeta(string) string

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

func MakeNot(i int, form Form) Not {
	return Not{i, form}
}

func MakerNot(form Form) Not {
	return MakeNot(MakerIndexFormula(), form)
}

func MakeAnd(i int, forms FormList) And {
	return And{i, forms}
}

func MakerAnd(fl FormList) And {
	return MakeAnd(MakerIndexFormula(), fl)
}

func MakeOr(i int, forms FormList) Or {
	return Or{i, forms}
}

func MakerOr(forms FormList) Or {
	return MakeOr(MakerIndexFormula(), forms)
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

/* Transform a formula into its negation */
func RefuteForm(form Form) Form {
	return MakerNot(form)
}

/* Remove all the negations */
func RemoveNeg(form Form) Form {
	switch ft := form.(type) {
	case Not:
		return RemoveNeg(ft.GetForm())
	default:
		return form.Copy()
	}
}

/* Simplify a neg neg eng formual (for DMT) */
func SimplifyNeg(form Form) Form {
	return simplifyNeg(form, true)
}

func simplifyNeg(form Form, isEven bool) Form {
	// Already under a not
	if ft, isNot := form.(Not); isNot {
		if !isEven {
			return simplifyNeg(ft.GetForm(), true)
		} else {
			return simplifyNeg(ft.GetForm(), false)
		}
	} else {
		if isEven {
			return form.Copy()
		} else {
			return RefuteForm(form.Copy())
		}
	}
}

/* Replace a Var by a term inside a function */
func replaceVarInTermList(terms TermList, originalVar Var, replacementTerm Term) TermList {
	new_list := make(TermList, len(terms))
	for i, val := range terms {
		switch nf := val.(type) {
		case Var:
			if originalVar.GetIndex() == nf.GetIndex() {
				new_list[i] = replacementTerm
			} else {
				new_list[i] = val
			}
		case Fun:
			new_list[i] = MakerFun(nf.GetP(), replaceVarInTermList(nf.GetArgs(), originalVar, replacementTerm), nf.GetTypeVars(), nf.GetTypeHint())
		default:
			new_list[i] = val
		}
	}
	return new_list
}

/* replace a var by another in a var list */
func replaceVarInVarList(vars []Var, originalVar, replacementVar Var) []Var {
	res := []Var{}
	for _, v := range vars {
		if v.GetIndex() == originalVar.GetIndex() {
			res = append(res, replacementVar)
		} else {
			res = append(res, v)
		}
	}
	return res
}

/* Utils */

type FormOrTerm interface {
	ToStringWithSuffixMeta(string) string
}

func listToStringMeta[T FormOrTerm](fot []T, suffix, sep, emptyValue string) string {
	strArr := []string{}

	for _, element := range fot {
		strArr = append(strArr, element.ToStringWithSuffixMeta(suffix))
	}

	if len(strArr) == 0 && emptyValue != "" {
		strArr = append(strArr, emptyValue)
	}

	return strings.Join(strArr, sep)
}

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
