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

/***********/
/* term.go */
/***********/

/**
* This file contains functions and types which describe the term's data structure
**/

package basictypes

import (
	"fmt"

	. "github.com/GoelandProver/Goeland/global"
	typing "github.com/GoelandProver/Goeland/polymorphism/typing"
)

/* Term */
type Term interface {
	GetIndex() int
	GetName() string
	ToMappedString(MapString, bool) string
	ToString() string
	ToStringWithSuffixMeta(string) string
	Copy() Term
	Equals(Term) bool
	IsMeta() bool
	IsFun() bool
	ToMeta() Meta
	GetMetas() MetaList
	GetSubTerms() TermList
	ReplaceSubTermBy(original_term, new_term Term) Term
}

type TypedTerm interface {
	GetTypeHint() typing.TypeScheme
	GetTypeApp() typing.TypeApp
}

/*** Makers ***/

func MakeId(i int, s string) Id                        { return Id{i, s} }
func MakeVar(i int, s string, t ...typing.TypeApp) Var { return Var{i, s, getType(t)} }
func MakeMeta(index, occurence int, s string, f int, t ...typing.TypeApp) Meta {
	return Meta{index, occurence, s, f, getType(t)}
}

func MakeFun(p Id, args TermList, typeVars []typing.TypeApp, t ...typing.TypeScheme) Fun {
	if len(t) == 1 {
		return Fun{p, args, typeVars, t[0]}
	} else {
		return Fun{p, args, typeVars, typing.DefaultFunType(len(args))}
	}
}

/*** Functions ***/

func TypeAppArrToTerm(typeApp []typing.TypeApp) TermList {
	terms := MakeEmptyTermList()
	for _, type_ := range typeApp {
		terms = append(terms, TypeAppToTerm(type_))
	}
	return terms
}

/* Creates a Term from a TypeApp to unify it properly */
func TypeAppToTerm(typeApp typing.TypeApp) Term {
	var term Term
	switch nt := typeApp.(type) {
	case typing.TypeVar:
		if nt.IsMeta() {
			term = typeVarToMeta(nt)
		} else {
			fmt.Println("[ERROR] A TypeVar should be only converted to terms if it has been instantiated.")
			term = nil
		}
	case typing.TypeHint:
		term = MakerFun(MakerId(nt.ToString()), MakeEmptyTermList(), []typing.TypeApp{}, typing.MkTypeHint("$tType"))
	case typing.TypeCross:
		args := MakeEmptyTermList()
		for _, type_ := range nt.GetAllUnderlyingTypes() {
			args = append(args, TypeAppToTerm(type_))
		}
		term = MakeFun(MakerId("$$tCross"), args, []typing.TypeApp{}, typing.MkTypeHint("$tType"))
	case typing.ParameterizedType:
		args := MakeEmptyTermList()
		for _, type_ := range nt.GetParameters() {
			args = append(args, TypeAppToTerm(type_))
		}
		term = MakeFun(MakerId(nt.ToString()), args, []typing.TypeApp{}, typing.MkTypeHint("$tType"))
	}
	return term
}

func typeVarToMeta(typeVar typing.TypeVar) Meta {
	var meta Meta
	index, formula, occurence := typeVar.MetaInfos()
	if !typeVar.Instantiated() {
		meta = MakerMeta(typeVar.ToString(), formula, typing.MkTypeHint("$tType"))
		typeVar.Instantiate(meta.index)
	} else {
		meta = MakeMeta(index, occurence, typeVar.ToString(), formula, typing.MkTypeHint("$tType"))
	}
	return meta
}

func replaceTermListTypesByMeta(tl TermList, varList []typing.TypeVar, index int) TermList {
	terms := MakeEmptyTermList()
	for _, term := range tl {
		if Is[Fun](term) {
			t := To[Fun](term)
			terms = append(terms, MakeFun(t.GetID(), replaceTermListTypesByMeta(t.GetArgs(), varList, index), instanciateTypeAppList(t.GetTypeVars(), varList, index), t.GetTypeHint()))
		} else {
			terms = append(terms, term)
		}
	}
	return terms
}
