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
* This file provides the necessary structures to manipulate sustitutions
**/

package Unif

import (
	"fmt"

	"github.com/GoelandProver/Goeland/AST"
	"github.com/GoelandProver/Goeland/Glob"
	"github.com/GoelandProver/Goeland/Lib"
)

/* Stores the result of the algorithm and the substitutions for each metavariable. */
type Substitutions []Substitution

/*** Methods ***/

/* Transform a substitutin into a string */
func (s Substitutions) ToString() string {
	return "{ " + Glob.ListToString(s, ", ", "") + " }"
}

/* Transform a substitutin into a string for proof struct */
func (s Substitutions) ToStringForProof() string {
	return s.ToString()
}

/* Helper function, prints the content of a Substitutions object. */
func (s Substitutions) Print() {
	Glob.PrintDebug(
		"Print",
		Lib.MkLazy(func() string { return fmt.Sprintf("Success. %v ", s.ToString()) }),
	)
}

/* Substitution list into string */
func SubstListToString(s []Substitutions) string {
	return "{ " + Glob.ListToString(s, " ; ", "") + " }"
}

/* Substitution list into string for proof */
func SubstListToStringForProof(s []Substitutions) string {
	return SubstListToString(s)
}

/* Check if the substitutin is empty */
func (s Substitutions) IsEmpty() bool {
	return len(s) == 0
}

/* Check equality between two substitutions */
func (s Substitutions) Equals(other any) bool {
	if typed, ok := other.(Substitutions); ok {
		if len(s) != len(typed) {
			return false
		}

		for _, subst_s1 := range s {
			found := false
			i := 0

			for !found && i < len(typed) {
				if subst_s1.Key().Equals(typed[i].Key()) && subst_s1.Value().Equals(typed[i].Value()) {
					found = true
				}

				i++
			}

			if !found {
				return false
			}
		}

		return true
	}

	return false
}

/* Copy the current substitution */
func (s Substitutions) Copy() Substitutions {
	res := MakeEmptySubstitution()
	for _, v := range s {
		res = append(res, v.Copy())
	}
	return res
}

func (s *Substitutions) Set(key AST.Meta, value AST.Term) {
	found := false
	for _, subst := range *s {
		if subst.Key().Equals(key) {
			subst.Set(value)
			found = true
		}
	}
	if !found {
		*s = append(*s, Substitution{key, value})
	}
}

func (s Substitutions) Get(key AST.Meta) (AST.Term, int) {
	if key.GetIndex() != -1 {
		for i, subst := range s {
			if subst.Key().Equals(key) {
				return subst.Value(), i
			}
		}
	}
	return nil, -1
}

func (s *Substitutions) Remove(index int) {
	(*s)[index] = (*s)[len(*s)-1]
	(*s) = (*s)[:len(*s)-1]
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
func (subs Substitutions) GetMeta() Lib.List[AST.Meta] {
	res := Lib.NewList[AST.Meta]()

	for _, singleSubs := range subs {
		meta, term := singleSubs.Key(), singleSubs.Value()
		res = Lib.ListAdd(res, meta)

		if term.IsMeta() {
			res = Lib.ListAdd(res, term.ToMeta())
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

/* check if a subst is inside a list of substitutions */
func AddSubstToSubstitutionsList(sl1 []Substitutions, s Substitutions) []Substitutions {
	res := CopySubstList(sl1)
	if !ContainsSubst(res, s) {
		res = append(res, s)
	}
	return res
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

func MakeEmptySubstitutionList() []Substitutions {
	return []Substitutions{}
}

/* Returns a « failed » substitution. */
func Failure() Substitutions {
	fail := AST.MakeMeta(-1, -1, "FAILURE", -1, AST.MkTypeHint("i"))
	return Substitutions{Substitution{fail, fail}}
}

/*** Helper functions ***/
/* Checks if a term has a substitution in s. */
func HasSubst(s Substitutions, m AST.Meta) bool {
	for _, subst := range s {
		if subst.Key().Equals(m) {
			return true
		}
	}
	return false
}

/*** Occur check ***/
/* An invalid occur-check happens if the same meta-variable as the key is found in the value. */
func OccurCheckValid(key AST.Meta, val AST.Term) bool {
	if val.IsFun() && isRecursive(val, key) || key.Equals(val) {
		return false
	}
	return true
}

/* Checks if the substitution is of type (X, f(X)). */
func isRecursive(t AST.Term, m AST.Meta) bool {
	switch t := t.(type) {
	case AST.Fun:
		return areFuncArgsRecursive(t, m)
	case AST.Meta:
		return t.Equals(m)
	default:
		Glob.PrintDebug(
			"IR",
			Lib.MkLazy(func() string { return "Error: [[substitution.go:157]] shouldn't be attained." }),
		)
	}

	return false
}

/* Checks if any argument of the function f contains the metavariable m. */
func areFuncArgsRecursive(f AST.Fun, m AST.Meta) bool {
	for _, term := range f.GetArgs().GetSlice() {
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

		// For each element  (key, value) in the given substitution
		for _, t := range *s {
			key, value := t.Get()
			if OccurCheckValid(key, value) {
				*s = eliminateInside(key, value, (*s).Copy(), &has_changed)
			} else {
				*s = Failure()
			}
			if s.Equals(Failure()) {
				return
			}
		}
	}
}

/* Eliminate inside : eliminate for a given couple (key, value) on a substitution */
func eliminateInside(key AST.Meta, value AST.Term, s Substitutions, has_changed_top *bool) Substitutions {
	has_changed := true
	for has_changed {
		has_changed = false
		s_tmp := MakeEmptySubstitution()

		for _, v := range s { // For each element in the substitution
			// Update the key of the substitution
			key_2, value_2 := v.Get()

			switch value_2_type := value_2.(type) {
			case AST.Meta:

				if key.Equals(value_2_type) {
					s_tmp.Set(key_2, value)
					has_changed = true
				} else {
					s_tmp.Set(key_2, value_2)
				}

			case AST.Fun:
				new_value := AST.MakerFun(
					value_2_type.GetP(),
					eliminateList(key, value, value_2_type.GetArgs(), &has_changed),
					value_2_type.GetTypeVars(),
					value_2_type.GetTypeHint(),
				)
				if OccurCheckValid(key_2, new_value) {
					s_tmp.Set(key_2, new_value)
				} else {
					return Failure()
				}
			default:
				s_tmp.Set(key_2, value_2)
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
func eliminateList(
	key AST.Meta,
	value AST.Term,
	termList Lib.List[AST.Term],
	hasChangedTop *bool,
) Lib.List[AST.Term] {
	hasChanged := true

	for hasChanged {
		hasChanged = false
		tempList := Lib.NewList[AST.Term]()

		for _, elementList := range termList.GetSlice() {
			switch lt := elementList.(type) {
			case AST.Meta: // If its a meta and its equals to the key te replace
				if lt.Equals(key) {
					tempList.Append(value)
					hasChanged = true
				} else {
					tempList.Append(elementList)
				}
			case AST.Fun: // If its a function, reccursive call for the arguments
				tempList.Append(AST.MakerFun(
					lt.GetP(),
					eliminateList(key, value, lt.GetArgs(), &hasChanged),
					lt.GetTypeVars(),
					lt.GetTypeHint(),
				))
			default:
				tempList.Append(elementList)
			}
		}

		termList = tempList.Copy(AST.Term.Copy)

		if hasChanged {
			*hasChangedTop = true
		}
	}

	return termList
}

/* Eliminates one of the subsitution of a pair like (X, Y) (Y, X). It will keep the first one indexed in the map. */
func EliminateMeta(subst *Substitutions) {
	Glob.PrintDebug(
		"EM",
		Lib.MkLazy(func() string { return fmt.Sprintf("Eliminate Meta on %v", subst.ToString()) }),
	)
	meta := Substitutions{}

	for _, t := range *subst {
		k, v := t.Get()
		v_meta := v.ToMeta()
		v_key, index := (*subst).Get(v_meta)
		if !(v.IsMeta() && HasSubst(*subst, v_meta) && HasSubst(meta, v_meta) && (index != -1) && v_key.Equals(k)) {
			meta.Set(k, v)
		}
	}

	*subst = meta
}
