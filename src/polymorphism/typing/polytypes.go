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

/******************/
/*  polytypes.go  */
/******************/

/**
 * This file declares the basic interfaces used for typing the prover.
 **/

package polymorphism

import (
	"fmt"
	"sync"
)

/**
 * Polymorphic type, used either as a TypeHint, TypeCross or a TypeArrow to allow the inductive
 * composition of either of the 3 to give a TypeScheme.
 **/
type TypeScheme interface {
	/* Non-exported methods */
	isScheme()
	toList() []uint64

	/* Exported methods */
	ToString() string
	UID() uint64
	Equals(oth TypeScheme) bool
	Size() int
	GetPrimitives() []TypeApp
}

/**
 * Used for types which can be put inside a function or a predicate as arguments
 * for a polymorphic scheme.
 * It includes : TypeVar, TypeHint and TypeCross.
 * In TFF, TypeArrow can not be the type of a variable.
 * Furthermore, a TypeApp is not a quantified type scheme.
 **/
type TypeApp interface {
	/* Non-exported methods */
	isTypeApp()
	substitute(map[TypeVar]TypeHint) TypeScheme

	/* Exported methods */
	ToString() string
	ToTypeScheme() TypeScheme
	Copy() TypeApp
	Size() int
}

/**
 * Makers.
 * As each type is unique, and stored in a global map (in shared memory), a lock should
 * be defined.
 **/

/* Call the init function before any type is created with MkType. */
func Init() {
	// Instantiate tCounter
	tCounter.count = 1
	tCounter.lock = sync.Mutex{}

	// Instantiate tMap
	tMap.uidsMap = make(map[string]TypeHint)
	tMap.lock = sync.Mutex{}

	// Instantiate typeSchemesMap
	typeSchemesMap.tsMap = make(map[string][]App)
	typeSchemesMap.lock = sync.Mutex{}

	// Instanciate parameters map
	pMap.parametersMap = make(map[string][]TypeApp)
	pMap.lock = sync.Mutex{}

	// Default types
	defaultType = MkTypeHint("i")
	defaultProp = MkTypeHint("o")
}

/* Utils */

func utilMapCreation(vars []TypeVar) map[TypeVar]TypeHint {
	metaTypeMap := make(map[TypeVar]TypeHint)
	for i, var_ := range vars {
		metaTypeMap[var_] = MkTypeHint(fmt.Sprintf("*_%d", i))
	}
	return metaTypeMap
}

func substTypeAppList(mapSubst map[TypeVar]TypeHint, typeApp []TypeApp) []TypeApp {
	newTypeApp := []TypeApp{}
	for _, type_ := range typeApp {
		newTypeApp = append(newTypeApp, type_.substitute(mapSubst).(TypeApp))
	}
	return newTypeApp
}

func EmptyGlobalContext() bool {
	typeSchemesMap.lock.Lock()
	schemeLen := len(typeSchemesMap.tsMap)
	typeSchemesMap.lock.Unlock()
	return schemeLen == 0
}
