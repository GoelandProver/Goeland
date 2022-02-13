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