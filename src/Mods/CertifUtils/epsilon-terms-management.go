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

package CertifUtils

import (
	"strings"

	"github.com/GoelandProver/Goeland/AST"
	"github.com/GoelandProver/Goeland/Glob"
	"github.com/GoelandProver/Goeland/Lib"
)

/**
 * In this file, we define the management of epsilon terms during the certification process.
 * Indeed, the proof search phase can generate two types of Skolemized constants: terms and types.
 * Here, we give an API that manages both at the same time. For now, given a function that
 * transforms Skolemized terms to epsilon terms and Skolemized types to epsilon types, this file
 * simply offers utility functions at the instantiation time.
 **/
type Epsilon struct {
	tms    Lib.List[Lib.Pair[AST.Term, AST.Term]]
	tys    Lib.List[Lib.Pair[AST.Ty, AST.Ty]]
	ground Lib.Set[AST.Term]

	on_term func(AST.Term) AST.Term
	on_type func(AST.Ty) AST.Ty
}

func EmptyEpsilon(
	ground_terms Lib.Set[AST.Term],
	on_term func(AST.Term) AST.Term,
	on_type func(AST.Ty) AST.Ty,
	get func(Lib.Either[AST.Ty, AST.Term]) string,
) Epsilon {
	return Epsilon{
		tms:     Lib.NewList[Lib.Pair[AST.Term, AST.Term]](),
		tys:     Lib.NewList[Lib.Pair[AST.Ty, AST.Ty]](),
		ground:  ground_terms,
		on_term: on_term,
		on_type: on_type,
	}
}

func (e Epsilon) Introduced(tm Lib.Either[AST.Ty, AST.Term]) bool {
	switch t := tm.(type) {
	case Lib.Left[AST.Ty, AST.Term]:
		return Lib.MemAssoc(t.Val, e.tys)
	case Lib.Right[AST.Ty, AST.Term]:
		return Lib.MemAssoc(t.Val, e.tms)
	}
	return false
}

func (e Epsilon) Copy() Epsilon {
	return Epsilon{
		tms:     e.tms.Clone(),
		tys:     e.tys.Clone(),
		ground:  e.ground,
		on_term: e.on_term,
		on_type: e.on_type,
	}
}

func (e *Epsilon) Generate(
	t Lib.Option[Lib.Either[AST.Ty, AST.Term]],
) Lib.Option[Lib.Either[AST.Ty, AST.Term]] {
	return Lib.OptBind(
		t,
		func(t Lib.Either[AST.Ty, AST.Term]) Lib.Option[Lib.Either[AST.Ty, AST.Term]] {
			switch actual := t.(type) {
			case Lib.Left[AST.Ty, AST.Term]:
				ty := e.on_type(actual.Val)
				e.tys.Append(Lib.MkPair(actual.Val, ty))
				return Lib.MkSome(Lib.MkLeft[AST.Ty, AST.Term](ty))
			case Lib.Right[AST.Ty, AST.Term]:
				tm := e.on_term(actual.Val)
				e.tms.Append(Lib.MkPair(actual.Val, tm))
				return Lib.MkSome(Lib.MkRight[AST.Ty, AST.Term](tm))
			}

			Glob.Anomaly("epsilon terms", "Reached an unreachable state")
			return Lib.MkNone[Lib.Either[AST.Ty, AST.Term]]()
		},
	)
}

func (e Epsilon) Instantiate(
	def_ty, def_tm string,
	t Lib.Option[Lib.Either[AST.Ty, AST.Term]],
) string {
	switch tm := t.(type) {
	case Lib.Some[Lib.Either[AST.Ty, AST.Term]]:
		switch t := tm.Val.(type) {
		case Lib.Left[AST.Ty, AST.Term]:
			return e.instantiateTy(def_ty, t.Val)
		case Lib.Right[AST.Ty, AST.Term]:
			return e.instantiateTm(def_tm, t.Val)
		}
	}
	// FIXME: this should actually depend on what the caller gives, this might be def_ty in
	// the future
	return def_tm
}

func (e Epsilon) instantiateTy(def string, ty AST.Ty) string {
	switch t := ty.(type) {
	case AST.TyBound:
		Glob.Anomaly("epsilon terms", "Cannot instantiate with bound variable")

	case AST.TyMeta:
		return def

	case AST.TyConstr:
		switch v := Lib.AssqOpt(ty, e.tys).(type) {
		case Lib.Some[AST.Ty]:
			return v.Val.ToString()
		case Lib.None[AST.Ty]:
			res := t.Symbol()
			subtypes := make([]string, 0)
			for _, ty := range t.Args().GetSlice() {
				subtypes = append(subtypes, e.instantiateTy(def, ty))
			}
			if len(subtypes) > 0 {
				res += "(" + strings.Join(subtypes, ", ") + ")"
			}
			return res
		}

	case AST.TyProd:
		subtypes := make([]string, 0)
		for _, ty := range t.GetTys().GetSlice() {
			subtypes = append(subtypes, e.instantiateTy(def, ty))
		}
		return strings.Join(subtypes, " * ")

	case AST.TyFunc, AST.TyPi:
		Glob.Anomaly("epsilon terms", "Cannot instantiate with a functional type")
	}

	Glob.Anomaly("epsilon terms", "Unknown type")
	return ""
}

func (e Epsilon) Substitute(dummy_tm AST.Term, form AST.Form) AST.Form {
	// FIXME: there is no function to substitute a type by a type yet
	// for _, ty := range e.tys.GetSlice() {

	// }

	for _, tm := range form.GetSubTerms().Elements().GetSlice() {
		if !(e.ground.Contains(tm)) {
			switch repl := Lib.AssqOpt(tm, e.tms).(type) {
			case Lib.Some[AST.Term]:
				form = form.ReplaceTerm(tm, repl.Val)
			case Lib.None[AST.Term]:
				form = form.ReplaceTerm(tm, dummy_tm)
			}
		}
	}

	return form
}

func (e Epsilon) instantiateTm(def string, tm AST.Term) string {
	switch t := tm.(type) {
	case AST.Id, AST.Var:
		Glob.Anomaly("epsilon terms", "Cannot instantiate with id or bound variable")

	case AST.Meta:
		return t.ToString()

	case AST.Fun:
		switch v := Lib.AssqOpt(tm, e.tms).(type) {
		case Lib.Some[AST.Term]:
			return v.Val.ToString()
		case Lib.None[AST.Term]:
			if !(e.ground.Contains(tm)) {
				return def
			}

			res := t.GetID().ToString()
			subterms := make([]string, 0)
			for _, tm := range t.GetArgs().GetSlice() {
				subterms = append(subterms, e.instantiateTm(def, tm))
			}
			if len(subterms) > 0 {
				res += "(" + strings.Join(subterms, ", ") + ")"
			}
			return res
		}
	}

	Glob.Anomaly("epsilon terms", "Unknown term")
	return ""
}
