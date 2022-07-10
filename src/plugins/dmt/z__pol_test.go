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

/******************/
/* z__pol_test.go */
/******************/

/**
 * This file tests the polarized functionnalities of the DMT plugin :
 *	- Axioms of format : (forall x).P => Q
 **/

package dmt_test

import (
	"testing"

	treetypes "github.com/GoelandProver/Goeland/code-trees/tree-types"
	. "github.com/GoelandProver/Goeland/plugin"
	dmt "github.com/GoelandProver/Goeland/plugins/dmt"
	btypes "github.com/GoelandProver/Goeland/types/basic-types"
)

// Makers a plugin manager and inits the DMT for polarized tests
func getPolarizedPM() PluginManager {
	pm := PluginManager{}
	dmt.InitPlugin(&pm, []Option{{Name: "polarized"}}, false)
	return pm
}

/**
 * Tests if polarized insertion works properly (P => Q with P or Q or both atomics)
 **/
func TestPolarizedInsertion(t *testing.T) {
	pm := getPolarizedPM()

	polPred := btypes.MakerAll(
		[]btypes.Var{x},
		btypes.MakerImp(
			btypes.MakerPred(P, []btypes.Term{x}),
			btypes.MakerAll([]btypes.Var{y}, btypes.MakerPred(Q, []btypes.Term{x, y})),
		),
	)

	if !pm.ApplySendAxiomHook(polPred) {
		t.Fatalf("Error: %s hasn't been registered as a rewrite rule.", polPred.ToString())
	}

	polPred2 := btypes.MakerAll(
		[]btypes.Var{x},
		btypes.MakerImp(
			btypes.MakerPred(P, []btypes.Term{x}),
			btypes.MakerPred(Q, []btypes.Term{x, a}),
		),
	)

	if !pm.ApplySendAxiomHook(polPred2) {
		t.Fatalf("Error: %s hasn't been registered as a rewrite rule.", polPred2.ToString())
	}

	polPred3 := btypes.MakerAll(
		[]btypes.Var{x},
		btypes.MakerImp(
			btypes.MakerAll([]btypes.Var{y}, btypes.MakerPred(Q, []btypes.Term{x, y})),
			btypes.MakerPred(P, []btypes.Term{x}),
		),
	)

	if !pm.ApplySendAxiomHook(polPred3) {
		t.Fatalf("Error: %s hasn't been registered as a rewrite rule.", polPred3.ToString())
	}

	polPred4 := btypes.MakerImp(
		btypes.MakerAll([]btypes.Var{x}, btypes.MakerPred(P, []btypes.Term{x})),
		btypes.MakerAll([]btypes.Var{x, y}, btypes.MakerPred(Q, []btypes.Term{x, y})),
	)

	if pm.ApplySendAxiomHook(polPred4) {
		t.Fatalf("Error: %s has been registered as a rewrite rule when it shouldn't be.", polPred4.ToString())
	}

	polPred5 := btypes.MakerImp(
		btypes.MakerPred(P, []btypes.Term{a}),
		btypes.MakerPred(Q, []btypes.Term{a, a}),
	)

	if !pm.ApplySendAxiomHook(polPred5) {
		t.Fatalf("Error: %s hasn't been registered as a rewrite rule.", polPred5.ToString())
	}

	polPred6 := btypes.MakerAll(
		[]btypes.Var{x},
		btypes.MakerImp(
			btypes.MakerNot(btypes.MakerPred(P, []btypes.Term{x})),
			btypes.MakerNot(btypes.MakerPred(Q, []btypes.Term{x, a})),
		),
	)

	if !pm.ApplySendAxiomHook(polPred6) {
		t.Fatalf("Error: %s hasn't been registered as a rewrite rule.", polPred5.ToString())
	}

	// (x = x) => forall x. P(x) shouldn't be registered (because equality and dmt are managed separately)
	neqPred := btypes.MakerPred(btypes.Id_neq, []btypes.Term{x, x})
	polPred7 := btypes.MakerImp(
		neqPred,
		btypes.MakerAll([]btypes.Var{x}, btypes.MakerPred(P, []btypes.Term{x})),
	)
	if pm.ApplySendAxiomHook(polPred7) {
		t.Fatalf("Error: %s has been registered as a rewrite rule when it shouldn't (equalities are not registered).", polPred7.ToString())
	}

	// (Vx (x = x)) => forall x. P(x) shouldn't be registered
	neqPred2 := btypes.MakerAll([]btypes.Var{x}, btypes.MakerPred(btypes.Id_neq, []btypes.Term{x, x}))
	polPred8 := btypes.MakerImp(
		neqPred2,
		btypes.MakerAll([]btypes.Var{x}, btypes.MakerPred(P, []btypes.Term{x})),
	)
	if pm.ApplySendAxiomHook(polPred8) {
		t.Fatalf("Error: %s has been registered as a rewrite rule when it shouldn't (equalities are not registered).", polPred8.ToString())
	}
}

/**
 * Tests if polarized rewrite works properly
 **/
func TestPolarizedRewrite1(t *testing.T) {
	pm := getPolarizedPM()

	polPred := btypes.MakerAll(
		[]btypes.Var{x},
		btypes.MakerImp(
			btypes.MakerPred(P, []btypes.Term{x}),
			btypes.MakerAll([]btypes.Var{y}, btypes.MakerPred(Q, []btypes.Term{x, y})),
		),
	)

	if !pm.ApplySendAxiomHook(polPred) {
		t.Fatalf("Error: %s hasn't been registered as a rewrite rule.", polPred.ToString())
	}

	// Only rewrites on positive occurrences of P
	form := btypes.MakerPred(P, []btypes.Term{a})
	substs, err := pm.ApplyRewriteHook(form)

	if err != nil {
		t.Fatalf("Error: %s not found in the rewrite tree when it should have been.", form.ToString())
	}

	expected := btypes.MakerAll(
		[]btypes.Var{y},
		btypes.MakerPred(Q, []btypes.Term{a, y}),
	)

	if len(substs) > 1 ||
		!substs[0].GetSubst().Equals(treetypes.MakeEmptySubstitution()) ||
		len(substs[0].GetForm()) > 1 ||
		!substs[0].GetForm()[0].Equals(expected) {
		t.Fatalf("Error: %s has not been rewritten as expected. Expected: %s, actual: %s.", form.ToString(), expected.ToString(), substs[0].GetForm()[0].ToString())
	}

	form2 := btypes.MakerNot(btypes.MakerPred(P, []btypes.Term{a}))
	substs, err = pm.ApplyRewriteHook(form2)

	if err != nil {
		t.Fatalf("Error: %s found in rewrite tree when it shouldn't be.", form2.ToString())
	}

	if len(substs) > 1 || !substs[0].GetSubst().Equals(treetypes.Failure()) {
		t.Fatalf("Error: error not triggered when searching for something not in the rewrite tree.")
	}

	// ¬forall y... should not have been inserted in the rewrite tree

	form3 := btypes.MakerNot(expected)
	substs, err = pm.ApplyRewriteHook(form3)

	if err != nil {
		t.Fatalf("Error: %s found in rewrite tree when it shouldn't be.", form3.ToString())
	}

	if len(substs) > 1 || !substs[0].GetSubst().Equals(treetypes.Failure()) {
		t.Fatalf("Error: error not triggered when searching for something not in the rewrite tree.")
	}
}

/**
 * Tests if polarized rewrite works properly (atoms)
 **/
func TestPolarizedRewrite2(t *testing.T) {
	pm := getPolarizedPM()

	polPred := btypes.MakerAll(
		[]btypes.Var{x},
		btypes.MakerImp(
			btypes.MakerPred(P, []btypes.Term{x}),
			btypes.MakerPred(Q, []btypes.Term{x, a}),
		),
	)

	if !pm.ApplySendAxiomHook(polPred) {
		t.Fatalf("Error: %s hasn't been registered as a rewrite rule.", polPred.ToString())
	}

	// Only rewrites on positive occurrences of P
	form := btypes.MakerPred(P, []btypes.Term{a})
	substs, err := pm.ApplyRewriteHook(form)

	if err != nil {
		t.Fatalf("Error: %s not found in the rewrite tree when it should have been.", form.ToString())
	}

	expected := btypes.MakerPred(Q, []btypes.Term{a, a})

	if len(substs) > 1 ||
		!substs[0].GetSubst().Equals(treetypes.MakeEmptySubstitution()) ||
		len(substs[0].GetForm()) > 1 ||
		!substs[0].GetForm()[0].Equals(expected) {
		t.Fatalf("Error: %s has not been rewritten as expected. Expected: %s, actual: %s.", form.ToString(), expected.ToString(), substs[0].GetForm()[0].ToString())
	}

	form2 := btypes.MakerNot(btypes.MakerPred(P, []btypes.Term{a}))
	substs, err = pm.ApplyRewriteHook(form2)

	if err != nil {
		t.Fatalf("Error: %s found in rewrite tree when it shouldn't be.", form2.ToString())
	}

	if len(substs) > 1 || !substs[0].GetSubst().Equals(treetypes.Failure()) {
		t.Fatalf("Error: error not triggered when searching for something not in the rewrite tree.")
	}

	// Only rewrites negative occurrences of Q

	form3 := btypes.MakerNot(btypes.MakerPred(Q, []btypes.Term{a, a}))
	substs, err = pm.ApplyRewriteHook(form3)

	if err != nil {
		t.Fatalf("Error: %s not found in the rewrite tree when it should have been.", form3.ToString())
	}

	expectedNeg := btypes.MakerNot(btypes.MakerPred(P, []btypes.Term{a}))

	if len(substs) > 1 ||
		!substs[0].GetSubst().Equals(treetypes.MakeEmptySubstitution()) ||
		len(substs[0].GetForm()) > 1 ||
		!substs[0].GetForm()[0].Equals(expectedNeg) {
		t.Fatalf("Error: %s has not been rewritten as expected. Expected: %s, actual: %s.", form3.ToString(), expectedNeg.ToString(), substs[0].GetForm()[0].ToString())
	}

	form4 := btypes.MakerPred(Q, []btypes.Term{a, a})
	substs, err = pm.ApplyRewriteHook(form4)

	if err != nil {
		t.Fatalf("Error: %s found in rewrite tree when it shouldn't be.", form4.ToString())
	}

	if len(substs) > 1 || !substs[0].GetSubst().Equals(treetypes.Failure()) {
		t.Fatalf("Error: error not triggered when searching for something not in the rewrite tree.")
	}
}

/**
 * Tests if polarized rewrite works properly (negative atoms)
 **/
func TestPolarizedRewrite3(t *testing.T) {
	pm := getPolarizedPM()

	polPred := btypes.MakerAll(
		[]btypes.Var{x},
		btypes.MakerImp(
			btypes.MakerNot(btypes.MakerPred(P, []btypes.Term{x})),
			btypes.MakerNot(btypes.MakerPred(Q, []btypes.Term{x, a})),
		),
	)

	if !pm.ApplySendAxiomHook(polPred) {
		t.Fatalf("Error: %s hasn't been registered as a rewrite rule.", polPred.ToString())
	}

	// Only rewrites on negative occurrences of P
	form := btypes.MakerNot(btypes.MakerPred(P, []btypes.Term{a}))
	substs, err := pm.ApplyRewriteHook(form)

	if err != nil {
		t.Fatalf("Error: %s not found in the rewrite tree when it should have been.", form.ToString())
	}

	expected := btypes.MakerNot(btypes.MakerPred(Q, []btypes.Term{a, a}))

	if len(substs) > 1 ||
		!substs[0].GetSubst().Equals(treetypes.MakeEmptySubstitution()) ||
		len(substs[0].GetForm()) > 1 ||
		!substs[0].GetForm()[0].Equals(expected) {
		t.Fatalf("Error: %s has not been rewritten as expected. Expected: %s, actual: %s.", form.ToString(), expected.ToString(), substs[0].GetForm()[0].ToString())
	}

	form2 := btypes.MakerPred(P, []btypes.Term{a})
	substs, err = pm.ApplyRewriteHook(form2)

	if err != nil {
		t.Fatalf("Error: %s found in rewrite tree when it shouldn't be.", form2.ToString())
	}

	if len(substs) > 1 || !substs[0].GetSubst().Equals(treetypes.Failure()) {
		t.Fatalf("Error: error not triggered when searching for something not in the rewrite tree.")
	}

	// Only rewrites negative occurrences of Q

	form3 := btypes.MakerPred(Q, []btypes.Term{a, a})
	substs, err = pm.ApplyRewriteHook(form3)

	if err != nil {
		t.Fatalf("Error: %s not found in the rewrite tree when it should have been.", form3.ToString())
	}

	expectedNeg := btypes.MakerPred(P, []btypes.Term{a})

	if len(substs) > 1 ||
		!substs[0].GetSubst().Equals(treetypes.MakeEmptySubstitution()) ||
		len(substs[0].GetForm()) > 1 ||
		!substs[0].GetForm()[0].Equals(expectedNeg) {
		t.Fatalf("Error: %s has not been rewritten as expected. Expected: %s, actual: %s.", form3.ToString(), expectedNeg.ToString(), substs[0].GetForm()[0].ToString())
	}

	form4 := btypes.MakerNot(btypes.MakerPred(Q, []btypes.Term{a, a}))
	substs, err = pm.ApplyRewriteHook(form4)

	if err != nil {
		t.Fatalf("Error: %s found in rewrite tree when it shouldn't be.", form4.ToString())
	}

	if len(substs) > 1 || !substs[0].GetSubst().Equals(treetypes.Failure()) {
		t.Fatalf("Error: error not triggered when searching for something not in the rewrite tree.")
	}
}

/**
 * Tests if polarized rewrite works properly (Bad unification)
 **/
func TestPolarizedRewrite4(t *testing.T) {
	pm := getPolarizedPM()

	axiom := btypes.MakerAll([]btypes.Var{x, y}, btypes.MakerImp(btypes.MakerPred(P, []btypes.Term{x, btypes.MakerFun(f, []btypes.Term{y})}), btypes.MakerAnd(btypes.FormList{btypes.MakerPred(Q, []btypes.Term{x, y}), btypes.MakerPred(Q, []btypes.Term{x, y})})))

	if !pm.ApplySendAxiomHook(axiom) {
		t.Fatalf("Error: %s hasn't been registered as a rewrite rule.", axiom.ToString())
	}

	X := btypes.MakerMeta("X2", 1)
	Y := btypes.MakerMeta("Y2", 1)

	form := btypes.MakerPred(P, []btypes.Term{X, Y})
	substs, err := pm.ApplyRewriteHook(form)

	if err != nil {
		t.Fatalf("Error: %s not found in the rewrite tree when it should.", form.ToString())
	}

	if len(substs) != 1 && !substs[0].GetSubst().Equals(treetypes.Failure()) {
		t.Fatalf("Error: %s has not been rewritten as expected. Actual: %s - %v.", form.ToString(), substs[0].GetForm()[0].ToString(), substs[0].GetSubst().ToString())
	}
}
