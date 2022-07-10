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
* This file contains the type definition for equality problem list. and multilist.
* Equality problem list :  a list of equality problem wich are connected to each other. A solution for one of them needs to be a solution for the others.
* Equality problem multi list : a list of list of equality problem. Independent
**/

package equality

import (
	"fmt"

	"github.com/GoelandProver/Goeland/global"
	basictypes "github.com/GoelandProver/Goeland/types/basic-types"
	datastruct "github.com/GoelandProver/Goeland/types/data-struct"
)

type EqualityProblemList []EqualityProblem

func (epl EqualityProblemList) toString() string {
	res := "{"
	for i, ep := range epl {
		res += ep.toString()
		if i < len(epl)-1 {
			res += ", "
		}
	}
	return res + "}"
}

func makeEmptyEqualityProblemList() EqualityProblemList {
	return EqualityProblemList{}
}

type EqualityProblemMultiList []EqualityProblemList

func (epl EqualityProblemMultiList) ToString() string {
	res := "{"
	for i, ep := range epl {
		res += ep.toString()
		if i < len(epl)-1 {
			res += ", "
		}
	}
	return res + "}"
}

func makeEmptyEqualityProblemMultiList() EqualityProblemMultiList {
	return EqualityProblemMultiList{}
}

/*** Functions ***/

/* Build an equalit problem multilist from a list of inequation */
func buildEqualityProblemMultiListFromNEQ(neq Inequalities, eq Equalities) EqualityProblemMultiList {
	res := makeEmptyEqualityProblemMultiList()
	for _, neq_pair := range neq {
		res = append(res, append(makeEmptyEqualityProblemList(), makeEqualityProblem(eq.copy(), neq_pair.getT1(), neq_pair.getT2(), makeEmptyConstaintStruct())))
	}
	return res
}

/* Build an equality problem list from a predicat and its negation */
func buildEqualityProblemListFrom2Pred(p1 basictypes.Pred, p2 basictypes.Pred, eq Equalities) EqualityProblemList {
	res := makeEmptyEqualityProblemList()
	for i := range p1.GetArgs() {
		res = append(res, makeEqualityProblem(eq.copy(), p1.GetArgs()[i].Copy(), p2.GetArgs()[i].Copy(), makeEmptyConstaintStruct()))
	}
	return res
}

/* Build an equality problem multi list from a list of predicate. Take one predicate, search for its negation in the code tree, and if it found any, build the corresponding equality problem list */
func buildEqualityProblemMultiListFromPredList(p basictypes.Pred, tn datastruct.DataStructure, eq Equalities) EqualityProblemMultiList {
	res := makeEmptyEqualityProblemMultiList()
	id_p := p.GetID()
	ml := basictypes.MakeEmptyMetaList()
	for _, arg := range p.GetArgs() {
		ml = append(ml, basictypes.MakerMeta("METAEQ_"+arg.ToString(), -1))
	}
	new_term := basictypes.MakerPred(id_p.Copy().(basictypes.Id), ml.ToTermList())
	found, complementary_pred_list := tn.Unify(new_term)
	if found {
		for _, s := range complementary_pred_list {
			res = append(res, buildEqualityProblemListFrom2Pred(p.Copy().(basictypes.Pred), s.GetForm().(basictypes.Pred), eq.copy()))
		}
	}
	return res
}

/* Take a list of form and build an equality problem list, corresponding to thoses related to a predicate and its negation */
func buildEqualityProblemMultiListFromFormList(fl basictypes.FormList, tn datastruct.DataStructure, eq Equalities) EqualityProblemMultiList {
	res := makeEmptyEqualityProblemMultiList()
	for _, p := range fl {
		if pt, ok := p.(basictypes.Pred); ok {
			global.PrintDebug("BEPMLFFL", fmt.Sprintf("Pred found : %v", p.ToString()))
			if !pt.GetID().Equals(basictypes.Id_eq) {
				res = append(res, buildEqualityProblemMultiListFromPredList(pt, tn, eq.copy())...)
			}
		}
	}
	return res
}

/**
* Take a form list
* Retun a lis of independent problem list (from predicate and negation) + a boolean, true if there is equality in the formula list, false otherwise
**/
func buildEqualityProblemMultiList(fl basictypes.FormList, tp, tn datastruct.DataStructure) (EqualityProblemMultiList, bool) {
	res := makeEmptyEqualityProblemMultiList()
	eq := retrieveEqualities(tp.Copy())
	if len(eq) <= 0 {
		return res, false
	}
	res = append(res, buildEqualityProblemMultiListFromNEQ(retrieveInequalities(tn.Copy()), eq.copy())...)
	global.PrintDebug("BEPML", fmt.Sprintf("Res after FromNEQ : %v", res.ToString()))
	res = append(res, buildEqualityProblemMultiListFromFormList(fl.Copy(), tn.Copy(), eq.copy())...)
	global.PrintDebug("BEPML", fmt.Sprintf("Res after FromForm : %v", res.ToString()))
	return res, true
}
