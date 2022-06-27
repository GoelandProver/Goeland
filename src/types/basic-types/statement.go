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
/****************/
/* statement.go */
/****************/

package basictypes

/***************************/
/* Structure of statements */
/***************************/

// TPTP inputs are a list of statements
type Statement struct {
	name string
	role FormulaRole
	form Form
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
func (s *Statement) SetName(n string) {
	s.name = n
}
func (s *Statement) SetRole(r FormulaRole) {
	s.role = r
}
func (s *Statement) SetForm(f Form) {
	s.form = f
}

func MakeStatement(s string, r FormulaRole, f Form) Statement {
	return Statement{s, r, f}

}

// Formula roles (enumerate type)
type FormulaRole int

const (
	Axiom FormulaRole = iota
	Conjecture
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
	}
	return res
}

func (stm Statement) ToString() string {
	if stm.GetRole() == Include {
		return stm.GetRole().ToString() + " " + stm.GetName()
	} else {
		return stm.GetRole().ToString() + " " + stm.GetName() + " " + stm.GetForm().ToString()
	}
}

func StatementListToString(lstm []Statement) string {
	res := ""
	for i, s := range lstm {
		res += s.ToString()
		if i < len(lstm)-1 {
			res += ", "
		}
	}
	return res
}

// TODO : add include
