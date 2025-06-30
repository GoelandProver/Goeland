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
	"math/rand"
	"reflect"
	"runtime"
	"sort"

	"github.com/GoelandProver/Goeland/AST"
	"github.com/GoelandProver/Goeland/Core"
	"github.com/GoelandProver/Goeland/Glob"
	"github.com/GoelandProver/Goeland/Lib"
	"github.com/GoelandProver/Goeland/Mods/dmt"
	"github.com/GoelandProver/Goeland/Unif"
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
	ProofSearch(uint64, State, Communication, Core.SubstAndForm, int, int, []int, bool)
	DoEndManageBeta(uint64, State, Communication, []Communication, int, int, []int, []int)
	manageRewriteRules(uint64, State, Communication, Core.FormAndTermsList, int, int, []int)
	ManageClosureRule(uint64, *State, Communication, []Unif.Substitutions, Core.FormAndTerms, int, int) (bool, []Core.SubstAndForm)
	manageResult(c Communication) (Core.Unifier, []ProofStruct, bool)
}

type destructiveSearch struct {
	doCorrectApplyRules func(uint64, State, Communication, Core.FormAndTermsList, int, int, []int)
}

func NewDestructiveSearch() BasicSearchAlgorithm {
	ds := &destructiveSearch{}
	ds.doCorrectApplyRules = ds.applyRules
	return ds
}

func (ds *destructiveSearch) SetApplyRules(function func(uint64, State, Communication, Core.FormAndTermsList, int, int, []int)) {
	ds.doCorrectApplyRules = function
}
func (ds *destructiveSearch) Search(formula AST.Form, bound int) bool {
	res := false
	Glob.SetNbStep(1)
	limit := bound

	for ok := true; ok; ok = (!res && bound > 0 && !Glob.IsOneStep()) {
		res, limit = ds.doOneStep(limit, formula)
	}

	return res
}

func (ds *destructiveSearch) doOneStep(limit int, formula AST.Form) (bool, int) {
	AST.ResetMeta()
	// proof.ResetProofFile()
	ResetExchangesFile()

	Glob.PrintInfo("MAIN", fmt.Sprintf("nb_step : %v - limit : %v", Glob.GetNbStep(), limit))

	tp := Unif.NewNode()
	tn := Unif.NewNode()

	state := MakeState(limit, tp, tn, formula)
	state.SetCurrentProofNodeId(0)

	Glob.PrintInfo("MAIN", fmt.Sprintf("Launch Gotab with destructive = %v", Glob.IsDestructive()))

	Glob.SetNbGoroutines(0)
	state.SetLF(Core.MakeSingleElementFormAndTermList(Core.MakeFormAndTerm(
		formula,
		Lib.NewList[AST.Term](),
	)))
	c := MakeCommunication(make(chan bool), make(chan Result))

	if Glob.GetExchanges() {
		WriteExchanges(Glob.GetGID(), state, []Core.SubstAndForm{}, Core.MakeEmptySubstAndForm(), "Search")
	}

	nodeId := Glob.IncrCptNode()
	go ds.ProofSearch(Glob.GetGID(), state, c, Core.MakeEmptySubstAndForm(), nodeId, nodeId, []int{}, false)
	Glob.IncrGoRoutine(1)

	Glob.PrintDebug("MAIN", "GO")

	Glob.PrintDebug("MAIN", fmt.Sprintf("Nb of goroutines = %d", Glob.GetNbGoroutines()))
	Glob.PrintDebug("MAIN", fmt.Sprintf("%v goroutines still running", runtime.NumGoroutine()))

	unifier, finalProof, result := ds.manageResult(c)

	if result {
		if unif := unifier.GetUnifier(); !unif.IsEmpty() {
			finalProof = ApplySubstitutionOnProofList(unif, finalProof)
		}
		uninstanciatedMeta := RetrieveUninstantiatedMetaFromProof(finalProof)
		PrintProof(finalProof, uninstanciatedMeta)
	}

	Glob.SetNbStep(Glob.GetNbStep() + 1)
	return result, 2 * limit
}

/* Choose a substitution (backtrack) */
func (ds *destructiveSearch) tryBTSubstitution(spc *([]Core.SubstAndForm), mm Lib.List[AST.Meta], children []Communication) Core.SubstAndForm {
	Glob.PrintDebug("TBTS", "Try another substitution.")
	next_subst, new_spc := ds.chooseSubstitutionDestructive(Core.CopySubstAndFormList(*spc), mm)
	Glob.PrintDebug("TBTS", fmt.Sprintf("Choose the substitution : %v and send it to children", next_subst.ToString()))
	sendSubToChildren(children, next_subst)
	*spc = new_spc
	return next_subst
}

/* Choose a substitution among all the subst send by children - takes thoses who contains no mm first */
func (ds *destructiveSearch) chooseSubstitutionDestructive(subst_list []Core.SubstAndForm, mm Lib.List[AST.Meta]) (Core.SubstAndForm, []Core.SubstAndForm) {
	subst_found := subst_list[0]
	found := false
	i := 0
	saved_i := 0

	// Choix de la subst - celle qui ne contient pas de MM, ou la première
	for i < len(subst_list)-1 && !found {
		if !Core.ContainsMetaMother((subst_list)[i].GetSubst(), mm) {
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
		subst_list = []Core.SubstAndForm{}
	}

	return subst_found, subst_list
}

func (ds *destructiveSearch) searchContradictionAfterApplySusbt(father_id uint64, st State, cha Communication, node_id int, original_node_id int) bool {
	if Glob.GetAssisted() {
		return false
	}
	for _, f := range st.GetAtomic() {
		Glob.PrintDebug("PS", fmt.Sprintf("##### Formula %v #####", f.ToString()))
		// Check if exists a contradiction after applying the substitution
		if res, subst := ApplyClosureRules(f.GetForm(), &st); res {
			ds.ManageClosureRule(father_id, &st, cha, Unif.CopySubstList(subst), f.Copy(), node_id, original_node_id)
			return true
		}
	}
	return false
}

func (ds *destructiveSearch) searchContradiction(atomic AST.Form, father_id uint64, st State, cha Communication, node_id int, original_node_id int) bool {
	// Search for a contradiction in LF
	if Glob.GetAssisted() {
		return false
	}
	Glob.PrintDebug("PS", fmt.Sprintf("##### Formula %v #####", atomic.ToString()))
	clos_res, subst := ApplyClosureRules(atomic, &st)
	fAt := Core.MakeFormAndTerm(atomic, Lib.MkList[AST.Term](0))

	if clos_res {
		ds.ManageClosureRule(father_id, &st, cha, Unif.CopySubstList(subst), fAt, node_id, original_node_id)
		return true
	}
	return false
}

/**
* ProofSearch
* Search algorithm (Tableaux method)
* n : number of gamma rule available
* st : State, the current search State
* c : channel to send the answer to the father
* s : substitution to apply to the current State
* subst_found : Unif.Substitutions found by this process
**/
func (ds *destructiveSearch) ProofSearch(father_id uint64, st State, cha Communication, s Core.SubstAndForm, node_id int, original_node_id int, meta_to_reintroduce []int, post_dmt_step bool) {
	Glob.PrintDebug("PS", "---------- New search step ----------")
	Glob.PrintDebug("PS", fmt.Sprintf("Child of %v - node id : %v - original node id : %v", father_id, node_id, original_node_id))
	Glob.PrintDebug("PS", fmt.Sprintf("Meta to reintroduce: %v", Glob.IntListToString(meta_to_reintroduce)))

	if Glob.GetProof() {
		st.SetCurrentProofNodeId(node_id)
	}

	// Select to check kill order
	select {
	case quit := <-cha.quit:
		ds.manageQuitOrder(quit, cha, father_id, st, nil, st.GetSubstsFound(), node_id, original_node_id, nil, meta_to_reintroduce)
	default:
		// Apply subst if needed
		if !s.IsEmpty() {
			Glob.PrintDebug("PS", fmt.Sprintf("Apply Substitution : %v", s.ToString()))
			ApplySubstitution(&st, s)
			Glob.PrintDebug("PS", "Searching contradiction with new atomics")
			if ds.searchContradictionAfterApplySusbt(father_id, st, cha, node_id, original_node_id) {
				return
			}
		}

		// Print current state
		st.Print()
		if len(st.GetSubstsFound()) > 0 {
			Glob.PrintDebug("PS", fmt.Sprintf("Current substitutions list: %v", Unif.SubstListToString(Core.GetSubstListFromSubstAndFormList(st.GetSubstsFound()))))
		}
		Glob.PrintDebug("PS", fmt.Sprintf("Formulas to be added: %v", st.GetLF().ToString()))

		// Dispatch newly generated formulas into the right category
		Glob.PrintDebug("PS", "Dispatch")
		step_atomics := Core.MakeEmptyFormAndTermsList()
		for _, f := range st.GetLF() {
			if Core.ShowKindOfRule(f.GetForm()) == Core.Atomic {
				if searchObviousClosureRule(f.GetForm()) {
					ds.ManageClosureRule(father_id, &st, cha, []Unif.Substitutions{}, f, node_id, original_node_id)
					return
				}
				step_atomics = append(step_atomics, f)
			} else {
				st.DispatchForm(f.Copy())
			}
		}

		// DMT --- Retrieve atomics for DMT
		Glob.PrintDebug("PS", fmt.Sprintf("New atomics : %v", step_atomics.ToString()))
		atomics_dmt, atomics_non_dmt := ds.getAtomicsForDMT(step_atomics, &st, s, post_dmt_step)
		Glob.PrintDebug("PS", fmt.Sprintf("Atomics dmt : %v", atomics_dmt.ToString()))
		Glob.PrintDebug("PS", fmt.Sprintf("Atomics non-dmt : %v", atomics_non_dmt.ToString()))

		// Equality
		if EagerEq || (len(st.GetAlpha()) == 0 && len(st.GetDelta()) == 0 && len(st.GetBeta()) == 0) {
			if TryEquality(atomics_dmt, st, step_atomics, father_id, cha, node_id, original_node_id) {
				return
			}
		}

		// Retrieve new formulas to insert into the trees
		atomicsPlus := atomics_non_dmt.FilterLitPolarity(Core.Pos)
		atomicsMinus := atomics_non_dmt.FilterLitPolarity(Core.Neg)
		Glob.PrintDebug("PS", fmt.Sprintf("Atomic plus : %v", atomicsPlus.ToString()))
		Glob.PrintDebug("PS", fmt.Sprintf("Atomic minus : %v", atomicsMinus.ToString()))
		st.SetTreePos(st.GetTreePos().MakeDataStruct(st.GetAtomic().Merge(atomicsPlus).ExtractForms(), true))
		st.SetTreeNeg(st.GetTreeNeg().MakeDataStruct(st.GetAtomic().Merge(atomicsMinus).ExtractForms(), false))
		for _, f := range atomics_non_dmt {
			st.DispatchForm(f)
		}

		for _, f := range atomicsPlus {
			if ds.searchContradiction(f.GetForm().Copy(), father_id, st, cha, node_id, original_node_id) {
				return
			}
		}
		for _, f := range atomicsMinus {
			if ds.searchContradiction(f.GetForm().Copy(), father_id, st, cha, node_id, original_node_id) {
				return
			}
		}

		Glob.PrintDebug("PS", "Tree Pos after insert:")
		st.GetTreePos().Print()
		Glob.PrintDebug("PS", "Tree Neg after insert:")
		st.GetTreeNeg().Print()
		Glob.PrintDebug("PS", "Let's apply rules !")
		Glob.PrintDebug("PS", fmt.Sprintf("LF before applyRules : %v", st.GetLF().ToString()))

		// DoCorrectApplyRules is defined by default as ApplyRules, or to ApplyRulesAssisted if assisted flag is given.
		go ds.doCorrectApplyRules(father_id, st, cha, atomics_dmt, node_id, original_node_id, meta_to_reintroduce)
	}
}

var TryEquality = func(atomics_for_dmt Core.FormAndTermsList, st State, new_atomics Core.FormAndTermsList, father_id uint64, cha Communication, node_id int, original_node_id int) bool {
	return false
}

/** Filter Atomics for DMT
* last condition to don't loop on the same formula
* We can rewrite iff :
* i is not the last element
* or we're not in bt formula mode
* or the subst to apply is empty
* = !(i is last and getBtOnFOrm and subst not null)
**/
func (ds *destructiveSearch) getAtomicsForDMT(new_atomics Core.FormAndTermsList, st *State, s Core.SubstAndForm, post_dmt_step bool) (Core.FormAndTermsList, Core.FormAndTermsList) {
	if post_dmt_step {
		return Core.MakeEmptyFormAndTermsList(), new_atomics
	} else {
		atomics_dmt := Core.MakeEmptyFormAndTermsList()
		atomics_no_dmt := Core.MakeEmptyFormAndTermsList()
		for _, f := range new_atomics {
			if Glob.IsLoaded("dmt") && !(st.GetBTOnFormulas() && !s.IsEmpty()) { // TODO : no DMT flag
				atomics_dmt = append(atomics_dmt, f)
			} else {
				atomics_no_dmt = append(atomics_no_dmt, f)
			}
		}
		return atomics_dmt, atomics_no_dmt
	}
}

/** Waits for its children to end, and manages their return status. */
func (ds *destructiveSearch) waitChildren(args wcdArgs) {
	args.printDebugMessages()

	select {
	case quit := <-args.c.quit:
		WriteExchanges(args.fatherId, args.st, args.givenSubsts, args.currentSubst, "WaitChildren - Die")
		ds.manageQuitOrder(quit, args.c, args.fatherId, args.st, args.children, args.givenSubsts, args.nodeId, args.originalNodeId, args.childOrdering, args.toReintroduce)
		return
	default:
		Glob.PrintDebug("WC", fmt.Sprintf("Current substs : %v", args.currentSubst.GetSubst().ToString()))
		status, substs, proofs, unifiers := ds.selectChildren(args.c, &args.children, args.currentSubst, args.childOrdering)
		Glob.PrintDebug("WC", fmt.Sprintf("End of select - resulting substs : %v ", Core.SubstAndFormListToString(substs)))
		if status == CLOSE_BY_ITSELF || status == SUBST_FOR_PARENT {
			// Updates the Glob unifier using the children's. Every substitution is compatible.
			args.st.SetGlobUnifier(Core.MergeUnifierList(unifiers))
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
			WriteExchanges(args.fatherId, args.st, args.givenSubsts, args.currentSubst, "WaitChildren - Die")
			Glob.PrintDebug("WC", "Closing order received")
			ds.manageQuitOrder(true, args.c, args.fatherId, args.st, args.children, []Core.SubstAndForm{}, args.nodeId, args.originalNodeId, args.childOrdering, args.toReintroduce)
		case WAIT:
			WriteExchanges(args.fatherId, args.st, args.givenSubsts, args.currentSubst, "WaitChildren - Wait father")
			Glob.PrintDebug("WC", "Closing order received, let's wait father")
			closeChildren(&args.children, true)
			ds.waitFather(args.fatherId, args.st, args.c, args.givenSubsts, args.nodeId, args.originalNodeId, args.childOrdering, args.toReintroduce)
		case OPENED:
			ds.manageOpenedChild(args)
		}

		if err != nil {
			Glob.PrintError("WC", "Error when waiting for children. It should be an error when merging substitutions. What to do?")
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
func (ds *destructiveSearch) waitFather(father_id uint64, st State, c Communication, given_substs []Core.SubstAndForm, node_id int, original_node_id int, child_order []int, meta_to_reintroduce []int) {
	Glob.PrintDebug("WF", "Wait father")

	// CLear subst found
	st.SetSubstsFound([]Core.SubstAndForm{})

	select {
	case quit := <-c.quit:
		WriteExchanges(father_id, st, given_substs, Core.MakeEmptySubstAndForm(), "WaitFather - Die")
		ds.manageQuitOrder(quit, c, father_id, st, []Communication{}, given_substs, node_id, original_node_id, child_order, meta_to_reintroduce)
		return

	case answer_father := <-c.result:
		subst := answer_father.getSubstForChildren()

		// Update to prune everything that shouldn't happen.
		WriteExchanges(father_id, st, given_substs, subst, "WaitFather")
		Glob.PrintDebug("WF", fmt.Sprintf("Substition received : %v", subst.ToString()))

		// Check if the subst was already seen, returns eventually the subst with new formula(s)
		if Unif.ContainsSubst(Core.GetSubstListFromSubstAndFormList(given_substs), answer_father.subst_for_children.GetSubst()) {
			Glob.PrintDebug("WF", "This substitution was sent by this child")
			for _, subst_sent := range given_substs {
				if subst_sent.GetSubst().Equals(answer_father.subst_for_children.GetSubst()) {
					subst = answer_father.getSubstForChildren().AddFormulas(subst_sent.GetForm())
				}
			}
			unifier := st.GetGlobUnifier()
			unifier.PruneUncompatibleSubstitutions(subst.GetSubst())
			if unifier.IsEmpty() {
				unifier.AddSubstitutions(st.GetAppliedSubst().GetSubst(), st.GetAppliedSubst().GetSubst())
			}
			st.SetGlobUnifier(unifier)
			st.SetSubstsFound([]Core.SubstAndForm{subst})
			ds.sendSubToFather(c, true, true, father_id, st, given_substs, node_id, original_node_id, meta_to_reintroduce)
		} else {

			// A substitution is chosen. As free variables are kept inside the terms, we need to apply the substitution on the code tree
			// kept in the state.
			newAtomics := Core.ApplySubstitutionsOnFormAndTermsList(subst.GetSubst(), st.GetAtomic())
			st.SetTreePos(st.GetTreePos().MakeDataStruct(newAtomics.ExtractForms(), true))
			x := st.GetTreeNeg()
			x2 := newAtomics.ExtractForms()
			x1 := x.MakeDataStruct(x2, false)
			st.SetTreeNeg(x1)

			// Maj forbidden
			if len(answer_father.forbidden) > 0 {
				Glob.PrintDebug("WF", fmt.Sprintf("Forbidden received : %v", Unif.SubstListToString(answer_father.getForbiddenSubsts())))
				st.SetForbiddenSubsts(answer_father.getForbiddenSubsts())
				Glob.PrintDebug("WF", fmt.Sprintf("New forbidden fo this state : %v", Unif.SubstListToString(st.GetForbiddenSubsts())))
			} else {
				// Retrieve meta from the subst sent by my father
				meta_sisters := st.GetMM()
				subst := answer_father.subst_for_children.GetSubst()
				for _, m := range Core.GetMetaFromSubst(subst).GetSlice() {
					// If the meta is not a meta current for the process
					if !Lib.ListMem(m, st.GetMC()) {
						meta_sisters = Lib.ListAdd(meta_sisters, m)
					}
				}
				// Set to MM
				st.SetMM(meta_sisters)
				Glob.PrintDebug("WF", fmt.Sprintf(
					"MC after sisters : %v",
					Lib.ListToString(meta_sisters, ",", "[]"),
				))
			}

			father_subst := answer_father.subst_for_children.GetSubst()
			meta_to_reintroduce_from_subt := retrieveMetaFromSubst(father_subst)
			new_meta_to_reintroduce := Glob.InterIntList(meta_to_reintroduce, meta_to_reintroduce_from_subt)

			// Special case: the current node is a rewriting node.
			// As such, this rule can not be applied back.
			// Thus, we always need to put the rewrite rule in first, so apply subst on it + no overwrite
			is_rewrite := st.GetCurrentProof().Rule == "Rewrite"

			if is_rewrite {
				prf := st.GetCurrentProof()
				prf.Formula = Core.MakeFormAndTerm(
					Core.ApplySubstitutionsOnFormula(father_subst, prf.Formula.GetForm()),
					prf.Formula.Terms,
				)
				for i, test := range prf.Result_formulas {
					prf.Result_formulas[i] = MakeIntFormAndTermsList(
						test.GetI(),
						Core.ApplySubstitutionsOnFormAndTermsList(father_subst, test.GetFL()),
					)
				}
			}

			st_copy := st.Copy()
			st_copy.SetGlobUnifier(Core.MakeUnifier())

			c2 := Communication{make(chan bool), make(chan Result)}

			Glob.PrintDebug("WF", fmt.Sprintf("Apply substitution on myself and wait : %v", answer_father.getSubstForChildren().GetSubst().ToString()))
			Glob.PrintDebug("WF", fmt.Sprintf("Forbidden : %v", Unif.SubstListToString(st_copy.GetForbiddenSubsts())))
			go ds.ProofSearch(Glob.GetGID(), st_copy, c2, answer_father.getSubstForChildren(), node_id, original_node_id, new_meta_to_reintroduce, false)
			Glob.IncrGoRoutine(1)

			Glob.PrintDebug("WF", "GO !")
			st.SetBTOnFormulas(false)
			ds.waitChildren(MakeWcdArgs(father_id, st, c, []Communication{c2}, given_substs, answer_father.getSubstForChildren(), []Core.SubstAndForm{}, []Core.IntSubstAndFormAndTerms{}, node_id, original_node_id, true, []int{original_node_id}, meta_to_reintroduce))
		}
	}
}

/* Manage quit or wait father order. Return true if the process is supposed to die at the end */
func (ds *destructiveSearch) manageQuitOrder(quit bool, c Communication, father_id uint64, st State, children []Communication, given_substs []Core.SubstAndForm, node_id int, original_node_id int, child_order []int, meta_to_reintroduce []int) {
	if len(children) > 0 {
		closeChildren(&children, true)
	}
	if quit {
		Glob.PrintDebug("MQO", "Closing order received")
		Glob.PrintDebug("MQO", "Die")
	} else {
		Glob.PrintDebug("MQO", "Closing order received, let's wait father")
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

[]Core.SubstAndForm : substitutions list
*/
func (ds *destructiveSearch) selectChildren(father Communication, children *[]Communication, current_subst Core.SubstAndForm, child_order []int) (int, []Core.SubstAndForm, [][]ProofStruct, []Core.Unifier) {

	proof_tab := make([][]ProofStruct, len(child_order))

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
	result_subst := []Core.SubstAndForm{}
	common_substs := []Core.SubstAndForm{}
	unifiers := []Core.Unifier{}

	// Counters
	cpt_children_returning_subst := 0
	cpt_remaining_children := len(*children)
	current_subst_seen := false
	new_current_subst := current_subst.Copy()

	// Until all the children have answered
	for cpt_remaining_children > 0 && result_int < QUIT {
		Glob.PrintDebug("SLC", fmt.Sprintf("Size of remaining children : %v", cpt_remaining_children))

		index, value, _ := reflect.Select(cases)
		Glob.PrintDebug("SLC", "Answer received")

		// Manage quit order
		if index == index_quit {
			Glob.PrintDebug("SLC", "Quit order")
			if !value.Interface().(bool) {
				Glob.PrintDebug("SLC", "Quit order says to wait father")
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
			Glob.PrintDebug("SLC", fmt.Sprintf("Child %v has finished", res.id))
			if !res.need_answer {
				Glob.PrintDebug("SLC", fmt.Sprintf("Child %v die", res.id))
				*children = removeChildren(*children, index)
			}

			// Manage the substitution sent by this child
			if res.closed {
				unif := res.getUnifier()
				unifiers = append(unifiers, unif)

				if len(res.subst_list_for_father) != 0 {
					Glob.PrintDebug("SLC", fmt.Sprintf("The child %v has %v substitution(s) !", res.id, len(res.subst_list_for_father)))

					if len(res.subst_list_for_father) == 1 && res.subst_list_for_father[0].GetSubst().Equals(current_subst.GetSubst()) {
						Glob.PrintDebug("SLC", fmt.Sprintf("The child %v returns the current subst !", res.id))
						current_subst_seen = true
						// Children sent the same substitution, eventually with new forms
						new_current_subst = current_subst.AddFormulas(res.subst_list_for_father[0].GetForm())
					} else {
						// Reset at each step
						common_substs = []Core.SubstAndForm{}

						// Check if there is common substitutions
						for _, current_subst_from_children := range res.subst_list_for_father {
							for i := range result_subst {
								if current_subst_from_children.GetSubst().Equals(result_subst[i].GetSubst()) {
									Glob.PrintDebug("SLC", fmt.Sprintf("Subst in common found : %v !", current_subst_from_children.GetSubst().ToString()))
									common_substs = append(common_substs, result_subst[i].AddFormulas(current_subst_from_children.GetForm()))
								}
							}
						}

						// Add new subst to result subst
						for _, v := range res.subst_list_for_father {
							Glob.PrintDebug("SLC", fmt.Sprintf("Check if the substitution was already found by another child : %v\n", v.ToString()))
							if !v.GetSubst().Equals(new_current_subst.GetSubst()) {
								added := false
								Glob.PrintDebug("SLC", fmt.Sprintf("Result_subst :%v", Unif.SubstListToString(Core.GetSubstListFromSubstAndFormList(result_subst))))
								for i := range result_subst {
									if v.GetSubst().Equals(result_subst[i].GetSubst()) {
										added = true
										Glob.PrintDebug("SLC", "Subst already in result_subst")
										result_subst[i] = result_subst[i].AddFormulas(v.GetForm())
									}
								}

								if !added {
									Glob.PrintDebug("SLC", fmt.Sprintf("New susbt found : %v", v.ToString()))
									result_subst = Core.AppendIfNotContainsSubstAndForm(result_subst, v)
									Glob.PrintDebug("SLC", fmt.Sprintf("New result susbt : %v", Unif.SubstListToString(Core.GetSubstListFromSubstAndFormList(result_subst))))
								}
							}
						}
						cpt_children_returning_subst++
					}
				}

			} else {
				// Signal to children to stop and wait father for a new order
				Glob.PrintDebug("SLC", fmt.Sprintf("Open child found : %v ! - tell to remaining children to wait father", res.id))
				result_int = OPENED
			}
		}
	}

	Glob.PrintDebug("SLC", fmt.Sprintf("All answer received - subst_for_children : %v", len(result_subst)))

	if result_int < QUIT {
		switch cpt_children_returning_subst {
		case 0:
			if current_subst_seen {
				// A child returns current subst and the other nothing
				Glob.PrintDebug("SLC", "One on more children returns the current subst")
				result_int = SUBST_FOR_PARENT
				result_subst = append(result_subst, new_current_subst)
			} else {
				result_int = CLOSE_BY_ITSELF
			}
		case 1:
			// A child returns subst(s)
			Glob.PrintDebug("SLC", "A child returns new subst(s)")
			result_int = SUBST_FOR_PARENT

			// Merge the subst with current subst (if not empty)
			if !new_current_subst.IsEmpty() {
				new_result_subst := []Core.SubstAndForm{}
				for _, s := range result_subst {
					if !s.GetSubst().Equals(new_current_subst.GetSubst()) {
						err, new_subst := Core.MergeSubstAndForm(s.Copy(), new_current_subst.Copy())

						if err != nil {
							Glob.PrintError("SLC", "Error when merging substitutions. What to do?")
						}

						new_result_subst = append(new_result_subst, new_subst)
					}
				}
				result_subst = Core.CopySubstAndFormList(new_result_subst)
			}
			Glob.PrintDebug("SLC", fmt.Sprintf("New subst at the end : %v", Unif.SubstListToString(Core.GetSubstListFromSubstAndFormList(result_subst))))
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

	result_subst = Core.RemoveEmptySubstFromSubstAndFormList(result_subst)

	return result_int, result_subst, proof_tab, unifiers
}

func (ds *destructiveSearch) DoEndManageBeta(fatherId uint64, state State, c Communication, channels []Communication, currentNodeId int, originalNodeId int, childIds []int, metaToReintroduce []int) {
	ds.waitChildren(MakeWcdArgs(fatherId, state, c, channels, []Core.SubstAndForm{}, Core.MakeEmptySubstAndForm(), []Core.SubstAndForm{}, []Core.IntSubstAndFormAndTerms{}, currentNodeId, originalNodeId, false, childIds, metaToReintroduce))
}

func (ds *destructiveSearch) manageRewriteRules(fatherId uint64, state State, c Communication, newAtomics Core.FormAndTermsList, currentNodeId int, originalNodeId int, metaToReintroduce []int) {
	Glob.PrintDebug("PS", "Try rewrite rule")
	Glob.PrintDebug("PS - MRR", fmt.Sprintf("Id : %v, original node id :%v", currentNodeId, originalNodeId))
	remainingAtomics := newAtomics.Copy()

	// For each atomic
	for len(remainingAtomics) > 0 {
		Glob.PrintDebug("PS", "Remaining atomic > 0")

		// Take the first element in the list of atomics
		f := remainingAtomics[0].Copy()
		remainingAtomics = remainingAtomics[1:].Copy()
		Glob.PrintDebug("PS", fmt.Sprintf("Choose : %v", f.ToString()))
		Glob.PrintDebug("PS", fmt.Sprintf("Remaining atomics %v", remainingAtomics.ToString()))

		// If f is in atomic, that means we couldn't rewrite it, so it's useless to check
		if !state.GetAtomic().Contains(f) && Glob.IsLoaded("dmt") {
			if rewritten, err := dmt.Rewrite(f.GetForm()); err == nil {
				shouldReturn := ds.tryRewrite(rewritten, f, &state, remainingAtomics, fatherId, c, currentNodeId, originalNodeId, metaToReintroduce)
				if shouldReturn {
					return
				}
			} else {
				Glob.PrintError("DMT", err.Error())
			}
		}
	}

	//If no rewriting has been found, perform an "empty" step with unused axioms
	ds.ProofSearch(fatherId, state, c, Core.MakeEmptySubstAndForm(), currentNodeId, originalNodeId, []int{}, true)
}

// ILL TODO: check if this function does not make the DMT version lose completeness: is the original formula that's rewritten still in the branch or not?
func (ds *destructiveSearch) tryRewrite(rewritten []Core.IntSubstAndForm, f Core.FormAndTerms, state *State, remainingAtomics Core.FormAndTermsList, fatherId uint64, c Communication, currentNodeId int, originalNodeId int, metaToReintroduce []int) bool {
	Glob.PrintDebug("PS", fmt.Sprintf("Try to rewrite into :  %v", Core.IntSubstAndFormListToString(rewritten)))

	newRewritten := []Core.IntSubstAndFormAndTerms{}
	for _, isaf := range rewritten {
		newFNTs := Core.MakeEmptyFormAndTermsList()
		for _, isaf_f := range isaf.GetSaf().GetForm().Slice() {
			newFNTs = append(newFNTs, Core.MakeFormAndTerm(isaf_f, f.GetTerms()))
		}
		newRewritten = append(newRewritten, Core.MakeIntSubstAndFormAndTerms(isaf.GetId_rewrite(), Core.MakeSubstAndFormAndTerms(isaf.GetSaf().GetSubst(), newFNTs)))
	}

	// Keep all the possibility of rewriting and choose the first one
	choosenRewritten := newRewritten[0]
	choosenRewrittenForm := choosenRewritten.GetSaf().GetForm()[0].Copy()
	// Case with multiple formulas: we also have to copy rewritten[0] without the first formulas. This case cannot happen because of the DMT's code
	newRewritten = Core.CopyIntSubstAndFormAndTermsList(newRewritten[1:])

	// If we didn't rewrite as itself ?
	if !choosenRewritten.GetSaf().GetSubst().Equals(Unif.Failure()) {
		// Create a child with the current rewriting rule and make this process to wait for him, with a list of other subst to try
		// all atomics but not the chosen one
		state.SetLF(append(remainingAtomics.Copy(), choosenRewrittenForm.Copy()))
		state.SetBTOnFormulas(true) // I need to know that I can bt on form and my child needs to know it to to don't loop

		// Proof
		state.SetCurrentProofFormula(f)
		childNode := Glob.IncrCptNode()
		state.SetCurrentProofResultFormulas([]IntFormAndTermsList{MakeIntFormAndTermsList(childNode, Core.MakeSingleElementFormAndTermList(choosenRewrittenForm.Copy()))})
		state.SetCurrentProofRule("Rewrite")
		state.SetCurrentProofRuleName("Rewrite")
		state.SetCurrentProofIdDMT(choosenRewritten.GetId_rewrite())

		if choosenRewritten.GetSaf().GetSubst().IsEmpty() {
			choosenRewritten = Core.MakeEmptyIntSubstAndFormAndTerms()
		}

		otherState := state.Copy()
		otherState.SetBTOnFormulas(false)

		channelChild := Communication{make(chan bool), make(chan Result)}
		go ds.ProofSearch(Glob.GetGID(), otherState, channelChild, choosenRewritten.GetSaf().ToSubstAndForm(), childNode, childNode, []int{}, false)
		Glob.PrintDebug("PS", "GO !")
		Glob.IncrGoRoutine(1)
		ds.waitChildren(MakeWcdArgs(fatherId, *state, c, []Communication{channelChild}, []Core.SubstAndForm{}, choosenRewritten.GetSaf().ToSubstAndForm(), []Core.SubstAndForm{}, newRewritten, currentNodeId, originalNodeId, false, []int{childNode}, metaToReintroduce))
		return true
	} else {
		// No rewriting possible
		Glob.PrintDebug("PS", fmt.Sprintf("No rewriting possible, dispatch %v", f.ToString()))
		// Then add f in LF
		state.SetLF(state.GetLF().AppendIfNotContains(f.Copy()))

		return false
	}
}

//ILL TODO Clean the following function and be careful with the Coq output.
/**
* clos_res and subst are the result of applyClosureRule.
* Manage this result, dispatch the subst and recreate data structures.
* Return if the branch is closed without variable from its father
**/
func (ds *destructiveSearch) ManageClosureRule(father_id uint64, st *State, c Communication, substs []Unif.Substitutions, f Core.FormAndTerms, node_id int, original_node_id int) (bool, []Core.SubstAndForm) {

	mm := Lib.ListCpy(st.GetMM())
	subst := st.GetAppliedSubst().GetSubst()
	mm = Lib.ListAdd(mm, Core.GetMetaFromSubst(subst).GetSlice()...)
	substs_with_mm, substs_with_mm_uncleared, substs_without_mm := Core.DispatchSubst(Unif.CopySubstList(substs), mm)

	unifier := st.GetGlobUnifier()
	appliedSubst := st.GetAppliedSubst().GetSubst()

	switch {
	case len(substs) == 0:
		Glob.PrintDebug("MCR", "Branch closed by ¬⊤ or ⊥ or a litteral and its opposite!")

		if Glob.GetAssisted() {
			fmt.Printf("Branch can be closed by ¬⊤, ⊥ or a litteral and its opposite!\nApplying it automatically...\n")
		}

		st.SetSubstsFound([]Core.SubstAndForm{st.GetAppliedSubst()})

		// Proof
		st.SetCurrentProofRule("⊙")
		st.SetCurrentProofRuleName("CLOSURE")
		st.SetCurrentProofFormula(f.Copy())
		st.SetCurrentProofNodeId(node_id)
		st.SetCurrentProofResultFormulas([]IntFormAndTermsList{})
		st.SetProof(append(st.GetProof(), st.GetCurrentProof()))

		unifier.AddSubstitutions(appliedSubst, appliedSubst)
		st.SetGlobUnifier(unifier)

		// No new subst needed in the Glob unifier
		if !Glob.GetAssisted() {
			ds.sendSubToFather(c, true, false, Glob.GetGID(), *st, []Core.SubstAndForm{}, node_id, original_node_id, []int{})
		}

	case len(substs_without_mm) > 0:
		Glob.PrintDebug("MCR", fmt.Sprintf("Contradiction found (without mm) : %v", Unif.SubstListToString(substs_without_mm)))

		if Glob.GetAssisted() && !substs_without_mm[0].IsEmpty() {
			fmt.Printf("The branch can be closed by using a substitution which has no impact elsewhere!\nApplying it automatically : ")
			fmt.Printf("%v !\n", Unif.SubstListToString(substs_without_mm))
		}

		st.SetSubstsFound([]Core.SubstAndForm{st.GetAppliedSubst()})

		// Proof
		st.SetCurrentProofRule(fmt.Sprintf("⊙ / %v", substs_without_mm[0].ToString()))
		st.SetCurrentProofRuleName("CLOSURE")
		st.SetCurrentProofFormula(f.Copy())
		st.SetCurrentProofNodeId(node_id)
		st.SetCurrentProofResultFormulas([]IntFormAndTermsList{})
		st.SetProof(append(st.GetProof(), st.GetCurrentProof()))

		// As no MM is involved, these substitutions can be unified with all the others having an empty subst.
		for _, subst := range substs_without_mm {
			merge, _ := Unif.MergeSubstitutions(appliedSubst, subst)
			unifier.AddSubstitutions(appliedSubst, merge)
		}
		st.SetGlobUnifier(unifier)
		if !Glob.GetAssisted() {
			ds.sendSubToFather(c, true, false, Glob.GetGID(), *st, []Core.SubstAndForm{}, node_id, original_node_id, []int{})
		}

	case len(substs_with_mm) > 0:
		Glob.PrintDebug("MCR", "Contradiction found (with mm) !")

		// TODO : REMOVE vu qu fait dans wait father ?
		st.SetCurrentProofRule("⊙")
		st.SetCurrentProofRuleName("CLOSURE")
		st.SetCurrentProofFormula(f.Copy())
		st.SetCurrentProofNodeId(node_id)
		st.SetCurrentProofResultFormulas([]IntFormAndTermsList{})
		st.SetProof(append(st.GetProof(), st.GetCurrentProof()))
		meta_to_reintroduce := []int{}

		for _, subst_for_father := range substs_with_mm {
			// Check if subst_for_father is failure
			if subst_for_father.Equals(Unif.Failure()) {
				Glob.PrintError("MCR", fmt.Sprintf("Error : SubstForFather is failure between : %v and %v \n", subst_for_father.ToString(), st.GetAppliedSubst().ToString()))
			}
			Glob.PrintDebug("MCR", fmt.Sprintf("Formula = : %v", f.ToString()))

			// Create substAndForm with the current form and the subst found
			subst_and_form_for_father := Core.MakeSubstAndForm(subst_for_father, AST.NewFormList(f.GetForm()))

			Glob.PrintDebug("MCR", fmt.Sprintf("SubstAndForm created : %v", subst_and_form_for_father.ToString()))

			// Merge with applied subst (if any)
			err, subst_and_form_for_father := Core.MergeSubstAndForm(subst_and_form_for_father.Copy(), st.GetAppliedSubst())

			if err != nil {
				Glob.PrintError("MCR", "Contradiction found between applied subst and child subst. What to do?")
			} else {

				st.SetSubstsFound(Core.AppendIfNotContainsSubstAndForm(st.GetSubstsFound(), subst_and_form_for_father))
			}

			meta_to_reintroduce = Glob.UnionIntList(meta_to_reintroduce, retrieveMetaFromSubst(subst_for_father))
		}

		if Glob.GetAssisted() {
			return true, st.GetSubstsFound()
		} else {
			Glob.PrintDebug("MCR", fmt.Sprintf("Subst found now : %v", Core.SubstAndFormListToString(st.GetSubstsFound())))
			Glob.PrintDebug("MCR", fmt.Sprintf("Send subst(s) with mm to father : %v", Unif.SubstListToString(Core.GetSubstListFromSubstAndFormList(st.GetSubstsFound()))))
			sort.Ints(meta_to_reintroduce)

			// Add substs_with_mm found with the corresponding subst
			for i, subst := range substs_with_mm {
				mergeUncleared, _ := Unif.MergeSubstitutions(appliedSubst, substs_with_mm_uncleared[i])
				mergeCleared, _ := Unif.MergeSubstitutions(appliedSubst, subst)
				unifier.AddSubstitutions(mergeCleared, mergeUncleared)
			}
			st.SetGlobUnifier(unifier)
			ds.sendSubToFather(c, true, true, Glob.GetGID(), *st, []Core.SubstAndForm{}, node_id, original_node_id, meta_to_reintroduce)
		}
	}
	return false, []Core.SubstAndForm{}
}

/* Apply rules with priority (closure < rewrite < alpha < delta < closure with mm < beta < gamma) */
func (ds *destructiveSearch) applyRules(fatherId uint64, state State, c Communication, atomicDMT Core.FormAndTermsList, currentNodeId int, originalNodeId int, metaToReintroduce []int) {
	Glob.PrintDebug("AR", "ApplyRule")
	Glob.PrintDebug("AR", fmt.Sprintf("Id : %v, original node id :%v, Child of: %v", currentNodeId, originalNodeId, fatherId))
	state.Print()
	Glob.PrintDebug("PS", "Tree Pos:")
	state.GetTreePos().Print()
	Glob.PrintDebug("PS", "Tree Neg:")
	state.GetTreeNeg().Print()
	switch {
	case len(atomicDMT) > 0 && Glob.IsLoaded("dmt") && len(state.GetSubstsFound()) == 0:
		ds.manageRewriteRules(fatherId, state, c, atomicDMT, currentNodeId, originalNodeId, metaToReintroduce)

	case len(state.GetAlpha()) > 0:
		ds.manageAlphaRules(fatherId, state, c, originalNodeId)

	case len(state.GetDelta()) > 0:
		ds.manageDeltaRules(fatherId, state, c, originalNodeId)

	case len(state.GetBeta()) > 0:
		ds.manageBetaRules(fatherId, state, c, currentNodeId, originalNodeId, metaToReintroduce)

	case len(state.GetGamma()) > 0:
		ds.manageGammaRules(fatherId, state, c, originalNodeId)

	case len(state.GetMetaGen()) > 0 && state.CanReintroduce():
		ds.manageReintroductionRules(fatherId, state, c, originalNodeId, metaToReintroduce, atomicDMT, currentNodeId, true)

	default:
		WriteExchanges(fatherId, state, nil, Core.MakeEmptySubstAndForm(), "ApplyRules - SAT")
		state.SetCurrentProofRule("Sat")
		state.SetProof(append(state.GetProof(), state.GetCurrentProof()))
		Glob.PrintDebug("PS", "Nothing found, return sat")
		ds.sendSubToFather(c, false, false, fatherId, state, []Core.SubstAndForm{}, currentNodeId, originalNodeId, []int{})
	}
}

func (ds *destructiveSearch) manageAlphaRules(fatherId uint64, state State, c Communication, originalNodeId int) {
	Glob.PrintDebug("PS", "Alpha rule")
	hdf := state.GetAlpha()[0]
	Glob.PrintDebug("PS", fmt.Sprintf("Rule applied on : %s", hdf.ToString()))
	state.SetAlpha(state.GetAlpha()[1:])
	resultForms := ApplyAlphaRules(hdf, &state)
	state.SetLF(resultForms)

	// Proof
	state.SetCurrentProofFormula(hdf)
	childId := Glob.IncrCptNode()
	state.SetCurrentProofResultFormulas([]IntFormAndTermsList{MakeIntFormAndTermsList(childId, resultForms)})
	state.SetProof(append(state.GetProof(), state.GetCurrentProof()))

	ds.ProofSearch(fatherId, state, c, Core.MakeEmptySubstAndForm(), childId, originalNodeId, []int{}, false)
}

func (ds *destructiveSearch) manageDeltaRules(fatherId uint64, state State, c Communication, originalNodeId int) {
	Glob.PrintDebug("PS", "Delta rule")
	hdf := state.GetDelta()[0]
	Glob.PrintDebug("PS", fmt.Sprintf("Rule applied on : %s", hdf.ToString()))
	state.SetDelta(state.GetDelta()[1:])
	resultForms := ApplyDeltaRules(hdf, &state)
	state.SetLF(resultForms)

	// Proof
	state.SetCurrentProofFormula(hdf)
	childId := Glob.IncrCptNode()
	state.SetCurrentProofResultFormulas([]IntFormAndTermsList{MakeIntFormAndTermsList(childId, resultForms)})
	state.SetProof(append(state.GetProof(), state.GetCurrentProof()))

	ds.ProofSearch(fatherId, state, c, Core.MakeEmptySubstAndForm(), childId, originalNodeId, []int{}, false)
}

func (ds *destructiveSearch) manageBetaRules(fatherId uint64, state State, c Communication, currentNodeId int, originalNodeId int, metaToReintroduce []int) {
	Glob.PrintDebug("PS", "Beta rule")
	hdf := state.GetBeta()[0]
	Glob.PrintDebug("PS", fmt.Sprintf("Rule applied on : %s", hdf.ToString()))
	reslf := ApplyBetaRules(hdf, &state)
	childIds := []int{}

	// Proof
	state.SetCurrentProofFormula(hdf)

	intFormLists := []IntFormAndTermsList{}
	for _, fl := range reslf {
		intFormLists = append(intFormLists, MakeIntFormAndTermsList(Glob.IncrCptNode(), fl))
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
		if Glob.IsDestructive() {
			channelChild := Communication{make(chan bool), make(chan Result)}
			channels = append(channels, channelChild)
			go ds.ProofSearch(Glob.GetGID(), otherState, channelChild, Core.MakeEmptySubstAndForm(), fl.GetI(), fl.GetI(), []int{}, false)
		} else {
			go ds.ProofSearch(Glob.GetGID(), otherState, c, Core.MakeEmptySubstAndForm(), fl.GetI(), fl.GetI(), []int{}, false)
		}

		Glob.IncrGoRoutine(1)
		Glob.PrintDebug("PS", fmt.Sprintf("GO %v !", fl.GetI()))

	}

	ds.DoEndManageBeta(fatherId, state, c, channels, currentNodeId, originalNodeId, childIds, metaToReintroduce)
}

func (ds *destructiveSearch) manageGammaRules(fatherId uint64, state State, c Communication, originalNodeId int) {
	Glob.PrintDebug("PS", "Gamma rule")
	hdf := state.GetGamma()[0]
	Glob.PrintDebug("PS", fmt.Sprintf("Rule applied on : %s", hdf.ToString()))
	state.SetGamma(state.GetGamma()[1:])

	// Update MetaGen
	index, newMetaGen := Core.GetIndexMetaGenList(hdf, state.GetMetaGen())
	state.SetMetaGen(newMetaGen)
	newFnts, newMetas := ApplyGammaRules(hdf, index, &state)
	state.SetLF(newFnts)

	newMC := Lib.ListCpy(state.GetMC())
	newMC = Lib.ListAdd(newMC, newMetas.GetSlice()...)

	state.SetMC(newMC)

	if Glob.IsDestructive() {
		state.SetN(state.GetN() - 1)
	}

	// Proof
	state.SetCurrentProofFormula(hdf)
	childId := Glob.IncrCptNode()
	state.SetCurrentProofResultFormulas([]IntFormAndTermsList{MakeIntFormAndTermsList(childId, newFnts)})
	state.SetProof(append(state.GetProof(), state.GetCurrentProof()))

	ds.ProofSearch(fatherId, state, c, Core.MakeEmptySubstAndForm(), childId, originalNodeId, []int{}, false)
}

func (ds *destructiveSearch) manageReintroductionRules(fatherId uint64, state State, c Communication, originalNodeId int, metaToReintroduce []int, newAtomics Core.FormAndTermsList, currentNodeId int, reintroduceAnyway bool) {

	currentMTR := -1

	Glob.PrintDebug("PS", "Reintroduction")
	Glob.PrintDebug("PS", fmt.Sprintf("Meta to reintroduce : %s", Glob.IntListToString(metaToReintroduce)))
	newMetaGen := state.GetMetaGen()
	reslf := Core.ReintroduceMeta(&newMetaGen, currentMTR, state.GetN())
	Glob.PrintDebug("PS", fmt.Sprintf("Reintroduce the formula : %s", reslf.ToString()))
	state.SetLF(Core.MakeSingleElementFormAndTermList(reslf))

	// Update Meta Gen
	state.SetMetaGen(newMetaGen)

	// Proof
	childId := Glob.IncrCptNode()
	state.SetCurrentProofRule("Reintroduction")
	state.SetCurrentProofRuleName("Reintroduction")
	state.SetCurrentProofFormula(reslf)
	state.SetCurrentProofResultFormulas([]IntFormAndTermsList{MakeIntFormAndTermsList(childId, Core.MakeSingleElementFormAndTermList(reslf))})
	state.SetProof(append(state.GetProof(), state.GetCurrentProof()))

	ds.ProofSearch(fatherId, state, c, Core.MakeEmptySubstAndForm(), childId, originalNodeId, metaToReintroduce, false)
}

func (ds *destructiveSearch) manageResult(c Communication) (Core.Unifier, []ProofStruct, bool) {
	result := <-c.getResult()

	Glob.PrintDebug("MAIN", fmt.Sprintf("Proof : %v", ProofStructListToString(result.getProof())))

	if result.needsAnswer() {
		c.getQuit() <- true
		Glob.PrintDebug("MAIN", "Close order sent")
	} else {
		Glob.PrintDebug("MAIN", "Close order not sent")
	}

	return result.getUnifier(), result.getProof(), result.isClosed()
}
