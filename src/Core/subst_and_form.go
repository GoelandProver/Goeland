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
	"errors"
	"fmt"

	"github.com/GoelandProver/Goeland/AST"
	"github.com/GoelandProver/Goeland/Glob"
	"github.com/GoelandProver/Goeland/Lib"
	"github.com/GoelandProver/Goeland/Unif"
)

/* Stock the substitution and the corresponding list of formulas */
type SubstAndForm struct {
	s Lib.List[Unif.MixedSubstitution]
	f Lib.List[AST.Form]
}

func (s SubstAndForm) GetSubst() Lib.List[Unif.MixedSubstitution] {
	return Lib.ListCpy(s.s)
}
func (s SubstAndForm) GetForm() Lib.List[AST.Form] {
	return Lib.ListCpy(s.f)
}
func (s *SubstAndForm) SetSubst(subst Lib.List[Unif.MixedSubstitution]) {
	s.s = Lib.ListCpy(subst)
}
func (s *SubstAndForm) SetForm(form Lib.List[AST.Form]) {
	s.f = Lib.ListCpy(form)
}
func (saf SubstAndForm) IsEmpty() bool {
	return saf.s.Empty() && saf.f.Empty()
}
func (s1 SubstAndForm) Equals(s2 SubstAndForm) bool {
	return Lib.ListEquals(s1.GetSubst(), s2.GetSubst()) &&
		Lib.ListEquals(s1.GetForm(), s2.GetForm())
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
	if !s.GetSubst().Empty() {
		res += Lib.ListToString(s.GetSubst(), ", ", "[]")
	}
	res += " - "
	if !s.GetForm().Empty() {
		res += Lib.ListToString(s.GetForm(), ", ", "[]")
	}
	res += " }"

	return res
}

func MakeSubstAndForm(subst Lib.List[Unif.MixedSubstitution], form Lib.List[AST.Form]) SubstAndForm {
	return SubstAndForm{Lib.ListCpy(subst), Lib.ListCpy(form)}
}
func MakeEmptySubstAndForm() SubstAndForm {
	return SubstAndForm{Lib.NewList[Unif.MixedSubstitution](), Lib.NewList[AST.Form]()}
}
func (s SubstAndForm) AddFormulas(fl Lib.List[AST.Form]) SubstAndForm {
	formList := s.GetForm()
	formList = Lib.ListAdd(formList, Lib.ListCpy(fl).GetSlice()...)
	return MakeSubstAndForm(s.GetSubst(), formList)
}

/* Remove empty substitution from a substitution list */
func RemoveEmptySubstFromSubstList(sl Lib.List[Lib.List[Unif.MixedSubstitution]]) Lib.List[Lib.List[Unif.MixedSubstitution]] {
	return sl.Filter(func(l Lib.List[Unif.MixedSubstitution]) bool { return !l.Empty() })
}

/* Remove empty substitution from a substitution list */
func RemoveEmptySubstFromSubstAndFormList(sl []SubstAndForm) []SubstAndForm {
	res := []SubstAndForm{}
	for _, s := range sl {
		if !(s.GetSubst().Empty()) {
			res = append(res, s)
		}
	}
	return res
}

/* Get a subst list from SubstAndForm lsit */
func GetSubstListFromSubstAndFormList(l []SubstAndForm) Lib.List[Lib.List[Unif.MixedSubstitution]] {
	res := Lib.NewList[Lib.List[Unif.MixedSubstitution]]()
	for _, saf := range l {
		res.Append(saf.GetSubst())
	}
	return res
}

/* Check if a substitution is inside a list of SubstAndForm */
func ContainsSubstAndForm(s SubstAndForm, sl []SubstAndForm) bool {
	for _, v := range sl {
		if v.Equals(s) {
			return true
		}
	}
	return false
}

/* Append a substitution s to a list of substitution sl if s is not in sl */
func AppendIfNotContainsSubstAndForm(sl []SubstAndForm, s SubstAndForm) []SubstAndForm {
	if !ContainsSubstAndForm(s, sl) {
		return append(sl, s)
	} else {
		return sl
	}
}

/* Remove a substitution from a list of substitutions */
func RemoveSubstFromSubstAndFormList(i int, sl []SubstAndForm) []SubstAndForm {
	if len(sl) > 1 {
		sl[i] = sl[len(sl)-1].Copy()
		return sl[:len(sl)-1]
	} else {
		return []SubstAndForm{}
	}
}

/* Copy a list of subst and form */
func CopySubstAndFormList(sl []SubstAndForm) []SubstAndForm {
	res := make([]SubstAndForm, len(sl))
	for i := range sl {
		res[i] = sl[i].Copy()
	}
	return res
}

/* Print a list of substAndForm */
func SubstAndFormListToString(sl []SubstAndForm) string {
	var s_res string
	s_res = "{"
	for i, v := range sl {
		s_res += v.ToString()
		if i < len(sl)-1 {
			s_res += (", ")
		}
	}
	s_res += "}"
	return s_res
}

/* Merge two SubstAndForm (supposed to fit) */
func MergeSubstAndForm(s1, s2 SubstAndForm) (error, SubstAndForm) {
	if s1.IsEmpty() {
		return nil, s2
	}

	if s2.IsEmpty() {
		return nil, s1
	}

	new_subst, succeeded := Unif.MergeMixedSubstitutions(s1.GetSubst(), s2.GetSubst())

	if !succeeded {
		Glob.PrintError("MSAF", fmt.Sprintf("Error : MergeSubstitutions returns failure between : %v and %v \n", s1.ToString(), s2.ToString()))
		return errors.New("Couldn't merge two substitutions"), MakeEmptySubstAndForm()
	}

	newFormList := s1.GetForm()
	newFormList = Lib.ListAdd(newFormList, s2.GetForm().GetSlice()...)

	return nil, MakeSubstAndForm(new_subst, newFormList)
}

/* Merge a list of subst with one subst */
func MergeSubstListWithSubst(sl []SubstAndForm, subst SubstAndForm) (error, []SubstAndForm) {
	sl_res := []SubstAndForm{}

	for _, s := range sl {
		err, merged := MergeSubstAndForm(s, subst)
		if err != nil {
			return err, make([]SubstAndForm, 0)
		}
		sl_res = append(sl_res, merged)
	}

	return nil, sl_res
}
