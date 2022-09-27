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
/*******************************/
/* equality_rules_try_apply.go */
/*******************************/
/**
* This file contains the functin to compute the applicable rules.
**/

package equality

import (
	"fmt"

	treetypes "github.com/GoelandProver/Goeland/code-trees/tree-types"
	"github.com/GoelandProver/Goeland/global"
	basictypes "github.com/GoelandProver/Goeland/types/basic-types"
	datastruct "github.com/GoelandProver/Goeland/types/data-struct"
)

/* Try left rule */
func tryApplyLeftRules(ep EqualityProblem, index_begin int) ruleStructList {
	global.PrintDebug("TALR", "-- Try apply left rule")
	res := ruleStructList{}
	i := index_begin
	for i < len(ep.getE()) {
		eq_pair := ep.getE()[i]
		res = append(res, tryApplyRuleAux(eq_pair.getT1(), eq_pair.getT2(), ep.copy(), LEFT, true, i)...)
		res = append(res, tryApplyRuleAux(eq_pair.getT2(), eq_pair.getT1(), ep.copy(), LEFT, false, i)...)
		i++
	}
	global.PrintDebug("TALR", "-- End of Try apply left rule")
	return res
}

/* Try right rule */
func tryApplyRightRules(ep EqualityProblem) ruleStructList {
	global.PrintDebug("TARR", "-- Try apply right rule")
	res := ruleStructList{}
	res = append(res, tryApplyRuleAux(ep.getS(), ep.getT(), ep.copy(), RIGHT, true, -1)...)
	res = append(res, tryApplyRuleAux(ep.getT(), ep.getS(), ep.copy(), RIGHT, false, -1)...)
	global.PrintDebug("TARR", "-- End of Try apply right rule")
	return res
}

/* Set rule's parameter */
func tryApplyRuleAux(t1, t2 basictypes.Term, ep EqualityProblem, ruleType int, is_s_modified bool, index int) ruleStructList {
	res := tryApplyRuleCompute(t1.Copy(), t2.Copy(), ep.copy(), ruleType)
	new_res := ruleStructList{}
	for _, r := range res {
		r.setIsSModified(is_s_modified)
		r.setIndexEQList(index)
		new_res = append(new_res, r)
	}
	return new_res
}

// Take s, t and return a rule
func tryApplyRuleCompute(s, t basictypes.Term, ep EqualityProblem, type_rule int) ruleStructList {
	global.PrintDebug("TARA", "===============================================")
	global.PrintDebug("TARA", fmt.Sprintf("Try apply rule aux on : %v and %v", s.ToString(), t.ToString()))

	// Retrieve the list of substerm of s
	subterms_of_s := s.GetSubTerms()
	global.PrintDebug("TARA", fmt.Sprintf("len subterms found : %v - %v", len(subterms_of_s), subterms_of_s.ToString()))
	global.PrintDebug("TARA", fmt.Sprintf("EP eq list : %v", ep.getE().toString()))

	// for each l' substerm of s, return a list (l', l) unifiable
	list_l_prime_l := searchUnifBewteenListAndEq(subterms_of_s, ep.getETree())
	global.PrintDebug("TARA", fmt.Sprintf("len unifiable subterms found : %v", len(list_l_prime_l)))

	// Now, for each (l', l),  retrieve the r corresponding to the l
	return connectLAndR(list_l_prime_l, ep, s, t, type_rule)
}

/* Retrieve the last membre of rule struct and return the list */
func connectLAndR(list_l_prime_l []TermPair, ep EqualityProblem, s basictypes.Term, t basictypes.Term, type_rule int) ruleStructList {
	res := ruleStructList{}

	for _, l_prime_l_pair := range list_l_prime_l {
		global.PrintDebug("TARA", fmt.Sprintf("Subterms unifiable found : %v", l_prime_l_pair.toString()))

		for _, r := range ep.getEMap()[l_prime_l_pair.getT2().ToString()] {
			global.PrintDebug("TARA", fmt.Sprintf("On veut susbstituer %v (unifiable avec %v) par %v dans %v = %v", l_prime_l_pair.getT1().ToString(), l_prime_l_pair.getT2().ToString(), r.ToString(), s.ToString(), t.ToString()))

			// create pair an check equality
			s_t := makeTermPair(s, t)
			l_r := makeTermPair(l_prime_l_pair.getT2(), r)

			// if s = t is not l = r OR, if they are, the rule's type is right, so it's ok
			if !s_t.equalsModulo(l_r) || type_rule == RIGHT {
				global.PrintDebug("TARA", "Try apply rule ok !")
				res = append(res, makeRuleStruct(type_rule, l_prime_l_pair.getT2(), r.Copy(), l_prime_l_pair.getT1(), s.Copy(), t.Copy()))
			} else {
				global.PrintDebug("TARA", "Don't apply an equality on itself")
			}
		}
	}
	return res
}

/* return all the pair (l, l') unifiable */
func searchUnifBewteenListAndEq(tl basictypes.TermList, tree datastruct.DataStructure) []TermPair {
	global.PrintDebug("SUBLE", fmt.Sprintf("Searching unfication between %v and the eq tree", tl.ToString()))
	term_pair_list := []TermPair{}
	for _, t_prime := range tl {
		// If the subterm is not a variable
		global.PrintDebug("SUBLE", "------------------------------------------")
		global.PrintDebug("SUBLE", fmt.Sprintf("Current subterm : %v", t_prime.ToString()))
		if !t_prime.IsMeta() {
			res, tl := checkUnifInTree(t_prime, tree)
			if res {
				global.PrintDebug("SUBLE", "Unification found !")
				for _, t := range tl {
					global.PrintDebug("SUBLE", fmt.Sprintf("Unif found with : %v", t.ToString()))
					term_pair_list = append(term_pair_list, makeTermPair(t_prime, t))
				}
			} else {
				global.PrintDebug("SUBLE", "Unification not found !")
			}
		} else {
			global.PrintDebug("SUBLE", fmt.Sprintf("%v is a meta !", t_prime.ToString()))
		}
	}
	return term_pair_list
}

/* Take a (sub)-term t, and retrieve all the term t' unifiable with t */
func checkUnifInTree(t basictypes.Term, tree datastruct.DataStructure) (bool, basictypes.TermList) {
	result_list := basictypes.MakeEmptyTermList()
	res, ms := tree.Unify(treetypes.MakerTermForm(t.Copy()))
	if !res {
		return false, result_list
	}
	for _, subst := range ms {
		global.PrintDebug("CUIT", fmt.Sprintf("Unif found with %v :%v", subst.GetForm().ToString(), subst.GetSubst().ToString()))
		result_list = append(result_list, subst.GetForm().(treetypes.TermForm).GetTerm())
	}
	return len(result_list) > 0, result_list
}
