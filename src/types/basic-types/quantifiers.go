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
	index    int
	var_list []Var
	f        Form
}

func (e Ex) ToMappedString(map_ MapString, displayTypes bool) string {
	return toMappedString(map_[ExQuant], map_, e.GetVarList(), e.GetForm(), displayTypes)
}

func (e Ex) GetIndex() int              { return e.index }
func (e Ex) GetVarList() []Var          { return copyVarList(e.var_list) }
func (e Ex) GetForm() Form              { return e.f.Copy() }
func (e Ex) GetType() typing.TypeScheme { return typing.DefaultPropType(0) }
func (e Ex) GetMetas() MetaList         { return e.GetForm().GetMetas() }

func (e Ex) ToString() string {
	return e.ToMappedString(defaultMap, true)
}

func (e Ex) ToStringWithSuffixMeta(suffix string) string {
	return "(" + defaultMap[ExQuant] + " [" + ListToString(e.GetVarList(), ", ", "") + "] (" + e.GetForm().ToStringWithSuffixMeta(suffix) + "))"
}

func (e Ex) Copy() Form {
	return MakeEx(e.GetIndex(), copyVarList(e.GetVarList()), e.GetForm())
}

func (e Ex) Equals(f Form) bool {
	oth, isEx := f.(Ex)
	return isEx &&
		AreEqualsVarList(e.GetVarList(), oth.GetVarList()) &&
		e.GetForm().Equals(oth.GetForm())
}

func (e Ex) ReplaceTypeByMeta(varList []typing.TypeVar, index int) Form {
	return MakeEx(e.GetIndex(), e.GetVarList(), e.GetForm().ReplaceTypeByMeta(varList, index))
}

func (e Ex) ReplaceVarByTerm(old Var, new Term) Form {
	return MakeEx(e.GetIndex(), e.GetVarList(), e.GetForm().ReplaceVarByTerm(old, new))
}

func (e Ex) RenameVariables() Form {
	newVarList, newForm := renameVariable(e.GetForm(), e.GetVarList())
	return MakeEx(e.GetIndex(), newVarList, newForm)
}

type All struct {
	index    int
	var_list []Var
	f        Form
}

func (a All) ToMappedString(map_ MapString, displayTypes bool) string {
	return toMappedString(map_[AllQuant], map_, a.GetVarList(), a.GetForm(), displayTypes)
}

func (a All) GetIndex() int              { return a.index }
func (a All) GetVarList() []Var          { return copyVarList(a.var_list) }
func (a All) GetForm() Form              { return a.f.Copy() }
func (a All) GetType() typing.TypeScheme { return typing.DefaultPropType(0) }
func (a All) GetMetas() MetaList         { return a.GetForm().GetMetas() }

func (a All) ToString() string {
	return a.ToMappedString(defaultMap, true)
}

func (a All) ToStringWithSuffixMeta(suffix string) string {
	return "(" + defaultMap[AllQuant] + " [" + ListToString(a.GetVarList(), ", ", "") + "] (" + a.GetForm().ToStringWithSuffixMeta(suffix) + "))"
}

func (a All) Copy() Form {
	return MakeAll(a.GetIndex(), copyVarList(a.GetVarList()), a.GetForm())
}

func (a All) Equals(f Form) bool {
	oth, isAll := f.(All)
	return isAll &&
		AreEqualsVarList(a.GetVarList(), oth.GetVarList()) &&
		a.GetForm().Equals(oth.GetForm())
}

func (a All) ReplaceTypeByMeta(varList []typing.TypeVar, index int) Form {
	return MakeAll(a.GetIndex(), a.GetVarList(), a.GetForm().ReplaceTypeByMeta(varList, index))
}

func (a All) ReplaceVarByTerm(old Var, new Term) Form {
	return MakeAll(a.GetIndex(), a.GetVarList(), a.GetForm().ReplaceVarByTerm(old, new))
}

func (a All) RenameVariables() Form {
	newVarList, newForm := renameVariable(a.GetForm(), a.GetVarList())
	return MakeAll(a.GetIndex(), newVarList, newForm)
}

/* Struct describing a forall with type variables */
type AllType struct {
	index  int
	tvList []typing.TypeVar
	form   Form
}

/* Methods */

func (a AllType) GetIndex() int                { return a.index }
func (a AllType) GetVarList() []typing.TypeVar { return copyTypeVarList(a.tvList) }
func (a AllType) GetForm() Form                { return a.form.Copy() }
func (a AllType) GetType() typing.TypeScheme   { return typing.DefaultPropType(0) }

/* Form interface */

func (a AllType) ToMappedString(map_ MapString, displayTypes bool) string {
	return map_[AllTypeQuant] + " " + map_[QuantVarOpen] + ListToString(a.GetVarList(), ", ", "") + " : " + map_[TypeVarType] + map_[QuantVarClose] + map_[QuantVarSep]
}

func (a AllType) ToString() string {
	return "(" + a.ToMappedString(defaultMap, true) + " (" + a.GetForm().ToString() + "))"
}
func (a AllType) GetMetas() MetaList { return a.GetForm().GetMetas() }

func (a AllType) ToStringWithSuffixMeta(suffix string) string {
	return a.ToMappedString(defaultMap, true) + " (" + a.GetForm().ToStringWithSuffixMeta(suffix) + ")"
}

func (a AllType) Copy() Form {
	return AllType{
		index:  a.index,
		form:   a.form.Copy(),
		tvList: copyTypeVarList(a.tvList),
	}
}

func (a AllType) Equals(f Form) bool {
	oth, isAll := f.(AllType)
	return isAll &&
		AreEqualsTypeVarList(a.GetVarList(), oth.GetVarList()) &&
		a.GetForm().Equals(oth.GetForm())
}

func (a AllType) ReplaceTypeByMeta(varList []typing.TypeVar, index int) Form {
	return MakeAllType(a.GetIndex(), a.tvList, a.GetForm().ReplaceTypeByMeta(varList, index))
}

func (a AllType) ReplaceVarByTerm(old Var, new Term) Form {
	return MakeAllType(a.GetIndex(), a.GetVarList(), a.GetForm().ReplaceVarByTerm(old, new))
}

func (a AllType) RenameVariables() Form {
	return MakeAllType(a.GetIndex(), a.GetVarList(), a.GetForm().RenameVariables())
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
		newForm = newForm.RenameVariables().ReplaceVarByTerm(v, newVar)
	}

	return newVL, newForm
}

func toMappedString(quant string, map_ MapString, varList []Var, form Form, displayTypes bool) string {
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
		str := map_[QuantVarOpen]
		str += ListToMappedString(varList, " ", "", map_, false)
		str += " : " + vt.type_.ToString()
		varStrings = append(varStrings, str+map_[QuantVarClose])
	}

	return "(" + quant + " " + strings.Join(varStrings, " ") + map_[QuantVarSep] + " (" + form.ToMappedString(map_, displayTypes) + "))"
}
