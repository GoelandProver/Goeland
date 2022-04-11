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
/****************************/
/* equality_problem_list.go */
/****************************/
/**
* This file contains the type definition for equality reasonning.
**/

package main

import (
	basictypes "github.com/GoelandProver/Goeland/types/basic-types"
	datastruct "github.com/GoelandProver/Goeland/types/data-struct"
)

type EqualityProblemList []EqualityProblem

func (epl EqualityProblemList) ToString() string {
	res := "{"
	for i, ep := range epl {
		res += ep.ToString()
		if i < len(epl)-1 {
			res += ", "
		}
	}
	return res + "}"
}

func MakeEmptyEqualityProblemList() EqualityProblemList {
	return EqualityProblemList{}
}

type EqualityProblemMultiList []EqualityProblemList

func (epl EqualityProblemMultiList) ToString() string {
	res := "{"
	for i, ep := range epl {
		res += ep.ToString()
		if i < len(epl)-1 {
			res += ", "
		}
	}
	return res + "}"
}

func MakeEmptyEqualityProblemMultiList() EqualityProblemMultiList {
	return EqualityProblemMultiList{}
}

/*** Functions ***/

func buildEqualityProblemMultiListFromNEQ(neq Inequalities, eq Equalities) EqualityProblemMultiList {
	res := MakeEmptyEqualityProblemMultiList()
	for _, neq_pair := range neq {
		res = append(res, append(MakeEmptyEqualityProblemList(), MakeEqualityProblem(eq.Copy(), neq_pair.GetT1(), neq_pair.GetT2(), MakeEmptyConstaintsList())))
	}
	return res
}

/* Une liste de problèmes dégalités dépendants : un prédicat */
func buildEqualityProblemListFrom2Pred(p1 basictypes.Pred, p2 basictypes.Pred, eq Equalities) EqualityProblemList {
	res := MakeEmptyEqualityProblemList()
	for i := range p1.GetArgs() {
		res = append(res, MakeEqualityProblem(eq.Copy(), p1.GetArgs()[i].Copy(), p2.GetArgs()[i].Copy(), MakeEmptyConstaintsList()))
	}
	return res
}

func buildEqualityProblemListFromPredList(p basictypes.Pred, tn datastruct.DataStructure, eq Equalities) EqualityProblemMultiList {
	res := MakeEmptyEqualityProblemMultiList()
	id_p := p.GetID()
	ml := basictypes.MakeEmptyMetaList()
	for _, arg := range p.GetArgs() {
		ml = append(ml, basictypes.MakerMeta("METAEQ_"+arg.ToString(), -1))
	}
	new_term := basictypes.MakePred(id_p.Copy().(basictypes.Id), ml.ToTermList())
	found, complementary_pred_list := tn.Unify(new_term)
	if found {
		for _, s := range complementary_pred_list {
			res = append(res, buildEqualityProblemListFrom2Pred(p.Copy().(basictypes.Pred), s.GetForm().(basictypes.Pred), eq.Copy()))
		}
	}
	return res
}

func buildEqualityProblemMultiListFromFormList(fl basictypes.FormList, tn datastruct.DataStructure, eq Equalities) EqualityProblemMultiList {
	res := MakeEmptyEqualityProblemMultiList()
	// Recup les prédicats de TP, on cherche les mêmes dans TN
	for _, p := range fl {
		if pt, ok := p.(basictypes.Pred); ok {
			res = append(res, buildEqualityProblemListFromPredList(pt, tn, eq.Copy())...)
		}
	}
	return res
}

/* Une liste de problèmes d'égalités indépendants + a boolean, true if there is equality in the fomrula list, false otherwise */
func BuildEqualityProblemMultiList(fl basictypes.FormList, tp, tn datastruct.DataStructure) (EqualityProblemMultiList, bool) {
	// global.PrintDebug("BEPML", "Build equality problem multilist")
	res := MakeEmptyEqualityProblemMultiList()
	eq := retrieveEqualities(tp.Copy())
	res = append(res, buildEqualityProblemMultiListFromNEQ(retrieveInequalities(tp.Copy()), eq.Copy())...)
	res = append(res, buildEqualityProblemMultiListFromFormList(fl.Copy(), tn.Copy(), eq.Copy())...)
	return res, (len(eq) > 0)
}
