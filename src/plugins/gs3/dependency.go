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
	btps "github.com/GoelandProver/Goeland/types/basic-types"
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

func manageGammasInstantiations(initialForm, resultForm btps.Form) btps.Term {
	var term btps.Term
	normalisedInitialForm := getNextFormula(initialForm.Copy())
	//PrintInfo("FORMS", fmt.Sprintf("init: %s, result: %s", initialForm.ToString(), resultForm.ToString()))
	switch initialGamma := initialForm.(type) {
	case btps.All:
		term = getResultTerm(initialGamma.GetVarList()[0], normalisedInitialForm, resultForm)
	case btps.Not:
		if ex, ok := initialGamma.GetForm().(btps.Ex); ok {
			term = getResultTerm(ex.GetVarList()[0], normalisedInitialForm, resultForm)
		}
	}
	//PrintInfo("TERM", fmt.Sprintf("Term: %s ; Result: %s", term.ToString(), resultForm.ToString()))
	return term
}

// ----------------------------------------------------------------------------
// The delta-formula case
// ----------------------------------------------------------------------------

func manageDeltasSkolemisations(initialForm, resultForm btps.Form) btps.Term {
	var term btps.Term
	normalisedInitialForm := getNextFormula(initialForm.Copy())
	switch initialDelta := initialForm.(type) {
	case btps.Ex:
		term = getResultTerm(initialDelta.GetVarList()[0], normalisedInitialForm, resultForm)
	case btps.Not:
		if all, ok := initialDelta.GetForm().(btps.All); ok {
			term = getResultTerm(all.GetVarList()[0], normalisedInitialForm, resultForm)
		}
	}
	return term
}

// ----------------------------------------------------------------------------
// Utilitary functions
// ----------------------------------------------------------------------------

func getNextFormula(form btps.Form) btps.Form {
	switch f := form.(type) {
	case btps.All:
		varList := f.GetVarList()
		if len(varList) > 1 {
			return btps.MakerAll(varList[1:], f.GetForm())
		}
		return f.GetForm()
	case btps.Ex:
		varList := f.GetVarList()
		if len(varList) > 1 {
			return btps.MakerEx(varList[1:], f.GetForm())
		}
		return f.GetForm()
	case btps.Not:
		return btps.RefuteForm(getNextFormula(f.GetForm()))
	}
	return form
}

func getResultTerm(v btps.Var, bareForm, endForm btps.Form) btps.Term {
	variablesOccurrences := getAllVariableOccurrences(v, bareForm)
	return getTermAt(endForm, variablesOccurrences)
}

// Explores the form and if a variable in the varlist is found, returns its occurrence.
func getAllVariableOccurrences(v btps.Var, form btps.Form) occurrences {
	return getVariableOccurrencesForm(v, form, occurrences{}, occurrence{})
}

func getVariableOccurrencesForm(v btps.Var, form btps.Form, currentOcc occurrences, path occurrence) occurrences {
	workingPath := make(occurrence, len(path))
	copy(workingPath, path)
	switch f := form.(type) {
	case btps.Pred:
		for i, term := range f.GetArgs().Slice() {
			currentOcc = getVariableOccurrencesTerm(v, term, currentOcc, appcp(workingPath, i))
		}
	case btps.Not:
		currentOcc = getUnaryOcc(v, f.GetForm(), currentOcc, workingPath)
	case btps.And:
		currentOcc = getNAryOcc(v, currentOcc, workingPath, f.FormList)
	case btps.Or:
		currentOcc = getNAryOcc(v, currentOcc, workingPath, f.FormList)
	case btps.Imp:
		currentOcc = getNAryOcc(v, currentOcc, workingPath, []btps.Form{f.GetF1(), f.GetF2()})
	case btps.Equ:
		currentOcc = getNAryOcc(v, currentOcc, workingPath, []btps.Form{f.GetF1(), f.GetF2()})
	case btps.All:
		currentOcc = getUnaryOcc(v, f.GetForm(), currentOcc, workingPath)
	case btps.Ex:
		currentOcc = getUnaryOcc(v, f.GetForm(), currentOcc, workingPath)
	case btps.AllType:
		currentOcc = getUnaryOcc(v, f.GetForm(), currentOcc, workingPath)
	}
	return currentOcc
}

func getUnaryOcc(v btps.Var, form btps.Form, currentOcc occurrences, path occurrence) occurrences {
	return getVariableOccurrencesForm(v, form, currentOcc, append(path, 0))
}

func getNAryOcc(v btps.Var, currentOcc occurrences, path occurrence, fl btps.FormList) occurrences {
	for i, nf := range fl {
		currentOcc = getVariableOccurrencesForm(v, nf, currentOcc, appcp(path, i))
	}
	return currentOcc
}

func getVariableOccurrencesTerm(v btps.Var, term btps.Term, currentOcc occurrences, path occurrence) occurrences {
	workingPath := make(occurrence, len(path))
	copy(workingPath, path)
	switch t := term.(type) {
	case btps.Var:
		if t.Equals(v) {
			currentOcc = append(currentOcc, workingPath)
		}
	case btps.Fun:
		for i, nt := range t.GetArgs().Slice() {
			currentOcc = getVariableOccurrencesTerm(v, nt, currentOcc, appcp(workingPath, i))
		}
	}
	return currentOcc
}

func getTermAt(form btps.Form, occsArr occurrences) btps.Term {
	var term btps.Term
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

func getTermAux(form btps.Form, occ occurrence) btps.Term {
	var term btps.Term

	switch f := form.(type) {
	case btps.Pred:
		if occ[0] < f.GetArgs().Len() {
			term = getTerm(f.GetArgs().Get(occ[0]), occ[1:])
		}
	case btps.Not:
		term = getUnaryTerm(f.GetForm(), occ)
	case btps.And:
		term = getNAryTerm(f.FormList, occ)
	case btps.Or:
		term = getNAryTerm(f.FormList, occ)
	case btps.Imp:
		term = getNAryTerm([]btps.Form{f.GetF1(), f.GetF2()}, occ)
	case btps.Equ:
		term = getNAryTerm([]btps.Form{f.GetF1(), f.GetF2()}, occ)
	case btps.All:
		term = getUnaryTerm(f.GetForm(), occ)
	case btps.Ex:
		term = getUnaryTerm(f.GetForm(), occ)
	case btps.AllType:
		term = getUnaryTerm(f.GetForm(), occ)
	}
	return term
}

func getUnaryTerm(form btps.Form, occ occurrence) btps.Term {
	if occ[0] > 0 {
		return nil
	}

	return getTermAux(form, occ[1:])
}

func getNAryTerm(fl btps.FormList, occ occurrence) btps.Term {
	if occ[0] >= len(fl) {
		return nil
	}

	return getTermAux(fl[occ[0]], occ[1:])
}

func getTerm(term btps.Term, occ occurrence) btps.Term {
	if len(occ) == 0 {
		return term
	}

	if fn, ok := term.(btps.Fun); ok {
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
