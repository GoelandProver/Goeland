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
* This file implements quantifiers over formulas (forall, exists, forall (types)).
**/

package AST

import (
	"fmt"

	"github.com/GoelandProver/Goeland/Glob"
	"github.com/GoelandProver/Goeland/Lib"
)

type quantifier struct {
	ty      Ty
	subForm Form
	symbol  Connective
}

func makeQuantifier(
	ty Ty,
	subForm Form,
	symbol Connective,
) quantifier {
	return quantifier{
		ty,
		subForm,
		symbol,
	}
}

func (q quantifier) GetForm() Form {
	return q.subForm.Copy()
}

func (q quantifier) GetMetas() Lib.Set[Meta] {
	return q.subForm.GetMetas()
}

func (q quantifier) Ty() Ty {
	return q.ty
}

func (q quantifier) toString(n int) string {
	vars := Lib.NewList[Lib.Pair[int, string]]()
	var test func(quantifier) bool
	var next func(quantifier) quantifier

	switch q.symbol {
	case ConnAll:
		test = func(q quantifier) bool { return Glob.Is[All](q.subForm) }
		next = func(q quantifier) quantifier { return q.subForm.(All).quantifier }
	case ConnEx:
		test = func(q quantifier) bool { return Glob.Is[Ex](q.subForm) }
		next = func(q quantifier) quantifier { return q.subForm.(Ex).quantifier }
	default:
		Glob.Anomaly("formula", "Expected quantifier to be forall or exists")
	}

	vars = vars.Push(Lib.MkPair(n, q.ty.toString(n)))
	n += 1

	for test(q) {
		q = next(q)
		vars = vars.Push(Lib.MkPair(n, q.ty.toString(n)))
		n += 1
	}

	return printer.Str(fmt.Sprintf(
		"%s %s%s%s",
		printer.StrConn(q.symbol),
		printer.SurroundQuantified(
			vars.ToString(
				func(p Lib.Pair[int, string]) string {
					if p.Snd == tType.ToString() {
						return printer.StrTyVar(Lib.MkPair(printer.StrBoundTy(p.Fst), p.Snd))
					} else {
						return printer.StrTyVar(Lib.MkPair(printer.StrBound(p.Fst), p.Snd))
					}
				},
				printer.StrConn(SepTyVars),
				"",
			),
		),
		printer.StrConn(SepVarsForm),
		printer.Str(q.subForm.toString(n)),
	))
}

func (q quantifier) ToString() string {
	return q.toString(0)
}

func (q quantifier) GetChildFormulas() Lib.List[Form] {
	return Lib.MkListV(q.GetForm())
}

func (q quantifier) Equals(other any) bool {
	if typed, ok := other.(quantifier); ok {
		return q.ty.Equals(typed.ty) && q.subForm.Equals(typed.subForm)
	}

	return false
}

func (q quantifier) GetSubTerms() Lib.Set[Term] {
	return q.GetForm().GetSubTerms()
}

func (q quantifier) GetSymbols() Lib.Set[Id] {
	return q.GetForm().GetSymbols()
}

func (q quantifier) copy() quantifier {
	nq := makeQuantifier(
		q.ty.Copy(),
		q.GetForm(),
		q.symbol,
	)

	return nq
}

func (q quantifier) applyOnSubForm(f func(Form) Form) quantifier {
	return makeQuantifier(q.ty, f(q.subForm), q.symbol)
}

func (q quantifier) applyOnTy(f func(Ty) Ty) quantifier {
	return makeQuantifier(f(q.ty), q.subForm, q.symbol)
}
