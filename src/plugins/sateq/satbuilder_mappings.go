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
package sateq

import (
	"github.com/GoelandProver/Goeland/global"
)

type SMapping map[global.Pair[termIndex, constant]]Lit
type EMapping map[int]map[unorderedPair[constant]]Lit
type RMapping map[global.Pair[constant, termIndex]]Lit
type OMapping map[global.Pair[constant, constant]]Lit
type CMapping map[int]Lit
type FMapping map[int]map[unorderedPair[termIndex]]Lit
type TMapping map[int]map[global.Pair[unorderedPair[constant], constant]]Lit

func getIdAndRegister[T comparable](sb *SatBuilder, element T, mapping map[T]Lit) (Lit, bool) {
	if value, found := mapping[element]; found {
		return value, false
	} else {
		result := Lit(sb.gini.Lit())
		sb.lits.Append(result)
		mapping[element] = result
		return Lit(result), true
	}
}

func (sb *SatBuilder) getVarFromSMapping(t termIndex, c constant) Lit {
	pair := global.MakePair(t, c)
	lit, _ := getIdAndRegister[global.Pair[termIndex, constant]](sb, pair, sb.sMapping)
	return lit
}

func (sb *SatBuilder) getVarFromEMapping(index int, c1 constant, c2 constant) Lit {
	_, found := sb.eMapping[index]
	if !found {
		sb.eMapping[index] = make(map[unorderedPair[constant]]Lit)
	}
	pair := makeUnorderedPair[constant](c1, c2)
	lit, _ := getIdAndRegister[unorderedPair[constant]](sb, pair, sb.eMapping[index])
	return lit
}

func (sb *SatBuilder) getVarFromRMapping(c constant, t termIndex) Lit {
	pair := global.MakePair(c, t)
	lit, _ := getIdAndRegister[global.Pair[constant, termIndex]](sb, pair, sb.rMapping)
	return lit
}

func (sb *SatBuilder) getVarFromOMapping(c1 constant, c2 constant) Lit {
	pair := global.MakePair(c1, c2)
	lit, _ := getIdAndRegister[global.Pair[constant, constant]](sb, pair, sb.oMapping)
	return lit
}

func (sb *SatBuilder) getVarFromCMapping(index int) Lit {
	lit, _ := getIdAndRegister[int](sb, index, sb.cMapping)
	return lit
}

func (sb *SatBuilder) getVarFromϕMapping(index int, c1 constant, c2 constant) (Lit, bool) {
	_, found := sb.ϕMapping[index]
	if !found {
		sb.ϕMapping[index] = make(map[unorderedPair[constant]]Lit)
	}
	pair := makeUnorderedPair[constant](c1, c2)
	return getIdAndRegister[unorderedPair[constant]](sb, pair, sb.ϕMapping[index])
}

func (sb *SatBuilder) getVarFrom𝜓Mapping(index int, c1 constant, c2 constant) (Lit, bool) {
	_, found := sb.𝜓Mapping[index]
	if !found {
		sb.𝜓Mapping[index] = make(map[unorderedPair[constant]]Lit)
	}
	pair := makeUnorderedPair[constant](c1, c2)
	return getIdAndRegister[unorderedPair[constant]](sb, pair, sb.𝜓Mapping[index])
}

func (sb *SatBuilder) getVarFromFMapping(index int, t1 termIndex, t2 termIndex) Lit {
	_, found := sb.fMapping[index]
	if !found {
		sb.fMapping[index] = make(map[unorderedPair[termIndex]]Lit)
	}
	pair := makeUnorderedPair[termIndex](t1, t2)
	lit, _ := getIdAndRegister[unorderedPair[termIndex]](sb, pair, sb.fMapping[index])
	return lit
}

func (sb *SatBuilder) getVarFromTMapping(index int, c1 constant, c2 constant, c3 constant) Lit {
	_, found := sb.tMapping[index]
	if !found {
		sb.tMapping[index] = make(map[global.Pair[unorderedPair[constant], constant]]Lit)
	}
	triplet := global.MakePair[unorderedPair[constant], constant](makeUnorderedPair[constant](c1, c2), c3)
	lit, _ := getIdAndRegister[global.Pair[unorderedPair[constant], constant]](sb, triplet, sb.tMapping[index])
	return lit
}
