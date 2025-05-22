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
package Glob

// A simple set of generic Basic type.
//
// The main difference from the list is the unicity of the elements. There can be no i and j with i != j such that set[i].Equals(set[j])
//
// Instanciate with NewSet() or the sync counterpart for a synchronised version.
type Set[T Basic] struct {
	*List[T]
}

/*
Given a slice, creates a new set with that slice already set and gives its pointer.
*/
func NewSet[T Basic](slice ...T) *Set[T] {
	return &Set[T]{NewList[T](slice...)}
}

/*
Given a slice, creates a new synchronised set with that slice already set and gives its pointer.
*/
func NewSyncSet[T Basic](slice ...T) *Set[T] {
	syncSet := NewSet(slice...)
	MakeIntoSyncableRW(syncSet)

	return syncSet
}

/*
Adds all the elements at the end of the set.
*/
func (set *Set[T]) Append(elements ...T) {
	set.AppendIfNotContains(elements...)
}
