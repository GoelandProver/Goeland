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
/*********************/
/* equality_tests.go */
/*********************/
/**
* This file contains the tests on equality.
**/

package main

import (
	"fmt"
	"os"
	"testing"
	"time"

	treesearch "github.com/GoelandProver/Goeland/code-trees/tree-search"
	treetypes "github.com/GoelandProver/Goeland/code-trees/tree-types"
	"github.com/GoelandProver/Goeland/global"
	basictypes "github.com/GoelandProver/Goeland/types/basic-types"
	datastruct "github.com/GoelandProver/Goeland/types/data-struct"
)

// Code trees
var tp, tn datastruct.DataStructure

// Id
var p_id basictypes.Id
var g_id basictypes.Id
var f_id basictypes.Id
var a_id basictypes.Id
var b_id basictypes.Id
var c_id basictypes.Id

// Meta
var x basictypes.Meta
var y basictypes.Meta

// Const
var a basictypes.Fun
var b basictypes.Fun
var c basictypes.Fun

// Fun
var gx basictypes.Fun
var ggx basictypes.Fun
var gggx basictypes.Fun
var gfy basictypes.Fun
var ga basictypes.Fun
var gga basictypes.Fun
var fa basictypes.Fun
var fx basictypes.Fun
var fy basictypes.Fun

// Equalities

func initTestVariable() {
	p_id = basictypes.MakerId("P")
	g_id = basictypes.MakerId("g")
	f_id = basictypes.MakerId("f")
	a_id = basictypes.MakerId("a")
	b_id = basictypes.MakerId("b")
	c_id = basictypes.MakerId("c")

	x = basictypes.MakerMeta("X", -1)
	y := basictypes.MakerMeta("Y", -1)

	a = basictypes.MakerConst(a_id)
	b = basictypes.MakerConst(b_id)
	c = basictypes.MakerConst(c_id)

	gx = basictypes.MakerFun(g_id, []basictypes.Term{x})
	ggx = basictypes.MakerFun(g_id, []basictypes.Term{gx})
	gggx = basictypes.MakerFun(g_id, []basictypes.Term{ggx})
	gfy = basictypes.MakerFun(g_id, []basictypes.Term{fy})
	ga = basictypes.MakerFun(g_id, []basictypes.Term{a})
	gga = basictypes.MakerFun(g_id, []basictypes.Term{ga})
	fx = basictypes.MakerFun(f_id, []basictypes.Term{x})
	fy = basictypes.MakerFun(f_id, []basictypes.Term{y})
	fa = basictypes.MakerFun(f_id, []basictypes.Term{a})

	lpo.insertTerm(p_id)
	lpo.insertTerm(g_id)
	lpo.insertTerm(f_id)
	lpo.insertTerm(c_id)
	lpo.insertTerm(b_id)
	lpo.insertTerm(a_id)
}

func initCodeTreesTests(lf basictypes.FormList) (datastruct.DataStructure, datastruct.DataStructure) {
	tp = new(treesearch.Node)
	tn = new(treesearch.Node)
	tp = tp.MakeDataStruct(lf, true)
	tn = tn.MakeDataStruct(lf, false)
	return tp, tn
}

func TestMain(m *testing.M) {
	global.SetStart(time.Now())
	initPluginGlobalVariables()
	basictypes.Init()
	code := m.Run()
	os.Exit(code)
}

/** Tests equality problem ***/
func TestEQ1(t *testing.T) {

	/**
	* Eq :
	* fa = a
	* ggx = fa
	*
	* Problem : gggx != x
	*
	* Solutionss : (X, g(a)), (X, f(g(a)))
	**/

	// EQ
	eq_fa_a := basictypes.MakePred(basictypes.Id_eq, []basictypes.Term{fa, a})
	eq_ggx_x := basictypes.MakePred(basictypes.Id_eq, []basictypes.Term{ggx, fa})

	// NEQ
	neq_gggx_x := basictypes.MakePred(basictypes.Id_neq, []basictypes.Term{gggx, x})

	lf := basictypes.FormList{eq_fa_a, eq_ggx_x, neq_gggx_x}
	tp, tn = initCodeTreesTests(lf)
	res, subst := EqualityReasoning(tp, tn, lf)

	expected_subst_1 := treetypes.MakeEmptySubstitution()
	expected_subst_1[x] = basictypes.MakerFun(g_id, []basictypes.Term{a})

	expected_subst_2 := treetypes.MakeEmptySubstitution()
	expected_subst_2[x] = basictypes.MakerFun(g_id, []basictypes.Term{fa})

	if !res || len(subst) > 2 || len(subst) < 1 ||
		(!subst[0].Equals(expected_subst_1) && !subst[0].Equals(expected_subst_2)) ||
		(len(subst) == 2 && !subst[1].Equals(expected_subst_1) && !subst[0].Equals(expected_subst_2)) {
		t.Fatalf("Error: %s is not the excpected substitution. Excpeted : %v or %v", treetypes.SubstListToString(subst), expected_subst_1.ToString(), expected_subst_2.ToString())
	}
}

func TestEQ2(t *testing.T) {

	/**
	* Eq :
	* b = c
	* gfy = y
	* gx = fx
	*
	* Problem : pb, pc -> b != c
	*
	* Solutionss : {} or X = Y
	**/

	// EQ
	eq_b_c := basictypes.MakePred(basictypes.Id_eq, []basictypes.Term{b, c})
	eq_gfy_y := basictypes.MakePred(basictypes.Id_eq, []basictypes.Term{gfy, y})
	eq_gx_fx := basictypes.MakePred(basictypes.Id_eq, []basictypes.Term{gx, fx})

	// Pred
	pb := basictypes.MakePred(p_id, []basictypes.Term{b})
	pc := basictypes.MakeNot(basictypes.MakePred(p_id, []basictypes.Term{c}))

	lf := basictypes.FormList{eq_b_c, eq_gx_fx, pb, pc, eq_gfy_y}
	tp, tn = initCodeTreesTests(lf)
	res, subst := EqualityReasoning(tp, tn, lf)

	expected_subst_1 := treetypes.MakeEmptySubstitution()
	expected_subst_1[x] = y

	expected_subst_2 := treetypes.MakeEmptySubstitution()

	if !res || len(subst) > 2 || len(subst) < 1 ||
		(!subst[0].Equals(expected_subst_1) && !subst[0].Equals(expected_subst_2)) ||
		(len(subst) == 2 && !subst[1].Equals(expected_subst_1) && !subst[0].Equals(expected_subst_2)) {
		t.Fatalf("Error: %s is not the excpected substitution. Excpeted : %v or %v", treetypes.SubstListToString(subst), expected_subst_1.ToString(), expected_subst_2.ToString())
	}

}

/* (X, a), (Y, a) */
func TestEQ3(t *testing.T) {

	// EQ
	eq_b_c := basictypes.MakePred(basictypes.Id_eq, []basictypes.Term{b, c})
	gfy_y := basictypes.MakePred(basictypes.Id_eq, []basictypes.Term{gfy, y})
	gx_fx := basictypes.MakePred(basictypes.Id_eq, []basictypes.Term{gx, fx})

	// Pred
	pggab := basictypes.MakePred(p_id, []basictypes.Term{gga, b})
	pac := basictypes.MakeNot(basictypes.MakePred(p_id, []basictypes.Term{a, c}))

	lf := basictypes.FormList{b_c, gx_fx, pggab, pac, gfy_y}

	tp, tn = initCodeTreesTests(lf)
	res, subst := EqualityReasoning(tp, tn, lf)

	global.PrintDebug("MAIN", fmt.Sprintf("RES B1: %v", res))
	global.PrintDebug("MAIN", fmt.Sprintf("SUBST B1: %v", treetypes.SubstListToString(subst)))

}

/* (X, a) */
func TestEQB2(t *testing.T) {
	global.SetDebug(true)
	global.SetStart(time.Now())
	initPluginGlobalVariables()
	basictypes.Init()

	global.PrintDebug("MAIN", "Start of the problem")
	f_id := basictypes.MakerId("f")
	g_id := basictypes.MakerId("g")
	a_id := basictypes.MakerId("a")
	b_id := basictypes.MakerId("b")
	c_id := basictypes.MakerId("c")
	p_id := basictypes.MakerId("P")

	a := basictypes.MakerConst(a_id)
	b := basictypes.MakerConst(b_id)
	c := basictypes.MakerConst(c_id)
	x := basictypes.MakerMeta("X", -1)
	y := basictypes.MakerMeta("Y", -1)
	ga := basictypes.MakerFun(g_id, []basictypes.Term{a})
	gga := basictypes.MakerFun(g_id, []basictypes.Term{ga})
	fy := basictypes.MakerFun(f_id, []basictypes.Term{y})
	gfy := basictypes.MakerFun(g_id, []basictypes.Term{fy})

	b_c := basictypes.MakePred(basictypes.Id_eq, []basictypes.Term{b, c})
	gfy_y := basictypes.MakePred(basictypes.Id_eq, []basictypes.Term{gfy, y})
	x_a := basictypes.MakePred(basictypes.Id_neq, []basictypes.Term{x, a})
	pggab := basictypes.MakePred(p_id, []basictypes.Term{gga, b})
	pac := basictypes.MakeNot(basictypes.MakePred(p_id, []basictypes.Term{a, c}))

	lpo.insertTerm(g_id)
	lpo.insertTerm(f_id)
	lpo.insertTerm(c_id)
	lpo.insertTerm(b_id)
	lpo.insertTerm(a_id)
	global.PrintDebug("MAIN", fmt.Sprintf("LPO : %v\n", lpo.toString()))

	lf_b2 := basictypes.FormList{b_c, pggab, pac, gfy_y, x_a}

	global.PrintDebug("MAIN", fmt.Sprintf("B2_ LF : %v\n", lf_b2.ToString()))

	var tp, tn datastruct.DataStructure
	tp = new(treesearch.Node)
	tn = new(treesearch.Node)
	tp = tp.MakeDataStruct(lf_b2, true)
	tn = tn.MakeDataStruct(lf_b2, false)

	res, subst := EqualityReasoning(tp, tn, lf_b2)

	global.PrintDebug("MAIN", fmt.Sprintf("RES B2: %v", res))
	global.PrintDebug("MAIN", fmt.Sprintf("SUBST B2: %v", treetypes.SubstListToString(subst)))

}

/* 2 solutions */
/* {<[Z1 ≈ c1, Z2 ≈ c1], a, b> • {}}
(z1 =a, z2= b ou z1 = b, z2 = a) */
func TestEQ2(t *testing.T) {
	global.SetDebug(true)
	global.SetStart(time.Now())
	initPluginGlobalVariables()
	basictypes.Init()

	global.PrintDebug("MAIN", "Start of the problem")
	a_id := basictypes.MakerId("a")
	b_id := basictypes.MakerId("b")
	c1_id := basictypes.MakerId("c1")
	p_id := basictypes.MakerId("P")

	a := basictypes.MakerConst(a_id)
	b := basictypes.MakerConst(b_id)
	c1 := basictypes.MakerConst(c1_id)
	z1 := basictypes.MakerMeta("Z1", -1)
	z2 := basictypes.MakerMeta("Z2", -1)

	pa := basictypes.MakePred(p_id, []basictypes.Term{a})
	pb := basictypes.MakePred(p_id, []basictypes.Term{b})
	neq_a_b := basictypes.MakePred(basictypes.Id_neq, []basictypes.Term{a, b})
	eq_z1_c2 := basictypes.MakePred(basictypes.Id_eq, []basictypes.Term{z1, c1})
	eq_z2_c1 := basictypes.MakePred(basictypes.Id_eq, []basictypes.Term{z2, c1})

	lpo.insertTerm(c1_id)
	lpo.insertTerm(b_id)
	lpo.insertTerm(a_id)
	global.PrintDebug("MAIN", fmt.Sprintf("LPO : %v\n", lpo.toString()))

	lf_b2 := basictypes.FormList{pa, pb, neq_a_b, eq_z1_c2, eq_z2_c1}

	global.PrintDebug("MAIN", fmt.Sprintf("LF : %v\n", lf_b2.ToString()))

	var tp, tn datastruct.DataStructure
	tp = new(treesearch.Node)
	tn = new(treesearch.Node)
	tp = tp.MakeDataStruct(lf_b2, true)
	tn = tn.MakeDataStruct(lf_b2, false)

	res, subst := EqualityReasoning(tp, tn, lf_b2)

	global.PrintDebug("MAIN", fmt.Sprintf("RES : %v", res))
	global.PrintDebug("MAIN", fmt.Sprintf("SUBST : %v", treetypes.SubstListToString(subst)))
}

/* 18 solutions */
/* {<[Z1 ≈ c2, Z2 ≈ c1, Z3 ≈ c1], b, c> • {}}
*  {<[Z1 ≈ c2, Z2 ≈ c1, Z3 ≈ c1], a, c> • {}}
* {<[Z1 ≈ c2, Z2 ≈ c1, Z3 ≈ c1], a, b> • {}}
**/
func TestEQ3(t *testing.T) {
	global.SetDebug(true)
	global.SetStart(time.Now())
	initPluginGlobalVariables()
	basictypes.Init()

	global.PrintDebug("MAIN", "Start of the problem")
	a_id := basictypes.MakerId("a")
	b_id := basictypes.MakerId("b")
	c_id := basictypes.MakerId("c")
	c1_id := basictypes.MakerId("c1")
	c2_id := basictypes.MakerId("c2")
	p_id := basictypes.MakerId("P")

	a := basictypes.MakerConst(a_id)
	b := basictypes.MakerConst(b_id)
	c := basictypes.MakerConst(c_id)
	c1 := basictypes.MakerConst(c1_id)
	c2 := basictypes.MakerConst(c2_id)
	z1 := basictypes.MakerMeta("Z1", -1)
	z2 := basictypes.MakerMeta("Z2", -1)
	z3 := basictypes.MakerMeta("Z3", -1)

	pa := basictypes.MakePred(p_id, []basictypes.Term{a})
	pb := basictypes.MakePred(p_id, []basictypes.Term{b})
	not_pc := basictypes.RefuteForm(basictypes.MakePred(p_id, []basictypes.Term{c}))
	neq_a_b := basictypes.MakePred(basictypes.Id_neq, []basictypes.Term{a, b})
	eq_z1_c2 := basictypes.MakePred(basictypes.Id_eq, []basictypes.Term{z1, c2})
	eq_z2_c1 := basictypes.MakePred(basictypes.Id_eq, []basictypes.Term{z2, c1})
	eq_z3_c1 := basictypes.MakePred(basictypes.Id_eq, []basictypes.Term{z3, c1})

	lpo.insertTerm(c2_id)
	lpo.insertTerm(c1_id)
	lpo.insertTerm(c_id)
	lpo.insertTerm(b_id)
	lpo.insertTerm(a_id)
	global.PrintDebug("MAIN", fmt.Sprintf("LPO : %v\n", lpo.toString()))

	lf_b2 := basictypes.FormList{pa, pb, not_pc, neq_a_b, eq_z1_c2, eq_z2_c1, eq_z3_c1}

	global.PrintDebug("MAIN", fmt.Sprintf("LF : %v\n", lf_b2.ToString()))

	var tp, tn datastruct.DataStructure
	tp = new(treesearch.Node)
	tn = new(treesearch.Node)
	tp = tp.MakeDataStruct(lf_b2, true)
	tn = tn.MakeDataStruct(lf_b2, false)

	global.SetDebug(false)
	res, subst := EqualityReasoning(tp, tn, lf_b2)
	global.SetDebug(true)

	global.PrintDebug("MAIN", fmt.Sprintf("RES : %v", res))
	global.PrintDebug("MAIN", fmt.Sprintf("SUBST : %v", treetypes.SubstListToString(subst)))
}

/* (a = b) et (a != b) */
func TestEQ4(t *testing.T) {
	global.SetDebug(true)
	global.SetStart(time.Now())
	initPluginGlobalVariables()
	basictypes.Init()

	global.PrintDebug("MAIN", "Start of the problem")
	a_id := basictypes.MakerId("a")
	a := basictypes.MakerConst(a_id)
	b_id := basictypes.MakerId("b")
	b := basictypes.MakerConst(b_id)
	eq_a_b := basictypes.MakePred(basictypes.Id_eq, []basictypes.Term{a, b})
	neq_a_b := basictypes.MakePred(basictypes.Id_neq, []basictypes.Term{a, b})

	lpo.insertTerm(a_id)
	lpo.insertTerm(b_id)

	lf := basictypes.FormList{eq_a_b, neq_a_b}

	global.PrintDebug("MAIN", fmt.Sprintf("LF : %v\n", lf.ToString()))

	var tp, tn datastruct.DataStructure
	tp = new(treesearch.Node)
	tn = new(treesearch.Node)
	tp = tp.MakeDataStruct(lf, true)
	tn = tn.MakeDataStruct(lf, false)

	global.SetDebug(false)
	res, subst := EqualityReasoning(tp, tn, lf)
	global.SetDebug(true)
	global.PrintDebug("MAIN", fmt.Sprintf("RES : %v", res))
	global.PrintDebug("MAIN", fmt.Sprintf("SUBST : %v", treetypes.SubstListToString(subst)))
}

/* Test apply substitution */
/**
* Problème : <[X = Y], X, Y>
* Substitution : (X, a)
**/
func TestAS(t *testing.T) {
	global.SetDebug(true)
	global.SetStart(time.Now())
	initPluginGlobalVariables()
	basictypes.Init()

	global.PrintDebug("MAIN", "Start of the problem")
	a_id := basictypes.MakerId("a")

	a := basictypes.MakerConst(a_id)
	x := basictypes.MakerMeta("X", -1)
	y := basictypes.MakerMeta("Y", -1)

	eq_x_y := basictypes.MakePred(basictypes.Id_eq, []basictypes.Term{x, y})

	var tp datastruct.DataStructure
	tp = new(treesearch.Node)
	tp = tp.MakeDataStruct(basictypes.MakeSingleElementList(eq_x_y), true)
	eq := retrieveEqualities(tp)
	ep := makeEqualityProblem(eq, x, y, makeEmptyConstaintStruct())

	s := treetypes.MakeEmptySubstitution()
	s[x] = a

	global.PrintDebug("MAIN", fmt.Sprintf("EP : %v - subst = %v", ep.toString(), s.ToString()))

	global.SetDebug(false)
	new_ep := ep.applySubstitution(s)
	global.SetDebug(true)

	global.PrintDebug("MAIN", fmt.Sprintf("New EP : %v", new_ep.toString()))
}

/* Tests LPO */
func TestCreateLPO(t *testing.T) {
	global.SetStart(time.Now())
	initPluginGlobalVariables()
	basictypes.Init()

	f_id := basictypes.MakerId("f")
	g_id := basictypes.MakerId("g")
	a_id := basictypes.MakerId("a")

	lpo.insertTerm(g_id)
	lpo.insertTerm(f_id)
	lpo.insertTerm(a_id)

	fmt.Printf("%v\n", lpo.toString())
}

/* Tets constraintes */
/* Not consistant */
func TestConstaintes(t *testing.T) {
	global.SetDebug(true)
	global.SetStart(time.Now())
	initPluginGlobalVariables()
	basictypes.Init()

	global.PrintDebug("MAIN", "Start of the problem")
	f_id := basictypes.MakerId("f")
	x := basictypes.MakerMeta("X", -1)
	fx := basictypes.MakerFun(f_id, []basictypes.Term{x})
	ffx := basictypes.MakerFun(f_id, []basictypes.Term{fx})

	tp := makeTermPair(ffx, x)
	c := MakeConstraint(PREC, tp)
	cs := makeEmptyConstaintStruct()

	lpo.insertTerm(f_id)

	cs.appendIfConsistant(c)
	fmt.Printf("CL : %v\n", cs.toString())
}

/* Consistant but useless */
func TestConstaintes2(t *testing.T) {
	global.SetDebug(true)
	global.SetStart(time.Now())
	initPluginGlobalVariables()
	basictypes.Init()

	global.PrintDebug("MAIN", "Start of the problem")
	f_id := basictypes.MakerId("f")
	x := basictypes.MakerMeta("X", -1)
	fx := basictypes.MakerFun(f_id, []basictypes.Term{x})
	ffx := basictypes.MakerFun(f_id, []basictypes.Term{fx})

	tp := makeTermPair(x, ffx)
	c := MakeConstraint(PREC, tp)
	cs := makeEmptyConstaintStruct()

	lpo.insertTerm(f_id)

	cs.appendIfConsistant(c)
	fmt.Printf("CL : %v\n", cs.toString())
}

/* Consistant and relevant */
func TestConstaintes3(t *testing.T) {
	global.SetDebug(true)
	global.SetStart(time.Now())
	initPluginGlobalVariables()
	basictypes.Init()

	global.PrintDebug("MAIN", "Start of the problem")
	f_id := basictypes.MakerId("f")
	x := basictypes.MakerMeta("X", -1)
	fx := basictypes.MakerFun(f_id, []basictypes.Term{x})
	a_id := basictypes.MakerId("a")
	a := basictypes.MakerConst(a_id)

	tp := makeTermPair(fx, a)
	c := MakeConstraint(PREC, tp)
	cs := makeEmptyConstaintStruct()

	lpo.insertTerm(f_id)
	lpo.insertTerm(a_id)

	cs.appendIfConsistant(c)
	fmt.Printf("CL : %v\n", cs.toString())
}

/* First constraint is consistnt, second not with the first one */
func TestConstaintes4(t *testing.T) {
	global.SetDebug(true)
	global.SetStart(time.Now())
	initPluginGlobalVariables()
	basictypes.Init()

	global.PrintDebug("MAIN", "Start of the problem")
	f_id := basictypes.MakerId("f")
	x := basictypes.MakerMeta("X", -1)
	fx := basictypes.MakerFun(f_id, []basictypes.Term{x})
	// ffx := basictypes.MakerFun(f_id, []basictypes.Term{fx})
	a_id := basictypes.MakerId("a")
	a := basictypes.MakerConst(a_id)

	tp := makeTermPair(fx, a)
	c := MakeConstraint(PREC, tp)
	cs := makeEmptyConstaintStruct()

	lpo.insertTerm(f_id)
	lpo.insertTerm(a_id)

	cs.appendIfConsistant(c)
	fmt.Printf("CL : %v\n", cs.toString())

	tp2 := makeTermPair(a, fx)
	c2 := MakeConstraint(PREC, tp2)

	cs.appendIfConsistant(c2)
	fmt.Printf("CL : %v\n", cs.toString())

	/*
	* On accepte les cas comme f(f(x)) < a et a < f(x)
	 */
}

/* Not consistant */
func TestConstaintes5(t *testing.T) {
	global.SetDebug(true)
	global.SetStart(time.Now())
	initPluginGlobalVariables()
	basictypes.Init()

	global.PrintDebug("MAIN", "Start of the problem")
	f_id := basictypes.MakerId("f")
	a_id := basictypes.MakerId("a")
	a := basictypes.MakerConst(a_id)
	b_id := basictypes.MakerId("b")
	b := basictypes.MakerConst(b_id)
	c_id := basictypes.MakerId("c")
	c := basictypes.MakerConst(c_id)
	fab := basictypes.MakerFun(f_id, []basictypes.Term{a, b})
	fbc := basictypes.MakerFun(f_id, []basictypes.Term{b, c})
	f_fab_c := basictypes.MakerFun(f_id, []basictypes.Term{fab, c})
	f_a_fbc := basictypes.MakerFun(f_id, []basictypes.Term{a, fbc})

	tp := makeTermPair(f_fab_c, f_a_fbc)
	cst := MakeConstraint(PREC, tp)
	cs := makeEmptyConstaintStruct()

	lpo.insertTerm(c_id)
	lpo.insertTerm(b_id)
	lpo.insertTerm(a_id)
	lpo.insertTerm(f_id)

	cs.appendIfConsistant(cst)
	fmt.Printf("CL : %v\n", cs.toString())
}

/* Consistant but not relevant */
func TestConstaintes6(t *testing.T) {
	global.SetDebug(true)
	global.SetStart(time.Now())
	initPluginGlobalVariables()
	basictypes.Init()

	global.PrintDebug("MAIN", "Start of the problem")
	f_id := basictypes.MakerId("f")
	a_id := basictypes.MakerId("a")
	a := basictypes.MakerConst(a_id)
	b_id := basictypes.MakerId("b")
	b := basictypes.MakerConst(b_id)
	c_id := basictypes.MakerId("c")
	c := basictypes.MakerConst(c_id)
	fab := basictypes.MakerFun(f_id, []basictypes.Term{a, b})
	fbc := basictypes.MakerFun(f_id, []basictypes.Term{b, c})
	f_fab_c := basictypes.MakerFun(f_id, []basictypes.Term{fab, c})
	f_a_fbc := basictypes.MakerFun(f_id, []basictypes.Term{a, fbc})

	tp := makeTermPair(f_a_fbc, f_fab_c)
	cst := MakeConstraint(PREC, tp)
	cs := makeEmptyConstaintStruct()

	lpo.insertTerm(c_id)
	lpo.insertTerm(b_id)
	lpo.insertTerm(a_id)
	lpo.insertTerm(f_id)

	global.PrintDebug("MAIN", fmt.Sprintf("LPO : %v", lpo.toString()))
	cs.appendIfConsistant(cst)
	fmt.Printf("CL : %v\n", cs.toString())
}

/* consistant but not relevant */
func TestConstaintes7(t *testing.T) {
	global.SetDebug(true)
	global.SetStart(time.Now())
	initPluginGlobalVariables()
	basictypes.Init()

	global.PrintDebug("MAIN", "Start of the problem")
	f_id := basictypes.MakerId("f")
	x := basictypes.MakerMeta("X", -1)
	y := basictypes.MakerMeta("Y", -1)
	z := basictypes.MakerMeta("Z", -1)
	fxy := basictypes.MakerFun(f_id, []basictypes.Term{x, y})
	fyz := basictypes.MakerFun(f_id, []basictypes.Term{y, z})
	f_fxy_z := basictypes.MakerFun(f_id, []basictypes.Term{fxy, z})
	f_x_fyz := basictypes.MakerFun(f_id, []basictypes.Term{x, fyz})

	tp := makeTermPair(f_x_fyz, f_fxy_z)
	cst := MakeConstraint(PREC, tp)
	cs := makeEmptyConstaintStruct()

	lpo.insertTerm(f_id)

	global.PrintDebug("MAIN", fmt.Sprintf("LPO : %v", lpo.toString()))
	cs.appendIfConsistant(cst)
	fmt.Printf("CL : %v\n", cs.toString())
}
