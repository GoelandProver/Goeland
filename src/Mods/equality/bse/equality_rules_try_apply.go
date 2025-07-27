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

/**
* This file contains the functin to compute the applicable rules.
**/

package equality

import (
	"fmt"

	"github.com/GoelandProver/Goeland/AST"
	"github.com/GoelandProver/Goeland/Lib"
	"github.com/GoelandProver/Goeland/Mods/equality/eqStruct"
	"github.com/GoelandProver/Goeland/Unif"
)

/* Try left rule */
func tryApplyLeftRules(ep EqualityProblem, index_begin int) ruleStructList {
	debug(
		Lib.MkLazy(func() string { return "-- Try apply left rule" }),
	)
	res := ruleStructList{}
	i := index_begin
	for i < len(ep.GetE()) {
		eq_pair := ep.GetE()[i]
		res = append(res, tryApplyRuleAux(eq_pair.GetT1(), eq_pair.GetT2(), ep.copy(), LEFT, true, i)...)
		res = append(res, tryApplyRuleAux(eq_pair.GetT2(), eq_pair.GetT1(), ep.copy(), LEFT, false, i)...)
		i++
	}
	debug(
		Lib.MkLazy(func() string { return "-- End of Try apply left rule" }),
	)
	return res
}

/* Try right rule */
func tryApplyRightRules(ep EqualityProblem) ruleStructList {
	debug(
		Lib.MkLazy(func() string { return "-- Try apply right rule" }),
	)
	res := ruleStructList{}
	res = append(res, tryApplyRuleAux(ep.GetS(), ep.GetT(), ep.copy(), RIGHT, true, -1)...)
	res = append(res, tryApplyRuleAux(ep.GetT(), ep.GetS(), ep.copy(), RIGHT, false, -1)...)
	debug(
		Lib.MkLazy(func() string { return "-- End of Try apply right rule" }),
	)
	return res
}

/* Set rule's parameter */
func tryApplyRuleAux(t1, t2 AST.Term, ep EqualityProblem, ruleType int, is_s_modified bool, index int) ruleStructList {
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
func tryApplyRuleCompute(s, t AST.Term, ep EqualityProblem, type_rule int) ruleStructList {
	debug(
		Lib.MkLazy(func() string { return "===============================================" }),
	)
	debug(
		Lib.MkLazy(func() string {
			return fmt.Sprintf(
				"Try apply rule aux on : %v and %v",
				s.ToString(),
				t.ToString(),
			)
		}),
	)

	// Retrieve the list of substerm of s
	subterms_of_s := s.GetSubTerms()
	debug(Lib.MkLazy(func() string {
		return fmt.Sprintf(
			"len subterms found : %v - %v",
			subterms_of_s.Len(),
			subterms_of_s.ToString(AST.Term.ToString, ",", "[]"),
		)
	}))
	debug(
		Lib.MkLazy(func() string { return fmt.Sprintf("EP eq list : %v", ep.GetE().ToString()) }),
	)

	// for each l' substerm of s, return a list (l', l) unifiable
	list_l_prime_l := searchUnifBewteenListAndEq(subterms_of_s, ep.getETree())
	debug(
		Lib.MkLazy(func() string { return fmt.Sprintf("len unifiable subterms found : %v", len(list_l_prime_l)) }),
	)

	// Now, for each (l', l),  retrieve the r corresponding to the l
	return connectLAndR(list_l_prime_l, ep, s, t, type_rule)
}

/* Retrieve the last membre of rule struct and return the list */
func connectLAndR(list_l_prime_l []eqStruct.TermPair, ep EqualityProblem, s AST.Term, t AST.Term, type_rule int) ruleStructList {
	res := ruleStructList{}

	for _, l_prime_l_pair := range list_l_prime_l {
		debug(
			Lib.MkLazy(func() string {
				return fmt.Sprintf(
					"Subterms unifiable found : %v",
					l_prime_l_pair.ToString())
			}),
		)

		for _, r := range ep.getEMap()[l_prime_l_pair.GetT2().ToString()].GetSlice() {
			debug(
				Lib.MkLazy(func() string {
					return fmt.Sprintf(
						"We wish to subst %v (unifiable with %v) by %v in %v = %v",
						l_prime_l_pair.GetT1().ToString(),
						l_prime_l_pair.GetT2().ToString(),
						r.ToString(),
						s.ToString(),
						t.ToString())
				}),
			)

			// create pair an check equality
			s_t := eqStruct.MakeTermPair(s, t)
			l_r := eqStruct.MakeTermPair(l_prime_l_pair.GetT2(), r)

			// if s = t is not l = r OR, if they are, the rule's type is right, so it's ok
			if !s_t.EqualsModulo(l_r) || type_rule == RIGHT {
				debug(
					Lib.MkLazy(func() string { return "Try apply rule ok !" }),
				)
				res = append(res, makeRuleStruct(type_rule, l_prime_l_pair.GetT2(), r.Copy(), l_prime_l_pair.GetT1(), s.Copy(), t.Copy()))
			} else {
				debug(
					Lib.MkLazy(func() string { return "Don't apply an equality on itself" }),
				)
			}
		}
	}
	return res
}

/* return all the pair (l, l') unifiable */
func searchUnifBewteenListAndEq(tl Lib.List[AST.Term], tree Unif.DataStructure) []eqStruct.TermPair {
	debug(Lib.MkLazy(func() string {
		return fmt.Sprintf(
			"Searching unfication between %v and the eq tree",
			tl.ToString(AST.Term.ToString, ",", "[]"),
		)
	}))
	term_pair_list := []eqStruct.TermPair{}
	for _, t_prime := range tl.GetSlice() {
		// If the subterm is not a variable
		debug(
			Lib.MkLazy(func() string { return "------------------------------------------" }),
		)
		debug(
			Lib.MkLazy(func() string { return fmt.Sprintf("Current subterm : %v", t_prime.ToString()) }),
		)
		if !t_prime.IsMeta() {
			res, tl := checkUnifInTree(t_prime, tree)
			if res {
				debug(
					Lib.MkLazy(func() string { return "Unification found !" }),
				)
				for _, t := range tl.GetSlice() {
					debug(
						Lib.MkLazy(func() string { return fmt.Sprintf("Unif found with : %v", t.ToString()) }),
					)
					term_pair_list = append(term_pair_list, eqStruct.MakeTermPair(t_prime, t))
				}
			} else {
				debug(
					Lib.MkLazy(func() string { return "Unification not found !" }),
				)
			}
		} else {
			debug(
				Lib.MkLazy(func() string { return fmt.Sprintf("%v is a meta !", t_prime.ToString()) }),
			)
		}
	}
	return term_pair_list
}

/* Take a (sub)-term t, and retrieve all the term t' unifiable with t */
func checkUnifInTree(t AST.Term, tree Unif.DataStructure) (bool, Lib.List[AST.Term]) {
	result_list := Lib.NewList[AST.Term]()
	res, ms := tree.Unify(Unif.MakerTermForm(t.Copy()))

	if !res {
		return false, result_list
	}

	for _, subst := range ms {
		debug(
			Lib.MkLazy(func() string {
				return fmt.Sprintf("Unif found with %v :%v",
					subst.GetForm().ToString(), subst.GetSubst().ToString())
			}),
		)
		result_list.Append(subst.GetForm().(Unif.TermForm).GetTerm())
	}

	return result_list.Len() > 0, result_list
}
