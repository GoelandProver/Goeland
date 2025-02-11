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
 * This file stores various utils functions for typing.
 **/

package polymorphism

import (
	. "github.com/GoelandProver/Goeland/global"
)

type Type interface {
	Size() int
	ToString() string
}

/**
 * Converts a TypeApp to a TypeScheme.
 * If the TypeApp is not a TypeScheme, it doesn't do anything.
 **/
func typeAppToTypeScheme(ls []TypeScheme, in TypeApp) []TypeScheme {
	if typeScheme := To[TypeScheme](in); Is[TypeScheme](in) {
		return append(ls, typeScheme)
	}
	return ls
}

/**
 * Adds input TypeScheme argument String to the list.
 * Should be used on call to convert function.
 **/
func typeTToString[T Type](ls []string, in T) []string {
	return append(ls, in.ToString())
}

/**
 * Adds the size of the TypeScheme argument to the list.
 * Should be used on call to convert function.
 **/
func typeTToSize[T Type](ls []int, in T) []int {
	return append(ls, in.Size())
}

/**
 * Copies in to the list.
 * Use in convert function as a lambda.
 **/
func copyTypeApp(ls []TypeApp, in TypeApp) []TypeApp {
	return append(ls, in.Copy())
}

/**
 * Adds underlying types of the TypeApp argument to the list.
 * Should be used on call to convert function.
 **/
func typeAppToUnderlyingType(ls []TypeApp, in TypeApp) []TypeApp {
	if tc, isTc := in.(TypeCross); isTc {
		return append(ls, tc.GetAllUnderlyingTypes()...)
	} else {
		return append(ls, in)
	}
}

/**
 * Factorizes the loop needed to populate a list of elements with a new type.
 * It needs :
 *	- the original list
 *	- a transformation function, taking as input the transformed list and the current element.
 * If the current element doesn't fit the model of the transformation, you can just return
 * the list. Else, append the transformed element to the list and return it.
 **/
func convert[T any, U any](list []T, transform func([]U, T) []U) []U {
	transformedList := []U{}
	for _, element := range list {
		transformedList = transform(transformedList, element)
	}
	return transformedList
}

/** Sums a list. **/
func sum(list []int) int {
	s := 0
	for _, element := range list {
		s += element
	}
	return s
}
