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

package search

import (
	"fmt"

	treesearch "github.com/GoelandProver/Goeland/code-trees/tree-search"
	treetypes "github.com/GoelandProver/Goeland/code-trees/tree-types"
	"github.com/GoelandProver/Goeland/global"
	basictypes "github.com/GoelandProver/Goeland/types/basic-types"
	complextypes "github.com/GoelandProver/Goeland/types/complex-types"
)

/* Choose substitution - whitout meta in lastAppliedSubst */
func chooseSubstitutionWithoutMetaLastApplyNonDestructive(sl []complextypes.SubstAndForm, ml basictypes.MetaList) (complextypes.SubstAndForm, []complextypes.SubstAndForm) {
	for i, v := range sl {
		if !v.GetSubst().GetMeta().IsInclude(ml) {
			return v, complextypes.RemoveSubstFromSubstAndFormList(i, sl)
		}
	}
	return complextypes.MakeEmptySubstAndForm(), sl
}

/* Choose substitution - whith meta in lastAppliedSubst */
func chooseSubstitutionWithtMetaLastApplyNonDestructive(sl []complextypes.SubstAndForm, last_applied_subst complextypes.SubstAndForm) (complextypes.SubstAndForm, []complextypes.SubstAndForm) {
	for i, v := range sl {
		if !v.GetSubst().Equals(last_applied_subst.GetSubst()) {
			return v, complextypes.RemoveSubstFromSubstAndFormList(i, sl)
		}
	}
	return complextypes.MakeEmptySubstAndForm(), sl
}

/* Choose the best substitution among subst_found_at_this_step and subst_found */
func chooseSubstitutionNonDestructive(substs_found_this_step []complextypes.SubstAndForm, st *complextypes.State) complextypes.SubstAndForm {
	res, sl := chooseSubstitutionWithoutMetaLastApplyNonDestructive(substs_found_this_step, st.GetLastAppliedSubst().GetSubst().GetMeta())
	if !res.IsEmpty() { // subst without meta in last applied meta found in substs_found_at_this_step
		st.SetSubstsFound(append(sl, st.GetSubstsFound()...))
		return res
	} else {
		res, sl = chooseSubstitutionWithoutMetaLastApplyNonDestructive(st.GetSubstsFound(), st.GetLastAppliedSubst().GetSubst().GetMeta())
		if !res.IsEmpty() { // subst without meta in last applied meta found in substs_found
			st.SetSubstsFound(append(sl, substs_found_this_step...))
			return res
		} else {
			res, sl = chooseSubstitutionWithtMetaLastApplyNonDestructive(substs_found_this_step, st.GetAppliedSubst())
			if !res.IsEmpty() { // subst with meta in last applied meta found in subst_found_at_this_step
				st.SetSubstsFound(append(sl, st.GetSubstsFound()...))
				return res
			} else {
				res, sl = chooseSubstitutionWithtMetaLastApplyNonDestructive(st.GetSubstsFound(), st.GetAppliedSubst())
				if !res.IsEmpty() { // subst with meta in last applied meta found in substs_found
					st.SetSubstsFound(append(sl, substs_found_this_step...))
					return res
				} else {
					st.SetSubstsFound(append(st.GetSubstsFound(), substs_found_this_step...))
					if len(substs_found_this_step)+len(st.GetSubstsFound()) > 0 {
						return st.GetLastAppliedSubst()
					} else {
						return complextypes.MakeEmptySubstAndForm()
					}
				}
			}
		}
	}
}

/*  Take a substitution, returns the id of the formula which introduce the metavariable */
func catchFormulaToInstantiate(subst_found treetypes.Substitutions) int {
	meta_to_reintroduce := -1
	for meta, term := range subst_found {
		if meta.GetFormula() < meta_to_reintroduce || meta_to_reintroduce == -1 {
			meta_to_reintroduce = meta.GetFormula()
		}
		if term.IsMeta() {
			if term.ToMeta().GetFormula() < meta_to_reintroduce || meta_to_reintroduce == -1 {
				meta_to_reintroduce = term.ToMeta().GetFormula()
			}
		}
	}
	return meta_to_reintroduce
}

/** Instantiate a formula with a substitution
* Got the substitution (X, a) and reintroduce ForAll x P(x) -> need to reintroduce P(a). Remplace immediatly the new generated metavariable by a.
**/
func instantiate(father_id uint64, st *complextypes.State, c Communication, index int, s complextypes.SubstAndForm) {
	global.PrintDebug("PS", fmt.Sprintf("Instantiate with subst : %v ", s.GetSubst().ToString()))
	new_meta_generator := st.GetMetaGen()
	reslf := basictypes.ReintroduceMeta(&new_meta_generator, index)
	st.SetMetaGen(new_meta_generator)
	global.PrintDebug("PS", fmt.Sprintf("Instantiate the formula : %s", reslf.ToString()))

	// Apply gamma rule
	new_lf, new_metas := applyGammaRules(reslf, index, st)
	st.SetLF(new_lf)
	st.SetMC(append(st.GetMC(), new_metas...))

	// I got a substitution {(X_0, a)}
	// Pour tout X, Y, ... Pour tout x : P(x, y, x) -> Impossible d'avoir 2 x différents avec le même nom
	// Donc check name devrait suffir
	// A original form P(X_0,Y_0, X_0) and P(a, Y_0, a)
	// A new form : P(X_2, Y_2, X_2)

	// NOW : replace it !
	// Search in new_metas the metas with same name than meta in subst
	// Then create the substitution and apply it

	// For each meta in new_metas
	// If ths meta has an affectation in subst, give it
	// Else, give the previous meta

	association_subst := treetypes.Substitutions{}

	// Associate new meta with old meta
	for _, new_meta := range new_metas {
		found := false
		if !found {
			// La meta nouvellement générée n'apparaît pas dans la substitution
			// Trouver celle de la formula de base
			for _, f := range s.GetForm() {
				for _, term_formula := range f.GetMetas() {
					if !found && term_formula.IsMeta() && term_formula.GetName() == new_meta.GetName() {
						association_subst[new_meta] = term_formula
						found = true
					}
				}
			}

		}
		if !found { // Vérifier dans substapplied
			for original_meta, original_term := range st.GetAppliedSubst().GetSubst() {
				if !found && original_meta.GetName() == new_meta.GetName() && !found {
					association_subst[new_meta] = original_term
					found = true
				}
			}
		}
		if !found {
			global.PrintDebug("PS", fmt.Sprintf("Error : No matching found for %v in new formula : %v\n", new_meta.ToString(), s.GetForm().ToString()))
		}
	}

	new_subst, same_key := treesearch.MergeSubstitutions(association_subst, st.GetAppliedSubst().GetSubst())
	if same_key {
		fmt.Printf("Same key in S2 and S1")
	}
	if new_subst.Equals(treetypes.Failure()) {
		println("[PS] Error : MergeSubstitutions return failure")
	}
	new_subst, same_key = treesearch.MergeSubstitutions(new_subst, s.GetSubst())
	if same_key {
		fmt.Printf("Same key in S2 and S1")
	}
	if new_subst.Equals(treetypes.Failure()) {
		println("[PS] Error : MergeSubstitutions return failure")
	}

	// Then associate with the substitution (if possible)
	// for _, new_meta := range new_metas {
	// 	found := false
	// 	for original_meta, original_term := range s.GetSubst() {
	// 		if !found && original_meta.GetName() == new_meta.GetName() && !found {
	// 			new_subst[new_meta] = original_term
	// 			found = true
	// 		} else { // Test inverse pour le cas meta/meta
	// 			if !found && original_term.IsMeta() && original_term.GetName() == new_meta.GetName() && !found {
	// 				new_subst[new_meta] = original_term
	// 				found = true
	// 			}
	// 		}
	// 	}
	// }

	global.PrintDebug("PS", fmt.Sprintf("Applied subst: %s", st.GetAppliedSubst().GetSubst().ToString()))
	global.PrintDebug("PS", fmt.Sprintf("Real substitution applied : %s", new_subst.ToString()))

	st.SetLF(complextypes.ApplySubstitutionsOnFormulaList(new_subst, st.GetLF()))

	ms, same_key := treesearch.MergeSubstitutions(st.GetAppliedSubst().GetSubst(), new_subst)
	if same_key {
		fmt.Printf("Same key in S2 and S1")
	}
	if ms.Equals(treetypes.Failure()) {
		println("[MS] Error : MergeSubstitutions return failure")
	}
	st.SetAppliedSubst(complextypes.MakeSubstAndForm(ms, s.GetForm()))
	st.SetLastAppliedSubst(s)
}

/**
* Choose the best subtitution to instantiate : avoid the same than last used, and the one which contains meta already used in last applied
**/

func manageSubstFoundNonDestructive(father_id uint64, st *complextypes.State, c Communication, substs_found_at_this_step []complextypes.SubstAndForm) (int, complextypes.SubstAndForm) {
	form_to_instantiate := -1
	choosen_subst := complextypes.MakeEmptySubstAndForm()
	new_choosen_subst := complextypes.MakeEmptySubstAndForm()

	// If the chosen subst is the same than the one previously applied, check if it's possible to apply rule instead
	// if new_choosen_subst.GetSubst().GetMeta().HasInCommon(st.GetLastAppliedSubst().GetSubst().GetMeta()) &&
	if st.AreRulesApplicable() {
		return form_to_instantiate, choosen_subst
	}

	// Choose a substitution
	switch len(st.GetSubstsFound()) {
	case 0:
		new_choosen_subst = complextypes.MakeEmptySubstAndForm()
	case 1:
		new_choosen_subst = st.GetSubstsFound()[0] //chooseSubstitutionNonDestructive(substs_found_at_this_step, st)
		st.SetSubstsFound([]complextypes.SubstAndForm{})
	default:
		new_choosen_subst = st.GetSubstsFound()[0]
		st.SetSubstsFound(st.GetSubstsFound()[1:])
	}

	global.PrintDebug("PS", fmt.Sprintf("Choosen subst : %v - HasInCommon : %v", new_choosen_subst.GetSubst().ToString(), new_choosen_subst.GetSubst().GetMeta().HasInCommon(st.GetLastAppliedSubst().GetSubst().GetMeta())))
	global.PrintDebug("PS", fmt.Sprintf("AreRulesApplicable : %v", st.AreRulesApplicable()))

	choosen_subst = new_choosen_subst

	// Catch all the meta which can be instantiate
	form_to_instantiate = catchFormulaToInstantiate(choosen_subst.GetSubst())
	global.PrintDebug("PS", fmt.Sprintf("Form_to_instantiate : %v", form_to_instantiate))

	return form_to_instantiate, choosen_subst
}

/**
* ProofSearchNonDestructive
* Search algorithm (Tableaux method)
* n : number of gamma rule available
* st : state, the current search state
* c : channel to send the answer to the father
* s : substitution to apply to the current state
* subst_found : treetypes.Substitutions found by this process
**/
func proofSearchNonDestructive(father_id uint64, st complextypes.State, c Communication) {

	global.PrintDebug("PS", "---------- New search step ----------")
	global.PrintDebug("PS", fmt.Sprintf("Child of %v", father_id))

	st.Print()
	global.PrintDebug("PS", fmt.Sprintf("Formulae to be added: %v", st.GetLF().ToString()))
	global.PrintDebug("PS", "Insert tree, searching contradiction, then dispatch")

	st.SetTreePos(st.GetTreePos().InsertFormulaListToDataStructure(st.GetLF().FilterPred(true)))
	st.SetTreeNeg(st.GetTreeNeg().InsertFormulaListToDataStructure(st.GetLF().FilterPred(false)))

	substs_found_at_this_step := []complextypes.SubstAndForm{}
	closed := false
	for _, f := range st.GetLF() {
		var substs []treetypes.Substitutions
		global.PrintDebug("PS", fmt.Sprintf("##### Formula %v #####", f.ToString()))
		closed, substs = applyClosureRules(f.Copy(), &st)
		closed = manageClosureRule(father_id, &st, c, closed, substs, f, -1)

		if closed {
			return
		}

		for _, subst := range substs {
			substs_found_at_this_step = complextypes.AppendIfNotContainsSubstAndForm(substs_found_at_this_step, complextypes.MakeSubstAndForm(subst, basictypes.MakeSingleElementList(f)))
		}
		st.DispatchForm(f)
	}

	global.PrintDebug("PS", fmt.Sprintf("Subst_found before management : %v", treetypes.SubstListToString(complextypes.GetSubstListFromSubstAndFormList(st.GetSubstsFound()))))

	form_to_instantiate, choosen_subst := manageSubstFoundNonDestructive(father_id, &st, c, substs_found_at_this_step)

	global.PrintDebug("PS", fmt.Sprintf("Subst_found after management : %v ", treetypes.SubstListToString(complextypes.GetSubstListFromSubstAndFormList(st.GetSubstsFound()))))

	if form_to_instantiate == -1 {
		global.PrintDebug("PS", "Let's apply rules !")
		applyRules(father_id, st, c, basictypes.MakeEmptyFormList(), -1)
	} else {
		global.PrintDebug("PS", "Let's instantiate !")
		instantiate(father_id, &st, c, form_to_instantiate, choosen_subst)
		ProofSearch(father_id, st, c, complextypes.MakeEmptySubstAndForm(), -1)
	}

}
