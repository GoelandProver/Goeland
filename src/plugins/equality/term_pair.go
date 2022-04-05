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
/****************/
/* term_pair.go */
/****************/
/**
* This file contains the type definition for equality reasonning.
**/

package main

import (
	basictypes "github.com/GoelandProver/Goeland/types/basic-types"
)

/* A pair of two terms */
type TermPair struct {
	t1, t2 basictypes.Term
}

func (tp TermPair) GetT1() basictypes.Term {
	return tp.t1.Copy()
}
func (tp TermPair) GetT2() basictypes.Term {
	return tp.t2.Copy()
}
func (tp TermPair) Copy() TermPair {
	return MakeTermPair(tp.GetT1(), tp.GetT2())
}
func (tp TermPair) Equals(tp2 TermPair) bool {
	return tp.GetT1().Equals(tp2.t1) && tp.GetT2().Equals(tp2.GetT2())
}
func (tp TermPair) ToString() string {
	return tp.GetT1().ToString() + " ≈ " + tp.GetT2().ToString()
}
func MakeTermPair(t1, t2 basictypes.Term) TermPair {
	return TermPair{t1.Copy(), t2.Copy()}
}