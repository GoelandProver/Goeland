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
	. "github.com/GoelandProver/Goeland/global"
	basictypes "github.com/GoelandProver/Goeland/types/basic-types"
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

func manageGammasInstantiations(initialForm, resultForm basictypes.Form) basictypes.Term {
	var term basictypes.Term
	normalisedInitialForm := getNextFormula(initialForm.Copy())
	//PrintInfo("FORMS", fmt.Sprintf("init: %s, result: %s", initialForm.ToString(), resultForm.ToString()))
	switch initialGamma := initialForm.(type) {
	case basictypes.All:
		term = getResultTerm(initialGamma.GetVarList()[0], normalisedInitialForm, resultForm)
	case basictypes.Not:
		if ex, ok := initialGamma.GetForm().(basictypes.Ex); ok {
			term = getResultTerm(ex.GetVarList()[0], normalisedInitialForm, resultForm)
		}
	}
	//PrintInfo("TERM", fmt.Sprintf("Term: %s ; Result: %s", term.ToString(), resultForm.ToString()))
	return term
}

// ----------------------------------------------------------------------------
// The delta-formula case
// ----------------------------------------------------------------------------

func manageDeltasSkolemisations(initialForm, resultForm basictypes.Form) basictypes.Term {
	var term basictypes.Term
	normalisedInitialForm := getNextFormula(initialForm.Copy())
	switch initialDelta := initialForm.(type) {
	case basictypes.Ex:
		term = getResultTerm(initialDelta.GetVarList()[0], normalisedInitialForm, resultForm)
	case basictypes.Not:
		if all, ok := initialDelta.GetForm().(basictypes.All); ok {
			term = getResultTerm(all.GetVarList()[0], normalisedInitialForm, resultForm)
		}
	}
	return term
}

// ----------------------------------------------------------------------------
// Utilitary functions
// ----------------------------------------------------------------------------

func getNextFormula(form basictypes.Form) basictypes.Form {
	switch f := form.(type) {
	case basictypes.All:
		varList := f.GetVarList()
		if len(varList) > 1 {
			return basictypes.MakerAll(varList[1:], f.GetForm())
		}
		return f.GetForm()
	case basictypes.Ex:
		varList := f.GetVarList()
		if len(varList) > 1 {
			return basictypes.MakerEx(varList[1:], f.GetForm())
		}
		return f.GetForm()
	case basictypes.Not:
		return basictypes.RefuteForm(getNextFormula(f.GetForm()))
	}
	return form
}

func getResultTerm(v basictypes.Var, bareForm, endForm basictypes.Form) basictypes.Term {
	variablesOccurrences := getAllVariableOccurrences(v, bareForm)
	return getTermAt(endForm, variablesOccurrences)
}

// Explores the form and if a variable in the varlist is found, returns its occurrence.
func getAllVariableOccurrences(v basictypes.Var, form basictypes.Form) occurrences {
	return getVariableOccurrencesForm(v, form, occurrences{}, occurrence{})
}

func getVariableOccurrencesForm(v basictypes.Var, form basictypes.Form, currentOcc occurrences, path occurrence) occurrences {
	workingPath := make(occurrence, len(path))
	copy(workingPath, path)
	switch f := form.(type) {
	case basictypes.Pred:
		for i, term := range f.GetArgs().Slice() {
			currentOcc = getVariableOccurrencesTerm(v, term, currentOcc, appcp(workingPath, i))
		}
	case basictypes.Not:
		currentOcc = getUnaryOcc(v, f.GetForm(), currentOcc, workingPath)
	case basictypes.And:
		currentOcc = getNAryOcc(v, currentOcc, workingPath, f.FormList)
	case basictypes.Or:
		currentOcc = getNAryOcc(v, currentOcc, workingPath, f.FormList)
	case basictypes.Imp:
		currentOcc = getNAryOcc(v, currentOcc, workingPath, basictypes.NewFormList(f.GetF1(), f.GetF2()))
	case basictypes.Equ:
		currentOcc = getNAryOcc(v, currentOcc, workingPath, basictypes.NewFormList(f.GetF1(), f.GetF2()))
	case basictypes.All:
		currentOcc = getUnaryOcc(v, f.GetForm(), currentOcc, workingPath)
	case basictypes.Ex:
		currentOcc = getUnaryOcc(v, f.GetForm(), currentOcc, workingPath)
	case basictypes.AllType:
		currentOcc = getUnaryOcc(v, f.GetForm(), currentOcc, workingPath)
	}
	return currentOcc
}

func getUnaryOcc(v basictypes.Var, form basictypes.Form, currentOcc occurrences, path occurrence) occurrences {
	return getVariableOccurrencesForm(v, form, currentOcc, append(path, 0))
}

func getNAryOcc(v basictypes.Var, currentOcc occurrences, path occurrence, fl *basictypes.FormList) occurrences {
	for i, nf := range fl.Slice() {
		currentOcc = getVariableOccurrencesForm(v, nf, currentOcc, appcp(path, i))
	}
	return currentOcc
}

func getVariableOccurrencesTerm(v basictypes.Var, term basictypes.Term, currentOcc occurrences, path occurrence) occurrences {
	workingPath := make(occurrence, len(path))
	copy(workingPath, path)
	switch t := term.(type) {
	case basictypes.Var:
		if t.Equals(v) {
			currentOcc = append(currentOcc, workingPath)
		}
	case basictypes.Fun:
		for i, nt := range t.GetArgs().Slice() {
			currentOcc = getVariableOccurrencesTerm(v, nt, currentOcc, appcp(workingPath, i))
		}
	}
	return currentOcc
}

func getTermAt(form basictypes.Form, occsArr occurrences) basictypes.Term {
	var term basictypes.Term
	for _, occ := range occsArr {
		t := getTermAux(form, occ)
		if term != nil {
			if !term.Equals(t) {
				PrintError("GTA", "The same variable is instanciated as two different terms.")
			}
		} else {
			term = t
		}
	}
	return term
}

func getTermAux(form basictypes.Form, occ occurrence) basictypes.Term {
	var term basictypes.Term

	switch f := form.(type) {
	case basictypes.Pred:
		if occ[0] < f.GetArgs().Len() {
			term = getTerm(f.GetArgs().Get(occ[0]), occ[1:])
		}
	case basictypes.Not:
		term = getUnaryTerm(f.GetForm(), occ)
	case basictypes.And:
		term = getNAryTerm(f.FormList, occ)
	case basictypes.Or:
		term = getNAryTerm(f.FormList, occ)
	case basictypes.Imp:
		term = getNAryTerm(basictypes.NewFormList(f.GetF1(), f.GetF2()), occ)
	case basictypes.Equ:
		term = getNAryTerm(basictypes.NewFormList(f.GetF1(), f.GetF2()), occ)
	case basictypes.All:
		term = getUnaryTerm(f.GetForm(), occ)
	case basictypes.Ex:
		term = getUnaryTerm(f.GetForm(), occ)
	case basictypes.AllType:
		term = getUnaryTerm(f.GetForm(), occ)
	}
	return term
}

func getUnaryTerm(form basictypes.Form, occ occurrence) basictypes.Term {
	if occ[0] > 0 {
		return nil
	}

	return getTermAux(form, occ[1:])
}

func getNAryTerm(fl *basictypes.FormList, occ occurrence) basictypes.Term {
	if occ[0] >= fl.Len() {
		return nil
	}

	return getTermAux(fl.Get(occ[0]), occ[1:])
}

func getTerm(term basictypes.Term, occ occurrence) basictypes.Term {
	if len(occ) == 0 {
		return term
	}

	if fn, ok := term.(basictypes.Fun); ok {
		if occ[0] >= fn.GetArgs().Len() {
			return nil
		}
		return getTerm(fn.GetArgs().Get(occ[0]), occ[1:])
	}
	return nil
}

func appcp[T any](arr []T, el ...T) []T {
	cp := make([]T, len(arr))
	copy(cp, arr)
	return append(cp, el...)
}
