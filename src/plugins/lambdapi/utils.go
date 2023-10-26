package lambdapi

import (
	"fmt"
	"strings"

	"github.com/GoelandProver/Goeland/global"
	btps "github.com/GoelandProver/Goeland/types/basic-types"
)

var varCounter int

func getIncreasedCounter() int {
	varCounter++
	return varCounter - 1
}

var context global.ComparableMap[btps.MappableString, string] = global.ComparableMap[btps.MappableString, string]{}

func addToContext(key btps.MappableString) string {
	if _, ok := context.GetExists(key); !ok {
		context.Set(key, fmt.Sprintf("v%v", getIncreasedCounter()))
	}

	return context.Get(key)
}

func getFromContext(key btps.MappableString) string {
	return context.Get(key)
}

func toLambdaString(element btps.MappableString, str string) string {
	return fmt.Sprintf("λ (%s : ϵ (%s))", addToContext(element), str)
}

func toLambdaIntroString(element btps.MappableString, typeStr string) string {
	return fmt.Sprintf("λ (%s : τ (%s))", addToContext(element), mapDefault(typeStr))
}

func toCorrectString(element btps.MappableString) string {
	isNotSkolem := len(element.ToString()) <= 5 || element.ToString()[:6] != "skolem"
	element = decorateForm(element)
	surround := element.ToMappedStringSurround(lambdaPiMapConnectors, false)
	separator, emptyValue := element.ToMappedStringChild(lambdaPiMapConnectors, false)
	children := ""
	if isNotSkolem {
		children = ListToMappedString(element.GetChildrenForMappedString(), separator, emptyValue)
	}
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
