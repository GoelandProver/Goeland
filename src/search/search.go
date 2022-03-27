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
/*************/
/* search.go */
/************/

/**
* This file contains functions and types common to destructive and non-destructive version of tableaux
**/

package search

import (
	"fmt"

	treetypes "github.com/GoelandProver/Goeland/code-trees/tree-types"
	"github.com/GoelandProver/Goeland/global"
	"github.com/GoelandProver/Goeland/plugin"
	basictypes "github.com/GoelandProver/Goeland/types/basic-types"
	complextypes "github.com/GoelandProver/Goeland/types/complex-types"
	visualization "github.com/GoelandProver/Goeland/visualization_exchanges"
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
func manageClosureRule(father_id uint64, st *complextypes.State, c Communication, clos_res bool, substs []treetypes.Substitutions, f basictypes.Form) bool {
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

				// Check if subst_for_father is failure
				if subst_for_father.Equals(treetypes.Failure()) {
					global.PrintDebug("MCR", fmt.Sprintf("Error : SubstForFather is failure between : %v and %v \n", subst_for_father.ToString(), st.GetAppliedSubst().ToString()))
					fmt.Printf("[MCR] Error : SubstForFather is failure between : %v and %v \n", subst_for_father.ToString(), st.GetAppliedSubst().GetSubst().ToString())
				}

				global.PrintDebug("MCR", fmt.Sprintf("Formula = : %v", f.ToString()))

				// Create substAndForm with the current form and the subst found
				subst_and_form_for_father := complextypes.MakeSubstAndForm(subst_for_father, basictypes.MakeSingleElementList(f))

				global.PrintDebug("MCR", fmt.Sprintf("SubstAndForm created : %v", subst_and_form_for_father.ToString()))

				// Merge with applied subst (if any)
				subst_and_form_for_father = complextypes.MergeSubstAndForm(subst_and_form_for_father.Copy(), st.GetAppliedSubst())

				st.SetSubstsFound(complextypes.AppendIfNotContainsSubstAndForm(st.GetSubstsFound(), subst_and_form_for_father))
			}

			global.PrintDebug("MCR", fmt.Sprintf("Subst found now : %v", complextypes.SubstAndFormListToString(st.GetSubstsFound())))
		}
	}

	return closed
}

/* Apply rules with priority (closure < rewritte < alpha < delta < closure with mm < beta < gamma) */
func applyRules(father_id uint64, st complextypes.State, c Communication) {
	global.PrintDebug("AR", "ApplyRule")
	switch {
	case len(st.GetLF()) > 0 && global.IsLoaded("dmt"):
		st.SetCurrentProofFormula(st.GetAllForms())
		st.SetProof(append(st.GetProof(), st.GetCurrentProof()))
		manageRewritteRules(father_id, st, c)

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

/* Manage Rewritte rules - return true if a rewritting rule was applied, false otherwise */
func manageRewritteRules(father_id uint64, st complextypes.State, c Communication) {
	global.PrintDebug("PS", "Try rewritte rule")
	remaining_atomics := st.GetLF()

	// For each atomic
	for len(remaining_atomics) > 0 {
		global.PrintDebug("PS", "Remaining atomic > 0")

		// On prend le premier élément de le liste des atomics
		f := remaining_atomics[0].Copy()
		remaining_atomics = remaining_atomics[1:].Copy()
		global.PrintDebug("PS", fmt.Sprintf("Choosen : %v", f.ToString()))
		global.PrintDebug("PS", fmt.Sprintf("Remaining_atomics %v", remaining_atomics.ToString()))

		// Si f est dans atomic, ça veut dire qu'on a pas pu réécrire, donc inutile de vérifier
		if !st.GetAtomic().Contains(f) {
			if rewritten, err := plugin.GetPluginManager().ApplyRewriteHook(f); err == nil {
				global.PrintDebug("PS", fmt.Sprintf("Try to rewrite into :  %v", complextypes.SubstAndFormListToString(rewritten)))

				// Rewritten is the list of backtrack on subst
				// Keep only relevant substitutions
				for i := range rewritten {
					rewritten[i] = complextypes.MakeSubstAndForm(complextypes.RemoveElementWithoutMM(rewritten[i].GetSubst(), st.GetMC().Merge(st.GetMM())), rewritten[i].GetForm())
				}
				rewritten = append(rewritten, complextypes.MakeSubstAndForm(treetypes.MakeEmptySubstitution(), basictypes.MakeSingleElementList(f)))

				// Keep all the possibility of rewritting and choose the first one
				choosen_rewritten := rewritten[0]
				choosen_rewritten_form := choosen_rewritten.GetForm()[0].Copy()
				rewritten = complextypes.CopySubstAndFormList(rewritten[1:])

				// Si on ne s'est pas réécrit en soi-même ?
				if !choosen_rewritten_form.Equals(f) {
					// Create a child with the current rewritting rule and make this process to wait for him, with a list of other subst to try
					st.SetLF(append(remaining_atomics.Copy(), choosen_rewritten_form.Copy()))
					st.SetBTOnFormulas(true) // I need to know that I can bt on form and my child needs to know it to to don't loop

					st_copy := st.Copy()
					st_copy.SetCurrentProofRule("Rewrite")
					// st_copy.SetSubstsFound(st.GetSubstsFound())
					c_child := Communication{make(chan bool), make(chan Result)}
					go ProofSearch(global.GetGID(), st_copy, c_child, choosen_rewritten)
					global.PrintDebug("PS", "GO !")
					global.IncrGoRoutine(1)
					waitChildren(father_id, st, c, []Communication{c_child}, []complextypes.SubstAndForm{}, complextypes.SubstAndForm{}, []complextypes.SubstAndForm{}, rewritten)
					return
				} else {
					// Pas de réécriture disponible
					global.PrintDebug("PS", fmt.Sprintf("Pas de réécriture possible, dispatchform de %v", f.ToString()))
					// Si pas de réécriture de disponible, on ajoute f à atomics
					st.DispatchForm(f.Copy())
				}
			} else {
				fmt.Printf("[DMT] Error %v", err.Error())
			}
		}
	}

	// Si aucune réécriture n'a été trouvée, on relance une étape "vide"
	st.SetLF(basictypes.MakeEmptyFormList())
	ProofSearch(father_id, st, c, complextypes.MakeEmptySubstAndForm())
}

/* Manage alpha rules */
func manageAlphaRules(father_id uint64, st complextypes.State, c Communication) {
	global.PrintDebug("PS", "Alpha rule")
	hdf := st.GetAlpha()[0]
	global.PrintDebug("PS", fmt.Sprintf("Rule applied on : %s", hdf.ToString()))
	st.SetCurrentProofRule("α")
	st.SetAlpha(st.GetAlpha()[1:])
	st.SetLF(applyAlphaRules(hdf))
	ProofSearch(father_id, st, c, complextypes.MakeEmptySubstAndForm())
}

/* Manage delta rules */
func manageDeltaRules(father_id uint64, st complextypes.State, c Communication) {
	global.PrintDebug("PS", "Delta rule")
	hdf := st.GetDelta()[0]
	global.PrintDebug("PS", fmt.Sprintf("Rule applied on : %s", hdf.ToString()))
	st.SetCurrentProofRule("δ")
	st.SetDelta(st.GetDelta()[1:])
	st.SetLF(applyDeltaRules(hdf))
	ProofSearch(father_id, st, c, complextypes.MakeEmptySubstAndForm())
}

/* Manage beta rules */
func manageBetaRules(father_id uint64, st complextypes.State, c Communication) {
	global.PrintDebug("PS", "Beta rule")
	hdf := st.GetBeta()[0]
	global.PrintDebug("PS", fmt.Sprintf("Rule applied on : %s", hdf.ToString()))
	reslf := applyBetaRules(hdf)

	// For each child, launch a goroutine, stock its channel, and wait an answer
	var chan_tab []Communication
	for i := range reslf {
		st_copy := st.Copy()
		st_copy.SetCurrentProofRule("β")
		st_copy.SetBeta(st.GetBeta()[1:])
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
		st.SetBTOnFormulas(false)
		waitChildren(father_id, st, c, chan_tab, []complextypes.SubstAndForm{}, complextypes.SubstAndForm{}, []complextypes.SubstAndForm{}, []complextypes.SubstAndForm{})
	} else {
		global.PrintDebug("PS", "Die")
	}
}

/* Manage gamma rule */
func manageGammaRules(father_id uint64, st complextypes.State, c Communication) {
	global.PrintDebug("PS", "Gamma rule")
	hdf := st.GetGamma()[0]
	global.PrintDebug("PS", fmt.Sprintf("Rule applied on : %s", hdf.ToString()))
	st.SetCurrentProofRule("γ")
	st.SetGamma(st.GetGamma()[1:])

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
	global.PrintDebug("PS", fmt.Sprintf("Reintroduce the formula : %s", reslf.ToString()))
	st.SetLF(basictypes.MakeSingleElementList(reslf))
	ProofSearch(father_id, st, c, complextypes.MakeEmptySubstAndForm())
}
