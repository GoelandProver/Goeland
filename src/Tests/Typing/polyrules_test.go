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
	basictypes "github.com/GoelandProver/Goeland/types/basic-types"
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
	pred := basictypes.MakerPred(basictypes.MakerId("P"), basictypes.NewTermList(
		basictypes.MakerConst(basictypes.MakerId("2")),
		basictypes.MakerConst(basictypes.MakerId("3")),
	), []typing.TypeApp{})

	// Formal type verification
	//ptr := (*basictypes.Form)(unsafe.Po$inter(&pred))
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
	pred := basictypes.RefuteForm(basictypes.MakerPred(basictypes.MakerId("P"), basictypes.NewTermList(
		basictypes.MakerConst(basictypes.MakerId("2")),
		basictypes.MakerConst(basictypes.MakerId("3")),
	), []typing.TypeApp{}))

	// Double pass pred
	newPred, err := WellFormedVerification(pred, false)

	if err != nil {
		t.Fatalf("Error during formal verification: %s", err.Error())
	}

	if _, ok := newPred.(basictypes.Not); !ok {
		t.Fatalf("Double pass should've returned a negation. Actual: %s", newPred.ToString())
	}
	if !typing.GetOutType(newPred.GetType()).Equals(typing.DefaultProp()) {
		t.Errorf("Double pass didn't succeed. OutType expected: %s, actual: %s",
			typing.DefaultProp().ToString(), typing.GetOutType(newPred.GetType()).ToString())
	}

	newPred = newPred.(basictypes.Not).GetForm()

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
	pred := basictypes.MakerImp(
		basictypes.MakerPred(basictypes.MakerId("P"), basictypes.NewTermList(
			basictypes.MakerConst(basictypes.MakerId("2")),
			basictypes.MakerConst(basictypes.MakerId("2")),
		), []typing.TypeApp{}),
		basictypes.MakerPred(basictypes.MakerId("P"), basictypes.NewTermList(
			basictypes.MakerConst(basictypes.MakerId("3")),
			basictypes.MakerConst(basictypes.MakerId("3")),
		), []typing.TypeApp{}),
	)

	// Double pass pred
	newPred, err := WellFormedVerification(pred, false)

	if err != nil {
		t.Fatalf("Error during formal verification: %s", err.Error())
	}

	if _, ok := newPred.(basictypes.Imp); !ok {
		t.Fatalf("Double pass should've returned an implication. Actual: %s", newPred.ToString())
	}
	if !typing.GetOutType(newPred.GetType()).Equals(typing.DefaultProp()) {
		t.Errorf("Double pass didn't succeed. OutType expected: %s, actual: %s",
			typing.DefaultProp().ToString(), typing.GetOutType(newPred.GetType()).ToString())
	}

	F1 := newPred.(basictypes.Imp).GetF1()
	F2 := newPred.(basictypes.Imp).GetF2()

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
	predEqu := basictypes.MakerEqu(
		basictypes.MakerPred(basictypes.MakerId("P"), basictypes.NewTermList(
			basictypes.MakerConst(basictypes.MakerId("2")),
			basictypes.MakerConst(basictypes.MakerId("2")),
		), []typing.TypeApp{}),
		basictypes.MakerPred(basictypes.MakerId("P"), basictypes.NewTermList(
			basictypes.MakerConst(basictypes.MakerId("3")),
			basictypes.MakerConst(basictypes.MakerId("3")),
		), []typing.TypeApp{}),
	)

	// Double pass pred
	newPred, err = WellFormedVerification(predEqu, false)

	if err != nil {
		t.Fatalf("Error during formal verification: %s", err.Error())
	}

	if _, ok := newPred.(basictypes.Equ); !ok {
		t.Fatalf("Double pass should've returned an equivalence. Actual: %s", newPred.ToString())
	}
	if !typing.GetOutType(newPred.GetType()).Equals(typing.DefaultProp()) {
		t.Errorf("Double pass didn't succeed. OutType expected: %s, actual: %s",
			typing.DefaultProp().ToString(), typing.GetOutType(newPred.GetType()).ToString())
	}

	F1 = newPred.(basictypes.Equ).GetF1()
	F2 = newPred.(basictypes.Equ).GetF2()

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
	x := basictypes.MakerVar("x", typing.MkTypeHint("$int"))
	y := basictypes.MakerVar("y", typing.MkTypeHint("$int"))

	pred := basictypes.MakerAll(
		[]basictypes.Var{x, y},
		basictypes.MakerPred(basictypes.MakerId("P"), basictypes.NewTermList(x, y), []typing.TypeApp{}),
	)

	// Double pass pred
	newPred, err := WellFormedVerification(pred, false)

	if err != nil {
		t.Fatalf("Error during formal verification: %s", err.Error())
	}

	if _, ok := newPred.(basictypes.All); !ok {
		t.Fatalf("Double pass should've returned a forall quantifier. Actual: %s", newPred.ToString())
	}
	if !typing.GetOutType(newPred.GetType()).Equals(typing.DefaultProp()) {
		t.Errorf("Double pass didn't succeed. OutType expected: %s, actual: %s",
			typing.DefaultProp().ToString(), typing.GetOutType(newPred.GetType()).ToString())
	}

	newForm := newPred.(basictypes.All).GetForm()

	expected := typing.MkTypeArrow(
		typing.MkTypeCross(typing.MkTypeHint("$int"), typing.MkTypeHint("$int")),
		typing.DefaultProp(),
	)
	// Pred should be of type ($int * $int) -> o
	if !newForm.GetType().Equals(expected) {
		t.Errorf("Double pass didn't succeed. Expected: %s, actual: %s", expected.ToString(), newForm.GetType().ToString())
	}

	// exists x y : $int, P(x, y)
	predEqu := basictypes.MakerEx(
		[]basictypes.Var{x, y},
		basictypes.MakerPred(basictypes.MakerId("P"), basictypes.NewTermList(x, y), []typing.TypeApp{}),
	)

	// Double pass pred
	newPred, err = WellFormedVerification(predEqu, false)

	if err != nil {
		t.Fatalf("Error during formal verification: %s", err.Error())
	}

	if _, ok := newPred.(basictypes.Ex); !ok {
		t.Fatalf("Double pass should've returned an existential quantifier. Actual: %s", newPred.ToString())
	}
	if !typing.GetOutType(newPred.GetType()).Equals(typing.DefaultProp()) {
		t.Errorf("Double pass didn't succeed. OutType expected: %s, actual: %s",
			typing.DefaultProp().ToString(), typing.GetOutType(newPred.GetType()).ToString())
	}

	newForm = newPred.(basictypes.Ex).GetForm()

	// Pred should be of type ($int * $int) -> o
	if !newForm.GetType().Equals(expected) {
		t.Errorf("Double pass didn't succeed. Expected: %s, actual: %s", expected.ToString(), newForm.GetType().ToString())
	}
}

func TestNAryDoublePass(t *testing.T) {
	// P(2, 2) v P(2, 3) v P(3, 2) v P(3, 3)
	two := basictypes.MakerConst(basictypes.MakerId("2"))
	three := basictypes.MakerConst(basictypes.MakerId("3"))

	pred := basictypes.MakerOr(basictypes.NewFormList(
		basictypes.MakerPred(basictypes.MakerId("P"), basictypes.NewTermList(two, two), []typing.TypeApp{}),
		basictypes.MakerPred(basictypes.MakerId("P"), basictypes.NewTermList(two, three), []typing.TypeApp{}),
		basictypes.MakerPred(basictypes.MakerId("P"), basictypes.NewTermList(three, two), []typing.TypeApp{}),
		basictypes.MakerPred(basictypes.MakerId("P"), basictypes.NewTermList(three, three), []typing.TypeApp{}),
	))

	// Double pass pred
	newPred, err := WellFormedVerification(pred, false)

	if err != nil {
		t.Fatalf("Error during formal verification: %s", err.Error())
	}

	if _, ok := newPred.(basictypes.Or); !ok {
		t.Fatalf("Double pass should've returned a forall quantifier. Actual: %s", newPred.ToString())
	}
	if !typing.GetOutType(newPred.GetType()).Equals(typing.DefaultProp()) {
		t.Errorf("Double pass didn't succeed. OutType expected: %s, actual: %s",
			typing.DefaultProp().ToString(), typing.GetOutType(newPred.GetType()).ToString())
	}

	newForms := newPred.(basictypes.Or).FormList

	expected := typing.MkTypeArrow(
		typing.MkTypeCross(typing.MkTypeHint("$int"), typing.MkTypeHint("$int")),
		typing.DefaultProp(),
	)
	for _, newForm := range newForms.Slice() {
		// Pred should be of type ($int * $int) -> o
		if !newForm.GetType().Equals(expected) {
			t.Errorf("Double pass didn't succeed. Expected: %s, actual: %s", expected.ToString(), newForm.GetType().ToString())
		}
	}

	// P(2, 2) ^ P(2, 3) ^ P(3, 2) ^ P(3, 3)

	andPred := basictypes.MakerAnd(basictypes.NewFormList(
		basictypes.MakerPred(basictypes.MakerId("P"), basictypes.NewTermList(two, two), []typing.TypeApp{}),
		basictypes.MakerPred(basictypes.MakerId("P"), basictypes.NewTermList(two, three), []typing.TypeApp{}),
		basictypes.MakerPred(basictypes.MakerId("P"), basictypes.NewTermList(three, two), []typing.TypeApp{}),
		basictypes.MakerPred(basictypes.MakerId("P"), basictypes.NewTermList(three, three), []typing.TypeApp{}),
	))

	// Double pass pred
	newPred, err = WellFormedVerification(andPred, false)

	if err != nil {
		t.Fatalf("Error during formal verification: %s", err.Error())
	}

	if _, ok := newPred.(basictypes.And); !ok {
		t.Fatalf("Double pass should've returned a forall quantifier. Actual: %s", newPred.ToString())
	}
	if !typing.GetOutType(newPred.GetType()).Equals(typing.DefaultProp()) {
		t.Errorf("Double pass didn't succeed. OutType expected: %s, actual: %s",
			typing.DefaultProp().ToString(), typing.GetOutType(newPred.GetType()).ToString())
	}

	newForms = newPred.(basictypes.And).FormList

	for _, newForm := range newForms.Slice() {
		// Pred should be of type ($int * $int) -> o
		if !newForm.GetType().Equals(expected) {
			t.Errorf("Double pass didn't succeed. Expected: %s, actual: %s", expected.ToString(), newForm.GetType().ToString())
		}
	}
}

// What happens if I try to type something not in the global context ?
func TestTypingNotInGlobalContext(t *testing.T) {
	// Q(2, 3)
	pred := basictypes.MakerPred(basictypes.MakerId("Q"), basictypes.NewTermList(
		basictypes.MakerConst(basictypes.MakerId("2")),
		basictypes.MakerConst(basictypes.MakerId("3")),
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
	x := basictypes.MakerVar("x", typing.MkTypeHint("$int"))
	y := basictypes.MakerVar("y", typing.MkTypeHint("$int"))

	testForm := basictypes.MakerAll(
		[]basictypes.Var{x, y},
		basictypes.MakerPred(
			basictypes.MakerId("P"),
			basictypes.NewTermList(x, y),
			[]typing.TypeApp{},
		))

	form, err := WellFormedVerification(testForm, false)
	if err != nil {
		t.Fatalf("Encountered error when system is well-typed. Err: %s", err.Error())
	}

	form = form.(basictypes.All).GetForm()

	expected := typing.MkTypeArrow(
		typing.MkTypeCross(typing.MkTypeHint("$int"), typing.MkTypeHint("$int")),
		typing.DefaultProp(),
	)
	if !typing.GetOutType(form.GetType()).Equals(typing.DefaultProp()) ||
		!form.GetType().Equals(expected) {
		t.Errorf("Formal type verification didn't succeed. Expected: %s, actual: %s", expected.ToString(), form.GetType().ToString())
	}

	testForm2 := basictypes.MakerEx(
		[]basictypes.Var{x, y},
		basictypes.MakerPred(
			basictypes.MakerId("P"),
			basictypes.NewTermList(x, y),
			[]typing.TypeApp{},
		))

	form, err = WellFormedVerification(testForm2, false)
	if err != nil {
		t.Fatalf("Encountered error when system is well-typed. Err: %s", err.Error())
	}

	pred := form.(basictypes.Ex).GetForm()

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
	x := basictypes.MakerVar("x", typeVar)
	y := basictypes.MakerVar("y", typeVar)
	a := basictypes.MakerVar("α", typeVar)

	testForm := basictypes.MakerAllType(
		[]typing.TypeVar{typeVar},
		basictypes.MakerAll(
			[]basictypes.Var{x, y},
			basictypes.MakerPred(
				basictypes.MakerId("Φ"),
				basictypes.NewTermList(a, x, y),
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
	pred := form.(basictypes.AllType).GetForm().(basictypes.All).GetForm()

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
	x := basictypes.MakerVar("x", typing.MkTypeHint("$int"))
	y := basictypes.MakerVar("y", typeVar)

	testForm := basictypes.MakerAllType(
		[]typing.TypeVar{typeVar},
		basictypes.MakerAll(
			[]basictypes.Var{x, y},
			basictypes.MakerPred(
				basictypes.MakerId("Φ"),
				basictypes.NewTermList(x, y),
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
	pred := basictypes.MakerPred(
		basictypes.MakerId("$lesseq"),
		basictypes.NewTermList(basictypes.MakerFun(basictypes.MakerId("$sum"), basictypes.NewTermList(basictypes.MakerConst(basictypes.MakerId("1")), basictypes.MakerConst(basictypes.MakerId("2"))), []typing.TypeApp{}), basictypes.MakerConst(basictypes.MakerId("3"))),
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
	fun := basictypes.MakerFun(
		basictypes.MakerId("$product"),
		basictypes.NewTermList(
			basictypes.MakerFun(
				basictypes.MakerId("$sum"), basictypes.NewTermList(basictypes.MakerConst(basictypes.MakerId("1")), basictypes.MakerConst(basictypes.MakerId("2"))), []typing.TypeApp{},
			),
			basictypes.MakerConst(basictypes.MakerId("3")),
		),
		[]typing.TypeApp{},
	)
	pred := basictypes.MakerPred(
		basictypes.MakerId("$lesseq"),
		basictypes.NewTermList(fun, basictypes.MakerConst(basictypes.MakerId("9"))),
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

	termsType[basictypes.MakerId("$product").ToString()] = typing.MkTypeArrow(typing.MkTypeCross(tint, tint), tint)
	termsType[basictypes.MakerId("$sum").ToString()] = typing.MkTypeArrow(typing.MkTypeCross(tint, tint), tint)
	termsType[basictypes.MakerId("1").ToString()] = tint
	termsType[basictypes.MakerId("2").ToString()] = tint
	termsType[basictypes.MakerId("3").ToString()] = tint
	termsType[basictypes.MakerId("9").ToString()] = tint

	for _, term := range typedForm.(basictypes.Pred).GetArgs().Slice() {
		checkType(t, termsType, term)
	}
}

func checkType(t *testing.T, types map[string]typing.TypeScheme, term basictypes.Term) {
	if Is[basictypes.Fun](term) {
		fun := To[basictypes.Fun](term)
		if !types[fun.GetID().ToString()].Equals(term.(basictypes.TypedTerm).GetTypeHint()) {
			t.Fatalf("Error: wrong TypeScheme for %s. Expected: %s, actual: %s", fun.GetID().ToString(), types[fun.GetID().ToString()].ToString(), term.(basictypes.TypedTerm).GetTypeHint().ToString())
		}
		for _, nt := range fun.GetArgs().Slice() {
			checkType(t, types, nt)
		}
	} else {
		if !types[term.ToString()].Equals(term.(basictypes.TypedTerm).GetTypeHint()) {
			t.Fatalf("Error: wrong TypeScheme for %s. Expected: %s, actual: %s", term.ToString(), types[term.ToString()].ToString(), term.(basictypes.TypedTerm).GetTypeHint().ToString())
		}
	}
}

func TestArithmeticFunction3(t *testing.T) {
	// (x + y) * 4 <= 9
	x := basictypes.MakerVar("x", typing.MkTypeHint("$rat"))
	y := basictypes.MakerVar("y", typing.MkTypeHint("$rat"))
	typing.SaveConstant("9", typing.MkTypeHint("$int"))
	typing.SaveConstant("4", typing.MkTypeHint("$rat"))
	fun := basictypes.MakerFun(
		basictypes.MakerId("$product"),
		basictypes.NewTermList(
			basictypes.MakerFun(
				basictypes.MakerId("$sum"), basictypes.NewTermList(x, y), []typing.TypeApp{},
			),
			basictypes.MakerConst(basictypes.MakerId("4")),
		),
		[]typing.TypeApp{},
	)
	pred := basictypes.MakerPred(
		basictypes.MakerId("$lesseq"),
		basictypes.NewTermList(fun, basictypes.MakerConst(basictypes.MakerId("9"))),
		[]typing.TypeApp{},
	)

	_, err := WellFormedVerification(pred, false)
	if err == nil {
		t.Fatalf("Encountered no error when system is not well-typed")
	}
}

func TestArithmeticFunction4(t *testing.T) {
	// 1 + 2 <= 3
	x := basictypes.MakerVar("x", typing.MkTypeHint("$int"))
	y := basictypes.MakerVar("y", typing.MkTypeHint("$int"))
	pred := basictypes.MakerAll(
		[]basictypes.Var{
			x, y,
		},
		basictypes.MakerImp(
			basictypes.MakerPred(
				basictypes.MakerId("$lesseq"),
				basictypes.NewTermList(basictypes.MakerFun(basictypes.MakerId("$sum"), basictypes.NewTermList(x, y), []typing.TypeApp{}), basictypes.MakerConst(basictypes.MakerId("3"))),
				[]typing.TypeApp{},
			),
			basictypes.MakerAnd(
				basictypes.NewFormList(
					basictypes.MakerPred(
						basictypes.MakerId("$lesseq"),
						basictypes.NewTermList(x, basictypes.MakerConst(basictypes.MakerId("3"))),
						[]typing.TypeApp{},
					),
					basictypes.MakerPred(
						basictypes.MakerId("$lesseq"),
						basictypes.NewTermList(y, basictypes.MakerConst(basictypes.MakerId("3"))),
						[]typing.TypeApp{},
					),
				),
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

	_, err := WellFormedVerification(basictypes.MakerTop(), true)

	if err != nil {
		t.Fatalf("Error during formal verification: %s", err.Error())
	}
}
