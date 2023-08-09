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
/* meta.go */
/***********/

/**
* This file contains the implementation of a metavariable (also known as free
* variable in the litterature).
**/

package basictypes

import (
	"fmt"

	typing "github.com/GoelandProver/Goeland/polymorphism/typing"
)

/* Metavariable (X, Y) */
type Meta struct {
	index     int
	occurence int
	name      string
	formula   int
	typeHint  typing.TypeApp
}

func (m Meta) GetFormula() int { return m.formula }

func (m Meta) GetTypeApp() typing.TypeApp     { return m.typeHint }
func (m Meta) GetTypeHint() typing.TypeScheme { return m.typeHint.(typing.TypeScheme) }
func (m Meta) GetName() string                { return m.name }
func (m Meta) GetIndex() int                  { return m.index }
func (m Meta) GetOccurence() int              { return m.occurence }
func (m Meta) IsMeta() bool                   { return true }
func (m Meta) IsFun() bool                    { return false }
func (m Meta) ToMeta() Meta                   { return m }
func (m Meta) GetMetas() MetaList             { return MetaList{m} }

func (m Meta) ToString() string {
	// return fmt.Sprintf("%s_%d_%d_%d : %s", m.GetName(), m.GetOccurence(), m.GetFormula(), m.GetIndex(), m.GetTypeHint().ToString())
	return fmt.Sprintf("%s_%d : %s", m.GetName(), m.GetIndex(), m.GetTypeHint().ToString())

}

func (m Meta) ToMappedString(map_ MapString, type_ bool) string {
	if type_ {
		return m.ToString()
	}
	return fmt.Sprintf("%s_%d_%d", m.GetName(), m.GetIndex(), m.GetFormula())
}

func (m Meta) Equals(t Term) bool {
	return t.GetIndex() == m.GetIndex()
	// oth, isMeta := t.(Meta)
	// return isMeta &&
	// 	(oth.GetIndex() == m.GetIndex()) &&
	// 	(oth.GetOccurence() == m.GetOccurence()) &&
	// 	(oth.GetName() == m.GetName()) &&
	// 	(oth.GetFormula() == m.GetFormula()) &&
	// 	(m.typeHint.Equals(oth.typeHint))
}

func (m Meta) Copy() Term {
	return MakeMeta(m.GetIndex(), m.GetOccurence(), m.GetName(), m.GetFormula(), m.GetTypeApp())
}

func (m Meta) ReplaceSubTermBy(original_term, new_term Term) Term {
	if m.Equals(original_term) {
		return new_term.Copy()
	}
	return m
}

func (m Meta) GetSubTerms() TermList {
	return TermList{m}
}

func MakeEmptyMeta() Meta {
	return MakeMeta(-1, -1, "-1", -1, nil, typing.DefaultType())
}
