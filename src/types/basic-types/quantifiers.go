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

/******************/
/* quantifiers.go */
/******************/

/**
* This file implements quantifiers over formulas (forall, exists, forall (types)).
**/

package basictypes

import (
	"fmt"
	"strings"

	. "github.com/GoelandProver/Goeland/global"
	typing "github.com/GoelandProver/Goeland/polymorphism/typing"
)

type Ex struct {
	*MappedString
	index    int
	var_list []Var
	f        Form
	MetaList
}

func (e Ex) GetIndex() int              { return e.index }
func (e Ex) GetVarList() []Var          { return copyVarList(e.var_list) }
func (e Ex) GetForm() Form              { return e.f.Copy() }
func (e Ex) GetType() typing.TypeScheme { return typing.DefaultPropType(0) }
func (e Ex) GetMetas() MetaList         { return e.GetForm().GetMetas() }

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

func (e Ex) GetInternalMetas() MetaList {
	return e.MetaList
}

func (e Ex) SetInternalMetas(m MetaList) Form {
	e.MetaList = m
	return e
}

func (e Ex) GetSubFormulasRecur() FormList {
	return getAllSubFormulasAppended(e)
}

func (e Ex) GetChildFormulas() FormList {
	return FormList{e.GetForm()}
}

func (e Ex) ReplaceMetaByTerm(meta Meta, term Term) Form {
	return MakeEx(e.GetIndex(), e.GetVarList(), e.GetForm().ReplaceMetaByTerm(meta, term))
}

type All struct {
	*MappedString
	index    int
	var_list []Var
	f        Form
	MetaList
}

func (a All) GetIndex() int              { return a.index }
func (a All) GetVarList() []Var          { return copyVarList(a.var_list) }
func (a All) GetForm() Form              { return a.f.Copy() }
func (a All) GetType() typing.TypeScheme { return typing.DefaultPropType(0) }
func (a All) GetMetas() MetaList         { return a.GetForm().GetMetas() }

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

func (a All) Equals(f any) bool {
	oth, isAll := f.(All)
	return isAll &&
		AreEqualsVarList(a.var_list, oth.var_list) &&
		a.f.Equals(oth.f)
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

func (a All) GetSubTerms() TermList {
	return a.GetForm().GetSubTerms()
}

func (a All) SubstituteVarByMeta(old Var, new Meta) Form {
	f := a.GetForm().SubstituteVarByMeta(old, new)
	return MakeAllSimple(a.index, a.var_list, f, f.GetInternalMetas().Copy())
}

func (a All) GetInternalMetas() MetaList {
	return a.MetaList
}

func (a All) SetInternalMetas(m MetaList) Form {
	a.MetaList = m
	return a
}

func (a All) GetSubFormulasRecur() FormList {
	return getAllSubFormulasAppended(a)
}

func (a All) GetChildFormulas() FormList {
	return FormList{a.GetForm()}
}

func (e All) ReplaceMetaByTerm(meta Meta, term Term) Form {
	return MakeAll(e.GetIndex(), e.GetVarList(), e.GetForm().ReplaceMetaByTerm(meta, term))
}

/* Struct describing a forall with type variables */
type AllType struct {
	*MappedString
	index  int
	tvList []typing.TypeVar
	form   Form
	MetaList
}

/* Methods */

func (a AllType) GetIndex() int                { return a.index }
func (a AllType) GetVarList() []typing.TypeVar { return copyTypeVarList(a.tvList) }
func (a AllType) GetForm() Form                { return a.form.Copy() }
func (a AllType) GetType() typing.TypeScheme   { return typing.DefaultPropType(0) }

/* Form interface */

func (a AllType) ToMappedString(mapping MapString, displayTypes bool) string {
	return mapping[QuantVarOpen] + ListToString(a.GetVarList(), ", ", "") + " : " + mapping[TypeVarType] + mapping[QuantVarClose] + mapping[QuantVarSep] + " (" + a.GetForm().ToString() + ")"
}

func (a AllType) ToString() string {
	return a.MappedString.ToString()
}

func (a AllType) ToMappedStringSurround(mapping MapString, displayTypes bool) string {
	return "(" + mapping[AllTypeQuant] + " " + mapping[QuantVarOpen] + ListToString(a.GetVarList(), ", ", "") + " : " + mapping[TypeVarType] + mapping[QuantVarClose] + mapping[QuantVarSep] + " (%s))"
}

func (a AllType) ToMappedStringChild(mapping MapString, displayTypes bool) (separator, emptyValue string) {
	return "", ""
}

func (a AllType) GetChildrenForMappedString() []MappableString {
	return a.GetChildFormulas().ToMappableStringSlice()
}

func (a AllType) GetMetas() MetaList { return a.GetForm().GetMetas() }

func (a AllType) Copy() Form {
	return MakeAllTypeSimple(a.index, copyTypeVarList(a.tvList), a.form.Copy(), a.MetaList.Copy())
}

func (a AllType) Equals(f any) bool {
	oth, isAll := f.(AllType)
	return isAll &&
		AreEqualsTypeVarList(a.tvList, oth.tvList) &&
		a.form.Equals(oth.form)
}

func (a AllType) ReplaceTypeByMeta(varList []typing.TypeVar, index int) Form {
	return MakeAllType(a.GetIndex(), a.tvList, a.GetForm().ReplaceTypeByMeta(varList, index))
}

func (a AllType) ReplaceVarByTerm(old Var, new Term) (Form, bool) {
	f, res := a.GetForm().ReplaceVarByTerm(old, new)
	return MakeAllTypeSimple(a.GetIndex(), a.GetVarList(), f, a.MetaList), res
}

func (a AllType) RenameVariables() Form {
	return MakeAllType(a.GetIndex(), a.GetVarList(), a.GetForm().RenameVariables())
}

func (a AllType) CleanFormula() Form {
	a.form = a.form.CleanFormula()

	areSeen := make([]bool, len(a.tvList))

	terms := a.GetVarList()

	for i, v := range a.tvList {
		for _, term := range terms {
			if term.Equals(v) {
				areSeen[i] = true
			}
		}
	}

	for i, seen := range areSeen {
		if !seen {
			a.tvList = append(a.tvList[:i], a.tvList[i+1:]...)
			i--
		}
	}

	return a
}

func (a AllType) GetSubTerms() TermList {
	return a.GetForm().GetSubTerms()
}

func (a AllType) SubstituteVarByMeta(old Var, new Meta) Form {
	f := a.GetForm().SubstituteVarByMeta(old, new)
	return MakeAllTypeSimple(a.index, a.tvList, f, f.GetInternalMetas().Copy())
}

func (a AllType) GetInternalMetas() MetaList {
	return a.MetaList
}

func (a AllType) SetInternalMetas(m MetaList) Form {
	a.MetaList = m
	return a
}

func (a AllType) GetSubFormulasRecur() FormList {
	return getAllSubFormulasAppended(a)
}

func (a AllType) GetChildFormulas() FormList {
	return FormList{a.GetForm()}
}

func (e AllType) ReplaceMetaByTerm(meta Meta, term Term) Form {
	return MakeAllType(e.GetIndex(), e.GetVarList(), e.GetForm().ReplaceMetaByTerm(meta, term))
}

// ----------------------------------------------------------------------------
// Utility of quantified forms
// ----------------------------------------------------------------------------

func renameVariable(form Form, varList []Var) ([]Var, Form) {
	newVL := []Var{}
	newForm := form

	for _, v := range varList {
		newVar := MakerNewVar(v.GetName())
		newVar = MakerVar(fmt.Sprintf("%s%d", newVar.GetName(), newVar.GetIndex()), v.typeHint)
		newVL = append(newVL, newVar)
		newForm, _ = newForm.RenameVariables().ReplaceVarByTerm(v, newVar)
	}

	return newVL, newForm
}

func QuantifierToMappedString(quant string, mapping MapString, varList []Var, form Form, displayTypes bool) string {
	type VarType struct {
		vars  []Var
		type_ typing.TypeApp
	}

	varsType := []VarType{}
	for _, v := range varList {
		found := false
		for _, vt := range varsType {
			if vt.type_.Equals(v.GetTypeApp()) {
				vt.vars = append(vt.vars, v)
				found = true
			}
		}
		if !found {
			varsType = append(varsType, VarType{[]Var{v}, v.GetTypeApp()})
		}
	}

	varStrings := []string{}

	for _, vt := range varsType {
		str := mapping[QuantVarOpen]
		str += ListToMappedString(varList, " ", "", mapping, false)
		str += " : " + vt.type_.ToString()
		varStrings = append(varStrings, str+mapping[QuantVarClose])
	}

	return "(" + quant + " " + strings.Join(varStrings, " ") + mapping[QuantVarSep] + " (%s))"
}

type QuantifiedForm interface {
	GetForm() Form
	GetSubTerms() TermList
	GetVarList() []Var
}

func cleanQuantifiedFormula(qf QuantifiedForm) ([]Var, Form) {
	f := qf.GetForm().CleanFormula()

	varList := qf.GetVarList()
	terms := qf.GetSubTerms()

	areSeen := checkSeenVars(varList, terms)
	newList := getSeenVars(areSeen, varList)

	return newList, f
}

func checkSeenVars(varList []Var, terms TermList) []bool {
	areSeen := make([]bool, len(varList))

	for i, v := range varList {
		for _, term := range terms {
			if term.Equals(v) {
				areSeen[i] = true
			}
		}
	}
	return areSeen
}

func getSeenVars(areSeen []bool, varList []Var) []Var {
	newList := []Var{}

	for i, seen := range areSeen {
		if seen {
			newList = append(newList, varList[i])
		}
	}
	return newList
}
