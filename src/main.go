/**
* Copyright 2022 by the authors (see AUTHORs).
*
* Goéland is an automated theorem prover for first order logic.
*
* This software is governed by the CeCILL license under French law and
* abiding by the rules of distribution of free software.  You can  use, 
* modify and/ or redistribute the software under the terms of the CeCILL-B
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
/***************/
/* gosat.go */
/***************/
/**
* This file provides the main function for lanche the program.
**/

package main

import (
	"flag"
	"fmt"
	"log"
	"os"
	"runtime"
	"runtime/pprof"
	"time"

	_ "net/http/pprof"

	treesearch "github.com/delahayd/gotab/code-trees/tree-search"
	"github.com/delahayd/gotab/global"
	"github.com/delahayd/gotab/plugin"
	"github.com/delahayd/gotab/search"
	basictypes "github.com/delahayd/gotab/types/basic-types"
	complextypes "github.com/delahayd/gotab/types/complex-types"
	exchanges "github.com/delahayd/gotab/visualization_exchanges"
	proof "github.com/delahayd/gotab/visualization_proof"
)

// Flags
var cpuprofile = flag.String("cpuprofile", "", "Write cpu profile to `file`")
var memprofile = flag.String("memprofile", "", "Write memory profile to `file`")
var flag_debug = flag.Bool("debug", false, "Print debug")
var flag_non_destructive = flag.Bool("nd", false, "Use the non-destructive version")
var flag_limit = flag.Int("l", -1, "Limit in destructive mode")
var flag_one_step = flag.Bool("one_step", false, "Only one step of search")
var flag_exchanges = flag.Bool("exchanges", false, "Write node exchanges in a file")
var flag_proof = flag.Bool("proof", false, "Write tree proof in a file")

func main() {
	global.SetStart(time.Now())
	// runtime.GOMAXPROCS(1)
	// fmt.Printf("nb of cpu : %v", runtime.NumCPU())

	flag.Parse()

	if *cpuprofile != "" {
		f, err := os.Create(*cpuprofile)
		if err != nil {
			log.Fatal("could not create CPU profile: ", err)
		}
		defer f.Close() // error handling omitted for example
		if err := pprof.StartCPUProfile(f); err != nil {
			log.Fatal("could not start CPU profile: ", err)
		}
		defer pprof.StopCPUProfile()
	}

	if *flag_debug {
		global.SetDebug(true)
	}

	if *flag_limit != -1 {
		global.SetLimit(*flag_limit)
	}

	if *flag_one_step {
		global.SetOneStep(true)
	}

	if *flag_non_destructive {
		global.SetDestructive(false)
		global.SetOneStep(true)
	}

	if *flag_exchanges {
		global.SetExchanges(true)
		exchanges.ResetExchangesFile()
	}

	if *flag_proof {
		global.SetProof(true)
		proof.ResetProofFile()
	}

	// treesearch.RunTests()
	mainGotab()

	if *memprofile != "" {
		f, err := os.Create(*memprofile)
		if err != nil {
			log.Fatal("could not create memory profile: ", err)
		}
		defer f.Close() // error handling omitted for example
		runtime.GC()    // get up-to-date statistics
		if err := pprof.WriteHeapProfile(f); err != nil {
			log.Fatal("could not write memory profile: ", err)
		}
	}
}

func mainGotab() {
	basictypes.Reset()
	args := os.Args
	problem := ""

	if len(args) < 2 {
		fmt.Printf("./gotab [options] problem_file\n")
		return
	}

	problem = args[len(args)-1]

	fmt.Printf("\n[%.6fs][%v][MAIN] Problem : %v\n", time.Since(global.GetStart()).Seconds(), global.GetGID(), problem)

	lstm, bound := complextypes.ParseMain(problem)
	global.PrintDebug("MAIN", fmt.Sprintf("Statement : %s", basictypes.StatementListToString(lstm)))
	if global.GetLimit() != -1 {
		bound = global.GetLimit()
	}
	Search(StatementListToFormula(lstm), bound)
}

/* Manage return from search for destructive and non-destructive versions  */
func ManageResult(c search.Communication) (bool, []proof.ProofStruct) {
	res := false
	final_proof := []proof.ProofStruct{}
	if global.IsDestructive() {
		result := <-c.GetResult()
		final_proof = result.GetProof()
		if result.GetNeedAnswer() {
			c.GetQuit() <- true
			global.PrintDebug("MAIN", "Close order sent")
		} else {
			global.PrintDebug("MAIN", "Close order not sent")
		}
		res = result.GetClosed()
	} else {
		open := false
		for !open && runtime.NumGoroutine() > 1 {
			res := <-c.GetResult()
			open = !res.GetClosed()
			time.Sleep(1 * time.Millisecond)
			global.PrintDebug("MAIN", fmt.Sprintf("open is : %v from %v", open, res.GetId()))
			global.PrintDebug("MAIN", fmt.Sprintf("%v goroutines still running - %v goroutines generated", runtime.NumGoroutine(), global.GetNbGoroutines()))
			fmt.Printf("%v goroutines still running - %v goroutines generated", runtime.NumGoroutine(), global.GetNbGoroutines())
		}

		res = !open

	}
	return res, final_proof
}

/* Print the result of search algorithm */
func PrintResult(res bool) {
	fmt.Printf("[%.6fs][%v][Res] %v goroutines created\n", time.Since(global.GetStart()).Seconds(), global.GetGID(), global.GetNbGoroutines())
	fmt.Printf("==== Result ====\n")
	if res {
		fmt.Printf("[%.6fs][%v][Res] La formule est valide\n", time.Since(global.GetStart()).Seconds(), global.GetGID())
		os.Stderr.WriteString("Valid\n")
	} else {
		fmt.Printf("[%.6fs][%v][Res] La formule n'est pas valide\n", time.Since(global.GetStart()).Seconds(), global.GetGID())
		os.Stderr.WriteString("Not valid\n")
	}

}

/* Begin the proof search */
func Search(f basictypes.Form, bound int) {
	global.PrintDebug("MAIN", fmt.Sprintf("Initial formula: %v", f.ToString()))

	res := false
	global.SetNbStep(1)
	limit := bound

	for ok := true; ok; ok = (!res && bound > 0 && !global.IsOneStep()) {
		basictypes.ResetMeta()
		proof.ResetProofFile()
		exchanges.ResetExchangesFile()

		global.PrintDebug("TMAINF", fmt.Sprintf("nb_step : %v", global.GetNbStep()))
		fmt.Printf("nb_step : %v - limit : %v\n", global.GetNbStep(), limit)

		tp := new(treesearch.Node)
		tn := new(treesearch.Node)

		st := complextypes.MakeState(limit, tp, tn)

		fmt.Printf("Launch Gotab with destructive = %v, data_struct = %v\n", global.IsDestructive(), global.GetDataStruct())

		global.SetNbGoroutines(0)
		st.SetLF([]basictypes.FormAndTerm{basictypes.MakeForm(f)})
		c := search.MakeCommunication(make(chan bool), make(chan search.Result))

		if global.GetExchanges() {
			exchanges.WriteExchanges(global.GetGID(), st, []complextypes.SubstAndForm{}, complextypes.MakeEmptySubstAndForm(), "Search")
		}

		go search.ProofSearch(global.GetGID(), st, c, complextypes.MakeEmptySubstAndForm())
		global.IncrGoRoutine(1)

		global.PrintDebug("MAIN", "GO")

		var final_proof []proof.ProofStruct
		res, final_proof = ManageResult(c)

		global.PrintDebug("MAIN", fmt.Sprintf("Nb of goroutines = %d", global.GetNbGoroutines()))
		global.PrintDebug("MAIN", fmt.Sprintf("%v goroutines still running", runtime.NumGoroutine()))

		if global.GetProof() {
			proof.WriteGraphProof(final_proof)
		}

		limit = 2 * limit
		global.SetNbStep(global.GetNbStep() + 1)
	}
	PrintResult(res)
}

func StatementListToFormula(lstm []basictypes.Statement) basictypes.Form {
	and_list := []basictypes.Form{}
	var not_form basictypes.Form

	for _, s := range lstm {
		switch s.GetRole() {
		case basictypes.Axiom:
			new_form := basictypes.RenameVariables(s.GetForm())
			if consumed := plugin.GetPluginManager().ApplySendAxiomHook(new_form.Copy()); !consumed {
				and_list = append(and_list, new_form)
			}
		case basictypes.Conjecture:
			not_form = s.GetForm()
		}
	}
	switch {
	case len(and_list) == 0 && not_form == nil:
		fmt.Printf("Aucune données")
		return nil
	case len(and_list) == 0:
		return basictypes.RefuteForm(not_form)
	case not_form == nil:
		return basictypes.MakeAnd(and_list)
	default:
		return basictypes.MakeAnd(append(and_list, basictypes.RefuteForm(not_form)))
	}
}
