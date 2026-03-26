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
* This file contains functions and types which describe the formula's data structure
**/

package AST

import (
	"fmt"

	"github.com/GoelandProver/Goeland/Glob"
	"github.com/GoelandProver/Goeland/Lib"
)

/*** Structure ***/

type Form interface {
	GetMetas() Lib.Set[Meta]
	GetSubTerms() Lib.Set[Term]
	GetSymbols() Lib.Set[Id]
	GetSubFormulasRecur() Lib.List[Form]
	GetChildFormulas() Lib.List[Form]

	Lib.Copyable[Form]
	Lib.Stringable
	Lib.Comparable
	Lib.Ordered

	SubstTy(old TyMeta, new Ty) Form
	InstantiateTy(old TyBound, new Ty) Form
	Instantiate(x Var, t Term) Form
	Subst(x Meta, t Term) Form
	ReplaceTerm(Term, Term) Form

	toString(int) string
}

// Instantiates the _quantified_ formula [f] with the given term.
// Throws an anomaly if [f] is _not_ quantified.
func Instantiate(f Form, t Term) Form {
	switch f := f.(type) {
	case All:
		return f.subForm.Instantiate(0, t)
	case Ex:
		return f.subForm.Instantiate(0, t)
	}

	Glob.Anomaly(
		"formula.Instantiate",
		fmt.Sprintf("Tried to instantiate the non-quantified formula %s", f.ToString()),
	)
	return nil
}

func FormToStringOffset(f Form) string {
	return f.Instantiate(0, Meta{-1, 0, printer.StrBound(0), TIndividual()}).toString(1)
}

/* Utils */

func listUnion[T any, U Lib.Ordered](ls Lib.List[T], f func(T) Lib.Set[U]) Lib.Set[U] {
	res := Lib.EmptySet[U]()

	for _, x := range ls.GetSlice() {
		res = res.Union(f(x))
	}

	return res
}

// Comparisons

func qLess(ty1, ty2 Ty, f1, f2 Form) bool {
	return ty1.Less(ty2) || (ty1.Equals(ty2) && f1.Less(f2))
}

func bLess(fs1, fs2 Lib.List[Form]) bool {
	return Lib.ListLess(fs1, fs2)
}
