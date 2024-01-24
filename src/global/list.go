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

type Container[T any, U Basic[U]] interface {
	Basic[T]
	Contains(U) bool
	Append(...U) T
	AppendIfNotContains(...U) T
}

type List[T Basic[T]] []T

/*
Returns a string that represents the List.

The string will look like: "[" + list[0].toString + ", " + list[1].toString + ", " + list[2].toString + "]"
*/
func (list *List[T]) ToString() string {
	str := "["

	for _, element := range *list {
		str += element.ToString() + ", "
	}

	return str[:len(str)-2] + "]"
}

/*
Returns true if the parameter *other* is equals to the list.
If the parameter is not a List, returns false

They are equals if they are the same size and each element of a list is .Equals() to the element in the same place for the other list
*/
func (list *List[T]) Equals(other any) bool {
	if typed, ok := other.(List[T]); ok {
		if len(*list) != len(typed) {
			return false
		}

		for i := range *list {
			if !(*list)[i].Equals(typed[i]) {
				return false
			}
		}

		return true
	}

	return false
}

/*
If any element of the list is .Equals() to the parameter, returns true.
*/
func (list *List[T]) Contains(element T) bool {
	for i := range *list {
		if (*list)[i].Equals(element) {
			return true
		}
	}

	return false
}

/*
Returns a pointer pointing towards a List with all elements added at the end.

The pointer may be the same than the one on which the method was called.
*/
func (list *List[T]) Append(elements ...T) *List[T] {
	result := append(*list, elements...)
	return &result
}

/*
Returns a pointer pointing towards a List with all elements added at the end but without the elements that are already contained in the List.

The pointer may be the same than the one on which the method was called.
*/
func (list *List[T]) AppendIfNotContains(elements ...T) *List[T] {
	for _, element := range elements {
		if !list.Contains(element) {
			list = list.Append(element)
		}
	}

	return list
}

/*
Returns a shallow copy of the list.
*/
func (list *List[T]) Copy() *List[T] {
	result := &List[T]{}

	for _, element := range *list {
		result = result.Append(element)
	}

	return result
}

/*
Returns a deep copy of the list.
*/
func (list *List[T]) DeepCopy() *List[T] {
	result := &List[T]{}

	for _, element := range *list {
		result = result.Append(element.Copy())
	}

	return result
}
