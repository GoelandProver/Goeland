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
/* impnequ.go */
/**************/

/**
* This file implements an implication and an equivalence of formulas.
**/

package basictypes

import (
	typing "github.com/GoelandProver/Goeland/polymorphism/typing"
)

/* Imp(f1,f2): f1 imply f2*/
type Imp struct {
	*MappedString
	index  int
	f1, f2 Form
	MetaList
}

func (i Imp) ToMappedStringSurround(mapping MapString, displayTypes bool) string {
	return "(%s)"
}

func (i Imp) ToMappedStringChild(mapping MapString, displayTypes bool) (separator, emptyValue string) {
	return " " + mapping[ImpConn] + " ", ""
}

func (i Imp) GetIndex() int { return i.index }
func (i Imp) GetF1() Form   { return i.f1.Copy() }
func (i Imp) GetF2() Form   { return i.f2.Copy() }
func (i Imp) Copy() Form {
	return MakeImpSimple(i.index, i.GetF1(), i.GetF2(), i.MetaList.Copy())
}
func (i Imp) GetMetas() MetaList         { return i.f1.GetMetas().Merge(i.f2.GetMetas()) }
func (i Imp) GetType() typing.TypeScheme { return typing.DefaultPropType(0) }
func (i Imp) ToString() string           { return i.ToMappedString(defaultMap, true) }

func (i Imp) Equals(f any) bool {
	oth, isImp := f.(Imp)
	return isImp &&
		i.f1.Equals(oth.f1) &&
		i.f2.Equals(oth.f2)
}

func (i Imp) ReplaceTypeByMeta(varList []typing.TypeVar, index int) Form {
	return MakeImp(i.GetIndex(), i.GetF1().ReplaceTypeByMeta(varList, index), i.GetF2().ReplaceTypeByMeta(varList, index))
}

func (i Imp) ReplaceVarByTerm(old Var, new Term) (Form, bool) {
	f1, res1 := i.GetF1().ReplaceVarByTerm(old, new)
	f2, res2 := i.GetF2().ReplaceVarByTerm(old, new)

	return MakeImpSimple(i.index, f1, f2, i.MetaList), res1 || res2
}

func (i Imp) RenameVariables() Form {
	return MakeImp(i.GetIndex(), i.GetF1().RenameVariables(), i.GetF2().RenameVariables())
}
func (i Imp) CleanFormula() Form {
	i.f1 = i.f1.CleanFormula()
	i.f2 = i.f2.CleanFormula()

	return i
}

func (i Imp) GetSubTerms() TermList {
	return i.GetF1().GetSubTerms().MergeTermList(i.GetF2().GetSubTerms())
}

func (i Imp) SubstituteVarByMeta(old Var, new Meta) Form {
	fl, metas := substVarByMetaInFormList(old, new, FormList{i.f1, i.f2}, i.MetaList)
	return MakeImpSimple(i.index, fl[0], fl[1], metas)
}

func (i Imp) GetInternalMetas() MetaList {
	return i.MetaList
}

func (i Imp) SetInternalMetas(m MetaList) Form {
	i.MetaList = m
	return i
}

func (i Imp) GetSubFormulasRecur() FormList {
	return getAllSubFormulasAppended(i)
}

func (i Imp) GetChildFormulas() FormList {
	return FormList{i.f1, i.f2}
}

/* Equ(f1, f2): f1 equivalent to f2 */
type Equ struct {
	*MappedString
	index  int
	f1, f2 Form
	MetaList
}

func (e Equ) ToMappedStringSurround(mapping MapString, displayTypes bool) string {
	return "(%s)"
}

func (e Equ) ToMappedStringChild(mapping MapString, displayTypes bool) (separator, emptyValue string) {
	return " " + mapping[EquConn] + " ", ""
}

func (e Equ) GetIndex() int { return e.index }
func (e Equ) GetF1() Form   { return e.f1.Copy() }
func (e Equ) GetF2() Form   { return e.f2.Copy() }
func (e Equ) Copy() Form {
	return MakeEquSimple(e.index, e.GetF1(), e.GetF2(), e.MetaList.Copy())
}
func (e Equ) GetMetas() MetaList         { return e.f1.GetMetas().Merge(e.f2.GetMetas()) }
func (e Equ) GetType() typing.TypeScheme { return typing.DefaultPropType(0) }
func (e Equ) ToString() string           { return e.ToMappedString(defaultMap, true) }

func (e Equ) Equals(f any) bool {
	oth, isEqu := f.(Equ)
	return isEqu &&
		e.f1.Equals(oth.f1) && e.f2.Equals(oth.f2)
}

func (e Equ) ReplaceTypeByMeta(varList []typing.TypeVar, index int) Form {
	return MakeEqu(e.GetIndex(), e.GetF1().ReplaceTypeByMeta(varList, index), e.GetF2().ReplaceTypeByMeta(varList, index))
}

func (e Equ) ReplaceVarByTerm(old Var, new Term) (Form, bool) {
	f1, res1 := e.GetF1().ReplaceVarByTerm(old, new)
	f2, res2 := e.GetF2().ReplaceVarByTerm(old, new)
	MakeEquSimple(e.GetIndex(), f1, f2, e.MetaList)
	return MakeEquSimple(e.GetIndex(), f1, f2, e.MetaList), res1 || res2
}

func (e Equ) RenameVariables() Form {
	return MakeEqu(e.GetIndex(), e.GetF1().RenameVariables(), e.GetF2().RenameVariables())
}
func (e Equ) CleanFormula() Form {
	e.f1 = e.f1.CleanFormula()
	e.f2 = e.f2.CleanFormula()

	return e
}

func (e Equ) GetSubTerms() TermList {
	return e.GetF1().GetSubTerms().MergeTermList(e.GetF2().GetSubTerms())
}

func (e Equ) SubstituteVarByMeta(old Var, new Meta) Form {
	fl, metas := substVarByMetaInFormList(old, new, FormList{e.f1, e.f2}, e.MetaList)
	return MakeEquSimple(e.index, fl[0], fl[1], metas)
}

func (e Equ) GetInternalMetas() MetaList {
	return e.MetaList
}

func (e Equ) SetInternalMetas(m MetaList) Form {
	e.MetaList = m
	return e
}

func (e Equ) GetSubFormulasRecur() FormList {
	return getAllSubFormulasAppended(e)
}

func (e Equ) GetChildFormulas() FormList {
	return FormList{e.f1, e.f2}
}
