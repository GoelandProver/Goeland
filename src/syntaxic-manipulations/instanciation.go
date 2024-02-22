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
package syntaxicmanipulations

import (
	"strings"

	typing "github.com/GoelandProver/Goeland/polymorphism/typing"
	btps "github.com/GoelandProver/Goeland/types/basic-types"
)

const (
	is_all = iota
	is_exists
)

/**
 * Instantiates once the formula fnt.
 */
func Instantiate(fnt btps.FormAndTerms, index int) (btps.FormAndTerms, *btps.MetaList) {
	var meta btps.Meta
	terms := fnt.GetTerms()

	switch f := fnt.GetForm().(type) {
	case btps.Not:
		if ex, isEx := f.GetForm().(btps.Ex); isEx {
			fnt, meta = realInstantiate(ex.GetVarList(), index, is_exists, ex.GetForm(), terms)
		}
	case btps.All:
		fnt, meta = realInstantiate(f.GetVarList(), index, is_all, f.GetForm(), terms)
	}

	return fnt, btps.NewMetaList(meta)
}

func realInstantiate(varList []btps.Var, index, status int, subForm btps.Form, terms *btps.TermList) (btps.FormAndTerms, btps.Meta) {
	v := varList[0]
	meta := btps.MakerMeta(strings.ToUpper(v.GetName()), index, v.GetTypeHint().(typing.TypeApp))
	subForm = subForm.SubstituteVarByMeta(v, meta)

	terms = terms.Copy()
	terms.AppendIfNotContains(meta)

	internalMetas := subForm.GetInternalMetas()

	if len(varList) > 1 {
		if status == is_exists {
			ex := btps.MakerEx(varList[1:], subForm)
			subForm = btps.RefuteForm(ex.SetInternalMetas(internalMetas))
		} else {
			subForm = btps.MakerAll(varList[1:], subForm)
		}
	} else {
		if status == is_exists {
			subForm = btps.RefuteForm(subForm)
		}
	}

	return btps.MakeFormAndTerm(subForm.SetInternalMetas(internalMetas), terms), meta
}
