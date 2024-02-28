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

/**
* This file contains functions and types common to destructive and non-destructive version of tableaux and the search algorithm
**/

package search

import (
	"fmt"

	treetypes "github.com/GoelandProver/Goeland/code-trees/tree-types"
	"github.com/GoelandProver/Goeland/global"
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
	manageResult(c Communication) (complextypes.Unifier, []proof.ProofStruct, bool)
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
	global.PrintDebug("MAIN", fmt.Sprintf("Initial formula: %v", formula.ToString()))

	res := UsedSearch.search(formula, bound)

	PrintSearchResult(res)
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
