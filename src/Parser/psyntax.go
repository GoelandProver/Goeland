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

/** This file provides parsing-time terms and formulas. */

package Parser

import (
	"github.com/GoelandProver/Goeland/Lib"
)

// TPTP TFF types at parsing time:
//   A  ::=  X | f (A1, ..., An)     (atomic types)
//   P  ::=  A | P * A               (xprod types)
//   M  ::=  P -> A                  (mapping types)
//   B  ::=  Pi (x1 : t1, ..., xn : tn). (A | M | B) (quantified types)

type PAtomicType interface {
	isPAtomicType()
}

type PType interface {
	isPType()
	ToString() string
}

type PTypeVar struct {
	name string
}

func MkPTypeVar(name string) PType { return PTypeVar{name} }
func (v PTypeVar) Name() string    { return v.name }

type PTypeFun struct {
	symbol    string
	arguments []PAtomicType
}

func MkPTypeFun(symbol string, args []PAtomicType) PType { return PTypeFun{symbol, args} }

func (f PTypeFun) Symbol() string      { return f.symbol }
func (f PTypeFun) Args() []PAtomicType { return f.arguments }

func (PTypeVar) isPAtomicType() {}
func (PTypeVar) isPType()       {}
func (PTypeFun) isPAtomicType() {}
func (PTypeFun) isPType()       {}

func MkTypeConst(symbol string) PAtomicType {
	return PTypeFun{symbol, []PAtomicType{}}
}

// Default TPTP-defined atomic type $i
func MkDefPAtomicType() PAtomicType {
	return MkTypeConst("$i")
}

type PTypeBinOp int

const (
	PTypeProd PTypeBinOp = iota
	PTypeMap
)

type PTypeBin struct {
	op    PTypeBinOp
	left  PType
	right PType
}

func (b PTypeBin) Operator() PTypeBinOp { return b.op }
func (b PTypeBin) Left() PType          { return b.left }
func (b PTypeBin) Right() PType         { return b.right }

type PTypeQuantifier int

const (
	PTypeAll PTypeQuantifier = iota
)

type PTypeQuant struct {
	quant PTypeQuantifier
	vars  []Lib.Pair[string, PAtomicType]
	t     PType
}

func (q PTypeQuant) Quant() PTypeQuantifier                { return q.quant }
func (q PTypeQuant) Vars() []Lib.Pair[string, PAtomicType] { return q.vars }
func (q PTypeQuant) Ty() PType                             { return q.t }

func (PTypeBin) isPType()   {}
func (PTypeQuant) isPType() {}

func MkTypeAll(vars []Lib.Pair[string, PAtomicType], t PType) PType {
	return PTypeQuant{PTypeAll, vars, t}
}

func MkTypeMap(left, right PType) PType {
	return PTypeBin{PTypeMap, left, right}
}

func MkTypeProd(left, right PType) PType {
	return PTypeBin{PTypeProd, left, right}
}

// TPTP FOL terms at parsing time:
//   t  ::=  x | f(t1, ..., tn)   where x is a variable and f is a function symbol.

type PTerm interface {
	isPTerm()
	ToString() string
}

type PFun struct {
	symbol      string
	arguments   []PTerm
	definedType Lib.Option[PTypeFun]
}

func (f PFun) Symbol() string                    { return f.symbol }
func (f PFun) Args() []PTerm                     { return f.arguments }
func (f PFun) DefinedType() Lib.Option[PTypeFun] { return f.definedType }

type PVar struct {
	name string
}

func (v PVar) Name() string { return v.name }

func (PFun) isPTerm() {}
func (PVar) isPTerm() {}

func MkFunConst(symbol string) PTerm {
	return PFun{symbol, []PTerm{}, Lib.MkNone[PTypeFun]()}
}

func MkDefinedConst(symbol string, definedType PTypeFun) PTerm {
	return PFun{symbol, []PTerm{}, Lib.MkSome(definedType)}
}

// TPTP FOL formulas at parsing time:
//   F, G  ::=  P(t1, ..., tn) | ~A | A /\ B | A \/ B | A => B | A <= B | A <=> B | A <~> B |
//              A ~\/ B | A ~/\ B | forall [x1 ... xn] : A | exists [x1 ... xn] : A

type PUnaryOp int
type PBinOp int
type PQuantifier int
type PConstant int

const (
	PUnaryNeg PUnaryOp = iota
)

const (
	PBinaryOr PBinOp = iota
	PBinaryAnd
	PBinaryImp
	PBinaryEqu
)

const (
	PQuantAll PQuantifier = iota
	PQuantEx
)

const (
	PTop PConstant = iota
	PBot
)

type PForm interface {
	isPForm()
	ToString() string
}

type PConst struct {
	PConstant
}

type PPred struct {
	symbol    string
	arguments []PTerm
}

func (p PPred) Args() []PTerm {
	return p.arguments
}

func (p PPred) Symbol() string {
	return p.symbol
}

type PUnary struct {
	PUnaryOp
	PForm
}

type PBin struct {
	operator PBinOp
	left     PForm
	right    PForm
}

func (b PBin) Operator() PBinOp { return b.operator }
func (b PBin) Left() PForm      { return b.left }
func (b PBin) Right() PForm     { return b.right }

type PQuant struct {
	PQuantifier
	vars []Lib.Pair[string, PAtomicType]
	PForm
}

func (q PQuant) Vars() []Lib.Pair[string, PAtomicType] {
	return q.vars
}

func (PConst) isPForm() {}
func (PPred) isPForm()  {}
func (PUnary) isPForm() {}
func (PBin) isPForm()   {}
func (PQuant) isPForm() {}

func MkPNeg(f PForm) PForm {
	return PUnary{PUnaryNeg, f}
}

func MkPEqu(left, right PForm) PForm {
	return PBin{PBinaryEqu, left, right}
}

func MkPImp(left, right PForm) PForm {
	return PBin{PBinaryImp, left, right}
}

func MkPRevImp(left, right PForm) PForm {
	return MkPImp(right, left)
}

func MkPOr(left, right PForm) PForm {
	return PBin{PBinaryOr, left, right}
}

func MkPAnd(left, right PForm) PForm {
	return PBin{PBinaryAnd, left, right}
}

func MkPXor(left, right PForm) PForm {
	return MkPAnd(MkPOr(left, right), MkPNeg(MkPAnd(left, right)))
}

func MkPNotOr(left, right PForm) PForm {
	return MkPNeg(MkPOr(left, right))
}

func MkPNotAnd(left, right PForm) PForm {
	return MkPNeg(MkPAnd(left, right))
}

func MkPTop() PForm {
	return PConst{PTop}
}

func MkPBot() PForm {
	return PConst{PBot}
}

func MkPAll(vars []Lib.Pair[string, PAtomicType], f PForm) PForm {
	return PQuant{PQuantAll, vars, f}
}

func MkPEx(vars []Lib.Pair[string, PAtomicType], f PForm) PForm {
	return PQuant{PQuantEx, vars, f}
}

type PFormulaRole int

const (
	Axiom PFormulaRole = iota
	Conjecture
	NegatedConjecture
	Type
	Unknown
	Include
)

type PStatement struct {
	name string
	role PFormulaRole
	form Lib.Option[PForm]
	ty   Lib.Option[Lib.Pair[string, PType]]
}

func (s PStatement) Name() string                                    { return s.name }
func (s PStatement) Role() PFormulaRole                              { return s.role }
func (s PStatement) Form() Lib.Option[PForm]                         { return s.form }
func (s PStatement) TypedConst() Lib.Option[Lib.Pair[string, PType]] { return s.ty }

/*
A function to get a FormulaRole from a String
  - "axiom"s are accepted, without proof. There is no guarantee that the axioms of a problem are consistent.
  - "hypothesis"s are assumed to be true for a particular problem, and are used like "axiom"s.
  - "definition"s are intended to define symbols. They are either universally quantified equations, or universally quantified equivalences with an atomic lefthand side. They can be treated like "axiom"s.
  - "assumption"s can be used like axioms, but must be discharged before a derivation is complete.
  - "lemma"s and "theorem"s have been proven from the "axiom"s. They can be used like "axiom"s in problems, and a problem containing a non-redundant
  - "lemma" or theorem" is ill-formed. They can also appear in derivations.
  - "theorem"s are more important than "lemma"s from the user perspective.
  - "conjecture"s are to be proven from the "axiom"(-like) formulae. A problem is solved only when all "conjecture"s are proven.
  - "negated_conjecture"s are formed from negation of a "conjecture" (usually in a FOF to CNF conversion).
  - "plain"s have no specified user semantics.
  - "fi_domain", "fi_functors", and "fi_predicates" are used to record the domain, interpretation of functors, and interpretation of predicates, for a finite interpretation.
  - "type" defines the type globally for one symbol; treat as $true.
  - "unknown"s have unknown role, and this is an error situation.
*/
func PFormulaRoleFromStr(role string) PFormulaRole {
	switch role {
	case "axiom", "hypothesis", "definition", "assumption", "lemma", "theorem":
		return Axiom
	case "conjecture":
		return Conjecture
	case "negated_conjecture":
		return NegatedConjecture
	case "type":
		return Type
	default:
		return Unknown
	}
}

// Defined symbols

const (
	PEqSymbol = "="
)
