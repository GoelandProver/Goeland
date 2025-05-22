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

	"github.com/GoelandProver/Goeland/Core"
	"github.com/GoelandProver/Goeland/Glob"
	"github.com/GoelandProver/Goeland/Typing"
	"github.com/GoelandProver/Goeland/Unif"
	"github.com/GoelandProver/Goeland/equality/eqStruct"
)

// Code trees
var tp, tn Core.DataStructure

// Id
var p_id Core.Id
var g_id Core.Id
var f_id Core.Id
var a_id Core.Id
var b_id Core.Id
var c_id Core.Id
var d_id Core.Id
var c1_id Core.Id
var c2_id Core.Id

// Meta
var x Core.Meta
var y Core.Meta
var z Core.Meta
var z1 Core.Meta
var z2 Core.Meta
var z3 Core.Meta

// Const
var a Core.Fun
var b Core.Fun
var c Core.Fun
var d Core.Fun
var c1 Core.Fun
var c2 Core.Fun

// Fun
var gx Core.Fun
var ga Core.Fun
var fx Core.Fun
var fy Core.Fun
var fa Core.Fun
var fb Core.Fun
var fc Core.Fun

var ggx Core.Fun
var gga Core.Fun
var gfy Core.Fun
var gfa Core.Fun
var fxy Core.Fun
var fyz Core.Fun
var ffx Core.Fun
var fxa Core.Fun
var fay Core.Fun
var fab Core.Fun
var fbc Core.Fun
var fcd Core.Fun

var gggx Core.Fun

var f_fxy_z Core.Fun
var f_x_fyz Core.Fun
var f_fab_c Core.Fun
var f_a_fbc Core.Fun

// Equalities
var eq_x_y AST.Pred
var eq_x_a AST.Pred
var eq_y_a AST.Pred
var eq_z1_c1 AST.Pred
var eq_z1_c2 AST.Pred
var eq_z2_c1 AST.Pred
var eq_z3_c1 AST.Pred
var eq_gx_fx AST.Pred
var eq_ggx_fa AST.Pred
var eq_gfy_y AST.Pred
var eq_fa_a AST.Pred
var eq_b_c AST.Pred
var eq_a_b AST.Pred
var eq_a_c AST.Pred
var eq_b_d AST.Pred
var eq_x_d AST.Pred

// Inequalites
var neq_x_a AST.Form
var neq_a_b AST.Form
var neq_a_d AST.Form
var neq_gggx_x AST.Form
var neq_fx_a AST.Form
var neq_fx_x AST.Form
var neq_fab_fcd AST.Form
var neq_fb_fc AST.Form

// Form
var pggab AST.Form
var pac AST.Form
var pa AST.Form
var pb AST.Form
var not_pc AST.Form
var pab AST.Form
var pax AST.Form
var not_pcd AST.Form

func initTestVariable() {
	// Id
	p_id = Core.MakerId("P")
	g_id = Core.MakerId("g")
	f_id = Core.MakerId("f")
	a_id = Core.MakerId("a")
	b_id = Core.MakerId("b")
	c_id = Core.MakerId("c")
	d_id = Core.MakerId("d")
	c1_id = Core.MakerId("c1")
	c2_id = Core.MakerId("c2")

	// Meta
	x = Core.MakerMeta("X", -1)
	y = Core.MakerMeta("Y", -1)
	z = Core.MakerMeta("Z", -1)
	z1 = Core.MakerMeta("Z1", -1)
	z2 = Core.MakerMeta("Z2", -1)
	z3 = Core.MakerMeta("Z3", -1)

	// Const
	a = Core.MakerConst(a_id)
	b = Core.MakerConst(b_id)
	c = Core.MakerConst(c_id)
	d = Core.MakerConst(d_id)
	c1 = Core.MakerConst(c1_id)
	c2 = Core.MakerConst(c2_id)

	// Fun
	gx = Core.MakerFun(g_id, Core.NewTermList(x), []Typing.TypeApp{})
	ga = Core.MakerFun(g_id, Core.NewTermList(a), []Typing.TypeApp{})
	fx = Core.MakerFun(f_id, Core.NewTermList(x), []Typing.TypeApp{})
	fy = Core.MakerFun(f_id, Core.NewTermList(y), []Typing.TypeApp{})
	fa = Core.MakerFun(f_id, Core.NewTermList(a), []Typing.TypeApp{})
	fb = Core.MakerFun(f_id, Core.NewTermList(b), []Typing.TypeApp{})
	fc = Core.MakerFun(f_id, Core.NewTermList(c), []Typing.TypeApp{})

	ggx = Core.MakerFun(g_id, Core.NewTermList(gx), []Typing.TypeApp{})
	gga = Core.MakerFun(g_id, Core.NewTermList(ga), []Typing.TypeApp{})
	gfy = Core.MakerFun(g_id, Core.NewTermList(fy), []Typing.TypeApp{})
	gfa = Core.MakerFun(g_id, Core.NewTermList(fa), []Typing.TypeApp{})
	fxy = Core.MakerFun(f_id, Core.NewTermList(x, y), []Typing.TypeApp{})
	fyz = Core.MakerFun(f_id, Core.NewTermList(y, z), []Typing.TypeApp{})
	ffx = Core.MakerFun(f_id, Core.NewTermList(fx), []Typing.TypeApp{})
	fxa = Core.MakerFun(f_id, Core.NewTermList(x, a), []Typing.TypeApp{})
	fay = Core.MakerFun(f_id, Core.NewTermList(a, y), []Typing.TypeApp{})
	fab = Core.MakerFun(f_id, Core.NewTermList(a, b), []Typing.TypeApp{})
	fbc = Core.MakerFun(f_id, Core.NewTermList(b, c), []Typing.TypeApp{})
	fcd = Core.MakerFun(f_id, Core.NewTermList(c, d), []Typing.TypeApp{})

	gggx = Core.MakerFun(g_id, Core.NewTermList(ggx), []Typing.TypeApp{})

	f_fxy_z = Core.MakerFun(f_id, Core.NewTermList(fxy, z), []Typing.TypeApp{})
	f_x_fyz = Core.MakerFun(f_id, Core.NewTermList(x, fyz), []Typing.TypeApp{})
	f_fab_c = Core.MakerFun(f_id, Core.NewTermList(fab, c), []Typing.TypeApp{})
	f_a_fbc = Core.MakerFun(f_id, Core.NewTermList(a, fbc), []Typing.TypeApp{})

	// Equalities
	eq_x_y = Core.MakerPred(AST.Id_eq, Core.NewTermList(x, y), []Typing.TypeApp{})
	eq_x_a = Core.MakerPred(AST.Id_eq, Core.NewTermList(x, a), []Typing.TypeApp{})
	eq_y_a = Core.MakerPred(AST.Id_eq, Core.NewTermList(y, a), []Typing.TypeApp{})
	eq_z1_c1 = Core.MakerPred(AST.Id_eq, Core.NewTermList(z1, c1), []Typing.TypeApp{})
	eq_z1_c2 = Core.MakerPred(AST.Id_eq, Core.NewTermList(z1, c2), []Typing.TypeApp{})
	eq_z2_c1 = Core.MakerPred(AST.Id_eq, Core.NewTermList(z2, c1), []Typing.TypeApp{})
	eq_z3_c1 = Core.MakerPred(AST.Id_eq, Core.NewTermList(z3, c1), []Typing.TypeApp{})

	eq_ggx_fa = Core.MakerPred(AST.Id_eq, Core.NewTermList(ggx, fa), []Typing.TypeApp{})
	eq_gfy_y = Core.MakerPred(AST.Id_eq, Core.NewTermList(gfy, y), []Typing.TypeApp{})
	eq_gx_fx = Core.MakerPred(AST.Id_eq, Core.NewTermList(gx, fx), []Typing.TypeApp{})
	eq_fa_a = Core.MakerPred(AST.Id_eq, Core.NewTermList(fa, a), []Typing.TypeApp{})
	eq_a_b = Core.MakerPred(AST.Id_eq, Core.NewTermList(a, b), []Typing.TypeApp{})
	eq_b_c = Core.MakerPred(AST.Id_eq, Core.NewTermList(b, c), []Typing.TypeApp{})
	eq_a_c = Core.MakerPred(AST.Id_eq, Core.NewTermList(a, c), []Typing.TypeApp{})
	eq_b_d = Core.MakerPred(AST.Id_eq, Core.NewTermList(b, d), []Typing.TypeApp{})
	eq_x_d = Core.MakerPred(AST.Id_eq, Core.NewTermList(x, d), []Typing.TypeApp{})

	// Inequalites
	neq_x_a = Core.MakerNot(Core.MakerPred(AST.Id_eq, Core.NewTermList(x, a), []Typing.TypeApp{}))
	neq_a_b = Core.MakerNot(Core.MakerPred(AST.Id_eq, Core.NewTermList(a, b), []Typing.TypeApp{}))
	neq_a_d = Core.MakerNot(Core.MakerPred(AST.Id_eq, Core.NewTermList(a, d), []Typing.TypeApp{}))
	neq_gggx_x = Core.MakerNot(Core.MakerPred(AST.Id_eq, Core.NewTermList(gggx, x), []Typing.TypeApp{}))
	neq_fx_a = Core.MakerNot(Core.MakerPred(AST.Id_eq, Core.NewTermList(fx, a), []Typing.TypeApp{}))
	neq_fx_x = Core.MakerNot(Core.MakerPred(AST.Id_eq, Core.NewTermList(fx, x), []Typing.TypeApp{}))
	neq_fab_fcd = Core.MakerNot(Core.MakerPred(AST.Id_eq, Core.NewTermList(fab, fcd), []Typing.TypeApp{}))
	neq_fb_fc = Core.MakerNot(Core.MakerPred(AST.Id_eq, Core.NewTermList(fb, fc), []Typing.TypeApp{}))

	// Predicates
	pggab = Core.MakerPred(p_id, Core.NewTermList(gga, b), []Typing.TypeApp{})
	pac = Core.MakerNot(Core.MakerPred(p_id, Core.NewTermList(a, c), []Typing.TypeApp{}))
	pa = Core.MakerPred(p_id, Core.NewTermList(a), []Typing.TypeApp{})
	pb = Core.MakerPred(p_id, Core.NewTermList(b), []Typing.TypeApp{})
	not_pc = AST.RefuteForm(Core.MakerPred(p_id, Core.NewTermList(c), []Typing.TypeApp{}))
	pab = Core.MakerPred(p_id, Core.NewTermList(a, b), []Typing.TypeApp{})
	pax = Core.MakerPred(p_id, Core.NewTermList(a, x), []Typing.TypeApp{})
	not_pcd = AST.RefuteForm(Core.MakerPred(p_id, Core.NewTermList(c, d), []Typing.TypeApp{}))
}

func initCodeTreesTests(lf *AST.FormList) (Core.DataStructure, Core.DataStructure) {
	tp = Unif.NewNode()
	tn = Unif.NewNode()
	tp = tp.MakeDataStruct(lf, true)
	tn = tn.MakeDataStruct(lf, false)
	return tp, tn
}

func TestMain(m *testing.M) {
	Glob.SetStart(time.Now())
	Typing.Init()
	Core.Init()
	initTestVariable()
	Glob.EnableDebug()
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
	lf := AST.NewFormList(eq_x_y)
	tp, tn = initCodeTreesTests(lf)
	eq := retrieveEqualities(tp.Copy())
	ep := makeEqualityProblem(eq, x, y, makeEmptyConstraintStruct())

	// Expected problem
	lf2 := AST.NewFormList(eq_x_a)
	tp, tn = initCodeTreesTests(lf2)
	eq2 := retrieveEqualities(tp.Copy())
	expected_ep := makeEqualityProblem(eq2, x, a, makeEmptyConstraintStruct())

	s := Unif.MakeEmptySubstitution()
	s.Set(y, a)
	new_ep := ep.applySubstitution(s)

	Glob.PrintDebug("TEST_AS", fmt.Sprintf("Current EP : %v", new_ep.ToString()))
	Glob.PrintDebug("TEST_AS", fmt.Sprintf("Expected : %v", expected_ep.ToString()))
}

/*** Test constraints ***/
func TestConstraints1(t *testing.T) {
	/* Not consistant */
	tp_ffx_x := eqStruct.MakeTermPair(ffx, x)
	constraint_ffx_x := MakeConstraint(PREC, tp_ffx_x)
	cs := makeEmptyConstraintStruct()
	append := cs.appendIfConsistant(constraint_ffx_x)

	if append || len(cs.getPrec()) > 0 {
		t.Fatalf("Error: %v and %v is not the expected PREC list. Expected not consistant and empty PREC list", append, cs.getPrec().toString())
	}
}

func TestConstraints2(t *testing.T) {
	/* Consistant but useless */
	tp_x_ffx := eqStruct.MakeTermPair(x, ffx)
	constraint_x_ffx := MakeConstraint(PREC, tp_x_ffx)
	cs := makeEmptyConstraintStruct()
	append := cs.appendIfConsistant(constraint_x_ffx)

	if !append || len(cs.getPrec()) > 0 {
		t.Fatalf("Error: %v and %v is not the expected PREC list. Expected consistant and empty PREC list", append, cs.getPrec().toString())
	}
}

func TestConstraints3(t *testing.T) {
	/* Consistant and relevant */

	tp_fx_a := eqStruct.MakeTermPair(fx, a)
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

	tp_fx_a := eqStruct.MakeTermPair(fx, a)
	constraint_fx_a := MakeConstraint(PREC, tp_fx_a)
	cs := makeEmptyConstraintStruct()

	res_constraint_1 := cs.appendIfConsistant(constraint_fx_a)
	if !res_constraint_1 || len(cs.getPrec()) != 1 || !cs.getPrec()[0].equals(constraint_fx_a) {
		t.Fatalf("Error: %v and %v is not the expected PREC list. Expected consistant and %v", res_constraint_1, cs.getPrec().toString(), constraint_fx_a.toString())
	}

	tp_a_fx := eqStruct.MakeTermPair(a, fx)
	constraint_a_fx := MakeConstraint(PREC, tp_a_fx)
	res_constraint_2 := cs.appendIfConsistant(constraint_a_fx)
	if res_constraint_2 || len(cs.getPrec()) != 1 || !cs.getPrec()[0].equals(constraint_fx_a) {
		t.Fatalf("Error: %v and %v is not the expected PREC list. Expected not consistant and %v", res_constraint_2, cs.getPrec().toString(), constraint_fx_a.toString())
	}

}

func TestConstraints5(t *testing.T) {
	cs := makeEmptyConstraintStruct()

	/* Not consistant */
	tp_ffabc_fafbc := eqStruct.MakeTermPair(f_fab_c, f_a_fbc)
	constraint_ffabc_fafbc := MakeConstraint(PREC, tp_ffabc_fafbc)
	res_constraint_1 := cs.appendIfConsistant(constraint_ffabc_fafbc)
	if res_constraint_1 || len(cs.getPrec()) > 0 {
		t.Fatalf("Error: %v and %v is not the expected PREC list. Expected not consistant and empty PREC list", res_constraint_1, cs.getPrec().toString())
	}

	/* Consistant but not relevant */
	tp_fafbc_ffabc := eqStruct.MakeTermPair(f_a_fbc, f_fab_c)
	constraint_fafbc_ffabc := MakeConstraint(PREC, tp_fafbc_ffabc)
	res_constraint_2 := cs.appendIfConsistant(constraint_fafbc_ffabc)
	if !res_constraint_2 || len(cs.getPrec()) > 0 {
		t.Fatalf("Error: %v and %v is not the expected PREC list. Expected consistant and empty PREC list", res_constraint_1, cs.getPrec().toString())
	}
}

func TestConstaintes6(t *testing.T) {
	cs := makeEmptyConstraintStruct()

	/* consistant but not relevant */
	tp_fxfyz_ffxyz := eqStruct.MakeTermPair(f_x_fyz, f_fxy_z)
	constraint_fafbc_ffabc := MakeConstraint(PREC, tp_fxfyz_ffxyz)
	append := cs.appendIfConsistant(constraint_fafbc_ffabc)
	if !append || len(cs.getPrec()) > 0 {
		t.Fatalf("Error: %v and %v is not the expected PREC list. Expected consistant and empty PREC list", append, cs.getPrec().toString())
	}
}

func TestConstaintes7(t *testing.T) {
	cs := makeEmptyConstraintStruct()

	/* consistant, should return X,a and Y, b */
	tp_fxy_fab := eqStruct.MakeTermPair(fxy, fab)
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
	tp_fxa_fay := eqStruct.MakeTermPair(fxa, fay)
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
	tp_gga_ggx := eqStruct.MakeTermPair(gga, ggx)
	constraint_gga_ggx := MakeConstraint(PREC, tp_gga_ggx)
	// append :=
	cs.appendIfConsistant(constraint_gga_ggx)
	/*
		if !append || len(cs.getPrec()) > 0 {
			t.Fatalf("Error: %v and %v is not the expected PREC list. Expected consistant and empty PREC list", append, cs.getPrec().toString())
		}
	*/
}
