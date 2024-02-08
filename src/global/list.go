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

type Container[T any, U Basic] interface {
	Basic
	RWSyncable
	Contains(U) bool
	Append(...U) T
	AppendIfNotContains(...U) T
}

// A simple list of generic Basic type.
//
// Instanciate with NewList(), NewListWithSlice() or their sync counterparts for a synchronised version.
type List[T Basic] struct {
	*RWSynchroniser
	values []T
}

/*
Creates a new list and gives its pointer.
*/
func NewList[T Basic]() *List[T] {
	return NewListWithSlice([]T{})
}

/*
Creates a new synchronised list and gives its pointer.
*/
func NewSyncList[T Basic]() *List[T] {
	return NewSyncListWithSlice([]T{})
}

/*
Given a slice, creates a new list with that slice already set and gives its pointer.
*/
func NewListWithSlice[T Basic](slice []T) *List[T] {
	return &List[T]{NewRWSynchroniser(), slice}
}

/*
Given a slice, creates a new synchronised list with that slice already set and gives its pointer.
*/
func NewSyncListWithSlice[T Basic](slice []T) *List[T] {
	syncList := NewListWithSlice(slice)
	MakeIntoSyncableRW(syncList)

	return syncList
}

/*
Returns the number of elements in the list.
*/
func (list *List[T]) Length() int {
	list.doAtStartR()
	defer list.doAtEndR()

	return len(list.values)
}

/*
Returns the i-th element of the list.
*/
func (list *List[T]) Get(i int) T {
	list.doAtStartR()
	defer list.doAtEndR()

	return list.values[i]
}

/*
Sets the i-th element of the list to the given value.
*/
func (list *List[T]) Set(i int, value T) {
	list.doAtStart()
	defer list.doAtEnd()

	list.values[i] = value
}

/*
Removes the i-th element of the list.
*/
func (list *List[T]) Remove(i int) {
	list.doAtStart()
	defer list.doAtEnd()

	list.values = append(list.values[:i], list.values[i+1:]...)
}

/*
Removes all elements of the list that are equal to the passed element.
*/
func (list *List[T]) RemoveAll(toRemove T) {
	list.doAtStart()
	defer list.doAtEnd()

	for i, value := range list.values {
		if value.Equals(toRemove) {
			list.Remove(i)
			i--
		}
	}
}

/*
Removes every element of the list.
*/
func (list *List[T]) Clear() {
	list.doAtStart()
	defer list.doAtEnd()

	for list.Length() > 0 {
		list.Remove(0)
	}
}

/*
Returns a string that represents the List.

The string will look like: "[" + list[0].ToString() + ", " + list[1].ToString() + ", " + list[2].ToString() + "]"
*/
func (list *List[T]) ToString() string {
	list.doAtStartR()
	defer list.doAtEndR()

	str := "["

	for _, element := range list.values {
		str += element.ToString() + ", "
	}

	if list.Length() > 0 {
		return str[:len(str)-2] + "]"
	} else {
		return "[]"
	}

}

/*
Returns true if the parameter *other* is equals to the list.
If the parameter is not a List, returns false

They are equals if they are the same size and each element of a list is .Equals() to the element in the same place for the other list
*/
func (list *List[T]) Equals(other any) bool {
	list.doAtStartR()
	defer list.doAtEndR()

	if typed, ok := other.(*List[T]); ok {
		if len(list.values) != len(typed.values) {
			return false
		}

		for i := range list.values {
			if !(list.values)[i].Equals(typed.values[i]) {
				return false
			}
		}

		return true
	}

	return false
}

/*
If any element of the list is equal to the parameter, returns true.
*/
func (list *List[T]) Contains(element T) bool {
	list.doAtStartR()
	defer list.doAtEndR()

	_, contains := list.GetIndexOf(element)
	return contains
}

/*
If every element of the parameter list is contained in the list, returns true.
*/
func (list *List[T]) ContainsAll(elements ...T) bool {
	list.doAtStartR()
	defer list.doAtEndR()

	for _, element := range elements {
		if !list.Contains(element) {
			return false
		}
	}

	return true
}

/*
If any element of the list is equal to the parameter, returns the index and true, otherwise, return -1 and false.
*/
func (list *List[T]) GetIndexOf(element T) (int, bool) {
	list.doAtStartR()
	defer list.doAtEndR()

	for i := range list.values {
		if (list.values)[i].Equals(element) {
			return i, true
		}
	}

	return -1, false
}

/*
Adds all the elements at the end of the list.
*/
func (list *List[T]) Append(elements ...T) {
	list.doAtStart()
	defer list.doAtEnd()

	list.values = append(list.values, elements...)
}

/*
Adds all the elements not already contained in the list at the end of the list.
*/
func (list *List[T]) AppendIfNotContains(elements ...T) {
	list.doAtStart()
	defer list.doAtEnd()

	for _, element := range elements {
		if !list.Contains(element) {
			list.Append(element)
		}
	}
}

/*
Returns a shallow copy of the list.
*/
func (list *List[T]) Copy() *List[T] {
	list.doAtStartR()
	defer list.doAtEndR()

	result := NewList[T]()

	for _, element := range list.values {
		result.Append(element)
	}

	return result
}

/*
Returns the internal slice of the list.
*/
func (list *List[T]) AsSlice() []T {
	list.doAtStartR()
	defer list.doAtEndR()

	return list.values
}
