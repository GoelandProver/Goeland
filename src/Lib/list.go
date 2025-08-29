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

package Lib

import (
	"strings"
)

/** This file defines lists and their commonly-used functions. */

type List[T any] struct {
	values []T
}

type StrictlyOrderedList[T StrictlyOrdered] struct {
	values List[T]
}

// As methods cannot specify generic arguments, we must use a function here.
func ListMap[T, U any](l List[T], f Func[T, U]) List[U] {
	newList := make([]U, len(l.values))
	for i := range l.values {
		newList[i] = f(l.values[i])
	}
	return List[U]{values: newList}
}

func MkList[T any](i int) List[T] {
	vals := make([]T, i)
	return List[T]{values: vals}
}

func MkListV[T any](sl ...T) List[T] {
	return List[T]{values: sl}
}

func NewList[T any]() List[T] {
	return MkList[T](0)
}

func (l *List[T]) Append(value ...T) {
	l.values = append(l.values, value...)
}

func (l *List[T]) Upd(i int, v T) {
	l.values[i] = v
}

func (l List[T]) Len() int {
	return len(l.values)
}

func (l List[T]) GetSlice() []T {
	return l.values
}

func (l List[T]) At(i int) T {
	return l.values[i]
}

func (l List[T]) Slice(st, ed int) List[T] {
	return List[T]{values: l.values[st:ed]}
}

func (l List[T]) Equals(cmp Func2[T, T, bool], ls0, ls1 List[T]) bool {
	if ls0.Len() != ls1.Len() {
		return false
	}

	for i := range ls0.values {
		if !cmp(ls0.At(i), ls1.At(i)) {
			return false
		}
	}

	return true
}

func ListEquals[T Comparable](ls0, ls1 List[T]) bool {
	cmp := func(x, y T) bool { return x.Equals(y) }
	return ls0.Equals(cmp, ls0, ls1)
}

func (l List[T]) ToString(
	strFunc Func[T, string],
	sep, emptyValue string,
) string {
	strArr := []string{}

	for _, element := range l.values {
		strArr = append(strArr, strFunc(element))
	}

	if len(strArr) == 0 && emptyValue != "" {
		strArr = append(strArr, emptyValue)
	}

	return strings.Join(strArr, sep)
}

func ListToString[T Stringable](l List[T], sep, emptyValue string) string {
	strFunc := func(x T) string { return x.ToString() }
	return l.ToString(strFunc, sep, emptyValue)
}

func (l List[T]) Copy(cpyFunc Func[T, T]) List[T] {
	cpy := MkList[T](l.Len())

	for i := range l.values {
		cpy.Upd(i, cpyFunc(l.At(i)))
	}

	return cpy
}

func ListCpy[U any, T Copyable[U]](ls List[T]) List[T] {
	cpy := func(x T) T { return any(x.Copy()).(T) }
	return ls.Copy(cpy)
}

func (l List[T]) Contains(x T, cmpFunc Func2[T, T, bool]) bool {
	for _, y := range l.values {
		if cmpFunc(x, y) {
			return true
		}
	}
	return false
}

func ListMem[T Comparable](x T, ls List[T]) bool {
	cmp := func(x, y T) bool { return x.Equals(y) }
	return ls.Contains(x, cmp)
}

func (l *List[T]) Add(cmpFunc Func2[T, T, bool], x ...T) {
	for _, y := range x {
		if !l.Contains(y, cmpFunc) {
			l.Append(y)
		}
	}
}

func ListAdd[T Comparable](l List[T], x ...T) List[T] {
	cmp := func(x, y T) bool { return x.Equals(y) }
	l.Add(cmp, x...)
	return l
}

func (l List[T]) Get(from, to int) []T {
	return l.values[from:to]
}

func (l List[T]) Find(pred Func[T, bool], def T) (T, bool) {
	for _, v := range l.values {
		if pred(v) {
			return v, true
		}
	}
	return def, false
}

func (l List[T]) Empty() bool {
	return l.Len() == 0
}

func (l List[T]) IndexOf(x T, cmp Func2[T, T, bool]) Option[int] {
	for i, el := range l.values {
		if cmp(x, el) {
			return MkSome(i)
		}
	}
	return MkNone[int]()
}

func ListIndexOf[T Comparable](x T, l List[T]) Option[int] {
	cmp := func(x, y T) bool { return x.Equals(y) }
	return l.IndexOf(x, cmp)
}

func (l List[T]) RemoveAt(index int) List[T] {
	new_list := NewList[T]()
	for i, el := range l.values {
		if i != index {
			new_list.Append(el)
		}
	}
	return new_list
}

func (l List[T]) Any(pred Func[T, bool]) bool {
	for _, el := range l.values {
		if pred(el) {
			return true
		}
	}
	return false
}

func (l List[T]) Filter(pred Func[T, bool]) List[T] {
	res := NewList[T]()
	for _, el := range l.values {
		if pred(el) {
			res.Append(el)
		}
	}
	return res
}

func ToStrictlyOrderedList[T StrictlyOrdered](l List[T]) StrictlyOrderedList[T] {
	return StrictlyOrderedList[T]{values: l}
}

func (l StrictlyOrderedList[T]) Len() int {
	return l.values.Len()
}

func (l StrictlyOrderedList[T]) Less(i, j int) bool {
	return l.values.At(i).Less(l.values.At(j))
}

func (l StrictlyOrderedList[T]) Swap(i, j int) {
	l.values.values[i], l.values.values[j] =
		l.values.values[j], l.values.values[i]
}

func (l StrictlyOrderedList[T]) List() List[T] {
	return l.values
}
