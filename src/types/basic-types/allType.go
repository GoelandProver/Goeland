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
* This file implements quantifiers over formulas (forall, exists, forall (types)).
**/

package basictypes

import (
	. "github.com/GoelandProver/Goeland/global"
	typing "github.com/GoelandProver/Goeland/polymorphism/typing"
)

/* Struct describing a forall with type variables */
type AllType struct {
	*MappedString
	index  int
	tvList []typing.TypeVar
	form   Form
	*MetaList
}

func NewAllTypeSimple(i int, typeVars []typing.TypeVar, form Form, metas *MetaList) *AllType {
	fms := &MappedString{}
	at := &AllType{fms, i, typeVars, form, metas}
	fms.MappableString = at
	return at
}

func NewAllTypeIndexed(i int, typeVars []typing.TypeVar, form Form) *AllType {
	return NewAllTypeSimple(i, typeVars, form, NewMetaList())
}

func NewAllType(typeVars []typing.TypeVar, form Form) *AllType {
	return NewAllTypeIndexed(MakerIndexFormula(), typeVars, form)
}

/* Methods */

func (a *AllType) GetIndex() int                { return a.index }
func (a *AllType) GetVarList() []typing.TypeVar { return copyTypeVarList(a.tvList) }
func (a *AllType) GetForm() Form                { return a.form.Copy() }
func (a *AllType) GetType() typing.TypeScheme   { return typing.DefaultPropType(0) }

/* Form interface */

func (a *AllType) ToMappedString(mapping MapString, displayTypes bool) string {
	return mapping[QuantVarOpen] + ListToString(a.GetVarList(), ", ", "") + " : " + mapping[TypeVarType] + mapping[QuantVarClose] + mapping[QuantVarSep] + " (" + a.GetForm().ToString() + ")"
}

func (a *AllType) ToString() string {
	return a.MappedString.ToString()
}

func (a *AllType) ToMappedStringSurround(mapping MapString, displayTypes bool) string {
	return "(" + mapping[AllTypeQuant] + " " + mapping[QuantVarOpen] + ListToString(a.GetVarList(), ", ", "") + " : " + mapping[TypeVarType] + mapping[QuantVarClose] + mapping[QuantVarSep] + " (%s))"
}

func (a *AllType) ToMappedStringChild(mapping MapString, displayTypes bool) (separator, emptyValue string) {
	return "", ""
}

func (a *AllType) GetChildrenForMappedString() []MappableString {
	return a.GetChildFormulas().ToMappableStringSlice()
}

func (a *AllType) GetMetas() *MetaList { return a.GetForm().GetMetas() }

func (a *AllType) Copy() Form {
	return NewAllTypeSimple(a.index, copyTypeVarList(a.tvList), a.form.Copy(), a.MetaList.Copy())
}

func (a *AllType) Equals(f any) bool {
	oth, isAll := f.(*AllType)
	return isAll &&
		AreEqualsTypeVarList(a.tvList, oth.tvList) &&
		a.form.Equals(oth.form)
}

func (a *AllType) ReplaceTypeByMeta(varList []typing.TypeVar, index int) {
	a.form.ReplaceTypeByMeta(varList, index)
}

func (a *AllType) ReplaceVarByTerm(old Var, new Term) bool {
	return a.form.ReplaceVarByTerm(old, new)
}

func (a *AllType) RenameVariables() {
	a.form.RenameVariables()
}

func (a *AllType) GetSubTerms() *TermList {
	return a.GetForm().GetSubTerms()
}

func (a *AllType) SubstituteVarByMeta(old Var, new Meta) {
	a.form.SubstituteVarByMeta(old, new)
}

func (a *AllType) GetInternalMetas() *MetaList {
	return a.MetaList
}

func (a *AllType) SetInternalMetas(m *MetaList) {
	a.MetaList = m
}

func (a *AllType) GetSubFormulasRecur() *FormList {
	return getAllSubFormulasAppended(a)
}

func (a *AllType) GetChildFormulas() *FormList {
	return NewFormList(a.GetForm())
}
