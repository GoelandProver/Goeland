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
	btypes "github.com/GoelandProver/Goeland/types/basic-types"
)

/* Registers a formula with <=> as its root connector as a rewrite rule. */
func registerEquivalence(axiomFT btypes.Form) bool {
	form := axiomFT.Copy().(btypes.Equ)
	phi1, phi2 := form.GetF1(), form.GetF2()
	if (btypes.ShowKindOfRule(phi1) == btypes.Atomic && btypes.ShowKindOfRule(phi2) == btypes.Atomic) || (btypes.ShowKindOfRule(phi1) != btypes.Atomic && btypes.ShowKindOfRule(phi2) != btypes.Atomic) {
		return false
	}
	if btypes.ShowKindOfRule(phi1) == btypes.Atomic {
		if phi_1_pred, ok := phi1.(btypes.Pred); ok && (phi_1_pred.GetID().Equals(btypes.Id_eq) || phi_1_pred.GetID().Equals(btypes.Id_neq)) {
			return false
		}
		addEquivalenceRewriteRule(phi1, phi2)
	} else {
		if phi_2_pred, ok := phi2.(btypes.Pred); ok && (phi_2_pred.GetID().Equals(btypes.Id_eq) || phi_2_pred.GetID().Equals(btypes.Id_neq)) {
			return false
		}
		addEquivalenceRewriteRule(phi2, phi1)
	}
	return true
}

/* Adds the axiom in the rewrite tree and sends the two others in the main component. */
func addEquivalenceRewriteRule(axiom btypes.Form, cons btypes.Form) {
	if _, isNeg := axiom.(btypes.Not); isNeg {
		addPosRewriteRule(axiom, btypes.SimplifyNeg(btypes.RefuteForm(cons)))
		addNegRewriteRule(axiom, cons)
	} else {
		addPosRewriteRule(axiom, cons)
		addNegRewriteRule(axiom, btypes.SimplifyNeg(btypes.RefuteForm(cons)))
	}
}
