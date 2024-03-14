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
	*MetaList
}

func NewImpSimple(i int, firstForm, secondForm Form, metas *MetaList) *Imp {
	fms := &MappedString{}
	imp := &Imp{fms, i, firstForm, secondForm, metas}
	fms.MappableString = imp
	return imp
}

func NewImpIndexed(i int, firstForm, secondForm Form) *Imp {
	return NewImpSimple(i, firstForm, secondForm, NewMetaList())
}

func NewImp(firstForm, secondForm Form) *Imp {
	return NewImpIndexed(MakerIndexFormula(), firstForm, secondForm)
}

func (i *Imp) ToMappedStringSurround(mapping MapString, displayTypes bool) string {
	return "(%s)"
}

func (i *Imp) ToMappedStringChild(mapping MapString, displayTypes bool) (separator, emptyValue string) {
	return " " + mapping[ImpConn] + " ", ""
}

func (i *Imp) GetChildrenForMappedString() []MappableString {
	return i.GetChildFormulas().ToMappableStringSlice()
}

func (i *Imp) GetIndex() int { return i.index }
func (i *Imp) GetF1() Form   { return i.f1.Copy() }
func (i *Imp) GetF2() Form   { return i.f2.Copy() }
func (i *Imp) Copy() Form {
	return NewImpSimple(i.index, i.GetF1(), i.GetF2(), i.MetaList.Copy())
}

func (i *Imp) GetMetas() *MetaList {
	allMetas := i.f1.GetMetas().Copy()
	allMetas.AppendIfNotContains(i.f2.GetMetas().Slice()...)

	return allMetas
}

func (i *Imp) GetType() typing.TypeScheme { return typing.DefaultPropType(0) }
func (i *Imp) ToString() string           { return i.ToMappedString(DefaultMapString, true) }

func (i *Imp) Equals(other any) bool {
	if typed, ok := other.(*Imp); ok {
		return i.f1.Equals(typed.f1) && i.f2.Equals(typed.f2)
	}

	return false
}

func (i *Imp) ReplaceTypeByMeta(varList []typing.TypeVar, index int) {
	i.f1.ReplaceTypeByMeta(varList, index)
	i.f2.ReplaceTypeByMeta(varList, index)
}

func (i *Imp) ReplaceVarByTerm(old Var, new Term) bool {
	return i.f1.ReplaceVarByTerm(old, new) || i.f2.ReplaceVarByTerm(old, new)
}

func (i *Imp) RenameVariables() {
	i.f1.RenameVariables()
	i.f2.RenameVariables()
}

func (i *Imp) GetSubTerms() *TermList {
	res := i.GetF1().GetSubTerms().Copy()
	res.AppendIfNotContains(i.GetF2().GetSubTerms().Slice()...)

	return res
}

func (i *Imp) SubstituteVarByMeta(old Var, new Meta) {
	fl, metas := substVarByMetaInFormList(old, new, NewFormList(i.f1, i.f2), i.MetaList)
	i.f1 = fl.Get(0)
	i.f2 = fl.Get(1)
	i.MetaList = metas
}

func (i *Imp) GetInternalMetas() *MetaList {
	return i.MetaList
}

func (i *Imp) SetInternalMetas(m *MetaList) {
	i.MetaList = m
}

func (i *Imp) GetSubFormulasRecur() *FormList {
	return getAllSubFormulasAppended(i)
}

func (i *Imp) GetChildFormulas() *FormList {
	return NewFormList(i.f1, i.f2)
}
