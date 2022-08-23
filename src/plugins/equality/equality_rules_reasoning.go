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
/* equality_rules_reasoning.go */
/*******************************/
/**
* This file contains the functions to apply equality raasoning on a problem, a list and a multilist.
**/

package equality

import (
	"fmt"

	treesearch "github.com/GoelandProver/Goeland/code-trees/tree-search"
	treetypes "github.com/GoelandProver/Goeland/code-trees/tree-types"
	"github.com/GoelandProver/Goeland/global"
	proof "github.com/GoelandProver/Goeland/visualization_proof"
)

/**
* EqualityReasoningMultiList
* Data : a whole equality problem (EqualityProblemMultiList)
* Result : true if at least on of the list return a solution, and the corresponding substitutions
**/
// Todo : S'arrêter au premier trouvé ?
func equalityReasoningMultiList(epml EqualityProblemMultiList) (bool, []treetypes.Substitutions, [][]proof.ProofStruct) {
	global.PrintDebug("ERML", fmt.Sprintf("Start of Equality reasoning multilist : %v", len(epml)))
	global.PrintDebug("ERML", fmt.Sprintf("LPO : %v", lpo.toString()))
	substs_res := []treetypes.Substitutions{}
	found := false
	proof_struct := [][]proof.ProofStruct{}

	for _, epl := range epml {
		global.PrintDebug("ERML", fmt.Sprintf("iteration on EPL : %v", epl.toString()))
		// returns a list of list of equality_proof_step
		if has_solution, subst_res_tmp := equalityReasoningList(epl); has_solution {
			global.PrintDebug("ERML", fmt.Sprintf("Solution found for one EPL : %v !", treetypes.SubstListToString(subst_res_tmp)))
			found = true
			for subst_res_tmp_element := range subst_res_tmp {
				substs_res = treetypes.AppendIfNotContainsSubst(substs_res, subst_res_tmp[subst_res_tmp_element])
				proof_struct = append(proof_struct, proof_list...)
			}
			// from <term, eq, term> to <pred, eq, pred>
			// Return subst, list(<pred, eq, pred>)
		}
	}
	global.PrintDebug("ERML", fmt.Sprintf("Final subst after ER : %v", treetypes.SubstListToString(substs_res)))
	return found, substs_res, proof_struct
}

/**
* EqualityReasoningList
* Data : an equality problem list (EqualityProblemList), corresponding to an inequality or two complementary predicates
* Result : true if all of the problem in the list agrees on at least one substitution, and the corresponding substitutions
**/
func equalityReasoningList(epl EqualityProblemList) (bool, []treetypes.Substitutions, [][]proof.ProofStruct) {
	global.PrintDebug("ERML", fmt.Sprintf("Start of Equality reasoning list : %v", epl.toString()))

	substs_res := []treetypes.Substitutions{}
	proof_res := [][]proof.ProofStruct{}

	for _, ep := range epl.GetEPL() {
		global.PrintDebug("ERL", fmt.Sprintf("Iteration on EP : %v", ep.toString()))
		// Each step manage one problem with n subtitutions
		if has_solution, subst_res_tmp, proof_tmp := manageEqualityReasoningProblem(ep.copy(), substs_res, proof_res); has_solution {
			global.PrintDebug("ERL", fmt.Sprintf("Solution found for on EP : %v !", treetypes.SubstListToString(subst_res_tmp)))
			substs_res = treetypes.CopySubstList(subst_res_tmp)
			proof_res = proof_tmp
		} else {
			return false, []treetypes.Substitutions{treetypes.Failure()}, [][]proof.ProofStruct{}
		}
	}
	return true, substs_res, proof_res
}

/* return true if at least on subst on the subst list returns result, and the corresponding substitution list */
func manageEqualityReasoningProblem(ep EqualityProblem, sl []treetypes.Substitutions, current_proof_list [][]proof.ProofStruct) (bool, []treetypes.Substitutions, [][]proof.ProofStruct) {
	global.PrintDebug("ERPWAS", "Start on equality reasoning  problem with apply subst")
	if len(sl) == 0 {
		// <R ou L, init, eq, final>
		found, subst, proof_res := launchEqualityReasoningProblem(ep)
		// Here : toutes les listes match avec la proof renvoyée
		// TODO : merge current_proof_list avec prood_res (n*m)
		return found, subst
	} else {
		found := false
		res_substs := []treetypes.Substitutions{}
		for _, s := range sl {
			// TODO : trouve la/les liste de proof associée et la mettre à jour avec les nouvelles
			// Here : seul les proof correspondant à la subst match avec les proofs renvoyées
			// Combinatoire n * m
			// Faire une liste (subst, [][]proof)
			found, s_subst, proof_res := launchEqualityReasoningProblem(ep.applySubstitution(s))
			if found {
				for _, subst_element := range s_subst {
					merged_subst, same_key := treesearch.MergeSubstitutions(s.Copy(), subst_element.Copy())
					if same_key {
						global.PrintDebug("ERPWAS", "Error in EqualityReasoningList : same key appears in merge")
						fmt.Printf("[ERPWAS] Error in EqualityReasoningList : same key appears in merge\n")
					}
					if merged_subst.Equals(treetypes.Failure()) {
						global.PrintDebug("ERPWAS", "Error in EqualityReasoningList : merge returns failure")
						fmt.Printf("[ERPWAS] Error in EqualityReasoningList : merge returns failure\n")
					} else {
						found = true
						res_substs = append(res_substs, merged_subst)
					}
				}
			}
		}
		return found, res_substs
	}
}
