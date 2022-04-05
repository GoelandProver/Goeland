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
/* equalitys.go */
/****************/
/**
* This file contains the type definition for equality reasonning.
**/

package main

import (
	basictypes "github.com/GoelandProver/Goeland/types/basic-types"
	complextypes "github.com/GoelandProver/Goeland/types/complex-types"
	datastruct "github.com/GoelandProver/Goeland/types/data-struct"
)

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

// func (e Equalities) applySubstitutions(sub treetypes.Substitutions) Equalities {
// 	res := e.Copy()
// 	for old_symbol, new_symbol := range sub {
// 		res = res.applySubstitution(old_symbol, new_symbol)
// 	}
// 	return res
// }

func (e Equalities) applySubstitution(old_symbol basictypes.Meta, new_symbol basictypes.Term) Equalities {
	res := e.Copy()
	for i, tp := range res {
		res[i] = MakeTermPair(complextypes.ApplySubstitutionOnTerm(old_symbol, new_symbol, tp.GetT1()), complextypes.ApplySubstitutionOnTerm(old_symbol, new_symbol, tp.GetT2()))
	}
	return res
}

/* Retrieve equalities from a datastructure */
func retrieveEqualities(dt datastruct.DataStructure) Equalities {
	res := Equalities{}
	MetaEQ1 := basictypes.MakerMeta("METAEQ1", -1)
	MetaEQ2 := basictypes.MakerMeta("METAEQ2", -1)
	eq_pred := basictypes.MakePred(basictypes.Id_eq, []basictypes.Term{MetaEQ1, MetaEQ2})
	found, eq_list := dt.Unify(eq_pred)
	if found {
		for _, ms := range eq_list {
			eq1_term := ms.GetSubst()[MetaEQ1]
			eq2_term := ms.GetSubst()[MetaEQ2]
			res = append(res, MakeTermPair(eq1_term, eq2_term))
		}
	}
	return res
}

/* Retrieve inequalities from a datastructure */
func retrieveInequalities(dt datastruct.DataStructure) Inequalities {
	res := Inequalities{}
	MetaEQ1 := basictypes.MakerMeta("METANEQ1", -1)
	MetaEQ2 := basictypes.MakerMeta("METANEQ2", -1)
	eq_pred := basictypes.MakePred(basictypes.Id_neq, []basictypes.Term{MetaEQ1, MetaEQ2})
	found, eq_list := dt.Unify(eq_pred)
	if found {
		for _, ms := range eq_list {
			eq1_term := ms.GetSubst()[MetaEQ1]
			eq2_term := ms.GetSubst()[MetaEQ2]
			res = append(res, MakeTermPair(eq1_term, eq2_term))
		}
	}
	return res
}
