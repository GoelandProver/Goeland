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

func manageGammasInstantiations(initialForm, resultForm btps.Form) ([]btps.Form, []btps.Term) {
	// As in Goéland, a gamma formula instantiates multiple vars, we need to split it into
	// multiple gammas: one per variable.
	// Otherwise, it won't fit a GS3 proof.
	var forms []btps.Form
	var terms []btps.Term
	switch initialGamma := initialForm.(type) {
	case btps.All:
		vl := initialGamma.GetVarList()
		f := initialGamma.GetForm()
		terms = getResultTerms(vl, f, resultForm)
		forms = makeAllNecessaryGammas(vl, f, IS_ALL, terms)
	case btps.Not:
		if initialGammaExists, ok := initialGamma.GetForm().(btps.Ex); ok {
			vl := initialGammaExists.GetVarList()
			f := initialGammaExists.GetForm()
			terms = getResultTerms(vl, btps.MakerNot(f), resultForm)
			forms = makeAllNecessaryGammas(vl, f, IS_EXISTS, terms)
		}
	}
	return forms, terms
}

func makeAllNecessaryGammas(varList []btps.Var, endForm btps.Form, status int, terms []btps.Term) []btps.Form {
	var forms []btps.Form
	for i := 0; i < len(varList); i++ {
		form := endForm.Copy()
		if i > 0 {
			form, _ = form.ReplaceVarByTerm(varList[i-1], terms[i-1])
		}
		if status == IS_ALL {
			form = btps.MakerAll(varList[i:], form)
		} else {
			form = btps.MakerNot(btps.MakerEx(varList[i:], form))
		}
		forms = append(forms, form)
	}
	return forms
}

// ----------------------------------------------------------------------------
// The delta-formula case
// ----------------------------------------------------------------------------

func manageDeltasSkolemisations(initialForm, resultForm btps.Form) ([]btps.Form, []btps.Term) {
	var forms []btps.Form
	var terms []btps.Term
	switch initialGamma := initialForm.(type) {
	case btps.Ex:
		vl := initialGamma.GetVarList()
		f := initialGamma.GetForm()
		terms = getResultTerms(vl, f, resultForm)
		forms = makeAllNecessaryDeltas(vl, f, IS_EXISTS, terms)
	case btps.Not:
		if initialGammaExists, ok := initialGamma.GetForm().(btps.All); ok {
			vl := initialGammaExists.GetVarList()
			f := initialGammaExists.GetForm()
			terms = getResultTerms(vl, btps.MakerNot(f), resultForm)
			forms = makeAllNecessaryDeltas(vl, f, IS_ALL, terms)
		}
	}
	return forms, terms
}

func makeAllNecessaryDeltas(varList []btps.Var, endForm btps.Form, status int, terms []btps.Term) []btps.Form {
	var forms []btps.Form
	for i := 0; i < len(varList); i++ {
		form := endForm.Copy()
		if i > 0 {
			form, _ = form.ReplaceVarByTerm(varList[i-1], terms[i-1])
		}
		if status == IS_ALL {
			form = btps.MakerNot(btps.MakerAll(varList[i:], form))
		} else {
			form = btps.MakerEx(varList[i:], form)
		}
		forms = append(forms, form)
	}
	return forms
}

// ----------------------------------------------------------------------------
// Utilitary functions
// ----------------------------------------------------------------------------

func getResultTerms(varList []btps.Var, bareForm, endForm btps.Form) []btps.Term {
	variablesOccurrences := getAllVariablesOccurrences(varList, bareForm)
	return getTermsAt(endForm, variablesOccurrences)
}

// Explores the form and if a variable in the varlist is found, returns its occurrence.
func getAllVariablesOccurrences(varList []btps.Var, form btps.Form) []occurrences {
	occs := make([]occurrences, len(varList))
	return getVariablesOccurrencesForm(varList, form, occs, occurrence{})
}

func getVariablesOccurrencesForm(varList []btps.Var, form btps.Form, currentOcc []occurrences, path occurrence) []occurrences {
	workingPath := make(occurrence, len(path))
	copy(workingPath, path)
	switch f := form.(type) {
	case btps.Pred:
		for i, term := range f.GetArgs() {
			currentOcc = getVariablesOccurrencesTerm(varList, term, currentOcc, appcp(workingPath, i))
		}
	case btps.Not:
		currentOcc = getUnaryOcc(varList, f.GetForm(), currentOcc, workingPath)
	case btps.And:
		currentOcc = getNAryOcc(varList, currentOcc, workingPath, f.FormList)
	case btps.Or:
		currentOcc = getNAryOcc(varList, currentOcc, workingPath, f.FormList)
	case btps.Imp:
		currentOcc = getNAryOcc(varList, currentOcc, workingPath, []btps.Form{f.GetF1(), f.GetF2()})
	case btps.Equ:
		currentOcc = getNAryOcc(varList, currentOcc, workingPath, []btps.Form{f.GetF1(), f.GetF2()})
	case btps.All:
		currentOcc = getUnaryOcc(varList, f.GetForm(), currentOcc, workingPath)
	case btps.Ex:
		currentOcc = getUnaryOcc(varList, f.GetForm(), currentOcc, workingPath)
	case btps.AllType:
		currentOcc = getUnaryOcc(varList, f.GetForm(), currentOcc, workingPath)
	}
	return currentOcc
}

func getUnaryOcc(varList []btps.Var, form btps.Form, currentOcc []occurrences, path occurrence) []occurrences {
	return getVariablesOccurrencesForm(varList, form, currentOcc, append(path, 0))
}

func getNAryOcc(varList []btps.Var, currentOcc []occurrences, path occurrence, fl btps.FormList) []occurrences {
	for i, nf := range fl {
		currentOcc = getVariablesOccurrencesForm(varList, nf, currentOcc, appcp(path, i))
	}
	return currentOcc
}

func getVariablesOccurrencesTerm(varList []btps.Var, term btps.Term, currentOcc []occurrences, path occurrence) []occurrences {
	workingPath := make(occurrence, len(path))
	copy(workingPath, path)
	switch t := term.(type) {
	case btps.Var:
		index := findInVarList(varList, t)
		if index != -1 {
			currentOcc[index] = append(currentOcc[index], append(workingPath, 0))
		}
	case btps.Fun:
		for i, nt := range t.GetArgs() {
			currentOcc = getVariablesOccurrencesTerm(varList, nt, currentOcc, append(workingPath, i))
		}
	}
	return currentOcc
}

func findInVarList(varList []btps.Var, v btps.Var) int {
	r := -1
	for i, element := range varList {
		if element.Equals(v) {
			r = i
			break
		}
	}
	return r
}

func getTermsAt(form btps.Form, occsArr []occurrences) []btps.Term {
	terms := make([]btps.Term, len(occsArr))
	for i, occs := range occsArr {
		var term btps.Term
		for _, occ := range occs {
			t := getTermAt(form, occ)
			if term != nil {
				if !term.Equals(t) {
					PrintError("GTA", "The same variable is instanciated as two different terms.")
				}
			} else {
				term = t
			}
		}
		// The ith var is associated to the following term. Could be nil.
		terms[i] = term
	}
	return terms
}

func getTermAt(form btps.Form, occ occurrence) btps.Term {
	var term btps.Term
	if len(occ) == 0 {
		return term
	}

	switch f := form.(type) {
	case btps.Pred:
		if occ[0] < len(f.GetArgs()) {
			term = getTerm(f.GetArgs()[occ[0]], occ[1:])
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

	return getTermAt(form, occ[1:])
}

func getNAryTerm(fl btps.FormList, occ occurrence) btps.Term {
	if occ[0] >= len(fl) {
		return nil
	}

	return getTermAt(fl[occ[0]], occ[1:])
}

func getTerm(term btps.Term, occ occurrence) btps.Term {
	if len(occ) == 1 && occ[0] == 0 {
		return term
	}

	if fn, ok := term.(btps.Fun); ok {
		if occ[0] >= len(fn.GetArgs()) {
			return nil
		}
		return getTerm(fn.GetArgs()[occ[0]], occ[1:])
	}
	return nil
}

func appcp[T any](arr []T, el ...T) []T {
	cp := make([]T, len(arr))
	copy(cp, arr)
	return append(cp, el...)
}
