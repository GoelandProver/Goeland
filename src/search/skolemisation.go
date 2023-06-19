package search

import (
	"fmt"
	"sync"

	treetypes "github.com/GoelandProver/Goeland/code-trees/tree-types"
	"github.com/GoelandProver/Goeland/global"
	typing "github.com/GoelandProver/Goeland/polymorphism/typing"
	basictypes "github.com/GoelandProver/Goeland/types/basic-types"
	complextypes "github.com/GoelandProver/Goeland/types/complex-types"
)

type skoArgs struct {
	formula   basictypes.Form
	terms     basictypes.TermList
	sourceVar basictypes.Var
	symbol    basictypes.Id
	subst     treetypes.Substitutions
}

type class struct {
	availableForms   []basictypes.Form
	availableSymbols []basictypes.Id
	mu               sync.Mutex
}

var symbolMaker class

/**
 * Skolemizes once the formula f.
 */
func Skolemize(fnt basictypes.FormAndTerms, state *complextypes.State) basictypes.FormAndTerms {
	form := fnt.GetForm()
	terms := fnt.GetTerms()

	switch nf := form.(type) {
	// 1 - not(forall F1)
	case basictypes.Not:
		if tmp, ok := nf.GetForm().(basictypes.All); ok {
			fnt = basictypes.MakeFormAndTerm(basictypes.RefuteForm(realSkolemize(tmp.GetForm(), tmp.GetVarList(), terms, state)), terms)
		}
	// 2 - exists F1
	case basictypes.Ex:
		fnt = basictypes.MakeFormAndTerm(realSkolemize(nf.GetForm(), nf.GetVarList(), terms, state), terms)
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
func realSkolemize(fnt basictypes.Form, vars []basictypes.Var, terms basictypes.TermList, state *complextypes.State) basictypes.Form {
	// Replace each variable by the skolemized term.
	for _, v := range vars {
		// Generation of a fresh symbol
		symbol := basictypes.MakerNewId(fmt.Sprintf("skolem_%s%v", v.GetName(), v.GetIndex()))
		subst := state.GetAppliedSubst().GetSubst()
		fnt = applySelectedSkolemisation(skoArgs{sourceVar: v, symbol: symbol, subst: subst, formula: fnt, terms: terms})
	}

	return fnt
}

// Applies the right skolemisation depending on the mode Goeland is launched
func applySelectedSkolemisation(args skoArgs) basictypes.Form {
	if global.IsInnerSko() {
		return applyInnerSkolemisation(args)
	}
	if global.IsOptimisedSko() {
		return applyOptimisedSkolemisation(args)
	}
	return applyOuterSkolemisation(args)
}

// Default outer skolemisation: takes all the metavariables of the branch and pass it as arguments of the symbol skolem.
func applyOuterSkolemisation(args skoArgs) basictypes.Form {
	return substAndReturn(args, makeSkolemFunction(args))
}

// Inner skolemisation: takes all the metavariable which occur in a formula as arguments of the skolem term.
func applyInnerSkolemisation(args skoArgs) basictypes.Form {
	args.terms = global.To[basictypes.TermList](args.formula.GetMetas())
	return substAndReturn(args, makeSkolemFunction(args))
}

func applyOptimisedSkolemisation(args skoArgs) basictypes.Form {
	args.symbol = symbolMaker.make(args.formula, args.sourceVar)
	return applyInnerSkolemisation(args)
}

// Makes a function with the given arguments and symbol. Its type is the type of the variable.
func makeSkolemFunction(args skoArgs) basictypes.Term {
	return basictypes.MakerFun(args.symbol, args.terms, typing.EmptyTAArray(), args.sourceVar.GetTypeHint())
}

func substAndReturn(args skoArgs, sko basictypes.Term) basictypes.Form {
	return args.formula.ReplaceVarByTerm(args.sourceVar, sko)
}

func (c *class) make(form basictypes.Form, source basictypes.Var) basictypes.Id {
	form = alphaConvert(basictypes.MakerEx([]basictypes.Var{source}, form), 0, make(map[basictypes.Var]basictypes.Var))
	c.mu.Lock()
	symbol := c.getSymbol(form, basictypes.MakerNewId(fmt.Sprintf("skolem_%s%v", source.GetName(), source.GetIndex())))
	c.mu.Unlock()
	return symbol
}

func (c *class) getSymbol(form basictypes.Form, defaultId basictypes.Id) basictypes.Id {
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

func alphaConvert(form basictypes.Form, k int, substitution map[basictypes.Var]basictypes.Var) basictypes.Form {
	switch f := form.(type) {
	case basictypes.Top, basictypes.Bot:
		return form
	case basictypes.Pred:
		return basictypes.MakePred(f.GetIndex(), f.GetID(), global.Map(f.GetSubTerms(), func(_ int, t basictypes.Term) basictypes.Term { return alphaConvertTerm(t, substitution) }), f.GetTypeVars(), f.GetType())
	case basictypes.Not:
		return basictypes.MakeNot(f.GetIndex(), alphaConvert(f.GetForm(), k, substitution))
	case basictypes.Imp:
		return basictypes.MakeImp(f.GetIndex(), alphaConvert(f.GetF1(), k, substitution), alphaConvert(f.GetF2(), k, substitution))
	case basictypes.Equ:
		return basictypes.MakeEqu(f.GetIndex(), alphaConvert(f.GetF1(), k, substitution), alphaConvert(f.GetF2(), k, substitution))
	case basictypes.And:
		return basictypes.MakeAnd(f.GetIndex(), global.Map(f.FormList, func(_ int, f basictypes.Form) basictypes.Form { return alphaConvert(f, k, substitution) }))
	case basictypes.Or:
		return basictypes.MakeOr(f.GetIndex(), global.Map(f.FormList, func(_ int, f basictypes.Form) basictypes.Form { return alphaConvert(f, k, substitution) }))
	case basictypes.All:
		k, substitution, vl := makeConvertedVarList(k, substitution, f.GetVarList())
		return basictypes.MakeAll(f.GetIndex(), vl, alphaConvert(f.GetForm(), k, substitution))
	case basictypes.Ex:
		k, substitution, vl := makeConvertedVarList(k, substitution, f.GetVarList())
		return basictypes.MakeEx(f.GetIndex(), vl, alphaConvert(f.GetForm(), k, substitution))
	}
	return form
}

func makeConvertedVarList(k int, substitution map[basictypes.Var]basictypes.Var, vl []basictypes.Var) (int, map[basictypes.Var]basictypes.Var, []basictypes.Var) {
	newVarList := []basictypes.Var{}
	for i, v := range vl {
		nv := basictypes.MakeVar(k+i, fresh(k+i), v.GetTypeApp())
		newVarList = append(newVarList, nv)
		substitution[v] = nv
	}
	return k + len(vl), substitution, newVarList
}

func alphaConvertTerm(t basictypes.Term, substitution map[basictypes.Var]basictypes.Var) basictypes.Term {
	switch nt := t.(type) {
	case basictypes.Var:
		if val, ok := substitution[nt]; ok {
			return val
		} else {
			return nt
		}
	case basictypes.Fun:
		return basictypes.MakeFun(nt.GetID(), global.Map(nt.GetSubTerms(), func(_ int, t basictypes.Term) basictypes.Term { return alphaConvertTerm(t, substitution) }), nt.GetTypeVars(), nt.GetTypeHint())
	}
	return t
}
