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
 * This file declares one of the basic types used for typing the prover :
 * TypeArrow, the -> operator. It's implemented as an input scheme (TypeApp)
 * and output arguments (array of TypeScheme).
 **/

package polymorphism

import (
	"fmt"
	"strings"

	. "github.com/GoelandProver/Goeland/global"
)

/**
 * Type consisting of two TypeSchemes : the in-arguments parameter(s) and the out parameter.
 * For example, if a function f takes to parameters of type int, and returns an int, it
 * will be typed as f : (int * int) -> int
 * TypeCross has higher precedence than TypeArrow.
 **/
type TypeArrow struct {
	left  TypeApp
	right ComparableList[TypeApp]
}

/* TypeScheme interface */
// Unexported methods.
func (ta TypeArrow) isScheme() {}
func (ta TypeArrow) toMappedString(subst map[string]string) string {
	mappedString := []string{To[TypeScheme](ta.left).toMappedString(subst)}
	for _, typeScheme := range convert(ta.right, typeAppToTypeScheme) {
		mappedString = append(mappedString, typeScheme.toMappedString(subst))
	}
	return "(" + strings.Join(mappedString, " > ") + ")"
}

/* TypeArrow methods */
func (ta TypeArrow) substitute(mapSubst map[TypeVar]string) TypeScheme {
	return MkTypeArrow(ta.left.substitute(mapSubst).(TypeApp), substTypeAppList(mapSubst, ta.right)...)
}
func (ta TypeArrow) instanciate(mapSubst map[TypeVar]TypeApp) TypeScheme {
	return MkTypeArrow(ta.left.instanciate(mapSubst), instanciateList(mapSubst, ta.right)...)
}

// Exported methods.
/**
 * Returns a string of a TypeArrow: (type1 > type2 > ... > typeN).
 **/
func (ta TypeArrow) ToString() string {
	list := []string{ta.left.ToString()}
	list = append(list, convert(ta.right, typeTToString[TypeApp])...)
	return "(" + strings.Join(list, " -> ") + ")"
}

func (ta TypeArrow) Equals(oth interface{}) bool {
	if !Is[TypeArrow](oth) {
		return false
	}

	othTA := To[TypeArrow](oth)
	return ((ta.left == nil && othTA.left == nil) || ta.left.Equals(othTA.left)) && ta.right.Equals(othTA.right)
}

func (ta TypeArrow) Size() int {
	return ta.left.Size() + sum(convert(ta.right, typeTToSize[TypeApp]))
}

func (ta TypeArrow) GetPrimitives() []TypeApp {
	typeApp := []TypeApp{}
	typeApp = typeAppToUnderlyingType(typeApp, ta.left)
	return append(typeApp, convert(ta.right, typeAppToUnderlyingType)...)
}

/* Makes a TypeArrow from two TypeSchemes */
func MkTypeArrow(left TypeApp, typeApps ...TypeApp) TypeArrow {
	if len(typeApps) < 1 {
		PrintDebug("MKTA", "There should be at least one out type in a TypeArrow.")
		return TypeArrow{}
	}
	ta := TypeArrow{left: left, right: make(ComparableList[TypeApp], len(typeApps))}
	copy(ta.right, typeApps)
	return ta
}

/* Gets the out type of an arrow type scheme */
func GetOutType(typeScheme TypeScheme) TypeApp {
	switch t := typeScheme.(type) {
	case TypeArrow:
		// Returns the out type of the last arrow.
		return GetOutType(To[TypeScheme](t.right[len(t.right)-1]))
	case QuantifiedType:
		vars := make(map[TypeVar]string)
		for i, var_ := range t.vars {
			vars[MkTypeVar(fmt.Sprintf("*_%d", i))] = var_.ToString()
		}

		if Is[TypeArrow](t.scheme) {
			return GetOutType(To[TypeArrow](t.scheme).substitute(vars))
		} else {
			return GetOutType(To[TypeApp](t.scheme).substitute(vars))
		}
	// typeScheme may be a TypeHint if it comes from a constant.
	case TypeHint:
		return t
	// Everything else is a TypeApp anyways
	default:
		return t.(TypeApp)
	}
}

/* Gets the input type of an arrow type scheme */
func GetInputType(typeScheme TypeScheme) ComparableList[TypeApp] {
	switch t := typeScheme.(type) {
	case QuantifiedType:
		return GetInputType(t.scheme)
	case TypeArrow:
		typeArrow := To[TypeArrow](typeScheme)
		list := ComparableList[TypeApp]{typeArrow.left}
		list = append(list, typeArrow.right[:len(typeArrow.right)-1]...)
		return list
	case TypeApp:
		return []TypeApp{t}
	}
	return nil
}
