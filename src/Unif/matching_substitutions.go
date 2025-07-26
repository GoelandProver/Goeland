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
* This file provides the necessary structures to manipulate matching substitutions
**/

package Unif

import (
	"fmt"

	"github.com/GoelandProver/Goeland/AST"
	"github.com/GoelandProver/Goeland/Glob"
	"github.com/GoelandProver/Goeland/Lib"
	"github.com/GoelandProver/Goeland/Typing"
)

type TySubstitution struct {
	k AST.TyMeta
	v AST.Ty
}

func MkTySubstitution(k AST.TyMeta, v AST.Ty) TySubstitution {
	return TySubstitution{k, v}
}

func (s TySubstitution) ToString() string {
	return fmt.Sprintf("%s |-> %s", s.k.ToString(), s.v.ToString())
}

func (s TySubstitution) Equals(oth any) bool {
	if os, ok := oth.(TySubstitution); ok {
		return os.k.Equals(s.k) && os.v.Equals(s.v)
	}
	return false
}

func (s TySubstitution) Copy() TySubstitution {
	return MkTySubstitution(s.k.Copy().(AST.TyMeta), s.v.Copy())
}

func (s TySubstitution) Get() (AST.TyMeta, AST.Ty) {
	return s.k, s.v
}

type MixedSubstitution struct {
	s Lib.Either[TySubstitution, Substitution]
}

func translateFromSubst(subst Substitution) MixedSubstitution {
	if AST.IsTType(subst.k.GetTy()) {
		return MixedSubstitution{Lib.MkLeft[TySubstitution, Substitution](
			MkTySubstitution(
				AST.TyMetaFromMeta(subst.k),
				AST.TermToTy(subst.v),
			),
		)}
	} else {
		return MixedSubstitution{Lib.MkRight[TySubstitution, Substitution](
			MakeSubstitution(
				subst.k,
				translateTermRec(subst.v),
			))}
	}
}

func translateTermRec(term AST.Term) AST.Term {
	switch trm := term.(type) {
	case AST.Fun:
		// Already converted: do nothing (either everything is converted or nothing)
		if !trm.GetTyArgs().Empty() {
			return term
		}

		ty_args := Lib.NewList[AST.Ty]()
		opt_ty := Typing.QueryGlobalEnv(trm.GetName())
		switch ty := opt_ty.(type) {
		case Lib.Some[AST.Ty]:
			switch t := ty.Val.(type) {
			case AST.TyPi:
				for i := 0; i < t.VarsLen(); i++ {
					ty_args.Append(AST.TermToTy(trm.GetArgs().At(i)))
				}
			}
		}
		args := trm.GetArgs()
		args = trm.GetArgs().Slice(ty_args.Len(), trm.GetArgs().Len())

		return AST.MakerFun(
			trm.GetID(),
			ty_args,
			Lib.ListMap(args, translateTermRec),
		)
	}
	return term
}

func MkMixedFromSubst(subst Substitution) MixedSubstitution {
	return MixedSubstitution{Lib.MkRight[TySubstitution, Substitution](subst)}
}

func MkMixedFromTy(subst TySubstitution) MixedSubstitution {
	return MixedSubstitution{Lib.MkLeft[TySubstitution, Substitution](subst)}
}

func FromSubstitutions(substs Substitutions) Lib.List[MixedSubstitution] {
	mixed_substs := Lib.MkList[MixedSubstitution](len(substs))
	for i, subst := range substs {
		mixed_substs.Upd(i, MixedSubstitution{Lib.MkRight[TySubstitution, Substitution](subst)})
	}
	return mixed_substs
}

func ToSubstitutions(mixed_substs Lib.List[MixedSubstitution]) Substitutions {
	substs := Substitutions{}
	for _, subst := range mixed_substs.GetSlice() {
		switch s := subst.Substitution().(type) {
		case Lib.Some[Substitution]:
			substs = append(substs, s.Val)
		}
	}
	return substs
}

func (m MixedSubstitution) ToString() string {
	return Lib.EitherToString[TySubstitution, Substitution](m.s, "TySubst", "TrmSubst")
}

func (m MixedSubstitution) Equals(oth any) bool {
	if om, ok := oth.(MixedSubstitution); ok {
		return Lib.EitherEquals[TySubstitution, Substitution](m.s, om.s)
	}
	return false
}

func (m MixedSubstitution) Copy() MixedSubstitution {
	return MixedSubstitution{Lib.EitherCpy[TySubstitution, Substitution](m.s)}
}

func (m MixedSubstitution) Substitution() Lib.Option[Substitution] {
	switch s := m.s.(type) {
	case Lib.Right[TySubstitution, Substitution]:
		return Lib.MkSome(s.Val)
	}
	return Lib.MkNone[Substitution]()
}

func (m MixedSubstitution) TySubstitution() Lib.Option[TySubstitution] {
	switch s := m.s.(type) {
	case Lib.Left[TySubstitution, Substitution]:
		return Lib.MkSome(s.Val)
	}
	return Lib.MkNone[TySubstitution]()
}

func (m MixedSubstitution) GetMixed() Lib.Either[TySubstitution, Substitution] {
	return m.s
}

type MixedSubstitutions struct {
	form   AST.Form
	substs []MixedSubstitution
}

func (m MixedSubstitutions) GetForm() AST.Form {
	return m.form.Copy()
}

func (m MixedSubstitutions) GetSubsts() Lib.List[MixedSubstitution] {
	return Lib.MkListV(m.substs...)
}

func (m MixedSubstitutions) GetTrmSubsts() Substitutions {
	out_substs := Substitutions{}
	for _, subst := range m.substs {
		switch s := subst.s.(type) {
		case Lib.Right[TySubstitution, Substitution]:
			out_substs = append(out_substs, s.Val)
		}
	}
	return out_substs
}

func (m MixedSubstitutions) GetTySubsts() Lib.List[TySubstitution] {
	out_substs := Lib.NewList[TySubstitution]()
	for _, subst := range m.substs {
		switch s := subst.s.(type) {
		case Lib.Left[TySubstitution, Substitution]:
			out_substs.Append(s.Val)
		}
	}
	return out_substs
}

func (m MixedSubstitutions) ToString() string {
	substs_list := Lib.MkListV(m.substs...)
	return m.GetForm().ToString() + " {" + Lib.ListToString(substs_list, ", ", "") + "}"
}

func (m MixedSubstitutions) IsSubstsEmpty() bool {
	return len(m.substs) == 0
}

type MatchingSubstitutions struct {
	form  AST.Form
	subst Substitutions
}

func (m MatchingSubstitutions) GetForm() AST.Form {
	return m.form.Copy()
}
func (m MatchingSubstitutions) GetSubst() Substitutions {
	return m.subst.Copy()
}

func (m MatchingSubstitutions) ToString() string {
	return m.GetForm().ToString() + " " + m.GetSubst().ToString()
}

func (m MatchingSubstitutions) Print() {
	debug(Lib.MkLazy(func() string { return fmt.Sprintf(" %s ", m.GetForm().ToString()) }))
	m.GetSubst().Print()
}

func (m MatchingSubstitutions) toMixed() MixedSubstitutions {
	substs := []MixedSubstitution{}
	for _, subst := range m.subst {
		substs = append(substs, translateFromSubst(subst))
	}
	return MixedSubstitutions{m.form, substs}
}

func MakeMatchingSubstitutions(form AST.Form, subst Substitutions) MatchingSubstitutions {
	return MatchingSubstitutions{form.Copy(), subst.Copy()}
}

func (m MixedSubstitutions) MatchingSubstitutions() MatchingSubstitutions {
	return MakeMatchingSubstitutions(m.form, m.GetTrmSubsts())
}

func translateToSubst(subst MixedSubstitution) Substitution {
	switch s := subst.s.(type) {
	case Lib.Left[TySubstitution, Substitution]:
		return MakeSubstitution(
			s.Val.k.ToTermMeta(),
			AST.TyToTerm(s.Val.v),
		)
	case Lib.Right[TySubstitution, Substitution]:
		return s.Val
	}

	Glob.Anomaly("unification internals", "Found neither a type substitution nor a substitution")
	return MakeSubstitution(AST.MakeEmptyMeta(), nil)
}

func MergeMixedSubstitutions(substs1, substs2 Lib.List[MixedSubstitution]) (Lib.List[MixedSubstitution], bool) {
	translated_substs1 := Lib.ListMap(substs1, translateToSubst).GetSlice()
	translated_substs2 := Lib.ListMap(substs2, translateToSubst).GetSlice()

	merged_tmp, _ := MergeSubstitutions(translated_substs1, translated_substs2)

	success := !merged_tmp.Equals(Failure())

	merged := Lib.MkList[MixedSubstitution](len(merged_tmp))
	for i, subst := range merged_tmp {
		merged.Upd(i, translateFromSubst(subst))
	}
	return merged, success
}

func SubstsToString(substs Lib.List[Lib.List[MixedSubstitution]]) string {
	return substs.ToString(
		func(m Lib.List[MixedSubstitution]) string {
			return Lib.ListToString(m, ", ", "[]")
		}, " ; ", "[]")
}

func UnifSucceeded(unifs Lib.List[MixedSubstitution]) bool {
	if unifs.Empty() {
		return true
	}

	succeeded := true
	switch subst := unifs.At(0).Substitution().(type) {
	case Lib.Some[Substitution]:
		succeeded = !subst.Val.Equals(Failure()[0])
	}
	return succeeded
}
