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

package search

import (
	"fmt"
	"math/rand"
	"reflect"
	"runtime"
	"sort"

	treesearch "github.com/GoelandProver/Goeland/code-trees/tree-search"
	treetypes "github.com/GoelandProver/Goeland/code-trees/tree-types"
	"github.com/GoelandProver/Goeland/global"
	"github.com/GoelandProver/Goeland/modules/dmt"
	basictypes "github.com/GoelandProver/Goeland/types/basic-types"
	complextypes "github.com/GoelandProver/Goeland/types/complex-types"
	visualization "github.com/GoelandProver/Goeland/visualization_exchanges"
	proof "github.com/GoelandProver/Goeland/visualization_proof"
)

const (
	ERROR           = -1
	CLOSE_BY_ITSELF = iota
	SUBST_FOR_PARENT
	SUBST_FOR_CHILDREN
	QUIT
	WAIT
	OPENED
)

type BasicSearchAlgorithm interface {
	SearchAlgorithm
	ProofSearch(uint64, complextypes.State, Communication, complextypes.SubstAndForm, int, int, []int)
	DoEndManageBeta(uint64, complextypes.State, Communication, []Communication, int, int, []int, []int)
	manageRewriteRules(uint64, complextypes.State, Communication, basictypes.FormAndTermsList, int, int, []int)
	ManageClosureRule(uint64, *complextypes.State, Communication, []treetypes.Substitutions, basictypes.FormAndTerms, int, int) (bool, []complextypes.SubstAndForm)
	manageResult(c Communication) (complextypes.Unifier, []proof.ProofStruct, bool)
}

type destructiveSearch struct {
	doCorrectApplyRules func(uint64, complextypes.State, Communication, basictypes.FormAndTermsList, int, int, []int)
}

func NewDestructiveSearch() BasicSearchAlgorithm {
	ds := &destructiveSearch{}
	ds.doCorrectApplyRules = ds.applyRules
	return ds
}

func (ds *destructiveSearch) SetApplyRules(function func(uint64, complextypes.State, Communication, basictypes.FormAndTermsList, int, int, []int)) {
	ds.doCorrectApplyRules = function
}
func (ds *destructiveSearch) Search(formula basictypes.Form, bound int) bool {
	res := false
	global.SetNbStep(1)
	limit := bound

	for ok := true; ok; ok = (!res && bound > 0 && !global.IsOneStep()) {
		res, limit = ds.doOneStep(limit, formula)
	}

	return res
}

func (ds *destructiveSearch) doOneStep(limit int, formula basictypes.Form) (bool, int) {
	basictypes.ResetMeta()
	// proof.ResetProofFile()
	visualization.ResetExchangesFile()

	global.PrintInfo("MAIN", fmt.Sprintf("nb_step : %v - limit : %v", global.GetNbStep(), limit))

	tp := treesearch.NewNode()
	tn := treesearch.NewNode()

	state := complextypes.MakeState(limit, tp, tn, formula)
	state.SetCurrentProofNodeId(0)

	global.PrintInfo("MAIN", fmt.Sprintf("Launch Gotab with destructive = %v", global.IsDestructive()))

	global.SetNbGoroutines(0)
	state.SetLF(basictypes.MakeSingleElementFormAndTermList(basictypes.MakeFormAndTerm(formula, basictypes.NewTermList())))
	c := MakeCommunication(make(chan bool), make(chan Result))

	if global.GetExchanges() {
		visualization.WriteExchanges(global.GetGID(), state, []complextypes.SubstAndForm{}, complextypes.MakeEmptySubstAndForm(), "Search")
	}

	nodeId := global.IncrCptNode()
	go ds.ProofSearch(global.GetGID(), state, c, complextypes.MakeEmptySubstAndForm(), nodeId, nodeId, []int{})
	global.IncrGoRoutine(1)

	global.PrintDebug("MAIN", "GO")

	global.PrintDebug("MAIN", fmt.Sprintf("Nb of goroutines = %d", global.GetNbGoroutines()))
	global.PrintDebug("MAIN", fmt.Sprintf("%v goroutines still running", runtime.NumGoroutine()))

	unifier, finalProof, result := ds.manageResult(c)

	if result {
		if unif := unifier.GetUnifier(); !unif.IsEmpty() {
			finalProof = complextypes.ApplySubstitutionOnProofList(unif, finalProof)
		}
		uninstanciatedMeta := proof.RetrieveUninstantiatedMetaFromProof(finalProof)
		PrintProof(finalProof, uninstanciatedMeta)
	}

	global.SetNbStep(global.GetNbStep() + 1)
	return result, 2 * limit
}

/* Choose a substitution (backtrack) */
func (ds *destructiveSearch) tryBTSubstitution(spc *([]complextypes.SubstAndForm), mm *basictypes.MetaList, children []Communication) complextypes.SubstAndForm {
	global.PrintDebug("TBTS", "Try another substitution.")
	next_subst, new_spc := ds.chooseSubstitutionDestructive(complextypes.CopySubstAndFormList(*spc), mm)
	global.PrintDebug("TBTS", fmt.Sprintf("Choose the substitution : %v and send it to children", next_subst.ToString()))
	sendSubToChildren(children, next_subst)
	*spc = new_spc
	return next_subst
}

/* Choose a substitution among all the subst send by children - takes thoses who contains no mm first */
func (ds *destructiveSearch) chooseSubstitutionDestructive(subst_list []complextypes.SubstAndForm, mm *basictypes.MetaList) (complextypes.SubstAndForm, []complextypes.SubstAndForm) {
	subst_found := subst_list[0]
	found := false
	i := 0
	saved_i := 0

	// Choix de la subst - celle qui ne contient pas de MM, ou la première
	for i < len(subst_list)-1 && !found {
		if !complextypes.ContainsMetaMother((subst_list)[i].GetSubst(), mm) {
			subst_found = subst_list[i]
			saved_i = i
			found = true
		}
		i++
	}

	if !found { // Choose random if not found
		saved_i = rand.Intn(len(subst_list))
		subst_found = subst_list[saved_i].Copy()
	} else {
		subst_found = subst_found.Copy()
	}

	// Maj subst_list avec les subst restantes pour le BT
	if len(subst_list) > 1 {
		subst_list[saved_i] = subst_list[len(subst_list)-1]
		subst_list = subst_list[:len(subst_list)-1]
	} else {
		subst_list = []complextypes.SubstAndForm{}
	}

	return subst_found, subst_list
}

/**
* ProofSearch
* Search algorithm (Tableaux method)
* n : number of gamma rule available
* st : complextypes.State, the current search complextypes.State
* c : channel to send the answer to the father
* s : substitution to apply to the current complextypes.State
* subst_found : treetypes.Substitutions found by this process
**/
func (ds *destructiveSearch) ProofSearch(father_id uint64, st complextypes.State, cha Communication, s complextypes.SubstAndForm, node_id int, original_node_id int, meta_to_reintroduce []int) {
	global.PrintDebug("PS", "---------- New search step ----------")
	global.PrintDebug("PS", fmt.Sprintf("Child of %v - node id : %v - original node id : %v", father_id, node_id, original_node_id))
	global.PrintDebug("PS", fmt.Sprintf("Meta to reintroduce: %v", global.IntListToString(meta_to_reintroduce)))

	if global.GetProof() {
		st.SetCurrentProofNodeId(node_id)
	}

	// Select to check kill order
	select {
	case quit := <-cha.quit:
		ds.manageQuitOrder(quit, cha, father_id, st, nil, st.GetSubstsFound(), node_id, original_node_id, nil, meta_to_reintroduce)
	default:
		// Apply subst if any
		if !s.IsEmpty() {
			//st.SetCurrentProofRule(fmt.Sprintf("Apply substitution : %v", s.GetSubst().ToStringForProof()))
			//global.PrintDebug("PS", fmt.Sprintf("Apply Substitution : %v", s.ToString()))
			complextypes.ApplySubstitution(&st, s)
			global.PrintDebug("PS", "Searching contradiction with new atomics")

			if !global.GetAssisted() {
				for _, f := range st.GetAtomic() {
					global.PrintDebug("PS", fmt.Sprintf("##### Formula %v #####", f.ToString()))
					// Check if exists a contradiction after applying the substitution
					clos_res_after_apply_subst, subst_after_apply_subst := ApplyClosureRules(f.GetForm(), &st)
					if clos_res_after_apply_subst {
						ds.ManageClosureRule(father_id, &st, cha, treetypes.CopySubstList(subst_after_apply_subst), f.Copy(), node_id, original_node_id)
						return
					}
				}
			}
		}

		st.Print()
		if len(st.GetSubstsFound()) > 0 {
			global.PrintDebug("PS", fmt.Sprintf("Current substitutions list: %v", treetypes.SubstListToString(complextypes.GetSubstListFromSubstAndFormList(st.GetSubstsFound()))))
		}
		global.PrintDebug("PS", fmt.Sprintf("Formulae to be added: %v", st.GetLF().ToString()))
		global.PrintDebug("PS", "Insert tree, searching contradiction, then dispatch")

		// Applying substitutions before inserting in the code tree.
		atomicsPlus := st.GetLF().FilterPred(true)
		atomicsMinus := st.GetLF().FilterPred(false)
		st.AddToTreePos(atomicsPlus)
		st.AddToTreeNeg(atomicsMinus)

		for _, f := range st.GetLF() {
			if global.GetAssisted() || basictypes.ShowKindOfRule(f.GetForm()) != basictypes.Atomic {
				st.DispatchForm(f.Copy())
			} else {
				if searchObviousClosureRule(f.GetForm()) {
					ds.ManageClosureRule(father_id, &st, cha, []treetypes.Substitutions{}, f, node_id, original_node_id)
					return
				}
			}
		}

		lam := func(atomic basictypes.Form) bool {
			// Search for a contradiction in LF

			if !global.GetAssisted() {
				global.PrintDebug("PS", fmt.Sprintf("##### Formula %v #####", atomic.ToString()))
				clos_res, subst := ApplyClosureRules(atomic, &st)
				fAt := basictypes.MakeFormAndTerm(atomic, basictypes.NewTermList())

				if clos_res {
					ds.ManageClosureRule(father_id, &st, cha, treetypes.CopySubstList(subst), fAt, node_id, original_node_id)
					return false
				}
			}
			return true

			// Retrieve atomics generated at this step
		}

		new_atomics := basictypes.MakeEmptyFormAndTermsList()
		for _, f := range atomicsPlus.Slice() {
			ok := lam(f.Copy())
			if !ok {
				return
			}
			new_atomics = append(new_atomics, basictypes.MakeFormAndTerm(f.Copy(), basictypes.NewTermList()))
		}
		for _, f := range atomicsMinus.Slice() {
			ok := lam(basictypes.MakerNot(f))
			if !ok {
				return
			}
			new_atomics = append(new_atomics, basictypes.MakeFormAndTerm(basictypes.MakerNot(f), basictypes.NewTermList()))
		}

		/** Filter Atomics for DMT
		* last condition to don't loop on the same formula
		* We can rewrite iff :
		* i is not the last element
		* or we're not in bt formula mode
		* or the subst to apply is empty
		* = !(i is last and getBtOnFOrm and subst not null)
		**/
		atomics_for_dmt := ds.getAtomicsForDMT(new_atomics, &st, s)

		/* Equality - ok because dmt do not apply on equalities */
		if EagerEq || (len(st.GetAlpha()) == 0 && len(st.GetDelta()) == 0 && len(st.GetBeta()) == 0) {
			eqSuccess := TryEquality(atomics_for_dmt, st, new_atomics, father_id, cha, node_id, original_node_id)
			if eqSuccess {
				return
			}
		}

		global.PrintDebug("PS", "Let's apply rules !")
		global.PrintDebug("PS", fmt.Sprintf("LF before applyRules : %v", atomics_for_dmt.ToString()))

		// DoCorrectApplyRules is defined by default as ApplyRules, or to ApplyRulesAssisted if assisted flag is given.
		go ds.doCorrectApplyRules(father_id, st, cha, atomics_for_dmt, node_id, original_node_id, meta_to_reintroduce)
	}
}

var TryEquality = func(atomics_for_dmt basictypes.FormAndTermsList, st complextypes.State, new_atomics basictypes.FormAndTermsList, father_id uint64, cha Communication, node_id int, original_node_id int) bool {
	return false
}

func (ds *destructiveSearch) getAtomicsForDMT(new_atomics basictypes.FormAndTermsList, st *complextypes.State, s complextypes.SubstAndForm) basictypes.FormAndTermsList {
	atomics_for_dmt := basictypes.MakeEmptyFormAndTermsList()
	for i, f := range new_atomics {
		if global.IsLoaded("dmt") && !(i == len(st.GetLF()) && st.GetBTOnFormulas() && !s.IsEmpty()) {
			atomics_for_dmt = append(atomics_for_dmt, f)
		} else {
			st.DispatchForm(f.Copy())
		}
	}
	return atomics_for_dmt
}

/** Waits for its children to end, and manages their return status. */
func (ds *destructiveSearch) waitChildren(args wcdArgs) {
	args.printDebugMessages()

	select {
	case quit := <-args.c.quit:
		visualization.WriteExchanges(args.fatherId, args.st, args.givenSubsts, args.currentSubst, "WaitChildren - Die")
		ds.manageQuitOrder(quit, args.c, args.fatherId, args.st, args.children, args.givenSubsts, args.nodeId, args.originalNodeId, args.childOrdering, args.toReintroduce)
		return
	default:
		global.PrintDebug("WC", fmt.Sprintf("Current substs : %v", args.currentSubst.GetSubst().ToString()))
		status, substs, proofs, unifiers := ds.selectChildren(args.c, &args.children, args.currentSubst, args.childOrdering)
		global.PrintDebug("WC", fmt.Sprintf("End of select - resulting substs : %v ", complextypes.SubstAndFormListToString(substs)))
		if status == CLOSE_BY_ITSELF || status == SUBST_FOR_PARENT {
			// Updates the global unifier using the children's. Every substitution is compatible.
			args.st.SetGlobalUnifier(complextypes.MergeUnifierList(unifiers))
		}
		var err error

		switch status {
		case CLOSE_BY_ITSELF:
			err = ds.childrenClosedByThemselves(args, proofs)
		case SUBST_FOR_PARENT:
			err = ds.passSubstToParent(args, proofs, substs)
		case SUBST_FOR_CHILDREN:
			ds.passSubstToChildren(args, substs)
		case QUIT:
			visualization.WriteExchanges(args.fatherId, args.st, args.givenSubsts, args.currentSubst, "WaitChildren - Die")
			global.PrintDebug("WC", "Closing order received")
			ds.manageQuitOrder(true, args.c, args.fatherId, args.st, args.children, []complextypes.SubstAndForm{}, args.nodeId, args.originalNodeId, args.childOrdering, args.toReintroduce)
		case WAIT:
			visualization.WriteExchanges(args.fatherId, args.st, args.givenSubsts, args.currentSubst, "WaitChildren - Wait father")
			global.PrintDebug("WC", "Closing order received, let's wait father")
			closeChildren(&args.children, true)
			ds.waitFather(args.fatherId, args.st, args.c, args.givenSubsts, args.nodeId, args.originalNodeId, args.childOrdering, args.toReintroduce)
		case OPENED:
			ds.manageOpenedChild(args)
		}

		if err != nil {
			global.PrintError("WC", "Error when waiting for children. It should be an error when merging substitutions. What to do?")
		}
	}
}

/**
* waitFather
* a node wait an order from its father
* Datas :
*	father_id : father's id (debug)
* 	st : state, the current search state
* 	c : channel to communicate with father
* 	children : list of children
* 	given_substs : subst send by this node to its father
**/
func (ds *destructiveSearch) waitFather(father_id uint64, st complextypes.State, c Communication, given_substs []complextypes.SubstAndForm, node_id int, original_node_id int, child_order []int, meta_to_reintroduce []int) {
	global.PrintDebug("WF", "Wait father")

	// CLear subst found
	st.SetSubstsFound([]complextypes.SubstAndForm{})

	select {
	case quit := <-c.quit:
		visualization.WriteExchanges(father_id, st, given_substs, complextypes.MakeEmptySubstAndForm(), "WaitFather - Die")
		ds.manageQuitOrder(quit, c, father_id, st, []Communication{}, given_substs, node_id, original_node_id, child_order, meta_to_reintroduce)
		return

	case answer_father := <-c.result:
		subst := answer_father.getSubstForChildren()

		// Update to prune everything that shouldn't happen.
		visualization.WriteExchanges(father_id, st, given_substs, subst, "WaitFather")
		global.PrintDebug("WF", fmt.Sprintf("Substition received : %v", subst.ToString()))

		// Check if the subst was already seen, returns eventually the subst with new formula(s)
		if treetypes.ContainsSubst(complextypes.GetSubstListFromSubstAndFormList(given_substs), answer_father.subst_for_children.GetSubst()) {
			global.PrintDebug("WF", "This substitution was sent by this child")
			for _, subst_sent := range given_substs {
				if subst_sent.GetSubst().Equals(answer_father.subst_for_children.GetSubst()) {
					subst = answer_father.getSubstForChildren().AddFormulas(subst_sent.GetForm())
				}
			}
			unifier := st.GetGlobalUnifier()
			unifier.PruneUncompatibleSubstitutions(subst.GetSubst())
			if unifier.IsEmpty() {
				unifier.AddSubstitutions(st.GetAppliedSubst().GetSubst(), st.GetAppliedSubst().GetSubst())
			}
			st.SetGlobalUnifier(unifier)
			st.SetSubstsFound([]complextypes.SubstAndForm{subst})
			ds.sendSubToFather(c, true, true, father_id, st, given_substs, node_id, original_node_id, meta_to_reintroduce)
		} else {

			// A substitution is chosen. As free variables are kept inside the terms, we need to apply the substitution on the code tree
			// kept in the state.
			newAtomics := complextypes.ApplySubstitutionsOnFormAndTermsList(subst.GetSubst(), st.GetAtomic())
			st.SetTreePos(st.GetTreePos().MakeDataStruct(newAtomics.ExtractForms(), true))
			x := st.GetTreeNeg()
			x2 := newAtomics.ExtractForms()
			x1 := x.MakeDataStruct(x2, false)
			st.SetTreeNeg(x1)

			// Maj forbidden
			if len(answer_father.forbidden) > 0 {
				global.PrintDebug("WF", fmt.Sprintf("Forbidden received : %v", treetypes.SubstListToString(answer_father.getForbiddenSubsts())))
				st.SetForbiddenSubsts(answer_father.getForbiddenSubsts())
				global.PrintDebug("WF", fmt.Sprintf("New forbidden fo this state : %v", treetypes.SubstListToString(st.GetForbiddenSubsts())))
			} else {
				// Retrieve meta from the subst sent by my father
				meta_sisters := st.GetMM()
				for _, m := range complextypes.GetMetaFromSubst(answer_father.subst_for_children.GetSubst()).Slice() {
					if !st.GetMC().Contains(m) { // If the meta is not a meta current for the process
						meta_sisters.AppendIfNotContains(m)
					}
				}
				// Set to MM
				st.SetMM(meta_sisters)
				global.PrintDebug("WF", fmt.Sprintf("MC after sisters : %v", meta_sisters.ToString()))
			}

			father_subst := answer_father.subst_for_children.GetSubst()
			meta_to_reintroduce_from_subt := retrieveMetaFromSubst(father_subst)
			new_meta_to_reintroduce := global.InterIntList(meta_to_reintroduce, meta_to_reintroduce_from_subt)

			// Special case: the current node is a rewriting node.
			// As such, this rule can not be applied back.
			// Thus, we always need to put the rewrite rule in first, so apply subst on it + no overwrite
			is_rewrite := st.GetCurrentProof().Rule == "Rewrite"

			if is_rewrite {
				prf := st.GetCurrentProof()
				prf.Formula = basictypes.MakeFormAndTerm(
					complextypes.ApplySubstitutionsOnFormula(father_subst, prf.Formula.GetForm()),
					prf.Formula.Terms,
				)
				for i, test := range prf.Result_formulas {
					prf.Result_formulas[i] = proof.MakeIntFormAndTermsList(
						test.GetI(),
						complextypes.ApplySubstitutionsOnFormAndTermsList(father_subst, test.GetFL()),
					)
				}
			}

			st_copy := st.Copy()
			st_copy.SetGlobalUnifier(complextypes.MakeUnifier())

			c2 := Communication{make(chan bool), make(chan Result)}

			global.PrintDebug("WF", fmt.Sprintf("Apply substitution on myself and wait : %v", answer_father.getSubstForChildren().GetSubst().ToString()))
			global.PrintDebug("WF", fmt.Sprintf("Forbidden : %v", treetypes.SubstListToString(st_copy.GetForbiddenSubsts())))
			go ds.ProofSearch(global.GetGID(), st_copy, c2, answer_father.getSubstForChildren(), node_id, original_node_id, new_meta_to_reintroduce)
			global.IncrGoRoutine(1)

			global.PrintDebug("WF", "GO !")
			st.SetBTOnFormulas(false)
			ds.waitChildren(MakeWcdArgs(father_id, st, c, []Communication{c2}, given_substs, answer_father.getSubstForChildren(), []complextypes.SubstAndForm{}, []complextypes.IntSubstAndFormAndTerms{}, node_id, original_node_id, true, []int{original_node_id}, meta_to_reintroduce))
		}
	}
}

/* Manage quit or wait father order. Return true if the process is supposed to die at the end */
func (ds *destructiveSearch) manageQuitOrder(quit bool, c Communication, father_id uint64, st complextypes.State, children []Communication, given_substs []complextypes.SubstAndForm, node_id int, original_node_id int, child_order []int, meta_to_reintroduce []int) {
	if len(children) > 0 {
		closeChildren(&children, true)
	}
	if quit {
		global.PrintDebug("MQO", "Closing order received")
		global.PrintDebug("MQO", "Die")
	} else {
		global.PrintDebug("MQO", "Closing order received, let's wait father")
		ds.waitFather(father_id, st, c, given_substs, node_id, original_node_id, child_order, meta_to_reintroduce)
	}
}

/*
Select children
Wait for a children to answer and return substitutions

Datas :

	father : father's id (debug)
	children : slice of communication
	current_subst : the substitution previously applied

Result :

	int :
	- 0 : closed by itself
	- 1 : substs list is for father
	- 2 : substs list is for children
	- 3 : quit order from my father
	- 4 : wait my father
	- 5 : open from my children - tell te other to wait me

[]complextypes.SubstAndForm : substitutions list
*/
func (ds *destructiveSearch) selectChildren(father Communication, children *[]Communication, current_subst complextypes.SubstAndForm, child_order []int) (int, []complextypes.SubstAndForm, [][]proof.ProofStruct, []complextypes.Unifier) {

	proof_tab := make([][]proof.ProofStruct, len(child_order))

	// Select structure
	cases := make([]reflect.SelectCase, len(*children)+1)
	for i, ch := range *children {
		cases[i] = reflect.SelectCase{Dir: reflect.SelectRecv, Chan: reflect.ValueOf(ch.result)}
	}

	// Manage quit order
	index_quit := len(*children)
	cases[index_quit] = reflect.SelectCase{Dir: reflect.SelectRecv, Chan: reflect.ValueOf(father.quit)}

	// Result struct
	result_int := ERROR
	result_subst := []complextypes.SubstAndForm{}
	common_substs := []complextypes.SubstAndForm{}
	unifiers := []complextypes.Unifier{}

	// Counters
	cpt_children_returning_subst := 0
	cpt_remaining_children := len(*children)
	current_subst_seen := false
	new_current_subst := current_subst.Copy()

	// Until all the children have answered
	for cpt_remaining_children > 0 && result_int < QUIT {
		global.PrintDebug("SLC", fmt.Sprintf("Size of remaining children : %v", cpt_remaining_children))

		index, value, _ := reflect.Select(cases)
		global.PrintDebug("SLC", "Answer received")

		// Manage quit order
		if index == index_quit {
			global.PrintDebug("SLC", "Quit order")
			if !value.Interface().(bool) {
				global.PrintDebug("SLC", "Quit order says to wait father")
				result_int = WAIT
			} else {
				result_int = QUIT
			}
		} else {
			cpt_remaining_children--
			res := value.Interface().(Result)

			index_children := -1
			for i, children_node_id := range child_order {
				if children_node_id == res.getOriginalNodeId() {
					index_children = i
					break
				}
			}

			proof_tab[index_children] = res.getProof()

			// Remove children from waiting children
			global.PrintDebug("SLC", fmt.Sprintf("Child %v has finished", res.id))
			if !res.need_answer {
				global.PrintDebug("SLC", fmt.Sprintf("Child %v die", res.id))
				*children = removeChildren(*children, index)
			}

			// Manage the substitution sent by this child
			if res.closed {
				unif := res.getUnifier()
				unifiers = append(unifiers, unif)

				if len(res.subst_list_for_father) != 0 {
					global.PrintDebug("SLC", fmt.Sprintf("The child %v has %v substitution(s) !", res.id, len(res.subst_list_for_father)))

					if len(res.subst_list_for_father) == 1 && res.subst_list_for_father[0].GetSubst().Equals(current_subst.GetSubst()) {
						global.PrintDebug("SLC", fmt.Sprintf("The child %v returns the current subst !", res.id))
						current_subst_seen = true
						// Children sent the same substitution, eventually with new forms
						new_current_subst = current_subst.AddFormulas(res.subst_list_for_father[0].GetForm())
					} else {
						// Reset at each step
						common_substs = []complextypes.SubstAndForm{}

						// Check if there is common substitutions
						for _, current_subst_from_children := range res.subst_list_for_father {
							for i := range result_subst {
								if current_subst_from_children.GetSubst().Equals(result_subst[i].GetSubst()) {
									global.PrintDebug("SLC", fmt.Sprintf("Subst in common found : %v !", current_subst_from_children.GetSubst().ToString()))
									common_substs = append(common_substs, result_subst[i].AddFormulas(current_subst_from_children.GetForm()))
								}
							}
						}

						// Add new subst to result subst
						for _, v := range res.subst_list_for_father {
							global.PrintDebug("SLC", fmt.Sprintf("Check if the substitution was already found by another child : %v\n", v.ToString()))
							if !v.GetSubst().Equals(new_current_subst.GetSubst()) {
								added := false
								global.PrintDebug("SLC", fmt.Sprintf("Result_subst :%v", treetypes.SubstListToString(complextypes.GetSubstListFromSubstAndFormList(result_subst))))
								for i := range result_subst {
									if v.GetSubst().Equals(result_subst[i].GetSubst()) {
										added = true
										global.PrintDebug("SLC", "Subst already in result_subst")
										result_subst[i] = result_subst[i].AddFormulas(v.GetForm())
									}
								}

								if !added {
									global.PrintDebug("SLC", fmt.Sprintf("New susbt found : %v", v.ToString()))
									result_subst = complextypes.AppendIfNotContainsSubstAndForm(result_subst, v)
									global.PrintDebug("SLC", fmt.Sprintf("New result susbt : %v", treetypes.SubstListToString(complextypes.GetSubstListFromSubstAndFormList(result_subst))))
								}
							}
						}
						cpt_children_returning_subst++
					}
				}

			} else {
				// Signal to children to stop and wait father for a new order
				global.PrintDebug("SLC", fmt.Sprintf("Open child found : %v ! - tell to remaining children to wait father", res.id))
				result_int = OPENED
			}
		}
	}

	global.PrintDebug("SLC", fmt.Sprintf("All answer received - subst_for_children : %v", len(result_subst)))

	if result_int < QUIT {
		switch cpt_children_returning_subst {
		case 0:
			if current_subst_seen {
				// A child returns current subst and the other nothing
				global.PrintDebug("SLC", "One on more children returns the current subst")
				result_int = SUBST_FOR_PARENT
				result_subst = append(result_subst, new_current_subst)
			} else {
				result_int = CLOSE_BY_ITSELF
			}
		case 1:
			// A child returns subst(s)
			global.PrintDebug("SLC", "A child returns new subst(s)")
			result_int = SUBST_FOR_PARENT

			// Merge the subst with current subst (if not empty)
			if !new_current_subst.IsEmpty() {
				new_result_subst := []complextypes.SubstAndForm{}
				for _, s := range result_subst {
					if !s.GetSubst().Equals(new_current_subst.GetSubst()) {
						err, new_subst := complextypes.MergeSubstAndForm(s.Copy(), new_current_subst.Copy())

						if err != nil {
							global.PrintError("SLC", "Error when merging substitutions. What to do?")
						}

						new_result_subst = append(new_result_subst, new_subst)
					}
				}
				result_subst = complextypes.CopySubstAndFormList(new_result_subst)
			}
			global.PrintDebug("SLC", fmt.Sprintf("New subst at the end : %v", treetypes.SubstListToString(complextypes.GetSubstListFromSubstAndFormList(result_subst))))
		default:
			// Multiple child returns substs, try each one (or only one if it's the same)
			switch {
			// Try to find one commun subst
			case len(common_substs) > 0:
				result_int = SUBST_FOR_PARENT
				result_subst = common_substs
			case len(result_subst) == 1:
				result_int = SUBST_FOR_PARENT
			default:
				result_int = SUBST_FOR_CHILDREN
			}
		}
	}

	result_subst = complextypes.RemoveEmptySubstFromSubstAndFormList(result_subst)

	return result_int, result_subst, proof_tab, unifiers
}

func (ds *destructiveSearch) DoEndManageBeta(fatherId uint64, state complextypes.State, c Communication, channels []Communication, currentNodeId int, originalNodeId int, childIds []int, metaToReintroduce []int) {
	ds.waitChildren(MakeWcdArgs(fatherId, state, c, channels, []complextypes.SubstAndForm{}, complextypes.MakeEmptySubstAndForm(), []complextypes.SubstAndForm{}, []complextypes.IntSubstAndFormAndTerms{}, currentNodeId, originalNodeId, false, childIds, metaToReintroduce))
}

func (ds *destructiveSearch) manageRewriteRules(fatherId uint64, state complextypes.State, c Communication, newAtomics basictypes.FormAndTermsList, currentNodeId int, originalNodeId int, metaToReintroduce []int) {
	global.PrintDebug("PS", "Try rewrite rule")
	global.PrintDebug("PS - MRR", fmt.Sprintf("Id : %v, original node id :%v", currentNodeId, originalNodeId))
	remainingAtomics := newAtomics.Copy()

	// For each atomic
	for len(remainingAtomics) > 0 {
		global.PrintDebug("PS", "Remaining atomic > 0")

		//We take the first element in the list of atomics
		f := remainingAtomics[0].Copy()
		remainingAtomics = remainingAtomics[1:].Copy()
		global.PrintDebug("PS", fmt.Sprintf("Choose : %v", f.ToString()))
		global.PrintDebug("PS", fmt.Sprintf("Remaining atomics %v", remainingAtomics.ToString()))

		// If f is in atomic, that means we couldn't rewrite it, so it's useless to check
		if !state.GetAtomic().Contains(f) && global.IsLoaded("dmt") {
			if rewritten, err := dmt.Rewrite(f.GetForm()); err == nil {
				shouldReturn := ds.tryRewrite(rewritten, f, &state, remainingAtomics, fatherId, c, currentNodeId, originalNodeId, metaToReintroduce)
				if shouldReturn {
					return
				}
			} else {
				global.PrintError("DMT", err.Error())
			}
		}
	}

	//If no rewriting has been found, do an "empty" step
	state.SetLF(basictypes.MakeEmptyFormAndTermsList())
	ds.ProofSearch(fatherId, state, c, complextypes.MakeEmptySubstAndForm(), currentNodeId, originalNodeId, []int{})
}

// ILL TODO: check if this function does not make the DMT version lose completeness: is the original formula that's rewritten still in the branch or not?
func (ds *destructiveSearch) tryRewrite(rewritten []complextypes.IntSubstAndForm, f basictypes.FormAndTerms, state *complextypes.State, remainingAtomics basictypes.FormAndTermsList, fatherId uint64, c Communication, currentNodeId int, originalNodeId int, metaToReintroduce []int) bool {
	global.PrintDebug("PS", fmt.Sprintf("Try to rewrite into :  %v", complextypes.IntSubstAndFormListToString(rewritten)))

	newRewritten := []complextypes.IntSubstAndFormAndTerms{}
	for _, isaf := range rewritten {
		newFNTs := basictypes.MakeEmptyFormAndTermsList()
		for _, isaf_f := range isaf.GetSaf().GetForm().Slice() {
			newFNTs = append(newFNTs, basictypes.MakeFormAndTerm(isaf_f, f.GetTerms()))
		}

		newRewritten = append(newRewritten, complextypes.MakeIntSubstAndFormAndTerms(isaf.GetId_rewrite(), complextypes.MakeSubstAndFormAndTerms(isaf.GetSaf().GetSubst(), newFNTs)))
	}

	// Keep all the possibility of rewriting and choose the first one
	choosenRewritten := newRewritten[0]
	choosenRewrittenForm := choosenRewritten.GetSaf().GetForm()[0].Copy()
	// Case with multiple formulae: we also have to copy rewritten[0] without the first formulae. This case cannot happen because of the DMT's code
	newRewritten = complextypes.CopyIntSubstAndFormAndTermsList(newRewritten[1:])

	// If we didn't rewrite as itself ?
	if !choosenRewritten.GetSaf().GetSubst().Equals(treetypes.Failure()) {
		// Create a child with the current rewriting rule and make this process to wait for him, with a list of other subst to try
		state.SetLF(append(remainingAtomics.Copy(), choosenRewrittenForm.Copy()))
		state.SetBTOnFormulas(true) // I need to know that I can bt on form and my child needs to know it to to don't loop

		// Proof
		state.SetCurrentProofFormula(f)
		childNode := global.IncrCptNode()
		state.SetCurrentProofResultFormulas([]proof.IntFormAndTermsList{proof.MakeIntFormAndTermsList(childNode, basictypes.MakeSingleElementFormAndTermList(choosenRewrittenForm.Copy()))})
		state.SetCurrentProofRule("Rewrite")
		state.SetCurrentProofRuleName("Rewrite")
		state.SetCurrentProofIdDMT(choosenRewritten.GetId_rewrite())

		if choosenRewritten.GetSaf().GetSubst().IsEmpty() {
			choosenRewritten = complextypes.MakeEmptyIntSubstAndFormAndTerms()
		}

		otherState := state.Copy()
		otherState.SetBTOnFormulas(false)

		channelChild := Communication{make(chan bool), make(chan Result)}
		go ds.ProofSearch(global.GetGID(), otherState, channelChild, choosenRewritten.GetSaf().ToSubstAndForm(), childNode, childNode, []int{})
		global.PrintDebug("PS", "GO !")
		global.IncrGoRoutine(1)
		ds.waitChildren(MakeWcdArgs(fatherId, *state, c, []Communication{channelChild}, []complextypes.SubstAndForm{}, choosenRewritten.GetSaf().ToSubstAndForm(), []complextypes.SubstAndForm{}, newRewritten, currentNodeId, originalNodeId, false, []int{childNode}, metaToReintroduce))
		return true
	} else {
		// No rewriting possible
		global.PrintDebug("PS", fmt.Sprintf("No rewriting possible, dispatchform de %v", f.ToString()))
		// Then add f in atomics
		state.DispatchForm(f.Copy())

		return false
	}
}

//ILL TODO Clean the following function and be careful with the Coq output.
/**
* clos_res and subst are the result of applyClosureRule.
* Manage this result, dispatch the subst and recreate data strcutures.
* Return if the branch is closed without variable from its father
**/
func (ds *destructiveSearch) ManageClosureRule(father_id uint64, st *complextypes.State, c Communication, substs []treetypes.Substitutions, f basictypes.FormAndTerms, node_id int, original_node_id int) (bool, []complextypes.SubstAndForm) {

	mm := st.GetMM().Copy()
	mm.AppendIfNotContains(complextypes.GetMetaFromSubst(st.GetAppliedSubst().GetSubst()).Slice()...)
	substs_with_mm, substs_with_mm_uncleared, substs_without_mm := complextypes.DispatchSubst(treetypes.CopySubstList(substs), mm)

	unifier := st.GetGlobalUnifier()
	appliedSubst := st.GetAppliedSubst().GetSubst()

	switch {
	case len(substs) == 0:
		global.PrintDebug("MCR", "Branch closed by ¬⊤ or ⊥ or a litteral and its opposite!")

		if global.GetAssisted() {
			fmt.Printf("Branch can be closed by ¬⊤, ⊥ or a litteral and its opposite!\nApplying it automatically...\n")
		}

		st.SetSubstsFound([]complextypes.SubstAndForm{st.GetAppliedSubst()})

		// Proof
		st.SetCurrentProofRule("⊙")
		st.SetCurrentProofRuleName("CLOSURE")
		st.SetCurrentProofFormula(f.Copy())
		st.SetCurrentProofNodeId(node_id)
		st.SetCurrentProofResultFormulas([]proof.IntFormAndTermsList{})
		st.SetProof(append(st.GetProof(), st.GetCurrentProof()))

		unifier.AddSubstitutions(appliedSubst, appliedSubst)
		st.SetGlobalUnifier(unifier)

		// No new subst needed in the global unifier
		if !global.GetAssisted() {
			ds.sendSubToFather(c, true, false, global.GetGID(), *st, []complextypes.SubstAndForm{}, node_id, original_node_id, []int{})
		}

	case len(substs_without_mm) > 0:
		global.PrintDebug("MCR", fmt.Sprintf("Contradiction found (without mm) : %v", treetypes.SubstListToString(substs_without_mm)))

		if global.GetAssisted() && !substs_without_mm[0].IsEmpty() {
			fmt.Printf("The branch can be closed by using a substitution which has no impact elsewhere!\nApplying it automatically : ")
			fmt.Printf("%v !\n", treetypes.SubstListToString(substs_without_mm))
		}

		st.SetSubstsFound([]complextypes.SubstAndForm{st.GetAppliedSubst()})

		// Proof
		st.SetCurrentProofRule(fmt.Sprintf("⊙ / %v", substs_without_mm[0].ToString()))
		st.SetCurrentProofRuleName("CLOSURE")
		st.SetCurrentProofFormula(f.Copy())
		st.SetCurrentProofNodeId(node_id)
		st.SetCurrentProofResultFormulas([]proof.IntFormAndTermsList{})
		st.SetProof(append(st.GetProof(), st.GetCurrentProof()))

		// As no MM is involved, these substitutions can be unified with all the others having an empty subst.
		for _, subst := range substs_without_mm {
			merge, _ := treesearch.MergeSubstitutions(appliedSubst, subst)
			unifier.AddSubstitutions(appliedSubst, merge)
		}
		st.SetGlobalUnifier(unifier)
		if !global.GetAssisted() {
			ds.sendSubToFather(c, true, false, global.GetGID(), *st, []complextypes.SubstAndForm{}, node_id, original_node_id, []int{})
		}

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
				global.PrintError("MCR", fmt.Sprintf("Error : SubstForFather is failure between : %v and %v \n", subst_for_father.ToString(), st.GetAppliedSubst().ToString()))
			}
			global.PrintDebug("MCR", fmt.Sprintf("Formula = : %v", f.ToString()))

			// Create substAndForm with the current form and the subst found
			subst_and_form_for_father := complextypes.MakeSubstAndForm(subst_for_father, basictypes.NewFormList(f.GetForm()))

			global.PrintDebug("MCR", fmt.Sprintf("SubstAndForm created : %v", subst_and_form_for_father.ToString()))

			// Merge with applied subst (if any)
			err, subst_and_form_for_father := complextypes.MergeSubstAndForm(subst_and_form_for_father.Copy(), st.GetAppliedSubst())

			if err != nil {
				global.PrintError("MCR", "Contradiction found between applied subst and child subst. What to do?")
			} else {

				st.SetSubstsFound(complextypes.AppendIfNotContainsSubstAndForm(st.GetSubstsFound(), subst_and_form_for_father))
			}

			meta_to_reintroduce = global.UnionIntList(meta_to_reintroduce, retrieveMetaFromSubst(subst_for_father))
		}

		if global.GetAssisted() {
			return true, st.GetSubstsFound()
		} else {
			global.PrintDebug("MCR", fmt.Sprintf("Subst found now : %v", complextypes.SubstAndFormListToString(st.GetSubstsFound())))
			global.PrintDebug("MCR", fmt.Sprintf("Send subst(s) with mm to father : %v", treetypes.SubstListToString(complextypes.GetSubstListFromSubstAndFormList(st.GetSubstsFound()))))
			sort.Ints(meta_to_reintroduce)

			// Add substs_with_mm found with the corresponding subst
			for i, subst := range substs_with_mm {
				mergeUncleared, _ := treesearch.MergeSubstitutions(appliedSubst, substs_with_mm_uncleared[i])
				mergeCleared, _ := treesearch.MergeSubstitutions(appliedSubst, subst)
				unifier.AddSubstitutions(mergeCleared, mergeUncleared)
			}
			st.SetGlobalUnifier(unifier)
			ds.sendSubToFather(c, true, true, global.GetGID(), *st, []complextypes.SubstAndForm{}, node_id, original_node_id, meta_to_reintroduce)
		}
	}
	return false, []complextypes.SubstAndForm{}
}

/* Apply rules with priority (closure < rewrite < alpha < delta < closure with mm < beta < gamma) */
func (ds *destructiveSearch) applyRules(fatherId uint64, state complextypes.State, c Communication, newAtomics basictypes.FormAndTermsList, currentNodeId int, originalNodeId int, metaToReintroduce []int) {
	global.PrintDebug("AR", "ApplyRule")
	switch {
	case len(newAtomics) > 0 && global.IsLoaded("dmt") && len(state.GetSubstsFound()) == 0:
		ds.manageRewriteRules(fatherId, state, c, newAtomics, currentNodeId, originalNodeId, metaToReintroduce)

	case len(state.GetAlpha()) > 0:
		ds.manageAlphaRules(fatherId, state, c, originalNodeId)

	case len(state.GetDelta()) > 0:
		ds.manageDeltaRules(fatherId, state, c, originalNodeId)

	case len(state.GetBeta()) > 0:
		ds.manageBetaRules(fatherId, state, c, currentNodeId, originalNodeId, metaToReintroduce)

	case len(state.GetGamma()) > 0:
		ds.manageGammaRules(fatherId, state, c, originalNodeId)

	case len(state.GetMetaGen()) > 0 && state.CanReintroduce():
		ds.manageReintroductionRules(fatherId, state, c, originalNodeId, metaToReintroduce, newAtomics, currentNodeId, true)

	default:
		visualization.WriteExchanges(fatherId, state, nil, complextypes.MakeEmptySubstAndForm(), "ApplyRules - SAT")
		state.SetCurrentProofRule("Sat")
		state.SetProof(append(state.GetProof(), state.GetCurrentProof()))
		global.PrintDebug("PS", "Nothing found, return sat")
		ds.sendSubToFather(c, false, false, fatherId, state, []complextypes.SubstAndForm{}, currentNodeId, originalNodeId, []int{})
	}
}

func (ds *destructiveSearch) manageAlphaRules(fatherId uint64, state complextypes.State, c Communication, originalNodeId int) {
	global.PrintDebug("PS", "Alpha rule")
	hdf := state.GetAlpha()[0]
	global.PrintDebug("PS", fmt.Sprintf("Rule applied on : %s", hdf.ToString()))
	state.SetAlpha(state.GetAlpha()[1:])
	resultForms := ApplyAlphaRules(hdf, &state)
	state.SetLF(resultForms)

	// Proof
	state.SetCurrentProofFormula(hdf)
	childId := global.IncrCptNode()
	state.SetCurrentProofResultFormulas([]proof.IntFormAndTermsList{proof.MakeIntFormAndTermsList(childId, resultForms)})
	state.SetProof(append(state.GetProof(), state.GetCurrentProof()))

	ds.ProofSearch(fatherId, state, c, complextypes.MakeEmptySubstAndForm(), childId, originalNodeId, []int{})
}

func (ds *destructiveSearch) manageDeltaRules(fatherId uint64, state complextypes.State, c Communication, originalNodeId int) {
	global.PrintDebug("PS", "Delta rule")
	hdf := state.GetDelta()[0]
	global.PrintDebug("PS", fmt.Sprintf("Rule applied on : %s", hdf.ToString()))
	state.SetDelta(state.GetDelta()[1:])
	resultForms := ApplyDeltaRules(hdf, &state)
	state.SetLF(resultForms)

	// Proof
	state.SetCurrentProofFormula(hdf)
	childId := global.IncrCptNode()
	state.SetCurrentProofResultFormulas([]proof.IntFormAndTermsList{proof.MakeIntFormAndTermsList(childId, resultForms)})
	state.SetProof(append(state.GetProof(), state.GetCurrentProof()))

	ds.ProofSearch(fatherId, state, c, complextypes.MakeEmptySubstAndForm(), childId, originalNodeId, []int{})
}

func (ds *destructiveSearch) manageBetaRules(fatherId uint64, state complextypes.State, c Communication, currentNodeId int, originalNodeId int, metaToReintroduce []int) {
	global.PrintDebug("PS", "Beta rule")
	hdf := state.GetBeta()[0]
	global.PrintDebug("PS", fmt.Sprintf("Rule applied on : %s", hdf.ToString()))
	reslf := ApplyBetaRules(hdf, &state)
	childIds := []int{}

	// Proof
	state.SetCurrentProofFormula(hdf)

	intFormLists := []proof.IntFormAndTermsList{}
	for _, fl := range reslf {
		intFormLists = append(intFormLists, proof.MakeIntFormAndTermsList(global.IncrCptNode(), fl))
	}
	state.SetCurrentProofResultFormulas(intFormLists)
	state.SetBTOnFormulas(false)

	// For each child, launch a goroutine, stock its channel, and wait an answer
	var channels []Communication
	for _, fl := range intFormLists {
		otherState := state.Copy()
		otherState.SetBeta(state.GetBeta()[1:])
		otherState.SetLF(fl.GetFL())
		childIds = append(childIds, fl.GetI())
		if global.IsDestructive() {
			channelChild := Communication{make(chan bool), make(chan Result)}
			channels = append(channels, channelChild)
			go ds.ProofSearch(global.GetGID(), otherState, channelChild, complextypes.MakeEmptySubstAndForm(), fl.GetI(), fl.GetI(), []int{})
		} else {
			go ds.ProofSearch(global.GetGID(), otherState, c, complextypes.MakeEmptySubstAndForm(), fl.GetI(), fl.GetI(), []int{})
		}

		global.IncrGoRoutine(1)
		global.PrintDebug("PS", fmt.Sprintf("GO %v !", fl.GetI()))

	}

	ds.DoEndManageBeta(fatherId, state, c, channels, currentNodeId, originalNodeId, childIds, metaToReintroduce)
}

func (ds *destructiveSearch) manageGammaRules(fatherId uint64, state complextypes.State, c Communication, originalNodeId int) {
	global.PrintDebug("PS", "Gamma rule")
	hdf := state.GetGamma()[0]
	global.PrintDebug("PS", fmt.Sprintf("Rule applied on : %s", hdf.ToString()))
	state.SetGamma(state.GetGamma()[1:])

	// Update MetaGen
	index, newMetaGen := basictypes.GetIndexMetaGenList(hdf, state.GetMetaGen())
	state.SetMetaGen(newMetaGen)
	newFnts, newMetas := ApplyGammaRules(hdf, index, &state)
	state.SetLF(newFnts)

	newMC := state.GetMC().Copy()
	newMC.AppendIfNotContains(newMetas.Slice()...)
	state.SetMC(newMC)

	if global.IsDestructive() {
		state.SetN(state.GetN() - 1)
	}

	// Proof
	state.SetCurrentProofFormula(hdf)
	childId := global.IncrCptNode()
	state.SetCurrentProofResultFormulas([]proof.IntFormAndTermsList{proof.MakeIntFormAndTermsList(childId, newFnts)})
	state.SetProof(append(state.GetProof(), state.GetCurrentProof()))

	ds.ProofSearch(fatherId, state, c, complextypes.MakeEmptySubstAndForm(), childId, originalNodeId, []int{})
}

func (ds *destructiveSearch) manageReintroductionRules(fatherId uint64, state complextypes.State, c Communication, originalNodeId int, metaToReintroduce []int, newAtomics basictypes.FormAndTermsList, currentNodeId int, reintroduceAnyway bool) {

	currentMTR := -1

	global.PrintDebug("PS", "Reintroduction")
	global.PrintDebug("PS", fmt.Sprintf("Meta to reintroduce : %s", global.IntListToString(metaToReintroduce)))
	newMetaGen := state.GetMetaGen()
	reslf := basictypes.ReintroduceMeta(&newMetaGen, currentMTR, state.GetN())
	global.PrintDebug("PS", fmt.Sprintf("Reintroduce the formula : %s", reslf.ToString()))
	state.SetLF(basictypes.MakeSingleElementFormAndTermList(reslf))

	// Update Meta Gen
	state.SetMetaGen(newMetaGen)

	// Proof
	childId := global.IncrCptNode()
	state.SetCurrentProofRule("Reintroduction")
	state.SetCurrentProofRuleName("Reintroduction")
	state.SetCurrentProofFormula(reslf)
	state.SetCurrentProofResultFormulas([]proof.IntFormAndTermsList{proof.MakeIntFormAndTermsList(childId, basictypes.MakeSingleElementFormAndTermList(reslf))})
	state.SetProof(append(state.GetProof(), state.GetCurrentProof()))

	ds.ProofSearch(fatherId, state, c, complextypes.MakeEmptySubstAndForm(), childId, originalNodeId, metaToReintroduce)
}

func (ds *destructiveSearch) manageResult(c Communication) (complextypes.Unifier, []proof.ProofStruct, bool) {
	result := <-c.getResult()

	global.PrintDebug("MAIN", fmt.Sprintf("Proof : %v", proof.ProofStructListToString(result.getProof())))

	if result.needsAnswer() {
		c.getQuit() <- true
		global.PrintDebug("MAIN", "Close order sent")
	} else {
		global.PrintDebug("MAIN", "Close order not sent")
	}

	return result.getUnifier(), result.getProof(), result.isClosed()
}
