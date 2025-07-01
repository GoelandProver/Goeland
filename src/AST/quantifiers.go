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

package AST

import (
	"fmt"
	"strings"

	"github.com/GoelandProver/Goeland/Glob"
	"github.com/GoelandProver/Goeland/Lib"
)

type quantifier struct {
	*MappedString
	metas   Lib.Cache[Lib.Set[Meta], quantifier]
	index   int
	varList []Var
	subForm Form
	symbol  FormulaType
}

func makeQuantifier(i int, vars []Var, subForm Form, metas Lib.Set[Meta], symbol FormulaType) quantifier {
	fms := &MappedString{}
	qua := quantifier{
		fms,
		Lib.MkCache(metas, quantifier.forceGetMetas),
		i,
		vars,
		subForm,
		symbol,
	}
	fms.MappableString = &qua

	return qua
}

func (q quantifier) GetIndex() int {
	return q.index
}

func (q quantifier) GetVarList() []Var {
	return copyVarList(q.varList)
}

func (q quantifier) GetForm() Form {
	return q.subForm.Copy()
}

func (q quantifier) GetType() TypeScheme {
	return DefaultPropType(0)
}

func (q quantifier) forceGetMetas() Lib.Set[Meta] {
	return q.subForm.GetMetas()
}

func (q quantifier) GetMetas() Lib.Set[Meta] {
	return q.metas.Get(q)
}

func (q quantifier) ToString() string {
	return q.MappedString.ToString()
}

func (q quantifier) ToMappedStringChild(mapping MapString, displayTypes bool) (separator, emptyValue string) {
	return " ", ""
}

var varSeparator = " "

func ChangeVarSeparator(sep string) string {
	old := varSeparator
	varSeparator = sep
	return old
}

func (q quantifier) ToMappedStringSurround(mapping MapString, displayTypes bool) string {
	type VarType struct {
		vars  []Var
		type_ TypeApp
	}

	varsType := []VarType{}
	for _, v := range q.GetVarList() {
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
		str += ListToMappedString(q.GetVarList(), varSeparator, "", mapping, false)
		if displayTypes || Glob.IsCoqOutput() {
			str += " : " + vt.type_.ToString()
		}
		varStrings = append(varStrings, str+mapping[QuantVarClose])
	}

	return "(" + mapping[q.symbol] + " " + strings.Join(varStrings, " ") + mapping[QuantVarSep] + " (%s))"
}

func (q quantifier) GetChildrenForMappedString() []MappableString {
	return q.GetChildFormulas().ToMappableStringSlice()
}

func (q quantifier) GetChildFormulas() *FormList {
	return NewFormList(q.GetForm())
}

func (q quantifier) Equals(other any) bool {
	if typed, ok := other.(quantifier); ok {
		return AreEqualsVarList(q.varList, typed.varList) && q.subForm.Equals(typed.subForm)
	}

	return false
}

func (q quantifier) GetSubTerms() Lib.List[Term] {
	return q.GetForm().GetSubTerms()
}

func (q quantifier) copy() quantifier {
	nq := makeQuantifier(
		q.GetIndex(),
		copyVarList(q.GetVarList()),
		q.GetForm(),
		q.metas.Raw().Copy(),
		q.symbol,
	)

	if !q.metas.NeedsUpd() {
		nq.metas.AvoidUpd()
	}

	return nq
}

func (q quantifier) replaceTypeByMeta(varList []TypeVar, index int) quantifier {
	return makeQuantifier(
		q.GetIndex(),
		q.GetVarList(),
		q.GetForm().ReplaceTypeByMeta(varList, index),
		q.metas.Raw().Copy(),
		q.symbol,
	)
}

func (q quantifier) replaceTermByTerm(old Term, new Term) (quantifier, bool) {
	f, res := q.GetForm().ReplaceTermByTerm(old, new)
	return makeQuantifier(
		q.GetIndex(),
		q.GetVarList(),
		f,
		q.metas.Raw().Copy(),
		q.symbol,
	), res
}

func (q quantifier) renameVariables() quantifier {
	newVarList := []Var{}
	newForm := q.GetForm()

	for _, v := range q.GetVarList() {
		newVar := MakerNewVar(v.GetName())
		newVar = MakerVar(fmt.Sprintf("%s%d", newVar.GetName(), newVar.GetIndex()), v.typeHint)
		newVarList = append(newVarList, newVar)
		newForm, _ = newForm.RenameVariables().ReplaceTermByTerm(v, newVar)
	}

	return makeQuantifier(
		q.GetIndex(),
		newVarList,
		newForm,
		q.metas.Raw().Copy(),
		q.symbol,
	)
}

func (q quantifier) substituteVarByMeta(old Var, new Meta) quantifier {
	newForm := q.GetForm().SubstituteVarByMeta(old, new)
	return makeQuantifier(
		q.GetIndex(),
		q.GetVarList(),
		newForm,
		newForm.GetMetas().Copy(),
		q.symbol,
	)
}

func (q quantifier) replaceMetaByTerm(meta Meta, term Term) quantifier {
	newForm := q.GetForm().ReplaceMetaByTerm(meta, term)
	return makeQuantifier(
		q.GetIndex(),
		q.GetVarList(),
		newForm,
		newForm.GetMetas().Copy(),
		q.symbol,
	)
}
