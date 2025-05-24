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

package Typing

import (
	"github.com/GoelandProver/Goeland/AST"
	"github.com/GoelandProver/Goeland/Glob"
	"github.com/GoelandProver/Goeland/Lib"
)

/**
 * This file implements a second pass on the given formula to:
 *	- Type the variables
 *	- Give a type to the polymorph predicates / functions
 **/

func SecondPass(form AST.Form) AST.Form {
	after := secondPassAux(form, []AST.Var{}, []AST.TypeApp{})
	return after
}

func secondPassAux(form AST.Form, vars []AST.Var, types []AST.TypeApp) AST.Form {
	switch f := form.(type) {
	case AST.Pred:
		terms, typeApps := nArySecondPassTerms(f.GetArgs(), vars, types)

		// Special case: defined predicate. We need to infer types.
		if f.GetID().Equals(AST.Id_eq) {
			return AST.MakePred(
				f.GetIndex(),
				f.GetID(),
				terms,
				[]AST.TypeApp{
					AST.GetOutType(
						Glob.To[AST.TypedTerm, AST.Term](terms.At(0)).GetTypeHint(),
					)})
		}

		// Real case: classical predicate, it should be given
		return AST.MakePred(f.GetIndex(), f.GetID(), terms, typeApps)
	case AST.And:
		return AST.MakeAnd(f.GetIndex(), nArySecondPass(f.FormList, vars, types))
	case AST.Or:
		return AST.MakeOr(f.GetIndex(), nArySecondPass(f.FormList, vars, types))
	case AST.Imp:
		return AST.MakeImp(f.GetIndex(), secondPassAux(f.GetF1(), vars, types), secondPassAux(f.GetF2(), vars, types))
	case AST.Equ:
		return AST.MakeEqu(f.GetIndex(), secondPassAux(f.GetF1(), vars, types), secondPassAux(f.GetF2(), vars, types))
	case AST.Not:
		return AST.MakeNot(f.GetIndex(), secondPassAux(f.GetForm(), vars, types))
	case AST.All:
		return AST.MakeAll(f.GetIndex(), f.GetVarList(), secondPassAux(f.GetForm(), append(vars, f.GetVarList()...), types))
	case AST.Ex:
		return AST.MakeEx(f.GetIndex(), f.GetVarList(), secondPassAux(f.GetForm(), append(vars, f.GetVarList()...), types))
	case AST.AllType:
		return AST.MakeAllType(f.GetIndex(), f.GetVarList(), secondPassAux(f.GetForm(), vars, append(types, Glob.ConvertList[AST.TypeVar, AST.TypeApp](f.GetVarList())...)))
	}
	return form
}

func secondPassTerm(term AST.Term, vars []AST.Var, types []AST.TypeApp) (AST.Term, []AST.TypeApp) {
	switch t := term.(type) {
	case AST.Fun:
		// 3 cases:
		//	- It's a TypeHint
		if AST.IsPrimitive(t.GetName()) {
			return nil, []AST.TypeApp{AST.MkTypeHint(t.GetName())}
		}

		terms, v := nArySecondPassTerms(t.GetArgs(), vars, types)

		// 	- It's a parameterized type
		if AST.IsParameterizedType(t.GetName()) {
			return nil, []AST.TypeApp{AST.MkParameterizedType(t.GetName(), v)}
		}

		//	- It's a function
		outType := func(term AST.Term) AST.TypeApp {
			return AST.GetOutType(Glob.To[AST.TypedTerm](term).GetTypeHint())
		}

		termsType := []AST.TypeApp{}
		for _, tm := range terms.GetSlice() {
			termsType = append(termsType, outType(tm))
		}

		return AST.MakeFun(t.GetID(), terms, v, getTypeOfFunction(t.GetName(), v, termsType)), []AST.TypeApp{}

	case AST.Var:
		for _, v := range types {
			if v.ToString() == t.GetName() {
				return nil, []AST.TypeApp{v}
			}
		}

		for _, v := range vars {
			if v.GetName() == t.GetName() && v.GetIndex() == t.GetIndex() {
				return v, []AST.TypeApp{}
			}
		}
	}
	return term, types
}

func nArySecondPass(forms *AST.FormList, vars []AST.Var, types []AST.TypeApp) *AST.FormList {
	res := AST.NewFormList()

	for _, form := range forms.Slice() {
		res.Append(secondPassAux(form, vars, types))
	}

	return res
}

func nArySecondPassTerms(
	terms Lib.List[AST.Term],
	vars []AST.Var,
	types []AST.TypeApp,
) (Lib.List[AST.Term], []AST.TypeApp) {
	resTerms, resVars := Lib.MkList[AST.Term](0), []AST.TypeApp{}

	for _, term := range terms.GetSlice() {
		t, v := secondPassTerm(term, vars, types)

		if t != nil {
			resTerms.Append(t)
		}

		resVars = append(resVars, v...)
	}

	return resTerms, resVars
}

func getTypeOfFunction(name string, vars []AST.TypeApp, termsType []AST.TypeApp) AST.TypeScheme {
	// Build TypeCross from termsType
	var tt []AST.TypeApp
	if len(termsType) >= 2 {
		tc := AST.MkTypeCross(termsType[0], termsType[1])
		for i := 2; i < len(termsType); i += 1 {
			tc = AST.MkTypeCross(tc, termsType[i])
		}
		tt = []AST.TypeApp{tc}
	} else {
		tt = termsType
	}

	simpleTypeScheme := AST.GetType(name, tt...)
	if simpleTypeScheme != nil {
		if Glob.Is[AST.QuantifiedType](simpleTypeScheme) {
			return Glob.To[AST.QuantifiedType](simpleTypeScheme).Instanciate(vars)
		}
		return simpleTypeScheme
	}

	typeScheme := AST.GetPolymorphicType(name, len(vars), len(termsType))

	if typeScheme != nil {
		// Instantiate type scheme with actual types
		typeScheme = Glob.To[AST.QuantifiedType](typeScheme).Instanciate(vars)
	} else {
		// As only distinct objects are here, it should work with only this.
		// I leave the other condition if others weirderies are found later.
		if len(termsType) == 0 {
			AST.SaveConstant(name, Glob.To[AST.TypeApp](AST.DefaultFunType(0)))
		}
		/*
			else {
				type_ := DefaultFunType(len(termsType))
				if len(termsType) == 1 {
					SaveTypeScheme(name, GetInputType(type_)[0], GetOutType(type_))
				} else {
					SaveTypeScheme(name, AST.MkTypeCross(GetInputType(type_)...), GetOutType(type_))
				}
			}
		*/
		typeScheme = AST.DefaultFunType(0)

	}

	return typeScheme
}
