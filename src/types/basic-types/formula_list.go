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
/********************/
/* formula_liste.go */
/********************/
/**
* This file contains functions and types which describe the fomula_list's data
* structure
**/

package basictypes

import (
	"sort"

	"github.com/GoelandProver/Goeland/global"
)

/*** Structure ***/

/* List of formulae */
type FormList []Form

/*** Methods ***/

/*Sort */
func (fl FormList) Len() int      { return len(fl) }
func (fl FormList) Swap(i, j int) { fl[i], fl[j] = fl[j], fl[i] }
func (fl FormList) Less(i, j int) bool {
	return (fl[i].ToString() < fl[j].ToString())
}

/** To String **/

/* Convert a list of formulas into string*/
func (fl FormList) ToString() string {
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

/* Print a list of formulas */
func (lf FormList) Print() {
	for _, f := range lf {
		global.PrintDebug("FLTS", f.ToString())
	}
}

/* Convert a list of formulas into string for proof struct */
func (fl FormList) ToStringForProof() string {
	return fl.ToString()
	// res := ""
	// for i, f := range fl {
	// 	res = res + "<tspan x='0', dy='1.2em'>" + f.ToString() + "<tspan>"
	// 	if i < len(fl)-1 {
	// 		res = res + ", "
	// 	}
	// }
	// return res
}

/** Utilitary **/

/* Return true is the FormList is empty, false otherwise */
func (fl FormList) IsEmpty() bool {
	return len(fl) <= 0
}

/* Copy a list of form */
func (fl FormList) Copy() FormList {
	res := make([]Form, len(fl))
	for i := range fl {
		res[i] = fl[i].Copy()
	}
	return res
}

/* Check if two form_and_term_list contains the same elements */
func (l1 FormList) Equals(l2 FormList) bool {
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

/* Return true if a formula f is inside the given formulas list, false otherwise */
func (fl FormList) Contains(f Form) bool {
	for _, v := range fl {
		if f.Equals(v) {
			return true
		}
	}
	return false
}

/* Append a formula to a list if the formula is not already inside */
func (fl FormList) AppendIfNotContains(f Form) FormList {
	if fl.Contains(f) {
		return fl.Copy()
	} else {
		return append(fl.Copy(), f)
	}
}

/* insert first */
func (fl FormList) InsertFirst(f Form) FormList {
	if len(fl) > 0 {
		// Moves everything to the right once.
		fl = append(fl[:1], fl[0:]...)
		fl[0] = f
	} else {
		fl = append(fl, f)
	}
	return fl
}

/* Merge two formulas lists */
func (l1 FormList) Merge(l2 FormList) FormList {
	res := l1.Copy()
	for _, f := range l2 {
		res = res.AppendIfNotContains(f.Copy())
	}
	return res
}

/* Kepp only predicate with right polarity */
func (lf FormList) FilterPred(pola bool) FormList {
	res := MakeEmptyFormList()
	for _, f := range lf {
		switch nf := f.Copy().(type) {
		case Pred:
			if pola {
				res = res.AppendIfNotContains(nf)
			}
		case Not:
			switch nf.GetForm().(type) {
			case Pred:
				if !pola {
					res = res.AppendIfNotContains(nf.GetForm())
				}
			}
		}
	}
	return res
}

/*** Functions ***/

/** Makers **/

/* Make empty form_and_term_list */
func MakeEmptyFormList() FormList {
	return FormList{}
}

/* Make a form_and_term_list with one element */
func MakeSingleElementList(f Form) FormList {
	return FormList{f}
}
