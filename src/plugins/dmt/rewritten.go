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

/****************/
/* rewritten.go */
/****************/

/**
 * This file contains the functions definition gotten from the main prover.
 * Any of these could be replaced by its other part when they are exported.
 **/

package dmt

import (
	"fmt"
	"reflect"
	"strings"

	treetypes "github.com/GoelandProver/Goeland/code-trees/tree-types"
	btypes "github.com/GoelandProver/Goeland/types/basic-types"
	ctypes "github.com/GoelandProver/Goeland/types/complex-types"
)

/**
 * Replaces all the occurences of all the keys of subst to the corresponding values.
 **/
func substitute(form btypes.Form, subst treetypes.Substitutions) btypes.Form {
	//terms := []btypes.Term{}
	for old_symbol, new_symbol := range subst {
		form = ctypes.ApplySubstitutionOnFormula(old_symbol, new_symbol, form)
		/*if reflect.TypeOf(new_symbol) == reflect.TypeOf(btypes.Meta{}) {
			terms = append(terms, new_symbol)
		}*/
	}
	return form
}

/**
 * Stolen method : instantiation.
 * Instanciates once a formula to make meta from bound variables.
 **/
func instantiateOnce(formula btypes.Form) btypes.Form {
	nf := formula.(btypes.All).GetForm()
	for _, v := range formula.(btypes.All).GetVarList() {
		meta := btypes.MakerMeta(strings.ToUpper(v.GetName()), -1)
		nf = btypes.ReplaceVarByTerm(nf, v, meta)
	}
	return nf
}

/**
 * Skolemizes once the formula f.
 */
func skolemize(f btypes.Form) btypes.Form {
	switch nf := f.(type) {
	// 1 - not(forall F1)
	case btypes.Not:
		if reflect.TypeOf(nf.GetForm()) == reflect.TypeOf(btypes.All{}) {
			tmp := nf.GetForm().(btypes.All).GetForm()
			f = btypes.RefuteForm(realSkolemize(tmp, nf.GetForm().(btypes.All).GetVarList(), f.GetMetas().ToTermList()))
		}
		// 2 - exists F1
	case btypes.Ex:
		tmp := nf.GetForm()
		f = realSkolemize(tmp, nf.GetVarList(), f.GetMetas().ToTermList())
	}

	return f
}

/**
 * Applies skolemization to a formula (ie: replaces existential quantified variables
 * by fresh skolem symbols).
 **/
func realSkolemize(f btypes.Form, vars []btypes.Var, terms []btypes.Term) btypes.Form {
	// Replace each variable by the skolemized term.
	for _, v := range vars {
		skolem := btypes.MakerFun(btypes.MakerNewId(fmt.Sprintf("skolem_%s%v", v.GetName(), v.GetIndex())), terms)
		f = btypes.ReplaceVarByTerm(f, v, skolem)
	}
	return f
}
