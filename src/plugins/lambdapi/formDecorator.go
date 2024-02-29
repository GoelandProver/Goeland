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
package lambdapi

import (
	"fmt"

	btps "github.com/GoelandProver/Goeland/types/basic-types"
)

type DecoratedAll struct {
	btps.All
}

func MakeDecoratedAll(all btps.All) DecoratedAll {
	if typed, ok := all.Copy().(btps.All); ok {
		all = typed
	}
	decorated := DecoratedAll{all}
	decorated.MappedString.MappableString = decorated
	return decorated
}

func (da DecoratedAll) ToMappedStringSurround(mapping btps.MapString, displayTypes bool) string {
	return QuantifierToMappedString(mapping[btps.AllQuant], da.GetVarList())
}

func QuantifierToMappedString(quant string, varList []btps.Var) string {
	if len(varList) == 0 {
		return "%s"
	} else {
		result := "(" + quant + " (" + toLambdaIntroString(varList[0], varList[0].GetTypeHint().ToString()) + ", %s))"
		result = fmt.Sprintf(result, QuantifierToMappedString(quant, varList[1:]))
		return result
	}
}

type DecoratedEx struct {
	btps.Ex
}

func MakeDecoratedEx(ex btps.Ex) DecoratedEx {
	if typed, ok := ex.Copy().(btps.Ex); ok {
		ex = typed
	}
	decorated := DecoratedEx{ex}
	decorated.MappedString.MappableString = decorated
	return decorated
}

func (de DecoratedEx) ToMappedStringSurround(mapping btps.MapString, displayTypes bool) string {
	return QuantifierToMappedString(mapping[btps.ExQuant], de.GetVarList())
}

type DecoratedVar struct {
	btps.Var
}

func MakeDecoratedVar(newVar btps.Var) DecoratedVar {
	if typed, ok := newVar.Copy().(btps.Var); ok {
		newVar = typed
	}
	decorated := DecoratedVar{newVar}
	decorated.MappedString.MappableString = decorated
	return decorated
}

func (da DecoratedVar) ToMappedStringChild(mapping btps.MapString, displayTypes bool) (separator, emptyValue string) {
	emptyValue = getFromContext(da.Var)
	return "", emptyValue
}

type DecoratedPred struct {
	btps.Pred
}

func MakeDecoratedPred(newPred btps.Pred) DecoratedPred {
	if typed, ok := newPred.Copy().(btps.Pred); ok {
		newPred = typed
	}
	decorated := DecoratedPred{newPred}
	decorated.MappedString.MappableString = decorated
	return decorated
}

func (dp DecoratedPred) ToMappedStringChild(mapping btps.MapString, displayTypes bool) (separator, emptyValue string) {
	_, emptyValue = dp.Pred.ToMappedStringChild(mapping, displayTypes)
	return " ", emptyValue
}

type DecoratedFun struct {
	btps.Fun
}

func MakeDecoratedFun(newFun btps.Fun) DecoratedFun {
	if typed, ok := newFun.Copy().(btps.Fun); ok {
		newFun = typed
	}
	decorated := DecoratedFun{newFun}
	decorated.MappedString.MappableString = decorated
	return decorated
}

func (df DecoratedFun) ToMappedStringChild(mapping btps.MapString, displayTypes bool) (separator, emptyValue string) {
	return " ", mapping[btps.PredEmpty]
}

func (df DecoratedFun) ToMappedStringSurround(mapping btps.MapString, displayTypes bool) string {
	result := df.Fun.ToMappedStringSurround(mapping, displayTypes)

	possible, exists := context.GetExists(df.Fun)
	if exists {
		if result[:6] == "skolem" {
			result = string(possible) + "%s"
		} else {
			result = btps.ToMappedStringSurroundWithId(df.Fun, string(possible), mapping, displayTypes)
		}
	}

	return result
}

func decorateForm(form btps.MappableString) btps.MappableString {
	switch typed := form.(type) {
	case btps.All:
		return MakeDecoratedAll(typed)
	case btps.Ex:
		return MakeDecoratedEx(typed)
	case btps.Var:
		return MakeDecoratedVar(typed)
	case btps.Pred:
		return MakeDecoratedPred(typed)
	case btps.Fun:
		return MakeDecoratedFun(typed)
	default:
		return typed
	}
}
