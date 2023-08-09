package lambdapi

import (
	"strings"

	basictypes "github.com/GoelandProver/Goeland/types/basic-types"
)

type LambdapiAll struct {
	basictypes.All
}

func (la LambdapiAll) SetChildFormulas(fl basictypes.FormList) basictypes.Form {
	if typed, ok := la.All.SetChildFormulas(fl).(basictypes.All); ok {
		la.All = typed
	}

	return la
}

func (la LambdapiAll) ToMappedString(mapping basictypes.MapString, displayTypes bool) string {
	varStrings := []string{}

	for _, vt := range la.GetVarList() {
		str := "λ " + mapping[basictypes.QuantVarOpen]
		str += addToContext(vt)
		str += " : τ (ι)"
		varStrings = append(varStrings, str+mapping[basictypes.QuantVarClose])
	}

	return "(" + mapping[basictypes.AllQuant] + " " + strings.Join(varStrings, ", ") + "," + mapping[basictypes.QuantVarSep] + " (" + la.GetForm().ToMappedString(mapping, displayTypes) + "))"
}

func (la LambdapiAll) Copy() basictypes.Form {
	form := la.All.Copy()
	if typed, ok := form.(basictypes.All); ok {
		return LambdapiAll{typed}
	} else {
		return nil
	}
}

func getDecoratedForm(old basictypes.Form) (decorated basictypes.Form) {
	switch typed := old.(type) {
	case basictypes.All:
		decorated = LambdapiAll{typed}
	default:
		decorated = typed
	}

	decoratedList := basictypes.FormList{}
	for _, child := range decorated.GetChildFormulas() {
		decoratedChild := getDecoratedForm(child)
		decoratedList = append(decoratedList, decoratedChild)
	}
	decorated = decorated.SetChildFormulas(decoratedList)

	return decorated
}
