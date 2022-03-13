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

var tInt = MkTypeHint("int")
var tRat = MkTypeHint("rat")
var tReal = MkTypeHint("real")
var tProp = MkTypeHint("o")

var intCrossInt = MkTypeCross(tInt, tInt)
var ratCrossRat = MkTypeCross(tRat, tRat)
var realCrossReal = MkTypeCross(tReal, tReal)

func initTPTPTypes() {
	// Schemes
	// 1 - Binary input arguments
	recordBinaryInArgs("less")
	recordBinaryInArgs("lesseq")
	recordBinaryInArgs("greater")
	recordBinaryInArgs("greatereq")
	recordBinaryInArgs("sum")
	recordBinaryInArgs("difference")
	recordBinaryInArgs("product")
	recordBinaryInArgs("quotient_e")
	recordBinaryInArgs("quotient_t")
	recordBinaryInArgs("quotient_f")
	recordBinaryInArgs("remainder_e")
	recordBinaryInArgs("remainder_t")
	recordBinaryInArgs("remainder_f")

	// 2 - $quotient
	SaveTypeScheme("quotient", ratCrossRat, tRat)
	SaveTypeScheme("quotient", realCrossReal, tReal)

	// 3 - Unary input arguments
	recordUnaryInArgs("uminus")
	recordUnaryInArgs("floor")
	recordUnaryInArgs("ceiling")
	recordUnaryInArgs("truncate")
	recordUnaryInArgs("round")

	// 4 - Preds
	recordUnaryProp("is_int")
	recordUnaryProp("is_rat")

	// 5 - Conversion
	recordConversion("to_int", tInt)
	recordConversion("to_rat", tRat)
	recordConversion("to_real", tReal)
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
	SaveTypeScheme(name, tInt, tProp)
	SaveTypeScheme(name, tRat, tProp)
	SaveTypeScheme(name, tReal, tProp)
}

func recordConversion(name string, out TypeScheme) {
	SaveTypeScheme(name, tInt, out)
	SaveTypeScheme(name, tRat, out)
	SaveTypeScheme(name, tReal, out)
}

func IsInt(tType TypeScheme) bool { return tType.Equals(MkTypeHint("int")) }
func IsRat(tType TypeScheme) bool { return tType.Equals(MkTypeHint("rat")) }
func IsReal(tType TypeScheme) bool { return tType.Equals(MkTypeHint("real")) }