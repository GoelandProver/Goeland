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

import basictypes "github.com/GoelandProver/Goeland/types/basic-types"

/* Apply equality rule
* There is 5 terms :
* l and r / u v
* s and t
* sub_term_of s is a subterm of s unifible with l
**/
func ApplyEQrule(l, r, sub_term_of_s, s, t basictypes.Term, lpo LPO) (bool, basictypes.Term, ConstraintList) {
	new_s := s.Copy().ReplaceSubTermBy(sub_term_of_s, r)
	constraints_list := MakeEmptyConstaintsList()
	if !constraints_list.AppendIfConsistantWithLPO(MakeConstraint(0, MakeTermPair(l, r)), lpo) {
		return false, nil, nil
	}
	if !constraints_list.AppendIfConsistantWithLPO(MakeConstraint(0, MakeTermPair(s, t)), lpo) {
		return false, nil, nil
	}
	if !constraints_list.AppendIfConsistantWithLPO(MakeConstraint(1, MakeTermPair(l, sub_term_of_s)), lpo) {
		return false, nil, nil
	}
	return true, new_s, constraints_list
}

// TryLeftRule, TryRightRule
