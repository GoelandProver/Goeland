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

/*************************/
/* axiom_registration.go */
/*************************/

/**
* This file implements the main algorithms for turning axioms into rewrite rules.
**/

package dmt

import (
	"fmt"

	"github.com/GoelandProver/Goeland/global"
	btypes "github.com/GoelandProver/Goeland/types/basic-types"
)

func RegisterAxiom(axiom btypes.Form) bool {
	axiomFT := instanciateForalls(axiom)

	if isRegisterableAsAtomic(axiom, axiomFT) {
		return makeRewriteRuleFromAtomic(axiomFT)
	} else if isRegisterableAsEqu(axiomFT) {
		return makeRewriteRuleFromEquivalence(axiomFT.(btypes.Equ))
	} else if isRegisterableAsImplication(axiomFT) {
		return makeRewriteRuleFromImplication(axiomFT.(btypes.Imp))
	}

	return false
}

func instanciateForalls(axiom btypes.Form) btypes.Form {
	axiomFT := axiom.Copy()
	for is[btypes.All](axiomFT) {
		axiomFT = instantiateOnce(axiomFT)
	}
	return axiomFT
}

func addPosRewriteRule(axiom btypes.Form, cons btypes.Form) {
	simplifiedAxiom := btypes.RemoveNeg(axiom)
	positiveTree = positiveTree.InsertFormulaListToDataStructure(
		btypes.MakeSingleElementList(simplifiedAxiom),
	)
	addRewriteRule(simplifiedAxiom, cons, true)
}

func addNegRewriteRule(axiom btypes.Form, cons btypes.Form) {
	simplifiedAxiom := btypes.RemoveNeg(axiom)
	negativeTree = negativeTree.InsertFormulaListToDataStructure(
		btypes.MakeSingleElementList(simplifiedAxiom),
	)
	addRewriteRule(simplifiedAxiom, cons, false)
}

func addRewriteRule(axiom btypes.Form, cons btypes.Form, polarity bool) {
	for canSkolemize(cons) {
		cons = skolemize(cons)
	}
	printDebugRewriteRule(polarity, axiom, cons)
	rewriteMapInsertion(polarity, axiom.ToString(), cons)
}

func printDebugRewriteRule(polarity bool, axiom, cons btypes.Form) {
	if debugActivated {
		var ax, co string
		if polarity {
			ax, co = axiom.ToString(), cons.ToString()
		} else {
			ax, co = btypes.RefuteForm(axiom).ToString(), cons.ToString()
		}
		global.PrintDebug("DMT", fmt.Sprintf("Rewrite rule: %s ---> %s\n", ax, co))
	}
}

/**
 * Skolemization can be applied only when the kind of rule appliable is a delta-rule.
 **/
func canSkolemize(form btypes.Form) bool {
	return preskolemize && btypes.ShowKindOfRule(form) == btypes.Delta
}

// ----------------------------------------------------------------------------
// Rewrite rules from atomic predicate.

func isRegisterableAsAtomic(axiom, instanciatedAxiom btypes.Form) bool {
	return is[btypes.All](axiom) && btypes.ShowKindOfRule(instanciatedAxiom) == btypes.Atomic
}

func makeRewriteRuleFromAtomic(atomic btypes.Form) bool {
	if isEqualityPred(atomic) {
		return false
	}
	if is[btypes.Pred](atomic) {
		return makeRewriteRuleFromPred(atomic.(btypes.Pred))
	}
	return makeRewriteRuleFromNegatedAtom(atomic.(btypes.Not))
}

func makeRewriteRuleFromPred(pred btypes.Pred) bool {
	addPosRewriteRule(pred, btypes.MakerTop())
	addNegRewriteRule(pred, btypes.RefuteForm(btypes.MakerTop()))
	return true
}

func makeRewriteRuleFromNegatedAtom(atom btypes.Not) bool {
	addNegRewriteRule(atom, btypes.RefuteForm(btypes.MakerBot()))
	addPosRewriteRule(atom, btypes.MakerBot())
	return true
}

// End rewrite rule from atomic predicate.
// ----------------------------------------------------------------------------

// ----------------------------------------------------------------------------
// Rewrite rules from equivalence formula.

func isRegisterableAsEqu(instanciatedAxiom btypes.Form) bool {
	return is[btypes.Equ](instanciatedAxiom)
}

func makeRewriteRuleFromEquivalence(equForm btypes.Equ) bool {
	phi1, phi2 := equForm.GetF1(), equForm.GetF2()

	if areBothAtomics(phi1, phi2) || neitherAreAtomics(phi1, phi2) {
		return false
	}

	var f1, f2 btypes.Form
	if isAtomic(phi1) {
		f1, f2 = phi1, phi2
	} else {
		f1, f2 = phi2, phi1
	}

	return addEquRewriteRuleIfNotEquality(f1, f2)
}

func isAtomic(f btypes.Form) bool {
	return btypes.ShowKindOfRule(f) == btypes.Atomic
}

func areBothAtomics(f1, f2 btypes.Form) bool {
	return isAtomic(f1) && isAtomic(f2)
}

func neitherAreAtomics(f1, f2 btypes.Form) bool {
	return !isAtomic(f1) && !isAtomic(f2)
}

func isEqualityPred(f btypes.Form) bool {
	return (is[btypes.Pred](f) && isEquality(f.(btypes.Pred))) ||
		(is[btypes.Not](f) && isEquality(predFromNegatedAtom(f)))
}

func addEquRewriteRuleIfNotEquality(f1, f2 btypes.Form) bool {
	if isEqualityPred(f1) {
		return false
	}
	addEquivalenceRewriteRule(f1, f2)
	return true
}

func addEquivalenceRewriteRule(axiom, cons btypes.Form) {
	if is[btypes.Not](axiom) {
		addPosRewriteRule(axiom, refute(cons))
		addNegRewriteRule(axiom, cons)
	} else {
		addPosRewriteRule(axiom, cons)
		addNegRewriteRule(axiom, refute(cons))
	}
}

// End rewrite rule from equivalence formula.
// ----------------------------------------------------------------------------

// ----------------------------------------------------------------------------
// Rewrite rules from implicated formula.

func isRegisterableAsImplication(instanciatedAxiom btypes.Form) bool {
	return activatePolarized && is[btypes.Imp](instanciatedAxiom)
}

func makeRewriteRuleFromImplication(impForm btypes.Imp) bool {
	phi1, phi2 := impForm.GetF1(), impForm.GetF2()

	// This line currently blocks the generation of a rewrite rule if there is
	// an equality atom on the left-side of the formula.
	if neitherAreAtomics(phi1, phi2) || isEqualityPred(phi1) {
		return false
	}

	if isAtomic(phi1) {
		if is[btypes.Pred](phi1) {
			addPosRewriteRule(phi1, phi2)
		} else {
			addNegRewriteRule(predFromNegatedAtom(phi1), phi2)
		}
	}

	// This line currently blocks the generation of a rewrite rule if there is
	// an equality atom on the right-side of the formula.
	if isAtomic(phi2) && !isEqualityPred(phi2) {
		if is[btypes.Pred](phi2) {
			addNegRewriteRule(phi2, refute(phi1))
		} else {
			addPosRewriteRule(predFromNegatedAtom(phi2), refute(phi1))
		}
	}

	return true
}

// End rewrite rule from implicated formula.
// ----------------------------------------------------------------------------
