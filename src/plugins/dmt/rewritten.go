/****************/
/* rewritten.go */
/****************/

/**
 * This file contains the functions definition gotten from the main prover.
 * Any of these could be replaced by its other part when they are exported.
 **/

package main

import (
	"fmt"
	"reflect"
	"strings"

	treetypes "github.com/delahayd/gotab/code-trees/tree-types"
	btypes "github.com/delahayd/gotab/types/basic-types"
	ctypes "github.com/delahayd/gotab/types/complex-types"
)

/**
 * Replaces all the occurences of all the keys of subst to the corresponding values.
 **/
 func substitute(form btypes.Form, subst treetypes.Substitutions) btypes.Form {
	//terms := []btypes.Term{}
	for old_symbol, new_symbol := range subst {
		form = ctypes.ApplySubstitutionOnFormula(old_symbol, new_symbol, form)
		/*if reflect.TypeOf(new_symbol) == reflect.TypeOf(btypes.Meta{}) {
			terms = append(terms, new_symbol)
		}*/
	}
	return form
}

/**
 * Stolen method : instantiation.
 * Instanciates once a formula to make meta from bound variables.
 **/
 func instantiateOnce(formula btypes.Form, terms []btypes.Term) btypes.FormAndTerm {
	nf := formula.(btypes.All).GetForm()
	for _, v := range formula.(btypes.All).GetVarList() {
		meta := btypes.MakerMeta(strings.ToUpper(v.GetName()), 0)
		terms = append(terms, meta)
		nf = btypes.ReplaceVarByTerm(nf, v, meta)
	}
	return btypes.MakeFormAndTerm(nf, terms)
}

/**
 * Skolemizes once the formula f.
 */
 func skolemize(f btypes.Form, terms []btypes.Term) btypes.Form {
    switch nf := f.(type) {
	// 1 - not(forall F1)
    case btypes.Not:
		if reflect.TypeOf(nf.GetForm()) == reflect.TypeOf(btypes.All{}) {
			tmp := nf.GetForm().(btypes.All).GetForm()
			f = btypes.RefuteForm(realSkolemize(tmp, nf.GetForm().(btypes.All).GetVarList(), terms))
		}
	// 2 - exists F1
    case btypes.Ex:
        tmp := nf.GetForm()
		f = realSkolemize(tmp, nf.GetVarList(), terms)
    }

    return f
}

/** 
 * Applies skolemization to a formula (ie: replaces existential quantified variables 
 * by fresh skolem symbols).
 **/
func realSkolemize(f btypes.Form, vars []btypes.Var, terms []btypes.Term) btypes.Form {
	// Replace each variable by the skolemized term.
	for _, v := range vars {
		skolem := btypes.MakerFun(btypes.MakerNewId(fmt.Sprintf("skolem_%s%v", v.GetName(), v.GetIndex())), terms)
		f = btypes.ReplaceVarByTerm(f, v, skolem)
	}
	return f
}