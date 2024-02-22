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
	"fmt"
	"strings"

	typing "github.com/GoelandProver/Goeland/polymorphism/typing"
)

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
	GetSubTerms() *TermList
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

func checkSeenVars(varList []Var, terms *TermList) []bool {
	areSeen := make([]bool, len(varList))

	for i, v := range varList {
		for _, term := range terms.Slice() {
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
