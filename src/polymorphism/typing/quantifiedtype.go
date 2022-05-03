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

/***********************/
/*  quantifiedtype.go  */
/***********************/

/**
 * This file declares one of the basic types used for typing the prover :
 * QuantifiedType, the Pi operator.
 **/

package polymorphism

import (
	"fmt"
	"strings"

	. "github.com/GoelandProver/Goeland/global"
)

/**
 * Quantified TypeScheme.
 * It has a list of type vars and an associated scheme.
 **/
type QuantifiedType struct {
	vars   ComparableList[TypeVar]
	scheme TypeScheme
}

/* TypeScheme interface */
func (qt QuantifiedType) isScheme() {}

func (qt QuantifiedType) Equals(oth interface{}) bool {
	if !Is[QuantifiedType](oth) {
		return false
	}
	othQT := To[QuantifiedType](oth)
	return qt.vars.Equals(othQT.vars) && qt.scheme.Equals(othQT.scheme)
}

func (qt QuantifiedType) QuantifiedVarsLen() int    { return len(qt.vars) }
func (qt QuantifiedType) QuantifiedVars() []TypeVar { return qt.vars }
func (qt QuantifiedType) Size() int                 { return qt.scheme.Size() }

func (qt QuantifiedType) ToString() string {
	return "Π " + strings.Join(convert(qt.vars, typeTToString[TypeVar]), ", ") + ": Type, " + qt.scheme.ToString()
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
		fmt.Println("[ERROR] MkQuantifiedType: reached an unreachable case.")
	}

	return QuantifiedType{vars: vars, scheme: typeScheme}
}
