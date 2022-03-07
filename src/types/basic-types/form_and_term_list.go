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
/****************/
/* form_and_term_list.go */
/****************/
/**
* This file contains functions and types which describe the state's data
* structure
**/

package basictypes

import (
	"sort"

	"github.com/GoelandProver/gotab/global"
)

/****************/
/* Struct state */
/****************/

/* List of formulae */
type FormAndTermList []FormAndTerm

func (fl FormAndTermList) Len() int      { return len(fl) }
func (fl FormAndTermList) Swap(i, j int) { fl[i], fl[j] = fl[j], fl[i] }
func (fl FormAndTermList) Less(i, j int) bool {
	return (fl[i].ToString() < fl[j].ToString())
}

/* Convert a list of formulae and Term into string*/
func (fl FormAndTermList) ToString() string {
	res := "{"
	for i, v := range fl {
		res += v.ToString()
		if i < len(fl)-1 {
			res += (", ")
		}
	}
	res += "}"
	return res
}

func (lf FormAndTermList) Print() {
	for _, f := range lf {
		global.PrintDebug("FLTS", f.ToString())
	}
}

/* Convert a list of formulae and Term into string for proof struct */
func (fl FormAndTermList) ToStringForProof() string {
	res := ""
	for i, f := range fl {
		res = res + "<tspan x='0', dy='1.2em'>" + f.GetForm().ToString() + "<tspan>"
		if i < len(fl)-1 {
			res = res + ", "
		}
	}
	return res
}

/* Return true is the FormList is empty, false otherwise */
func (fl FormAndTermList) IsEmpty() bool {
	return len(fl) <= 0
}

/* Copy a list of form */
func (fl FormAndTermList) Copy() FormAndTermList {
	res := FormAndTermList{}
	for _, f := range fl {
		res = append(res, f.Copy())
	}
	return res
}

/* Make empty form_and_term_list */
func MakeEmptyFormAndTermList() FormAndTermList {
	return FormAndTermList{}
}

/* Make a form_and_term_list with one element */
func MakeSingleton(f FormAndTerm) FormAndTermList {
	return FormAndTermList{f}
}

/* Check if two form_and_term_list contains the same elements */
func (l1 FormAndTermList) Equals(l2 FormAndTermList) bool {
	if len(l1) != len(l2) {
		return false
	} else {
		l1_sorted := l1.Copy()
		sort.Sort(l1_sorted)

		l2_sorted := l2.Copy()
		sort.Sort(l2_sorted)

		for i := range l1_sorted {
			if !l1_sorted[i].Equals(l2_sorted[i]) {
				return false
			}
		}
	}
	return true
}

/* Return true if a Formula f is inside the given FormAndTerm list, false otherwise */
func (fl FormAndTermList) ContainsFormAndTerm(f FormAndTerm) bool {
	for _, v := range fl {
		if f.Equals(v) {
			return true
		}
	}
	return false
}

/* append a formula to a list if the formula is not already inside */
func (fl FormAndTermList) AppendIfNotContainsFormAndTerm(f FormAndTerm) FormAndTermList {
	if fl.ContainsFormAndTerm(f) {
		return fl.Copy()
	} else {
		return append(fl.Copy(), f)
	}
}

/* merge 2 formula list */
func (l1 FormAndTermList) MergeFormAndTermList(l2 FormAndTermList) FormAndTermList {
	res := l1.Copy()
	for _, f := range l2 {
		res = res.AppendIfNotContainsFormAndTerm(f.Copy())
	}
	return res
}
