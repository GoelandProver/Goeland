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
 *	- THint, a primitive type that is used as the basis of the inductive relation
 *	- TScheme, which is either a THint, a TCross or a TArrow
 *	- TCross, a list of TScheme, which are concatenated with a *
 *	- TArrow, a list of TScheme, which are concatenated with an >
 **/

package polymorphism

import (
	"strings"
	"sync"
)

/**
 * Polymorphic type, used either as a THint, TCross or a TArrow to allow the inductive
 * composition of either of the 3 to give a TScheme.
 **/
type TScheme interface {
	/* Non-exported methods */
	isScheme()
	toList()   			[]uint64

	/* Exported methods */
	ToString() 			string
	UID()      			uint64
	UnderlyingType()	uint64
	Equals(oth TScheme) bool
}

/**
 * Primitive type composed of an unique identifier, used to identify it from
 * other types, and a name, used for printing options.
 **/
type THint struct {
	uid  uint64	/* Real ID */
	euid uint64 /* Encoded ID */
	name string /* Name */
}

func (th THint) isScheme() {}
func (th THint) toList() []uint64 { return []uint64{ th.uid } }

func (th THint) ToString() string {	return th.name }
func (th THint) UID() uint64 { return th.euid }
func (th THint) UnderlyingType() uint64 { return th.uid }
func (th THint) Equals(oth TScheme) bool { return oth.UID() == th.UID() }

/**
 * Type consisting of an array of TScheme, to concatenate each of theme with a cross
 * operator. 
 * For example, if a function f takes to parameters of type int, it will be typed as 
 * f : int * int 
 **/
type TCross struct {
	uid   uint64
	types []TScheme
}

func (tc TCross) isScheme() {}
func (tc TCross) toList() []uint64 {  
	uidList := []uint64{}
	for _, t := range tc.types {
		uidList = append(uidList, t.toList()...)
	}
	return uidList
}


func (tc TCross) ToString() string {
	tStr := []string{}
	for _, tScheme := range tc.types {
		tStr = append(tStr, tScheme.ToString())
	}
	return "(" + strings.Join(tStr, " * ") + ")"
}

func (tc TCross) UID() uint64 { return tc.uid }
func (tc TCross) UnderlyingType() uint64 { return tc.uid }
func (tc TCross) Equals(oth TScheme) bool { return oth.UID() == tc.UID() }

/**
 * Type consisting of two TSchemes : the in-arguments parameter(s) and the out parameter. 
 * For example, if a function f takes to parameters of type int, and returns an int, it
 * will be typed as f : (int * int) -> int
 * TCross has higher precedence than TArrow.
 **/
type TArrow struct {
	uid uint64
	in  TScheme 
	out TScheme
}

func (ta TArrow) isScheme() {}
func (ta TArrow) toList() []uint64 { return append(ta.in.toList(), ta.out.toList()...) }
func (ta TArrow) ToString() string { return "(" + ta.in.ToString() + " > " + ta.out.ToString() + ")" }
func (ta TArrow) UID() uint64 { return ta.uid }
func (ta TArrow) UnderlyingType() uint64 { return ta.uid }
func (ta TArrow) Equals(oth TScheme) bool { return oth.UID() == ta.UID() }

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
	uidsMap map[string]THint 
	lock    sync.Mutex
}

/* Call the init function before any type is created with MkType. */
func Init() {
	// Instantiate tCounter
	tCounter.count = 0
	tCounter.lock = sync.Mutex{}

	// Instantiate tMap
	tMap.uidsMap = make(map[string]THint)
	tMap.lock = sync.Mutex{}

	// TPTP
	//initTPTPTypes()
}

/* Makes a THint. If it has already been created, return the right one. Else, creates a new one. */
func MkTHint(typeName string) THint {
	tMap.lock.Lock()
	if tHint, found := tMap.uidsMap[typeName]; found {
		tMap.lock.Unlock()
		return tHint
	}
	tMap.lock.Unlock()

	tCounter.lock.Lock()
	tHint := THint{uid: tCounter.count, euid: encode([]uint64{tCounter.count}, ETHint), name: typeName}

	tMap.lock.Lock()
	tMap.uidsMap[typeName] = tHint
	tMap.lock.Unlock()

	tCounter.count += 1
	tCounter.lock.Unlock()

	return tHint
}

/* Makes a TCross from any number of TSchemes */
func MkTCross(tSchemes ...TScheme) TCross {
	tc := TCross{uid: 0, types: tSchemes}
	tc.uid = encode(tc.toList(), ETCross)
	return tc
}

/* Makes a TArrow from two TSchemes */
func MkTArrow(inArg TScheme, outArg TScheme) TArrow {
	ta := TArrow{uid: 0, in: inArg, out: outArg}
	ta.uid = encode(ta.toList(), ETArrow)
	return ta
}