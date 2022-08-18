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

/*****************/
/*  typehint.go  */
/*****************/

/**
 * This file declares the basic types used for typing the prover :
 * TypeHint, a primitive type that is used as the basis of the inductive relation
 **/

package polymorphism

import (
	"sync"

	. "github.com/GoelandProver/Goeland/global"
)

/**
 * Primitive type composed of an unique identifier, used to identify it from
 * other types, and a name, used for printing options.
 **/
type TypeHint struct {
	uid  uint64 /* Real ID */
	name string /* Name */
}

/* TypeScheme interface */
// Non-exported methods
func (th TypeHint) isScheme()                                     {}
func (th TypeHint) toMappedString(subst map[string]string) string { return th.ToString() }

// Exported methods
func (th TypeHint) ToString() string         { return th.name }
func (th TypeHint) Size() int                { return 1 }
func (th TypeHint) GetPrimitives() []TypeApp { return []TypeApp{th} }

func (th TypeHint) Equals(oth interface{}) bool {
	return Is[TypeHint](oth) && To[TypeHint](oth).uid == th.uid
}

/* TypeApp interface */
// Non-exported methods
func (th TypeHint) isTypeApp()                                        {}
func (th TypeHint) substitute(mapSubst map[TypeVar]string) TypeScheme { return th }
func (th TypeHint) instanciate(map[TypeVar]TypeApp) TypeApp           { return th }

// Exported methods
func (th TypeHint) Copy() TypeApp { return MkTypeHint(th.name) }

/* Current unused unique identifier. Comes with a lock. */
var tCounter struct {
	count uint64
	lock  sync.Mutex
}

/* Map of all the unique identifiers of the different types based on their name. */
var tMap struct {
	uidsMap map[string]TypeHint
	lock    sync.Mutex
}

/**
 * Makes a TypeHint.
 * If the name of the type already exists in the map, returns it.
 * Else, creates a new TypeHint with a new unique identifier and updates the map recording
 * the types.
 **/
func MkTypeHint(typeName string) TypeHint {
	// 1 - search if the type is already declared. Returns it if it's found.
	tMap.lock.Lock()
	if tHint, found := tMap.uidsMap[typeName]; found {
		tMap.lock.Unlock()
		return tHint
	}
	tMap.lock.Unlock()

	// 2 - creation of a new type.
	tCounter.lock.Lock()
	tHint := TypeHint{
		uid:  tCounter.count,
		name: typeName,
	}
	tCounter.count += 1
	tCounter.lock.Unlock()

	// 3 - update of the map.
	tMap.lock.Lock()
	tMap.uidsMap[typeName] = tHint
	tMap.lock.Unlock()

	return tHint
}
