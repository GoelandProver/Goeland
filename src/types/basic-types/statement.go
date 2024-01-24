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

package basictypes

import typing "github.com/GoelandProver/Goeland/polymorphism/typing"

/***************************/
/* Structure of statements */
/***************************/

type TFFAtomTyping struct {
	Literal Id
	Ts      typing.TypeScheme
}

// TPTP inputs are a list of statements
type Statement struct {
	name       string
	role       FormulaRole
	form       Form
	atomTyping TFFAtomTyping
}

func (s Statement) GetName() string {
	return s.name
}
func (s Statement) GetRole() FormulaRole {
	return s.role
}
func (s Statement) GetForm() Form {
	return s.form
}
func (s Statement) GetAtomTyping() TFFAtomTyping {
	return s.atomTyping
}
func (s *Statement) SetName(n string) {
	s.name = n
}
func (s *Statement) SetRole(r FormulaRole) {
	s.role = r
}
func (s *Statement) SetForm(f Form) {
	s.form = f
}

func MakeStatement(s string, r FormulaRole, f Form, at TFFAtomTyping) Statement {
	return Statement{s, r, f, at}
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
func MakeFormulaRoleFromString(role string) FormulaRole {
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

func (statement Statement) ToString() string {
	switch statement.GetRole() {
	case Include:
		return statement.GetRole().ToString() + " " + statement.GetName()
	case Axiom, Conjecture:
		return statement.GetRole().ToString() + " " + statement.GetName() + " " + statement.GetForm().ToString()
	case Type:
		if statement.atomTyping.Ts != nil {
			return statement.GetRole().ToString() + " " + statement.GetName() + " " + statement.atomTyping.Literal.ToString() + ": " + statement.atomTyping.Ts.ToString()
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

// TODO : add include
