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
	"errors"
	"fmt"

	"github.com/GoelandProver/Goeland/Core"
	"github.com/GoelandProver/Goeland/Glob"
	"github.com/GoelandProver/Goeland/Lib"
	"github.com/GoelandProver/Goeland/Unif"
)

/* Arguments for waitChildren function & utilitary subfunctions */

type wcdArgs struct {
	fatherId       uint64
	st             State
	c              Communication
	children       []Communication
	givenSubsts    []Core.SubstAndForm
	currentSubst   Core.SubstAndForm
	substsBT       []Core.SubstAndForm
	formsBT        []Core.IntSubstAndFormAndTerms
	nodeId         int
	originalNodeId int
	overwrite      bool
	childOrdering  []int
	toReintroduce  []int
}

func MakeWcdArgs(
	fatherId uint64,
	st State,
	c Communication,
	children []Communication,
	givenSubsts []Core.SubstAndForm,
	currentSubst Core.SubstAndForm,
	substsBT []Core.SubstAndForm,
	formsBT []Core.IntSubstAndFormAndTerms,
	nodeId int,
	originalNodeId int,
	overwrite bool,
	childOrdering []int,
	toReintroduce []int,
) wcdArgs {
	return wcdArgs{fatherId, st, c, children, givenSubsts, currentSubst, substsBT, formsBT, nodeId, originalNodeId, overwrite, childOrdering, toReintroduce}
}

func (args wcdArgs) printDebugMessages() {
	Glob.PrintDebug("WC", "Waiting children")
	Glob.PrintDebug("WC", fmt.Sprintf("Id : %v, original node id :%v", args.nodeId, args.originalNodeId))
	Glob.PrintDebug("WC", fmt.Sprintf("Child order : %v", args.childOrdering))
	Glob.PrintDebug("WC", fmt.Sprintf("Children : %v, BT_subst : %v, BT_formulas : %v, bt_bool : %v, Given_subst : %v, applied subst : %v, subst_found : %v", len(args.children), len(args.substsBT), len(args.formsBT), args.st.GetBTOnFormulas(), Core.SubstAndFormListToString(args.givenSubsts), args.st.GetAppliedSubst().ToString(), Core.SubstAndFormListToString(args.st.GetSubstsFound())))
	Glob.PrintDebug("WC", fmt.Sprintf(
		"MM : %v",
		Lib.ListToString(args.st.GetMM(), ",", "[]"),
	))
	Glob.PrintDebug("WC", fmt.Sprintf(
		"MC : %v",
		Lib.ListToString(args.st.GetMC(), ",", "[]"),
	))
}

/* Utilitary subfunctions */

func (ds *destructiveSearch) childrenClosedByThemselves(args wcdArgs, proofChildren [][]ProofStruct) error {
	Glob.PrintDebug("WC", "All children has finished by themselves")

	// All children are closed & did not send any subst, i.e., they can be closed.
	closeChildren(&args.children, true)

	// Remove all the metavariables that have been introduced in this node: the parent do not know them.
	substForFather := Core.RemoveElementWithoutMM(args.st.GetAppliedSubst().GetSubst(), args.st.GetMM())
	if !substForFather.IsEmpty() {
		args.st.SetSubstsFound([]Core.SubstAndForm{Core.MakeSubstAndForm(substForFather, args.st.GetAppliedSubst().GetForm())})
	} else {
		args.st.SetSubstsFound([]Core.SubstAndForm{})
	}

	// No need to append the current substitution, because the children returns it anyway (if it exists)
	// So here, the current substitution should be empty. Otherwise, there's a big bug somewhere else.
	if !args.currentSubst.IsEmpty() {
		return errors.New("current substitution is not empty but children close by themselves which shouldn't happen")
	}

	// Updates the proof using the proofs of the children of the node.
	args.st = updateProof(args, proofChildren)

	toMerge := Core.MakeUnifier()
	toMerge.AddSubstitutions(args.st.GetAppliedSubst().GetSubst(), args.st.GetAppliedSubst().GetSubst())
	unifier := args.st.GetGlobUnifier()
	unifier.Merge(toMerge)
	unifier.PruneMetasInSubsts(args.st.GetMC())
	args.st.SetGlobUnifier(unifier)

	WriteExchanges(args.fatherId, args.st, nil, Core.MakeEmptySubstAndForm(), "WaitChildren - To father - all closed")

	ds.sendSubToFather(args.c, true, false, args.fatherId, args.st, args.givenSubsts, args.nodeId, args.originalNodeId, args.toReintroduce)
	return nil
}

func (ds *destructiveSearch) passSubstToParent(args wcdArgs, proofChildren [][]ProofStruct, substs []Core.SubstAndForm) error {
	Glob.PrintDebug("WC", fmt.Sprintf("All children agree on the substitution(s) : %v", Unif.SubstListToString(Core.GetSubstListFromSubstAndFormList(substs))))

	// Updates the proof with what the children have found
	args.st = updateProof(args, proofChildren)
	newMetas := args.toReintroduce
	Glob.PrintDebug("WC", fmt.Sprintf("new meta to reintroduce: %v", Glob.IntListToString(newMetas)))

	// Remove all the metas introduced by the current node to only retrieve relevant ones for the parent.
	resultingSubstsAndForms := []Core.SubstAndForm{}
	resultingSubsts := []Unif.Substitutions{}

	for _, subst := range substs {
		Glob.PrintDebug("WC", fmt.Sprintf("Check the susbt, remove useless element and merge with applied subst :%v", subst.GetSubst().ToString()))
		err, merged := Core.MergeSubstAndForm(subst, args.st.GetAppliedSubst())

		if err != nil {
			Glob.PrintError("WC", "Error when merging the children substitution's with the applied one.")
			return err
		}

		cleaned := Core.RemoveElementWithoutMM(merged.GetSubst().Copy(), args.st.GetMM())
		substAndFormCleaned := Core.MakeSubstAndForm(cleaned, subst.GetForm())

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

			newMetas = Glob.UnionIntList(newMetas, retrieveMetaFromSubst(cleaned))
			Glob.PrintDebug("WC", fmt.Sprintf("New meta to reintroduce in loop: %v - %v ", Glob.IntListToString(newMetas), Glob.IntListToString(retrieveMetaFromSubst(cleaned))))

		} else {
			Glob.PrintDebug("WC", "Subst empty")
		}
	}

	toMerge := Core.MakeUnifier()
	toMerge.AddSubstitutions(args.st.GetAppliedSubst().GetSubst(), args.st.GetAppliedSubst().GetSubst())
	unifier := args.st.GetGlobUnifier()
	unifier.Merge(toMerge)
	unifier.PruneMetasInSubsts(args.st.GetMC())
	args.st.SetGlobUnifier(unifier)

	resultingSubstsAndForms = Core.RemoveEmptySubstFromSubstAndFormList(resultingSubstsAndForms)
	args.st.SetSubstsFound(resultingSubstsAndForms)
	WriteExchanges(args.fatherId, args.st, resultingSubstsAndForms, Core.MakeEmptySubstAndForm(), "WaitChildren - To father - all agree")

	closeChildren(&args.children, true)
	ds.sendSubToFather(args.c, true, len(args.st.GetSubstsFound()) != 0, args.fatherId, args.st, args.givenSubsts, args.nodeId, args.originalNodeId, newMetas)
	return nil
}

// If there is a problem of a child always checking the same substitution, it can be avoided here.
func (bs *destructiveSearch) passSubstToChildren(args wcdArgs, substs []Core.SubstAndForm) {
	subst, resultingSubsts := bs.chooseSubstitutionDestructive(Core.CopySubstAndFormList(substs), args.st.GetMM())
	Glob.PrintDebug("WC", fmt.Sprintf("There is more than one substitution, choose one : %v and send it to children", subst.ToString()))

	sendSubToChildren(args.children, subst)

	WriteExchanges(args.fatherId, args.st, substs, subst, "WaitChildren - To children")

	args.substsBT = append(args.substsBT, resultingSubsts...)
	args.st.SetBTOnFormulas(false)
	args.overwrite = false
	args.currentSubst = subst
	bs.waitChildren(args)
}

func (ds *destructiveSearch) manageOpenedChild(args wcdArgs) {
	Glob.PrintDebug("WC", "Open children previously found, tell to children to wait for me and try another substitution")
	closeChildren(&args.children, false)

	// If the completeness mode is active, then we need to deal with forbidden substitutions.
	if Glob.GetCompleteness() {
		args.st.SetForbiddenSubsts(Unif.AddSubstToSubstitutionsList(args.st.GetForbiddenSubsts(), args.currentSubst.GetSubst()))
	}

	if args.st.GetBTOnFormulas() && len(args.formsBT) > 0 {
		Glob.PrintDebug("WC", "Backtrack on DMT formulas.")
		ds.manageBacktrackForDMT(args)
	} else if len(args.substsBT) > 0 {
		Glob.PrintDebug("WC", "Backtrack on substitutions.")
		newSubst := ds.tryBTSubstitution(&args.substsBT, args.st.GetMM(), args.children)
		WriteExchanges(args.fatherId, args.st, []Core.SubstAndForm{newSubst}, Core.MakeEmptySubstAndForm(), "WaitChildren - Backtrack on substitutions.")
		// Mutually exclusive cases: when a backtrack is done on substitutions, this backtrack is prioritised from now on.
		args.st.SetBTOnFormulas(false)
		args.overwrite = false
		ds.waitChildren(args)
	} else {
		Glob.PrintDebug("WC", "A child is opened but no more backtracks are available.")
		WriteExchanges(args.fatherId, args.st, args.givenSubsts, args.currentSubst, "WaitChildren - Die - No more BT available")

		// In the complete version, we just have to restart the proofsearch forbidding the bad substitutions.
		if Glob.GetCompleteness() && len(args.children) > 1 && !args.currentSubst.IsEmpty() {
			Glob.PrintDebug("WC", "Restart proof with forbidden substitutions.")
			sendForbiddenToChildren(args.children, args.st.GetForbiddenSubsts())
			args.overwrite = false
			args.currentSubst = Core.MakeEmptySubstAndForm()
			ds.waitChildren(args)
		} else {
			Glob.PrintDebug("WC", "No solution. You should launch in complete mode.")
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
	WriteExchanges(args.fatherId, args.st, []Core.SubstAndForm{}, nextSaF.GetSaf().ToSubstAndForm(), "WaitChildren - Backtrack on form")

	childNode := Glob.IncrCptNode()

	// Update the proof-tree with the
	args.st.SetCurrentProofResultFormulas([]IntFormAndTermsList{MakeIntFormAndTermsList(childNode, Core.MakeSingleElementFormAndTermList(nextForm))})
	args.st.SetCurrentProofRule("Rewrite")
	args.st.SetCurrentProofRuleName("Rewrite")
	args.st.SetCurrentProofIdDMT(nextSaF.GetId_rewrite())

	// The last formula of getLF is the previous formula choosen among rewritten. So, discard it and add the new one
	args.st.SetLF(append(args.st.GetLF()[0:len(args.st.GetLF())-1].Copy(), nextForm))

	copiedState := args.st.Copy()
	communicationChild := Communication{make(chan bool), make(chan Result)}
	go ds.ProofSearch(Glob.GetGID(), copiedState, communicationChild, nextSaF.GetSaf().ToSubstAndForm(), childNode, args.originalNodeId, args.toReintroduce, false)
	Glob.PrintDebug("PS", "GO !")
	Glob.IncrGoRoutine(1)

	args.children = []Communication{communicationChild}
	args.overwrite = false
	args.childOrdering = []int{childNode}
	args.currentSubst = nextSaF.GetSaf().ToSubstAndForm()

	ds.waitChildren(args)
}

func updateProof(args wcdArgs, proofChildren [][]ProofStruct) State {
	// Update the proof with the given children proofs.
	if Glob.GetProof() {
		proofList := args.st.GetProof()
		if args.overwrite {
			// TODO: check if it gets properly rewritten when a backtrack on it is done.
			if proofList[len(proofList)-1].Rule == "Rewrite" && (proofChildren[0][0].Rule != "Rewrite" || proofChildren[0][0].Node_id != proofList[len(proofList)-1].Node_id) {
				proofList[len(proofList)-1].Children = [][]ProofStruct{}
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
