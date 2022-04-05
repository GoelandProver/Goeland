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

	treesearch "github.com/GoelandProver/Goeland/code-trees/tree-search"
	treetypes "github.com/GoelandProver/Goeland/code-trees/tree-types"
	basictypes "github.com/GoelandProver/Goeland/types/basic-types"
	datastruct "github.com/GoelandProver/Goeland/types/data-struct"
)

/* cas X=Y dans egalités */

func TestMain(m *testing.M) {
	code := m.Run()
	os.Exit(code)
}

/* Tests equality */
func TestEQProbleme(t *testing.T) {

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

	lpo := MakeLPO()
	lpo.Insert(g_id)
	lpo.Insert(f_id)
	lpo.Insert(a_id)
	fmt.Printf("LPO : %v\n", lpo.ToString())

	lf := basictypes.FormList{eq1, eq2, eq3}
	fmt.Printf("LF : %v\n", lf.ToString())

	var tp, tn datastruct.DataStructure
	tp = new(treesearch.Node)
	tn = new(treesearch.Node)
	tp = tp.MakeDataStruct(lf, true)
	tn = tn.MakeDataStruct(lf, false)

	fmt.Printf("TP : %v\n", tp)
	if tp.IsEmpty() {
		fmt.Printf("tp is nil\n")
	} else {
		fmt.Printf("tp is not nil\n")
		tp.Print()
	}
	fmt.Printf("TN : %v\n", tn)
	if tn.IsEmpty() {
		fmt.Printf("tn is nil\n")
	} else {
		fmt.Printf("tn is not nil\n")
		tn.Print()
	}

	res, subst := EqualityReasoning(tp, tn, lf, lpo)
	fmt.Printf("Res : %v\n", res)
	fmt.Printf("Subst : %v\n", treetypes.SubstListToString(subst))
}

/* Tests LPO */
func TestCreateLPO(t *testing.T) {
	f_id := basictypes.MakerId("f")
	g_id := basictypes.MakerId("g")
	a_id := basictypes.MakerId("a")

	lpo := MakeLPO()
	lpo.Insert(g_id)
	lpo.Insert(f_id)
	lpo.Insert(a_id)

	fmt.Printf("%v\n", lpo.ToString())
}

/* Tets constraintes */
