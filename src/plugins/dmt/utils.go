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
/************/
/* utils.go */
/************/
/**
* This file implements some useful functions for the plugin.
**/

package dmt

import (
	btypes "github.com/GoelandProver/Goeland/types/basic-types"
)

func is[T any, U any](obj U) bool {
	_, isT := any(obj).(T)
	return isT
}

func isEquality(pred btypes.Pred) bool {
	return pred.GetID().Equals(btypes.Id_eq) || pred.GetID().Equals(btypes.Id_neq)
}

func refute(f btypes.Form) btypes.Form {
	return btypes.SimplifyNeg(btypes.RefuteForm(f))
}

func predFromNegatedAtom(f btypes.Form) btypes.Pred {
	return f.(btypes.Not).GetForm().(btypes.Pred)
}

func selectFromPolarity[T any](polarity bool, positive, negative T) T {
	if polarity {
		return positive
	}
	return negative
}

func rewriteMapInsertion(polarity bool, key string, val btypes.Form) {
	rewriteMap := selectFromPolarity(polarity, positiveRewrite, negativeRewrite)
	rewriteMap[key] = append(rewriteMap[key], val)
}
