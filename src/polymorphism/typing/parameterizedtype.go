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
 * This file declares one of the basic types used for typing the prover :
 * ParameterizedType, a type which is parameterized with other types.
 **/

package polymorphism

import (
	"strings"

	. "github.com/GoelandProver/Goeland/global"
)

/**
 * Parameterized Type (TypeApp + TypeScheme)
 * A Type which is parameterized with type apps to compose types.
 * Example: map(int, int)
 **/
type ParameterizedType struct {
	name       string
	parameters ComparableList[TypeApp]
}

/* TypeScheme interface */
func (pt ParameterizedType) isScheme() {}
func (pt ParameterizedType) toMappedString(subst map[string]string) string {
	mappedString := []string{}
	for _, typeScheme := range convert(pt.parameters, typeAppToTypeScheme) {
		mappedString = append(mappedString, typeScheme.toMappedString(subst))
	}
	return pt.name + "(" + strings.Join(mappedString, ", ") + ")"
}

/* TypeApp interface */
func (pt ParameterizedType) isTypeApp() {}
func (pt ParameterizedType) substitute(mapSubst map[TypeVar]string) TypeScheme {
	newPt := ParameterizedType{pt.name, ComparableList[TypeApp]{}}
	for _, param := range pt.parameters {
		newPt.parameters = append(newPt.parameters, param.substitute(mapSubst).(TypeApp))
	}
	return newPt
}
func (pt ParameterizedType) instanciate(substMap map[TypeVar]TypeApp) TypeApp {
	newPt := ParameterizedType{pt.name, ComparableList[TypeApp]{}}
	for _, param := range pt.parameters {
		newPt.parameters = append(newPt.parameters, param.instanciate(substMap))
	}
	return newPt
}

// Exported methods

func (pt ParameterizedType) ToString() string { return pt.toMappedString(make(map[string]string)) }
func (pt ParameterizedType) Equals(oth interface{}) bool {
	if !Is[ParameterizedType](oth) {
		return false
	}
	othPT := To[ParameterizedType](oth)
	return pt.name == othPT.name && pt.parameters.Equals(othPT.parameters)
}
func (pt ParameterizedType) Size() int                { return 1 }
func (pt ParameterizedType) GetPrimitives() []TypeApp { return []TypeApp{pt} }
func (pt ParameterizedType) GetParameters() []TypeApp {
	res := []TypeApp{}
	for _, param := range pt.parameters {
		if Is[ParameterizedType](param) {
			res = append(res, To[ParameterizedType](param).GetParameters()...)
		} else {
			res = append(res, param)
		}
	}
	return res
}

func (pt ParameterizedType) Copy() TypeApp {
	newPT := ParameterizedType{name: pt.name, parameters: make(ComparableList[TypeApp], len(pt.parameters))}
	copy(newPT.parameters, pt.parameters)
	return newPT
}

func (pt ParameterizedType) GetName() string {
	return pt.name
}

/* Makes a Parameterized Type from name and parameters */
func MkParameterizedType(name string, types []TypeApp) ParameterizedType {
	pMap.lock.Lock()
	if parameters, found := pMap.parametersMap[name]; found {
		k := 0
		nextTypes := make([]TypeApp, len(parameters))
		copy(nextTypes, parameters)
		for i, param := range nextTypes {
			if param == nil {
				nextTypes[i] = types[k]
				k++
			}
		}
		if k != len(types) {
			pMap.lock.Unlock()
			PrintError("PRMTR_TYPE", "Parameterized type can not be instanciated with this number of arguments.")
			return ParameterizedType{}
		}
		types = nextTypes
	} else {
		pMap.lock.Unlock()
		PrintError("PRMTR_TYPE", "Parameterized type not found.")
		return ParameterizedType{}
	}
	pMap.lock.Unlock()

	parameterizedType := ParameterizedType{name, types}

	vars := []TypeVar{}
	for _, type_ := range types {
		if var_, ok := type_.(TypeVar); ok {
			vars = append(vars, var_)
		}
	}

	return parameterizedType
}

func IsParameterizedType(name string) bool {
	pMap.lock.Lock()
	_, found := pMap.parametersMap[name]
	pMap.lock.Unlock()
	return found
}
