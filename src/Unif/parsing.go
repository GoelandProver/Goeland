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

package Unif

import (
	"github.com/GoelandProver/Goeland/AST"
	"github.com/GoelandProver/Goeland/Glob"
	"github.com/GoelandProver/Goeland/Lib"
)

func transformPred(p AST.Pred) AST.Term {
	return transformTerm(AST.MakeFun(p.GetID(), p.GetTyArgs(), p.GetArgs()))
}

func transformTerm(t AST.Term) AST.Term {
	switch term := t.(type) {
	case AST.Id, AST.Meta, AST.Var:
		return t
	case AST.Fun:
		args := Lib.ListMap(term.GetTyArgs(), AST.TyToTerm)
		args.Append(Lib.ListMap(term.GetArgs(), transformTerm).GetSlice()...)
		return AST.MakeFun(
			term.GetID(),
			Lib.NewList[AST.Ty](),
			args,
		)
	}

	Glob.Anomaly("unif parsing", "Unknown term")
	return nil
}

/* Parses a formulae to a sequence of instructions. */
func ParseFormula(formula AST.Form) Sequence {

	// The formula has to be a predicate
	switch formula_type := formula.(type) {
	case AST.Pred:
		instructions := Sequence{base: Lib.MkRight[AST.Term, AST.Form](formula)}

		switch term := transformPred(formula_type).(type) {
		case AST.Fun:
			instructions.add(Begin{})
			parsePred(formula_type.GetID(), term.GetArgs(), &instructions)
			instructions.add(End{})

		default:
			Glob.Anomaly("unification", "error when translating in internal representation")
		}

		return instructions

	default:
		return Sequence{}
	}
}

func parsePred(i AST.Id, args Lib.List[AST.Term], instructions *Sequence) {
	instructions.add(makeCheck(i))
	if !args.Empty() {
		instructions.add(Begin{})
		instructions.add(Down{})
		varCount := 0
		postCount := 0
		parseTerms(
			args,
			instructions,
			Lib.NewList[AST.Meta](),
			&varCount,
			&postCount,
		)
		instructions.add(End{})
	}
}

/* Parses an array of terms to machine instructions */
func parseTerms(
	terms Lib.List[AST.Term],
	instructions *Sequence,
	subst Lib.List[AST.Meta],
	varCount *int,
	postCount *int,
) Lib.List[AST.Meta] {

	rightDefined := func(terms Lib.List[AST.Term], i int) bool {
		return i < terms.Len()-1
	}

	downDefined := func(terms Lib.List[AST.Term]) bool {
		return terms.Len() > 0
	}

	for i, term := range terms.GetSlice() {
		switch t := term.(type) {
		case AST.Meta:
			instructions.add(Put{i: *varCount})
			subst = Lib.ListCpy(subst)
			subst.Append(t)
			if *varCount > 0 {
				for j := 0; j < *varCount; j++ {
					if subst.At(j).Equals(t) {
						instructions.add(Compare{j, *varCount})
					}
				}
			}
			*varCount++
			if rightDefined(terms, i) {
				instructions.add(Right{})
			}
		case AST.Fun:
			instructions.add(Begin{})
			instructions.add(makeCheck(t.GetID()))

			if downDefined(t.GetArgs()) {
				if rightDefined(terms, i) {
					instructions.add(Push{*postCount})
					*postCount++
				}
				instructions.add(Down{})
				if !t.GetTyArgs().Empty() {
					Glob.Anomaly("unif parsing", "found type arguments at an unexpected place")
				}
				subst = parseTerms(t.GetArgs(), instructions, subst, varCount, postCount)
				if rightDefined(terms, i) {
					*postCount--
					instructions.add(Pop{*postCount})
				}
				instructions.add(makeEnd(t))
			} else if rightDefined(terms, i) {
				instructions.add(makeEnd(t))
				instructions.add(Right{})
			} else {
				instructions.add(makeEnd(t))
			}
		}
	}
	return subst
}

func ParseTerm(term AST.Term) Sequence {
	var instructions Sequence
	varCount := 0
	postCount := 0
	parseTerms(
		Lib.MkListV(term.Copy()),
		&instructions,
		Lib.NewList[AST.Meta](),
		&varCount,
		&postCount,
	)
	instructions.base = Lib.MkLeft[AST.Term, AST.Form](term)
	return instructions
}
