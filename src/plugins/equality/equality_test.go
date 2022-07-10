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
var d_id basictypes.Id
var c1_id basictypes.Id
var c2_id basictypes.Id

// Meta
var x basictypes.Meta
var y basictypes.Meta
var z basictypes.Meta
var z1 basictypes.Meta
var z2 basictypes.Meta
var z3 basictypes.Meta

// Const
var a basictypes.Fun
var b basictypes.Fun
var c basictypes.Fun
var d basictypes.Fun
var c1 basictypes.Fun
var c2 basictypes.Fun

// Fun
var gx basictypes.Fun
var ga basictypes.Fun
var fx basictypes.Fun
var fy basictypes.Fun
var fa basictypes.Fun

var ggx basictypes.Fun
var gga basictypes.Fun
var gfy basictypes.Fun
var gfa basictypes.Fun
var fxy basictypes.Fun
var fyz basictypes.Fun
var ffx basictypes.Fun
var fab basictypes.Fun
var fbc basictypes.Fun

var gggx basictypes.Fun

var f_fxy_z basictypes.Fun
var f_x_fyz basictypes.Fun
var f_fab_c basictypes.Fun
var f_a_fbc basictypes.Fun

// Equalities
var eq_x_y basictypes.Pred
var eq_x_a basictypes.Pred
var eq_z1_c1 basictypes.Pred
var eq_z1_c2 basictypes.Pred
var eq_z2_c1 basictypes.Pred
var eq_z3_c1 basictypes.Pred
var eq_gx_fx basictypes.Pred
var eq_ggx_x basictypes.Pred
var eq_gfy_y basictypes.Pred
var eq_fa_a basictypes.Pred
var eq_b_c basictypes.Pred
var eq_a_b basictypes.Pred

// Inequalites
var neq_x_a basictypes.Form
var neq_a_b basictypes.Form
var neq_a_d basictypes.Form
var neq_gggx_x basictypes.Form

// Form
var pggab basictypes.Form
var pac basictypes.Form
var pa basictypes.Form
var pb basictypes.Form
var not_pc basictypes.Form

func initTestVariable() {
	// Id
	p_id = basictypes.MakerId("P")
	g_id = basictypes.MakerId("g")
	f_id = basictypes.MakerId("f")
	a_id = basictypes.MakerId("a")
	b_id = basictypes.MakerId("b")
	c_id = basictypes.MakerId("c")
	d_id = basictypes.MakerId("d")
	c1_id = basictypes.MakerId("c1")
	c2_id = basictypes.MakerId("c2")

	// Meta
	x = basictypes.MakerMeta("X", -1)
	y = basictypes.MakerMeta("Y", -1)
	z = basictypes.MakerMeta("Z", -1)
	z1 = basictypes.MakerMeta("Z1", -1)
	z2 = basictypes.MakerMeta("Z2", -1)
	z3 = basictypes.MakerMeta("Z3", -1)

	// Const
	a = basictypes.MakerConst(a_id)
	b = basictypes.MakerConst(b_id)
	c = basictypes.MakerConst(c_id)
	d = basictypes.MakerConst(d_id)
	c1 = basictypes.MakerConst(c1_id)
	c2 = basictypes.MakerConst(c2_id)

	// Fun
	gx = basictypes.MakerFun(g_id, []basictypes.Term{x})
	ga = basictypes.MakerFun(g_id, []basictypes.Term{a})
	fx = basictypes.MakerFun(f_id, []basictypes.Term{x})
	fy = basictypes.MakerFun(f_id, []basictypes.Term{y})
	fa = basictypes.MakerFun(f_id, []basictypes.Term{a})

	ggx = basictypes.MakerFun(g_id, []basictypes.Term{gx})
	gga = basictypes.MakerFun(g_id, []basictypes.Term{ga})
	gfy = basictypes.MakerFun(g_id, []basictypes.Term{fy})
	gfa = basictypes.MakerFun(g_id, []basictypes.Term{fa})
	fxy = basictypes.MakerFun(f_id, []basictypes.Term{x, y})
	fyz = basictypes.MakerFun(f_id, []basictypes.Term{y, z})
	ffx = basictypes.MakerFun(f_id, []basictypes.Term{fx})
	fab = basictypes.MakerFun(f_id, []basictypes.Term{a, b})
	fbc = basictypes.MakerFun(f_id, []basictypes.Term{b, c})

	gggx = basictypes.MakerFun(g_id, []basictypes.Term{ggx})

	f_fxy_z = basictypes.MakerFun(f_id, []basictypes.Term{fxy, z})
	f_x_fyz = basictypes.MakerFun(f_id, []basictypes.Term{x, fyz})
	f_fab_c = basictypes.MakerFun(f_id, []basictypes.Term{fab, c})
	f_a_fbc = basictypes.MakerFun(f_id, []basictypes.Term{a, fbc})

	// Equalities
	eq_x_y = basictypes.MakerPred(basictypes.Id_eq, []basictypes.Term{x, y})
	eq_x_a = basictypes.MakerPred(basictypes.Id_eq, []basictypes.Term{x, a})
	eq_z1_c1 = basictypes.MakerPred(basictypes.Id_eq, []basictypes.Term{z1, c1})
	eq_z1_c2 = basictypes.MakerPred(basictypes.Id_eq, []basictypes.Term{z1, c2})
	eq_z2_c1 = basictypes.MakerPred(basictypes.Id_eq, []basictypes.Term{z2, c1})
	eq_z3_c1 = basictypes.MakerPred(basictypes.Id_eq, []basictypes.Term{z3, c1})

	eq_ggx_x = basictypes.MakerPred(basictypes.Id_eq, []basictypes.Term{ggx, fa})
	eq_gfy_y = basictypes.MakerPred(basictypes.Id_eq, []basictypes.Term{gfy, y})
	eq_gx_fx = basictypes.MakerPred(basictypes.Id_eq, []basictypes.Term{gx, fx})
	eq_fa_a = basictypes.MakerPred(basictypes.Id_eq, []basictypes.Term{fa, a})
	eq_a_b = basictypes.MakerPred(basictypes.Id_eq, []basictypes.Term{a, b})
	eq_b_c = basictypes.MakerPred(basictypes.Id_eq, []basictypes.Term{b, c})

	// Inequalites
	neq_x_a = basictypes.MakerNot(basictypes.MakerPred(basictypes.Id_eq, []basictypes.Term{x, a}))
	neq_a_b = basictypes.MakerNot(basictypes.MakerPred(basictypes.Id_eq, []basictypes.Term{a, b}))
	neq_a_d = basictypes.MakerNot(basictypes.MakerPred(basictypes.Id_eq, []basictypes.Term{a, d}))
	neq_gggx_x = basictypes.MakerNot(basictypes.MakerPred(basictypes.Id_eq, []basictypes.Term{gggx, x}))

	// Predicates
	pggab = basictypes.MakerPred(p_id, []basictypes.Term{gga, b})
	pac = basictypes.MakerNot(basictypes.MakerPred(p_id, []basictypes.Term{a, c}))
	pa = basictypes.MakerPred(p_id, []basictypes.Term{a})
	pb = basictypes.MakerPred(p_id, []basictypes.Term{b})
	not_pc = basictypes.RefuteForm(basictypes.MakerPred(p_id, []basictypes.Term{c}))

	lpo.insertTerm(p_id)
	lpo.insertTerm(g_id)
	lpo.insertTerm(f_id)
	lpo.insertTerm(c2_id)
	lpo.insertTerm(c1_id)
	lpo.insertTerm(d_id)
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
	basictypes.Init()
	initPluginGlobalVariables()
	initTestVariable()
	global.SetDebug(true)
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
	* Solutions : (X, g(a)), (X, g(f(a)))
	**/

	lf := basictypes.FormList{eq_fa_a, eq_ggx_x, neq_gggx_x}
	tp, tn = initCodeTreesTests(lf)
	res, subst := EqualityReasoning(tp, tn, lf)

	expected_subst_1 := treetypes.MakeEmptySubstitution()
	expected_subst_1[x] = ga

	expected_subst_2 := treetypes.MakeEmptySubstitution()
	expected_subst_2[x] = gfa

	if !res || len(subst) > 2 || len(subst) < 1 ||
		(!subst[0].Equals(expected_subst_1) && !subst[0].Equals(expected_subst_2)) ||
		(len(subst) == 2 && !subst[1].Equals(expected_subst_1) && !subst[0].Equals(expected_subst_2)) {
		t.Fatalf("Error: %v - %v is not the expected substitution. expected : %v or %v", res, treetypes.SubstListToString(subst), expected_subst_1.ToString(), expected_subst_2.ToString())
	}
}

func TestEQ2(t *testing.T) {
	/**
	* Eq :
	* b = c
	* gx = fx
	* gfy = y
	*
	* Problem : pb, ~pc
	*
	* Solutions : {} or X = Y
	**/

	lf := basictypes.FormList{eq_b_c, eq_gx_fx, eq_gfy_y, pb, not_pc}
	tp, tn = initCodeTreesTests(lf)
	res, subst := EqualityReasoning(tp, tn, lf)

	expected_subst_1 := treetypes.MakeEmptySubstitution()
	expected_subst_1[x] = y

	expected_subst_2 := treetypes.MakeEmptySubstitution()

	if !res || len(subst) > 2 || len(subst) < 1 ||
		(!subst[0].Equals(expected_subst_1) && !subst[0].Equals(expected_subst_2)) ||
		(len(subst) == 2 && !subst[1].Equals(expected_subst_1) && !subst[0].Equals(expected_subst_2)) {
		t.Fatalf("Error: %v - %v is not the expected substitution. expected : %v or %v", res, treetypes.SubstListToString(subst), expected_subst_1.ToString(), expected_subst_2.ToString())
	}
}

func TestEQ3(t *testing.T) {
	/**
	* Eq :
	* b = c
	* gx = fx
	* gfy = y
	*
	* Problem : pggab, pac
	*
	* Solutions : {(X,a) (Y,a)}
	**/

	lf := basictypes.FormList{eq_b_c, eq_gx_fx, eq_gfy_y, pggab, pac}
	tp, tn = initCodeTreesTests(lf)
	res, subst := EqualityReasoning(tp, tn, lf)

	expected_subst := treetypes.MakeEmptySubstitution()
	expected_subst[x] = a
	expected_subst[y] = a

	if !res || len(subst) != 1 || !subst[0].Equals(expected_subst) {
		t.Fatalf("Error: %v - %v is not the expected substitution. expected : %v", res, treetypes.SubstListToString(subst), expected_subst.ToString())
	}
}

func TestEQ4(t *testing.T) {
	/**
	* Eq :
	* b = c
	* gfy = y
	* x != a
	*
	* Problem : pggab, pac
	*
	* Solutions : {(X,a)}
	**/

	lf := basictypes.FormList{eq_b_c, eq_gfy_y, neq_x_a, pggab, pac}
	tp, tn = initCodeTreesTests(lf)
	global.PrintDebug("PT", "Tree pos")
	tp.Print()
	global.PrintDebug("PT", "Tree neg")
	tn.Print()
	res, subst := EqualityReasoning(tp, tn, lf)

	expected_subst := treetypes.MakeEmptySubstitution()
	expected_subst[x] = a

	if !res || len(subst) != 1 || !subst[0].Equals(expected_subst) {
		t.Fatalf("Error: %v - %v - %v is not the expected substitution. expected : %v", res, len(subst), treetypes.SubstListToString(subst), expected_subst.ToString())
	}

}

func TestEQ5(t *testing.T) {
	/**
	* Eq :
	* Z1 = c1
	* Z2 = c1
	*
	* Problem : a != b
	*
	* Solutions : {(Z1,a) (Z2,b)} ou {(Z1, b) (Z2, a)}
	**/

	lf := basictypes.FormList{eq_z1_c1, eq_z2_c1, neq_a_b}
	tp, tn = initCodeTreesTests(lf)
	res, subst := EqualityReasoning(tp, tn, lf)

	expected_subst_1 := treetypes.MakeEmptySubstitution()
	expected_subst_1[z1] = a
	expected_subst_1[z2] = b

	expected_subst_2 := treetypes.MakeEmptySubstitution()
	expected_subst_2[z1] = b
	expected_subst_2[z2] = a

	if !res || len(subst) != 1 || (!subst[0].Equals(expected_subst_1) && !subst[0].Equals(expected_subst_2)) {
		t.Fatalf("Error: %v -  %v is not the expected substitution. expected : %v or %v", res, treetypes.SubstListToString(subst), expected_subst_1.ToString(), expected_subst_2.ToString())
	}

}

func TestEQ6(t *testing.T) {
	/* 18 solutions si on les cherche toutes */
	/* {<[Z1 ≈ c2, Z2 ≈ c1, Z3 ≈ c1], b, c> • {}}
	 *  {<[Z1 ≈ c2, Z2 ≈ c1, Z3 ≈ c1], a, c> • {}}
	 * {<[Z1 ≈ c2, Z2 ≈ c1, Z3 ≈ c1], a, b> • {}}
	 *
	 * EQ :
	 * Z1 = c2
	 * Z2 = c1
	 * Z3 = c1
	 *
	 * Neq :
	 * a != b
	 *
	 * Form :
	 * P(a)
	 * P(b)
	 * ~P(c)
	 *
	 * 3 Solutions (1 par problème d'égalité): Z2 et Z3 font l'égalité (Z2 = a et Z3 = b si on cherche (a, b) par exemple, ou le contraire)
	 * (Z2 = b et Z3 = c) (ou l'inverse)
	 * (Z2 = a et Z3 = c) (ou l'inverse)
	 * (Z2 = a et Z3 = b) (ou l'inverse)
	 *
	 **/

	lf := basictypes.FormList{pa, pb, not_pc, neq_a_b, eq_z1_c2, eq_z2_c1, eq_z3_c1}
	tp, tn = initCodeTreesTests(lf)
	res, subst := EqualityReasoning(tp, tn, lf)

	expected_subst_1 := treetypes.MakeEmptySubstitution()
	expected_subst_1[z2] = b
	expected_subst_1[z3] = c

	expected_subst_1_bis := treetypes.MakeEmptySubstitution()
	expected_subst_1_bis[z2] = c
	expected_subst_1_bis[z3] = b

	expected_subst_2 := treetypes.MakeEmptySubstitution()
	expected_subst_2[z2] = a
	expected_subst_2[z3] = c

	expected_subst_2_bis := treetypes.MakeEmptySubstitution()
	expected_subst_2_bis[z2] = c
	expected_subst_2_bis[z3] = a

	expected_subst_3 := treetypes.MakeEmptySubstitution()
	expected_subst_3[z2] = a
	expected_subst_3[z3] = b

	expected_subst_3_bis := treetypes.MakeEmptySubstitution()
	expected_subst_3_bis[z2] = b
	expected_subst_3_bis[z3] = a

	if !res || len(subst) != 3 {
		t.Fatalf("Error: %v -  %v is not the expected substitution. Expected true and 3", res, len(subst))
	}

	if !subst[0].Equals(expected_subst_1) &&
		!subst[0].Equals(expected_subst_1_bis) &&
		!subst[0].Equals(expected_subst_2) &&
		!subst[0].Equals(expected_subst_2_bis) &&
		!subst[0].Equals(expected_subst_3) &&
		!subst[0].Equals(expected_subst_3_bis) {
		t.Fatalf("Error: %v is not the expected substitution. Expected : %v or %v or %v", subst[0].ToString(), expected_subst_1.ToString(), expected_subst_2.ToString(), expected_subst_3.ToString())
	}

	if !subst[1].Equals(expected_subst_1) &&
		!subst[1].Equals(expected_subst_1_bis) &&
		!subst[1].Equals(expected_subst_2) &&
		!subst[1].Equals(expected_subst_2_bis) &&
		!subst[1].Equals(expected_subst_3) &&
		!subst[1].Equals(expected_subst_3_bis) {
		t.Fatalf("Error: %v is not the expected substitution. Expected : %v or %v or %v", subst[1].ToString(), expected_subst_1.ToString(), expected_subst_2.ToString(), expected_subst_3.ToString())
	}

	if !subst[2].Equals(expected_subst_1) &&
		!subst[2].Equals(expected_subst_1_bis) &&
		!subst[2].Equals(expected_subst_2) &&
		!subst[2].Equals(expected_subst_2_bis) &&
		!subst[2].Equals(expected_subst_3) &&
		!subst[2].Equals(expected_subst_3_bis) {
		t.Fatalf("Error: %v is not the expected substitution. Expected : %v or %v or %v", subst[2].ToString(), expected_subst_1.ToString(), expected_subst_2.ToString(), expected_subst_3.ToString())
	}

}

func TestEQ7(t *testing.T) {
	/**
	* Eq :
	* a = b
	*
	* Problem : a, b
	*
	* Solutions : {}
	**/

	lf := basictypes.FormList{eq_a_b, neq_a_b}
	tp, tn = initCodeTreesTests(lf)
	res, subst := EqualityReasoning(tp, tn, lf)

	if !res || len(subst) != 1 || !subst[0].Equals(treetypes.MakeEmptySubstitution()) {
		t.Fatalf("Error: %v - %v is not the expected substitution. Expected empty solution", res, treetypes.SubstListToString(subst))
	}
}

func TestEQ8(t *testing.T) {
	/**
	* EQ
	* a = b
	* b = c
	*
	* NEQ:
	* a != d
	*
	* Check if a rule is not applied miltiple times (once in the rigt branch, not in the left one)
	*
	**/
	lf := basictypes.FormList{eq_a_b, eq_b_c, neq_a_d}
	tp, tn = initCodeTreesTests(lf)
	res, subst := EqualityReasoning(tp, tn, lf)

	if res {
		t.Fatalf("Error: %v - %v is not the expected solution. Expected no solution", res, treetypes.SubstListToString(subst))
	}

}

/* Test apply substitution */

func TestAS(t *testing.T) {
	/**
	* Problème : <[X = Y], X, Y>
	* Substitution : (Y, a)
	**/

	// Original problem
	lf := basictypes.FormList{eq_x_y}
	tp, tn = initCodeTreesTests(lf)
	eq := retrieveEqualities(tp.Copy())
	ep := makeEqualityProblem(eq, x, y, makeEmptyConstaintStruct())

	// Expected problem
	lf2 := basictypes.FormList{eq_x_a}
	tp, tn = initCodeTreesTests(lf2)
	eq2 := retrieveEqualities(tp.Copy())
	expected_ep := makeEqualityProblem(eq2, x, a, makeEmptyConstaintStruct())

	s := treetypes.MakeEmptySubstitution()
	s[y] = a
	new_ep := ep.applySubstitution(s)

	global.SetDebug(true)
	global.PrintDebug("TEST_AS", fmt.Sprintf("Current EP : %v", new_ep.toString()))
	global.PrintDebug("TEST_AS", fmt.Sprintf("Expected : %v", expected_ep.toString()))
	global.SetDebug(false)
}

/*** Test constraints ***/
func TestConstraints1(t *testing.T) {
	/* Not consistant */
	tp_ffx_x := makeTermPair(ffx, x)
	constraint_ffx_x := MakeConstraint(PREC, tp_ffx_x)
	cs := makeEmptyConstaintStruct()
	append := cs.appendIfConsistant(constraint_ffx_x)

	if append || len(cs.getPrec()) > 0 {
		t.Fatalf("Error: %v and %v is not the expected PREC list. Expected not consistant and empty PREC list", append, cs.getPrec().toString())
	}
}

func TestConstraints2(t *testing.T) {
	/* Consistant but useless */
	tp_x_ffx := makeTermPair(x, ffx)
	constraint_x_ffx := MakeConstraint(PREC, tp_x_ffx)
	cs := makeEmptyConstaintStruct()
	append := cs.appendIfConsistant(constraint_x_ffx)

	if !append || len(cs.getPrec()) > 0 {
		t.Fatalf("Error: %v and %v is not the expected PREC list. Expected consistant and empty PREC list", append, cs.getPrec().toString())
	}
}

func TestConstraints3(t *testing.T) {
	/* Consistant and relevant */

	tp_fx_a := makeTermPair(fx, a)
	constraint_fx_a := MakeConstraint(PREC, tp_fx_a)
	cs := makeEmptyConstaintStruct()

	append := cs.appendIfConsistant(constraint_fx_a)
	if !append || len(cs.getPrec()) != 1 || !cs.getPrec()[0].equals(constraint_fx_a) {
		t.Fatalf("Error: %v and %v is not the expected PREC list. Expected consistant and %v", append, cs.getPrec().toString(), constraint_fx_a.toString())
	}
}

func TestConstaints4(t *testing.T) {
	/* First constraint is consistnt, second not with the first one */
	/*
	* On accepte les cas comme f(f(x)) < a et a < f(x)
	 */

	tp_fx_a := makeTermPair(fx, a)
	constraint_fx_a := MakeConstraint(PREC, tp_fx_a)
	cs := makeEmptyConstaintStruct()

	res_constraint_1 := cs.appendIfConsistant(constraint_fx_a)
	if !res_constraint_1 || len(cs.getPrec()) != 1 || !cs.getPrec()[0].equals(constraint_fx_a) {
		t.Fatalf("Error: %v and %v is not the expected PREC list. Expected consistant and %v", res_constraint_1, cs.getPrec().toString(), constraint_fx_a.toString())
	}

	tp_a_fx := makeTermPair(a, fx)
	constraint_a_fx := MakeConstraint(PREC, tp_a_fx)
	res_constraint_2 := cs.appendIfConsistant(constraint_a_fx)
	if res_constraint_2 || len(cs.getPrec()) != 1 || !cs.getPrec()[0].equals(constraint_fx_a) {
		t.Fatalf("Error: %v and %v is not the expected PREC list. Expected not consistant and %v", res_constraint_2, cs.getPrec().toString(), constraint_fx_a.toString())
	}

}

func TestConstraints5(t *testing.T) {
	cs := makeEmptyConstaintStruct()

	/* Not consistant */
	tp_ffabc_fafbc := makeTermPair(f_fab_c, f_a_fbc)
	constraint_ffabc_fafbc := MakeConstraint(PREC, tp_ffabc_fafbc)
	res_constraint_1 := cs.appendIfConsistant(constraint_ffabc_fafbc)
	if res_constraint_1 || len(cs.getPrec()) > 0 {
		t.Fatalf("Error: %v and %v is not the expected PREC list. Expected not consistant and empty PREC list", res_constraint_1, cs.getPrec().toString())
	}

	/* Consistant but not relevant */
	tp_fafbc_ffabc := makeTermPair(f_a_fbc, f_fab_c)
	constraint_fafbc_ffabc := MakeConstraint(PREC, tp_fafbc_ffabc)
	res_constraint_2 := cs.appendIfConsistant(constraint_fafbc_ffabc)
	if !res_constraint_2 || len(cs.getPrec()) > 0 {
		t.Fatalf("Error: %v and %v is not the expected PREC list. Expected consistant and empty PREC list", res_constraint_1, cs.getPrec().toString())
	}
}

func TestConstaintes6(t *testing.T) {
	cs := makeEmptyConstaintStruct()

	/* consistant but not relevant */
	tp_fxfyz_ffxyz := makeTermPair(f_x_fyz, f_fxy_z)
	constraint_fafbc_ffabc := MakeConstraint(PREC, tp_fxfyz_ffxyz)
	append := cs.appendIfConsistant(constraint_fafbc_ffabc)
	if !append || len(cs.getPrec()) > 0 {
		t.Fatalf("Error: %v and %v is not the expected PREC list. Expected consistant and empty PREC list", append, cs.getPrec().toString())
	}
}
