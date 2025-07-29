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
 * This file provides:
 *   1. an interface of modular printers
 *   2. printers for multiple outputs (default one, TPTP, Rocq, etc)
 *
 * A modular printer is composed of two objects:
 *   - the PrinterAction object that defines a *function* to apply on e.g., ids, variables, everything, etc
 *     so that generic transformation of stuff can be applied. These actions can be composed (e.g., if you
 *     wish to avoid printing IDs and also sanitize your string, you can get a PrinterAction that does both
 *     by using noIdAction.Compose(sanitizeAction)). Note that the operations are not always commutative,
 *     it is your responsibility to ensure that stuff is composed in the right order.
 *
 *   - the PrinterConnective object that defines all the connectives and a printer for them. A PrinterConnective
 *     can inherit from another one, and if a connective isn't defined for it, it will search for it in its parent
 *     connective. All PrinterConnective should inherit from the default one (where everything is defined) by default.
 *
 * If you wish to implement a new printer, simply provide a PrinterAction and a PrinterConnective to it.
**/

package AST

import (
	"fmt"
	"github.com/GoelandProver/Goeland/Glob"
	"github.com/GoelandProver/Goeland/Lib"
	"unicode"
	"unicode/utf8"
)

var printer_debug Glob.Debugger

type PrinterAction struct {
	genericAction    func(string) string // Always executed
	actionOnId       func(Id) string
	actionOnBoundVar func(string, int) string
	actionOnMeta     func(string, int) string
	actionOnType     func(string) string
	actionOnTypedVar func(Lib.Pair[string, Ty]) string
}

func (p PrinterAction) Compose(oth PrinterAction) PrinterAction {
	return PrinterAction{
		genericAction: func(s string) string { return oth.genericAction(p.genericAction(s)) },
		actionOnId:    func(i Id) string { return oth.actionOnId(MakeId(i.index, p.actionOnId(i))) },
		actionOnBoundVar: func(name string, index int) string {
			return oth.actionOnBoundVar(p.actionOnBoundVar(name, index), index)
		},
		actionOnMeta: func(name string, index int) string {
			return oth.actionOnMeta(p.actionOnMeta(name, index), index)
		},
		actionOnType: func(name string) string {
			return oth.actionOnType(p.actionOnType(name))
		},
		actionOnTypedVar: func(pair Lib.Pair[string, Ty]) string {
			return oth.actionOnTypedVar(Lib.MkPair(p.actionOnTypedVar(pair), pair.Snd))
		},
	}
}

func (p PrinterAction) Str(s string) string {
	return p.genericAction(s)
}

func (p PrinterAction) StrId(i Id) string {
	return p.Str(p.actionOnId(i))
}

func (p PrinterAction) StrBound(name string, index int) string {
	return p.Str(p.actionOnBoundVar(name, index))
}

func (p PrinterAction) StrMeta(name string, index int) string {
	return p.Str(p.actionOnMeta(name, index))
}

func (p PrinterAction) StrTy(name string) string {
	return p.Str(p.actionOnType(name))
}

func (p PrinterAction) StrTyVar(pair Lib.Pair[string, Ty]) string {
	return p.Str(p.actionOnTypedVar(pair))
}

func PrinterIdentity(x string) string                         { return x }
func PrinterIdentityPair[T any](p Lib.Pair[string, T]) string { return p.Fst }
func PrinterIdentity2[T any](s string, _ T) string            { return s }

func MkPrinterAction(
	genericAction func(string) string,
	actionOnId func(Id) string,
	actionOnBoundVar func(string, int) string,
	actionOnMeta func(string, int) string,
	actionOnType func(string) string,
	actionOnTypedVar func(Lib.Pair[string, Ty]) string,
) PrinterAction {
	return PrinterAction{genericAction, actionOnId, actionOnBoundVar, actionOnMeta, actionOnType, actionOnTypedVar}
}

type Connective int

type PrinterConnective struct {
	name        string
	connectives map[Connective]string
	inherit     Lib.Option[PrinterConnective]
}

func (p *PrinterConnective) StrConn(conn Connective) string {
	var default_connective PrinterConnective
	switch connective := p.inherit.(type) {
	case Lib.None[PrinterConnective]:
		default_connective = DefaultPrinterConnectives()
		p.inherit = Lib.MkSome(default_connective)
	case Lib.Some[PrinterConnective]:
		default_connective = connective.Val
	}

	if val, ok := p.connectives[conn]; ok {
		printer_debug(
			Lib.MkLazy(func() string { return fmt.Sprintf("Found connective %d in %s as %s", conn, p.name, val) }))
		return val
	} else {
		if p.name == DefaultPrinterConnectives().name {
			Glob.Anomaly(
				"printer",
				fmt.Sprintf("Connective %d not found in default connective", conn),
			)
		}
	}

	printer_debug(Lib.MkLazy(func() string {
		return fmt.Sprintf("Connective %d not found in %s, trying in %s", conn, p.name, default_connective.name)
	}))
	return default_connective.StrConn(conn)
}

func (p PrinterConnective) SurroundQuantified(s string) string {
	return fmt.Sprintf("%s%s%s", p.StrConn(SurQuantStart), s, p.StrConn(SurQuantEnd))
}

func (p PrinterConnective) SurroundArgs(s string) string {
	if len(s) == 0 {
		return s
	}
	return fmt.Sprintf("%s%s%s", p.StrConn(SurFunctionalStart), s, p.StrConn(SurFunctionalEnd))
}

func (p PrinterConnective) SurroundChild(s string) string {
	return fmt.Sprintf("%s%s%s", p.StrConn(SurComplexChildStart), s, p.StrConn(SurComplexChildEnd))
}

type Printer struct {
	PrinterAction
	*PrinterConnective
}

func (p Printer) OnFunctionalArgs(tys, con, args string) string {
	if len(tys) == 0 {
		return args
	}
	return tys + con + args
}

func MkPrinterConnective(name string, connective_map map[Connective]string) PrinterConnective {
	return PrinterConnective{
		name:        name,
		connectives: connective_map,
		inherit:     Lib.MkNone[PrinterConnective](),
	}
}

const (
	// Formula connectives
	ConnAll Connective = iota
	ConnEx
	ConnAnd
	ConnOr
	ConnImp
	ConnEqu
	ConnNot
	ConnTop
	ConnBot

	// Type connectives
	ConnPi
	ConnMap
	ConnProd

	SepVarsForm   // separator between variables and a formula in quantifiers
	SepArgs       // separator of arguments in functionals
	SepTyArgs     // separator of type arguments in functionals
	SepArgsTyArgs // separator between type arguments and arguments in functionals
	SepTyVars     // separator between typed variables (in quantifiers)
	SepVarTy      // separator between a var and its type (in quantifiers)

	SurQuantStart // Stuff that surrounds the variables of quantifiers
	SurQuantEnd
	SurFunctionalStart // Stuff that surrounds the arguments of functionals
	SurFunctionalEnd
	SurComplexChildStart // Surrounds "complex" child of formula/type (e.g. (A * B) > C)
	SurComplexChildEnd
)

func DefaultPrinterConnectives() PrinterConnective {
	return MkPrinterConnective(
		"DefaultPrinterConnective",
		map[Connective]string{
			ConnAll: "!",
			ConnEx:  "?",
			ConnAnd: " & ",
			ConnOr:  " | ",
			ConnImp: "=>",
			ConnEqu: "<=>",
			ConnNot: "~",
			ConnTop: "$true",
			ConnBot: "$false",

			ConnPi:   "!>",
			ConnMap:  ">",
			ConnProd: "*",

			SepVarsForm:   ": ",
			SepArgs:       ", ",
			SepTyArgs:     ", ",
			SepArgsTyArgs: " ; ",
			SepTyVars:     ", ",
			SepVarTy:      ": ",

			SurQuantStart:        "[",
			SurQuantEnd:          "]",
			SurFunctionalStart:   "(",
			SurFunctionalEnd:     ")",
			SurComplexChildStart: "(",
			SurComplexChildEnd:   ")",
		},
	)
}

func RemoveSuperfluousParenthesesAction(connectives PrinterConnective) PrinterAction {
	return PrinterAction{
		genericAction: func(s string) string {
			if len(s) == 0 {
				return s
			}

			complexChildStart := connectives.StrConn(SurComplexChildStart)
			complexChildEnd := connectives.StrConn(SurComplexChildEnd)
			// Remove superfluous parentheses
			if s[:len(complexChildStart)] == complexChildStart &&
				s[len(s)-len(complexChildEnd):] == complexChildEnd {
				tentative_str := s[len(complexChildStart) : len(s)-len(complexChildEnd)]
				is_open := 0
				for i, char := range tentative_str {
					if len(complexChildStart) <= i && tentative_str[i-len(complexChildStart):i] == complexChildStart {
						is_open += 1
					}
					if len(complexChildEnd) <= i && tentative_str[i-len(complexChildEnd):i] == complexChildEnd {
						is_open -= 1
					}
					if char == ' ' && is_open == 0 {
						return s
					}
				}
				return tentative_str
			}

			return s
		},
		actionOnId:       func(i Id) string { return i.name },
		actionOnBoundVar: func(s string, index int) string { return s },
		actionOnMeta:     func(s string, index int) string { return s },
		actionOnType:     func(s string) string { return s },
		actionOnTypedVar: func(p Lib.Pair[string, Ty]) string { return p.Fst },
	}
}

var (
	printer       Printer
	PrettyPrinter Printer
	PrintIDAction PrinterAction

	QuoteID PrinterAction
)

func initPrinters() {
	printer_debug = Glob.CreateDebugger("printer")

	default_connectives := DefaultPrinterConnectives()
	printer = Printer{RemoveSuperfluousParenthesesAction(default_connectives), &default_connectives}

	prettyPrinterConnectives := MkPrinterConnective(
		"PrettyPrinterConnective",
		map[Connective]string{
			ConnAll: "∀",
			ConnEx:  "∃",
			ConnAnd: " ∧ ",
			ConnOr:  " ∨ ",
			ConnImp: "⇒",
			ConnEqu: "⇔",
			ConnNot: "¬",
			ConnTop: "⊤",
			ConnBot: "⊥",

			ConnPi:   "Π",
			ConnMap:  "→",
			ConnProd: "×",
		},
	)

	PrettyPrinter = Printer{
		RemoveSuperfluousParenthesesAction(prettyPrinterConnectives),
		&prettyPrinterConnectives,
	}

	PrintIDAction = PrinterAction{
		genericAction:    PrinterIdentity,
		actionOnId:       func(i Id) string { return fmt.Sprintf("%s_%d", i.name, i.index) },
		actionOnBoundVar: PrinterIdentity2[int],
		actionOnMeta:     PrinterIdentity2[int],
		actionOnType:     PrinterIdentity,
		actionOnTypedVar: PrinterIdentityPair[Ty],
	}

	QuoteID = PrinterAction{
		genericAction: PrinterIdentity,
		actionOnId: func(i Id) string {
			r, _ := utf8.DecodeRuneInString(i.name)
			if unicode.IsUpper(r) {
				return fmt.Sprintf("'%s'", i.name)
			}
			return i.name
		},
		actionOnBoundVar: PrinterIdentity2[int],
		actionOnMeta:     PrinterIdentity2[int],
		actionOnType:     PrinterIdentity,
		actionOnTypedVar: PrinterIdentityPair[Ty],
	}
}

func ComposePrinter(p PrinterAction) {
	printer.PrinterAction = printer.Compose(p)
}

func GetPrinter() Printer {
	return printer
}

func SetPrinter(p Printer) {
	printer = p
}
