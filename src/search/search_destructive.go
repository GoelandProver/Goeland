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
	"math/rand"
	"reflect"

	treetypes "github.com/GoelandProver/Goeland/code-trees/tree-types"
	"github.com/GoelandProver/Goeland/global"
	"github.com/GoelandProver/Goeland/plugins/equality"
	typing "github.com/GoelandProver/Goeland/polymorphism/typing"
	basictypes "github.com/GoelandProver/Goeland/types/basic-types"
	complextypes "github.com/GoelandProver/Goeland/types/complex-types"
	exchanges "github.com/GoelandProver/Goeland/visualization_exchanges"
	proof "github.com/GoelandProver/Goeland/visualization_proof"
)

const (
	CLOSE_BY_ITSELF    int = 0
	SUBST_FOR_PARENT       = 1
	SUBST_FOR_CHILDREN     = 2
	QUIT                   = 3
	WAIT                   = 4
	OPENED                 = 5
	ERROR                  = -1
)

/* Manage quit or wait father order. Return true if the process is supposed to die at the end */
func manageQuitOrder(quit bool, c Communication, father_id uint64, st complextypes.State, children []Communication, given_substs []complextypes.SubstAndForm, node_id int, original_node_id int, child_order []int, meta_to_reintroduce []int) {
	if len(children) > 0 {
		closeChildren(&children, true)
	}
	if quit {
		global.PrintDebug("MQO", "Closing order received")
		global.PrintDebug("MQO", "Die")
	} else {
		global.PrintDebug("MQO", "Closing order received, let's wait father")
		waitFather(father_id, st, c, given_substs, node_id, original_node_id, child_order, meta_to_reintroduce)
	}
}

/* Choose a substitution (backtrack) */
func tryBTSubstitution(spc *([]complextypes.SubstAndForm), mm basictypes.MetaList, children []Communication) complextypes.SubstAndForm {
	global.PrintDebug("TBTS", "Try another substitution.")
	next_subst, new_spc := chooseSubstitutionDestructive(complextypes.CopySubstAndFormList(*spc), mm)
	global.PrintDebug("TBTS", fmt.Sprintf("Choose the substitution : %v and send it to children", next_subst.ToString()))
	sendSubToChildren(children, next_subst)
	*spc = new_spc
	return next_subst
}

/* Choose a substitution among all the subst send by children - takes thoses who contains no mm first */
func chooseSubstitutionDestructive(subst_list []complextypes.SubstAndForm, mm []basictypes.Meta) (complextypes.SubstAndForm, []complextypes.SubstAndForm) {
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
func selectChildren(father Communication, children *[]Communication, current_subst complextypes.SubstAndForm, child_order []int) (int, []complextypes.SubstAndForm, [][]proof.ProofStruct) {

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
				if children_node_id == res.GetOriginalNodeId() {
					index_children = i
					break
				}
			}

			proof_tab[index_children] = res.GetProof()

			// Remove children from waiting children
			global.PrintDebug("SLC", fmt.Sprintf("Child %v has finished", res.id))
			if !res.need_answer {
				global.PrintDebug("SLC", fmt.Sprintf("Child %v die", res.id))
				*children = removeChildren(*children, index)
			}

			// Manage the substitution sent by this child
			if res.closed {
				if len(res.subst_list_for_father) != 0 {
					global.PrintDebug("SLC", fmt.Sprintf("The child %v has %v substitution(s) !", res.id, len(res.subst_list_for_father)))

					if len(res.subst_list_for_father) == 1 && res.subst_list_for_father[0].GetSubst().Equals(current_subst.GetSubst()) {
						global.PrintDebug("SLC", fmt.Sprintf("The child %v returns the current subst !", res.id))
						current_subst_seen = true
						// Children sent the same substitution, eventually with new forms
						new_current_subst = current_subst.AddFormulas(res.subst_list_for_father[0].GetForm())
					} else {
						// Reseat at each step
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

	return result_int, result_subst, proof_tab
}

/**
* WaitFather
* a node wait an order from its father
* Datas :
*	father_id : father's id (debug)
* 	st : state, the current search state
* 	c : channel to communicate with father
* 	children : list of children
* 	given_substs : subst send by this node to its father
**/
func waitFather(father_id uint64, st complextypes.State, c Communication, given_substs []complextypes.SubstAndForm, node_id int, original_node_id int, child_order []int, meta_to_reintroduce []int) {
	global.PrintDebug("WF", "Wait father")

	// CLear subst found
	st.SetSubstsFound([]complextypes.SubstAndForm{})

	select {
	case quit := <-c.quit:
		exchanges.WriteExchanges(father_id, st, given_substs, complextypes.SubstAndForm{}, "WaitFather - Die")
		manageQuitOrder(quit, c, father_id, st, []Communication{}, given_substs, node_id, original_node_id, child_order, meta_to_reintroduce)
		return

	case answer_father := <-c.result:
		subst := answer_father.GetSubstForChildren()
		exchanges.WriteExchanges(father_id, st, given_substs, subst, "WaitFather")
		global.PrintDebug("WF", fmt.Sprintf("Substition received : %v", subst.ToString()))

		// A substitution is chosen. As free variables are kept inside the terms, we need to apply the substitution on the code tree
		// kept in the state.
		newAtomics := complextypes.ApplySubstitutionsOnFormAndTermsList(subst.GetSubst(), st.GetAtomic())
		st.SetTreePos(st.GetTreePos().MakeDataStruct(newAtomics.ExtractForms(), true))
		st.SetTreeNeg(st.GetTreeNeg().MakeDataStruct(newAtomics.ExtractForms(), false))

		// Check if the subst was already seen, returns eventually the subst with new formula(s)
		if treetypes.ContainsSubst(complextypes.GetSubstListFromSubstAndFormList(given_substs), answer_father.subst_for_children.GetSubst()) {
			global.PrintDebug("WF", "This substitution was sent by this child")
			for _, subst_sent := range given_substs {
				if subst_sent.GetSubst().Equals(answer_father.subst_for_children.GetSubst()) {
					subst = answer_father.GetSubstForChildren().AddFormulas(subst_sent.GetForm())
				}
			}

			st.SetSubstsFound([]complextypes.SubstAndForm{subst})
			sendSubToFather(c, true, true, father_id, st, given_substs, node_id, original_node_id, meta_to_reintroduce)
		} else {

			// Maj forbidden
			if len(answer_father.forbidden) > 0 {
				global.PrintDebug("WF", fmt.Sprintf("Forbidden received : %v", treetypes.SubstListToString(answer_father.GetForbiddenSubsts())))
				st.SetForbiddenSubsts(answer_father.GetForbiddenSubsts())
				global.PrintDebug("WF", fmt.Sprintf("New forbidden fo this state : %v", treetypes.SubstListToString(st.GetForbiddenSubsts())))
			} else {
				// Retrieve meta from the subst sent by my father
				meta_sisters := st.GetMM()
				for _, m := range complextypes.GetMetaFromSubst(answer_father.subst_for_children.GetSubst()) {
					if !st.GetMC().Contains(m) { // If the meta is not a meta current for the process
						meta_sisters = meta_sisters.AppendIfNotContains(m)
					}
				}
				// Set to MM
				st.SetMM(meta_sisters)
				global.PrintDebug("WF", fmt.Sprintf("MC after sisters : %v", meta_sisters.ToString()))
			}

			meta_to_reintroduce_from_subt := retrieveMetaFromSubst(answer_father.subst_for_children.GetSubst())
			new_meta_to_reintroduce := global.InterIntList(meta_to_reintroduce, meta_to_reintroduce_from_subt)

			st_copy := st.Copy()
			c2 := Communication{make(chan bool), make(chan Result)}

			global.PrintDebug("WF", fmt.Sprintf("Apply substitution on myself and wait : %v", answer_father.GetSubstForChildren().GetSubst().ToString()))
			global.PrintDebug("WF", fmt.Sprintf("Forbidden : %v", treetypes.SubstListToString(st_copy.GetForbiddenSubsts())))
			go ProofSearch(global.GetGID(), st_copy, c2, answer_father.GetSubstForChildren(), node_id, original_node_id, new_meta_to_reintroduce)
			global.IncrGoRoutine(1)

			global.PrintDebug("WF", "GO !")
			st.SetBTOnFormulas(false)
			waitChildren(MakeWcdArgs(father_id, st, c, []Communication{c2}, given_substs, answer_father.GetSubstForChildren(), []complextypes.SubstAndForm{}, []complextypes.IntSubstAndFormAndTerms{}, node_id, original_node_id, true, []int{original_node_id}, meta_to_reintroduce))
		}
	}
}

/** Waits for its children to end, and manages their return status. */
func waitChildren(args wcdArgs) {
	args.printDebugMessages()

	select {
	case quit := <-args.c.quit:
		exchanges.WriteExchanges(args.fatherId, args.st, args.givenSubsts, args.currentSubst, "WaitChildren - Die")
		manageQuitOrder(quit, args.c, args.fatherId, args.st, args.children, args.givenSubsts, args.nodeId, args.originalNodeId, args.childOrdering, args.toReintroduce)
		return
	default:
		global.PrintDebug("WC", fmt.Sprintf("Current substs : %v", args.currentSubst.GetSubst().ToString()))
		status, substs, proofs := selectChildren(args.c, &args.children, args.currentSubst, args.childOrdering)
		global.PrintDebug("WC", fmt.Sprintf("End of select - resulting substs : %v ", complextypes.SubstAndFormListToString(substs)))
		var err error

		switch status {
		case CLOSE_BY_ITSELF:
			err = childrenClosedByThemselves(args, proofs)
		case SUBST_FOR_PARENT:
			err = passSubstToParent(args, proofs, substs)
		case SUBST_FOR_CHILDREN:
			passSubstToChildren(args, substs)
		case QUIT:
			exchanges.WriteExchanges(args.fatherId, args.st, args.givenSubsts, args.currentSubst, "WaitChildren - Die")
			global.PrintDebug("WC", "Closing order received")
			manageQuitOrder(true, args.c, args.fatherId, args.st, args.children, []complextypes.SubstAndForm{}, args.nodeId, args.originalNodeId, args.childOrdering, args.toReintroduce)
		case WAIT:
			exchanges.WriteExchanges(args.fatherId, args.st, args.givenSubsts, args.currentSubst, "WaitChildren - Wait father")
			global.PrintDebug("WC", "Closing order received, let's wait father")
			closeChildren(&args.children, true)
			waitFather(args.fatherId, args.st, args.c, args.givenSubsts, args.nodeId, args.originalNodeId, args.childOrdering, args.toReintroduce)
		case OPENED:
			manageOpenedChild(args)
		}

		if err != nil {
			global.PrintError("WC", "Error when waiting for children. It should be an error when merging substitutions. What to do?")
		}
	}
}

/**
* ProofSearchDestructive
* Search algorithm (Tableaux method)
* n : number of gamma rule available
* st : state, the current search state
* c : channel to send the answer to the father
* s : substitution to apply to the current state
**/
func proofSearchDestructive(father_id uint64, st complextypes.State, cha Communication, s complextypes.SubstAndForm, node_id int, original_node_id int, meta_to_reintroduce []int) {
	global.PrintDebug("PS", "---------- New search step ----------")
	global.PrintDebug("PS", fmt.Sprintf("Child of %v - node id : %v - original node id : %v", father_id, node_id, original_node_id))
	global.PrintDebug("PS", fmt.Sprintf("Meta to reintroduce: %v", global.IntListToString(meta_to_reintroduce)))

	if global.GetProof() {
		st.SetCurrentProofNodeId(node_id)
	}

	// Select to check kill order
	select {
	case quit := <-cha.quit:
		manageQuitOrder(quit, cha, father_id, st, nil, st.GetSubstsFound(), node_id, original_node_id, nil, meta_to_reintroduce)
	default:
		// Apply subst if any
		if !s.IsEmpty() {
			//st.SetCurrentProofRule(fmt.Sprintf("Apply substitution : %v", s.GetSubst().ToStringForProof()))
			//global.PrintDebug("PS", fmt.Sprintf("Apply Substitution : %v", s.ToString()))
			//complextypes.ApplySubstitution(&st, s)
			global.PrintDebug("PS", "Searching contradiction with new atomics")
			for _, f := range st.GetAtomic() {
				global.PrintDebug("PS", fmt.Sprintf("##### Formula %v #####", f.ToString()))
				// Check if exists a contradiction after applying the substitution
				clos_res_after_apply_subst, subst_after_apply_subst := applyClosureRules(f.GetForm(), &st)
				if clos_res_after_apply_subst {
					manageClosureRule(father_id, &st, cha, treetypes.CopySubstList(subst_after_apply_subst), f.Copy(), node_id, original_node_id)
					return
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
		atomicsPlus := complextypes.ApplySubstitutionsOnFormulaList(s.GetSubst(), st.GetLF().FilterPred(true))
		atomicsMinus := complextypes.ApplySubstitutionsOnFormulaList(s.GetSubst(), st.GetLF().FilterPred(false))
		st.SetTreePos(st.GetTreePos().InsertFormulaListToDataStructure(atomicsPlus))
		st.SetTreeNeg(st.GetTreeNeg().InsertFormulaListToDataStructure(atomicsMinus))

		/*
			global.PrintDebug("PS", "Tree pos : ")
			st.GetTreePos().Print()
			global.PrintDebug("PS", "Tree neg : ")
			st.GetTreeNeg().Print()*/

		for _, f := range st.GetLF() {
			if basictypes.ShowKindOfRule(f.GetForm()) != basictypes.Atomic {
				st.DispatchForm(f.Copy())
			}
		}

		lam := func(atomic basictypes.Form) (bool, basictypes.FormAndTerms) {
			// Search for a contradiction in LF
			if global.IsLoaded("equality") {
				equality.InsertPred(atomic)
			}
			global.PrintDebug("PS", fmt.Sprintf("##### Formula %v #####", atomic.ToString()))
			clos_res, subst := applyClosureRules(atomic, &st)
			fAt := basictypes.MakeFormAndTerm(atomic, basictypes.MakeEmptyTermList())

			if clos_res {
				manageClosureRule(father_id, &st, cha, treetypes.CopySubstList(subst), fAt, node_id, original_node_id)
				return false, basictypes.FormAndTerms{}
			}

			return true, fAt

			// Retrieve atomics generated at this step
		}

		new_atomics := basictypes.MakeEmptyFormAndTermsList()
		for _, f := range atomicsPlus {
			ok, newAtom := lam(f)
			if !ok {
				return
			}
			new_atomics = append(new_atomics, newAtom)
		}
		for _, f := range atomicsMinus {
			ok, newAtom := lam(basictypes.MakerNot(f))
			if !ok {
				return
			}
			new_atomics = append(new_atomics, newAtom)
		}

		/** Filter Atomics for DMT
		* last condition to don't loop on the same formula
		* We can rewrite iff :
		* i is not the last element
		* or we're not in bt formula mode
		* or the subst to apply is empty
		* = !(i is last and getBtOnFOrm and subst not null)
		**/
		atomics_for_dmt := getAtomicsForDMT(new_atomics, &st, s)

		/* Equality - ok because dmt do not apply on equalities */
		// Variation : do not apply if new_atomics not empty
		if global.IsLoaded("equality") && (!global.GetDMTBeforeEq() || len(atomics_for_dmt) == 0 || len(st.GetLF()) == 0) {
			global.PrintDebug("PS", "Try apply EQ !")
			if shouldApplyEquality(new_atomics, st) {
				global.PrintDebug("PS", "EQ is applicable !")
				atomics_plus_dmt := append(st.GetAtomic(), atomics_for_dmt...)
				res_eq, subst_eq := equality.EqualityReasoning(st.GetTreePos(), st.GetTreeNeg(), atomics_plus_dmt.ExtractForms())
				if res_eq {
					manageClosureRule(father_id, &st, cha, subst_eq, basictypes.MakeFormAndTerm(basictypes.MakerPred(basictypes.Id_eq, basictypes.MakeEmptyTermList(), []typing.TypeApp{}), basictypes.MakeEmptyTermList()), node_id, original_node_id)
					return
				}
			}
		}

		global.PrintDebug("PS", "Let's apply rules !")
		global.PrintDebug("PS", fmt.Sprintf("LF before applyRules : %v", atomics_for_dmt.ToString()))
		applyRules(father_id, st, cha, atomics_for_dmt, node_id, original_node_id, meta_to_reintroduce)
	}
}

func shouldApplyEquality(new_atomics basictypes.FormAndTermsList, st complextypes.State) bool {
	return len(new_atomics) > 0 || len(st.GetLF()) == 0
}

func getAtomicsForDMT(new_atomics basictypes.FormAndTermsList, st *complextypes.State, s complextypes.SubstAndForm) basictypes.FormAndTermsList {
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
