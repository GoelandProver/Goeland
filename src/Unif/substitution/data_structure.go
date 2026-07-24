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
* This file contains functions and types which describe the formula's data
  structure
**/

package subst

import (
	"fmt"

	"github.com/GoelandProver/Goeland/AST"
	"github.com/GoelandProver/Goeland/Glob"
	"github.com/GoelandProver/Goeland/Lib"
)

type DataStructure interface {
	Print()
	IsEmpty() bool
	Copy() DataStructure
	MakeDataStruct(Lib.List[AST.Form], bool) DataStructure
	InsertFormulaListToDataStructure(Lib.List[AST.Form]) DataStructure

	Unify(AST.Form) (bool, []MixedSubstitutions)
	UnifyTerm(AST.Term) (bool, []MixedTermSubstitutions)
	// FIXME:
	// When the unification gets reworked, think a bit more about the exposed interface.
	// We want to index on _terms_ while keeping the ability to unify _predicates_.
	// (we can easily coerce a predicate to a function)
	// We probably want to expose two functions --- one to unify predicates, and the other
	// one to unify terms. But maybe we should say that unifying predicates is the "weird"
	// case instead of the other way around.
	//
	// We should also find a more explicit name over `DataStructure`... -> term indexing structure?  UnificationStructure
}

func TransformPred(p AST.Pred) AST.Term {
	return TransformTerm(AST.MakerFun(p.GetID(), p.GetTyArgs(), p.GetArgs()))
}

func TransformTerm(t AST.Term) AST.Term {
	switch term := t.(type) {
	case AST.Id, AST.Meta, AST.Var:
		return t
	case AST.Fun:
		args := Lib.ListMap(term.GetTyArgs(), AST.TyToTerm)
		args.Append(Lib.ListMap(term.GetArgs(), TransformTerm).GetSlice()...)
		return AST.MakerFun(
			term.GetID(),
			Lib.NewList[AST.Ty](),
			args,
		)
	}

	Glob.Anomaly("unif parsing", "Unknown term")
	return nil
}

/* Merge two valid substitutions */
func MergeSubstitutions(s1, s2 Substitutions) (Substitutions, bool) {
	debug(
		Lib.MkLazy(func() string {
			return fmt.Sprintf(
				"Merge substitution : %v and %v",
				s1.ToString(),
				s2.ToString())
		}),
	)
	res := Substitutions{}
	same_key := false

	if s1.IsEmpty() {
		return s2, false
	}

	if s2.IsEmpty() {
		return s1, false
	}

	for _, subst := range s1 {
		res.Set(subst.Get())
	}

	for _, subst := range s2 {
		s2_k, s2_v := subst.Get()
		if HasSubst(res, s2_k) {
			same_key = true
			res = AddUnification(s2_k.Copy(), s2_v.Copy(), res.Copy())
		} else {
			res.Set(s2_k.ToMeta(), s2_v)
			EliminateMeta(&res)
			Eliminate(&res)
		}

	}
	return res, same_key
}

// robinsonUnify implements Robinson's structural unification algorithm on
// Goeland's term representation.  It extends the substitution s in place,
// threading it through recursive calls, and returns Failure() on any clash.
//
// Steps:
//  1. Walk both terms through s to their current representative.
//  2. If they are already identical → nothing to do, return s.
//  3. Meta on either side → occur-check, then bind and propagate via Eliminate.
//  4. Fun / Fun with the same head and arity → recurse on each argument pair.
//  5. Any other combination (different heads, different arities, Var, …) → Failure.
func robinsonUnify(term1, term2 AST.Term, s Substitutions) Substitutions {
	term1 = walkSubst(term1, s)
	term2 = walkSubst(term2, s)

	if term1.Equals(term2) {
		return s
	}

	switch t1 := term1.(type) {
	case AST.Meta:
		if !OccurCheckValid(t1, term2) {
			return Failure()
		}
		s.Set(t1, term2)
		EliminateMeta(&s)
		Eliminate(&s)
		return s

	case AST.Fun:
		switch t2 := term2.(type) {
		case AST.Meta:
			if !OccurCheckValid(t2, term1) {
				return Failure()
			}
			s.Set(t2, term1)
			EliminateMeta(&s)
			Eliminate(&s)
			return s

		case AST.Fun:
			if !t1.GetID().Equals(t2.GetID()) {
				return Failure()
			}
			args1 := t1.GetArgs()
			args2 := t2.GetArgs()
			if args1.Len() != args2.Len() {
				return Failure()
			}
			for i := range args1.GetSlice() {
				s = robinsonUnify(args1.At(i).Copy(), args2.At(i).Copy(), s)
				if s.Equals(Failure()) {
					return Failure()
				}
			}
			return s

		default:
			return Failure()
		}

	default:
		// Var or any other term kind: not expected after Skolemisation.
		return Failure()
	}
}

// walkSubst chases meta-variable bindings in s until reaching an unbound
// meta or a non-meta term.
func walkSubst(t AST.Term, s Substitutions) AST.Term {
	for t.IsMeta() {
		val, idx := s.Get(t.ToMeta())
		if idx == -1 {
			break
		}
		t = val
	}
	return t
}

func AddUnification(term1, term2 AST.Term, subst Substitutions) Substitutions {
	debug(
		Lib.MkLazy(func() string {
			return fmt.Sprintf(
				"Add unification : %v and %v to %v",
				term1.ToString(),
				term2.ToString(),
				subst.ToString())
		}),
	)
	return robinsonUnify(term1.Copy(), term2.Copy(), subst.Copy())
}
