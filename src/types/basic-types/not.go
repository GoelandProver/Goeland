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

/**********/
/* not.go */
/**********/

/**
* This file implements a negation of a formula.
**/

package basictypes

import typing "github.com/GoelandProver/Goeland/polymorphism/typing"

/* Not(formula): negation of a formula */
type Not struct {
	index int
	f     Form
}

func (n Not) GetForm() Form                        { return n.f.Copy() }
func (n Not) GetType() typing.TypeScheme           { return typing.DefaultPropType(0) }
func (n Not) ToString() string                     { return "¬" + n.GetForm().ToString() }
func (n Not) ToStringWithSuffixMeta(string) string { return n.ToString() }
func (n Not) Copy() Form                           { return MakeNot(n.GetIndex(), n.GetForm()) }
func (n Not) GetMetas() MetaList                   { return n.GetForm().GetMetas() }
func (n Not) ReplaceVarByTerm(old Var, new Term) Form {
	return MakeNot(n.GetIndex(), n.f.ReplaceVarByTerm(old, new))
}
func (n Not) GetIndex() int { return n.index }

func (n Not) Equals(f Form) bool {
	oth, isNot := f.(Not)
	return isNot && oth.GetForm().Equals(n.GetForm())
}

func (n Not) ReplaceTypeByMeta(varList []typing.TypeVar, index int) Form {
	return MakeNot(n.GetIndex(), n.f.ReplaceTypeByMeta(varList, index))
}

func (n Not) RenameVariables() Form {
	return MakeNot(n.GetIndex(), n.f.RenameVariables())
}
