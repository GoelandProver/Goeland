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
/**************/
/* formula.go */
/**************/
/**
* This file contains functions and types which describe the formula's data structure
**/

package basictypes

import (
	"strconv"
)

/*** Structure ***/

/* Formula  */
type Form interface {
	GetIndex() int
	ToString() string
	ToStringWithSuffixMeta(string) string
	Copy() Form
	Equals(Form) bool
	GetMetas() MetaList
}

/* Symbol of predicate */
type Pred struct {
	index int
	id    Id
	args  []Term
}

func (p Pred) GetID() Id {
	return p.id.Copy().(Id)
}

func (p Pred) GetArgs() []Term {
	return CopyTermList(p.args)
}

/* Top (always true) */
type Top struct {
	index int
}

/* Bot (always false) */
type Bot struct {
	index int
}

/* Not(formula): negation of a formula */
type Not struct {
	index int
	f     Form
}

func (n Not) GetForm() Form {
	return n.f
}

/* And(formula list): conjunction of formulae */
type And struct {
	index int
	lf    FormList
}

func (a And) GetLF() FormList {
	return a.lf.Copy()
}

/* Or(formula list): disjunction of formulae */
type Or struct {
	index int
	lf    FormList
}

func (o Or) GetLF() FormList {
	return o.lf.Copy()
}

/* Imp(f1,f2): f1 imply f2*/
type Imp struct {
	index  int
	f1, f2 Form
}

func (i Imp) GetF1() Form {
	return i.f1.Copy()
}
func (i Imp) GetF2() Form {
	return i.f2.Copy()
}

/* Equ(f1, f2): f1 equivalent to f2 */
type Equ struct {
	index  int
	f1, f2 Form
}

func (e Equ) GetF1() Form {
	return e.f1.Copy()
}
func (e Equ) GetF2() Form {
	return e.f2.Copy()
}

type Ex struct {
	index    int
	var_list []Var
	f        Form
}

func (e Ex) GetVarList() []Var {
	return copyVarList(e.var_list)
}
func (e Ex) GetForm() Form {
	return e.f.Copy()
}

type All struct {
	index    int
	var_list []Var
	f        Form
}

func (a All) GetVarList() []Var {
	return copyVarList(a.var_list)
}
func (a All) GetForm() Form {
	return a.f.Copy()
}

/*** Methods ***/

/* ToString */
func (p Pred) ToString() string {
	s_res :=
		// "(" + strconv.Itoa(p.GetIndex()) + ")" +
		p.GetID().ToString()
	if len(p.GetArgs()) > 0 {
		s_res += "("
		s_res += p.GetArgs()[0].ToString()
		if len(p.GetArgs()) > 1 {
			s := p.GetArgs()[1:]
			for _, v := range s {
				s_res += ", "
				s_res += v.ToString()
			}
		}
		s_res += ")"
	}
	return s_res
}
func (t Top) ToString() string {
	return /* "(" + strconv.Itoa(t.GetIndex()) + ")" + */ "⊤"
}
func (b Bot) ToString() string {
	return /* "(" + strconv.Itoa(b.GetIndex()) + ")" + */ "⊥"
}
func (n Not) ToString() string {
	return /* "(" + strconv.Itoa(n.GetIndex()) + ")" + */ "¬" + n.GetForm().ToString()
}
func (a And) ToString() string {
	s_res :=
		// "(" + strconv.Itoa(a.GetIndex()) + ")" +
		"(" + a.GetLF()[0].ToString()
	s := a.GetLF()[1:]
	for _, v := range s {
		s_res += " ∧ "
		s_res += v.ToString()
	}
	s_res += ")"
	return s_res
}
func (o Or) ToString() string {
	s_res :=
		// "(" + strconv.Itoa(o.GetIndex()) + ")" +
		"(" + o.GetLF()[0].ToString()
	s := o.GetLF()[1:]
	for _, v := range s {
		s_res += " ∨ "
		s_res += v.ToString()
	}
	s_res += ")"
	return s_res
}
func (i Imp) ToString() string {
	return /* "(" + strconv.Itoa(i.GetIndex()) + ")" + */ "(" + i.GetF1().ToString() + " ⇒ " + i.GetF2().ToString() + ")"
}
func (e Equ) ToString() string {
	return /* "(" + strconv.Itoa(e.GetIndex()) + ")"  + */ "(" + e.GetF1().ToString() + " ⇔ " + e.GetF2().ToString() + ")"
}
func (e Ex) ToString() string {
	s_res :=
		// "(" + strconv.Itoa(e.GetIndex()) + ")" +
		"∃ " + e.GetVarList()[0].ToString()
	if len(e.GetVarList()) > 1 {
		s := e.GetVarList()[1:]
		for _, v := range s {
			s_res += ", "
			s_res += v.ToString()
		}
	}
	s_res += " (" + e.GetForm().ToString() + ")"
	return s_res
}
func (a All) ToString() string {
	s_res :=
		// "(" + strconv.Itoa(a.GetIndex()) + ")" +
		"∀ " + a.GetVarList()[0].ToString()
	if len(a.GetVarList()) > 1 {
		s := a.GetVarList()[1:]
		for _, v := range s {
			s_res += ", "
			s_res += v.ToString()
		}
	}
	s_res += " (" + a.GetForm().ToString() + ")"
	return s_res
}

/* ToStringWithSuffixMeta */
func (p Pred) ToStringWithSuffixMeta(suffix string) string {
	s_res := p.GetID().ToString()
	if len(p.GetArgs()) > 0 {
		s_res += "("
		s_res += p.GetArgs()[0].ToStringWithSuffixMeta(suffix)
		if len(p.GetArgs()) > 1 {
			s := p.GetArgs()[1:]
			for _, v := range s {
				s_res += ", "
				s_res += v.ToStringWithSuffixMeta(suffix)
			}
		}
		s_res += ")"
	}
	return s_res
}
func (t Top) ToStringWithSuffixMeta(string) string {
	return t.ToString()
}
func (b Bot) ToStringWithSuffixMeta(string) string {
	return b.ToString()
}
func (n Not) ToStringWithSuffixMeta(string) string {
	return n.ToString()
}
func (a And) ToStringWithSuffixMeta(suffix string) string {
	s_res := "(" + a.GetLF()[0].ToStringWithSuffixMeta(suffix)
	s := a.GetLF()[1:]
	for _, v := range s {
		s_res += " ∧ "
		s_res += v.ToStringWithSuffixMeta(suffix)
	}
	s_res += ")"
	return s_res
}
func (o Or) ToStringWithSuffixMeta(suffix string) string {
	s_res := "(" + o.GetLF()[0].ToStringWithSuffixMeta(suffix)
	s := o.GetLF()[1:]
	for _, v := range s {
		s_res += " ∨ "
		s_res += v.ToStringWithSuffixMeta(suffix)
	}
	s_res += ")"
	return s_res
}
func (i Imp) ToStringWithSuffixMeta(suffix string) string {
	return "(" + i.GetF1().ToStringWithSuffixMeta(suffix) + " ⇒ " + i.GetF2().ToStringWithSuffixMeta(suffix) + ")"
}
func (e Equ) ToStringWithSuffixMeta(suffix string) string {
	return "(" + e.GetF1().ToStringWithSuffixMeta(suffix) + " ⇔ " + e.GetF2().ToStringWithSuffixMeta(suffix) + ")"
}
func (e Ex) ToStringWithSuffixMeta(suffix string) string {
	s_res := "∃ " + e.GetVarList()[0].ToString()
	if len(e.GetVarList()) > 1 {
		s := e.GetVarList()[1:]
		for _, v := range s {
			s_res += ", "
			s_res += v.ToString()
		}
	}
	s_res += " (" + e.GetForm().ToStringWithSuffixMeta(suffix) + ")"
	return s_res
}
func (a All) ToStringWithSuffixMeta(suffix string) string {
	s_res := "∀ " + a.GetVarList()[0].ToString()
	if len(a.GetVarList()) > 1 {
		s := a.GetVarList()[1:]
		for _, v := range s {
			s_res += ", "
			s_res += v.ToString()
		}
	}
	s_res += " (" + a.GetForm().ToStringWithSuffixMeta(suffix) + ")"
	return s_res
}

/* Id */
func (p Pred) GetIndex() int {
	return p.index
}
func (t Top) GetIndex() int {
	return t.index
}
func (b Bot) GetIndex() int {
	return b.index
}
func (n Not) GetIndex() int {
	return n.index
}
func (a And) GetIndex() int {
	return a.index
}
func (o Or) GetIndex() int {
	return o.index
}
func (i Imp) GetIndex() int {
	return i.index
}
func (e Equ) GetIndex() int {
	return e.index
}
func (e Ex) GetIndex() int {
	return e.index
}
func (a All) GetIndex() int {
	return a.index
}

/* Copy */
func (p Pred) Copy() Form {
	res := MakePred(p.GetIndex(), p.GetID(), p.GetArgs())
	return res
}
func (t Top) Copy() Form {
	return MakeTop(t.GetIndex())
}
func (b Bot) Copy() Form {
	return MakeBot(b.GetIndex())
}
func (n Not) Copy() Form {
	return MakeNot(n.GetIndex(), n.GetForm())
}
func (a And) Copy() Form {
	return MakeAnd(a.GetIndex(), a.GetLF())
}
func (o Or) Copy() Form {
	return MakeOr(o.GetIndex(), o.GetLF())
}
func (i Imp) Copy() Form {
	return MakeImp(i.GetIndex(), i.GetF1(), i.GetF2())
}
func (e Equ) Copy() Form {
	return MakeEqu(e.GetIndex(), e.GetF1(), e.GetF2())
}
func (e Ex) Copy() Form {
	return MakeEx(e.GetIndex(), copyVarList(e.GetVarList()), e.GetForm())
}
func (a All) Copy() Form {
	return MakeAll(a.GetIndex(), copyVarList(a.GetVarList()), a.GetForm())
}

/* Equals */
func (p Pred) Equals(f Form) bool {
	switch nf := f.(type) {
	case Pred:
		return nf.GetID().Equals(p.GetID()) && AreEqualsTermList(nf.GetArgs(), p.GetArgs())
	default:
		return false
	}
}
func (Top) Equals(f Form) bool {
	switch f.(type) {
	case Top:
		return true
	default:
		return false
	}
}
func (Bot) Equals(f Form) bool {
	switch f.(type) {
	case Bot:
		return true
	default:
		return false
	}
}
func (n Not) Equals(f Form) bool {
	switch nf := f.(type) {
	case Not:
		return nf.GetForm().Equals(n.GetForm())
	default:
		return false
	}
}
func (a And) Equals(f Form) bool {
	switch nf := f.(type) {
	case And:
		return nf.GetLF().Equals(a.GetLF())
	default:
		return false
	}
}
func (o Or) Equals(f Form) bool {
	switch nf := f.(type) {
	case Or:
		return nf.GetLF().Equals(o.GetLF())
	default:
		return false
	}
}
func (i Imp) Equals(f Form) bool {
	switch nf := f.(type) {
	case Imp:
		return i.GetF1().Equals(nf.GetF1()) && i.GetF2().Equals(nf.GetF2())
	default:
		return false
	}
}
func (e Equ) Equals(f Form) bool {
	switch nf := f.(type) {
	case Equ:
		return e.GetF1().Equals(nf.GetF1()) && e.GetF2().Equals(nf.GetF2())
	default:
		return false
	}
}
func (e Ex) Equals(f Form) bool {
	switch nf := f.(type) {
	case Ex:
		return AreEqualsVarList(e.GetVarList(), nf.GetVarList()) && e.GetForm().Equals(nf.GetForm())
	default:
		return false
	}
}
func (a All) Equals(f Form) bool {
	switch nf := f.(type) {
	case All:
		return AreEqualsVarList(a.GetVarList(), nf.GetVarList()) && a.GetForm().Equals(nf.GetForm())
	default:
		return false
	}
}

/* Get Metavariable of the formula */
func (p Pred) GetMetas() MetaList {
	res := MakeEmptyMetaList()
	for _, m := range p.GetArgs() {
		switch mt := m.(type) {
		case Meta:
			res = res.AppendIfNotContains(mt)
		case Fun:
			res = res.Merge(mt.GetMetas())
		}
	}
	return res
}
func (Top) GetMetas() MetaList {
	return MakeEmptyMetaList()
}
func (Bot) GetMetas() MetaList {
	return MakeEmptyMetaList()
}
func (n Not) GetMetas() MetaList {
	return n.GetForm().GetMetas()
}
func (a And) GetMetas() MetaList {
	res := MakeEmptyMetaList()
	for _, f := range a.GetLF() {
		res = res.Merge(f.GetMetas())
	}
	return res
}
func (o Or) GetMetas() MetaList {
	res := MakeEmptyMetaList()
	for _, f := range o.GetLF() {
		res = res.Merge(f.GetMetas())
	}
	return res
}
func (i Imp) GetMetas() MetaList {
	return i.f1.GetMetas().Merge(i.f2.GetMetas())
}
func (e Equ) GetMetas() MetaList {
	return e.f1.GetMetas().Merge(e.f2.GetMetas())
}
func (e Ex) GetMetas() MetaList {
	return e.GetForm().GetMetas()
}
func (a All) GetMetas() MetaList {
	return a.GetForm().GetMetas()
}

/*** Functions ***/

/* Makers */

/**
* Les maker uniquement dans perseur
* Sinon make
**/
func MakePred(i int, p Id, tl []Term) Pred {
	return Pred{i, p, tl}
}
func MakerPred(p Id, tl []Term) Pred {
	return MakePred(MakerIndexFormula(), p, tl)
}

func MakeTop(i int) Top {
	return Top{i}
}
func MakerTop() Top {
	return MakeTop(MakerIndexFormula())
}

func MakeBot(i int) Bot {
	return Bot{i}
}
func MakerBot() Bot {
	return MakeBot(MakerIndexFormula())
}

func MakeNot(i int, f Form) Not {
	return Not{i, f}
}
func MakerNot(f Form) Not {
	return MakeNot(MakerIndexFormula(), f)
}

func MakeAnd(i int, fl FormList) And {
	return And{i, fl}
}
func MakerAnd(fl FormList) And {
	return MakeAnd(MakerIndexFormula(), fl)
}

func MakeOr(i int, fl FormList) Or {
	return Or{i, fl}
}
func MakerOr(fl FormList) Or {
	return MakeOr(MakerIndexFormula(), fl)
}

func MakeImp(i int, f1, f2 Form) Imp {
	return Imp{i, f1, f2}
}
func MakerImp(f1, f2 Form) Imp {
	return MakeImp(MakerIndexFormula(), f1, f2)
}

func MakeEqu(i int, f1, f2 Form) Equ {
	return Equ{i, f1, f2}
}
func MakerEqu(f1, f2 Form) Equ {
	return MakeEqu(MakerIndexFormula(), f1, f2)
}

func MakeEx(i int, vl []Var, f Form) Ex {
	return Ex{i, vl, f}
}
func MakerEx(vl []Var, f Form) Ex {
	return MakeEx(MakerIndexFormula(), vl, f)
}

func MakeAll(i int, vl []Var, f Form) All {
	return All{i, vl, f}
}
func MakerAll(vl []Var, f Form) All {
	return MakeAll(MakerIndexFormula(), vl, f)
}

/* Transform a formula into its negation */
func RefuteForm(f Form) Form {
	new_f, changed := rewriteNEQ(f)
	if changed {
		return new_f
	} else {
		return MakerNot(new_f)
	}
}

/* if a not(eq) is found, transform it into !=  and if not(neq) is found, transform it into = */
func rewriteNEQ(f Form) (Form, bool) {
	if pred, ok := f.(Pred); ok {
		if pred.GetID().Equals(Id_eq) {
			return MakePred(pred.GetIndex(), Id_neq, pred.GetArgs()), true
		}
	}

	if not, ok := f.(Not); ok {
		if pred, ok := not.GetForm().(Pred); ok {
			if pred.GetID().Equals(Id_neq) {
				return MakePred(pred.GetIndex(), Id_eq, pred.GetArgs()), true
			}
		}
	}

	return f, false
}

/* Remove all the negations */
func RemoveNeg(f Form) Form {
	switch ft := f.(type) {
	case Not:
		return RemoveNeg(ft.GetForm())
	default:
		return f.Copy()
	}
}

/* Simplify a neg neg eng formual (for DMT) */
func SimplifyNeg(f Form) Form {
	return simplifyNeg(f, true)
}

func simplifyNeg(f Form, isEven bool) Form {
	// Already under a not
	if ft, isNot := f.(Not); isNot {
		if !isEven {
			return simplifyNeg(ft.GetForm(), true)
		} else {
			return simplifyNeg(ft.GetForm(), false)
		}
	} else {
		if isEven {
			return f.Copy()
		} else {
			return RefuteForm(f.Copy())
		}
	}
}

/** Replace a Var by a term - Useful functions for Delta and Gamma rules (replace var by term) **/

/* Replace a var by a term */
func ReplaceVarByTerm(f Form, old_symbol Var, new_symbol Term) Form {
	switch nf := f.(type) {
	case Pred:
		return MakePred(f.GetIndex(), nf.GetID(), replaceVarInTermList(nf.GetArgs(), old_symbol, new_symbol))
	case Top:
		return f
	case Bot:
		return f
	case Not:
		return MakeNot(f.GetIndex(), ReplaceVarByTerm(nf.GetForm(), old_symbol, new_symbol))
	case And:
		var res FormList
		for _, val := range nf.GetLF() {
			res = append(res, ReplaceVarByTerm(val, old_symbol, new_symbol))
		}
		return MakeAnd(f.GetIndex(), res)
	case Or:
		var res FormList
		for _, val := range nf.GetLF() {
			res = append(res, ReplaceVarByTerm(val, old_symbol, new_symbol))
		}
		return MakeOr(f.GetIndex(), res)
	case Imp:
		return MakeImp(f.GetIndex(), ReplaceVarByTerm(nf.GetF1(), old_symbol, new_symbol), ReplaceVarByTerm(nf.GetF2(), old_symbol, new_symbol))
	case Equ:
		return MakeEqu(f.GetIndex(), ReplaceVarByTerm(nf.GetF1(), old_symbol, new_symbol), ReplaceVarByTerm(nf.GetF2(), old_symbol, new_symbol))
	case Ex:
		return MakeEx(f.GetIndex(), nf.GetVarList(), ReplaceVarByTerm(nf.GetForm(), old_symbol, new_symbol))
	case All:
		return MakeAll(f.GetIndex(), nf.GetVarList(), ReplaceVarByTerm(nf.GetForm(), old_symbol, new_symbol))
	default:
		return nil
	}
}

/* Replace a Var by a term inside a function */
func replaceVarInTermList(original_list []Term, old_symbol Var, new_symbol Term) []Term {
	new_list := make([]Term, len(original_list))
	for i, val := range original_list {
		switch nf := val.(type) {
		case Var:
			if old_symbol.Equals(nf) {
				new_list[i] = new_symbol
			} else {
				new_list[i] = val
			}
		case Fun:
			new_list[i] = MakerFun(nf.GetP(), replaceVarInTermList(nf.GetArgs(), old_symbol, new_symbol))
		default:
			new_list[i] = val
		}
	}
	return new_list
}

/** Replace a Var by a Var - for parser **/

/* rename variable if any */
func RenameVariables(f Form) Form {
	switch nf := f.(type) {
	case Pred:
		return f
	case Top:
		return f
	case Bot:
		return f
	case Not:
		return MakeNot(f.GetIndex(), RenameVariables(nf.GetForm()))
	case And:
		var res FormList
		for _, val := range nf.GetLF() {
			res = append(res, RenameVariables(val))
		}
		return MakeAnd(f.GetIndex(), res)
	case Or:
		var res FormList
		for _, val := range nf.GetLF() {
			res = append(res, RenameVariables(val))
		}
		return MakeOr(f.GetIndex(), res)
	case Imp:
		return MakeImp(f.GetIndex(), RenameVariables(nf.GetF1()), RenameVariables(nf.GetF2()))
	case Equ:
		return MakeEqu(f.GetIndex(), RenameVariables(nf.GetF1()), RenameVariables(nf.GetF2()))

	case Ex:
		new_vl := copyVarList(nf.GetVarList())
		new_form := nf.GetForm()

		for _, v := range nf.GetVarList() {
			new_var := MakerNewVar(v.GetName())
			new_var = MakerVar(new_var.GetName() + strconv.Itoa(new_var.GetIndex()))
			new_vl = replaceVarInVarList(new_vl, v, new_var)
			new_form = ReplaceVarByTerm(RenameVariables(new_form), v, new_var)

		}
		return MakeEx(f.GetIndex(), new_vl, new_form)

	case All:
		new_vl := copyVarList(nf.GetVarList())
		new_form := nf.GetForm()

		for _, v := range nf.GetVarList() {
			new_var := MakerNewVar(v.GetName())
			new_var = MakerVar(new_var.GetName() + strconv.Itoa(new_var.GetIndex()))
			new_vl = replaceVarInVarList(new_vl, v, new_var)
			new_form = ReplaceVarByTerm(RenameVariables(new_form), v, new_var)

		}
		return MakeAll(f.GetIndex(), new_vl, new_form)

	default:
		return f
	}
}

/* replace a var by another in a var list */
func replaceVarInVarList(vl []Var, v1, v2 Var) []Var {
	res := []Var{}
	for _, v := range vl {
		if v.Equals(v1) {
			res = append(res, v2)
		} else {
			res = append(res, v)
		}
	}
	return res
}
