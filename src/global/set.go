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
package global

// A simple set of generic Basic type.
//
// The main difference from the list is the unicity of the elements. There can be no i and j with i != j such that set[i].Equals(set[j])
//
// Instanciate with NewSet(), NewSetWithSlice() or their sync counterparts for a synchronised version.
type Set[T Basic] struct {
	*RWSynchroniser
	values []T
}

/*
Creates a new set and gives its pointer.
*/
func NewSet[T Basic]() *Set[T] {
	return NewSetWithSlice([]T{})
}

/*
Creates a new synchronised set and gives its pointer.
*/
func NewSyncSet[T Basic]() *Set[T] {
	return NewSyncSetWithSlice([]T{})
}

/*
Given a slice, creates a new set with that slice already set and gives its pointer.
*/
func NewSetWithSlice[T Basic](slice []T) *Set[T] {
	return &Set[T]{NewRWSynchroniser(), slice}
}

/*
Given a slice, creates a new synchronised set with that slice already set and gives its pointer.
*/
func NewSyncSetWithSlice[T Basic](slice []T) *Set[T] {
	syncSet := NewSetWithSlice(slice)
	MakeIntoSyncableRW(syncSet)

	return syncSet
}

/*
Returns the number of elements in the set.
*/
func (set *Set[T]) Length() int {
	set.doAtStartR()
	defer set.doAtEndR()

	return set.length()
}

func (set *Set[T]) length() int {
	return len(set.values)
}

/*
Returns the i-th element of the set.
*/
func (set *Set[T]) Get(i int) T {
	set.doAtStartR()
	defer set.doAtEndR()

	return set.values[i]
}

/*
Sets the i-th element of the set to the given value.
*/
func (set *Set[T]) Set(i int, value T) {
	set.doAtStart()
	defer set.doAtEnd()

	set.values[i] = value
}

/*
Removes the i-th element of the set.
*/
func (set *Set[T]) Remove(i int) {
	set.doAtStart()
	defer set.doAtEnd()

	set.remove(i)
}

func (set *Set[T]) remove(i int) {
	set.values = append(set.values[:i], set.values[i+1:]...)
}

/*
Removes all elements of the set that are equal to the passed element.
*/
func (set *Set[T]) RemoveAll(toRemove T) {
	set.doAtStart()
	defer set.doAtEnd()

	for i, value := range set.values {
		if value.Equals(toRemove) {
			set.remove(i)
			i--
		}
	}
}

/*
Removes every element of the set.
*/
func (set *Set[T]) Clear() {
	set.doAtStart()
	defer set.doAtEnd()

	set.values = []T{}
}

/*
Returns a string that represents the Set.

The string will look like: "[" + set[0].ToString() + ", " + set[1].ToString() + ", " + set[2].ToString() + "]"
*/
func (set *Set[T]) ToString() string {
	set.doAtStartR()
	defer set.doAtEndR()

	str := "["

	for _, element := range set.values {
		str += element.ToString() + ", "
	}

	if set.length() > 0 {
		return str[:len(str)-2] + "]"
	} else {
		return "[]"
	}

}

/*
Returns true if the parameter *other* is equals to the set.
If the parameter is not a Set, returns false

They are equals if they are the same size and each element of a set is .Equals() to the element in the same place for the other set
*/
func (set *Set[T]) Equals(other any) bool {
	set.doAtStartR()
	defer set.doAtEndR()

	if typed, ok := other.(*Set[T]); ok {
		if len(set.values) != len(typed.values) {
			return false
		}

		for i := range set.values {
			if !(set.values)[i].Equals(typed.values[i]) {
				return false
			}
		}

		return true
	}

	return false
}

/*
If any element of the set is equal to the parameter, returns true.
*/
func (set *Set[T]) Contains(element T) bool {
	set.doAtStartR()
	defer set.doAtEndR()

	return set.contains(element)
}

func (set *Set[T]) contains(element T) bool {
	_, contains := set.getIndexOf(element)
	return contains
}

/*
If every element of the parameter set is contained in the set, returns true.
*/
func (set *Set[T]) ContainsAll(elements ...T) bool {
	set.doAtStartR()
	defer set.doAtEndR()

	for _, element := range elements {
		if !set.contains(element) {
			return false
		}
	}

	return true
}

/*
If any element of the set is equal to the parameter, returns the index and true, otherwise, return -1 and false.
*/
func (set *Set[T]) GetIndexOf(element T) (int, bool) {
	set.doAtStartR()
	defer set.doAtEndR()

	return set.getIndexOf(element)
}

func (set *Set[T]) getIndexOf(element T) (int, bool) {
	for i := range set.values {
		if (set.values)[i].Equals(element) {
			return i, true
		}
	}

	return -1, false
}

/*
Adds all the elements at the end of the set.
*/
func (set *Set[T]) Append(elements ...T) {
	set.doAtStart()
	defer set.doAtEnd()

	for _, element := range elements {
		if !set.contains(element) {
			set.append(element)
		}
	}
}

func (set *Set[T]) append(elements ...T) {
	set.values = append(set.values, elements...)
}

/*
Returns a shallow copy of the set.
*/
func (set *Set[T]) Copy() *Set[T] {
	set.doAtStartR()
	defer set.doAtEndR()

	result := NewSet[T]()

	for _, element := range set.values {
		result.append(element)
	}

	return result
}

/*
Returns an iterable element representing the set to use in for loops.
*/
func (set *Set[T]) Iterator() []T {
	set.doAtStartR()
	defer set.doAtEndR()

	return set.values
}
