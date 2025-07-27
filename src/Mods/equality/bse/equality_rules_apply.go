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
* This file contains the functions to apply a rule on an equality problem struct
**/

package equality

import (
	"fmt"

	"github.com/GoelandProver/Goeland/AST"
	"github.com/GoelandProver/Goeland/Lib"
	"github.com/GoelandProver/Goeland/Mods/equality/eqStruct"
)

/* apply a rule */
func applyRule(rs ruleStruct, ep EqualityProblem, parent chan answerEP, father_id uint64) {
	debug(Lib.MkLazy(func() string { return fmt.Sprintf("Child of %v", father_id) }))
	debug(
		Lib.MkLazy(func() string { return fmt.Sprintf("EQ before applying rule %v", ep.ToString()) }),
	)
	debug(
		Lib.MkLazy(func() string { return fmt.Sprintf("Apply rule %v", rs.toString()) }),
	)
	switch rs.getRule() {
	case LEFT:
		applyLeftRule(rs, ep, parent, father_id)
	case RIGHT:
		applyRightRule(rs, ep, parent, father_id)
	default:
		debug(
			Lib.MkLazy(func() string { return "[EQ] Rule type unknown" }),
		)
	}
}

/* Apply left rigid basic superposition rule */
func applyLeftRule(rs ruleStruct, ep EqualityProblem, father_chan chan answerEP, father_id uint64) {
	debug(
		Lib.MkLazy(func() string { return "Apply left rule" }),
	)
	is_consistant_with_lpo, new_term, new_cl := applyEQRule(rs.getL(), rs.getR(), rs.getLPrime(), rs.getS(), rs.getT(), ep.getC())

	if is_consistant_with_lpo {
		debug(
			Lib.MkLazy(func() string { return fmt.Sprintf("New term : %v", new_term.ToString()) }),
		)
		new_eq_list := ep.GetE()
		if rs.getIsSModified() {
			new_eq_list[rs.getIndexEQList()] = eqStruct.MakeTermPair(new_term.Copy(), rs.getT())
		} else {
			new_eq_list[rs.getIndexEQList()] = eqStruct.MakeTermPair(rs.getS(), new_term.Copy())
		}
		debug(
			Lib.MkLazy(func() string { return fmt.Sprintf("New EQ list : %v", new_eq_list.ToString()) }),
		)
		tryEqualityReasoningProblem(makeEqualityProblem(new_eq_list, ep.GetS(), ep.GetT(), new_cl), father_chan, rs.getIndexEQList(), LEFT, father_id)
	} else {
		debug(
			Lib.MkLazy(func() string { return "Not consistant with LPO, send nil" }),
		)
		father_chan <- makeEmptyAnswerEP()
		debug(Lib.MkLazy(func() string { return "Die" }))
	}
}

/* Apply right rigid basic superposition rule */
func applyRightRule(rs ruleStruct, ep EqualityProblem, father_chan chan answerEP, father_id uint64) {
	debug(
		Lib.MkLazy(func() string { return "Apply right rule" }),
	)

	is_consistant_with_lpo, new_term, new_cl := applyEQRule(rs.getL(), rs.getR(), rs.getLPrime(), rs.getS(), rs.getT(), ep.getC())

	if is_consistant_with_lpo {
		debug(
			Lib.MkLazy(func() string { return fmt.Sprintf("New term : %v", new_term.ToString()) }),
		)
		if rs.getIsSModified() {
			tryEqualityReasoningProblem(makeEqualityProblem(ep.copy().GetE(), new_term.Copy(), rs.getT(), new_cl), father_chan, rs.getIndexEQList(), RIGHT, father_id)
		} else {
			tryEqualityReasoningProblem(makeEqualityProblem(ep.copy().GetE(), rs.getS(), new_term.Copy(), new_cl), father_chan, rs.getIndexEQList(), RIGHT, father_id)
		}
	} else {
		debug(
			Lib.MkLazy(func() string { return "Not consistant with LPO, send nil" }),
		)
		father_chan <- makeEmptyAnswerEP()
		debug(Lib.MkLazy(func() string { return "Die" }))
	}
}

/**
* Apply equality rule
* There is 5 terms :
* l and r / u v
* s and t
* sub_term_of s is a subterm of s unifible with l
**/
func applyEQRule(l, r, sub_term_of_s, s, t AST.Term, cs ConstraintStruct) (bool, AST.Term, ConstraintStruct) {
	debug(
		Lib.MkLazy(func() string { return "Apply eq rule" }),
	)
	debug(
		Lib.MkLazy(func() string {
			return fmt.Sprintf(
				"Replace %v by %v in %v", sub_term_of_s.ToString(), r.ToString(), s.ToString())
		}),
	)
	new_s := s.Copy().ReplaceSubTermBy(sub_term_of_s, r)
	debug(
		Lib.MkLazy(func() string { return fmt.Sprintf("s = %v, new_s = %v", s.ToString(), new_s.ToString()) }),
	)
	constraints_list := cs.copy()

	if !constraints_list.appendIfConsistant(MakeConstraint(PREC, eqStruct.MakeTermPair(r, l))) {
		return false, nil, makeEmptyConstraintStruct()
	}
	if !constraints_list.appendIfConsistant(MakeConstraint(PREC, eqStruct.MakeTermPair(t, s))) {
		return false, nil, makeEmptyConstraintStruct()
	}
	if !constraints_list.appendIfConsistant(MakeConstraint(EQ, eqStruct.MakeTermPair(l, sub_term_of_s))) {
		return false, nil, makeEmptyConstraintStruct()
	}
	return true, new_s, constraints_list
}
