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
func MakePred(index int, id Id, terms TermList, tv []typing.TypeApp, ts ...typing.TypeScheme) Pred {
	if len(ts) == 1 {
		return Pred{index, id, terms, tv, ts[0]}
	} else {
		return Pred{index, id, terms, tv, typing.DefaultPropType(len(terms))}
	}
}
func MakerPred(p Id, tl TermList, tv []typing.TypeApp, ts ...typing.TypeScheme) Pred {
	return MakePred(MakerIndexFormula(), p, tl, tv, ts...)
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

func MakeNot(i int, f Form) Not {
	return Not{i, f}
}
func MakerNot(f Form) Not {
	return MakeNot(MakerIndexFormula(), f)
}

func MakeAnd(i int, fl FormList) And {
	return And{i, fl}
}
func MakerAnd(fl FormList) And {
	return MakeAnd(MakerIndexFormula(), fl)
}

func MakeOr(i int, fl FormList) Or {
	return Or{i, fl}
}
func MakerOr(fl FormList) Or {
	return MakeOr(MakerIndexFormula(), fl)
}

func MakeImp(i int, f1, f2 Form) Imp {
	return Imp{i, f1, f2}
}
func MakerImp(f1, f2 Form) Imp {
	return MakeImp(MakerIndexFormula(), f1, f2)
}

func MakeEqu(i int, f1, f2 Form) Equ {
	return Equ{i, f1, f2}
}
func MakerEqu(f1, f2 Form) Equ {
	return MakeEqu(MakerIndexFormula(), f1, f2)
}

func MakeEx(i int, vl []Var, f Form) Ex {
	return Ex{i, vl, f}
}
func MakerEx(vl []Var, f Form) Ex {
	return MakeEx(MakerIndexFormula(), vl, f)
}

func MakeAll(i int, vl []Var, f Form) All {
	return All{i, vl, f}
}
func MakerAll(vl []Var, f Form) All {
	return MakeAll(MakerIndexFormula(), vl, f)
}

func MakeAllType(i int, vl []typing.TypeVar, f Form) AllType { return AllType{i, vl, f} }
func MakerAllType(vl []typing.TypeVar, f Form) AllType       { return AllType{MakerIndexFormula(), vl, f} }

/* Transform a formula into its negation */
func RefuteForm(f Form) Form {
	return MakerNot(f)
}

/* Remove all the negations */
func RemoveNeg(f Form) Form {
	switch ft := f.(type) {
	case Not:
		return RemoveNeg(ft.GetForm())
	default:
		return f.Copy()
	}
}

/* Simplify a neg neg eng formual (for DMT) */
func SimplifyNeg(f Form) Form {
	return simplifyNeg(f, true)
}

func simplifyNeg(f Form, isEven bool) Form {
	// Already under a not
	if ft, isNot := f.(Not); isNot {
		if !isEven {
			return simplifyNeg(ft.GetForm(), true)
		} else {
			return simplifyNeg(ft.GetForm(), false)
		}
	} else {
		if isEven {
			return f.Copy()
		} else {
			return RefuteForm(f.Copy())
		}
	}
}

/* Replace a Var by a term inside a function */
func replaceVarInTermList(original_list TermList, old_symbol Var, new_symbol Term) TermList {
	new_list := make(TermList, len(original_list))
	for i, val := range original_list {
		switch nf := val.(type) {
		case Var:
			if old_symbol.GetIndex() == nf.GetIndex() {
				new_list[i] = new_symbol
			} else {
				new_list[i] = val
			}
		case Fun:
			new_list[i] = MakerFun(nf.GetP(), replaceVarInTermList(nf.GetArgs(), old_symbol, new_symbol), nf.GetTypeVars(), nf.GetTypeHint())
		default:
			new_list[i] = val
		}
	}
	return new_list
}

/* replace a var by another in a var list */
func replaceVarInVarList(vl []Var, v1, v2 Var) []Var {
	res := []Var{}
	for _, v := range vl {
		if v.GetIndex() == v1.GetIndex() {
			res = append(res, v2)
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

func instanciateTypeAppList(appList []typing.TypeApp, varList []typing.TypeVar, index int) []typing.TypeApp {
	// For each typeVar € nf.GetTypeVars(), if typeVar € varList, instanciate typeVar
	typeVars := []typing.TypeApp{}
	for _, typeVar := range appList {
		if Is[typing.TypeVar](typeVar) {
			tv := To[typing.TypeVar](typeVar)
			if ComparableList[typing.TypeVar](varList).Contains(tv) {
				tv.ShouldBeMeta(index)
			}
			typeVars = append(typeVars, tv)
		} else {
			typeVars = append(typeVars, typeVar)
		}
	}

	return typeVars
}
