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
	basictypes "github.com/GoelandProver/Goeland/types/basic-types"
	complextypes "github.com/GoelandProver/Goeland/types/complex-types"
	exchanges "github.com/GoelandProver/Goeland/visualization_exchanges"
	proof "github.com/GoelandProver/Goeland/visualization_proof"
)

/* Manage quit or wait father order. Return true if th eproess is supposed to dia at the end */
func manageQuitOrder(quit bool, c Communication, father_id uint64, st complextypes.State, children []Communication, given_substs []complextypes.SubstAndForm, node_id int) {
	if len(children) > 0 {
		closeChildren(&children, true)
	}
	if quit {
		global.PrintDebug("MQO", "Closing order received")
		global.PrintDebug("MQO", "Die")
	} else {
		global.PrintDebug("MQO", "Closing order received, let's wait father")
		waitFather(father_id, st, c, given_substs, node_id)
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

/**
* Select children
* Wait for a children to answer and return substitutions
*
* Datas :
* 	father : father's id (debug)
*	children : slice of communication
* 	current_subst : the substitution previously applied
*
* Result :
* 	int :
*   	- 0 : closed by itself
*		- 1 : substs list is for father
*		- 2 : substs list is for children
		- 3 : quit order from my father
		- 4 : wait my father
		- 5 : open from my children - tell te other to wait me
* 	[]complextypes.SubstAndForm : substitutions list
**/
func selectChildren(father Communication, children *[]Communication, current_subst complextypes.SubstAndForm) (int, []complextypes.SubstAndForm, [][]proof.ProofStruct) {

	proof_tab := [][]proof.ProofStruct{}

	// Select structure
	cases := make([]reflect.SelectCase, len(*children)+1)
	for i, ch := range *children {
		cases[i] = reflect.SelectCase{Dir: reflect.SelectRecv, Chan: reflect.ValueOf(ch.result)}
	}

	// Manage quit order
	index_quit := len(*children)
	cases[index_quit] = reflect.SelectCase{Dir: reflect.SelectRecv, Chan: reflect.ValueOf(father.quit)}

	// Result struct
	result_int := -1
	result_subst := []complextypes.SubstAndForm{}
	common_substs := []complextypes.SubstAndForm{}

	// Counters
	cpt_children_returning_subst := 0
	cpt_remaining_children := len(*children)
	current_subst_seen := false

	// Until all the children have answered
	for cpt_remaining_children > 0 && result_int < 3 {
		global.PrintDebug("SLC", fmt.Sprintf("Size of remaining children : %v", cpt_remaining_children))

		index, value, _ := reflect.Select(cases)
		global.PrintDebug("SLC", "Answer received")

		// Manage quit order
		if index == index_quit {
			global.PrintDebug("SLC", "Quit order")
			if !value.Interface().(bool) {
				global.PrintDebug("SLC", "Quit order says to wait father")
				result_int = 4
			} else {
				result_int = 3
			}
		} else {
			cpt_remaining_children--
			res := value.Interface().(Result)
			proof_tab = append(proof_tab, res.GetProof())

			// Remove children from waiting children
			global.PrintDebug("SLC", fmt.Sprintf("Child %v has finished", res.id))
			if !res.need_answer {
				global.PrintDebug("SLC", fmt.Sprintf("Child %v die", res.id))
				*children = removeChildren(*children, index)
			}

			// Manage the substitution sent by this child
			if res.closed {
				if len(res.subst_list_for_father) != 0 {
					global.PrintDebug("SLC", fmt.Sprintf("The child %v has substitution(s) !", res.id))

					if len(res.subst_list_for_father) == 1 && res.subst_list_for_father[0].GetSubst().Equals(current_subst.GetSubst()) {
						global.PrintDebug("SLC", fmt.Sprintf("The child %v returns the current subst !", res.id))
						current_subst_seen = true
						cpt_children_returning_subst--
						// Children sent the same substitution, eventually with new forms
						result_subst = append(result_subst, current_subst.AddFormulas(res.subst_list_for_father[0].GetForm()))
					} else {
						// Reseat at each step
						common_substs = []complextypes.SubstAndForm{}

						// Check if there is common substitutions
						for _, v := range res.subst_list_for_father {
							for i := range result_subst {
								if v.GetSubst().Equals(result_subst[i].GetSubst()) {
									global.PrintDebug("SLC", "Subst in common found !")
									common_substs = append(common_substs, result_subst[i].AddFormulas(v.GetForm()))
								}
							}
						}

						// Add new subst to result subst
						for _, v := range res.subst_list_for_father {
							global.PrintDebug("SLC", v.ToString())
							added := false
							for i := range result_subst {
								if v.GetSubst().Equals(result_subst[i].GetSubst()) {
									added = true
									global.PrintDebug("SLC", "Subst already in result_subst")
									result_subst[i] = result_subst[i].AddFormulas(v.GetForm())
								}
							}

							if !added {
								global.PrintDebug("SLC", "New susbt found !")
								result_subst = complextypes.AppendIfNotContainsSubstAndForm(result_subst, v)
							}
						}

					}
					cpt_children_returning_subst++
				}

			} else {
				// Signal to children to stop and wait father for a new order
				global.PrintDebug("SLC", fmt.Sprintf("Open child found : %v ! - tell to remaining children to wait father", res.id))
				result_int = 5
			}
		}
	}

	global.PrintDebug("SLC", fmt.Sprintf("All answer received - subst_for_children : %v", len(result_subst)))

	if result_int < 3 {
		switch cpt_children_returning_subst {
		case 0:
			if current_subst_seen {
				// A child returns current subst and the other nothing
				global.PrintDebug("SLC", "One on more children returns the current subst")
				result_int = 1
			} else {
				result_int = 0
			}
		case 1:
			// A child returns subst(s)
			global.PrintDebug("SLC", "A child returns new subst(s)")
			result_int = 1

			// Merge the subst with current subst (if not empty)
			if !current_subst.IsEmpty() {
				new_result_subst := []complextypes.SubstAndForm{}
				for _, s := range result_subst {
					new_subst := complextypes.MergeSubstAndForm(s.Copy(), current_subst.Copy())
					new_result_subst = append(new_result_subst, new_subst)
				}
				result_subst = complextypes.CopySubstAndFormList(new_result_subst)
			}
		default:
			// Multiple child returns substs, try each one (or only one if it's the same)
			switch {
			// Try to find one commun subst
			case len(common_substs) > 0:
				result_int = 1
				result_subst = common_substs
			case len(result_subst) == 1:
				result_int = 1
			default:
				result_int = 2
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
func waitFather(father_id uint64, st complextypes.State, c Communication, given_substs []complextypes.SubstAndForm, node_id int) {
	global.PrintDebug("WF", "Wait father")

	// CLear subst found
	st.SetSubstsFound([]complextypes.SubstAndForm{})

	select {
	case quit := <-c.quit:
		exchanges.WriteExchanges(father_id, st, given_substs, complextypes.SubstAndForm{}, "WaitFather - Die")
		manageQuitOrder(quit, c, father_id, st, []Communication{}, given_substs, node_id)
		return

	case answer_father := <-c.result:
		exchanges.WriteExchanges(father_id, st, given_substs, answer_father.GetSubstForChildren(), "WaitFather")
		global.PrintDebug("WF", fmt.Sprintf("Substition received : %v", answer_father.GetSubstForChildren().ToString()))

		// Check if the subst was already seen, returns eventually the subst with new formula(s)
		if treetypes.ContainsSubst(complextypes.GetSubstListFromSubstAndFormList(given_substs), answer_father.subst_for_children.GetSubst()) {
			global.PrintDebug("WF", "This substitution was sent by this child")
			subst_for_father := answer_father.GetSubstForChildren()
			for _, subst_sent := range given_substs {
				if subst_sent.GetSubst().Equals(answer_father.subst_for_children.GetSubst()) {
					subst_for_father = answer_father.GetSubstForChildren().AddFormulas(subst_sent.GetForm())
				}
			}

			st.SetCurrentProofFormula(answer_father.subst_for_children.GetForm()[0])
			st.SetCurrentProofNodeId(node_id)
			st.SetCurrentProofRule(fmt.Sprintf("⊙ / %v", answer_father.subst_for_children.GetSubst().ToString()))
			st.SetCurrentProofRuleName("CLOSURE")
			st.SetCurrentProofResultFormulas([]proof.IntFormList{})

			st.SetProof(complextypes.ApplySubstitutionOnProofList(answer_father.subst_for_children.GetSubst(), append(st.GetProof(), st.GetCurrentProof())))

			st.SetSubstsFound([]complextypes.SubstAndForm{subst_for_father})
			sendSubToFather(c, true, true, father_id, st, given_substs, node_id)
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
			global.PrintDebug("WC", fmt.Sprintf("MC after sisters : %v", meta_sisters.ToString()))

			st_copy := st.Copy()
			c2 := Communication{make(chan bool), make(chan Result)}

			global.PrintDebug("WF", fmt.Sprintf("Apply substitution on myself and wait : %v", answer_father.GetSubstForChildren().GetSubst().ToString()))
			go ProofSearch(global.GetGID(), st_copy, c2, answer_father.GetSubstForChildren(), node_id)
			global.IncrGoRoutine(1)

			global.PrintDebug("WF", "GO !")
			st.SetBTOnFormulas(false)
			waitChildren(father_id, st, c, []Communication{c2}, given_substs, answer_father.GetSubstForChildren(), []complextypes.SubstAndForm{}, []complextypes.SubstAndForm{}, node_id)
		}
	}
}

/**
* Wait children
* a node wait for its children to end
* Data :
*	father_id : id of the father, debug only
*	st : state, the current search state
* 	c : channel to send the answer to the father
* 	children : list of children (current node)
* 	given_subst : subst send by this node to its father
* 	current_substitution : the substitution sent by this node to its children at this step
* 	subst_for_backtrack : list of subst if we need to backtrack
**/
func waitChildren(father_id uint64, st complextypes.State, c Communication, children []Communication, given_substs []complextypes.SubstAndForm, current_subst complextypes.SubstAndForm, substs_for_backtrack []complextypes.SubstAndForm, forms_for_backtrack []complextypes.SubstAndForm, node_id int) {
	global.PrintDebug("WC", "Waiting children")
	global.PrintDebug("WC", fmt.Sprintf("Children : %v, BT_subst : %v, BT_formulas : %v, bt_bool : %v, Given_subst : %v, applied subst : %v, subst_found : %v", len(children), len(substs_for_backtrack), len(forms_for_backtrack), st.GetBTOnFormulas(), complextypes.SubstAndFormListToString(given_substs), st.GetAppliedSubst().ToString(), complextypes.SubstAndFormListToString(st.GetSubstsFound())))
	global.PrintDebug("WC", fmt.Sprintf("MM : %v", st.GetMM().ToString()))

	select {
	case quit := <-c.quit:
		exchanges.WriteExchanges(father_id, st, given_substs, current_subst, "WaitChildren - Die")
		manageQuitOrder(quit, c, father_id, st, children, given_substs, node_id)
		return
	default:
		global.PrintDebug("WC", fmt.Sprintf("Current subst : %v", current_subst.GetSubst().ToString()))
		cpt_children := len(children)
		result_int, result_subst, proof_children := selectChildren(c, &children, current_subst)
		global.PrintDebug("WC", fmt.Sprintf("End of select - result_subst : %v ", complextypes.SubstAndFormListToString(result_subst)))

		global.PrintDebug("WC", "-------------------------------------------")
		global.PrintDebug("WC", fmt.Sprintf("Result int : %v", result_int))
		global.PrintDebug("WC", "Proof children :")
		for _, c := range proof_children {
			global.PrintDebug("WC", proof.ProofStructListToString(c))
		}

		switch result_int {

		// closed by itself, return applied subst if not empty
		case 0:
			global.PrintDebug("WC", "All children has finished by themselves")
			closeChildren(&children, true)

			// Send applied subst to father (only what's relevant)
			subst_for_father := complextypes.RemoveElementWithoutMM(st.GetAppliedSubst().GetSubst(), st.GetMM())
			if !subst_for_father.IsEmpty() {
				subst_and_form_for_father := complextypes.MakeSubstAndForm(subst_for_father, st.GetAppliedSubst().GetForm())
				st.SetSubstsFound([]complextypes.SubstAndForm{subst_and_form_for_father})
			} else {
				st.SetSubstsFound([]complextypes.SubstAndForm{})
			}

			// No need to append current_subst, because child return it anyway (if exists)
			// Here, current subst is always empty
			if !current_subst.IsEmpty() {
				fmt.Printf("[ERROR] Current subst not empty but child returns nothing\n")
				global.PrintDebug("ERROR", "Current subst not empty but child returns nothing")
			}

			if cpt_children == 1 && !st.GetBTOnFormulas() {
				st.SetProof(complextypes.ApplySubstitutionOnProofList(st.GetAppliedSubst().GetSubst(), proof_children[0]))
			} else {
				st.SetCurrentProofChildren(proof_children)
				st.SetProof(complextypes.ApplySubstitutionOnProofList(st.GetAppliedSubst().GetSubst(), append(st.GetProof(), st.GetCurrentProof())))
			}

			exchanges.WriteExchanges(father_id, st, nil, complextypes.MakeEmptySubstAndForm(), "WaitChildren - To father - all closed")

			sendSubToFather(c, true, false, father_id, st, given_substs, node_id)

		// substs list is for father
		case 1:
			global.PrintDebug("WC", fmt.Sprintf("All children agree on the substitution(s) : %v", treetypes.SubstListToString(complextypes.GetSubstListFromSubstAndFormList(result_subst))))

			if cpt_children == 1 && !st.GetBTOnFormulas() {
				st.SetProof(complextypes.ApplySubstitutionOnProofList(complextypes.MergeSubstAndForm(st.GetAppliedSubst(), result_subst[0]).GetSubst(), proof_children[0]))
			} else {
				st.SetCurrentProofChildren(proof_children)
				st.SetProof(complextypes.ApplySubstitutionOnProofList(complextypes.MergeSubstAndForm(st.GetAppliedSubst(), result_subst[0]).GetSubst(), append(st.GetProof(), st.GetCurrentProof())))
			}

			// Remove substs we don't need to sent to father
			new_result_subst := []complextypes.SubstAndForm{}
			for _, s := range result_subst {
				global.PrintDebug("WC", fmt.Sprintf("Check the susbt, remove useless element and merge with applied subst :%v", s.GetSubst().ToString()))
				s_merged := complextypes.MergeSubstAndForm(s, st.GetAppliedSubst())
				s_removed := complextypes.RemoveElementWithoutMM(s_merged.GetSubst().Copy(), st.GetMM())
				subst_and_form_removed := complextypes.MakeSubstAndForm(s_removed, s.GetForm())

				if !s_removed.IsEmpty() {
					new_result_subst = append(new_result_subst, subst_and_form_removed.Copy())
				}
			}

			closeChildren(&children, true)
			st.SetSubstsFound(new_result_subst)

			exchanges.WriteExchanges(father_id, st, result_subst, complextypes.MakeEmptySubstAndForm(), "WaitChildren - To father - all agree")

			st.SetSubstsFound(complextypes.RemoveEmptySubstFromSubstAndFormList(st.GetSubstsFound()))

			if len(st.GetSubstsFound()) == 0 {
				sendSubToFather(c, true, false, father_id, st, given_substs, node_id)
			} else {
				sendSubToFather(c, true, true, father_id, st, given_substs, node_id)
			}

		// substs list is for children
		case 2:
			s, subst_res := chooseSubstitutionDestructive(complextypes.CopySubstAndFormList(result_subst), st.GetMM())
			global.PrintDebug("WC", fmt.Sprintf("There is more than one substitution, choose one : %v and send it to children", s.ToString()))
			sendSubToChildren(children, s)

			exchanges.WriteExchanges(father_id, st, result_subst, s, "WaitChildren - To children")

			// TODO : vérifier si la sub n'a pas déjà été vue, si oui renvoyer faux
			substs_for_backtrack = append(substs_for_backtrack, subst_res...)
			st.SetBTOnFormulas(false)
			waitChildren(father_id, st, c, children, given_substs, s, substs_for_backtrack, forms_for_backtrack, node_id)

		// quit order from my father
		case 3:
			exchanges.WriteExchanges(father_id, st, given_substs, current_subst, "WaitChildren - Die")
			global.PrintDebug("WC", "Closing order received")
			manageQuitOrder(true, c, father_id, st, children, []complextypes.SubstAndForm{}, node_id)

		// wait my father
		case 4:
			exchanges.WriteExchanges(father_id, st, given_substs, current_subst, "WaitChildren - Wait father")
			global.PrintDebug("WC", "Closing order received, let's wait father")
			closeChildren(&children, true)
			waitFather(father_id, st, c, given_substs, node_id)

		// One of my child can't found a way, tell to the other to wait for me
		case 5:
			global.PrintDebug("WC", "Open children previously found, tell to children to wait for me and try another substitution")
			closeChildren(&children, false)

			switch {
			case st.GetBTOnFormulas() && len(forms_for_backtrack) > 0:
				// On relance sur soi-même avec une autre form

				global.PrintDebug("WC", "Backtrack on formulas")

				next_subst_and_form := forms_for_backtrack[0].Copy()
				next_form := next_subst_and_form.GetForm()[0].Copy()
				forms_for_backtrack = forms_for_backtrack[1:]
				exchanges.WriteExchanges(father_id, st, []complextypes.SubstAndForm{}, next_subst_and_form, "WaitChildren - Backtrack on form")

				// The last formula of getLF is the previous formula choosen among rewritten. So, discrad it and add the new one
				st.SetLF(append(st.GetLF()[0:len(st.GetLF())-1].Copy(), next_form))

				st_copy := st.Copy()
				st_copy.SetCurrentProofRule("Rewrite")
				// st_copy.SetSubstsFound(st.GetSubstsFound())
				c_child := Communication{make(chan bool), make(chan Result)}
				go ProofSearch(global.GetGID(), st_copy, c_child, next_subst_and_form, global.IncrCptNode())
				global.PrintDebug("PS", "GO !")
				global.IncrGoRoutine(1)
				waitChildren(father_id, st, c, []Communication{c_child}, given_substs, next_subst_and_form, substs_for_backtrack, forms_for_backtrack, node_id)

			case len(substs_for_backtrack) > 0:
				global.PrintDebug("WC", "Backtrack on subt")
				next_subst := tryBTSubstitution(&substs_for_backtrack, st.GetMM(), children)
				exchanges.WriteExchanges(father_id, st, []complextypes.SubstAndForm{next_subst}, complextypes.MakeEmptySubstAndForm(), "WaitChildren - Backtrack on subst")
				st.SetBTOnFormulas(false)
				waitChildren(father_id, st, c, children, given_substs, next_subst, substs_for_backtrack, forms_for_backtrack, node_id)

			default:
				exchanges.WriteExchanges(father_id, st, given_substs, current_subst, "WaitChildren - Die - No more BT available")
				global.PrintDebug("WC", "There is no substitution availabe")
				closeChildren(&children, true)
				global.PrintDebug("WC", "SFFC empty")
				// Todo : if subst found, return true ! -> not need because priority order change in apply rules
				sendSubToFather(c, false, true, father_id, st, given_substs, node_id)

			}
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
func proofSearchDestructive(father_id uint64, st complextypes.State, c Communication, s complextypes.SubstAndForm, node_id int) {
	global.PrintDebug("PS", "---------- New search step ----------")
	global.PrintDebug("PS", fmt.Sprintf("Child of %v", father_id))

	if global.GetProof(){
		st.SetCurrentProofNodeId(node_id)
	}

	// Select to check kill order
	select {
	case quit := <-c.quit:
		manageQuitOrder(quit, c, father_id, st, nil, st.GetSubstsFound(), node_id)
	default:
		// Apply subst if any
		if !s.IsEmpty() {
			st.SetCurrentProofRule(fmt.Sprintf("Apply substitution : %v", s.GetSubst().ToStringForProof()))
			global.PrintDebug("PS", fmt.Sprintf("Apply Substitution : %v", s.ToString()))
			complextypes.ApplySubstitution(&st, s)
			global.PrintDebug("PS", "Searching contradiction with new atomics")
			for _, f := range st.GetAtomic() {
				global.PrintDebug("PS", fmt.Sprintf("##### Formula %v #####", f.ToString()))
				// Check if exists a contradiction after applying the substitution
				clos_res_after_apply_subst, subst_after_apply_subst := applyClosureRules(f.Copy(), &st)
				closed := manageClosureRule(father_id, &st, c, clos_res_after_apply_subst, treetypes.CopySubstList(subst_after_apply_subst), f.Copy(), node_id)

				if closed {
					manageQuitOrder(true, c, father_id, st, nil, []complextypes.SubstAndForm{}, node_id)
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

		st.SetTreePos(st.GetTreePos().InsertFormulaListToDataStructure(st.GetLF().FilterPred(true)))
		st.SetTreeNeg(st.GetTreeNeg().InsertFormulaListToDataStructure(st.GetLF().FilterPred(false)))

		// Search for a contradiction in LF
		new_atomics := basictypes.MakeEmptyFormList()
		for i, f := range st.GetLF() {
			global.PrintDebug("PS", fmt.Sprintf("##### Formula %v #####", f.ToString()))
			clos_res, subst := applyClosureRules(f.Copy(), &st)
			closed := manageClosureRule(father_id, &st, c, clos_res, treetypes.CopySubstList(subst), f.Copy(), node_id)

			if closed {
				manageQuitOrder(true, c, father_id, st, nil, []complextypes.SubstAndForm{}, node_id)
				return
			}

			/** Add f to new_atomics if its an atomic
			* last condition the don't loop on the same formula
			* We can rewrite iff :
			* i is not the last element
			* or we're not in bt formula mode
			* or the subst to apply is empty
			* = !(i is last and getBtOnFOrm and subst not null)
			**/
			if basictypes.ShowKindOfRule(f.Copy()) == basictypes.Atomic && global.IsLoaded("dmt") && !(i == len(st.GetLF()) && st.GetBTOnFormulas() && !s.IsEmpty()) {
				new_atomics = append(new_atomics, f)
			} else {
				st.DispatchForm(f.Copy())
			}
		}

		global.PrintDebug("PS", "Let's apply rules !")
		global.PrintDebug("PS", fmt.Sprintf("LF before applyRules : %v", new_atomics.ToString()))
		applyRules(father_id, st, c, new_atomics, node_id)
	}
}
