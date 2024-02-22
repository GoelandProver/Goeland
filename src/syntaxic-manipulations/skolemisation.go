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
package syntaxicmanipulations

import (
	"fmt"
	"sync"

	"github.com/GoelandProver/Goeland/global"
	typing "github.com/GoelandProver/Goeland/polymorphism/typing"
	btps "github.com/GoelandProver/Goeland/types/basic-types"
)

type skoArgs struct {
	sourceFormula btps.Form
	formula       btps.Form
	terms         *btps.TermList
	sourceVar     btps.Var
	symbol        btps.Id
}

type class struct {
	availableForms   []btps.Form
	availableSymbols []btps.Id
	mu               sync.Mutex
}

var symbolMaker class

/**
 * Skolemizes once the formula f.
 */
func Skolemize(fnt btps.FormAndTerms, branchMetas *btps.MetaList) btps.FormAndTerms {
	form := fnt.GetForm()
	terms := branchMetas.ToTermList()

	switch nf := form.(type) {
	// 1 - not(forall F1)
	case btps.Not:
		if tmp, ok := nf.GetForm().(btps.All); ok {
			res := realSkolemize(form, tmp.GetForm(), tmp.GetVarList()[0], terms)
			internalMetas := res.GetInternalMetas()
			if len(tmp.GetVarList()) > 1 {
				res = btps.MakerAll(tmp.GetVarList()[1:], res).SetInternalMetas(internalMetas)
			}
			fnt = btps.MakeFormAndTerm(btps.RefuteForm(res).SetInternalMetas(internalMetas), terms)
		}
	// 2 - exists F1
	case btps.Ex:
		res := realSkolemize(form, nf.GetForm(), nf.GetVarList()[0], terms)
		if len(nf.GetVarList()) > 1 {
			internalMetas := res.GetInternalMetas()
			res = btps.MakerEx(nf.GetVarList()[1:], res).SetInternalMetas(internalMetas)
		}
		fnt = btps.MakeFormAndTerm(res, terms)
	}

	return fnt
}

/**
 * Applies skolemization to a formula (ie: replaces existential quantified variables
 * by fresh skolem symbols).
 * delta : all the meta under and new function name
 * delta+ : only relevant meta : getmeta + meta replaced
 * delta++ : same function name (need classical skolem for meta)
 **/
func realSkolemize(sourceForm, fnt btps.Form, v btps.Var, terms *btps.TermList) btps.Form {
	// Replace each variable by the skolemized term.
	symbol := btps.MakerNewId(fmt.Sprintf("skolem_%s%v", v.GetName(), v.GetIndex()))
	fnt = applySelectedSkolemisation(skoArgs{sourceFormula: sourceForm, sourceVar: v, symbol: symbol, formula: fnt, terms: terms})
	return fnt
}

// Applies the right skolemisation depending on the mode Goeland is launched
func applySelectedSkolemisation(args skoArgs) btps.Form {
	if global.IsInnerSko() {
		return applyInnerSkolemisation(args)
	}
	if global.IsPreInnerSko() {
		return applyPreinnerSkolemisation(args)
	}
	return applyOuterSkolemisation(args)
}

// Default outer skolemisation: takes all the metavariables of the branch and pass it as arguments of the symbol skolem.
func applyOuterSkolemisation(args skoArgs) btps.Form {
	return substAndReturn(args, makeSkolemFunction(args))
}

// Inner skolemisation: takes all the metavariable which occur in a formula as arguments of the skolem term.
func applyInnerSkolemisation(args skoArgs) btps.Form {
	args.terms = args.formula.GetInternalMetas().ToTermList()
	return substAndReturn(args, makeSkolemFunction(args))
}

func applyPreinnerSkolemisation(args skoArgs) btps.Form {
	args.symbol = symbolMaker.make(args.sourceFormula, args.sourceVar)
	return applyInnerSkolemisation(args)
}

// Makes a function with the given arguments and symbol. Its type is the type of the variable.
func makeSkolemFunction(args skoArgs) btps.Term {
	return btps.MakerFun(args.symbol, args.terms, typing.EmptyTAArray(), args.sourceVar.GetTypeHint())
}

func substAndReturn(args skoArgs, sko btps.Term) btps.Form {
	f, _ := args.formula.ReplaceVarByTerm(args.sourceVar, sko)
	return f
}

func (c *class) make(form btps.Form, source btps.Var) btps.Id {
	form = alphaConvert(form, 0, make(map[btps.Var]btps.Var))
	c.mu.Lock()
	symbol := c.getSymbol(form, btps.MakerNewId(fmt.Sprintf("skolem_%s%v", source.GetName(), source.GetIndex())))
	c.mu.Unlock()
	return symbol
}

func (c *class) getSymbol(form btps.Form, defaultId btps.Id) btps.Id {
	index := -1
	for i, f := range c.availableForms {
		if f.Equals(form) {
			index = i
			break
		}
	}

	if index == -1 {
		index = len(c.availableForms)
		c.availableForms = append(c.availableForms, form)
		c.availableSymbols = append(c.availableSymbols, defaultId)
	}

	return c.availableSymbols[index]
}

// Alpha-conversion of formulas & terms

func fresh(k int) string {
	return fmt.Sprintf("x@%d", k)
}

func alphaConvert(form btps.Form, k int, substitution map[btps.Var]btps.Var) btps.Form {
	switch f := form.(type) {
	case btps.Top, btps.Bot:
		return form
	case btps.Pred:
		mappedTerms := global.MapTo(f.GetArgs().Slice(), func(_ int, t btps.Term) btps.Term { return alphaConvertTerm(t, substitution) })
		return btps.MakePred(f.GetIndex(), f.GetID(), btps.NewTermList(mappedTerms...), f.GetTypeVars(), f.GetType())
	case btps.Not:
		return btps.MakeNot(f.GetIndex(), alphaConvert(f.GetForm(), k, substitution))
	case btps.Imp:
		return btps.MakeImp(f.GetIndex(), alphaConvert(f.GetF1(), k, substitution), alphaConvert(f.GetF2(), k, substitution))
	case btps.Equ:
		return btps.MakeEqu(f.GetIndex(), alphaConvert(f.GetF1(), k, substitution), alphaConvert(f.GetF2(), k, substitution))
	case btps.And:
		return btps.MakeAnd(f.GetIndex(), global.MapTo(f.FormList, func(_ int, f btps.Form) btps.Form { return alphaConvert(f, k, substitution) }))
	case btps.Or:
		return btps.MakeOr(f.GetIndex(), global.MapTo(f.FormList, func(_ int, f btps.Form) btps.Form { return alphaConvert(f, k, substitution) }))
	case btps.All:
		k, substitution, vl := makeConvertedVarList(k, substitution, f.GetVarList())
		return btps.MakeAll(f.GetIndex(), vl, alphaConvert(f.GetForm(), k, substitution))
	case btps.Ex:
		k, substitution, vl := makeConvertedVarList(k, substitution, f.GetVarList())
		return btps.MakeEx(f.GetIndex(), vl, alphaConvert(f.GetForm(), k, substitution))
	}
	return form
}

func makeConvertedVarList(k int, substitution map[btps.Var]btps.Var, vl []btps.Var) (int, map[btps.Var]btps.Var, []btps.Var) {
	newVarList := []btps.Var{}
	for i, v := range vl {
		nv := btps.MakeVar(k+i, fresh(k+i), v.GetTypeApp())
		newVarList = append(newVarList, nv)
		substitution[v] = nv
	}
	return k + len(vl), substitution, newVarList
}

func alphaConvertTerm(t btps.Term, substitution map[btps.Var]btps.Var) btps.Term {
	switch nt := t.(type) {
	case btps.Var:
		if val, ok := substitution[nt]; ok {
			return val
		} else {
			return nt
		}
	case btps.Fun:
		mappedTerms := global.MapTo(nt.GetArgs().Slice(), func(_ int, trm btps.Term) btps.Term { return alphaConvertTerm(trm, substitution) })
		return btps.MakeFun(nt.GetID(), btps.NewTermList(mappedTerms...), nt.GetTypeVars(), nt.GetTypeHint())
	}
	return t
}
