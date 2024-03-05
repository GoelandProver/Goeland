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

package equality

import (
	"fmt"
	"os"
	"testing"
	"time"

	treesearch "github.com/GoelandProver/Goeland/code-trees/tree-search"
	treetypes "github.com/GoelandProver/Goeland/code-trees/tree-types"
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
var fb basictypes.Fun
var fc basictypes.Fun

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

// Inequalites
var neq_x_a basictypes.Form
var neq_a_b basictypes.Form
var neq_a_d basictypes.Form
var neq_gggx_x basictypes.Form
var neq_fx_a basictypes.Form
var neq_fx_x basictypes.Form
var neq_fab_fcd basictypes.Form
var neq_fb_fc basictypes.Form

// Form
var pggab basictypes.Form
var pac basictypes.Form
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
	gx = basictypes.MakerFun(g_id, basictypes.NewTermList(x), []typing.TypeApp{})
	ga = basictypes.MakerFun(g_id, basictypes.NewTermList(a), []typing.TypeApp{})
	fx = basictypes.MakerFun(f_id, basictypes.NewTermList(x), []typing.TypeApp{})
	fy = basictypes.MakerFun(f_id, basictypes.NewTermList(y), []typing.TypeApp{})
	fa = basictypes.MakerFun(f_id, basictypes.NewTermList(a), []typing.TypeApp{})
	fb = basictypes.MakerFun(f_id, basictypes.NewTermList(b), []typing.TypeApp{})
	fc = basictypes.MakerFun(f_id, basictypes.NewTermList(c), []typing.TypeApp{})

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

	// Inequalites
	neq_x_a = basictypes.MakerNot(basictypes.MakerPred(basictypes.Id_eq, basictypes.NewTermList(x, a), []typing.TypeApp{}))
	neq_a_b = basictypes.MakerNot(basictypes.MakerPred(basictypes.Id_eq, basictypes.NewTermList(a, b), []typing.TypeApp{}))
	neq_a_d = basictypes.MakerNot(basictypes.MakerPred(basictypes.Id_eq, basictypes.NewTermList(a, d), []typing.TypeApp{}))
	neq_gggx_x = basictypes.MakerNot(basictypes.MakerPred(basictypes.Id_eq, basictypes.NewTermList(gggx, x), []typing.TypeApp{}))
	neq_fx_a = basictypes.MakerNot(basictypes.MakerPred(basictypes.Id_eq, basictypes.NewTermList(fx, a), []typing.TypeApp{}))
	neq_fx_x = basictypes.MakerNot(basictypes.MakerPred(basictypes.Id_eq, basictypes.NewTermList(fx, x), []typing.TypeApp{}))
	neq_fab_fcd = basictypes.MakerNot(basictypes.MakerPred(basictypes.Id_eq, basictypes.NewTermList(fab, fcd), []typing.TypeApp{}))
	neq_fb_fc = basictypes.MakerNot(basictypes.MakerPred(basictypes.Id_eq, basictypes.NewTermList(fb, fc), []typing.TypeApp{}))

	// Predicates
	pggab = basictypes.MakerPred(p_id, basictypes.NewTermList(gga, b), []typing.TypeApp{})
	pac = basictypes.MakerNot(basictypes.MakerPred(p_id, basictypes.NewTermList(a, c), []typing.TypeApp{}))
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

func TestMain(m *testing.M) {
	global.SetStart(time.Now())
	typing.Init()
	basictypes.Init()
	initTestVariable()
	global.EnableDebug()
	code := m.Run()
	os.Exit(code)
}

/* Test apply substitution */

func TestAS(t *testing.T) {
	/**
	* Problème : <[X = Y], X, Y>
	* Substitution : (Y, a)
	**/

	// Original problem
	lf := basictypes.NewFormList(eq_x_y)
	tp, tn = initCodeTreesTests(lf)
	eq := retrieveEqualities(tp.Copy())
	ep := makeEqualityProblem(eq, x, y, makeEmptyConstraintStruct())

	// Expected problem
	lf2 := basictypes.NewFormList(eq_x_a)
	tp, tn = initCodeTreesTests(lf2)
	eq2 := retrieveEqualities(tp.Copy())
	expected_ep := makeEqualityProblem(eq2, x, a, makeEmptyConstraintStruct())

	s := treetypes.MakeEmptySubstitution()
	s.Set(y, a)
	new_ep := ep.applySubstitution(s)

	global.PrintDebug("TEST_AS", fmt.Sprintf("Current EP : %v", new_ep.ToString()))
	global.PrintDebug("TEST_AS", fmt.Sprintf("Expected : %v", expected_ep.ToString()))
}

/*** Test constraints ***/
func TestConstraints1(t *testing.T) {
	/* Not consistant */
	tp_ffx_x := makeTermPair(ffx, x)
	constraint_ffx_x := MakeConstraint(PREC, tp_ffx_x)
	cs := makeEmptyConstraintStruct()
	append := cs.appendIfConsistant(constraint_ffx_x)

	if append || len(cs.getPrec()) > 0 {
		t.Fatalf("Error: %v and %v is not the expected PREC list. Expected not consistant and empty PREC list", append, cs.getPrec().toString())
	}
}

func TestConstraints2(t *testing.T) {
	/* Consistant but useless */
	tp_x_ffx := makeTermPair(x, ffx)
	constraint_x_ffx := MakeConstraint(PREC, tp_x_ffx)
	cs := makeEmptyConstraintStruct()
	append := cs.appendIfConsistant(constraint_x_ffx)

	if !append || len(cs.getPrec()) > 0 {
		t.Fatalf("Error: %v and %v is not the expected PREC list. Expected consistant and empty PREC list", append, cs.getPrec().toString())
	}
}

func TestConstraints3(t *testing.T) {
	/* Consistant and relevant */

	tp_fx_a := makeTermPair(fx, a)
	constraint_fx_a := MakeConstraint(PREC, tp_fx_a)
	cs := makeEmptyConstraintStruct()

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
	cs := makeEmptyConstraintStruct()

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
	cs := makeEmptyConstraintStruct()

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
	cs := makeEmptyConstraintStruct()

	/* consistant but not relevant */
	tp_fxfyz_ffxyz := makeTermPair(f_x_fyz, f_fxy_z)
	constraint_fafbc_ffabc := MakeConstraint(PREC, tp_fxfyz_ffxyz)
	append := cs.appendIfConsistant(constraint_fafbc_ffabc)
	if !append || len(cs.getPrec()) > 0 {
		t.Fatalf("Error: %v and %v is not the expected PREC list. Expected consistant and empty PREC list", append, cs.getPrec().toString())
	}
}

func TestConstaintes7(t *testing.T) {
	cs := makeEmptyConstraintStruct()

	/* consistant, should return X,a and Y, b */
	tp_fxy_fab := makeTermPair(fxy, fab)
	constraint_fxy_fab := MakeConstraint(EQ, tp_fxy_fab)
	// append :=
	cs.appendIfConsistant(constraint_fxy_fab)
	/*
		if !append || len(cs.getPrec()) > 0 {
			t.Fatalf("Error: %v and %v is not the expected PREC list. Expected consistant and empty PREC list", append, cs.getPrec().toString())
		}
	*/
}

func TestConstaintes8(t *testing.T) {
	cs := makeEmptyConstraintStruct()

	/* consistant, should return X,a and Y, b */
	tp_fxa_fay := makeTermPair(fxa, fay)
	constraint_fxa_fay := MakeConstraint(EQ, tp_fxa_fay)
	// append :=
	cs.appendIfConsistant(constraint_fxa_fay)
	/*
		if !append || len(cs.getPrec()) > 0 {
			t.Fatalf("Error: %v and %v is not the expected PREC list. Expected consistant and empty PREC list", append, cs.getPrec().toString())
		}
	*/
}

func TestConstaintes9(t *testing.T) {
	cs := makeEmptyConstraintStruct()

	/* consistant, should return X,a and Y, b */
	tp_gga_ggx := makeTermPair(gga, ggx)
	constraint_gga_ggx := MakeConstraint(PREC, tp_gga_ggx)
	// append :=
	cs.appendIfConsistant(constraint_gga_ggx)
	/*
		if !append || len(cs.getPrec()) > 0 {
			t.Fatalf("Error: %v and %v is not the expected PREC list. Expected consistant and empty PREC list", append, cs.getPrec().toString())
		}
	*/
}
