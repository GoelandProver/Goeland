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
/*************************/
/* substitutions_type.go */
/*************************/
/**
* This file provides the necessary structures to manipulate sustitutions
**/

package treetypes

import (
	"fmt"
	"sort"

	"github.com/GoelandProver/Goeland/global"
	basictypes "github.com/GoelandProver/Goeland/types/basic-types"
)

/* Stores the result of the algorithm and the substitutions for each metavariable. */
type Substitutions map[basictypes.Meta]basictypes.Term

/*** Methods ***/

/* Transform a substitutin into a string */
func (s Substitutions) ToString() string {
	keys := make(basictypes.MetaList, 0, len(s))
	for k := range s {
		keys = append(keys, k)
	}
	sort.Sort(keys)

	var s_res string
	s_res = "{"
	for i, v := range keys {
		s_res += "("
		s_res += v.ToString()
		s_res += ", "
		s_res += s[v].ToString()
		s_res += ")"
		if i < len(s)-1 {
			s_res += (", ")
		}
	}
	s_res += "}"
	return s_res
}

/* Transform a substitutin into a string for proof struct */
func (s Substitutions) ToStringForProof() string {
	return s.ToString()
	// keys := make(basictypes.MetaList, 0, len(s))
	// for k := range s {
	// 	keys = append(keys, k)
	// }
	// sort.Sort(keys)

	// var s_res string
	// s_res = "{"
	// for i, v := range keys {
	// 	s_res += "<tspan x='0', dy='1.2em'>" + "("
	// 	s_res += v.ToString()
	// 	s_res += ", "
	// 	s_res += s[v].ToString()
	// 	s_res += ")" + "<tspan>"
	// 	if i < len(s)-1 {
	// 		s_res += (", ")
	// 	}
	// }
	// s_res += "}"
	// return s_res
}

/* Helper function, prints the content of a Substitutions object. */
func (s Substitutions) Print() {
	subst_string := ""
	for key, value := range s {
		subst_string += "(" + key.ToString() + ", " + value.ToString() + ") "
	}
	global.PrintDebug("Print", fmt.Sprintf("Success. %v ", subst_string))
}

/* Substitution list into string */
func SubstListToString(s []Substitutions) string {
	var s_res string
	s_res = "{"
	for i, v := range s {
		s_res += v.ToString()
		if i < len(s)-1 {
			s_res += (", ")
		}
	}
	s_res += "}"
	return s_res
}

/* Substitution list into string for proof */
func SubstListToStringForProof(s []Substitutions) string {
	var s_res string
	s_res = "{"
	for i, v := range s {
		s_res += v.ToStringForProof()
		if i < len(s)-1 {
			s_res += (", ")
		}
	}
	s_res += "}"
	return s_res
}

/* Check if the substitutin is empty */
func (s Substitutions) IsEmpty() bool {
	return len(s) == 0
}

/* Check equality between two substitutions */
func (s Substitutions) Equals(s2 Substitutions) bool {
	if len(s) != len(s2) {
		return false
	}
	for k, v := range s {
		if s2[k] == nil || !s2[k].Equals(v) {
			return false
		}
	}
	return true
}

/* Copy the current substitution */
func (s Substitutions) Copy() Substitutions {
	res := MakeEmptySubstitution()
	for k, v := range s {
		res[k.Copy().ToMeta()] = v.Copy()
	}
	return res
}

/* Copy a list of substitutions */
func CopySubstList(sl []Substitutions) []Substitutions {
	res := make([]Substitutions, len(sl))
	for i, s := range sl {
		res[i] = s.Copy()
	}
	return res
}

/* Get all the metavariables of a substitution */
func (s Substitutions) GetMeta() basictypes.MetaList {
	res := basictypes.MetaList{}
	for meta, term := range s {
		res = res.AppendIfNotContains(meta.Copy().ToMeta())
		if term.IsMeta() {
			res = res.AppendIfNotContains(term.Copy().ToMeta())
		}
	}
	return res
}

/* check if a subst is inside a list of substitutions */
func ContainsSubst(sl []Substitutions, subst Substitutions) bool {
	for _, s := range sl {
		if subst.Equals(s) {
			return true
		}
	}
	return false
}

/* Append a substitution s to a list of substitution sl if s is not in sl */
func AppendIfNotContainsSubst(sl []Substitutions, s Substitutions) []Substitutions {
	if !ContainsSubst(sl, s) {
		return append(sl, s)
	} else {
		return sl
	}
}

/*** Makers ***/
func MakeEmptySubstitution() Substitutions {
	return Substitutions{}
}

/* Returns a « failed » substitution. */
func Failure() Substitutions {
	fail := basictypes.MakeMeta(-1, "FAILURE", -1)
	return Substitutions{fail: fail}
}

/*** Helper functions ***/
/* Checks if a term has a substitution in s. */
func HasSubst(s Substitutions, m basictypes.Meta) bool {
	_, ok := s[m]
	return ok
}

/*** Occur check ***/
/* An invalid occur-check happens if the same meta-variable as the key is found in the value. */
func OccurCheckValid(key basictypes.Meta, val basictypes.Term) bool {
	if val.IsFun() && isRecursive(val, key) || key.Equals(val) {
		return false
	}
	return true
}

/* Checks if the substitution is of type (X, f(X)). */
func isRecursive(t basictypes.Term, m basictypes.Meta) bool {
	switch t := t.(type) {
	case basictypes.Fun:
		return areFuncArgsRecursive(t, m)
	case basictypes.Meta:
		return t.Equals(m)
	default:
		global.PrintDebug("IR", "Error: [[substitution.go:157]] shouldn't be attained.")
	}

	return false
}

/* Checks if any argument of the function f contains the metavariable m. */
func areFuncArgsRecursive(f basictypes.Fun, m basictypes.Meta) bool {
	for _, term := range f.GetArgs() {
		if isRecursive(term, m) {
			return true
		}
	}
	return false
}

/*** Eliminate ***/
/* Eliminate - apply each element of the subst on the entire substitution, because an element can't œappears on the rigth and and the left if a substitution */
func Eliminate(s *Substitutions) {
	if s.Equals(Failure()) {
		return
	}
	has_changed := true

	for has_changed {
		has_changed = false
		new_s := MakeEmptySubstitution()
		// For each element  (key, value) in the given substitution
		for key, value := range *s {
			if OccurCheckValid(key, value) {
				new_s = eliminateInside(key, value, (*s).Copy(), &has_changed)
			} else {
				*s = Failure()
				return
			}
			if new_s.Equals(Failure()) {
				*s = new_s.Copy()
				return
			}
		}
		*s = new_s.Copy()
	}
}

/* Eliminate inside : eliminate for a given couple (key, value) on a substitution */
func eliminateInside(key basictypes.Meta, value basictypes.Term, s Substitutions, has_changed_top *bool) Substitutions {
	has_changed := true

	for has_changed {
		has_changed = false
		s_tmp := MakeEmptySubstitution()

		for key_2, value_2 := range s { // For each element in the substitution
			switch value_2_type := value_2.(type) {
			case basictypes.Meta:
				if key.Equals(value_2_type) {
					s_tmp[key_2] = value
					has_changed = true
				} else {
					s_tmp[key_2] = value_2
				}
			case basictypes.Fun:
				new_value := basictypes.MakeFun(value_2_type.GetP(), eliminateList(key, value, value_2_type.GetArgs(), &has_changed))
				if OccurCheckValid(key_2, new_value) {
					s_tmp[key_2] = new_value
				} else {
					return Failure()
				}
			default:
				s_tmp[key_2] = value_2
			}
		}
		s = s_tmp.Copy()
		if has_changed {
			*has_changed_top = true
		}
	}
	return s
}

/* Eliminate for a list of Terms */
func eliminateList(key basictypes.Meta, value basictypes.Term, l []basictypes.Term, has_changed_top *bool) []basictypes.Term {
	has_changed := true

	for has_changed {
		has_changed = false
		list_tmp := []basictypes.Term{}
		for _, list_element := range l {
			switch lt := list_element.(type) {
			case basictypes.Meta: // If its a meta and its equals to the key te replace
				if lt.Equals(key) {
					list_tmp = append(list_tmp, value)
					has_changed = true
				} else {
					list_tmp = append(list_tmp, list_element)
				}
			case basictypes.Fun: // If its a function, reccursive call for the arguments
				list_tmp = append(list_tmp, basictypes.MakeFun(lt.GetP(), eliminateList(key, value, lt.GetArgs(), &has_changed)))
			default:
				list_tmp = append(list_tmp, list_element)
			}
		}
		l = basictypes.CopyTermList(list_tmp)
		if has_changed {
			*has_changed_top = true
		}
	}
	return l
}

/* Eliminates one of the subsitution of a pair like (X, Y) (Y, X). It will keep the first one indexed in the map. */
func EliminateMeta(subst *Substitutions) {
	meta := Substitutions{}

	for k, v := range *subst {
		v_meta := v.ToMeta()
		if !(v.IsMeta() && HasSubst(*subst, v_meta) && HasSubst(meta, v_meta) && (*subst)[v_meta].Equals(k)) {
			meta[k] = v
		}
	}

	*subst = meta
}
