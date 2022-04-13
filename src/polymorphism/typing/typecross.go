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

/******************/
/*  typecross.go  */
/******************/

/**
 * This file declares one of the basic types used for typing the prover :
 * TypeCross, a conjonction of types. It's a list of TypeApp.
 * A TypeArrow can not be a child of a conjonction in first order (no currification occurs).
 * Otherwise, the children would be of type TypeScheme.
 **/

package polymorphism

import "strings"

/**
 * A conjonction of types.
 * The UID is calculated on creation.
 * Please, use MkTypeCross() to make a new TypeCross.
 * It's used, for example, for function or predicate arguments.
 * For example, take the function + on natural numbers. It takes 2 integers as arguments :
 * +: int*int > int
 * This notation is the same as +: int > int > int (as > is an imply,
 * not(int) v not(int) v int is equivalent to not(int ^ int) v int = int * int > int).
 **/
type TypeCross struct {
	uid   uint64
	types []TypeApp
}

/* TypeScheme interface */
// Non-exported methods.
func (tc TypeCross) isScheme() {}
func (tc TypeCross) toList() []uint64 {
	return convert(convert(tc.types, typeAppToTypeScheme), typeSchemeToUint64)
}

// Exported methods.
func (tc TypeCross) ToString() string {
	return "(" + strings.Join(convert(tc.types, typeTToString[TypeApp]), " * ") + ")"
}
func (tc TypeCross) UID() uint64                { return tc.uid }
func (tc TypeCross) Equals(oth TypeScheme) bool { return oth.UID() == tc.UID() }
func (tc TypeCross) Size() int                  { return sum(convert(tc.types, typeTToSize[TypeApp])) }
func (tc TypeCross) GetPrimitives() []TypeApp   { return tc.GetAllUnderlyingTypes() }

/* TypeApp interface */
// Non-exported methods.
func (tc TypeCross) isTypeApp() {}
func (tc TypeCross) substitute(mapSubst map[TypeVar]TypeHint) TypeScheme {
	return MkTypeCross(substTypeAppList(mapSubst, tc.types)...)
}

// Exported methods.
func (tc TypeCross) ToTypeScheme() TypeScheme { return tc }

/**
 * Copies the TypeApp slice to avoid wrong modifications.
 **/
func (tc TypeCross) Copy() TypeApp {
	return MkTypeCross(convert(tc.types, copyTypeApp)...)
}

/**
 * Returns all primitive types composing this cross type.
 **/
func (tc TypeCross) GetAllUnderlyingTypes() []TypeApp {
	return convert(tc.types, typeAppToUnderlyingType)
}

/**
 * Makes a TypeCross from any number of TypeApp.
 **/
func MkTypeCross(typeSchemes ...TypeApp) TypeCross {
	tc := TypeCross{uid: 0, types: typeSchemes}
	if len(tc.toList()) > 0 {
		tc.uid = encode(tc.toList(), ETypeCross)
	}
	return tc
}
