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

package main

import (
	"fmt"

	treetypes "github.com/GoelandProver/Goeland/code-trees/tree-types"
	"github.com/GoelandProver/Goeland/global"
	basictypes "github.com/GoelandProver/Goeland/types/basic-types"
	complextypes "github.com/GoelandProver/Goeland/types/complex-types"
	datastruct "github.com/GoelandProver/Goeland/types/data-struct"
)

type Equalities []TermPair

type Inequalities []TermPair

func (e Equalities) toString() string {
	res := "["
	for i, tp := range e {
		res += tp.toString()
		if i < len(e)-1 {
			res += ", "
		}
	}
	return res + "]"
}

func (ie Inequalities) toString() string {
	res := ""
	for i, tp := range ie {
		res += tp.toString()
		if i < len(ie) {
			res += ", "
		}
	}
	return res
}

func (e Equalities) copy() Equalities {
	res := []TermPair{}
	for _, tp := range e {
		res = append(res, tp.Copy())
	}
	return res
}

func (ie Inequalities) copy() Inequalities {
	res := []TermPair{}
	for _, tp := range ie {
		res = append(res, tp.Copy())
	}
	return res
}

func (e Equalities) contains(eq TermPair) bool {
	for _, element := range e {
		if element.Equals(eq) {
			return true
		}
	}
	return false
}

func (ie Inequalities) contains(eq TermPair) bool {
	for _, element := range ie {
		if element.Equals(eq) {
			return true
		}
	}
	return false
}

func (e Equalities) appendIfNotContains(eq TermPair) Equalities {
	res := e.copy()
	if !e.contains(eq) {
		res = append(res, eq)
	}
	return res
}

func (ie Inequalities) appendIfNotContains(eq TermPair) Inequalities {
	res := ie.copy()
	if !ie.contains(eq) {
		res = append(res, eq)
	}
	return res
}

/* Apply a substitution on an equality */
func (e Equalities) applySubstitution(old_symbol basictypes.Meta, new_symbol basictypes.Term) Equalities {
	res := e.copy()
	for i, tp := range res {
		res[i] = makeTermPair(complextypes.ApplySubstitutionOnTerm(old_symbol, new_symbol, tp.getT1()), complextypes.ApplySubstitutionOnTerm(old_symbol, new_symbol, tp.getT2()))
	}
	return res
}

/* Retrieve equalities from a datastructure */
func retrieveEqualities(dt datastruct.DataStructure) Equalities {
	res := Equalities{}
	MetaEQ1 := basictypes.MakerMeta("METAEQ1", -1)
	MetaEQ2 := basictypes.MakerMeta("METAEQ2", -1)
	eq_pred := basictypes.MakePred(basictypes.Id_eq, []basictypes.Term{MetaEQ1, MetaEQ2})
	_, eq_list := dt.Unify(eq_pred)

	for _, ms := range eq_list {
		ms_ordered := orderSubstForRetrieve(ms.GetSubst(), MetaEQ1, MetaEQ2)
		eq1_term, ok_t1 := ms_ordered[MetaEQ1]
		if !ok_t1 {
			fmt.Printf("Meta_eq_1 not found in map\n")
			global.PrintDebug("RI", "Meta_eq_1 not found in map")
		}
		eq2_term, ok_t2 := ms_ordered[MetaEQ2]
		if !ok_t2 {
			fmt.Printf("Meta_eq_2 not found in map\n")
			global.PrintDebug("RI", "Meta_eq_2 not found in map")
		}
		res = append(res, makeTermPair(eq1_term, eq2_term))
	}
	return res
}

/* Retrieve inequalities from a datastructure */
func retrieveInequalities(dt datastruct.DataStructure) Inequalities {
	res := Inequalities{}
	MetaNEQ1 := basictypes.MakerMeta("META_NEQ_1", -1)
	MetaNEQ2 := basictypes.MakerMeta("META_NEQ_2", -1)
	eq_neq_pred := basictypes.MakePred(basictypes.Id_neq, []basictypes.Term{MetaNEQ1, MetaNEQ2})
	_, neq_list := dt.Unify(eq_neq_pred)
	for _, ms := range neq_list {
		ms_ordered := orderSubstForRetrieve(ms.GetSubst(), MetaNEQ1, MetaNEQ2)
		neq1_term, ok_t1 := ms_ordered[MetaNEQ1]
		if !ok_t1 {
			fmt.Printf("Meta_neq_1 not found in map\n")
			global.PrintDebug("RI", "Meta_neq_1 not found in map")
		}
		neq2_term, ok_t2 := ms_ordered[MetaNEQ2]
		if !ok_t2 {
			fmt.Printf("Meta_neq_2 not found in map\n")
			global.PrintDebug("RI", "Meta_neq_2 not found in map")
		}
		res = append(res, makeTermPair(neq1_term, neq2_term))
	}
	return res
}

/* Reoder substitution in case of metavariable equalities. (X, META_1) => (META_1, X). Need to find association. */
func orderSubstForRetrieve(s treetypes.Substitutions, M1, M2 basictypes.Meta) treetypes.Substitutions {
	new_subst := treetypes.MakeEmptySubstitution()
	for k, v := range s {
		if !k.Equals(M1) && !k.Equals(M2) {
			if !v.IsMeta() {
				fmt.Printf("Error : Meta EQ/NEQ not found")
				global.PrintDebug("OSFR", "Meta EQ/NEQ not found")
			} else {
				new_subst[v.ToMeta()] = k
			}
		} else {
			new_subst[k] = v
		}
	}
	treetypes.EliminateMeta(&new_subst)
	treetypes.Eliminate(&new_subst)
	return new_subst
}
