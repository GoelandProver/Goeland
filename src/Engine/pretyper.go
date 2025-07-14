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
		lookupName := ""
		switch t := term.(type) {
		case Parser.PFun:
			lookupName = t.Symbol()
		case Parser.PVar:
			lookupName = t.Name()
		}

		typed := false

		switch ty := lookupInContext(con, lookupName).(type) {
		case Lib.Some[Parser.PType]:
			tys = append(tys, Lib.MkPair(term, ty.Val))
			typed = true
		}

		if !typed {
			tys = append(tys, Lib.MkPair(term, defaultType))
		}
	}
	return tys
}

func lookupInContext(con Context, name string) Lib.Option[Parser.PType] {
	for _, p := range con {
		if p.Fst == name {
			return Lib.MkSome(p.Snd)
		}
	}
	return Lib.MkNone[Parser.PType]()
}

func isTType(pty Parser.PType) bool {
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
		if isTType(ty.Snd) {
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

func splitTypeVars(
	tys []Lib.Pair[string, Parser.PAtomicType],
) ([]AST.TypeVar, []AST.Var) {
	tyvars := []AST.TypeVar{}
	others := []AST.Var{}
	for _, ty := range tys {
		if isTType(ty.Snd.(Parser.PType)) {
			tyvars = append(tyvars, AST.MkTypeVar(ty.Fst))
		} else {
			varTy := ty.Snd.(Parser.PType)
			others = append(
				others,
				AST.MakerVar(ty.Fst, elaborateType(varTy, varTy).(AST.TypeApp)),
			)
		}
	}
	return tyvars, others
}
