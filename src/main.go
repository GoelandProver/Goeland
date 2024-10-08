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

	"github.com/GoelandProver/Goeland/modules/assisted"

	_ "net/http/pprof"

	_ "github.com/GoelandProver/Goeland/options"

	"github.com/GoelandProver/Goeland/global"
	dmt "github.com/GoelandProver/Goeland/modules/dmt"
	"github.com/GoelandProver/Goeland/parser"
	polymorphism "github.com/GoelandProver/Goeland/polymorphism/rules"
	typing "github.com/GoelandProver/Goeland/polymorphism/typing"
	"github.com/GoelandProver/Goeland/search"
	basictypes "github.com/GoelandProver/Goeland/types/basic-types"
)

var chAssistant chan bool = make(chan bool)

func main() {
	form, bound := presearchLoader()

	//This block cannot be removed from the main function, as it breaks how the CPU profiler works
	if global.GetCpuProfile() != "" {
		file, err := os.Create(global.GetCpuProfile())
		if err != nil {
			global.PrintFatal("MAIN", fmt.Sprintf("Could not create a CPU profile: %v", err))
		}
		defer file.Close()

		if err := pprof.StartCPUProfile(file); err != nil {
			global.PrintFatal("MAIN", fmt.Sprintf("Could not start the CPU profile: %v", err))
		}
		defer pprof.StopCPUProfile()
	}

	startSearch(form, bound)

	doMemProfile()
}

// Start solving
func startSearch(form basictypes.Form, bound int) {
	global.PrintDebug("MAIN", "Start search")

	if global.GetAssisted() {
		assisted.InitAssisted()

		go assisted.StartAssistant(chAssistant)

		go search.Search(form, bound)

		search.PrintSearchResult(<-chAssistant)
	} else {
		search.Search(form, bound)
	}

}

// Initialization
func presearchLoader() (basictypes.Form, int) {
	initEverything()

	problem := os.Args[len(os.Args)-1]
	global.SetProblemName(path.Base(problem))
	global.PrintInfo("MAIN", fmt.Sprintf("Problem : %v", problem))

	statements, bound, containsEquality := parser.ParseTPTPFile(problem)

	global.PrintDebug("MAIN", fmt.Sprintf("Statement : %s", basictypes.StatementListToString(statements)))

	if global.GetLimit() != -1 {
		bound = global.GetLimit()
	}

	form, bound, contEq := StatementListToFormula(statements, bound, path.Dir(problem))
	containsEquality = containsEquality || contEq

	if !containsEquality {
		global.SetPlugin("equality", false)
		global.PrintInfo("EQU", "Plugin Equality disabled")
	}

	if form == nil {
		global.PrintFatal("MAIN", "Problem not found")
	}

	form = checkForTypedProof(form)

	return form, bound
}

func doMemProfile() {
	if global.GetMemProfile() != "" {
		f, err := os.Create(global.GetMemProfile())
		if err != nil {
			global.PrintFatal("MAIN", fmt.Sprintf("Could not create a memory profile: %v", err))
		}
		defer f.Close()

		runtime.GC()
		if err := pprof.WriteHeapProfile(f); err != nil {
			global.PrintFatal("MAIN", fmt.Sprintf("Could not write the memory profile: %v", err))
		}
	}
}

/* Initializes the options, the loggers and some other global variables*/
func initEverything() {

	runtime.GOMAXPROCS(global.GetCoreLimit())

	global.SetStart(time.Now())

	typing.Init()

	basictypes.Init()
}

// ILL TODO this function should not have to call the parser. The parser should do it themselves.
/* Transforms a list of statements into a formula and returns it with its new bound */
func StatementListToFormula(statements []basictypes.Statement, old_bound int, problemDir string) (form basictypes.Form, bound int, containsEquality bool) {
	and_list := basictypes.NewFormList()
	var not_form basictypes.Form
	bound = old_bound

	for _, statement := range statements {
		switch statement.GetRole() {
		case basictypes.Include:
			file_name := statement.GetName()

			realname, err := getFile(file_name, problemDir)
			global.PrintDebug("MAIN", fmt.Sprintf("File to parse : %s\n", realname))

			if err != nil {
				global.PrintError("MAIN", err.Error())
				return nil, -1, false
			}

			new_lstm, bound_tmp, contEq := parser.ParseTPTPFile(realname)
			containsEquality = containsEquality || contEq
			new_form_list, new_bound, contEq := StatementListToFormula(new_lstm, bound_tmp, path.Join(problemDir, path.Dir(file_name)))
			containsEquality = containsEquality || contEq

			if new_form_list != nil {
				bound = new_bound
				and_list.Append(new_form_list)
			}

		case basictypes.Axiom:
			and_list = doAxiomStatement(and_list, statement)

		case basictypes.Conjecture:
			not_form = doConjectureStatement(statement)

		case basictypes.Type:
			doTypeStatement(statement)
		}
	}

	switch {
	case and_list.IsEmpty() && not_form == nil:
		return nil, bound, containsEquality
	case and_list.IsEmpty():
		return basictypes.RefuteForm(not_form), bound, containsEquality
	case not_form == nil:
		return basictypes.MakerAnd(and_list), bound, containsEquality
	default:
		flattened := and_list.Flatten()
		flattened.Append(basictypes.RefuteForm(not_form))
		return basictypes.MakerAnd(flattened), bound, containsEquality
	}
}

func doAxiomStatement(andList *basictypes.FormList, statement basictypes.Statement) *basictypes.FormList {
	newForm := statement.GetForm().RenameVariables()

	if !global.IsLoaded("dmt") {
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

func getFile(filename string, dir string) (string, error) {
	// Check in Goéland's path
	_, err := os.Stat(filename)
	fileExists := !(err != nil && errors.Is(err, os.ErrNotExist))
	if fileExists {
		return filename, err
	}

	// Check in the dir's path
	otherFilename := path.Join(dir, filename)
	_, err = os.Stat(filename)
	fileExists = !(err != nil && errors.Is(err, os.ErrNotExist))
	if fileExists {
		return otherFilename, err
	}

	// Check in the environment variable
	directory := os.Getenv("TPTP")
	otherFilename = path.Join(directory, filename)
	_, err = os.Stat(filename)
	fileExists = !(err != nil && errors.Is(err, os.ErrNotExist))
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
