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
/* equality_rules.go */
/*********************/
/**
* This file contains the left an right rule n equality reasonning.
**/

package main

import (
	"fmt"

	treesearch "github.com/GoelandProver/Goeland/code-trees/tree-search"
	treetypes "github.com/GoelandProver/Goeland/code-trees/tree-types"
	basictypes "github.com/GoelandProver/Goeland/types/basic-types"
	datastruct "github.com/GoelandProver/Goeland/types/data-struct"
)

const (
	RIGHT int = iota
	LEFT
)

type ruleStruct struct {
	rule                int
	l, r, l_prime, s, t basictypes.Term
	s_modified          bool // For Rigth and left rule : s or t modifier or the side of the equality which was modified
	index_eq_list       int  // For Left rule : which equalit is modified
}

func (r ruleStruct) getRule() int {
	return r.rule
}
func (r ruleStruct) getL() basictypes.Term {
	return r.l.Copy()
}
func (r ruleStruct) getR() basictypes.Term {
	return r.r.Copy()
}
func (r ruleStruct) getLPrime() basictypes.Term {
	return r.l_prime.Copy()
}
func (r ruleStruct) getS() basictypes.Term {
	return r.s.Copy()
}
func (r ruleStruct) getT() basictypes.Term {
	return r.t.Copy()
}
func (r ruleStruct) getIsSModified() bool {
	return r.s_modified
}
func (r ruleStruct) getIndexEQList() int {
	return r.index_eq_list
}
func (r *ruleStruct) setIsSModified(b bool) {
	r.s_modified = true
}
func (r *ruleStruct) setIndexEQList(i int) {
	r.index_eq_list = i
}
func MakeRuleStruct(rule int, l, r, l_prime, s, t basictypes.Term) ruleStruct {
	return ruleStruct{rule, l, r, l_prime, s, t, true, -1}
}

/**
* Fonction EqualityReasoning
* Prend atomics
* créé problème
* réturn bool et substitution
* prend lpo
**/
func EqualityReasoning(tree_pos, tree_neg datastruct.DataStructure, atomic basictypes.FormList, lpo LPO) (bool, []treetypes.Substitutions) {
	return equalityReasoningMultiList(BuildEqualityProblemMultiList(atomic, tree_pos, tree_neg), lpo)
}

/**
* EqualityReasoningMultiList
* Data : a whole equality problem (EqualityProblemMultiList)
* Result : true if at least on of the list return a solution, and the corresponding substitutions
**/
/** Todo :
* On parallèlise ?
* On s'arrête au premier trouvé ?
**/
func equalityReasoningMultiList(epml EqualityProblemMultiList, lpo LPO) (bool, []treetypes.Substitutions) {
	substs_res := []treetypes.Substitutions{}
	found := false

	for _, epl := range epml {
		if has_solution, subst_res_tmp := equalityReasoningList(epl, lpo); has_solution {
			found = true
			substs_res = append(substs_res, subst_res_tmp...)
		}
	}

	return found, substs_res
}

/**
* EqualityReasoningList
* Data : an equality problem list (EqualityProblemList), corresponding to an inequality or two complementary predicates
* Result : true if all of the problem in the list agrees on at least one substitution, and the corresponding substitutions
**/
// TODO : faire waitFather ? Parallèliser ? s'arrêter à la première trouvée ?
func equalityReasoningList(epl EqualityProblemList, lpo LPO) (bool, []treetypes.Substitutions) {
	substs_res := []treetypes.Substitutions{}
	found := true

	for _, ep := range epl {
		if has_solution, subst_res_tmp := equalityReasoningProblemWithApplySubst(ep, substs_res, lpo); has_solution {
			substs_res = append(substs_res, subst_res_tmp...)
		} else {
			return false, []treetypes.Substitutions{treetypes.Failure()}
		}
	}
	return found, substs_res
}

/**
* equalityReasoningWithApplySubst
* return true if at least on subst on the subst list returns result, and the corresponding substitution list
**/
func equalityReasoningProblemWithApplySubst(ep EqualityProblem, sl []treetypes.Substitutions, lpo LPO) (bool, []treetypes.Substitutions) {
	substs_res := []treetypes.Substitutions{}
	found := false
	children_chan := make(chan []treetypes.Substitutions)

	for _, s := range sl {
		go equalityReasoningProblem(ep.applySubstitution(s), lpo, children_chan)
		subst_res := <-children_chan
		if len(subst_res) > 0 {
			found = true
			for _, subst_element := range substs_res {
				merged_subst, same_key := treesearch.MergeSubstitutions(s.Copy(), subst_element.Copy())
				if same_key {
					fmt.Printf("Error in EqualityReasoningList : same key appears in merge")
				}
				if merged_subst.Equals(treetypes.Failure()) {
					fmt.Printf("Error in EqualityReasoningList : merge returns failure")
				} else {
					substs_res = append(substs_res, merged_subst)
				}
			}
		}
	}

	return found, substs_res
}

// Brancher pour règles
func equalityReasoningProblem(ep EqualityProblem, lpo LPO, parent chan []treetypes.Substitutions) {
	substs_res := []treetypes.Substitutions{}

	if ok, subst_found := checkUnif(ep.GetS(), ep.GetT()); ok {
		is_consistant, new_subst := ep.GetC().isConsistant(lpo, subst_found)
		if is_consistant {
			substs_res = append(substs_res, new_subst)
		}
	}

	if checkStopCases(ep) {
		parent <- substs_res
		return
	}

	rules_available := tryApplyRules(ep)

	tab_chan := [](chan []treetypes.Substitutions){}
	for _, r := range rules_available {
		chan_rule := make(chan []treetypes.Substitutions)
		go applyRule(r, ep, lpo, chan_rule)
		tab_chan = append(tab_chan, chan_rule)
	}

	for _, c := range tab_chan {
		res := <-c
		if len(res) > 0 {
			substs_res = append(substs_res, res...)
		}
	}

	parent <- substs_res
}

/**
* check if the search should stop, ie if s = t
**/
func checkStopCases(ep EqualityProblem) bool {
	return ep.GetS().Equals(ep.GetT())
}

/**
* Try to unify s and t
**/
func checkUnif(s, t basictypes.Term) (bool, treetypes.Substitutions) {
	subst := treetypes.MakeEmptySubstitution()
	subst = treesearch.AddUnification(s.Copy(), t.Copy(), subst)
	return !subst.Equals(treetypes.Failure()), subst
}

/*** Fonctions tryApplyrules ***/

/* TryAPplyRules - try if an unification is possible */
func tryApplyRules(ep EqualityProblem) []ruleStruct {
	return append(tryApplyLeftRules(ep), tryApplyRightRules(ep)...)
}

/* Try left rule */
func tryApplyLeftRules(ep EqualityProblem) []ruleStruct {
	res := []ruleStruct{}
	for i, eq_pair := range ep.GetE() {
		// keep index and modified term
		res_t1 := tryApplyRuleAux(eq_pair.GetT1(), eq_pair.GetT2(), ep.Copy())
		for _, r := range res_t1 { // Keep the rule's order
			r.setIndexEQList(i)
		}
		res = append(res, res_t1...)

		res_t2 := tryApplyRuleAux(eq_pair.GetT2(), eq_pair.GetT1(), ep.Copy())
		for _, r := range res_t1 { // Keep the rule's order
			r.setIndexEQList(i)
			r.setIsSModified(false)
		}
		res = append(res, res_t2...)
	}
	return res
}

/* Try right rule */
func tryApplyRightRules(ep EqualityProblem) []ruleStruct {
	res := []ruleStruct{}
	res = append(res, tryApplyRuleAux(ep.GetS(), ep.GetT(), ep.Copy())...)

	res_t := tryApplyRuleAux(ep.GetT(), ep.GetS(), ep.Copy())
	for _, r := range res_t { // Keep the rule's order
		r.setIsSModified(false)
	}
	res = append(res, res_t...)
	return res
}

func tryApplyRuleAux(s, t basictypes.Term, ep EqualityProblem) []ruleStruct {
	res := []ruleStruct{}
	// ici j'ai s et t
	// je récupe la liste de l', l
	subterms_of_s := s.GetSubTerms()
	list_l_prime_l := searchUnifBewteenListAndEq(subterms_of_s, ep.GetETree())

	for _, l_prime_l_pair := range list_l_prime_l {
		// on trouve r en cherchant l dans la liste
		for _, r := range ep.GetEMap()[l_prime_l_pair.GetT2()] {
			res = append(res, MakeRuleStruct(RIGHT, l_prime_l_pair.GetT2(), r.Copy(), l_prime_l_pair.GetT1(), s.Copy(), t.Copy()))
		}
	}
	return res
}

/* retourne les couples l, l' qui s'unifient */
func searchUnifBewteenListAndEq(tl []basictypes.Term, tree datastruct.DataStructure) []TermPair {
	term_pair_list := []TermPair{}
	for _, t_prime := range tl {
		// If the subterm is not a variable
		if !t_prime.IsMeta() {
			res, tl := checkUnifInTree(t_prime, tree)
			if res {
				for _, t := range tl {
					term_pair_list = append(term_pair_list, MakeTermPair(t_prime, t))
				}
			}
		}
	}
	return term_pair_list
}

/* Pour un (sous-)term t, envoie les terms t' avec lesquels il s'unifie*/
func checkUnifInTree(t basictypes.Term, tree datastruct.DataStructure) (bool, []basictypes.Term) {
	result_list := []basictypes.Term{}
	res, ms := tree.Unify(treetypes.MakeTermForm(t.Copy()))
	if !res {
		return false, result_list
	}
	for _, subst := range ms {
		result_list = append(result_list, subst.GetForm().(treetypes.TermForm).GetTerm())
	}
	return len(result_list) > 0, result_list
}

/*** Functions apply rules ***/
func applyRule(rs ruleStruct, ep EqualityProblem, lpo LPO, parent chan []treetypes.Substitutions) {
	switch rs.getRule() {
	case LEFT:
		applyLeftRule(rs, ep, lpo, parent)
	case RIGHT:
		applyRightRule(rs, ep, lpo, parent)
	default:
		fmt.Printf("[EQ] Rule type unknown")
	}
}

func applyLeftRule(rs ruleStruct, ep EqualityProblem, lpo LPO, parent chan []treetypes.Substitutions) {
	is_consistant_with_lpo, new_term, new_cl := applyEQRule(rs.getL(), rs.getR(), rs.getLPrime(), rs.getS(), rs.getT(), lpo, ep.GetC())

	if is_consistant_with_lpo {
		new_eq_list := ep.GetE()
		if rs.getIsSModified() {
			new_eq_list[rs.getIndexEQList()] = MakeTermPair(new_term.Copy(), rs.getT())
		} else {
			new_eq_list[rs.getIndexEQList()] = MakeTermPair(rs.getS(), new_term.Copy())
		}
		equalityReasoningProblem(MakeEqualityProblem(new_eq_list, ep.GetS(), ep.GetT(), new_cl), lpo, parent)
	} else {
		parent <- nil
	}
}

func applyRightRule(rs ruleStruct, ep EqualityProblem, lpo LPO, parent chan []treetypes.Substitutions) {
	is_consistant_with_lpo, new_term, new_cl := applyEQRule(rs.getL(), rs.getR(), rs.getLPrime(), rs.getS(), rs.getT(), lpo, ep.GetC())

	if is_consistant_with_lpo {
		if rs.getIsSModified() {
			equalityReasoningProblem(MakeEqualityProblem(ep.Copy().GetE(), new_term.Copy(), rs.getT(), new_cl), lpo, parent)
		} else {
			equalityReasoningProblem(MakeEqualityProblem(ep.Copy().GetE(), rs.getS(), new_term.Copy(), new_cl), lpo, parent)
		}
	} else {
		parent <- nil
	}
}

/**
* Apply equality rule
* There is 5 terms :
* l and r / u v
* s and t
* sub_term_of s is a subterm of s unifible with l
**/
// reconstruire le problème à chaque fois, le code trees, etc
func applyEQRule(l, r, sub_term_of_s, s, t basictypes.Term, lpo LPO, cl ConstraintList) (bool, basictypes.Term, ConstraintList) {
	new_s := s.Copy().ReplaceSubTermBy(sub_term_of_s, r)
	constraints_list := cl.Copy()
	if !constraints_list.AppendIfConsistant(MakeConstraint(PREC, MakeTermPair(l, r)), lpo) {
		return false, nil, nil
	}
	if !constraints_list.AppendIfConsistant(MakeConstraint(PREC, MakeTermPair(s, t)), lpo) {
		return false, nil, nil
	}
	if !constraints_list.AppendIfConsistant(MakeConstraint(EQ, MakeTermPair(l, sub_term_of_s)), lpo) {
		return false, nil, nil
	}
	return true, new_s, constraints_list
}
