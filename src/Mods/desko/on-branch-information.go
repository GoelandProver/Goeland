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
 * This file defines the `branch_checker` type. Elements of this type are functions
 * which test whether a given Skolem symbol is on the branch of another Skolem symbol.
 *
 * This is achieved through a pre-computation given a proof.
 **/

package desko

import (
	"github.com/GoelandProver/Goeland/AST"
	"github.com/GoelandProver/Goeland/Lib"
	"github.com/GoelandProver/Goeland/Search"
)

// Returns [true] if the formula has been introduced in the same branch
// as the Skolem symbol.
type branch_checker func(AST.Id, AST.Form) bool

func precompute_branch_checker(proof Search.IProof) branch_checker {
	symbols_map := acc_and_assoc_symbols(
		proof,
		Lib.EmptySet[AST.Form](),
		make(map[AST.Id]Lib.Set[AST.Form]),
	)

	return func(symbol AST.Id, form AST.Form) bool {
		if set, found := symbols_map[symbol]; found {
			return set.Contains(form)
		}

		return false
	}
}

func acc_and_assoc_symbols(
	proof Search.IProof,
	accumulator Lib.Set[AST.Form],
	m map[AST.Id]Lib.Set[AST.Form],
) map[AST.Id]Lib.Set[AST.Form] {

	switch Search.KindOfRule(proof.RuleApplied()) {

	case Search.KindDelta:
		switch t := proof.TermGenerated().(type) {

		case Lib.Some[Lib.Either[AST.Ty, AST.Term]]:
			switch tm := t.Val.(type) {
			case Lib.Left[AST.Ty, AST.Term]:
				// pass: we should not have to deskolemize types
			case Lib.Right[AST.Ty, AST.Term]:
				switch f := tm.Val.(type) {
				case AST.Fun:
					m[f.GetID()] = accumulator.Copy()
				default:
					raise_anomaly("Found a non-functional Skolem term: " + tm.Val.ToString())
				}
			}

		case Lib.None[Lib.Either[AST.Ty, AST.Term]]:
			// pass
			// This case might happen when the bound variable that has just been instantiated
			// never appears in the formula.
		}

	default:
		// pass
	}

	accumulator = accumulator.Add(proof.AppliedOn())

	for _, child := range proof.Children().GetSlice() {
		m = acc_and_assoc_symbols(child, accumulator.Copy(), m)
	}

	return m
}
