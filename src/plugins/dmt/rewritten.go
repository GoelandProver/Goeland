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
 * This file contains the functions definition gotten from the main prover.
 * Any of these could be replaced by its other part when they are exported.
 **/

package dmt

import (
	treetypes "github.com/GoelandProver/Goeland/code-trees/tree-types"
	btypes "github.com/GoelandProver/Goeland/types/basic-types"
	ctypes "github.com/GoelandProver/Goeland/types/complex-types"
)

func substitute(form btypes.Form, subst treetypes.Substitutions) btypes.Form {
	for _, s := range subst {
		old_symbol, new_symbol := s.Get()
		form = ctypes.ApplySubstitutionOnFormula(old_symbol, new_symbol, form)
		form = form.SetInternalMetas(substInternalMetas(form.GetInternalMetas(), subst))
	}
	return form
}

func substInternalMetas(ml btypes.MetaList, subst treetypes.Substitutions) btypes.MetaList {
	result := btypes.MetaList{}
	for _, meta := range ml {
		s, _ := subst.Get(meta)
		if s != nil {
			if newMeta, isMeta := s.(btypes.Meta); isMeta {
				result = append(result, newMeta)
			}
		} else {
			panic("Introducing DMT meta in proof-search")
		}
	}
	return result
}
