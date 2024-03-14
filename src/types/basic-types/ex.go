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
* This file implements quantifiers over formulas (forall, exists, forall (types)).
**/

package basictypes

import (
	typing "github.com/GoelandProver/Goeland/polymorphism/typing"
)

type Ex struct {
	*quantifier
}

func NewExSimple(i int, vars []Var, forms Form, metas *MetaList) *Ex {
	return &Ex{newQuantifier(i, vars, forms, metas, ExQuant)}
}

func NewExIndexed(i int, vars []Var, forms Form) *Ex {
	return NewExSimple(i, vars, forms, NewMetaList())
}

func NewEx(vars []Var, forms Form) *Ex {
	return NewExIndexed(MakerIndexFormula(), vars, forms)
}

func (e *Ex) Equals(other any) bool {
	if typed, ok := other.(*Ex); ok {
		return AreEqualsVarList(e.GetVarList(), typed.GetVarList()) && e.GetForm().Equals(typed.GetForm())
	}

	return false
}

func (e *Ex) GetSubFormulasRecur() *FormList {
	return getAllSubFormulasAppended(e)
}

func (e *Ex) Copy() Form {
	return &Ex{e.quantifier.copy()}
}

func (e *Ex) RenameVariables() {
	e.quantifier.renameVariables()
}

func (e *Ex) ReplaceTypeByMeta(varList []typing.TypeVar, index int) {
	e.quantifier.replaceTypeByMeta(varList, index)
}

func (e *Ex) ReplaceVarByTerm(old Var, new Term) bool {
	return e.quantifier.replaceVarByTerm(old, new)
}

func (e *Ex) SetInternalMetas(m *MetaList) {
	e.quantifier.setInternalMetas(m)
}

func (e *Ex) SubstituteVarByMeta(old Var, new Meta) {
	e.quantifier.substituteVarByMeta(old, new)
}
