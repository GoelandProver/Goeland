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

/**********************/
/* process_formula.go */
/**********************/

/**
* This file processes Goeland's formula to make it coq-friendly.
**/

package coq

import btps "github.com/GoelandProver/Goeland/types/basic-types"

func isNNPP(form btps.Form) bool {
	// Special case : ~~p -> p : exactly NNPP.
	imp, isImp := form.(btps.Imp)
	if isImp {
		if not, isNot := imp.GetF1().(btps.Not); isNot {
			if not2, isNot2 := not.GetForm().(btps.Not); isNot2 {
				if pred, isPred := not2.GetForm().(btps.Pred); isPred {
					if pred.Equals(imp.GetF2()) {
						return true
					}
				}
			}
		}
	}
	return false
}

func processMainFormula(form btps.Form) (btps.FormList, btps.Form) {
	switch nf := form.(type) {
	case btps.Not:
		return btps.FormList{}, nf.GetForm()
	case btps.And:
		lastForm := nf.FormList[len(nf.FormList)-1].(btps.Not).GetForm()
		fl := nf.FormList[:len(nf.FormList)-1]
		return fl, lastForm
	}
	return btps.FormList{}, form
}
