/**************************/
/* rewrite_equivalence.go */
/**************************/

/**
 * This file contains everything needed to transform an atomic formula into a
 * rewrite rule if the root connector is an <=>
 **/

package main

import (
	"reflect"

	btypes "github.com/delahayd/gotab/types/basic-types"
)

/* Registers a formula with <=> as its root connector as a rewrite rule. */
func registerEquivalence(axiomFT btypes.FormAndTerm) bool {
	form := axiomFT.GetForm().(btypes.Equ)
	phi1, phi2 := form.GetF1(), form.GetF2()
	if (btypes.ShowKindOfRule(phi1) == btypes.Atomic && btypes.ShowKindOfRule(phi2) == btypes.Atomic) || (btypes.ShowKindOfRule(phi1) != btypes.Atomic && btypes.ShowKindOfRule(phi2) != btypes.Atomic) {
		return false
	}
	if btypes.ShowKindOfRule(phi1) == btypes.Atomic {
		phi1, phi2 = refuteIfNeeded(phi1, phi2)
		addEquivalenceRewriteRule(btypes.MakeFormAndTerm(phi1, axiomFT.GetTerms()), phi2)
	} else {
		phi2, phi1 = refuteIfNeeded(phi2, phi1)
		addEquivalenceRewriteRule(btypes.MakeFormAndTerm(phi2, axiomFT.GetTerms()), phi1)
	}
	return true
}

/**
 * Refutes a form if needed.
 * As a code tree only takes non-negative formulae, if phi1 = neg(f), phi1 will be f 
 * and phi2 will be refuted. If phi2 is already a negation, it cancels it out.
 **/
func refuteIfNeeded(phi1 btypes.Form, phi2 btypes.Form) (btypes.Form, btypes.Form) {
	if reflect.TypeOf(phi1) == reflect.TypeOf(btypes.Not{}) {
		phi1 = phi1.(btypes.Not).GetForm()

		if reflect.TypeOf(phi2) == reflect.TypeOf(btypes.Not{}) {
			phi2 = phi2.(btypes.Not).GetForm()
		} else {
			phi2 = btypes.RefuteForm(phi2)
		}
	}

	return phi1, phi2
}

/* Adds the axiom in the rewrite tree and sends the two others in the main component. */
func addEquivalenceRewriteRule(axiom btypes.FormAndTerm, cons btypes.Form) {
	addPosRewriteRule(axiom, cons)
	addNegRewriteRule(axiom, btypes.RefuteForm(cons))
}