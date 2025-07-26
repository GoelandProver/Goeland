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
	"github.com/GoelandProver/Goeland/AST"
	"github.com/GoelandProver/Goeland/Glob"
	"github.com/GoelandProver/Goeland/Lib"
	"github.com/GoelandProver/Goeland/Unif"
)

type FormListDS struct {
	fl Lib.List[AST.Form]
}

func (f FormListDS) GetFL() Lib.List[AST.Form] {
	return Lib.ListCpy(f.fl)
}

/* Data struct */

/* Take a list of formula and return a FormList (Datastructure type) */
func (f FormListDS) MakeDataStruct(lf Lib.List[AST.Form], is_pos bool) Unif.DataStructure {
	return (new(FormListDS)).InsertFormulaListToDataStructure(lf)
}

/* Insert a list of formula into the given Datastructure (here, FormList) */
func (f FormListDS) InsertFormulaListToDataStructure(lf Lib.List[AST.Form]) Unif.DataStructure {
	for _, v := range lf.GetSlice() {
		switch nf := v.(type) {
		case AST.Pred:
			if !Lib.ListMem(nf.Copy(), f.fl) {
				f.fl.Append(nf)
			}
		case AST.Not:
			switch nf.GetForm().(type) {
			case AST.Pred:
				if !Lib.ListMem(nf.Copy(), f.fl) {
					f.fl.Append(nf)
				}
			}
		}
	}
	return f
}

func (f FormListDS) Print() {
	for _, f := range f.GetFL().GetSlice() {
		Glob.PrintDebug("FLTS", Lib.MkLazy(func() string { return f.ToString() }))
	}
}

func (f FormListDS) Copy() Unif.DataStructure {
	return FormListDS{Lib.ListCpy(f.GetFL())}
}

func (fl FormListDS) IsEmpty() bool {
	return fl.GetFL().Empty()
}

func (fl FormListDS) Unify(f AST.Form) (bool, []Unif.MatchingSubstitutions) {
	for _, element := range fl.GetFL().GetSlice() {
		if element.Equals(f) {
			return true, []Unif.MatchingSubstitutions{}
		}
	}
	return false, []Unif.MatchingSubstitutions{}
}
