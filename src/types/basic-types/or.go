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

/*********/
/* or.go */
/*********/

/**
* This file implements a disjunction of formulas.
**/

package basictypes

import (
	typing "github.com/GoelandProver/Goeland/polymorphism/typing"
)

// A Formula list that represents the disjunction of formulae
type Or struct {
	*MappedString
	index int
	FormList
	MetaList
}

/** Constructors **/

func MakeOrSimple(i int, forms FormList, metas MetaList) Or {
	fms := &MappedString{}
	or := Or{fms, i, forms, metas}
	fms.MappableString = or
	return or
}

func MakeOr(i int, forms FormList) Or {
	return MakeOrSimple(i, forms, make(MetaList, 0))
}

func MakerOr(forms FormList) Or {
	return MakeOr(MakerIndexFormula(), forms)
}

/** Methods **/

/** - Form interface Methods **/

func (o Or) GetIndex() int {
	return o.index
}

func (o Or) GetMetas() MetaList {
	return metasUnion(o.FormList)
}

func (o Or) GetType() typing.TypeScheme {
	return typing.DefaultPropType(0)
}

func (o Or) GetSubTerms() TermList {
	res := MakeEmptyTermList()
	for _, tl := range o.FormList {
		res = res.MergeTermList(tl.GetSubTerms())
	}
	return res
}

func (o Or) Equals(f any) bool {
	oth, isOr := f.(Or)
	return isOr && oth.FormList.Equals(o.FormList)
}

func (o Or) Copy() Form {
	return MakeOrSimple(o.index, o.FormList.Copy(), o.MetaList.Copy())
}

func (o Or) ToString() string {
	return o.MappedString.ToString()
}

func (o Or) ToMappedStringSurround(mapping MapString, displayTypes bool) string {
	return "(%s)"
}

func (o Or) ToMappedStringChild(mapping MapString, displayTypes bool) (separator, emptyValue string) {
	return " " + mapping[OrConn] + " ", ""
}

func (o Or) GetChildrenForMappedString() []MappableString {
	return o.GetChildFormulas().ToMappableStringSlice()
}

func (o Or) ReplaceTypeByMeta(varList []typing.TypeVar, index int) Form {
	return MakeOr(o.GetIndex(), replaceList(o.FormList, varList, index))
}

func (o Or) ReplaceVarByTerm(old Var, new Term) (Form, bool) {
	formList, res := replaceVarInFormList(o.FormList, old, new)
	return MakeOrSimple(o.GetIndex(), formList, o.MetaList), res
}

func (o Or) RenameVariables() Form {
	return MakeOr(o.GetIndex(), renameFormList(o.FormList))
}

func (o Or) CleanFormula() Form {
	o.FormList.CleanFormList()
	return o
}

func (o Or) SubstituteVarByMeta(old Var, new Meta) Form {
	newFormList, newMetas := substVarByMetaInFormList(old, new, o.FormList, o.MetaList)
	return MakeOrSimple(o.index, newFormList, newMetas)
}

func (o Or) GetInternalMetas() MetaList {
	return o.MetaList
}

func (o Or) SetInternalMetas(m MetaList) Form {
	o.MetaList = m
	return o
}

func (o Or) GetSubFormulasRecur() FormList {
	return getAllSubFormulasAppended(o)
}

func (o Or) GetChildFormulas() FormList {
	return o.FormList
}

func (o Or) ReplaceMetaByTerm(meta Meta, term Term) Form {
	return MakeOr(o.GetIndex(), o.FormList.ReplaceMetaByTerm(meta, term))
}
