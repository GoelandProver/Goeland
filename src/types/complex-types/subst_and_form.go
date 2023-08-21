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
	"errors"
	"fmt"

	treesearch "github.com/GoelandProver/Goeland/code-trees/tree-search"
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

/* Remove empty substitution from a substitution list */
func RemoveEmptySubstFromSubstList(sl []treetypes.Substitutions) []treetypes.Substitutions {
	res := []treetypes.Substitutions{}
	for _, s := range sl {
		if !(s.IsEmpty()) {
			res = append(res, s)
		}
	}
	return res
}

/* Remove empty substitution from a substitution list */
func RemoveEmptySubstFromSubstAndFormList(sl []SubstAndForm) []SubstAndForm {
	res := []SubstAndForm{}
	for _, s := range sl {
		if !(s.GetSubst().IsEmpty()) {
			res = append(res, s)
		}
	}
	return res
}

/* Get a subst list from SubstAndForm lsit */
func GetSubstListFromSubstAndFormList(l []SubstAndForm) []treetypes.Substitutions {
	res := []treetypes.Substitutions{}
	for _, saf := range l {
		res = append(res, saf.GetSubst())
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

	new_subst, _ := treesearch.MergeSubstitutions(s1.GetSubst().Copy(), s2.GetSubst().Copy())

	if new_subst.Equals(treetypes.Failure()) {
		global.PrintError("MSAF", fmt.Sprintf("Error : MergeSubstitutions returns failure between : %v and %v \n", s1.ToString(), s2.ToString()))
		return errors.New("Couldn't merge two substitutions"), MakeEmptySubstAndForm()
	}

	new_form := s1.GetForm().Copy().Merge(s2.GetForm().Copy())

	return nil, MakeSubstAndForm(new_subst, new_form)
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
