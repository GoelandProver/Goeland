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
* This file provides the main function for lanche the program.
**/

package main

import (
	"errors"
	"fmt"
	"os"
	"path"
	"runtime"
	"runtime/pprof"
	"time"

	_ "net/http/pprof"

	"github.com/GoelandProver/Goeland/AST"
	"github.com/GoelandProver/Goeland/Core"
	"github.com/GoelandProver/Goeland/Engine"
	"github.com/GoelandProver/Goeland/Glob"
	"github.com/GoelandProver/Goeland/Lib"
	"github.com/GoelandProver/Goeland/Mods/assisted"
	"github.com/GoelandProver/Goeland/Mods/dmt"
	equality "github.com/GoelandProver/Goeland/Mods/equality/bse"
	"github.com/GoelandProver/Goeland/Parser"
	"github.com/GoelandProver/Goeland/Search"
	"github.com/GoelandProver/Goeland/Search/incremental"
	"github.com/GoelandProver/Goeland/Typing"
	"github.com/GoelandProver/Goeland/Unif"
)

var chAssistant chan bool = make(chan bool)
var main_label = "main"
var debug Glob.Debugger

func printChrono(id string, start time.Time) {
	fmt.Printf("%s Chrono - %s - %d\n", "%", id, time.Since(start).Milliseconds())
}

func main() {
	initEverything()
	if Glob.GetPrintVersion() {
		fmt.Printf("You are running Goeland v.%v\n", Glob.GetVersion())
		return
	}

	form, bound := presearchLoader()

	// This block cannot be removed from the main function, as it breaks how the CPU profiler works
	if Glob.GetCpuProfile() != "" {
		file, err := os.Create(Glob.GetCpuProfile())
		if err != nil {
			Glob.Fatal(main_label, fmt.Sprintf("Could not create a CPU profile: %v", err))
		}
		defer file.Close()

		if err := pprof.StartCPUProfile(file); err != nil {
			Glob.Fatal(main_label, fmt.Sprintf("Could not start the CPU profile: %v", err))
		}
		defer pprof.StopCPUProfile()
	}

	startSearch(form, bound)

	doMemProfile()
}

// Start solving
func startSearch(form AST.Form, bound int) {
	debug(Lib.MkLazy(func() string { return "Start search" }))

	// FIXME: assisted should be a plugin.
	// Ideally, we should create a hook here in order to let plugins do what
	// they want and launch the proofsearch.
	if Glob.GetAssisted() {
		assisted.InitAssisted()

		go assisted.StartAssistant(chAssistant)

		go Search.Search(form, bound)

		Search.PrintSearchResult(<-chAssistant)
	} else {
		Search.Search(form, bound)
	}

}

// Initialization
func presearchLoader() (AST.Form, int) {
	problem := os.Args[len(os.Args)-1]
	Glob.SetProblemName(path.Base(problem))

	Glob.PrintInfo(
		"preloader",
		fmt.Sprintf("You are running problem %s on Goeland v.%s", path.Base(problem), Glob.GetVersion()),
	)
	debug(
		Lib.MkLazy(func() string {
			return fmt.Sprintf("Full problem path: %s", problem)
		}),
	)

	statements, bound, containsEquality := Parser.ParseTPTPFile(problem)
	actual_statements, is_typed_problem := Engine.ToInternalSyntax(statements)

	debug(
		Lib.MkLazy(func() string {
			return fmt.Sprintf(
				"Statement : %s", Core.StatementListToString(actual_statements))
		}),
	)

	if Glob.GetLimit() != -1 {
		bound = Glob.GetLimit()
	}

	form, bound, contEq, is_typed_include := StatementListToFormula(actual_statements, bound, path.Dir(problem))
	containsEquality = containsEquality || contEq

	if !containsEquality {
		Glob.SetPlugin("equality", false)
		Glob.PrintInfo("EQU", "Plugin Equality disabled")
	}

	if form == nil {
		Glob.Fatal(main_label, "Problem not found")
	}

	if is_typed_problem || is_typed_include {
		checkForTypedProof(form)
	}

	return form, bound
}

func doMemProfile() {
	if Glob.GetMemProfile() != "" {
		f, err := os.Create(Glob.GetMemProfile())
		if err != nil {
			Glob.Fatal(main_label, fmt.Sprintf("Could not create a memory profile: %v", err))
		}
		defer f.Close()

		runtime.GC()
		if err := pprof.WriteHeapProfile(f); err != nil {
			Glob.Fatal(main_label, fmt.Sprintf("Could not write the memory profile: %v", err))
		}
	}
}

/* Initializes the options, the loggers and some other Glob variables*/
func initEverything() {
	Glob.SetStart(time.Now())
	// Always init logs before debuggers
	Glob.InitLogs()
	// Always init debuggers before options
	initDebuggers()
	initOpts()
	runtime.GOMAXPROCS(Glob.GetCoreLimit())
	AST.Init()
	Typing.Init()
}

func initDebuggers() {
	debug = Glob.CreateDebugger(main_label)
	assisted.InitDebugger()
	AST.InitDebugger()
	Core.InitDebugger()
	dmt.InitDebugger()
	equality.InitDebugger()
	incremental.InitDebugger()
	Search.InitDebugger()
	// Typing.InitDebugger()
	Unif.InitDebugger()
	Engine.InitDebugger()
}

// FIXME: eventually, we would want to add an "interpretation" layer between elab and internal representation that does this
func StatementListToFormula(
	statements []Core.Statement,
	old_bound int,
	problemDir string,
) (form AST.Form, bound int, containsEquality bool, is_typed_problem bool) {
	and_list := Lib.NewList[AST.Form]()
	is_typed_problem = false
	var not_form AST.Form
	bound = old_bound

	for _, statement := range statements {
		switch statement.GetRole() {
		case Core.Include:
			file_name := statement.GetName()

			realname, err := getFile(file_name, problemDir)
			debug(Lib.MkLazy(func() string { return fmt.Sprintf("File to parse : %s\n", realname) }))

			if err != nil {
				Glob.PrintError(main_label, err.Error())
				return nil, -1, false, false
			}

			new_lstm, bound_tmp, contEq := Parser.ParseTPTPFile(realname)
			actual_new_lstm, is_typed := Engine.ToInternalSyntax(new_lstm)
			containsEquality = containsEquality || contEq
			new_form_list, new_bound, contEq, is_typed := StatementListToFormula(
				actual_new_lstm,
				bound_tmp,
				path.Join(problemDir, path.Dir(file_name)),
			)
			containsEquality = containsEquality || contEq
			is_typed_problem = is_typed_problem || is_typed

			if new_form_list != nil {
				bound = new_bound
				and_list.Append(new_form_list)
			}

		case Core.Axiom:
			switch f := statement.GetForm().(type) {
			case Lib.Some[AST.Form]:
				and_list = doAxiomStatement(and_list, f.Val)
			case Lib.None[AST.Form]:
				Glob.Anomaly("main", "Axiom statement "+statement.ToString()+" has no formula")
			}

		case Core.Conjecture:
			switch f := statement.GetForm().(type) {
			case Lib.Some[AST.Form]:
				not_form = doConjectureStatement(f.Val)
			case Lib.None[AST.Form]:
				Glob.Anomaly("main", "Conjecture statement "+statement.ToString()+" has no formula")
			}

		case Core.Type:
			switch ty := statement.GetAtomTyping().(type) {
			case Lib.Some[Core.TFFAtomTyping]:
				doTypeStatement(ty.Val)
			case Lib.None[Core.TFFAtomTyping]:
				Glob.Anomaly("main", "Type statement "+statement.ToString()+" has no formula")
			}
		}
	}

	switch {
	case and_list.Empty() && not_form == nil:
		return nil, bound, containsEquality, is_typed_problem
	case and_list.Empty():
		return AST.MakerNot(not_form), bound, containsEquality, is_typed_problem
	case not_form == nil:
		return AST.MakerAnd(and_list), bound, containsEquality, is_typed_problem
	default:
		flattened := AST.LsFlatten(and_list)
		flattened.Append(AST.MakerNot(not_form))
		return AST.MakerAnd(flattened), bound, containsEquality, is_typed_problem
	}
}

func doAxiomStatement(andList Lib.List[AST.Form], f AST.Form) Lib.List[AST.Form] {
	newForm := f.RenameVariables()

	// FIXME: dmt should be a plugin and therefore not checked here.
	// Ideally, we want to be able to define a hook here and let the plugins do
	// whatever they want, returning only whether they consumed the axiom or
	// not. It would also avoid duplicated code.
	if !Glob.IsLoaded("dmt") {
		andList.Append(newForm)
		return andList
	}

	consumed := dmt.RegisterAxiom(newForm.Copy())
	if !consumed {
		andList.Append(newForm)
		return andList
	}

	return andList
}

func doConjectureStatement(f AST.Form) AST.Form {
	Glob.SetConjecture(true)
	return f.RenameVariables()
}

func doTypeStatement(atomTyping Core.TFFAtomTyping) {
	typeScheme := atomTyping.Ty

	if typeScheme == nil {
		Glob.PrintWarn("main", fmt.Sprintf("The constant %s has no type!", atomTyping.Literal.ToString()))
	}

	Typing.AddToGlobalEnv(atomTyping.Literal.GetName(), atomTyping.Ty)
}

func getFile(filename string, dir string) (string, error) {
	fileExists := func(err error) bool {
		return err == nil && !errors.Is(err, os.ErrNotExist)
	}
	// Check in Goéland's path
	_, err := os.Stat(filename)
	if fileExists(err) {
		return filename, err
	}

	// Check in the dir's path
	otherFilename := path.Join(dir, filename)
	_, err = os.Stat(otherFilename)
	if fileExists(err) {
		return otherFilename, err
	}

	// Check in the environment variable
	directory := os.Getenv("TPTP")
	otherFilename = path.Join(directory, filename)
	_, err = os.Stat(otherFilename)
	if fileExists(err) {
		return otherFilename, err
	}

	return "", fmt.Errorf("file %s not found", filename)
}

func checkForTypedProof(form AST.Form) {
	if !Glob.NoTypeCheck() && !Typing.TypeCheck(form) {
		Glob.Fatal(main_label, fmt.Sprintf("Formula %s is not well typed", form.ToString()))
	}
	Glob.PrintInfo(main_label, "Problem is well typed")
}
