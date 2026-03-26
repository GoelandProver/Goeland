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

// -----------------------------------------------------------------------------
// Forall

type All struct {
	quantifier
}

func MakeAllSimple(ty Ty, forms Form) All {
	return All{makeQuantifier(ty, forms, ConnAll)}
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
	return All{a.copy()}
}

func (a All) Subst(x Meta, t Term) Form {
	return All{a.applyOnSubForm(func(f Form) Form { return f.Subst(x, t) })}
}

func (a All) Instantiate(x Var, t Term) Form {
	return All{a.applyOnSubForm(func(f Form) Form { return f.Instantiate(x.increase(), t) })}
}

func (a All) SubstTy(old TyMeta, new Ty) Form {
	return All{
		a.applyOnSubForm(func(f Form) Form { return f.SubstTy(old, new) }).
			applyOnTy(func(t Ty) Ty { return t.SubstTy(old, new) }),
	}
}

func (a All) InstantiateTy(old TyBound, new Ty) Form {
	return All{
		a.applyOnSubForm(func(f Form) Form { return f.InstantiateTy(old.Increase(), new) }).
			applyOnTy(func(t Ty) Ty { return t.Instantiate(old.Increase(), new) }),
	}
}

func (a All) ReplaceTerm(t, u Term) Form {
	return All{a.applyOnSubForm(func(f Form) Form { return f.ReplaceTerm(t, u) })}
}

func (a All) Less(oth any) bool {
	if form, is_form := oth.(Form); is_form {
		switch f := form.(type) {
		case All:
			return qLess(a.ty, f.ty, a.subForm, f.subForm)
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
	return Ex{e.copy()}
}

func (e Ex) Instantiate(x Var, t Term) Form {
	return Ex{e.applyOnSubForm(func(f Form) Form { return f.Instantiate(x.increase(), t) })}
}

func (e Ex) Subst(x Meta, t Term) Form {
	return Ex{e.applyOnSubForm(func(f Form) Form { return f.Subst(x, t) })}
}

func (e Ex) ReplaceTerm(t, u Term) Form {
	return Ex{e.applyOnSubForm(func(f Form) Form { return f.ReplaceTerm(t, u) })}
}

func (e Ex) SubstTy(old TyMeta, new Ty) Form {
	return Ex{
		e.applyOnSubForm(func(f Form) Form { return f.SubstTy(old, new) }).
			applyOnTy(func(t Ty) Ty { return t.SubstTy(old, new) }),
	}
}

func (e Ex) InstantiateTy(old TyBound, new Ty) Form {
	return Ex{
		e.applyOnSubForm(func(f Form) Form { return f.InstantiateTy(old.Increase(), new) }).
			applyOnTy(func(t Ty) Ty { return t.Instantiate(old.Increase(), new) }),
	}
}

func (e Ex) Less(oth any) bool {
	if form, is_form := oth.(Form); is_form {
		switch f := form.(type) {
		case All:
			return true
		case Ex:
			return qLess(e.ty, f.ty, e.subForm, f.subForm)
		default:
			return false
		}
	}
	return false
}

// -----------------------------------------------------------------------------
// Or

type Or struct {
	nari_form
}

func (o Or) Equals(f any) bool {
	oth, isOr := f.(Or)
	return isOr && o.equals(oth.nari_form)
}

func (o Or) Copy() Form {
	return Or{o.copy()}
}

func (o Or) toString(n int) string {
	return o.nari_form.toString(n, ConnOr)
}

func (o Or) ToString() string {
	return o.toString(0)
}

func (o Or) Subst(x Meta, t Term) Form {
	return Or{o.applyOnArgs(func(f Form) Form { return f.Subst(x, t) })}
}

func (o Or) Instantiate(x Var, t Term) Form {
	return Or{o.applyOnArgs(func(f Form) Form { return f.Instantiate(x, t) })}
}

func (o Or) SubstTy(old TyMeta, new Ty) Form {
	return Or{o.applyOnArgs(func(f Form) Form { return f.SubstTy(old, new) })}
}

func (o Or) InstantiateTy(old TyBound, new Ty) Form {
	return Or{o.applyOnArgs(func(f Form) Form { return f.InstantiateTy(old, new) })}
}

func (o Or) ReplaceTerm(t, u Term) Form {
	return Or{o.applyOnArgs(func(f Form) Form { return f.ReplaceTerm(t, u) })}
}

func (o Or) GetSubFormulasRecur() Lib.List[Form] {
	return getAllSubFormulasAppended(o)
}

func (o Or) Less(oth any) bool {
	if form, is_form := oth.(Form); is_form {
		switch f := form.(type) {
		case All, Ex:
			return true
		case Or:
			return o.less(f.nari_form)
		default:
			return false
		}
	}
	return false
}

// -----------------------------------------------------------------------------
// And

type And struct {
	nari_form
}

func (a And) Equals(f any) bool {
	oth, isAnd := f.(And)
	return isAnd && a.equals(oth.nari_form)
}

func (a And) Copy() Form {
	return And{a.copy()}
}

func (a And) toString(n int) string {
	return a.nari_form.toString(n, ConnAnd)
}

func (a And) ToString() string {
	return a.toString(0)
}

func (a And) Subst(x Meta, t Term) Form {
	return And{a.applyOnArgs(func(f Form) Form { return f.Subst(x, t) })}
}

func (a And) Instantiate(x Var, t Term) Form {
	return And{a.applyOnArgs(func(f Form) Form { return f.Instantiate(x, t) })}
}

func (a And) SubstTy(old TyMeta, new Ty) Form {
	return And{a.applyOnArgs(func(f Form) Form { return f.SubstTy(old, new) })}
}

func (a And) InstantiateTy(old TyBound, new Ty) Form {
	return And{a.applyOnArgs(func(f Form) Form { return f.InstantiateTy(old, new) })}
}

func (a And) ReplaceTerm(t, u Term) Form {
	return And{a.applyOnArgs(func(f Form) Form { return f.ReplaceTerm(t, u) })}
}

func (a And) GetSubFormulasRecur() Lib.List[Form] {
	return getAllSubFormulasAppended(a)
}

func (a And) Less(oth any) bool {
	if form, is_form := oth.(Form); is_form {
		switch f := form.(type) {
		case All, Ex, Or:
			return true
		case And:
			return a.less(f.nari_form)
		default:
			return false
		}
	}
	return false
}

// -----------------------------------------------------------------------------
// Equivalence

type Equ struct {
	bin_form
}

func (e Equ) Copy() Form {
	return Equ{e.copy()}
}

func (e Equ) toString(n int) string {
	return e.bin_form.toString(n, ConnEqu)
}

func (e Equ) ToString() string {
	return e.toString(0)
}

func (e Equ) Equals(f any) bool {
	oth, isEqu := f.(Equ)
	return isEqu && e.equals(oth.bin_form)
}

func (e Equ) Instantiate(x Var, t Term) Form {
	return Equ{e.applyOnArgs(func(f Form) Form { return f.Instantiate(x, t) })}
}

func (e Equ) Subst(x Meta, t Term) Form {
	return Equ{e.applyOnArgs(func(f Form) Form { return f.Subst(x, t) })}
}

func (e Equ) SubstTy(old TyMeta, new Ty) Form {
	return Equ{e.applyOnArgs(func(f Form) Form { return f.SubstTy(old, new) })}
}

func (e Equ) InstantiateTy(old TyBound, new Ty) Form {
	return Equ{e.applyOnArgs(func(f Form) Form { return f.InstantiateTy(old, new) })}
}

func (e Equ) ReplaceTerm(t, u Term) Form {
	return Equ{e.applyOnArgs(func(f Form) Form { return f.ReplaceTerm(t, u) })}
}

func (e Equ) GetSubFormulasRecur() Lib.List[Form] {
	return getAllSubFormulasAppended(e)
}

func (e Equ) Less(oth any) bool {
	if form, is_form := oth.(Form); is_form {
		switch f := form.(type) {
		case All, Ex, Or, And:
			return true
		case Equ:
			return e.less(f.bin_form)
		default:
			return false
		}
	}
	return false
}

// -----------------------------------------------------------------------------
// Implication

type Imp struct {
	bin_form
}

func (i Imp) Copy() Form {
	return Imp{i.copy()}
}

func (i Imp) toString(n int) string {
	return i.bin_form.toString(n, ConnImp)
}

func (i Imp) ToString() string {
	return i.toString(0)
}

func (i Imp) Equals(f any) bool {
	oth, isImp := f.(Imp)
	return isImp && i.equals(oth.bin_form)
}

func (i Imp) Instantiate(x Var, t Term) Form {
	return Imp{i.applyOnArgs(func(f Form) Form { return f.Instantiate(x, t) })}
}

func (i Imp) Subst(x Meta, t Term) Form {
	return Imp{i.applyOnArgs(func(f Form) Form { return f.Subst(x, t) })}
}

func (i Imp) SubstTy(old TyMeta, new Ty) Form {
	return Imp{i.applyOnArgs(func(f Form) Form { return f.SubstTy(old, new) })}
}

func (i Imp) InstantiateTy(old TyBound, new Ty) Form {
	return Imp{i.applyOnArgs(func(f Form) Form { return f.InstantiateTy(old, new) })}
}

func (i Imp) ReplaceTerm(t, u Term) Form {
	return Imp{i.applyOnArgs(func(f Form) Form { return f.ReplaceTerm(t, u) })}
}

func (i Imp) GetSubFormulasRecur() Lib.List[Form] {
	return getAllSubFormulasAppended(i)
}

func (i Imp) Less(oth any) bool {
	if form, is_form := oth.(Form); is_form {
		switch f := form.(type) {
		case All, Ex, Or, And, Equ:
			return true
		case Imp:
			return i.less(f.bin_form)
		default:
			return false
		}
	}
	return false
}

// -----------------------------------------------------------------------------
// Not

type Not struct {
	f Form
}

/** Methods **/

/** - Form interface Methods **/

func (n Not) GetMetas() Lib.Set[Meta] {
	return n.f.GetMetas()
}

func (n Not) GetSubTerms() Lib.Set[Term] {
	return n.f.GetSubTerms()
}

func (n Not) GetSymbols() Lib.Set[Id] {
	return n.f.GetSymbols()
}

func (n Not) Equals(other any) bool {
	if typed, ok := other.(Not); ok {
		return typed.f.Equals(n.f)
	}

	return false
}

func (n Not) Copy() Form {
	return Not{n.f.Copy()}
}

func (n Not) toString(i int) string {
	return printer.Str(fmt.Sprintf("%s%s",
		printer.StrConn(ConnNot),
		printer.Str(printer.SurroundChild(n.f.toString(i))),
	))
}

func (n Not) ToString() string {
	return n.toString(0)
}

func (n Not) Instantiate(x Var, t Term) Form {
	return MakeNot(n.f.Instantiate(x, t))
}

func (n Not) Subst(x Meta, t Term) Form {
	return MakeNot(n.f.Subst(x, t))
}

func (n Not) SubstTy(old TyMeta, new Ty) Form {
	return MakeNot(n.f.SubstTy(old, new))
}

func (n Not) InstantiateTy(old TyBound, new Ty) Form {
	return MakeNot(n.f.InstantiateTy(old, new))
}

func (n Not) ReplaceTerm(t, u Term) Form {
	return MakeNot(n.f.ReplaceTerm(t, u))
}

/** - Other Methods **/

func (n Not) GetForm() Form {
	return n.f.Copy()
}

func (n Not) GetSubFormulasRecur() Lib.List[Form] {
	return getAllSubFormulasAppended(n)
}

func (n Not) GetChildFormulas() Lib.List[Form] {
	return Lib.MkListV(n.GetForm())
}

/** Utils **/

/* Recursively removes negations until getting the base formula */
func RemoveNeg(form Form) Form {
	form, _ = getDeepFormWithoutNot(form, true)
	return form
}

/* Gives the deepest Form that has one or less Not around */
func SimplifyNegations(form Form) Form {
	form, isEven := getDeepFormWithoutNot(form, true)

	if !isEven {
		form = MakeNot(form)
	}

	return form
}

// FIXME: this function does two things and is thus not named properly
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
	id   Id
	tys  Lib.List[Ty]
	args Lib.List[Term]
}

/* Pred attributes getters */

func (p Pred) GetID() Id               { return p.id.Copy().(Id) }
func (p Pred) GetTyArgs() Lib.List[Ty] { return p.tys }
func (p Pred) GetArgs() Lib.List[Term] { return p.args }

/* Formula methods */

func (p Pred) toString(n int) string {
	return printer.StrFunctional(
		p.id,
		Lib.ListMap(p.tys, func(t Ty) string { return t.toString(n) }),
		Lib.ListMap(p.args, func(t Term) string { return t.toString(n) }),
	)
}

func (p Pred) ToString() string {
	return p.toString(0)
}

func (p Pred) Copy() Form {
	return MakePred(p.id, Lib.ListCpy(p.tys), Lib.ListCpy(p.args))
}

func (p Pred) Equals(other any) bool {
	if typed, ok := other.(Pred); ok {
		return typed.id.Equals(p.id) &&
			Lib.ListEquals(typed.tys, p.tys) &&
			Lib.ListEquals(typed.args, p.args)
	}

	return false
}

func (p Pred) GetMetas() Lib.Set[Meta] {
	return listUnion(p.args, Term.GetMetas)
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

func (p Pred) applyOnTerms(f func(Term) Term) Pred {
	return MakePred(p.id, p.tys, Lib.ListMap(p.args, f))
}

func (p Pred) applyOnTys(f func(Ty) Ty) Pred {
	return MakePred(p.id, Lib.ListMap(p.tys, f), p.args)
}

func (p Pred) Instantiate(x Var, t Term) Form {
	return p.applyOnTerms(func(u Term) Term { return u.Instantiate(x, t) })
}

func (p Pred) Subst(x Meta, t Term) Form {
	return p.applyOnTerms(func(u Term) Term { return u.Subst(x, t) })
}

func (p Pred) SubstTy(old TyMeta, new Ty) Form {
	return p.applyOnTerms(func(t Term) Term { return t.SubstTy(old, new) }).
		applyOnTys(func(t Ty) Ty { return t.SubstTy(old, new) })
}

func (p Pred) InstantiateTy(old TyBound, new Ty) Form {
	return p.applyOnTerms(func(t Term) Term { return t.InstantiateTy(old, new) }).
		applyOnTys(func(t Ty) Ty { return t.Instantiate(old, new) })
}

func (p Pred) ReplaceTerm(t, u Term) Form {
	return p.applyOnTerms(func(v Term) Term { return v.ReplaceTerm(t, u) })
}

func (p Pred) GetSubTerms() Lib.Set[Term] {
	return listUnion(p.args, Term.GetSubTerms)
}

func (p Pred) GetSymbols() Lib.Set[Id] {
	return listUnion(p.args, Term.GetSymbols)
}

func (p Pred) GetSubFormulasRecur() Lib.List[Form] {
	return Lib.MkListV(p.Copy())
}

func (p Pred) GetChildFormulas() Lib.List[Form] {
	return Lib.NewList[Form]()
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

type Top struct{}

func (Top) toString(int) string                   { return printer.StrConn(ConnTop) }
func (t Top) ToString() string                    { return t.toString(0) }
func (t Top) Copy() Form                          { return MakeTop() }
func (Top) Equals(f any) bool                     { _, isTop := f.(Top); return isTop }
func (Top) GetMetas() Lib.Set[Meta]               { return Lib.EmptySet[Meta]() }
func (Top) Instantiate(Var, Term) Form            { return MakeTop() }
func (Top) Subst(Meta, Term) Form                 { return MakeTop() }
func (Top) ReplaceTerm(Term, Term) Form           { return MakeTop() }
func (t Top) SubstTy(TyMeta, Ty) Form             { return t }
func (t Top) InstantiateTy(TyBound, Ty) Form      { return t }
func (t Top) GetSubTerms() Lib.Set[Term]          { return Lib.EmptySet[Term]() }
func (t Top) GetSymbols() Lib.Set[Id]             { return Lib.EmptySet[Id]() }
func (t Top) GetSubFormulasRecur() Lib.List[Form] { return Lib.MkListV[Form](t) }
func (t Top) GetChildFormulas() Lib.List[Form]    { return Lib.NewList[Form]() }
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
type Bot struct{}

func (Bot) toString(int) string                   { return printer.StrConn(ConnBot) }
func (b Bot) ToString() string                    { return b.toString(0) }
func (b Bot) Copy() Form                          { return MakeBot() }
func (Bot) Equals(f any) bool                     { _, isBot := f.(Bot); return isBot }
func (Bot) GetMetas() Lib.Set[Meta]               { return Lib.EmptySet[Meta]() }
func (Bot) Instantiate(Var, Term) Form            { return MakeBot() }
func (Bot) Subst(Meta, Term) Form                 { return MakeBot() }
func (Bot) ReplaceTerm(Term, Term) Form           { return MakeBot() }
func (b Bot) SubstTy(TyMeta, Ty) Form             { return b }
func (b Bot) InstantiateTy(TyBound, Ty) Form      { return b }
func (b Bot) GetSubTerms() Lib.Set[Term]          { return Lib.EmptySet[Term]() }
func (b Bot) GetSymbols() Lib.Set[Id]             { return Lib.EmptySet[Id]() }
func (b Bot) GetSubFormulasRecur() Lib.List[Form] { return Lib.MkListV[Form](b) }
func (b Bot) GetChildFormulas() Lib.List[Form]    { return Lib.NewList[Form]() }
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
