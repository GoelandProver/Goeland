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
* This file implements a conjunction of formulas
**/

package basictypes

import (
	typing "github.com/GoelandProver/Goeland/polymorphism/typing"
)

// A Formula list that represents the conjunction of formulae
type And struct {
	*MappedString
	index int
	FormList
	*MetaList
}

/** Constructors **/

func MakeAndSimple(i int, forms FormList, metas *MetaList) And {
	fms := &MappedString{}
	and := And{fms, i, forms, metas}
	fms.MappableString = &and
	return and
}

func MakeAnd(i int, forms FormList) And {
	return MakeAndSimple(i, forms, NewMetaList())
}

func MakerAnd(forms FormList) And {
	return MakeAnd(MakerIndexFormula(), forms)
}

/** Methods **/

/** - Form interface Methods **/

func (a And) GetIndex() int {
	return a.index
}

func (a And) GetMetas() *MetaList {
	return metasUnion(a.FormList)
}

func (a And) GetType() typing.TypeScheme {
	return typing.DefaultPropType(0)
}

func (a And) GetSubTerms() *TermList {
	res := NewTermList()

	for _, tl := range a.FormList {
		res.AppendIfNotContains(tl.GetSubTerms().Slice()...)
	}

	return res
}

func (a And) Equals(other any) bool {
	if typed, ok := other.(And); ok {
		return typed.FormList.Equals(a.FormList)
	}

	return false
}

func (a And) Copy() Form {
	return MakeAndSimple(a.index, a.FormList.Copy(), a.MetaList.Copy())
}

func (a And) ToString() string {
	return a.MappedString.ToString()
}

func (a And) ToMappedStringSurround(mapping MapString, displayTypes bool) string {
	return "(%s)"
}

func (a And) ToMappedStringChild(mapping MapString, displayTypes bool) (separator, emptyValue string) {
	return " " + mapping[AndConn] + " ", ""
}

func (a And) GetChildrenForMappedString() []MappableString {
	return a.GetChildFormulas().ToMappableStringSlice()
}

func (a And) ReplaceTypeByMeta(varList []typing.TypeVar, index int) Form {
	return MakeAnd(a.GetIndex(), replaceList(a.FormList, varList, index))
}

func (a And) ReplaceVarByTerm(old Var, new Term) (Form, bool) {
	varList, res := replaceVarInFormList(a.FormList, old, new)
	return MakeAndSimple(a.index, varList, a.MetaList), res
}

func (a And) RenameVariables() Form {
	return MakeAnd(a.GetIndex(), renameFormList(a.FormList))
}

func (a And) SubstituteVarByMeta(old Var, new Meta) Form {
	newFormList, newMetas := substVarByMetaInFormList(old, new, a.FormList, a.MetaList)
	return MakeAndSimple(a.index, newFormList, newMetas)
}

func (a And) GetInternalMetas() *MetaList {
	return a.MetaList
}

func (a And) SetInternalMetas(m *MetaList) Form {
	a.MetaList = m
	return a
}

func (a And) GetSubFormulasRecur() FormList {
	return getAllSubFormulasAppended(a)
}

func (a And) GetChildFormulas() FormList {
	return a.FormList
}
