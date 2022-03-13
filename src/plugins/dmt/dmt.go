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

	treetypes "github.com/GoelandProver/Goeland/code-trees/tree-types"
	"github.com/GoelandProver/Goeland/plugin"
	btypes "github.com/GoelandProver/Goeland/types/basic-types"
	datastruct "github.com/GoelandProver/Goeland/types/data-struct"
)

var positiveRewrite map[string]btypes.Form /* Stores rewrites of atoms with positive occurrences */
var negativeRewrite map[string]btypes.Form /* Stores rewrites of atoms with negative occurrences */

var positiveTree datastruct.DataStructure /* Matches atoms with positive occurrences */
var negativeTree datastruct.DataStructure /* Matches atoms with negative occurrences */

var activatePolarized bool
var preskolemize bool

var debugActivated bool

/**
 * Base function needed to initialize any plugin of Goéland.
 * It registers the hooks to the plugin manager, and parses the given options.
 **/
func InitPlugin(pm *plugin.PluginManager, options []plugin.Option, debugMode bool) error {
	registerHooks(pm)
	initPluginGlobalVariables(debugMode)
	parsePluginOptions(options)

	// No error can be thrown in this plugin.
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
	axiomFT := btypes.MakeForm(axiom)
	for reflect.TypeOf(axiomFT) == reflect.TypeOf(btypes.All{}) {
		axiomFT = instantiateOnce(axiomFT)
	}
	// 2: make rewrite rule for equivalence, implication or atomic.
	if btypes.ShowKindOfRule(axiomFT) == btypes.Atomic {
		addPosRewriteRule(axiomFT, btypes.MakeTop())
		addNegRewriteRule(axiomFT, btypes.MakeBot())
	} else if reflect.TypeOf(axiomFT) == reflect.TypeOf(btypes.Equ{}) {
		return registerEquivalence(axiomFT)
	} else if activatePolarized && reflect.TypeOf(axiomFT) == reflect.TypeOf(btypes.Imp{}) {
		return registerImplication(axiomFT)
	}
	// 3: if it's not one of the above, the axiom wasn't consumed.
	return false
}

/**
 * Rewrites an atom an unification is found in the rewrite rules.
 **/
func rewrite(atomic btypes.Form) (btypes.FormList, error) {
	form, polarity := getAtomAndPolarity(atomic.Copy())

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
func rewriteGeneric(tree datastruct.DataStructure, atomic btypes.Form, form btypes.Form, polarity bool) (btypes.FormList, error) {
	atomics := btypes.MakeEmptyFormList()
	if res, unif := tree.Unify(form); res {
		// Sorts the unifs found.
		unifs := choose(unif, polarity)
		for _, unif := range unifs {
			equivalence, err := getUnifiedEquivalence(unif.GetForm(), unif.GetSubst(), polarity)
			if err != nil {
				return btypes.MakeSingleElementList(atomic), err
			}
			atomics = append(atomics, btypes.MakeForm(equivalence))
		}
	} else {
		atomics = btypes.MakeSingleElementList(atomic)
	}
	return atomics, nil
}

/**
 * Supporting functions of the DMT.
 **/

/**
 * Priority of substitutions: Top/Bottom > others
 **/
func choose(unifs []treetypes.MatchingSubstitutions, polarity bool) []treetypes.MatchingSubstitutions {
	rewriteMap := positiveRewrite
	if !polarity {
		rewriteMap = negativeRewrite
	}

	sortedUnifs := []treetypes.MatchingSubstitutions{}
	for _, unif := range unifs {
		str := unif.GetForm().ToString()
		if rewriteMap[str].Equals(btypes.Top{}) || rewriteMap[str].Equals(btypes.Bot{}) {
			sortedUnifs = insertFirst(sortedUnifs, unif)
		} else {
			sortedUnifs = append(sortedUnifs, unif)
		}
	}

	return sortedUnifs
}

/**
 * Insert the given substitution as the first element of the slice (empty or not).
 **/
func insertFirst(sortedUnifs []treetypes.MatchingSubstitutions, unif treetypes.MatchingSubstitutions) []treetypes.MatchingSubstitutions {
	if len(sortedUnifs) > 0 {
		// Moves everything to the right once.
		sortedUnifs = append(sortedUnifs[:1], sortedUnifs[0:]...)
		sortedUnifs[0] = unif
	} else {
		sortedUnifs = append(sortedUnifs, unif)
	}
	return sortedUnifs
}

/**
 * Utility function to get the form to unify in the codetree and the polarity of the atom furnished.
 **/
func getAtomAndPolarity(atom btypes.Form) (btypes.Form, bool) {
	switch form := atom.Copy().(type) {
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
func addRewriteRule(axiom btypes.Form, cons btypes.Form, polarity bool) {
	// Skolemize consequence if possible
	for preskolemize && canSkolemize(cons) {
		cons = skolemize(cons)
	}

	if debugActivated {
		if polarity {
			fmt.Printf("Rewrite rule: %s ---> %s\n", axiom.ToString(), cons.ToString())
		} else {
			fmt.Printf("Rewrite rule: %s ---> %s\n", btypes.RefuteForm(axiom).ToString(), cons.ToString())
		}
	}

	if polarity {
		positiveRewrite[axiom.ToString()] = cons
	} else {
		negativeRewrite[axiom.ToString()] = cons
	}
}

/**
 * Skolemization can be applied only when the kind of rule appliable is a delta-rule.
 **/
func canSkolemize(form btypes.Form) bool {
	return btypes.ShowKindOfRule(form) == btypes.Delta
}
