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
package Core

import (
	"github.com/GoelandProver/Goeland/AST"
	"github.com/GoelandProver/Goeland/Core/Sko"
	"github.com/GoelandProver/Goeland/Glob"
	"github.com/GoelandProver/Goeland/Lib"
)

/** This file provides multiple ways to skolemize a formula.
 *
 * Currently implemented techniques:
 *
 *   - outer skolemization. Default technique: fresh symbol parameterized by
 *     all the metavariables of the branch.
 *
 *   - inner skolemization. Somewhat optimized technique: fresh symbol
 *     parameterized by the metavariables appearing _inside_ the formula to
 *     skolemize. Activated with the -inner option.
 *
 *   - pre-inner skolemization. This is the same mechanism as inner
 *     skolemization, except that we reuse the skolem symbol when skolemizing
 *     multiple times formulas in the same alpha-equivalence class. Activated
 *     using the -preinner option.
 *
 * We provide a generic [Skolemization] interface, which implements a single
 * function [skolemize] parameterized by (i) the formula to skolemize ∃x.δ(x),
 * (ii) the formula δ(x) where x should be replaced, (iii) the variable x itself
 * and (iv) the list of metavariables present inside a branch.
 *
 * If you wish to implement a new skolemization technique, you should follow
 * these steps:
 *
 *   1. Add a brief description of the technique in the list above.
 *   2. Create a file in the [Sko] folder with a structure that implements
 *      the [Skolemization] interface.
 *   3. Add a variable in this file refering to this structure.
 *   4. Add an option that updates the [selectedSkolemization] variable (via
 *      the function [SetSelectedSkolemization]).
 **/

var selectedSkolemization Sko.Skolemization = Sko.MkOuterSkolemization()

const (
	isNegAll = iota
	isExists = iota
)

func SetSelectedSkolemization(sko Sko.Skolemization) {
	selectedSkolemization = sko
}

/**
 * Skolemizes the formula f once (e.g., if f is ∃(x,y,z). δ, only x will be
 * treated).
 */
func Skolemize(form AST.Form, branchMetas *AST.MetaList) AST.Form {
	metas := Lib.MkListV(branchMetas.List.Slice()...)

	switch nf := form.(type) {
	case AST.Not:
		switch f := nf.GetForm().(type) {
		case AST.All:
			return realSkolemize(
				form,
				f.GetForm(),
				f.GetVarList()[0],
				f.GetVarList(),
				metas,
				isNegAll,
			)
		default:
			Glob.Anomaly("Skolemization", "on illegal negated form")
		}
	case AST.Ex:
		return realSkolemize(
			form,
			nf.GetForm(),
			nf.GetVarList()[0],
			nf.GetVarList(),
			metas,
			isExists,
		)
	default:
		Glob.Anomaly("Skolemization", "on illegal form")
	}

	return form
}

func realSkolemize(
	initialForm, deltaForm AST.Form,
	x AST.Var,
	allVars []AST.Var,
	metas Lib.List[AST.Meta],
	typ int,
) AST.Form {
	internalMetas := initialForm.GetInternalMetas()
	sko, res := selectedSkolemization.Skolemize(
		initialForm,
		deltaForm,
		x,
		metas,
	)
	selectedSkolemization = sko
	res.SetInternalMetas(internalMetas)
	switch typ {
	case isNegAll:
		if len(allVars) > 1 {
			res = AST.MakerAll(allVars[1:], res).SetInternalMetas(internalMetas)
		}
		res = AST.RefuteForm(res)
	case isExists:
		if len(allVars) > 1 {
			res = AST.MakerEx(allVars[1:], res).SetInternalMetas(internalMetas)
		}
	default:
		Glob.Anomaly("Skolemization", "impossible reconstruction case")
	}
	return res
}
