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
 * This file defines Goéland's terms
 **/

package AST

import (
	"strings"

	"github.com/GoelandProver/Goeland/Glob"
	"github.com/GoelandProver/Goeland/Lib"
)

// -----------------------------------------------------------------------------
// Predicates / functions symbols

type Id string

func (i Id) GetName() string           { return string(i) }
func (i Id) toString(int) string       { return i.GetName() }
func (i Id) IsMeta() bool              { return false }
func (i Id) IsFun() bool               { return false }
func (i Id) Copy() Term                { return Id(strings.Clone(string(i))) }
func (Id) ToMeta() Meta                { return MakeEmptyMeta() }
func (Id) GetMetas() Lib.Set[Meta]     { return Lib.EmptySet[Meta]() }
func (Id) GetMetaList() Lib.List[Meta] { return Lib.NewList[Meta]() }
func (i Id) ToString() string          { return printer.StrId(i) }

func (i Id) Equals(t any) bool {
	if typed, ok := t.(Id); ok {
		return typed == i
	}
	return false
}

func (i Id) Instantiate(Var, Term) Term { return i }
func (i Id) Subst(Meta, Term) Term      { return i }

func (i Id) InstantiateTy(TyBound, Ty) Term { return i }
func (i Id) SubstTy(TyMeta, Ty) Term        { return i }

func (i Id) GetSubTerms() Lib.Set[Term] {
	return Lib.Singleton[Term](i)
}

func (i Id) GetSymbols() Lib.Set[Id] {
	return Lib.Singleton(i)
}

func (i Id) ReplaceTerm(t, u Term) Term {
	if i.Equals(t) {
		return u
	}
	return i
}

func (i Id) CompareWith(other Id) int {
	return strings.Compare(string(i), string(other))
}

func (i Id) Less(u any) bool {
	if t, is_term := u.(Term); is_term {
		switch trm := t.(type) {
		case Id:
			return i < trm
		default:
			return false
		}
	}
	return false
}

// -----------------------------------------------------------------------------
// n-ary functions

type Fun struct {
	p    Id
	tys  Lib.List[Ty]
	args Lib.List[Term]
}

func (f Fun) toString(i int) string {
	return printer.StrFunctional(
		f.p,
		Lib.ListMap(f.tys, func(t Ty) string { return t.toString(i) }),
		Lib.ListMap(f.args, func(t Term) string { return t.toString(i) }),
	)
}

func (f Fun) ToString() string {
	return f.toString(0)
}

func (f Fun) GetID() Id               { return f.p.Copy().(Id) }
func (f Fun) GetP() Id                { return f.p.Copy().(Id) }
func (f Fun) GetTyArgs() Lib.List[Ty] { return f.tys }
func (f Fun) GetArgs() Lib.List[Term] { return f.args }

func (f *Fun) SetArgs(tl Lib.List[Term]) { f.args = tl }

func (f Fun) GetName() string { return f.GetID().GetName() }
func (f Fun) IsMeta() bool    { return false }
func (f Fun) IsFun() bool     { return true }
func (Fun) ToMeta() Meta      { return MakeEmptyMeta() }

func (f Fun) Equals(t any) bool {
	switch typed := t.(type) {
	case Fun:
		return typed.GetID().Equals(f.GetID()) &&
			Lib.ListEquals(typed.GetTyArgs(), f.GetTyArgs()) &&
			Lib.ListEquals(typed.GetArgs(), f.GetArgs())
	case *Fun:
		return typed.GetID().Equals(f.GetID()) &&
			Lib.ListEquals(typed.GetTyArgs(), f.GetTyArgs()) &&
			Lib.ListEquals(typed.GetArgs(), f.GetArgs())
	default:
		return false
	}
}

func (f Fun) Copy() Term {
	return MakeFun(
		f.GetP(),
		Lib.ListCpy(f.GetTyArgs()),
		Lib.ListCpy(f.GetArgs()),
	)
}

func (f Fun) PointerCopy() *Fun {
	nf := MakeFun(f.GetP(), f.GetTyArgs(), f.GetArgs())
	return &nf
}

func (f Fun) GetMetas() Lib.Set[Meta] {
	return listUnion(f.args, Term.GetMetas)
}

func (f Fun) GetMetaList() Lib.List[Meta] {
	metas := Lib.NewList[Meta]()

	for _, arg := range f.GetArgs().GetSlice() {
		switch t := arg.(type) {
		case Fun:
			metas.Append(t.GetMetaList().GetSlice()...)
		default:
			metas.Append(arg.GetMetas().Elements().GetSlice()...)
		}
	}

	return metas
}

func (f Fun) applyOnArgs(g func(Term) Term) Fun {
	return MakeFun(
		f.p,
		f.tys,
		Lib.ListMap(f.args, g),
	)
}

func (f Fun) applyOnTyArgs(g func(Ty) Ty) Fun {
	return MakeFun(
		f.p,
		Lib.ListMap(f.tys, g),
		f.args,
	)
}

func (f Fun) Subst(x Meta, t Term) Term {
	return f.applyOnArgs(func(u Term) Term { return u.Subst(x, t) })
}

func (f Fun) Instantiate(x Var, t Term) Term {
	return f.applyOnArgs(func(u Term) Term { return u.Instantiate(x, t) })
}

func (f Fun) InstantiateTy(old TyBound, new Ty) Term {
	return f.applyOnArgs(func(u Term) Term { return u.InstantiateTy(old, new) }).
		applyOnTyArgs(func(t Ty) Ty { return t.Instantiate(old, new) })
}

func (f Fun) SubstTy(old TyMeta, new Ty) Term {
	typed_args := Lib.ListMap(
		f.tys,
		func(t Ty) Ty { return t.SubstTy(old, new) },
	)
	args := Lib.ListMap(
		f.args,
		func(t Term) Term { return t.SubstTy(old, new) },
	)
	return MakeFun(
		f.GetID(),
		typed_args,
		args,
	)
}

func (f Fun) ReplaceTerm(t, u Term) Term {
	if f.Equals(t) {
		return u
	}
	return f.applyOnArgs(func(v Term) Term { return v.ReplaceTerm(t, u) })
}

func (f Fun) GetSubTerms() Lib.Set[Term] {
	return listUnion(f.args, Term.GetSubTerms).Add(Term(f))
}

func (f Fun) GetSymbols() Lib.Set[Id] {
	return listUnion(f.args, Term.GetSymbols).Add(f.p)
}

func (f Fun) Less(u any) bool {
	if t, is_term := u.(Term); is_term {
		switch trm := t.(type) {
		case Id:
			return true
		case Fun:
			return f.p.Less(trm.p) ||
				(f.p.Equals(trm.p) && Lib.ListLess(f.args, trm.args))
		default:
			return false
		}
	}
	return false
}

// -----------------------------------------------------------------------------
// Bound variables

type Var int

func (v Var) increase() Var         { return Var(int(v) + 1) }
func (v Var) toString(n int) string { return printer.StrBound(n - int(v) - 1) }
func (v Var) ToString() string      { return v.toString(0) }

func (v Var) Index() int { return int(v) }

func (v Var) GetName() string {
	Glob.Anomaly("term.GetName()", "A bound variable is nameless")
	return ""
}

func (v Var) IsMeta() bool              { return false }
func (v Var) IsFun() bool               { return false }
func (v Var) Copy() Term                { return v }
func (Var) ToMeta() Meta                { return MakeEmptyMeta() }
func (Var) GetMetas() Lib.Set[Meta]     { return Lib.EmptySet[Meta]() }
func (Var) GetMetaList() Lib.List[Meta] { return Lib.NewList[Meta]() }

func (v Var) Equals(t any) bool {
	if typed, ok := t.(Var); ok {
		return v == typed
	}
	return false
}

func (v Var) GetSubTerms() Lib.Set[Term] {
	return Lib.Singleton[Term](v)
}

func (v Var) GetSymbols() Lib.Set[Id] {
	return Lib.EmptySet[Id]()
}

func (v Var) Instantiate(x Var, t Term) Term {
	if v.Equals(x) {
		return t
	}
	return v
}

func (v Var) Subst(Meta, Term) Term { return v }

func (v Var) InstantiateTy(TyBound, Ty) Term { return v }
func (v Var) SubstTy(TyMeta, Ty) Term        { return v }

func (v Var) ReplaceTerm(t, u Term) Term {
	if v.Equals(t) {
		return u
	}
	return v
}

func (v Var) Less(u any) bool {
	if t, is_term := u.(Term); is_term {
		switch trm := t.(type) {
		case Id, Fun:
			return true
		case Var:
			return v < trm
		default:
			return false
		}
	}
	return false
}

// -----------------------------------------------------------------------------
// Meta/Free variables

type Meta struct {
	formula int
	index   int
	name    string
	ty      Ty
}

func (m Meta) GetFormula() int     { return m.formula }
func (m Meta) toString(int) string { return printer.StrMeta(m.name, m.index) }
func (m Meta) ToString() string    { return m.toString(0) }

func (m Meta) GetName() string             { return m.name }
func (m Meta) GetIndex() int               { return m.index }
func (m Meta) IsMeta() bool                { return true }
func (m Meta) IsFun() bool                 { return false }
func (m Meta) ToMeta() Meta                { return m }
func (m Meta) GetMetas() Lib.Set[Meta]     { return Lib.Singleton(m) }
func (m Meta) GetMetaList() Lib.List[Meta] { return Lib.MkListV(m) }
func (m Meta) GetTy() Ty                   { return m.ty }

func (m Meta) Equals(t any) bool {
	if typed, ok := t.(Meta); ok {
		return m.index == typed.index &&
			m.name == typed.name &&
			m.formula == typed.formula
	}
	return false
}

func (m Meta) Copy() Term {
	return Meta{m.formula, m.index, m.GetName(), m.GetTy()}
}

func (m Meta) Subst(x Meta, t Term) Term {
	if m.Equals(x) {
		return t
	}
	return m
}

func (m Meta) Instantiate(Var, Term) Term { return m }

func (m Meta) InstantiateTy(TyBound, Ty) Term { return m }
func (m Meta) SubstTy(TyMeta, Ty) Term        { return m }

func (m Meta) GetSubTerms() Lib.Set[Term] {
	return Lib.Singleton[Term](m)
}

func (m Meta) GetSymbols() Lib.Set[Id] {
	return Lib.EmptySet[Id]()
}

func (m Meta) ReplaceTerm(t, u Term) Term {
	if m.Equals(t) {
		return u
	}
	return m
}

func (m Meta) Less(u any) bool {
	if t, is_term := u.(Term); is_term {
		switch trm := t.(type) {
		case Id, Fun, Var:
			return true
		case Meta:
			return m.name < trm.name ||
				(m.name == trm.name && m.index < trm.index) ||
				(m.name == trm.name && m.index == trm.index && m.formula < trm.formula)
		default:
			return false
		}
	}
	return false
}

func MakeEmptyMeta() Meta {
	return Meta{-1, -1, "M-1", TIndividual()}
}

func MetaEquals(x, y Meta) bool {
	return x.Equals(y)
}
