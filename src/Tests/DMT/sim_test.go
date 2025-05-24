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
 *	- Axioms of format : forall x.P(x)
 *	- Checks if it doesn't break the proof
 **/

package dmt_test

import (
	"testing"

	dmt "github.com/GoelandProver/Goeland/modules/dmt"
	typing "github.com/GoelandProver/Goeland/polymorphism/typing"
	basictypes "github.com/GoelandProver/Goeland/types/basic-types"
)

/**
 * This function tests if : forall x.P(x) is rewritten as T/¬T
 **/
func TestAxiomRewriting(t *testing.T) {
	initDMT()

	// forall x.P(x)
	axiom := basictypes.MakerAll([]basictypes.Var{x}, basictypes.MakerPred(P, basictypes.NewTermList(x), []typing.TypeApp{}))

	if dmt.RegisterAxiom(axiom) {
		t.Fatalf("Error: %s has been registered as a rewrite rule when it shouldn't.", axiom.ToString())
	}

	// Top
	// form := basictypes.MakerPred(P, basictypes.NewTermList(a), []typing.TypeApp{})
	// substs, err := dmt.Rewrite(form)

	// if err != nil {
	// 	t.Fatalf("Error: %s not found in the rewrite tree when it should.", form.ToString())
	// }

	// if len(substs) > 1 ||
	// 	!substs[0].GetSubst().Equals(treetypes.MakeEmptySubstitution()) ||
	// 	len(substs[0].GetForm()) > 1 ||
	// 	!substs[0].GetForm()[0].Equals(basictypes.MakerTop()) {
	// 	t.Fatalf("Error: %s has not been rewritten as expected. Expected: %s, actual: %s.", form.ToString(), basictypes.MakerTop().ToString(), substs[0].GetForm()[0].ToString())
	// }

	// // ¬Top
	// form2 := basictypes.MakerNot(basictypes.MakerPred(P, basictypes.NewTermList(a), []typing.TypeApp{}))
	// substs, err = dmt.Rewrite(form2)

	// if err != nil {
	// 	t.Fatalf("Error: %s not found in the rewrite tree when it should.", form.ToString())
	// }

	// if len(substs) > 1 ||
	// 	!substs[0].GetSubst().Equals(treetypes.MakeEmptySubstitution()) ||
	// 	len(substs[0].GetForm()) > 1 ||
	// 	!substs[0].GetForm()[0].Equals(basictypes.MakerNot(basictypes.MakerTop())) {
	// 	t.Fatalf("Error: %s has not been rewritten as expected. Expected: %s, actual: %s.", form2.ToString(), basictypes.MakerNot(basictypes.MakerTop()).ToString(), substs[0].GetForm()[0].ToString())
	// }
}

/**
 * This function tests if : forall x.¬P(x) is rewritten as Bot/¬Bot
 **/
func TestAxiomRewriting2(t *testing.T) {
	initDMT()

	// forall x.¬P(x)
	axiom := basictypes.MakerAll([]basictypes.Var{x}, basictypes.MakerNot(basictypes.MakerPred(P, basictypes.NewTermList(x), []typing.TypeApp{})))

	if dmt.RegisterAxiom(axiom) {
		t.Fatalf("Error: %s has been registered as a rewrite rule when it shouldn't.", axiom.ToString())
	}

	// Bot
	// form := basictypes.MakerPred(P, basictypes.NewTermList(a), []typing.TypeApp{})
	// substs, err := dmt.Rewrite(form)

	// if err != nil {
	// 	t.Fatalf("Error: %s not found in the rewrite tree when it should.", form.ToString())
	// }

	// if len(substs) > 1 ||
	// 	!substs[0].GetSubst().Equals(treetypes.MakeEmptySubstitution()) ||
	// 	len(substs[0].GetForm()) > 1 ||
	// 	!substs[0].GetForm()[0].Equals(basictypes.MakerBot()) {
	// 	t.Fatalf("Error: %s has not been rewritten as expected. Expected: %s, actual: %s.", form.ToString(), basictypes.MakerBot().ToString(), substs[0].GetForm()[0].ToString())
	// }

	// // ¬Bot
	// form2 := basictypes.MakerNot(basictypes.MakerPred(P, basictypes.NewTermList(a), []typing.TypeApp{}))
	// substs, err = dmt.Rewrite(form2)

	// if err != nil {
	// 	t.Fatalf("Error: %s not found in the rewrite tree when it should.", form2.ToString())
	// }

	// if len(substs) > 1 ||
	// 	!substs[0].GetSubst().Equals(treetypes.MakeEmptySubstitution()) ||
	// 	len(substs[0].GetForm()) > 1 ||
	// 	!substs[0].GetForm()[0].Equals(basictypes.MakerNot(basictypes.MakerBot())) {
	// 	t.Fatalf("Error: %s has not been rewritten as expected. Expected: %s, actual: %s.", form2.ToString(), basictypes.MakerNot(basictypes.MakerBot()).ToString(), substs[0].GetForm()[0].ToString())
	// }
}

/**
 * This function tests if : forall x.P(x, x) is rewritten as T/¬T with the right substitutions
 **/
func TestAxiomRewriting3(t *testing.T) {
	initDMT()

	// forall x.P(x)
	axiom := basictypes.MakerAll([]basictypes.Var{x}, basictypes.MakerPred(P, basictypes.NewTermList(x, x), []typing.TypeApp{}))

	if dmt.RegisterAxiom(axiom) {
		t.Fatalf("Error: %s has been registered as a rewrite rule when it shouldn't.", axiom.ToString())
	}

	// X := basictypes.MakerMeta("X", 1)
	// Y := basictypes.MakerMeta("Y", 1)
	// // Top
	// form := basictypes.MakerPred(P, basictypes.NewTermList(X, Y), []typing.TypeApp{})
	// substs, err := dmt.Rewrite(form)

	// if err != nil {
	// 	t.Fatalf("Error: %s not found in the rewrite tree when it should.", form.ToString())
	// }

	// Z1, _ := substs[0].GetSubst().Get(X)
	// Z2, _ := substs[0].GetSubst().Get(Y)

	// if len(substs) > 1 ||
	// 	!(Z1.Equals(Y) || Z2.Equals(X)) ||
	// 	len(substs[0].GetForm()) > 1 ||
	// 	!substs[0].GetForm()[0].Equals(basictypes.MakerTop()) {
	// 	t.Fatalf("Error: %s has not been rewritten as expected. Expected: %s, actual: %s.", form.ToString(), basictypes.MakerTop().ToString(), substs[0].GetForm()[0].ToString())
	// }

	// // ¬Top
	// form2 := basictypes.MakerNot(basictypes.MakerPred(P, basictypes.NewTermList(X, Y), []typing.TypeApp{}))
	// substs, err = dmt.Rewrite(form2)

	// if err != nil {
	// 	t.Fatalf("Error: %s not found in the rewrite tree when it should.", form2.ToString())
	// }

	// Z1, _ = substs[0].GetSubst().Get(X)
	// Z2, _ = substs[0].GetSubst().Get(Y)

	// if len(substs) > 1 ||
	// 	!(Z1.Equals(Y) || Z2.Equals(X)) ||
	// 	len(substs[0].GetForm()) > 1 ||
	// 	!substs[0].GetForm()[0].Equals(basictypes.MakerNot(basictypes.MakerTop())) {
	// 	t.Fatalf("Error: %s has not been rewritten as expected. Expected: %s, actual: %s.", form2.ToString(), basictypes.MakerNot(basictypes.MakerTop()).ToString(), substs[0].GetForm()[0].ToString())
	// }

	// // Top with subst
	// form3 := basictypes.MakerPred(P, basictypes.NewTermList(a, Y), []typing.TypeApp{})
	// substs, err = dmt.Rewrite(form3)

	// if err != nil {
	// 	t.Fatalf("Error: %s not found in the rewrite tree when it should.", form3.ToString())
	// }

	// Z2, _ = substs[0].GetSubst().Get(Y)

	// if len(substs) > 1 ||
	// 	!Z2.Equals(a) ||
	// 	len(substs[0].GetForm()) > 1 ||
	// 	!substs[0].GetForm()[0].Equals(basictypes.MakerTop()) {
	// 	t.Fatalf("Error: %s has not been rewritten as expected. Expected: %s, actual: %s.", form3.ToString(), basictypes.MakerTop().ToString(), substs[0].GetForm()[0].ToString())
	// }

	// // Should fail
	// form4 := basictypes.MakerPred(P, basictypes.NewTermList(a, basictypes.MakerConst(basictypes.MakerId("b"))), []typing.TypeApp{})
	// substs, err = dmt.Rewrite(form4)

	// if err != nil {
	// 	t.Fatalf("Error: %s found in the rewrite tree when it shouldn't.", form4.ToString())
	// }

	// if len(substs) > 1 || !substs[0].GetSubst().Equals(treetypes.Failure()) {
	// 	t.Fatalf("Error: error not triggered when searching for something not in the rewrite tree.")
	// }
}

/**
 * This function tests if : forall x.x = x & forall x.x != x
 **/
func TestAxiomRewriting4(t *testing.T) {
	initDMT()

	// forall x.x = x
	axiom := basictypes.MakerAll([]basictypes.Var{x}, basictypes.MakerPred(basictypes.Id_eq, basictypes.NewTermList(x, x), []typing.TypeApp{}))

	if dmt.RegisterAxiom(axiom) {
		t.Fatalf("Error: %s has been registered as a rewrite rule when it's an equality.", axiom.ToString())
	}

	// forall x.x != x
	axiom = basictypes.MakerAll([]basictypes.Var{x}, basictypes.MakerPred(basictypes.Id_eq, basictypes.NewTermList(x, x), []typing.TypeApp{}))

	if dmt.RegisterAxiom(axiom) {
		t.Fatalf("Error: %s has been registered as a rewrite rule when it's an equality.", axiom.ToString())
	}

	// forall x.¬(x = x)
	axiom = basictypes.MakerAll([]basictypes.Var{x}, basictypes.MakerNot(basictypes.MakerPred(basictypes.Id_eq, basictypes.NewTermList(x, x), []typing.TypeApp{})))

	if dmt.RegisterAxiom(axiom) {
		t.Fatalf("Error: %s has been registered as a rewrite rule when it's an equality.", axiom.ToString())
	}

	// forall x.¬(x != x)
	axiom = basictypes.MakerAll([]basictypes.Var{x}, basictypes.MakerNot(basictypes.MakerPred(basictypes.Id_eq, basictypes.NewTermList(x, x), []typing.TypeApp{})))

	if dmt.RegisterAxiom(axiom) {
		t.Fatalf("Error: %s has been registered as a rewrite rule when it's an equality.", axiom.ToString())
	}
}
