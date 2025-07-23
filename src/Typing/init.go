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
 * This file initializes the global environment (e.g., with TPTP primitives)
**/

package Typing

import (
	"github.com/GoelandProver/Goeland/AST"
	"github.com/GoelandProver/Goeland/Lib"
	"sync"
)

var global_env Env
var ari_var string

func Init() {
	global_env = Env{make(map[string]AST.Ty), sync.Mutex{}}
	ari_var = "number"

	initTPTPNativeTypes()
}

func initTPTPNativeTypes() {
	for _, ty := range AST.DefinedTPTPTypes().GetSlice() {
		AddToGlobalEnv(ty.Symbol(), AST.TType())
	}

	AddToGlobalEnv(
		AST.Id_eq.GetName(),
		AST.MkTyPi(
			Lib.MkListV("α"),
			AST.MkTyFunc(AST.MkTyProd(Lib.MkListV(AST.MkTyVar("α"), AST.MkTyVar("α"))), AST.TProp()),
		),
	)

	// 1 - Binary predicates
	recordBinaryProp("$less")
	recordBinaryProp("$lesseq")
	recordBinaryProp("$greater")
	recordBinaryProp("$greatereq")

	// 2 - Binary input arguments
	recordBinaryInArgs("$sum")
	recordBinaryInArgs("$difference")
	recordBinaryInArgs("$product")
	recordBinaryInArgs("$quotient_e")
	recordBinaryInArgs("$quotient_t")
	recordBinaryInArgs("$quotient_f")
	recordBinaryInArgs("$remainder_e")
	recordBinaryInArgs("$remainder_t")
	recordBinaryInArgs("$remainder_f")

	// 3 - $quotient
	AddToGlobalEnv("$quotient",
		AST.MkTyPi(
			Lib.MkListV(ari_var, "rat_or_real"),
			AST.MkTyFunc(
				AST.MkTyProd(Lib.MkListV(AST.MkTyVar(ari_var), AST.MkTyVar(ari_var))),
				AST.MkTyVar("rat_or_real")),
		))

	// 4 - Unary input arguments
	recordUnaryInArgs("$uminus")
	recordUnaryInArgs("$floor")
	recordUnaryInArgs("$ceiling")
	recordUnaryInArgs("$truncate")
	recordUnaryInArgs("$round")

	// 5 - Unary predicates
	recordUnaryProp("$is_int")
	recordUnaryProp("$is_rat")

	// 6 - Conversion
	recordConversion("$to_int", AST.TInt())
	recordConversion("$to_rat", AST.TRat())
	recordConversion("$to_real", AST.TReal())
}

func recordBinaryProp(name string) {
	AddToGlobalEnv(
		name,
		AST.MkTyPi(
			Lib.MkListV(ari_var),
			AST.MkTyFunc(AST.MkTyProd(Lib.MkListV(AST.MkTyVar(ari_var), AST.MkTyVar(ari_var))), AST.TProp()),
		),
	)
}

func recordBinaryInArgs(name string) {
	AddToGlobalEnv(
		name,
		AST.MkTyPi(
			Lib.MkListV(ari_var),
			AST.MkTyFunc(AST.MkTyProd(Lib.MkListV(AST.MkTyVar(ari_var), AST.MkTyVar(ari_var))), AST.MkTyVar(ari_var)),
		),
	)
}

func recordUnaryInArgs(name string) {
	AddToGlobalEnv(
		name,
		AST.MkTyPi(
			Lib.MkListV(ari_var),
			AST.MkTyFunc(AST.MkTyVar(ari_var), AST.MkTyVar(ari_var)),
		),
	)
}

func recordUnaryProp(name string) {
	AddToGlobalEnv(
		name,
		AST.MkTyPi(
			Lib.MkListV(ari_var),
			AST.MkTyFunc(AST.MkTyVar(ari_var), AST.TProp()),
		),
	)
}

func recordConversion(name string, out AST.Ty) {
	AddToGlobalEnv(
		name,
		AST.MkTyPi(
			Lib.MkListV(ari_var),
			AST.MkTyFunc(AST.MkTyVar(ari_var), out),
		),
	)
}
