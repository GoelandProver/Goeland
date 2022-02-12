/**
* Copyright by Julie CAILLER and Johann ROSAIN (2022)
*
* julie.cailler@lirmm.fr
* johann.rosain@lirmm.fr
*
* Goéland is an automated theorem prover for first order logic.
*
* This software is governed by the CeCILL-B license under French law and
* abiding by the rules of distribution of free software.  You can  use,
* modify and/ or redistribute the software under the terms of the CeCILL-B
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
* knowledge of the CeCILL-B license and that you accept its terms.
**/
/**********/
/* dmt.go */
/**********/
/**
* This file implements the main logic behind the deduction modulo theorie plugin.
**/

package main

import (
	"fmt"
	"reflect"
	"strings"

	treesearch "github.com/delahayd/gotab/code-trees/tree-search"
	treetypes "github.com/delahayd/gotab/code-trees/tree-types"
	"github.com/delahayd/gotab/plugin"
	btypes "github.com/delahayd/gotab/types/basic-types"
	ctypes "github.com/delahayd/gotab/types/complex-types"
	datastruct "github.com/delahayd/gotab/types/data-struct"
)

var positiveRewrite map[string]btypes.Form 	/* Stores rewrites of atoms with positive occurrences */ 
var negativeRewrite map[string]btypes.Form	/* Stores rewrites of atoms with negative occurrences */

var positiveTree datastruct.DataStructure	/* Matches atoms with positive occurrences */
var negativeTree datastruct.DataStructure	/* Matches atoms with negative occurrences */

/**
 * Plugs DMT on the `rewrite` hook and `sendAxiom` hook.
 * Instanciates all the needed variables for the DMT.
 **/
func InitPlugin(pm *plugin.PluginManager) error {
	pm.RegisterRewriteHook(rewrite)
	pm.RegisterSendAxiomHook(registerAxiom)
	positiveRewrite = make(map[string]btypes.Form)
	negativeRewrite = make(map[string]btypes.Form)
	positiveTree = new(treesearch.Node)
	negativeTree = new(treesearch.Node)
	return nil
}

/**
 * Top-level functions of the DMT.
 **/

/**
 * Implements polarized deduction modulo theory :
 * 	- Registers axioms of type (forall x1, ..., xn) . A <=> B (if A or B is atomic) 
 *	  as both positive and negative occurrences.
 *	- Registers axioms of type (forall x1, ..., xn) . A => B (if A / B atomic) as 
 *	  positive occurrence for A and negative occurrence for B.
 **/
func registerAxiom(axiom btypes.Form) bool {
	// 1: instantiate forall(s).
	axiomFT := btypes.MakeFormAndTerm(axiom, []btypes.Term{})
	for reflect.TypeOf(axiomFT.GetForm()) == reflect.TypeOf(btypes.All{}) {
		axiomFT = instantiateOnce(axiomFT.GetForm(), axiomFT.GetTerms())
	}
	// 2: make rewrite rule for equivalence, implication or atomic.
	if btypes.ShowKindOfRule(axiomFT.GetForm()) == btypes.Atomic {
		addPosRewriteRule(axiomFT, btypes.MakeTop())
		addNegRewriteRule(axiomFT, btypes.MakeBot())
	} else if reflect.TypeOf(axiomFT.GetForm()) == reflect.TypeOf(btypes.Equ{}) {
		return registerEquivalence(axiomFT)
	} else if reflect.TypeOf(axiomFT.GetForm()) == reflect.TypeOf(btypes.Imp{}) {
		return registerImplication(axiomFT)
	}
	// 3: if it's not one of the above, the axiom wasn't consumed.
	return false
}

/**
 * Rewrites an atom an unification is found in the rewrite rules.
 **/
func rewrite(atomic btypes.FormAndTerm) (btypes.FormAndTerm, error) {
	form, polarity := getAtomAndPolarity(atomic.GetForm())
	
	var tree datastruct.DataStructure
	
	// Chooses the tree to search in based on the form's polarity.
	// A positive form will be matched in the positive tree when 
	// a negative form will be matched in the negative tree.
	if polarity {
		tree = positiveTree
	} else {
		tree = negativeTree
	}

	return rewriteGeneric(tree, atomic, form, polarity)
}

/**
 * Rewrite algorithm with furnished code tree to unify on.
 **/
func rewriteGeneric(tree datastruct.DataStructure, atomic btypes.FormAndTerm, form btypes.Form, polarity bool) (btypes.FormAndTerm, error) {
	if res, unif := tree.Unify(form); res {
		// Choice of unification. It's the first one found at the moment.
		unif := choose(unif, polarity)
		equivalence, err := getUnifiedEquivalence(unif.GetForm(), unif.GetSubst(), polarity)
		if err != nil {
			return atomic, err
		}
		atomic = btypes.MakeFormAndTerm(equivalence, atomic.GetTerms())
	}
	return atomic, nil
}

/**
 * Supporting functions of the DMT.
 **/

/** 
 * Priority of substitutions: Top/Bottom > others
 **/
func choose(unifs []treetypes.MatchingSubstitutions, polarity bool) treetypes.MatchingSubstitutions {
	for _, unif := range unifs {
		str := unif.GetForm().ToString()
		if polarity {
			if positiveRewrite[str].Equals(btypes.Top{}) || positiveRewrite[str].Equals(btypes.Bot{}) {
				return unif
			} 
		} else {
			if negativeRewrite[str].Equals(btypes.Top{}) || negativeRewrite[str].Equals(btypes.Bot{}) {
				return unif
			}
		}
	}
	// TODO: this line breaks completeness. It has to change.
	return unifs[0]
}

/**
 * Utility function to get the form to unify in the codetree and the polarity of the atom furnished.
 **/
func getAtomAndPolarity(atom btypes.Form) (btypes.Form, bool) {
	switch form := atom.(type) {
	case btypes.Not:
		return form.GetForm(), false
	default:
		return form, true
	}
}

/**
 * Unifies the substitution with the equivalence of the given atom.
 **/
func getUnifiedEquivalence(atom btypes.Form, subst treetypes.Substitutions, polarity bool) (btypes.Form, error) {
	equivalence := findEquivalence(atom, polarity)
	if equivalence == nil {
		return nil, fmt.Errorf("[DMT] Fatal error : no rewrite rule found when an unification has been found")
	}
	return substitute(equivalence, subst), nil
}

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
 * Finds the equivalence of the atom in our rewriteMatches.
 **/
func findEquivalence(atom btypes.Form, polarity bool) btypes.Form {
	if polarity {
		return positiveRewrite[atom.ToString()]
	} else {
		return negativeRewrite[atom.ToString()]
	}
}

/**
 * Enters an axiom in the rewrite tree & rewrite match.
 **/
func addRewriteRule(axiom btypes.FormAndTerm, cons btypes.Form, polarity bool) {
	// Skolemize consequence if possible
	// TODO: check performances of pre-skolemisation before enabling it.
	/*for canSkolemize(cons) {
		cons = skolemize(cons, axiom.GetTerms())
	}*/
	if polarity {
		fmt.Printf("Rewrite rule: %s ---> %s\n", axiom.GetForm().ToString(), cons.ToString())
	} else {
		fmt.Printf("Rewrite rule: %s ---> %s\n", btypes.RefuteForm(axiom.GetForm()).ToString(), cons.ToString())
	}

	if polarity {
		positiveRewrite[axiom.GetForm().ToString()] = cons
	} else {
		negativeRewrite[axiom.GetForm().ToString()] = cons
	}
}

/**
 * Skolemization can be applied only when the kind of rule appliable is a delta-rule.
 **/
func canSkolemize(form btypes.Form) bool {
	return btypes.ShowKindOfRule(form) == btypes.Delta
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
 * Stolen method : skolemization.
 * Skolemizes once the formula f.
 */
 func skolemize(f btypes.Form, terms []btypes.Term) btypes.Form {
    switch nf := f.(type) {
	// 1 - not(forall F1)
    case btypes.Not:
		if reflect.TypeOf(nf.GetForm()) == reflect.TypeOf(btypes.All{}) {
			tmp := nf.GetForm().(btypes.All).GetForm()
			f = btypes.RefuteForm(real_skolemize(tmp, nf.GetForm().(btypes.All).GetVarList(), terms))
		}
	// 2 - exists F1
    case btypes.Ex:
        tmp := nf.GetForm()
		f = real_skolemize(tmp, nf.GetVarList(), terms)
    }

    return f
}

func real_skolemize(f btypes.Form, vars []btypes.Var, terms []btypes.Term) btypes.Form {
	// Replace each variable by the skolemized term.
	for _, v := range vars {
		skolem := btypes.MakerFun(btypes.MakerNewId(fmt.Sprintf("skolem_%s%v", v.GetName(), v.GetIndex())), terms)
		f = btypes.ReplaceVarByTerm(f, v, skolem)
	}
	return f
}