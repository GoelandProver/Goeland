package syntaxicmanipulations

import (
	"fmt"
	"sync"

	"github.com/GoelandProver/Goeland/global"
	typing "github.com/GoelandProver/Goeland/polymorphism/typing"
	btps "github.com/GoelandProver/Goeland/types/basic-types"
)

type skoArgs struct {
	formula   btps.Form
	terms     btps.TermList
	sourceVar btps.Var
	symbol    btps.Id
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
func Skolemize(fnt btps.FormAndTerms) btps.FormAndTerms {
	form := fnt.GetForm()
	terms := fnt.GetTerms()

	switch nf := form.(type) {
	// 1 - not(forall F1)
	case btps.Not:
		if tmp, ok := nf.GetForm().(btps.All); ok {
			res := realSkolemize(tmp.GetForm(), tmp.GetVarList()[0], terms)
			if len(tmp.GetVarList()) > 1 {
				internalMetas := res.GetInternalMetas()
				res = btps.MakerAll(tmp.GetVarList()[1:], res)
				res.SetInternalMetas(internalMetas)
			}
			fnt = btps.MakeFormAndTerm(btps.RefuteForm(res), terms)
		}
	// 2 - exists F1
	case btps.Ex:
		res := realSkolemize(nf.GetForm(), nf.GetVarList()[0], terms)
		if len(nf.GetVarList()) > 1 {
			internalMetas := res.GetInternalMetas()
			res = btps.MakerEx(nf.GetVarList()[1:], res)
			res.SetInternalMetas(internalMetas)
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
func realSkolemize(fnt btps.Form, v btps.Var, terms btps.TermList) btps.Form {
	// Replace each variable by the skolemized term.
	symbol := btps.MakerNewId(fmt.Sprintf("skolem_%s%v", v.GetName(), v.GetIndex()))
	fnt = applySelectedSkolemisation(skoArgs{sourceVar: v, symbol: symbol, formula: fnt, terms: terms})
	return fnt
}

// Applies the right skolemisation depending on the mode Goeland is launched
func applySelectedSkolemisation(args skoArgs) btps.Form {
	if global.IsInnerSko() {
		return applyInnerSkolemisation(args)
	}
	if global.IsOptimisedSko() {
		return applyOptimisedSkolemisation(args)
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

func applyOptimisedSkolemisation(args skoArgs) btps.Form {
	args.symbol = symbolMaker.make(args.formula, args.sourceVar)
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
	form = alphaConvert(btps.MakerEx([]btps.Var{source}, form), 0, make(map[btps.Var]btps.Var))
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
		return btps.MakePred(f.GetIndex(), f.GetID(), global.Map(f.GetArgs(), func(_ int, t btps.Term) btps.Term { return alphaConvertTerm(t, substitution) }), f.GetTypeVars(), f.GetType())
	case btps.Not:
		return btps.MakeNot(f.GetIndex(), alphaConvert(f.GetForm(), k, substitution))
	case btps.Imp:
		return btps.MakeImp(f.GetIndex(), alphaConvert(f.GetF1(), k, substitution), alphaConvert(f.GetF2(), k, substitution))
	case btps.Equ:
		return btps.MakeEqu(f.GetIndex(), alphaConvert(f.GetF1(), k, substitution), alphaConvert(f.GetF2(), k, substitution))
	case btps.And:
		return btps.MakeAnd(f.GetIndex(), global.Map(f.FormList, func(_ int, f btps.Form) btps.Form { return alphaConvert(f, k, substitution) }))
	case btps.Or:
		return btps.MakeOr(f.GetIndex(), global.Map(f.FormList, func(_ int, f btps.Form) btps.Form { return alphaConvert(f, k, substitution) }))
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
		return btps.MakeFun(nt.GetID(), global.Map(nt.GetArgs(), func(_ int, trm btps.Term) btps.Term { return alphaConvertTerm(trm, substitution) }), nt.GetTypeVars(), nt.GetTypeHint())
	}
	return t
}
