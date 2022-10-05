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
/***************/
/* gosat.go */
/***************/
/**
* This file provides the main function for lanche the program.
**/

package main

import (
	"errors"
	"flag"
	"fmt"
	"log"
	"os"
	"path"
	"runtime"
	"runtime/pprof"
	"time"

	_ "net/http/pprof"

	treesearch "github.com/GoelandProver/Goeland/code-trees/tree-search"
	"github.com/GoelandProver/Goeland/global"
	"github.com/GoelandProver/Goeland/parser"
	coq "github.com/GoelandProver/Goeland/plugins/coq"
	dmt "github.com/GoelandProver/Goeland/plugins/dmt"
	equality "github.com/GoelandProver/Goeland/plugins/equality"
	polymorphism "github.com/GoelandProver/Goeland/polymorphism/rules"
	typing "github.com/GoelandProver/Goeland/polymorphism/typing"
	"github.com/GoelandProver/Goeland/search"
	basictypes "github.com/GoelandProver/Goeland/types/basic-types"
	complextypes "github.com/GoelandProver/Goeland/types/complex-types"
	exchanges "github.com/GoelandProver/Goeland/visualization_exchanges"
	proof "github.com/GoelandProver/Goeland/visualization_proof"
)

// Flags
var cpuprofile = flag.String("cpuprofile", "", "Write cpu profile to `file`")
var memprofile = flag.String("memprofile", "", "Write memory profile to `file`")
var flag_debug = flag.Bool("debug", false, "Print debug")
var flag_non_destructive = flag.Bool("nd", false, "Use the non-destructive version")
var flag_limit = flag.Int("l", -1, "Limit in destructive mode")
var flag_one_step = flag.Bool("one_step", false, "Only one step of search")
var flag_exchanges = flag.Bool("exchanges", false, "Write node exchanges in a file")
var flag_proof = flag.Bool("proof", false, "Displays a proof of the problem (in TPTP format)")
var flag_pretty_print = flag.Bool("pretty", false, "Prints are done with UTF-8 characters (when used in combination with -proof, results in a pretty proof)")
var flag_dmt = flag.Bool("dmt", false, "Activates deduction modulo theory")
var flag_noeq = flag.Bool("noeq", false, "Apply this flag if you want to disable equality")
var flag_type_proof = flag.Bool("type_proof", false, "Apply this flag if you want to enable type proof visualisation")
var flag_dmt_before_eq = flag.Bool("dmt_before_eq", false, "Apply dmt before equality")
var flag_ari = flag.Bool("ari", false, "Enable arithmetic module")
var conjecture_found bool
var flag_nb_core = flag.Int("core_limit", -1, "Number of core (default: all)")

func main() {
	initFlag()
	initialization()

	args := os.Args
	if len(args) < 2 {
		fmt.Printf("%s [options] problem_file\n", os.Args[0])
		return
	}

	problem := args[len(args)-1]
	problem_name := path.Base(problem)
	global.SetProblemName(problem_name)

	fmt.Printf("[%.6fs][%v][MAIN] Problem : %v\n", time.Since(global.GetStart()).Seconds(), global.GetGID(), problem)
	lstm, bound := parser.ParseTPTPFile(problem)
	global.PrintDebug("MAIN", fmt.Sprintf("Statement : %s", basictypes.StatementListToString(lstm)))
	if global.GetLimit() != -1 {
		bound = global.GetLimit()
	}

	form, bound := StatementListToFormula(lstm, bound, path.Dir(problem))
	if form == nil {
		fmt.Printf("[%.6fs][%v][Err] Problem not found.\n", time.Since(global.GetStart()).Seconds(), global.GetGID())
		os.Exit(1)
	}

	// If global context is empty, it means that this is not a typed proof.
	if !typing.EmptyGlobalContext() {
		formula, err := polymorphism.WellFormedVerification(form, *flag_type_proof)
		if err != nil {
			global.PrintDebug("MAIN", fmt.Sprintf("Typing error: %s\n", err.Error()))
			fmt.Printf("[%.6fs][%v][Type] Error: not well typed.\n", time.Since(global.GetStart()).Seconds(), global.GetGID())
			return
		}
		fmt.Printf("[%.6fs][%v][Type] Well typed.\n", time.Since(global.GetStart()).Seconds(), global.GetGID())
		form = formula
	}

	global.PrintDebug("MAIN", "Start search")
	Search(form, bound)

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

/* Manage return from search for destructive and non-destructive versions  */
func ManageResult(c search.Communication) (bool, []proof.ProofStruct) {
	res := false
	final_proof := []proof.ProofStruct{}
	if global.IsDestructive() {
		result := <-c.GetResult()

		global.PrintDebug("MAIN", fmt.Sprintf("Proof : %v", proof.ProofStructListToString(result.GetProof())))

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
			// TODO : kill all goroutines if open found
			// Close channel -> broadcast
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
		fmt.Printf("[%.6fs][%v][Res] %s RES : VALID\n", time.Since(global.GetStart()).Seconds(), global.GetGID(), "%")
		if conjecture_found {
			fmt.Printf("%s SZS status Theorem for %v\n", "%", global.GetProblemName())
		} else {
			fmt.Printf("%s SZS status Unsatisfiable for %v\n", "%", global.GetProblemName())
		}
	} else {
		fmt.Printf("[%.6fs][%v][Res] %s RES : NOT VALID\n", time.Since(global.GetStart()).Seconds(), global.GetGID(), "%")
		if conjecture_found {
			fmt.Printf("%s SZS status CounterSatisfiable for %v\n", "%", global.GetProblemName())
		} else {
			fmt.Printf("%s SZS status Satisfiable for %v\n", "%", global.GetProblemName())
		}
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

		global.PrintDebug("MAIN", fmt.Sprintf("nb_step : %v", global.GetNbStep()))
		fmt.Printf("nb_step : %v - limit : %v\n", global.GetNbStep(), limit)

		tp := new(treesearch.Node)
		tn := new(treesearch.Node)

		st := complextypes.MakeState(limit, tp, tn, f)
		st.SetCurrentProofNodeId(0)

		fmt.Printf("Launch Gotab with destructive = %v\n", global.IsDestructive())

		global.SetNbGoroutines(0)
		st.SetLF(basictypes.MakeSingleElementFormAndTermList(basictypes.MakeFormAndTerm(f, basictypes.MakeEmptyTermList())))
		c := search.MakeCommunication(make(chan bool), make(chan search.Result))
		// TODO : global quit channel in non destrutive

		if global.GetExchanges() {
			exchanges.WriteExchanges(global.GetGID(), st, []complextypes.SubstAndForm{}, complextypes.MakeEmptySubstAndForm(), "Search")
		}

		node_id := global.IncrCptNode()
		go search.ProofSearch(global.GetGID(), st, c, complextypes.MakeEmptySubstAndForm(), node_id, node_id, []int{})
		global.IncrGoRoutine(1)

		global.PrintDebug("MAIN", "GO")

		var final_proof []proof.ProofStruct
		var uninstantiated_meta basictypes.MetaList
		res, final_proof = ManageResult(c)
		uninstantiated_meta = proof.RetrieveUninstantiatedMetaFromProof(final_proof)

		global.PrintDebug("MAIN", fmt.Sprintf("Nb of goroutines = %d", global.GetNbGoroutines()))
		global.PrintDebug("MAIN", fmt.Sprintf("%v goroutines still running", runtime.NumGoroutine()))

		if global.GetProof() && res {
			proof.WriteGraphProof(final_proof)
			fmt.Printf("%s SZS output start Proof for %v\n", "%", global.GetProblemName())
			if global.IsCoqOutput() {
				fmt.Printf("%s", coq.MakeCoqOutput(final_proof, uninstantiated_meta))
			} else {
				fmt.Printf("%v", proof.ProofStructListToText(final_proof))
			}
			fmt.Printf("%s SZS output end Proof for %v\n", "%", global.GetProblemName())
		}

		limit = 2 * limit
		global.SetNbStep(global.GetNbStep() + 1)
	}
	PrintResult(res)
}

/* Transform a list of statement into a formula */
func StatementListToFormula(lstm []basictypes.Statement, old_bound int, current_dir string) (basictypes.Form, int) {
	and_list := basictypes.MakeEmptyFormList()
	var not_form basictypes.Form
	bound := old_bound

	for _, s := range lstm {
		switch s.GetRole() {
		case basictypes.Include:
			file_name := s.GetName()

			realname, err := getFile(file_name, current_dir)
			global.PrintDebug("MAIN", fmt.Sprintf("File to parse : %s\n", realname))

			if err != nil {
				fmt.Println(err.Error())
				return nil, -1
				//os.Exit(1)
			}

			new_lstm, bound_tmp := parser.ParseTPTPFile(realname)
			new_form_list, new_bound := StatementListToFormula(new_lstm, bound_tmp, path.Join(current_dir, path.Dir(file_name)))

			if new_form_list != nil {
				bound = new_bound
				and_list = append(and_list, new_form_list)
			}

		case basictypes.Axiom:
			new_form := s.GetForm().RenameVariables()
			if !global.IsLoaded("dmt") {
				and_list = append(and_list, new_form)
			} else if consumed := dmt.RegisterAxiom(new_form.Copy()); !consumed {
				and_list = append(and_list, new_form)
			}

		case basictypes.Conjecture:
			conjecture_found = true
			not_form = s.GetForm().RenameVariables()

		case basictypes.Type:
			typeScheme := s.GetAtomTyping().Ts

			if typeScheme == nil {
				continue
			}

			if typeScheme.Size() == 1 {
				if typeScheme.ToString() == "$tType" {
					// New type
					typing.MkTypeHint(s.GetAtomTyping().Literal.GetName())
				} else {
					if global.Is[typing.QuantifiedType](typeScheme) {
						typing.SavePolymorphScheme(s.GetAtomTyping().Literal.GetName(), typeScheme)
					} else {
						// Constant
						typing.SaveConstant(s.GetAtomTyping().Literal.GetName(), typeScheme.GetPrimitives()[0])
					}
				}
			} else {
				// TypeArrow !
				switch typeScheme.(type) {
				case typing.TypeArrow:
					typing.SaveTypeScheme(s.GetAtomTyping().Literal.GetName(), typing.GetInputType(typeScheme)[0], typing.GetOutType(typeScheme))
				case typing.QuantifiedType:
					typing.SavePolymorphScheme(s.GetAtomTyping().Literal.GetName(), typeScheme)
				}
			}
		}
	}
	switch {
	case len(and_list) == 0 && not_form == nil:
		//fmt.Printf("No data found.\n")
		//os.Exit(1)
		return nil, bound
	case len(and_list) == 0:
		return basictypes.RefuteForm(not_form), bound
	case not_form == nil:
		return basictypes.MakerAnd(and_list), bound
	default:
		return basictypes.MakerAnd(append(flatten(and_list), basictypes.RefuteForm(not_form))), bound
	}
}

func flatten(fl basictypes.FormList) basictypes.FormList {
	result := basictypes.FormList{}
	for _, form := range fl {
		if and, isAnd := form.(basictypes.And); isAnd {
			result = append(result, flatten(and.GetLF())...)
		} else {
			result = append(result, form)
		}
	}
	return result
}

/* Initialize global variable, time, call plugins */
func initialization() {
	// NB core
	runtime.GOMAXPROCS(global.GetCoreLimit())

	// Time
	global.SetStart(time.Now())

	// Search parameters
	conjecture_found = false
	// Init typing
	typing.Init()

	if *flag_ari {
		typing.InitTPTPArithmetic()
	}

	// Terms
	basictypes.Init()

	// Init pulgins
	if *flag_dmt {
		dmt.InitPlugin()
	}
	if !*flag_noeq {
		equality.InitPlugin()
	}
}

/* Init flag */
func initFlag() {
	flag.Parse()

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

	if *flag_pretty_print {
		global.DisplayPretty()
	}

	global.SetPlugin("dmt", *flag_dmt)
	global.SetPlugin("equality", !*flag_noeq)
	if *flag_dmt_before_eq {
		global.SetDMTBeforeEQ(true)
	}

	if *flag_nb_core != -1 {
		global.SetCoreLimit(*flag_nb_core)
	}

	coq.InitFlag()
}

func getFile(filename string, dir string) (string, error) {
	// 1 - From Goéland's path
	if _, err := os.Stat(filename); !(err != nil && errors.Is(err, os.ErrNotExist)) {
		return filename, err
	}

	// 2 - from dir's path
	if _, err := os.Stat(path.Join(dir, filename)); !(err != nil && errors.Is(err, os.ErrNotExist)) {
		return path.Join(dir, filename), err
	}

	// 3 - Environment variable
	directory := os.Getenv("TPTP")
	if _, err := os.Stat(path.Join(directory, filename)); !(err != nil && errors.Is(err, os.ErrNotExist)) {
		return path.Join(directory, filename), err
	}

	return "", fmt.Errorf("file %s not found", filename)
}
