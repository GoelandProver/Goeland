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

/* Equ(f1, f2): f1 equivalent to f2 */
type Equ struct {
	*MappedString
	index  int
	f1, f2 Form
	*MetaList
}

func NewEquSimple(i int, firstForm, secondForm Form, metas *MetaList) *Equ {
	fms := &MappedString{}
	equ := &Equ{fms, i, firstForm, secondForm, metas}
	fms.MappableString = equ
	return equ
}

func NewEquIndexed(i int, firstForm, secondForm Form) *Equ {
	return NewEquSimple(i, firstForm, secondForm, NewMetaList())
}

func NewEqu(firstForm, secondForm Form) *Equ {
	return NewEquIndexed(MakerIndexFormula(), firstForm, secondForm)
}

func (e *Equ) ToMappedStringSurround(mapping MapString, displayTypes bool) string {
	return "(%s)"
}

func (e *Equ) ToMappedStringChild(mapping MapString, displayTypes bool) (separator, emptyValue string) {
	return " " + mapping[EquConn] + " ", ""
}

func (e *Equ) GetChildrenForMappedString() []MappableString {
	return e.GetChildFormulas().ToMappableStringSlice()
}

func (e *Equ) GetIndex() int { return e.index }
func (e *Equ) GetF1() Form   { return e.f1.Copy() }
func (e *Equ) GetF2() Form   { return e.f2.Copy() }
func (e *Equ) Copy() Form {
	return NewEquSimple(e.index, e.GetF1(), e.GetF2(), e.MetaList.Copy())
}

func (e *Equ) GetMetas() *MetaList {
	allMetas := e.f1.GetMetas().Copy()
	allMetas.AppendIfNotContains(e.f2.GetMetas().Slice()...)

	return allMetas
}

func (e *Equ) GetType() typing.TypeScheme { return typing.DefaultPropType(0) }
func (e *Equ) ToString() string           { return e.ToMappedString(DefaultMapString, true) }

func (e *Equ) Equals(f any) bool {
	oth, isEqu := f.(*Equ)
	return isEqu &&
		e.f1.Equals(oth.f1) && e.f2.Equals(oth.f2)
}

func (e *Equ) ReplaceTypeByMeta(varList []typing.TypeVar, index int) {
	e.f1.ReplaceTypeByMeta(varList, index)
	e.f2.ReplaceTypeByMeta(varList, index)
}

func (e *Equ) ReplaceVarByTerm(old Var, new Term) bool {
	isF1Replaced := e.f1.ReplaceVarByTerm(old, new)
	isF2Replaced := e.f2.ReplaceVarByTerm(old, new)
	return isF1Replaced || isF2Replaced
}

func (e *Equ) RenameVariables() {
	e.f1.RenameVariables()
	e.f2.RenameVariables()
}

func (e *Equ) GetSubTerms() *TermList {
	res := e.GetF1().GetSubTerms().Copy()
	res.AppendIfNotContains(e.GetF2().GetSubTerms().Slice()...)

	return res
}

func (e *Equ) SubstituteVarByMeta(old Var, new Meta) {
	fl, metas := substVarByMetaInFormList(old, new, NewFormList(e.f1, e.f2), e.MetaList)
	e.f1 = fl.Get(0)
	e.f2 = fl.Get(1)
	e.MetaList = metas
}

func (e *Equ) GetInternalMetas() *MetaList {
	return e.MetaList
}

func (e *Equ) SetInternalMetas(m *MetaList) {
	e.MetaList = m
}

func (e *Equ) GetSubFormulasRecur() *FormList {
	return getAllSubFormulasAppended(e)
}

func (e *Equ) GetChildFormulas() *FormList {
	return NewFormList(e.f1, e.f2)
}
