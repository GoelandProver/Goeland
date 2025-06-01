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

package Sko

import (
	"fmt"
	"sync"

	"github.com/GoelandProver/Goeland/AST"
	"github.com/GoelandProver/Goeland/Glob"
	"github.com/GoelandProver/Goeland/Lib"
)

/** This file provides the preinner Skolemization method.
 *
 * See the [skolemisation] file of the package [Core] for more information.
**/

type PreInnerSkolemization struct {
	existingSymbols Lib.Set[AST.Id]
	linkedSymbols   Lib.List[Glob.Pair[AST.Form, AST.Id]]
	mu              sync.Mutex
}

func MkPreInnerSkolemization() PreInnerSkolemization {
	return PreInnerSkolemization{
		existingSymbols: Lib.EmptySet[AST.Id](),
		linkedSymbols:   Lib.NewList[Glob.Pair[AST.Form, AST.Id]](),
		mu:              sync.Mutex{},
	}
}

func (sko PreInnerSkolemization) Skolemize(
	delta, form AST.Form,
	x AST.Var,
	_ Lib.Set[AST.Meta],
) (Skolemization, AST.Form) {
	realDelta := alphaConvert(delta, 0, make(map[int]AST.Var))

	var symbol AST.Id
	sko.mu.Lock()
	if val, ok := sko.linkedSymbols.Find(
		func(p Glob.Pair[AST.Form, AST.Id]) bool { return p.Fst.Equals(realDelta) },
		Glob.MakePair(Glob.To[AST.Form](AST.MakerBot()), AST.MakeId(-1, "")),
	); ok {
		symbol = val.Snd
	} else {
		symbol = genFreshSymbol(&sko.existingSymbols, sko.mu, x)
		sko.linkedSymbols.Append(Glob.MakePair(realDelta, symbol))
	}
	sko.mu.Unlock()

	internalMetas := form.GetMetas().Elements()

	skolemFunc := AST.MakerFun(
		symbol,
		Lib.ListMap(internalMetas, Glob.To[AST.Term]),
		[]AST.TypeApp{},
		mkSkoFuncType(internalMetas, x.GetTypeApp()),
	)

	skolemizedForm, _ := form.ReplaceTermByTerm(
		Glob.To[AST.Term](x),
		Glob.To[AST.Term](skolemFunc),
	)

	return sko, skolemizedForm
}

func fresh(k int) string {
	return fmt.Sprintf("x@%d", k)
}

func alphaConvert(
	form AST.Form,
	k int,
	substitution map[int]AST.Var,
) AST.Form {
	switch f := form.(type) {
	case AST.Top, AST.Bot:
		return form
	case AST.Pred:
		mappedTerms := Lib.ListMap(f.GetArgs(),
			func(t AST.Term) AST.Term {
				return alphaConvertTerm(t, substitution)
			})
		return AST.MakePred(
			f.GetIndex(),
			f.GetID(),
			mappedTerms,
			f.GetTypeVars(),
			f.GetType(),
		)
	case AST.Not:
		return AST.MakeNot(
			f.GetIndex(),
			alphaConvert(f.GetForm(), k, substitution),
		)
	case AST.Imp:
		return AST.MakeImp(
			f.GetIndex(),
			alphaConvert(f.GetF1(), k, substitution),
			alphaConvert(f.GetF2(), k, substitution),
		)
	case AST.Equ:
		return AST.MakeEqu(
			f.GetIndex(),
			alphaConvert(f.GetF1(), k, substitution),
			alphaConvert(f.GetF2(), k, substitution),
		)
	case AST.And:
		return AST.MakeAnd(
			f.GetIndex(),
			AST.NewFormList(
				Glob.MapTo(
					f.FormList.Slice(),
					func(_ int, f AST.Form) AST.Form {
						return alphaConvert(f, k, substitution)
					})...),
		)
	case AST.Or:
		return AST.MakeOr(
			f.GetIndex(),
			AST.NewFormList(Glob.MapTo(
				f.FormList.Slice(),
				func(_ int, f AST.Form) AST.Form {
					return alphaConvert(f, k, substitution)
				})...),
		)
	case AST.All:
		k, substitution, vl := makeConvertedVarList(k, substitution, f.GetVarList())
		return AST.MakeAll(f.GetIndex(), vl, alphaConvert(f.GetForm(), k, substitution))
	case AST.Ex:
		k, substitution, vl := makeConvertedVarList(k, substitution, f.GetVarList())
		return AST.MakeEx(f.GetIndex(), vl, alphaConvert(f.GetForm(), k, substitution))
	}
	return form
}

func makeConvertedVarList(
	k int,
	substitution map[int]AST.Var,
	vl []AST.Var,
) (int, map[int]AST.Var, []AST.Var) {
	newVarList := []AST.Var{}
	for i, v := range vl {
		nv := AST.MakeVar(k+i, fresh(k+i), v.GetTypeApp())
		newVarList = append(newVarList, nv)
		substitution[v.GetIndex()] = nv
	}
	return k + len(vl), substitution, newVarList
}

func alphaConvertTerm(t AST.Term, substitution map[int]AST.Var) AST.Term {
	switch nt := t.(type) {
	case AST.Var:
		if val, ok := substitution[nt.GetIndex()]; ok {
			return val
		} else {
			return nt
		}
	case AST.Fun:
		mappedTerms := Lib.ListMap(nt.GetArgs(),
			func(trm AST.Term) AST.Term {
				return alphaConvertTerm(trm, substitution)
			})
		return AST.MakerFun(
			nt.GetID(),
			mappedTerms,
			nt.GetTypeVars(),
			nt.GetTypeHint(),
		)
	}
	return t
}
