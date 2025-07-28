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

	"github.com/GoelandProver/Goeland/Glob"
)

var varCounter int

func getIncreasedCounter() int {
	varCounter++
	return varCounter - 1
}

var context Glob.Map[Glob.Basic, Glob.String] = *Glob.NewMap[Glob.Basic, Glob.String]()

func addToContext(key Glob.Basic) string {
	if _, ok := context.GetExists(key); !ok {
		context.Set(key, Glob.String(fmt.Sprintf("v%v", getIncreasedCounter())))
	}

	return string(context.Get(key))
}

func getFromContext(key Glob.Basic) string {
	return string(context.Get(key))
}

func toLambdaString(element Glob.Basic, str string) string {
	return fmt.Sprintf("λ (%s : ϵ (%s))", addToContext(element), str)
}

func toLambdaIntroString(element Glob.Basic, typeStr string) string {
	return fmt.Sprintf("λ (%s : τ (%s))", addToContext(element), mapDefault(typeStr))
}

// func toCorrectString(element AST.MappableString) string {
// 	isNotSkolem := len(element.ToString()) <= 5 || element.ToString()[:6] != "skolem"
// 	element = decorateForm(element)
// 	surround := element.ToMappedStringSurround(lambdaPiMapConnectors, false)
// 	separator, emptyValue := element.ToMappedStringChild(lambdaPiMapConnectors, false)
// 	children := ""
// 	if isNotSkolem {
// 		children = ListToMappedString(element.GetChildrenForMappedString(), separator, emptyValue)
// 	}
// 	return fmt.Sprintf(surround, children)
// }

// func ListToMappedString[T AST.MappableString](children []T, separator, emptyValue string) string {
// 	strArr := []string{}

// 	for _, element := range children {
// 		strArr = append(strArr, toCorrectString(element))
// 	}

// 	if len(strArr) == 0 && emptyValue != "" {
// 		strArr = append(strArr, emptyValue)
// 	}

// 	return strings.Join(strArr, separator)
// }
