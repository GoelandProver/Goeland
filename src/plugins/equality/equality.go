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
* This file implements the main logic behind the equality plugin.
**/

package equality

import (
	treetypes "github.com/GoelandProver/Goeland/code-trees/tree-types"
	"github.com/GoelandProver/Goeland/global"
	"github.com/GoelandProver/Goeland/search"

	basictypes "github.com/GoelandProver/Goeland/types/basic-types"
	complextypes "github.com/GoelandProver/Goeland/types/complex-types"
	datastruct "github.com/GoelandProver/Goeland/types/data-struct"
)

func Enable() {
	SetTryEquality()
}

func SetTryEquality() {
	search.TryEquality = TryEquality
}

func TryEquality(atomics_for_dmt basictypes.FormAndTermsList, st complextypes.State, new_atomics basictypes.FormAndTermsList, father_id uint64, cha search.Communication, node_id int, original_node_id int) bool {
	if !global.GetDMTBeforeEq() || len(atomics_for_dmt) == 0 || len(st.GetLF()) == 0 {
		global.PrintDebug("PS", "Try apply EQ !")
		if len(new_atomics) > 0 || len(st.GetLF()) == 0 {
			global.PrintDebug("PS", "EQ is applicable !")
			atomics_plus_dmt := append(st.GetAtomic(), atomics_for_dmt...)
			res_eq, subst_eq := EqualityReasoning(st.GetTreePos(), st.GetTreeNeg(), atomics_plus_dmt.ExtractForms(), original_node_id)
			if res_eq {
				search.UsedSearch.ManageClosureRule(father_id, &st, cha, subst_eq, basictypes.MakeFormAndTerm(basictypes.EmptyPredEq, basictypes.MakeEmptyTermList()), node_id, original_node_id)
				return true
			}
		}
	}
	return false
}

/**
* Function EqualityReasoning
* Takes atomics
* creates the problem
* returns a bool for success and the corresponding substitution
**/
func EqualityReasoning(tree_pos, tree_neg datastruct.DataStructure, atomic basictypes.FormList, originalNodeId int) (bool, []treetypes.Substitutions) {
	global.PrintDebug("ER", "ER call")
	problem, equalities := buildEqualityProblemMultiList(atomic, tree_pos, tree_neg)
	if equalities {
		return RunEqualityReasoning(problem)
	} else {
		return false, []treetypes.Substitutions{}
	}
}
