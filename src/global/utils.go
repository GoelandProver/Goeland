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
* This file contains some useful functions.
**/

package global

import (
	"strings"
	"unicode"
)

type Comparable interface {
	Equals(any) bool
}

func AppendIfNotContains[T Comparable](slice []T, elements ...T) []T {
	for _, element := range elements {
		if !Contains(slice, element) {
			slice = append(slice, element)
		}
	}

	return slice
}

func Contains[T Comparable](slice []T, element T) bool {
	for _, el := range slice {
		if el.Equals(element) {
			return true
		}
	}

	return false
}

type ComparableList[T Comparable] []T

func (cpbl ComparableList[T]) Equals(oth ComparableList[T]) bool {
	if len(cpbl) != len(oth) {
		return false
	}

	for i := range cpbl {
		if !cpbl[i].Equals(oth[i]) {
			return false
		}
	}
	return true
}

func (cpbl ComparableList[T]) Contains(element T) bool {
	for i := range cpbl {
		if cpbl[i].Equals(element) {
			return true
		}
	}
	return false
}

func Find[T Comparable](cpbl ComparableList[T], element T) int64 {
	for i, el := range cpbl {
		if el.Equals(element) {
			return int64(i)
		}
	}
	return -1
}

type Stringable interface {
	ToString() string
}

func ListToString[T Stringable](sgbl []T, sep, emptyValue string) string {
	strArr := []string{}

	for _, element := range sgbl {
		strArr = append(strArr, element.ToString())
	}

	if len(strArr) == 0 && emptyValue != "" {
		strArr = append(strArr, emptyValue)
	}

	return strings.Join(strArr, sep)
}

func Is[T any, U any](obj U) bool {
	_, isT := any(obj).(T)
	return isT
}

func To[T any, U any](obj U) T {
	return any(obj).(T)
}

func MapTo[T any, U any](input []T, fn func(int, T) U) []U {
	output := []U{}
	for i, element := range input {
		output = append(output, fn(i, element))
	}
	return output
}

func ConvertList[T any, U any](input []T) []U {
	return MapTo[T, U](input, func(_ int, element T) U { return any(element).(U) })
}

type Copyable[T any] interface {
	Copy() T
}

type Basic interface {
	Stringable
	Comparable
	// ILL TODO : Make Basic implement the Copyable interface (all interfaces that require a copy should have another name for such copy)
}

func ToUpperCaseFirstLetter(s string) string {
	switch len(s) {
	case 0:
		return s
	case 1:
		return strings.ToUpper(s)
	default:
		s_bytes := []byte(s)
		s_bytes[0] = byte(unicode.ToUpper(rune(s[0])))
		return string(s_bytes)
	}
}
