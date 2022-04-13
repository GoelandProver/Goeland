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

/**************************/
/*  manage_apps_types.go  */
/**************************/

package polymorphism

import (
	"fmt"
	"sync"
)

/**
 * This file contains the logic behind the Type Schemes of polymorphic functions
 * or predicates.
 * A function can have different types of arguments, for example :
 *	sum: int * int > int
 *	sum: rat * rat > rat
 * but both type schemes should be valid, and kept in memory.
 **/

/* Maps an application: input type scheme and output type scheme. */
type App struct {
	in  TypeApp
	out TypeScheme
	App TypeScheme
}

/* Map of Type Schemes for a function or a predicate. */
var typeSchemesMap struct {
	tsMap map[string][]App
	lock  sync.Mutex
}

var pMap struct {
	parametersMap map[string][]TypeApp
	lock          sync.Mutex
}

const (
	Fun  = iota
	Prop = iota
)

/* Saves a TypeScheme in the map of schemes. */
func SaveTypeScheme(name string, in TypeApp, out TypeScheme) error {
	tArrow := MkTypeArrow(in, out)

	// If the map contains the name of the function/predicate, a type scheme has already been
	// defined for it. It means that the out types shouldn't clash, otherwise, the new type
	// scheme is wrong.
	tScheme, found := getSchemeFromArgs(name, in)
	if tScheme != nil {
		if tScheme.Equals(tArrow) {
			return nil
		}
		return fmt.Errorf("trying to save a known type scheme with different return types for the function %s", name)
	}

	// It's not in the map, it should be added
	typeSchemesMap.lock.Lock()
	if found {
		typeSchemesMap.tsMap[name] = append(typeSchemesMap.tsMap[name], App{in: in, out: out, App: tArrow})
	} else {
		typeSchemesMap.tsMap[name] = []App{{in: in, out: out, App: tArrow}}
	}
	typeSchemesMap.lock.Unlock()

	return nil
}

func SavePolymorphScheme(name string, scheme TypeScheme) error {
	tScheme, found := getPolymorphSchemeFromArgs(name, scheme)
	if tScheme != nil {
		if tScheme.Equals(scheme) {
			return nil
		}
		return fmt.Errorf("trying to save a known type scheme with different return types for the function %s", name)
	}

	// It's not in the map, it should be added
	typeSchemesMap.lock.Lock()
	if found {
		typeSchemesMap.tsMap[name] = append(typeSchemesMap.tsMap[name], App{App: scheme})
	} else {
		typeSchemesMap.tsMap[name] = []App{{App: scheme}}
	}
	typeSchemesMap.lock.Unlock()

	return nil
}

/* Saves the TypeScheme of a constant function */
func SaveConstant(name string, out TypeScheme) error {
	// Check if the constant is already saved in the context
	typeSchemesMap.lock.Lock()
	if arr, found := typeSchemesMap.tsMap[name]; found {
		var err error
		if !arr[0].out.Equals(out) {
			err = fmt.Errorf("trying to save a known type scheme with different return types for the function %s", name)
		}
		typeSchemesMap.lock.Unlock()
		return err
	}

	// Save the constant in the context.
	// The line out.(TypeScheme) shouldn't fail : it's never a TypeVar.
	typeSchemesMap.tsMap[name] = []App{
		{out: out, App: out},
	}

	typeSchemesMap.lock.Unlock()
	return nil
}

/* Checks if the given name is a constant (TypeHint) */
func IsConstant(name string) bool {
	res := false
	typeSchemesMap.lock.Lock()
	_, res = typeSchemesMap.tsMap[name]
	typeSchemesMap.lock.Unlock()
	return res
}

/* Gets the TypeScheme from the global context. Returns default type if it doesn't exists. */
func GetTypeOrDefault(name string, outDefault int, inArgs ...TypeApp) TypeScheme {
	typeScheme := GetType(name, inArgs...)
	if typeScheme == nil {
		var size int
		if len(inArgs) == 0 {
			size = 0
		} else {
			size = inArgs[0].Size()
		}

		switch outDefault {
		case Fun:
			return DefaultFunType(size)
		case Prop:
			return DefaultPropType(size)
		}
	}
	return typeScheme
}

/* Gets a TypeScheme from the map of schemes with the name. Nil if it doesn't exists in the global context. */
func GetType(name string, inArgs ...TypeApp) TypeScheme {
	if len(inArgs) == 0 {
		return getConstantTypeScheme(name)
	}
	args := inArgs[0]

	if tScheme, _ := getSchemeFromArgs(name, args); tScheme != nil {
		return tScheme
	} else {
		return nil
	}
}

/* Gets a TypeScheme from the map of schemes with the name. Nil if it doesn't exists in the global context. */
func GetPolymorphicType(name string, lenVars, lenTerms int) TypeScheme {
	typeSchemesMap.lock.Lock()
	if arr, found := typeSchemesMap.tsMap[name]; found {
		for _, fun := range arr {
			if fun.App.Size()-1 == lenTerms && len(fun.App.(QuantifiedType).vars) == lenVars {
				typeSchemesMap.lock.Unlock()
				return fun.App
			}
		}
	}
	typeSchemesMap.lock.Unlock()
	return nil
}

/* Saves a parameterized type. A TypeApp should be nil if it's unknown */
func SaveParamereterizedType(name string, types []TypeApp) {
	pMap.lock.Lock()
	if _, found := pMap.parametersMap[name]; !found {
		pMap.parametersMap[name] = types
	}
	pMap.lock.Unlock()
}

/* Gets the constants saved in the context */
func getConstantTypeScheme(name string) TypeScheme {
	var tScheme TypeScheme
	typeSchemesMap.lock.Lock()
	if typeSchemes, found := typeSchemesMap.tsMap[name]; found {
		tScheme = typeSchemes[0].App
	} else {
		// If it's not found, the type is inferred with $i
		tScheme = nil
	}
	typeSchemesMap.lock.Unlock()
	return tScheme
}

/* Returns the TypeScheme from the name & inArgs if it exists in the map. Else, nil. true means fun name is in the map. */
func getSchemeFromArgs(name string, inArgs TypeApp) (TypeScheme, bool) {
	typeSchemesMap.lock.Lock()
	if arr, found := typeSchemesMap.tsMap[name]; found {
		for _, fun := range arr {
			// Polymorphic schemes don't have any of them.
			if fun.in == nil || inArgs.ToTypeScheme() == nil {
				continue
			}
			if fun.in.ToTypeScheme().Equals(inArgs.ToTypeScheme()) {
				typeSchemesMap.lock.Unlock()
				return fun.App, true
			}
		}
		typeSchemesMap.lock.Unlock()
		return nil, true
	}
	typeSchemesMap.lock.Unlock()
	return nil, false
}

/* Returns the TypeScheme from the name & inArgs if it exists in the map. Else, nil. true means fun name is in the map. */
func getPolymorphSchemeFromArgs(name string, scheme TypeScheme) (TypeScheme, bool) {
	typeSchemesMap.lock.Lock()
	if arr, found := typeSchemesMap.tsMap[name]; found {
		for _, fun := range arr {
			if fun.App.Equals(scheme) {
				typeSchemesMap.lock.Unlock()
				return fun.App, true
			}
		}
		typeSchemesMap.lock.Unlock()
		return nil, true
	}
	typeSchemesMap.lock.Unlock()
	return nil, false
}

/* Copies a list of TypeApp */
func CopyTypeAppList(ta []TypeApp) []TypeApp {
	res := make([]TypeApp, len(ta))
	for i := range ta {
		res[i] = ta[i].Copy()
	}
	return res
}

/* Returns the global context. Use this only in polyrules. */
func GetGlobalContext() map[string][]App {
	// Get type schemes
	typeSchemesMap.lock.Lock()
	globalContext := make(map[string][]App)

	for name, app := range typeSchemesMap.tsMap {
		globalContext[name] = make([]App, len(app))
		copy(globalContext[name], app)
	}

	typeSchemesMap.lock.Unlock()
	// Add TypeHints
	tMap.lock.Lock()
	for name, type_ := range tMap.uidsMap {
		globalContext[name] = []App{{App: type_}}
	}
	tMap.lock.Unlock()

	// Add parameterized types
	pMap.lock.Lock()
	for name := range pMap.parametersMap {
		globalContext[name] = []App{}
	}
	pMap.lock.Unlock()
	return globalContext
}
