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
 * This file adapts the []ProofStruct to have an IProof implementation
 **/

package Search

import (
	"fmt"

	"github.com/GoelandProver/Goeland/AST"
	"github.com/GoelandProver/Goeland/Glob"
	"github.com/GoelandProver/Goeland/Lib"
	"github.com/GoelandProver/Goeland/Mods/dmt"
)

type TableauxProof []ProofStruct

var label string = "TableauxProof"

func (proof TableauxProof) makeSanityCheck() {
	if len(proof) == 0 {
		Glob.Anomaly(label, "Got an empty proof")
	}
}

// ----------------------------------------------------------------------------
// IProof implementation
// ----------------------------------------------------------------------------

func (proof TableauxProof) AppliedOn() AST.Form {
	proof.makeSanityCheck()

	return proof[0].Formula.GetForm()
}

func (proof TableauxProof) RuleApplied() TableauxRule {
	proof.makeSanityCheck()

	rule_map := map[string]TableauxRule{
		"ALPHA_NOT_NOT":    RuleNotNot,
		"ALPHA_NOT_OR":     RuleNotOr,
		"ALPHA_NOT_IMPLY":  RuleNotImp,
		"ALPHA_AND":        RuleAnd,
		"BETA_NOT_AND":     RuleNotAnd,
		"BETA_NOT_EQUIV":   RuleNotEqu,
		"BETA_OR":          RuleOr,
		"BETA_IMPLY":       RuleImp,
		"BETA_EQUIV":       RuleEqu,
		"GAMMA_NOT_EXISTS": RuleNotEx,
		"GAMMA_FORALL":     RuleAll,
		"DELTA_NOT_FORALL": RuleNotAll,
		"DELTA_EXISTS":     RuleEx,
		"CLOSURE":          RuleClosure,
		"Reintroduction":   RuleReintro,
		"Rewrite":          RuleRew,
	}

	r, ok := rule_map[proof[0].Rule_name]
	if !ok {
		Glob.Anomaly(label, fmt.Sprintf("Unknown tableau rule %s", proof[0].Rule))
	}

	return r
}

func (proof TableauxProof) ResultFormulas() Lib.List[Lib.List[AST.Form]] {
	proof.makeSanityCheck()

	result_forms := Lib.MkList[Lib.List[AST.Form]](len(proof[0].Result_formulas))
	for i, forms := range proof[0].Result_formulas {
		result_forms.Upd(i, forms.GetForms())
	}
	return result_forms
}

func (proof TableauxProof) Children() Lib.List[IProof] {
	proof.makeSanityCheck()

	// If proof has only one element, then either:
	//
	//	(1) it's a closure rule, but then we return an emptyh list
	//	(2) it's a beta rule, and we need to return the children
	//
	// In both cases, it suffices to convert the children to a list.
	// Otherwise, the children are empty and we simply delete the first element.
	if len(proof) == 1 {
		children_proofs := Lib.MkList[IProof](len(proof[0].Children))
		for i, child := range proof[0].Children {
			children_proofs.Upd(i, IProof(TableauxProof(child)))
		}
		return children_proofs
	} else {
		return Lib.MkListV(IProof(TableauxProof(proof[1:])))
	}
}

func (proof TableauxProof) RewrittenWith() Lib.Option[AST.Form] {
	proof.makeSanityCheck()

	dmt_axioms := dmt.GetRegisteredAxioms()
	rewrite_id := proof[0].Id_dmt
	form_opt := Lib.MkNone[AST.Form]()

	for _, axiom := range dmt_axioms.GetSlice() {
		end_form := axiom
		for Glob.Is[AST.All](end_form) {
			end_form = end_form.(AST.All).GetForm()
		}
		end_form = getAtomic(end_form)
		if dmt.RewID(end_form) == rewrite_id {
			form_opt = Lib.MkSome(axiom)
		}
	}

	return form_opt
}

func (proof TableauxProof) TermGenerated() Lib.Option[Lib.Either[AST.Ty, AST.Term]] {
	proof.makeSanityCheck()

	if !(len(proof[0].Result_formulas) == 1 &&
		proof[0].Result_formulas[0].GetForms().Len() == 1) {
		return Lib.MkNone[Lib.Either[AST.Ty, AST.Term]]()
	}

	source_form := proof[0].Formula.GetForm()
	target_form := proof[0].Result_formulas[0].GetForms().At(0)

	replaced_variable, is_quantified := getReplacedVariable(source_form)

	if !is_quantified {
		return Lib.MkNone[Lib.Either[AST.Ty, AST.Term]]()
	}
	debug(Lib.MkLazy(func() string {
		return fmt.Sprintf(
			"Trying to get occurrence of %s in %s",
			replaced_variable.ToString(),
			source_form.ToString(),
		)
	}))

	occurrence_opt := getOneOccurrence(source_form, replaced_variable)

	return Lib.OptBind(
		occurrence_opt,
		func(occurrence Lib.List[Lib.Int]) Lib.Option[Lib.Either[AST.Ty, AST.Term]] {
			debug(Lib.MkLazy(func() string {
				return fmt.Sprintf(
					"Target: %s, occurrence: [%s]",
					getCleanForm(target_form).ToString(),
					Lib.ListToString(occurrence, ", ", ""),
				)
			}))
			return Lib.MkSome(getTermAtOcc(target_form, occurrence))
		},
	)
}

func (proof TableauxProof) ToString() string {
	json_content := ProofStructListToJsonProofStructList(proof)
	return JsonProofStructListToText(json_content)
}

// ----------------------------------------------------------------------------
// Private utility functions
// ----------------------------------------------------------------------------

func getAtomic(f AST.Form) AST.Form {
	switch nf := f.(type) {
	case AST.Imp:
		if pred, isPred := nf.GetF1().(AST.Pred); isPred {
			return pred
		}
	case AST.Equ:
		if pred, isPred := nf.GetF1().(AST.Pred); isPred {
			return pred
		}
		if pred, isPred := nf.GetF2().(AST.Pred); isPred {
			return pred
		}
	}

	debug(
		Lib.MkLazy(func() string {
			return fmt.Sprintf(
				"Tried to rewrite using %s, but no atomic formula can be found in this formula.",
				f.ToString(),
			)
		}),
	)
	Glob.Anomaly(label, "Could not find rewritten atom")
	return nil
}

func getReplacedVariable(form AST.Form) (AST.TypedVar, bool) {
	get_first := func(vars Lib.List[AST.TypedVar]) (AST.TypedVar, bool) {
		if vars.Empty() {
			return AST.TypedVar{}, false
		}
		return vars.At(0), true
	}

	switch f := form.(type) {
	case AST.All:
		return get_first(f.GetVarList())
	case AST.Ex:
		return get_first(f.GetVarList())
	case AST.Not:
		switch nf := f.GetForm().(type) {
		case AST.All:
			return get_first(nf.GetVarList())
		case AST.Ex:
			return get_first(nf.GetVarList())
		}
	}

	return AST.TypedVar{}, false
}

// A variable might be quantified but never appear in a formula
func getOneOccurrence(form AST.Form, v AST.TypedVar) Lib.Option[Lib.List[Lib.Int]] {
	return getOneOccInCleanForm(getCleanForm(form), v, Lib.NewList[Lib.Int]())
}

func getTermAtOcc(form AST.Form, occurrence Lib.List[Lib.Int]) Lib.Either[AST.Ty, AST.Term] {
	return getTermAtOccInCleanForm(getCleanForm(form), occurrence)
}

func getCleanForm(form AST.Form) AST.Form {
	switch f := form.(type) {
	case AST.Not:
		return AST.MakerNot(getCleanForm_rec(f.GetForm()))
	}
	return getCleanForm_rec(form)
}

func getCleanForm_rec(form AST.Form) AST.Form {
	switch f := form.(type) {
	case AST.All:
		return getCleanForm(f.GetForm())
	case AST.Ex:
		return getCleanForm(f.GetForm())
	}
	return form
}

func getOneOccInCleanForm(
	form AST.Form,
	v AST.TypedVar,
	occurrence Lib.List[Lib.Int],
) Lib.Option[Lib.List[Lib.Int]] {
	switch f := form.(type) {
	case AST.Pred:
		return getFunctionalOcc(f.GetTyArgs(), f.GetArgs(), v, occurrence)

	default:
		for i, child := range form.GetChildFormulas().GetSlice() {
			local_occ := appCopy(Lib.MkInt(i), occurrence)
			occ := getOneOccInCleanForm(child, v, local_occ)

			if _, ok := occ.(Lib.Some[Lib.List[Lib.Int]]); ok {
				return occ
			}
		}
	}

	return Lib.MkNone[Lib.List[Lib.Int]]()
}

func getTermAtOccInCleanForm(
	form AST.Form,
	occurrence Lib.List[Lib.Int],
) Lib.Either[AST.Ty, AST.Term] {
	switch f := form.(type) {
	case AST.Pred:
		return getFunctionalTermAtOcc(f.GetTyArgs(), f.GetArgs(), occurrence)

	default:
		return getTermAtOcc(
			f.GetChildFormulas().At(int(occurrence.At(0))),
			occurrence.Slice(1, occurrence.Len()),
		)
	}
}

func getFunctionalOcc(
	tys Lib.List[AST.Ty],
	terms Lib.List[AST.Term],
	v AST.TypedVar,
	occurrence Lib.List[Lib.Int],
) Lib.Option[Lib.List[Lib.Int]] {
	for i, ty := range tys.GetSlice() {
		local_occ := appCopy(Lib.MkInt(i), occurrence)
		occ := getOneOccInTy(ty, v.ToTyBoundVar(), local_occ)

		if _, ok := occ.(Lib.Some[Lib.List[Lib.Int]]); ok {
			return occ
		}
	}

	offset := tys.Len()
	for i, trm := range terms.GetSlice() {
		local_occ := appCopy(Lib.MkInt(i+offset), occurrence)
		occ := getOneOccInTrm(trm, v, local_occ)

		if _, ok := occ.(Lib.Some[Lib.List[Lib.Int]]); ok {
			return occ
		}
	}

	return Lib.MkNone[Lib.List[Lib.Int]]()
}

func getFunctionalTermAtOcc(
	tys Lib.List[AST.Ty],
	terms Lib.List[AST.Term],
	occurrence Lib.List[Lib.Int],
) Lib.Either[AST.Ty, AST.Term] {
	if occurrence.Empty() {
		Glob.Anomaly(label, "An occurrence stops at the formula-level")
	}

	index := int(occurrence.At(0))
	next_occ := occurrence.Slice(1, occurrence.Len())

	if index < tys.Len() {
		return Lib.MkLeft[AST.Ty, AST.Term](getTermInTy(tys.At(index), next_occ))
	} else {
		if index-tys.Len() >= terms.Len() {
			Glob.Anomaly(label, "Searching for an occurrence of an unknown term")
		}

		return getTermInTerm(terms.At(index-tys.Len()), next_occ)
	}
}

func appCopy[A Lib.Copyable[A]](x A, ls Lib.List[A]) Lib.List[A] {
	result_list := Lib.ListCpy(ls)
	result_list.Append(x)
	return result_list
}

func getOneOccInTy(
	ty AST.Ty,
	v AST.TyBound,
	occurrence Lib.List[Lib.Int],
) Lib.Option[Lib.List[Lib.Int]] {
	switch t := ty.(type) {
	case AST.TyBound:
		if t.Equals(v) {
			return Lib.MkSome(occurrence)
		}
		return Lib.MkNone[Lib.List[Lib.Int]]()

	case AST.TyConstr:
		for i, arg := range t.Args().GetSlice() {
			local_occ := appCopy(Lib.MkInt(i), occurrence)
			occ := getOneOccInTy(arg, v, local_occ)

			if _, ok := occ.(Lib.Some[Lib.List[Lib.Int]]); ok {
				return occ
			}
		}

		return Lib.MkNone[Lib.List[Lib.Int]]()
	}

	return Lib.MkNone[Lib.List[Lib.Int]]()
}

func getTermInTy(ty AST.Ty, occurrence Lib.List[Lib.Int]) AST.Ty {
	if occurrence.Empty() {
		return ty
	} else {
		switch t := ty.(type) {
		case AST.TyConstr:
			return getTermInTy(t.Args().At(int(occurrence.At(0))), occurrence.Slice(1, occurrence.Len()))
		}

		debug(Lib.MkLazy(func() string {
			return fmt.Sprintf(
				"Tried to get occurrence [%s] in %s",
				Lib.ListToString(occurrence, ", ", ""),
				ty.ToString(),
			)
		}))
		Glob.Anomaly(label, "Occurrence not found in type")
		return nil
	}
}

func getOneOccInTrm(
	trm AST.Term,
	v AST.TypedVar,
	occurrence Lib.List[Lib.Int],
) Lib.Option[Lib.List[Lib.Int]] {
	switch t := trm.(type) {
	case AST.Var:
		if t.Equals(v.ToBoundVar()) {
			return Lib.MkSome(occurrence)
		}
		return Lib.MkNone[Lib.List[Lib.Int]]()

	case AST.Fun:
		return getFunctionalOcc(t.GetTyArgs(), t.GetArgs(), v, occurrence)
	}

	return Lib.MkNone[Lib.List[Lib.Int]]()
}

func getTermInTerm(trm AST.Term, occurrence Lib.List[Lib.Int]) Lib.Either[AST.Ty, AST.Term] {
	if occurrence.Empty() {
		return Lib.MkRight[AST.Ty, AST.Term](trm)
	} else {
		debug(Lib.MkLazy(func() string {
			return fmt.Sprintf(
				"Trying to get occurrence [%s] in %s",
				Lib.ListToString(occurrence, ", ", ""),
				trm.ToString(),
			)
		}))

		switch t := trm.(type) {
		case AST.Fun:
			return getFunctionalTermAtOcc(t.GetTyArgs(), t.GetArgs(), occurrence)
		}

		Glob.Anomaly(label, "Occurrence not found in term")
		return nil
	}
}
