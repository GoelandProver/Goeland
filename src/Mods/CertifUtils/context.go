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
package CertifUtils

/**
 * This file provides a function that returns the context of a proof (the symbols appearing in it).
 **/

import (
	"github.com/GoelandProver/Goeland/AST"
	"github.com/GoelandProver/Goeland/Glob"
	"github.com/GoelandProver/Goeland/Lib"
	"github.com/GoelandProver/Goeland/Typing"
)

type OrderedConPair Lib.Pair[AST.Id, AST.Ty]

func (p OrderedConPair) Equals(oth any) bool {
	if op, is_op := oth.(OrderedConPair); is_op {
		return p.Fst.Equals(op.Fst) && p.Snd.Equals(op.Snd)
	}
	return false
}

func (p OrderedConPair) Less(oth any) bool {
	if op, is_op := oth.(OrderedConPair); is_op {
		return p.Fst.Less(op.Fst)
	}
	return false
}

func GetContextFromFormula(root AST.Form) Lib.List[Lib.Pair[AST.Id, AST.Ty]] {
	out_list := Lib.NewList[Lib.Pair[AST.Id, AST.Ty]]()
	for _, p := range getContextFromFormula(root).Elements().GetSlice() {
		out_list.Append(Lib.MkPair(p.Fst, p.Snd))
	}
	return out_list
}

func getContextFromFormula(root AST.Form) Lib.Set[OrderedConPair] {
	aux := func(children Lib.List[AST.Form]) Lib.Set[OrderedConPair] {
		res := Lib.EmptySet[OrderedConPair]()
		for _, child := range children.GetSlice() {
			res = res.Union(getContextFromFormula(child))
		}
		return res
	}

	switch nf := root.(type) {
	case AST.Top, AST.Bot:
		return Lib.EmptySet[OrderedConPair]()
	case AST.All, AST.Ex, AST.And, AST.Or, AST.Imp, AST.Equ, AST.Not:
		return aux(root.GetChildFormulas())
	case AST.Pred:
		res := Lib.EmptySet[OrderedConPair]()
		if !nf.GetID().Equals(AST.Id_eq) {
			oty := Typing.QueryGlobalEnv(nf.GetID().GetName())
			var ty AST.Ty
			switch rty := oty.(type) {
			case Lib.Some[AST.Ty]:
				ty = rty.Val
			case Lib.None[AST.Ty]:
				ty = AST.MkDefaultPredType(nf.GetArgs().Len())
			}

			res = res.Add(OrderedConPair(Lib.MkPair(nf.GetID(), ty)))
		}
		for _, term := range nf.GetArgs().GetSlice() {
			res = res.Union(getContextFromTerm(term))
		}
		return res
	}
	Glob.Anomaly("CertifUtils", "Reached an impossible case")
	return Lib.EmptySet[OrderedConPair]()
}

func getContextFromTerm(trm AST.Term) Lib.Set[OrderedConPair] {
	fun, isFun := trm.(AST.Fun)
	if !isFun {
		return Lib.EmptySet[OrderedConPair]()
	}

	oty := Typing.QueryGlobalEnv(fun.GetName())
	var ty AST.Ty

	switch rty := oty.(type) {
	case Lib.Some[AST.Ty]:
		ty = rty.Val
	case Lib.None[AST.Ty]:
		ty = AST.MkDefaultFunctionType(fun.GetArgs().Len())
	}

	res := Lib.Singleton(OrderedConPair(Lib.MkPair(fun.GetID(), ty)))
	for _, term := range fun.GetArgs().GetSlice() {
		res = res.Union(getContextFromTerm(term))
	}

	return res
}
