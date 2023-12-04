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
	"time"

	treetypes "github.com/GoelandProver/Goeland/code-trees/tree-types"
	"github.com/GoelandProver/Goeland/global"
	"github.com/GoelandProver/Goeland/plugins/coq"
	"github.com/GoelandProver/Goeland/plugins/lambdapi"
	basictypes "github.com/GoelandProver/Goeland/types/basic-types"
	complextypes "github.com/GoelandProver/Goeland/types/complex-types"
	proof "github.com/GoelandProver/Goeland/visualization_proof"
)

type SearchAlgorithm interface {
	search(basictypes.Form, int) bool
	ProofSearch(uint64, complextypes.State, Communication, complextypes.SubstAndForm, int, int, []int)
	DoEndManageBeta(uint64, complextypes.State, Communication, []Communication, int, int, []int, []int)
	manageRewriteRules(uint64, complextypes.State, Communication, basictypes.FormAndTermsList, int, int, []int)
	setApplyRules(func(uint64, complextypes.State, Communication, basictypes.FormAndTermsList, int, int, []int))
	ManageClosureRule(uint64, *complextypes.State, Communication, []treetypes.Substitutions, basictypes.FormAndTerms, int, int) (bool, []complextypes.SubstAndForm)
}

var UsedSearch SearchAlgorithm

func init() {
	SetSearchAlgorithm(NewDestructiveSearch())
}

func SetSearchAlgorithm(algo SearchAlgorithm) {
	UsedSearch = algo
}

func SetApplyRules(function func(uint64, complextypes.State, Communication, basictypes.FormAndTermsList, int, int, []int)) {
	UsedSearch.setApplyRules(function)
}

/* Begin the proof search */
func Search(formula basictypes.Form, bound int) {
	global.PrintDebug("MAIN", "Start search")
	formula = formula.CleanFormula()
	global.PrintDebug("MAIN", fmt.Sprintf("Initial formula: %v", formula.ToString()))

	res := UsedSearch.search(formula, bound)

	PrintSearchResult(res)
}

func printProof(res bool, final_proof []proof.ProofStruct, uninstanciatedMeta basictypes.MetaList) {
	if global.GetProof() {
		global.PrintInfo("MAIN", fmt.Sprintf("%s SZS output start Proof for %v", "%", global.GetProblemName()))

		switch {
		case global.IsCoqOutput():
			printCoqOutput(final_proof, uninstanciatedMeta)
		case global.IsLambdapiOutput():
			printLambdapiOutput(final_proof, uninstanciatedMeta)
		default:
			fmt.Printf("%v", proof.ProofStructListToText(final_proof))
		}

		global.PrintInfo("MAIN", fmt.Sprintf("%s SZS output end Proof for %v", "%", global.GetProblemName()))
	}
}

func printCoqOutput(final_proof []proof.ProofStruct, uninstanciatedMeta basictypes.MetaList) {
	coqOutput := coq.MakeCoqOutput(final_proof, uninstanciatedMeta)

	if global.GetWriteLogs() {
		f, err := os.OpenFile("problem_coq.v", os.O_RDWR|os.O_CREATE|os.O_TRUNC, 0666)

		if err != nil {
			log.Fatalf("Error opening problem_coq file: %v", err)
		}
		defer f.Close()
		f.WriteString(coqOutput)
	}

	fmt.Printf("%s", coqOutput)
}

func printLambdapiOutput(final_proof []proof.ProofStruct, uninstanciatedMeta basictypes.MetaList) {
	lambdapiOutput := lambdapi.MakeLambdapiOutput(final_proof, uninstanciatedMeta)

	if global.GetWriteLogs() {
		f, err := os.OpenFile("./LambdaPi/problem_lp.lp", os.O_RDWR|os.O_CREATE|os.O_TRUNC, 0666)

		if err != nil {
			log.Fatalf("Error opening problem_lp file: %v", err)
		}

		defer f.Close()
		f.WriteString(lambdapiOutput)
	}

	fmt.Printf("%s", lambdapiOutput)
}

/* Manage return from search for destructive and non-destructive versions  */
func manageResult(c Communication) (complextypes.Unifier, bool, []proof.ProofStruct) {
	res := false
	final_proof := []proof.ProofStruct{}
	unifier := complextypes.MakeUnifier()

	if global.IsDestructive() {
		unifier, final_proof, res = manageDestructiveResult(c)
	} else {
		res = manageNotDestructiveResult(c)
	}

	return unifier, res, final_proof
}

func manageDestructiveResult(c Communication) (complextypes.Unifier, []proof.ProofStruct, bool) {
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

func manageNotDestructiveResult(c Communication) bool {
	open := false

	for !open && runtime.NumGoroutine() > 1 {

		// TODO : kill all goroutines if open found
		// Close channel -> broadcast
		res := <-c.getResult()

		open = !res.isClosed()

		time.Sleep(1 * time.Millisecond)

		global.PrintDebug("MAIN", fmt.Sprintf("open is : %v from %v", open, res.getId()))
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
			status = "Theorem"
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
	printStandardSolution(status)
}

// Do not change this function, it is the standard output for TPTP files
func printStandardSolution(status string) {
	fmt.Printf("%s SZS status %v for %v\n", "%", status, global.GetProblemName())
}

func retrieveMetaFromSubst(s treetypes.Substitutions) []int {
	res := []int{}
	for _, s_element := range s {
		res = global.AppendIfNotContainsInt(res, s_element.Key().GetFormula())
	}
	return res
}
