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

/** This file provides ToString functions for parsing-time forms and terms. */

package Parser

import (
	"fmt"
	"github.com/GoelandProver/Goeland/Lib"
)

func (t PVar) ToString() string {
	return fmt.Sprintf("Var(%s)", t.name)
}

func (f PFun) ToString() string {
	args := Lib.MkListV(f.arguments...)
	return fmt.Sprintf("%s(%s)", f.symbol, args.ToString(PTerm.ToString, ", ", ""))
}

func (c PConst) ToString() string {
	switch c.PConstant {
	case PTop:
		return "$true"
	case PBot:
		return "$false"
	}
	return "Const{unknown}"
}

func (p PPred) ToString() string {
	args := Lib.MkListV(p.arguments...)
	return fmt.Sprintf("%s(%s)", p.symbol, args.ToString(PTerm.ToString, ", ", ""))
}

func (u PUnary) ToString() string {
	prefix := ""
	switch u.PUnaryOp {
	case PUnaryNeg:
		prefix = "Neg"
	}
	return fmt.Sprintf("%s(%s)", prefix, u.PForm.ToString())
}

func (b PBin) ToString() string {
	infix := ""
	switch b.operator {
	case PBinaryAnd:
		infix = "&"
	case PBinaryOr:
		infix = "|"
	case PBinaryImp:
		infix = "=>"
	case PBinaryEqu:
		infix = "<=>"
	}
	return fmt.Sprintf("(%s) %s (%s)", b.left.ToString(), infix, b.right.ToString())
}

func (q PQuant) ToString() string {
	prefix := ""
	switch q.PQuantifier {
	case PQuantAll:
		prefix = "!"
	case PQuantEx:
		prefix = "?"
	}
	vars := Lib.MkListV(q.vars...)
	pairStr := func(p Lib.Pair[string, PAtomicType]) string {
		return "(" + p.Fst + ": " + p.Snd.(PType).ToString() + ")"
	}
	return fmt.Sprintf("%s [%s]: (%s)", prefix, vars.ToString(pairStr, ", ", ""), q.PForm.ToString())
}

func (v PTypeVar) ToString() string {
	return fmt.Sprintf("%s", v.name)
}

func (f PTypeFun) ToString() string {
	preVars := Lib.MkListV(f.arguments...)
	vars := Lib.ListMap(
		preVars,
		func(atom PAtomicType) PType { return atom.(PType) },
	)
	return fmt.Sprintf(
		"%s(%s)",
		f.symbol,
		vars.ToString(PType.ToString, ", ", ""),
	)
}

func (b PTypeBin) ToString() string {
	infix := ""
	switch b.op {
	case PTypeMap:
		infix = ">"
	case PTypeProd:
		infix = "*"
	}
	return fmt.Sprintf("(%s) %s (%s)", b.left.ToString(), infix, b.right.ToString())
}

func (q PTypeQuant) ToString() string {
	prefix := ""
	switch q.quant {
	case PTypeAll:
		prefix = "!>"
	}
	vars := Lib.MkListV(q.vars...)
	pairStr := func(p Lib.Pair[string, PAtomicType]) string {
		return "(" + p.Fst + ": " + p.Snd.(PType).ToString() + ")"
	}
	return fmt.Sprintf("%s [%s]: (%s)", prefix, vars.ToString(pairStr, ", ", ""), q.t.ToString())
}

func (stmt PStatement) ToString() string {
	role := ""
	switch stmt.role {
	case Axiom:
		role = "axiom"
	case Conjecture:
		role = "conjecture"
	case NegatedConjecture:
		role = "negated_conjecture"
	case Type:
		role = "type"
	case Unknown:
		role = "unknown"
	}

	content := ""
	switch f := stmt.form.(type) {
	case Lib.Some[PForm]:
		content = f.Val.ToString()
	case Lib.None[PForm]:
		switch ty := stmt.ty.(type) {
		case Lib.Some[Lib.Pair[string, PType]]:
			content = ty.Val.Fst + ": " + ty.Val.Snd.ToString()
		}
	}

	return fmt.Sprintf("statement(%s, %s, %s)", stmt.name, role, content)
}
