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
/* z__sko_test.go */
/******************/

/**
 * This file tests the preskolemized functionnalities of the DMT plugin.
 **/

package dmt_test

import (
	"reflect"
	"testing"

	treetypes "github.com/GoelandProver/Goeland/code-trees/tree-types"
	. "github.com/GoelandProver/Goeland/plugin"
	dmt "github.com/GoelandProver/Goeland/plugins/dmt"
	btypes "github.com/GoelandProver/Goeland/types/basic-types"
)

// Makers a plugin manager and inits the DMT for presko tests
func getPreskolemizedPM() PluginManager {
	pm := PluginManager{}
	dmt.InitPlugin(&pm, []Option{{Name: "preskolemization"}}, false)
	return pm
}

func TestPreskolemization(t *testing.T) {
	pm := getPreskolemizedPM()

	b := btypes.MakerConst(btypes.MakerId("b"))
	z := btypes.MakerVar("z")
	subset := btypes.MakerId("subset")
	in := btypes.MakerId("in")

	// forall x, y. subset(x, y) <=> forall z. in(z, x) => in(z, y)
	axiom := btypes.MakerAll(
		[]btypes.Var{x, y},
		btypes.MakerEqu(
			btypes.MakerPred(subset, []btypes.Term{x, y}),
			btypes.MakerAll(
				[]btypes.Var{z},
				btypes.MakerImp(
					btypes.MakerPred(in, []btypes.Term{z, x}),
					btypes.MakerPred(in, []btypes.Term{z, y}),
				),
			),
		),
	)

	if !pm.ApplySendAxiomHook(axiom) {
		t.Fatalf("Error: %s hasn't been registered as a rewrite rule.", axiom.ToString())
	}

	// Positive occurrences should be rewritten normally
	form := btypes.MakerPred(subset, []btypes.Term{a, b})
	substs, err := pm.ApplyRewriteHook(form)

	if err != nil {
		t.Fatalf("Error: %s not found in the rewrite tree when it should.", form.ToString())
	}

	expected := btypes.MakerAll(
		[]btypes.Var{z},
		btypes.MakerImp(
			btypes.MakerPred(in, []btypes.Term{z, a}),
			btypes.MakerPred(in, []btypes.Term{z, b}),
		),
	)

	if len(substs) > 1 ||
		!substs[0].GetSubst().Equals(treetypes.MakeEmptySubstitution()) ||
		len(substs[0].GetForm()) > 1 ||
		!substs[0].GetForm()[0].Equals(expected) {
		t.Fatalf("Error: %s has not been rewritten as expected. Expected: %s, actual: %s.", form.ToString(), expected.ToString(), substs[0].GetForm()[0].ToString())
	}

	// Negative occurrences should be skolemized
	form2 := btypes.MakerNot(btypes.MakerPred(subset, []btypes.Term{a, b}))
	substs, err = pm.ApplyRewriteHook(form2)

	if err != nil {
		t.Fatalf("Error: %s not found in the rewrite tree when it should.", form2.ToString())
	}

	if len(substs) > 1 ||
		!substs[0].GetSubst().Equals(treetypes.MakeEmptySubstitution()) ||
		len(substs[0].GetForm()) > 1 ||
		reflect.TypeOf(substs[0].GetForm()[0]) != reflect.TypeOf(btypes.Not{}) ||
		reflect.TypeOf(substs[0].GetForm()[0].(btypes.Not).GetForm()) != reflect.TypeOf(btypes.Imp{}) ||
		!substs[0].GetForm()[0].(btypes.Not).GetForm().(btypes.Imp).GetF1().(btypes.Pred).GetArgs()[0].IsFun() ||
		!substs[0].GetForm()[0].(btypes.Not).GetForm().(btypes.Imp).GetF2().(btypes.Pred).GetArgs()[0].IsFun() {
		t.Fatalf("Error: %s has not been rewritten as expected. Actual: %s.", form2.ToString(), substs[0].GetForm()[0].ToString())
	}
}

func TestPreskolemization2(t *testing.T) {
	pm := getPreskolemizedPM()

	b := btypes.MakerConst(btypes.MakerId("b"))
	z := btypes.MakerVar("z")
	subset := btypes.MakerId("subset")
	in := btypes.MakerId("in")

	// forall x, y. subset(x, y) <=> forall z. in(z, x) => in(z, y)
	axiom := btypes.MakerAll(
		[]btypes.Var{x, y},
		btypes.MakerEqu(
			btypes.MakerPred(subset, []btypes.Term{x, y}),
			btypes.MakerEx(
				[]btypes.Var{z},
				btypes.MakerImp(
					btypes.MakerPred(in, []btypes.Term{z, x}),
					btypes.MakerPred(in, []btypes.Term{z, y}),
				),
			),
		),
	)

	if !pm.ApplySendAxiomHook(axiom) {
		t.Fatalf("Error: %s hasn't been registered as a rewrite rule.", axiom.ToString())
	}

	// Positive occurrences should be skolemized
	form := btypes.MakerPred(subset, []btypes.Term{a, b})
	substs, err := pm.ApplyRewriteHook(form)

	if err != nil {
		t.Fatalf("Error: %s not found in the rewrite tree when it should.", form.ToString())
	}

	if len(substs) > 1 ||
		!substs[0].GetSubst().Equals(treetypes.MakeEmptySubstitution()) ||
		len(substs[0].GetForm()) > 1 ||
		reflect.TypeOf(substs[0].GetForm()[0]) != reflect.TypeOf(btypes.Imp{}) ||
		!substs[0].GetForm()[0].(btypes.Imp).GetF1().(btypes.Pred).GetArgs()[0].IsFun() ||
		!substs[0].GetForm()[0].(btypes.Imp).GetF2().(btypes.Pred).GetArgs()[0].IsFun() {
		t.Fatalf("Error: %s has not been rewritten as expected. Actual: %s.", form.ToString(), substs[0].GetForm()[0].ToString())
	}

	// Negative occurrences should be rewritten normally
	form2 := btypes.MakerNot(btypes.MakerPred(subset, []btypes.Term{a, b}))
	substs, err = pm.ApplyRewriteHook(form2)

	if err != nil {
		t.Fatalf("Error: %s not found in the rewrite tree when it should.", form2.ToString())
	}

	expected := btypes.MakerNot(btypes.MakerEx(
		[]btypes.Var{z},
		btypes.MakerImp(
			btypes.MakerPred(in, []btypes.Term{z, a}),
			btypes.MakerPred(in, []btypes.Term{z, b}),
		),
	))

	if len(substs) > 1 ||
		!substs[0].GetSubst().Equals(treetypes.MakeEmptySubstitution()) ||
		len(substs[0].GetForm()) > 1 ||
		!substs[0].GetForm()[0].Equals(expected) {
		t.Fatalf("Error: %s has not been rewritten as expected. Expected: %s, actual: %s.", form2.ToString(), expected.ToString(), substs[0].GetForm()[0].ToString())
	}
}
