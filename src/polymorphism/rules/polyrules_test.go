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

/**************************/
/*  polymorphism_test.go  */
/**************************/

/**
 * This file tests the polymorphism package.
 **/

package polyrules_test

import (
	"os"
	"testing"

	. "github.com/GoelandProver/Goeland/polymorphism/rules"
	typing "github.com/GoelandProver/Goeland/polymorphism/typing"
	btypes "github.com/GoelandProver/Goeland/types/basic-types"
)

func TestMain(m *testing.M) {
	typing.Init()

	// Add pred scheme to global context
	typing.SaveTypeScheme(
		"P", 
		typing.MkTypeCross(typing.MkTypeHint("int"), typing.MkTypeHint("int")),
		typing.DefaultProp(),
	)
	typing.SaveConstant("2", typing.MkTypeHint("int"))
	typing.SaveConstant("3", typing.MkTypeHint("int"))

	code := m.Run()
	os.Exit(code)
}

/* Testing the double pass of the parser */

func TestSimpleDoublePass(t *testing.T) {
	// P(2, 3)
	pred := btypes.MakePred(btypes.MakerId("P"), []btypes.Term{
		btypes.MakerConst(btypes.MakerId("2")),
		btypes.MakerConst(btypes.MakerId("3")),
	}, []typing.TypeApp{})

	// Double pass pred
	newPred := TypeFormula(pred)

	expected := typing.MkTypeArrow(
		typing.MkTypeCross(typing.MkTypeHint("int"), typing.MkTypeHint("int")),
		typing.DefaultProp(),
	)
	// Pred should be of type (int * int) -> o
	if !typing.GetOutType(newPred.GetType()).ToTypeScheme().Equals(typing.DefaultPropType(0)) || 
	   !newPred.GetType().Equals(expected) {
		t.Errorf("Double pass didn't succeed. Expected: %s, actual: %s", expected.ToString(), newPred.GetType().ToString())
	}
}

func TestNegDoublePass(t *testing.T) {
	// ¬P(2, 3)
	pred := btypes.RefuteForm(btypes.MakePred(btypes.MakerId("P"), []btypes.Term{
		btypes.MakerConst(btypes.MakerId("2")),
		btypes.MakerConst(btypes.MakerId("3")),
	}, []typing.TypeApp{}))

	// Double pass pred
	newPred := TypeFormula(pred)

	if _, ok := newPred.(btypes.Not); !ok {
		t.Fatalf("Double pass should've returned a negation. Actual: %s", newPred.ToString())
	}
	if !typing.GetOutType(newPred.GetType()).ToTypeScheme().Equals(typing.DefaultPropType(0)) {
		t.Errorf("Double pass didn't succeed. OutType expected: %s, actual: %s", 
				 typing.DefaultPropType(0).ToString(), typing.GetOutType(newPred.GetType()).ToString())
	}

	newPred = newPred.(btypes.Not).GetForm()

	expected := typing.MkTypeArrow(
		typing.MkTypeCross(typing.MkTypeHint("int"), typing.MkTypeHint("int")),
		typing.DefaultProp(),
	)
	// Pred should be of type (int * int) -> o
	if !newPred.GetType().Equals(expected) {
		t.Errorf("Double pass didn't succeed. Expected: %s, actual: %s", expected.ToString(), newPred.GetType().ToString())
	}
}

func TestBinaryDoublePass(t *testing.T) {
	// P(2, 2) => P(3, 3)
	pred := btypes.MakeImp(
		btypes.MakePred(btypes.MakerId("P"), []btypes.Term{
			btypes.MakerConst(btypes.MakerId("2")),
			btypes.MakerConst(btypes.MakerId("2")),
		}, []typing.TypeApp{}),
		btypes.MakePred(btypes.MakerId("P"), []btypes.Term{
			btypes.MakerConst(btypes.MakerId("3")),
			btypes.MakerConst(btypes.MakerId("3")),
		}, []typing.TypeApp{}),
	)

	// Double pass pred
	newPred := TypeFormula(pred)

	if _, ok := newPred.(btypes.Imp); !ok {
		t.Fatalf("Double pass should've returned an implication. Actual: %s", newPred.ToString())
	}
	if !typing.GetOutType(newPred.GetType()).ToTypeScheme().Equals(typing.DefaultPropType(0)) {
		t.Errorf("Double pass didn't succeed. OutType expected: %s, actual: %s", 
				 typing.DefaultPropType(0).ToString(), typing.GetOutType(newPred.GetType()).ToString())
	}

	F1 := newPred.(btypes.Imp).GetF1()
	F2 := newPred.(btypes.Imp).GetF2()

	expected := typing.MkTypeArrow(
		typing.MkTypeCross(typing.MkTypeHint("int"), typing.MkTypeHint("int")),
		typing.DefaultProp(),
	)
	// Pred should be of type (int * int) -> o
	if !F1.GetType().Equals(expected) {
		t.Errorf("Double pass didn't succeed. Expected: %s, actual: %s", expected.ToString(), F1.GetType().ToString())
	}
	if !F2.GetType().Equals(expected) {
		t.Errorf("Double pass didn't succeed. Expected: %s, actual: %s", expected.ToString(), F2.GetType().ToString())
	}

	// P(2, 2) <=> P(3, 3)
	predEqu := btypes.MakeEqu(
		btypes.MakePred(btypes.MakerId("P"), []btypes.Term{
			btypes.MakerConst(btypes.MakerId("2")),
			btypes.MakerConst(btypes.MakerId("2")),
		}, []typing.TypeApp{}),
		btypes.MakePred(btypes.MakerId("P"), []btypes.Term{
			btypes.MakerConst(btypes.MakerId("3")),
			btypes.MakerConst(btypes.MakerId("3")),
		}, []typing.TypeApp{}),
	)

	// Double pass pred
	newPred = TypeFormula(predEqu)

	if _, ok := newPred.(btypes.Equ); !ok {
		t.Fatalf("Double pass should've returned an equivalence. Actual: %s", newPred.ToString())
	}
	if !typing.GetOutType(newPred.GetType()).ToTypeScheme().Equals(typing.DefaultPropType(0)) {
		t.Errorf("Double pass didn't succeed. OutType expected: %s, actual: %s", 
				 typing.DefaultPropType(0).ToString(), typing.GetOutType(newPred.GetType()).ToString())
	}

	F1 = newPred.(btypes.Equ).GetF1()
	F2 = newPred.(btypes.Equ).GetF2()

	// Pred should be of type (int * int) -> o
	if !F1.GetType().Equals(expected) {
		t.Errorf("Double pass didn't succeed. Expected: %s, actual: %s", expected.ToString(), F1.GetType().ToString())
	}
	if !F2.GetType().Equals(expected) {
		t.Errorf("Double pass didn't succeed. Expected: %s, actual: %s", expected.ToString(), F2.GetType().ToString())
	}
}

func TestQuantDoublePass(t *testing.T) {
	// forall x y : int, P(x, y)
	x := btypes.MakerVar("x", typing.MkTypeHint("int"))
	y := btypes.MakerVar("y", typing.MkTypeHint("int"))

	pred := btypes.MakeAll(
		[]btypes.Var{x, y},
		btypes.MakePred(btypes.MakerId("P"), []btypes.Term{x, y}, []typing.TypeApp{}),
	)

	// Double pass pred
	newPred := TypeFormula(pred)

	if _, ok := newPred.(btypes.All); !ok {
		t.Fatalf("Double pass should've returned a forall quantifier. Actual: %s", newPred.ToString())
	} 
	if !typing.GetOutType(newPred.GetType()).ToTypeScheme().Equals(typing.DefaultPropType(0)) {
		t.Errorf("Double pass didn't succeed. OutType expected: %s, actual: %s", 
				 typing.DefaultPropType(0).ToString(), typing.GetOutType(newPred.GetType()).ToString())
	}

	newForm := newPred.(btypes.All).GetForm()

	expected := typing.MkTypeArrow(
		typing.MkTypeCross(typing.MkTypeHint("int"), typing.MkTypeHint("int")),
		typing.DefaultProp(),
	)
	// Pred should be of type (int * int) -> o
	if !newForm.GetType().Equals(expected) {
		t.Errorf("Double pass didn't succeed. Expected: %s, actual: %s", expected.ToString(), newForm.GetType().ToString())
	}

	// exists x y : int, P(x, y)
	predEqu := btypes.MakeEx(
		[]btypes.Var{x, y},
		btypes.MakePred(btypes.MakerId("P"), []btypes.Term{x, y}, []typing.TypeApp{}),
	)

	// Double pass pred
	newPred = TypeFormula(predEqu)

	if _, ok := newPred.(btypes.Ex); !ok {
		t.Fatalf("Double pass should've returned an existential quantifier. Actual: %s", newPred.ToString())
	}
	if !typing.GetOutType(newPred.GetType()).ToTypeScheme().Equals(typing.DefaultPropType(0)) {
		t.Errorf("Double pass didn't succeed. OutType expected: %s, actual: %s", 
				 typing.DefaultPropType(0).ToString(), typing.GetOutType(newPred.GetType()).ToString())
	}

	newForm = newPred.(btypes.Ex).GetForm()

	// Pred should be of type (int * int) -> o
	if !newForm.GetType().Equals(expected) {
		t.Errorf("Double pass didn't succeed. Expected: %s, actual: %s", expected.ToString(), newForm.GetType().ToString())
	}
}

func TestNAryDoublePass(t *testing.T) {
	// P(2, 2) v P(2, 3) v P(3, 2) v P(3, 3)
	two := btypes.MakerConst(btypes.MakerId("2"))
	three := btypes.MakerConst(btypes.MakerId("3"))

	pred := btypes.MakeOr(btypes.FormList{
		btypes.MakePred(btypes.MakerId("P"), []btypes.Term{two, two}, []typing.TypeApp{}),
		btypes.MakePred(btypes.MakerId("P"), []btypes.Term{two, three}, []typing.TypeApp{}),
		btypes.MakePred(btypes.MakerId("P"), []btypes.Term{three, two}, []typing.TypeApp{}),
		btypes.MakePred(btypes.MakerId("P"), []btypes.Term{three, three}, []typing.TypeApp{}),
	})

	// Double pass pred
	newPred := TypeFormula(pred)

	if _, ok := newPred.(btypes.Or); !ok {
		t.Fatalf("Double pass should've returned a forall quantifier. Actual: %s", newPred.ToString())
	}
	if !typing.GetOutType(newPred.GetType()).ToTypeScheme().Equals(typing.DefaultPropType(0)) {
		t.Errorf("Double pass didn't succeed. OutType expected: %s, actual: %s", 
				 typing.DefaultPropType(0).ToString(), typing.GetOutType(newPred.GetType()).ToString())
	}

	newForms := newPred.(btypes.Or).GetLF()

	expected := typing.MkTypeArrow(
		typing.MkTypeCross(typing.MkTypeHint("int"), typing.MkTypeHint("int")),
		typing.DefaultProp(),
	)
	for _, newForm := range newForms {
		// Pred should be of type (int * int) -> o
		if !newForm.GetType().Equals(expected) {
			t.Errorf("Double pass didn't succeed. Expected: %s, actual: %s", expected.ToString(), newForm.GetType().ToString())
		}
	}

	// P(2, 2) ^ P(2, 3) ^ P(3, 2) ^ P(3, 3)

	andPred := btypes.MakeAnd(btypes.FormList{
		btypes.MakePred(btypes.MakerId("P"), []btypes.Term{two, two}, []typing.TypeApp{}),
		btypes.MakePred(btypes.MakerId("P"), []btypes.Term{two, three}, []typing.TypeApp{}),
		btypes.MakePred(btypes.MakerId("P"), []btypes.Term{three, two}, []typing.TypeApp{}),
		btypes.MakePred(btypes.MakerId("P"), []btypes.Term{three, three}, []typing.TypeApp{}),
	})

	// Double pass pred
	newPred = TypeFormula(andPred)

	if _, ok := newPred.(btypes.And); !ok {
		t.Fatalf("Double pass should've returned a forall quantifier. Actual: %s", newPred.ToString())
	}
	if !typing.GetOutType(newPred.GetType()).ToTypeScheme().Equals(typing.DefaultPropType(0)) {
		t.Errorf("Double pass didn't succeed. OutType expected: %s, actual: %s", 
				 typing.DefaultPropType(0).ToString(), typing.GetOutType(newPred.GetType()).ToString())
	}

	newForms = newPred.(btypes.And).GetLF()

	for _, newForm := range newForms {
		// Pred should be of type (int * int) -> o
		if !newForm.GetType().Equals(expected) {
			t.Errorf("Double pass didn't succeed. Expected: %s, actual: %s", expected.ToString(), newForm.GetType().ToString())
		}
	}
}

// What happens if I try to type something not in the global context ?
func TestTypingNotInGlobalContext(t *testing.T) {
	// Q(2, 3)
	pred := btypes.MakePred(btypes.MakerId("Q"), []btypes.Term{
		btypes.MakerConst(btypes.MakerId("2")),
		btypes.MakerConst(btypes.MakerId("3")),
	}, []typing.TypeApp{})

	// Double pass pred
	newPred := TypeFormula(pred)

	expected := typing.DefaultPropType(len(pred.GetArgs()))
	// Pred should be of type (i * i) -> o
	if !newPred.GetType().Equals(expected) {
		t.Errorf("Double pass didn't succeed. Expected: %s, actual: %s", expected.ToString(), newPred.GetType().ToString())
	}
}