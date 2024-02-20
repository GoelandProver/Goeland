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
	*MappedString
	index    int
	var_list []Var
	f        Form
	*MetaList
}

func MakeExSimple(i int, vars []Var, form Form, metas *MetaList) Ex {
	fms := &MappedString{}
	ex := Ex{fms, i, vars, form, metas}
	fms.MappableString = &ex
	return ex
}

func MakeEx(i int, vars []Var, form Form) Ex {
	return MakeExSimple(i, vars, form, NewMetaList())
}

func MakerEx(vars []Var, form Form) Ex {
	return MakeEx(MakerIndexFormula(), vars, form)
}

func (e Ex) GetIndex() int              { return e.index }
func (e Ex) GetVarList() []Var          { return copyVarList(e.var_list) }
func (e Ex) GetForm() Form              { return e.f.Copy() }
func (e Ex) GetType() typing.TypeScheme { return typing.DefaultPropType(0) }
func (e Ex) GetMetas() *MetaList        { return e.GetForm().GetMetas() }

func (e Ex) ToString() string {
	return e.MappedString.ToString()
}

func (e Ex) ToMappedStringSurround(mapping MapString, displayTypes bool) string {
	return QuantifierToMappedString(mapping[ExQuant], mapping, e.GetVarList(), e.GetForm(), displayTypes)
}

func (e Ex) ToMappedStringChild(mapping MapString, displayTypes bool) (separator, emptyValue string) {
	return " ", ""
}

func (e Ex) GetChildrenForMappedString() []MappableString {
	return e.GetChildFormulas().ToMappableStringSlice()
}

func (e Ex) Copy() Form {
	return MakeExSimple(e.GetIndex(), copyVarList(e.GetVarList()), e.GetForm(), e.MetaList.Copy())
}

func (e Ex) Equals(f any) bool {
	oth, isEx := f.(Ex)
	return isEx &&
		AreEqualsVarList(e.var_list, oth.var_list) &&
		e.f.Equals(oth.f)
}

func (e Ex) ReplaceTypeByMeta(varList []typing.TypeVar, index int) Form {
	return MakeExSimple(e.GetIndex(), e.GetVarList(), e.GetForm().ReplaceTypeByMeta(varList, index), e.MetaList)
}

func (e Ex) ReplaceVarByTerm(old Var, new Term) (Form, bool) {
	f, res := e.GetForm().ReplaceVarByTerm(old, new)
	return MakeExSimple(e.GetIndex(), e.GetVarList(), f, e.MetaList), res
}

func (e Ex) RenameVariables() Form {
	newVarList, newForm := renameVariable(e.GetForm(), e.GetVarList())
	return MakeEx(e.GetIndex(), newVarList, newForm)
}

func (e Ex) CleanFormula() Form {
	e.var_list, e.f = cleanQuantifiedFormula(&e)

	if len(e.var_list) > 0 {
		return e
	} else {
		return e.f
	}
}

func (e Ex) GetSubTerms() TermList {
	return e.GetForm().GetSubTerms()
}

func (e Ex) SubstituteVarByMeta(old Var, new Meta) Form {
	f := e.GetForm().SubstituteVarByMeta(old, new)
	return MakeExSimple(e.index, e.var_list, f, f.GetInternalMetas().Copy())
}

func (e Ex) GetInternalMetas() *MetaList {
	return e.MetaList
}

func (e Ex) SetInternalMetas(m *MetaList) Form {
	e.MetaList = m
	return e
}

func (e Ex) GetSubFormulasRecur() FormList {
	return getAllSubFormulasAppended(e)
}

func (e Ex) GetChildFormulas() FormList {
	return FormList{e.GetForm()}
}
