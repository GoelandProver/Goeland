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
 * This file offers (pre)typing utilities for the elaborator
**/

package Engine

import (
	"fmt"

	"github.com/GoelandProver/Goeland/AST"
	"github.com/GoelandProver/Goeland/Glob"
	"github.com/GoelandProver/Goeland/Lib"
	"github.com/GoelandProver/Goeland/Parser"
)

var defaultType = Parser.MkTypeConst("$i").(Parser.PType)

// No supplementary check is done in the pretyper
func pretype(con Context, terms []Parser.PTerm) []Lib.Pair[Parser.PTerm, Parser.PType] {
	tys := []Lib.Pair[Parser.PTerm, Parser.PType]{}
	for _, term := range terms {
		debug(Lib.MkLazy(func() string { return fmt.Sprintf("pretyping %s", term.ToString()) }))
		lookupName := ""
		args := []Parser.PTerm{}
		defined_type := Lib.MkNone[Parser.PType]()
		switch t := term.(type) {
		case Parser.PFun:
			lookupName = t.Symbol()
			args = t.Args()
			defined_type = t.DefinedType()
		case Parser.PVar:
			lookupName = t.Name()
		}

		typed := false

		switch ty := lookupInContext(con, lookupName).(type) {
		case Lib.Some[Parser.PType]:
			real_ty := instantiateType(ty.Val, lookupName, args)
			debug_low_level(Lib.MkLazy(func() string {
				return fmt.Sprintf("Term in context with type %s", real_ty.ToString())
			}))

			tys = append(tys, Lib.MkPair(term, real_ty))
			typed = true
		case Lib.None[Parser.PType]:
			debug_low_level(Lib.MkLazy(func() string { return "Term not in context, is it defined?" }))
			switch oty := defined_type.(type) {
			case Lib.Some[Parser.PTypeFun]:
				debug_low_level(Lib.MkLazy(func() string {
					return fmt.Sprintf("%s has defined type %s", lookupName, oty.Val.ToString())
				}))
				tys = append(tys, Lib.MkPair(term, Parser.PType(oty.Val)))
				typed = true
			}
		}

		if !typed {
			debug_low_level(Lib.MkLazy(func() string { return "Term is not a defined term, assigning default type" }))
			tys = append(tys, Lib.MkPair(term, defaultType))
		}

	}
	return tys
}

func lookupInContext(con Context, name string) Lib.Option[Parser.PType] {
	for i := len(con) - 1; i >= 0; i-- {
		if con[i].Fst == name {
			return Lib.MkSome(con[i].Snd)
		}
	}
	return Lib.MkNone[Parser.PType]()
}

func isTyConstr(pty Parser.PType) bool {
	switch ty := pty.(type) {
	case Parser.PTypeFun:
		return ty.Symbol() == "$tType"
	}
	return false
}

func splitTypes(
	tys []Lib.Pair[Parser.PTerm, Parser.PType],
) (Lib.List[Parser.PType], Lib.List[Parser.PTerm]) {
	actualTys := Lib.NewList[Parser.PType]()
	others := Lib.NewList[Parser.PTerm]()
	for _, ty := range tys {
		if isTyConstr(ty.Snd) {
			actualTys.Append(parserTermToType(ty.Fst))
		} else {
			others.Append(ty.Fst)
		}
	}
	return actualTys, others
}

func parserTermToType(pterm Parser.PTerm) Parser.PType {
	switch term := pterm.(type) {
	case Parser.PVar:
		return Parser.MkPTypeVar(term.Name())
	case Parser.PFun:
		convertedArgs := Lib.ListMap(Lib.MkListV(term.Args()...), parserTermToType)
		atomicArgs := []Parser.PAtomicType{}
		for _, arg := range convertedArgs.GetSlice() {
			if realArg, ok := arg.(Parser.PAtomicType); ok {
				atomicArgs = append(atomicArgs, realArg)
			} else {
				Glob.Anomaly(
					elab_label,
					fmt.Sprintf(
						"Atomic type expected, got %s instead",
						arg.ToString(),
					),
				)
			}
		}
		return Parser.MkPTypeFun(term.Symbol(), atomicArgs)
	}
	Glob.Anomaly(
		elab_label,
		fmt.Sprintf(
			"parserTermToType: impossible case reached with %s",
			pterm.ToString(),
		))
	return nil
}

func pretypeVars(vars []Lib.Pair[string, Parser.PAtomicType]) Lib.List[AST.TypedVar] {
	res := Lib.MkList[AST.TypedVar](len(vars))
	for i, v := range vars {
		ty := elaborateType(v.Snd.(Parser.PType), v.Snd.(Parser.PType), false)
		res.Upd(i, AST.MakerTypedVar(v.Fst, ty))
	}
	return res
}

func instantiateType(ty Parser.PType, lookupName string, args []Parser.PTerm) Parser.PType {
	switch nty := ty.(type) {
	case Parser.PTypeVar, Parser.PTypeFun:
		if len(args) > 0 {
			Glob.Fatal(
				elab_label,
				fmt.Sprintf("Expected constant, got %s which is a function", lookupName),
			)
		}

		return nty

	case Parser.PTypeBin:
		if nty.Operator() != Parser.PTypeMap {
			Glob.Fatal(
				elab_label,
				fmt.Sprintf("Expected map type, got %s", nty.ToString()),
			)
		}

		return nty.Right()

	case Parser.PTypeQuant:
		type_args := map[string]Parser.PType{}
		for i, v := range nty.Vars() {
			type_args[v.Fst] = parserTermToType(args[i])
		}
		return instantiateRec(nty.Ty(), type_args)
	}
	Glob.Fatal(
		elab_label,
		fmt.Sprintf("Expected functional type, got %s", ty.ToString()),
	)
	return ty
}

func instantiateRec(ty Parser.PType, instance map[string]Parser.PType) Parser.PType {
	switch nty := ty.(type) {
	case Parser.PTypeVar:
		if val, ok := instance[nty.Name()]; ok {
			return val
		}
		Glob.Fatal(
			elab_label,
			fmt.Sprintf("Type variable %s not found in the instance", ty.ToString()),
		)
		return ty

	case Parser.PTypeFun:
		args := []Parser.PAtomicType{}
		for _, arg := range nty.Args() {
			args = append(args, instantiateRec(arg.(Parser.PType), instance).(Parser.PAtomicType))
		}

		return Parser.MkPTypeFun(nty.Symbol(), args)

	case Parser.PTypeBin:
		new_left := instantiateRec(nty.Left(), instance)
		new_right := instantiateRec(nty.Right(), instance)
		switch nty.Operator() {
		case Parser.PTypeProd:
			return Parser.MkTypeProd(new_left, new_right)

		case Parser.PTypeMap:
			return new_right
		}
	}

	Glob.Anomaly(
		elab_label,
		fmt.Sprintf("Unexpected type on instantiation: %s", ty.ToString()),
	)
	return ty
}
