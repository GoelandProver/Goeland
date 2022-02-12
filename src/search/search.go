/**
* Copyright by Julie CAILLER and Johann ROSAIN (2022)
*
* julie.cailler@lirmm.fr
* johann.rosain@lirmm.fr
*
* Goéland is an automated theorem prover for first order logic.
*
* This software is governed by the CeCILL-B license under French law and
* abiding by the rules of distribution of free software.  You can  use, 
* modify and/ or redistribute the software under the terms of the CeCILL-B
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
* knowledge of the CeCILL-B license and that you accept its terms.
**/
/*************/
/* search.go */
/************/

/**
* This file contains functions and types common to destructive and non-destructive version of tableaux
**/

package search

import (
	"fmt"
	"time"

	treesearch "github.com/delahayd/gotab/code-trees/tree-search"
	treetypes "github.com/delahayd/gotab/code-trees/tree-types"
	"github.com/delahayd/gotab/global"
	basictypes "github.com/delahayd/gotab/types/basic-types"
	complextypes "github.com/delahayd/gotab/types/complex-types"
	"github.com/delahayd/gotab/visualization"
)

/**
* ProofSearch
* Search algorithm (Tableaux method)
* n : number of gamma rule available
* st : complextypes.State, the current search complextypes.State
* c : channel to send the answer to the father
* s : substitution to apply to the current complextypes.State
* subst_found : treetypes.Substitutions found by this process
**/
func ProofSearch(father_id uint64, st complextypes.State, c Communication, s complextypes.SubstAndForm) {
	if global.IsDestructive() {
		proofSearchDestructive(father_id, st, c, s)
	} else {
		proofSearchNonDestructive(father_id, st, c)
	}
}

/**
* clos_res and subst are the result of applyClosureRule.
* Manage this result, dispatch the subst and recreate data strcutures.
* Return if the branch is closed without variable from its father
**/
func manageClosureRule(father_id uint64, st *complextypes.State, c Communication, clos_res bool, substs []treetypes.Substitutions, f basictypes.FormAndTerm) bool {
	closed := false

	if clos_res {

		mm := append(st.GetMM(), complextypes.GetMetaFromSubst(st.GetAppliedSubst().GetSubst())...)
		substs_with_mm, substs_without_mm := complextypes.DispatchSubst(treetypes.CopySubstList(substs), mm)

		switch {

		case len(substs) == 0:
			global.PrintDebug("MCR", "Branch closed by ¬⊤ or ⊥ or a litteral and its opposite !")
			st.SetSubstsFound([]complextypes.SubstAndForm{st.GetAppliedSubst()})
			st.SetCurrentProofRule("⊙")
			st.SetCurrentProofFormula(st.GetAllForms())
			st.SetProof(append(st.GetProof(), st.GetCurrentProof()))
			sendSubToFather(c, true, false, global.GetGID(), *st, []complextypes.SubstAndForm{})
			closed = true

		case len(substs_without_mm) > 0:
			global.PrintDebug("MCR", fmt.Sprintf("Contradiction found (without mm) : %v", treetypes.SubstListToString(substs_without_mm)))
			st.SetSubstsFound([]complextypes.SubstAndForm{st.GetAppliedSubst()})
			st.SetCurrentProofRule(fmt.Sprintf("⊙ - %v", treetypes.SubstListToStringForProof(substs_without_mm)))
			st.SetCurrentProofFormula(st.GetAllForms())
			st.SetProof(append(st.GetProof(), st.GetCurrentProof()))
			sendSubToFather(c, true, false, global.GetGID(), *st, []complextypes.SubstAndForm{})
			closed = true

		case len(substs_with_mm) > 0:
			global.PrintDebug("MCR", "Contradiction found (with mm) !")
			for _, subst_for_father := range substs_with_mm {
				if len(st.GetAppliedSubst().GetSubst()) > 0 {
					subst_for_father_merged, same_key := treesearch.MergeSubstitutions(subst_for_father, st.GetAppliedSubst().GetSubst())
					subst_for_father = subst_for_father_merged

					if same_key {
						fmt.Printf("Same key in S2 and S1")
					}

					if subst_for_father.Equals(treetypes.Failure()) {
						println("[MCR] Error : MergeSubstitutions return failure")
						time.Sleep(300000 * time.Millisecond)
					}
				}
				if len(subst_for_father) > 0 {
					st.SetSubstsFound(complextypes.AppendIfNotContainsSubstAndForm(st.GetSubstsFound(), complextypes.MakeSubstAndForm(subst_for_father, f)))
				}
			}
			global.PrintDebug("MCR", fmt.Sprintf("Subt found now : %v", treetypes.SubstListToString(complextypes.GetSubstListFromSubstAndFormList(st.GetSubstsFound()))))
		}
	}

	return closed
}

/* Apply rules with priority (closure < alpha < delta < closure with mm < beta < gamma) */
func applyRules(father_id uint64, st complextypes.State, c Communication) {
	switch {
	case len(st.GetAlpha()) > 0:
		st.SetCurrentProofFormula(st.GetAllForms())
		st.SetProof(append(st.GetProof(), st.GetCurrentProof()))
		manageAlphaRules(father_id, st, c)

	case len(st.GetDelta()) > 0:
		st.SetCurrentProofFormula(st.GetAllForms())
		st.SetProof(append(st.GetProof(), st.GetCurrentProof()))
		manageDeltaRules(father_id, st, c)

	case len(st.GetSubstsFound()) > 0 && global.IsDestructive():
		global.PrintDebug("PS", fmt.Sprintf("Send subst with mm to father : %v", treetypes.SubstListToString(complextypes.GetSubstListFromSubstAndFormList(st.GetSubstsFound()))))
		st.SetCurrentProofRule(fmt.Sprintf("Send subst to father : %v", treetypes.SubstListToStringForProof(complextypes.GetSubstListFromSubstAndFormList(st.GetSubstsFound()))))
		st.SetCurrentProofFormula(st.GetAllForms())
		st.SetProof(append(st.GetProof(), st.GetCurrentProof()))
		sendSubToFather(c, true, true, father_id, st, []complextypes.SubstAndForm{})

	case len(st.GetBeta()) > 0:
		st.SetCurrentProofFormula(st.GetAllForms())
		manageBetaRules(father_id, st, c)

	case len(st.GetGamma()) > 0 && st.CanApplyGammaRule():
		st.SetCurrentProofFormula(st.GetAllForms())
		st.SetProof(append(st.GetProof(), st.GetCurrentProof()))
		manageGammaRules(father_id, st, c)

	case len(st.GetMetaGen()) > 0 && st.CanReintroduce():
		st.SetCurrentProofFormula(st.GetAllForms())
		st.SetProof(append(st.GetProof(), st.GetCurrentProof()))
		manageReintroductionRules(father_id, st, c)

	default:
		visualization.WriteExchanges(father_id, st, nil, complextypes.MakeEmptySubstAndForm(), "ApplyRules - SAT")
		st.SetCurrentProofRule("Sat")
		st.SetCurrentProofFormula(st.GetAllForms())
		st.SetProof(append(st.GetProof(), st.GetCurrentProof()))
		global.PrintDebug("PS", "Nothing found, return sat")
		sendSubToFather(c, false, false, father_id, st, []complextypes.SubstAndForm{})
	}
}

/* Manage alpha rules */
func manageAlphaRules(father_id uint64, st complextypes.State, c Communication) {
	global.PrintDebug("PS", "Alpha rule")
	hdf := st.GetAlpha()[0]
	global.PrintDebug("PS", fmt.Sprintf("Rule applied on : %s", hdf.GetForm().ToString()))
	st.SetCurrentProofRule("α")

	if len(st.GetAlpha()) > 1 {
		st.SetAlpha(st.GetAlpha()[1:len(st.GetAlpha())])
	} else {
		st.SetAlpha(make([]basictypes.FormAndTerm, 0))
	}
	st.SetLF(applyAlphaRules(hdf))
	ProofSearch(father_id, st, c, complextypes.MakeEmptySubstAndForm())
}

/* Manage delta rules */
func manageDeltaRules(father_id uint64, st complextypes.State, c Communication) {
	global.PrintDebug("PS", "Delta rule")
	hdf := st.GetDelta()[0]
	global.PrintDebug("PS", fmt.Sprintf("Rule applied on : %s", hdf.GetForm().ToString()))
	st.SetCurrentProofRule("δ")

	if len(st.GetDelta()) > 1 {
		st.SetDelta(st.GetDelta()[1:len(st.GetDelta())])
	} else {
		st.SetDelta(make([]basictypes.FormAndTerm, 0))
	}
	st.SetLF(applyDeltaRules(hdf))
	ProofSearch(father_id, st, c, complextypes.MakeEmptySubstAndForm())
}

/* Manage beta rules */
func manageBetaRules(father_id uint64, st complextypes.State, c Communication) {
	global.PrintDebug("PS", "Beta rule")
	hdf := st.GetBeta()[0]
	global.PrintDebug("PS", fmt.Sprintf("Rule applied on : %s", hdf.GetForm().ToString()))
	reslf := applyBetaRules(hdf)

	// For each child, launch a goroutine, stock its channel, and wait an answer
	var chan_tab []Communication
	for i := range reslf {
		st_copy := st.Copy()
		st_copy.SetCurrentProofRule("β")
		if len(st_copy.GetBeta()) > 1 {
			st_copy.SetBeta(st.GetBeta()[1:len(st.GetBeta())])
		} else {
			st_copy.SetBeta(make([]basictypes.FormAndTerm, 0))
		}

		st_copy.SetLF(reslf[i])
		if global.IsDestructive() {
			c_child := Communication{make(chan bool), make(chan Result)}
			chan_tab = append(chan_tab, c_child)
			go ProofSearch(global.GetGID(), st_copy, c_child, complextypes.MakeEmptySubstAndForm())
		} else {
			go ProofSearch(global.GetGID(), st_copy, c, complextypes.MakeEmptySubstAndForm())
		}

		global.IncrGoRoutine(1)
		global.PrintDebug("PS", "GO !")

	}
	if global.IsDestructive() {
		waitChildren(father_id, st, c, chan_tab, []complextypes.SubstAndForm{}, complextypes.SubstAndForm{}, []complextypes.SubstAndForm{})
	} else {
		global.PrintDebug("PS", "Die")
	}
}

/* Manage gamma rule */
func manageGammaRules(father_id uint64, st complextypes.State, c Communication) {
	global.PrintDebug("PS", "Gamma rule")
	hdf := st.GetGamma()[0]
	global.PrintDebug("PS", fmt.Sprintf("Rule applied on : %s", hdf.GetForm().ToString()))
	st.SetCurrentProofRule("γ")

	if len(st.GetGamma()) > 1 {
		st.SetGamma(st.GetGamma()[1:len(st.GetGamma())])
	} else {
		st.SetGamma(make([]basictypes.FormAndTerm, 0))
	}

	index, new_meta_gen := basictypes.GetIndexMetaGenList(hdf, st.GetMetaGen())
	st.SetMetaGen(new_meta_gen)
	new_lf, new_metas := applyGammaRules(hdf, index)
	st.SetLF(new_lf)
	st.SetMC(append(st.GetMC(), new_metas...))

	if global.IsDestructive() {
		st.SetN(st.GetN() - 1)
	}
	ProofSearch(father_id, st, c, complextypes.MakeEmptySubstAndForm())
}

/* Manage reintroduction */
func manageReintroductionRules(father_id uint64, st complextypes.State, c Communication) {
	global.PrintDebug("PS", "Reintroduction")
	new_meta_generator := st.GetMetaGen()
	reslf := basictypes.ReintroduceMeta(&new_meta_generator, -1)
	st.SetCurrentProofRule("Reintroduction")

	st.SetMetaGen(new_meta_generator)
	global.PrintDebug("PS", fmt.Sprintf("Reintroduce the formula : %s", reslf.GetForm().ToString()))
	st.SetLF([]basictypes.FormAndTerm{reslf})
	ProofSearch(father_id, st, c, complextypes.MakeEmptySubstAndForm())
}
