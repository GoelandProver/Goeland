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

	. "github.com/GoelandProver/Goeland/global"
	syntax "github.com/GoelandProver/Goeland/syntaxic-manipulations"
	basictypes "github.com/GoelandProver/Goeland/types/basic-types"
)

func RegisterAxiom(axiom basictypes.Form) bool {
	axiomFT := instanciateForalls(axiom)

	if isRegisterableAsEqu(axiomFT) {
		registeredAxioms.Append(axiom)
		return makeRewriteRuleFromEquivalence(axiomFT.(basictypes.Equ))
	} else if isRegisterableAsImplication(axiomFT) {
		registeredAxioms.Append(axiom)
		return makeRewriteRuleFromImplication(axiomFT.(basictypes.Imp))
	}

	return false
}

func instanciateForalls(axiom basictypes.Form) basictypes.Form {
	axiomFT := basictypes.MakeFormAndTerm(axiom.Copy(), basictypes.NewTermList())
	for Is[basictypes.All](axiomFT.GetForm()) {
		axiomFT, _ = syntax.Instantiate(axiomFT, -1)
	}
	return axiomFT.GetForm()
}

func addPosRewriteRule(axiom basictypes.Form, cons basictypes.Form) {
	simplifiedAxiom := basictypes.RemoveNeg(axiom)
	positiveTree = positiveTree.InsertFormulaListToDataStructure(
		basictypes.NewFormList(simplifiedAxiom),
	)
	addRewriteRule(simplifiedAxiom, cons, true)
}

func addNegRewriteRule(axiom basictypes.Form, cons basictypes.Form) {
	simplifiedAxiom := basictypes.RemoveNeg(axiom)
	negativeTree = negativeTree.InsertFormulaListToDataStructure(
		basictypes.NewFormList(simplifiedAxiom),
	)
	addRewriteRule(simplifiedAxiom, cons, false)
}

func addRewriteRule(axiom basictypes.Form, cons basictypes.Form, polarity bool) {
	for canSkolemize(cons) {
		ft := basictypes.MakeFormAndTerm(cons, basictypes.NewTermList())
		ft = syntax.Skolemize(ft, ft.GetForm().GetInternalMetas())
		cons = ft.GetForm()
	}
	printDebugRewriteRule(polarity, axiom, cons)
	rewriteMapInsertion(polarity, axiom.ToString(), cons)
}

func printDebugRewriteRule(polarity bool, axiom, cons basictypes.Form) {
	var ax, co string
	if polarity {
		ax, co = axiom.ToString(), cons.ToString()
	} else {
		ax, co = basictypes.RefuteForm(axiom).ToString(), cons.ToString()
	}
	PrintDebug("DMT", fmt.Sprintf("Rewrite rule: %s ---> %s\n", ax, co))
}

/**
 * Skolemization can be applied only when the kind of rule appliable is a delta-rule.
 **/
func canSkolemize(form basictypes.Form) bool {
	return preskolemize && basictypes.ShowKindOfRule(form) == basictypes.Delta
}

// ----------------------------------------------------------------------------
// Rewrite rules from atomic predicate.

func isRegisterableAsAtomic(axiom, instanciatedAxiom basictypes.Form) bool {
	return Is[basictypes.All](axiom) && basictypes.ShowKindOfRule(instanciatedAxiom) == basictypes.Atomic
}

func makeRewriteRuleFromAtomic(atomic basictypes.Form) bool {
	if isEqualityPred(atomic) {
		return false
	}
	if Is[basictypes.Pred](atomic) {
		return makeRewriteRuleFromPred(atomic.(basictypes.Pred))
	}
	return makeRewriteRuleFromNegatedAtom(atomic.(basictypes.Not))
}

func makeRewriteRuleFromPred(pred basictypes.Pred) bool {
	addPosRewriteRule(pred, basictypes.MakerTop())
	addNegRewriteRule(pred, basictypes.RefuteForm(basictypes.MakerTop()))
	return true
}

func makeRewriteRuleFromNegatedAtom(atom basictypes.Not) bool {
	if isEquality(atom.GetForm().(basictypes.Pred)) {
		return false
	}
	addNegRewriteRule(atom, basictypes.RefuteForm(basictypes.MakerBot()))
	addPosRewriteRule(atom, basictypes.MakerBot())
	return true
}

// End rewrite rule from atomic predicate.
// ----------------------------------------------------------------------------

// ----------------------------------------------------------------------------
// Rewrite rules from equivalence formula.

func isRegisterableAsEqu(instanciatedAxiom basictypes.Form) bool {
	return Is[basictypes.Equ](instanciatedAxiom)
}

func makeRewriteRuleFromEquivalence(equForm basictypes.Equ) bool {
	phi1, phi2 := equForm.GetF1(), equForm.GetF2()

	if areBothAtomics(phi1, phi2) || neitherAreAtomics(phi1, phi2) {
		return false
	}

	var f1, f2 basictypes.Form
	if isAtomic(phi1) {
		f1, f2 = phi1, phi2
	} else {
		f1, f2 = phi2, phi1
	}

	return addEquRewriteRuleIfNotEquality(f1, f2)
}

func isAtomic(f basictypes.Form) bool {
	return basictypes.ShowKindOfRule(f) == basictypes.Atomic
}

func areBothAtomics(f1, f2 basictypes.Form) bool {
	return isAtomic(f1) && isAtomic(f2)
}

func neitherAreAtomics(f1, f2 basictypes.Form) bool {
	return !isAtomic(f1) && !isAtomic(f2)
}

func isEqualityPred(f basictypes.Form) bool {
	return (Is[basictypes.Pred](f) && isEquality(f.(basictypes.Pred))) ||
		(Is[basictypes.Not](f) && isEquality(predFromNegatedAtom(f)))
}

func addEquRewriteRuleIfNotEquality(f1, f2 basictypes.Form) bool {
	if isEqualityPred(f1) {
		return false
	}
	addEquivalenceRewriteRule(f1, f2)
	return true
}

func addEquivalenceRewriteRule(axiom, cons basictypes.Form) {
	if Is[basictypes.Not](axiom) {
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

func isRegisterableAsImplication(instanciatedAxiom basictypes.Form) bool {
	return activatePolarized && Is[basictypes.Imp](instanciatedAxiom)
}

func makeRewriteRuleFromImplication(impForm basictypes.Imp) bool {
	phi1, phi2 := impForm.GetF1(), impForm.GetF2()

	// This line currently blocks the generation of a rewrite rule if there is
	// an equality atom on the left-side of the formula.
	if neitherAreAtomics(phi1, phi2) || isEqualityPred(phi1) {
		return false
	}

	if isAtomic(phi1) {
		if Is[basictypes.Pred](phi1) {
			addPosRewriteRule(phi1, phi2)
		} else {
			addNegRewriteRule(predFromNegatedAtom(phi1), phi2)
		}
	}

	// This line currently blocks the generation of a rewrite rule if there is
	// an equality atom on the right-side of the formula.
	if isAtomic(phi2) && !isEqualityPred(phi2) {
		if Is[basictypes.Pred](phi2) {
			addNegRewriteRule(phi2, refute(phi1))
		} else {
			addPosRewriteRule(predFromNegatedAtom(phi2), refute(phi1))
		}
	}

	return true
}

// End rewrite rule from implicated formula.
// ----------------------------------------------------------------------------
