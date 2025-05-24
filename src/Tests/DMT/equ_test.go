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
 * This file tests the base functionnalities of DMT plugin :
 *	- equivalence-only initialisation
 *	- feeding of equivalence axioms in the code-tree and rewrite test
 *	- feeding of non-equivalence axioms in the code-tree
 *	- feeding multiple versions of the same atom
 *	- feeding multiple versions of the same atom with a constant
 **/

package dmt_test

import (
	"fmt"
	"os"
	"testing"

	treetypes "github.com/GoelandProver/Goeland/code-trees/tree-types"
	"github.com/GoelandProver/Goeland/global"
	dmt "github.com/GoelandProver/Goeland/modules/dmt"
	typing "github.com/GoelandProver/Goeland/polymorphism/typing"
	basictypes "github.com/GoelandProver/Goeland/types/basic-types"
)

var a basictypes.Fun
var x basictypes.Var
var y basictypes.Var
var z basictypes.Var
var P basictypes.Id
var Q basictypes.Id
var f basictypes.Id

// Init variables for test
func TestMain(m *testing.M) {
	typing.Init()
	basictypes.Init()
	a = basictypes.MakerConst(basictypes.MakerId("a"))
	x = basictypes.MakerVar("x")
	y = basictypes.MakerVar("y")
	z = basictypes.MakerVar("z")
	P = basictypes.MakerId("P")
	Q = basictypes.MakerId("Q")
	f = basictypes.MakerId("f")
	os.Exit(m.Run())
}

// Makers a plugin manager and inits the DMT for equivalences tests
func initDMT() {
	dmt.InitPlugin()
}

/******************************************************************************
 * TEST AXIOM REGISTRATION
 ******************************************************************************/

/**
 * This function tests that equivalence axioms are registered in the rewrite tree.
 **/
func TestEquRegistration(t *testing.T) {
	initDMT()
	// forall x.P(x) <=> forall y.Q(x, y)
	equPred := basictypes.MakerAll(
		[]basictypes.Var{x},
		basictypes.MakerEqu(
			basictypes.MakerPred(P, basictypes.NewTermList(x), []typing.TypeApp{}),
			basictypes.MakerAll([]basictypes.Var{y}, basictypes.MakerPred(Q, basictypes.NewTermList(x, y), []typing.TypeApp{})),
		),
	)

	if !dmt.RegisterAxiom(equPred) {
		t.Fatalf("Error: %s hasn't been registered as a rewrite rule.", equPred.ToString())
	}

	// Something without forall should also be registered.

	// P(a) <=> forall y.Q(a, y)
	equPred2 := basictypes.MakerEqu(
		basictypes.MakerPred(P, basictypes.NewTermList(a), []typing.TypeApp{}),
		basictypes.MakerAll([]basictypes.Var{y}, basictypes.MakerPred(Q, basictypes.NewTermList(a, y), []typing.TypeApp{})),
	)

	if !dmt.RegisterAxiom(equPred2) {
		t.Fatalf("Error: %s hasn't been registered as a rewrite rule.", equPred2.ToString())
	}

	// If the two formulas are atomic, it shouldn't be registered

	// forall x.P(x) <=> Q(x, a)
	equPred3 := basictypes.MakerAll(
		[]basictypes.Var{x},
		basictypes.MakerEqu(
			basictypes.MakerPred(P, basictypes.NewTermList(x), []typing.TypeApp{}),
			basictypes.MakerPred(Q, basictypes.NewTermList(x, a), []typing.TypeApp{}),
		),
	)

	if dmt.RegisterAxiom(equPred3) {
		t.Fatalf("Error: %s has been registered as a rewrite rule when it shouldn't (the two formulas are atomic).", equPred3.ToString())
	}

	// The right-side is atomic, and not the left !

	// forall x.(P(x) => Q(x, a)) <=> Q(a, x)
	equPred4 := basictypes.MakerAll(
		[]basictypes.Var{x},
		basictypes.MakerEqu(
			basictypes.MakerImp(basictypes.MakerPred(P, basictypes.NewTermList(x), []typing.TypeApp{}), basictypes.MakerPred(Q, basictypes.NewTermList(x, a), []typing.TypeApp{})),
			basictypes.MakerPred(Q, basictypes.NewTermList(a, x), []typing.TypeApp{}),
		),
	)

	if !dmt.RegisterAxiom(equPred4) {
		t.Fatalf("Error: %s hasn't been registered as a rewrite rule.", equPred4.ToString())
	}

	// Inside forall

	// forall x.(forall y.Q(x, y)) <=> P(x)
	equPred5 := basictypes.MakerAll(
		[]basictypes.Var{x},
		basictypes.MakerEqu(
			basictypes.MakerAll([]basictypes.Var{y}, basictypes.MakerPred(Q, basictypes.NewTermList(x, y), []typing.TypeApp{})),
			basictypes.MakerPred(P, basictypes.NewTermList(x), []typing.TypeApp{}),
		),
	)

	if !dmt.RegisterAxiom(equPred5) {
		t.Fatalf("Error: %s hasn't been registered as a rewrite rule.", equPred5.ToString())
	}

	// Outside forall

	// forall x.forall y.Q(x, y) <=> P(x)
	equPred6 := basictypes.MakerAll(
		[]basictypes.Var{x},
		basictypes.MakerAll(
			[]basictypes.Var{y},
			basictypes.MakerEqu(
				basictypes.MakerPred(Q, basictypes.NewTermList(x, y), []typing.TypeApp{}),
				basictypes.MakerPred(P, basictypes.NewTermList(x), []typing.TypeApp{}),
			),
		),
	)

	if dmt.RegisterAxiom(equPred6) {
		t.Fatalf("Error: %s has been registered as a rewrite rule when it shouldn't.", equPred6.ToString())
	}

	// Negative atom

	// forall x.¬P(x) <=> forall y.Q(x, y)
	equPred7 := basictypes.MakerAll(
		[]basictypes.Var{x},
		basictypes.MakerEqu(
			basictypes.RefuteForm(basictypes.MakerPred(P, basictypes.NewTermList(x), []typing.TypeApp{})),
			basictypes.MakerAll([]basictypes.Var{y}, basictypes.MakerPred(Q, basictypes.NewTermList(x, y), []typing.TypeApp{})),
		),
	)

	if !dmt.RegisterAxiom(equPred7) {
		t.Fatalf("Error: %s hasn't been registered as a rewrite rule.", equPred7.ToString())
	}

	// Negative atom & negative equivalence

	// forall x.¬P(x) <=> ¬forall y.Q(x, y)
	equPred8 := basictypes.MakerAll(
		[]basictypes.Var{x},
		basictypes.MakerEqu(
			basictypes.RefuteForm(basictypes.MakerPred(P, basictypes.NewTermList(x), []typing.TypeApp{})),
			basictypes.RefuteForm(basictypes.MakerAll([]basictypes.Var{y}, basictypes.MakerPred(Q, basictypes.NewTermList(x, y), []typing.TypeApp{}))),
		),
	)

	if !dmt.RegisterAxiom(equPred8) {
		t.Fatalf("Error: %s hasn't been registered as a rewrite rule.", equPred8.ToString())
	}

	// (x = x) => forall x. P(x) shouldn't be registered (because equality and dmt are managed separately)
	neqPred := basictypes.MakerPred(basictypes.Id_eq, basictypes.NewTermList(x, x), []typing.TypeApp{})
	eqPred9 := basictypes.MakerEqu(
		neqPred,
		basictypes.MakerAll([]basictypes.Var{x}, basictypes.MakerPred(P, basictypes.NewTermList(x), []typing.TypeApp{})),
	)
	if dmt.RegisterAxiom(eqPred9) {
		t.Fatalf("Error: %s has been registered as a rewrite rule when it shouldn't (equalities are not registered).", eqPred9.ToString())
	}

	// (Vx (x = x)) => forall x. P(x) shouldn't be registered
	neqPred2 := basictypes.MakerAll([]basictypes.Var{x}, basictypes.MakerPred(basictypes.Id_eq, basictypes.NewTermList(x, x), []typing.TypeApp{}))
	eqPred10 := basictypes.MakerEqu(
		neqPred2,
		basictypes.MakerAll([]basictypes.Var{x}, basictypes.MakerPred(P, basictypes.NewTermList(x), []typing.TypeApp{})),
	)
	if dmt.RegisterAxiom(eqPred10) {
		t.Fatalf("Error: %s has been registered as a rewrite rule when it shouldn't (equalities are not registered).", eqPred10.ToString())
	}

	// forall x.¬(x = x) <=> forall y. Q(x, y) shouldn't be registered
	eqPred11 := basictypes.MakerAll(
		[]basictypes.Var{x},
		basictypes.MakerEqu(
			basictypes.MakerNot(basictypes.MakerPred(basictypes.Id_eq, basictypes.NewTermList(x, x), []typing.TypeApp{})),
			basictypes.MakerAll([]basictypes.Var{y}, basictypes.MakerPred(Q, basictypes.NewTermList(x, y), []typing.TypeApp{})),
		),
	)
	if dmt.RegisterAxiom(eqPred11) {
		t.Fatalf("Error: %s has been registered as a rewrite rule when it shouldn't (equalities are not registered).", eqPred11.ToString())
	}

}

/**
 * This function tests that simple axioms are registered in the rewrite tree.
 **/
func TestSimpleAxiomRegistration(t *testing.T) {
	initDMT()
	// forall x.P(x)
	simplePred := basictypes.MakerAll([]basictypes.Var{x}, basictypes.MakerPred(P, basictypes.NewTermList(x), []typing.TypeApp{}))

	if dmt.RegisterAxiom(simplePred) {
		t.Fatalf("Error: %s has been registered as a rewrite rule when it shouldn't.", simplePred.ToString())
	}

	// If it's a fact, it shouldn't be registered

	// P(a)
	simplePred2 := basictypes.MakerPred(P, basictypes.NewTermList(a), []typing.TypeApp{})

	if dmt.RegisterAxiom(simplePred2) {
		t.Fatalf("Error: %s has been registered as a rewrite rule when it shouldn't (a fact has to be kept).", simplePred2.ToString())
	}

	// forall x.¬P(x)
	simplePred3 := basictypes.MakerAll([]basictypes.Var{x}, basictypes.RefuteForm(basictypes.MakerPred(P, basictypes.NewTermList(x), []typing.TypeApp{})))

	if dmt.RegisterAxiom(simplePred3) {
		t.Fatalf("Error: %s has been registered as a rewrite rule when it shouldn't.", simplePred3.ToString())
	}

	// a = b shouldn't be registered (because equality and dmt are managed separately)
	eqPred := basictypes.MakerAll([]basictypes.Var{x}, basictypes.MakerPred(basictypes.Id_eq, basictypes.NewTermList(x, x), []typing.TypeApp{}))

	if dmt.RegisterAxiom(eqPred) {
		t.Fatalf("Error: %s has been registered as a rewrite rule when it shouldn't (equalities are not registered).", eqPred.ToString())
	}

	// a != b shouldn't be registered (because equality and dmt are managed separately)
	neqPred := basictypes.MakerAll([]basictypes.Var{x}, basictypes.MakerPred(basictypes.Id_eq, basictypes.NewTermList(x, x), []typing.TypeApp{}))

	if dmt.RegisterAxiom(neqPred) {
		t.Fatalf("Error: %s has been registered as a rewrite rule when it shouldn't (equalities are not registered).", neqPred.ToString())
	}
}

/**
 * This function tests that => axioms are registered in the rewrite tree.
 **/
func TestImpRegistration(t *testing.T) {
	initDMT()
	// forall x.P(x) => forall y.Q(x, y)
	impPred := basictypes.MakerAll(
		[]basictypes.Var{x},
		basictypes.MakerImp(
			basictypes.MakerPred(P, basictypes.NewTermList(x), []typing.TypeApp{}),
			basictypes.MakerAll([]basictypes.Var{y}, basictypes.MakerPred(Q, basictypes.NewTermList(x, y), []typing.TypeApp{})),
		),
	)

	if dmt.RegisterAxiom(impPred) {
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
	initDMT()
	// forall x.P(x) <=> forall y.Q(x, y)
	equPred := basictypes.MakerAll(
		[]basictypes.Var{x},
		basictypes.MakerEqu(
			basictypes.MakerPred(P, basictypes.NewTermList(x), []typing.TypeApp{}),
			basictypes.MakerAll([]basictypes.Var{y}, basictypes.MakerPred(Q, basictypes.NewTermList(x, y), []typing.TypeApp{})),
		),
	)

	if !dmt.RegisterAxiom(equPred) {
		t.Fatalf("Error: %s hasn't been registered as a rewrite rule.", equPred.ToString())
	}

	form := basictypes.MakerPred(P, basictypes.NewTermList(a), []typing.TypeApp{})
	substs, err := dmt.Rewrite(form)

	if err != nil {
		t.Fatalf("Error: %s not found in the rewrite tree when it should.", form.ToString())
	}

	if len(substs) > 1 {
		t.Fatalf("Error: more than one rewrite rule found for %s when it should have only one.", form.ToString())
	}

	forms := substs[0].GetSaf().GetForm()
	subst := substs[0].GetSaf().GetSubst()

	if forms.Len() > 1 {
		t.Fatalf("Error: %s can be rewritten by more than one formula when it should be rewritten by only one.", form.ToString())
	}

	if !forms.Get(0).Equals(basictypes.MakerAll([]basictypes.Var{y}, basictypes.MakerPred(Q, basictypes.NewTermList(a, y), []typing.TypeApp{}))) ||
		subst.GetMeta().Len() > 0 {
		t.Fatalf("Error: %s has not been rewritten as expected. Actual: %s.", form.ToString(), forms.Get(0).ToString())
	}
}

/**
 * This function tests a negative rewrite with equivalence
 **/
func TestEquRewrite2(t *testing.T) {
	initDMT()
	// forall x.P(x) <=> forall y.Q(x, y)
	equPred := basictypes.MakerAll(
		[]basictypes.Var{x},
		basictypes.MakerEqu(
			basictypes.MakerPred(P, basictypes.NewTermList(x), []typing.TypeApp{}),
			basictypes.MakerAll([]basictypes.Var{y}, basictypes.MakerPred(Q, basictypes.NewTermList(x, y), []typing.TypeApp{})),
		),
	)

	if !dmt.RegisterAxiom(equPred) {
		t.Fatalf("Error: %s hasn't been registered as a rewrite rule.", equPred.ToString())
	}

	form := basictypes.MakerNot(basictypes.MakerPred(P, basictypes.NewTermList(a), []typing.TypeApp{}))
	substs, err := dmt.Rewrite(form)

	if err != nil {
		t.Fatalf("Error: %s not found in the rewrite tree when it should.", form.ToString())
	}

	if len(substs) > 1 {
		t.Fatalf("Error: more than one rewrite rule found for %s when it should have only one.", form.ToString())
	}

	forms := substs[0].GetSaf().GetForm()
	subst := substs[0].GetSaf().GetSubst()

	if forms.Len() > 1 {
		t.Fatalf("Error: %s can be rewritten by more than one formula when it should be rewritten by only one.", form.ToString())
	}

	if !forms.Get(0).Equals(basictypes.MakerNot(basictypes.MakerAll([]basictypes.Var{y}, basictypes.MakerPred(Q, basictypes.NewTermList(a, y), []typing.TypeApp{})))) ||
		subst.GetMeta().Len() > 0 {
		t.Fatalf("Error: %s has not been rewritten as expected. Actual: %s.", form.ToString(), forms.Get(0).ToString())
	}
}

/**
 * Insertion of a negative atom
 **/
func TestEquRewrite3(t *testing.T) {
	initDMT()
	// forall x.¬P(x) <=> forall y.Q(x, y)
	equPred := basictypes.MakerAll(
		[]basictypes.Var{x},
		basictypes.MakerEqu(
			basictypes.MakerNot(basictypes.MakerPred(P, basictypes.NewTermList(x), []typing.TypeApp{})),
			basictypes.MakerAll([]basictypes.Var{y}, basictypes.MakerPred(Q, basictypes.NewTermList(x, y), []typing.TypeApp{})),
		),
	)

	if !dmt.RegisterAxiom(equPred) {
		t.Fatalf("Error: %s hasn't been registered as a rewrite rule.", equPred.ToString())
	}

	form := basictypes.MakerPred(P, basictypes.NewTermList(a), []typing.TypeApp{})
	substs, err := dmt.Rewrite(form)

	if err != nil {
		t.Fatalf("Error: %s not found in the rewrite tree when it should.", form.ToString())
	}

	if len(substs) > 1 {
		t.Fatalf("Error: more than one rewrite rule found for %s when it should have only one.", form.ToString())
	}

	forms := substs[0].GetSaf().GetForm()
	subst := substs[0].GetSaf().GetSubst()

	if forms.Len() > 1 {
		t.Fatalf("Error: %s can be rewritten by more than one formula when it should be rewritten by only one.", form.ToString())
	}

	if !forms.Get(0).Equals(basictypes.MakerNot(basictypes.MakerAll([]basictypes.Var{y}, basictypes.MakerPred(Q, basictypes.NewTermList(a, y), []typing.TypeApp{})))) ||
		subst.GetMeta().Len() > 0 {
		t.Fatalf("Error: %s has not been rewritten as expected. Actual: %s.", form.ToString(), forms.Get(0).ToString())
	}
}

/**
 * Insertion of a negative atom
 **/
func TestEquRewrite4(t *testing.T) {
	initDMT()
	// forall x.¬P(x) <=> forall y.Q(x, y)
	equPred := basictypes.MakerAll(
		[]basictypes.Var{x},
		basictypes.MakerEqu(
			basictypes.MakerNot(basictypes.MakerPred(P, basictypes.NewTermList(x), []typing.TypeApp{})),
			basictypes.MakerAll([]basictypes.Var{y}, basictypes.MakerPred(Q, basictypes.NewTermList(x, y), []typing.TypeApp{})),
		),
	)

	if !dmt.RegisterAxiom(equPred) {
		t.Fatalf("Error: %s hasn't been registered as a rewrite rule.", equPred.ToString())
	}

	form := basictypes.MakerNot(basictypes.MakerPred(P, basictypes.NewTermList(a), []typing.TypeApp{}))
	substs, err := dmt.Rewrite(form)

	if err != nil {
		t.Fatalf("Error: %s not found in the rewrite tree when it should.", form.ToString())
	}

	if len(substs) > 1 {
		t.Fatalf("Error: more than one rewrite rule found for %s when it should have only one.", form.ToString())
	}

	forms := substs[0].GetSaf().GetForm()
	subst := substs[0].GetSaf().GetSubst()

	if forms.Len() > 1 {
		t.Fatalf("Error: %s can be rewritten by more than one formula when it should be rewritten by only one.", form.ToString())
	}

	if !forms.Get(0).Equals(basictypes.MakerAll([]basictypes.Var{y}, basictypes.MakerPred(Q, basictypes.NewTermList(a, y), []typing.TypeApp{}))) ||
		subst.GetMeta().Len() > 0 {
		t.Fatalf("Error: %s has not been rewritten as expected. Actual: %s.", form.ToString(), forms.Get(0).ToString())
	}
}

/**
 * Insertion of a negative atom with negative equivalence
 **/
func TestEquRewrite5(t *testing.T) {
	initDMT()
	// forall x.¬P(x) <=> ¬forall y.Q(x, y)
	equPred := basictypes.MakerAll(
		[]basictypes.Var{x},
		basictypes.MakerEqu(
			basictypes.MakerNot(basictypes.MakerPred(P, basictypes.NewTermList(x), []typing.TypeApp{})),
			basictypes.MakerNot(basictypes.MakerAll([]basictypes.Var{y}, basictypes.MakerPred(Q, basictypes.NewTermList(x, y), []typing.TypeApp{}))),
		),
	)

	if !dmt.RegisterAxiom(equPred) {
		t.Fatalf("Error: %s hasn't been registered as a rewrite rule.", equPred.ToString())
	}

	form := basictypes.MakerPred(P, basictypes.NewTermList(a), []typing.TypeApp{})
	substs, err := dmt.Rewrite(form)

	if err != nil {
		t.Fatalf("Error: %s not found in the rewrite tree when it should.", form.ToString())
	}

	if len(substs) > 1 {
		t.Fatalf("Error: more than one rewrite rule found for %s when it should have only one.", form.ToString())
	}

	forms := substs[0].GetSaf().GetForm()
	subst := substs[0].GetSaf().GetSubst()

	if forms.Len() > 1 {
		t.Fatalf("Error: %s can be rewritten by more than one formula when it should be rewritten by only one.", form.ToString())
	}

	if !forms.Get(0).Equals(basictypes.MakerAll([]basictypes.Var{y}, basictypes.MakerPred(Q, basictypes.NewTermList(a, y), []typing.TypeApp{}))) ||
		subst.GetMeta().Len() > 0 {
		t.Fatalf("Error: %s has not been rewritten as expected. Actual: %s.", form.ToString(), forms.Get(0).ToString())
	}
}

/**
 * Insertion of a negative atom with negative equivalence
 **/
func TestEquRewrite6(t *testing.T) {
	initDMT()
	// forall x.¬P(x) <=> ¬forall y.Q(x, y)
	equPred := basictypes.MakerAll(
		[]basictypes.Var{x},
		basictypes.MakerEqu(
			basictypes.MakerNot(basictypes.MakerPred(P, basictypes.NewTermList(x), []typing.TypeApp{})),
			basictypes.MakerNot(basictypes.MakerAll([]basictypes.Var{y}, basictypes.MakerPred(Q, basictypes.NewTermList(x, y), []typing.TypeApp{}))),
		),
	)

	if !dmt.RegisterAxiom(equPred) {
		t.Fatalf("Error: %s hasn't been registered as a rewrite rule.", equPred.ToString())
	}

	form := basictypes.MakerNot(basictypes.MakerPred(P, basictypes.NewTermList(a), []typing.TypeApp{}))
	substs, err := dmt.Rewrite(form)

	if err != nil {
		t.Fatalf("Error: %s not found in the rewrite tree when it should.", form.ToString())
	}

	if len(substs) > 1 {
		t.Fatalf("Error: more than one rewrite rule found for %s when it should have only one.", form.ToString())
	}

	forms := substs[0].GetSaf().GetForm()
	subst := substs[0].GetSaf().GetSubst()

	if forms.Len() > 1 {
		t.Fatalf("Error: %s can be rewritten by more than one formula when it should be rewritten by only one.", form.ToString())
	}

	if !forms.Get(0).Equals(basictypes.MakerNot(basictypes.MakerAll([]basictypes.Var{y}, basictypes.MakerPred(Q, basictypes.NewTermList(a, y), []typing.TypeApp{})))) ||
		subst.GetMeta().Len() > 0 {
		t.Fatalf("Error: %s has not been rewritten as expected. Actual: %s.", form.ToString(), forms.Get(0).ToString())
	}
}

/**
 * Test subst
 **/
func TestSubst1(t *testing.T) {
	initDMT()
	global.EnableDebug()
	// forall x.P(x, x) <=> P(x, x) ^ Q(x, x)
	equPred := basictypes.MakerAll(
		[]basictypes.Var{x},
		basictypes.MakerEqu(
			basictypes.MakerPred(P, basictypes.NewTermList(x, x), []typing.TypeApp{}),
			basictypes.MakerAnd(basictypes.NewFormList(basictypes.MakerPred(Q, basictypes.NewTermList(x, x), []typing.TypeApp{}), basictypes.MakerPred(P, basictypes.NewTermList(x, x), []typing.TypeApp{}))),
		),
	)
	global.PrintDebug("TS1", fmt.Sprintf("equpred : %v", equPred.ToString()))

	if !dmt.RegisterAxiom(equPred) {
		t.Fatalf("Error: %s hasn't been registered as a rewrite rule.", equPred.ToString())
	}

	Y := basictypes.MakerMeta("Y", 1)
	Z := basictypes.MakerMeta("Z", 1)

	form := basictypes.MakerPred(P, basictypes.NewTermList(Y, Z), []typing.TypeApp{})
	global.PrintDebug("TS1", fmt.Sprintf("form : %v", form.ToString()))

	substs, err := dmt.Rewrite(form)

	if err != nil {
		t.Fatalf("Error: %s not found in the rewrite tree when it should.", form.ToString())
	}

	if len(substs) > 1 {
		t.Fatalf("Error: more than one rewrite rule found for %s when it should have only one.", form.ToString())
	}

	global.PrintDebug("TS1", fmt.Sprintf("after form : %v", form.ToString()))
	forms := substs[0].GetSaf().GetForm()
	subst := substs[0].GetSaf().GetSubst()

	if forms.Len() > 1 {
		t.Fatalf("Error: %s can be rewritten by more than one formula when it should be rewritten by only one.", form.ToString())
	}

	if !(forms.Get(0).Equals(basictypes.MakerAnd(basictypes.NewFormList(basictypes.MakerPred(Q, basictypes.NewTermList(Y, Y), []typing.TypeApp{}), basictypes.MakerPred(P, basictypes.NewTermList(Y, Y), []typing.TypeApp{})))) ||
		forms.Get(0).Equals(basictypes.MakerAnd(basictypes.NewFormList(basictypes.MakerPred(Q, basictypes.NewTermList(Z, Z), []typing.TypeApp{}), basictypes.MakerPred(P, basictypes.NewTermList(Z, Z), []typing.TypeApp{}))))) ||
		len(subst) != 1 {
		t.Fatalf("Error: %s has not been rewritten as expected. Actual: %s.", form.ToString(), forms.Get(0).ToString())
	}
}

/**
 * Test subst
 **/
func TestSubst2(t *testing.T) {
	initDMT()
	// P(a) <=> forall y.Q(a, y)
	equPred := basictypes.MakerEqu(
		basictypes.MakerPred(P, basictypes.NewTermList(a), []typing.TypeApp{}),
		basictypes.MakerAll([]basictypes.Var{y}, basictypes.MakerPred(Q, basictypes.NewTermList(a, y), []typing.TypeApp{})),
	)

	if !dmt.RegisterAxiom(equPred) {
		t.Fatalf("Error: %s hasn't been registered as a rewrite rule.", equPred.ToString())
	}

	X := basictypes.MakerMeta("X", 1)

	form := basictypes.MakerPred(P, basictypes.NewTermList(X), []typing.TypeApp{})
	substs, err := dmt.Rewrite(form)

	if err != nil {
		t.Fatalf("Error: %s not found in the rewrite tree when it should.", form.ToString())
	}

	if len(substs) > 1 {
		t.Fatalf("Error: more than one rewrite rule found for %s when it should have only one.", form.ToString())
	}

	forms := substs[0].GetSaf().GetForm()
	subst := substs[0].GetSaf().GetSubst()

	if forms.Len() > 1 {
		t.Fatalf("Error: %s can be rewritten by more than one formula when it should be rewritten by only one.", form.ToString())
	}

	Y, _ := subst.Get(X)

	if !forms.Get(0).Equals(basictypes.MakerAll([]basictypes.Var{y}, basictypes.MakerPred(Q, basictypes.NewTermList(a, y), []typing.TypeApp{}))) ||
		!(len(subst) == 1 && Y.Equals(a)) {
		t.Fatalf("Error: %s has not been rewritten as expected. Actual: %s.", form.ToString(), forms.Get(0).ToString())
	}
}

func TestSubst3(t *testing.T) {
	initDMT()
	axiom := basictypes.MakerAll(
		[]basictypes.Var{x, y},
		basictypes.MakerEqu(
			basictypes.MakerPred(P, basictypes.NewTermList(x, basictypes.MakerFun(f, basictypes.NewTermList(y), []typing.TypeApp{})), []typing.TypeApp{}),
			basictypes.MakerAnd(basictypes.NewFormList(basictypes.MakerPred(Q, basictypes.NewTermList(x, y), []typing.TypeApp{}), basictypes.MakerPred(Q, basictypes.NewTermList(x, y), []typing.TypeApp{}))),
		),
	)

	if !dmt.RegisterAxiom(axiom) {
		t.Fatalf("Error: %s hasn't been registered as a rewrite rule.", axiom.ToString())
	}

	X := basictypes.MakerMeta("X2", 1)
	Y := basictypes.MakerMeta("Y2", 1)

	form := basictypes.MakerPred(P, basictypes.NewTermList(X, Y), []typing.TypeApp{})
	substs, err := dmt.Rewrite(form)

	if err != nil {
		t.Fatalf("Error: %s not found in the rewrite tree when it should.", form.ToString())
	}

	if len(substs) != 1 && !substs[0].GetSaf().GetSubst().Equals(treetypes.Failure()) {
		t.Fatalf("Error: %s has not been rewritten as expected. Actual: %s - %v.", form.ToString(), substs[0].GetSaf().GetForm().Get(0).ToString(), substs[0].GetSaf().GetSubst().ToString())
	}
}

/******************************************************************************
 * TEST MULTIPLE VERSIONS OF ONE AXIOM
 ******************************************************************************/

func TestMultipleAxiomDefinition(t *testing.T) {
	initDMT()
	// P(a) <=> forall y.Q(a, y)
	equPred := basictypes.MakerEqu(
		basictypes.MakerPred(P, basictypes.NewTermList(a), []typing.TypeApp{}),
		basictypes.MakerAll([]basictypes.Var{y}, basictypes.MakerPred(Q, basictypes.NewTermList(a, y), []typing.TypeApp{})),
	)
	// P(a) <=> forall y.Q(y, a)
	equPred2 := basictypes.MakerEqu(
		basictypes.MakerPred(P, basictypes.NewTermList(a), []typing.TypeApp{}),
		basictypes.MakerAll([]basictypes.Var{y}, basictypes.MakerPred(Q, basictypes.NewTermList(y, a), []typing.TypeApp{})),
	)

	if !dmt.RegisterAxiom(equPred) {
		t.Fatalf("Error: %s hasn't been registered as a rewrite rule.", equPred.ToString())
	}
	if !dmt.RegisterAxiom(equPred2) {
		t.Fatalf("Error: %s hasn't been registered as a rewrite rule.", equPred2.ToString())
	}

	form := basictypes.MakerPred(P, basictypes.NewTermList(a), []typing.TypeApp{})
	substs, err := dmt.Rewrite(form)

	if err != nil {
		t.Fatalf("Error: %s not found in the rewrite tree when it should.", form.ToString())
	}

	if len(substs) != 2 {
		t.Fatalf("Error: more than one rewrite rule found for %s when it should have only one.", form.ToString())
	}

	forms := substs[0].GetSaf().GetForm()
	forms.Append(substs[1].GetSaf().GetForm().Slice()...)

	if forms.Len() != 2 {
		t.Fatalf("Error: %s can be rewritten by more than two formulas when it should be rewritten by only two.", form.ToString())
	}

	if !forms.Contains(basictypes.MakerAll([]basictypes.Var{y}, basictypes.MakerPred(Q, basictypes.NewTermList(a, y), []typing.TypeApp{}))) ||
		!forms.Contains(basictypes.MakerAll([]basictypes.Var{y}, basictypes.MakerPred(Q, basictypes.NewTermList(y, a), []typing.TypeApp{}))) {
		t.Fatalf("Error: %s has not been rewritten as expected. Actual: %s.", form.ToString(), forms.ToString())
	}
}

func TestMultipleAxiomDefinition2(t *testing.T) {
	initDMT()
	// forall x.P(x) <=> forall y.Q(x, y)
	equPred := basictypes.MakerAll(
		[]basictypes.Var{x},
		basictypes.MakerEqu(
			basictypes.MakerPred(P, basictypes.NewTermList(x), []typing.TypeApp{}),
			basictypes.MakerAll([]basictypes.Var{y}, basictypes.MakerPred(Q, basictypes.NewTermList(x, y), []typing.TypeApp{})),
		),
	)
	// P(a) <=> forall y.Q(y, a)
	equPred2 := basictypes.MakerAll(
		[]basictypes.Var{x},
		basictypes.MakerEqu(
			basictypes.MakerPred(P, basictypes.NewTermList(x), []typing.TypeApp{}),
			basictypes.MakerAll([]basictypes.Var{y}, basictypes.MakerPred(Q, basictypes.NewTermList(y, x), []typing.TypeApp{})),
		),
	)

	if !dmt.RegisterAxiom(equPred) {
		t.Fatalf("Error: %s hasn't been registered as a rewrite rule.", equPred.ToString())
	}
	if !dmt.RegisterAxiom(equPred2) {
		t.Fatalf("Error: %s hasn't been registered as a rewrite rule.", equPred2.ToString())
	}

	form := basictypes.MakerPred(P, basictypes.NewTermList(a), []typing.TypeApp{})
	substs, err := dmt.Rewrite(form)

	if err != nil {
		t.Fatalf("Error: %s not found in the rewrite tree when it should.", form.ToString())
	}

	if len(substs) != 2 {
		t.Fatalf("Error: more than one rewrite rule found for %s when it should have only one.", form.ToString())
	}

	forms := substs[0].GetSaf().GetForm()
	forms.Append(substs[1].GetSaf().GetForm().Slice()...)

	if forms.Len() != 2 {
		t.Fatalf("Error: %s can be rewritten by more than two formulas when it should be rewritten by only two.", form.ToString())
	}

	if !forms.Contains(basictypes.MakerAll([]basictypes.Var{y}, basictypes.MakerPred(Q, basictypes.NewTermList(a, y), []typing.TypeApp{}))) ||
		!forms.Contains(basictypes.MakerAll([]basictypes.Var{y}, basictypes.MakerPred(Q, basictypes.NewTermList(y, a), []typing.TypeApp{}))) {
		t.Fatalf("Error: %s has not been rewritten as expected. Actual: %s.", form.ToString(), forms.ToString())
	}
}

/**
 * This function tests the error that should be returned if something is not in the rewrite tree
 **/
func TestError(t *testing.T) {
	initDMT()
	form := basictypes.MakerPred(P, basictypes.NewTermList(a), []typing.TypeApp{})
	substs, err := dmt.Rewrite(form)

	if err != nil {
		t.Fatalf("Error: %s found in rewrite tree when it's empty.", form.ToString())
	}

	if len(substs) > 1 || !substs[0].GetSaf().GetSubst().Equals(treetypes.Failure()) {
		t.Fatalf("Error: error not triggered when searching for something not in the rewrite tree.")
	}
}

/**
 * Sorting test : top/bot formulas should be first in line
 **/
func TestSort(t *testing.T) {
	initDMT()
	equPred := basictypes.MakerAll(
		[]basictypes.Var{x},
		basictypes.MakerEqu(
			basictypes.MakerPred(P, basictypes.NewTermList(x), []typing.TypeApp{}),
			basictypes.MakerAll([]basictypes.Var{y}, basictypes.MakerPred(Q, basictypes.NewTermList(x, y), []typing.TypeApp{})),
		),
	)

	if !dmt.RegisterAxiom(equPred) {
		t.Fatalf("Error: %s hasn't been registered as a rewrite rule.", equPred.ToString())
	}

	axiom := basictypes.MakerAll([]basictypes.Var{x}, basictypes.MakerPred(P, basictypes.NewTermList(x), []typing.TypeApp{}))

	if dmt.RegisterAxiom(axiom) {
		t.Fatalf("Error: %s has been registered as a rewrite rule when it shouldn't.", axiom.ToString())
	}

	// forall x.P(x) and forall x.P(x) <=> forall y.Q(x, y) are in the rewrite tree.

	form := basictypes.MakerPred(P, basictypes.NewTermList(a), []typing.TypeApp{})
	substs, err := dmt.Rewrite(form)

	if err != nil {
		t.Fatalf("Error: %s not found in the rewrite tree when it should.", form.ToString())
	}

	if len(substs) != 1 {
		t.Fatal("Error: substs size should be 1.")
	}

	others := substs[0].GetSaf().GetForm()

	if others.Len() > 1 {
		t.Fatal("Error: rewritten formulas are not properly sorted (2).")
	}
}
