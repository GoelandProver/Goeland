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
		result = df.Fun.ToMappedStringSurroundWithId(possible, mapping, displayTypes)
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
