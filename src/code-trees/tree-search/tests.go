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
/************/
/* tests.go */
/************/

package treesearch

import (
	"fmt"

	treetypes "github.com/GoelandProver/Goeland/code-trees/tree-types"
	"github.com/GoelandProver/Goeland/global"
	basictypes "github.com/GoelandProver/Goeland/types/basic-types"
)

var cpt_ok int
var cpt_fail int

func RunTests() {
	cpt_ok = 0
	cpt_fail = 0

	toRun := []func(){Test1, Test2, Test3, Test4, Test5, Test6, Test7, Test8, Test9, Test10, Test11, Test12, Test13, Test14, Test15, Test16, Test17, Test18, Test19, Test20, Test21, Test22, Test23, Test24, Test25, Test26, Test28, Test29, Test30, Test31, Test32, Test33, Test34, Test35, Test36, Test37, Test38, Test39, Test40, Test41}
	// toRun := []func(){Test41}

	for _, f := range toRun {
		f()
	}

	fmt.Printf("\nTests passed: %v, failed: %v\n", cpt_ok, cpt_fail)
}

func LaunchTest(index int, expected []treetypes.MatchingSubstitutions, toMatch, forms basictypes.FormList) {
	fmt.Printf("Test %v : \n", index)

	global.PrintDebug("Test", "To match :")
	toMatch.ToString()

	global.PrintDebug("Test", "Tree :")
	forms.ToString()

	codeTree := makeCodeTree(forms)

	if global.GetDebug() {
		codeTree.Print()
	}

	for _, match := range toMatch {
		_, sub := codeTree.Unify(match)

		if len(expected) == 0 {
			// Check the failure of all substitutions
			failure := true
			for _, s := range sub {
				if len(s.GetSubst()) > 0 {
					failure = false
					fmt.Print("\033[1;31mFAIL.\033[0m\n  ++++ Expected: Failure.")
					fmt.Print("  ---- Actual: \n")
					if len(sub) == 0 {
						fmt.Println("Failure.")
					}
					for _, s := range sub {
						s.Print()
					}
					cpt_fail++
					break
				}
			}
			if failure {
				fmt.Print("\033[1;32mFailure OK.\033[0m\n")
				cpt_ok++
			}
		} else {
			verified := false
			for _, s := range sub {
				for _, expt := range expected {
					if s.GetForm().Equals(expt.GetForm()) {
						verified = true
						if expt.GetSubst().Equals(s.GetSubst()) {
							fmt.Print("\033[1;32mOK.\033[0m\n")
							s.Print()
							cpt_ok++
						} else {
							fmt.Print("\033[1;31mFAIL.\033[0m\n  ++++ Expected: ")
							expt.Print()
							fmt.Print("  ---- Actual: ")
							s.Print()
							cpt_fail++
						}
					}
				}
			}
			if !verified {
				fmt.Print("\033[1;31mFAIL.\033[0m\n  ++++ Expected: ")
				for _, expt := range expected {
					expt.Print()
				}
				fmt.Print("  ---- Actual: ")
				if len(sub) == 0 {
					fmt.Println("Failure.")
				}
				for _, s := range sub {
					s.Print()
				}
				cpt_fail++
			}
		}

	}

	basictypes.Reset()
}

/**
* Standard success no 1
**/
func Test1() {
	p := basictypes.MakerId("P")
	q := basictypes.MakerId("q")
	x := basictypes.MakerMeta("X", -1)
	a := basictypes.MakerConst(basictypes.MakerId("a"))

	f1 := basictypes.MakerPred(p, []basictypes.Term{basictypes.MakerFun(q, []basictypes.Term{x})})
	f2 := basictypes.MakerPred(p, []basictypes.Term{basictypes.MakerFun(q, []basictypes.Term{a})})

	LaunchTest(
		1,
		[]treetypes.MatchingSubstitutions{
			treetypes.MakeMatchingSubstitutions(f2, treetypes.Substitutions{x: a}),
		},
		basictypes.MakeSingleElementList(f1),
		basictypes.MakeSingleElementList(f2),
	)

	LaunchTest(
		1,
		[]treetypes.MatchingSubstitutions{
			treetypes.MakeMatchingSubstitutions(f1, treetypes.Substitutions{x: a}),
		},
		basictypes.MakeSingleElementList(f2),
		basictypes.MakeSingleElementList(f1),
	)
}

/**
* Standard success no 2
**/
func Test2() {
	p := basictypes.MakerId("P")
	q := basictypes.MakerId("q")
	x := basictypes.MakerMeta("X", -1)
	y := basictypes.MakerMeta("Y", -1)

	f1 := basictypes.MakerPred(p, []basictypes.Term{basictypes.MakerFun(q, []basictypes.Term{x})})
	f2 := basictypes.MakerPred(p, []basictypes.Term{basictypes.MakerFun(q, []basictypes.Term{y})})

	LaunchTest(
		2,
		[]treetypes.MatchingSubstitutions{
			treetypes.MakeMatchingSubstitutions(f2, treetypes.Substitutions{y: x}),
		},
		basictypes.MakeSingleElementList(f1),
		basictypes.MakeSingleElementList(f2),
	)

	LaunchTest(
		2,
		[]treetypes.MatchingSubstitutions{
			treetypes.MakeMatchingSubstitutions(f1, treetypes.Substitutions{x: y}),
		},
		basictypes.MakeSingleElementList(f2),
		basictypes.MakeSingleElementList(f1),
	)
}

/**
* Standard failure no 1
**/
func Test3() {
	p := basictypes.MakerId("P")
	x := basictypes.MakerMeta("X", -1)

	f1 := basictypes.MakerPred(p, []basictypes.Term{x, x})
	f2 := basictypes.MakerPred(p, []basictypes.Term{basictypes.MakerConst(basictypes.MakerId("a")), basictypes.MakerConst(basictypes.MakerId("b"))})

	LaunchTest(
		3,
		[]treetypes.MatchingSubstitutions{},
		basictypes.MakeSingleElementList(f1),
		basictypes.MakeSingleElementList(f2),
	)

	LaunchTest(
		3,
		[]treetypes.MatchingSubstitutions{},
		basictypes.MakeSingleElementList(f2),
		basictypes.MakeSingleElementList(f1),
	)
}

/**
* Standard success no 3
**/
func Test4() {
	p := basictypes.MakerId("P")
	x := basictypes.MakerMeta("X", -1)
	y := basictypes.MakerMeta("Y", -1)
	f := basictypes.MakerFun(basictypes.MakerId("f"), []basictypes.Term{basictypes.MakerConst(basictypes.MakerId("a")), basictypes.MakerConst(basictypes.MakerId("b"))})

	f1 := basictypes.MakerPred(p, []basictypes.Term{x, f})
	f2 := basictypes.MakerPred(p, []basictypes.Term{x, y})

	LaunchTest(
		4,
		[]treetypes.MatchingSubstitutions{
			treetypes.MakeMatchingSubstitutions(f2, treetypes.Substitutions{y: f}),
		},
		basictypes.MakeSingleElementList(f1),
		basictypes.MakeSingleElementList(f2),
	)

	LaunchTest(
		4,
		[]treetypes.MatchingSubstitutions{
			treetypes.MakeMatchingSubstitutions(f1, treetypes.Substitutions{y: f}),
		},
		basictypes.MakeSingleElementList(f2),
		basictypes.MakeSingleElementList(f1),
	)
}

/**
* Occur-check failure no 1
**/
func Test5() {
	p := basictypes.MakerId("P")
	x := basictypes.MakerMeta("X", -1)
	y := basictypes.MakerMeta("Y", -1)
	f := basictypes.MakerId("f")

	// 5.1
	f1 := basictypes.MakerPred(p, []basictypes.Term{x})
	f2 := basictypes.MakerPred(p, []basictypes.Term{basictypes.MakerFun(f, []basictypes.Term{x})})

	LaunchTest(
		5,
		[]treetypes.MatchingSubstitutions{},
		basictypes.MakeSingleElementList(f1),
		basictypes.MakeSingleElementList(f2),
	)

	LaunchTest(
		5,
		[]treetypes.MatchingSubstitutions{},
		basictypes.MakeSingleElementList(f2),
		basictypes.MakeSingleElementList(f1),
	)

	// 5.2
	f3 := basictypes.MakerPred(p, []basictypes.Term{x, x})
	f4 := basictypes.MakerPred(p, []basictypes.Term{y, basictypes.MakerFun(f, []basictypes.Term{y})})

	LaunchTest(
		5,
		[]treetypes.MatchingSubstitutions{},
		basictypes.MakeSingleElementList(f3),
		basictypes.MakeSingleElementList(f4),
	)
	LaunchTest(
		5,
		[]treetypes.MatchingSubstitutions{},
		basictypes.MakeSingleElementList(f4),
		basictypes.MakeSingleElementList(f3),
	)

	// 5.3
	f5 := basictypes.MakerPred(p, []basictypes.Term{x, basictypes.MakerFun(f, []basictypes.Term{basictypes.MakerConst(basictypes.MakerId("a")), y})})
	f6 := basictypes.MakerPred(p, []basictypes.Term{x, y})

	LaunchTest(
		5,
		[]treetypes.MatchingSubstitutions{},
		basictypes.MakeSingleElementList(f5),
		basictypes.MakeSingleElementList(f6),
	)
	LaunchTest(
		5,
		[]treetypes.MatchingSubstitutions{},
		basictypes.MakeSingleElementList(f6),
		basictypes.MakeSingleElementList(f5),
	)
}

/**
* Code tree success no 1
**/
func Test6() {
	p := basictypes.MakerId("P")
	x := basictypes.MakerMeta("X", -1)
	y := basictypes.MakerMeta("Y", -1)
	z := basictypes.MakerMeta("Z", -1)
	t := basictypes.MakerMeta("T", -1)
	a := basictypes.MakerConst(basictypes.MakerId("a"))
	b := basictypes.MakerConst(basictypes.MakerId("b"))

	f := basictypes.MakerPred(p, []basictypes.Term{a, x})

	f1 := basictypes.MakerPred(p, []basictypes.Term{a, b})
	f2 := basictypes.MakerPred(p, []basictypes.Term{x, y})
	f3 := basictypes.MakerPred(p, []basictypes.Term{z, t})
	f4 := basictypes.MakerPred(p, []basictypes.Term{x, x})

	LaunchTest(
		6,
		[]treetypes.MatchingSubstitutions{
			treetypes.MakeMatchingSubstitutions(f, treetypes.Substitutions{}),
			treetypes.MakeMatchingSubstitutions(f1, treetypes.Substitutions{x: b}),
			treetypes.MakeMatchingSubstitutions(f2, treetypes.Substitutions{x: a, y: a}),
			treetypes.MakeMatchingSubstitutions(f3, treetypes.Substitutions{z: a, t: x}),
			treetypes.MakeMatchingSubstitutions(f4, treetypes.Substitutions{x: a}),
		},
		basictypes.MakeSingleElementList(f),
		[]basictypes.Form{f, f1, f2, f3, f4},
	)
}

/**
* Metavariable success no 1
**/
func Test7() {
	p := basictypes.MakerId("P")
	x := basictypes.MakerMeta("X", -1)
	y := basictypes.MakerMeta("Y", -1)
	a := basictypes.MakerConst(basictypes.MakerId("a"))

	f1 := basictypes.MakerPred(p, []basictypes.Term{x, x})
	f2 := basictypes.MakerPred(p, []basictypes.Term{y, a})

	LaunchTest(
		7,
		[]treetypes.MatchingSubstitutions{
			treetypes.MakeMatchingSubstitutions(f2, treetypes.Substitutions{x: a, y: a}),
		},
		basictypes.MakeSingleElementList(f1),
		basictypes.MakeSingleElementList(f2),
	)

	LaunchTest(
		7,
		[]treetypes.MatchingSubstitutions{
			treetypes.MakeMatchingSubstitutions(f1, treetypes.Substitutions{x: a, y: a}),
		},
		basictypes.MakeSingleElementList(f2),
		basictypes.MakeSingleElementList(f1),
	)
}

/**
* Metavariable success no 2
**/
func Test8() {
	p := basictypes.MakerId("P")
	a := basictypes.MakerConst(basictypes.MakerId("a"))
	x := basictypes.MakerMeta("X", -1)
	y := basictypes.MakerMeta("Y", -1)

	f1 := basictypes.MakerPred(p, []basictypes.Term{x, y})
	f2 := basictypes.MakerPred(p, []basictypes.Term{a, a})

	LaunchTest(
		8,
		[]treetypes.MatchingSubstitutions{
			treetypes.MakeMatchingSubstitutions(f2, treetypes.Substitutions{x: a, y: a}),
		},
		basictypes.MakeSingleElementList(f1),
		basictypes.MakeSingleElementList(f2),
	)

	LaunchTest(
		8,
		[]treetypes.MatchingSubstitutions{
			treetypes.MakeMatchingSubstitutions(f1, treetypes.Substitutions{x: a, y: a}),
		},
		basictypes.MakeSingleElementList(f2),
		basictypes.MakeSingleElementList(f1),
	)
}

/**
* Metavariable success no 3
**/
func Test9() {
	p := basictypes.MakerId("P")
	x := basictypes.MakerMeta("X", -1)
	y := basictypes.MakerMeta("Y", -1)

	f1 := basictypes.MakerPred(p, []basictypes.Term{x, y})
	f2 := basictypes.MakerPred(p, []basictypes.Term{x, x})

	LaunchTest(
		9,
		[]treetypes.MatchingSubstitutions{
			treetypes.MakeMatchingSubstitutions(f2, treetypes.Substitutions{x: y}),
		},
		basictypes.MakeSingleElementList(f1),
		basictypes.MakeSingleElementList(f2),
	)

	LaunchTest(
		9,
		[]treetypes.MatchingSubstitutions{
			treetypes.MakeMatchingSubstitutions(f1, treetypes.Substitutions{y: x}),
		},
		basictypes.MakeSingleElementList(f2),
		basictypes.MakeSingleElementList(f1),
	)
}

/**
* Metavariable success no 3
**/
func Test10() {
	p := basictypes.MakerId("P")
	x := basictypes.MakerMeta("X", -1)
	y := basictypes.MakerMeta("Y", -1)
	a := basictypes.MakerConst(basictypes.MakerId("a"))

	f1 := basictypes.MakerPred(p, []basictypes.Term{x, y})
	f2 := basictypes.MakerPred(p, []basictypes.Term{y, a})

	LaunchTest(
		10,
		[]treetypes.MatchingSubstitutions{
			treetypes.MakeMatchingSubstitutions(f2, treetypes.Substitutions{x: a, y: a}),
		},
		basictypes.MakeSingleElementList(f1),
		basictypes.MakeSingleElementList(f2),
	)

	LaunchTest(
		10,
		[]treetypes.MatchingSubstitutions{
			treetypes.MakeMatchingSubstitutions(f1, treetypes.Substitutions{x: a, y: a}),
		},
		basictypes.MakeSingleElementList(f2),
		basictypes.MakeSingleElementList(f1),
	)
}

/**
* Nested metavariable success no 1
**/
func Test11() {
	p := basictypes.MakerId("P")
	x := basictypes.MakerMeta("X", -1)
	y := basictypes.MakerMeta("Y", -1)
	a := basictypes.MakerConst(basictypes.MakerId("a"))
	b := basictypes.MakerConst(basictypes.MakerId("b"))
	f := basictypes.MakerId("f")

	f1 := basictypes.MakerPred(p, []basictypes.Term{x, basictypes.MakerFun(f, []basictypes.Term{a, y})})
	f2 := basictypes.MakerPred(p, []basictypes.Term{x, basictypes.MakerFun(f, []basictypes.Term{a, b})})

	LaunchTest(
		11,
		[]treetypes.MatchingSubstitutions{
			treetypes.MakeMatchingSubstitutions(f2, treetypes.Substitutions{y: b}),
		},
		basictypes.MakeSingleElementList(f1),
		basictypes.MakeSingleElementList(f2),
	)

	LaunchTest(
		11,
		[]treetypes.MatchingSubstitutions{
			treetypes.MakeMatchingSubstitutions(f1, treetypes.Substitutions{y: b}),
		},
		basictypes.MakeSingleElementList(f2),
		basictypes.MakeSingleElementList(f1),
	)
}

/**
* Nested metavariable failure no 1
**/
func Test12() {
	p := basictypes.MakerId("P")

	f1 := basictypes.MakerPred(p, []basictypes.Term{basictypes.MakerFun(basictypes.MakerId("f"), []basictypes.Term{basictypes.MakerMeta("Y", -1)})})
	f2 := basictypes.MakerPred(p, []basictypes.Term{basictypes.MakerConst(basictypes.MakerId("a"))})

	LaunchTest(
		12,
		[]treetypes.MatchingSubstitutions{},
		basictypes.MakeSingleElementList(f1),
		basictypes.MakeSingleElementList(f2),
	)

	LaunchTest(
		12,
		[]treetypes.MatchingSubstitutions{},
		basictypes.MakeSingleElementList(f2),
		basictypes.MakeSingleElementList(f1),
	)
}

/**
* Nested metavariable success no 2
**/
func Test13() {
	p := basictypes.MakerId("P")
	x := basictypes.MakerMeta("X", -1)
	y := basictypes.MakerMeta("Y", -1)
	a := basictypes.MakerConst(basictypes.MakerId("a"))
	b := basictypes.MakerConst(basictypes.MakerId("b"))
	f := basictypes.MakerId("f")
	fun1 := basictypes.MakerFun(f, []basictypes.Term{a, b})
	fun2 := basictypes.MakerFun(f, []basictypes.Term{a, y})

	f1 := basictypes.MakerPred(p, []basictypes.Term{x, x})
	f2 := basictypes.MakerPred(p, []basictypes.Term{fun1, fun2})

	LaunchTest(
		13,
		[]treetypes.MatchingSubstitutions{
			treetypes.MakeMatchingSubstitutions(f2, treetypes.Substitutions{x: fun1, y: b}),
		},
		basictypes.MakeSingleElementList(f1),
		basictypes.MakeSingleElementList(f2),
	)

	LaunchTest(
		13,
		[]treetypes.MatchingSubstitutions{
			treetypes.MakeMatchingSubstitutions(f1, treetypes.Substitutions{x: fun1, y: b}),
		},
		basictypes.MakeSingleElementList(f2),
		basictypes.MakeSingleElementList(f1),
	)
}

/**
* Nested metavariable success no 3
**/
func Test14() {
	p := basictypes.MakerId("P")
	x := basictypes.MakerMeta("X", -1)
	y := basictypes.MakerMeta("Y", -1)
	a := basictypes.MakerConst(basictypes.MakerId("a"))
	b := basictypes.MakerConst(basictypes.MakerId("b"))

	f1 := basictypes.MakerPred(p, []basictypes.Term{x, b, x})
	f2 := basictypes.MakerPred(p, []basictypes.Term{x, y, a})

	LaunchTest(
		14,
		[]treetypes.MatchingSubstitutions{
			treetypes.MakeMatchingSubstitutions(f2, treetypes.Substitutions{x: a, y: b}),
		},
		basictypes.MakeSingleElementList(f1),
		basictypes.MakeSingleElementList(f2),
	)

	LaunchTest(
		14,
		[]treetypes.MatchingSubstitutions{
			treetypes.MakeMatchingSubstitutions(f1, treetypes.Substitutions{x: a, y: b}),
		},
		basictypes.MakeSingleElementList(f2),
		basictypes.MakeSingleElementList(f1),
	)

	//LaunchTest(14, map[int]map[int]Substitutions{0: {1: Substitutions{x: a, y: b}}}, 1: {0: Substitutions{x: a, y: b}}}}, basictypes.MakeSingleElementList(f1, f2), basictypes.MakeSingleElementList(f1, f2))
}

/**
* Code tree success no 2
**/
func Test15() {
	p := basictypes.MakerId("P")
	x := basictypes.MakerMeta("X", -1)
	y := basictypes.MakerMeta("Y", -1)
	fun := basictypes.MakerId("f")

	f := basictypes.MakerPred(p, []basictypes.Term{basictypes.MakerFun(fun, []basictypes.Term{basictypes.MakerFun(fun, []basictypes.Term{x})})})

	f1 := basictypes.MakerPred(p, []basictypes.Term{basictypes.MakerFun(fun, []basictypes.Term{x})})
	f2 := basictypes.MakerPred(p, []basictypes.Term{basictypes.MakerFun(fun, []basictypes.Term{basictypes.MakerFun(fun, []basictypes.Term{basictypes.MakerFun(fun, []basictypes.Term{x})})})})
	f3 := basictypes.MakerPred(p, []basictypes.Term{basictypes.MakerFun(fun, []basictypes.Term{basictypes.MakerFun(fun, []basictypes.Term{basictypes.MakerFun(fun, []basictypes.Term{y})})})})

	LaunchTest(
		15,
		[]treetypes.MatchingSubstitutions{
			treetypes.MakeMatchingSubstitutions(f, treetypes.Substitutions{}),
			treetypes.MakeMatchingSubstitutions(f3, treetypes.Substitutions{x: basictypes.MakerFun(fun, []basictypes.Term{y})}),
		},
		basictypes.MakeSingleElementList(f),
		[]basictypes.Form{f, f1, f2, f3},
	)
}

/**
* Code tree  success no 3
**/
func Test16() {
	p := basictypes.MakerId("P")
	a := basictypes.MakerConst(basictypes.MakerId("a"))
	z := basictypes.MakerMeta("Z", -1)
	fun := basictypes.MakerId("f")

	f := basictypes.MakerPred(p, []basictypes.Term{basictypes.MakerFun(fun, []basictypes.Term{basictypes.MakerFun(fun, []basictypes.Term{a})})})

	f1 := basictypes.MakerPred(p, []basictypes.Term{basictypes.MakerFun(fun, []basictypes.Term{a})})
	f2 := basictypes.MakerPred(p, []basictypes.Term{z})

	LaunchTest(
		16,
		[]treetypes.MatchingSubstitutions{
			treetypes.MakeMatchingSubstitutions(f, treetypes.Substitutions{}),
			treetypes.MakeMatchingSubstitutions(f2, treetypes.Substitutions{z: basictypes.MakerFun(fun, []basictypes.Term{basictypes.MakerFun(fun, []basictypes.Term{a})})}),
		},
		basictypes.MakeSingleElementList(f),
		[]basictypes.Form{f, f1, f2},
	)
}

/**
* Code tree failure no 1
**/
func Test17() {
	p := basictypes.MakerId("P")
	x := basictypes.MakerMeta("X", -1)
	fun := basictypes.MakerId("f")

	f := basictypes.MakerPred(p, []basictypes.Term{x, x})

	f1 := basictypes.MakerPred(p, []basictypes.Term{basictypes.MakerFun(fun, []basictypes.Term{x}), basictypes.MakerFun(fun, []basictypes.Term{x})})
	f2 := basictypes.MakerPred(p, []basictypes.Term{basictypes.MakerFun(fun, []basictypes.Term{x}), basictypes.MakerFun(fun, []basictypes.Term{basictypes.MakerFun(fun, []basictypes.Term{x})})})

	LaunchTest(
		17,
		[]treetypes.MatchingSubstitutions{},
		basictypes.MakeSingleElementList(f),
		[]basictypes.Form{f1, f2},
	)
}

/**
* Metavariable failure.
**/
func Test18() {
	p := basictypes.MakerId("P")
	y1 := basictypes.MakerMeta("Y", -1)
	y2 := basictypes.MakerMeta("Y", -1)

	f1 := basictypes.MakerPred(p, []basictypes.Term{y2, y1, basictypes.MakerFun(basictypes.MakerId("f"), []basictypes.Term{y1, y2})})
	f2 := basictypes.MakerPred(p, []basictypes.Term{basictypes.MakerMeta("X", -1), basictypes.MakerMeta("X", -1), y1})

	LaunchTest(
		18,
		[]treetypes.MatchingSubstitutions{},
		basictypes.MakeSingleElementList(f1),
		basictypes.MakeSingleElementList(f2),
	)

	LaunchTest(
		18,
		[]treetypes.MatchingSubstitutions{},
		basictypes.MakeSingleElementList(f2),
		basictypes.MakeSingleElementList(f1),
	)
}

/**
* Metavariable failure.
**/
func Test19() {
	p := basictypes.MakerId("P")
	x := basictypes.MakerMeta("X", -1)
	y := basictypes.MakerMeta("Y", -1)
	f := basictypes.MakerId("f")

	f1 := basictypes.MakerPred(p, []basictypes.Term{x})
	f2 := basictypes.MakerPred(p, []basictypes.Term{basictypes.MakerFun(f, []basictypes.Term{x})})
	f3 := basictypes.MakerPred(p, []basictypes.Term{basictypes.MakerFun(f, []basictypes.Term{y})})

	LaunchTest(
		19,
		[]treetypes.MatchingSubstitutions{
			treetypes.MakeMatchingSubstitutions(f3, treetypes.Substitutions{x: basictypes.MakerFun(f, []basictypes.Term{y})}),
		},
		basictypes.MakeSingleElementList(f1),
		[]basictypes.Form{f2, f3},
	)
}

/**
* Metavariable failure.
**/
func Test20() {
	p := basictypes.MakerId("P")
	x := basictypes.MakerMeta("X", -1)
	f := basictypes.MakerId("f")
	a := basictypes.MakerConst(basictypes.MakerId("a"))
	b := basictypes.MakerConst(basictypes.MakerId("b"))

	f1 := basictypes.MakerPred(p, []basictypes.Term{x, basictypes.MakerFun(f, []basictypes.Term{a, x})})
	f2 := basictypes.MakerPred(p, []basictypes.Term{basictypes.MakerFun(f, []basictypes.Term{b}), basictypes.MakerFun(f, []basictypes.Term{a, basictypes.MakerFun(f, []basictypes.Term{x})})})

	LaunchTest(
		20,
		[]treetypes.MatchingSubstitutions{},
		basictypes.MakeSingleElementList(f1),
		basictypes.MakeSingleElementList(f2),
	)

	LaunchTest(
		20,
		[]treetypes.MatchingSubstitutions{},
		basictypes.MakeSingleElementList(f2),
		basictypes.MakeSingleElementList(f1),
	)
}

/**
* Metavariable failure.
**/
func Test21() {
	p := basictypes.MakerId("P")
	x := basictypes.MakerMeta("X", -1)
	f := basictypes.MakerId("f")
	a := basictypes.MakerConst(basictypes.MakerId("a"))
	b := basictypes.MakerConst(basictypes.MakerId("b"))

	f1 := basictypes.MakerPred(p, []basictypes.Term{x, basictypes.MakerFun(f, []basictypes.Term{a, x}), b})
	f2 := basictypes.MakerPred(p, []basictypes.Term{x, basictypes.MakerFun(f, []basictypes.Term{a, x})})

	LaunchTest(
		21,
		[]treetypes.MatchingSubstitutions{},
		basictypes.MakeSingleElementList(f1),
		basictypes.MakeSingleElementList(f2),
	)

	LaunchTest(
		21,
		[]treetypes.MatchingSubstitutions{},
		basictypes.MakeSingleElementList(f2),
		basictypes.MakeSingleElementList(f1),
	)
}

/**
* Metavariable success.
**/
func Test22() {
	p := basictypes.MakerId("P")
	x := basictypes.MakerMeta("X", -1)
	y := basictypes.MakerMeta("Y", -1)
	z := basictypes.MakerMeta("Z", -1)

	f1 := basictypes.MakerPred(p, []basictypes.Term{x, y, z})
	f2 := basictypes.MakerPred(p, []basictypes.Term{y, z, y})

	LaunchTest(
		22,
		[]treetypes.MatchingSubstitutions{
			treetypes.MakeMatchingSubstitutions(f2, treetypes.Substitutions{x: z, y: z}),
		},
		basictypes.MakeSingleElementList(f1),
		basictypes.MakeSingleElementList(f2),
	)

	LaunchTest(
		22,
		[]treetypes.MatchingSubstitutions{
			treetypes.MakeMatchingSubstitutions(f1, treetypes.Substitutions{x: z, y: z}),
		},
		basictypes.MakeSingleElementList(f2),
		basictypes.MakeSingleElementList(f1),
	)
}

/**
* Simple success.
**/
func Test23() {
	p1 := basictypes.MakerId("P1")
	p2 := basictypes.MakerId("P2")

	f1 := basictypes.MakerPred(p1, []basictypes.Term{})
	f2 := basictypes.MakerPred(p2, []basictypes.Term{})

	LaunchTest(
		23,
		[]treetypes.MatchingSubstitutions{},
		basictypes.MakeSingleElementList(f1),
		[]basictypes.Form{f1, f2},
	)
}

/**
P(X, f(X), Z1, Z2, Z1)
P(T1, Y, f(Y), T1, T2)
**/
func Test24() {
	p := basictypes.MakerId("P")
	x := basictypes.MakerMeta("X", -1)
	z1 := basictypes.MakerMeta("Z", -1)
	z2 := basictypes.MakerMeta("Z", -1)
	//t1 := basictypes.MakerMeta("T")
	//t2 := basictypes.MakerMeta("T")
	//y := basictypes.MakerMeta("Y")
	f := basictypes.MakerId("f")

	f1 := basictypes.MakerPred(p, []basictypes.Term{x, basictypes.MakerFun(f, []basictypes.Term{x}), z1, z2, z1})
	f2 := basictypes.MakerPred(p, []basictypes.Term{z1, x, basictypes.MakerFun(f, []basictypes.Term{x}), z1, z2})

	LaunchTest(
		24,
		[]treetypes.MatchingSubstitutions{},
		basictypes.MakeSingleElementList(f2),
		basictypes.MakeSingleElementList(f1),
	)
}

/**
big_f(X_0, skolem_Y(X_0), Z1_0, Z2_0, Z1_0) - X_0, Z1_0, Z2_0
¬big_f(Z1_0, X_0, skolem_Y(X_0), Z1_0, Z2_0)
**/
func Test25() {
	p := basictypes.MakerId("P")
	x := basictypes.MakerMeta("X", -1)
	//s_x := basictypes.MakerConst(basictypes.MakerId("skolem_X"))
	//y := basictypes.MakerMeta("Y")
	z1 := basictypes.MakerMeta("Z", -1)
	z2 := basictypes.MakerMeta("Z", -1)
	f := basictypes.MakerId("f")
	//s := basictypes.MakerId("skolem_Z")

	f1 := basictypes.MakerPred(p, []basictypes.Term{x, basictypes.MakerFun(f, []basictypes.Term{x}), z1, z2, z1})
	f2 := basictypes.MakerPred(p, []basictypes.Term{z1, x, basictypes.MakerFun(f, []basictypes.Term{x}), z1, z2})

	//f1 := basictypes.MakerPred(p, []basictypes.Term{basictypes.MakerFun(s, []basictypes.Term{y}), y}}
	//f2 := basictypes.MakerPred(p, []basictypes.Term{basictypes.MakerFun(s, []basictypes.Term{y}), basictypes.MakerFun(f, []basictypes.Term{s_x})}}
	LaunchTest(
		25,
		[]treetypes.MatchingSubstitutions{},
		basictypes.MakeSingleElementList(f2),
		basictypes.MakeSingleElementList(f1),
	)

	LaunchTest(
		25,
		[]treetypes.MatchingSubstitutions{},
		basictypes.MakeSingleElementList(f1),
		basictypes.MakeSingleElementList(f2),
	)
}

/**
P(X), P(Y), P(f(f(X)))
P(f(Y))
**/
func Test26() {
	p := basictypes.MakerId("P")
	x := basictypes.MakerMeta("X", -1)
	y := basictypes.MakerMeta("Y", -1)
	f := basictypes.MakerId("f")
	ffx := basictypes.MakerFun(f, []basictypes.Term{basictypes.MakerFun(f, []basictypes.Term{x})})
	fx := basictypes.MakerFun(f, []basictypes.Term{x})
	fy := basictypes.MakerFun(f, []basictypes.Term{y})

	f1 := basictypes.MakerPred(p, []basictypes.Term{x})
	f2 := basictypes.MakerPred(p, []basictypes.Term{y})
	f3 := basictypes.MakerPred(p, []basictypes.Term{ffx})
	f4 := basictypes.MakerPred(p, []basictypes.Term{fy})

	LaunchTest(
		26,
		[]treetypes.MatchingSubstitutions{
			treetypes.MakeMatchingSubstitutions(f1, treetypes.Substitutions{x: fy}),
			treetypes.MakeMatchingSubstitutions(f3, treetypes.Substitutions{y: fx}),
		},
		basictypes.MakeSingleElementList(f4),
		[]basictypes.Form{f1, f2, f3},
	)
}

/**
P(f)
P(f(f(Y)))
Retourne une erreur
**/
func Test27() {
	p := basictypes.MakerId("P")
	// x := basictypes.MakerMeta("X")
	y := basictypes.MakerMeta("Y", -1)
	f := basictypes.MakerId("f")
	ffy := basictypes.MakerFun(f, []basictypes.Term{basictypes.MakerFun(f, []basictypes.Term{y})})

	f1 := basictypes.MakerPred(p, []basictypes.Term{basictypes.MakerConst(f)})
	f2 := basictypes.MakerPred(p, []basictypes.Term{ffy})

	LaunchTest(
		27,
		[]treetypes.MatchingSubstitutions{},
		basictypes.MakeSingleElementList(f1),
		basictypes.MakeSingleElementList(f2),
	)

	LaunchTest(
		27,
		[]treetypes.MatchingSubstitutions{},
		basictypes.MakeSingleElementList(f2),
		basictypes.MakeSingleElementList(f1),
	)
}

/**
P(X)
P(f(f(Y)))
**/
func Test28() {
	p := basictypes.MakerId("P")
	x := basictypes.MakerMeta("X", -1)
	y := basictypes.MakerMeta("Y", -1)
	f := basictypes.MakerId("f")
	ffy := basictypes.MakerFun(f, []basictypes.Term{basictypes.MakerFun(f, []basictypes.Term{y})})

	f1 := basictypes.MakerPred(p, []basictypes.Term{x})
	f2 := basictypes.MakerPred(p, []basictypes.Term{ffy})

	LaunchTest(
		28,
		[]treetypes.MatchingSubstitutions{
			treetypes.MakeMatchingSubstitutions(f2, treetypes.Substitutions{x: ffy}),
		},
		basictypes.MakeSingleElementList(f1),
		basictypes.MakeSingleElementList(f2),
	)

	LaunchTest(
		28,
		[]treetypes.MatchingSubstitutions{
			treetypes.MakeMatchingSubstitutions(f1, treetypes.Substitutions{x: ffy}),
		},
		basictypes.MakeSingleElementList(f2),
		basictypes.MakeSingleElementList(f1),
	)
}

/**
basictypes.Form :
¬f(X_250, Y_250)

Tree :
f(X_197, Y_7)
f(X_197, skolem_Z(X_197, Y_7))
f(X_197, skolem_Z(X_197, skolem_Z(X_197, Y_7)))
**/
func Test29() {

	x_250 := basictypes.MakerMeta("X", -1)
	y_250 := basictypes.MakerMeta("Y", -1)

	f := basictypes.MakerId("f")
	x_197 := basictypes.MakerMeta("X", -1)
	g := basictypes.MakerId("g")
	y_7 := basictypes.MakerMeta("Y", -1)
	sk_x197_y7 := basictypes.MakerFun(g, []basictypes.Term{x_197, y_7})

	f0 := basictypes.MakerPred(f, []basictypes.Term{x_250, y_250})
	f2 := basictypes.MakerPred(f, []basictypes.Term{x_197, sk_x197_y7})
	f3 := basictypes.MakerPred(f, []basictypes.Term{x_197, basictypes.MakerFun(g, []basictypes.Term{x_197, sk_x197_y7})})

	LaunchTest(
		29,
		[]treetypes.MatchingSubstitutions{
			treetypes.MakeMatchingSubstitutions(f2, treetypes.Substitutions{x_197: x_250, y_250: basictypes.MakerFun(g, []basictypes.Term{x_250, y_7})}),
			treetypes.MakeMatchingSubstitutions(f3, treetypes.Substitutions{x_197: x_250, y_250: basictypes.MakerFun(g, []basictypes.Term{x_250, basictypes.MakerFun(g, []basictypes.Term{x_250, y_7})})}),
		},
		basictypes.MakeSingleElementList(f0),
		[]basictypes.Form{f2, f3},
	)
}

/**
* P(Z)
* P(f(a))
* P(f(f(a)))
**/
func Test30() {
	p := basictypes.MakerId("P")
	a := basictypes.MakerConst(basictypes.MakerId("a"))
	z := basictypes.MakerMeta("Z", -1)
	fun := basictypes.MakerId("f")

	f := basictypes.MakerPred(p, []basictypes.Term{basictypes.MakerFun(fun, []basictypes.Term{basictypes.MakerFun(fun, []basictypes.Term{a})})})

	f1 := basictypes.MakerPred(p, []basictypes.Term{basictypes.MakerFun(fun, []basictypes.Term{a})})
	f2 := basictypes.MakerPred(p, []basictypes.Term{z})

	LaunchTest(
		30,
		[]treetypes.MatchingSubstitutions{
			treetypes.MakeMatchingSubstitutions(f2, treetypes.Substitutions{}),
			treetypes.MakeMatchingSubstitutions(f1, treetypes.Substitutions{z: basictypes.MakerFun(fun, []basictypes.Term{a})}),
			treetypes.MakeMatchingSubstitutions(f, treetypes.Substitutions{z: basictypes.MakerFun(fun, []basictypes.Term{basictypes.MakerFun(fun, []basictypes.Term{a})})}),
		},
		basictypes.MakeSingleElementList(f2),
		[]basictypes.Form{f, f1, f2},
	)
}

/**
* P(X)
* P(f(a))
* P(Y)
**/
func Test31() {
	p := basictypes.MakerId("P")
	a := basictypes.MakerConst(basictypes.MakerId("a"))
	X := basictypes.MakerMeta("Z", -1)
	Y := basictypes.MakerMeta("Y", -1)
	fun := basictypes.MakerId("f")

	f := basictypes.MakerPred(p, []basictypes.Term{basictypes.MakerFun(fun, []basictypes.Term{X})})

	f1 := basictypes.MakerPred(p, []basictypes.Term{basictypes.MakerFun(fun, []basictypes.Term{a})})
	f2 := basictypes.MakerPred(p, []basictypes.Term{Y})

	LaunchTest(
		31,
		[]treetypes.MatchingSubstitutions{
			treetypes.MakeMatchingSubstitutions(f, treetypes.Substitutions{}),
			treetypes.MakeMatchingSubstitutions(f1, treetypes.Substitutions{X: a}),
			treetypes.MakeMatchingSubstitutions(f2, treetypes.Substitutions{Y: basictypes.MakerFun(fun, []basictypes.Term{X})}),
		},
		basictypes.MakeSingleElementList(f),
		[]basictypes.Form{f, f1, f2},
	)
}

/**
g(skolem_Z(skolem_Z(X_14, skolem_Z(X_14, Y_1)), skolem_Z(X_14, skolem_Z(X_14, Y_1))), skolem_Z(skolem_Z(X_14, skolem_Z(X_14, Y_1)), skolem_Z(X_14, skolem_Z(X_14, Y_1))))
P(f(f(X,f(X, Y)),f(X,f(X, Y))),f(f(X, f(X, Y)), f(X, f(X, Y))))
**/
func Test32() {
	p := basictypes.MakerId("P")
	f := basictypes.MakerId("f")
	x := basictypes.MakerMeta("x", -1)
	z := basictypes.MakerMeta("z", -1)
	fun_1 := basictypes.MakerFun(f, []basictypes.Term{x})
	fun_2 := basictypes.MakerFun(f, []basictypes.Term{fun_1, fun_1})

	f1 := basictypes.MakerPred(p, []basictypes.Term{fun_2, z})

	LaunchTest(
		32,
		[]treetypes.MatchingSubstitutions{
			treetypes.MakeMatchingSubstitutions(f1, treetypes.Substitutions{}),
		},
		basictypes.MakeSingleElementList(f1),
		basictypes.MakeSingleElementList(f1),
	)

}

/**
P(X, Y)
P(f(X1, Y1), f(f(x1, y1), y1))
**/
func Test33() {
	p := basictypes.MakerId("P")
	f := basictypes.MakerId("f")
	x0 := basictypes.MakerMeta("x", -1)
	x1 := basictypes.MakerMeta("x", -1)
	y0 := basictypes.MakerMeta("y", -1)
	y1 := basictypes.MakerMeta("y", -1)
	fun_1 := basictypes.MakerFun(f, []basictypes.Term{x1, y1})
	fun_2 := basictypes.MakerFun(f, []basictypes.Term{fun_1, y1})

	f1 := basictypes.MakerPred(p, []basictypes.Term{x0, y0})
	f2 := basictypes.MakerPred(p, []basictypes.Term{fun_1, fun_2})

	LaunchTest(
		33,
		[]treetypes.MatchingSubstitutions{
			treetypes.MakeMatchingSubstitutions(f2, treetypes.Substitutions{y0: fun_2, x0: fun_1}),
		},
		basictypes.MakeSingleElementList(f1),
		basictypes.MakeSingleElementList(f2),
	)

	LaunchTest(
		33,
		[]treetypes.MatchingSubstitutions{
			treetypes.MakeMatchingSubstitutions(f1, treetypes.Substitutions{y0: fun_2, x0: fun_1}),
		},
		basictypes.MakeSingleElementList(f2),
		basictypes.MakeSingleElementList(f1),
	)

}

/**
* ¬big_f(a, X)
* big_f(a, f(a))
**/
func Test34() {
	p := basictypes.MakerId("P")
	f := basictypes.MakerId("f")
	x := basictypes.MakerMeta("x", -1)
	a := basictypes.MakerConst(basictypes.MakerId("a"))
	fa := basictypes.MakerFun(f, []basictypes.Term{a})

	f1 := basictypes.MakerPred(p, []basictypes.Term{a, x})
	f2 := basictypes.MakerPred(p, []basictypes.Term{a, fa})

	LaunchTest(
		34,
		[]treetypes.MatchingSubstitutions{
			treetypes.MakeMatchingSubstitutions(f2, treetypes.Substitutions{x: fa}),
		},
		basictypes.MakeSingleElementList(f1),
		basictypes.MakeSingleElementList(f2),
	)

	LaunchTest(
		34,
		[]treetypes.MatchingSubstitutions{
			treetypes.MakeMatchingSubstitutions(f1, treetypes.Substitutions{x: fa}),
		},
		basictypes.MakeSingleElementList(f2),
		basictypes.MakeSingleElementList(f1),
	)

}

/**
* ¬big_f(a, X, a)
* big_f(a, f(a), a)
**/
func Test35() {
	p := basictypes.MakerId("P")
	f := basictypes.MakerId("f")
	x := basictypes.MakerMeta("x", -1)
	a := basictypes.MakerConst(basictypes.MakerId("a"))
	fa := basictypes.MakerFun(f, []basictypes.Term{a, a, a})

	f1 := basictypes.MakerPred(p, []basictypes.Term{a, x, a})
	f2 := basictypes.MakerPred(p, []basictypes.Term{a, fa, a})

	LaunchTest(
		35,
		[]treetypes.MatchingSubstitutions{
			treetypes.MakeMatchingSubstitutions(f2, treetypes.Substitutions{x: fa}),
		},
		basictypes.MakeSingleElementList(f1),
		basictypes.MakeSingleElementList(f2),
	)

	LaunchTest(
		35,
		[]treetypes.MatchingSubstitutions{
			treetypes.MakeMatchingSubstitutions(f1, treetypes.Substitutions{x: fa}),
		},
		basictypes.MakeSingleElementList(f2),
		basictypes.MakeSingleElementList(f1),
	)

}

/**
* Test 36
* P(X, f(Y, X))
* P(Z, f(Z, g(Z)))
* occur check
**/
func Test36() {
	p := basictypes.MakerId("P")
	f := basictypes.MakerId("f")
	g := basictypes.MakerId("g")
	x := basictypes.MakerMeta("x", -1)
	y := basictypes.MakerMeta("y", -1)
	z := basictypes.MakerMeta("z", -1)

	f1 := basictypes.MakerPred(p, []basictypes.Term{x, basictypes.MakeFun(f, []basictypes.Term{y, x})})
	f2 := basictypes.MakerPred(p, []basictypes.Term{z, basictypes.MakeFun(f, []basictypes.Term{z, basictypes.MakeFun(g, []basictypes.Term{z})})})

	LaunchTest(
		36,
		[]treetypes.MatchingSubstitutions{},
		basictypes.MakeSingleElementList(f1),
		basictypes.MakeSingleElementList(f2),
	)

	LaunchTest(
		36,
		[]treetypes.MatchingSubstitutions{},
		basictypes.MakeSingleElementList(f2),
		basictypes.MakeSingleElementList(f1),
	)

}

/**
* Test 37
* P(f(a))
* P(f(X))
**/
func Test37() {
	p := basictypes.MakerId("P")
	f := basictypes.MakerId("f")
	a := basictypes.MakerConst(basictypes.MakerId("a"))
	x := basictypes.MakerMeta("x", -1)

	f1 := basictypes.MakerPred(p, []basictypes.Term{basictypes.MakeFun(f, []basictypes.Term{a})})
	f2 := basictypes.MakerPred(p, []basictypes.Term{basictypes.MakeFun(f, []basictypes.Term{x})})

	LaunchTest(
		37,
		[]treetypes.MatchingSubstitutions{treetypes.MakeMatchingSubstitutions(f2, treetypes.Substitutions{x: a})},
		basictypes.MakeSingleElementList(f1),
		basictypes.MakeSingleElementList(f2),
	)

	LaunchTest(
		37,
		[]treetypes.MatchingSubstitutions{treetypes.MakeMatchingSubstitutions(f1, treetypes.Substitutions{x: a})},
		basictypes.MakeSingleElementList(f2),
		basictypes.MakeSingleElementList(f1),
	)

}

/**
* Test 38
* P(f(a))
* P(f(b))
**/
func Test38() {
	p := basictypes.MakerId("P")
	f := basictypes.MakerId("f")
	a := basictypes.MakerConst(basictypes.MakerId("a"))
	b := basictypes.MakerConst(basictypes.MakerId("b"))

	f1 := basictypes.MakerPred(p, []basictypes.Term{basictypes.MakeFun(f, []basictypes.Term{a})})
	f2 := basictypes.MakerPred(p, []basictypes.Term{basictypes.MakeFun(f, []basictypes.Term{b})})

	LaunchTest(
		38,
		[]treetypes.MatchingSubstitutions{},
		basictypes.MakeSingleElementList(f1),
		basictypes.MakeSingleElementList(f2),
	)

	LaunchTest(
		38,
		[]treetypes.MatchingSubstitutions{},
		basictypes.MakeSingleElementList(f2),
		basictypes.MakeSingleElementList(f1),
	)

}

/**
* Test 39
* P(Y, f(Y, X))
*
* P(X, Y)
* P(Y, X)
**/
func Test39() {
	p := basictypes.MakerId("P")
	f := basictypes.MakerId("f")
	X := basictypes.MakerMeta("X", -1)
	Y := basictypes.MakerMeta("Y", -1)

	f1 := basictypes.MakerPred(p, []basictypes.Term{Y, basictypes.MakeFun(f, []basictypes.Term{Y, basictypes.MakeFun(f, []basictypes.Term{X})})})
	f2 := basictypes.MakerPred(p, []basictypes.Term{X, Y})
	f3 := basictypes.MakerPred(p, []basictypes.Term{Y, X})

	LaunchTest(
		39,
		[]treetypes.MatchingSubstitutions{},
		basictypes.MakeSingleElementList(f1),
		[]basictypes.Form{f2, f3},
	)
}

/** Test 40
* P(X, Y, Z)
* ¬P(f(X2, g(Y2)), X2, h(X2))
**/
func Test40() {
	p := basictypes.MakerId("P")
	f := basictypes.MakerId("f")
	g := basictypes.MakerId("g")
	h := basictypes.MakerId("h")
	X := basictypes.MakerMeta("X", -1)
	Y := basictypes.MakerMeta("Y", -1)
	Z := basictypes.MakerMeta("Z", -1)
	X2 := basictypes.MakerMeta("X2", -1)
	Y2 := basictypes.MakerMeta("Y2", -1)

	f1 := basictypes.MakerPred(p, []basictypes.Term{X, Y, Z})
	f2 := basictypes.MakerPred(p, []basictypes.Term{basictypes.MakeFun(f, []basictypes.Term{X2, basictypes.MakeFun(g, []basictypes.Term{Y2})}), X2, basictypes.MakeFun(h, []basictypes.Term{X2})})

	LaunchTest(
		40,
		[]treetypes.MatchingSubstitutions{treetypes.MakeMatchingSubstitutions(f2,
			treetypes.Substitutions{
				X:  basictypes.MakeFun(f, []basictypes.Term{Y, basictypes.MakeFun(g, []basictypes.Term{Y2})}),
				X2: Y,
				Z:  basictypes.MakeFun(h, []basictypes.Term{Y})})},
		basictypes.MakeSingleElementList(f1),
		basictypes.MakeSingleElementList(f2),
	)

	LaunchTest(
		40,
		[]treetypes.MatchingSubstitutions{treetypes.MakeMatchingSubstitutions(f1,
			treetypes.Substitutions{
				X: basictypes.MakeFun(f, []basictypes.Term{X2, basictypes.MakeFun(g, []basictypes.Term{Y2})}),
				Y: X2,
				Z: basictypes.MakeFun(h, []basictypes.Term{X2})})},
		basictypes.MakeSingleElementList(f2),
		basictypes.MakeSingleElementList(f1),
	)
}

/** Test 41
* Formule : P(Y2, Y1, f(Y1, Y2, Y3)) - Y1, Y2, Y3
*
* Arbre :
* ¬P(X2, X1, g(X1, X2, X3))
* ¬P(g(X1, X2, X3), X2, X1)
* ¬P(X1, X2, X3)
* ¬P(skolem_X0_1, skolem_X0_1, g(X1, X2, X3))
* ¬P(X2, X3, X1)
* ¬P(h(g(X1, X2, X3), g(X1, X2, X3), g(X1, X2, X3)), h(g(X1, X2, X3), g(X1, X2, X3), g(X1, X2, X3)), h(g(X1, X2, X3), g(X1, X2, X3), g(X1, X2, X3)))
* ¬P(skolem_X0_1, skolem_X0_1, h(g(X1, X2, X3), g(X1, X2, X3), g(X1, X2, X3)))
*
**/
func Test41() {
	p := basictypes.MakerId("P")
	f := basictypes.MakerId("f")
	g := basictypes.MakerId("g")
	h := basictypes.MakerId("h")
	X1 := basictypes.MakerMeta("X1", -1)
	X2 := basictypes.MakerMeta("X2", -1)
	X3 := basictypes.MakerMeta("X3", -1)
	Y1 := basictypes.MakerMeta("Y1", -1)
	Y2 := basictypes.MakerMeta("Y2", -1)
	Y3 := basictypes.MakerMeta("Y3", -1)
	sk := basictypes.MakerConst(basictypes.MakerId("skolem"))
	fy := basictypes.MakeFun(f, []basictypes.Term{Y1, Y2, Y3})
	gx := basictypes.MakeFun(g, []basictypes.Term{X1, X2, X3})
	hgx := basictypes.MakeFun(h, []basictypes.Term{gx, gx, gx})

	// Formule
	f1 := basictypes.MakerPred(p, []basictypes.Term{Y2, Y1, fy})

	// Tree
	f2 := basictypes.MakerPred(p, []basictypes.Term{X2, X1, gx})
	f3 := basictypes.MakerPred(p, []basictypes.Term{gx, X2, X1})
	f4 := basictypes.MakerPred(p, []basictypes.Term{X1, X2, X3})
	f5 := basictypes.MakerPred(p, []basictypes.Term{sk, sk, gx})
	f6 := basictypes.MakerPred(p, []basictypes.Term{X2, X3, X1})
	f7 := basictypes.MakerPred(p, []basictypes.Term{hgx, hgx, hgx})
	f8 := basictypes.MakerPred(p, []basictypes.Term{sk, sk, hgx})

	LaunchTest(
		41,
		[]treetypes.MatchingSubstitutions{
			treetypes.MakeMatchingSubstitutions(f4, treetypes.Substitutions{X1: Y2, X2: Y1, X3: fy}),
			treetypes.MakeMatchingSubstitutions(f6, treetypes.Substitutions{X1: fy, X2: Y2, X3: Y1})},
		basictypes.MakeSingleElementList(f1),
		[]basictypes.Form{f2, f3, f4, f5, f6, f7, f8},
	)
}
