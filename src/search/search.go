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
	dmt "github.com/GoelandProver/Goeland/plugins/dmt"
	basictypes "github.com/GoelandProver/Goeland/types/basic-types"
	complextypes "github.com/GoelandProver/Goeland/types/complex-types"
	visualization "github.com/GoelandProver/Goeland/visualization_exchanges"
	proof "github.com/GoelandProver/Goeland/visualization_proof"
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
func ProofSearch(father_id uint64, st complextypes.State, c Communication, s complextypes.SubstAndForm, node_id int) {
	if global.IsDestructive() {
		proofSearchDestructive(father_id, st, c, s, node_id)
	} else {
		proofSearchNonDestructive(father_id, st, c)
	}
}

/**
* clos_res and subst are the result of applyClosureRule.
* Manage this result, dispatch the subst and recreate data strcutures.
* Return if the branch is closed without variable from its father
**/
func manageClosureRule(father_id uint64, st *complextypes.State, c Communication, clos_res bool, substs []treetypes.Substitutions, f basictypes.Form, node_id int) bool {
	closed := false

	if clos_res {

		mm := append(st.GetMM(), complextypes.GetMetaFromSubst(st.GetAppliedSubst().GetSubst())...)
		substs_with_mm, substs_without_mm := complextypes.DispatchSubst(treetypes.CopySubstList(substs), mm)

		switch {

		case len(substs) == 0:
			global.PrintDebug("MCR", "Branch closed by ¬⊤ or ⊥ or a litteral and its opposite !")
			st.SetSubstsFound([]complextypes.SubstAndForm{st.GetAppliedSubst()})

			// Proof
			st.SetCurrentProofRule("⊙")
			st.SetCurrentProofRuleName("CLOSURE")
			st.SetCurrentProofFormula(f.Copy())
			st.SetCurrentProofNodeId(node_id)
			st.SetCurrentProofResultFormulas([]proof.IntFormList{})
			st.SetProof(append(st.GetProof(), st.GetCurrentProof()))

			sendSubToFather(c, true, false, global.GetGID(), *st, []complextypes.SubstAndForm{}, node_id)
			closed = true

		case len(substs_without_mm) > 0:
			global.PrintDebug("MCR", fmt.Sprintf("Contradiction found (without mm) : %v", treetypes.SubstListToString(substs_without_mm)))
			st.SetSubstsFound([]complextypes.SubstAndForm{st.GetAppliedSubst()})

			// Proof
			st.SetCurrentProofRule(fmt.Sprintf("⊙ / %v", substs_without_mm[0].ToString()))
			st.SetCurrentProofRuleName("CLOSURE")
			st.SetCurrentProofFormula(f.Copy())
			st.SetCurrentProofNodeId(node_id)
			st.SetCurrentProofResultFormulas([]proof.IntFormList{})
			st.SetProof(complextypes.ApplySubstitutionOnProofList(substs_without_mm[0], append(st.GetProof(), st.GetCurrentProof())))

			sendSubToFather(c, true, false, global.GetGID(), *st, []complextypes.SubstAndForm{}, node_id)
			closed = true

		case len(substs_with_mm) > 0:
			global.PrintDebug("MCR", "Contradiction found (with mm) !")

			st.SetCurrentProofRule(fmt.Sprintf("⊙ / %v", treetypes.SubstListToStringForProof(substs_with_mm)))
			st.SetCurrentProofRuleName("CLOSURE")
			st.SetCurrentProofFormula(f.Copy())
			st.SetCurrentProofNodeId(node_id)

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
func applyRules(father_id uint64, st complextypes.State, c Communication, new_atomics basictypes.FormList, current_node_id int) {
	global.PrintDebug("AR", "ApplyRule")
	switch {
	case len(new_atomics) > 0 && global.IsLoaded("dmt") && len(st.GetSubstsFound()) == 0:
		manageRewritteRules(father_id, st, c, new_atomics, current_node_id)

	case len(st.GetAlpha()) > 0:
		manageAlphaRules(father_id, st, c)

	case len(st.GetDelta()) > 0:
		manageDeltaRules(father_id, st, c)

	case len(st.GetSubstsFound()) > 0 && global.IsDestructive():
		global.PrintDebug("PS", fmt.Sprintf("Send subst with mm to father : %v", treetypes.SubstListToString(complextypes.GetSubstListFromSubstAndFormList(st.GetSubstsFound()))))
		// st.SetCurrentProofRule(fmt.Sprintf("⊙ / %v", treetypes.SubstListToStringForProof(complextypes.GetSubstListFromSubstAndFormList(st.GetSubstsFound()))))
		// st.SetCurrentProofRuleName("CLOSURE")
		// st.SetCurrentProofResultFormulas([]basictypes.FormList{basictypes.MakeEmptyFormList()})
		// st.SetProof(append(st.GetProof(), st.GetCurrentProof()))
		sendSubToFather(c, true, true, father_id, st, []complextypes.SubstAndForm{}, current_node_id)

	case len(st.GetBeta()) > 0:
		manageBetaRules(father_id, st, c, current_node_id)

	case len(st.GetGamma()) > 0 && st.CanApplyGammaRule():
		manageGammaRules(father_id, st, c)

	case len(st.GetMetaGen()) > 0 && st.CanReintroduce():
		manageReintroductionRules(father_id, st, c)

	default:
		visualization.WriteExchanges(father_id, st, nil, complextypes.MakeEmptySubstAndForm(), "ApplyRules - SAT")
		st.SetCurrentProofRule("Sat")
		st.SetProof(append(st.GetProof(), st.GetCurrentProof()))
		global.PrintDebug("PS", "Nothing found, return sat")
		sendSubToFather(c, false, false, father_id, st, []complextypes.SubstAndForm{}, current_node_id)
	}
}

/* Manage Rewritte rules - return true if a rewritting rule was applied, false otherwise */
func manageRewritteRules(father_id uint64, st complextypes.State, c Communication, new_atomics basictypes.FormList, current_node_id int) {
	global.PrintDebug("PS", "Try rewritte rule")
	remaining_atomics := new_atomics.Copy()

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
			if global.IsLoaded("dmt") {
				if rewritten, err := dmt.Rewrite(f); err == nil {
					global.PrintDebug("PS", fmt.Sprintf("Try to rewrite into :  %v", complextypes.SubstAndFormListToString(rewritten)))

					// Keep all the possibility of rewritting and choose the first one
					choosen_rewritten := rewritten[0]
					choosen_rewritten_form := choosen_rewritten.GetForm()[0].Copy()
					// cas plusieurs formules : on doit aussi copier rewitten[0] sans la première formule. Ce cas ne peux pas arriver vu le code de DMT
					rewritten = complextypes.CopySubstAndFormList(rewritten[1:])

					st.SetCurrentProofFormula(f)

					// Si on ne s'est pas réécrit en soi-même ?
					if !choosen_rewritten.GetSubst().Equals(treetypes.Failure()) {
						// Create a child with the current rewritting rule and make this process to wait for him, with a list of other subst to try
						st.SetLF(append(remaining_atomics.Copy(), choosen_rewritten_form.Copy()))
						st.SetBTOnFormulas(true) // I need to know that I can bt on form and my child needs to know it to to don't loop

						// Proof
						child_node := global.IncrCptNode()
						st.SetCurrentProofResultFormulas([]proof.IntFormList{proof.MakeIntFormList(child_node, basictypes.MakeSingleElementList(choosen_rewritten_form.Copy()))})
						st.SetCurrentProofRule("Rewrite")
						st.SetCurrentProofRuleName("Rewrite")

						if choosen_rewritten.GetSubst().IsEmpty() {
							choosen_rewritten = complextypes.MakeEmptySubstAndForm()
						}

						st_copy := st.Copy()

						// st_copy.SetSubstsFound(st.GetSubstsFound())
						c_child := Communication{make(chan bool), make(chan Result)}
						go ProofSearch(global.GetGID(), st_copy, c_child, choosen_rewritten, child_node)
						global.PrintDebug("PS", "GO !")
						global.IncrGoRoutine(1)
						waitChildren(father_id, st, c, []Communication{c_child}, []complextypes.SubstAndForm{}, choosen_rewritten, []complextypes.SubstAndForm{}, rewritten, current_node_id)
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
	}

	// Si aucune réécriture n'a été trouvée, on relance une étape "vide"
	st.SetLF(basictypes.MakeEmptyFormList())
	ProofSearch(father_id, st, c, complextypes.MakeEmptySubstAndForm(), current_node_id)
}

/* Manage alpha rules */
func manageAlphaRules(father_id uint64, st complextypes.State, c Communication) {
	global.PrintDebug("PS", "Alpha rule")
	hdf := st.GetAlpha()[0]
	global.PrintDebug("PS", fmt.Sprintf("Rule applied on : %s", hdf.ToString()))
	st.SetAlpha(st.GetAlpha()[1:])
	result_forms := applyAlphaRules(hdf, &st)
	st.SetLF(result_forms)

	// Proof
	st.SetCurrentProofFormula(hdf)
	id_children := global.IncrCptNode()
	st.SetCurrentProofResultFormulas([]proof.IntFormList{proof.MakeIntFormList(id_children, result_forms)})
	st.SetProof(append(st.GetProof(), st.GetCurrentProof()))

	ProofSearch(father_id, st, c, complextypes.MakeEmptySubstAndForm(), id_children)
}

/* Manage delta rules */
func manageDeltaRules(father_id uint64, st complextypes.State, c Communication) {
	global.PrintDebug("PS", "Delta rule")
	hdf := st.GetDelta()[0]
	global.PrintDebug("PS", fmt.Sprintf("Rule applied on : %s", hdf.ToString()))
	st.SetDelta(st.GetDelta()[1:])
	result_forms := applyDeltaRules(hdf, &st)
	st.SetLF(result_forms)

	// Proof
	st.SetCurrentProofFormula(hdf)
	id_children := global.IncrCptNode()
	st.SetCurrentProofResultFormulas([]proof.IntFormList{proof.MakeIntFormList(id_children, result_forms)})

	st.SetProof(append(st.GetProof(), st.GetCurrentProof()))

	ProofSearch(father_id, st, c, complextypes.MakeEmptySubstAndForm(), id_children)
}

/* Manage beta rules */
func manageBetaRules(father_id uint64, st complextypes.State, c Communication, current_node_id int) {
	global.PrintDebug("PS", "Beta rule")
	hdf := st.GetBeta()[0]
	global.PrintDebug("PS", fmt.Sprintf("Rule applied on : %s", hdf.ToString()))
	reslf := applyBetaRules(hdf, &st)

	// Proof
	st.SetCurrentProofFormula(hdf)

	int_form_list_list := []proof.IntFormList{}
	for _, fl := range reslf {
		int_form_list_list = append(int_form_list_list, proof.MakeIntFormList(global.IncrCptNode(), fl))
	}
	st.SetCurrentProofResultFormulas(int_form_list_list)

	// For each child, launch a goroutine, stock its channel, and wait an answer
	var chan_tab []Communication
	for _, fl := range int_form_list_list {
		st_copy := st.Copy()
		st_copy.SetBeta(st.GetBeta()[1:])
		st_copy.SetLF(fl.GetFL())
		if global.IsDestructive() {
			c_child := Communication{make(chan bool), make(chan Result)}
			chan_tab = append(chan_tab, c_child)
			go ProofSearch(global.GetGID(), st_copy, c_child, complextypes.MakeEmptySubstAndForm(), fl.GetI())
		} else {
			go ProofSearch(global.GetGID(), st_copy, c, complextypes.MakeEmptySubstAndForm(), fl.GetI())
		}

		global.IncrGoRoutine(1)
		global.PrintDebug("PS", "GO !")

	}
	if global.IsDestructive() {
		st.SetBTOnFormulas(false)
		waitChildren(father_id, st, c, chan_tab, []complextypes.SubstAndForm{}, complextypes.SubstAndForm{}, []complextypes.SubstAndForm{}, []complextypes.SubstAndForm{}, current_node_id)
	} else {
		global.PrintDebug("PS", "Die")
	}
}

/* Manage gamma rule */
func manageGammaRules(father_id uint64, st complextypes.State, c Communication) {
	global.PrintDebug("PS", "Gamma rule")
	hdf := st.GetGamma()[0]
	global.PrintDebug("PS", fmt.Sprintf("Rule applied on : %s", hdf.ToString()))
	st.SetGamma(st.GetGamma()[1:])

	// Update MetaGen
	index, new_meta_gen := basictypes.GetIndexMetaGenList(hdf, st.GetMetaGen())
	st.SetMetaGen(new_meta_gen)
	new_lf, new_metas := applyGammaRules(hdf, index, &st)
	st.SetLF(new_lf)
	st.SetMC(append(st.GetMC(), new_metas...))
	if global.IsDestructive() {
		st.SetN(st.GetN() - 1)
	}

	// Proof
	st.SetCurrentProofFormula(hdf)
	id_children := global.IncrCptNode()
	st.SetCurrentProofResultFormulas([]proof.IntFormList{proof.MakeIntFormList(id_children, new_lf)})
	st.SetProof(append(st.GetProof(), st.GetCurrentProof()))

	ProofSearch(father_id, st, c, complextypes.MakeEmptySubstAndForm(), id_children)
}

/* Manage reintroduction */
func manageReintroductionRules(father_id uint64, st complextypes.State, c Communication) {
	global.PrintDebug("PS", "Reintroduction")
	new_meta_generator := st.GetMetaGen()
	reslf := basictypes.ReintroduceMeta(&new_meta_generator, -1)
	global.PrintDebug("PS", fmt.Sprintf("Reintroduce the formula : %s", reslf.ToString()))
	st.SetLF(basictypes.MakeSingleElementList(reslf))

	// Update Meta Gen
	st.SetMetaGen(new_meta_generator)

	// Proof
	id_children := global.IncrCptNode()
	st.SetCurrentProofRule("Reintroduction")
	st.SetCurrentProofFormula(reslf)
	st.SetCurrentProofResultFormulas([]proof.IntFormList{proof.MakeIntFormList(id_children, basictypes.MakeSingleElementList(reslf))})
	st.SetProof(append(st.GetProof(), st.GetCurrentProof()))

	ProofSearch(father_id, st, c, complextypes.MakeEmptySubstAndForm(), id_children)
}
