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
/*****************/
/* SubstPair.go */
/*****************/
/**
* This file provides the necessary structures to manipulate pairs of substitutions.
**/

package treetypes

import (
	"strconv"

	basictypes "github.com/GoelandProver/Goeland/types/basic-types"
)

/* Association between an integer and a Term. */
type SubstPair struct {
	i    int
	term basictypes.Term
}

func (s SubstPair) GetIndex() int {
	return s.i
}

func (s SubstPair) GetTerm() basictypes.Term {
	return s.term.Copy()
}

func (s SubstPair) Copy() SubstPair {
	return MakeSubstPair(s.GetIndex(), s.GetTerm().Copy())
}

func GetSubstAt(subst []SubstPair, index int) basictypes.Term {
	for _, sub := range subst {
		if sub.i == index {
			return sub.GetTerm()
		}
	}
	return nil
}

func SubstPairListToString(s []SubstPair) string {
	res := "{"
	for i, v := range s {
		res += "(" + strconv.Itoa(v.i) + ", " + v.GetTerm().ToString() + ")"
		if i < len(s)-1 {
			res += ", "
		}
	}

	res += "}"
	return res
}

/* Maker */
func MakeSubstPair(i int, term basictypes.Term) SubstPair {
	return SubstPair{i, term.Copy()}
}

/* Copy a list of substPair */
func CopySubstPairList(sl []SubstPair) []SubstPair {
	res := []SubstPair{}
	for _, sp := range sl {
		res = append(res, sp.Copy())
	}
	return res
}
