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
 * This file declares the syntax of the TFF1 type system.
 * Variables are internal to polymorphic schemes and are treated with pseudo De Bruijn indices.
 **/

package AST

import (
	"fmt"

	"github.com/GoelandProver/Goeland/Glob"
	"github.com/GoelandProver/Goeland/Lib"
)

type Ty interface {
	Lib.Stringable
	Lib.Ordered
	Lib.Copyable[Ty]

	isTy()
	Instantiate(TyBound, Ty) Ty
	SubstTy(TyMeta, Ty) Ty
	toString(int) string
}

type TyBound int

func (v TyBound) toString(i int) string {
	return printer.StrBoundTy(i - int(v) - 1)
}
func (TyBound) isTy()     {}
func (TyBound) isGenVar() {}
func (v TyBound) ToString() string {
	return v.toString(0)
}
func (b TyBound) Equals(oth any) bool {
	if bv, ok := oth.(TyBound); ok {
		return b == bv
	}
	return false
}
func (b TyBound) Copy() Ty { return b }
func (b TyBound) GetName() string {
	Glob.Anomaly("term.GetName()", "A bound variable is nameless")
	return ""
}

func (v TyBound) Instantiate(old TyBound, new Ty) Ty {
	if v.Equals(old) {
		return new
	}
	return v
}

func (b TyBound) SubstTy(TyMeta, Ty) Ty { return b }

func (v TyBound) Increase() TyBound { return TyBound(int(v) + 1) }

func (v TyBound) Less(oth any) bool {
	if ty, is_ty := oth.(Ty); is_ty {
		switch t := ty.(type) {
		case TyBound:
			return v < t
		default:
			return true
		}
	}
	return false
}

func (v TyBound) Index() int { return int(v) }

type TyMeta struct {
	formula int // for compatibility with term metas
	index   int
	name    string
}

func (TyMeta) isTy() {}
func (m TyMeta) toString(int) string {
	return printer.StrMeta(m.name, m.index)
}
func (m TyMeta) ToString() string {
	return m.toString(0)
}
func (m TyMeta) Equals(oth any) bool {
	if om, ok := oth.(TyMeta); ok {
		return m.name == om.name && m.index == om.index
	}
	return false
}
func (m TyMeta) Copy() Ty { return TyMeta{m.formula, m.index, m.name} }

func (m TyMeta) Instantiate(TyBound, Ty) Ty { return m }
func (m TyMeta) SubstTy(v TyMeta, new Ty) Ty {
	if m.Equals(v) {
		return new
	}
	return m
}

func (m TyMeta) ToTermMeta() Meta { return Meta{m.formula, m.index, m.name, tType} }

func TyMetaFromMeta(m Meta) TyMeta {
	return TyMeta{
		m.formula,
		m.index,
		m.name,
	}
}

func (m TyMeta) Less(oth any) bool {
	if ty, is_ty := oth.(Ty); is_ty {
		switch t := ty.(type) {
		case TyBound:
			return false
		case TyMeta:
			return m.name < t.name ||
				(m.name == t.name && m.index < t.index) ||
				(m.name == t.name && m.index == t.index && m.formula < t.formula)
		default:
			return true
		}
	}
	return false
}

// Type constructors, e.g., list, option, ...
// Include constants, e.g., $i, $o, ...
type TyConstr struct {
	symbol string
	args   Lib.List[Ty]
}

func (TyConstr) isTy() {}

func (c TyConstr) toString(n int) string {
	if c.args.Empty() {
		return printer.StrTy(c.symbol)
	}
	return fmt.Sprintf("%s%s",
		printer.StrTy(c.symbol),
		printer.SurroundArgs(
			c.args.ToString(func(t Ty) string { return t.toString(n) },
				printer.StrConn(SepArgs), ""),
		),
	)
}

func (c TyConstr) ToString() string {
	return c.toString(0)
}

func (c TyConstr) Equals(oth any) bool {
	if oc, ok := oth.(TyConstr); ok {
		return c.symbol == oc.symbol &&
			Lib.ListEquals(c.args, oc.args)
	}
	return false
}

func (c TyConstr) Copy() Ty {
	return TyConstr{c.symbol, Lib.ListCpy(c.args)}
}

func (c TyConstr) Symbol() string {
	return c.symbol
}

func (c TyConstr) Args() Lib.List[Ty] {
	return c.args
}

func (c TyConstr) applyOnArgs(f func(t Ty) Ty) TyConstr {
	return TyConstr{c.symbol, Lib.ListMap(c.args, f)}
}

func (c TyConstr) Instantiate(old TyBound, new Ty) Ty {
	return c.applyOnArgs(func(t Ty) Ty { return t.Instantiate(old, new) })
}

func (c TyConstr) SubstTy(old TyMeta, new Ty) Ty {
	return c.applyOnArgs(func(t Ty) Ty { return t.SubstTy(old, new) })
}

func (c TyConstr) Less(oth any) bool {
	if ty, is_ty := oth.(Ty); is_ty {
		switch t := ty.(type) {
		case TyBound, TyMeta:
			return false
		case TyConstr:
			return c.symbol < t.symbol ||
				(c.symbol == t.symbol && Lib.ListLess(c.args, t.args))
		default:
			return true
		}
	}
	return false
}

type TyProd struct {
	args Lib.List[Ty]
}

func (TyProd) isTy() {}

func (p TyProd) toString(n int) string {
	return p.args.ToString(
		func(ty Ty) string { return printer.Str(printer.SurroundChild(ty.toString(n))) },
		printer.StrConn(ConnProd), "",
	)
}

func (p TyProd) ToString() string {
	return p.toString(0)
}

func (p TyProd) GetTys() Lib.List[Ty] {
	return p.args
}

func (p TyProd) Equals(oth any) bool {
	if op, ok := oth.(TyProd); ok {
		return Lib.ListEquals(p.args, op.args)
	}
	return false
}

func (p TyProd) Copy() Ty {
	return TyProd{Lib.ListCpy(p.args)}
}

func (c TyProd) applyOnArgs(f func(t Ty) Ty) TyProd {
	return TyProd{Lib.ListMap(c.args, f)}
}

func (p TyProd) Instantiate(old TyBound, new Ty) Ty {
	return p.applyOnArgs(func(t Ty) Ty { return t.Instantiate(old, new) })
}

func (p TyProd) SubstTy(old TyMeta, new Ty) Ty {
	return p.applyOnArgs(func(t Ty) Ty { return t.SubstTy(old, new) })
}

func (p TyProd) Less(oth any) bool {
	if ty, is_ty := oth.(Ty); is_ty {
		switch t := ty.(type) {
		case TyBound, TyMeta, TyConstr:
			return false
		case TyProd:
			return Lib.ListLess(p.args, t.args)
		default:
			return true
		}
	}
	return false
}

type TyFunc struct {
	in, out Ty
}

func (TyFunc) isTy() {}

func (f TyFunc) toString(n int) string {
	return fmt.Sprintf("%s %s %s",
		printer.Str(printer.SurroundChild(f.in.toString(n))),
		printer.StrConn(ConnMap),
		printer.Str(printer.SurroundChild(f.out.toString(n))),
	)
}

func (f TyFunc) ToString() string {
	return f.toString(0)
}

func (f TyFunc) Equals(oth any) bool {
	if of, ok := oth.(TyFunc); ok {
		return f.in.Equals(of.in) && f.out.Equals(of.out)
	}
	return false
}

func (f TyFunc) Copy() Ty {
	return TyFunc{f.in.Copy(), f.out.Copy()}
}

func (f TyFunc) applyOnArgs(g func(Ty) Ty) TyFunc {
	return TyFunc{g(f.in), g(f.out)}
}

func (f TyFunc) Instantiate(old TyBound, new Ty) Ty {
	return f.applyOnArgs(func(t Ty) Ty { return t.Instantiate(old, new) })
}

func (f TyFunc) SubstTy(old TyMeta, new Ty) Ty {
	return f.applyOnArgs(func(t Ty) Ty { return t.SubstTy(old, new) })
}

func (f TyFunc) Less(oth any) bool {
	if ty, is_ty := oth.(Ty); is_ty {
		switch t := ty.(type) {
		case TyBound, TyMeta, TyConstr, TyProd:
			return false
		case TyFunc:
			return f.in.Less(t.in) ||
				(f.in.Equals(t.in) && f.out.Less(t.out))
		default:
			return true
		}
	}
	return false
}

type TyPi struct {
	ty Ty
}

func (TyPi) isTy() {}

func (p TyPi) toString(n int) string {
	vars := Lib.MkListV(n)
	n += 1

	for Glob.Is[TyPi](p.ty) {
		p = Glob.To[TyPi](p.ty)
		vars = vars.Push(n)
		n += 1
	}

	return fmt.Sprintf(
		"%s %s%s%s",
		printer.StrConn(ConnPi),
		printer.SurroundQuantified(
			vars.ToString(printer.StrBoundTy, printer.StrConn(SepTyVars), ""),
		),
		printer.StrConn(SepVarsForm),
		printer.Str(p.ty.toString(n)),
	)
}

func (p TyPi) ToString() string {
	return p.toString(0)
}
func (p TyPi) Equals(oth any) bool {
	if op, ok := oth.(TyPi); ok {
		return p.ty.Equals(op.ty)
	}
	return false
}

func (p TyPi) Copy() Ty {
	return TyPi{p.ty.Copy()}
}

func (p TyPi) Instantiate(old TyBound, new Ty) Ty {
	return TyPi{p.ty.Instantiate(old.Increase(), new)}
}

func (p TyPi) SubstTy(old TyMeta, new Ty) Ty {
	return TyPi{p.ty.SubstTy(old, new)}
}

func (p TyPi) Less(oth any) bool {
	if ty, is_ty := oth.(Ty); is_ty {
		switch t := ty.(type) {
		case TyBound, TyMeta, TyConstr, TyProd, TyFunc:
			return false
		case TyPi:
			return p.ty.Less(t.ty)
		default:
			return true
		}
	}
	return false
}

func (p TyPi) Ty() Ty {
	return p.ty
}

// Makers

func MkTyBV(id int) Ty {
	return TyBound(id)
}

func MkTyMeta(formula int) Ty {
	lock_term.Lock()
	index := meta_id
	meta_id++
	lock_term.Unlock()
	meta := TyMeta{formula, index, fmt.Sprintf("MT%d", index)}
	return meta
}

func MkTyConstr(symbol string, args Lib.List[Ty]) Ty {
	return TyConstr{symbol, args}
}

func MkTyConst(symbol string) Ty {
	return TyConstr{symbol, Lib.NewList[Ty]()}
}

func MkTyProd(args Lib.List[Ty]) Ty {
	return TyProd{args}
}

func MkTyFunc(in, out Ty) Ty {
	return TyFunc{in, out}
}

func MkTyPi(ty Ty) Ty {
	return TyPi{ty}
}

func GetArgsTy(ty Ty) Lib.List[Ty] {
	switch rty := ty.(type) {
	case TyConstr:
		return Lib.NewList[Ty]()
	case TyFunc:
		switch nty := rty.in.(type) {
		case TyBound, TyConstr:
			return Lib.MkListV(rty.in)
		case TyProd:
			return nty.args
		}
	}

	Glob.Anomaly(
		"Ty.GetArgs",
		fmt.Sprintf(
			"Tried to extract types of arguments of a non-functional type %s",
			ty.ToString(),
		),
	)
	return Lib.NewList[Ty]()
}

func GetOutTy(ty Ty) Ty {
	switch rty := ty.(type) {
	case TyConstr:
		return tType
	case TyFunc:
		return rty.out
	}

	Glob.Anomaly(
		"Ty.GetOutTy",
		fmt.Sprintf("Tried to extract out type of a non-functional type %s", ty.ToString()),
	)
	return nil
}

func GetTySymbol(ty Ty) Lib.Option[string] {
	switch t := ty.(type) {
	case TyConstr:
		return Lib.MkSome(t.symbol)
	}
	return Lib.MkNone[string]()
}

func TyToTerm(ty Ty) Term {
	switch nty := ty.(type) {
	case TyMeta:
		return nty.ToTermMeta()
	case TyConstr:
		return MakeFun(
			MakeId(nty.symbol),
			Lib.NewList[Ty](),
			Lib.ListMap(nty.args, TyToTerm),
		)
	}

	Glob.Anomaly(
		"AST.Ty",
		fmt.Sprintf(
			"Trying to convert the non-atomic (or bound var) type %s to a term",
			ty.ToString(),
		),
	)
	return nil
}

func TermToTy(trm Term) Ty {
	switch t := trm.(type) {
	case Meta:
		return TyMetaFromMeta(t)
	case Fun:
		return MkTyConstr(
			t.GetID().GetName(),
			Lib.ListMap(t.args, TermToTy),
		)
	}

	Glob.Anomaly(
		"AST.Ty",
		fmt.Sprintf(
			"Trying to convert the non-atomic (or bound var) term %s to a type",
			trm.ToString(),
		),
	)
	return nil
}

func mkDefaultFunctionalType(number_of_arguments int, out_type Ty) Ty {
	if number_of_arguments == 0 {
		return out_type
	}
	tys := Lib.MkList[Ty](number_of_arguments)
	for i := 0; i < number_of_arguments; i++ {
		tys.Upd(i, TIndividual())
	}
	return MkTyFunc(MkTyProd(tys), out_type)
}

func MkDefaultPredType(number_of_arguments int) Ty {
	return mkDefaultFunctionalType(number_of_arguments, TProp())
}

func MkDefaultFunctionType(number_of_arguments int) Ty {
	return mkDefaultFunctionalType(number_of_arguments, TIndividual())
}

func InstantiateTy(ty Ty, instance Lib.List[Ty]) Lib.Option[Ty] {
	for _, t := range instance.GetSlice() {
		if ty0, is_pi := ty.(TyPi); is_pi {
			ty = ty0.ty.Instantiate(0, t)
		} else {
			return Lib.MkNone[Ty]()
		}
	}
	return Lib.MkSome(ty)
}
