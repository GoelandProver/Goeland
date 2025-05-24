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
* This file implements the different formulas.
**/

package AST

import (
	"strings"

	"github.com/GoelandProver/Goeland/Glob"
	"github.com/GoelandProver/Goeland/Lib"
)

// -----------------------------------------------------------------------------
// Utility functions

func getAllSubFormulasAppended(f Form) *FormList {
	subforms := NewFormList(f.Copy())
	for _, sf := range f.GetChildFormulas().Slice() {
		subforms.Append(sf.GetSubFormulasRecur().Slice()...)
	}
	return subforms
}

func substVarByMetaInFormList(old Var, new Meta, formList *FormList, metaList *MetaList) (replacedFormList *FormList, newMetaList *MetaList) {
	replacedFormList = NewFormList()
	newMetaList = metaList.Copy()
	found := false

	for _, form := range formList.Slice() {
		replacedForm := form.SubstituteVarByMeta(old, new)
		replacedFormList.Append(replacedForm)

		if replacedForm.GetInternalMetas().Contains(new) || Glob.IsOuterSko() {
			found = true
		}
	}

	if found {
		newMetaList.AppendIfNotContains(new)
	}

	return replacedFormList, metaList
}

// -----------------------------------------------------------------------------
// Forall

type All struct {
	quantifier
}

func MakeAllSimple(i int, vars []Var, forms Form, metas *MetaList) All {
	return All{makeQuantifier(i, vars, forms, metas, AllQuant)}
}

func MakeAll(i int, vars []Var, forms Form) All {
	return MakeAllSimple(i, vars, forms, NewMetaList())
}

func MakerAll(vars []Var, forms Form) All {
	return MakeAll(MakerIndexFormula(), vars, forms)
}

func (a All) Equals(other any) bool {
	if typed, ok := other.(All); ok {
		return AreEqualsVarList(a.GetVarList(), typed.GetVarList()) && a.GetForm().Equals(typed.GetForm())
	}

	return false
}

func (a All) GetSubFormulasRecur() *FormList {
	return getAllSubFormulasAppended(a)
}

func (a All) Copy() Form {
	return All{a.quantifier.copy()}
}

func (a All) RenameVariables() Form {
	return All{a.quantifier.renameVariables()}
}

func (a All) ReplaceTypeByMeta(varList []TypeVar, index int) Form {
	return All{a.quantifier.replaceTypeByMeta(varList, index)}
}

func (a All) ReplaceTermByTerm(old Term, new Term) (Form, bool) {
	quant, isReplaced := a.quantifier.replaceTermByTerm(old, new)
	return All{quant}, isReplaced
}

func (a All) SetInternalMetas(m *MetaList) Form {
	return All{a.quantifier.setInternalMetas(m)}
}

func (a All) SubstituteVarByMeta(old Var, new Meta) Form {
	return All{a.quantifier.substituteVarByMeta(old, new)}
}

func (a All) ReplaceMetaByTerm(meta Meta, term Term) Form {
	return All{a.quantifier.replaceMetaByTerm(meta, term)}
}

// -----------------------------------------------------------------------------
// Exists

type Ex struct {
	quantifier
}

func MakeExSimple(i int, vars []Var, forms Form, metas *MetaList) Ex {
	return Ex{makeQuantifier(i, vars, forms, metas, ExQuant)}
}

func MakeEx(i int, vars []Var, forms Form) Ex {
	return MakeExSimple(i, vars, forms, NewMetaList())
}

func MakerEx(vars []Var, forms Form) Ex {
	return MakeEx(MakerIndexFormula(), vars, forms)
}

func (e Ex) Equals(other any) bool {
	if typed, ok := other.(Ex); ok {
		return AreEqualsVarList(e.GetVarList(), typed.GetVarList()) && e.GetForm().Equals(typed.GetForm())
	}

	return false
}

func (e Ex) GetSubFormulasRecur() *FormList {
	return getAllSubFormulasAppended(e)
}

func (e Ex) Copy() Form {
	return Ex{e.quantifier.copy()}
}

func (e Ex) RenameVariables() Form {
	return Ex{e.quantifier.renameVariables()}
}

func (e Ex) ReplaceTypeByMeta(varList []TypeVar, index int) Form {
	return Ex{e.quantifier.replaceTypeByMeta(varList, index)}
}

func (e Ex) ReplaceTermByTerm(old Term, new Term) (Form, bool) {
	quant, isReplaced := e.quantifier.replaceTermByTerm(old, new)
	return Ex{quant}, isReplaced
}

func (e Ex) SetInternalMetas(m *MetaList) Form {
	return Ex{e.quantifier.setInternalMetas(m)}
}

func (e Ex) SubstituteVarByMeta(old Var, new Meta) Form {
	return Ex{e.quantifier.substituteVarByMeta(old, new)}
}

func (e Ex) ReplaceMetaByTerm(meta Meta, term Term) Form {
	return Ex{e.quantifier.replaceMetaByTerm(meta, term)}
}

// -----------------------------------------------------------------------------
// Π-types

type AllType struct {
	*MappedString
	index  int
	tvList []TypeVar
	form   Form
	*MetaList
}

func MakeAllTypeSimple(i int, typeVars []TypeVar, form Form, metas *MetaList) AllType {
	fms := &MappedString{}
	at := AllType{fms, i, typeVars, form, metas}
	fms.MappableString = &at
	return at
}

func MakeAllType(i int, typeVars []TypeVar, form Form) AllType {
	return MakeAllTypeSimple(i, typeVars, form, NewMetaList())
}

func MakerAllType(typeVars []TypeVar, form Form) AllType {
	return MakeAllType(MakerIndexFormula(), typeVars, form)
}

/* Methods */

func (a AllType) GetIndex() int         { return a.index }
func (a AllType) GetVarList() []TypeVar { return copyTypeVarList(a.tvList) }
func (a AllType) GetForm() Form         { return a.form.Copy() }
func (a AllType) GetType() TypeScheme   { return DefaultPropType(0) }

/* Form interface */

func (a AllType) ToMappedString(mapping MapString, displayTypes bool) string {
	return mapping[QuantVarOpen] + Glob.ListToString(a.GetVarList(), ", ", "") + " : " + mapping[TypeVarType] + mapping[QuantVarClose] + mapping[QuantVarSep] + " (" + a.GetForm().ToString() + ")"
}

func (a AllType) ToString() string {
	return a.MappedString.ToString()
}

func (a AllType) ToMappedStringSurround(mapping MapString, displayTypes bool) string {
	return "(" + mapping[AllTypeQuant] + " " + mapping[QuantVarOpen] + Glob.ListToString(a.GetVarList(), ", ", "") + " : " + mapping[TypeVarType] + mapping[QuantVarClose] + mapping[QuantVarSep] + " (%s))"
}

func (a AllType) ToMappedStringChild(mapping MapString, displayTypes bool) (separator, emptyValue string) {
	return "", ""
}

func (a AllType) GetChildrenForMappedString() []MappableString {
	return a.GetChildFormulas().ToMappableStringSlice()
}

func (a AllType) GetMetas() *MetaList { return a.GetForm().GetMetas() }

func (a AllType) Copy() Form {
	return MakeAllTypeSimple(a.index, copyTypeVarList(a.tvList), a.form.Copy(), a.MetaList.Copy())
}

func (a AllType) Equals(f any) bool {
	oth, isAll := f.(AllType)
	return isAll &&
		AreEqualsTypeVarList(a.tvList, oth.tvList) &&
		a.form.Equals(oth.form)
}

func (a AllType) ReplaceTypeByMeta(varList []TypeVar, index int) Form {
	return MakeAllType(a.GetIndex(), a.tvList, a.GetForm().ReplaceTypeByMeta(varList, index))
}

func (a AllType) ReplaceTermByTerm(old Term, new Term) (Form, bool) {
	f, res := a.GetForm().ReplaceTermByTerm(old, new)
	return MakeAllTypeSimple(a.GetIndex(), a.GetVarList(), f, a.MetaList), res
}

func (a AllType) RenameVariables() Form {
	return MakeAllType(a.GetIndex(), a.GetVarList(), a.GetForm().RenameVariables())
}

func (a AllType) GetSubTerms() *TermList {
	return a.GetForm().GetSubTerms()
}

func (a AllType) SubstituteVarByMeta(old Var, new Meta) Form {
	f := a.GetForm().SubstituteVarByMeta(old, new)
	return MakeAllTypeSimple(a.index, a.tvList, f, f.GetInternalMetas().Copy())
}

func (a AllType) GetInternalMetas() *MetaList {
	return a.MetaList
}

func (a AllType) SetInternalMetas(m *MetaList) Form {
	a.MetaList = m
	return a
}

func (a AllType) GetSubFormulasRecur() *FormList {
	return getAllSubFormulasAppended(a)
}

func (a AllType) GetChildFormulas() *FormList {
	return NewFormList(a.GetForm())
}

func (e AllType) ReplaceMetaByTerm(meta Meta, term Term) Form {
	return MakeAllType(e.GetIndex(), e.GetVarList(), e.GetForm().ReplaceMetaByTerm(meta, term))
}

// -----------------------------------------------------------------------------
// Or

type Or struct {
	*MappedString
	index int
	*FormList
	*MetaList
}

/** Constructors **/

func MakeOrSimple(i int, forms *FormList, metas *MetaList) Or {
	fms := &MappedString{}
	or := Or{fms, i, forms, metas}
	fms.MappableString = &or
	return or
}

func MakeOr(i int, forms *FormList) Or {
	return MakeOrSimple(i, forms, NewMetaList())
}

func MakerOr(forms *FormList) Or {
	return MakeOr(MakerIndexFormula(), forms)
}

/** Methods **/

/** - Form interface Methods **/

func (o Or) GetIndex() int {
	return o.index
}

func (o Or) GetMetas() *MetaList {
	return metasUnion(o.FormList)
}

func (o Or) GetType() TypeScheme {
	return DefaultPropType(0)
}

func (o Or) GetSubTerms() *TermList {
	res := NewTermList()

	for _, tl := range o.FormList.Slice() {
		res.AppendIfNotContains(tl.GetSubTerms().Slice()...)
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

func (o Or) ReplaceTypeByMeta(varList []TypeVar, index int) Form {
	return MakeOr(o.GetIndex(), replaceList(o.FormList, varList, index))
}

func (o Or) ReplaceTermByTerm(old Term, new Term) (Form, bool) {
	formList, res := replaceTermInFormList(o.FormList, old, new)
	return MakeOrSimple(o.GetIndex(), formList, o.MetaList), res
}

func (o Or) RenameVariables() Form {
	return MakeOr(o.GetIndex(), renameFormList(o.FormList))
}

func (o Or) SubstituteVarByMeta(old Var, new Meta) Form {
	newFormList, newMetas := substVarByMetaInFormList(old, new, o.FormList, o.MetaList)
	return MakeOrSimple(o.index, newFormList, newMetas)
}

func (o Or) GetInternalMetas() *MetaList {
	return o.MetaList
}

func (o Or) SetInternalMetas(m *MetaList) Form {
	o.MetaList = m
	return o
}

func (o Or) GetSubFormulasRecur() *FormList {
	return getAllSubFormulasAppended(o)
}

func (o Or) GetChildFormulas() *FormList {
	return o.FormList
}

func (o Or) ReplaceMetaByTerm(meta Meta, term Term) Form {
	return MakeOr(o.GetIndex(), o.FormList.ReplaceMetaByTerm(meta, term))
}

// -----------------------------------------------------------------------------
// And

type And struct {
	*MappedString
	index int
	*FormList
	*MetaList
}

/** Constructors **/

func MakeAndSimple(i int, forms *FormList, metas *MetaList) And {
	fms := &MappedString{}
	and := And{fms, i, forms, metas}
	fms.MappableString = &and
	return and
}

func MakeAndSimpleBinary(i int, forms *FormList, metas *MetaList) And {
	switch forms.Len() {
	case 0, 1, 2:
		return MakeAndSimple(i, forms, metas)
	default:
		return MakeAndSimple(
			i,
			NewFormList([]Form{forms.Get(0), MakerAnd(NewFormList(forms.GetElements(1, forms.Len())...), true)}...),
			metas)
	}
}

func MakeAnd(i int, forms *FormList, binary ...bool) And {
	if binary != nil {
		return MakeAndSimpleBinary(i, forms, NewMetaList())
	} else {
		return MakeAndSimple(i, forms, NewMetaList())
	}
}

func MakerAnd(forms *FormList, binary ...bool) And {
	return MakeAnd(MakerIndexFormula(), forms, binary...)
}

/** Methods **/

/** - Form interface Methods **/

func (a And) GetIndex() int {
	return a.index
}

func (a And) GetMetas() *MetaList {
	return metasUnion(a.FormList)
}

func (a And) GetType() TypeScheme {
	return DefaultPropType(0)
}

func (a And) GetSubTerms() *TermList {
	res := NewTermList()

	for _, tl := range a.FormList.Slice() {
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

func (a And) ReplaceTypeByMeta(varList []TypeVar, index int) Form {
	return MakeAnd(a.GetIndex(), replaceList(a.FormList, varList, index))
}

func (a And) ReplaceTermByTerm(old Term, new Term) (Form, bool) {
	varList, res := replaceTermInFormList(a.FormList, old, new)
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

func (a And) GetSubFormulasRecur() *FormList {
	return getAllSubFormulasAppended(a)
}

func (a And) GetChildFormulas() *FormList {
	return a.FormList
}

func (a And) ReplaceMetaByTerm(meta Meta, term Term) Form {
	return MakeAnd(a.GetIndex(), a.FormList.ReplaceMetaByTerm(meta, term))
}

// -----------------------------------------------------------------------------
// Equivalence

type Equ struct {
	*MappedString
	index  int
	f1, f2 Form
	*MetaList
}

func MakeEquSimple(i int, firstForm, secondForm Form, metas *MetaList) Equ {
	fms := &MappedString{}
	equ := Equ{fms, i, firstForm, secondForm, metas}
	fms.MappableString = &equ
	return equ
}

func MakeEqu(i int, firstForm, secondForm Form) Equ {
	return MakeEquSimple(i, firstForm, secondForm, NewMetaList())
}

func MakerEqu(firstForm, secondForm Form) Equ {
	return MakeEqu(MakerIndexFormula(), firstForm, secondForm)
}

func (e Equ) ToMappedStringSurround(mapping MapString, displayTypes bool) string {
	return "(%s)"
}

func (e Equ) ToMappedStringChild(mapping MapString, displayTypes bool) (separator, emptyValue string) {
	return " " + mapping[EquConn] + " ", ""
}

func (e Equ) GetChildrenForMappedString() []MappableString {
	return e.GetChildFormulas().ToMappableStringSlice()
}

func (e Equ) GetIndex() int { return e.index }
func (e Equ) GetF1() Form   { return e.f1.Copy() }
func (e Equ) GetF2() Form   { return e.f2.Copy() }
func (e Equ) Copy() Form {
	return MakeEquSimple(e.index, e.GetF1(), e.GetF2(), e.MetaList.Copy())
}

func (e Equ) GetMetas() *MetaList {
	allMetas := e.f1.GetMetas().Copy()
	allMetas.AppendIfNotContains(e.f2.GetMetas().Slice()...)

	return allMetas
}

func (e Equ) GetType() TypeScheme { return DefaultPropType(0) }
func (e Equ) ToString() string    { return e.ToMappedString(DefaultMapString, true) }

func (e Equ) Equals(f any) bool {
	oth, isEqu := f.(Equ)
	return isEqu &&
		e.f1.Equals(oth.f1) && e.f2.Equals(oth.f2)
}

func (e Equ) ReplaceTypeByMeta(varList []TypeVar, index int) Form {
	return MakeEqu(e.GetIndex(), e.GetF1().ReplaceTypeByMeta(varList, index), e.GetF2().ReplaceTypeByMeta(varList, index))
}

func (e Equ) ReplaceTermByTerm(old Term, new Term) (Form, bool) {
	f1, res1 := e.GetF1().ReplaceTermByTerm(old, new)
	f2, res2 := e.GetF2().ReplaceTermByTerm(old, new)
	MakeEquSimple(e.GetIndex(), f1, f2, e.MetaList)
	return MakeEquSimple(e.GetIndex(), f1, f2, e.MetaList), res1 || res2
}

func (e Equ) RenameVariables() Form {
	return MakeEqu(e.GetIndex(), e.GetF1().RenameVariables(), e.GetF2().RenameVariables())
}

func (e Equ) GetSubTerms() *TermList {
	res := e.GetF1().GetSubTerms().Copy()
	res.AppendIfNotContains(e.GetF2().GetSubTerms().Slice()...)

	return res
}

func (e Equ) SubstituteVarByMeta(old Var, new Meta) Form {
	fl, metas := substVarByMetaInFormList(old, new, NewFormList(e.f1, e.f2), e.MetaList)
	return MakeEquSimple(e.index, fl.Get(0), fl.Get(1), metas)
}

func (e Equ) GetInternalMetas() *MetaList {
	return e.MetaList
}

func (e Equ) SetInternalMetas(m *MetaList) Form {
	e.MetaList = m
	return e
}

func (e Equ) GetSubFormulasRecur() *FormList {
	return getAllSubFormulasAppended(e)
}

func (e Equ) GetChildFormulas() *FormList {
	return NewFormList(e.f1, e.f2)
}

func (e Equ) ReplaceMetaByTerm(meta Meta, term Term) Form {
	return MakeEqu(e.GetIndex(), e.f1.ReplaceMetaByTerm(meta, term), e.f2.ReplaceMetaByTerm(meta, term))
}

// -----------------------------------------------------------------------------
// Implication

type Imp struct {
	*MappedString
	index  int
	f1, f2 Form
	*MetaList
}

func MakeImpSimple(i int, firstForm, secondForm Form, metas *MetaList) Imp {
	fms := &MappedString{}
	imp := Imp{fms, i, firstForm, secondForm, metas}
	fms.MappableString = &imp
	return imp
}

func MakeImp(i int, firstForm, secondForm Form) Imp {
	return MakeImpSimple(i, firstForm, secondForm, NewMetaList())
}

func MakerImp(firstForm, secondForm Form) Imp {
	return MakeImp(MakerIndexFormula(), firstForm, secondForm)
}

func (i Imp) ToMappedStringSurround(mapping MapString, displayTypes bool) string {
	return "(%s)"
}

func (i Imp) ToMappedStringChild(mapping MapString, displayTypes bool) (separator, emptyValue string) {
	return " " + mapping[ImpConn] + " ", ""
}

func (i Imp) GetChildrenForMappedString() []MappableString {
	return i.GetChildFormulas().ToMappableStringSlice()
}

func (i Imp) GetIndex() int { return i.index }
func (i Imp) GetF1() Form   { return i.f1.Copy() }
func (i Imp) GetF2() Form   { return i.f2.Copy() }
func (i Imp) Copy() Form {
	return MakeImpSimple(i.index, i.GetF1(), i.GetF2(), i.MetaList.Copy())
}

func (i Imp) GetMetas() *MetaList {
	allMetas := i.f1.GetMetas().Copy()
	allMetas.AppendIfNotContains(i.f2.GetMetas().Slice()...)

	return allMetas
}

func (i Imp) GetType() TypeScheme { return DefaultPropType(0) }
func (i Imp) ToString() string    { return i.ToMappedString(DefaultMapString, true) }

func (i Imp) Equals(other any) bool {
	if typed, ok := other.(Imp); ok {
		return i.f1.Equals(typed.f1) && i.f2.Equals(typed.f2)
	}

	return false
}

func (i Imp) ReplaceTypeByMeta(varList []TypeVar, index int) Form {
	return MakeImp(i.GetIndex(), i.GetF1().ReplaceTypeByMeta(varList, index), i.GetF2().ReplaceTypeByMeta(varList, index))
}

func (i Imp) ReplaceTermByTerm(old Term, new Term) (Form, bool) {
	f1, res1 := i.GetF1().ReplaceTermByTerm(old, new)
	f2, res2 := i.GetF2().ReplaceTermByTerm(old, new)

	return MakeImpSimple(i.index, f1, f2, i.MetaList), res1 || res2
}

func (i Imp) RenameVariables() Form {
	return MakeImp(i.GetIndex(), i.GetF1().RenameVariables(), i.GetF2().RenameVariables())
}

func (i Imp) GetSubTerms() *TermList {
	res := i.GetF1().GetSubTerms().Copy()
	res.AppendIfNotContains(i.GetF2().GetSubTerms().Slice()...)

	return res
}

func (i Imp) SubstituteVarByMeta(old Var, new Meta) Form {
	fl, metas := substVarByMetaInFormList(old, new, NewFormList(i.f1, i.f2), i.MetaList)
	return MakeImpSimple(i.index, fl.Get(0), fl.Get(1), metas)
}

func (i Imp) GetInternalMetas() *MetaList {
	return i.MetaList
}

func (i Imp) SetInternalMetas(m *MetaList) Form {
	i.MetaList = m
	return i
}

func (i Imp) GetSubFormulasRecur() *FormList {
	return getAllSubFormulasAppended(i)
}

func (i Imp) GetChildFormulas() *FormList {
	return NewFormList(i.f1, i.f2)
}

func (i Imp) ReplaceMetaByTerm(meta Meta, term Term) Form {
	return MakeImp(i.GetIndex(), i.f1.ReplaceMetaByTerm(meta, term), i.f2.ReplaceMetaByTerm(meta, term))
}

// -----------------------------------------------------------------------------
// Not

type Not struct {
	*MappedString
	index int
	f     Form
	*MetaList
}

/** Constructors **/

func MakeNotSimple(i int, form Form, metas *MetaList) Not {
	fms := &MappedString{}
	not := Not{fms, i, form, metas}
	fms.MappableString = &not
	return not
}

func MakeNot(i int, form Form) Not {
	return MakeNotSimple(i, form, NewMetaList())
}

func MakerNot(form Form) Not {
	return MakeNot(MakerIndexFormula(), form)
}

/** Methods **/

/** - Form interface Methods **/

func (n Not) GetIndex() int {
	return n.index
}

func (n Not) GetMetas() *MetaList {
	return n.GetForm().GetMetas()
}

func (n Not) GetType() TypeScheme {
	return DefaultPropType(0)
}

func (n Not) GetSubTerms() *TermList {
	return n.GetForm().GetSubTerms()
}

func (n Not) Equals(other any) bool {
	if typed, ok := other.(Not); ok {
		return typed.f.Equals(n.f)
	}

	return false
}

func (n Not) Copy() Form {
	return MakeNotSimple(n.index, n.GetForm(), n.MetaList.Copy())
}

func (n Not) ToString() string {
	return n.MappedString.ToString()
}

func (n Not) ToMappedStringSurround(mapping MapString, displayTypes bool) string {
	return mapping[NotConn] + "(%s)"
}

func (n Not) ToMappedStringChild(mapping MapString, displayTypes bool) (separator, emptyValue string) {
	return "", ""
}

func (n Not) GetChildrenForMappedString() []MappableString {
	return n.GetChildFormulas().ToMappableStringSlice()
}

func (n Not) ReplaceTypeByMeta(varList []TypeVar, index int) Form {
	return MakeNot(n.GetIndex(), n.f.ReplaceTypeByMeta(varList, index))
}

func (n Not) ReplaceTermByTerm(old Term, new Term) (Form, bool) {
	f, res := n.f.ReplaceTermByTerm(old, new)
	return MakeNotSimple(n.GetIndex(), f, n.MetaList), res
}

func (n Not) RenameVariables() Form {
	return MakeNot(n.GetIndex(), n.f.RenameVariables())
}

func (n Not) ReplaceMetaByTerm(meta Meta, term Term) Form {
	return MakeNot(n.GetIndex(), n.f.ReplaceMetaByTerm(meta, term))
}

/** - Other Methods **/

func (n Not) GetForm() Form {
	return n.f.Copy()
}

func (n Not) SubstituteVarByMeta(old Var, new Meta) Form {
	f := n.GetForm().SubstituteVarByMeta(old, new)
	return MakeNotSimple(n.index, f, f.GetInternalMetas().Copy())
}

func (n Not) GetInternalMetas() *MetaList {
	return n.MetaList
}

func (n Not) SetInternalMetas(m *MetaList) Form {
	n.MetaList = m
	return n
}

func (n Not) GetSubFormulasRecur() *FormList {
	return getAllSubFormulasAppended(n)
}

func (n Not) GetChildFormulas() *FormList {
	return NewFormList(n.GetForm())
}

/** Utils **/

/* Gives a new Form that is the negation of the given Form */
func RefuteForm(form Form) Form {
	internalMetas := form.GetInternalMetas()
	return MakerNot(form).SetInternalMetas(internalMetas)
}

/* Gives a new Form that isn't a Not */
func RemoveNeg(form Form) Form {
	switch typedForm := form.(type) {
	case Not:
		return RemoveNeg(typedForm.GetForm())
	default:
		return form
	}
}

/* Gives the deepest Form that has one or less Not around */
func SimplifyNegations(form Form) Form {
	form, isEven := getDeepFormWithoutNot(form, true)

	if !isEven {
		form = RefuteForm(form)
	}

	return form
}

func getDeepFormWithoutNot(form Form, isEven bool) (Form, bool) {
	if not, isNot := form.(Not); isNot {
		return getDeepFormWithoutNot(not.GetForm(), !isEven)
	} else {
		return form, isEven
	}
}

// -----------------------------------------------------------------------------
// Predicates

type Pred struct {
	*MappedString
	index    int
	id       Id
	args     *TermList
	typeVars []TypeApp
	typeHint TypeScheme
	*MetaList
}

func MakePredSimple(index int, id Id, terms *TermList, typeApps []TypeApp, metas *MetaList, typeSchemes ...TypeScheme) Pred {
	if len(typeSchemes) == 1 {
		fms := &MappedString{}
		pred := Pred{fms, index, id, terms, typeApps, typeSchemes[0], metas}
		fms.MappableString = &pred
		return pred
	} else {
		fms := &MappedString{}
		pred := Pred{fms, index, id, terms, typeApps, DefaultPropType(terms.Len()), metas}
		fms.MappableString = &pred
		return pred
	}
}

func MakePred(index int, id Id, terms *TermList, typeApps []TypeApp, typeSchemes ...TypeScheme) Pred {
	return MakePredSimple(index, id, terms, typeApps, NewMetaList(), typeSchemes...)
}

func MakerPred(id Id, terms *TermList, typeApps []TypeApp, typeSchemes ...TypeScheme) Pred {
	return MakePred(MakerIndexFormula(), id, terms, typeApps, typeSchemes...)
}

/* Pred attributes getters */

func (p Pred) GetIndex() int          { return p.index }
func (p Pred) GetID() Id              { return p.id.Copy().(Id) }
func (p Pred) GetArgs() *TermList     { return p.args.Copy() }
func (p Pred) GetTypeVars() []TypeApp { return CopyTypeAppList(p.typeVars) }

/* Formula methods */

func (p Pred) GetType() TypeScheme   { return p.typeHint }
func (p Pred) RenameVariables() Form { return p }

func (p Pred) ToString() string {
	return p.MappedString.ToString()
}

func (p Pred) ToMappedStringSurround(mapping MapString, displayTypes bool) string {
	if len(p.typeVars) == 0 && p.GetArgs().Len() == 0 {
		return p.GetID().ToMappedString(mapping, displayTypes) + "%s"
	}
	args := []string{}

	if len(p.typeVars) > 0 {
		if tv := Glob.ListToString(p.typeVars, ", ", mapping[PredEmpty]); tv != "" {
			args = append(args, tv)
		}
	}
	args = append(args, "%s")

	if p.GetID().GetName() == "=" {
		return "(" + strings.Join(args, " "+mapping[PredTypeVarSep]+" ") + ")"
	}

	return p.GetID().ToMappedString(mapping, displayTypes) + "(" + strings.Join(args, " "+mapping[PredTypeVarSep]+" ") + ")"
}

func (p Pred) ToMappedStringChild(mapping MapString, displayTypes bool) (separator, emptyValue string) {
	if p.GetID().GetName() == "=" {
		return " = ", mapping[PredEmpty]
	}

	return ", ", mapping[PredEmpty]
}

func (p Pred) GetChildrenForMappedString() []MappableString {
	return p.GetArgs().ToMappableStringSlice()
}

func (p Pred) Copy() Form {
	return MakePredSimple(p.index, p.id, p.GetArgs(), CopyTypeAppList(p.GetTypeVars()), p.MetaList.Copy(), p.GetType())
}

func (p Pred) Equals(other any) bool {
	if typed, ok := other.(Pred); ok {
		return typed.id.Equals(p.id) &&
			Lib.ComparableList[TypeApp](p.typeVars).Equals(typed.typeVars) &&
			typed.args.Equals(p.args) &&
			p.typeHint.Equals(typed.typeHint)
	}

	return false
}

func (p Pred) GetMetas() *MetaList {
	res := NewMetaList()

	for _, m := range p.GetArgs().Slice() {
		switch mt := m.(type) {
		case Meta:
			res.Append(mt)
		case Fun:
			res.Append(mt.GetMetas().Slice()...)
		}
	}

	return res
}

func (p Pred) ReplaceTypeByMeta(varList []TypeVar, index int) Form {
	return MakePred(p.GetIndex(), p.GetID(), replaceTermListTypesByMeta(p.GetArgs(), varList, index), instanciateTypeAppList(p.typeVars, varList, index), p.GetType())
}

func (p Pred) ReplaceTermByTerm(old Term, new Term) (Form, bool) {
	termList, res := replaceTermInTermList(p.GetArgs(), old, new)
	return MakePredSimple(p.GetIndex(), p.GetID(), termList, p.GetTypeVars(), p.MetaList, p.GetType()), res
}

func (p Pred) GetSubTerms() *TermList {
	res := NewTermList()

	for _, t := range p.GetArgs().Slice() {
		res.AppendIfNotContains(t)
		res.AppendIfNotContains(t.GetSubTerms().Slice()...)
	}

	return res
}

func (p Pred) SubstituteVarByMeta(old Var, new Meta) Form {
	f, res := p.ReplaceTermByTerm(old, new)

	if p, isPred := f.(Pred); isPred && (Glob.IsOuterSko() || res) {
		metaList := p.MetaList.Copy()
		metaList.AppendIfNotContains(new)

		return MakePredSimple(p.index, p.id, p.args, p.typeVars, metaList, p.typeHint)
	}

	return f
}

func (p Pred) GetInternalMetas() *MetaList {
	return p.MetaList
}

func (p Pred) SetInternalMetas(m *MetaList) Form {
	p.MetaList = m
	return p
}

func (p Pred) GetSubFormulasRecur() *FormList {
	return NewFormList(p.Copy())
}

func (p Pred) GetChildFormulas() *FormList {
	return NewFormList()
}

func (p Pred) ReplaceMetaByTerm(meta Meta, term Term) Form {
	newTerms := NewTermList()

	for _, old := range p.args.Slice() {
		// ILL TODO: old.GetName() == meta.GetName() ??
		if old.Equals(meta) {
			newTerms.Append(term)
		} else {
			newTerms.Append(old)
		}
	}

	return MakePred(p.GetIndex(), p.id, newTerms, p.typeVars, p.GetType())
}

// -----------------------------------------------------------------------------
// True and False

type Top struct {
	*MappedString
	index int
}

func MakeTop(i int) Top {
	fms := &MappedString{}
	top := Top{fms, i}
	fms.MappableString = &top
	return top
}

func MakerTop() Top {
	return MakeTop(MakerIndexFormula())
}

func (t Top) ToMappedStringSurround(mapping MapString, displayTypes bool) string {
	return "%s"
}

func (t Top) ToMappedStringChild(mapping MapString, displayTypes bool) (separator, emptyValue string) {
	return "", mapping[TopType]
}

func (t Top) GetChildrenForMappedString() []MappableString {
	return t.GetChildFormulas().ToMappableStringSlice()
}

func (t Top) GetType() TypeScheme                         { return DefaultPropType(0) }
func (t Top) Copy() Form                                  { return MakeTop(t.GetIndex()) }
func (Top) Equals(f any) bool                             { _, isTop := f.(Top); return isTop }
func (Top) GetMetas() *MetaList                           { return NewMetaList() }
func (t Top) ReplaceTypeByMeta([]TypeVar, int) Form       { return MakeTop(t.GetIndex()) }
func (t Top) ReplaceTermByTerm(Term, Term) (Form, bool)   { return MakeTop(t.GetIndex()), false }
func (t Top) RenameVariables() Form                       { return MakeTop(t.GetIndex()) }
func (t Top) GetIndex() int                               { return t.index }
func (t Top) GetSubTerms() *TermList                      { return NewTermList() }
func (t Top) SubstituteVarByMeta(Var, Meta) Form          { return t }
func (t Top) GetInternalMetas() *MetaList                 { return NewMetaList() }
func (t Top) SetInternalMetas(*MetaList) Form             { return t }
func (t Top) GetSubFormulasRecur() *FormList              { return NewFormList(t.Copy()) }
func (t Top) GetChildFormulas() *FormList                 { return NewFormList() }
func (t Top) ReplaceMetaByTerm(meta Meta, term Term) Form { return t }

/* Bot (always false) definition */
type Bot struct {
	*MappedString
	index int
}

func MakeBot(i int) Bot {
	fms := &MappedString{}
	bot := Bot{fms, i}
	fms.MappableString = &bot
	return bot
}

func MakerBot() Bot {
	return MakeBot(MakerIndexFormula())
}

func (b Bot) ToMappedStringSurround(mapping MapString, displayTypes bool) string {
	return "%s"
}

func (b Bot) ToMappedStringChild(mapping MapString, displayTypes bool) (separator, emptyValue string) {
	return "", mapping[BotType]
}

func (b Bot) GetChildrenForMappedString() []MappableString {
	return b.GetChildFormulas().ToMappableStringSlice()
}

func (b Bot) GetType() TypeScheme                         { return DefaultPropType(0) }
func (b Bot) Copy() Form                                  { return MakeBot(b.GetIndex()) }
func (Bot) Equals(f any) bool                             { _, isBot := f.(Bot); return isBot }
func (Bot) GetMetas() *MetaList                           { return NewMetaList() }
func (b Bot) ReplaceTypeByMeta([]TypeVar, int) Form       { return MakeBot(b.GetIndex()) }
func (b Bot) ReplaceTermByTerm(Term, Term) (Form, bool)   { return MakeBot(b.GetIndex()), false }
func (b Bot) RenameVariables() Form                       { return MakeBot(b.GetIndex()) }
func (b Bot) GetIndex() int                               { return b.index }
func (b Bot) GetSubTerms() *TermList                      { return NewTermList() }
func (b Bot) SubstituteVarByMeta(Var, Meta) Form          { return b }
func (b Bot) GetInternalMetas() *MetaList                 { return NewMetaList() }
func (b Bot) SetInternalMetas(*MetaList) Form             { return b }
func (b Bot) GetSubFormulasRecur() *FormList              { return NewFormList(b.Copy()) }
func (b Bot) GetChildFormulas() *FormList                 { return NewFormList() }
func (b Bot) ReplaceMetaByTerm(meta Meta, term Term) Form { return b }
