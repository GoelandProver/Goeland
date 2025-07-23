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

package Core

import (
	"github.com/GoelandProver/Goeland/AST"
	"github.com/GoelandProver/Goeland/Glob"
	"github.com/GoelandProver/Goeland/Lib"
)

var debug Glob.Debugger

func InitDebugger() {
	debug = Glob.CreateDebugger("core")
}

/***************************/
/* Structure of statements */
/***************************/

type TFFAtomTyping struct {
	Literal AST.Id
	Ts      AST.TypeScheme
}

// TPTP inputs are a list of statements
type Statement struct {
	name       string
	role       FormulaRole
	form       Lib.Option[AST.Form]
	atomTyping Lib.Option[TFFAtomTyping]
}

func (s Statement) GetName() string {
	return s.name
}
func (s Statement) GetRole() FormulaRole {
	return s.role
}
func (s Statement) GetForm() Lib.Option[AST.Form] {
	return s.form
}
func (s Statement) GetAtomTyping() Lib.Option[TFFAtomTyping] {
	return s.atomTyping
}

func MakeFormStatement(s string, r FormulaRole, f AST.Form) Statement {
	return Statement{s, r, Lib.MkSome(f), Lib.MkNone[TFFAtomTyping]()}
}

func MakeTypingStatement(s string, r FormulaRole, ty TFFAtomTyping) Statement {
	return Statement{s, r, Lib.MkNone[AST.Form](), Lib.MkSome(ty)}
}

func MakeIncludeStatement(s string) Statement {
	return Statement{s, Include, Lib.MkNone[AST.Form](), Lib.MkNone[TFFAtomTyping]()}
}

// Formula roles (enumerate type)
type FormulaRole int

const (
	Axiom FormulaRole = iota
	Conjecture
	NegatedConjecture
	Type
	Unknown
	Include
)

/**********************/
/* Printing functions */
/**********************/

func (fr FormulaRole) ToString() string {
	res := ""
	switch fr {
	case Axiom:
		res = "Axiom"
	case Conjecture:
		res = "Conjecture"
	case Type:
		res = "Type"
	case NegatedConjecture:
		res = "NegatedConjecture"
	case Include:
		res = "Include"
	case Unknown:
		res = "Unknown"
	}
	return res
}

func (statement Statement) ToString() string {
	switch statement.GetRole() {
	case Include:
		return statement.GetRole().ToString() + " " + statement.GetName()
	case Axiom, Conjecture:
		str := statement.role.ToString() + " " + statement.name + " "
		switch f := statement.form.(type) {
		case Lib.Some[AST.Form]:
			return str + f.Val.ToString()
		case Lib.None[AST.Form]:
			return str + "[None]"
		}
	case Type:
		str := statement.role.ToString() + " " + statement.name + " "
		switch ty := statement.atomTyping.(type) {
		case Lib.Some[TFFAtomTyping]:
			return str + ty.Val.Literal.GetName() + ": " + ty.Val.Ts.ToString()
		case Lib.None[TFFAtomTyping]:
			return str + "[None]"
		}
	}
	return "Unknown"
}

func StatementListToString(statements []Statement) string {
	res := ""
	for i, s := range statements {
		res += s.ToString()
		if i < len(statements)-1 {
			res += ", "
		}
	}
	return res
}
