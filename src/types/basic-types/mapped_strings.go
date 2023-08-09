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

/*********************/
/* mapped_strings.go */
/*********************/

/**
* This file provides things.
**/

package basictypes

import (
	"strings"

	"github.com/GoelandProver/Goeland/global"
)

type FormulaType int
type MapString map[FormulaType]string

const (
	AndConn FormulaType = iota
	OrConn
	ImpConn
	EquConn
	NotConn
	TopType
	BotType
	AllQuant
	ExQuant
	AllTypeQuant
	QuantVarOpen
	QuantVarClose
	QuantVarSep
	PredEmpty
	PredTypeVarSep
	TypeVarType
)

var defaultMap = make(map[FormulaType]string)

func initDefaultMap() {
	if global.IsPrettyPrint() {
		defaultMap[AndConn] = "∧"
		defaultMap[OrConn] = "∨"
		defaultMap[ImpConn] = "⇒"
		defaultMap[EquConn] = "⇔"
		defaultMap[NotConn] = "¬"
		defaultMap[TopType] = "⊤"
		defaultMap[BotType] = "⊥"
		defaultMap[AllQuant] = "∀"
		defaultMap[ExQuant] = "∃"
		defaultMap[AllTypeQuant] = "∀"
		defaultMap[PredEmpty] = "∅"
	} else {
		defaultMap[AndConn] = "&"
		defaultMap[OrConn] = "|"
		defaultMap[ImpConn] = "=>"
		defaultMap[EquConn] = "<=>"
		defaultMap[NotConn] = "~"
		defaultMap[TopType] = "$true"
		defaultMap[BotType] = "$false"
		defaultMap[AllQuant] = "!"
		defaultMap[ExQuant] = "?"
		defaultMap[AllTypeQuant] = "!"
		defaultMap[PredEmpty] = "{}"
	}
	defaultMap[QuantVarOpen] = "["
	defaultMap[QuantVarClose] = "]"
	defaultMap[QuantVarSep] = ":"
	defaultMap[PredTypeVarSep] = ";"
	defaultMap[TypeVarType] = "$tType"
}

type MappableString interface {
	global.Stringable

	ToMappedString(MapString, bool) string
	ToMappedStringSurround(MapString, bool) string
	ToMappedStringChild(MapString, bool) (string, string) //Return 3 things: surround of each child, separator of each child, what to print if no child
}

type MappedString struct {
	MappableString
}

func (fms MappedString) ToString() string {
	return fms.ToMappedString(defaultMap, true)
}

func (fms MappedString) ToMappedString(mapping MapString, displayType bool) string {
	return fms.ToMappedStringSurround(mapping, displayType) + fms.ToMappedStringChild(mapping, displayType)
}

func ListToMappedString[T MappableString](sgbl []T, separator, emptyValue string, mapping MapString, displayTypes bool) string {
	strArr := []string{}

	for _, element := range sgbl {
		strArr = append(strArr, element.ToMappedString(mapping, displayTypes))
	}

	if len(strArr) == 0 && emptyValue != "" {
		strArr = append(strArr, emptyValue)
	}

	return strings.Join(strArr, separator)
}
