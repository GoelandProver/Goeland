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
 * This file declares TPTP native types and types scheme :
 *	- int, rat, real for primitives
 *	- a bunch of type schemes
 **/

package AST

import (
	"github.com/GoelandProver/Goeland/Lib"
)

var tType Ty

var tInt Ty
var tRat Ty
var tReal Ty

var tIndividual Ty
var tProp Ty

func initTPTPNativeTypes() {
	tType = MkTyConst("$tType")

	tInt = MkTyConst("$int")
	tRat = MkTyConst("$rat")
	tReal = MkTyConst("$real")

	tIndividual = MkTyConst("$i")
	tProp = MkTyConst("$o")
}

func TType() Ty {
	return tType
}

func TInt() Ty {
	return tInt
}

func TRat() Ty {
	return tRat
}

func TReal() Ty {
	return tReal
}

func TIndividual() Ty {
	return tIndividual
}

func TProp() Ty {
	return tProp
}

func IsTType(ty Ty) bool {
	return ty.Equals(tType)
}

func DefinedTPTPTypes() Lib.List[TyConstr] {
	return Lib.ListMap(
		Lib.MkListV(tType, tInt, tRat, tReal, tIndividual, tProp),
		func(ty Ty) TyConstr { return ty.(TyConstr) },
	)
}
