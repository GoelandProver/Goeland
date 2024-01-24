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
* This file contains functions and types which describe the term's data structure
**/

package basictypes

import (
	"sort"

	. "github.com/GoelandProver/Goeland/global"
	typing "github.com/GoelandProver/Goeland/polymorphism/typing"
)

/* Term */
type TermList []Term

func (tl TermList) Len() int      { return len(tl) }
func (tl TermList) Swap(i, j int) { tl[i], tl[j] = tl[j], tl[i] }
func (tl TermList) Less(i, j int) bool {
	return (tl[i].GetIndex() < tl[j].GetIndex())
}

func MakeEmptyTermList() TermList {
	return TermList{}
}

/*** Functions ***/

/* Print a list of terms */
func (tl TermList) ToString() string {
	return ListToString(tl, ", ", "")
}

/* Get the metavariables of a formula list */
func (tl TermList) GetMetas() MetaList {
	var res MetaList
	for _, t := range tl {
		m, ok := t.(Meta)
		if ok {
			res = append(res, m)
		}
	}
	return res
}

func (tl TermList) Find(t Term) int {
	for i, v := range tl {
		if v.Equals(t) {
			return i
		}
	}
	return -1
}

/* Contains term list */
func (tl TermList) Contains(t Term) bool {
	return tl.Find(t) != -1
}

/* Append if not contains */
func (tl *TermList) AppendIfNotContains(t Term) TermList {
	if !tl.Contains(t) {
		return append(*tl, t)
	} else {
		return *tl
	}
}

/* Megre */
func (tl1 TermList) MergeTermList(tl2 TermList) TermList {
	res := tl1.Copy()
	for _, t := range tl2 {
		res = res.AppendIfNotContains(t)
	}
	return res
}

/* copy a list of terms */
func (tl TermList) Copy() TermList {
	res := MakeEmptyTermList()
	for _, t := range tl {
		if t != nil {
			res = append(res, t.Copy())
		}
	}
	return res
}

/* copy a list of var */
func copyVarList(tl []Var) []Var {
	res := []Var{}
	for _, t := range tl {
		res = append(res, t.Copy().(Var))
	}
	return res
}

func copyTypeVarList(tv []typing.TypeVar) []typing.TypeVar {
	res := []typing.TypeVar{}
	for _, t := range tv {
		res = append(res, t.Copy().(typing.TypeVar))
	}
	return res
}

/* check if two lists of terms are equals */
func (tl1 TermList) Equals(tl2 TermList) bool {
	if len(tl1) != len(tl2) {
		return false
	}
	for i := range tl1 {
		if tl2[i] != nil && !tl2[i].Equals((tl1)[i]) {
			return false
		}
	}
	return true
}

func (tl1 TermList) EqualsWithoutOrder(tl2 TermList) bool {
	if len(tl1) != len(tl2) {
		return false
	}

	sorted_tl1 := tl1.Copy()
	sort.Sort(sorted_tl1)

	sorted_tl2 := tl2.Copy()
	sort.Sort(sorted_tl2)

	for i := range sorted_tl1 {
		if !sorted_tl2[i].Equals(sorted_tl1[i]) {
			return false
		}
	}
	return true
}

/* check if two lists of var are equals */
func AreEqualsVarList(tl1, tl2 []Var) bool {
	if len(tl1) != len(tl2) {
		return false
	}
	for i := range tl1 {
		if !tl2[i].Equals(tl1[i]) {
			return false
		}
	}
	return true
}

/* Replace the first occurence of a term in a list by another */
/*
* Pourquoi seulement la première occurrence ?
* TODO : la fonction les remplace TOUTES
**/
func (tl TermList) replaceFirstOccurrenceTermList(old_term, new_term Term) TermList {
	res := tl.Copy()
	for i := range tl {
		// Si le terme a bien été modifié
		modifed_term := res[i].ReplaceSubTermBy(old_term, new_term)
		if !tl[i].Equals(modifed_term) {
			res[i] = modifed_term
			return res
		}
	}
	return res
}

func (tl TermList) ToMappableStringSlice() []MappableString {
	forms := []MappableString{}

	for _, form := range tl {
		forms = append(forms, form.(MappableString))
	}

	return forms
}

func AreEqualsTypeVarList(tv1, tv2 []typing.TypeVar) bool {
	return ComparableList[typing.TypeVar](tv1).Equals(tv2)
}
