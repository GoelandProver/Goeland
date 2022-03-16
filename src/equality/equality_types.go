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
/* equality_types.go */
/*********************/
/**
* This file contains the type definition for equality reasonning.
**/

package equality

import basictypes "github.com/GoelandProver/Goeland/types/basic-types"

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

type Equalities []TermPair

type Inequalities []TermPair

func (e Equalities) ToString() string {
	res := ""
	for i, tp := range e {
		res += tp.ToString()
		if i < len(e) {
			res += ", "
		}
	}
	return res
}

func (ie Inequalities) ToString() string {
	res := ""
	for i, tp := range ie {
		res += tp.ToString()
		if i < len(ie) {
			res += ", "
		}
	}
	return res
}

func (e Equalities) Copy() Equalities {
	res := []TermPair{}
	for _, tp := range e {
		res = append(res, tp.Copy())
	}
	return res
}

func (ie Inequalities) Copy() Inequalities {
	res := []TermPair{}
	for _, tp := range ie {
		res = append(res, tp.Copy())
	}
	return res
}

func (e Equalities) Contains(eq TermPair) bool {
	for _, element := range e {
		if element.Equals(eq) {
			return true
		}
	}
	return false
}

func (ie Inequalities) Contains(eq TermPair) bool {
	for _, element := range ie {
		if element.Equals(eq) {
			return true
		}
	}
	return false
}

func (e Equalities) AppendIfNotContains(eq TermPair) Equalities {
	res := e.Copy()
	if !e.Contains(eq) {
		res = append(res, eq)
	}
	return res
}

func (ie Inequalities) AppendIfNotContains(eq TermPair) Inequalities {
	res := ie.Copy()
	if !ie.Contains(eq) {
		res = append(res, eq)
	}
	return res
}

type EqualityProblem struct {
	E    Equalities
	s, t basictypes.Term
}

func (ep EqualityProblem) GetE() Equalities {
	return ep.E.Copy()
}
func (ep EqualityProblem) GetS() basictypes.Term {
	return ep.s.Copy()
}
func (ep EqualityProblem) GetT() basictypes.Term {
	return ep.t.Copy()
}
func (ep EqualityProblem) Copy() EqualityProblem {
	return MakeEqualityProblem(ep.GetE(), ep.GetS(), ep.GetT())
}
func (ep EqualityProblem) Equals(ep2 EqualityProblem) basictypes.Term {
	return ep.t.Copy()
}
func (ep EqualityProblem) ToString() string {
	return "<" + ep.GetE().ToString() + ", " + ep.GetS().ToString() + ", " + ep.GetT().ToString() + ">"
}
func MakeEqualityProblem(E Equalities, t basictypes.Term, s basictypes.Term) EqualityProblem {
	return EqualityProblem{E.Copy(), s.Copy(), t.Copy()}
}

type EqualityProblemList []EqualityProblem

func (epl EqualityProblemList) ToString() string {
	res := "{"
	for i, ep := range epl {
		res += ep.ToString()
		if i < len(epl) {
			res += ", "
		}
	}
	return res + "}"
}

type EqualityProblemMultiList []EqualityProblemList

func (epl EqualityProblemMultiList) ToString() string {
	res := "{"
	for i, ep := range epl {
		res += ep.ToString()
		if i < len(epl) {
			res += ", "
		}
	}
	return res + "}"
}
