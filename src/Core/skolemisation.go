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
package Core

import (
	"fmt"
	"sync"

	"github.com/GoelandProver/Goeland/AST"
	"github.com/GoelandProver/Goeland/Glob"
	"github.com/GoelandProver/Goeland/Lib"
)

/** This file provides multiple ways to skolemize a formula.
 *
 * Currently implemented techniques:
 *
 *   - outer skolemization. Default technique: fresh symbol parameterized by
 *     all the metavariables of the branch.
 *
 *   - inner skolemization. Somewhat optimized technique: fresh symbol
 *     parameterized by the metavariables appearing _inside_ the formula to
 *     skolemize. Activated with the -inner option.
 *
 *   - pre-inner skolemization. This is the same mechanism as inner
 *     skolemization, except that we reuse the skolem symbol when skolemizing
 *     multiple times formulas in the same alpha-equivalence class. Activated
 *     using the -preinner option.
 *
 * We provide a generic [Skolemization] interface, which implements a single
 * function [skolemize] parameterized by (i) the formula to skolemize ∃x.δ(x),
 * (ii) the formula δ(x) where x should be replaced, (iii) the variable x itself
 * and (iv) the list of metavariables present inside a branch.
 *
 * If you wish to implement a new skolemization technique, you should follow
 * these steps:
 *
 *   1. Add a brief description of the technique in the list above.
 *   2. Create a file in the [Sko] folder with a structure that implements
 *      the [Skolemization] interface.
 *   3. Add a variable in this file refering to this structure.
 *   4. Add an option that updates the [selectedSkolemization] variable (via
 *      the function [SetSelectedSkolemization]).
 **/

type skoArgs struct {
	sourceFormula AST.Form
	formula       AST.Form
	terms         Lib.List[AST.Term]
	sourceVar     AST.Var
	symbol        AST.Id
}

type class struct {
	availableForms   *AST.FormList
	availableSymbols []AST.Id
	mu               sync.Mutex
}

var symbolMaker class = makeClass()

/** Constructor **/
func makeClass() class {
	var new_class class
	new_class.availableForms = AST.NewFormList()
	new_class.availableSymbols = []AST.Id{}
	new_class.mu = sync.Mutex{}
	return new_class
}

/**
 * Skolemizes once the formula f.
 */
func Skolemize(fnt FormAndTerms, branchMetas *AST.MetaList) FormAndTerms {
	form := fnt.GetForm()
	terms := branchMetas.ToTermList()

	switch nf := form.(type) {
	// 1 - not(forall F1)
	case AST.Not:
		if tmp, ok := nf.GetForm().(AST.All); ok {
			res := RealSkolemize(form, tmp.GetForm(), tmp.GetVarList()[0], terms)
			internalMetas := res.GetInternalMetas()
			if len(tmp.GetVarList()) > 1 {
				res = AST.MakerAll(tmp.GetVarList()[1:], res).SetInternalMetas(internalMetas)
			}
			fnt = MakeFormAndTerm(AST.RefuteForm(res).SetInternalMetas(internalMetas), terms)
		}
	// 2 - exists F1
	case AST.Ex:
		res := RealSkolemize(form, nf.GetForm(), nf.GetVarList()[0], terms)
		if len(nf.GetVarList()) > 1 {
			internalMetas := res.GetInternalMetas()
			res = AST.MakerEx(nf.GetVarList()[1:], res).SetInternalMetas(internalMetas)
		}
		fnt = MakeFormAndTerm(res, terms)
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
func RealSkolemize(sourceForm, fnt AST.Form, v AST.Var, terms Lib.List[AST.Term]) AST.Form {
	// Replace each variable by the skolemized term.
	symbol := AST.MakerNewId(fmt.Sprintf("skolem_%s%v", v.GetName(), v.GetIndex()))
	fnt = applySelectedSkolemisation(skoArgs{
		sourceFormula: sourceForm,
		sourceVar:     v,
		symbol:        symbol,
		formula:       fnt,
		terms:         terms,
	})
	return fnt
}

// Applies the right skolemisation depending on the mode Goeland is launched
func applySelectedSkolemisation(args skoArgs) AST.Form {
	if Glob.IsInnerSko() {
		return applyInnerSkolemisation(args)
	}
	if Glob.IsPreInnerSko() {
		return applyPreinnerSkolemisation(args)
	}
	return applyOuterSkolemisation(args)
}

// Default outer skolemisation: takes all the metavariables of the branch and pass it as arguments of the symbol skolem.
func applyOuterSkolemisation(args skoArgs) AST.Form {
	return substAndReturn(args, makeSkolemFunction(args))
}

// Inner skolemisation: takes all the metavariable which occur in a formula as arguments of the skolem term.
func applyInnerSkolemisation(args skoArgs) AST.Form {
	args.terms = args.formula.GetInternalMetas().ToTermList()
	return substAndReturn(args, makeSkolemFunction(args))
}

func applyPreinnerSkolemisation(args skoArgs) AST.Form {
	args.symbol = symbolMaker.make(args.sourceFormula, args.sourceVar)
	return applyInnerSkolemisation(args)
}

// Makes a function with the given arguments and symbol. Its type is the type of the variable.
func makeSkolemFunction(args skoArgs) AST.Term {
	return AST.MakerFun(args.symbol, args.terms, AST.EmptyTAArray(), args.sourceVar.GetTypeHint())
}

func substAndReturn(args skoArgs, sko AST.Term) AST.Form {
	f, _ := args.formula.ReplaceTermByTerm(args.sourceVar, sko)
	return f
}

func (c *class) make(form AST.Form, source AST.Var) AST.Id {
	form = alphaConvert(form, 0, make(map[AST.Var]AST.Var))
	c.mu.Lock()
	symbol := c.getSymbol(form, AST.MakerNewId(fmt.Sprintf("skolem_%s%v", source.GetName(), source.GetIndex())))
	c.mu.Unlock()
	return symbol
}

func (c *class) getSymbol(form AST.Form, defaultId AST.Id) AST.Id {
	index := -1
	if c.availableForms != nil {
		for i, f := range c.availableForms.Slice() {
			if f.Equals(form) {
				index = i
				break
			}
		}
	}

	if index == -1 {
		index = c.availableForms.Len()
		c.availableForms.Append(form)
		c.availableSymbols = append(c.availableSymbols, defaultId)
	}

	return c.availableSymbols[index]
}

// Alpha-conversion of formulas & terms

func fresh(k int) string {
	return fmt.Sprintf("x@%d", k)
}

func alphaConvert(form AST.Form, k int, substitution map[AST.Var]AST.Var) AST.Form {
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
		return AST.MakeNot(f.GetIndex(), alphaConvert(f.GetForm(), k, substitution))
	case AST.Imp:
		return AST.MakeImp(f.GetIndex(), alphaConvert(f.GetF1(), k, substitution), alphaConvert(f.GetF2(), k, substitution))
	case AST.Equ:
		return AST.MakeEqu(f.GetIndex(), alphaConvert(f.GetF1(), k, substitution), alphaConvert(f.GetF2(), k, substitution))
	case AST.And:
		return AST.MakeAnd(f.GetIndex(),
			AST.NewFormList(Glob.MapTo(f.FormList.Slice(),
				func(_ int, f AST.Form) AST.Form { return alphaConvert(f, k, substitution) })...))
	case AST.Or:
		return AST.MakeOr(f.GetIndex(),
			AST.NewFormList(Glob.MapTo(f.FormList.Slice(),
				func(_ int, f AST.Form) AST.Form { return alphaConvert(f, k, substitution) })...))
	case AST.All:
		k, substitution, vl := makeConvertedVarList(k, substitution, f.GetVarList())
		return AST.MakeAll(f.GetIndex(), vl, alphaConvert(f.GetForm(), k, substitution))
	case AST.Ex:
		k, substitution, vl := makeConvertedVarList(k, substitution, f.GetVarList())
		return AST.MakeEx(f.GetIndex(), vl, alphaConvert(f.GetForm(), k, substitution))
	}
	return form
}

func makeConvertedVarList(k int, substitution map[AST.Var]AST.Var, vl []AST.Var) (int, map[AST.Var]AST.Var, []AST.Var) {
	newVarList := []AST.Var{}
	for i, v := range vl {
		nv := AST.MakeVar(k+i, fresh(k+i), v.GetTypeApp())
		newVarList = append(newVarList, nv)
		substitution[v] = nv
	}
	return k + len(vl), substitution, newVarList
}

func alphaConvertTerm(t AST.Term, substitution map[AST.Var]AST.Var) AST.Term {
	switch nt := t.(type) {
	case AST.Var:
		if val, ok := substitution[nt]; ok {
			return val
		} else {
			return nt
		}
	case AST.Fun:
		mappedTerms := Lib.ListMap(nt.GetArgs(),
			func(trm AST.Term) AST.Term {
				return alphaConvertTerm(trm, substitution)
			})
		return AST.MakeFun(
			nt.GetID(),
			mappedTerms,
			nt.GetTypeVars(),
			nt.GetTypeHint(),
		)
	}
	return t
}
