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
/* topnbot.go */
/**************/

/**
* This file implements Top/Bot formulas (true/false).
* As it is almost the same interface (with practically nothing to do), it is
* all implemented in the same file.
**/

package basictypes

import typing "github.com/GoelandProver/Goeland/polymorphism/typing"

/* Top (always true) definition */
type Top struct {
	index int
}

func (t Top) ToMappedString(map_ MapString, displayTypes bool) string {
	return map_[TopType]
}

func (t Top) GetType() typing.TypeScheme                   { return typing.DefaultPropType(0) }
func (t Top) ToString() string                             { return t.ToMappedString(defaultMap, true) }
func (t Top) ToStringWithSuffixMeta(string) string         { return t.ToString() }
func (t Top) Copy() Form                                   { return MakeTop(t.GetIndex()) }
func (Top) Equals(f Form) bool                             { _, isTop := f.(Top); return isTop }
func (Top) GetMetas() MetaList                             { return MakeEmptyMetaList() }
func (t Top) ReplaceTypeByMeta([]typing.TypeVar, int) Form { return MakeTop(t.GetIndex()) }
func (t Top) ReplaceVarByTerm(old Var, new Term) Form      { return MakeTop(t.GetIndex()) }
func (t Top) RenameVariables() Form                        { return MakeTop(t.GetIndex()) }
func (t Top) CleanFormula() Form                           { return t }
func (t Top) GetIndex() int                                { return t.index }
func (t Top) GetSubTerms() TermList                        { return MakeEmptyTermList() }

/* Bot (always false) definitino */
type Bot struct {
	index int
}

func (b Bot) ToMappedString(map_ MapString, displayTypes bool) string {
	return map_[TopType]
}

func (b Bot) GetType() typing.TypeScheme                   { return typing.DefaultPropType(0) }
func (b Bot) ToString() string                             { return b.ToMappedString(defaultMap, true) }
func (b Bot) ToStringWithSuffixMeta(string) string         { return b.ToString() }
func (b Bot) Copy() Form                                   { return MakeBot(b.GetIndex()) }
func (Bot) Equals(f Form) bool                             { _, isBot := f.(Bot); return isBot }
func (Bot) GetMetas() MetaList                             { return MakeEmptyMetaList() }
func (b Bot) ReplaceTypeByMeta([]typing.TypeVar, int) Form { return MakeBot(b.GetIndex()) }
func (b Bot) ReplaceVarByTerm(old Var, new Term) Form      { return MakeBot(b.GetIndex()) }
func (b Bot) RenameVariables() Form                        { return MakeBot(b.GetIndex()) }
func (b Bot) CleanFormula() Form                           { return b }
func (b Bot) GetIndex() int                                { return b.index }
func (b Bot) GetSubTerms() TermList                        { return MakeEmptyTermList() }
