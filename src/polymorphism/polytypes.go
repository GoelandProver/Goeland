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
 * This file declares the basic types used for typing the prover.
 * For example, it defines the types :
 *	- TypeHint, a primitive type that is used as the basis of the inductive relation
 *	- TypeScheme, which is either a TypeHint, a TypeCross or a TypeArrow
 *	- TypeCross, a list of TypeScheme, which are concatenated with a *
 *	- TypeArrow, a list of TypeScheme, which are concatenated with an >
 **/

package polymorphism

import (
	"strings"
	"sync"
)

/**
 * Polymorphic type, used either as a TypeHint, TypeCross or a TypeArrow to allow the inductive
 * composition of either of the 3 to give a TypeScheme.
 **/
type TypeScheme interface {
	/* Non-exported methods */
	isScheme()
	toList()   				[]uint64

	/* Exported methods */
	ToString() 				string
	UID()      				uint64
	Equals(oth TypeScheme) 	bool
}

/**
 * Primitive type composed of an unique identifier, used to identify it from
 * other types, and a name, used for printing options.
 **/
type TypeHint struct {
	uid  uint64	/* Real ID */
	euid uint64 /* Encoded ID */
	name string /* Name */
}

func (th TypeHint) isScheme() {}
func (th TypeHint) toList() []uint64 { return []uint64{ th.uid } }

func (th TypeHint) ToString() string {	return th.name }
func (th TypeHint) UID() uint64 { return th.euid }
func (th TypeHint) Equals(oth TypeScheme) bool { return oth.UID() == th.UID() }

/**
 * Type consisting of an array of TypeScheme, to concatenate each of theme with a cross
 * operator. 
 * For example, if a function f takes to parameters of type int, it will be typed as 
 * f : int * int 
 **/
type TypeCross struct {
	uid   uint64
	types []TypeScheme
}

func (tc TypeCross) isScheme() {}
func (tc TypeCross) toList() []uint64 { return subtypesUID(tc.types) }
func (tc TypeCross) ToString() string { return "(" + strings.Join(subtypesStr(tc.types), " > ") + ")" }
func (tc TypeCross) UID() uint64 { return tc.uid }
func (tc TypeCross) Equals(oth TypeScheme) bool { return oth.UID() == tc.UID() }

/**
 * Type consisting of two TypeSchemes : the in-arguments parameter(s) and the out parameter. 
 * For example, if a function f takes to parameters of type int, and returns an int, it
 * will be typed as f : (int * int) -> int
 * TypeCross has higher precedence than TypeArrow.
 **/
type TypeArrow struct {
	uid   uint64
	types []TypeScheme
}

func (ta TypeArrow) isScheme() {}
func (ta TypeArrow) toList() []uint64 { return subtypesUID(ta.types) }
func (ta TypeArrow) ToString() string { return "(" + strings.Join(subtypesStr(ta.types), " > ") + ")" }
func (ta TypeArrow) UID() uint64 { return ta.uid }
func (ta TypeArrow) Equals(oth TypeScheme) bool { return oth.UID() == ta.UID() }

/** Utils **/

func subtypesStr(types []TypeScheme) []string {
	tStr := []string{}
	for _, type_ := range types {
		tStr = append(tStr, type_.ToString())
	}
	return tStr
}

func subtypesUID(types []TypeScheme) []uint64 {
	uidList := []uint64{}
	for _, type_ := range types {
		uidList = append(uidList, type_.toList()...)
	}
	return uidList
}

/**
 * Makers.
 * As each type is unique, and stored in a global map (in shared memory), a lock should 
 * be defined. 
 **/

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

/* Call the init function before any type is created with MkType. */
func Init() {
	// Instantiate tCounter
	tCounter.count = 1
	tCounter.lock = sync.Mutex{}

	// Instantiate tMap
	tMap.uidsMap = make(map[string]TypeHint)
	tMap.lock = sync.Mutex{}

	// TPTP
	//initTPTPTypes()
}

/* Makes a TypeHint. If it has already been created, return the right one. Else, creates a new one. */
func MkTypeHint(typeName string) TypeHint {
	tMap.lock.Lock()
	if TypeHint, found := tMap.uidsMap[typeName]; found {
		tMap.lock.Unlock()
		return TypeHint
	}
	tMap.lock.Unlock()

	tCounter.lock.Lock()
	TypeHint := TypeHint{uid: tCounter.count, euid: encode([]uint64{tCounter.count}, ETypeHint), name: typeName}

	tMap.lock.Lock()
	tMap.uidsMap[typeName] = TypeHint
	tMap.lock.Unlock()

	tCounter.count += 1
	tCounter.lock.Unlock()

	return TypeHint
}

/* Makes a TypeCross from any number of TypeSchemes */
func MkTypeCross(typeSchemes ...TypeScheme) TypeCross {
	tc := TypeCross{uid: 0, types: typeSchemes}
	tc.uid = encode(tc.toList(), ETypeCross)
	return tc
}

/* Makes a TypeArrow from two TypeSchemes */
func MkTypeArrow(typeSchemes ...TypeScheme) TypeArrow {
	ta := TypeArrow{uid: 0, types: typeSchemes}
	ta.uid = encode(ta.toList(), ETypeArrow)
	return ta
}