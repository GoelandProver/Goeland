package search

import (
	"fmt"

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
		return /*applyOptimisedSkolemisation(args)*/ applyInnerSkolemisation(args)
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

// Makes a function with the given arguments and symbol. Its type is the type of the variable.
func makeSkolemFunction(args skoArgs) basictypes.Term {
	return basictypes.MakerFun(args.symbol, args.terms, typing.EmptyTAArray(), args.sourceVar.GetTypeHint())
}

func substAndReturn(args skoArgs, sko basictypes.Term) basictypes.Form {
	return args.formula.ReplaceVarByTerm(args.sourceVar, sko)
}
