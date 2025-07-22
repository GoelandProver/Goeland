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
	isTy()
	ToString() string
	Equals(any) bool
	Copy() Ty
}

// Internal, shouldn't get out so no upper case
type tyVar struct {
	repr string
}

func (tyVar) isTy()              {}
func (v tyVar) ToString() string { return v.repr }
func (v tyVar) Equals(oth any) bool {
	if ov, ok := oth.(tyVar); ok {
		return v.repr == ov.repr
	}
	return false
}
func (v tyVar) Copy() Ty { return tyVar{v.repr} }

type TyBound struct {
	name  string
	index int
}

func (TyBound) isTy()              {}
func (b TyBound) ToString() string { return b.name }
func (b TyBound) Equals(oth any) bool {
	if bv, ok := oth.(TyBound); ok {
		return b.name == bv.name
	}
	return false
}
func (b TyBound) Copy() Ty { return TyBound{b.name, b.index} }

type TyMeta struct {
	name string
}

func (TyMeta) isTy()              {}
func (m TyMeta) ToString() string { return m.name }
func (m TyMeta) Equals(oth any) bool {
	if om, ok := oth.(TyMeta); ok {
		return m.name == om.name
	}
	return false
}
func (m TyMeta) Copy() Ty { return TyMeta{m.name} }

// Type constructors, e.g., list, option, ...
// Include constants, e.g., $i, $o, ...
type TyConstr struct {
	symbol string
	args   Lib.List[Ty]
}

func (TyConstr) isTy() {}

func (c TyConstr) ToString() string {
	if c.args.Len() == 0 {
		return c.symbol
	}
	return c.symbol + "(" + Lib.ListToString(c.args, ", ", "") + ")"
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

type TyProd struct {
	args Lib.List[Ty]
}

func (TyProd) isTy() {}

func (p TyProd) ToString() string {
	return "(" + Lib.ListToString(p.args, " * ", "") + ")"
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

type TyFunc struct {
	in, out Ty
}

func (TyFunc) isTy() {}
func (f TyFunc) ToString() string {
	return f.in.ToString() + " > " + f.out.ToString()
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

type TyPi struct {
	vars Lib.List[string]
	ty   Ty
}

func (TyPi) isTy() {}
func (p TyPi) ToString() string {
	return "!> [" + p.vars.ToString(func(s string) string { return s }, ", ", "") + "] : (" + p.ty.ToString() + ")"
}
func (p TyPi) Equals(oth any) bool {
	if op, ok := oth.(TyPi); ok {
		cmp := func(x, y string) bool { return x == y }
		return p.vars.Equals(cmp, p.vars, op.vars) &&
			p.ty.Equals(op.ty)
	}
	return false
}

func (p TyPi) Copy() Ty {
	return TyPi{p.vars.Copy(func(x string) string { return x }), p.ty.Copy()}
}

// Makers

func MkTyVar(repr string) Ty {
	return tyVar{repr}
}

func MkTyBV(name string, index int) Ty {
	return TyBound{name, index}
}

func MkTyMeta(name string) Ty {
	return TyMeta{name}
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

func MkTyPi(vars Lib.List[string], ty Ty) Ty {
	return TyPi{vars, ty}
}

// FIXME: the Maker logic should be factorized somewhere
func MakerTyBV(name string) Ty {
	lock_term.Lock()
	i, ok := idVar[name]
	lock_term.Unlock()
	if ok {
		return MkTyBV(name, i)
	} else {
		lock_term.Lock()
		idVar[name] = cpt_term
		vr := MkTyBV(name, cpt_term)
		cpt_term += 1
		lock_term.Unlock()
		return vr
	}
}

func InstantiateTy(ty Ty, instance Lib.List[Ty]) Ty {
	switch rty := ty.(type) {
	case TyFunc:
		if !instance.Empty() {
			Glob.Anomaly(
				"Ty.Instantiate",
				fmt.Sprintf(
					"On instantiation of %s: given instance %s has arguments when it shouldn't",
					ty.ToString(),
					Lib.ListToString(instance, ", ", "(empty instance)"),
				),
			)
		}
		return ty
	case TyPi:
		if instance.Len() != rty.vars.Len() {
			Glob.Anomaly(
				"Ty.Instantiate",
				fmt.Sprintf(
					"On instantiation of %s: given instance %s does not have the right number of arguments",
					ty.ToString(),
					Lib.ListToString(instance, ", ", "(empty instance)"),
				),
			)
		}

		instanceMap := make(map[string]Ty)
		for i, ity := range instance.GetSlice() {
			instanceMap[rty.vars.At(i)] = ity
		}
		return instantiateTyRec(rty.ty, ty, instanceMap)
	}
	Glob.Anomaly(
		"Ty.Instantiate",
		fmt.Sprintf("Tried to instantiate %s which is not a Pi-type", ty.ToString()),
	)
	return nil
}

// source type is here for logging
func instantiateTyRec(ty, source Ty, instance map[string]Ty) Ty {
	aux := func(ty Ty) Ty {
		return instantiateTyRec(ty, source, instance)
	}

	switch rty := ty.(type) {
	case tyVar:
		if val, ok := instance[rty.repr]; ok {
			return val
		}
		Glob.Anomaly(
			"Ty.Instantiate",
			fmt.Sprintf("Under type %s: type variable %s has no instance", source.ToString(), rty.repr),
		)

	case TyConstr:
		return MkTyConstr(
			rty.symbol,
			Lib.ListMap(rty.args, aux),
		)

	case TyProd:
		return MkTyProd(Lib.ListMap(rty.args, aux))

	case TyFunc:
		return MkTyFunc(aux(rty.in), aux(rty.out))
	}

	Glob.Anomaly(
		"Ty.Instantiate",
		fmt.Sprintf(
			"In %s, trying to instantiate %s which is illegal",
			source.ToString(),
			ty.ToString(),
		),
	)
	return nil
}

func GetArgsTy(ty Ty) Lib.List[Ty] {
	switch rty := ty.(type) {
	case TyFunc:
		switch nty := rty.in.(type) {
		case TyProd:
			return nty.args
		}
	}
	Glob.Anomaly(
		"Ty.GetArgs",
		fmt.Sprintf("Tried to extract types of arguments of a non-functional type %s", ty.ToString()),
	)
	return Lib.NewList[Ty]()
}
