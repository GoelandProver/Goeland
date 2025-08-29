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
* This file contains functions and types which describe the substitution management in a proofsearch.
**/

package Core

import (
	"github.com/GoelandProver/Goeland/Lib"
	"github.com/GoelandProver/Goeland/Unif"
)

/* Stock the substitution and the corresponding list of formulas */
type SubstAndFormAndTerms struct {
	s Lib.List[Unif.MixedSubstitution]
	f FormAndTermsList
}

func (s SubstAndFormAndTerms) GetSubst() Lib.List[Unif.MixedSubstitution] {
	return Lib.ListCpy(s.s)
}
func (s SubstAndFormAndTerms) GetForm() FormAndTermsList {
	return s.f.Copy()
}
func (s *SubstAndFormAndTerms) SetSubst(subst Lib.List[Unif.MixedSubstitution]) {
	s.s = Lib.ListCpy(subst)
}
func (s *SubstAndFormAndTerms) SetForm(form FormAndTermsList) {
	s.f = form.Copy()
}
func (saf SubstAndFormAndTerms) IsEmpty() bool {
	return saf.s.Empty() && saf.f.IsEmpty()
}
func (s1 SubstAndFormAndTerms) Equals(s2 SubstAndFormAndTerms) bool {
	return Lib.ListEquals(s1.GetSubst(), s2.GetSubst()) && s1.GetForm().Equals(s2.GetForm())
}
func (s SubstAndFormAndTerms) Copy() SubstAndFormAndTerms {
	if s.IsEmpty() {
		return MakeEmptySubstAndFormAndTerms()
	} else {
		return MakeSubstAndFormAndTerms(s.GetSubst(), s.GetForm())
	}
}
func (s SubstAndFormAndTerms) ToSubstAndForm() SubstAndForm {
	if s.IsEmpty() {
		return MakeEmptySubstAndForm()
	} else {
		return MakeSubstAndForm(s.GetSubst(), s.GetForm().ExtractForms())
	}
}
func (s SubstAndFormAndTerms) ToString() string {
	res := "{ "
	if !s.GetSubst().Empty() {
		res += Lib.ListToString(s.GetSubst(), ", ", "[]")
	}
	res += " - "
	if !s.GetForm().IsEmpty() {
		res += s.GetForm().ToString()
	}
	res += " }"

	return res
}

func MakeSubstAndFormAndTerms(subst Lib.List[Unif.MixedSubstitution], form FormAndTermsList) SubstAndFormAndTerms {
	return SubstAndFormAndTerms{Lib.ListCpy(subst), form.Copy()}
}
func MakeEmptySubstAndFormAndTerms() SubstAndFormAndTerms {
	return SubstAndFormAndTerms{Lib.NewList[Unif.MixedSubstitution](), FormAndTermsList{}}
}

/* Check if a substitution is inside a list of SubstAndForm */
func ContainsSubstAndFormAndTerms(s SubstAndFormAndTerms, sl []SubstAndFormAndTerms) bool {
	for _, v := range sl {
		if v.Equals(s) {
			return true
		}
	}
	return false
}

/* Append a substitution s to a list of substitution sl if s is not in sl */
func AppendIfNotContainsSubstAndFormAndTerms(sl []SubstAndFormAndTerms, s SubstAndFormAndTerms) []SubstAndFormAndTerms {
	if !ContainsSubstAndFormAndTerms(s, sl) {
		return append(sl, s)
	} else {
		return sl
	}
}
