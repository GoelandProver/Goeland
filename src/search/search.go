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
	"sort"

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
func ProofSearch(father_id uint64, st complextypes.State, c Communication, s complextypes.SubstAndForm, node_id int, original_node_id int, meta_to_reintroduce []int) {
	if global.IsDestructive() {
		proofSearchDestructive(father_id, st, c, s, node_id, original_node_id, meta_to_reintroduce)
	} else {
		proofSearchNonDestructive(father_id, st, c)
	}
}

func retrieveMetaFromSubst(s treetypes.Substitutions) []int {
	res := []int{}
	for _, s_element := range s {
		res = global.AppendIfNotContainsInt(res, s_element.Key().GetFormula())
	}
	return res
}

/**
* clos_res and subst are the result of applyClosureRule.
* Manage this result, dispatch the subst and recreate data strcutures.
* Return if the branch is closed without variable from its father
**/
func manageClosureRule(father_id uint64, st *complextypes.State, c Communication, substs []treetypes.Substitutions, f basictypes.FormAndTerms, node_id int, original_node_id int) {

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
		st.SetCurrentProofResultFormulas([]proof.IntFormAndTermsList{})
		st.SetProof(append(st.GetProof(), st.GetCurrentProof()))

		sendSubToFather(c, true, false, global.GetGID(), *st, []complextypes.SubstAndForm{}, node_id, original_node_id, []int{})

	case len(substs_without_mm) > 0:
		global.PrintDebug("MCR", fmt.Sprintf("Contradiction found (without mm) : %v", treetypes.SubstListToString(substs_without_mm)))
		st.SetSubstsFound([]complextypes.SubstAndForm{st.GetAppliedSubst()})

		// Proof
		st.SetCurrentProofRule(fmt.Sprintf("⊙ / %v", substs_without_mm[0].ToString()))
		st.SetCurrentProofRuleName("CLOSURE")
		st.SetCurrentProofFormula(f.Copy())
		st.SetCurrentProofNodeId(node_id)
		st.SetCurrentProofResultFormulas([]proof.IntFormAndTermsList{})
		st.SetProof(complextypes.ApplySubstitutionOnProofList(substs_without_mm[0], append(st.GetProof(), st.GetCurrentProof())))

		sendSubToFather(c, true, false, global.GetGID(), *st, []complextypes.SubstAndForm{}, node_id, original_node_id, []int{})

	case len(substs_with_mm) > 0:
		global.PrintDebug("MCR", "Contradiction found (with mm) !")

		// TODO : REMOVE vu qu fait dans wait father ?
		st.SetCurrentProofRule("⊙")
		st.SetCurrentProofRuleName("CLOSURE")
		st.SetCurrentProofFormula(f.Copy())
		st.SetCurrentProofNodeId(node_id)
		st.SetCurrentProofResultFormulas([]proof.IntFormAndTermsList{})
		st.SetProof(append(st.GetProof(), st.GetCurrentProof()))
		meta_to_reintroduce := []int{}

		for _, subst_for_father := range substs_with_mm {

			// Check if subst_for_father is failure
			if subst_for_father.Equals(treetypes.Failure()) {
				global.PrintDebug("MCR", fmt.Sprintf("Error : SubstForFather is failure between : %v and %v \n", subst_for_father.ToString(), st.GetAppliedSubst().ToString()))
				fmt.Printf("[MCR] Error : SubstForFather is failure between : %v and %v \n", subst_for_father.ToString(), st.GetAppliedSubst().GetSubst().ToString())
			}

			global.PrintDebug("MCR", fmt.Sprintf("Formula = : %v", f.ToString()))

			// Create substAndForm with the current form and the subst found
			subst_and_form_for_father := complextypes.MakeSubstAndForm(subst_for_father, basictypes.MakeSingleElementList(f.GetForm()))

			global.PrintDebug("MCR", fmt.Sprintf("SubstAndForm created : %v", subst_and_form_for_father.ToString()))

			// Merge with applied subst (if any)
			subst_and_form_for_father = complextypes.MergeSubstAndForm(subst_and_form_for_father.Copy(), st.GetAppliedSubst())

			st.SetSubstsFound(complextypes.AppendIfNotContainsSubstAndForm(st.GetSubstsFound(), subst_and_form_for_father))
			meta_to_reintroduce = global.UnionIntList(meta_to_reintroduce, retrieveMetaFromSubst(subst_for_father))
		}

		global.PrintDebug("MCR", fmt.Sprintf("Subst found now : %v", complextypes.SubstAndFormListToString(st.GetSubstsFound())))
		global.PrintDebug("MCR", fmt.Sprintf("Send subst(s) with mm to father : %v", treetypes.SubstListToString(complextypes.GetSubstListFromSubstAndFormList(st.GetSubstsFound()))))
		sort.Ints(meta_to_reintroduce)
		sendSubToFather(c, true, true, global.GetGID(), *st, []complextypes.SubstAndForm{}, node_id, original_node_id, meta_to_reintroduce)
	}
}

/* Apply rules with priority (closure < rewritte < alpha < delta < closure with mm < beta < gamma) */
func applyRules(father_id uint64, st complextypes.State, c Communication, new_atomics basictypes.FormAndTermsList, current_node_id int, original_node_id int, meta_to_reintroduce []int) {
	global.PrintDebug("AR", "ApplyRule")
	switch {
	case len(meta_to_reintroduce) > 0:
		manageReintroductionRules(father_id, st, c, original_node_id, meta_to_reintroduce, new_atomics, current_node_id, false)

	case len(new_atomics) > 0 && global.IsLoaded("dmt") && len(st.GetSubstsFound()) == 0:
		manageRewritteRules(father_id, st, c, new_atomics, current_node_id, original_node_id, meta_to_reintroduce)

	case len(st.GetAlpha()) > 0:
		manageAlphaRules(father_id, st, c, original_node_id)

	case len(st.GetDelta()) > 0:
		manageDeltaRules(father_id, st, c, original_node_id)

	case len(st.GetBeta()) > 0:
		manageBetaRules(father_id, st, c, current_node_id, original_node_id, meta_to_reintroduce)

	case len(st.GetGamma()) > 0 && st.CanApplyGammaRule():
		manageGammaRules(father_id, st, c, original_node_id)

	case len(st.GetMetaGen()) > 0 && st.CanReintroduce():
		manageReintroductionRules(father_id, st, c, original_node_id, meta_to_reintroduce, new_atomics, current_node_id, true)

	default:
		visualization.WriteExchanges(father_id, st, nil, complextypes.MakeEmptySubstAndForm(), "ApplyRules - SAT")
		st.SetCurrentProofRule("Sat")
		st.SetProof(append(st.GetProof(), st.GetCurrentProof()))
		global.PrintDebug("PS", "Nothing found, return sat")
		sendSubToFather(c, false, false, father_id, st, []complextypes.SubstAndForm{}, current_node_id, original_node_id, []int{})
	}
}

/* Manage Rewritte rules - return true if a rewritting rule was applied, false otherwise */
func manageRewritteRules(father_id uint64, st complextypes.State, c Communication, new_atomics basictypes.FormAndTermsList, current_node_id int, original_node_id int, meta_to_reintroduce []int) {
	global.PrintDebug("PS", "Try rewritte rule")
	global.PrintDebug("PS - MRR", fmt.Sprintf("Id : %v, original node id :%v", current_node_id, original_node_id))
	remaining_atomics := new_atomics.Copy()

	// For each atomic
	for len(remaining_atomics) > 0 {
		global.PrintDebug("PS", "Remaining atomic > 0")

		// On prend le premier élément de le liste des atomics
		f := remaining_atomics[0].Copy()
		remaining_atomics = remaining_atomics[1:].Copy()
		global.PrintDebug("PS", fmt.Sprintf("Choose : %v", f.ToString()))
		global.PrintDebug("PS", fmt.Sprintf("Remaining_atomics %v", remaining_atomics.ToString()))

		// Si f est dans atomic, ça veut dire qu'on a pas pu réécrire, donc inutile de vérifier
		if !st.GetAtomic().Contains(f) {
			if global.IsLoaded("dmt") {
				if rewritten, err := dmt.Rewrite(f.GetForm()); err == nil {
					global.PrintDebug("PS", fmt.Sprintf("Try to rewrite into :  %v", complextypes.IntSubstAndFormListToString(rewritten)))

					new_rewritten := []complextypes.IntSubstAndFormAndTerms{}
					for _, isaf := range rewritten {
						new_form_and_term_list := basictypes.MakeEmptyFormAndTermsList()
						for _, isaf_f := range isaf.GetSaf().GetForm() {
							new_form_and_term_list = append(new_form_and_term_list, basictypes.MakeFormAndTerm(isaf_f, f.GetTerms()))
						}

						new_rewritten = append(new_rewritten, complextypes.MakeIntSubstAndFormAndTerms(isaf.GetId_rewrite(), complextypes.MakeSubstAndFormAndTerms(isaf.GetSaf().GetSubst(), new_form_and_term_list)))
					}

					// Keep all the possibility of rewritting and choose the first one
					choosen_rewritten := new_rewritten[0]
					choosen_rewritten_form := choosen_rewritten.GetSaf().GetForm()[0].Copy()
					// cas plusieurs formules : on doit aussi copier rewitten[0] sans la première formule. Ce cas ne peux pas arriver vu le code de DMT
					new_rewritten = complextypes.CopyIntSubstAndFormAndTermsList(new_rewritten[1:])

					// Si on ne s'est pas réécrit en soi-même ?
					if !choosen_rewritten.GetSaf().GetSubst().Equals(treetypes.Failure()) {
						// Create a child with the current rewritting rule and make this process to wait for him, with a list of other subst to try
						st.SetLF(append(remaining_atomics.Copy(), choosen_rewritten_form.Copy()))
						st.SetBTOnFormulas(true) // I need to know that I can bt on form and my child needs to know it to to don't loop

						// Proof
						st.SetCurrentProofFormula(f)
						child_node := global.IncrCptNode()
						st.SetCurrentProofResultFormulas([]proof.IntFormAndTermsList{proof.MakeIntFormAndTermsList(child_node, basictypes.MakeSingleElementFormAndTermList(choosen_rewritten_form.Copy()))})
						st.SetCurrentProofRule("Rewrite")
						st.SetCurrentProofRuleName("Rewrite")
						st.SetCurrentProofIdDMT(choosen_rewritten.GetId_rewrite())

						if choosen_rewritten.GetSaf().GetSubst().IsEmpty() {
							choosen_rewritten = complextypes.MakeEmptyIntSubstAndFormAndTerms()
						}

						st_copy := st.Copy()
						st_copy.SetBTOnFormulas(false)

						// st_copy.SetSubstsFound(st.GetSubstsFound())
						c_child := Communication{make(chan bool), make(chan Result)}
						go ProofSearch(global.GetGID(), st_copy, c_child, choosen_rewritten.GetSaf().ToSubstAndForm(), child_node, child_node, []int{})
						global.PrintDebug("PS", "GO !")
						global.IncrGoRoutine(1)
						waitChildren(father_id, st, c, []Communication{c_child}, []complextypes.SubstAndForm{}, choosen_rewritten.GetSaf().ToSubstAndForm(), []complextypes.SubstAndForm{}, new_rewritten, current_node_id, original_node_id, false, []int{child_node}, meta_to_reintroduce)
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
	st.SetLF(basictypes.MakeEmptyFormAndTermsList())
	ProofSearch(father_id, st, c, complextypes.MakeEmptySubstAndForm(), current_node_id, original_node_id, []int{})
}

/* Manage alpha rules */
func manageAlphaRules(father_id uint64, st complextypes.State, c Communication, original_node_id int) {
	global.PrintDebug("PS", "Alpha rule")
	hdf := st.GetAlpha()[0]
	global.PrintDebug("PS", fmt.Sprintf("Rule applied on : %s", hdf.ToString()))
	st.SetAlpha(st.GetAlpha()[1:])
	result_forms := applyAlphaRules(hdf, &st)
	st.SetLF(result_forms)

	// Proof
	st.SetCurrentProofFormula(hdf)
	id_children := global.IncrCptNode()
	st.SetCurrentProofResultFormulas([]proof.IntFormAndTermsList{proof.MakeIntFormAndTermsList(id_children, result_forms)})
	st.SetProof(append(st.GetProof(), st.GetCurrentProof()))

	ProofSearch(father_id, st, c, complextypes.MakeEmptySubstAndForm(), id_children, original_node_id, []int{})
}

/* Manage delta rules */
func manageDeltaRules(father_id uint64, st complextypes.State, c Communication, original_node_id int) {
	global.PrintDebug("PS", "Delta rule")
	hdf := st.GetDelta()[0]
	global.PrintDebug("PS", fmt.Sprintf("Rule applied on : %s", hdf.ToString()))
	st.SetDelta(st.GetDelta()[1:])
	result_forms := applyDeltaRules(hdf, &st)
	st.SetLF(result_forms)

	// Proof
	st.SetCurrentProofFormula(hdf)
	id_children := global.IncrCptNode()
	st.SetCurrentProofResultFormulas([]proof.IntFormAndTermsList{proof.MakeIntFormAndTermsList(id_children, result_forms)})

	st.SetProof(append(st.GetProof(), st.GetCurrentProof()))

	ProofSearch(father_id, st, c, complextypes.MakeEmptySubstAndForm(), id_children, original_node_id, []int{})
}

/* Manage beta rules */
func manageBetaRules(father_id uint64, st complextypes.State, c Communication, current_node_id int, original_node_id int, meta_to_reintroduce []int) {
	global.PrintDebug("PS", "Beta rule")
	hdf := st.GetBeta()[0]
	global.PrintDebug("PS", fmt.Sprintf("Rule applied on : %s", hdf.ToString()))
	reslf := applyBetaRules(hdf, &st)
	child_id_list := []int{}

	// Proof
	st.SetCurrentProofFormula(hdf)

	int_form_list_list := []proof.IntFormAndTermsList{}
	for _, fl := range reslf {
		int_form_list_list = append(int_form_list_list, proof.MakeIntFormAndTermsList(global.IncrCptNode(), fl))
	}
	st.SetCurrentProofResultFormulas(int_form_list_list)
	st.SetBTOnFormulas(false)

	// For each child, launch a goroutine, stock its channel, and wait an answer
	var chan_tab []Communication
	for _, fl := range int_form_list_list {
		st_copy := st.Copy()
		st_copy.SetBeta(st.GetBeta()[1:])
		st_copy.SetLF(fl.GetFL())
		child_id_list = append(child_id_list, fl.GetI())
		if global.IsDestructive() {
			c_child := Communication{make(chan bool), make(chan Result)}
			chan_tab = append(chan_tab, c_child)
			go ProofSearch(global.GetGID(), st_copy, c_child, complextypes.MakeEmptySubstAndForm(), fl.GetI(), fl.GetI(), []int{})
		} else {
			go ProofSearch(global.GetGID(), st_copy, c, complextypes.MakeEmptySubstAndForm(), fl.GetI(), fl.GetI(), []int{})
		}

		global.IncrGoRoutine(1)
		global.PrintDebug("PS", fmt.Sprintf("GO %v !", fl.GetI()))

	}
	if global.IsDestructive() {
		waitChildren(father_id, st, c, chan_tab, []complextypes.SubstAndForm{}, complextypes.SubstAndForm{}, []complextypes.SubstAndForm{}, []complextypes.IntSubstAndFormAndTerms{}, current_node_id, original_node_id, false, child_id_list, meta_to_reintroduce)
	} else {
		global.PrintDebug("PS", "Die")
	}
}

/* Manage gamma rule */
func manageGammaRules(father_id uint64, st complextypes.State, c Communication, original_node_id int) {
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
	// if global.IsDestructive() {
	// 	st.SetN(st.GetN() - 1)
	// }

	// Proof
	st.SetCurrentProofFormula(hdf)
	id_children := global.IncrCptNode()
	st.SetCurrentProofResultFormulas([]proof.IntFormAndTermsList{proof.MakeIntFormAndTermsList(id_children, new_lf)})
	st.SetProof(append(st.GetProof(), st.GetCurrentProof()))

	ProofSearch(father_id, st, c, complextypes.MakeEmptySubstAndForm(), id_children, original_node_id, []int{})
}

/* Manage reintroduction */
func manageReintroductionRules(father_id uint64, st complextypes.State, c Communication, original_node_id int, meta_to_reintroduce []int, new_atomics basictypes.FormAndTermsList, current_node_id int, reintroducue_anyway bool) {

	current_meta_to_reintroduce := -1
	i := 0

	for current_meta_to_reintroduce == -1 && i < len(new_atomics) {
		if st.GetMetaGen()[i].GetCounter() <= st.GetN() {
			current_meta_to_reintroduce = i
		}

		if len(meta_to_reintroduce) > 1 {
			meta_to_reintroduce = meta_to_reintroduce[1:]
		} else {
			meta_to_reintroduce = []int{}
		}

		i++
	}

	if current_meta_to_reintroduce == -1 && !reintroducue_anyway {
		applyRules(father_id, st, c, new_atomics, current_node_id, original_node_id, []int{})
	}

	global.PrintDebug("PS", "Reintroduction")
	global.PrintDebug("PS", fmt.Sprintf("Meta to reintroduce : %s", global.IntListToString(meta_to_reintroduce)))
	new_meta_generator := st.GetMetaGen()
	reslf := basictypes.ReintroduceMeta(&new_meta_generator, current_meta_to_reintroduce, st.GetN())
	global.PrintDebug("PS", fmt.Sprintf("Reintroduce the formula : %s", reslf.ToString()))
	st.SetLF(basictypes.MakeSingleElementFormAndTermList(reslf))

	// Update Meta Gen
	st.SetMetaGen(new_meta_generator)

	// Proof
	id_children := global.IncrCptNode()
	st.SetCurrentProofRule("Reintroduction")
	st.SetCurrentProofRuleName("Reintroduction")
	st.SetCurrentProofFormula(reslf)
	st.SetCurrentProofResultFormulas([]proof.IntFormAndTermsList{proof.MakeIntFormAndTermsList(id_children, basictypes.MakeSingleElementFormAndTermList(reslf))})
	st.SetProof(append(st.GetProof(), st.GetCurrentProof()))

	ProofSearch(father_id, st, c, complextypes.MakeEmptySubstAndForm(), id_children, original_node_id, meta_to_reintroduce)
}
