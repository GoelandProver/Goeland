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
package CertifUtils

/**
 * This file provides utility functions for proof certification
 **/

import (
	"fmt"

	"github.com/GoelandProver/Goeland/AST"
	"github.com/GoelandProver/Goeland/Glob"
	"github.com/GoelandProver/Goeland/Lib"
)

const (
	INVALID_INDEX = -1
)

func IsPredEqual(f AST.Form) bool {
	if not, isNot := f.(AST.Not); isNot {
		f = not.GetForm()
	}
	if p, isPred := f.(AST.Pred); isPred {
		return p.GetID().Equals(AST.Id_eq)
	}
	return false
}

// Returns the index of the given formula [applied_on] in the list of formulas [hypotheses].
// As this is an inferrence step, returns [INVALID_INDEX] _only if_ the target formula is an empty
// equality predicate OR [True], which means either that the proof should be concluded by [congruence]
// or that there is a weakening happening on a term and a dummy formula has been used.
// Otherwise, if the formula is not found in the list of hypotheses, raises an [Anomaly]: this
// is certainly something that should never happen.
func GetTargetFormIndex(applied_on AST.Form, hypotheses Lib.List[AST.Form]) int {
	switch t := Lib.ListIndexOf(applied_on, hypotheses).(type) {
	case Lib.Some[int]:
		return t.Val
	case Lib.None[int]:
		if !IsPredEqual(applied_on) && !applied_on.Equals(AST.MakerTop()) {
			Glob.Anomaly(
				"certif-utils",
				fmt.Sprintf("index of %s not found in { %s }", applied_on.ToString(), Lib.ListToString(hypotheses, " ;; ", "")),
			)
		}
	}
	return INVALID_INDEX
}

// The first step is always of the form:
//
//	H1 & H2 & H3 & H4 & ... & ~C --> H1, H2, H3, H4, ..., ~C
//
// Hence, we return the list of hypothesis [Hi] and the _base_ conjecture, i.e., the
// non-negated version.
func ProcessMainFormula(form AST.Form) (Lib.List[AST.Form], AST.Form) {
	formList := Lib.NewList[AST.Form]()
	switch nf := form.(type) {
	case AST.Not:
		form = nf.GetForm()
	case AST.And:
		last := nf.GetChildFormulas().Len() - 1
		formList = Lib.MkListV(nf.GetChildFormulas().Get(0, last)...)
		form = nf.GetChildFormulas().At(last).(AST.Not).GetForm()
	}
	return formList, form
}
