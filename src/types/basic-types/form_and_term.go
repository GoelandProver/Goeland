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
/* form_and_term.go */
/********************/
/**
* This file contains functions and types which describe the formula's data structure
**/

package basictypes

import (
	"github.com/delahayd/gotab/global"
)

/* Struct ton stock the terms linked to the formula */
type FormAndTerm struct {
	f Form
	t []Term
}

func (f FormAndTerm) GetForm() Form {
	if f.f == nil {
		return nil
	}
	return f.f.Copy()
}

func (f FormAndTerm) GetTerms() []Term {
	return CopyTermList(f.t)
}

func (f FormAndTerm) Equals(f2 FormAndTerm) bool {
	return (f.IsEmpty() && f2.IsEmpty()) || (!f.IsEmpty() && !f2.IsEmpty() && f.GetForm().Equals(f2.GetForm()) && AreEqualsTermList(f.GetTerms(), f2.GetTerms()))
}

func (f FormAndTerm) Copy() FormAndTerm {
	return MakeFormAndTerm(f.GetForm(), f.GetTerms())
}

/* Create a FormAndTerm element */
func MakeFormAndTerm(f Form, t []Term) FormAndTerm {
	return FormAndTerm{f, t}
}

func MakeEmptyFormAndTerm() FormAndTerm {
	return FormAndTerm{nil, []Term{}}
}

func (f FormAndTerm) IsEmpty() bool {
	return f.GetForm() == nil && len(f.GetTerms()) == 0
}

/* Print a list of formulae and Meta*/
func (f FormAndTerm) ToString() string {
	res := f.GetForm().ToString()
	if len(f.GetTerms()) > 0 {
		res += " - " + TermListToString(f.GetTerms())
	}
	return res
}

/*** Functions ***/

/* Print a list of formulae and Term */
func PrintFormulaAndTermList(lf []FormAndTerm) {
	for _, f := range lf {
		global.PrintDebug("FLTS", f.ToString())
	}
}

/* Convert a list of formulae and Term into string*/
func FormAndTermListToString(lf []FormAndTerm) string {
	res := ""
	for i, f := range lf {
		res = res + f.GetForm().ToString()
		if i < len(lf)-1 {
			res = res + ", "
		}
	}
	return res
}

/* Convert a list of formulae and Term into string for proof struct */
func FormAndTermListToStringForProof(lf []FormAndTerm) string {
	res := ""
	for i, f := range lf {
		res = res + "<tspan x='0', dy='1.2em'>" + f.GetForm().ToString() + "<tspan>"
		if i < len(lf)-1 {
			res = res + ", "
		}
	}
	return res
}

/* Return true if a Formula f is inside the given FormAndTerm list, false otherwise */
func ContainsFormAndTerm(f FormAndTerm, l []FormAndTerm) bool {
	for _, v := range l {
		if f.Equals(v) {
			return true
		}
	}
	return false
}

/* append a formula to a list if the formula is not already inside */
func AppendIfNotContainsFormAndTerm(lf []FormAndTerm, f FormAndTerm) []FormAndTerm {
	if ContainsFormAndTerm(f, lf) {
		return lf
	} else {
		return append(lf, f)
	}
}

/* merge 2 formula list */
func MergeFormAndTerm(l1, l2 []FormAndTerm) []FormAndTerm {
	res := l1
	for _, f := range l2 {
		res = AppendIfNotContainsFormAndTerm(res, f)
	}
	return res
}

/* Copy a list of form and term */
func CopyFormAndTermList(fl []FormAndTerm) []FormAndTerm {
	res := make([]FormAndTerm, len(fl))
	for i := range fl {
		res[i] = fl[i].Copy()
	}
	return res
}
