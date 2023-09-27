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
/* maker.go */
/***************/
/**
* This file provides the necessary methods and data to the variable management.
**/

package basictypes

import (
	"sync"

	polymorphism "github.com/GoelandProver/Goeland/polymorphism/typing"
	typing "github.com/GoelandProver/Goeland/polymorphism/typing"
)

/* Datas */
var cpt_term int
var cpt_formula int

var idTable map[string]int = make(map[string]int)
var idVar map[string]int = make(map[string]int)
var occurenceMeta map[string]int = make(map[string]int)
var lock_term sync.Mutex
var lock_formula sync.Mutex

// Global id
var Id_eq Id
var EmptyPredEq Pred

/* Initialization */
func Init() {
	Reset()
	Id_eq = MakerId("=")
	EmptyPredEq = MakerPred(Id_eq, MakeEmptyTermList(), make([]polymorphism.TypeApp, 0))

	// Eq/Neq types
	tv := typing.MkTypeVar("α")
	scheme := typing.MkQuantifiedType([]typing.TypeVar{tv}, typing.MkTypeArrow(typing.MkTypeCross(tv, tv), tv))
	typing.SavePolymorphScheme(Id_eq.GetName(), scheme)
	initDefaultMap()
}

/* Reset all the maps and counters */
func Reset() {
	cpt_term = 0
	cpt_formula = 0
	idTable = map[string]int{}
	idVar = map[string]int{}
	ResetMeta()
}

/* Reset the metavariable table (useful when the IDDFS stop and restart) */
func ResetMeta() {
	occurenceMeta = map[string]int{}
}

/* ID maker */
func MakerId(s string) Id {
	lock_term.Lock()
	i, ok := idTable[s]
	lock_term.Unlock()
	if ok {
		return MakeId(i, s)
	} else {
		return MakerNewId(s)
	}
}

func MakerNewId(s string) Id {
	lock_term.Lock()
	idTable[s] = cpt_term
	id := MakeId(cpt_term, s)
	cpt_term += 1
	lock_term.Unlock()
	return id
}

/* Var maker */
func MakerVar(s string, t ...typing.TypeApp) Var {
	lock_term.Lock()
	i, ok := idVar[s]
	lock_term.Unlock()
	if ok {
		return MakeVar(i, s, getType(t))
	} else {
		return MakerNewVar(s, getType(t))
	}
}

func MakerNewVar(s string, t ...typing.TypeApp) Var {
	lock_term.Lock()
	idVar[s] = cpt_term
	vr := MakeVar(cpt_term, s, getType(t))
	cpt_term += 1
	lock_term.Unlock()
	return vr
}

/* Meta maker */
func MakerMeta(s string, formula int, t ...typing.TypeApp) Meta {
	lock_term.Lock()
	i, ok := occurenceMeta[s]
	lock_term.Unlock()
	if ok {
		lock_term.Lock()
		occurenceMeta[s] = i + 1
		new_index := cpt_term
		cpt_term += 1
		lock_term.Unlock()
		return MakeMeta(new_index, i, s, formula, getType(t))
	} else {
		lock_term.Lock()
		occurenceMeta[s] = 1
		new_index := cpt_term
		cpt_term += 1
		lock_term.Unlock()
		return MakeMeta(new_index, 0, s, formula, getType(t))
	}
}

/* Const maker (given a id, create a fun without args) */
func MakerConst(id Id, t ...typing.TypeApp) Fun {
	return MakeFun(id, MakeEmptyTermList(), []typing.TypeApp{}, getType(t).(typing.TypeScheme))
}

/* Fun maker, with given id and args */
func MakerFun(id Id, terms TermList, typeVars []typing.TypeApp, t ...typing.TypeScheme) Fun {
	var ts typing.TypeScheme
	if len(t) == 1 {
		ts = t[0]
	} else {
		ts = typing.DefaultFunType(len(terms))
	}
	return MakeFun(id, terms, typeVars, ts)
}

func getType(t []typing.TypeApp) typing.TypeApp {
	if len(t) == 1 {
		return t[0]
	} else {
		return typing.DefaultType()
	}
}

/* Index make for formula */
func MakerIndexFormula() int {
	lock_formula.Lock()
	res := cpt_formula
	cpt_formula++
	lock_formula.Unlock()
	return res
}
