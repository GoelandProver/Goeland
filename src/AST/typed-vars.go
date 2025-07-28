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
* This file implements an interface for bound variables.
**/

package AST

import (
	"github.com/GoelandProver/Goeland/Lib"
)

type TypedVar struct {
	name  string
	index int
	ty    Ty
}

func (v TypedVar) Copy() TypedVar {
	return TypedVar{v.name, v.index, v.ty.Copy()}
}

func (v TypedVar) Equals(oth any) bool {
	if ov, ok := oth.(TypedVar); ok {
		return v.name == ov.name && v.index == ov.index &&
			v.ty.Equals(ov.ty)
	}
	return false
}

func (v TypedVar) ToString() string {
	return printer.StrTyVar(Lib.MkPair(v.name, v.ty))
}

func (v TypedVar) GetName() string {
	return v.name
}

func (v TypedVar) GetIndex() int {
	return v.index
}

func (v TypedVar) GetTy() Ty {
	return v.ty
}

func (v TypedVar) ToBoundVar() Var {
	return MakeVar(v.index, v.name)
}

func (v TypedVar) ToTyBoundVar() TyBound {
	return MkTyBV(v.name, v.index).(TyBound)
}

func (v TypedVar) SubstTy(old TyGenVar, new Ty) TypedVar {
	return TypedVar{v.name, v.index, v.ty.SubstTy(old, new)}
}

func MkTypedVar(name string, index int, ty Ty) TypedVar {
	return TypedVar{name, index, ty}
}

func MakerTypedVar(name string, ty Ty) TypedVar {
	lock_term.Lock()
	i, ok := idVar[name]
	lock_term.Unlock()
	if ok {
		return MkTypedVar(name, i, ty)
	} else {
		lock_term.Lock()
		idVar[name] = cpt_term
		vr := MkTypedVar(name, cpt_term, ty)
		cpt_term += 1
		lock_term.Unlock()
		return vr
	}
}
