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
	treesearch "github.com/GoelandProver/Goeland/code-trees/tree-search"
	treetypes "github.com/GoelandProver/Goeland/code-trees/tree-types"
	basictypes "github.com/GoelandProver/Goeland/types/basic-types"
	datastruct "github.com/GoelandProver/Goeland/types/data-struct"
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
	E_tree datastruct.DataStructure
	E_map  map[basictypes.Term][]basictypes.Term
	E      Equalities
	s, t   basictypes.Term
	c      ConstraintList
}

func (ep EqualityProblem) GetETree() datastruct.DataStructure {
	return ep.E_tree.Copy()
}
func (ep EqualityProblem) GetEMap() map[basictypes.Term][]basictypes.Term {
	map_res := make(map[basictypes.Term][]basictypes.Term)
	for k, v := range ep.E_map {
		map_res[k.Copy()] = basictypes.CopyTermList(v)
	}
	return map_res
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
func (ep EqualityProblem) GetC() ConstraintList {
	return ep.c.Copy()
}
func (ep EqualityProblem) Copy() EqualityProblem {
	return MakeEqualityProblem(ep.GetE(), ep.GetS(), ep.GetT(), ep.GetC())
}
func (ep EqualityProblem) Equals(ep2 EqualityProblem) basictypes.Term {
	return ep.t.Copy()
}
func (ep EqualityProblem) ToString() string {
	return "<" + ep.GetE().ToString() + ", " + ep.GetS().ToString() + ", " + ep.GetT().ToString() + "> • " + ep.GetC().ToString()
}
func MakeEqualityProblem(E Equalities, t basictypes.Term, s basictypes.Term, c ConstraintList) EqualityProblem {
	return EqualityProblem{makeDataStructFromEqualities(E.Copy()), makeEQMapFromEqualities(E.Copy()), E.Copy(), s.Copy(), t.Copy(), c.Copy()}
}

func makeDataStructFromEqualities(eq Equalities) datastruct.DataStructure {
	form_list := basictypes.MakeEmptyFormList()
	for _, e := range eq {
		form_list = append(form_list, treetypes.MakeTermForm(e.GetT1()))
		form_list = append(form_list, treetypes.MakeTermForm(e.GetT2()))
	}
	return new(treesearch.Node).MakeDataStruct(form_list, true)
}

func makeEQMapFromEqualities(eq Equalities) map[basictypes.Term][]basictypes.Term {
	map_res := make(map[basictypes.Term][]basictypes.Term)
	for _, e := range eq {
		map_res[e.GetT1()] = append(map_res[e.GetT1()], e.GetT2())
		map_res[e.GetT2()] = append(map_res[e.GetT2()], e.GetT1())
	}
	return map_res
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

func MakeEmptyEqualityProblemList() EqualityProblemList {
	return EqualityProblemList{}
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

func MakeEmptyEqualityProblemMultiList() EqualityProblemMultiList {
	return EqualityProblemMultiList{}
}

/*** Functions ***/
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

/* Une liste de problèmes d'égalités indépendants */
func BuildEqualityProblemMultiList(fl basictypes.FormList, tp, tn datastruct.DataStructure) EqualityProblemMultiList {
	res := MakeEmptyEqualityProblemMultiList()
	eq := retrieveEqualities(tp)
	res = append(res, buildEqualityProblemMultiListFromNEQ(retrieveInequalities(tp.Copy()), eq.Copy())...)
	res = append(res, buildEqualityProblemMultiListFromFormList(fl.Copy(), tn.Copy(), eq.Copy())...)
	return res
}
