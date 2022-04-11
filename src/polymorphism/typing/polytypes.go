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

func (th TypeHint) ToString() string           { return th.name }
func (th TypeHint) UID() uint64                { return th.euid }
func (th TypeHint) Equals(oth TypeScheme) bool { return oth.UID() == th.UID() }
func (th TypeHint) Size() int                  { return 1 }
func (th TypeHint) GetPrimitives() []TypeApp   { return []TypeApp{th} }

/* TypeApp interface */
func (th TypeHint) isTypeApp()                                          {}
func (th TypeHint) substitute(mapSubst map[TypeVar]TypeHint) TypeScheme { return th }

func (th TypeHint) ToTypeScheme() TypeScheme { return th }
func (th TypeHint) Copy() TypeApp            { return MkTypeHint(th.name) }

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

func (tc TypeCross) ToString() string           { return "(" + strings.Join(subtypesStr(tc.types), " * ") + ")" }
func (tc TypeCross) UID() uint64                { return tc.uid }
func (tc TypeCross) Equals(oth TypeScheme) bool { return oth.UID() == tc.UID() }
func (tc TypeCross) Size() int                  { return getSize(tc.types) }
func (tc TypeCross) GetPrimitives() []TypeApp   { return tc.GetAllUnderlyingTypes() }

/* TypeApp interface */
func (tc TypeCross) isTypeApp()               {}
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

func (tc TypeCross) GetAllUnderlyingTypes() []TypeApp {
	return getAllUnderlyingTypes(tc.types)
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

func (ta TypeArrow) ToString() string           { return "(" + strings.Join(subtypesStr(ta.types), " > ") + ")" }
func (ta TypeArrow) UID() uint64                { return ta.uid }
func (ta TypeArrow) Equals(oth TypeScheme) bool { return oth.UID() == ta.UID() }
func (ta TypeArrow) Size() int                  { return getSize(ta.types) }
func (ta TypeArrow) GetPrimitives() []TypeApp   { return getAllUnderlyingTypes(ta.types) }

/* TypeArrow methods */
func (ta TypeArrow) substitute(mapSubst map[TypeVar]TypeHint) TypeScheme {
	return MkTypeArrow(substTypeAppList(mapSubst, ta.types)...)
}

/**
 * A quantified variable of type.
 * It's not a TypeScheme, but it can serve in arguments of a function or predicate.
 **/
type TypeVar struct {
	name     string
	metaInfo struct {
		formulaIndex int
		index        int
	}
}

/* TypeApp interface */
func (tv TypeVar) isTypeApp() {}

func (tv TypeVar) substitute(mapSubst map[TypeVar]TypeHint) TypeScheme { return mapSubst[tv] }

func (tv TypeVar) ToString() string         { return tv.name }
func (tv TypeVar) ToTypeScheme() TypeScheme { return nil }
func (tv TypeVar) Copy() TypeApp            { return MkTypeVar(tv.name) }
func (tv TypeVar) Equals(oth TypeVar) bool {
	return tv.name == oth.name && tv.metaInfo == oth.metaInfo
}
func (tv TypeVar) Size() int { return 1 }

/* TypeVar should be converted to Meta when becoming a term */
func (tv *TypeVar) ShouldBeMeta(formula int) { tv.metaInfo.formulaIndex = formula }
func (tv *TypeVar) Instantiate(index int)    { tv.metaInfo.index = index }
func (tv TypeVar) IsMeta() bool              { return tv.metaInfo.formulaIndex != -1 }
func (tv TypeVar) Instantiated() bool        { return tv.metaInfo.index != -1 }
func (tv TypeVar) MetaInfos() (int, int)     { return tv.metaInfo.formulaIndex, tv.metaInfo.index }

/**
 * Quantified TypeScheme.
 * It has a list of type vars and an associated scheme.
 **/
type QuantifiedType struct {
	vars   []TypeVar
	scheme TypeScheme
}

/* TypeScheme interface */
func (qt QuantifiedType) isScheme()        {}
func (qt QuantifiedType) toList() []uint64 { return qt.scheme.toList() }

func (qt QuantifiedType) UID() uint64                { return qt.scheme.UID() }
func (qt QuantifiedType) Equals(oth TypeScheme) bool { return oth.UID() == qt.scheme.UID() }
func (qt QuantifiedType) QuantifiedVarsLen() int     { return len(qt.vars) }
func (qt QuantifiedType) QuantifiedVars() []TypeVar  { return qt.vars }
func (qt QuantifiedType) Size() int                  { return qt.scheme.Size() }

func (qt QuantifiedType) ToString() string {
	varsString := []string{}
	for _, var_ := range qt.vars {
		varsString = append(varsString, var_.ToString())
	}
	return "Π " + strings.Join(varsString, ", ") + ": Type, " + qt.scheme.ToString()
}

func (qt QuantifiedType) GetPrimitives() []TypeApp {
	vars := make(map[TypeHint]TypeVar)
	for i, var_ := range qt.vars {
		vars[MkTypeHint(fmt.Sprintf("*_%d", i))] = var_
	}
	primitives := []TypeApp{}
	for _, th := range qt.scheme.GetPrimitives() {
		if var_, found := vars[th.(TypeHint)]; found {
			primitives = append(primitives, var_)
		} else {
			primitives = append(primitives, th)
		}
	}
	return primitives
}

/**
 * Parameterized Type (TypeApp + TypeScheme)
 * A Type which is parameterized with type apps to compose types.
 * Example: map(int, int)
 **/
type ParameterizedType struct {
	name       string
	uid        uint64
	parameters []TypeApp
}

/* TypeScheme interface */
func (pt ParameterizedType) isScheme()        {}
func (pt ParameterizedType) toList() []uint64 { return subtypesUID(pt.parameters) }

func (pt ParameterizedType) ToString() string           { return pt.name }
func (pt ParameterizedType) UID() uint64                { return pt.uid }
func (pt ParameterizedType) Equals(oth TypeScheme) bool { return oth.UID() == pt.UID() }
func (pt ParameterizedType) Size() int                  { return 1 }
func (pt ParameterizedType) GetPrimitives() []TypeApp   { return []TypeApp{pt} }
func (pt ParameterizedType) GetParameters() []TypeApp   { return pt.parameters }

/* TypeApp interface */
func (pt ParameterizedType) isTypeApp() {}
func (pt ParameterizedType) substitute(mapSubst map[TypeVar]TypeHint) TypeScheme {
	newPt := ParameterizedType{pt.name, 0, []TypeApp{}}
	for _, param := range pt.parameters {
		newPt.parameters = append(newPt.parameters, param.substitute(mapSubst).(TypeApp))
	}
	return newPt
}

func (pt ParameterizedType) ToTypeScheme() TypeScheme { return pt }
func (pt ParameterizedType) Copy() TypeApp            { return MkTypeHint(pt.name) }

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
		sum += type_.ToTypeScheme().Size()
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

func getAllUnderlyingTypes(ta []TypeApp) []TypeApp {
	underlyingTypes := []TypeApp{}
	for _, typeApp := range ta {
		if tc, isTc := typeApp.(TypeCross); isTc {
			underlyingTypes = append(underlyingTypes, getAllUnderlyingTypes(tc.types)...)
		} else {
			underlyingTypes = append(underlyingTypes, typeApp)
		}
	}
	return underlyingTypes
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

	// Instanciate parameters map
	pMap.parametersMap = make(map[string][]TypeApp)
	pMap.lock = sync.Mutex{}

	// Default types
	defaultType = MkTypeHint("i")
	defaultProp = MkTypeHint("o")
	// TPTP
	//initTPTPArithmetic()
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
	return TypeVar{name, struct {
		formulaIndex int
		index        int
	}{-1, -1}}
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
		types = nextTypes
	} else {
		pMap.lock.Unlock()
		fmt.Println("[ERROR] Parameterized type not found.")
		return ParameterizedType{}
	}
	pMap.lock.Unlock()

	parameterizedType := ParameterizedType{name, 0, types}

	vars := []TypeVar{}
	for _, type_ := range types {
		if var_, ok := type_.(TypeVar); ok {
			vars = append(vars, var_)
		}
	}
	ls := parameterizedType.substitute(utilMapCreation(vars)).toList()
	ls = append(ls, MkTypeHint(parameterizedType.name).UID())
	parameterizedType.uid = encode(ls, ETypeArrow)

	return parameterizedType
}

/* Gets the out type of an arrow type scheme */
func GetOutType(typeScheme TypeScheme) TypeApp {
	// typeScheme may be a TypeHint if it comes from a constant.
	switch t := typeScheme.(type) {
	case TypeArrow:
		return t.types[len(t.types)-1]
	case QuantifiedType:
		return GetOutType(t.scheme)
	case TypeHint:
		return t
	}
	return nil
}

/* Gets the input type of an arrow type scheme */
func GetInputType(typeScheme TypeScheme) TypeApp {
	// typeScheme may be a TypeHint if it comes from a constant.
	switch t := typeScheme.(type) {
	case TypeArrow:
		return t.types[0]
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
