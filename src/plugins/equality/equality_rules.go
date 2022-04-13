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
	"github.com/GoelandProver/Goeland/global"
	basictypes "github.com/GoelandProver/Goeland/types/basic-types"
	datastruct "github.com/GoelandProver/Goeland/types/data-struct"
)

/**
* EqualityReasoningMultiList
* Data : a whole equality problem (EqualityProblemMultiList)
* Result : true if at least on of the list return a solution, and the corresponding substitutions
**/
/** Todo :
* On parallèlise ?
* On s'arrête au premier trouvé ?
**/
func equalityReasoningMultiList(epml EqualityProblemMultiList) (bool, []treetypes.Substitutions) {
	global.PrintDebug("ERML", fmt.Sprintf("Start of Equality reasoning multilist : %v", len(epml)))
	// global.PrintDebug("ERML", fmt.Sprintf("LPO : %v", lpo.toString()))
	substs_res := []treetypes.Substitutions{}
	found := false

	for _, epl := range epml {
		global.PrintDebug("ERML", fmt.Sprintf("iteration on EPL : %v", epl.ToString()))
		if has_solution, subst_res_tmp := equalityReasoningList(epl); has_solution {
			global.PrintDebug("ERML", fmt.Sprintf("Solution found for one EPL : %v !", treetypes.SubstListToString(subst_res_tmp)))
			found = true
			for subst_res_tmp_element := range subst_res_tmp {
				substs_res = treetypes.AppendIfNotContainsSubst(substs_res, subst_res_tmp[subst_res_tmp_element])
			}
		}
	}
	global.PrintDebug("ERML", fmt.Sprintf("Final subst after ER : %v", treetypes.SubstListToString(substs_res)))
	return found, substs_res
}

/**
* EqualityReasoningList
* Data : an equality problem list (EqualityProblemList), corresponding to an inequality or two complementary predicates
* Result : true if all of the problem in the list agrees on at least one substitution, and the corresponding substitutions
**/
// TODO : faire waitFather ? Parallèliser ? s'arrêter à la première trouvée ?
func equalityReasoningList(epl EqualityProblemList) (bool, []treetypes.Substitutions) {
	// global.PrintDebug("ERML", fmt.Sprintf("Start of Equality reasoning list : %v", epl.ToString()))

	substs_res := []treetypes.Substitutions{}
	found := true

	for _, ep := range epl {
		// global.PrintDebug("ERL", fmt.Sprintf("Iteration on EP : %v", ep.ToString()))
		if has_solution, subst_res_tmp := equalityReasoningProblemWithApplySubst(ep, substs_res); has_solution {
			// global.PrintDebug("ERL", fmt.Sprintf("Solution found for on EP : %v !", treetypes.SubstListToString(subst_res_tmp)))
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
func equalityReasoningProblemWithApplySubst(ep EqualityProblem, sl []treetypes.Substitutions) (bool, []treetypes.Substitutions) {
	// global.PrintDebug("ERPWAS", "Start on equality reasoning  problem with apply subst")
	substs_res := []treetypes.Substitutions{}
	found := false
	children_chan := make(chan []treetypes.Substitutions)

	if len(sl) == 0 {
		// global.PrintDebug("ERPWAS", "No subst ! - Launch goroutine ")
		// global.PrintDebug("ERPWAS", "Go !")
		go equalityReasoningProblem(ep.Copy(), children_chan, global.GetGID())
		subst_res_chan := <-children_chan
		if len(subst_res_chan) > 0 {
			found = true
			substs_res = append(substs_res, subst_res_chan...)
		}
	} else {
		// global.PrintDebug("ERPWAS", "Subst ! - lauche goroutine ")
		for _, s := range sl {
			// global.PrintDebug("ERPWAS", "Go !")
			go equalityReasoningProblem(ep.applySubstitution(s), children_chan, global.GetGID())
			subst_res_chan := <-children_chan
			if len(subst_res_chan) > 0 {
				found = true
				for _, subst_element := range subst_res_chan {
					merged_subst, same_key := treesearch.MergeSubstitutions(s.Copy(), subst_element.Copy())
					if same_key {
						// global.PrintDebug("ERPWAS", "Error in EqualityReasoningList : same key appears in merge")
					}
					if merged_subst.Equals(treetypes.Failure()) {
						// global.PrintDebug("ERPWAS", "Error in EqualityReasoningList : merge returns failure")
					} else {
						substs_res = append(substs_res, merged_subst)
					}
				}
			}
		}
	}

	return found, substs_res
}

// Brancher pour règles
func equalityReasoningProblem(ep EqualityProblem, parent chan []treetypes.Substitutions, father_id uint64) {
	global.PrintDebug("ERP", fmt.Sprintf("Child of %v", father_id))
	global.PrintDebug("ERP", fmt.Sprintf("EP : %v", ep.ToString()))
	substs_res := []treetypes.Substitutions{}

	if ok, subst_found := checkUnif(ep.GetS(), ep.GetT()); ok {
		global.PrintDebug("ERP", "Unif found !")
		is_consistant, new_subst := ep.GetC().isConsistant(subst_found)
		if is_consistant {
			global.PrintDebug("ERP", fmt.Sprintf("Unif found and consistant : %v", subst_found.ToString()))
			substs_res = append(substs_res, new_subst)
		} else {
			global.PrintDebug("ERP", fmt.Sprintf("Unif found but not consistant : %v", subst_found.ToString()))
		}
	} else {
		global.PrintDebug("ERP", "Unification not found")
	}

	if checkStopCases(ep) {
		global.PrintDebug("ERP", "Stop case found !")
		parent <- substs_res
		return
	} else {
		global.PrintDebug("ERP", "Stop case not found")
	}

	global.PrintDebug("ERP", "Try apply rules !")
	rules_available := tryApplyRules(ep)
	global.PrintDebug("ERP", fmt.Sprintf("There is %v rules available : %v ", len(rules_available), RuleSTructListTString(rules_available)))

	// TODO : select
	tab_chan := [](chan []treetypes.Substitutions){}
	for _, r := range rules_available {
		// global.PrintDebug("ERP", "Go !")
		chan_rule := make(chan []treetypes.Substitutions)
		go applyRule(r, ep, chan_rule, global.GetGID())
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
	// global.PrintDebug("TALR", "Try apply left rule")
	res := []ruleStruct{}
	for i, eq_pair := range ep.GetE() {
		// keep index and modified term
		res_t1 := tryApplyRuleAux(eq_pair.GetT1(), eq_pair.GetT2(), ep.Copy(), LEFT)
		new_res_t1 := []ruleStruct{}
		for _, r := range res_t1 { // Keep the rule's order
			r.setIndexEQList(i)
			// global.PrintDebug("TALR", fmt.Sprintf("Add index to rule : %v - %v", i, r.ToString()))
			new_res_t1 = append(new_res_t1, r)
		}
		res = append(res, new_res_t1...)

		res_t2 := tryApplyRuleAux(eq_pair.GetT2(), eq_pair.GetT1(), ep.Copy(), LEFT)
		new_res_t2 := []ruleStruct{}
		for _, r := range res_t2 { // Keep the rule's order
			r.setIndexEQList(i)
			r.setIsSModified(false)
			// global.PrintDebug("TALR", fmt.Sprintf("Add index to rule : %v - %v", i, r.ToString()))
			new_res_t2 = append(new_res_t2, r)
		}
		res = append(res, new_res_t2...)
	}
	// global.PrintDebug("TALR", fmt.Sprintf("Res at the end of TALR : %v", RuleSTructListTString(res)))
	return res
}

/* Try right rule */
func tryApplyRightRules(ep EqualityProblem) []ruleStruct {
	// global.PrintDebug("TARR", "Try apply right rule")
	res := []ruleStruct{}
	res = append(res, tryApplyRuleAux(ep.GetS(), ep.GetT(), ep.Copy(), RIGHT)...)

	res_t := tryApplyRuleAux(ep.GetT(), ep.GetS(), ep.Copy(), RIGHT)
	for _, r := range res_t { // Keep the rule's order
		r.setIsSModified(false)
	}
	res = append(res, res_t...)
	return res
}

func tryApplyRuleAux(s, t basictypes.Term, ep EqualityProblem, type_rule int) []ruleStruct {
	// global.PrintDebug("TARA", "===============================================")
	// global.PrintDebug("TARA", fmt.Sprintf("Try apply rule aux on : %v and %v", s.ToString(), t.ToString()))
	res := []ruleStruct{}
	// ici j'ai s et t
	// je récupe la liste de l', l
	subterms_of_s := s.GetSubTerms()
	// global.PrintDebug("TARA", fmt.Sprintf("len subterms found : %v - %v", len(subterms_of_s), basictypes.TermListToString(subterms_of_s)))
	// global.PrintDebug("TARA", fmt.Sprintf("EP eq list : %v", ep.GetE().ToString()))

	list_l_prime_l := searchUnifBewteenListAndEq(subterms_of_s, ep.GetETree())
	// global.PrintDebug("TARA", fmt.Sprintf("len unifiable subterms found : %v", len(list_l_prime_l)))

	for _, l_prime_l_pair := range list_l_prime_l {

		// global.PrintDebug("TARA", fmt.Sprintf("Subterms unifiable found : %v", l_prime_l_pair.ToString()))
		// on trouve r en cherchant l dans la liste
		for _, r := range ep.GetEMap()[l_prime_l_pair.GetT2().ToString()] {
			// global.PrintDebug("TARA", fmt.Sprintf("On veut susbstituer %v (unifiable avec %v) par %v dans %v = %v", l_prime_l_pair.GetT1().ToString(), l_prime_l_pair.GetT2().ToString(), r.ToString(), s.ToString(), t.ToString()))

			// create pair an check equality
			s_t := MakeTermPair(s, t)
			l_r := MakeTermPair(l_prime_l_pair.GetT2(), r)
			if !s_t.EqualsModulo(l_r) || type_rule == RIGHT {
				// global.PrintDebug("TARA", "Try apply rule ok !")
				res = append(res, MakeRuleStruct(type_rule, l_prime_l_pair.GetT2(), r.Copy(), l_prime_l_pair.GetT1(), s.Copy(), t.Copy()))
			} else {
				// global.PrintDebug("TARA", "Don't apply an equality on itself")
			}
		}
	}
	return res
}

/* retourne les couples l, l' qui s'unifient */
func searchUnifBewteenListAndEq(tl []basictypes.Term, tree datastruct.DataStructure) []TermPair {
	// global.PrintDebug("SUBLE", fmt.Sprintf("Searching unfication between %v and the eq tree", basictypes.TermListToString(tl)))
	term_pair_list := []TermPair{}
	for _, t_prime := range tl {
		// If the subterm is not a variable
		// global.PrintDebug("SUBLE", "------------------------------------------")
		// global.PrintDebug("SUBLE", fmt.Sprintf("Current subterm : %v", t_prime.ToString()))
		if !t_prime.IsMeta() {
			res, tl := checkUnifInTree(t_prime, tree)
			if res {
				// global.PrintDebug("SUBLE", "Unification found !")
				for _, t := range tl {
					// global.PrintDebug("SUBLE", fmt.Sprintf("Unif found with : %v", t.ToString()))
					if !t.IsMeta() {
						term_pair_list = append(term_pair_list, MakeTermPair(t_prime, t))
					} else {
						// global.PrintDebug("SUBLE", fmt.Sprintf("l' cannot be a meta : %v", t.ToString()))
					}
				}
			} else {
				// global.PrintDebug("SUBLE", "Unification not found !")
			}
		} else {
			// global.PrintDebug("SUBLE", fmt.Sprintf("%v is a meta !", t_prime.ToString()))
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
		// global.PrintDebug("CUIT", fmt.Sprintf("Unif found with %v :%v", subst.GetForm().ToString(), subst.GetSubst().ToString()))
		result_list = append(result_list, subst.GetForm().(treetypes.TermForm).GetTerm())
	}
	return len(result_list) > 0, result_list
}

/*** Functions apply rules ***/
func applyRule(rs ruleStruct, ep EqualityProblem, parent chan []treetypes.Substitutions, father_id uint64) {
	global.PrintDebug("EQ-AR", fmt.Sprintf("Child of %v", father_id))
	// global.PrintDebug("EQ-AR", fmt.Sprintf("EQ before applying rule %v", ep.ToString()))
	// global.PrintDebug("EQ-AR", fmt.Sprintf("Apply rule %v", rs.ToString()))
	switch rs.getRule() {
	case LEFT:
		applyLeftRule(rs, ep, parent, father_id)
	case RIGHT:
		applyRightRule(rs, ep, parent, father_id)
	default:
		// global.PrintDebug("AR", "[EQ] Rule type unknown")
	}
}

func applyLeftRule(rs ruleStruct, ep EqualityProblem, parent chan []treetypes.Substitutions, father_id uint64) {
	// global.PrintDebug("ALR", "Apply left rule")

	is_consistant_with_lpo, new_term, new_cl := applyEQRule(rs.getL(), rs.getR(), rs.getLPrime(), rs.getS(), rs.getT(), ep.GetC())

	if is_consistant_with_lpo {
		// global.PrintDebug("ALR", fmt.Sprintf("New term : %v", new_term.ToString()))
		new_eq_list := ep.GetE()
		if rs.getIsSModified() {
			new_eq_list[rs.getIndexEQList()] = MakeTermPair(new_term.Copy(), rs.getT())
		} else {
			new_eq_list[rs.getIndexEQList()] = MakeTermPair(rs.getS(), new_term.Copy())
		}
		// global.PrintDebug("ALR", fmt.Sprintf("New EQ list : %v", new_eq_list.ToString()))
		equalityReasoningProblem(MakeEqualityProblem(new_eq_list, ep.GetS(), ep.GetT(), new_cl), parent, father_id)
	} else {
		// global.PrintDebug("ALR", "Not consistant with LPO")
		parent <- nil
	}
	// global.PrintDebug("ALR", "Die")
}

func applyRightRule(rs ruleStruct, ep EqualityProblem, parent chan []treetypes.Substitutions, father_id uint64) {
	// global.PrintDebug("ARR", "Apply right rule")

	is_consistant_with_lpo, new_term, new_cl := applyEQRule(rs.getL(), rs.getR(), rs.getLPrime(), rs.getS(), rs.getT(), ep.GetC())

	if is_consistant_with_lpo {
		// global.PrintDebug("ARR", fmt.Sprintf("New term : %v", new_term.ToString()))
		if rs.getIsSModified() {
			equalityReasoningProblem(MakeEqualityProblem(ep.Copy().GetE(), new_term.Copy(), rs.getT(), new_cl), parent, father_id)
		} else {
			equalityReasoningProblem(MakeEqualityProblem(ep.Copy().GetE(), rs.getS(), new_term.Copy(), new_cl), parent, father_id)
		}
	} else {
		// global.PrintDebug("ARR", "Not consistant with LPO")
		parent <- nil
	}
	// global.PrintDebug("ARR", "Die")
}

/**
* Apply equality rule
* There is 5 terms :
* l and r / u v
* s and t
* sub_term_of s is a subterm of s unifible with l
**/
// reconstruire le problème à chaque fois, le code trees, etc
func applyEQRule(l, r, sub_term_of_s, s, t basictypes.Term, cl ConstraintList) (bool, basictypes.Term, ConstraintList) {
	// global.PrintDebug("AEQR", "Apply eq rule")
	// global.PrintDebug("AEQR", fmt.Sprintf("Replace %v by %v in %v", sub_term_of_s.ToString(), r.ToString(), s.ToString()))
	new_s := s.Copy().ReplaceSubTermBy(sub_term_of_s, r)
	// global.PrintDebug("AEQR", fmt.Sprintf("s = %v, new_s = %v", s.ToString(), new_s.ToString()))
	constraints_list := cl.Copy()
	if !constraints_list.AppendIfConsistant(MakeConstraint(PREC, MakeTermPair(r, l))) {
		return false, nil, nil
	}
	if !constraints_list.AppendIfConsistant(MakeConstraint(PREC, MakeTermPair(t, s))) {
		return false, nil, nil
	}
	if !constraints_list.AppendIfConsistant(MakeConstraint(EQ, MakeTermPair(l, sub_term_of_s))) {
		return false, nil, nil
	}
	return true, new_s, constraints_list
}
