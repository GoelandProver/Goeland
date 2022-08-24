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
/* formula.go */
/**************/
/**
* This file contains functions and types which describe the formula's data structure
**/

package basictypes

import (
	"strconv"

	"github.com/GoelandProver/Goeland/global"
)

/**
*  MetaGen struct
* Formula, int
* A formula which can introduce a metavariable and the number of time it was used
**/
type MetaGen struct {
	f       Form
	counter int
}

func (m MetaGen) GetForm() Form {
	return m.f.Copy()
}
func (m MetaGen) GetCounter() int {
	return m.counter
}
func (m MetaGen) Copy() MetaGen {
	return MakeMetaGen(m.GetForm(), m.GetCounter())
}

/*** Functions ***/

/* Maker */
func MakeMetaGen(f Form, cpt int) MetaGen {
	return MetaGen{f, cpt}
}

/* Print a list of Metagen : (formula, int) */
func MetaGenListToString(lf []MetaGen) string {
	var s_res string
	for i, v := range lf {
		f := v.f
		time_used := v.GetCounter()
		s_res += f.ToString() + " - " + strconv.Itoa(time_used)
		if i < len(lf)-1 {
			s_res += (", ")
		}
	}
	return s_res
}

/* Return true is a given Form is in metaGenList, false otherwise */
func ContainsMetaGenList(hdf Form, meta_generator []MetaGen) bool {
	for _, v := range meta_generator {
		if v.GetForm().Equals(hdf) {
			return true
		}
	}
	return false
}

/* Return the index of the formula f in meta_generator list - append if not exists */
func GetIndexMetaGenList(f Form, meta_generator []MetaGen) (int, []MetaGen) {
	for i, v := range meta_generator {
		if v.GetForm().Equals(f) {
			return i, meta_generator
		}
	}
	new_meta_generator := append(meta_generator, MetaGen{f, 1})
	return len(new_meta_generator) - 1, new_meta_generator
}

/* Copy a MetaGen list */
func CopyMetaGenList(ml []MetaGen) []MetaGen {
	res := make([]MetaGen, len(ml))
	for i := range ml {
		res[i] = ml[i].Copy()
	}
	return res
}

/* Choose less reintroduced Meta */
func chooseLessReintroducedMeta(meta_generator []MetaGen, allowed_indexes []int) int {
	saved_cpt := -1
	saved_index := 0
	for i, v := range meta_generator {
		if (allowed_indexes == nil || global.ContainsInt(i, allowed_indexes)) && ((v.GetCounter() < saved_cpt) || saved_cpt == -1) {
			saved_index = i
			saved_cpt = v.GetCounter()
		}
	}
	return saved_index
}

/**
* Reintroduce meta
* reintroduce a given formula if index != -1
* Choose the less reintroduced formula among a list of fomulas otherwise
**/
func ReintroduceMeta(meta_generator *[]MetaGen, index int) Form {

	if index != -1 {
		(*meta_generator)[index] = MakeMetaGen((*meta_generator)[index].GetForm(), (*meta_generator)[index].GetCounter()+1)
		return (*meta_generator)[index].GetForm()
	} else {
		index_less_reintroduced_meta := chooseLessReintroducedMeta(*meta_generator, nil)
		(*meta_generator)[index_less_reintroduced_meta] = MakeMetaGen((*meta_generator)[index_less_reintroduced_meta].GetForm(), (*meta_generator)[index_less_reintroduced_meta].GetCounter()+1)
		return (*meta_generator)[index_less_reintroduced_meta].GetForm()
	}
}
