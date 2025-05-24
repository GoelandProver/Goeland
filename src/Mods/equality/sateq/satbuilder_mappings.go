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
	"github.com/GoelandProver/Goeland/Glob"
)

type SMapping map[Glob.Pair[*termRecord, *eqClass]]Lit
type EMapping map[int]map[unorderedPair[*eqClass]]Lit // we make unorderedPairs of *eqClass, which is correct only as long as we don't mutate (merge) them
type RMapping map[Glob.Pair[*eqClass, *termRecord]]Lit
type OMapping map[Glob.Pair[*eqClass, *eqClass]]Lit
type CMapping map[int]Lit
type FMapping map[int]map[unorderedPair[*termRecord]]Lit
type TMapping map[int]map[Glob.Pair[unorderedPair[*eqClass], *eqClass]]Lit

func getIdAndRegister[T comparable](sb *SatBuilder, element T, mapping map[T]Lit) (Lit, bool) {
	if value, found := mapping[element]; found {
		return value, false
	} else {
		result := Lit(sb.gini.Lit())
		sb.lits.Append(result)
		mapping[element] = result
		return result, true
	}
}

func (sb *SatBuilder) getVarFromSMapping(t *termRecord, r *eqClass) Lit {
	pair := Glob.MakePair(t, r.representative())
	lit, _ := getIdAndRegister[Glob.Pair[*termRecord, *eqClass]](sb, pair, sb.sMapping)
	return lit
}

func (sb *SatBuilder) getVarFromEMapping(index int, r1, r2 *eqClass) Lit {
	_, found := sb.eMapping[index]
	if !found {
		sb.eMapping[index] = make(map[unorderedPair[*eqClass]]Lit)
	}
	pair := makeUnorderedPair[*eqClass](r1.representative(), r2.representative())
	lit, _ := getIdAndRegister[unorderedPair[*eqClass]](sb, pair, sb.eMapping[index])
	return lit
}

func (sb *SatBuilder) getVarFromRMapping(r *eqClass, t *termRecord) Lit {
	pair := Glob.MakePair(r.representative(), t)
	lit, _ := getIdAndRegister[Glob.Pair[*eqClass, *termRecord]](sb, pair, sb.rMapping)
	return lit
}

func (sb *SatBuilder) getVarFromOMapping(r1, r2 *eqClass) Lit {
	pair := Glob.MakePair(r1.representative(), r2.representative())
	lit, _ := getIdAndRegister[Glob.Pair[*eqClass, *eqClass]](sb, pair, sb.oMapping)
	return lit
}

func (sb *SatBuilder) getVarFromCMapping(index int) Lit {
	lit, _ := getIdAndRegister[int](sb, index, sb.cMapping)
	return lit
}

func (sb *SatBuilder) getVarFromϕMapping(index int, r1, r2 *eqClass) (Lit, bool) {
	_, found := sb.ϕMapping[index]
	if !found {
		sb.ϕMapping[index] = make(map[unorderedPair[*eqClass]]Lit)
	}
	pair := makeUnorderedPair[*eqClass](r1.representative(), r2.representative())
	return getIdAndRegister[unorderedPair[*eqClass]](sb, pair, sb.ϕMapping[index])
}

func (sb *SatBuilder) getVarFrom𝜓Mapping(index int, r1, r2 *eqClass) (Lit, bool) {
	_, found := sb.𝜓Mapping[index]
	if !found {
		sb.𝜓Mapping[index] = make(map[unorderedPair[*eqClass]]Lit)
	}
	pair := makeUnorderedPair[*eqClass](r1.representative(), r2.representative())
	return getIdAndRegister[unorderedPair[*eqClass]](sb, pair, sb.𝜓Mapping[index])
}

func (sb *SatBuilder) getVarFromFMapping(index int, t1, t2 *termRecord) Lit {
	_, found := sb.fMapping[index]
	if !found {
		sb.fMapping[index] = make(map[unorderedPair[*termRecord]]Lit)
	}
	pair := makeUnorderedPair[*termRecord](t1, t2)
	lit, _ := getIdAndRegister[unorderedPair[*termRecord]](sb, pair, sb.fMapping[index])
	return lit
}

func (sb *SatBuilder) getVarFromTMapping(index int, r1, r2, r3 *eqClass) Lit {
	_, found := sb.tMapping[index]
	if !found {
		sb.tMapping[index] = make(map[Glob.Pair[unorderedPair[*eqClass], *eqClass]]Lit)
	}
	triplet := Glob.MakePair[unorderedPair[*eqClass], *eqClass](makeUnorderedPair[*eqClass](r1.representative(), r2.representative()), r3.representative())
	lit, _ := getIdAndRegister[Glob.Pair[unorderedPair[*eqClass], *eqClass]](sb, triplet, sb.tMapping[index])
	return lit
}
