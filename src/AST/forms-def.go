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
	"fmt"

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

func MakeAllSimple(vars Lib.List[TypedVar], forms Form, metas Lib.Set[Meta]) All {
	return All{makeQuantifier(vars, forms, metas, ConnAll)}
}

func MakeAll(vars Lib.List[TypedVar], forms Form) All {
	return MakeAllSimple(vars, forms, Lib.EmptySet[Meta]())
}

func MakerAll(vars Lib.List[TypedVar], forms Form) All {
	return MakeAll(vars, forms)
}

func (a All) Equals(other any) bool {
	if typed, ok := other.(All); ok {
		return a.quantifier.Equals(typed.quantifier)
	}
	return false
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

func (a All) SubstTy(old TyGenVar, new Ty) Form {
	return All{a.quantifier.replaceTyVar(old, new)}
}

func (a All) SubstituteVarByMeta(old Var, new Meta) Form {
	return All{a.quantifier.substituteVarByMeta(old, new)}
}

func (a All) ReplaceMetaByTerm(meta Meta, term Term) Form {
	return All{a.quantifier.replaceMetaByTerm(meta, term)}
}

func (a All) Less(oth any) bool {
	if form, is_form := oth.(Form); is_form {
		switch f := form.(type) {
		case All:
			return qLess(a.varList, f.varList, a.subForm, f.subForm)
		default:
			return false
		}
	}
	return false
}

// -----------------------------------------------------------------------------
// Exists

type Ex struct {
	quantifier
}

func MakeExSimple(vars Lib.List[TypedVar], forms Form, metas Lib.Set[Meta]) Ex {
	return Ex{makeQuantifier(vars, forms, metas, ConnEx)}
}

func MakeEx(vars Lib.List[TypedVar], forms Form) Ex {
	return MakeExSimple(vars, forms, Lib.EmptySet[Meta]())
}

func MakerEx(vars Lib.List[TypedVar], forms Form) Ex {
	return MakeEx(vars, forms)
}

func (e Ex) Equals(other any) bool {
	if typed, ok := other.(Ex); ok {
		return e.quantifier.Equals(typed.quantifier)
	}
	return false
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

func (e Ex) SubstTy(old TyGenVar, new Ty) Form {
	return Ex{e.quantifier.replaceTyVar(old, new)}
}

func (e Ex) SubstituteVarByMeta(old Var, new Meta) Form {
	return Ex{e.quantifier.substituteVarByMeta(old, new)}
}

func (e Ex) ReplaceMetaByTerm(meta Meta, term Term) Form {
	return Ex{e.quantifier.replaceMetaByTerm(meta, term)}
}

func (e Ex) Less(oth any) bool {
	if form, is_form := oth.(Form); is_form {
		switch f := form.(type) {
		case All:
			return true
		case Ex:
			return qLess(e.varList, f.varList, e.subForm, f.subForm)
		default:
			return false
		}
	}
	return false
}

// -----------------------------------------------------------------------------
// Or

type Or struct {
	forms Lib.List[Form]
	metas Lib.Cache[Lib.Set[Meta], Or]
}

/** Constructors **/

func MakeOrSimple(forms Lib.List[Form], metas Lib.Set[Meta]) Or {
	return Or{forms, Lib.MkCache(metas, Or.forceGetMetas)}
}

func MakeOr(forms Lib.List[Form]) Or {
	return MakeOrSimple(forms, Lib.EmptySet[Meta]())
}

func MakerOr(forms Lib.List[Form]) Or {
	return MakeOr(forms)
}

/** Methods **/

/** - Form interface Methods **/

func (o Or) forceGetMetas() Lib.Set[Meta] {
	return metasUnion(o.forms)
}

func (o Or) GetMetas() Lib.Set[Meta] {
	return o.metas.Get(o)
}

func (o Or) GetSubTerms() Lib.Set[Term] {
	res := Lib.EmptySet[Term]()

	for _, tl := range o.forms.GetSlice() {
		res = res.Union(tl.GetSubTerms())
	}

	return res
}

func (o Or) GetSymbols() Lib.Set[Id] {
	res := Lib.EmptySet[Id]()

	for _, tl := range o.forms.GetSlice() {
		res = res.Union(tl.GetSymbols())
	}

	return res
}

func (o Or) Equals(f any) bool {
	oth, isOr := f.(Or)
	return isOr && Lib.ListEquals(oth.forms, o.forms)
}

func (o Or) Copy() Form {
	return Or{
		Lib.ListCpy(o.forms),
		o.metas.Copy(Lib.Set[Meta].Copy),
	}
}

func (o Or) ToString() string {
	return o.forms.ToString(
		func(f Form) string { return printer.Str(printer.SurroundChild(f.ToString())) },
		printer.StrConn(ConnOr), "",
	)
}

func (o Or) ReplaceTermByTerm(old Term, new Term) (Form, bool) {
	formList, res := replaceTermInFormList(o.forms, old, new)
	no := MakeOrSimple(formList, o.metas.Raw())
	if !res && !o.metas.NeedsUpd() {
		no.metas.AvoidUpd()
	}
	return no, res
}

func (o Or) SubstTy(old TyGenVar, new Ty) Form {
	formList := replaceTyVarInFormList(o.forms, old, new)
	return MakeOrSimple(formList, o.metas.Raw())
}

func (o Or) RenameVariables() Form {
	return MakeOr(renameFormList(o.forms))
}

func (o Or) SubstituteVarByMeta(old Var, new Meta) Form {
	newFormList, newMetas := substVarByMetaInFormList(old, new, o.forms, o.metas.Raw())
	return MakeOrSimple(newFormList, newMetas)
}

func (o Or) GetSubFormulasRecur() Lib.List[Form] {
	return getAllSubFormulasAppended(o)
}

func (o Or) GetChildFormulas() Lib.List[Form] {
	return o.forms
}

func (o Or) ReplaceMetaByTerm(meta Meta, term Term) Form {
	return MakeOr(LsSubstByTerm(o.forms, meta, term))
}

func (o Or) Less(oth any) bool {
	if form, is_form := oth.(Form); is_form {
		switch f := form.(type) {
		case All, Ex:
			return true
		case Or:
			return bLess(o.forms, f.forms)
		default:
			return false
		}
	}
	return false
}

// -----------------------------------------------------------------------------
// And

type And struct {
	forms Lib.List[Form]
	metas Lib.Cache[Lib.Set[Meta], And]
}

/** Constructors **/

func MakeAndSimple(forms Lib.List[Form], metas Lib.Set[Meta]) And {
	return And{forms, Lib.MkCache(metas, And.forceGetMetas)}
}

func MakeAndSimpleBinary(forms Lib.List[Form], metas Lib.Set[Meta]) And {
	switch forms.Len() {
	// FIXME: case 0 and 1 should error, no?
	case 0, 1, 2:
		return MakeAndSimple(forms, metas)
	default:
		return MakeAndSimple(
			Lib.MkListV[Form](forms.At(0), MakerAnd(forms.Slice(1, forms.Len()), true)),
			metas)
	}
}

func MakeAnd(forms Lib.List[Form], binary ...bool) And {
	if binary != nil {
		return MakeAndSimpleBinary(forms, Lib.EmptySet[Meta]())
	} else {
		return MakeAndSimple(forms, Lib.EmptySet[Meta]())
	}
}

func MakerAnd(forms Lib.List[Form], binary ...bool) And {
	return MakeAnd(forms, binary...)
}

/** Methods **/

/** - Form interface Methods **/

func (a And) forceGetMetas() Lib.Set[Meta] {
	return metasUnion(a.forms)
}

func (a And) GetMetas() Lib.Set[Meta] {
	return a.metas.Get(a)
}

func (a And) GetSubTerms() Lib.Set[Term] {
	res := Lib.EmptySet[Term]()

	for _, tl := range a.forms.GetSlice() {
		res = res.Union(tl.GetSubTerms())
	}

	return res
}

func (a And) GetSymbols() Lib.Set[Id] {
	res := Lib.EmptySet[Id]()

	for _, tl := range a.forms.GetSlice() {
		res = res.Union(tl.GetSymbols())
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
	return And{
		Lib.ListCpy(a.forms),
		a.metas.Copy(Lib.Set[Meta].Copy),
	}
}

func (a And) ToString() string {
	return a.forms.ToString(
		func(f Form) string { return printer.Str(printer.SurroundChild(f.ToString())) },
		printer.StrConn(ConnAnd), "",
	)
}

func (a And) ReplaceTermByTerm(old Term, new Term) (Form, bool) {
	varList, res := replaceTermInFormList(a.forms, old, new)
	na := MakeAndSimple(varList, a.metas.Raw())
	if !res && !a.metas.NeedsUpd() {
		na.metas.AvoidUpd()
	}
	return na, res
}

func (a And) SubstTy(old TyGenVar, new Ty) Form {
	formList := replaceTyVarInFormList(a.forms, old, new)
	return MakeAndSimple(formList, a.metas.Raw())
}

func (a And) RenameVariables() Form {
	return MakeAnd(renameFormList(a.forms))
}

func (a And) SubstituteVarByMeta(old Var, new Meta) Form {
	newFormList, newMetas := substVarByMetaInFormList(old, new, a.forms, a.metas.Raw())
	return MakeAndSimple(newFormList, newMetas)
}

func (a And) GetSubFormulasRecur() Lib.List[Form] {
	return getAllSubFormulasAppended(a)
}

func (a And) GetChildFormulas() Lib.List[Form] {
	return a.forms
}

func (a And) ReplaceMetaByTerm(meta Meta, term Term) Form {
	return MakeAnd(LsSubstByTerm(a.forms, meta, term))
}

func (a And) Less(oth any) bool {
	if form, is_form := oth.(Form); is_form {
		switch f := form.(type) {
		case All, Ex, Or:
			return true
		case And:
			return bLess(a.forms, f.forms)
		default:
			return false
		}
	}
	return false
}

// -----------------------------------------------------------------------------
// Equivalence

type Equ struct {
	f1, f2 Form
	metas  Lib.Cache[Lib.Set[Meta], Equ]
}

func MakeEquSimple(firstForm, secondForm Form, metas Lib.Set[Meta]) Equ {
	return Equ{
		firstForm,
		secondForm,
		Lib.MkCache(metas, Equ.forceGetMetas),
	}
}

func MakeEqu(firstForm, secondForm Form) Equ {
	return MakeEquSimple(firstForm, secondForm, Lib.EmptySet[Meta]())
}

func MakerEqu(firstForm, secondForm Form) Equ {
	return MakeEqu(firstForm, secondForm)
}

func (e Equ) GetF1() Form { return e.f1.Copy() }
func (e Equ) GetF2() Form { return e.f2.Copy() }
func (e Equ) Copy() Form {
	return Equ{
		e.GetF1(),
		e.GetF2(),
		e.metas.Copy(Lib.Set[Meta].Copy),
	}
}

func (e Equ) forceGetMetas() Lib.Set[Meta] {
	allMetas := e.f1.GetMetas().Copy()
	allMetas = allMetas.Union(e.f2.GetMetas())

	return allMetas
}

func (e Equ) GetMetas() Lib.Set[Meta] {
	return e.metas.Get(e)
}

func (e Equ) ToString() string {
	return printer.Str(fmt.Sprintf("%s %s %s",
		printer.Str(printer.SurroundChild(e.f1.ToString())),
		printer.StrConn(ConnEqu),
		printer.Str(printer.SurroundChild(e.f2.ToString())),
	))
}

func (e Equ) Equals(f any) bool {
	oth, isEqu := f.(Equ)
	return isEqu &&
		e.f1.Equals(oth.f1) && e.f2.Equals(oth.f2)
}

func (e Equ) ReplaceTermByTerm(old Term, new Term) (Form, bool) {
	f1, res1 := e.GetF1().ReplaceTermByTerm(old, new)
	f2, res2 := e.GetF2().ReplaceTermByTerm(old, new)
	ne := MakeEquSimple(f1, f2, e.metas.Raw())

	if !res1 && !res2 && !e.metas.NeedsUpd() {
		e.metas.AvoidUpd()
	}

	return ne, res1 || res2
}

func (e Equ) SubstTy(old TyGenVar, new Ty) Form {
	return MakeEquSimple(
		e.f1.SubstTy(old, new),
		e.f2.SubstTy(old, new),
		e.metas.Raw(),
	)
}

func (e Equ) RenameVariables() Form {
	return MakeEqu(e.GetF1().RenameVariables(), e.GetF2().RenameVariables())
}

func (e Equ) GetSubTerms() Lib.Set[Term] {
	return e.GetF1().GetSubTerms().Union(e.GetF2().GetSubTerms())
}

func (e Equ) GetSymbols() Lib.Set[Id] {
	return e.GetF1().GetSymbols().Union(e.GetF2().GetSymbols())
}

func (e Equ) SubstituteVarByMeta(old Var, new Meta) Form {
	fl, metas := substVarByMetaInFormList(old, new, Lib.MkListV(e.f1, e.f2), e.metas.Raw())
	return MakeEquSimple(fl.At(0), fl.At(1), metas)
}

func (e Equ) GetSubFormulasRecur() Lib.List[Form] {
	return getAllSubFormulasAppended(e)
}

func (e Equ) GetChildFormulas() Lib.List[Form] {
	return Lib.MkListV(e.f1, e.f2)
}

func (e Equ) ReplaceMetaByTerm(meta Meta, term Term) Form {
	return MakeEqu(
		e.f1.ReplaceMetaByTerm(meta, term),
		e.f2.ReplaceMetaByTerm(meta, term),
	)
}

func (e Equ) Less(oth any) bool {
	if form, is_form := oth.(Form); is_form {
		switch f := form.(type) {
		case All, Ex, Or, And:
			return true
		case Equ:
			return bLess(Lib.MkListV(e.f1, e.f2), Lib.MkListV(f.f1, f.f2))
		default:
			return false
		}
	}
	return false
}

// -----------------------------------------------------------------------------
// Implication

type Imp struct {
	f1, f2 Form
	metas  Lib.Cache[Lib.Set[Meta], Imp]
}

func MakeImpSimple(firstForm, secondForm Form, metas Lib.Set[Meta]) Imp {
	return Imp{
		firstForm,
		secondForm,
		Lib.MkCache(metas, Imp.forceGetMetas),
	}
}

func MakeImp(firstForm, secondForm Form) Imp {
	return MakeImpSimple(firstForm, secondForm, Lib.EmptySet[Meta]())
}

func MakerImp(firstForm, secondForm Form) Imp {
	return MakeImp(firstForm, secondForm)
}

func (i Imp) GetF1() Form { return i.f1.Copy() }
func (i Imp) GetF2() Form { return i.f2.Copy() }
func (i Imp) Copy() Form {
	return Imp{
		i.GetF1(),
		i.GetF2(),
		i.metas.Copy(Lib.Set[Meta].Copy),
	}
}

func (i Imp) forceGetMetas() Lib.Set[Meta] {
	allMetas := i.f1.GetMetas().Copy()
	allMetas = allMetas.Union(i.f2.GetMetas())

	return allMetas
}

func (i Imp) GetMetas() Lib.Set[Meta] {
	return i.metas.Get(i)
}

func (i Imp) ToString() string {
	return printer.Str(fmt.Sprintf("%s %s %s",
		printer.Str(printer.SurroundChild(i.f1.ToString())),
		printer.StrConn(ConnImp),
		printer.Str(printer.SurroundChild(i.f2.ToString())),
	))
}

func (i Imp) Equals(other any) bool {
	if typed, ok := other.(Imp); ok {
		return i.f1.Equals(typed.f1) && i.f2.Equals(typed.f2)
	}

	return false
}

func (i Imp) ReplaceTermByTerm(old Term, new Term) (Form, bool) {
	f1, res1 := i.GetF1().ReplaceTermByTerm(old, new)
	f2, res2 := i.GetF2().ReplaceTermByTerm(old, new)

	ni := MakeImpSimple(f1, f2, i.metas.Raw())

	if !res1 && !res2 && !i.metas.NeedsUpd() {
		ni.metas.AvoidUpd()
	}

	return ni, res1 || res2
}

func (i Imp) SubstTy(old TyGenVar, new Ty) Form {
	return MakeImpSimple(
		i.f1.SubstTy(old, new),
		i.f2.SubstTy(old, new),
		i.metas.Raw(),
	)
}

func (i Imp) RenameVariables() Form {
	return MakeImp(i.GetF1().RenameVariables(), i.GetF2().RenameVariables())
}

func (i Imp) GetSubTerms() Lib.Set[Term] {
	return i.GetF1().GetSubTerms().Union(i.GetF2().GetSubTerms())
}

func (i Imp) GetSymbols() Lib.Set[Id] {
	return i.GetF1().GetSymbols().Union(i.GetF2().GetSymbols())
}

func (i Imp) SubstituteVarByMeta(old Var, new Meta) Form {
	fl, metas := substVarByMetaInFormList(old, new, Lib.MkListV(i.f1, i.f2), i.metas.Raw())
	return MakeImpSimple(fl.At(0), fl.At(1), metas)
}

func (i Imp) GetSubFormulasRecur() Lib.List[Form] {
	return getAllSubFormulasAppended(i)
}

func (i Imp) GetChildFormulas() Lib.List[Form] {
	return Lib.MkListV(i.f1, i.f2)
}

func (i Imp) ReplaceMetaByTerm(meta Meta, term Term) Form {
	return MakeImp(
		i.f1.ReplaceMetaByTerm(meta, term),
		i.f2.ReplaceMetaByTerm(meta, term),
	)
}

func (i Imp) Less(oth any) bool {
	if form, is_form := oth.(Form); is_form {
		switch f := form.(type) {
		case All, Ex, Or, And, Equ:
			return true
		case Imp:
			return bLess(Lib.MkListV(i.f1, i.f2), Lib.MkListV(f.f1, f.f2))
		default:
			return false
		}
	}
	return false
}

// -----------------------------------------------------------------------------
// Not

type Not struct {
	f     Form
	metas Lib.Cache[Lib.Set[Meta], Not]
}

/** Constructors **/

func MakeNotSimple(form Form, metas Lib.Set[Meta]) Not {
	return Not{form, Lib.MkCache(metas, Not.forceGetMetas)}
}

func MakeNot(form Form) Not {
	return MakeNotSimple(form, Lib.EmptySet[Meta]())
}

func MakerNot(form Form) Not {
	return MakeNot(form)
}

/** Methods **/

/** - Form interface Methods **/

func (n Not) forceGetMetas() Lib.Set[Meta] {
	return n.GetForm().GetMetas()
}

func (n Not) GetMetas() Lib.Set[Meta] {
	return n.metas.Get(n)
}

func (n Not) GetSubTerms() Lib.Set[Term] {
	return n.GetForm().GetSubTerms()
}

func (n Not) GetSymbols() Lib.Set[Id] {
	return n.GetForm().GetSymbols()
}

func (n Not) Equals(other any) bool {
	if typed, ok := other.(Not); ok {
		return typed.f.Equals(n.f)
	}

	return false
}

func (n Not) Copy() Form {
	nn := MakeNotSimple(n.GetForm(), n.metas.Raw().Copy())
	if !n.metas.NeedsUpd() {
		nn.metas.AvoidUpd()
	}
	return nn
}

func (n Not) ToString() string {
	return printer.Str(fmt.Sprintf("%s%s",
		printer.StrConn(ConnNot),
		printer.Str(printer.SurroundChild(n.f.ToString())),
	))
}

func (n Not) ReplaceTermByTerm(old Term, new Term) (Form, bool) {
	f, res := n.f.ReplaceTermByTerm(old, new)

	nn := MakeNotSimple(f, n.metas.Raw())
	if !res && !n.metas.NeedsUpd() {
		nn.metas.AvoidUpd()
	}

	return nn, res
}

func (n Not) SubstTy(old TyGenVar, new Ty) Form {
	return MakeNotSimple(
		n.f.SubstTy(old, new),
		n.metas.Raw(),
	)
}

func (n Not) RenameVariables() Form {
	return MakeNot(n.f.RenameVariables())
}

func (n Not) ReplaceMetaByTerm(meta Meta, term Term) Form {
	return MakeNot(n.f.ReplaceMetaByTerm(meta, term))
}

/** - Other Methods **/

func (n Not) GetForm() Form {
	return n.f.Copy()
}

func (n Not) SubstituteVarByMeta(old Var, new Meta) Form {
	f := n.GetForm().SubstituteVarByMeta(old, new)
	return MakeNotSimple(f, f.GetMetas().Copy())
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

func (n Not) Less(oth any) bool {
	if form, is_form := oth.(Form); is_form {
		switch f := form.(type) {
		case All, Ex, Or, And, Equ, Imp:
			return true
		case Not:
			return n.f.Less(f.f)
		default:
			return false
		}
	}
	return false
}

// -----------------------------------------------------------------------------
// Predicates

type Pred struct {
	id    Id
	tys   Lib.List[Ty]
	args  Lib.List[Term]
	metas Lib.Cache[Lib.Set[Meta], Pred]
}

func MakePredSimple(
	id Id,
	tys Lib.List[Ty],
	terms Lib.List[Term],
	metas Lib.Set[Meta],
) Pred {
	return Pred{
		id,
		tys,
		terms,
		Lib.MkCache(metas, Pred.forceGetMetas),
	}
}

func MakePred(
	id Id,
	tys Lib.List[Ty],
	terms Lib.List[Term],
) Pred {
	return MakePredSimple(
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
	return MakePred(id, tys, terms)
}

/* Pred attributes getters */

func (p Pred) GetID() Id               { return p.id.Copy().(Id) }
func (p Pred) GetTyArgs() Lib.List[Ty] { return p.tys }
func (p Pred) GetArgs() Lib.List[Term] { return p.args }

/* Formula methods */

func (p Pred) RenameVariables() Form { return p }

func (p Pred) ToString() string {
	return printer.StrFunctional(
		p.id,
		Lib.ListMap(p.tys, Ty.ToString),
		Lib.ListMap(p.args, Term.ToString),
	)
}

func (p Pred) Copy() Form {
	np := MakePredSimple(
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

func (p Pred) SubstTy(old TyGenVar, new Ty) Form {
	typed_args := Lib.ListMap(
		p.tys,
		func(t Ty) Ty { return t.SubstTy(old, new) },
	)
	args := Lib.ListMap(
		p.args,
		func(t Term) Term { return t.SubstTy(old, new) },
	)
	return MakePredSimple(
		p.GetID(),
		typed_args,
		args,
		p.metas.Raw(),
	)
}

func (p Pred) GetSubTerms() Lib.Set[Term] {
	res := Lib.EmptySet[Term]()

	for _, t := range p.GetArgs().GetSlice() {
		res = res.Add(t).Union(t.GetSubTerms())
	}

	return res
}

func (p Pred) GetSymbols() Lib.Set[Id] {
	res := Lib.EmptySet[Id]()

	for _, t := range p.GetArgs().GetSlice() {
		res = res.Union(t.GetSymbols())
	}

	return res
}

func (p Pred) SubstituteVarByMeta(old Var, new Meta) Form {
	f, res := p.ReplaceTermByTerm(old, new)

	switch nf := f.(type) {
	case Pred:
		if res {
			return MakePredSimple(
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
	return MakePred(
		p.id,
		p.tys,
		Lib.ListMap(p.args, func(t Term) Term { return t.ReplaceSubTermBy(meta, term) }),
	)
}

func (p Pred) Less(oth any) bool {
	if form, is_form := oth.(Form); is_form {
		switch f := form.(type) {
		case All, Ex, Or, And, Equ, Imp, Not:
			return true
		case Pred:
			if p.args.Len() < f.args.Len() {
				return true
			} else if p.args.Len() > f.args.Len() {
				return false
			} else {
				return Lib.ListLess(p.args, f.args)
			}
		default:
			return false
		}
	}
	return false
}

// -----------------------------------------------------------------------------
// True and False

type Top struct {
}

func MakeTop() Top {
	return Top{}
}

func MakerTop() Top {
	return MakeTop()
}

func (Top) ToString() string                              { return printer.StrConn(ConnTop) }
func (t Top) Copy() Form                                  { return MakeTop() }
func (Top) Equals(f any) bool                             { _, isTop := f.(Top); return isTop }
func (Top) GetMetas() Lib.Set[Meta]                       { return Lib.EmptySet[Meta]() }
func (t Top) ReplaceTermByTerm(Term, Term) (Form, bool)   { return MakeTop(), false }
func (t Top) SubstTy(TyGenVar, Ty) Form                   { return t }
func (t Top) RenameVariables() Form                       { return MakeTop() }
func (t Top) GetSubTerms() Lib.Set[Term]                  { return Lib.EmptySet[Term]() }
func (t Top) GetSymbols() Lib.Set[Id]                     { return Lib.EmptySet[Id]() }
func (t Top) SubstituteVarByMeta(Var, Meta) Form          { return t }
func (t Top) GetInternalMetas() Lib.Set[Meta]             { return Lib.EmptySet[Meta]() }
func (t Top) GetSubFormulasRecur() Lib.List[Form]         { return Lib.MkListV[Form](t) }
func (t Top) GetChildFormulas() Lib.List[Form]            { return Lib.NewList[Form]() }
func (t Top) ReplaceMetaByTerm(meta Meta, term Term) Form { return t }
func (t Top) Less(oth any) bool {
	if form, is_form := oth.(Form); is_form {
		switch form.(type) {
		case All, Ex, Or, And, Equ, Imp, Not, Pred:
			return true
		default:
			return false
		}
	}
	return false
}

/* Bot (always false) definition */
type Bot struct {
}

func MakeBot() Bot {
	return Bot{}
}

func MakerBot() Bot {
	return MakeBot()
}

func (Bot) ToString() string                              { return printer.StrConn(ConnBot) }
func (b Bot) Copy() Form                                  { return MakeBot() }
func (Bot) Equals(f any) bool                             { _, isBot := f.(Bot); return isBot }
func (Bot) GetMetas() Lib.Set[Meta]                       { return Lib.EmptySet[Meta]() }
func (b Bot) ReplaceTermByTerm(Term, Term) (Form, bool)   { return MakeBot(), false }
func (b Bot) SubstTy(TyGenVar, Ty) Form                   { return b }
func (b Bot) RenameVariables() Form                       { return MakeBot() }
func (b Bot) GetSubTerms() Lib.Set[Term]                  { return Lib.EmptySet[Term]() }
func (b Bot) GetSymbols() Lib.Set[Id]                     { return Lib.EmptySet[Id]() }
func (b Bot) SubstituteVarByMeta(Var, Meta) Form          { return b }
func (b Bot) GetInternalMetas() Lib.Set[Meta]             { return Lib.EmptySet[Meta]() }
func (b Bot) GetSubFormulasRecur() Lib.List[Form]         { return Lib.MkListV[Form](b) }
func (b Bot) GetChildFormulas() Lib.List[Form]            { return Lib.NewList[Form]() }
func (b Bot) ReplaceMetaByTerm(meta Meta, term Term) Form { return b }
func (b Bot) Less(oth any) bool {
	if form, is_form := oth.(Form); is_form {
		switch form.(type) {
		case All, Ex, Or, And, Equ, Imp, Not, Pred, Top:
			return true
		}
		return false
	}
	return false
}
