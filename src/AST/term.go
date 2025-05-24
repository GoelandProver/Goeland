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
* This file contains functions and types which describe the term's data structure
**/

package AST

import (
	"github.com/GoelandProver/Goeland/Glob"
	"github.com/GoelandProver/Goeland/Lib"
)

/* Term */
type Term interface {
	MappableString
	Lib.Copyable[Term]
	GetIndex() int
	GetName() string
	IsMeta() bool
	IsFun() bool
	ToMeta() Meta
	GetMetas() *MetaList
	GetSubTerms() *TermList
	ReplaceSubTermBy(original_term, new_term Term) Term
}

type TypedTerm interface {
	GetTypeHint() TypeScheme
	GetTypeApp() TypeApp
}

/*** Makers ***/
func MakeId(i int, s string) Id {
	fms := &MappedString{}
	id := Id{fms, i, s}
	fms.MappableString = &id
	return id
}

func MakeQuotedId(i int, s string) Id {
	fms := &MappedString{}
	id := Id{fms, i, "" + s + "'"}
	fms.MappableString = &id
	return id
}

func MakeVar(i int, s string, t ...TypeApp) Var {
	fms := &MappedString{}
	newVar := Var{fms, i, s, getType(t)}
	fms.MappableString = &newVar
	return newVar
}

func MakeMeta(index, occurence int, s string, f int, t ...TypeApp) Meta {
	fms := &MappedString{}
	meta := Meta{fms, index, occurence, s, f, getType(t)}
	fms.MappableString = &meta
	return meta
}

func MakeFun(p Id, args *TermList, typeVars []TypeApp, t TypeScheme) Fun {
	return *NewFun(p, args, typeVars, t)
}

func NewFun(p Id, args *TermList, typeVars []TypeApp, t TypeScheme) *Fun {
	fms := &MappedString{}
	fun := &Fun{fms, p, args, typeVars, t}
	fms.MappableString = fun
	return fun
}

/*** Functions ***/

func TypeAppArrToTerm(typeApps []TypeApp) *TermList {
	terms := NewTermList()

	for _, typeApp := range typeApps {
		terms.Append(TypeAppToTerm(typeApp))
	}

	return terms
}

/* Creates a Term from a TypeApp to unify it properly */
func TypeAppToTerm(typeApp TypeApp) Term {
	var term Term
	switch nt := typeApp.(type) {
	case TypeVar:
		if nt.IsMeta() {
			term = typeVarToMeta(nt)
		} else {
			Glob.PrintError("TERM", "A TypeVar should be only converted to terms if it has been instantiated.")
			term = nil
		}
	case TypeHint:
		term = MakerFun(MakerId(nt.ToString()), NewTermList(), []TypeApp{}, MkTypeHint("$tType"))
	case TypeCross:
		args := NewTermList()

		for _, type_ := range nt.GetAllUnderlyingTypes() {
			args.Append(TypeAppToTerm(type_))
		}

		term = MakeFun(MakerId("$$tCross"), args, []TypeApp{}, MkTypeHint("$tType"))
	case ParameterizedType:
		args := NewTermList()

		for _, type_ := range nt.GetParameters() {
			args.Append(TypeAppToTerm(type_))
		}

		term = MakeFun(MakerId(nt.ToString()), args, []TypeApp{}, MkTypeHint("$tType"))
	}
	return term
}

func typeVarToMeta(typeVar TypeVar) Meta {
	var meta Meta
	index, formula, occurence := typeVar.MetaInfos()
	if !typeVar.Instantiated() {
		meta = MakerMeta(typeVar.ToString(), formula, MkTypeHint("$tType"))
		typeVar.Instantiate(meta.index)
	} else {
		meta = MakeMeta(index, occurence, typeVar.ToString(), formula, MkTypeHint("$tType"))
	}
	return meta
}

func replaceTermListTypesByMeta(tl *TermList, varList []TypeVar, index int) *TermList {
	res := NewTermList()

	for _, term := range tl.Slice() {
		if Glob.Is[Fun](term) {
			t := Glob.To[Fun](term)
			res.Append(MakeFun(t.GetID(), replaceTermListTypesByMeta(t.GetArgs(), varList, index), instanciateTypeAppList(t.GetTypeVars(), varList, index), t.GetTypeHint()))
		} else {
			res.Append(term)
		}
	}

	return res
}
