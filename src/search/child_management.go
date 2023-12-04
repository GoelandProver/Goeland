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
	"errors"
	"fmt"

	ttps "github.com/GoelandProver/Goeland/code-trees/tree-types"
	"github.com/GoelandProver/Goeland/global"
	btps "github.com/GoelandProver/Goeland/types/basic-types"
	ctps "github.com/GoelandProver/Goeland/types/complex-types"
	xchg "github.com/GoelandProver/Goeland/visualization_exchanges"
	proof "github.com/GoelandProver/Goeland/visualization_proof"
)

/* Arguments for waitChildren function & utilitary subfunctions */

type wcdArgs struct {
	fatherId       uint64
	st             ctps.State
	c              Communication
	children       []Communication
	givenSubsts    []ctps.SubstAndForm
	currentSubst   ctps.SubstAndForm
	substsBT       []ctps.SubstAndForm
	formsBT        []ctps.IntSubstAndFormAndTerms
	nodeId         int
	originalNodeId int
	overwrite      bool
	childOrdering  []int
	toReintroduce  []int
}

func MakeWcdArgs(
	fatherId uint64,
	st ctps.State,
	c Communication,
	children []Communication,
	givenSubsts []ctps.SubstAndForm,
	currentSubst ctps.SubstAndForm,
	substsBT []ctps.SubstAndForm,
	formsBT []ctps.IntSubstAndFormAndTerms,
	nodeId int,
	originalNodeId int,
	overwrite bool,
	childOrdering []int,
	toReintroduce []int,
) wcdArgs {
	return wcdArgs{fatherId, st, c, children, givenSubsts, currentSubst, substsBT, formsBT, nodeId, originalNodeId, overwrite, childOrdering, toReintroduce}
}

func (args wcdArgs) printDebugMessages() {
	global.PrintDebug("WC", "Waiting children")
	global.PrintDebug("WC", fmt.Sprintf("Id : %v, original node id :%v", args.nodeId, args.originalNodeId))
	global.PrintDebug("WC", fmt.Sprintf("Child order : %v", args.childOrdering))
	global.PrintDebug("WC", fmt.Sprintf("Children : %v, BT_subst : %v, BT_formulas : %v, bt_bool : %v, Given_subst : %v, applied subst : %v, subst_found : %v", len(args.children), len(args.substsBT), len(args.formsBT), args.st.GetBTOnFormulas(), ctps.SubstAndFormListToString(args.givenSubsts), args.st.GetAppliedSubst().ToString(), ctps.SubstAndFormListToString(args.st.GetSubstsFound())))
	global.PrintDebug("WC", fmt.Sprintf("MM : %v", args.st.GetMM().ToString()))
	global.PrintDebug("WC", fmt.Sprintf("MC : %v", args.st.GetMC().ToString()))
}

/* Utilitary subfunctions */

func (ds *destructiveSearch) childrenClosedByThemselves(args wcdArgs, proofChildren [][]proof.ProofStruct) error {
	global.PrintDebug("WC", "All children has finished by themselves")

	// All children are closed & did not send any subst, i.e., they can be closed.
	closeChildren(&args.children, true)

	// Remove all the metavariables that have been introduced in this node: the parent do not know them.
	substForFather := ctps.RemoveElementWithoutMM(args.st.GetAppliedSubst().GetSubst(), args.st.GetMM())
	if !substForFather.IsEmpty() {
		args.st.SetSubstsFound([]ctps.SubstAndForm{ctps.MakeSubstAndForm(substForFather, args.st.GetAppliedSubst().GetForm())})
	} else {
		args.st.SetSubstsFound([]ctps.SubstAndForm{})
	}

	// No need to append the current substitution, because the children returns it anyway (if it exists)
	// So here, the current substitution should be empty. Otherwise, there's a big bug somewhere else.
	if !args.currentSubst.IsEmpty() {
		return errors.New("Current substitution is not empty but children close by themselves. That shouldn't happen.")
	}

	// Updates the proof using the proofs of the children of the node.
	args.st = updateProof(args, proofChildren)

	toMerge := ctps.MakeUnifier()
	toMerge.AddSubstitutions(args.st.GetAppliedSubst().GetSubst(), args.st.GetAppliedSubst().GetSubst())
	unifier := args.st.GetGlobalUnifier()
	unifier.Merge(toMerge)
	unifier.PruneMetasInSubsts(args.st.GetMC())
	args.st.SetGlobalUnifier(unifier)

	xchg.WriteExchanges(args.fatherId, args.st, nil, ctps.MakeEmptySubstAndForm(), "WaitChildren - To father - all closed")

	ds.sendSubToFather(args.c, true, false, args.fatherId, args.st, args.givenSubsts, args.nodeId, args.originalNodeId, args.toReintroduce)
	return nil
}

func (ds *destructiveSearch) passSubstToParent(args wcdArgs, proofChildren [][]proof.ProofStruct, substs []ctps.SubstAndForm) error {
	global.PrintDebug("WC", fmt.Sprintf("All children agree on the substitution(s) : %v", ttps.SubstListToString(ctps.GetSubstListFromSubstAndFormList(substs))))

	// Updates the proof with what the children have found
	args.st = updateProof(args, proofChildren)
	newMetas := args.toReintroduce
	global.PrintDebug("WC", fmt.Sprintf("new meta to reintroduce: %v", global.IntListToString(newMetas)))

	// Remove all the metas introduced by the current node to only retrieve relevant ones for the parent.
	resultingSubstsAndForms := []ctps.SubstAndForm{}
	resultingSubsts := []ttps.Substitutions{}

	for _, subst := range substs {
		global.PrintDebug("WC", fmt.Sprintf("Check the susbt, remove useless element and merge with applied subst :%v", subst.GetSubst().ToString()))
		err, merged := ctps.MergeSubstAndForm(subst, args.st.GetAppliedSubst())

		if err != nil {
			global.PrintError("WC", fmt.Sprintf("Error when merging the children substitution's with the applied one."))
			return err
		}

		cleaned := ctps.RemoveElementWithoutMM(merged.GetSubst().Copy(), args.st.GetMM())
		substAndFormCleaned := ctps.MakeSubstAndForm(cleaned, subst.GetForm())

		// If the cleaned subst is empty, we don't need to do anything.
		// Otherwise, we have to check if the cleaned substitution is already in the resulting substs list
		// and, if applicable, add the formula to the list of substituted formulas.
		// It is useful for the nondestructive mode, to store with which formula the contradiction has been found.
		if !cleaned.IsEmpty() {
			// Check if the new substitution is already in the list, merge formulas
			added := false
			for i := 0; !added && i < len(resultingSubsts); i++ {
				if resultingSubstsAndForms[i].GetSubst().Equals(cleaned) {
					added = true
					resultingSubstsAndForms[i] = resultingSubstsAndForms[i].AddFormulas(subst.GetForm())
				}
			}

			if !added {
				resultingSubstsAndForms = append(resultingSubstsAndForms, substAndFormCleaned.Copy())
				resultingSubsts = append(resultingSubsts, substAndFormCleaned.GetSubst())
			}

			newMetas = global.UnionIntList(newMetas, retrieveMetaFromSubst(cleaned))
			global.PrintDebug("WC", fmt.Sprintf("New meta to reintroduce in loop: %v - %v ", global.IntListToString(newMetas), global.IntListToString(retrieveMetaFromSubst(cleaned))))

		} else {
			global.PrintDebug("WC", "Subst empty")
		}
	}

	toMerge := ctps.MakeUnifier()
	toMerge.AddSubstitutions(args.st.GetAppliedSubst().GetSubst(), args.st.GetAppliedSubst().GetSubst())
	unifier := args.st.GetGlobalUnifier()
	unifier.Merge(toMerge)
	unifier.PruneMetasInSubsts(args.st.GetMC())
	args.st.SetGlobalUnifier(unifier)

	resultingSubstsAndForms = ctps.RemoveEmptySubstFromSubstAndFormList(resultingSubstsAndForms)
	args.st.SetSubstsFound(resultingSubstsAndForms)
	xchg.WriteExchanges(args.fatherId, args.st, resultingSubstsAndForms, ctps.MakeEmptySubstAndForm(), "WaitChildren - To father - all agree")

	closeChildren(&args.children, true)
	ds.sendSubToFather(args.c, true, len(args.st.GetSubstsFound()) != 0, args.fatherId, args.st, args.givenSubsts, args.nodeId, args.originalNodeId, newMetas)
	return nil
}

// If there is a problem of a child always checking the same substitution, it can be avoided here.
func (bs *destructiveSearch) passSubstToChildren(args wcdArgs, substs []ctps.SubstAndForm) {
	subst, resultingSubsts := bs.chooseSubstitutionDestructive(ctps.CopySubstAndFormList(substs), args.st.GetMM())
	global.PrintDebug("WC", fmt.Sprintf("There is more than one substitution, choose one : %v and send it to children", subst.ToString()))

	sendSubToChildren(args.children, subst)

	xchg.WriteExchanges(args.fatherId, args.st, substs, subst, "WaitChildren - To children")

	args.substsBT = append(args.substsBT, resultingSubsts...)
	args.st.SetBTOnFormulas(false)
	args.overwrite = false
	args.currentSubst = subst
	bs.WaitChildren(args)
}

func (ds *destructiveSearch) manageOpenedChild(args wcdArgs) {
	global.PrintDebug("WC", "Open children previously found, tell to children to wait for me and try another substitution")
	closeChildren(&args.children, false)

	// If the completeness mode is active, then we need to deal with forbidden substitutions.
	if global.GetCompleteness() {
		args.st.SetForbiddenSubsts(ttps.AddSubstToSubstitutionsList(args.st.GetForbiddenSubsts(), args.currentSubst.GetSubst()))
	}

	if args.st.GetBTOnFormulas() && len(args.formsBT) > 0 {
		global.PrintDebug("WC", "Backtrack on DMT formulas.")
		ds.manageBacktrackForDMT(args)
	} else if len(args.substsBT) > 0 {
		global.PrintDebug("WC", "Backtrack on substitutions.")
		newSubst := ds.tryBTSubstitution(&args.substsBT, args.st.GetMM(), args.children)
		xchg.WriteExchanges(args.fatherId, args.st, []ctps.SubstAndForm{newSubst}, ctps.MakeEmptySubstAndForm(), "WaitChildren - Backtrack on substitutions.")
		// Mutually exclusive cases: when a backtrack is done on substitutions, this backtrack is prioritised from now on.
		args.st.SetBTOnFormulas(false)
		args.overwrite = false
		ds.WaitChildren(args)
	} else {
		global.PrintDebug("WC", "A child is opened but no more backtracks are available.")
		xchg.WriteExchanges(args.fatherId, args.st, args.givenSubsts, args.currentSubst, "WaitChildren - Die - No more BT available")

		// In the complete version, we just have to restart the proofsearch forbidding the bad substitutions.
		if global.GetCompleteness() && len(args.children) > 1 && !args.currentSubst.IsEmpty() {
			global.PrintDebug("WC", "Restart proof with forbidden substitutions.")
			sendForbiddenToChildren(args.children, args.st.GetForbiddenSubsts())
			args.overwrite = false
			args.currentSubst = ctps.MakeEmptySubstAndForm()
			ds.WaitChildren(args)
		} else {
			global.PrintDebug("WC", "No solution. You should launch in complete mode.")
			closeChildren(&args.children, true)
			ds.sendSubToFather(args.c, false, true, args.fatherId, args.st, args.givenSubsts, args.nodeId, args.originalNodeId, args.toReintroduce)
		}
	}
}

func (ds *destructiveSearch) manageBacktrackForDMT(args wcdArgs) {
	// Let's try to launch ourselves again with another formula, kept in the backtrack formulas.
	nextSaF := args.formsBT[0].Copy()
	nextForm := nextSaF.GetSaf().GetForm()[0].Copy()
	args.formsBT = args.formsBT[1:]
	xchg.WriteExchanges(args.fatherId, args.st, []ctps.SubstAndForm{}, nextSaF.GetSaf().ToSubstAndForm(), "WaitChildren - Backtrack on form")

	childNode := global.IncrCptNode()

	// Update the proof-tree with the
	args.st.SetCurrentProofResultFormulas([]proof.IntFormAndTermsList{proof.MakeIntFormAndTermsList(childNode, btps.MakeSingleElementFormAndTermList(nextForm))})
	args.st.SetCurrentProofRule("Rewrite")
	args.st.SetCurrentProofRuleName("Rewrite")
	args.st.SetCurrentProofIdDMT(nextSaF.GetId_rewrite())

	// The last formula of getLF is the previous formula choosen among rewritten. So, discard it and add the new one
	args.st.SetLF(append(args.st.GetLF()[0:len(args.st.GetLF())-1].Copy(), nextForm))

	copiedState := args.st.Copy()
	communicationChild := Communication{make(chan bool), make(chan Result)}
	go ds.ProofSearch(global.GetGID(), copiedState, communicationChild, nextSaF.GetSaf().ToSubstAndForm(), childNode, args.originalNodeId, args.toReintroduce)
	global.PrintDebug("PS", "GO !")
	global.IncrGoRoutine(1)

	args.children = []Communication{communicationChild}
	args.overwrite = false
	args.childOrdering = []int{childNode}
	args.currentSubst = nextSaF.GetSaf().ToSubstAndForm()

	ds.WaitChildren(args)
}

func updateProof(args wcdArgs, proofChildren [][]proof.ProofStruct) ctps.State {
	// Update the proof with the given children proofs.
	if global.GetProof() {
		proofList := args.st.GetProof()
		if args.overwrite {
			// TODO: check if it gets properly rewritten when a backtrack on it is done.
			if proofList[len(proofList)-1].Rule == "Rewrite" && (proofChildren[0][0].Rule != "Rewrite" || proofChildren[0][0].Node_id != proofList[len(proofList)-1].Node_id) {
				proofList[len(proofList)-1].Children = [][]proof.ProofStruct{}
				proofList = append(proofList, proofChildren[0]...)
			} else {
				proofList = append(proofList[:len(proofList)-1], proofChildren[0]...)
			}
		} else {
			args.st.SetCurrentProofChildren(proofChildren)
			proofList = append(proofList, args.st.GetCurrentProof())
		}
		args.st.SetProof(proofList)
	}

	return args.st
}
