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

package main

import (
	"fmt"
	"strconv"
	"sync"

	"github.com/GoelandProver/Goeland/global"
	basictypes "github.com/GoelandProver/Goeland/types/basic-types"
)

type LPO map[basictypes.Id]int

var lock_lpo sync.Mutex
var lpo LPO

func (lpo LPO) Get(t basictypes.Id) int {
	res, found := lpo[t]
	if found {
		return res
	} else {
		fmt.Printf("Error : id not in the LPO : %v", t.ToString())
		return -1
	}
}

func (lpo *LPO) insert(t basictypes.Id) {
	lock_lpo.Lock()
	(*lpo)[t] = len(*lpo)
	lock_lpo.Unlock()
}

func (lpo LPO) contains(t basictypes.Id) bool {
	return lpo.Get(t) != -1
}

func (lpo *LPO) insertIfNotContains(t basictypes.Id) {
	if lpo.contains(t) {
		lpo.insert(t)
	}
}

/** Check if two terms respect the LPO
* Data : s an t, two terms
* Result :
*	an int : 1 if s < t, 0 si s = t, -1 if s > t
*	a boolean : true if the two term are comparable, false otherwise
*	two terms : the new terms for the constraint (if not comparable)
**/
func (lpo LPO) compare(s, t basictypes.Term) (int, bool, basictypes.Term, basictypes.Term) {
	global.PrintDebug("C", fmt.Sprintf("Compare %v and %v", s.ToString(), t.ToString()))
	switch s_type := s.(type) {
	case basictypes.Fun:
		switch t_type := t.(type) {
		case basictypes.Fun:
			// function and function
			return compareFunFun(s_type, t_type, lpo)
		case basictypes.Meta:
			// function & meta : Occurences inside : f(x) < x, f(y) < x
			global.PrintDebug("C", "Occurence inside, ko")
			return compareMetaFun(t_type, s_type, -1, lpo)
		default:
			fmt.Printf("Type of t unknown")
		}
	case basictypes.Meta:
		switch t_type := t.(type) {
		case basictypes.Fun:
			// meta & function : Occurences inside : x < f(x), x < f(y)
			global.PrintDebug("C", "Occurence inside, ok")
			return compareMetaFun(s_type, t_type, 1, lpo)
		case basictypes.Meta:
			// Meta and meta
			return compareMetaMeta(s_type, t_type)
		default:
			fmt.Printf("Type of t unknown")
		}
	default:
		fmt.Printf("Type of s unknown")
	}
	return 0, false, s, t
}

/* return code can be 1 or -1 */
func compareMetaFun(m basictypes.Meta, f basictypes.Fun, return_code int, lpo LPO) (int, bool, basictypes.Term, basictypes.Term) {
	global.PrintDebug("CMF", fmt.Sprintf("Meta - Fun : return_code = %v", return_code))
	i := 0
	for i < len(f.GetArgs()) {
		res := 0
		is_comparable := false
		switch return_code {
		case 1:
			res, is_comparable, _, _ = lpo.compare(m, f.GetArgs()[i])
		case -1:
			res, is_comparable, _, _ = lpo.compare(f.GetArgs()[i], m)
		default:
			fmt.Printf("Unexpected return_code in compare\n")
		}

		global.PrintDebug("CMF", fmt.Sprintf("Comparable : %v, res = %v", res, is_comparable))
		if is_comparable {
			if res == 0 { // Res of compare meta meta
				return return_code, true, nil, nil
			} else {
				return res, true, nil, nil
			}
		}
		i++
	}
	if return_code == 1 {
		return 0, false, m, f
	} else {
		return 0, false, f, m
	}
}

/* Compare two meta wrt LPO */
func compareMetaMeta(m1, m2 basictypes.Meta) (int, bool, basictypes.Term, basictypes.Term) {
	global.PrintDebug("CMM", "Meta - Meta")
	if m1.Equals(m2) {
		global.PrintDebug("CMM", "Meta - Meta - 0, true, nil, nil")
		return 0, true, nil, nil
	} else {
		global.PrintDebug("CMM", fmt.Sprintf("Meta - Meta - 1, false, %v, %v", m1.ToString(), m2.ToString()))
		return 1, false, m1, m2
	}
}

/* Compare two functions */
func compareFunFun(s, t basictypes.Fun, lpo LPO) (int, bool, basictypes.Term, basictypes.Term) {
	global.PrintDebug("CFF", "Fun - Fun")
	// f < g
	if lpo.Get(s.GetID()) < lpo.Get(t.GetID()) {
		if len(s.GetArgs()) == 0 {
			return 1, true, nil, nil
		} else {
			i := 0
			stopped := false
			for i < len(s.GetArgs()) && !stopped {
				res, is_comparable, _, _ := lpo.compare(s.GetArgs()[i], t)
				if !is_comparable {
					return 0, false, s, t
				}
				if res <= 0 {
					stopped = true
				}
				i++
			}
			if !stopped {
				return 1, true, nil, nil
			}
		}
	}

	// f == g
	if lpo.Get(s.GetID()) == lpo.Get(t.GetID()) {
		if len(s.GetArgs()) != len(t.GetArgs()) {
			fmt.Printf("Error : %v and %v don't have the same number of arguments", s.GetID().ToString(), t.GetID().ToString())
			return 0, false, nil, nil
		}
		n := len(s.GetArgs())
		i := 0
		stopped := false
		val_res := 0
		// First loop : while euqals
		for i < n && !stopped {
			res, is_comparable, t1, t2 := lpo.compare(s.GetArgs()[i], t.GetArgs()[i])
			if !is_comparable {
				return 0, false, t1, t2
			}
			if res != 0 {
				stopped = true
				val_res = res
			} else {
				i++
			}
		}
		if !stopped {
			return 0, true, nil, nil
		}

		// Check and second loop : while <= 0
		if val_res > 0 {
			for i < n && !stopped {
				res, is_comparable, _, _ := lpo.compare(s.GetArgs()[i], t.GetArgs()[i])
				if !is_comparable {
					return 0, false, s, t
				}
				if res <= 0 {
					stopped = true
				}
				i++
			}
			if !stopped {
				return 1, true, nil, nil
			}
		}
	}

	// Occurences inside
	m := len(t.GetArgs())
	i := 0
	stopped := false
	for i < m && !stopped {
		res, is_comparable, _, _ := lpo.compare(s, t.GetArgs()[i])
		if !is_comparable {
			return 0, false, s, t
		}
		if res >= 0 {
			stopped = true
		}
		i++
	}
	if stopped {
		return 1, true, nil, nil
	}

	return -1, true, nil, nil
}

/* Is empty */
func (lpo LPO) isEmpty() bool {
	return (lpo == nil || len(lpo) == 0)
}

/* ToString */
func (lpo LPO) toString() string {
	res := "{"
	cpt := 0
	for term, value := range lpo {
		res += "[" + term.ToString() + "] : " + strconv.Itoa(value)
		if cpt < len(lpo)-1 {
			res += ", "
		}
		cpt++
	}
	return res + "}"
}

/* Maker */
func makeLPO() LPO {
	return LPO{}
}
