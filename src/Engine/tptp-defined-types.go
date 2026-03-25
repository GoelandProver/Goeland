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
 * This file returns an initial context (one augmented with TPTP defined types)
**/

package Engine

import (
	"fmt"
	"github.com/GoelandProver/Goeland/Lib"
	"github.com/GoelandProver/Goeland/Parser"
)

type Context []Lib.Pair[string, Parser.PType]

var defined Lib.Set[Lib.String]
var defined_length map[string]int
var allowed_elab map[string]Lib.Option[Lib.List[Parser.PType]] // None: no restriction

func initialContext() Context {
	defined = Lib.EmptySet[Lib.String]()
	defined_length = make(map[string]int)
	allowed_elab = make(map[string]Lib.Option[Lib.List[Parser.PType]])

	tType := Parser.MkTypeConst("$tType").(Parser.PType)
	tInt := Parser.MkTypeConst("$int").(Parser.PType)
	tRat := Parser.MkTypeConst("$rat").(Parser.PType)
	tReal := Parser.MkTypeConst("$real").(Parser.PType)
	tProp := Parser.MkTypeConst("$o").(Parser.PType)

	con := []Lib.Pair[string, Parser.PType]{
		Lib.MkPair("$tType", tType),
		Lib.MkPair("$int", tType),
		Lib.MkPair("$rat", tType),
		Lib.MkPair("$real", tType),
		Lib.MkPair("$i", tType),
		Lib.MkPair("$o", tType),
	}

	mkDefined := func(name string, length int, allowed Lib.Option[Lib.List[Parser.PType]], ty Parser.PType) {
		defined = defined.Add(Lib.MkString(name))
		defined_length[name] = length
		allowed_elab[name] = allowed
		con = append(con, Lib.MkPair(name, ty))
	}

	tNumber := Parser.MkPTypeVar("number")
	binPoly := func(out Parser.PType) Parser.PType {
		return Parser.MkTypeAll(
			[]Lib.Pair[string, Parser.PAtomicType]{Lib.MkPair("number", tType.(Parser.PAtomicType))},
			Parser.MkTypeMap(
				Parser.MkTypeProd(tNumber, tNumber),
				out,
			),
		)
	}
	unPoly := func(out Parser.PType) Parser.PType {
		return Parser.MkTypeAll(
			[]Lib.Pair[string, Parser.PAtomicType]{Lib.MkPair("number", tType.(Parser.PAtomicType))},
			Parser.MkTypeMap(tNumber, out),
		)
	}

	mkDefined("$less", 2, Lib.MkSome(Lib.MkListV(tInt, tRat, tReal)), binPoly(tProp))
	mkDefined("$lesseq", 2, Lib.MkSome(Lib.MkListV(tInt, tRat, tReal)), binPoly(tProp))
	mkDefined("$greater", 2, Lib.MkSome(Lib.MkListV(tInt, tRat, tReal)), binPoly(tProp))
	mkDefined("$greatereq", 2, Lib.MkSome(Lib.MkListV(tInt, tRat, tReal)), binPoly(tProp))

	mkDefined("$sum", 2, Lib.MkSome(Lib.MkListV(tInt, tRat, tReal)), binPoly(tNumber))
	mkDefined("$difference", 2, Lib.MkSome(Lib.MkListV(tInt, tRat, tReal)), binPoly(tNumber))
	mkDefined("$product", 2, Lib.MkSome(Lib.MkListV(tInt, tRat, tReal)), binPoly(tNumber))
	mkDefined("$quotient_e", 2, Lib.MkSome(Lib.MkListV(tInt, tRat, tReal)), binPoly(tNumber))
	mkDefined("$quotient_t", 2, Lib.MkSome(Lib.MkListV(tInt, tRat, tReal)), binPoly(tNumber))
	mkDefined("$quotient_f", 2, Lib.MkSome(Lib.MkListV(tInt, tRat, tReal)), binPoly(tNumber))
	mkDefined("$remainder_e", 2, Lib.MkSome(Lib.MkListV(tInt, tRat, tReal)), binPoly(tNumber))
	mkDefined("$remainder_t", 2, Lib.MkSome(Lib.MkListV(tInt, tRat, tReal)), binPoly(tNumber))
	mkDefined("$remainder_f", 2, Lib.MkSome(Lib.MkListV(tInt, tRat, tReal)), binPoly(tNumber))
	mkDefined("$quotient", 2, Lib.MkSome(Lib.MkListV(tInt, tRat, tReal)), Parser.MkTypeAll(
		[]Lib.Pair[string, Parser.PAtomicType]{
			Lib.MkPair("number", tType.(Parser.PAtomicType)),
			Lib.MkPair("rat_or_real", tType.(Parser.PAtomicType)),
		},
		Parser.MkTypeMap(
			Parser.MkTypeProd(tNumber, tNumber),
			Parser.MkPTypeVar("rat_or_real"),
		)))

	mkDefined("$uminus", 1, Lib.MkSome(Lib.MkListV(tInt, tRat, tReal)), unPoly(tNumber))
	mkDefined("$floor", 1, Lib.MkSome(Lib.MkListV(tInt, tRat, tReal)), unPoly(tNumber))
	mkDefined("$ceiling", 1, Lib.MkSome(Lib.MkListV(tInt, tRat, tReal)), unPoly(tNumber))
	mkDefined("$truncate", 1, Lib.MkSome(Lib.MkListV(tInt, tRat, tReal)), unPoly(tNumber))
	mkDefined("$round", 1, Lib.MkSome(Lib.MkListV(tInt, tRat, tReal)), unPoly(tNumber))

	mkDefined("$is_int", 1, Lib.MkSome(Lib.MkListV(tInt, tRat, tReal)), unPoly(tProp))
	mkDefined("$is_rat", 1, Lib.MkSome(Lib.MkListV(tInt, tRat, tReal)), unPoly(tProp))

	mkDefined("$to_int", 1, Lib.MkSome(Lib.MkListV(tInt, tRat, tReal)), unPoly(tInt))
	mkDefined("$to_rat", 1, Lib.MkSome(Lib.MkListV(tInt, tRat, tReal)), unPoly(tRat))
	mkDefined("$to_real", 1, Lib.MkSome(Lib.MkListV(tInt, tRat, tReal)), unPoly(tReal))

	mkDefined(Parser.PEqSymbol, 2, Lib.MkNone[Parser.PType](), binPoly(tProp))

	debug_low_level(Lib.MkLazy(func() string {
		str := "Defined symbols:"
		for _, s := range defined.Elements().GetSlice() {
			str += fmt.Sprintf("\n- %s with %d arguments", s, defined_length[string(s)])
		}
		return str
	}))

	return con
}

func isDefined(name string) bool {
	return defined.Contains(Lib.MkString(name))
}

func isAllowed(name string, ty Parser.PType) bool {
	switch allowed := allowed_elab[name].(type) {
	case Lib.Some[Lib.List[Parser.PType]]:
		return Lib.ListMem(ty, allowed.Val)
	}
	return true
}
