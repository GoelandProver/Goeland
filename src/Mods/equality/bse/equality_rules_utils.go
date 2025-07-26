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
* This file contains some functions about unification and stop cases for equality reasoning.
**/

package equality

import (
	"fmt"

	"github.com/GoelandProver/Goeland/AST"
	"github.com/GoelandProver/Goeland/Glob"
	"github.com/GoelandProver/Goeland/Lib"
	"github.com/GoelandProver/Goeland/Unif"
)

type answerEP struct {
	id     uint64
	found  bool
	substs []Unif.Substitutions
}

func makeEmptyAnswerEP() answerEP {
	return answerEP{Glob.GetGID(), false, nil}
}

func makeAnswerEP(found bool, substs []Unif.Substitutions) answerEP {
	return answerEP{Glob.GetGID(), found, substs}
}

/**
* check if the search should stop, ie if s = t
**/
func checkStopCases(ep EqualityProblem) bool {
	return ep.GetS().Equals(ep.GetT())
}

/* Try to unify s and t */
func tryUnifySAndT(s, t AST.Term) (bool, Unif.Substitutions) {
	subst := Unif.MakeEmptySubstitution()
	subst = Unif.AddUnification(s.Copy(), t.Copy(), subst)
	return !subst.Equals(Unif.Failure()), subst
}

/* check unfiication */
func checkUnif(ep EqualityProblem) (found bool, substs_res []Unif.Substitutions) {
	if ok, subst_found := tryUnifySAndT(ep.GetS(), ep.GetT()); ok {
		debug(Lib.MkLazy(func() string { return "Unif found !" }))
		new_subst := Unif.AddUnification(ep.GetS(), ep.GetT(), ep.getC().getSubst())
		if !new_subst.Equals(Unif.Failure()) {
			is_consistant := ep.c.getPrec().isConsistantWithSubst(new_subst)
			if is_consistant {
				debug(
					Lib.MkLazy(func() string {
						return fmt.Sprintf(
							"Unif found and consistant : %v", new_subst.ToString())
					}),
				)
				found = true
				substs_res = append(substs_res, new_subst)
			} else {
				debug(
					Lib.MkLazy(func() string {
						return fmt.Sprintf(
							"Unif found but not consistant : %v", subst_found.ToString())
					}),
				)
			}
		} else {
			debug(
				Lib.MkLazy(func() string {
					return fmt.Sprintf(
						"Unif found but not consistant with other unifications : %v", subst_found.ToString())
				}),
			)
		}
	} else {
		debug(Lib.MkLazy(func() string { return "Unification not found" }))
	}
	return found, substs_res
}
