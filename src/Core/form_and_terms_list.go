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

/**
* This file contains functions and types which describe the fomula_list's data
* structure
**/

package Core

import (
	"sort"

	"github.com/GoelandProver/Goeland/AST"
	"github.com/GoelandProver/Goeland/Lib"
)

type PolarityFlag int

const (
	Pos PolarityFlag = iota
	Neg
	PosAndNeg
)

/*** Structure ***/

/* List of formulae */
type FormAndTermsList []FormAndTerms

/*** Methods ***/

/*Sort */
func (fl FormAndTermsList) Len() int      { return len(fl) }
func (fl FormAndTermsList) Swap(i, j int) { fl[i], fl[j] = fl[j], fl[i] }
func (fl FormAndTermsList) Less(i, j int) bool {
	return (fl[i].GetForm().ToString() < fl[j].GetForm().ToString())
}

/** To String **/

/* Convert a list of formulas into string*/
func (fl FormAndTermsList) ToString() string {
	res := "{"
	for i, v := range fl {
		res += v.GetForm().ToString()
		if i < len(fl)-1 {
			res += (", ")
		}
	}
	res += "}"
	return res
}

/* Print a list of formulas */
func (lf FormAndTermsList) Print() {
	for _, f := range lf {
		debug(Lib.MkLazy(func() string { return f.GetForm().ToString() }))
	}
}

/* Convert a list of formulas into string for proof struct */
func (fl FormAndTermsList) ToStringForProof() string {
	return fl.ToString()
}

/** Utilitary **/

/* Return true is the FormList is empty, false otherwise */
func (fl FormAndTermsList) IsEmpty() bool {
	return len(fl) <= 0
}

/* Copy a list of form */
func (fl FormAndTermsList) Copy() FormAndTermsList {
	res := MakeEmptyFormAndTermsList()
	for _, f := range fl {
		res = append(res, f.Copy())
	}
	return res
}

/* Create a FaT List from a FormList */
func MakeFTListFromFormList(l Lib.List[AST.Form]) FormAndTermsList {
	res := MakeEmptyFormAndTermsList()
	for _, f := range l.GetSlice() {
		res = append(res, MakeFormAndTerm(f.Copy(), Lib.MkList[AST.Term](0)))
	}
	return res
}

/* Check if two form_and_term_list contains the same elements */
func (l1 FormAndTermsList) Equals(l2 FormAndTermsList) bool {
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
func (fl FormAndTermsList) Contains(f FormAndTerms) bool {
	for _, v := range fl {
		if f.Equals(v) {
			return true
		}
	}
	return false
}

/* Append a formula to a list if the formula is not already inside */
func (fl FormAndTermsList) AppendIfNotContains(f FormAndTerms) FormAndTermsList {
	if fl.Contains(f) {
		return fl.Copy()
	} else {
		return fl.Append(f)
	}
}

/* Append a formula to a list */
func (fl FormAndTermsList) Append(f FormAndTerms) FormAndTermsList {
	return append(fl.Copy(), f)
}

/* insert first */
func (fl FormAndTermsList) InsertFirst(f FormAndTerms) FormAndTermsList {
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
func (l1 FormAndTermsList) Merge(l2 FormAndTermsList) FormAndTermsList {
	res := l1.Copy()
	for _, f := range l2 {
		res = res.AppendIfNotContains(f.Copy())
	}
	return res
}

func (fl FormAndTermsList) ExtractForms() Lib.List[AST.Form] {
	res := Lib.NewList[AST.Form]()
	for _, f := range fl {
		res = Lib.ListAdd(res, f.GetForm())
	}
	return res
}

func (fl FormAndTermsList) SubstituteBy(
	metas Lib.List[AST.Meta],
	terms Lib.List[AST.Term],
) FormAndTermsList {
	result := FormAndTermsList{}

	for _, fat := range fl {
		result = append(result, fat.SubstituteBy(metas, terms))
	}

	return result
}

/*** Functions ***/

/** Makers **/

/* Make empty form_and_term_list */
func MakeEmptyFormAndTermsList() FormAndTermsList {
	return FormAndTermsList{}
}

/* Make a form_and_term_list with one element */
func MakeSingleElementFormAndTermList(f FormAndTerms) FormAndTermsList {
	return FormAndTermsList{f}
}

/* Make a FormAndTerm list made of all the predicates from the calling list with the corresponding polarity (Pos = positive, Neg = negative, PosAndNeg = both) */
func (lf FormAndTermsList) FilterLitPolarity(pol PolarityFlag) FormAndTermsList {
	res := MakeEmptyFormAndTermsList()
	for _, f := range lf {
		switch nf := f.GetForm().(type) {
		case AST.Pred:
			if pol == Pos || pol == PosAndNeg {
				res = res.AppendIfNotContains(f)
			}
		case AST.Not:
			switch nf.GetForm().(type) {
			case AST.Pred:
				if pol == Neg || pol == PosAndNeg {
					res = res.AppendIfNotContains(f)
				}
			}
		}
	}
	return res
}
