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

	"github.com/GoelandProver/Goeland/global"
	typing "github.com/GoelandProver/Goeland/polymorphism/typing"
)

/* Term */
type TermList struct {
	*global.List[Term]
}

func NewTermList(slice ...Term) *TermList {
	return &TermList{global.NewList[Term](slice...)}
}

func (tl *TermList) Less(i, j int) bool {
	return (tl.Get(i).GetIndex() < tl.Get(j).GetIndex())
}

func (tl *TermList) GetMetas() *MetaList {
	res := NewMetaList()

	for _, term := range tl.Slice() {
		if typed, ok := term.(Meta); ok {
			res.AppendIfNotContains(typed)
		}
	}

	return res
}

func (tl *TermList) Copy() *TermList {
	return &TermList{tl.List.Copy()}
}

/*
Replace the first occurence of a term by another in the list
*/
func (tl *TermList) replaceFirstOccurrenceTermList(replaceThis, withThis Term) *TermList {
	res := tl.Copy()

	for i := range tl.Slice() {
		modifiedTerm := res.Get(i).ReplaceSubTermBy(replaceThis, withThis)

		if !tl.Get(i).Equals(modifiedTerm) {
			res.Set(i, modifiedTerm)
			return res
		}
	}

	return res
}

/*
Replace all occurences of a term by another in the list
*/
func (tl *TermList) replaceOccurrence(replaceThis, withThis Term) *TermList {
	res := tl.Copy()

	for i := range tl.Slice() {
		modifiedTerm := res.Get(i).ReplaceSubTermBy(replaceThis, withThis)

		if !tl.Get(i).Equals(modifiedTerm) {
			res.Set(i, modifiedTerm)
		}
	}

	return res
}

func (tl *TermList) ToMappableStringSlice() []MappableString {
	forms := []MappableString{}

	for _, form := range tl.Slice() {
		forms = append(forms, form.(MappableString))
	}

	return forms
}

func (tl *TermList) Equals(other any) bool {
	if typed, ok := other.(*TermList); ok {
		return tl.List.Equals(typed.List)
	}

	return false
}

func (tl *TermList) EqualsWithoutOrder(other *TermList) bool {
	if tl.Len() != other.Len() {
		return false
	}

	tlSorted := tl.Copy()
	sort.Sort(tlSorted)

	otherSorted := other.Copy()
	sort.Sort(otherSorted)

	for i := range tlSorted.Slice() {
		if !otherSorted.Get(i).Equals(tlSorted.Get(i)) {
			return false
		}
	}

	return true
}

func AreEqualsTypeVarList(tv1, tv2 []typing.TypeVar) bool {
	return global.ComparableList[typing.TypeVar](tv1).Equals(tv2)
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
