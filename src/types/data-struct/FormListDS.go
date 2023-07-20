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
package datastruct

import (
	treetypes "github.com/GoelandProver/Goeland/code-trees/tree-types"
	"github.com/GoelandProver/Goeland/global"
	basictypes "github.com/GoelandProver/Goeland/types/basic-types"
)

type FormListDS struct {
	fl basictypes.FormList
}

func (f FormListDS) GetFL() basictypes.FormList {
	return f.fl.Copy()
}

/* Data struct */

/* Take a list of formula and return a FormList (Datastructure type) */
func (f FormListDS) MakeDataStruct(lf basictypes.FormList, is_pos bool) DataStructure {
	return (new(FormListDS)).InsertFormulaListToDataStructure(lf)
}

/* Insert a list of formula into the given Datastructure (here, FormList) */
func (f FormListDS) InsertFormulaListToDataStructure(lf basictypes.FormList) DataStructure {
	for _, v := range lf {
		switch nf := v.(type) {
		case basictypes.Pred:
			f.fl = f.fl.AppendIfNotContains(nf)
		case basictypes.Not:
			switch nf.GetForm().(type) {
			case basictypes.Pred:
				f.fl = f.fl.AppendIfNotContains(nf.GetForm())
			}
		}
	}
	return f
}

func (f FormListDS) Print() {
	for _, f := range f.GetFL() {
		global.PrintDebug("FLTS", f.ToString())
	}
}

func (f FormListDS) Copy() DataStructure {
	return FormListDS{f.GetFL().Copy()}
}

func (fl FormListDS) IsEmpty() bool {
	return len(fl.GetFL()) <= 0
}

func (fl FormListDS) Unify(f basictypes.Form) (bool, []treetypes.MatchingSubstitutions) {
	for _, element := range fl.GetFL() {
		if element.Equals(f) {
			return true, []treetypes.MatchingSubstitutions{}
		}
	}
	return false, []treetypes.MatchingSubstitutions{}
}
