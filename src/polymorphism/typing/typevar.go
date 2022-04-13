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
/*  typevar.go  */
/****************/

/**
 * This file declares one of the basic types used for typing the prover :
 * TypeVar, a variable of type.
 **/

package polymorphism

const (
	BAD_INDEX = -1
)

/**
 * A quantified variable of type.
 * It can serve in arguments of a function or predicate.
 **/
type TypeVar struct {
	name     string
	metaInfo struct {
		formulaIndex int
		index        int
	}
}

/* TypeScheme interface */
// Non-exported methods.
func (tv TypeVar) isScheme()        {}
func (tv TypeVar) toList() []uint64 { return []uint64{tv.UID()} }

// Exported methods.
func (tv TypeVar) UID() uint64                { return ^uint64(0) }
func (tv TypeVar) Equals(oth TypeScheme) bool { return oth.UID() == tv.UID() }
func (tv TypeVar) ToString() string           { return tv.name }
func (tv TypeVar) Size() int                  { return 1 }
func (tv TypeVar) GetPrimitives() []TypeApp   { return []TypeApp{tv} }

/* TypeApp interface */
func (tv TypeVar) isTypeApp()                                          {}
func (tv TypeVar) substitute(mapSubst map[TypeVar]TypeHint) TypeScheme { return mapSubst[tv] }

func (tv TypeVar) ToTypeScheme() TypeScheme { return nil }
func (tv TypeVar) Copy() TypeApp            { return MkTypeVar(tv.name) }

/* TypeVar should be converted to Meta when becoming a term */
func (tv *TypeVar) ShouldBeMeta(formula int) { tv.metaInfo.formulaIndex = formula }
func (tv *TypeVar) Instantiate(index int)    { tv.metaInfo.index = index }
func (tv TypeVar) IsMeta() bool              { return tv.metaInfo.formulaIndex != BAD_INDEX }
func (tv TypeVar) Instantiated() bool        { return tv.metaInfo.index != BAD_INDEX }
func (tv TypeVar) MetaInfos() (int, int)     { return tv.metaInfo.formulaIndex, tv.metaInfo.index }

/* Makes a TypeVar from a name */
func MkTypeVar(name string) TypeVar {
	return TypeVar{name, struct {
		formulaIndex int
		index        int
	}{BAD_INDEX, BAD_INDEX}}
}
