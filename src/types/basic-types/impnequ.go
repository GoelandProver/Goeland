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
/* impnequ.go */
/**************/

/**
* This file implements an implication and an equivalence of formulas.
**/

package basictypes

import (
	"github.com/GoelandProver/Goeland/global"
	typing "github.com/GoelandProver/Goeland/polymorphism/typing"
)

/* Imp(f1,f2): f1 imply f2*/
type Imp struct {
	index  int
	f1, f2 Form
}

func (i Imp) sep() string {
	if global.IsPrettyPrint() {
		return " ⇒ "
	}
	return " => "
}

func (i Imp) GetIndex() int              { return i.index }
func (i Imp) GetF1() Form                { return i.f1.Copy() }
func (i Imp) GetF2() Form                { return i.f2.Copy() }
func (i Imp) Copy() Form                 { return MakeImp(i.GetIndex(), i.GetF1(), i.GetF2()) }
func (i Imp) GetMetas() MetaList         { return i.f1.GetMetas().Merge(i.f2.GetMetas()) }
func (i Imp) GetType() typing.TypeScheme { return typing.DefaultPropType(0) }

func (i Imp) ToString() string {
	return "(" + i.GetF1().ToString() + i.sep() + i.GetF2().ToString() + ")"
}

func (i Imp) ToStringWithSuffixMeta(suffix string) string {
	return "(" + i.GetF1().ToStringWithSuffixMeta(suffix) + i.sep() + i.GetF2().ToStringWithSuffixMeta(suffix) + ")"
}

func (i Imp) Equals(f Form) bool {
	oth, isImp := f.(Imp)
	return isImp &&
		i.GetF1().Equals(oth.GetF1()) && i.GetF2().Equals(oth.GetF2())
}

func (i Imp) ReplaceTypeByMeta(varList []typing.TypeVar, index int) Form {
	return MakeImp(i.GetIndex(), i.GetF1().ReplaceTypeByMeta(varList, index), i.GetF2().ReplaceTypeByMeta(varList, index))
}

func (i Imp) ReplaceVarByTerm(old Var, new Term) Form {
	return MakeImp(i.GetIndex(), i.GetF1().ReplaceVarByTerm(old, new), i.GetF2().ReplaceVarByTerm(old, new))
}

func (i Imp) RenameVariables() Form {
	return MakeImp(i.GetIndex(), i.GetF1().RenameVariables(), i.GetF2().RenameVariables())
}

/* Equ(f1, f2): f1 equivalent to f2 */
type Equ struct {
	index  int
	f1, f2 Form
}

func (e Equ) sep() string {
	if global.IsPrettyPrint() {
		return " ⇔ "
	}
	return " <=> "
}

func (e Equ) GetIndex() int              { return e.index }
func (e Equ) GetF1() Form                { return e.f1.Copy() }
func (e Equ) GetF2() Form                { return e.f2.Copy() }
func (e Equ) Copy() Form                 { return MakeEqu(e.GetIndex(), e.GetF1(), e.GetF2()) }
func (e Equ) GetMetas() MetaList         { return e.f1.GetMetas().Merge(e.f2.GetMetas()) }
func (e Equ) GetType() typing.TypeScheme { return typing.DefaultPropType(0) }

func (e Equ) ToString() string {
	return "(" + e.GetF1().ToString() + e.sep() + e.GetF2().ToString() + ")"
}

func (e Equ) ToStringWithSuffixMeta(suffix string) string {
	return "(" + e.GetF1().ToStringWithSuffixMeta(suffix) + e.sep() + e.GetF2().ToStringWithSuffixMeta(suffix) + ")"
}

func (e Equ) Equals(f Form) bool {
	oth, isEqu := f.(Equ)
	return isEqu &&
		e.GetF1().Equals(oth.GetF1()) && e.GetF2().Equals(oth.GetF2())
}

func (e Equ) ReplaceTypeByMeta(varList []typing.TypeVar, index int) Form {
	return MakeEqu(e.GetIndex(), e.GetF1().ReplaceTypeByMeta(varList, index), e.GetF2().ReplaceTypeByMeta(varList, index))
}

func (e Equ) ReplaceVarByTerm(old Var, new Term) Form {
	return MakeEqu(e.GetIndex(), e.GetF1().ReplaceVarByTerm(old, new), e.GetF2().ReplaceVarByTerm(old, new))
}

func (e Equ) RenameVariables() Form {
	return MakeEqu(e.GetIndex(), e.GetF1().RenameVariables(), e.GetF2().RenameVariables())
}
