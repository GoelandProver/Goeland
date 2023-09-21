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

/******************/
/* coq_context.go */
/******************/

/**
* This file provides coq's context for a proof.
**/

package coq

import (
	"fmt"
	"os"
	"path/filepath"
	"strings"

	"github.com/GoelandProver/Goeland/global"
	"github.com/GoelandProver/Goeland/plugins/dmt"
	typing "github.com/GoelandProver/Goeland/polymorphism/typing"
	btps "github.com/GoelandProver/Goeland/types/basic-types"
)

func makeContextIfNeeded(root btps.Form, metaList btps.MetaList) string {
	if !GetContextEnabled() {
		return ""
	}
	resultingString := contextPreamble()
	if typing.EmptyGlobalContext() {
		if global.IsLoaded("dmt") {
			root = btps.MakerAnd(append(dmt.GetRegisteredAxioms(), root))
		}

		resultingString += strings.Join(getContextFromFormula(root), "\n") + "\n"
		if len(metaList) > 0 {
			resultingString += contextualizeMetas(metaList)
		}
	} else {
		// TODO: get context and print everything.
	}
	return resultingString
}

func contextPreamble() string {
	str := "Add LoadPath \"" + pathToGoelandCoq() + "\" as Goeland.\n"
	str += "Require Import Goeland.goeland.\n"
	str += "Parameter goeland_U : Set. (* goeland's universe *)\n"
	str += "Parameter goeland_I : goeland_U. (* an individual in the universe. *)\n\n"
	return str
}

func pathToGoelandCoq() string {
	path, _ := os.Executable()
	return filepath.Clean(filepath.Dir(path) + "/..")
}

func getContextFromFormula(root btps.Form) []string {
	result := []string{}
	switch nf := root.(type) {
	case btps.All:
		result = getContextFromFormula(nf.GetForm())
	case btps.Ex:
		result = getContextFromFormula(nf.GetForm())
	case btps.AllType:
		result = getContextFromFormula(nf.GetForm())
	case btps.And:
		for _, f := range nf.FormList {
			result = append(result, clean(result, getContextFromFormula(f))...)
		}
	case btps.Or:
		for _, f := range nf.FormList {
			result = append(result, clean(result, getContextFromFormula(f))...)
		}
	case btps.Imp:
		result = clean(result, getContextFromFormula(nf.GetF1()))
		result = append(result, clean(result, getContextFromFormula(nf.GetF2()))...)
	case btps.Equ:
		result = clean(result, getContextFromFormula(nf.GetF1()))
		result = append(result, clean(result, getContextFromFormula(nf.GetF2()))...)
	case btps.Not:
		result = clean(result, getContextFromFormula(nf.GetForm()))
	case btps.Pred:
		if !nf.GetID().Equals(btps.Id_eq) {
			result = append(result, mapDefault(fmt.Sprintf("Parameter %s : %s.", nf.GetID().ToMappedString(coqMapConnectors(), false), nf.GetType().ToString())))
		}
		for _, term := range nf.GetArgs() {
			result = append(result, clean(result, getContextFromTerm(term))...)
		}
	}
	return result
}

func getContextFromTerm(trm btps.Term) []string {
	result := []string{}
	if fun, isFun := trm.(btps.Fun); isFun {
		result = append(result, mapDefault(fmt.Sprintf("Parameter %s : %s.", fun.GetID().ToMappedString(coqMapConnectors(), false), fun.GetTypeHint().ToString())))
		for _, term := range fun.GetArgs() {
			result = append(result, clean(result, getContextFromTerm(term))...)
		}
	}
	return result
}

// Returns everything in add not in set
func clean(set, add []string) []string {
	result := []string{}
	for _, str := range add {
		found := false
		for _, s := range set {
			if s == str {
				found = true
				break
			}
		}
		if !found {
			result = append(result, str)
		}
	}
	return result
}

func contextualizeMetas(metaList btps.MetaList) string {
	result := []string{}
	for _, meta := range metaList {
		result = append(result, meta.ToMappedString(coqMapConnectors(), false))
	}
	return "Parameters " + strings.Join(result, " ") + " : goeland_U."
}
