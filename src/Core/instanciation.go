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
	"strings"

	"github.com/GoelandProver/Goeland/AST"
	"github.com/GoelandProver/Goeland/Glob"
	"github.com/GoelandProver/Goeland/Lib"
)

const (
	is_all = iota
	is_all_type
	is_exists
)

/**
 * Instantiates once the formula fnt.
 */
func Instantiate(fnt FormAndTerms, index int) (FormAndTerms, Lib.Set[AST.Meta]) {
	var meta Lib.Option[AST.Meta]
	terms := fnt.GetTerms()

	switch f := fnt.GetForm().(type) {
	case AST.Not:
		if ex, isEx := f.GetForm().(AST.Ex); isEx {
			fnt, meta = RealInstantiate(ex.GetVarList(), index, is_exists, ex.GetForm(), terms)
		}
	case AST.All:
		fnt, meta = RealInstantiate(f.GetVarList(), index, is_all, f.GetForm(), terms)
	}

	switch m := meta.(type) {
	case Lib.Some[AST.Meta]:
		return fnt, Lib.Singleton(m.Val)
	case Lib.None[AST.Meta]:
		return fnt, Lib.EmptySet[AST.Meta]()
	}

	Glob.Anomaly("instantiation", "returned bad option type")
	return fnt, Lib.EmptySet[AST.Meta]()
}

func RealInstantiate(
	varList Lib.List[AST.TypedVar],
	index, status int,
	subForm AST.Form,
	terms Lib.List[AST.Term],
) (FormAndTerms, Lib.Option[AST.Meta]) {
	v := varList.At(0)
	var m Lib.Option[AST.Meta]

	if AST.IsTType(v.GetTy()) {
		meta := AST.MkTyMeta(strings.ToUpper(v.GetName()), index)
		subForm = subForm.SubstTy(v.ToTyBoundVar(), meta)
		m = Lib.MkNone[AST.Meta]()
	} else {
		meta := AST.MakerMeta(strings.ToUpper(v.GetName()), index, v.GetTy())
		subForm = subForm.SubstituteVarByMeta(v.ToBoundVar(), meta)
		terms = terms.Copy(AST.Term.Copy)
		terms.Add(
			AST.TermEquals,
			Glob.To[AST.Term](meta),
		)
		m = Lib.MkSome(meta)
	}

	if varList.Len() > 1 {
		if status == is_exists {
			ex := AST.MakerEx(varList.Slice(1, varList.Len()), subForm)
			subForm = AST.MakerNot(ex)
		} else {
			subForm = AST.MakerAll(varList.Slice(1, varList.Len()), subForm)
		}
	} else {
		if status == is_exists {
			subForm = AST.MakerNot(subForm)
		}
	}

	return MakeFormAndTerm(subForm, terms), m
}
