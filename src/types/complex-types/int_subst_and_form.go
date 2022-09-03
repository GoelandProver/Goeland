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
/************/
/* subst.go */
/************/
/**
* This file contains functions and types which describe the substitution management in a proofsearch.
**/

package complextypes

import (
	"strconv"

	treetypes "github.com/GoelandProver/Goeland/code-trees/tree-types"
)

type IntSubstAndForm struct {
	id_rewrite int
	saf        SubstAndForm
}

func (intsubstandform *IntSubstAndForm) GetId_rewrite() int {
	return intsubstandform.id_rewrite
}

func (intsubstandform *IntSubstAndForm) GetSaf() SubstAndForm {
	return intsubstandform.saf.Copy()
}

func (intsubstandform *IntSubstAndForm) SetId_rewrite(id_rewrite int) {
	intsubstandform.id_rewrite = id_rewrite
}

func (intsubstandform *IntSubstAndForm) SetSaf(saf SubstAndForm) {
	intsubstandform.saf = saf
}

func MakeIntSubstAndForm(i int, saf SubstAndForm) IntSubstAndForm {
	return IntSubstAndForm{i, saf}
}
func MakeEmptyIntSubstAndForm() IntSubstAndForm {
	return IntSubstAndForm{-1, MakeEmptySubstAndForm()}
}

func (s IntSubstAndForm) Copy() IntSubstAndForm {
	if s.GetSaf().IsEmpty() {
		return MakeEmptyIntSubstAndForm()
	} else {
		return MakeIntSubstAndForm(s.GetId_rewrite(), s.GetSaf())
	}
}

func (s IntSubstAndForm) ToString() string {
	res := "{ " + strconv.Itoa(s.GetId_rewrite()) + " - "
	if !s.GetSaf().GetSubst().IsEmpty() {
		res += s.GetSaf().GetSubst().ToString()
	}
	res += " - "
	if !s.GetSaf().GetForm().IsEmpty() {
		res += s.GetSaf().GetForm().ToString()
	}
	res += " }"

	return res
}

/* Print a list of substAndForm */
func IntSubstAndFormListToString(sl []IntSubstAndForm) string {
	var s_res string
	s_res = "{"
	for i, v := range sl {
		s_res += v.ToString()
		if i < len(sl)-1 {
			s_res += (", ")
		}
	}
	s_res += "}"
	return s_res
}

func InsertFirstIntSubstAndFormList(safL []IntSubstAndForm, saf IntSubstAndForm) []IntSubstAndForm {
	if len(safL) > 0 {
		// Moves everything to the right once.
		safL = append(safL[:1], safL[0:]...)
		safL[0] = saf
	} else {
		safL = append(safL, saf)
	}
	return safL
}

/* Copy a list of subst and form */
func CopyIntSubstAndFormList(sl []IntSubstAndForm) []IntSubstAndForm {
	res := make([]IntSubstAndForm, len(sl))
	for i := range sl {
		res[i] = sl[i].Copy()
	}
	return res
}

/* Get a subst list from SubstAndForm lsit */
func GetSubstListFromIntSubstAndFormList(l []IntSubstAndForm) []treetypes.Substitutions {
	res := []treetypes.Substitutions{}
	for _, saf := range l {
		res = append(res, saf.GetSaf().GetSubst())
	}
	return res
}
