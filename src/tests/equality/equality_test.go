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
* This file contains the tests on equality.
**/

package tests_equality

import (
	"os"
	"testing"
	"time"

	treesearch "github.com/GoelandProver/Goeland/code-trees/tree-search"
	treetypes "github.com/GoelandProver/Goeland/code-trees/tree-types"
	equality "github.com/GoelandProver/Goeland/equality/bse"
	"github.com/GoelandProver/Goeland/equality/sateq"
	"github.com/GoelandProver/Goeland/global"
	typing "github.com/GoelandProver/Goeland/polymorphism/typing"
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
var e_id basictypes.Id
var c1_id basictypes.Id
var c2_id basictypes.Id
var h_id basictypes.Id

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
var e basictypes.Fun
var c1 basictypes.Fun
var c2 basictypes.Fun

// Fun
var gx basictypes.Fun
var gy basictypes.Fun
var ga basictypes.Fun
var fx basictypes.Fun
var fy basictypes.Fun
var fa basictypes.Fun
var fb basictypes.Fun
var fc basictypes.Fun
var hx basictypes.Fun

var ggx basictypes.Fun
var gga basictypes.Fun
var gfy basictypes.Fun
var gfa basictypes.Fun
var fxy basictypes.Fun
var fyz basictypes.Fun
var ffx basictypes.Fun
var fxa basictypes.Fun
var fay basictypes.Fun
var fab basictypes.Fun
var fbc basictypes.Fun
var fcd basictypes.Fun
var gab basictypes.Fun
var fgy basictypes.Fun
var ghx basictypes.Fun
var hfab basictypes.Fun
var hgxbffb basictypes.Fun
var gxb basictypes.Fun
var ffb basictypes.Fun
var fdc basictypes.Fun

var gggx basictypes.Fun

var f_fxy_z basictypes.Fun
var f_x_fyz basictypes.Fun
var f_fab_c basictypes.Fun
var f_a_fbc basictypes.Fun

// Equalities
var eq_x_y basictypes.Pred
var eq_x_a basictypes.Pred
var eq_y_a basictypes.Pred
var eq_z1_c1 basictypes.Pred
var eq_z1_c2 basictypes.Pred
var eq_z2_c1 basictypes.Pred
var eq_z3_c1 basictypes.Pred
var eq_gx_fx basictypes.Pred
var eq_ggx_fa basictypes.Pred
var eq_gfy_y basictypes.Pred
var eq_fa_a basictypes.Pred
var eq_b_c basictypes.Pred
var eq_a_b basictypes.Pred
var eq_a_c basictypes.Pred
var eq_b_d basictypes.Pred
var eq_x_d basictypes.Pred
var eq_fx_gab basictypes.Pred
var eq_fy_y basictypes.Pred
var eq_a_ffb basictypes.Pred
var eq_b_fb basictypes.Pred
var eq_fgy_gfy basictypes.Pred
var eq_fdc_a basictypes.Pred

// Inequalites
var neq_x_a basictypes.Form
var neq_y_a basictypes.Form
var neq_a_b basictypes.Form
var neq_a_d basictypes.Form
var neq_gggx_x basictypes.Form
var neq_fx_a basictypes.Form
var neq_fx_x basictypes.Form
var neq_fab_fcd basictypes.Form
var neq_fb_fc basictypes.Form
var neq_hfab_hgxbffb basictypes.Form
var neq_ffb_a basictypes.Form
var neq_x_y basictypes.Form
var neq_ghx_x basictypes.Form
var neq_b_e basictypes.Form
var neq_ga_a basictypes.Form

// Form
var pggab basictypes.Form
var not_pac basictypes.Form
var pa basictypes.Form
var pb basictypes.Form
var not_pc basictypes.Form
var pab basictypes.Form
var pax basictypes.Form
var not_pcd basictypes.Form

func initTestVariable() {
	// Id
	p_id = basictypes.MakerId("P")
	g_id = basictypes.MakerId("g")
	f_id = basictypes.MakerId("f")
	a_id = basictypes.MakerId("a")
	b_id = basictypes.MakerId("b")
	c_id = basictypes.MakerId("c")
	d_id = basictypes.MakerId("d")
	e_id = basictypes.MakerId("e")
	c1_id = basictypes.MakerId("c1")
	c2_id = basictypes.MakerId("c2")
	h_id = basictypes.MakerId("h")

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
	e = basictypes.MakerConst(e_id)
	c1 = basictypes.MakerConst(c1_id)
	c2 = basictypes.MakerConst(c2_id)

	// Fun
	gx = basictypes.MakerFun(g_id, basictypes.NewTermList(x), []typing.TypeApp{})
	gy = basictypes.MakerFun(g_id, basictypes.NewTermList(y), []typing.TypeApp{})
	ga = basictypes.MakerFun(g_id, basictypes.NewTermList(a), []typing.TypeApp{})
	fx = basictypes.MakerFun(f_id, basictypes.NewTermList(x), []typing.TypeApp{})
	fy = basictypes.MakerFun(f_id, basictypes.NewTermList(y), []typing.TypeApp{})
	fa = basictypes.MakerFun(f_id, basictypes.NewTermList(a), []typing.TypeApp{})
	fb = basictypes.MakerFun(f_id, basictypes.NewTermList(b), []typing.TypeApp{})
	fc = basictypes.MakerFun(f_id, basictypes.NewTermList(c), []typing.TypeApp{})
	hx = basictypes.MakerFun(h_id, basictypes.NewTermList(x), []typing.TypeApp{})

	ggx = basictypes.MakerFun(g_id, basictypes.NewTermList(gx), []typing.TypeApp{})
	gga = basictypes.MakerFun(g_id, basictypes.NewTermList(ga), []typing.TypeApp{})
	gfy = basictypes.MakerFun(g_id, basictypes.NewTermList(fy), []typing.TypeApp{})
	gfa = basictypes.MakerFun(g_id, basictypes.NewTermList(fa), []typing.TypeApp{})
	fxy = basictypes.MakerFun(f_id, basictypes.NewTermList(x, y), []typing.TypeApp{})
	fyz = basictypes.MakerFun(f_id, basictypes.NewTermList(y, z), []typing.TypeApp{})
	ffx = basictypes.MakerFun(f_id, basictypes.NewTermList(fx), []typing.TypeApp{})
	fxa = basictypes.MakerFun(f_id, basictypes.NewTermList(x, a), []typing.TypeApp{})
	fay = basictypes.MakerFun(f_id, basictypes.NewTermList(a, y), []typing.TypeApp{})
	fab = basictypes.MakerFun(f_id, basictypes.NewTermList(a, b), []typing.TypeApp{})
	fbc = basictypes.MakerFun(f_id, basictypes.NewTermList(b, c), []typing.TypeApp{})
	fcd = basictypes.MakerFun(f_id, basictypes.NewTermList(c, d), []typing.TypeApp{})
	gab = basictypes.MakerFun(g_id, basictypes.NewTermList(a, b), []typing.TypeApp{})
	hfab = basictypes.MakerFun(h_id, basictypes.NewTermList(fa, b), []typing.TypeApp{})
	gxb = basictypes.MakerFun(g_id, basictypes.NewTermList(x, b), []typing.TypeApp{})
	ffb = basictypes.MakerFun(f_id, basictypes.NewTermList(fb), []typing.TypeApp{})
	fgy = basictypes.MakerFun(f_id, basictypes.NewTermList(gy), []typing.TypeApp{})
	fdc = basictypes.MakerFun(f_id, basictypes.NewTermList(d, c), []typing.TypeApp{})
	ghx = basictypes.MakerFun(h_id, basictypes.NewTermList(hx), []typing.TypeApp{})
	hgxbffb = basictypes.MakerFun(h_id, basictypes.NewTermList(gxb, ffb), []typing.TypeApp{})

	gggx = basictypes.MakerFun(g_id, basictypes.NewTermList(ggx), []typing.TypeApp{})

	f_fxy_z = basictypes.MakerFun(f_id, basictypes.NewTermList(fxy, z), []typing.TypeApp{})
	f_x_fyz = basictypes.MakerFun(f_id, basictypes.NewTermList(x, fyz), []typing.TypeApp{})
	f_fab_c = basictypes.MakerFun(f_id, basictypes.NewTermList(fab, c), []typing.TypeApp{})
	f_a_fbc = basictypes.MakerFun(f_id, basictypes.NewTermList(a, fbc), []typing.TypeApp{})

	// Equalities
	eq_x_y = basictypes.MakerPred(basictypes.Id_eq, basictypes.NewTermList(x, y), []typing.TypeApp{})
	eq_x_a = basictypes.MakerPred(basictypes.Id_eq, basictypes.NewTermList(x, a), []typing.TypeApp{})
	eq_y_a = basictypes.MakerPred(basictypes.Id_eq, basictypes.NewTermList(y, a), []typing.TypeApp{})
	eq_z1_c1 = basictypes.MakerPred(basictypes.Id_eq, basictypes.NewTermList(z1, c1), []typing.TypeApp{})
	eq_z1_c2 = basictypes.MakerPred(basictypes.Id_eq, basictypes.NewTermList(z1, c2), []typing.TypeApp{})
	eq_z2_c1 = basictypes.MakerPred(basictypes.Id_eq, basictypes.NewTermList(z2, c1), []typing.TypeApp{})
	eq_z3_c1 = basictypes.MakerPred(basictypes.Id_eq, basictypes.NewTermList(z3, c1), []typing.TypeApp{})

	eq_ggx_fa = basictypes.MakerPred(basictypes.Id_eq, basictypes.NewTermList(ggx, fa), []typing.TypeApp{})
	eq_gfy_y = basictypes.MakerPred(basictypes.Id_eq, basictypes.NewTermList(gfy, y), []typing.TypeApp{})
	eq_gx_fx = basictypes.MakerPred(basictypes.Id_eq, basictypes.NewTermList(gx, fx), []typing.TypeApp{})
	eq_fa_a = basictypes.MakerPred(basictypes.Id_eq, basictypes.NewTermList(fa, a), []typing.TypeApp{})
	eq_a_b = basictypes.MakerPred(basictypes.Id_eq, basictypes.NewTermList(a, b), []typing.TypeApp{})
	eq_b_c = basictypes.MakerPred(basictypes.Id_eq, basictypes.NewTermList(b, c), []typing.TypeApp{})
	eq_a_c = basictypes.MakerPred(basictypes.Id_eq, basictypes.NewTermList(a, c), []typing.TypeApp{})
	eq_b_d = basictypes.MakerPred(basictypes.Id_eq, basictypes.NewTermList(b, d), []typing.TypeApp{})
	eq_x_d = basictypes.MakerPred(basictypes.Id_eq, basictypes.NewTermList(x, d), []typing.TypeApp{})
	eq_fx_gab = basictypes.MakerPred(basictypes.Id_eq, basictypes.NewTermList(fx, gab), []typing.TypeApp{})
	eq_fy_y = basictypes.MakerPred(basictypes.Id_eq, basictypes.NewTermList(fy, y), []typing.TypeApp{})
	eq_a_ffb = basictypes.MakerPred(basictypes.Id_eq, basictypes.NewTermList(a, ffb), []typing.TypeApp{})
	eq_b_fb = basictypes.MakerPred(basictypes.Id_eq, basictypes.NewTermList(b, fb), []typing.TypeApp{})
	eq_fgy_gfy = basictypes.MakerPred(basictypes.Id_eq, basictypes.NewTermList(fgy, gfy), []typing.TypeApp{})
	eq_fdc_a = basictypes.MakerPred(basictypes.Id_eq, basictypes.NewTermList(fdc, a), []typing.TypeApp{})

	// Inequalites
	neq_x_a = basictypes.MakerNot(basictypes.MakerPred(basictypes.Id_eq, basictypes.NewTermList(x, a), []typing.TypeApp{}))
	neq_y_a = basictypes.MakerNot(basictypes.MakerPred(basictypes.Id_eq, basictypes.NewTermList(y, a), []typing.TypeApp{}))
	neq_a_b = basictypes.MakerNot(basictypes.MakerPred(basictypes.Id_eq, basictypes.NewTermList(a, b), []typing.TypeApp{}))
	neq_a_d = basictypes.MakerNot(basictypes.MakerPred(basictypes.Id_eq, basictypes.NewTermList(a, d), []typing.TypeApp{}))
	neq_gggx_x = basictypes.MakerNot(basictypes.MakerPred(basictypes.Id_eq, basictypes.NewTermList(gggx, x), []typing.TypeApp{}))
	neq_fx_a = basictypes.MakerNot(basictypes.MakerPred(basictypes.Id_eq, basictypes.NewTermList(fx, a), []typing.TypeApp{}))
	neq_fx_x = basictypes.MakerNot(basictypes.MakerPred(basictypes.Id_eq, basictypes.NewTermList(fx, x), []typing.TypeApp{}))
	neq_fab_fcd = basictypes.MakerNot(basictypes.MakerPred(basictypes.Id_eq, basictypes.NewTermList(fab, fcd), []typing.TypeApp{}))
	neq_fb_fc = basictypes.MakerNot(basictypes.MakerPred(basictypes.Id_eq, basictypes.NewTermList(fb, fc), []typing.TypeApp{}))
	neq_hfab_hgxbffb = basictypes.MakerNot(basictypes.MakerPred(basictypes.Id_eq, basictypes.NewTermList(hfab, hgxbffb), []typing.TypeApp{}))
	neq_ffb_a = basictypes.MakerNot(basictypes.MakerPred(basictypes.Id_eq, basictypes.NewTermList(ffb, a), []typing.TypeApp{}))
	neq_x_y = basictypes.MakerNot(basictypes.MakerPred(basictypes.Id_eq, basictypes.NewTermList(x, y), []typing.TypeApp{}))
	neq_ghx_x = basictypes.MakerNot(basictypes.MakerPred(basictypes.Id_eq, basictypes.NewTermList(ghx, x), []typing.TypeApp{}))
	neq_b_e = basictypes.MakerNot(basictypes.MakerPred(basictypes.Id_eq, basictypes.NewTermList(b, e), []typing.TypeApp{}))
	neq_ga_a = basictypes.MakerNot(basictypes.MakerPred(basictypes.Id_eq, basictypes.NewTermList(ga, a), []typing.TypeApp{}))

	// Predicates
	pggab = basictypes.MakerPred(p_id, basictypes.NewTermList(gga, b), []typing.TypeApp{})
	not_pac = basictypes.MakerNot(basictypes.MakerPred(p_id, basictypes.NewTermList(a, c), []typing.TypeApp{}))
	pa = basictypes.MakerPred(p_id, basictypes.NewTermList(a), []typing.TypeApp{})
	pb = basictypes.MakerPred(p_id, basictypes.NewTermList(b), []typing.TypeApp{})
	not_pc = basictypes.RefuteForm(basictypes.MakerPred(p_id, basictypes.NewTermList(c), []typing.TypeApp{}))
	pab = basictypes.MakerPred(p_id, basictypes.NewTermList(a, b), []typing.TypeApp{})
	pax = basictypes.MakerPred(p_id, basictypes.NewTermList(a, x), []typing.TypeApp{})
	not_pcd = basictypes.RefuteForm(basictypes.MakerPred(p_id, basictypes.NewTermList(c, d), []typing.TypeApp{}))
}

func initCodeTreesTests(lf *basictypes.FormList) (datastruct.DataStructure, datastruct.DataStructure) {
	tp = treesearch.NewNode()
	tn = treesearch.NewNode()
	tp = tp.MakeDataStruct(lf, true)
	tn = tn.MakeDataStruct(lf, false)
	return tp, tn
}

var eqStruct = sateq.NewEqStruct()

func initEqualityTest() {
	global.SetStart(time.Now())
	typing.Init()
	basictypes.Init()
	sateq.Enable()
	initTestVariable()
	global.EnableDebug()
}

func checkAllCompatibleWith(areCompatbile []treetypes.Substitutions, with ...treetypes.Substitutions) bool {
	for _, isCompatible := range areCompatbile {
		if !checkSubsIsCompatibleWith(isCompatible, with...) {
			return false
		}
	}

	return true
}

func checkSubsIsCompatibleWith(isCompatible treetypes.Substitutions, with ...treetypes.Substitutions) bool {
	for _, sub := range with {
		if isFirstIncludedInSecond(sub, isCompatible) {
			return true
		}
	}

	return false
}

func isFirstIncludedInSecond(first treetypes.Substitutions, second treetypes.Substitutions) bool {
	secondList := global.NewList(second...)

	for _, firstElement := range first {
		if !secondList.Contains(firstElement) {
			return false
		}
	}

	return true
}

func TestMain(m *testing.M) {
	code := m.Run()
	os.Exit(code)
}

/** Tests equality problem ***/
func TestEQ1(t *testing.T) {
	initEqualityTest()
	/**
	* Eq :
	* fa = a
	* ggx = fa
	*
	* Problem : gggx != x
	*
	* Solutions : (X, g(a)), (X, g(f(a)))
	**/

	lf := basictypes.NewFormList(eq_fa_a, eq_ggx_fa, neq_gggx_x)
	tp, tn = initCodeTreesTests(lf)
	res, subst := equality.EqualityReasoning(eqStruct, tp, tn, lf, 0)

	expectedSubst1 := treetypes.MakeEmptySubstitution()
	expectedSubst1.Set(x, ga)

	expectedSubst2 := treetypes.MakeEmptySubstitution()
	expectedSubst2.Set(x, gfa)

	if !res || !checkAllCompatibleWith(subst, expectedSubst1, expectedSubst2) {
		t.Fatalf("Error: %v - %v is not the expected substitution. expected : %v or %v", res, treetypes.SubstListToString(subst), expectedSubst1.ToString(), expectedSubst2.ToString())
	}
}

func TestEQ2(t *testing.T) {
	initEqualityTest()
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

	lf := basictypes.NewFormList(eq_b_c, eq_gx_fx, eq_gfy_y, pb, not_pc)
	tp, tn = initCodeTreesTests(lf)
	res, subst := equality.EqualityReasoning(eqStruct, tp, tn, lf, 0)

	expectedSubst1 := treetypes.MakeEmptySubstitution()
	expectedSubst1.Set(x, y)

	expectedSubst2 := treetypes.MakeEmptySubstitution()

	if !res || !checkAllCompatibleWith(subst, expectedSubst1, expectedSubst2) {
		t.Fatalf("Error: %v - %v is not the expected substitution. expected : %v or %v", res, treetypes.SubstListToString(subst), expectedSubst1.ToString(), expectedSubst2.ToString())
	}
}

func TestEQ3(t *testing.T) {
	initEqualityTest()
	/**
	* Eq :
	* b = c
	* gx = fx
	* gfy = y
	*
	* Problem : pggab, ~pac
	*
	* Solutions : {(X,a) (Y,a)}, {(X, a) (Y, X)}, {(X, Y) (Y, a)}
	**/

	lf := basictypes.NewFormList(eq_b_c, eq_gx_fx, eq_gfy_y, pggab, not_pac)
	tp, tn = initCodeTreesTests(lf)
	res, subst := equality.EqualityReasoning(eqStruct, tp, tn, lf, 0)

	expectedSubst1 := treetypes.MakeEmptySubstitution()
	expectedSubst1.Set(x, a)
	expectedSubst1.Set(y, a)
	expectedSubst2 := treetypes.MakeEmptySubstitution()
	expectedSubst2.Set(x, a)
	expectedSubst2.Set(y, x)
	expectedSubst3 := treetypes.MakeEmptySubstitution()
	expectedSubst3.Set(x, y)
	expectedSubst3.Set(y, a)

	if !res || !checkAllCompatibleWith(subst, expectedSubst1, expectedSubst2, expectedSubst3) {
		t.Fatalf("Error: %v - %v is not the expected substitution. expected : %v", res, treetypes.SubstListToString(subst), expectedSubst1.ToString())
	}
}

func TestEQ3bis(t *testing.T) {
	initEqualityTest()
	/**
	* Eq :
	* gx = fx
	* fy = y
	*
	* Problem : ga != a
	*
	* Solutions : {(X,a) (Y,a)}, {(X, a) (Y, X)}, {(X, Y) (Y, a)}
	**/

	lf := basictypes.NewFormList(eq_gx_fx, eq_fy_y, neq_ga_a)
	tp, tn = initCodeTreesTests(lf)
	res, subst := equality.EqualityReasoning(eqStruct, tp, tn, lf, 0)

	expectedSubst1 := treetypes.MakeEmptySubstitution()
	expectedSubst1.Set(x, a)
	expectedSubst1.Set(y, a)
	expectedSubst2 := treetypes.MakeEmptySubstitution()
	expectedSubst2.Set(x, a)
	expectedSubst2.Set(y, x)
	expectedSubst3 := treetypes.MakeEmptySubstitution()
	expectedSubst3.Set(x, y)
	expectedSubst3.Set(y, a)

	if !res || !checkAllCompatibleWith(subst, expectedSubst1, expectedSubst2, expectedSubst3) {
		t.Fatalf("Error: %v - %v is not the expected substitution. expected : %v", res, treetypes.SubstListToString(subst), expectedSubst1.ToString())
	}
}

func TestEQ4(t *testing.T) {
	initEqualityTest()
	/**
	* Eq :
	* b = c
	* gfy = y
	* x != a
	*
	* Problem : pggab, ~pac
	*
	* Solutions : {(X,a)}
	**/

	lf := basictypes.NewFormList(eq_b_c, eq_gfy_y, neq_x_a, pggab, not_pac)
	tp, tn = initCodeTreesTests(lf)
	res, subst := equality.EqualityReasoning(eqStruct, tp, tn, lf, 0)

	expectedSubst := treetypes.MakeEmptySubstitution()
	expectedSubst.Set(x, a)

	if !res || !checkAllCompatibleWith(subst, expectedSubst) {
		t.Fatalf("Error: %v - %v - %v is not the expected substitution. expected : %v", res, len(subst), treetypes.SubstListToString(subst), expectedSubst.ToString())
	}
}

func TestEQ5(t *testing.T) {
	initEqualityTest()
	/**
	* Eq :
	* Z1 = c1
	* Z2 = c1
	*
	* Problem : a != b
	*
	* Solutions : {(Z1,a) (Z2,b)} ou {(Z1, b) (Z2, a)}
	**/

	lf := basictypes.NewFormList(eq_z1_c1, eq_z2_c1, neq_a_b)
	tp, tn = initCodeTreesTests(lf)
	res, subst := equality.EqualityReasoning(eqStruct, tp, tn, lf, 0)

	expectedSubst1 := treetypes.MakeEmptySubstitution()
	expectedSubst1.Set(z1, a)
	expectedSubst1.Set(z2, b)

	expectedSubst2 := treetypes.MakeEmptySubstitution()
	expectedSubst2.Set(z1, b)
	expectedSubst2.Set(z2, a)

	if !res || !checkAllCompatibleWith(subst, expectedSubst1, expectedSubst2) {
		t.Fatalf("Error: %v -  %v is not the expected substitution. expected : %v or %v", res, treetypes.SubstListToString(subst), expectedSubst1.ToString(), expectedSubst2.ToString())
	}

}

func TestEQ6(t *testing.T) {
	initEqualityTest()
	/* 18 solutions si on les cherche toutes */
	/* {<[Z1 ≈ c2, Z2 ≈ c1, Z3 ≈ c1], b, c> • {}}
	 *  {<[Z1 ≈ c2, Z2 ≈ c1, Z3 ≈ c1], a, c> • {}}
	 * {<[Z1 ≈ c2, Z2 ≈ c1, Z3 ≈ c1], a, b> • {}}
	 *
	 * Eq :
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

	lf := basictypes.NewFormList(pa, pb, not_pc, neq_a_b, eq_z1_c2, eq_z2_c1, eq_z3_c1)
	tp, tn = initCodeTreesTests(lf)
	res, subst := equality.EqualityReasoning(eqStruct, tp, tn, lf, 0)

	expectedSubst1 := treetypes.MakeEmptySubstitution()
	expectedSubst1.Set(z2, b)
	expectedSubst1.Set(z3, c)

	expectedSubst1Bis := treetypes.MakeEmptySubstitution()
	expectedSubst1Bis.Set(z2, c)
	expectedSubst1Bis.Set(z3, b)

	expectedSubst2 := treetypes.MakeEmptySubstitution()
	expectedSubst2.Set(z2, a)
	expectedSubst2.Set(z3, c)

	expectedSubst2Bis := treetypes.MakeEmptySubstitution()
	expectedSubst2Bis.Set(z2, c)
	expectedSubst2Bis.Set(z3, a)

	expectedSubst3 := treetypes.MakeEmptySubstitution()
	expectedSubst3.Set(z2, a)
	expectedSubst3.Set(z3, b)

	expectedSubst3Bis := treetypes.MakeEmptySubstitution()
	expectedSubst3Bis.Set(z2, b)
	expectedSubst3Bis.Set(z3, a)

	if !res || len(subst) == 0 {
		t.Fatalf("Error: %v -  %v is not the expected substitution. Expected true and 3", res, len(subst))
	}

	if !checkAllCompatibleWith(subst, expectedSubst1, expectedSubst1Bis, expectedSubst2, expectedSubst2Bis, expectedSubst3, expectedSubst3Bis) {
		t.Fatalf("Error: %v is not the expected substitution. Expected : %v or %v or %v", subst[0].ToString(), expectedSubst1.ToString(), expectedSubst2.ToString(), expectedSubst3.ToString())
	}
}

func TestEQ7(t *testing.T) {
	initEqualityTest()
	/**
	* Eq :
	* a = b
	*
	* Problem : a != b
	*
	* Solutions : {}
	**/

	lf := basictypes.NewFormList(eq_a_b, neq_a_b)
	tp, tn = initCodeTreesTests(lf)
	res, subst := equality.EqualityReasoning(eqStruct, tp, tn, lf, 0)

	if !res || !checkAllCompatibleWith(subst, treetypes.MakeEmptySubstitution()) {
		t.Fatalf("Error: %v - %v is not the expected substitution. Expected empty solution", res, treetypes.SubstListToString(subst))
	}
}

func TestEQ8(t *testing.T) {
	initEqualityTest()
	/**
	* Eq :
	* a = b
	*
	* Problem : a != d
	*
	* Solution : N/A
	*
	**/
	lf := basictypes.NewFormList(eq_a_b, neq_a_d)
	tp, tn = initCodeTreesTests(lf)
	res, subst := equality.EqualityReasoning(eqStruct, tp, tn, lf, 0)

	if res {
		t.Fatalf("Error: %v - %v is not the expected solution. Expected no solution", res, treetypes.SubstListToString(subst))
	}

}

func TestImpossible(t *testing.T) {
	initEqualityTest()
	/**
	* Eq :
	* x = d
	*
	* Problem : fx != a
	*
	* Solutions : N/A
	**/

	lf := basictypes.NewFormList(eq_x_d, neq_fx_a)
	tp, tn = initCodeTreesTests(lf)
	res, subst := equality.EqualityReasoning(eqStruct, tp, tn, lf, 0)

	if res {
		t.Fatalf("Error: %v - %v is not the expected solution. Expected no solution", res, treetypes.SubstListToString(subst))
	}
}

func TestSimon(t *testing.T) {
	initEqualityTest()
	/**
	* Eq :
	* x = a
	*
	* Problem : fx != x
	*
	* Solutions : {x -> fa}
	**/

	lf := basictypes.NewFormList(eq_x_a, neq_fx_x)
	tp, tn = initCodeTreesTests(lf)
	res, subst := equality.EqualityReasoning(eqStruct, tp, tn, lf, 0)

	expectedSubst := treetypes.MakeEmptySubstitution()
	expectedSubst.Set(x, fa)

	if !res || !checkAllCompatibleWith(subst, expectedSubst) {
		t.Fatalf("Error: %v - %v - %v is not the expected substitution. expected : %v", res, len(subst), treetypes.SubstListToString(subst), expectedSubst.ToString())
	}
}

func TestSeparation(t *testing.T) {
	initEqualityTest()
	/**
	* Eq :
	* a = c
	* b = d
	*
	* Problem : P(a, b), ~P(c, d)
	*
	* Solutions : {}
	**/

	lf := basictypes.NewFormList(pab, eq_a_c, eq_b_d, not_pcd)
	tp, tn = initCodeTreesTests(lf)
	res, subst := equality.EqualityReasoning(eqStruct, tp, tn, lf, 0)

	if !res || !checkAllCompatibleWith(subst, treetypes.MakeEmptySubstitution()) {
		t.Fatalf("Error: %v - %v is not the expected substitution. Expected empty solution", res, treetypes.SubstListToString(subst))
	}
}

func TestDeuxiemeSeparation(t *testing.T) {
	initEqualityTest()
	/**
	* Eq :
	* P(a, x)
	* a = c
	* b = d
	*
	* Problem : ~P(c, d)
	*
	* Solutions : {x -> d}, {x -> b}
	**/

	lf := basictypes.NewFormList(pax, eq_a_c, eq_b_d, not_pcd)
	tp, tn = initCodeTreesTests(lf)
	res, subst := equality.EqualityReasoning(eqStruct, tp, tn, lf, 0)

	expectedSubst1 := treetypes.MakeEmptySubstitution()
	expectedSubst1.Set(x, d)
	expectedSubst2 := treetypes.MakeEmptySubstitution()
	expectedSubst2.Set(x, b)

	if !res || !checkAllCompatibleWith(subst, expectedSubst1, expectedSubst2) {
		t.Fatalf("Error: %v - %v - %v is not the expected substitution. expected : %v", res, len(subst), treetypes.SubstListToString(subst), expectedSubst1.ToString())
	}
}

func TestMultiListes(t *testing.T) {
	initEqualityTest()
	/**
	* Eq :
	* P(a, x)
	* P(a, b)
	* a = c
	* b = d
	*
	* Problem : ~P(c, d)
	*
	* Solutions : {}, {x -> d}, {x -> b}
	**/

	lf := basictypes.NewFormList(pax, pab, eq_a_c, eq_b_d, not_pcd)
	tp, tn = initCodeTreesTests(lf)
	res, subst := equality.EqualityReasoning(eqStruct, tp, tn, lf, 0)

	expectedSubst1 := treetypes.MakeEmptySubstitution()
	expectedSubst1.Set(x, d)
	expectedSubst2 := treetypes.MakeEmptySubstitution()
	expectedSubst2.Set(x, b)
	expectedSubst3 := treetypes.MakeEmptySubstitution()

	if !res || !checkAllCompatibleWith(subst, expectedSubst1, expectedSubst2, expectedSubst3) {
		t.Fatalf("Error: %v - %v - %v is not the expected substitution. expected : %v", res, len(subst), treetypes.SubstListToString(subst), expectedSubst1.ToString())
	}
}

func TestSubsEnMeta(t *testing.T) {
	initEqualityTest()
	/**
	* Eq :
	* X = a
	*
	* Problem : a = Y
	*
	* Solutions : {X -> Y}, {Y -> X}, {Y -> a}
	**/

	lf := basictypes.NewFormList(eq_x_a, neq_y_a)
	tp, tn = initCodeTreesTests(lf)
	res, subst := equality.EqualityReasoning(eqStruct, tp, tn, lf, 0)

	expectedSubst1 := treetypes.MakeEmptySubstitution()
	expectedSubst1.Set(x, y)
	expectedSubst2 := treetypes.MakeEmptySubstitution()
	expectedSubst2.Set(y, x)
	expectedSubst3 := treetypes.MakeEmptySubstitution()
	expectedSubst3.Set(y, a)

	if !res || !checkAllCompatibleWith(subst, expectedSubst1, expectedSubst2, expectedSubst3) {
		t.Fatalf("Error: %v - %v - %v is not the expected substitution. expected : %v", res, len(subst), treetypes.SubstListToString(subst), expectedSubst1.ToString())
	}
}

func TestContreExemple(t *testing.T) {
	initEqualityTest()
	/**
	* Eq :
	* x = a
	* y = a
	* P(b)
	*
	* Problem : ~P(c)
	*
	* Solutions : {x -> b, y -> c}
	**/

	lf := basictypes.NewFormList(eq_x_a, eq_y_a, pb, not_pc)
	tp, tn = initCodeTreesTests(lf)
	res, subst := equality.EqualityReasoning(eqStruct, tp, tn, lf, 0)

	expectedSubst := treetypes.MakeEmptySubstitution()
	expectedSubst.Set(x, b)
	expectedSubst.Set(y, c)
	expectedSubstBis := treetypes.MakeEmptySubstitution()
	expectedSubstBis.Set(x, c)
	expectedSubstBis.Set(y, b)

	if !res || !checkAllCompatibleWith(subst, expectedSubst, expectedSubstBis) {
		t.Fatalf("Error: %v - %v - %v is not the expected substitution. expected : %v", res, len(subst), treetypes.SubstListToString(subst), expectedSubst.ToString())
	}
}

func TestCycle(t *testing.T) {
	initEqualityTest()
	/**
	* Eq :
	* f(g(Y)) = g(f(y))
	*
	* Problem : g(h(X)) = X
	*
	* Solutions : N/A
	**/

	lf := basictypes.NewFormList(eq_fgy_gfy, neq_ghx_x)
	tp, tn = initCodeTreesTests(lf)
	res, subst := equality.EqualityReasoning(eqStruct, tp, tn, lf, 0)

	if res {
		t.Fatalf("Error: %v - %v is not the expected solution. Expected no solution", res, treetypes.SubstListToString(subst))
	}
}

func TestTemp(t *testing.T) {
	initEqualityTest()
	/**
	* Eq :
	* f(d, c) = a
	* X = d
	*
	* Problem : b = e
	*
	* Solutions : N/A
	**/

	lf := basictypes.NewFormList(eq_fdc_a, eq_x_d, neq_b_e)
	tp, tn = initCodeTreesTests(lf)
	res, subst := equality.EqualityReasoning(eqStruct, tp, tn, lf, 0)

	if res {
		t.Fatalf("Error: %v - %v is not the expected solution. Expected no solution", res, treetypes.SubstListToString(subst))
	}
}
