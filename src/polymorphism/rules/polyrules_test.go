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
 * This file tests the polymorphism package.
 **/

package polyrules_test

import (
	"os"
	"testing"

	. "github.com/GoelandProver/Goeland/global"
	. "github.com/GoelandProver/Goeland/polymorphism/rules"
	typing "github.com/GoelandProver/Goeland/polymorphism/typing"
	btypes "github.com/GoelandProver/Goeland/types/basic-types"
)

func TestMain(m *testing.M) {
	typing.Init()
	typing.InitTPTPArithmetic()

	typing.SaveParamereterizedType("map", []typing.TypeApp{nil, nil})
	// Add pred scheme to global context
	typing.SaveTypeScheme(
		"P",
		typing.MkTypeCross(typing.MkTypeHint("$int"), typing.MkTypeHint("$int")),
		typing.DefaultProp(),
	)
	typing.SaveTypeScheme(
		"Q",
		typing.MkParameterizedType("map", []typing.TypeApp{typing.MkTypeHint("$int"), typing.MkTypeHint("$int")}),
		typing.DefaultProp(),
	)
	typing.SaveConstant("1", typing.MkTypeHint("$int"))
	typing.SaveConstant("2", typing.MkTypeHint("$int"))
	typing.SaveConstant("3", typing.MkTypeHint("$int"))

	code := m.Run()
	os.Exit(code)
}

/* Testing the double pass of the parser */

func TestSimpleDoublePass(t *testing.T) {
	// P(2, 3)
	pred := btypes.MakerPred(btypes.MakerId("P"), btypes.NewTermList(
		btypes.MakerConst(btypes.MakerId("2")),
		btypes.MakerConst(btypes.MakerId("3")),
	), []typing.TypeApp{})

	// Formal type verification
	//ptr := (*btypes.Form)(unsafe.Po$inter(&pred))
	form, err := WellFormedVerification(pred, false)

	if err != nil {
		t.Fatalf("Error during formal verification: %s", err.Error())
	}

	expected := typing.MkTypeArrow(
		typing.MkTypeCross(typing.MkTypeHint("$int"), typing.MkTypeHint("$int")),
		typing.DefaultProp(),
	)
	// Pred should be of type ($int * $int) -> o
	if !typing.GetOutType(form.GetType()).Equals(typing.DefaultProp()) ||
		!form.GetType().Equals(expected) {
		t.Errorf("Formal type verification didn't succeed. Expected: %s, actual: %s", expected.ToString(), form.GetType().ToString())
	}
}

func TestNegDoublePass(t *testing.T) {
	// ¬P(2, 3)
	pred := btypes.RefuteForm(btypes.MakerPred(btypes.MakerId("P"), btypes.NewTermList(
		btypes.MakerConst(btypes.MakerId("2")),
		btypes.MakerConst(btypes.MakerId("3")),
	), []typing.TypeApp{}))

	// Double pass pred
	newPred, err := WellFormedVerification(pred, false)

	if err != nil {
		t.Fatalf("Error during formal verification: %s", err.Error())
	}

	if _, ok := newPred.(btypes.Not); !ok {
		t.Fatalf("Double pass should've returned a negation. Actual: %s", newPred.ToString())
	}
	if !typing.GetOutType(newPred.GetType()).Equals(typing.DefaultProp()) {
		t.Errorf("Double pass didn't succeed. OutType expected: %s, actual: %s",
			typing.DefaultProp().ToString(), typing.GetOutType(newPred.GetType()).ToString())
	}

	newPred = newPred.(btypes.Not).GetForm()

	expected := typing.MkTypeArrow(
		typing.MkTypeCross(typing.MkTypeHint("$int"), typing.MkTypeHint("$int")),
		typing.DefaultProp(),
	)
	// Pred should be of type ($int * $int) -> o
	if !newPred.GetType().Equals(expected) {
		t.Errorf("Double pass didn't succeed. Expected: %s, actual: %s", expected.ToString(), newPred.GetType().ToString())
	}
}

func TestBinaryDoublePass(t *testing.T) {
	// P(2, 2) => P(3, 3)
	pred := btypes.MakerImp(
		btypes.MakerPred(btypes.MakerId("P"), btypes.NewTermList(
			btypes.MakerConst(btypes.MakerId("2")),
			btypes.MakerConst(btypes.MakerId("2")),
		), []typing.TypeApp{}),
		btypes.MakerPred(btypes.MakerId("P"), btypes.NewTermList(
			btypes.MakerConst(btypes.MakerId("3")),
			btypes.MakerConst(btypes.MakerId("3")),
		), []typing.TypeApp{}),
	)

	// Double pass pred
	newPred, err := WellFormedVerification(pred, false)

	if err != nil {
		t.Fatalf("Error during formal verification: %s", err.Error())
	}

	if _, ok := newPred.(btypes.Imp); !ok {
		t.Fatalf("Double pass should've returned an implication. Actual: %s", newPred.ToString())
	}
	if !typing.GetOutType(newPred.GetType()).Equals(typing.DefaultProp()) {
		t.Errorf("Double pass didn't succeed. OutType expected: %s, actual: %s",
			typing.DefaultProp().ToString(), typing.GetOutType(newPred.GetType()).ToString())
	}

	F1 := newPred.(btypes.Imp).GetF1()
	F2 := newPred.(btypes.Imp).GetF2()

	expected := typing.MkTypeArrow(
		typing.MkTypeCross(typing.MkTypeHint("$int"), typing.MkTypeHint("$int")),
		typing.DefaultProp(),
	)
	// Pred should be of type ($int * $int) -> o
	if !F1.GetType().Equals(expected) {
		t.Errorf("Double pass didn't succeed. Expected: %s, actual: %s", expected.ToString(), F1.GetType().ToString())
	}
	if !F2.GetType().Equals(expected) {
		t.Errorf("Double pass didn't succeed. Expected: %s, actual: %s", expected.ToString(), F2.GetType().ToString())
	}

	// P(2, 2) <=> P(3, 3)
	predEqu := btypes.MakerEqu(
		btypes.MakerPred(btypes.MakerId("P"), btypes.NewTermList(
			btypes.MakerConst(btypes.MakerId("2")),
			btypes.MakerConst(btypes.MakerId("2")),
		), []typing.TypeApp{}),
		btypes.MakerPred(btypes.MakerId("P"), btypes.NewTermList(
			btypes.MakerConst(btypes.MakerId("3")),
			btypes.MakerConst(btypes.MakerId("3")),
		), []typing.TypeApp{}),
	)

	// Double pass pred
	newPred, err = WellFormedVerification(predEqu, false)

	if err != nil {
		t.Fatalf("Error during formal verification: %s", err.Error())
	}

	if _, ok := newPred.(btypes.Equ); !ok {
		t.Fatalf("Double pass should've returned an equivalence. Actual: %s", newPred.ToString())
	}
	if !typing.GetOutType(newPred.GetType()).Equals(typing.DefaultProp()) {
		t.Errorf("Double pass didn't succeed. OutType expected: %s, actual: %s",
			typing.DefaultProp().ToString(), typing.GetOutType(newPred.GetType()).ToString())
	}

	F1 = newPred.(btypes.Equ).GetF1()
	F2 = newPred.(btypes.Equ).GetF2()

	// Pred should be of type ($int * $int) -> o
	if !F1.GetType().Equals(expected) {
		t.Errorf("Double pass didn't succeed. Expected: %s, actual: %s", expected.ToString(), F1.GetType().ToString())
	}
	if !F2.GetType().Equals(expected) {
		t.Errorf("Double pass didn't succeed. Expected: %s, actual: %s", expected.ToString(), F2.GetType().ToString())
	}
}

func TestQuantDoublePass(t *testing.T) {
	// forall x y : $int, P(x, y)
	x := btypes.MakerVar("x", typing.MkTypeHint("$int"))
	y := btypes.MakerVar("y", typing.MkTypeHint("$int"))

	pred := btypes.MakerAll(
		[]btypes.Var{x, y},
		btypes.MakerPred(btypes.MakerId("P"), btypes.NewTermList(x, y), []typing.TypeApp{}),
	)

	// Double pass pred
	newPred, err := WellFormedVerification(pred, false)

	if err != nil {
		t.Fatalf("Error during formal verification: %s", err.Error())
	}

	if _, ok := newPred.(btypes.All); !ok {
		t.Fatalf("Double pass should've returned a forall quantifier. Actual: %s", newPred.ToString())
	}
	if !typing.GetOutType(newPred.GetType()).Equals(typing.DefaultProp()) {
		t.Errorf("Double pass didn't succeed. OutType expected: %s, actual: %s",
			typing.DefaultProp().ToString(), typing.GetOutType(newPred.GetType()).ToString())
	}

	newForm := newPred.(btypes.All).GetForm()

	expected := typing.MkTypeArrow(
		typing.MkTypeCross(typing.MkTypeHint("$int"), typing.MkTypeHint("$int")),
		typing.DefaultProp(),
	)
	// Pred should be of type ($int * $int) -> o
	if !newForm.GetType().Equals(expected) {
		t.Errorf("Double pass didn't succeed. Expected: %s, actual: %s", expected.ToString(), newForm.GetType().ToString())
	}

	// exists x y : $int, P(x, y)
	predEqu := btypes.MakerEx(
		[]btypes.Var{x, y},
		btypes.MakerPred(btypes.MakerId("P"), btypes.NewTermList(x, y), []typing.TypeApp{}),
	)

	// Double pass pred
	newPred, err = WellFormedVerification(predEqu, false)

	if err != nil {
		t.Fatalf("Error during formal verification: %s", err.Error())
	}

	if _, ok := newPred.(btypes.Ex); !ok {
		t.Fatalf("Double pass should've returned an existential quantifier. Actual: %s", newPred.ToString())
	}
	if !typing.GetOutType(newPred.GetType()).Equals(typing.DefaultProp()) {
		t.Errorf("Double pass didn't succeed. OutType expected: %s, actual: %s",
			typing.DefaultProp().ToString(), typing.GetOutType(newPred.GetType()).ToString())
	}

	newForm = newPred.(btypes.Ex).GetForm()

	// Pred should be of type ($int * $int) -> o
	if !newForm.GetType().Equals(expected) {
		t.Errorf("Double pass didn't succeed. Expected: %s, actual: %s", expected.ToString(), newForm.GetType().ToString())
	}
}

func TestNAryDoublePass(t *testing.T) {
	// P(2, 2) v P(2, 3) v P(3, 2) v P(3, 3)
	two := btypes.MakerConst(btypes.MakerId("2"))
	three := btypes.MakerConst(btypes.MakerId("3"))

	pred := btypes.MakerOr(btypes.FormList{
		btypes.MakerPred(btypes.MakerId("P"), btypes.NewTermList(two, two), []typing.TypeApp{}),
		btypes.MakerPred(btypes.MakerId("P"), btypes.NewTermList(two, three), []typing.TypeApp{}),
		btypes.MakerPred(btypes.MakerId("P"), btypes.NewTermList(three, two), []typing.TypeApp{}),
		btypes.MakerPred(btypes.MakerId("P"), btypes.NewTermList(three, three), []typing.TypeApp{}),
	})

	// Double pass pred
	newPred, err := WellFormedVerification(pred, false)

	if err != nil {
		t.Fatalf("Error during formal verification: %s", err.Error())
	}

	if _, ok := newPred.(btypes.Or); !ok {
		t.Fatalf("Double pass should've returned a forall quantifier. Actual: %s", newPred.ToString())
	}
	if !typing.GetOutType(newPred.GetType()).Equals(typing.DefaultProp()) {
		t.Errorf("Double pass didn't succeed. OutType expected: %s, actual: %s",
			typing.DefaultProp().ToString(), typing.GetOutType(newPred.GetType()).ToString())
	}

	newForms := newPred.(btypes.Or).FormList

	expected := typing.MkTypeArrow(
		typing.MkTypeCross(typing.MkTypeHint("$int"), typing.MkTypeHint("$int")),
		typing.DefaultProp(),
	)
	for _, newForm := range newForms {
		// Pred should be of type ($int * $int) -> o
		if !newForm.GetType().Equals(expected) {
			t.Errorf("Double pass didn't succeed. Expected: %s, actual: %s", expected.ToString(), newForm.GetType().ToString())
		}
	}

	// P(2, 2) ^ P(2, 3) ^ P(3, 2) ^ P(3, 3)

	andPred := btypes.MakerAnd(btypes.FormList{
		btypes.MakerPred(btypes.MakerId("P"), btypes.NewTermList(two, two), []typing.TypeApp{}),
		btypes.MakerPred(btypes.MakerId("P"), btypes.NewTermList(two, three), []typing.TypeApp{}),
		btypes.MakerPred(btypes.MakerId("P"), btypes.NewTermList(three, two), []typing.TypeApp{}),
		btypes.MakerPred(btypes.MakerId("P"), btypes.NewTermList(three, three), []typing.TypeApp{}),
	})

	// Double pass pred
	newPred, err = WellFormedVerification(andPred, false)

	if err != nil {
		t.Fatalf("Error during formal verification: %s", err.Error())
	}

	if _, ok := newPred.(btypes.And); !ok {
		t.Fatalf("Double pass should've returned a forall quantifier. Actual: %s", newPred.ToString())
	}
	if !typing.GetOutType(newPred.GetType()).Equals(typing.DefaultProp()) {
		t.Errorf("Double pass didn't succeed. OutType expected: %s, actual: %s",
			typing.DefaultProp().ToString(), typing.GetOutType(newPred.GetType()).ToString())
	}

	newForms = newPred.(btypes.And).FormList

	for _, newForm := range newForms {
		// Pred should be of type ($int * $int) -> o
		if !newForm.GetType().Equals(expected) {
			t.Errorf("Double pass didn't succeed. Expected: %s, actual: %s", expected.ToString(), newForm.GetType().ToString())
		}
	}
}

// What happens if I try to type something not in the global context ?
func TestTypingNotInGlobalContext(t *testing.T) {
	// Q(2, 3)
	pred := btypes.MakerPred(btypes.MakerId("Q"), btypes.NewTermList(
		btypes.MakerConst(btypes.MakerId("2")),
		btypes.MakerConst(btypes.MakerId("3")),
	), []typing.TypeApp{})

	// Double pass pred
	_, err := WellFormedVerification(pred, false)

	if err == nil {
		t.Fatalf("Formal verification didn't catch the problem.")
	}
}

/* Typing rules tests */

func TestBabyNoErr(t *testing.T) {
	//a := typing.MkTypeVar("α")
	x := btypes.MakerVar("x", typing.MkTypeHint("$int"))
	y := btypes.MakerVar("y", typing.MkTypeHint("$int"))

	testForm := btypes.MakerAll(
		[]btypes.Var{x, y},
		btypes.MakerPred(
			btypes.MakerId("P"),
			btypes.NewTermList(x, y),
			[]typing.TypeApp{},
		))

	form, err := WellFormedVerification(testForm, false)
	if err != nil {
		t.Fatalf("Encountered error when system is well-typed. Err: %s", err.Error())
	}

	form = form.(btypes.All).GetForm()

	expected := typing.MkTypeArrow(
		typing.MkTypeCross(typing.MkTypeHint("$int"), typing.MkTypeHint("$int")),
		typing.DefaultProp(),
	)
	if !typing.GetOutType(form.GetType()).Equals(typing.DefaultProp()) ||
		!form.GetType().Equals(expected) {
		t.Errorf("Formal type verification didn't succeed. Expected: %s, actual: %s", expected.ToString(), form.GetType().ToString())
	}

	testForm2 := btypes.MakerEx(
		[]btypes.Var{x, y},
		btypes.MakerPred(
			btypes.MakerId("P"),
			btypes.NewTermList(x, y),
			[]typing.TypeApp{},
		))

	form, err = WellFormedVerification(testForm2, false)
	if err != nil {
		t.Fatalf("Encountered error when system is well-typed. Err: %s", err.Error())
	}

	pred := form.(btypes.Ex).GetForm()

	if !typing.GetOutType(pred.GetType()).Equals(typing.DefaultProp()) ||
		!pred.GetType().Equals(expected) {
		t.Errorf("Formal type verification didn't succeed. Expected: %s, actual: %s", expected.ToString(), form.GetType().ToString())
	}
}

// Final boss, we will try to visualize the type proof of this test
func TestPolymorphicExample(t *testing.T) {
	// Creation of the exemple: ∀α : Type, ∀x, y : α.P (α, x, y)
	// Global context: Φ : Πα : Type.α × α → o
	typeVar := typing.MkTypeVar("α")
	typeScheme := typing.MkQuantifiedType(
		[]typing.TypeVar{typeVar},
		typing.MkTypeArrow(
			typing.MkTypeCross(typeVar, typeVar),
			typing.DefaultProp(),
		),
	)

	typing.SavePolymorphScheme("Φ", typeScheme)

	// Check if it's saved properly
	polymorphicScheme := typing.GetPolymorphicType("Φ", 1, 2)

	if polymorphicScheme == nil {
		t.Fatalf("Couldn't find Φ's polymorphic type scheme")
	}

	// Everything is fine, let's create the predicate
	x := btypes.MakerVar("x", typeVar)
	y := btypes.MakerVar("y", typeVar)
	a := btypes.MakerVar("α", typeVar)

	testForm := btypes.MakerAllType(
		[]typing.TypeVar{typeVar},
		btypes.MakerAll(
			[]btypes.Var{x, y},
			btypes.MakerPred(
				btypes.MakerId("Φ"),
				btypes.NewTermList(a, x, y),
				[]typing.TypeApp{},
			),
		),
	)

	// Try to type this

	form, err := WellFormedVerification(testForm, false)
	if err != nil {
		t.Fatalf("Encountered error when system is well-typed. Err: %s", err.Error())
	}

	// Apparently, it's still well-typed (great !)
	// Let's check Φ's type
	pred := form.(btypes.AllType).GetForm().(btypes.All).GetForm()

	if !pred.GetType().Equals(typeScheme) {
		t.Fatalf("Type schemes do not match. Expected: %s, actual: %s", typeScheme.ToString(), form.GetType().ToString())
	}

	// GGs!
}

func TestPolymorphicFailureExample(t *testing.T) {
	// Creation of the exemple: ∀α : Type, ∀x, y : α.P (α, x, y)
	// Global context: Φ : Πα : Type.α × α → o
	typeVar := typing.MkTypeVar("α")
	typeScheme := typing.MkQuantifiedType(
		[]typing.TypeVar{typeVar},
		typing.MkTypeArrow(
			typing.MkTypeCross(typeVar, typeVar),
			typing.DefaultProp(),
		),
	)

	typing.SavePolymorphScheme("Φ", typeScheme)

	// Check if it's saved properly
	polymorphicScheme := typing.GetPolymorphicType("Φ", 1, 2)

	if polymorphicScheme == nil {
		t.Fatalf("Couldn't find Φ's polymorphic type scheme")
	}

	// Everything is fine, let's create the predicate
	x := btypes.MakerVar("x", typing.MkTypeHint("$int"))
	y := btypes.MakerVar("y", typeVar)

	testForm := btypes.MakerAllType(
		[]typing.TypeVar{typeVar},
		btypes.MakerAll(
			[]btypes.Var{x, y},
			btypes.MakerPred(
				btypes.MakerId("Φ"),
				btypes.NewTermList(x, y),
				[]typing.TypeApp{typeVar},
			),
		),
	)

	// Try to type this

	_, err := WellFormedVerification(testForm, false)
	if err == nil {
		t.Fatalf("Never encountered error when system is not well-typed.")
	}
}

func TestArithmeticFunction(t *testing.T) {
	// 1 + 2 <= 3
	pred := btypes.MakerPred(
		btypes.MakerId("$lesseq"),
		btypes.NewTermList(btypes.MakerFun(btypes.MakerId("$sum"), btypes.NewTermList(btypes.MakerConst(btypes.MakerId("1")), btypes.MakerConst(btypes.MakerId("2"))), []typing.TypeApp{}), btypes.MakerConst(btypes.MakerId("3"))),
		[]typing.TypeApp{},
	)

	_, err := WellFormedVerification(pred, false)
	if err != nil {
		t.Fatalf("Encountered an error when system is well-typed: %s", err.Error())
	}
}

func TestArithmeticFunction2(t *testing.T) {
	// (1 + 2) * 3 <= 9
	typing.SaveConstant("9", typing.MkTypeHint("$int"))
	fun := btypes.MakerFun(
		btypes.MakerId("$product"),
		btypes.NewTermList(
			btypes.MakerFun(
				btypes.MakerId("$sum"), btypes.NewTermList(btypes.MakerConst(btypes.MakerId("1")), btypes.MakerConst(btypes.MakerId("2"))), []typing.TypeApp{},
			),
			btypes.MakerConst(btypes.MakerId("3")),
		),
		[]typing.TypeApp{},
	)
	pred := btypes.MakerPred(
		btypes.MakerId("$lesseq"),
		btypes.NewTermList(fun, btypes.MakerConst(btypes.MakerId("9"))),
		[]typing.TypeApp{},
	)

	typedForm, err := WellFormedVerification(pred, false)
	if err != nil {
		t.Fatalf("Encountered an error when system is well-typed: %s", err.Error())
	}

	tint := typing.MkTypeHint("$int")
	expected := typing.MkTypeArrow(typing.MkTypeCross(tint, tint), typing.DefaultProp())
	if !typedForm.GetType().Equals(expected) {
		t.Fatalf("TypeScheme isn't the expected type. Expected: %s, actual: %s", expected.ToString(), typedForm.GetType().ToString())
	}

	termsType := make(map[string]typing.TypeScheme)

	termsType[btypes.MakerId("$product").ToString()] = typing.MkTypeArrow(typing.MkTypeCross(tint, tint), tint)
	termsType[btypes.MakerId("$sum").ToString()] = typing.MkTypeArrow(typing.MkTypeCross(tint, tint), tint)
	termsType[btypes.MakerId("1").ToString()] = tint
	termsType[btypes.MakerId("2").ToString()] = tint
	termsType[btypes.MakerId("3").ToString()] = tint
	termsType[btypes.MakerId("9").ToString()] = tint

	for _, term := range typedForm.(btypes.Pred).GetArgs().Slice() {
		checkType(t, termsType, term)
	}
}

func checkType(t *testing.T, types map[string]typing.TypeScheme, term btypes.Term) {
	if Is[btypes.Fun](term) {
		fun := To[btypes.Fun](term)
		if !types[fun.GetID().ToString()].Equals(term.(btypes.TypedTerm).GetTypeHint()) {
			t.Fatalf("Error: wrong TypeScheme for %s. Expected: %s, actual: %s", fun.GetID().ToString(), types[fun.GetID().ToString()].ToString(), term.(btypes.TypedTerm).GetTypeHint().ToString())
		}
		for _, nt := range fun.GetArgs().Slice() {
			checkType(t, types, nt)
		}
	} else {
		if !types[term.ToString()].Equals(term.(btypes.TypedTerm).GetTypeHint()) {
			t.Fatalf("Error: wrong TypeScheme for %s. Expected: %s, actual: %s", term.ToString(), types[term.ToString()].ToString(), term.(btypes.TypedTerm).GetTypeHint().ToString())
		}
	}
}

func TestArithmeticFunction3(t *testing.T) {
	// (x + y) * 4 <= 9
	x := btypes.MakerVar("x", typing.MkTypeHint("$rat"))
	y := btypes.MakerVar("y", typing.MkTypeHint("$rat"))
	typing.SaveConstant("9", typing.MkTypeHint("$int"))
	typing.SaveConstant("4", typing.MkTypeHint("$rat"))
	fun := btypes.MakerFun(
		btypes.MakerId("$product"),
		btypes.NewTermList(
			btypes.MakerFun(
				btypes.MakerId("$sum"), btypes.NewTermList(x, y), []typing.TypeApp{},
			),
			btypes.MakerConst(btypes.MakerId("4")),
		),
		[]typing.TypeApp{},
	)
	pred := btypes.MakerPred(
		btypes.MakerId("$lesseq"),
		btypes.NewTermList(fun, btypes.MakerConst(btypes.MakerId("9"))),
		[]typing.TypeApp{},
	)

	_, err := WellFormedVerification(pred, false)
	if err == nil {
		t.Fatalf("Encountered no error when system is not well-typed")
	}
}

func TestArithmeticFunction4(t *testing.T) {
	// 1 + 2 <= 3
	x := btypes.MakerVar("x", typing.MkTypeHint("$int"))
	y := btypes.MakerVar("y", typing.MkTypeHint("$int"))
	pred := btypes.MakerAll(
		[]btypes.Var{
			x, y,
		},
		btypes.MakerImp(
			btypes.MakerPred(
				btypes.MakerId("$lesseq"),
				btypes.NewTermList(btypes.MakerFun(btypes.MakerId("$sum"), btypes.NewTermList(x, y), []typing.TypeApp{}), btypes.MakerConst(btypes.MakerId("3"))),
				[]typing.TypeApp{},
			),
			btypes.MakerAnd(
				[]btypes.Form{
					btypes.MakerPred(
						btypes.MakerId("$lesseq"),
						btypes.NewTermList(x, btypes.MakerConst(btypes.MakerId("3"))),
						[]typing.TypeApp{},
					),
					btypes.MakerPred(
						btypes.MakerId("$lesseq"),
						btypes.NewTermList(y, btypes.MakerConst(btypes.MakerId("3"))),
						[]typing.TypeApp{},
					),
				},
			),
		),
	)

	_, err := WellFormedVerification(pred, false)
	if err != nil {
		t.Fatalf("Encountered an error when system is well-typed: %s", err.Error())
	}
}

// Standalone test (do not execute with others)
func TestAriWellTyped(t *testing.T) {
	t.SkipNow()

	typing.Init()
	typing.InitTPTPArithmetic()

	_, err := WellFormedVerification(btypes.MakerTop(), true)

	if err != nil {
		t.Fatalf("Error during formal verification: %s", err.Error())
	}
}
