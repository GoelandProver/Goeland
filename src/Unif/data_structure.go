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

package Unif

import (
	"github.com/GoelandProver/Goeland/AST"
	"github.com/GoelandProver/Goeland/Lib"
)

type DataStructure interface {
	Print()
	IsEmpty() bool
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
	// We should also find a more explicit name over `DataStructure`...

	Copy() DataStructure
}
