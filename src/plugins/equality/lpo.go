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
/**********/
/* lpo.go */
/**********/
/**
* This file contains the type definitionof the lixicographic path ordering.
**/

package equality

import (
	"fmt"
	"strconv"
	"sync"

	"github.com/GoelandProver/Goeland/global"
	basictypes "github.com/GoelandProver/Goeland/types/basic-types"
)

type LPO map[basictypes.Id]int

type compareStruct struct {
	order          int
	is_comparable  bool
	new_t1, new_t2 basictypes.Term
}

func makeCompareStruct(o int, ic bool, t1, t2 basictypes.Term) compareStruct {
	return compareStruct{o, ic, t1, t2}
}

func makeEmptyCompareStruct() compareStruct {
	return makeCompareStruct(0, false, nil, nil)
}

var lock_lpo sync.Mutex
var lpo LPO

func makeLPO() LPO {
	return LPO{}
}

func (lpo LPO) isEmpty() bool {
	return (lpo == nil || len(lpo) == 0)
}

func (lpo LPO) toString() string {
	res := "{"
	cpt := 0
	lock_lpo.Lock()
	for term, value := range lpo {
		res += "[" + term.ToString() + "] : " + strconv.Itoa(value)
		if cpt < len(lpo)-1 {
			res += ", "
		}
		cpt++
	}
	lock_lpo.Unlock()
	return res + "}"
}

func (lpo LPO) get(t basictypes.Id) int {
	lock_lpo.Lock()
	res, found := lpo[t]
	lock_lpo.Unlock()
	if found {
		return res
	} else {
		return -1
	}
}

func (lpo *LPO) insertPred(p basictypes.Form) {
	switch pt := p.(type) {
	case basictypes.Pred:
		lpo.insertIdIfNotContains(pt.GetID())
		for _, arg := range pt.GetArgs() {
			lpo.insertTerm(arg)
		}
	case basictypes.Not:
		lpo.insertPred(pt.GetForm())
	}
}

func (lpo *LPO) insertTerm(t basictypes.Term) {
	switch t_type := t.(type) {
	case basictypes.Id:
		lpo.insertIdIfNotContains(t_type)
	case basictypes.Fun:
		if !lpo.contains(t_type.GetID()) {
			lock_lpo.Lock()
			(*lpo)[t_type.GetID()] = len(*lpo)
			lock_lpo.Unlock()
		}
		for _, arg := range t_type.GetArgs() {
			lpo.insertTerm(arg)
		}
	}
}

func (lpo LPO) contains(i basictypes.Id) bool {
	return lpo.get(i) != -1
}

func (lpo *LPO) insertIdIfNotContains(i basictypes.Id) {
	if !lpo.contains(i) {
		lock_lpo.Lock()
		(*lpo)[i] = len(*lpo)
		lock_lpo.Unlock()
	}
}

/** Check if two terms respect the LPO
* Data : s an t, two terms
* Result :
*	an int : 1 if s < t, 0 si s = t, -1 if s > t
*	a boolean : true if the two term are comparable, false otherwise
*	two terms : the new terms for the constraint (if not comparable)
**/
func (lpo LPO) compare(s, t basictypes.Term) compareStruct {
	global.PrintDebug("CPR", fmt.Sprintf("Compare %v and %v", s.ToString(), t.ToString()))
	switch s_type := s.(type) {
	case basictypes.Fun:
		global.PrintDebug("CPR", fmt.Sprintf("%v is a function", s.ToString()))
		switch t_type := t.(type) {
		case basictypes.Fun:
			global.PrintDebug("CPR", fmt.Sprintf("%v is a function", t.ToString()))
			// function and function
			return compareFunFun(s_type, t_type, lpo)
		case basictypes.Meta:
			global.PrintDebug("CPR", fmt.Sprintf("%v is a Meta", t.ToString()))
			// function & meta : Occurences inside : f(x) < x, f(y) < x
			return compareMetaFun(t_type, s_type, -1, lpo)
		default:
			global.PrintError("CPR", "Type of t unknown")
		}
	case basictypes.Meta:
		global.PrintDebug("CPR", fmt.Sprintf("%v is a Meta", s.ToString()))
		switch t_type := t.(type) {
		case basictypes.Fun:
			global.PrintDebug("CPR", fmt.Sprintf("%v is a function", t.ToString()))
			// meta & function : Occurences inside : x < f(x), x < f(y)
			return compareMetaFun(s_type, t_type, 1, lpo)
		case basictypes.Meta:
			global.PrintDebug("CPR", fmt.Sprintf("%v is a Meta", t.ToString()))
			// Meta and meta
			return compareMetaMeta(s_type, t_type)
		default:
			global.PrintError("CPR", "Type of t unknown")
		}
	default:
		global.PrintError("CPR", "Type of s unknown")
	}
	return makeCompareStruct(0, false, s, t)
}

/**
* Compare a metavariable and a function.
* Return code comes for the compare function and code must be 1 or -1. It correspond to the code to return of the CompreMetaFun fits the LPO.
* It's needed to keep the order.
* For example, x < f(x) is ok but f(x) < x isn't
**/
func compareMetaFun(m basictypes.Meta, f basictypes.Fun, return_code int, lpo LPO) compareStruct {
	global.PrintDebug("CMF", "Compare Meta Fun")
	// Check argument inside f
	if found, res := compareMetaFunInside(m, f, return_code, lpo); found {
		global.PrintDebug("CMF", fmt.Sprintf("Found after compare inside : %v", res))
		return res
	}

	global.PrintDebug("CMF", fmt.Sprintf("Not found and return_code is %v", return_code))
	// f has no args or all respect LPO
	if return_code == 1 {
		return makeCompareStruct(0, false, m, f)
	} else {
		return makeCompareStruct(0, false, f, m)
	}
}

func compareMetaFunInside(m basictypes.Meta, f basictypes.Fun, return_code int, lpo LPO) (bool, compareStruct) {
	global.PrintDebug("CMFI", "Compare Meta Fun Inside")
	i := 0
	// Check arguments to find occur-check eventually
	for i < len(f.GetArgs()) {
		res := 0
		is_comparable := false
		switch return_code {
		case 1:
			cs := lpo.compare(m, f.GetArgs()[i])
			res = cs.order
			is_comparable = cs.is_comparable
		case -1:
			cs := lpo.compare(f.GetArgs()[i], m)
			res = cs.order
			is_comparable = cs.is_comparable
		default:
			global.PrintError("CMFI", "Unexpected return_code in compare")
		}

		if is_comparable {
			if res == 0 { // Comparable and return 0 : same symbol or same Meta (meta in this case)
				return true, makeCompareStruct(return_code, true, nil, nil)
			} else {
				return true, makeCompareStruct(res, true, nil, nil)
			}
		}
		i++
	}
	return false, makeEmptyCompareStruct()
}

/* Compare two meta wrt LPO */
func compareMetaMeta(m1, m2 basictypes.Meta) compareStruct {
	if m1.Equals(m2) {
		return makeCompareStruct(0, true, nil, nil)
	} else {
		return makeCompareStruct(1, false, m1, m2)
	}
}

/* Compare two functions */
func compareFunFun(s, t basictypes.Fun, lpo LPO) compareStruct {
	global.PrintDebug("CFF", "Compare Fun Fun")
	// Initalisation
	f := lpo.get(s.GetID())
	g := lpo.get(t.GetID())

	if f == -1 {
		global.PrintError("CFF", fmt.Sprintf("id not in the LPO : %v\n", s.GetID().ToString()))
	}
	if g == -1 {
		global.PrintError("CFF", fmt.Sprintf("id not in the LPO : %v\n", t.GetID().ToString()))
	}

	if f < g {
		if found, res := caseFLessG(s, t, lpo); found {
			return res
		}
	}

	if f == g {
		if found, res := caseFEqualsG(s, t, lpo); found {
			return res
		}
	}

	return caseDefault(s, t, lpo)

}

/* Case f < g */
func caseFLessG(s, t basictypes.Fun, lpo LPO) (bool, compareStruct) {
	// f < g and f has no argument
	if len(s.GetArgs()) == 0 {
		return true, makeCompareStruct(1, true, nil, nil)
	} else {
		i := 0
		stopped := false
		for i < len(s.GetArgs()) && !stopped {
			cs := lpo.compare(s.GetArgs()[i], t)

			if !cs.is_comparable {
				return true, makeCompareStruct(0, false, s, t)
			}
			if cs.order <= 0 {
				stopped = true
			}
			i++
		}
		if !stopped {
			return true, makeCompareStruct(1, true, nil, nil)
		}
	}
	return false, makeEmptyCompareStruct()
}

/* Case f == g */
func caseFEqualsG(s, t basictypes.Fun, lpo LPO) (bool, compareStruct) {
	global.PrintDebug("F=G", "Case F = G")
	if len(s.GetArgs()) != len(t.GetArgs()) {
		global.PrintError("F=G", fmt.Sprintf("Error : %v and %v don't have the same number of arguments", s.GetID().ToString(), t.GetID().ToString()))
		return true, makeCompareStruct(0, false, nil, nil)
	}

	n := len(s.GetArgs())
	i := 0
	stopped := false
	val_res := 0
	// First loop : while equals
	for i < n && !stopped {
		cs := lpo.compare(s.GetArgs()[i], t.GetArgs()[i])

		// Bug here : les autres arguments !
		if !cs.is_comparable {
			global.PrintDebug("F=G", fmt.Sprintf("Not comparable, return : %v and %v", cs.new_t1.ToString(), cs.new_t2.ToString()))
			return true, makeCompareStruct(0, false, cs.new_t1, cs.new_t2)
		}
		if cs.order != 0 {
			stopped = true
			val_res = cs.order
		}
		i++
	}

	if !stopped {
		return true, makeCompareStruct(0, true, nil, nil)
	}

	// Check and second loop : while <= t
	stopped = false
	if val_res > 0 {
		for i < n && !stopped {
			cs := lpo.compare(s.GetArgs()[i], t)
			if !cs.is_comparable {
				return true, makeCompareStruct(0, false, s, t)
			}
			if cs.order <= 0 {
				stopped = true
			}
			i++
		}
		if !stopped {
			return true, makeCompareStruct(1, true, nil, nil)
		}
	}
	return false, makeEmptyCompareStruct()
}

/* Default case */
func caseDefault(s, t basictypes.Fun, lpo LPO) compareStruct {
	// Occurences inside
	m := len(t.GetArgs())
	i := 0
	stopped := false
	for i < m && !stopped {
		cs := lpo.compare(s, t.GetArgs()[i])
		if !cs.is_comparable {
			return makeCompareStruct(0, false, s, t)
		}
		if cs.order >= 0 {
			stopped = true
		}
		i++
	}
	if stopped {
		return makeCompareStruct(1, true, nil, nil)
	}

	return makeCompareStruct(-1, true, nil, nil)
}
