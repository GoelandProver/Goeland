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
* This file contains functions and types common to destructive and non-destructive version of tableaux and the search algorithm
**/

package search

import (
	"fmt"
	"log"
	"os"
	"runtime"
	"sort"
	"time"

	treesearch "github.com/GoelandProver/Goeland/code-trees/tree-search"
	treetypes "github.com/GoelandProver/Goeland/code-trees/tree-types"
	"github.com/GoelandProver/Goeland/global"
	"github.com/GoelandProver/Goeland/plugins/coq"
	dmt "github.com/GoelandProver/Goeland/plugins/dmt"
	basictypes "github.com/GoelandProver/Goeland/types/basic-types"
	complextypes "github.com/GoelandProver/Goeland/types/complex-types"
	visualization "github.com/GoelandProver/Goeland/visualization_exchanges"
	proof "github.com/GoelandProver/Goeland/visualization_proof"
)

/* Begin the proof search */
func Search(formula basictypes.Form, bound int) {
	global.PrintDebug("MAIN", "Start search")
	global.PrintDebug("MAIN", fmt.Sprintf("Initial formula: %v", formula.ToString()))

	formula = formula.CleanFormula()
	global.PrintDebug("MAIN", fmt.Sprintf("Cleaned formula: %v", formula.ToString()))

	res := false
	global.SetNbStep(1)
	limit := bound

	for ok := true; ok; ok = (!res && bound > 0 && !global.IsOneStep()) {
		res, limit = doOneStep(limit, formula)
	}

	PrintSearchResult(res)
}

func doOneStep(limit int, formula basictypes.Form) (bool, int) {
	basictypes.ResetMeta()
	proof.ResetProofFile()
	visualization.ResetExchangesFile()

	global.PrintInfo("MAIN", fmt.Sprintf("nb_step : %v - limit : %v", global.GetNbStep(), limit))

	tp := new(treesearch.Node)
	tn := new(treesearch.Node)
	// tp := new(datastruct.FormListDS)
	// tn := new(datastruct.FormListDS)

	state := complextypes.MakeState(limit, tp, tn, formula)
	state.SetCurrentProofNodeId(0)

	global.PrintInfo("MAIN", fmt.Sprintf("Launch Gotab with destructive = %v", global.IsDestructive()))

	global.SetNbGoroutines(0)
	state.SetLF(basictypes.MakeSingleElementFormAndTermList(basictypes.MakeFormAndTerm(formula, basictypes.MakeEmptyTermList())))
	c := MakeCommunication(make(chan bool), make(chan Result))
	// TODO : global quit channel in non destrutive

	if global.GetExchanges() {
		visualization.WriteExchanges(global.GetGID(), state, []complextypes.SubstAndForm{}, complextypes.MakeEmptySubstAndForm(), "Search")
	}

	nodeId := global.IncrCptNode()
	go ProofSearch(global.GetGID(), state, c, complextypes.MakeEmptySubstAndForm(), nodeId, nodeId, []int{})
	global.IncrGoRoutine(1)

	global.PrintDebug("MAIN", "GO")

	result, finalProof := ManageResult(c)
	uninstanciatedMeta := proof.RetrieveUninstantiatedMetaFromProof(finalProof)

	global.PrintDebug("MAIN", fmt.Sprintf("Nb of goroutines = %d", global.GetNbGoroutines()))
	global.PrintDebug("MAIN", fmt.Sprintf("%v goroutines still running", runtime.NumGoroutine()))

	if result {
		printProof(result, finalProof, uninstanciatedMeta)
	}

	global.SetNbStep(global.GetNbStep() + 1)
	return result, 2 * limit
}

func printProof(res bool, final_proof []proof.ProofStruct, uninstanciatedMeta basictypes.MetaList) {
	if global.GetProof() {
		proof.WriteGraphProof(final_proof)

		global.PrintInfo("MAIN", fmt.Sprintf("%s SZS output start Proof for %v", "%", global.GetProblemName()))

		if global.IsCoqOutput() {
			printCoqOutput(final_proof, uninstanciatedMeta)
		} else {
			fmt.Printf("%v", proof.ProofStructListToText(final_proof))
		}

		global.PrintInfo("MAIN", fmt.Sprintf("%s SZS output end Proof for %v", "%", global.GetProblemName()))
	}
}

func printCoqOutput(final_proof []proof.ProofStruct, uninstanciatedMeta basictypes.MetaList) {
	coqOutput := coq.MakeCoqOutput(final_proof, uninstanciatedMeta)

	if !global.GetNotWriteLogs() {
		f, err := os.OpenFile("problem_coq.v", os.O_RDWR|os.O_CREATE|os.O_TRUNC, 0666)
		defer f.Close()

		if err != nil {
			log.Fatalf("Error opening problem_coq file: %v", err)
		}
		f.WriteString(coqOutput)
	}

	fmt.Printf("%s", coqOutput)
}

/* Manage return from search for destructive and non-destructive versions  */
func ManageResult(c Communication) (bool, []proof.ProofStruct) {
	res := false
	final_proof := []proof.ProofStruct{}

	if global.IsDestructive() {
		final_proof, res = manageDestructiveResult(c)
	} else {
		res = manageNotDestructiveResult(c)
	}

	return res, final_proof
}

func manageDestructiveResult(c Communication) ([]proof.ProofStruct, bool) {
	result := <-c.GetResult()

	global.PrintDebug("MAIN", fmt.Sprintf("Proof : %v", proof.ProofStructListToString(result.GetProof())))

	if result.GetNeedAnswer() {
		c.GetQuit() <- true
		global.PrintDebug("MAIN", "Close order sent")
	} else {
		global.PrintDebug("MAIN", "Close order not sent")
	}

	return result.GetProof(), result.GetClosed()
}

func manageNotDestructiveResult(c Communication) bool {
	open := false

	for !open && runtime.NumGoroutine() > 1 {

		// TODO : kill all goroutines if open found
		// Close channel -> broadcast
		res := <-c.GetResult()

		open = !res.GetClosed()

		time.Sleep(1 * time.Millisecond)

		global.PrintDebug("MAIN", fmt.Sprintf("open is : %v from %v", open, res.GetId()))
		global.PrintInfo("MAIN", fmt.Sprintf("%v goroutines still running - %v goroutines generated", runtime.NumGoroutine(), global.GetNbGoroutines()))
	}

	return !open
}

func PrintSearchResult(res bool) {
	global.PrintInfo("Res", fmt.Sprintf("%v goroutines created", global.GetNbGoroutines()))
	global.PrintInfo("Res", "==== Result ====")

	validity := ""
	status := ""

	if res {
		validity = "VALID"

		if global.IsConjectureFound() {
			status = "Theorm"
		} else {
			status = "Unsatisfiable"
		}
	} else {
		validity = "NOT VALID"

		if global.IsConjectureFound() {
			status = "CounterSatisfiable"
		} else {
			status = "Satisfiable"
		}
	}

	global.PrintInfo("Res", fmt.Sprintf("%v RES : %v", "%", validity))
	global.PrintInfo("Res", fmt.Sprintf("%s SZS status %v for %v", "%", status, global.GetProblemName()))
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
func ProofSearch(fatherId uint64, state complextypes.State, c Communication, s complextypes.SubstAndForm, nodeId int, originalNodeId int, metaToReintroduce []int) {
	if global.IsDestructive() {
		proofSearchDestructive(fatherId, state, c, s, nodeId, originalNodeId, metaToReintroduce)
	} else {
		proofSearchNonDestructive(fatherId, state, c)
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
func manageClosureRule(fatherId uint64, state *complextypes.State, c Communication, substs []treetypes.Substitutions, fnt basictypes.FormAndTerms, nodeID int, originalNodeId int) {

	mm := append(state.GetMM(), complextypes.GetMetaFromSubst(state.GetAppliedSubst().GetSubst())...)
	substsWithMM, substsWithoutMM := complextypes.DispatchSubst(treetypes.CopySubstList(substs), mm)

	if len(substs) == 0 {
		doNoSubstitutions(state, fnt, nodeID, originalNodeId, c)
	} else if len(substsWithoutMM) > 0 {
		doSubstitutionsWithoutMM(state, fnt, nodeID, originalNodeId, c, substsWithoutMM)
	} else if len(substsWithMM) > 0 {
		doSubstitutionsWithMM(state, fnt, nodeID, originalNodeId, c, substsWithMM)
	}
}

func doStateForClosure(state *complextypes.State, fnt basictypes.FormAndTerms, nodeId int, proofName string, proofs []proof.ProofStruct) {
	state.SetSubstsFound([]complextypes.SubstAndForm{state.GetAppliedSubst()})

	state.SetCurrentProofRule(proofName)
	state.SetCurrentProofRuleName("CLOSURE")
	state.SetCurrentProofFormula(fnt.Copy())
	state.SetCurrentProofNodeId(nodeId)
	state.SetCurrentProofResultFormulas([]proof.IntFormAndTermsList{})
	state.SetProof(proofs)
}

func doNoSubstitutions(state *complextypes.State, fnt basictypes.FormAndTerms, nodeId int, originalNodeId int, c Communication) {
	global.PrintDebug("MCR", "Branch closed by ¬⊤ or ⊥ or a litteral and its opposite !")

	doStateForClosure(state, fnt, nodeId, "⊙", append(state.GetProof(), state.GetCurrentProof()))

	sendSubToFather(c, true, false, global.GetGID(), *state, []complextypes.SubstAndForm{}, nodeId, originalNodeId, []int{})
}

func doSubstitutionsWithoutMM(state *complextypes.State, fnt basictypes.FormAndTerms, nodeId int, originalNodeId int, c Communication, substs []treetypes.Substitutions) {
	global.PrintDebug("MCR", fmt.Sprintf("Contradiction found (without mm) : %v", treetypes.SubstListToString(substs)))

	proofName := fmt.Sprintf("⊙ / %v", substs[0].ToString())
	proofs := complextypes.ApplySubstitutionOnProofList(substs[0], append(state.GetProof(), state.GetCurrentProof()))
	doStateForClosure(state, fnt, nodeId, proofName, proofs)

	sendSubToFather(c, true, false, global.GetGID(), *state, []complextypes.SubstAndForm{}, nodeId, originalNodeId, []int{})
}

func doSubstitutionsWithMM(state *complextypes.State, fnt basictypes.FormAndTerms, nodeId int, originalNodeId int, c Communication, substs []treetypes.Substitutions) {
	global.PrintDebug("MCR", "Contradiction found (with mm) !")

	state.SetCurrentProofRule("⊙")
	doStateForClosure(state, fnt, nodeId, "⊙", append(state.GetProof(), state.GetCurrentProof()))

	metaToReintroduce := getMetaToReintroduce(substs, state, fnt)

	global.PrintDebug("MCR", fmt.Sprintf("Subst found now : %v", complextypes.SubstAndFormListToString(state.GetSubstsFound())))
	global.PrintDebug("MCR", fmt.Sprintf("Send subst(s) with mm to father : %v", treetypes.SubstListToString(complextypes.GetSubstListFromSubstAndFormList(state.GetSubstsFound()))))

	sendSubToFather(c, true, true, global.GetGID(), *state, []complextypes.SubstAndForm{}, nodeId, originalNodeId, metaToReintroduce)
}

func getMetaToReintroduce(substs []treetypes.Substitutions, state *complextypes.State, fnt basictypes.FormAndTerms) []int {
	metaToReintroduce := []int{}

	for _, sbstForFather := range substs {

		if sbstForFather.Equals(treetypes.Failure()) {
			global.PrintError("MCR", fmt.Sprintf("Error : SubstForFather is failure between : %v and %v \n", sbstForFather.ToString(), state.GetAppliedSubst().ToString()))
		}

		global.PrintDebug("MCR", fmt.Sprintf("Formula = : %v", fnt.ToString()))

		snfForFather := complextypes.MakeSubstAndForm(sbstForFather, basictypes.MakeSingleElementList(fnt.GetForm()))

		global.PrintDebug("MCR", fmt.Sprintf("SubstAndForm created : %v", snfForFather.ToString()))

		snfForFather = complextypes.MergeSubstAndForm(snfForFather.Copy(), state.GetAppliedSubst())

		state.SetSubstsFound(complextypes.AppendIfNotContainsSubstAndForm(state.GetSubstsFound(), snfForFather))
		metaToReintroduce = global.UnionIntList(metaToReintroduce, retrieveMetaFromSubst(sbstForFather))
	}

	sort.Ints(metaToReintroduce)
	return metaToReintroduce
}

/* Apply rules with priority (closure < rewrite < alpha < delta < closure with mm < beta < gamma) */
func applyRules(fatherId uint64, state complextypes.State, c Communication, newAtomics basictypes.FormAndTermsList, currentNodeId int, originalNodeId int, metaToReintroduce []int) {
	global.PrintDebug("AR", "ApplyRule")
	switch {
	case len(newAtomics) > 0 && global.IsLoaded("dmt") && len(state.GetSubstsFound()) == 0:
		manageRewriteRules(fatherId, state, c, newAtomics, currentNodeId, originalNodeId, metaToReintroduce)

	case len(state.GetAlpha()) > 0:
		manageAlphaRules(fatherId, state, c, originalNodeId)

	case len(state.GetDelta()) > 0:
		manageDeltaRules(fatherId, state, c, originalNodeId)

	case len(state.GetBeta()) > 0:
		manageBetaRules(fatherId, state, c, currentNodeId, originalNodeId, metaToReintroduce)

	case len(state.GetGamma()) > 0:
		manageGammaRules(fatherId, state, c, originalNodeId)

	case len(state.GetMetaGen()) > 0 && state.CanReintroduce():
		manageReintroductionRules(fatherId, state, c, originalNodeId, metaToReintroduce, newAtomics, currentNodeId, true)

	default:
		visualization.WriteExchanges(fatherId, state, nil, complextypes.MakeEmptySubstAndForm(), "ApplyRules - SAT")
		state.SetCurrentProofRule("Sat")
		state.SetProof(append(state.GetProof(), state.GetCurrentProof()))
		global.PrintDebug("PS", "Nothing found, return sat")
		sendSubToFather(c, false, false, fatherId, state, []complextypes.SubstAndForm{}, currentNodeId, originalNodeId, []int{})
	}
}

/* Manage Rewrite rules - return true if a rewriting rule was applied, false otherwise */
func manageRewriteRules(fatherId uint64, state complextypes.State, c Communication, newAtomics basictypes.FormAndTermsList, currentNodeId int, originalNodeId int, metaToReintroduce []int) {
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
				shouldReturn := tryRewrite(rewritten, f, state, remainingAtomics, fatherId, c, currentNodeId, originalNodeId, metaToReintroduce)
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
	ProofSearch(fatherId, state, c, complextypes.MakeEmptySubstAndForm(), currentNodeId, originalNodeId, []int{})
}

func tryRewrite(rewritten []complextypes.IntSubstAndForm, f basictypes.FormAndTerms, state complextypes.State, remainingAtomics basictypes.FormAndTermsList, fatherId uint64, c Communication, currentNodeId int, originalNodeId int, metaToReintroduce []int) bool {
	global.PrintDebug("PS", fmt.Sprintf("Try to rewrite into :  %v", complextypes.IntSubstAndFormListToString(rewritten)))

	newRewritten := []complextypes.IntSubstAndFormAndTerms{}
	for _, isaf := range rewritten {
		newFNTs := basictypes.MakeEmptyFormAndTermsList()
		for _, isaf_f := range isaf.GetSaf().GetForm() {
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
		go ProofSearch(global.GetGID(), otherState, channelChild, choosenRewritten.GetSaf().ToSubstAndForm(), childNode, childNode, []int{})
		global.PrintDebug("PS", "GO !")
		global.IncrGoRoutine(1)
		waitChildren(fatherId, state, c, []Communication{channelChild}, []complextypes.SubstAndForm{}, choosenRewritten.GetSaf().ToSubstAndForm(), []complextypes.SubstAndForm{}, newRewritten, currentNodeId, originalNodeId, false, []int{childNode}, metaToReintroduce)
		return true
	} else {
		// No rewriting possible
		global.PrintDebug("PS", fmt.Sprintf("No rewriting possible, dispatchform de %v", f.ToString()))
		// Then add f in atomics
		state.DispatchForm(f.Copy())

		return false
	}
}

/* Manage alpha rules */
func manageAlphaRules(fatherId uint64, state complextypes.State, c Communication, originalNodeId int) {
	global.PrintDebug("PS", "Alpha rule")
	hdf := state.GetAlpha()[0]
	global.PrintDebug("PS", fmt.Sprintf("Rule applied on : %s", hdf.ToString()))
	state.SetAlpha(state.GetAlpha()[1:])
	resultForms := applyAlphaRules(hdf, &state)
	state.SetLF(resultForms)

	// Proof
	state.SetCurrentProofFormula(hdf)
	childId := global.IncrCptNode()
	state.SetCurrentProofResultFormulas([]proof.IntFormAndTermsList{proof.MakeIntFormAndTermsList(childId, resultForms)})
	state.SetProof(append(state.GetProof(), state.GetCurrentProof()))

	ProofSearch(fatherId, state, c, complextypes.MakeEmptySubstAndForm(), childId, originalNodeId, []int{})
}

/* Manage delta rules */
func manageDeltaRules(fatherId uint64, state complextypes.State, c Communication, originalNodeId int) {
	global.PrintDebug("PS", "Delta rule")
	hdf := state.GetDelta()[0]
	global.PrintDebug("PS", fmt.Sprintf("Rule applied on : %s", hdf.ToString()))
	state.SetDelta(state.GetDelta()[1:])
	resultForms := applyDeltaRules(hdf, &state)
	state.SetLF(resultForms)

	// Proof
	state.SetCurrentProofFormula(hdf)
	childId := global.IncrCptNode()
	state.SetCurrentProofResultFormulas([]proof.IntFormAndTermsList{proof.MakeIntFormAndTermsList(childId, resultForms)})
	state.SetProof(append(state.GetProof(), state.GetCurrentProof()))

	ProofSearch(fatherId, state, c, complextypes.MakeEmptySubstAndForm(), childId, originalNodeId, []int{})
}

/* Manage beta rules */
func manageBetaRules(fatherId uint64, state complextypes.State, c Communication, currentNodeId int, originalNodeId int, metaToReintroduce []int) {
	global.PrintDebug("PS", "Beta rule")
	hdf := state.GetBeta()[0]
	global.PrintDebug("PS", fmt.Sprintf("Rule applied on : %s", hdf.ToString()))
	reslf := applyBetaRules(hdf, &state)
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
			go ProofSearch(global.GetGID(), otherState, channelChild, complextypes.MakeEmptySubstAndForm(), fl.GetI(), fl.GetI(), []int{})
		} else {
			go ProofSearch(global.GetGID(), otherState, c, complextypes.MakeEmptySubstAndForm(), fl.GetI(), fl.GetI(), []int{})
		}

		global.IncrGoRoutine(1)
		global.PrintDebug("PS", fmt.Sprintf("GO %v !", fl.GetI()))

	}
	if global.IsDestructive() {
		waitChildren(fatherId, state, c, channels, []complextypes.SubstAndForm{}, complextypes.SubstAndForm{}, []complextypes.SubstAndForm{}, []complextypes.IntSubstAndFormAndTerms{}, currentNodeId, originalNodeId, false, childIds, metaToReintroduce)
	} else {
		global.PrintDebug("PS", "Die")
	}
}

/* Manage gamma rule */
func manageGammaRules(fatherId uint64, state complextypes.State, c Communication, originalNodeId int) {
	global.PrintDebug("PS", "Gamma rule")
	hdf := state.GetGamma()[0]
	global.PrintDebug("PS", fmt.Sprintf("Rule applied on : %s", hdf.ToString()))
	state.SetGamma(state.GetGamma()[1:])

	// Update MetaGen
	index, newMetaGen := basictypes.GetIndexMetaGenList(hdf, state.GetMetaGen())
	state.SetMetaGen(newMetaGen)
	newFnts, newMetas := applyGammaRules(hdf, index, &state)
	state.SetLF(newFnts)
	state.SetMC(append(state.GetMC(), newMetas...))
	if global.IsDestructive() {
		state.SetN(state.GetN() - 1)
	}

	// Proof
	state.SetCurrentProofFormula(hdf)
	childId := global.IncrCptNode()
	state.SetCurrentProofResultFormulas([]proof.IntFormAndTermsList{proof.MakeIntFormAndTermsList(childId, newFnts)})
	state.SetProof(append(state.GetProof(), state.GetCurrentProof()))

	ProofSearch(fatherId, state, c, complextypes.MakeEmptySubstAndForm(), childId, originalNodeId, []int{})
}

/* Manage reintroduction */
func manageReintroductionRules(fatherId uint64, state complextypes.State, c Communication, originalNodeId int, metaToReintroduce []int, newAtomics basictypes.FormAndTermsList, currentNodeId int, reintroduceAnyway bool) {

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

	ProofSearch(fatherId, state, c, complextypes.MakeEmptySubstAndForm(), childId, originalNodeId, metaToReintroduce)
}
