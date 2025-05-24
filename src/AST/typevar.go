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
 * TypeVar, a variable of type.
 **/

package AST

import (
	"github.com/GoelandProver/Goeland/Glob"
)

const (
	BAD_INDEX = -1
)

/**
 * A quantified variable of type.
 * It can serve in arguments of a function or predicate.
 **/
type TypeVar struct {
	name     string
	metaInfo struct {
		formulaIndex int
		index        int
		occurence    int
	}
}

/* TypeScheme interface */
// Non-exported methods.
func (tv TypeVar) isScheme() {}
func (tv TypeVar) toMappedString(subst map[string]string) string {
	if substString, inMap := subst[tv.name]; inMap {
		return substString
	}
	return tv.name
}

// Exported methods.
func (tv TypeVar) ToString() string         { return tv.name }
func (tv TypeVar) Size() int                { return 1 }
func (tv TypeVar) GetPrimitives() []TypeApp { return []TypeApp{tv} }

func (tv TypeVar) Equals(oth interface{}) bool {
	if tv.metaInfo.formulaIndex != BAD_INDEX && tv.metaInfo.index != BAD_INDEX {
		return true
	}
	if !Glob.Is[TypeVar](oth) {
		return false
	}
	typeVar := Glob.To[TypeVar](oth)
	return typeVar.name == tv.name && typeVar.metaInfo == tv.metaInfo
}

/* TypeApp interface */
func (tv TypeVar) isTypeApp() {}

func (tv TypeVar) substitute(mapSubst map[TypeVar]string) TypeScheme {
	newTv := tv.Copy().(TypeVar)
	newTv.name = mapSubst[tv]
	return newTv
}

func (tv TypeVar) instanciate(mapSubst map[TypeVar]TypeApp) TypeApp {
	if typeApp, found := mapSubst[tv]; found {
		return typeApp
	} else {
		return tv
	}
}

func (tv TypeVar) Copy() TypeApp {
	newTv := MkTypeVar(tv.name)
	newTv.metaInfo = tv.metaInfo
	return newTv
}

/* TypeVar should be converted to Meta when becoming a term */
func (tv *TypeVar) ShouldBeMeta(formula int) { tv.metaInfo.formulaIndex = formula }
func (tv *TypeVar) Instantiate(index int)    { tv.metaInfo.index = index }
func (tv TypeVar) IsMeta() bool              { return tv.metaInfo.formulaIndex != BAD_INDEX }
func (tv TypeVar) Instantiated() bool        { return tv.metaInfo.index != BAD_INDEX }
func (tv TypeVar) MetaInfos() (int, int, int) {
	return tv.metaInfo.formulaIndex, tv.metaInfo.index, tv.metaInfo.occurence
}

/* Makes a TypeVar from a name */
func MkTypeVar(name string) TypeVar {
	return TypeVar{name, struct {
		formulaIndex int
		index        int
		occurence    int
	}{BAD_INDEX, BAD_INDEX, BAD_INDEX}}
}
