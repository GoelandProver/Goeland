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
 * This file is the entry point to perform typing of a formula.
 * It implements all the rules.
**/

package Typing

import (
	"fmt"
	"github.com/GoelandProver/Goeland/AST"
	"github.com/GoelandProver/Goeland/Glob"
	"github.com/GoelandProver/Goeland/Lib"
)

var label = "typing"

func TypeCheck(form AST.Form) bool {
	return typecheckForm(emptyCon(), form)
}

func typecheckForm(con Con, form AST.Form) bool {
	switch f := form.(type) {
	case AST.Bot, AST.Top:
		return true
	case AST.Pred:
		return checkFunctional(
			con,
			f.GetID().GetName(),
			f.GetTyArgs(),
			f.GetArgs(),
			Lib.MkLazy(func() string { return form.ToString() }),
		)

	case AST.Not, AST.And, AST.Or, AST.Imp, AST.Equ:
		return typecheckRec(
			con,
			f.GetChildFormulas(),
			Lib.NewList[Lib.Pair[AST.Term, AST.Ty]](),
			Lib.NewList[AST.Ty](),
		)

	case AST.All:
		return typecheckRec(
			con.addTypedVars(f.GetVarList()),
			Lib.MkListV(f.GetForm()),
			Lib.NewList[Lib.Pair[AST.Term, AST.Ty]](),
			Lib.NewList[AST.Ty](),
		)

	case AST.Ex:
		return typecheckRec(
			con.addTypedVars(f.GetVarList()),
			Lib.MkListV(f.GetForm()),
			Lib.NewList[Lib.Pair[AST.Term, AST.Ty]](),
			Lib.NewList[AST.Ty](),
		)
	}

	Glob.Anomaly(
		label,
		fmt.Sprintf("%s is not a known internal formula", form.ToString()),
	)
	return false
}

func typecheckTerm(con Con, term AST.Term, ty AST.Ty) bool {
	switch t := term.(type) {
	case AST.Var:
		if !con.contains(t.GetName(), ty) {
			Glob.Fatal(
				label,
				fmt.Sprintf(
					"Variable %s is either not in the context or should not have type %s\nContext: %s",
					t.GetName(),
					ty.ToString(),
					con.toString(),
				))
			return false
		}

		return typecheckRec(
			con,
			Lib.NewList[AST.Form](),
			Lib.NewList[Lib.Pair[AST.Term, AST.Ty]](),
			Lib.MkListV(ty),
		)

	case AST.Fun:
		return checkFunctional(
			con,
			t.GetID().GetName(),
			t.GetTyArgs(),
			t.GetArgs(),
			Lib.MkLazy(func() string { return t.ToString() }),
		)
	}

	Glob.Anomaly(
		label,
		fmt.Sprintf("Only bound variables and functions should be typechecked, but found %s", term.ToString()),
	)
	return false
}

func typecheckType(con Con, ty AST.Ty) bool {
	switch nty := ty.(type) {
	case AST.TyBound:
		if !con.contains(nty.GetName(), AST.TType()) {
			Glob.PrintInfo("Context", con.toString())
			Glob.Fatal(
				label,
				fmt.Sprintf(
					"Variable %s is either not in the context or is not a type variable\nContext: %s",
					nty.ToString(),
					con.toString(),
				))
			return false
		}

		return true

	case AST.TyConstr:
		oty := QueryGlobalEnv(nty.Symbol())

		switch rty := oty.(type) {
		case Lib.Some[AST.Ty]:
			args := AST.GetArgsTy(rty.Val)
			if args.Len() != nty.Args().Len() {
				Glob.Fatal(
					label,
					fmt.Sprintf(
						"Type constructor %s expects %d arguments, got %d",
						nty.Symbol(),
						args.Len(),
						nty.Args().Len(),
					),
				)
				return false
			}

			if nty.Args().Empty() {
				return true
			}

			return typecheckRec(
				con,
				Lib.NewList[AST.Form](),
				Lib.NewList[Lib.Pair[AST.Term, AST.Ty]](),
				nty.Args(),
			)

		case Lib.None[AST.Ty]:
			Glob.Anomaly(
				label,
				fmt.Sprintf("Unknown type %s", nty.ToString()),
			)
		}
	}

	Glob.Anomaly(
		label,
		fmt.Sprintf("On typechecking of types: expected atomic type, got %s", ty.ToString()),
	)
	return false
}

func checkFunctional(
	con Con,
	name string,
	tys Lib.List[AST.Ty],
	args Lib.List[AST.Term],
	debug_str Lib.Lazy[string],
) bool {
	oty := QueryEnvInstance(name, tys)
	switch ty := oty.(type) {
	case Lib.Some[AST.Ty]:
		instantiated_ty := AST.GetArgsTy(ty.Val)
		terms_checker := buildTermCheckList(
			debug_str,
			ty.Val,
			args,
			instantiated_ty,
		)
		tys.Append(AST.GetOutTy(ty.Val))

		return typecheckRec(con, Lib.NewList[AST.Form](), terms_checker, tys)

	case Lib.None[AST.Ty]:
		Glob.Fatal(
			label,
			fmt.Sprintf("Type of %s not found in the global environment", debug_str.Run()),
		)
	}
	return false
}

func typecheckRec(
	con Con,
	forms Lib.List[AST.Form],
	typed_terms Lib.List[Lib.Pair[AST.Term, AST.Ty]],
	tys Lib.List[AST.Ty],
) bool {
	calls := []func(chan bool){}

	for _, form := range forms.GetSlice() {
		loop_form := form
		calls = append(calls, func(outchan chan bool) {
			outchan <- typecheckForm(con, loop_form)
		})
	}

	for _, typed_term := range typed_terms.GetSlice() {
		loop_term := typed_term
		calls = append(calls, func(outchan chan bool) {
			outchan <- typecheckTerm(con, loop_term.Fst, loop_term.Snd)
		})
	}

	for _, ty := range tys.GetSlice() {
		loop_ty := ty
		calls = append(calls, func(outchan chan bool) {
			outchan <- typecheckType(con, loop_ty)
		})
	}

	res, err := Lib.GenericParallel(
		calls,
		func(x, y bool) bool { return x && y },
		true, // Neutral of the operation
	)

	if err != nil {
		Glob.Anomaly(
			label,
			fmt.Sprintf("Encountered a Lib error: %s", err.Error()),
		)
	}

	return res
}

func buildTermCheckList(
	debug_str Lib.Lazy[string],
	ty AST.Ty,
	terms Lib.List[AST.Term],
	tys Lib.List[AST.Ty],
) Lib.List[Lib.Pair[AST.Term, AST.Ty]] {
	if terms.Len() != tys.Len() {
		Glob.Fatal(
			label,
			fmt.Sprintf("Expected %d arguments in %s (which has type %s), but got %d",
				tys.Len(), debug_str.Run(), ty.ToString(), terms.Len()),
		)
		return Lib.NewList[Lib.Pair[AST.Term, AST.Ty]]()
	}

	ls := Lib.MkList[Lib.Pair[AST.Term, AST.Ty]](terms.Len())
	for i := range terms.GetSlice() {
		ls.Upd(i, Lib.MkPair(terms.At(i), tys.At(i)))
	}
	return ls
}
