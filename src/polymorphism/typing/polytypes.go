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
	"fmt"
	"strings"
	"sync"

	"github.com/GoelandProver/Goeland/global"
)

/**
 * Polymorphic type, used either as a TypeHint, TypeCross or a TypeArrow to allow the inductive
 * composition of either of the 3 to give a TypeScheme.
 **/
type TypeScheme interface {
	/* Non-exported methods */
	isScheme()
	toList() []uint64
	size() int

	/* Exported methods */
	ToString() string
	UID() uint64
	Equals(oth TypeScheme) bool
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
	size() int
	substitute(map[TypeVar]TypeHint) TypeScheme

	/* Exported methods */
	ToString() string
	ToTypeScheme() TypeScheme
	Copy() TypeApp
}

/**
 * Primitive type composed of an unique identifier, used to identify it from
 * other types, and a name, used for printing options.
 **/
type TypeHint struct {
	uid  uint64 /* Real ID */
	euid uint64 /* Encoded ID */
	name string /* Name */
}

/* TypeScheme interface */
func (th TypeHint) isScheme()        {}
func (th TypeHint) toList() []uint64 { return []uint64{th.uid} }
func (th TypeHint) size() int 		 { return 1 }

func (th TypeHint) ToString() string           { return th.name }
func (th TypeHint) UID() uint64                { return th.euid }
func (th TypeHint) Equals(oth TypeScheme) bool { return oth.UID() == th.UID() }

/* TypeApp interface */
func (th TypeHint) isTypeApp() {}
func (th TypeHint) substitute(mapSubst map[TypeVar]TypeHint) TypeScheme { return th }

func (th TypeHint) ToTypeScheme() TypeScheme { return th }
func (th TypeHint) Copy() TypeApp { return MkTypeHint(th.name) }

/**
 * Type consisting of an array of TypeScheme, to concatenate each of theme with a cross
 * operator.
 * For example, if a function f takes to parameters of type int, it will be typed as
 * f : int * int
 **/
type TypeCross struct {
	uid   uint64
	types []TypeApp
}

/* TypeScheme interface */
func (tc TypeCross) isScheme()        {}
func (tc TypeCross) toList() []uint64 { return subtypesUID(tc.types) }
func (tc TypeCross) size() int 		  { return getSize(tc.types) }

func (tc TypeCross) ToString() string           { return "(" + strings.Join(subtypesStr(tc.types), " * ") + ")" }
func (tc TypeCross) UID() uint64                { return tc.uid }
func (tc TypeCross) Equals(oth TypeScheme) bool { return oth.UID() == tc.UID() }

/* TypeApp interface */
func (tc TypeCross) isTypeApp() {}

func (tc TypeCross) ToTypeScheme() TypeScheme { return tc }

func (tc TypeCross) Copy() TypeApp { 
	newTypeApp := []TypeApp{}
	for _, type_ := range tc.types {
		newTypeApp = append(newTypeApp, type_.Copy())
	}
	return MkTypeCross(newTypeApp...) 
}

func (tc TypeCross) substitute(mapSubst map[TypeVar]TypeHint) TypeScheme { 
	return MkTypeCross(substTypeAppList(mapSubst, tc.types)...)
}

/**
 * Type consisting of two TypeSchemes : the in-arguments parameter(s) and the out parameter.
 * For example, if a function f takes to parameters of type int, and returns an int, it
 * will be typed as f : (int * int) -> int
 * TypeCross has higher precedence than TypeArrow.
 **/
type TypeArrow struct {
	uid   uint64
	types []TypeApp
}

/* TypeScheme interface */
func (ta TypeArrow) isScheme()        {}
func (ta TypeArrow) toList() []uint64 { return subtypesUID(ta.types) }
func (ta TypeArrow) size() int 		  { return getSize(ta.types) }

func (ta TypeArrow) ToString() string           { return "(" + strings.Join(subtypesStr(ta.types), " > ") + ")" }
func (ta TypeArrow) UID() uint64                { return ta.uid }
func (ta TypeArrow) Equals(oth TypeScheme) bool { return oth.UID() == ta.UID() }

/* TypeArrow methods */
func (ta TypeArrow) substitute(mapSubst map[TypeVar]TypeHint) TypeScheme { 
	return MkTypeArrow(substTypeAppList(mapSubst, ta.types)...)
}

/**
 * A quantified variable of type.
 * It's not a TypeScheme, but it can serve in arguments of a function or predicate.
 **/
type TypeVar struct {
	name string
}

/* TypeApp interface */
func (tv TypeVar) isTypeApp() {}
func (tv TypeVar) size() int  { return 1 }

func (tv TypeVar) substitute(mapSubst map[TypeVar]TypeHint) TypeScheme { return mapSubst[tv] }

func (tv TypeVar) ToString() string 		{ return tv.name }
func (tv TypeVar) ToTypeScheme() TypeScheme { return nil }
func (tv TypeVar) Copy() TypeApp { return MkTypeVar(tv.name) }

/** 
 * Quantified TypeScheme.
 * It has a list of type vars and an associated scheme.
 **/
type QuantifiedType struct {
	vars []TypeVar 
	scheme TypeScheme
}

/* TypeScheme interface */
func (qt QuantifiedType) isScheme()        {}
func (qt QuantifiedType) toList() []uint64 { return qt.scheme.toList() }
func (qt QuantifiedType) size() int 	   { return qt.scheme.size() }

func (qt QuantifiedType) UID() uint64                { return qt.scheme.UID() }
func (qt QuantifiedType) Equals(oth TypeScheme) bool { return oth.UID() == qt.scheme.UID() }

func (qt QuantifiedType) ToString() string {
	varsString := []string{}
	for _, var_ := range qt.vars {
		varsString = append(varsString, var_.ToString())
	}  
	return "Π " + strings.Join(varsString, ", ") + ": Type, " + qt.scheme.ToString() 
}

/** Utils **/

func subtypesStr(types []TypeApp) []string {
	tStr := []string{}
	for _, type_ := range types {
		tStr = append(tStr, type_.ToString())
	}
	return tStr
}

func subtypesUID(types []TypeApp) []uint64 {
	uidList := []uint64{}
	for _, type_ := range types {
		if tScheme := type_.ToTypeScheme(); tScheme != nil {
			uidList = append(uidList, tScheme.UID())
		}
	}
	return uidList
}

func getSize(types []TypeApp) int {
	sum := 0
	for _, type_ := range types {
		sum += type_.ToTypeScheme().size()
	}
	return sum
}

func substTypeAppList(mapSubst map[TypeVar]TypeHint, typeApp []TypeApp) []TypeApp {
	newTypeApp := []TypeApp{}
	for _, type_ := range typeApp {
		newTypeApp = append(newTypeApp, type_.substitute(mapSubst).(TypeApp))
	}
	return newTypeApp
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

	// Instantiate typeSchemesMap
	typeSchemesMap.tsMap = make(map[string][]App)
	typeSchemesMap.lock = sync.Mutex{}

	// TPTP
	initTPTPTypes()
}

/* Makes a TypeHint. If it has already been created, return the right one. Else, creates a new one. */
func MkTypeHint(typeName string) TypeHint {
	tMap.lock.Lock()
	if tHint, found := tMap.uidsMap[typeName]; found {
		tMap.lock.Unlock()
		return tHint
	}
	tMap.lock.Unlock()

	tCounter.lock.Lock()
	tHint := TypeHint{uid: tCounter.count, euid: encode([]uint64{tCounter.count}, ETypeHint), name: typeName}

	tMap.lock.Lock()
	tMap.uidsMap[typeName] = tHint
	tMap.lock.Unlock()

	tCounter.count += 1
	tCounter.lock.Unlock()

	return tHint
}

/* Makes a TypeCross from any number of TypeSchemes */
func MkTypeCross(typeSchemes ...TypeApp) TypeCross {
	tc := TypeCross{uid: 0, types: typeSchemes}
	if len(tc.toList()) > 0 {
		tc.uid = encode(tc.toList(), ETypeCross)
	}
	return tc
}

/* Makes a TypeArrow from two TypeSchemes */
func MkTypeArrow(typeSchemes ...TypeApp) TypeArrow {
	ta := TypeArrow{uid: 0, types: typeSchemes}
	if len(ta.toList()) > 0 {
		ta.uid = encode(ta.toList(), ETypeArrow)
	}
	return ta
}

/* Makes a TypeVar from a name */
func MkTypeVar(name string) TypeVar {
	return TypeVar{name}
}

/* Makes a QuantifiedType from TypeVars and a TypeScheme. */
func MkQuantifiedType(vars []TypeVar, typeScheme TypeScheme) QuantifiedType {
	// Modify the typeScheme to make it modulo alpha-conversion
	
	// 1 - Corresponding map creation
	metaTypeMap := utilMapCreation(vars)
	
	// 2 - Substitute all TypeVar with the meta type
	switch ts := typeScheme.(type) {
	case TypeApp:
		typeScheme = ts.substitute(metaTypeMap)
	case TypeArrow:
		typeScheme = ts.substitute(metaTypeMap)
	default:
		global.PrintDebug("MQT", "Error: shouldn't be here")
	}
	
	return QuantifiedType{vars: vars, scheme: typeScheme}
}

/* Gets the out type of an arrow type scheme */
func GetOutType(typeScheme TypeScheme) TypeApp {
	// typeScheme may be a TypeHint if it comes from a constant.
	switch t := typeScheme.(type) {
	case TypeArrow:
		return t.types[len(t.types)-1]
	case TypeHint:
		return t
	}
	return nil
}

/* Gets the input type of an arrow type scheme */
func GetInputType(typeScheme TypeScheme) []TypeApp {
	// typeScheme may be a TypeHint if it comes from a constant.
	switch t := typeScheme.(type) {
	case TypeArrow:
		return t.types[len(t.types)-2:]
	case TypeHint:
		return []TypeApp{}
	}
	return nil
}

/* Utils */

func utilMapCreation(vars []TypeVar) map[TypeVar]TypeHint {
	metaTypeMap := make(map[TypeVar]TypeHint)
	for i, var_ := range vars {
		metaTypeMap[var_] = MkTypeHint(fmt.Sprintf("*_%d", i))
	}
	return metaTypeMap
}