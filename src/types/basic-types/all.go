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

type All struct {
	*MappedString
	index    int
	var_list []Var
	f        Form
	*MetaList
}

func MakeAllSimple(i int, vars []Var, forms Form, metas *MetaList) All {
	fms := &MappedString{}
	all := All{fms, i, vars, forms, metas}
	fms.MappableString = &all
	return all
}

func MakeAll(i int, vars []Var, forms Form) All {
	return MakeAllSimple(i, vars, forms, NewMetaList())
}

func MakerAll(vars []Var, forms Form) All {
	return MakeAll(MakerIndexFormula(), vars, forms)
}

func (a All) GetIndex() int              { return a.index }
func (a All) GetVarList() []Var          { return copyVarList(a.var_list) }
func (a All) GetForm() Form              { return a.f.Copy() }
func (a All) GetType() typing.TypeScheme { return typing.DefaultPropType(0) }
func (a All) GetMetas() *MetaList        { return a.GetForm().GetMetas() }

func (a All) ToString() string {
	return a.MappedString.ToString()
}

func (a All) ToMappedStringSurround(mapping MapString, displayTypes bool) string {
	return QuantifierToMappedString(mapping[AllQuant], mapping, a.GetVarList(), a.GetForm(), displayTypes)
}

func (a All) ToMappedStringChild(mapping MapString, displayTypes bool) (separator, emptyValue string) {
	return " ", ""
}

func (a All) GetChildrenForMappedString() []MappableString {
	return a.GetChildFormulas().ToMappableStringSlice()
}

func (a All) Copy() Form {
	return MakeAllSimple(a.GetIndex(), copyVarList(a.GetVarList()), a.GetForm(), a.MetaList.Copy())
}

func (a All) Equals(other any) bool {
	if typed, ok := other.(All); ok {
		return AreEqualsVarList(a.var_list, typed.var_list) && a.f.Equals(typed.f)
	}

	return false
}

func (a All) ReplaceTypeByMeta(varList []typing.TypeVar, index int) Form {
	return MakeAll(a.GetIndex(), a.GetVarList(), a.GetForm().ReplaceTypeByMeta(varList, index))
}

func (a All) ReplaceVarByTerm(old Var, new Term) (Form, bool) {
	f, res := a.GetForm().ReplaceVarByTerm(old, new)
	return MakeAllSimple(a.GetIndex(), a.GetVarList(), f, a.MetaList), res
}

func (a All) RenameVariables() Form {
	newVarList, newForm := renameVariable(a.GetForm(), a.GetVarList())
	return MakeAll(a.GetIndex(), newVarList, newForm)
}

func (a All) CleanFormula() Form {
	a.var_list, a.f = cleanQuantifiedFormula(&a)

	if len(a.var_list) > 0 {
		return a
	} else {
		return a.f
	}
}

func (a All) GetSubTerms() *TermList {
	return a.GetForm().GetSubTerms()
}

func (a All) SubstituteVarByMeta(old Var, new Meta) Form {
	f := a.GetForm().SubstituteVarByMeta(old, new)
	return MakeAllSimple(a.index, a.var_list, f, f.GetInternalMetas().Copy())
}

func (a All) GetInternalMetas() *MetaList {
	return a.MetaList
}

func (a All) SetInternalMetas(m *MetaList) Form {
	a.MetaList = m
	return a
}

func (a All) GetSubFormulasRecur() FormList {
	return getAllSubFormulasAppended(a)
}

func (a All) GetChildFormulas() FormList {
	return FormList{a.GetForm()}
}
