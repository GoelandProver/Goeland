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
/* subst.go */
/************/
/**
* This file contains functions and types which describe the substitution management in a proofsearch.
**/

package complextypes

import (
	treetypes "github.com/GoelandProver/Goeland/code-trees/tree-types"
	basictypes "github.com/GoelandProver/Goeland/types/basic-types"
)

/* Stock the substitution and the corresponding list of formulas */
type SubstAndForm struct {
	s treetypes.Substitutions
	f basictypes.FormList
}

func (s SubstAndForm) GetSubst() treetypes.Substitutions {
	return s.s.Copy()
}
func (s SubstAndForm) GetForm() basictypes.FormList {
	return s.f.Copy()
}
func (s *SubstAndForm) SetSubst(subst treetypes.Substitutions) {
	s.s = subst.Copy()
}
func (s *SubstAndForm) SetForm(form basictypes.FormList) {
	s.f = form.Copy()
}
func (saf SubstAndForm) IsEmpty() bool {
	return saf.s.IsEmpty() && saf.f.IsEmpty()
}
func (s1 SubstAndForm) Equals(s2 SubstAndForm) bool {
	return s1.GetSubst().Equals(s2.GetSubst()) && s1.GetForm().Equals(s2.GetForm())
}
func (s SubstAndForm) Copy() SubstAndForm {
	if s.IsEmpty() {
		return MakeEmptySubstAndForm()
	} else {
		return MakeSubstAndForm(s.GetSubst(), s.GetForm())
	}
}
func (s SubstAndForm) ToString() string {
	res := "{ "
	if !s.GetSubst().IsEmpty() {
		res += s.GetSubst().ToString()
	}
	res += " - "
	if !s.GetForm().IsEmpty() {
		res += s.GetForm().ToString()
	}
	res += " }"

	return res
}

func MakeSubstAndForm(subst treetypes.Substitutions, form basictypes.FormList) SubstAndForm {
	return SubstAndForm{subst.Copy(), form.Copy()}
}
func MakeEmptySubstAndForm() SubstAndForm {
	return SubstAndForm{treetypes.MakeEmptySubstitution(), basictypes.FormList{}}
}
func (s SubstAndForm) AddFormulas(fl basictypes.FormList) SubstAndForm {
	return MakeSubstAndForm(s.GetSubst(), s.GetForm().Merge(fl.Copy()))
}
func InsertFirstSubstAndFormList(safL []SubstAndForm, saf SubstAndForm) []SubstAndForm {
	if len(safL) > 0 {
		// Moves everything to the right once.
		safL = append(safL[:1], safL[0:]...)
		safL[0] = saf
	} else {
		safL = append(safL, saf)
	}
	return safL
}
