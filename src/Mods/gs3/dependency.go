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
package gs3

import (
	"github.com/GoelandProver/Goeland/AST"
	"github.com/GoelandProver/Goeland/Glob"
	"github.com/GoelandProver/Goeland/Lib"
)

const (
	IS_ALL = iota
	IS_EXISTS
)

type occurrence []int
type occurrences []occurrence

// ----------------------------------------------------------------------------
// The gamma-formulas case.
// ----------------------------------------------------------------------------

func manageGammasInstantiations(initialForm, resultForm AST.Form) AST.Term {
	var term AST.Term
	normalisedInitialForm := getNextFormula(initialForm.Copy())
	//PrintInfo("FORMS", fmt.Sprintf("init: %s, result: %s", initialForm.ToString(), resultForm.ToString()))
	switch initialGamma := initialForm.(type) {
	case AST.All:
		term = getResultTerm(initialGamma.GetVarList()[0], normalisedInitialForm, resultForm)
	case AST.Not:
		if ex, ok := initialGamma.GetForm().(AST.Ex); ok {
			term = getResultTerm(ex.GetVarList()[0], normalisedInitialForm, resultForm)
		}
	}
	//PrintInfo("TERM", fmt.Sprintf("Term: %s ; Result: %s", term.ToString(), resultForm.ToString()))
	return term
}

// ----------------------------------------------------------------------------
// The delta-formula case
// ----------------------------------------------------------------------------

func manageDeltasSkolemisations(initialForm, resultForm AST.Form) AST.Term {
	var term AST.Term
	normalisedInitialForm := getNextFormula(initialForm.Copy())
	switch initialDelta := initialForm.(type) {
	case AST.Ex:
		term = getResultTerm(initialDelta.GetVarList()[0], normalisedInitialForm, resultForm)
	case AST.Not:
		if all, ok := initialDelta.GetForm().(AST.All); ok {
			term = getResultTerm(all.GetVarList()[0], normalisedInitialForm, resultForm)
		}
	}
	return term
}

// ----------------------------------------------------------------------------
// Utilitary functions
// ----------------------------------------------------------------------------

func getNextFormula(form AST.Form) AST.Form {
	switch f := form.(type) {
	case AST.All:
		varList := f.GetVarList()
		if len(varList) > 1 {
			return AST.MakerAll(varList[1:], f.GetForm())
		}
		return f.GetForm()
	case AST.Ex:
		varList := f.GetVarList()
		if len(varList) > 1 {
			return AST.MakerEx(varList[1:], f.GetForm())
		}
		return f.GetForm()
	case AST.Not:
		return AST.MakerNot(getNextFormula(f.GetForm()))
	}
	return form
}

func getResultTerm(v AST.Var, bareForm, endForm AST.Form) AST.Term {
	variablesOccurrences := getAllVariableOccurrences(v, bareForm)
	return getTermAt(endForm, variablesOccurrences)
}

// Explores the form and if a variable in the varlist is found, returns its occurrence.
func getAllVariableOccurrences(v AST.Var, form AST.Form) occurrences {
	return getVariableOccurrencesForm(v, form, occurrences{}, occurrence{})
}

func getVariableOccurrencesForm(v AST.Var, form AST.Form, currentOcc occurrences, path occurrence) occurrences {
	workingPath := make(occurrence, len(path))
	copy(workingPath, path)
	switch f := form.(type) {
	case AST.Pred:
		for i, term := range f.GetArgs().GetSlice() {
			currentOcc = getVariableOccurrencesTerm(v, term, currentOcc, appcp(workingPath, i))
		}
	case AST.Not:
		currentOcc = getUnaryOcc(v, f.GetForm(), currentOcc, workingPath)
	case AST.And:
		currentOcc = getNAryOcc(v, currentOcc, workingPath, f.GetChildFormulas())
	case AST.Or:
		currentOcc = getNAryOcc(v, currentOcc, workingPath, f.GetChildFormulas())
	case AST.Imp:
		currentOcc = getNAryOcc(v, currentOcc, workingPath, Lib.MkListV(f.GetF1(), f.GetF2()))
	case AST.Equ:
		currentOcc = getNAryOcc(v, currentOcc, workingPath, Lib.MkListV(f.GetF1(), f.GetF2()))
	case AST.All:
		currentOcc = getUnaryOcc(v, f.GetForm(), currentOcc, workingPath)
	case AST.Ex:
		currentOcc = getUnaryOcc(v, f.GetForm(), currentOcc, workingPath)
	}
	return currentOcc
}

func getUnaryOcc(v AST.Var, form AST.Form, currentOcc occurrences, path occurrence) occurrences {
	return getVariableOccurrencesForm(v, form, currentOcc, append(path, 0))
}

func getNAryOcc(v AST.Var, currentOcc occurrences, path occurrence, fl Lib.List[AST.Form]) occurrences {
	for i, nf := range fl.GetSlice() {
		currentOcc = getVariableOccurrencesForm(v, nf, currentOcc, appcp(path, i))
	}
	return currentOcc
}

func getVariableOccurrencesTerm(v AST.Var, term AST.Term, currentOcc occurrences, path occurrence) occurrences {
	workingPath := make(occurrence, len(path))
	copy(workingPath, path)
	switch t := term.(type) {
	case AST.Var:
		if t.Equals(v) {
			currentOcc = append(currentOcc, workingPath)
		}
	case AST.Fun:
		for i, nt := range t.GetArgs().GetSlice() {
			currentOcc = getVariableOccurrencesTerm(v, nt, currentOcc, appcp(workingPath, i))
		}
	}
	return currentOcc
}

func getTermAt(form AST.Form, occsArr occurrences) AST.Term {
	var term AST.Term
	for _, occ := range occsArr {
		t := getTermAux(form, occ)
		if term != nil {
			if !term.Equals(t) {
				Glob.PrintError("GTA", "The same variable is instanciated as two different terms.")
			}
		} else {
			term = t
		}
	}
	return term
}

func getTermAux(form AST.Form, occ occurrence) AST.Term {
	var term AST.Term

	switch f := form.(type) {
	case AST.Pred:
		if occ[0] < f.GetArgs().Len() {
			term = getTerm(f.GetArgs().At(occ[0]), occ[1:])
		}
	case AST.Not:
		term = getUnaryTerm(f.GetForm(), occ)
	case AST.And:
		term = getNAryTerm(f.GetChildFormulas(), occ)
	case AST.Or:
		term = getNAryTerm(f.GetChildFormulas(), occ)
	case AST.Imp:
		term = getNAryTerm(Lib.MkListV(f.GetF1(), f.GetF2()), occ)
	case AST.Equ:
		term = getNAryTerm(Lib.MkListV(f.GetF1(), f.GetF2()), occ)
	case AST.All:
		term = getUnaryTerm(f.GetForm(), occ)
	case AST.Ex:
		term = getUnaryTerm(f.GetForm(), occ)
	}
	return term
}

func getUnaryTerm(form AST.Form, occ occurrence) AST.Term {
	if occ[0] > 0 {
		return nil
	}

	return getTermAux(form, occ[1:])
}

func getNAryTerm(fl Lib.List[AST.Form], occ occurrence) AST.Term {
	if occ[0] >= fl.Len() {
		return nil
	}

	return getTermAux(fl.At(occ[0]), occ[1:])
}

func getTerm(term AST.Term, occ occurrence) AST.Term {
	if len(occ) == 0 {
		return term
	}

	if fn, ok := term.(AST.Fun); ok {
		if occ[0] >= fn.GetArgs().Len() {
			return nil
		}
		return getTerm(fn.GetArgs().At(occ[0]), occ[1:])
	}
	return nil
}

func appcp[T any](arr []T, el ...T) []T {
	cp := make([]T, len(arr))
	copy(cp, arr)
	return append(cp, el...)
}
