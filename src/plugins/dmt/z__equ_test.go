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
/* z__equ_test.go */
/******************/

/**
 * This file tests the base functionnalities of DMT plugin :
 *	- equivalence-only initialisation
 *	- feeding of equivalence axioms in the code-tree and rewrite test
 *	- feeding of non-equivalence axioms in the code-tree
 *	- feeding multiple versions of the same atom
 *	- feeding multiple versions of the same atom with a constant
 **/

package main_test

import (
	"os"
	"testing"

	treetypes "github.com/GoelandProver/Goeland/code-trees/tree-types"
	. "github.com/GoelandProver/Goeland/plugin"
	dmt "github.com/GoelandProver/Goeland/plugins/dmt"
	btypes "github.com/GoelandProver/Goeland/types/basic-types"
)

var a btypes.Fun
var x btypes.Var
var y btypes.Var
var P btypes.Id
var Q btypes.Id

// Init variables for test
func TestMain(m *testing.M) {
	a = btypes.MakerConst(btypes.MakerId("a"))
	x = btypes.MakerVar("x")
	y = btypes.MakerVar("y")
	P = btypes.MakerId("P")
	Q = btypes.MakerId("Q")
	btypes.Init()
	os.Exit(m.Run())
}

// Makes a plugin manager and inits the DMT for equivalences tests
func getEquivalencePM() PluginManager {
	pm := PluginManager{}
	dmt.InitPlugin(&pm, []Option{{Name: "polarized", Value: "false"}, {Name: "preskolemisation", Value: "false"}}, true)
	return pm
}

/******************************************************************************
 * TEST AXIOM REGISTRATION
 ******************************************************************************/

/**
 * This function tests that equivalence axioms are registered in the rewrite tree.
 **/
func TestEquRegistration(t *testing.T) {
	pm := getEquivalencePM()

	// forall x.P(x) <=> forall y.Q(x, y)
	equPred := btypes.MakeAll(
		[]btypes.Var{x},
		btypes.MakeEqu(
			btypes.MakePred(P, []btypes.Term{x}),
			btypes.MakeAll([]btypes.Var{y}, btypes.MakePred(Q, []btypes.Term{x, y})),
		),
	)

	if !pm.ApplySendAxiomHook(equPred) {
		t.Fatalf("Error: %s hasn't been registered as a rewrite rule.", equPred.ToString())
	}

	// Something without forall should also be registered.

	// P(a) <=> forall y.Q(a, y)
	equPred2 := btypes.MakeEqu(
		btypes.MakePred(P, []btypes.Term{a}),
		btypes.MakeAll([]btypes.Var{y}, btypes.MakePred(Q, []btypes.Term{a, y})),
	)

	if !pm.ApplySendAxiomHook(equPred2) {
		t.Fatalf("Error: %s hasn't been registered as a rewrite rule.", equPred2.ToString())
	}

	// If the two formulas are atomic, it shouldn't be registered

	// forall x.P(x) <=> Q(x, a)
	equPred3 := btypes.MakeAll(
		[]btypes.Var{x},
		btypes.MakeEqu(
			btypes.MakePred(P, []btypes.Term{x}),
			btypes.MakePred(Q, []btypes.Term{x, a}),
		),
	)

	if pm.ApplySendAxiomHook(equPred3) {
		t.Fatalf("Error: %s has been registered as a rewrite rule when it shouldn't (the two formulas are atomic).", equPred3.ToString())
	}

	// The right-side is atomic, and not the left !

	// forall x.(P(x) => Q(x, a)) <=> Q(a, x)
	equPred4 := btypes.MakeAll(
		[]btypes.Var{x},
		btypes.MakeEqu(
			btypes.MakeImp(btypes.MakePred(P, []btypes.Term{x}), btypes.MakePred(Q, []btypes.Term{x, a})),
			btypes.MakePred(Q, []btypes.Term{a, x}),
		),
	)

	if !pm.ApplySendAxiomHook(equPred4) {
		t.Fatalf("Error: %s hasn't been registered as a rewrite rule.", equPred4.ToString())
	}

	// Inside forall

	// forall x.(forall y.Q(x, y)) <=> P(x)
	equPred5 := btypes.MakeAll(
		[]btypes.Var{x},
		btypes.MakeEqu(
			btypes.MakeAll([]btypes.Var{y}, btypes.MakePred(Q, []btypes.Term{x, y})),
			btypes.MakePred(P, []btypes.Term{x}),
		),
	)

	if !pm.ApplySendAxiomHook(equPred5) {
		t.Fatalf("Error: %s hasn't been registered as a rewrite rule.", equPred5.ToString())
	}

	// Outside forall

	// forall x.forall y.Q(x, y) <=> P(x)
	equPred6 := btypes.MakeAll(
		[]btypes.Var{x},
		btypes.MakeAll(
			[]btypes.Var{y},
			btypes.MakeEqu(
				btypes.MakePred(Q, []btypes.Term{x, y}),
				btypes.MakePred(P, []btypes.Term{x}),
			),
		),
	)

	if pm.ApplySendAxiomHook(equPred6) {
		t.Fatalf("Error: %s has been registered as a rewrite rule when it shouldn't.", equPred6.ToString())
	}

	// Negative atom

	// forall x.¬P(x) <=> forall y.Q(x, y)
	equPred7 := btypes.MakeAll(
		[]btypes.Var{x},
		btypes.MakeEqu(
			btypes.RefuteForm(btypes.MakePred(P, []btypes.Term{x})),
			btypes.MakeAll([]btypes.Var{y}, btypes.MakePred(Q, []btypes.Term{x, y})),
		),
	)

	if !pm.ApplySendAxiomHook(equPred7) {
		t.Fatalf("Error: %s hasn't been registered as a rewrite rule.", equPred7.ToString())
	}

	// Negative atom & negative equivalence

	// forall x.¬P(x) <=> ¬forall y.Q(x, y)
	equPred8 := btypes.MakeAll(
		[]btypes.Var{x},
		btypes.MakeEqu(
			btypes.RefuteForm(btypes.MakePred(P, []btypes.Term{x})),
			btypes.RefuteForm(btypes.MakeAll([]btypes.Var{y}, btypes.MakePred(Q, []btypes.Term{x, y}))),
		),
	)

	if !pm.ApplySendAxiomHook(equPred8) {
		t.Fatalf("Error: %s hasn't been registered as a rewrite rule.", equPred8.ToString())
	}

	// (x = x) => forall x. P(x) shouldn't be registered (because equality and dmt are managed separately)
	neqPred := btypes.MakePred(btypes.Id_neq, []btypes.Term{x, x})
	eqPred9 := btypes.MakeEqu(
		neqPred,
		btypes.MakeAll([]btypes.Var{x}, btypes.MakePred(P, []btypes.Term{x})),
	)
	if pm.ApplySendAxiomHook(eqPred9) {
		t.Fatalf("Error: %s has been registered as a rewrite rule when it shouldn't (equalities are not registered).", eqPred9.ToString())
	}

	// (Vx (x = x)) => forall x. P(x) shouldn't be registered
	neqPred2 := btypes.MakeAll([]btypes.Var{x}, btypes.MakePred(btypes.Id_neq, []btypes.Term{x, x}))
	eqPred10 := btypes.MakeEqu(
		neqPred2,
		btypes.MakeAll([]btypes.Var{x}, btypes.MakePred(P, []btypes.Term{x})),
	)
	if pm.ApplySendAxiomHook(eqPred10) {
		t.Fatalf("Error: %s has been registered as a rewrite rule when it shouldn't (equalities are not registered).", eqPred10.ToString())
	}

	// forall x.¬(x = x) <=> forall y. Q(x, y) shouldn't be registered
	eqPred11 := btypes.MakeAll(
		[]btypes.Var{x},
		btypes.MakeEqu(
			btypes.MakeNot(btypes.MakePred(btypes.Id_eq, []btypes.Term{x, x})),
			btypes.MakeAll([]btypes.Var{y}, btypes.MakePred(Q, []btypes.Term{x, y})),
		),
	)
	if pm.ApplySendAxiomHook(eqPred11) {
		t.Fatalf("Error: %s has been registered as a rewrite rule when it shouldn't (equalities are not registered).", eqPred11.ToString())
	}

}

/**
 * This function tests that simple axioms are registered in the rewrite tree.
 **/
func TestSimpleAxiomRegistration(t *testing.T) {
	pm := getEquivalencePM()
	// forall x.P(x)
	simplePred := btypes.MakeAll([]btypes.Var{x}, btypes.MakePred(P, []btypes.Term{x}))

	if !pm.ApplySendAxiomHook(simplePred) {
		t.Fatalf("Error: %s hasn't been registered as a rewrite rule.", simplePred.ToString())
	}

	// If it's a fact, it shouldn't be registered

	// P(a)
	simplePred2 := btypes.MakePred(P, []btypes.Term{a})

	if pm.ApplySendAxiomHook(simplePred2) {
		t.Fatalf("Error: %s has been registered as a rewrite rule when it shouldn't (a fact has to be kept).", simplePred2.ToString())
	}

	// forall x.¬P(x)
	simplePred3 := btypes.MakeAll([]btypes.Var{x}, btypes.RefuteForm(btypes.MakePred(P, []btypes.Term{x})))

	if !pm.ApplySendAxiomHook(simplePred3) {
		t.Fatalf("Error: %s hasn't been registered as a rewrite rule.", simplePred3.ToString())
	}

	// a = b shouldn't be registered (because equality and dmt are managed separately)
	eqPred := btypes.MakeAll([]btypes.Var{x}, btypes.MakePred(btypes.Id_eq, []btypes.Term{x, x}))

	if pm.ApplySendAxiomHook(eqPred) {
		t.Fatalf("Error: %s has been registered as a rewrite rule when it shouldn't (equalities are not registered).", eqPred.ToString())
	}

	// a != b shouldn't be registered (because equality and dmt are managed separately)
	neqPred := btypes.MakeAll([]btypes.Var{x}, btypes.MakePred(btypes.Id_neq, []btypes.Term{x, x}))

	if pm.ApplySendAxiomHook(neqPred) {
		t.Fatalf("Error: %s has been registered as a rewrite rule when it shouldn't (equalities are not registered).", neqPred.ToString())
	}
}

/**
 * This function tests that => axioms are registered in the rewrite tree.
 **/
func TestImpRegistration(t *testing.T) {
	pm := getEquivalencePM()

	// forall x.P(x) => forall y.Q(x, y)
	impPred := btypes.MakeAll(
		[]btypes.Var{x},
		btypes.MakeImp(
			btypes.MakePred(P, []btypes.Term{x}),
			btypes.MakeAll([]btypes.Var{y}, btypes.MakePred(Q, []btypes.Term{x, y})),
		),
	)

	if pm.ApplySendAxiomHook(impPred) {
		t.Fatalf("Error: %s has been registered as a rewrite rule when polarization isn't activated.", impPred.ToString())
	}
}

/******************************************************************************
 * TEST REWRITING
 ******************************************************************************/

/**
 * This function tests a simple rewrite with equivalence
 **/
func TestEquRewrite1(t *testing.T) {
	pm := getEquivalencePM()

	// forall x.P(x) <=> forall y.Q(x, y)
	equPred := btypes.MakeAll(
		[]btypes.Var{x},
		btypes.MakeEqu(
			btypes.MakePred(P, []btypes.Term{x}),
			btypes.MakeAll([]btypes.Var{y}, btypes.MakePred(Q, []btypes.Term{x, y})),
		),
	)

	if !pm.ApplySendAxiomHook(equPred) {
		t.Fatalf("Error: %s hasn't been registered as a rewrite rule.", equPred.ToString())
	}

	form := btypes.MakePred(P, []btypes.Term{a})
	substs, err := pm.ApplyRewriteHook(form)

	if err != nil {
		t.Fatalf("Error: %s not found in the rewrite tree when it should.", form.ToString())
	}

	if len(substs) > 1 {
		t.Fatalf("Error: more than one rewrite rule found for %s when it should have only one.", form.ToString())
	}

	forms := substs[0].GetForm()
	subst := substs[0].GetSubst()

	if len(forms) > 1 {
		t.Fatalf("Error: %s can be rewritten by more than one formula when it should be rewritten by only one.", form.ToString())
	}

	if !forms[0].Equals(btypes.MakeAll([]btypes.Var{y}, btypes.MakePred(Q, []btypes.Term{a, y}))) ||
		len(subst.GetMeta()) > 0 {
		t.Fatalf("Error: %s has not been rewritten as expected. Actual: %s.", form.ToString(), forms[0].ToString())
	}
}

/**
 * This function tests a negative rewrite with equivalence
 **/
func TestEquRewrite2(t *testing.T) {
	pm := getEquivalencePM()

	// forall x.P(x) <=> forall y.Q(x, y)
	equPred := btypes.MakeAll(
		[]btypes.Var{x},
		btypes.MakeEqu(
			btypes.MakePred(P, []btypes.Term{x}),
			btypes.MakeAll([]btypes.Var{y}, btypes.MakePred(Q, []btypes.Term{x, y})),
		),
	)

	if !pm.ApplySendAxiomHook(equPred) {
		t.Fatalf("Error: %s hasn't been registered as a rewrite rule.", equPred.ToString())
	}

	form := btypes.MakeNot(btypes.MakePred(P, []btypes.Term{a}))
	substs, err := pm.ApplyRewriteHook(form)

	if err != nil {
		t.Fatalf("Error: %s not found in the rewrite tree when it should.", form.ToString())
	}

	if len(substs) > 1 {
		t.Fatalf("Error: more than one rewrite rule found for %s when it should have only one.", form.ToString())
	}

	forms := substs[0].GetForm()
	subst := substs[0].GetSubst()

	if len(forms) > 1 {
		t.Fatalf("Error: %s can be rewritten by more than one formula when it should be rewritten by only one.", form.ToString())
	}

	if !forms[0].Equals(btypes.MakeNot(btypes.MakeAll([]btypes.Var{y}, btypes.MakePred(Q, []btypes.Term{a, y})))) ||
		len(subst.GetMeta()) > 0 {
		t.Fatalf("Error: %s has not been rewritten as expected. Actual: %s.", form.ToString(), forms[0].ToString())
	}
}

/**
 * Insertion of a negative atom
 **/
func TestEquRewrite3(t *testing.T) {
	pm := getEquivalencePM()

	// forall x.¬P(x) <=> forall y.Q(x, y)
	equPred := btypes.MakeAll(
		[]btypes.Var{x},
		btypes.MakeEqu(
			btypes.MakeNot(btypes.MakePred(P, []btypes.Term{x})),
			btypes.MakeAll([]btypes.Var{y}, btypes.MakePred(Q, []btypes.Term{x, y})),
		),
	)

	if !pm.ApplySendAxiomHook(equPred) {
		t.Fatalf("Error: %s hasn't been registered as a rewrite rule.", equPred.ToString())
	}

	form := btypes.MakePred(P, []btypes.Term{a})
	substs, err := pm.ApplyRewriteHook(form)

	if err != nil {
		t.Fatalf("Error: %s not found in the rewrite tree when it should.", form.ToString())
	}

	if len(substs) > 1 {
		t.Fatalf("Error: more than one rewrite rule found for %s when it should have only one.", form.ToString())
	}

	forms := substs[0].GetForm()
	subst := substs[0].GetSubst()

	if len(forms) > 1 {
		t.Fatalf("Error: %s can be rewritten by more than one formula when it should be rewritten by only one.", form.ToString())
	}

	if !forms[0].Equals(btypes.MakeNot(btypes.MakeAll([]btypes.Var{y}, btypes.MakePred(Q, []btypes.Term{a, y})))) ||
		len(subst.GetMeta()) > 0 {
		t.Fatalf("Error: %s has not been rewritten as expected. Actual: %s.", form.ToString(), forms[0].ToString())
	}
}

/**
 * Insertion of a negative atom
 **/
func TestEquRewrite4(t *testing.T) {
	pm := getEquivalencePM()

	// forall x.¬P(x) <=> forall y.Q(x, y)
	equPred := btypes.MakeAll(
		[]btypes.Var{x},
		btypes.MakeEqu(
			btypes.MakeNot(btypes.MakePred(P, []btypes.Term{x})),
			btypes.MakeAll([]btypes.Var{y}, btypes.MakePred(Q, []btypes.Term{x, y})),
		),
	)

	if !pm.ApplySendAxiomHook(equPred) {
		t.Fatalf("Error: %s hasn't been registered as a rewrite rule.", equPred.ToString())
	}

	form := btypes.MakeNot(btypes.MakePred(P, []btypes.Term{a}))
	substs, err := pm.ApplyRewriteHook(form)

	if err != nil {
		t.Fatalf("Error: %s not found in the rewrite tree when it should.", form.ToString())
	}

	if len(substs) > 1 {
		t.Fatalf("Error: more than one rewrite rule found for %s when it should have only one.", form.ToString())
	}

	forms := substs[0].GetForm()
	subst := substs[0].GetSubst()

	if len(forms) > 1 {
		t.Fatalf("Error: %s can be rewritten by more than one formula when it should be rewritten by only one.", form.ToString())
	}

	if !forms[0].Equals(btypes.MakeAll([]btypes.Var{y}, btypes.MakePred(Q, []btypes.Term{a, y}))) ||
		len(subst.GetMeta()) > 0 {
		t.Fatalf("Error: %s has not been rewritten as expected. Actual: %s.", form.ToString(), forms[0].ToString())
	}
}

/**
 * Insertion of a negative atom with negative equivalence
 **/
func TestEquRewrite5(t *testing.T) {
	pm := getEquivalencePM()

	// forall x.¬P(x) <=> ¬forall y.Q(x, y)
	equPred := btypes.MakeAll(
		[]btypes.Var{x},
		btypes.MakeEqu(
			btypes.MakeNot(btypes.MakePred(P, []btypes.Term{x})),
			btypes.MakeNot(btypes.MakeAll([]btypes.Var{y}, btypes.MakePred(Q, []btypes.Term{x, y}))),
		),
	)

	if !pm.ApplySendAxiomHook(equPred) {
		t.Fatalf("Error: %s hasn't been registered as a rewrite rule.", equPred.ToString())
	}

	form := btypes.MakePred(P, []btypes.Term{a})
	substs, err := pm.ApplyRewriteHook(form)

	if err != nil {
		t.Fatalf("Error: %s not found in the rewrite tree when it should.", form.ToString())
	}

	if len(substs) > 1 {
		t.Fatalf("Error: more than one rewrite rule found for %s when it should have only one.", form.ToString())
	}

	forms := substs[0].GetForm()
	subst := substs[0].GetSubst()

	if len(forms) > 1 {
		t.Fatalf("Error: %s can be rewritten by more than one formula when it should be rewritten by only one.", form.ToString())
	}

	if !forms[0].Equals(btypes.MakeAll([]btypes.Var{y}, btypes.MakePred(Q, []btypes.Term{a, y}))) ||
		len(subst.GetMeta()) > 0 {
		t.Fatalf("Error: %s has not been rewritten as expected. Actual: %s.", form.ToString(), forms[0].ToString())
	}
}

/**
 * Insertion of a negative atom with negative equivalence
 **/
func TestEquRewrite6(t *testing.T) {
	pm := getEquivalencePM()

	// forall x.¬P(x) <=> ¬forall y.Q(x, y)
	equPred := btypes.MakeAll(
		[]btypes.Var{x},
		btypes.MakeEqu(
			btypes.MakeNot(btypes.MakePred(P, []btypes.Term{x})),
			btypes.MakeNot(btypes.MakeAll([]btypes.Var{y}, btypes.MakePred(Q, []btypes.Term{x, y}))),
		),
	)

	if !pm.ApplySendAxiomHook(equPred) {
		t.Fatalf("Error: %s hasn't been registered as a rewrite rule.", equPred.ToString())
	}

	form := btypes.MakeNot(btypes.MakePred(P, []btypes.Term{a}))
	substs, err := pm.ApplyRewriteHook(form)

	if err != nil {
		t.Fatalf("Error: %s not found in the rewrite tree when it should.", form.ToString())
	}

	if len(substs) > 1 {
		t.Fatalf("Error: more than one rewrite rule found for %s when it should have only one.", form.ToString())
	}

	forms := substs[0].GetForm()
	subst := substs[0].GetSubst()

	if len(forms) > 1 {
		t.Fatalf("Error: %s can be rewritten by more than one formula when it should be rewritten by only one.", form.ToString())
	}

	if !forms[0].Equals(btypes.MakeNot(btypes.MakeAll([]btypes.Var{y}, btypes.MakePred(Q, []btypes.Term{a, y})))) ||
		len(subst.GetMeta()) > 0 {
		t.Fatalf("Error: %s has not been rewritten as expected. Actual: %s.", form.ToString(), forms[0].ToString())
	}
}

/**
 * Test subst
 **/
func TestSubst1(t *testing.T) {
	pm := getEquivalencePM()

	// forall x.P(x, x) <=> P(x, x) ^ Q(x, x)
	equPred := btypes.MakeAll(
		[]btypes.Var{x},
		btypes.MakeEqu(
			btypes.MakePred(P, []btypes.Term{x, x}),
			btypes.MakeAnd([]btypes.Form{btypes.MakePred(Q, []btypes.Term{x, x}), btypes.MakePred(P, []btypes.Term{x, x})}),
		),
	)

	if !pm.ApplySendAxiomHook(equPred) {
		t.Fatalf("Error: %s hasn't been registered as a rewrite rule.", equPred.ToString())
	}

	Y := btypes.MakerMeta("Y", 1)
	Z := btypes.MakerMeta("Z", 1)

	form := btypes.MakePred(P, []btypes.Term{Y, Z})
	substs, err := pm.ApplyRewriteHook(form)

	if err != nil {
		t.Fatalf("Error: %s not found in the rewrite tree when it should.", form.ToString())
	}

	if len(substs) > 1 {
		t.Fatalf("Error: more than one rewrite rule found for %s when it should have only one.", form.ToString())
	}

	forms := substs[0].GetForm()
	subst := substs[0].GetSubst()

	if len(forms) > 1 {
		t.Fatalf("Error: %s can be rewritten by more than one formula when it should be rewritten by only one.", form.ToString())
	}

	if !(forms[0].Equals(btypes.MakeAnd([]btypes.Form{btypes.MakePred(Q, []btypes.Term{Y, Y}), btypes.MakePred(P, []btypes.Term{Y, Y})})) ||
		forms[0].Equals(btypes.MakeAnd([]btypes.Form{btypes.MakePred(Q, []btypes.Term{Z, Z}), btypes.MakePred(P, []btypes.Term{Z, Z})}))) ||
		len(subst) != 1 {
		t.Fatalf("Error: %s has not been rewritten as expected. Actual: %s.", form.ToString(), forms[0].ToString())
	}
}

/**
 * Test subst
 **/
func TestSubst2(t *testing.T) {
	pm := getEquivalencePM()

	// P(a) <=> forall y.Q(a, y)
	equPred := btypes.MakeEqu(
		btypes.MakePred(P, []btypes.Term{a}),
		btypes.MakeAll([]btypes.Var{y}, btypes.MakePred(Q, []btypes.Term{a, y})),
	)

	if !pm.ApplySendAxiomHook(equPred) {
		t.Fatalf("Error: %s hasn't been registered as a rewrite rule.", equPred.ToString())
	}

	X := btypes.MakerMeta("X", 1)

	form := btypes.MakePred(P, []btypes.Term{X})
	substs, err := pm.ApplyRewriteHook(form)

	if err != nil {
		t.Fatalf("Error: %s not found in the rewrite tree when it should.", form.ToString())
	}

	if len(substs) > 1 {
		t.Fatalf("Error: more than one rewrite rule found for %s when it should have only one.", form.ToString())
	}

	forms := substs[0].GetForm()
	subst := substs[0].GetSubst()

	if len(forms) > 1 {
		t.Fatalf("Error: %s can be rewritten by more than one formula when it should be rewritten by only one.", form.ToString())
	}

	if !forms[0].Equals(btypes.MakeAll([]btypes.Var{y}, btypes.MakePred(Q, []btypes.Term{a, y}))) ||
		!(len(subst) == 1 && subst[X].Equals(a)) {
		t.Fatalf("Error: %s has not been rewritten as expected. Actual: %s.", form.ToString(), forms[0].ToString())
	}
}

/******************************************************************************
 * TEST MULTIPLE VERSIONS OF ONE AXIOM
 ******************************************************************************/

func TestMultipleAxiomDefinition(t *testing.T) {
	pm := getEquivalencePM()

	// P(a) <=> forall y.Q(a, y)
	equPred := btypes.MakeEqu(
		btypes.MakePred(P, []btypes.Term{a}),
		btypes.MakeAll([]btypes.Var{y}, btypes.MakePred(Q, []btypes.Term{a, y})),
	)
	// P(a) <=> forall y.Q(y, a)
	equPred2 := btypes.MakeEqu(
		btypes.MakePred(P, []btypes.Term{a}),
		btypes.MakeAll([]btypes.Var{y}, btypes.MakePred(Q, []btypes.Term{y, a})),
	)

	if !pm.ApplySendAxiomHook(equPred) {
		t.Fatalf("Error: %s hasn't been registered as a rewrite rule.", equPred.ToString())
	}
	if !pm.ApplySendAxiomHook(equPred2) {
		t.Fatalf("Error: %s hasn't been registered as a rewrite rule.", equPred2.ToString())
	}

	form := btypes.MakePred(P, []btypes.Term{a})
	substs, err := pm.ApplyRewriteHook(form)

	if err != nil {
		t.Fatalf("Error: %s not found in the rewrite tree when it should.", form.ToString())
	}

	if len(substs) != 2 {
		t.Fatalf("Error: more than one rewrite rule found for %s when it should have only one.", form.ToString())
	}

	forms := substs[0].GetForm()
	forms = append(forms, substs[1].GetForm()...)

	if len(forms) != 2 {
		t.Fatalf("Error: %s can be rewritten by more than two formulas when it should be rewritten by only two.", form.ToString())
	}

	if !forms.Contains(btypes.MakeAll([]btypes.Var{y}, btypes.MakePred(Q, []btypes.Term{a, y}))) ||
		!forms.Contains(btypes.MakeAll([]btypes.Var{y}, btypes.MakePred(Q, []btypes.Term{y, a}))) {
		t.Fatalf("Error: %s has not been rewritten as expected. Actual: %s.", form.ToString(), forms.ToString())
	}
}

func TestMultipleAxiomDefinition2(t *testing.T) {
	pm := getEquivalencePM()

	// forall x.P(x) <=> forall y.Q(x, y)
	equPred := btypes.MakeAll(
		[]btypes.Var{x},
		btypes.MakeEqu(
			btypes.MakePred(P, []btypes.Term{x}),
			btypes.MakeAll([]btypes.Var{y}, btypes.MakePred(Q, []btypes.Term{x, y})),
		),
	)
	// P(a) <=> forall y.Q(y, a)
	equPred2 := btypes.MakeAll(
		[]btypes.Var{x},
		btypes.MakeEqu(
			btypes.MakePred(P, []btypes.Term{x}),
			btypes.MakeAll([]btypes.Var{y}, btypes.MakePred(Q, []btypes.Term{y, x})),
		),
	)

	if !pm.ApplySendAxiomHook(equPred) {
		t.Fatalf("Error: %s hasn't been registered as a rewrite rule.", equPred.ToString())
	}
	if !pm.ApplySendAxiomHook(equPred2) {
		t.Fatalf("Error: %s hasn't been registered as a rewrite rule.", equPred2.ToString())
	}

	form := btypes.MakePred(P, []btypes.Term{a})
	substs, err := pm.ApplyRewriteHook(form)

	if err != nil {
		t.Fatalf("Error: %s not found in the rewrite tree when it should.", form.ToString())
	}

	if len(substs) != 2 {
		t.Fatalf("Error: more than one rewrite rule found for %s when it should have only one.", form.ToString())
	}

	forms := substs[0].GetForm()
	forms = append(forms, substs[1].GetForm()...)

	if len(forms) != 2 {
		t.Fatalf("Error: %s can be rewritten by more than two formulas when it should be rewritten by only two.", form.ToString())
	}

	if !forms.Contains(btypes.MakeAll([]btypes.Var{y}, btypes.MakePred(Q, []btypes.Term{a, y}))) ||
		!forms.Contains(btypes.MakeAll([]btypes.Var{y}, btypes.MakePred(Q, []btypes.Term{y, a}))) {
		t.Fatalf("Error: %s has not been rewritten as expected. Actual: %s.", form.ToString(), forms.ToString())
	}
}

/**
 * This function tests the error that should be returned if something is not in the rewrite tree
 **/
func TestError(t *testing.T) {
	pm := getEquivalencePM()

	form := btypes.MakePred(P, []btypes.Term{a})
	substs, err := pm.ApplyRewriteHook(form)

	if err != nil {
		t.Fatalf("Error: %s found in rewrite tree when it's empty.", form.ToString())
	}

	if len(substs) > 1 || !substs[0].GetSubst().Equals(treetypes.Failure()) {
		t.Fatalf("Error: error not triggered when searching for something not in the rewrite tree.")
	}
}

/**
 * Sorting test : top/bot formulas should be first in line
 **/
func TestSort(t *testing.T) {
	pm := getEquivalencePM()

	equPred := btypes.MakeAll(
		[]btypes.Var{x},
		btypes.MakeEqu(
			btypes.MakePred(P, []btypes.Term{x}),
			btypes.MakeAll([]btypes.Var{y}, btypes.MakePred(Q, []btypes.Term{x, y})),
		),
	)

	if !pm.ApplySendAxiomHook(equPred) {
		t.Fatalf("Error: %s hasn't been registered as a rewrite rule.", equPred.ToString())
	}

	axiom := btypes.MakeAll([]btypes.Var{x}, btypes.MakePred(P, []btypes.Term{x}))

	if !pm.ApplySendAxiomHook(axiom) {
		t.Fatalf("Error: %s hasn't been registered as a rewrite rule.", axiom.ToString())
	}

	// forall x.P(x) and forall x.P(x) <=> forall y.Q(x, y) are in the rewrite tree.

	form := btypes.MakePred(P, []btypes.Term{a})
	substs, err := pm.ApplyRewriteHook(form)

	if err != nil {
		t.Fatalf("Error: %s not found in the rewrite tree when it should.", form.ToString())
	}

	//fmt.Println(substs)
	if len(substs) != 2 {
		t.Fatal("Error: substs size should be 2.")
	}

	topBot := substs[0].GetForm()
	others := substs[1].GetForm()

	if len(topBot) > 1 || !topBot[0].Equals(btypes.MakeTop()) {
		t.Fatal("Error: rewritten formulas are not properly sorted.")
	}

	if len(others) > 1 {
		t.Fatal("Error: rewritten formulas are not properly sorted (2).")
	}
}
