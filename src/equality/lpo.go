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
/**********/
/* lpo.go */
/**********/
/**
* This file contains the type definitionof the lixicographic path ordering.
**/

package equality

import (
	"strconv"
	"sync"

	basictypes "github.com/GoelandProver/Goeland/types/basic-types"
)

type LPO map[basictypes.Term]int

var lock_lpo sync.Mutex

func (lpo LPO) Get(t basictypes.Term) int {
	res, found := lpo[t]
	if found {
		return res
	} else {
		return -1
	}
}

func (lpo *LPO) Insert(t basictypes.Term) {
	lock_lpo.Lock()
	(*lpo)[t] = len(*lpo)
	lock_lpo.Unlock()
}

func (lpo LPO) Contains(t basictypes.Term) bool {
	return lpo.Get(t) != -1
}

func (lpo *LPO) InsertIfNotContains(t basictypes.Term) {
	if lpo.Contains(t) {
		lpo.Insert(t)
	}
}

/* returns positive number if t1 > t2, 0 if t1 = t2, netaive if t2 > t1*/
func (lpo LPO) Compare(t1, t2 basictypes.Term) int {
	return lpo.Get(t1) - lpo.Get(t2)
}

/* Is empty */
func (lpo LPO) IsEmpty() bool {
	return (lpo == nil || len(lpo) == 0)
}

/* ToString */
func (lpo LPO) ToString() string {
	res := "{"
	for term, value := range lpo {
		res = "[" + term.ToString() + "] : " + strconv.Itoa(value)
		if value != len(lpo)-1 {
			res += ", "
		}
	}
	return res + "}"
}

/* Copy an LPO */
func (lpo LPO) Copy() LPO {
	res := LPO{}
	lock_lpo.Lock()
	for term, value := range lpo {
		res[term.Copy()] = value
	}
	lock_lpo.Unlock()
	return res
}

/* Maker */
func MakeLPO() LPO {
	return LPO{}
}
