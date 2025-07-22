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

func getAllSubFormulasAppended(f Form) Lib.List[Form] {
	subforms := Lib.MkListV(f.Copy())
	for _, sf := range f.GetChildFormulas().GetSlice() {
		subforms.Append(sf.GetSubFormulasRecur().GetSlice()...)
	}
	return subforms
}

func substVarByMetaInFormList(
	old Var,
	new Meta,
	formList Lib.List[Form],
	metas Lib.Set[Meta],
) (replacedFormList Lib.List[Form], newMetas Lib.Set[Meta]) {
	replacedFormList = Lib.NewList[Form]()
	newMetas = metas.Copy()
	found := false

	for _, form := range formList.GetSlice() {
		replacedForm := form.SubstituteVarByMeta(old, new)
		replacedFormList.Append(replacedForm)

		if replacedForm.GetMetas().Contains(new) {
			found = true
		}
	}

	if found {
		newMetas.Add(new)
	}

	return replacedFormList, newMetas
}

// -----------------------------------------------------------------------------
// Forall

type All struct {
	quantifier
}

func MakeAllSimple(i int, vars Lib.List[TypedVar], forms Form, metas Lib.Set[Meta]) All {
	return All{makeQuantifier(i, vars, forms, metas, AllQuant)}
}

func MakeAll(i int, vars Lib.List[TypedVar], forms Form) All {
	return MakeAllSimple(i, vars, forms, Lib.EmptySet[Meta]())
}

func MakerAll(vars Lib.List[TypedVar], forms Form) All {
	return MakeAll(MakerIndexFormula(), vars, forms)
}

func (a All) Equals(other any) bool {
	return a.quantifier.Equals(other)
}

func (a All) GetSubFormulasRecur() Lib.List[Form] {
	return getAllSubFormulasAppended(a)
}

func (a All) Copy() Form {
	return All{a.quantifier.copy()}
}

func (a All) RenameVariables() Form {
	return All{a.quantifier.renameVariables()}
}

func (a All) ReplaceTermByTerm(old Term, new Term) (Form, bool) {
	quant, isReplaced := a.quantifier.replaceTermByTerm(old, new)
	return All{quant}, isReplaced
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

func MakeExSimple(i int, vars Lib.List[TypedVar], forms Form, metas Lib.Set[Meta]) Ex {
	return Ex{makeQuantifier(i, vars, forms, metas, ExQuant)}
}

func MakeEx(i int, vars Lib.List[TypedVar], forms Form) Ex {
	return MakeExSimple(i, vars, forms, Lib.EmptySet[Meta]())
}

func MakerEx(vars Lib.List[TypedVar], forms Form) Ex {
	return MakeEx(MakerIndexFormula(), vars, forms)
}

func (e Ex) Equals(other any) bool {
	return e.quantifier.Equals(other)
}

func (e Ex) GetSubFormulasRecur() Lib.List[Form] {
	return getAllSubFormulasAppended(e)
}

func (e Ex) Copy() Form {
	return Ex{e.quantifier.copy()}
}

func (e Ex) RenameVariables() Form {
	return Ex{e.quantifier.renameVariables()}
}

func (e Ex) ReplaceTermByTerm(old Term, new Term) (Form, bool) {
	quant, isReplaced := e.quantifier.replaceTermByTerm(old, new)
	return Ex{quant}, isReplaced
}

func (e Ex) SubstituteVarByMeta(old Var, new Meta) Form {
	return Ex{e.quantifier.substituteVarByMeta(old, new)}
}

func (e Ex) ReplaceMetaByTerm(meta Meta, term Term) Form {
	return Ex{e.quantifier.replaceMetaByTerm(meta, term)}
}

// -----------------------------------------------------------------------------
// Or

type Or struct {
	*MappedString
	index int
	forms Lib.List[Form]
	metas Lib.Cache[Lib.Set[Meta], Or]
}

/** Constructors **/

func MakeOrSimple(i int, forms Lib.List[Form], metas Lib.Set[Meta]) Or {
	fms := &MappedString{}
	or := Or{fms, i, forms, Lib.MkCache(metas, Or.forceGetMetas)}
	fms.MappableString = &or
	return or
}

func MakeOr(i int, forms Lib.List[Form]) Or {
	return MakeOrSimple(i, forms, Lib.EmptySet[Meta]())
}

func MakerOr(forms Lib.List[Form]) Or {
	return MakeOr(MakerIndexFormula(), forms)
}

/** Methods **/

/** - Form interface Methods **/

func (o Or) GetIndex() int {
	return o.index
}

func (o Or) forceGetMetas() Lib.Set[Meta] {
	return metasUnion(o.forms)
}

func (o Or) GetMetas() Lib.Set[Meta] {
	return o.metas.Get(o)
}

func (o Or) GetSubTerms() Lib.List[Term] {
	res := Lib.NewList[Term]()

	for _, tl := range o.forms.GetSlice() {
		res.Add(TermEquals, tl.GetSubTerms().GetSlice()...)
	}

	return res
}

func (o Or) Equals(f any) bool {
	oth, isOr := f.(Or)
	return isOr && Lib.ListEquals(oth.forms, o.forms)
}

func (o Or) Copy() Form {
	fms := &MappedString{}
	or := Or{
		fms,
		o.index,
		Lib.ListCpy(o.forms),
		o.metas.Copy(Lib.Set[Meta].Copy),
	}
	fms.MappableString = &or
	return or
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
	return LsToMappableStringSlice(o.GetChildFormulas())
}

func (o Or) ReplaceTermByTerm(old Term, new Term) (Form, bool) {
	formList, res := replaceTermInFormList(o.forms, old, new)
	no := MakeOrSimple(o.GetIndex(), formList, o.metas.Raw())
	if !res && !o.metas.NeedsUpd() {
		no.metas.AvoidUpd()
	}
	return no, res
}

func (o Or) RenameVariables() Form {
	return MakeOr(o.GetIndex(), renameFormList(o.forms))
}

func (o Or) SubstituteVarByMeta(old Var, new Meta) Form {
	newFormList, newMetas := substVarByMetaInFormList(old, new, o.forms, o.metas.Raw())
	return MakeOrSimple(o.index, newFormList, newMetas)
}

func (o Or) GetSubFormulasRecur() Lib.List[Form] {
	return getAllSubFormulasAppended(o)
}

func (o Or) GetChildFormulas() Lib.List[Form] {
	return o.forms
}

func (o Or) ReplaceMetaByTerm(meta Meta, term Term) Form {
	return MakeOr(o.GetIndex(), LsSubstByTerm(o.forms, meta, term))
}

// -----------------------------------------------------------------------------
// And

type And struct {
	*MappedString
	index int
	forms Lib.List[Form]
	metas Lib.Cache[Lib.Set[Meta], And]
}

/** Constructors **/

func MakeAndSimple(i int, forms Lib.List[Form], metas Lib.Set[Meta]) And {
	fms := &MappedString{}
	and := And{fms, i, forms, Lib.MkCache(metas, And.forceGetMetas)}
	fms.MappableString = &and
	return and
}

func MakeAndSimpleBinary(i int, forms Lib.List[Form], metas Lib.Set[Meta]) And {
	switch forms.Len() {
	// FIXME: case 0 and 1 should error, no?
	case 0, 1, 2:
		return MakeAndSimple(i, forms, metas)
	default:
		return MakeAndSimple(
			i,
			Lib.MkListV[Form](forms.At(0), MakerAnd(forms.Slice(1, forms.Len()), true)),
			metas)
	}
}

func MakeAnd(i int, forms Lib.List[Form], binary ...bool) And {
	if binary != nil {
		return MakeAndSimpleBinary(i, forms, Lib.EmptySet[Meta]())
	} else {
		return MakeAndSimple(i, forms, Lib.EmptySet[Meta]())
	}
}

func MakerAnd(forms Lib.List[Form], binary ...bool) And {
	return MakeAnd(MakerIndexFormula(), forms, binary...)
}

/** Methods **/

/** - Form interface Methods **/

func (a And) GetIndex() int {
	return a.index
}

func (a And) forceGetMetas() Lib.Set[Meta] {
	return metasUnion(a.forms)
}

func (a And) GetMetas() Lib.Set[Meta] {
	return a.metas.Get(a)
}

func (a And) GetSubTerms() Lib.List[Term] {
	res := Lib.NewList[Term]()

	for _, tl := range a.forms.GetSlice() {
		res.Add(TermEquals, tl.GetSubTerms().GetSlice()...)
	}

	return res
}

func (a And) Equals(other any) bool {
	if typed, ok := other.(And); ok {
		return Lib.ListEquals(typed.forms, a.forms)
	}

	return false
}

func (a And) Copy() Form {
	fms := &MappedString{}
	and := And{
		fms,
		a.index,
		Lib.ListCpy(a.forms),
		a.metas.Copy(Lib.Set[Meta].Copy),
	}
	fms.MappableString = &and
	return and
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
	return LsToMappableStringSlice(a.GetChildFormulas())
}

func (a And) ReplaceTermByTerm(old Term, new Term) (Form, bool) {
	varList, res := replaceTermInFormList(a.forms, old, new)
	na := MakeAndSimple(a.index, varList, a.metas.Raw())
	if !res && !a.metas.NeedsUpd() {
		na.metas.AvoidUpd()
	}
	return na, res
}

func (a And) RenameVariables() Form {
	return MakeAnd(a.GetIndex(), renameFormList(a.forms))
}

func (a And) SubstituteVarByMeta(old Var, new Meta) Form {
	newFormList, newMetas := substVarByMetaInFormList(old, new, a.forms, a.metas.Raw())
	return MakeAndSimple(a.index, newFormList, newMetas)
}

func (a And) GetSubFormulasRecur() Lib.List[Form] {
	return getAllSubFormulasAppended(a)
}

func (a And) GetChildFormulas() Lib.List[Form] {
	return a.forms
}

func (a And) ReplaceMetaByTerm(meta Meta, term Term) Form {
	return MakeAnd(a.GetIndex(), LsSubstByTerm(a.forms, meta, term))
}

// -----------------------------------------------------------------------------
// Equivalence

type Equ struct {
	*MappedString
	index  int
	f1, f2 Form
	metas  Lib.Cache[Lib.Set[Meta], Equ]
}

func MakeEquSimple(i int, firstForm, secondForm Form, metas Lib.Set[Meta]) Equ {
	fms := &MappedString{}
	equ := Equ{
		fms,
		i,
		firstForm,
		secondForm,
		Lib.MkCache(metas, Equ.forceGetMetas),
	}
	fms.MappableString = &equ
	return equ
}

func MakeEqu(i int, firstForm, secondForm Form) Equ {
	return MakeEquSimple(i, firstForm, secondForm, Lib.EmptySet[Meta]())
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
	return LsToMappableStringSlice(e.GetChildFormulas())
}

func (e Equ) GetIndex() int { return e.index }
func (e Equ) GetF1() Form   { return e.f1.Copy() }
func (e Equ) GetF2() Form   { return e.f2.Copy() }
func (e Equ) Copy() Form {
	fms := &MappedString{}
	equ := Equ{
		fms,
		e.index,
		e.GetF1(),
		e.GetF2(),
		e.metas.Copy(Lib.Set[Meta].Copy),
	}
	fms.MappableString = &equ
	return equ
}

func (e Equ) forceGetMetas() Lib.Set[Meta] {
	allMetas := e.f1.GetMetas().Copy()
	allMetas = allMetas.Union(e.f2.GetMetas())

	return allMetas
}

func (e Equ) GetMetas() Lib.Set[Meta] {
	return e.metas.Get(e)
}

func (e Equ) ToString() string { return e.ToMappedString(DefaultMapString, true) }

func (e Equ) Equals(f any) bool {
	oth, isEqu := f.(Equ)
	return isEqu &&
		e.f1.Equals(oth.f1) && e.f2.Equals(oth.f2)
}

func (e Equ) ReplaceTermByTerm(old Term, new Term) (Form, bool) {
	f1, res1 := e.GetF1().ReplaceTermByTerm(old, new)
	f2, res2 := e.GetF2().ReplaceTermByTerm(old, new)
	ne := MakeEquSimple(e.GetIndex(), f1, f2, e.metas.Raw())

	if !res1 && !res2 && !e.metas.NeedsUpd() {
		e.metas.AvoidUpd()
	}

	return ne, res1 || res2
}

func (e Equ) RenameVariables() Form {
	return MakeEqu(e.GetIndex(), e.GetF1().RenameVariables(), e.GetF2().RenameVariables())
}

func (e Equ) GetSubTerms() Lib.List[Term] {
	res := e.GetF1().GetSubTerms().Copy(Term.Copy)
	res.Add(TermEquals, e.GetF2().GetSubTerms().GetSlice()...)

	return res
}

func (e Equ) SubstituteVarByMeta(old Var, new Meta) Form {
	fl, metas := substVarByMetaInFormList(old, new, Lib.MkListV(e.f1, e.f2), e.metas.Raw())
	return MakeEquSimple(e.index, fl.At(0), fl.At(1), metas)
}

func (e Equ) GetSubFormulasRecur() Lib.List[Form] {
	return getAllSubFormulasAppended(e)
}

func (e Equ) GetChildFormulas() Lib.List[Form] {
	return Lib.MkListV(e.f1, e.f2)
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
	metas  Lib.Cache[Lib.Set[Meta], Imp]
}

func MakeImpSimple(i int, firstForm, secondForm Form, metas Lib.Set[Meta]) Imp {
	fms := &MappedString{}
	imp := Imp{
		fms,
		i,
		firstForm,
		secondForm,
		Lib.MkCache(metas, Imp.forceGetMetas),
	}
	fms.MappableString = &imp
	return imp
}

func MakeImp(i int, firstForm, secondForm Form) Imp {
	return MakeImpSimple(i, firstForm, secondForm, Lib.EmptySet[Meta]())
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
	return LsToMappableStringSlice(i.GetChildFormulas())
}

func (i Imp) GetIndex() int { return i.index }
func (i Imp) GetF1() Form   { return i.f1.Copy() }
func (i Imp) GetF2() Form   { return i.f2.Copy() }
func (i Imp) Copy() Form {
	fms := &MappedString{}
	imp := Imp{
		fms,
		i.index,
		i.GetF1(),
		i.GetF2(),
		i.metas.Copy(Lib.Set[Meta].Copy),
	}
	fms.MappableString = &imp
	return imp
}

func (i Imp) forceGetMetas() Lib.Set[Meta] {
	allMetas := i.f1.GetMetas().Copy()
	allMetas = allMetas.Union(i.f2.GetMetas())

	return allMetas
}

func (i Imp) GetMetas() Lib.Set[Meta] {
	return i.metas.Get(i)
}

func (i Imp) ToString() string { return i.ToMappedString(DefaultMapString, true) }

func (i Imp) Equals(other any) bool {
	if typed, ok := other.(Imp); ok {
		return i.f1.Equals(typed.f1) && i.f2.Equals(typed.f2)
	}

	return false
}

func (i Imp) ReplaceTermByTerm(old Term, new Term) (Form, bool) {
	f1, res1 := i.GetF1().ReplaceTermByTerm(old, new)
	f2, res2 := i.GetF2().ReplaceTermByTerm(old, new)

	ni := MakeImpSimple(i.index, f1, f2, i.metas.Raw())

	if !res1 && !res2 && !i.metas.NeedsUpd() {
		ni.metas.AvoidUpd()
	}

	return ni, res1 || res2
}

func (i Imp) RenameVariables() Form {
	return MakeImp(i.GetIndex(), i.GetF1().RenameVariables(), i.GetF2().RenameVariables())
}

func (i Imp) GetSubTerms() Lib.List[Term] {
	res := i.GetF1().GetSubTerms().Copy(Term.Copy)
	res.Add(TermEquals, i.GetF2().GetSubTerms().GetSlice()...)

	return res
}

func (i Imp) SubstituteVarByMeta(old Var, new Meta) Form {
	fl, metas := substVarByMetaInFormList(old, new, Lib.MkListV(i.f1, i.f2), i.metas.Raw())
	return MakeImpSimple(i.index, fl.At(0), fl.At(1), metas)
}

func (i Imp) GetSubFormulasRecur() Lib.List[Form] {
	return getAllSubFormulasAppended(i)
}

func (i Imp) GetChildFormulas() Lib.List[Form] {
	return Lib.MkListV(i.f1, i.f2)
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
	metas Lib.Cache[Lib.Set[Meta], Not]
}

/** Constructors **/

func MakeNotSimple(i int, form Form, metas Lib.Set[Meta]) Not {
	fms := &MappedString{}
	not := Not{fms, i, form, Lib.MkCache(metas, Not.forceGetMetas)}
	fms.MappableString = &not
	return not
}

func MakeNot(i int, form Form) Not {
	return MakeNotSimple(i, form, Lib.EmptySet[Meta]())
}

func MakerNot(form Form) Not {
	return MakeNot(MakerIndexFormula(), form)
}

/** Methods **/

/** - Form interface Methods **/

func (n Not) GetIndex() int {
	return n.index
}

func (n Not) forceGetMetas() Lib.Set[Meta] {
	return n.GetForm().GetMetas()
}

func (n Not) GetMetas() Lib.Set[Meta] {
	return n.metas.Get(n)
}

func (n Not) GetSubTerms() Lib.List[Term] {
	return n.GetForm().GetSubTerms()
}

func (n Not) Equals(other any) bool {
	if typed, ok := other.(Not); ok {
		return typed.f.Equals(n.f)
	}

	return false
}

func (n Not) Copy() Form {
	nn := MakeNotSimple(n.index, n.GetForm(), n.metas.Raw().Copy())
	if !n.metas.NeedsUpd() {
		nn.metas.AvoidUpd()
	}
	return nn
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
	return LsToMappableStringSlice(n.GetChildFormulas())
}

func (n Not) ReplaceTermByTerm(old Term, new Term) (Form, bool) {
	f, res := n.f.ReplaceTermByTerm(old, new)

	nn := MakeNotSimple(n.GetIndex(), f, n.metas.Raw())
	if !res && !n.metas.NeedsUpd() {
		nn.metas.AvoidUpd()
	}

	return nn, res
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
	return MakeNotSimple(n.index, f, f.GetMetas().Copy())
}

func (n Not) GetSubFormulasRecur() Lib.List[Form] {
	return getAllSubFormulasAppended(n)
}

func (n Not) GetChildFormulas() Lib.List[Form] {
	return Lib.MkListV(n.GetForm())
}

/** Utils **/

/* Gives a new Form that isn't a Not */
func RemoveNeg(form Form) Form {
	form, _ = getDeepFormWithoutNot(form, true)
	return form
}

/* Gives the deepest Form that has one or less Not around */
func SimplifyNegations(form Form) Form {
	form, isEven := getDeepFormWithoutNot(form, true)

	if !isEven {
		form = MakerNot(form)
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
	index int
	id    Id
	tys   Lib.List[Ty]
	args  Lib.List[Term]
	metas Lib.Cache[Lib.Set[Meta], Pred]
}

func MakePredSimple(
	index int,
	id Id,
	tys Lib.List[Ty],
	terms Lib.List[Term],
	metas Lib.Set[Meta],
) Pred {
	fms := &MappedString{}
	pred := Pred{
		fms,
		index,
		id,
		tys,
		terms,
		Lib.MkCache(metas, Pred.forceGetMetas),
	}
	fms.MappableString = &pred
	return pred
}

func MakePred(
	index int,
	id Id,
	tys Lib.List[Ty],
	terms Lib.List[Term],
) Pred {
	return MakePredSimple(
		index,
		id,
		tys,
		terms,
		Lib.EmptySet[Meta](),
	)
}

func MakerPred(
	id Id,
	tys Lib.List[Ty],
	terms Lib.List[Term],
) Pred {
	return MakePred(MakerIndexFormula(), id, tys, terms)
}

/* Pred attributes getters */

func (p Pred) GetIndex() int           { return p.index }
func (p Pred) GetID() Id               { return p.id.Copy().(Id) }
func (p Pred) GetTyArgs() Lib.List[Ty] { return p.tys }
func (p Pred) GetArgs() Lib.List[Term] { return p.args }

/* Formula methods */

func (p Pred) RenameVariables() Form { return p }

func (p Pred) ToString() string {
	return p.MappedString.ToString()
}

func (p Pred) ToMappedStringSurround(mapping MapString, displayTypes bool) string {
	if p.GetArgs().Len() == 0 {
		return p.GetID().ToMappedString(mapping, displayTypes) + "%s"
	}
	args := []string{}

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
	mappableStringList := Lib.ListMap(p.GetArgs(), Glob.To[MappableString])
	return mappableStringList.GetSlice()
}

func (p Pred) Copy() Form {
	np := MakePredSimple(
		p.index,
		p.id,
		p.GetTyArgs(),
		p.GetArgs(),
		p.metas.Raw().Copy(),
	)

	if !p.metas.NeedsUpd() {
		np.metas.AvoidUpd()
	}

	return p
}

func (p Pred) Equals(other any) bool {
	if typed, ok := other.(Pred); ok {
		return typed.id.Equals(p.id) &&
			Lib.ListEquals(typed.tys, p.tys) &&
			Lib.ListEquals(typed.args, p.args)
	}

	return false
}

func (p Pred) forceGetMetas() Lib.Set[Meta] {
	res := Lib.EmptySet[Meta]()

	for _, m := range p.GetArgs().GetSlice() {
		res = res.Union(m.GetMetas())
	}

	return res
}

func (p Pred) GetMetas() Lib.Set[Meta] {
	return p.metas.Get(p)
}

func (p Pred) GetMetaList() Lib.List[Meta] {
	metas := Lib.NewList[Meta]()

	for _, arg := range p.GetArgs().GetSlice() {
		switch t := arg.(type) {
		case Fun:
			metas.Append(t.GetMetaList().GetSlice()...)
		default:
			metas.Append(arg.GetMetas().Elements().GetSlice()...)
		}
	}

	return metas
}

func (p Pred) ReplaceTermByTerm(old Term, new Term) (Form, bool) {
	termList, res := replaceTermInTermList(p.GetArgs(), old, new)

	np := MakePredSimple(
		p.GetIndex(),
		p.GetID(),
		p.GetTyArgs(),
		termList,
		p.metas.Raw(),
	)

	if !res && !p.metas.NeedsUpd() {
		np.metas.AvoidUpd()
	}

	return np, res
}

func (p Pred) GetSubTerms() Lib.List[Term] {
	res := Lib.NewList[Term]()

	for _, t := range p.GetArgs().GetSlice() {
		res.Add(TermEquals, t)
		res.Add(TermEquals, t.GetSubTerms().GetSlice()...)
	}

	return res
}

func (p Pred) SubstituteVarByMeta(old Var, new Meta) Form {
	f, res := p.ReplaceTermByTerm(old, new)

	switch nf := f.(type) {
	case Pred:
		if res {
			return MakePredSimple(
				nf.index,
				nf.id,
				nf.tys,
				nf.args,
				nf.metas.Raw(),
			)
		}
		return nf
	default:
		Glob.Anomaly("Substitution", "should return a Pred")
	}

	return f
}

func (p Pred) GetSubFormulasRecur() Lib.List[Form] {
	return Lib.MkListV(p.Copy())
}

func (p Pred) GetChildFormulas() Lib.List[Form] {
	return Lib.NewList[Form]()
}

func (p Pred) ReplaceMetaByTerm(meta Meta, term Term) Form {
	newTerms := Lib.MkList[Term](p.args.Len())

	for i, old := range p.args.GetSlice() {
		// FIXME: old.GetName() == meta.GetName() ??
		if old.Equals(meta) {
			newTerms.Upd(i, term)
		} else {
			newTerms.Upd(i, old)
		}
	}

	return MakePred(p.GetIndex(), p.id, p.tys, newTerms)
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
	return LsToMappableStringSlice(t.GetChildFormulas())
}

func (t Top) Copy() Form                                  { return MakeTop(t.GetIndex()) }
func (Top) Equals(f any) bool                             { _, isTop := f.(Top); return isTop }
func (Top) GetMetas() Lib.Set[Meta]                       { return Lib.EmptySet[Meta]() }
func (t Top) ReplaceTermByTerm(Term, Term) (Form, bool)   { return MakeTop(t.GetIndex()), false }
func (t Top) RenameVariables() Form                       { return MakeTop(t.GetIndex()) }
func (t Top) GetIndex() int                               { return t.index }
func (t Top) GetSubTerms() Lib.List[Term]                 { return Lib.NewList[Term]() }
func (t Top) SubstituteVarByMeta(Var, Meta) Form          { return t }
func (t Top) GetInternalMetas() Lib.Set[Meta]             { return Lib.EmptySet[Meta]() }
func (t Top) GetSubFormulasRecur() Lib.List[Form]         { return Lib.MkListV[Form](t) }
func (t Top) GetChildFormulas() Lib.List[Form]            { return Lib.NewList[Form]() }
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
	return LsToMappableStringSlice(b.GetChildFormulas())
}

func (b Bot) Copy() Form                                  { return MakeBot(b.GetIndex()) }
func (Bot) Equals(f any) bool                             { _, isBot := f.(Bot); return isBot }
func (Bot) GetMetas() Lib.Set[Meta]                       { return Lib.EmptySet[Meta]() }
func (b Bot) ReplaceTermByTerm(Term, Term) (Form, bool)   { return MakeBot(b.GetIndex()), false }
func (b Bot) RenameVariables() Form                       { return MakeBot(b.GetIndex()) }
func (b Bot) GetIndex() int                               { return b.index }
func (b Bot) GetSubTerms() Lib.List[Term]                 { return Lib.NewList[Term]() }
func (b Bot) SubstituteVarByMeta(Var, Meta) Form          { return b }
func (b Bot) GetInternalMetas() Lib.Set[Meta]             { return Lib.EmptySet[Meta]() }
func (b Bot) GetSubFormulasRecur() Lib.List[Form]         { return Lib.MkListV[Form](b) }
func (b Bot) GetChildFormulas() Lib.List[Form]            { return Lib.NewList[Form]() }
func (b Bot) ReplaceMetaByTerm(meta Meta, term Term) Form { return b }
