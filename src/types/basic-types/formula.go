/**
* Copyright by Julie CAILLER and Johann ROSAIN (2022)
*
* julie.cailler@lirmm.fr
* johann.rosain@lirmm.fr
*
* Goéland is an automated theorem prover for first order logic.
*
* This software is governed by the CeCILL-B license under French law and
* abiding by the rules of distribution of free software.  You can  use, 
* modify and/ or redistribute the software under the terms of the CeCILL-B
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
* knowledge of the CeCILL-B license and that you accept its terms.
**/
/**************/
/* formula.go */
/**************/
/**
* This file contains functions and types which describe the formula's data structure
**/

package basictypes

import (
	"fmt"

	"github.com/delahayd/gotab/global"
)

/* Formula  */
type Form interface {
	ToString() string
	ToStringWithSuffixMeta(string) string
	Copy() Form
	Equals(Form) bool
}

/* Symbol of predicate */
type Pred struct {
	id   Id
	args []Term
}

func (p Pred) GetID() Id {
	return p.id.Copy().(Id)
}

func (p Pred) GetArgs() []Term {
	return CopyTermList(p.args)
}

/* Top (always true) */
type Top struct {
}

/* Bot (always false) */
type Bot struct {
}

/* Not(formula): negation of a formula */
type Not struct {
	f Form
}

func (n Not) GetForm() Form {
	return n.f
}

/* And(formula list): conjunction of formulae */
type And struct {
	lf []Form
}

func (a And) GetLF() []Form {
	return CopyFormList(a.lf)
}

/* Or(formula list): disjunction of formulae */
type Or struct {
	lf []Form
}

func (o Or) GetLF() []Form {
	return CopyFormList(o.lf)
}

/* Imp(f1,f2): f1 imply f2*/
type Imp struct {
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
	f1, f2 Form
}

func (e Equ) GetF1() Form {
	return e.f1.Copy()
}
func (e Equ) GetF2() Form {
	return e.f2.Copy()
}

type Ex struct {
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
	var_list []Var
	f        Form
}

func (a All) GetVarList() []Var {
	return copyVarList(a.var_list)
}
func (a All) GetForm() Form {
	return a.f.Copy()
}

/* ToString */
func (p Pred) ToString() string {
	s_res := p.GetID().ToString()
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
func (Top) ToString() string {
	return "⊤"
}
func (Bot) ToString() string {
	return "⊥"
}
func (n Not) ToString() string {
	return "¬" + n.GetForm().ToString()
}
func (a And) ToString() string {
	s_res := "(" + a.GetLF()[0].ToString()
	s := a.GetLF()[1:]
	for _, v := range s {
		s_res += " ∧ "
		s_res += v.ToString()
	}
	s_res += ")"
	return s_res
}
func (o Or) ToString() string {
	s_res := "(" + o.GetLF()[0].ToString()
	s := o.GetLF()[1:]
	for _, v := range s {
		s_res += " ∨ "
		s_res += v.ToString()
	}
	s_res += ")"
	return s_res
}
func (i Imp) ToString() string {
	return "(" + i.GetF1().ToString() + " ⇒ " + i.GetF2().ToString() + ")"
}
func (e Equ) ToString() string {
	return "(" + e.GetF1().ToString() + " ⇔ " + e.GetF2().ToString() + ")"
}
func (e Ex) ToString() string {
	s_res := "∃ " + e.GetVarList()[0].ToString()
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
	s_res := "∀ " + a.GetVarList()[0].ToString()
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

/* Copy */
func (p Pred) Copy() Form {
	res := MakePred(p.GetID(), p.GetArgs())
	return res
}
func (Top) Copy() Form {
	return MakeTop()
}
func (Bot) Copy() Form {
	return MakeBot()
}
func (n Not) Copy() Form {
	return MakeNot(n.GetForm())
}
func (a And) Copy() Form {
	return MakeAnd(a.GetLF())
}
func (o Or) Copy() Form {
	return MakeOr(o.GetLF())
}
func (i Imp) Copy() Form {
	return MakeImp(i.GetF1(), i.GetF2())
}
func (e Equ) Copy() Form {
	return MakeEqu(e.GetF1(), e.GetF2())
}
func (e Ex) Copy() Form {
	return MakeEx(copyVarList(e.GetVarList()), e.GetForm())
}
func (a All) Copy() Form {
	return MakeAll(copyVarList(a.GetVarList()), a.GetForm())
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
		return AreEqualsFormList(nf.GetLF(), a.GetLF())
	default:
		return false
	}
}
func (o Or) Equals(f Form) bool {
	switch nf := f.(type) {
	case Or:
		return AreEqualsFormList(nf.GetLF(), o.GetLF())
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

/*** Functions ***/

/* Makers */
func MakePred(p Id, tl []Term) Pred {
	return Pred{p, tl}
}
func MakeTop() Top {
	return Top{}
}
func MakeBot() Bot {
	return Bot{}
}
func MakeNot(f Form) Not {
	return Not{f}
}
func MakeAnd(fl []Form) And {
	return And{fl}
}
func MakeOr(fl []Form) Or {
	return Or{fl}
}
func MakeImp(f1, f2 Form) Imp {
	return Imp{f1, f2}
}
func MakeEqu(f1, f2 Form) Equ {
	return Equ{f1, f2}
}
func MakeEx(vl []Var, f Form) Ex {
	return Ex{vl, f}
}
func MakeAll(vl []Var, f Form) All {
	return All{vl, f}
}

/* Create a FormAndTerm element without meta */
func MakeForm(f Form) FormAndTerm {
	return FormAndTerm{f, []Term{}}
}

/* Transform a formula into its negation */
func RefuteForm(f Form) Form {
	return Not{f}
}

/* Print a list of formulae */
func FormulaListToString(lf []Form) string {
	var s_res string
	for i, v := range lf {
		s_res += v.ToString()
		if i < len(lf)-1 {
			s_res += (", ")
		}
	}
	return s_res
}

/* Print a list of formulae */
func PrintFormulaList(lf []Form) {
	for _, f := range lf {
		global.PrintDebug("FLTS", f.ToString())
	}
}

/* Return true if a Formula f is inside the given Formula list, false otherwise */
func ContainsFormula(f Form, l []Form) bool {
	for _, v := range l {
		if f.Equals(v) {
			return true
		}
	}
	return false
}

/* check if two formula list are euqals */
func AreEqualsFormList(fl1, fl2 []Form) bool {
	if len(fl1) != len(fl2) {
		return false
	}
	for i := range fl1 {
		if !fl2[i].Equals(fl1[i]) {
			return false
		}
	}
	return true
}

/* Copy a list of form */
func CopyFormList(fl []Form) []Form {
	res := make([]Form, len(fl))
	for i := range fl {
		res[i] = fl[i].Copy()
	}
	return res
}

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
		return MakeNot(RenameVariables(nf.GetForm()))
	case And:
		var res []Form
		for _, val := range nf.GetLF() {
			res = append(res, RenameVariables(val))
		}
		return MakeAnd(res)
	case Or:
		var res []Form
		for _, val := range nf.GetLF() {
			res = append(res, RenameVariables(val))
		}
		return MakeOr(res)
	case Imp:
		return MakeImp(RenameVariables(nf.GetF1()), RenameVariables(nf.GetF2()))
	case Equ:
		return MakeEqu(RenameVariables(nf.GetF1()), RenameVariables(nf.GetF2()))

	case Ex:
		new_vl := copyVarList(nf.GetVarList())
		new_form := nf.GetForm().Copy()
		global.PrintDebug("RV", "-------------------------------")

		for _, v := range nf.GetVarList() {
			new_var := MakerNewVar(v.GetName())
			global.PrintDebug("RV", fmt.Sprintf("Original : %v - New_var :%v", v.ToString(), new_var.ToString()))
			new_vl = replaceVarInVarList(new_vl, v, new_var)
			new_form = ReplaceVarByTerm(RenameVariables(new_form), v, new_var)

		}
		return MakeEx(new_vl, new_form)

	case All:
		new_vl := copyVarList(nf.GetVarList())
		new_form := nf.GetForm().Copy()
		global.PrintDebug("RV", "-------------------------------")

		for _, v := range nf.GetVarList() {
			new_var := MakerNewVar(v.GetName())
			global.PrintDebug("RV", fmt.Sprintf("Original : %v - New_var :%v", v.ToString(), new_var.ToString()))
			new_vl = replaceVarInVarList(new_vl, v, new_var)
			new_form = ReplaceVarByTerm(RenameVariables(new_form), v, new_var)

		}
		return MakeAll(new_vl, new_form)

	default:
		return f
	}
}

/** Useful functions for Delta and Gamma rules (replace var by term) **/

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

/* Replace a var by a term */
func ReplaceVarByTerm(f Form, old_symbol Var, new_symbol Term) Form {
	switch nf := f.(type) {
	case Pred:
		return MakePred(nf.GetID(), replaceVarInTermList(nf.GetArgs(), old_symbol, new_symbol))
	case Top:
		return f
	case Bot:
		return f
	case Not:
		return MakeNot(ReplaceVarByTerm(nf.GetForm(), old_symbol, new_symbol))
	case And:
		var res []Form
		for _, val := range nf.GetLF() {
			res = append(res, ReplaceVarByTerm(val, old_symbol, new_symbol))
		}
		return MakeAnd(res)
	case Or:
		var res []Form
		for _, val := range nf.GetLF() {
			res = append(res, ReplaceVarByTerm(val, old_symbol, new_symbol))
		}
		return MakeOr(res)
	case Imp:
		return MakeImp(ReplaceVarByTerm(nf.GetF1(), old_symbol, new_symbol), ReplaceVarByTerm(nf.GetF2(), old_symbol, new_symbol))
	case Equ:
		return MakeEqu(ReplaceVarByTerm(nf.GetF1(), old_symbol, new_symbol), ReplaceVarByTerm(nf.GetF2(), old_symbol, new_symbol))
	case Ex:
		return MakeEx(nf.GetVarList(), ReplaceVarByTerm(nf.GetForm(), old_symbol, new_symbol))
	case All:
		return MakeAll(nf.GetVarList(), ReplaceVarByTerm(nf.GetForm(), old_symbol, new_symbol))
	default:
		return nil
	}
}

/* replace a var by another in a var list */
func replaceVarInVarList(vl []Var, v1, v2 Var) []Var {
	global.PrintDebug("RVVL", fmt.Sprintf("old_var : %v - New var : %v", v1.ToString(), v2.ToString()))
	res := []Var{}
	for _, v := range vl {
		global.PrintDebug("RVVL", fmt.Sprintf("v :%v", v.ToString()))
		if v.Equals(v1) {
			res = append(res, v2)
		} else {
			res = append(res, v)
		}
	}
	return res
}
