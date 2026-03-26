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
* This file contains functions and types which describe the term's data structure
**/

package AST

import (
	"github.com/GoelandProver/Goeland/Glob"
	"github.com/GoelandProver/Goeland/Lib"
)

/* Term */
type Term interface {
	Lib.Comparable
	Less(any) bool

	Lib.Copyable[Term]

	Lib.Stringable
	toString(int) string

	GetName() string
	IsMeta() bool
	IsFun() bool
	ToMeta() Meta

	GetMetas() Lib.Set[Meta]
	GetMetaList() Lib.List[Meta] // Metas appearing in the term ORDERED
	GetSubTerms() Lib.Set[Term]
	GetSymbols() Lib.Set[Id]

	Instantiate(x Var, t Term) Term
	Subst(x Meta, t Term) Term
	InstantiateTy(old TyBound, new Ty) Term
	SubstTy(old TyMeta, new Ty) Term

	ReplaceTerm(Term, Term) Term
}

/*** Functions **/

func TermEquals(x, y Term) bool {
	return x.Equals(y)
}

func GetSymbol(tm Term) Lib.Option[Id] {
	switch t := tm.(type) {
	case Var, Meta:
		return Lib.MkNone[Id]()
	case Fun:
		return Lib.MkSome(t.GetID())
	case Id:
		return Lib.MkSome(t)
	}

	debug(Lib.MkLazy(func() string {
		return tm.ToString()
	}))

	Glob.Anomaly(
		"term",
		"Found a term that was neither a bound variable nor a free variable nor a function",
	)
	return Lib.MkNone[Id]()
}
