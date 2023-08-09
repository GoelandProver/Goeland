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

/**********/
/* var.go */
/**********/

/**
* This file contains the implementation of a closed variable.
**/

package basictypes

import (
	"fmt"

	typing "github.com/GoelandProver/Goeland/polymorphism/typing"
)

/* Variable (x,y under ForAll or Exists) */
type Var struct {
	*MappedString
	index    int
	name     string
	typeHint typing.TypeApp
}

func (v Var) GetTypeApp() typing.TypeApp     { return v.typeHint }
func (v Var) GetTypeHint() typing.TypeScheme { return v.typeHint.(typing.TypeScheme) }
func (v Var) GetIndex() int                  { return v.index }
func (v Var) GetName() string                { return v.name }
func (v Var) IsMeta() bool                   { return false }
func (v Var) IsFun() bool                    { return false }
func (v Var) Copy() Term                     { return MakeVar(v.GetIndex(), v.GetName(), v.typeHint) }
func (Var) ToMeta() Meta                     { return MakeEmptyMeta() }
func (Var) GetMetas() MetaList               { return MetaList{} }

func (v Var) Equals(t Term) bool {
	return v.GetIndex() == t.GetIndex()
	// oth, isVar := t.(Var)
	// return isVar && (oth.GetIndex() == v.GetIndex()) &&
	// 	(oth.GetName() == v.GetName()) && (v.typeHint.Equals(oth.typeHint))
}

func (v Var) GetSubTerms() TermList {
	return TermList{v}
}

func (v Var) ReplaceSubTermBy(original_term, new_term Term) Term {
	if v.Equals(original_term) {
		return new_term.Copy()
	}
	return v
}

func (v Var) ToMappedString(map_ MapString, type_ bool) string {
	if type_ {
		return fmt.Sprintf("%s_%d : %s", v.GetName(), v.GetIndex(), v.typeHint.ToString())
	}
	return v.GetName()
}

func (v Var) ToMappedStringSurround(mapping MapString, displayTypes bool) string {
	return "%s"
}

func (v Var) ToMappedStringChild(mapping MapString, displayTypes bool) (separator, emptyValue string) {
	if displayTypes {
		return "", fmt.Sprintf("%s_%d : %s", v.GetName(), v.GetIndex(), v.typeHint.ToString())
	} else {
		return "", v.GetName()
	}
}
