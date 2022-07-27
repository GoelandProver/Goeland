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
/***************************/
/* equality_rules_unify.go */
/***************************/
/**
* This file contains some functions about unification and stop cases for equality reasoning.
**/

package equality

import (
	"fmt"

	treesearch "github.com/GoelandProver/Goeland/code-trees/tree-search"
	treetypes "github.com/GoelandProver/Goeland/code-trees/tree-types"
	"github.com/GoelandProver/Goeland/global"
	basictypes "github.com/GoelandProver/Goeland/types/basic-types"
)

type answerEP struct {
	id     uint64
	found  bool
	substs []treetypes.Substitutions
}

func makeEmptyAnswerEP() answerEP {
	return answerEP{global.GetGID(), false, nil}
}

func makeAnswerEP(found bool, substs []treetypes.Substitutions) answerEP {
	return answerEP{global.GetGID(), found, substs}
}

/**
* check if the search should stop, ie if s = t
**/
func checkStopCases(ep EqualityProblem) bool {
	return ep.getS().Equals(ep.getT())
}

/* Try to unify s and t */
func tryUnifySAndT(s, t basictypes.Term) (bool, treetypes.Substitutions) {
	subst := treetypes.MakeEmptySubstitution()
	subst = treesearch.AddUnification(s.Copy(), t.Copy(), subst)
	return !subst.Equals(treetypes.Failure()), subst
}

/* check unfiication */
func checkUnif(ep EqualityProblem) (bool, []treetypes.Substitutions) {
	found := false
	substs_res := []treetypes.Substitutions{}
	if ok, subst_found := tryUnifySAndT(ep.getS(), ep.getT()); ok {
		global.PrintDebug("ERP", "Unif found !")
		new_subst := treesearch.AddUnification(ep.getS(), ep.getT(), ep.getC().getSubst())
		if !new_subst.Equals(treetypes.Failure()) {
			is_consistant := ep.c.getPrec().isConsistantWithSubst(new_subst)
			if is_consistant {
				global.PrintDebug("ERP", fmt.Sprintf("Unif found and consistant : %v", new_subst.ToString()))
				found = true
				substs_res = append(substs_res, new_subst)
			} else {
				global.PrintDebug("ERP", fmt.Sprintf("Unif found but not consistant : %v", subst_found.ToString()))
			}
		} else {
			global.PrintDebug("ERP", fmt.Sprintf("Unif found but not consistant with other unifications : %v", subst_found.ToString()))
		}
	} else {
		global.PrintDebug("ERP", "Unification not found")
	}
	return found, substs_res
}
