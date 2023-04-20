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
	"github.com/GoelandProver/Goeland/options"
	"github.com/GoelandProver/Goeland/parser"
	coq "github.com/GoelandProver/Goeland/plugins/coq"
	dmt "github.com/GoelandProver/Goeland/plugins/dmt"
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

var conjecture_found bool

func main() {
	options.RunOptions()
	global.InitLogger()
	initialization()
	// go tool pprof -http=localhost:8887 cpu.prof

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

	args := os.Args
	if len(args) < 2 {
		fmt.Printf("%s [options] problem_file\n", os.Args[0])
		return
	}

	problem := args[len(args)-1]
	problem_name := path.Base(problem)
	global.SetProblemName(problem_name)

	global.PrintInfo("MAIN", fmt.Sprintf("Problem : %v", problem))
	lstm, bound := parser.ParseTPTPFile(problem)
	global.PrintDebug("MAIN", fmt.Sprintf("Statement : %s", basictypes.StatementListToString(lstm)))
	if global.GetLimit() != -1 {
		bound = global.GetLimit()
	}

	form, bound := StatementListToFormula(lstm, bound, path.Dir(problem))
	if form == nil {
		global.PrintError("MAIN", "Problem not found")
		os.Exit(1)
	}

	// if bound != 0 {
	// 	bound = 2
	// }

	// If global context is empty, it means that this is not a typed proof.
	if !typing.EmptyGlobalContext() {
		formula, err := polymorphism.WellFormedVerification(form, global.GetTypeProof())
		if err != nil {
			global.PrintError("MAIN", fmt.Sprintf("Typing error: %s\n", err.Error()))
			return
		}
		global.PrintInfo("MAIN", "Well typed.")
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
			global.PrintInfo("MAIN", fmt.Sprintf("%v goroutines still running - %v goroutines generated", runtime.NumGoroutine(), global.GetNbGoroutines()))
		}

		res = !open

	}
	return res, final_proof
}

/* Print the result of search algorithm */
func PrintResult(res bool) {
	global.PrintInfo("Res", fmt.Sprintf("%v goroutines created", global.GetNbGoroutines()))
	global.PrintInfo("Res", "==== Result ====")
	if res {
		global.PrintInfo("Res", "% RES : VALID")
		if conjecture_found {
			global.PrintInfo("Res", fmt.Sprintf("%s SZS status Theorem for %v", "%", global.GetProblemName()))
		} else {
			global.PrintInfo("Res", fmt.Sprintf("%s SZS status Unsatisfiable for %v", "%", global.GetProblemName()))
		}
	} else {
		global.PrintInfo("Res", "% RES : NOT VALID")
		if conjecture_found {
			global.PrintInfo("Res", fmt.Sprintf("%s SZS status CounterSatisfiable for %v", "%", global.GetProblemName()))
		} else {
			global.PrintInfo("Res", fmt.Sprintf("%s SZS status Satisfiable for %v", "%", global.GetProblemName()))
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

		global.PrintInfo("MAIN", fmt.Sprintf("nb_step : %v - limit : %v", global.GetNbStep(), limit))

		tp := new(treesearch.Node)
		tn := new(treesearch.Node)
		// tp := new(datastruct.FormListDS)
		// tn := new(datastruct.FormListDS)

		st := complextypes.MakeState(limit, tp, tn, f)
		st.SetCurrentProofNodeId(0)

		global.PrintInfo("MAIN", fmt.Sprintf("Launch Gotab with destructive = %v", global.IsDestructive()))

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
			global.PrintInfo("MAIN", fmt.Sprintf("%s SZS output start Proof for %v", "%", global.GetProblemName()))
			if global.IsCoqOutput() {
				fmt.Printf("%s", coq.MakeCoqOutput(final_proof, uninstantiated_meta))
			} else {
				fmt.Printf("%v", proof.ProofStructListToText(final_proof))
			}
			global.PrintInfo("MAIN", fmt.Sprintf("%s SZS output end Proof for %v", "%", global.GetProblemName()))
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
				global.PrintError("MAIN", err.Error())
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

	// Terms
	basictypes.Init()
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
