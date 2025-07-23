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
* This file implements the main algorithms for turning axioms into rewrite rules.
**/

package dmt

import (
	"fmt"

	"github.com/GoelandProver/Goeland/AST"
	"github.com/GoelandProver/Goeland/Core"
	"github.com/GoelandProver/Goeland/Glob"
	"github.com/GoelandProver/Goeland/Lib"
)

var debug Glob.Debugger

func InitDebugger() {
	debug = Glob.CreateDebugger("plugin.DMT")
}

func RegisterAxiom(axiom AST.Form) bool {
	axiomFT := instanciateForalls(axiom)

	if isRegisterableAsEqu(axiomFT) {
		registeredAxioms.Append(axiom)
		return makeRewriteRuleFromEquivalence(axiomFT.(AST.Equ))
	} else if isRegisterableAsImplication(axiomFT) {
		registeredAxioms.Append(axiom)
		return makeRewriteRuleFromImplication(axiomFT.(AST.Imp))
	}

	return false
}

func instanciateForalls(axiom AST.Form) AST.Form {
	axiomFT := Core.MakeFormAndTerm(axiom.Copy(), Lib.NewList[AST.Term]())
	for Glob.Is[AST.All](axiomFT.GetForm()) {
		axiomFT, _ = Core.Instantiate(axiomFT, -1)
	}
	return axiomFT.GetForm()
}

func addPosRewriteRule(axiom AST.Form, cons AST.Form) {
	simplifiedAxiom := AST.RemoveNeg(axiom)
	positiveTree = positiveTree.InsertFormulaListToDataStructure(
		AST.NewFormList(simplifiedAxiom),
	)
	addRewriteRule(simplifiedAxiom, cons, true)
}

func addNegRewriteRule(axiom AST.Form, cons AST.Form) {
	simplifiedAxiom := AST.RemoveNeg(axiom)
	negativeTree = negativeTree.InsertFormulaListToDataStructure(
		AST.NewFormList(simplifiedAxiom),
	)
	addRewriteRule(simplifiedAxiom, cons, false)
}

func addRewriteRule(axiom AST.Form, cons AST.Form, polarity bool) {
	for canSkolemize(cons) {
		cons = Core.Skolemize(cons, cons.GetMetas())
	}
	printDebugRewriteRule(polarity, axiom, cons)
	rewriteMapInsertion(polarity, axiom.ToString(), cons)
}

func printDebugRewriteRule(polarity bool, axiom, cons AST.Form) {
	var ax, co string
	if polarity {
		ax, co = axiom.ToString(), cons.ToString()
	} else {
		ax, co = AST.MakerNot(axiom).ToString(), cons.ToString()
	}
	debug(
		Lib.MkLazy(func() string { return fmt.Sprintf("Rewrite rule: %s ---> %s\n", ax, co) }),
	)
}

/**
 * Skolemization can be applied only when the kind of rule appliable is a delta-rule.
 **/
func canSkolemize(form AST.Form) bool {
	return preskolemize && Core.ShowKindOfRule(form) == Core.Delta
}

// ----------------------------------------------------------------------------
// Rewrite rules from atomic predicate.

func isRegisterableAsAtomic(axiom, instanciatedAxiom AST.Form) bool {
	return Glob.Is[AST.All](axiom) && Core.ShowKindOfRule(instanciatedAxiom) == Core.Atomic
}

func makeRewriteRuleFromAtomic(atomic AST.Form) bool {
	if isEqualityPred(atomic) {
		return false
	}
	if Glob.Is[AST.Pred](atomic) {
		return makeRewriteRuleFromPred(atomic.(AST.Pred))
	}
	return makeRewriteRuleFromNegatedAtom(atomic.(AST.Not))
}

func makeRewriteRuleFromPred(pred AST.Pred) bool {
	addPosRewriteRule(pred, AST.MakerTop())
	addNegRewriteRule(pred, AST.MakerNot(AST.MakerTop()))
	return true
}

func makeRewriteRuleFromNegatedAtom(atom AST.Not) bool {
	if isEquality(atom.GetForm().(AST.Pred)) {
		return false
	}
	addNegRewriteRule(atom, AST.MakerNot(AST.MakerBot()))
	addPosRewriteRule(atom, AST.MakerBot())
	return true
}

// End rewrite rule from atomic predicate.
// ----------------------------------------------------------------------------

// ----------------------------------------------------------------------------
// Rewrite rules from equivalence formula.

func isRegisterableAsEqu(instanciatedAxiom AST.Form) bool {
	return Glob.Is[AST.Equ](instanciatedAxiom)
}

func makeRewriteRuleFromEquivalence(equForm AST.Equ) bool {
	phi1, phi2 := equForm.GetF1(), equForm.GetF2()

	if areBothAtomics(phi1, phi2) || neitherAreAtomics(phi1, phi2) {
		return false
	}

	var f1, f2 AST.Form
	if isAtomic(phi1) {
		f1, f2 = phi1, phi2
	} else {
		f1, f2 = phi2, phi1
	}

	return addEquRewriteRuleIfNotEquality(f1, f2)
}

func isAtomic(f AST.Form) bool {
	return Core.ShowKindOfRule(f) == Core.Atomic
}

func areBothAtomics(f1, f2 AST.Form) bool {
	return isAtomic(f1) && isAtomic(f2)
}

func neitherAreAtomics(f1, f2 AST.Form) bool {
	return !isAtomic(f1) && !isAtomic(f2)
}

func isEqualityPred(f AST.Form) bool {
	return (Glob.Is[AST.Pred](f) && isEquality(f.(AST.Pred))) ||
		(Glob.Is[AST.Not](f) && isEquality(predFromNegatedAtom(f)))
}

func addEquRewriteRuleIfNotEquality(f1, f2 AST.Form) bool {
	if isEqualityPred(f1) {
		return false
	}
	addEquivalenceRewriteRule(f1, f2)
	return true
}

func addEquivalenceRewriteRule(axiom, cons AST.Form) {
	if Glob.Is[AST.Not](axiom) {
		addPosRewriteRule(axiom, AST.MakerNot(cons))
		addNegRewriteRule(axiom, cons)
	} else {
		addPosRewriteRule(axiom, cons)
		addNegRewriteRule(axiom, AST.MakerNot(cons))
	}
}

// End rewrite rule from equivalence formula.
// ----------------------------------------------------------------------------

// ----------------------------------------------------------------------------
// Rewrite rules from implicated formula.

func isRegisterableAsImplication(instanciatedAxiom AST.Form) bool {
	return activatePolarized && Glob.Is[AST.Imp](instanciatedAxiom)
}

func makeRewriteRuleFromImplication(impForm AST.Imp) bool {
	phi1, phi2 := impForm.GetF1(), impForm.GetF2()

	// This line currently blocks the generation of a rewrite rule if there is
	// an equality atom on the left-side of the formula.
	if neitherAreAtomics(phi1, phi2) || isEqualityPred(phi1) {
		return false
	}

	if isAtomic(phi1) {
		if Glob.Is[AST.Pred](phi1) {
			addPosRewriteRule(phi1, phi2)
		} else {
			addNegRewriteRule(predFromNegatedAtom(phi1), phi2)
		}
	}

	// This line currently blocks the generation of a rewrite rule if there is
	// an equality atom on the right-side of the formula.
	if isAtomic(phi2) && !isEqualityPred(phi2) {
		if Glob.Is[AST.Pred](phi2) {
			addNegRewriteRule(phi2, AST.MakerNot(phi1))
		} else {
			addPosRewriteRule(predFromNegatedAtom(phi2), AST.MakerNot(phi1))
		}
	}

	return true
}

// End rewrite rule from implicated formula.
// ----------------------------------------------------------------------------
