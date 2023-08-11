package lambdapi

import (
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
	varsString := varsToLambdaString(varList)
	return "(" + quant + " (" + varsString + ", %s))"
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
	default:
		return typed
	}
}
