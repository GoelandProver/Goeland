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

package AST

import (
	"sort"

	"github.com/GoelandProver/Goeland/Lib"
)

func GetMetasOfList(tl Lib.List[Term]) Lib.List[Meta] {
	res := Lib.NewList[Meta]()

	for _, term := range tl.GetSlice() {
		if typed, ok := term.(Meta); ok {
			res = Lib.ListAdd(res, typed)
		}
	}

	return res
}

/*
Replace the first occurence of a term by another in the list
*/
func replaceFirstOccurrenceTermList(
	tl Lib.List[Term],
	replaceThis, withThis Term,
) Lib.List[Term] {
	res := Lib.MkList[Term](tl.Len())
	updated := false

	for i := range tl.GetSlice() {
		candidate := tl.At(i)

		// FIXME: should [res.At(i)] be copied? I don't think so but we'll see.
		modifiedTerm := candidate.ReplaceSubTermBy(replaceThis, withThis)

		if !tl.At(i).Equals(modifiedTerm) && !updated {
			updated = true
			candidate = modifiedTerm
		}

		res.Upd(i, candidate)
	}

	return res
}

/*
Replace all occurences of a term by another in the list
*/
func ReplaceOccurrence(
	tl Lib.List[Term],
	replaceThis, withThis Term,
) Lib.List[Term] {
	res := Lib.MkList[Term](tl.Len())

	for i := range tl.GetSlice() {
		// FIXME: should [res.At(i)] be copied? I don't think so but we'll see.
		trm := tl.At(i).ReplaceSubTermBy(replaceThis, withThis)
		res.Upd(i, trm)
	}

	return res
}

func EqualsWithoutOrder(tl, other Lib.List[Term]) bool {
	if tl.Len() != other.Len() {
		return false
	}

	tlSorted := Lib.ToStrictlyOrderedList(tl.Copy(Term.Copy))
	sort.Sort(tlSorted)

	otherSorted := Lib.ToStrictlyOrderedList(other.Copy(Term.Copy))
	sort.Sort(otherSorted)

	return Lib.ListEquals(tlSorted.List(), otherSorted.List())
}

func AreEqualsTypeVarList(tv1, tv2 []TypeVar) bool {
	return Lib.ComparableList[TypeVar](tv1).Equals(tv2)
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

func copyTypeVarList(tv []TypeVar) []TypeVar {
	res := []TypeVar{}
	for _, t := range tv {
		res = append(res, t.Copy().(TypeVar))
	}
	return res
}
