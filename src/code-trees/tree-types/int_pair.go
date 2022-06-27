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
/***************/
/* Int_pair.go */
/***************/
/**
* This file provides the necessary structures to manipulate pairs of int.
**/

package treetypes

import (
	"strconv"

	basictypes "github.com/GoelandProver/Goeland/types/basic-types"
)

/* Association between an integer and an array of Terms. */
type IntPair struct {
	q     int
	terms []basictypes.Term
}

func (ip IntPair) GetQ() int {
	return ip.q
}
func (ip IntPair) GetTerms() []basictypes.Term {
	return basictypes.CopyTermList(ip.terms)
}

func (ip IntPair) ToString() string {
	res := "(" + strconv.Itoa(ip.q) + ", [" + basictypes.TermListToString(ip.terms) + "])"
	return res
}

func (ip IntPair) Copy() IntPair {
	return MakeIntPair(ip.GetQ(), ip.GetTerms())
}

func IntPairistToString(ipl []IntPair) string {
	res := "{"
	for i, ip := range ipl {
		res += ip.ToString()
		if i < len(ipl)-1 {
			res += ", "
		}
	}
	res += "}"

	return res
}

func MakeIntPair(q int, terms []basictypes.Term) IntPair {
	return IntPair{q, basictypes.CopyTermList(terms)}
}

func CopyIntPairList(ipl []IntPair) []IntPair {
	res := make([]IntPair, len(ipl))
	for i, ip := range ipl {
		res[i] = ip.Copy()
	}
	return res
}
