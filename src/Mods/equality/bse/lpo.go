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
* This file contains the type definitionof the lixicographic path ordering.
**/

package equality

import (
	"fmt"

	"github.com/GoelandProver/Goeland/AST"
	"github.com/GoelandProver/Goeland/Glob"
	"github.com/GoelandProver/Goeland/Lib"
)

type compareStruct struct {
	order          int
	is_comparable  bool
	new_t1, new_t2 AST.Term
}

func makeCompareStruct(o int, ic bool, t1, t2 AST.Term) compareStruct {
	return compareStruct{o, ic, t1, t2}
}

func makeEmptyCompareStruct() compareStruct {
	return makeCompareStruct(0, false, nil, nil)
}

/** Check if two terms respect the LPO
* Data : s an t, two terms
* Result :
*	an int : 1 if s < t, 0 si s = t, -1 if s > t
*	a boolean : true if the two term are comparable, false otherwise
*	two terms : the new terms for the constraint (if not comparable)
**/
func compareLPO(s, t AST.Term) compareStruct {
	debug(
		Lib.MkLazy(func() string { return fmt.Sprintf("Compare %v and %v", s.ToString(), t.ToString()) }),
	)
	switch s_type := s.(type) {
	case AST.Fun:
		debug(
			Lib.MkLazy(func() string { return fmt.Sprintf("%v is a function", s.ToString()) }),
		)
		switch t_type := t.(type) {
		case AST.Fun:
			debug(
				Lib.MkLazy(func() string { return fmt.Sprintf("%v is a function", t.ToString()) }),
			)
			// function and function
			return compareFunFun(s_type, t_type)
		case AST.Meta:
			debug(
				Lib.MkLazy(func() string { return fmt.Sprintf("%v is a Meta", t.ToString()) }),
			)
			// function & meta : Occurences inside : f(x) < x, f(y) < x
			return compareMetaFun(t_type, s_type, -1)
		default:
			Glob.Anomaly("CPR", "Type of t unknown")
		}
	case AST.Meta:
		debug(
			Lib.MkLazy(func() string { return fmt.Sprintf("%v is a Meta", s.ToString()) }),
		)
		switch t_type := t.(type) {
		case AST.Fun:
			debug(
				Lib.MkLazy(func() string { return fmt.Sprintf("%v is a function", t.ToString()) }),
			)
			// meta & function : Occurences inside : x < f(x), x < f(y)
			return compareMetaFun(s_type, t_type, 1)
		case AST.Meta:
			debug(
				Lib.MkLazy(func() string { return fmt.Sprintf("%v is a Meta", t.ToString()) }),
			)
			// Meta and meta
			return compareMetaMeta(s_type, t_type)
		default:
			Glob.Anomaly("CPR", "Type of t unknown")
		}
	default:
		Glob.Anomaly("CPR", "Type of s unknown")
	}
	return makeCompareStruct(0, false, s, t)
}

/**
* Compare a metavariable and a function.
* Return code comes for the compare function and code must be 1 or -1. It correspond to the code to return of the CompreMetaFun fits the LPO.
* It's needed to keep the order.
* For example, x < f(x) is ok but f(x) < x isn't
**/
func compareMetaFun(m AST.Meta, f AST.Fun, return_code int) compareStruct {
	debug(
		Lib.MkLazy(func() string { return "Compare Meta Fun" }),
	)
	// Check argument inside f
	if found, res := compareMetaFunInside(m, f, return_code); found {
		debug(
			Lib.MkLazy(func() string { return fmt.Sprintf("Found after compare inside : %v", res) }),
		)
		return res
	}

	debug(
		Lib.MkLazy(func() string { return fmt.Sprintf("Not found and return_code is %v", return_code) }),
	)
	// f has no args or all respect LPO
	if return_code == 1 {
		return makeCompareStruct(0, false, m, f)
	} else {
		return makeCompareStruct(0, false, f, m)
	}
}

func compareMetaFunInside(m AST.Meta, f AST.Fun, return_code int) (bool, compareStruct) {
	debug(
		Lib.MkLazy(func() string { return "Compare Meta Fun Inside" }),
	)
	i := 0
	// Check arguments to find occur-check eventually
	for i < f.GetArgs().Len() {
		res := 0
		is_comparable := false
		switch return_code {
		case 1:
			cs := compareLPO(m, f.GetArgs().At(i))
			res = cs.order
			is_comparable = cs.is_comparable
		case -1:
			cs := compareLPO(f.GetArgs().At(i), m)
			res = cs.order
			is_comparable = cs.is_comparable
		default:
			Glob.Anomaly("CMFI", "Unexpected return_code in compare")
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
func compareMetaMeta(m1, m2 AST.Meta) compareStruct {
	if m1.Equals(m2) {
		return makeCompareStruct(0, true, nil, nil)
	} else {
		return makeCompareStruct(1, false, m1, m2)
	}
}

/* Compare two functions */
func compareFunFun(s, t AST.Fun) compareStruct {
	debug(
		Lib.MkLazy(func() string { return "Compare Fun Fun" }),
	)

	switch s.GetID().CompareWith(t.GetID()) {
	case -1:
		if found, res := caseFLessG(s, t); found {
			return res
		}
	case 0:
		if found, res := caseFEqualsG(s, t); found {
			return res
		}
	}

	return caseDefault(s, t)
}

/* Case f < g */
func caseFLessG(s, t AST.Fun) (bool, compareStruct) {
	// f < g and f has no argument
	if s.GetArgs().Len() == 0 {
		return true, makeCompareStruct(1, true, nil, nil)
	} else {
		i := 0
		stopped := false
		for i < s.GetArgs().Len() && !stopped {
			cs := compareLPO(s.GetArgs().At(i), t)

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
func caseFEqualsG(s, t AST.Fun) (bool, compareStruct) {
	debug(
		Lib.MkLazy(func() string { return "Case F = G" }),
	)
	if s.GetArgs().Len() != t.GetArgs().Len() {
		Glob.Fatal("F=G", fmt.Sprintf("Error : %v and %v don't have the same number of arguments", s.GetID().ToString(), t.GetID().ToString()))
		return true, makeCompareStruct(0, false, nil, nil)
	}

	n := s.GetArgs().Len()
	i := 0
	stopped := false
	val_res := 0
	// First loop : while equals
	for i < n && !stopped {
		cs := compareLPO(s.GetArgs().At(i), t.GetArgs().At(i))

		// Bug here : les autres arguments !
		if !cs.is_comparable {
			debug(
				Lib.MkLazy(func() string {
					return fmt.Sprintf(
						"Not comparable, return : %v and %v",
						cs.new_t1.ToString(),
						cs.new_t2.ToString(),
					)
				}),
			)
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
			cs := compareLPO(s.GetArgs().At(i), t)
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
func caseDefault(s, t AST.Fun) compareStruct {
	// Occurences inside
	m := t.GetArgs().Len()
	i := 0
	stopped := false
	for i < m && !stopped {
		cs := compareLPO(s, t.GetArgs().At(i))
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
