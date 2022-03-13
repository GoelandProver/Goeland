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
	in  TypeScheme
	out TypeScheme
	app TypeScheme
}

/* Map of Type Schemes for a function or a predicate. */
var typeSchemesMap struct {
	tsMap	map[string][]App
	lock	sync.Mutex
}


/* Saves a TypeScheme in the map of schemes. */
func SaveTypeScheme(name string, in TypeScheme, out TypeScheme) error {
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
		typeSchemesMap.tsMap[name] = append(typeSchemesMap.tsMap[name], App{in: in, out: out, app: tArrow})
	} else {
		typeSchemesMap.tsMap[name] = []App{{in: in, out: out, app: tArrow}}
	}
	typeSchemesMap.lock.Unlock()

	return nil
}

/* Gets a TypeScheme from the map of schemes with the name. */
func GetTypeScheme(name string, inArgs TypeScheme) (TypeScheme, error) {
	if tScheme, _ := getSchemeFromArgs(name, inArgs); tScheme != nil {
		return tScheme, nil
	} else {
		return nil, fmt.Errorf("couldn't find a TypeScheme with the following name in the saved schemes: %s", name)
	}
}

/* Returns the TypeScheme from the name & inArgs if it exists in the map. Else, nil. true means fun name is in the map. */
func getSchemeFromArgs(name string, inArgs TypeScheme) (TypeScheme, bool) {
	typeSchemesMap.lock.Lock()
	if arr, found := typeSchemesMap.tsMap[name]; found {
		for _, fun := range arr {
			if fun.in.Equals(inArgs) {
				typeSchemesMap.lock.Unlock()
				return fun.app, true
			}
		}
		typeSchemesMap.lock.Unlock()
		return nil, true
	}
	typeSchemesMap.lock.Unlock()
	return nil, false
}