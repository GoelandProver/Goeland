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

import (
	typing "github.com/GoelandProver/Goeland/polymorphism/typing"
)

// The negation of a Formula
type Not struct {
	index int
	f     Form
	MetaList
}

/** Constructors **/

func MakeNot(i int, form Form) Not {
	return Not{i, form, make(MetaList, 0)}
}

func MakerNot(form Form) Not {
	return MakeNot(MakerIndexFormula(), form)
}

/** Methods **/

/** - Form interface Methods **/

func (n Not) GetIndex() int {
	return n.index
}

func (n Not) GetMetas() MetaList {
	return n.GetForm().GetMetas()
}

func (n Not) GetType() typing.TypeScheme {
	return typing.DefaultPropType(0)
}

func (n Not) GetSubTerms() TermList {
	return n.GetForm().GetSubTerms()
}

func (n Not) ToString() string {
	return n.ToMappedString(defaultMap, true)
}

func (n Not) Equals(f any) bool {
	oth, isNot := f.(Not)
	return isNot && oth.f.Equals(n.f)
}

func (n Not) Copy() Form {
	return Not{index: n.index, f: n.GetForm(), MetaList: n.MetaList.Copy()}
}

func (n Not) ToMappedString(map_ MapString, displayTypes bool) string {
	return map_[NotConn] + "(" + n.GetForm().ToMappedString(map_, displayTypes) + ")"
}

func (n Not) ToStringWithSuffixMeta(string) string {
	return n.ToString()
}

func (n Not) ReplaceTypeByMeta(varList []typing.TypeVar, index int) Form {
	return MakeNot(n.GetIndex(), n.f.ReplaceTypeByMeta(varList, index))
}

func (n Not) ReplaceVarByTerm(old Var, new Term) (Form, bool) {
	f, res := n.f.ReplaceVarByTerm(old, new)
	return Not{n.GetIndex(), f, n.MetaList}, res
}

func (n Not) RenameVariables() Form {
	return MakeNot(n.GetIndex(), n.f.RenameVariables())
}

func (n Not) CleanFormula() Form {
	n.f = n.f.CleanFormula()
	return n
}

/** - Other Methods **/

func (n Not) GetForm() Form {
	return n.f.Copy()
}

func (n Not) SubstituteVarByMeta(old Var, new Meta) Form {
	f := n.GetForm().SubstituteVarByMeta(old, new)
	return Not{n.index, f, f.GetInternalMetas().Copy()}
}

func (n Not) GetInternalMetas() MetaList {
	return n.MetaList
}

func (n Not) SetInternalMetas(m MetaList) {
	n.MetaList = m
}

func (n Not) GetSubFormulasRecur() FormList {
	return getAllSubFormulasAppended(n)
}

func (n Not) GetChildFormulas() FormList {
	return FormList{n.GetForm()}
}

/** Utils **/

/* Gives a new Form that is the negation of the given Form */
func RefuteForm(form Form) Form {
	return MakerNot(form)
}

/* Gives a new Form that isn't a Not */
func RemoveNeg(form Form) Form {
	switch typedForm := form.(type) {
	case Not:
		return RemoveNeg(typedForm.GetForm())
	default:
		return form
	}
}

/* Gives the deepest Form that has one or less Not around */
func SimplifyNegations(form Form) Form {
	form, isEven := getDeepFormWithoutNot(form, true)

	if !isEven {
		form = RefuteForm(form)
	}

	return form
}

func getDeepFormWithoutNot(form Form, isEven bool) (Form, bool) {
	if not, isNot := form.(Not); isNot {
		return getDeepFormWithoutNot(not.GetForm(), !isEven)
	} else {
		return form, isEven
	}
}
