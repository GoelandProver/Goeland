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

/*******************/
/* coq_subterms.go */
/*******************/

/**
* This file provides a subterm search for coq's firstorder proofs.
**/

package coq

import (
	"github.com/GoelandProver/Goeland/global"
	btps "github.com/GoelandProver/Goeland/types/basic-types"
)

// ----------------------------------------------------------------------------
// Find subterms

type Subterm struct {
	var_ btps.Var
	path []int
}

func findSubterms(form btps.Form, vars []btps.Var) []Subterm {
	var findSubtermsAux func(btps.Form, []btps.Var, []int) []Subterm

	findSubtermsAux = func(form btps.Form, vars []btps.Var, path []int) []Subterm {
		nAryResult := func(fl btps.FormList, vars []btps.Var, path []int) []Subterm {
			result := []Subterm{}
			for i, f := range fl {
				result = append(
					result,
					findSubtermsAux(f, vars, appAndCop(path, i))...,
				)
			}
			return result
		}

		result := []Subterm{}
		switch f := form.(type) {
		// --------------------------------------------------------------------
		// Quantifiers
		case btps.All:
			result = findSubtermsAux(f.GetForm(), vars, appAndCop(path, 0))
		case btps.AllType:
			result = findSubtermsAux(f.GetForm(), vars, appAndCop(path, 0))
		case btps.Ex:
			result = findSubtermsAux(f.GetForm(), vars, appAndCop(path, 0))
		// --------------------------------------------------------------------
		// Binary connectors
		case btps.Imp:
			result = append(
				findSubtermsAux(f.GetF1(), vars, appAndCop(path, 0)),
				findSubtermsAux(f.GetF2(), vars, appAndCop(path, 1))...,
			)
		case btps.Equ:
			result = append(
				findSubtermsAux(f.GetF1(), vars, appAndCop(path, 0)),
				findSubtermsAux(f.GetF2(), vars, appAndCop(path, 1))...,
			)
		// --------------------------------------------------------------------
		// n-ary connectors
		case *btps.And:
			result = nAryResult(f.GetForms(), vars, path)
		case btps.Or:
			result = nAryResult(f.GetForms(), vars, path)
		// --------------------------------------------------------------------
		// Unary connectors
		case btps.Not:
			result = findSubtermsAux(f.GetForm(), vars, appAndCop(path, 0))
		case btps.Pred:
			for i, term := range f.GetArgs() {
				result = append(
					result,
					termSubterm(term, vars, appAndCop(path, i))...,
				)
			}
			// Top and Bot are omitted.
		}
		return result
	}

	return findSubtermsAux(form, vars, []int{})
}

func contains(ls []btps.Var, element btps.Var) bool {
	for i := range ls {
		if ls[i].Equals(element) {
			return true
		}
	}
	return false
}

func termSubterm(term btps.Term, vars []btps.Var, path []int) []Subterm {
	result := []Subterm{}
	switch t := term.(type) {
	case btps.Var:
		if contains(vars, t) {
			result = append(
				result,
				Subterm{
					var_: t,
					path: copyList(path),
				},
			)
		}
	case btps.Fun:
		for i, term := range t.GetArgs() {
			result = append(
				result,
				termSubterm(term, vars, appAndCop(path, i))...,
			)
		}
		// ID and Meta are omitted
	}
	return result
}

func appAndCop(slice []int, new int) []int {
	return append(copyList(slice), new)
}

func copyList(slice []int) []int {
	newSlice := make([]int, len(slice))
	copy(newSlice, slice)
	return newSlice
}

// ----------------------------------------------------------------------------
// Reconstruct subterms from path

type VarMaps struct {
	var_ btps.Var
	term btps.Term
}

func getSubtermsOf(form btps.Form, subterms []Subterm) []VarMaps {
	var getFromPath func(btps.Form, []int) btps.Term

	getFromPath = func(form btps.Form, path []int) btps.Term {
		var result btps.Term
		switch f := form.(type) {
		// --------------------------------------------------------------------
		// Quantifiers
		case btps.All:
			result = getFromPath(f.GetForm(), path[1:])
		case btps.AllType:
			result = getFromPath(f.GetForm(), path[1:])
		case btps.Ex:
			result = getFromPath(f.GetForm(), path[1:])
		// --------------------------------------------------------------------
		// Binary connectors
		case btps.Imp:
			if path[0] == 0 {
				result = getFromPath(f.GetF1(), path[1:])
			} else {
				result = getFromPath(f.GetF2(), path[1:])
			}
		case btps.Equ:
			if path[0] == 0 {
				result = getFromPath(f.GetF1(), path[1:])
			} else {
				result = getFromPath(f.GetF2(), path[1:])
			}
		// --------------------------------------------------------------------
		// n-ary connectors
		case *btps.And:
			result = getFromPath(f.GetForms()[path[0]], path[1:])
		case btps.Or:
			result = getFromPath(f.GetForms()[path[0]], path[1:])
		// Unary connectors:
		case btps.Not:
			result = getFromPath(f.GetForm(), path[1:])
		case btps.Pred:
			result = getTermSubterm(f.GetArgs()[path[0]], path[1:])
		}
		return result
	}

	mapping := []VarMaps{}

	for _, subterm := range subterms {
		term := getFromPath(form, subterm.path)
		if term != nil {
			mapping = merge(
				mapping,
				VarMaps{
					var_: subterm.var_,
					term: term,
				},
			)
		}
	}

	return mapping
}

func getTermSubterm(term btps.Term, path []int) btps.Term {
	var result btps.Term

	switch t := term.(type) {
	case btps.Fun:
		if len(path) == 0 {
			result = t
		} else {
			result = getTermSubterm(t.GetArgs()[path[0]], path[1:])
		}
	case btps.Var:
		result = t
	case btps.Meta:
		result = t
		// ID and Meta are omitted.
	}

	return result
}

func merge(ls []VarMaps, element VarMaps) []VarMaps {
	found := false
	for _, listEl := range ls {
		if listEl.var_.Equals(element.var_) {
			found = true
			if !listEl.term.Equals(element.term) {
				global.PrintPanic("Coq", "Error when instanciating a variable: same var different terms")
			}
		}
	}
	if !found {
		ls = append(ls, element)
	}
	return ls
}
