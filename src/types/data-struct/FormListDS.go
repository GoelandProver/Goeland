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
