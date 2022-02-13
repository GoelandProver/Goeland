/**
* Copyright 2022 by the authors (see AUTHORs).
*
* Goéland is an automated theorem prover for first order logic.
*
* This software is governed by the CeCILL license under French law and
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
* knowledge of the CeCILL license and that you accept its terms.
**/
/**************************/
/* rewrite_equivalence.go */
/**************************/

/**
 * This file contains everything needed to transform an atomic formula into a
 * rewrite rule if the root connector is an =>
 **/

package main

import (
	"reflect"

	btypes "github.com/delahayd/gotab/types/basic-types"
)

/**
 * Applies polarized DMT, registers a formula A => B as a rewrite rule iff:
 *   - A is atomic, in this case, the rewrite rule is A ---> B
 * 	 - B is atomic, in this case, the rewrite rule is -B ---> -A
 * Both of the rules can be registered in case A and B are atomic.
 **/
func registerImplication(axiomFT btypes.FormAndTerm) bool {
	form := axiomFT.GetForm().(btypes.Imp)
	phi1, phi2 := form.GetF1(), form.GetF2()
	if btypes.ShowKindOfRule(phi1) != btypes.Atomic && btypes.ShowKindOfRule(phi2) != btypes.Atomic {
		return false
	}
	// A => B
	if reflect.TypeOf(phi1) == reflect.TypeOf(btypes.Not{}) && btypes.ShowKindOfRule(phi1) == btypes.Atomic {
		addNegRewriteRule(btypes.MakeFormAndTerm(phi1.(btypes.Not).GetForm(), axiomFT.GetTerms()), phi2)
	} else if btypes.ShowKindOfRule(phi1) == btypes.Atomic {
		addPosRewriteRule(btypes.MakeFormAndTerm(phi1, axiomFT.GetTerms()), phi2)
	}
	// -B => -A
	if reflect.TypeOf(phi2) == reflect.TypeOf(btypes.Not{}) && btypes.ShowKindOfRule(phi2.(btypes.Not).GetForm()) == btypes.Atomic {
		addPosRewriteRule(btypes.MakeFormAndTerm(phi2.(btypes.Not).GetForm(), axiomFT.GetTerms()), btypes.RefuteForm(phi1))
	} else if btypes.ShowKindOfRule(phi2) == btypes.Atomic {
		addNegRewriteRule(btypes.MakeFormAndTerm(phi2, axiomFT.GetTerms()), btypes.RefuteForm(phi1))
	}
	return true
}

/* Adds the axiom in the positive rewrite tree and sends the two others in the main component. */
func addPosRewriteRule(axiom btypes.FormAndTerm, cons btypes.Form) {
	positiveTree = positiveTree.InsertFormulaListToDataStructure([]btypes.FormAndTerm{axiom}, true)
	addRewriteRule(axiom, cons, true)
}

/* Adds the axiom in the negative rewrite tree and sends the two others in the main component. */
func addNegRewriteRule(axiom btypes.FormAndTerm, cons btypes.Form) {
	negativeTree = negativeTree.InsertFormulaListToDataStructure([]btypes.FormAndTerm{axiom}, true)
	addRewriteRule(axiom, cons, false)
}