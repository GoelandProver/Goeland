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

/* cas X=Y dans egalités */

func TestMain(m *testing.M) {
	code := m.Run()
	os.Exit(code)
}

/* Tests equality */
/* (X, g(a)), (X, f(g(a))) */
func TestEQ1(t *testing.T) {
	global.SetDebug(true)
	global.SetStart(time.Now())
	global.PrintDebug("MAIN", "Start of the problem")
	f_id := basictypes.MakerId("f")
	g_id := basictypes.MakerId("g")
	a_id := basictypes.MakerId("a")

	a := basictypes.MakerConst(a_id)
	x := basictypes.MakerMeta("X", -1)
	fa := basictypes.MakerFun(f_id, []basictypes.Term{a})
	gx := basictypes.MakerFun(g_id, []basictypes.Term{x})
	ggx := basictypes.MakerFun(g_id, []basictypes.Term{gx})
	gggx := basictypes.MakerFun(g_id, []basictypes.Term{ggx})

	eq1 := basictypes.MakePred(basictypes.Id_eq, []basictypes.Term{fa, a})
	eq2 := basictypes.MakePred(basictypes.Id_eq, []basictypes.Term{ggx, fa})
	eq3 := basictypes.MakePred(basictypes.Id_neq, []basictypes.Term{gggx, x})

	initPluginGlobalVariables()
	lpo.insertTerm(g_id)
	lpo.insertTerm(f_id)
	lpo.insertTerm(a_id)
	global.PrintDebug("MAIN", fmt.Sprintf("LPO : %v", lpo.toString()))

	lf := basictypes.FormList{eq1, eq2, eq3}
	global.PrintDebug("MAIN", fmt.Sprintf("LF : %v", lf.ToString()))

	var tp, tn datastruct.DataStructure
	tp = new(treesearch.Node)
	tn = new(treesearch.Node)
	tp = tp.MakeDataStruct(lf, true)
	tn = tn.MakeDataStruct(lf, false)

	res, subst := EqualityReasoning(tp, tn, lf)
	global.PrintDebug("MAIN", fmt.Sprintf("RES : %v", res))
	global.PrintDebug("MAIN", fmt.Sprintf("SUBST : %v", treetypes.SubstListToString(subst)))
}

/* rien, et X = Y */
func TestEQB1(t *testing.T) {
	global.SetDebug(true)
	global.SetStart(time.Now())
	global.PrintDebug("MAIN", "Start of the problem")
	f_id := basictypes.MakerId("f")
	g_id := basictypes.MakerId("g")
	a_id := basictypes.MakerId("a")
	b_id := basictypes.MakerId("b")
	c_id := basictypes.MakerId("c")
	p_id := basictypes.MakerId("P")

	b := basictypes.MakerConst(b_id)
	c := basictypes.MakerConst(c_id)
	x := basictypes.MakerMeta("X", -1)
	y := basictypes.MakerMeta("Y", -1)
	fx := basictypes.MakerFun(f_id, []basictypes.Term{x})
	gx := basictypes.MakerFun(g_id, []basictypes.Term{x})
	fy := basictypes.MakerFun(f_id, []basictypes.Term{y})
	gfy := basictypes.MakerFun(g_id, []basictypes.Term{fy})

	b_c := basictypes.MakePred(basictypes.Id_eq, []basictypes.Term{b, c})
	gfy_y := basictypes.MakePred(basictypes.Id_eq, []basictypes.Term{gfy, y})
	gx_fx := basictypes.MakePred(basictypes.Id_eq, []basictypes.Term{gx, fx})
	pb := basictypes.MakePred(p_id, []basictypes.Term{b})
	pc := basictypes.MakeNot(basictypes.MakePred(p_id, []basictypes.Term{c}))

	initPluginGlobalVariables()
	lpo.insertTerm(g_id)
	lpo.insertTerm(f_id)
	lpo.insertTerm(c_id)
	lpo.insertTerm(b_id)
	lpo.insertTerm(a_id)
	global.PrintDebug("MAIN", fmt.Sprintf("LPO : %v\n", lpo.toString()))

	lf_b1 := basictypes.FormList{b_c, gx_fx, pb, pc, gfy_y}

	global.PrintDebug("MAIN", fmt.Sprintf("B1_ LF : %v\n", lf_b1.ToString()))

	var tp, tn datastruct.DataStructure
	tp = new(treesearch.Node)
	tn = new(treesearch.Node)
	tp = tp.MakeDataStruct(lf_b1, true)
	tn = tn.MakeDataStruct(lf_b1, false)

	res, subst := EqualityReasoning(tp, tn, lf_b1)

	global.PrintDebug("MAIN", fmt.Sprintf("RES B1: %v", res))
	global.PrintDebug("MAIN", fmt.Sprintf("SUBST B1: %v", treetypes.SubstListToString(subst)))

}

/* (X, a), (Y, a) */
func TestEQB1_2(t *testing.T) {
	global.SetDebug(true)
	global.SetStart(time.Now())
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
	fx := basictypes.MakerFun(f_id, []basictypes.Term{x})
	gx := basictypes.MakerFun(g_id, []basictypes.Term{x})
	ga := basictypes.MakerFun(g_id, []basictypes.Term{a})
	gga := basictypes.MakerFun(g_id, []basictypes.Term{ga})
	fy := basictypes.MakerFun(f_id, []basictypes.Term{y})
	gfy := basictypes.MakerFun(g_id, []basictypes.Term{fy})

	b_c := basictypes.MakePred(basictypes.Id_eq, []basictypes.Term{b, c})
	gfy_y := basictypes.MakePred(basictypes.Id_eq, []basictypes.Term{gfy, y})
	gx_fx := basictypes.MakePred(basictypes.Id_eq, []basictypes.Term{gx, fx})
	pggab := basictypes.MakePred(p_id, []basictypes.Term{gga, b})
	pac := basictypes.MakeNot(basictypes.MakePred(p_id, []basictypes.Term{a, c}))

	initPluginGlobalVariables()
	lpo.insertTerm(g_id)
	lpo.insertTerm(f_id)
	lpo.insertTerm(c_id)
	lpo.insertTerm(b_id)
	lpo.insertTerm(a_id)
	global.PrintDebug("MAIN", fmt.Sprintf("LPO : %v\n", lpo.toString()))

	lf_b1 := basictypes.FormList{b_c, gx_fx, pggab, pac, gfy_y}

	global.PrintDebug("MAIN", fmt.Sprintf("B1_ LF : %v\n", lf_b1.ToString()))

	var tp, tn datastruct.DataStructure
	tp = new(treesearch.Node)
	tn = new(treesearch.Node)
	tp = tp.MakeDataStruct(lf_b1, true)
	tn = tn.MakeDataStruct(lf_b1, false)

	res, subst := EqualityReasoning(tp, tn, lf_b1)

	global.PrintDebug("MAIN", fmt.Sprintf("RES B1: %v", res))
	global.PrintDebug("MAIN", fmt.Sprintf("SUBST B1: %v", treetypes.SubstListToString(subst)))

}

/* (X, a) */
func TestEQB2(t *testing.T) {
	global.SetDebug(true)
	global.SetStart(time.Now())
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

	initPluginGlobalVariables()
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

/* Tests LPO */
func TestCreateLPO(t *testing.T) {
	global.SetStart(time.Now())
	f_id := basictypes.MakerId("f")
	g_id := basictypes.MakerId("g")
	a_id := basictypes.MakerId("a")

	initPluginGlobalVariables()
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
	global.PrintDebug("MAIN", "Start of the problem")
	f_id := basictypes.MakerId("f")
	x := basictypes.MakerMeta("X", -1)
	fx := basictypes.MakerFun(f_id, []basictypes.Term{x})
	ffx := basictypes.MakerFun(f_id, []basictypes.Term{fx})

	tp := MakeTermPair(ffx, x)
	c := MakeConstraint(PREC, tp)
	cl := MakeEmptyConstaintsList()

	initPluginGlobalVariables()
	lpo.insertTerm(f_id)

	cl.AppendIfConsistant(c)
	fmt.Printf("CL : %v\n", cl.ToString())
}

/* COnsistant but useless */
func TestConstaintes2(t *testing.T) {
	global.SetDebug(true)
	global.SetStart(time.Now())
	global.PrintDebug("MAIN", "Start of the problem")
	f_id := basictypes.MakerId("f")
	x := basictypes.MakerMeta("X", -1)
	fx := basictypes.MakerFun(f_id, []basictypes.Term{x})
	ffx := basictypes.MakerFun(f_id, []basictypes.Term{fx})

	tp := MakeTermPair(x, ffx)
	c := MakeConstraint(PREC, tp)
	cl := MakeEmptyConstaintsList()

	initPluginGlobalVariables()
	lpo.insertTerm(f_id)

	cl.AppendIfConsistant(c)
	fmt.Printf("CL : %v\n", cl.ToString())
}

/* COnsistant and relevant */
func TestConstaintes3(t *testing.T) {
	global.SetDebug(true)
	global.SetStart(time.Now())
	global.PrintDebug("MAIN", "Start of the problem")
	f_id := basictypes.MakerId("f")
	x := basictypes.MakerMeta("X", -1)
	fx := basictypes.MakerFun(f_id, []basictypes.Term{x})
	a_id := basictypes.MakerId("a")
	a := basictypes.MakerConst(a_id)

	tp := MakeTermPair(fx, a)
	c := MakeConstraint(PREC, tp)
	cl := MakeEmptyConstaintsList()

	initPluginGlobalVariables()
	lpo.insertTerm(f_id)
	lpo.insertTerm(a_id)

	cl.AppendIfConsistant(c)
	fmt.Printf("CL : %v\n", cl.ToString())
}

/* First constraint is consistnt, second not with the first one */
func TestConstaintes4(t *testing.T) {
	global.SetDebug(true)
	global.SetStart(time.Now())
	global.PrintDebug("MAIN", "Start of the problem")
	f_id := basictypes.MakerId("f")
	x := basictypes.MakerMeta("X", -1)
	fx := basictypes.MakerFun(f_id, []basictypes.Term{x})
	// ffx := basictypes.MakerFun(f_id, []basictypes.Term{fx})
	a_id := basictypes.MakerId("a")
	a := basictypes.MakerConst(a_id)

	tp := MakeTermPair(fx, a)
	c := MakeConstraint(PREC, tp)
	cl := MakeEmptyConstaintsList()

	initPluginGlobalVariables()
	lpo.insertTerm(f_id)
	lpo.insertTerm(a_id)

	cl.AppendIfConsistant(c)
	fmt.Printf("CL : %v\n", cl.ToString())

	tp2 := MakeTermPair(a, fx)
	c2 := MakeConstraint(PREC, tp2)

	cl.AppendIfConsistant(c2)
	fmt.Printf("CL : %v\n", cl.ToString())

	/*
	* On accepte les cas comme f(f(x)) < a et a < f(x)
	 */
}
