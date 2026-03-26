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
* This file provides the necessary methods and data to the variable management.
**/

package AST

import (
	"fmt"
	"sync"

	"github.com/GoelandProver/Goeland/Glob"
	"github.com/GoelandProver/Goeland/Lib"
)

/* Datas */
var lock_term sync.Mutex
var meta_id int

var debug Glob.Debugger

func InitDebugger() {
	debug = Glob.CreateDebugger("AST")
}

// Global id
var Id_eq Id
var EmptyPredEq Pred

/* Initialization */
func Init() {
	Reset()
	Id_eq = MakeId("=")
	EmptyPredEq = MakePred(Id_eq, Lib.NewList[Ty](), Lib.NewList[Term]())
	initPrinters()
	initTPTPNativeTypes()
}

/* Reset all the maps and counters */
func Reset() {
	ResetMeta()
}

/* Reset the metavariable table (useful when the IDDFS stop and restart) */
func ResetMeta() {
	meta_id = 0
}

// Formulas makers

func MakeAll(ty Ty, forms Form) All {
	return All{makeQuantifier(ty, forms, ConnAll)}
}

func MakeEx(ty Ty, forms Form) Ex {
	return Ex{makeQuantifier(ty, forms, ConnEx)}
}

func MakeOr(forms Lib.List[Form]) Or {
	return Or{makeNAriForm(forms)}
}

func MakeAnd(forms Lib.List[Form], binary ...bool) And {
	if binary != nil {
		return MakeBinaryAnd(forms, Lib.EmptySet[Meta]())
	} else {
		return And{makeNAriForm(forms)}
	}
}

func MakeBinaryAnd(forms Lib.List[Form], metas Lib.Set[Meta]) And {
	switch forms.Len() {
	case 0, 1, 2:
		return MakeAnd(forms)
	default:
		return MakeAnd(
			Lib.MkListV[Form](forms.At(0), MakeAnd(forms.Slice(1, forms.Len()), true)),
		)
	}
}

func MakeEqu(firstForm, secondForm Form) Equ {
	return Equ{makeBinForm(firstForm, secondForm)}
}

func MakeImp(firstForm, secondForm Form) Imp {
	return Imp{makeBinForm(firstForm, secondForm)}
}

func MakeNot(form Form) Not {
	return Not{form}
}

func MakePred(
	id Id,
	tys Lib.List[Ty],
	terms Lib.List[Term],
) Pred {
	return Pred{
		id,
		tys,
		terms,
	}
}

func MakeTop() Top {
	return Top{}
}

func MakeBot() Bot {
	return Bot{}
}

// Terms makers

func MakeId(s string) Id {
	return Id(s)
}

func MakeQuotedId(s string) Id {
	return Id("'" + s + "'")
}

func MakeVar(i int) Var {
	return Var(i)
}

func MakeMeta(formula int, ty Ty) Meta {
	lock_term.Lock()
	new_id := meta_id
	meta_id++
	lock_term.Unlock()
	return Meta{formula, new_id, fmt.Sprintf("M%d", new_id), ty}
}

func MakeFun(p Id, ty_args Lib.List[Ty], args Lib.List[Term]) Fun {
	return Fun{p, ty_args, args}
}

/* Const maker (given a id, create a fun without args) */
func MakeConst(id Id) Fun {
	return MakeFun(id, Lib.NewList[Ty](), Lib.NewList[Term]())
}
