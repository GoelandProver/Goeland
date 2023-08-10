package lambdapi

import (
	"fmt"
	"strings"

	btps "github.com/GoelandProver/Goeland/types/basic-types"
)

var varCounter int

func getIncreasedCounter() int {
	varCounter++
	return varCounter - 1
}

var context map[string]string = make(map[string]string)

func addToContext(key btps.MappableString) string {
	strKey := key.ToMappedString(lambdaPiMapConnectors, false)
	if _, ok := context[strKey]; !ok {
		context[strKey] = fmt.Sprintf("v%v", getIncreasedCounter())
	}

	return context[strKey]
}

func getFromContext(key btps.MappableString) string {
	return context[key.ToMappedString(lambdaPiMapConnectors, false)]
}

func toLambdaString(element btps.MappableString, str string) string {
	return fmt.Sprintf("λ (%s : ϵ (%s))", addToContext(element), str)
}

func toLambdaIntroString(element btps.MappableString) string {
	return fmt.Sprintf("λ (%s : τ (ι))", addToContext(element))
}

func varsToLambdaString(varList []btps.Var) string {
	varStrings := []string{}

	for _, vt := range varList {
		varStrings = append(varStrings, toLambdaIntroString(vt))
	}

	return strings.Join(varStrings, ", ")
}

func toCorrectString(element btps.MappableString) string {
	element = decorateForm(element)
	surround := element.ToMappedStringSurround(lambdaPiMapConnectors, false)
	separator, emptyValue := element.ToMappedStringChild(lambdaPiMapConnectors, false)
	children := ListToMappedString(element.GetChildrenForMappedString(), separator, emptyValue)
	return fmt.Sprintf(surround, children)
}

func ListToMappedString[T btps.MappableString](children []T, separator, emptyValue string) string {
	strArr := []string{}

	for _, element := range children {
		strArr = append(strArr, toCorrectString(element))
	}

	if len(strArr) == 0 && emptyValue != "" {
		strArr = append(strArr, emptyValue)
	}

	return strings.Join(strArr, separator)
}
