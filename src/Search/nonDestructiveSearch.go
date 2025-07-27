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

package Search

import (
	"fmt"
	"runtime"
	"time"

	"github.com/GoelandProver/Goeland/AST"
	"github.com/GoelandProver/Goeland/Core"
	"github.com/GoelandProver/Goeland/Glob"
	"github.com/GoelandProver/Goeland/Lib"
	"github.com/GoelandProver/Goeland/Unif"
)

type nonDestructiveSearch struct {
}

func NewNonDestructiveSearch() BasicSearchAlgorithm {
	nds := &nonDestructiveSearch{}
	_ = nds
	Glob.PrintError("NDS", "Non-destructive search not in working order for now.")
	return nil
}

func (nds *nonDestructiveSearch) setApplyRules(function func(uint64, State, Communication, Core.FormAndTermsList, int, int, []int)) {
	Glob.PrintError("NDS", "Non-destructive search not compatible with the assisted plugin for now.")
}

func (nds *nonDestructiveSearch) doEndManageBeta(fatherId uint64, state State, c Communication, channels []Communication, currentNodeId int, originalNodeId int, childIds []int, metaToReintroduce []int) {
	debug(Lib.MkLazy(func() string { return "Die" }))
}

func (nds *nonDestructiveSearch) manageRewriteRules(fatherId uint64, state State, c Communication, newAtomics Core.FormAndTermsList, currentNodeId int, originalNodeId int, metaToReintroduce []int) {
	Glob.PrintError("NDS", "Non-destructive search not compatible with the DMT plugin for now.")
}

/* Choose substitution - whitout meta in lastAppliedSubst */
func (nds *nonDestructiveSearch) chooseSubstitutionWithoutMetaLastApplyNonDestructive(sl []Core.SubstAndForm, ml Lib.List[AST.Meta]) (Core.SubstAndForm, []Core.SubstAndForm) {
	for i, v := range sl {
		if !AST.IsIncludeInsideOF(v.GetSubst().GetMeta(), ml) {
			return v, Core.RemoveSubstFromSubstAndFormList(i, sl)
		}
	}
	return Core.MakeEmptySubstAndForm(), sl
}

/* Choose substitution - whith meta in lastAppliedSubst */
func (nds *nonDestructiveSearch) chooseSubstitutionWithtMetaLastApplyNonDestructive(sl []Core.SubstAndForm, last_applied_subst Core.SubstAndForm) (Core.SubstAndForm, []Core.SubstAndForm) {
	for i, v := range sl {
		if !v.GetSubst().Equals(last_applied_subst.GetSubst()) {
			return v, Core.RemoveSubstFromSubstAndFormList(i, sl)
		}
	}
	return Core.MakeEmptySubstAndForm(), sl
}

/* Choose the best substitution among subst_found_at_this_step and subst_found */
func (nds *nonDestructiveSearch) chooseSubstitutionNonDestructive(substs_found_this_step []Core.SubstAndForm, st *State) Core.SubstAndForm {
	res, sl := nds.chooseSubstitutionWithoutMetaLastApplyNonDestructive(substs_found_this_step, st.GetLastAppliedSubst().GetSubst().GetMeta())
	if !res.IsEmpty() { // subst without meta in last applied meta found in substs_found_at_this_step
		st.SetSubstsFound(append(sl, st.GetSubstsFound()...))
		return res
	} else {
		res, sl = nds.chooseSubstitutionWithoutMetaLastApplyNonDestructive(st.GetSubstsFound(), st.GetLastAppliedSubst().GetSubst().GetMeta())
		if !res.IsEmpty() { // subst without meta in last applied meta found in substs_found
			st.SetSubstsFound(append(sl, substs_found_this_step...))
			return res
		} else {
			res, sl = nds.chooseSubstitutionWithtMetaLastApplyNonDestructive(substs_found_this_step, st.GetAppliedSubst())
			if !res.IsEmpty() { // subst with meta in last applied meta found in subst_found_at_this_step
				st.SetSubstsFound(append(sl, st.GetSubstsFound()...))
				return res
			} else {
				res, sl = nds.chooseSubstitutionWithtMetaLastApplyNonDestructive(st.GetSubstsFound(), st.GetAppliedSubst())
				if !res.IsEmpty() { // subst with meta in last applied meta found in substs_found
					st.SetSubstsFound(append(sl, substs_found_this_step...))
					return res
				} else {
					st.SetSubstsFound(append(st.GetSubstsFound(), substs_found_this_step...))
					if len(substs_found_this_step)+len(st.GetSubstsFound()) > 0 {
						return st.GetLastAppliedSubst()
					} else {
						return Core.MakeEmptySubstAndForm()
					}
				}
			}
		}
	}
}

/*  Take a substitution, returns the id of the formula which introduce the metavariable */
func (nds *nonDestructiveSearch) catchFormulaToInstantiate(subst_found Unif.Substitutions) int {
	meta_to_reintroduce := -1
	for _, subst := range subst_found {
		meta, term := subst.Get()
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
func (nds *nonDestructiveSearch) instantiate(fatherId uint64, state *State, c Communication, index int, s Core.SubstAndForm) {
	debug(
		Lib.MkLazy(func() string { return fmt.Sprintf("Instantiate with subst : %v ", s.GetSubst().ToString()) }),
	)
	newMetaGenerator := state.GetMetaGen()
	reslf := Core.ReintroduceMeta(&newMetaGenerator, index, state.GetN())
	state.SetMetaGen(newMetaGenerator)
	debug(
		Lib.MkLazy(func() string { return fmt.Sprintf("Instantiate the formula : %s", reslf.ToString()) }),
	)

	// Apply gamma rule
	newLf, newMetas := ApplyGammaRules(reslf, index, state)
	state.SetLF(newLf)
	newMC := state.GetMC().Copy()
	newMC = newMC.Union(newMetas)
	state.SetMC(newMC)

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

	association_subst := Unif.Substitutions{}

	// Associate new meta with old meta
	for _, new_meta := range newMetas.Elements().GetSlice() {
		found := false
		if !found {
			// La meta nouvellement générée n'apparaît pas dans la substitution
			// Trouver celle de la formula de base
			for _, f := range s.GetForm().Slice() {
				for _, term_formula := range f.GetMetas().Elements().GetSlice() {
					if !found && term_formula.IsMeta() && term_formula.GetName() == new_meta.GetName() {
						association_subst.Set(new_meta, term_formula)
						found = true
					}
				}
			}

		}
		if !found { // Vérifier dans substapplied
			for _, subst := range state.GetAppliedSubst().GetSubst() {
				original_meta, original_term := subst.Get()
				if !found && original_meta.GetName() == new_meta.GetName() && !found {
					association_subst.Set(new_meta, original_term)
					found = true
				}
			}
		}
		if !found {
			debug(
				Lib.MkLazy(func() string {
					return fmt.Sprintf(
						"Error : No matching found for %v in new formula : %v\n",
						new_meta.ToString(),
						s.GetForm().ToString())
				}),
			)
		}
	}

	new_subst, same_key := Unif.MergeSubstitutions(association_subst, state.GetAppliedSubst().GetSubst())
	if same_key {
		Glob.PrintInfo("PS", "Same key in S2 and S1")
	}
	if new_subst.Equals(Unif.Failure()) {
		Glob.PrintError("PS", "MergeSubstitutions return failure")
	}
	new_subst, same_key = Unif.MergeSubstitutions(new_subst, s.GetSubst())
	if same_key {
		Glob.PrintInfo("PS", "Same key in S2 and S1")
	}
	if new_subst.Equals(Unif.Failure()) {
		Glob.PrintError("PS", "MergeSubstitutions return failure")
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

	debug(
		Lib.MkLazy(func() string {
			return fmt.Sprintf(
				"Applied subst: %s",
				state.GetAppliedSubst().GetSubst().ToString())
		}),
	)
	debug(
		Lib.MkLazy(func() string {
			return fmt.Sprintf(
				"Real substitution applied : %s", new_subst.ToString())
		}),
	)

	state.SetLF(Core.ApplySubstitutionsOnFormAndTermsList(new_subst, state.GetLF()))

	ms, same_key := Unif.MergeSubstitutions(state.GetAppliedSubst().GetSubst(), new_subst)
	if same_key {
		Glob.PrintError("PS", "Same key in S2 and S1")
	}
	if ms.Equals(Unif.Failure()) {
		Glob.PrintError("PS", "MergeSubstitutions return failure")
	}
	state.SetAppliedSubst(Core.MakeSubstAndForm(ms, s.GetForm()))
	state.SetLastAppliedSubst(s)
}

/**
* Choose the best subtitution to instantiate : avoid the same than last used, and the one which contains meta already used in last applied
**/

func (nds *nonDestructiveSearch) manageSubstFoundNonDestructive(father_id uint64, st *State, c Communication, substs_found_at_this_step []Core.SubstAndFormAndTerms) (int, Core.SubstAndForm) {
	form_to_instantiate := -1
	choosen_subst := Core.MakeEmptySubstAndForm()
	new_choosen_subst := Core.MakeEmptySubstAndForm()

	// If the chosen subst is the same than the one previously applied, check if it's possible to apply rule instead
	// if new_choosen_subst.GetSubst().GetMeta().HasInCommon(st.GetLastAppliedSubst().GetSubst().GetMeta()) &&
	if st.AreRulesApplicable() {
		return form_to_instantiate, choosen_subst
	}

	// Choose a substitution
	switch len(st.GetSubstsFound()) {
	case 0:
		new_choosen_subst = Core.MakeEmptySubstAndForm()
	case 1:
		new_choosen_subst = st.GetSubstsFound()[0] //chooseSubstitutionNonDestructive(substs_found_at_this_step, st)
		st.SetSubstsFound([]Core.SubstAndForm{})
	default:
		new_choosen_subst = st.GetSubstsFound()[0]
		st.SetSubstsFound(st.GetSubstsFound()[1:])
	}

	choosenSubstMetas := new_choosen_subst.GetSubst().GetMeta()
	debug(Lib.MkLazy(func() string {
		return fmt.Sprintf(
			"Choosen subst : %v - HasInCommon : %v",
			new_choosen_subst.GetSubst().ToString(),
			AST.HasMetaInCommonWith(
				choosenSubstMetas,
				st.GetLastAppliedSubst().GetSubst().GetMeta(),
			),
		)
	}))
	debug(
		Lib.MkLazy(func() string { return fmt.Sprintf("AreRulesApplicable : %v", st.AreRulesApplicable()) }),
	)

	choosen_subst = new_choosen_subst

	// Catch all the meta which can be instantiate
	form_to_instantiate = nds.catchFormulaToInstantiate(choosen_subst.GetSubst())
	debug(
		Lib.MkLazy(func() string { return fmt.Sprintf("Form_to_instantiate : %v", form_to_instantiate) }),
	)

	return form_to_instantiate, choosen_subst
}

/**
* proofSearch
* Search algorithm (Tableaux method)
* n : number of gamma rule available
* st : state, the current search state
* c : channel to send the answer to the father
* s : substitution to apply to the current state
* subst_found : Unif.Substitutions found by this process
**/

//FIXME: Redo the non-destructive search, in particular, this function.
//Both this search and the destructive search should be refactored so the similarities arise in a single struct BasicSearch
/*
func (nds *nonDestructiveSearch) proofSearch(father_id uint64, st State, c Communication, s Core.SubstAndForm, node_id int, original_node_id int, meta_to_reintroduce []int) {

	Glob.PrintDebug("PS", "---------- New search step ----------")
	Glob.PrintDebug("PS", fmt.Sprintf("Child of %v", father_id))

	st.Print()
	Glob.PrintDebug("PS", fmt.Sprintf("Formulae to be added: %v", st.GetLF().ToString()))
	Glob.PrintDebug("PS", "Insert tree, searching contradiction, then dispatch")

	st.SetTreePos(st.GetTreePos().InsertFormulaListToDataStructure(st.GetLF().FilterPred(true)))
	st.SetTreeNeg(st.GetTreeNeg().InsertFormulaListToDataStructure(st.GetLF().FilterPred(false)))

	substs_found_at_this_step := []Core.SubstAndFormAndTerms{}
	closed := false
	for _, f := range st.GetLF() {
		var substs []Unif.Substitutions
		Glob.PrintDebug("PS", fmt.Sprintf("##### Formula %v #####", f.ToString()))
		closed, substs = ApplyClosureRules(f.GetForm(), &st)
		nds.ManageClosureRule(father_id, &st, c, substs, f, -1, -1)

		if closed {
			return
		}

		for _, subst := range substs {
			substs_found_at_this_step = Core.AppendIfNotContainsSubstAndFormAndTerms(substs_found_at_this_step, Core.MakeSubstAndFormAndTerms(subst, Core.MakeSingleElementFormAndTermList(f)))
		}
		st.DispatchForm(f)
	}

	Glob.PrintDebug("PS", fmt.Sprintf("Subst_found before management : %v", Unif.SubstListToString(Core.GetSubstListFromSubstAndFormList(st.GetSubstsFound()))))

	form_to_instantiate, choosen_subst := nds.manageSubstFoundNonDestructive(father_id, &st, c, substs_found_at_this_step)

	Glob.PrintDebug("PS", fmt.Sprintf("Subst_found after management : %v ", Unif.SubstListToString(Core.GetSubstListFromSubstAndFormList(st.GetSubstsFound()))))

	if form_to_instantiate == -1 {
		Glob.PrintDebug("PS", "Let's apply rules !")
		nds.applyRules(father_id, st, c, Core.MakeEmptyFormAndTermsList(), -1, -1, []int{})
	} else {
		Glob.PrintDebug("PS", "Let's instantiate !")
		nds.instantiate(father_id, &st, c, form_to_instantiate, choosen_subst)
		nds.proofSearch(father_id, st, c, Core.MakeEmptySubstAndForm(), -1, -1, []int{})
	}

}
*/

func (ds *nonDestructiveSearch) manageResult(c Communication) (Core.Unifier, []ProofStruct, bool) {
	open := false

	for !open && runtime.NumGoroutine() > 1 {

		// TODO : kill all goroutines if open found
		// Close channel -> broadcast
		res := <-c.getResult()

		open = !res.isClosed()

		time.Sleep(1 * time.Millisecond)

		debug(
			Lib.MkLazy(func() string { return fmt.Sprintf("open is : %v from %v", open, res.getId()) }),
		)
		Glob.PrintInfo("MAIN", fmt.Sprintf("%v goroutines still running - %v goroutines generated", runtime.NumGoroutine(), Glob.GetNbGoroutines()))
	}

	return Core.MakeUnifier(), []ProofStruct{}, !open
}
