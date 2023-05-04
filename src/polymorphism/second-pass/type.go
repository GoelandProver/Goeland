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

/*************/
/*  type.go  */
/*************/

package polypass

import (
	. "github.com/GoelandProver/Goeland/global"
	typing "github.com/GoelandProver/Goeland/polymorphism/typing"
	btypes "github.com/GoelandProver/Goeland/types/basic-types"
)

/**
 * This file implements a second pass on the given formula to:
 *	- Type the variables
 *	- Give a type to the polymorph predicates / functions
 **/

func SecondPass(form btypes.Form) btypes.Form {
	after := secondPassAux(form, []btypes.Var{}, []typing.TypeApp{})
	return after
}

func secondPassAux(form btypes.Form, vars []btypes.Var, types []typing.TypeApp) btypes.Form {
	switch f := form.(type) {
	case btypes.Pred:
		terms, typeApps := nArySecondPassTerms(f.GetArgs(), vars, types)

		// Special case: defined predicate. We need to infer types.
		if f.GetID().Equals(btypes.Id_eq) {
			return btypes.MakePred(f.GetIndex(), f.GetID(), terms, []typing.TypeApp{typing.GetOutType(To[btypes.TypedTerm](terms[0]).GetTypeHint())})
		}

		// Real case: classical predicate, it should be given
		return btypes.MakePred(f.GetIndex(), f.GetID(), terms, typeApps)
	case *btypes.And:
		return btypes.MakeAnd(f.GetIndex(), nArySecondPass(f.FormList, vars, types))
	case *btypes.Or:
		return btypes.MakeOr(f.GetIndex(), nArySecondPass(f.GetForms(), vars, types))
	case btypes.Imp:
		return btypes.MakeImp(f.GetIndex(), secondPassAux(f.GetF1(), vars, types), secondPassAux(f.GetF2(), vars, types))
	case btypes.Equ:
		return btypes.MakeEqu(f.GetIndex(), secondPassAux(f.GetF1(), vars, types), secondPassAux(f.GetF2(), vars, types))
	case btypes.Not:
		return btypes.MakeNot(f.GetIndex(), secondPassAux(f.GetForm(), vars, types))
	case btypes.All:
		return btypes.MakeAll(f.GetIndex(), f.GetVarList(), secondPassAux(f.GetForm(), append(vars, f.GetVarList()...), types))
	case btypes.Ex:
		return btypes.MakeEx(f.GetIndex(), f.GetVarList(), secondPassAux(f.GetForm(), append(vars, f.GetVarList()...), types))
	case btypes.AllType:
		return btypes.MakeAllType(f.GetIndex(), f.GetVarList(), secondPassAux(f.GetForm(), vars, append(types, ConvertList[typing.TypeVar, typing.TypeApp](f.GetVarList())...)))
	}
	return form
}

func secondPassTerm(term btypes.Term, vars []btypes.Var, types []typing.TypeApp) (btypes.Term, []typing.TypeApp) {
	switch t := term.(type) {
	case btypes.Fun:
		// 3 cases:
		//	- It's a TypeHint
		if typing.IsPrimitive(t.GetName()) {
			return nil, []typing.TypeApp{typing.MkTypeHint(t.GetName())}
		}

		terms, v := nArySecondPassTerms(t.GetArgs(), vars, types)

		// 	- It's a parameterized type
		if typing.IsParameterizedType(t.GetName()) {
			return nil, []typing.TypeApp{typing.MkParameterizedType(t.GetName(), v)}
		}

		//	- It's a function
		outType := func(term btypes.Term) typing.TypeApp {
			return typing.GetOutType(To[btypes.TypedTerm](term).GetTypeHint())
		}

		termsType := []typing.TypeApp{}
		for _, tm := range terms {
			termsType = append(termsType, outType(tm))
		}

		return btypes.MakeFun(t.GetID(), terms, v, getTypeOfFunction(t.GetName(), v, termsType)), []typing.TypeApp{}

	case btypes.Var:
		for _, v := range types {
			if v.ToString() == t.GetName() {
				return nil, []typing.TypeApp{v}
			}
		}

		for _, v := range vars {
			if v.GetName() == t.GetName() && v.GetIndex() == t.GetIndex() {
				return v, []typing.TypeApp{}
			}
		}
	}
	return term, types
}

func nArySecondPass(forms []btypes.Form, vars []btypes.Var, types []typing.TypeApp) []btypes.Form {
	res := []btypes.Form{}
	for _, form := range forms {
		res = append(res, secondPassAux(form, vars, types))
	}
	return res
}

func nArySecondPassTerms(terms []btypes.Term, vars []btypes.Var, types []typing.TypeApp) ([]btypes.Term, []typing.TypeApp) {
	resTerms, resVars := []btypes.Term{}, []typing.TypeApp{}
	for _, term := range terms {
		t, v := secondPassTerm(term, vars, types)
		if t != nil {
			resTerms = append(resTerms, t)
		}
		resVars = append(resVars, v...)
	}
	return resTerms, resVars
}

func getTypeOfFunction(name string, vars []typing.TypeApp, termsType []typing.TypeApp) typing.TypeScheme {
	// Build TypeCross from termsType
	var tt []typing.TypeApp
	if len(termsType) >= 2 {
		tc := typing.MkTypeCross(termsType[0], termsType[1])
		for i := 2; i < len(termsType); i += 1 {
			tc = typing.MkTypeCross(tc, termsType[i])
		}
		tt = []typing.TypeApp{tc}
	} else {
		tt = termsType
	}

	simpleTypeScheme := typing.GetType(name, tt...)
	if simpleTypeScheme != nil {
		if Is[typing.QuantifiedType](simpleTypeScheme) {
			return To[typing.QuantifiedType](simpleTypeScheme).Instanciate(vars)
		}
		return simpleTypeScheme
	}

	typeScheme := typing.GetPolymorphicType(name, len(vars), len(termsType))

	if typeScheme != nil {
		// Instantiate type scheme with actual types
		typeScheme = To[typing.QuantifiedType](typeScheme).Instanciate(vars)
	} else {
		// As only distinct objects are here, it should work with only this.
		// I leave the other condition if others weirderies are found later.
		if len(termsType) == 0 {
			typing.SaveConstant(name, To[typing.TypeApp](typing.DefaultFunType(0)))
		}
		/*
			else {
				type_ := typing.DefaultFunType(len(termsType))
				if len(termsType) == 1 {
					typing.SaveTypeScheme(name, typing.GetInputType(type_)[0], typing.GetOutType(type_))
				} else {
					typing.SaveTypeScheme(name, typing.MkTypeCross(typing.GetInputType(type_)...), typing.GetOutType(type_))
				}
			}
		*/
		typeScheme = typing.DefaultFunType(0)

	}

	return typeScheme
}
