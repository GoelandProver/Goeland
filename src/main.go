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

func main() {
	args := os.Args
	if len(args) < 2 {
		fmt.Printf("%s [options] problem_file\n", os.Args[0])
		return
	}

	initEverything()

	doCPUProfile()
	defer pprof.StopCPUProfile()

	problem := args[len(args)-1]
	global.SetProblemName(path.Base(problem))
	global.PrintInfo("MAIN", fmt.Sprintf("Problem : %v", problem))

	statements, bound := parser.ParseTPTPFile(problem)

	global.PrintDebug("MAIN", fmt.Sprintf("Statement : %s", basictypes.StatementListToString(statements)))

	if global.GetLimit() != -1 {
		bound = global.GetLimit()
	}

	form, bound := StatementListToFormula(statements, bound, path.Dir(problem))

	if form == nil {
		global.PrintFatal("MAIN", "Problem not found")
	}

	form = checkForTypedProof(form)

	Search(form, bound)

	doMemProfile()
}

/* Initializes the options, the loggers and some other global variables*/
func initEverything() {
	options.InitAndRunOptions()

	global.InitLogger()

	runtime.GOMAXPROCS(global.GetCoreLimit())

	global.SetStart(time.Now())

	typing.Init()

	basictypes.Init()
}

func doCPUProfile() {
	if global.GetCpuProfile() != "" {
		file, err := os.Create(global.GetCpuProfile())
		if err != nil {
			global.PrintFatal("MAIN", fmt.Sprintf("Could not create a CPU profile: %v", err))
		}
		defer file.Close()

		if err := pprof.StartCPUProfile(file); err != nil {
			global.PrintFatal("MAIN", fmt.Sprintf("Could not start the CPU profile: %v", err))
		}
	}
}

// ILL TODO this function should not have to call the parser. The parser should do it themselves.
/* Transforms a list of statements into a formula and returns it with its new bound */
func StatementListToFormula(statements []basictypes.Statement, old_bound int, problemDir string) (basictypes.Form, int) {
	and_list := basictypes.MakeEmptyFormList()
	var not_form basictypes.Form
	bound := old_bound

	for _, statement := range statements {
		switch statement.GetRole() {
		case basictypes.Include:
			file_name := statement.GetName()

			realname, err := getFile(file_name, problemDir)
			global.PrintDebug("MAIN", fmt.Sprintf("File to parse : %s\n", realname))

			if err != nil {
				global.PrintError("MAIN", err.Error())
				return nil, -1
			}

			new_lstm, bound_tmp := parser.ParseTPTPFile(realname)
			new_form_list, new_bound := StatementListToFormula(new_lstm, bound_tmp, path.Join(problemDir, path.Dir(file_name)))

			if new_form_list != nil {
				bound = new_bound
				and_list = append(and_list, new_form_list)
			}

		case basictypes.Axiom:
			and_list = testFunc(and_list, statement)

		case basictypes.Conjecture:
			not_form = doConjectureStatement(statement)

		case basictypes.Type:
			doTypeStatement(statement)
		}
	}

	switch {
	case len(and_list) == 0 && not_form == nil:
		return nil, bound
	case len(and_list) == 0:
		return basictypes.RefuteForm(not_form), bound
	case not_form == nil:
		return basictypes.MakerAnd(and_list), bound
	default:
		return basictypes.MakerAnd(append(flatten(and_list), basictypes.RefuteForm(not_form))), bound
	}
}

func testFunc(and_list basictypes.FormList, statement basictypes.Statement) basictypes.FormList {
	new_form := statement.GetForm().RenameVariables()

	if !global.IsLoaded("dmt") {
		return append(and_list, new_form)
	}

	consumed := dmt.RegisterAxiom(new_form.Copy())
	if !consumed {
		return append(and_list, new_form)
	}

	return and_list
}

func doConjectureStatement(statement basictypes.Statement) basictypes.Form {
	global.SetConjecture(true)
	return statement.GetForm().RenameVariables()
}

func doTypeStatement(statement basictypes.Statement) {
	typeScheme := statement.GetAtomTyping().Ts

	if typeScheme == nil {
		return
	}

	if typeScheme.Size() == 1 {
		isNewType := typeScheme.ToString() == "$tType"
		if isNewType {
			typing.MkTypeHint(statement.GetAtomTyping().Literal.GetName())
		} else {
			isConstant := !global.Is[typing.QuantifiedType](typeScheme)
			if isConstant {
				typing.SaveConstant(statement.GetAtomTyping().Literal.GetName(), typeScheme.GetPrimitives()[0])
			} else {
				typing.SavePolymorphScheme(statement.GetAtomTyping().Literal.GetName(), typeScheme)
			}
		}
	} else {
		switch typeScheme.(type) {
		case typing.TypeArrow:
			typing.SaveTypeScheme(statement.GetAtomTyping().Literal.GetName(), typing.GetInputType(typeScheme)[0], typing.GetOutType(typeScheme))
		case typing.QuantifiedType:
			typing.SavePolymorphScheme(statement.GetAtomTyping().Literal.GetName(), typeScheme)
		}
	}
}

func flatten(fl basictypes.FormList) basictypes.FormList {
	result := basictypes.FormList{}

	for _, form := range fl {
		formAsAnd, isFormAnd := form.(basictypes.And)

		if isFormAnd {
			result = append(result, flatten(formAsAnd.GetLF())...)
		} else {
			result = append(result, form)
		}
	}

	return result
}

func getFile(filename string, dir string) (string, error) {
	// Check in Goéland's path
	_, err := os.Stat(filename)
	fileExists := err != nil && errors.Is(err, os.ErrNotExist)
	if fileExists {
		return filename, err
	}

	// Check in the dir's path
	otherFilename := path.Join(dir, filename)
	_, err = os.Stat(filename)
	fileExists = err != nil && errors.Is(err, os.ErrNotExist)
	if fileExists {
		return otherFilename, err
	}

	// Check in the environment variable
	directory := os.Getenv("TPTP")
	otherFilename = path.Join(directory, filename)
	_, err = os.Stat(filename)
	fileExists = err != nil && errors.Is(err, os.ErrNotExist)
	if fileExists {
		return otherFilename, err
	}

	return "", fmt.Errorf("file %s not found", filename)
}

func checkForTypedProof(form basictypes.Form) basictypes.Form {
	isTypedProof := !typing.EmptyGlobalContext()

	if isTypedProof {
		formula, err := polymorphism.WellFormedVerification(form, global.GetTypeProof())

		if err != nil {
			global.PrintPanic("MAIN", fmt.Sprintf("Typing error: %v", err))
		} else {
			global.PrintInfo("MAIN", "Well typed.")
			return formula
		}
	}

	return form
}

/* Begin the proof search */
func Search(f basictypes.Form, bound int) {
	global.PrintDebug("MAIN", "Start search")
	global.PrintDebug("MAIN", fmt.Sprintf("Initial formula: %v", f.ToString()))

	f = f.CleanFormula()

	//renameVariables formula.go

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
				coqOutput := coq.MakeCoqOutput(final_proof, uninstantiated_meta)

				f, err := os.OpenFile("problem_coq.v", os.O_RDWR|os.O_CREATE|os.O_TRUNC, 0666)
				defer f.Close()

				if err != nil {
					log.Fatalf("Error opening problem_coq file: %v", err)
				}
				f.WriteString(coqOutput)

				fmt.Printf("%s", coqOutput)
			} else {
				fmt.Printf("%v", proof.ProofStructListToText(final_proof))
			}
			global.PrintInfo("MAIN", fmt.Sprintf("%s SZS output end Proof for %v", "%", global.GetProblemName()))
		}

		limit = 2 * limit
		global.SetNbStep(global.GetNbStep() + 1)
	}
	PrintSearchResult(res)
}

/* Manage return from search for destructive and non-destructive versions  */
func ManageResult(c search.Communication) (bool, []proof.ProofStruct) {
	res := false
	final_proof := []proof.ProofStruct{}

	if global.IsDestructive() {
		final_proof, res = manageDestructiveResult(c)
	} else {
		res = manageNotDestructiveResult(c)
	}

	return res, final_proof
}

func manageDestructiveResult(c search.Communication) ([]proof.ProofStruct, bool) {
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

func manageNotDestructiveResult(c search.Communication) bool {
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

func doMemProfile() {
	if global.GetMemProfile() != "" {
		f, err := os.Create(global.GetMemProfile())
		if err != nil {
			global.PrintFatal("MAIN", fmt.Sprintf("Could not create a memory profile: %v", err))
		}
		defer f.Close()

		//Calls the garbage collector to get up-to-date statistics
		runtime.GC()
		if err := pprof.WriteHeapProfile(f); err != nil {
			global.PrintFatal("MAIN", fmt.Sprintf("Could not write the memory profile: %v", err))
		}
	}
}
