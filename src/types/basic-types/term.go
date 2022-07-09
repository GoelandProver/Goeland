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
/***********/
/* term.go */
/***********/
/**
* This file contains functions and types which describe the term's data structure
**/

package basictypes

/* Term */
type Term interface {
	GetIndex() int
	GetName() string
	ToString() string
	ToStringWithSuffixMeta(string) string
	Copy() Term
	Equals(Term) bool
	IsMeta() bool
	IsFun() bool
	ToMeta() Meta
	GetMetas() MetaList
}

/* Variable (x,y under ForAll or Exists) */

/* id (for predicate) */
type Id struct {
	index int
	name  string
}

/* Var (under forall or exists)  */
type Var struct {
	index int
	name  string
}

/* Metavariable (X, Y) */
type Meta struct {
	index   int
	name    string
	formula int
}

/* function or constant (f(a,b), f(X,Y), a)*/
type Fun struct {
	p    Id
	args []Term
}

/* GetIndex */
func (v Var) GetIndex() int {
	return v.index
}
func (m Meta) GetIndex() int {
	return m.index
}
func (i Id) GetIndex() int {
	return i.index
}
func (f Fun) GetIndex() int {
	return f.GetID().GetIndex()
}

/* GetName */
func (v Var) GetName() string {
	return v.name
}
func (m Meta) GetName() string {
	return m.name
}
func (i Id) GetName() string {
	return i.name
}
func (f Fun) GetName() string {
	return f.GetID().GetName()
}

/* ToString */
func (v Var) ToString() string {
	return v.GetName() // + "_" + strconv.Itoa(v.GetIndex())
}
func (m Meta) ToString() string {
	return m.GetName() // + "_" + strconv.Itoa(m.GetIndex()) + "_" + strconv.Itoa(m.GetFormula())
}
func (i Id) ToString() string {
	return i.GetName() // + "_" + strconv.Itoa(i.GetIndex())
}
func (f Fun) ToString() string {
	s_res := f.GetID().ToString()
	if len(f.args) > 0 {
		s_res += "("
		s_res += f.args[0].ToString()
		if len(f.args) > 0 {
			s := f.args[1:]
			for _, v := range s {
				s_res += ", "
				s_res += v.ToString()
			}
		}
		s_res += ")"
	}
	return s_res
}

/* ToStringWithSuffixMeta */
func (v Var) ToStringWithSuffixMeta(string) string {
	return v.ToString()
}
func (m Meta) ToStringWithSuffixMeta(suffix string) string {
	return m.ToString() + suffix
}
func (i Id) ToStringWithSuffixMeta(string) string {
	return i.ToString()
}
func (f Fun) ToStringWithSuffixMeta(suffix string) string {
	s_res := f.GetID().GetName()
	if len(f.args) > 0 {
		s_res += "("
		s_res += f.args[0].ToStringWithSuffixMeta(suffix)
		if len(f.args) > 0 {
			s := f.args[1:]
			for _, v := range s {
				s_res += ", "
				s_res += v.ToStringWithSuffixMeta(suffix)
			}
		}
		s_res += ")"
	}
	return s_res
}

/* IsMeta */
/* Check if a term is a meta */
func (v Var) IsMeta() bool {
	return false
}
func (m Meta) IsMeta() bool {
	return true
}
func (i Id) IsMeta() bool {
	return false
}
func (f Fun) IsMeta() bool {
	return false
}

/* IsFun */
/* Check is a term is a fun */
func (v Var) IsFun() bool {
	return false
}
func (m Meta) IsFun() bool {
	return false
}
func (i Id) IsFun() bool {
	return false
}
func (f Fun) IsFun() bool {
	return true
}

/* Equals */
func (v Var) Equals(t Term) bool {
	switch tf := t.(type) {
	case Var:
		return (tf.GetIndex() == v.GetIndex()) && (tf.GetName() == v.GetName())
	default:
		return false
	}
}
func (m Meta) Equals(t Term) bool {
	switch tf := t.(type) {
	case Meta:
		return (tf.GetIndex() == m.GetIndex()) && (tf.GetName() == m.GetName()) && (tf.GetFormula() == m.GetFormula())
	default:
		return false
	}
}
func (i Id) Equals(t Term) bool {
	switch tf := t.(type) {
	case Id:
		return (tf.GetIndex() == i.GetIndex()) && (tf.GetName() == i.GetName())
	default:
		return false
	}
}
func (f Fun) Equals(t Term) bool {
	switch tf := t.(type) {
	case Fun:
		return tf.GetID() == f.GetID() && AreEqualsTermList(tf.GetArgs(), f.GetArgs())
	default:
		return false
	}
}

/* Copy */
/* Copy a term */
func (v Var) Copy() Term {
	return MakeVar(v.GetIndex(), v.GetName())
}
func (m Meta) Copy() Term {
	return MakeMeta(m.GetIndex(), m.GetName(), m.GetFormula())
}
func (i Id) Copy() Term {
	return MakeId(i.GetIndex(), i.GetName())
}
func (f Fun) Copy() Term {
	return MakeFun(f.GetP(), f.GetArgs())
}

/* ToMeta */
/* Make a meta from a term (empty meta if not possible) */
func (Var) ToMeta() Meta {
	return Meta{}
}
func (m Meta) ToMeta() Meta {
	return m
}
func (Id) ToMeta() Meta {
	return Meta{}
}
func (Fun) ToMeta() Meta {
	return Meta{}
}

/* GetMetas */
/* Get all the metas of the term. */
func (Var) GetMetas() MetaList {
	return MetaList{}
}
func (m Meta) GetMetas() MetaList {
	return MetaList{m}
}
func (Id) GetMetas() MetaList {
	return MetaList{}
}
func (f Fun) GetMetas() MetaList {
	metas := MetaList{}
	for _, arg := range f.GetArgs() {
		metas = append(metas, arg.GetMetas()...)
	}
	return metas
}

/* Getters */
func (m Meta) GetFormula() int {
	return m.formula
}

func (f Fun) GetID() Id {
	return f.p.Copy().(Id)
}

func (f Fun) GetP() Id {
	return f.p.Copy().(Id)
}

func (f Fun) GetArgs() []Term {
	return CopyTermList(f.args)
}

/* Setters */
func (f *Fun) SetArgs(tl []Term) {
	f.args = tl
}

/*** Makers ***/

func MakeId(i int, s string) Id {
	return Id{i, s}
}
func MakeVar(i int, s string) Var {
	return Var{i, s}
}
func MakeMeta(i int, s string, f int) Meta {
	return Meta{i, s, f}
}
func MakeFun(p Id, args []Term) Fun {
	return Fun{p, args}
}

/*** Functions ***/

/* Print a list of terms */
func TermListToString(lf []Term) string {
	var s_res string
	for i, v := range lf {
		s_res += v.ToString()
		if i < len(lf)-1 {
			s_res += (", ")
		}
	}
	return s_res
}

/* Get the metavariables of a formula list */
func GetMetaInTermList(tl []Term) []Meta {
	var res []Meta
	for _, t := range tl {
		m, ok := t.(Meta)
		if ok {
			res = append(res, m)
		}
	}
	return res
}

/* Contains term list */
func ContainsTermList(t Term, tl []Term) bool {
	for _, element := range tl {
		if element.Equals(t) {
			return true
		}
	}
	return false
}

/* Append if not contains */
func AppendIfNotContainsTermList(t Term, tl []Term) []Term {
	if !ContainsTermList(t, tl) {
		return append(tl, t)
	} else {
		return tl
	}
}

/* copy a list of terms */
func CopyTermList(tl []Term) []Term {
	res := []Term{}
	for _, t := range tl {
		res = append(res, t.Copy())
	}
	return res
}

/* copy a list of var */
func copyVarList(tl []Var) []Var {
	res := []Var{}
	for _, t := range tl {
		res = append(res, t.Copy().(Var))
	}
	return res
}

/* check if two lists of terms are equals */
func AreEqualsTermList(tl1, tl2 []Term) bool {
	if len(tl1) != len(tl2) {
		return false
	}
	for i := range tl1 {
		if !tl2[i].Equals(tl1[i]) {
			return false
		}
	}
	return true
}

/* check if two lists of var are equals */
func AreEqualsVarList(tl1, tl2 []Var) bool {
	if len(tl1) != len(tl2) {
		return false
	}
	for i := range tl1 {
		if !tl2[i].Equals(tl1[i]) {
			return false
		}
	}
	return true
}
