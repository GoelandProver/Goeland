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

/********************/
/*  tptp_native.go  */
/********************/

/**
 * This file declares TPTP native types and types scheme :
 *	- int, rat, real for primitives
 *	- a bunch of type schemes
 **/

package polymorphism

import (
	. "github.com/GoelandProver/Goeland/global"
)

var tInt TypeHint
var tRat TypeHint
var tReal TypeHint
var defaultType TypeHint
var defaultProp TypeHint

var intCrossInt TypeApp
var ratCrossRat TypeApp
var realCrossReal TypeApp

func InitTPTPArithmetic() {
	// Types
	tInt = MkTypeHint("int")
	tRat = MkTypeHint("rat")
	tReal = MkTypeHint("real")

	intCrossInt = MkTypeCross(tInt, tInt)
	ratCrossRat = MkTypeCross(tRat, tRat)
	realCrossReal = MkTypeCross(tReal, tReal)

	// Schemes
	// 1 - Binary predicates
	recordBinaryProp("less")
	recordBinaryProp("lesseq")
	recordBinaryProp("greater")
	recordBinaryProp("greatereq")

	// 2 - Binary input arguments
	recordBinaryInArgs("sum")
	recordBinaryInArgs("difference")
	recordBinaryInArgs("product")
	recordBinaryInArgs("quotient_e")
	recordBinaryInArgs("quotient_t")
	recordBinaryInArgs("quotient_f")
	recordBinaryInArgs("remainder_e")
	recordBinaryInArgs("remainder_t")
	recordBinaryInArgs("remainder_f")

	// 3 - $quotient
	SaveTypeScheme("quotient", ratCrossRat, tRat)
	SaveTypeScheme("quotient", realCrossReal, tReal)

	// 4 - Unary input arguments
	recordUnaryInArgs("uminus")
	recordUnaryInArgs("floor")
	recordUnaryInArgs("ceiling")
	recordUnaryInArgs("truncate")
	recordUnaryInArgs("round")

	// 5 - Unary predicates
	recordUnaryProp("is_int")
	recordUnaryProp("is_rat")

	// 6 - Conversion
	recordConversion("to_int", tInt)
	recordConversion("to_rat", tRat)
	recordConversion("to_real", tReal)
}

func recordBinaryProp(name string) {
	SaveTypeScheme(name, intCrossInt, defaultProp)
	SaveTypeScheme(name, ratCrossRat, defaultProp)
	SaveTypeScheme(name, realCrossReal, defaultProp)
}

func recordBinaryInArgs(name string) {
	SaveTypeScheme(name, intCrossInt, tInt)
	SaveTypeScheme(name, ratCrossRat, tRat)
	SaveTypeScheme(name, realCrossReal, tReal)
}

func recordUnaryInArgs(name string) {
	SaveTypeScheme(name, tInt, tInt)
	SaveTypeScheme(name, tRat, tRat)
	SaveTypeScheme(name, tReal, tReal)
}

func recordUnaryProp(name string) {
	SaveTypeScheme(name, tInt, defaultProp)
	SaveTypeScheme(name, tRat, defaultProp)
	SaveTypeScheme(name, tReal, defaultProp)
}

func recordConversion(name string, out TypeApp) {
	SaveTypeScheme(name, tInt, out)
	SaveTypeScheme(name, tRat, out)
	SaveTypeScheme(name, tReal, out)
}

func IsInt(tType TypeScheme) bool        { return tType.Equals(tInt) }
func IsRat(tType TypeScheme) bool        { return tType.Equals(tRat) }
func IsReal(tType TypeScheme) bool       { return tType.Equals(tReal) }
func DefaultType() TypeApp               { return defaultType }
func DefaultProp() TypeApp               { return defaultProp }
func DefaultFunType(len int) TypeScheme  { return defaultAppType(len, defaultType) }
func DefaultPropType(len int) TypeScheme { return defaultAppType(len, defaultProp) }

func defaultAppType(len int, out TypeApp) TypeScheme {
	if len == 0 {
		return To[TypeScheme](out)
	} else if len == 1 {
		return MkTypeArrow(defaultType, out)
	} else {
		ts := []TypeApp{}
		for i := 0; i < len; i++ {
			ts = append(ts, defaultType)
		}
		return MkTypeArrow(MkTypeCross(ts...), out)
	}
}
