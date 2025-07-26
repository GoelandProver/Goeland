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
* This file contains useful functions for generate a tree proof
**/

package Search

import (
	"encoding/json"
	"os"
	"sync"

	"github.com/GoelandProver/Goeland/Core"
	"github.com/GoelandProver/Goeland/Glob"
	"github.com/GoelandProver/Goeland/Lib"
	"github.com/GoelandProver/Goeland/Unif"
)

var graph_file_name_exchanges = Glob.GetExecPath() + "../../visualization/json/exchanges_output.json"
var file_exchanges *os.File
var map_id_graph map[uint64]int = make(map[uint64]int)
var mutex_file_exchanges sync.Mutex

// Graph struct
type exchanges_struct struct {
	Name           int    `json:"Name"`
	Version        int    `json:"Version"`
	Father         int    `json:"Father"`
	Forms          string `json:"Forms"`
	MM             string `json:"MM"`
	MC             string `json:"MC"`
	Subst_sent     string `json:"Subst_sent"`
	Subst_received string `json:"Subst_received"`
	Function       string `json:"Function"`
}

/* Getters */
func GetExchangesFileName() string {
	return graph_file_name_exchanges
}

/* Setters */
func SetFileExchanges(file *os.File) {
	file_exchanges = file
}

/* Functions */
func ResetExchangesFile() {
	if Glob.GetExchanges() {
		f, _ := os.Create(GetExchangesFileName())
		SetFileExchanges(f)
	}
}

func makeJsonExchanges(
	father_uint uint64,
	st State,
	ss_subst Lib.List[Lib.List[Unif.MixedSubstitution]],
	subst_received Lib.List[Unif.MixedSubstitution],
	calling_function string,
) exchanges_struct {
	// ID
	id_process := Glob.GetGID()
	id := int(id_process)
	// Version
	version := 0
	if val, ok := map_id_graph[id_process]; ok {
		map_id_graph[id_process] = val + 1
		version = val
	} else {
		map_id_graph[id_process] = 1
		version = 0
	}

	// Father
	father := int(father_uint)

	// Forms
	forms := st.GetLF().ToString() + " ; " + st.GetAtomic().ToString()

	// Meta
	mm := Lib.ListToString(st.GetMM().Elements(), ",", "[]")
	mc := Lib.ListToString(st.GetMC().Elements(), ",", "[]")

	// Subt
	sr := ""
	if !st.GetAppliedSubst().GetSubst().Empty() {
		sr += Lib.ListToString(st.GetAppliedSubst().GetSubst(), ", ", "(empty subst)")
	}
	if !subst_received.Empty() {
		sr += Lib.ListToString(subst_received, ", ", "(empty subst)")
	}

	ss := ""
	if !ss_subst.Empty() {
		ss += Unif.SubstsToString(ss_subst)
	}

	// fmt.Printf("Id = %v, version = %v, father = %v, forms = %v, mm = %v, mc = %v, ss = %v, sr = %v\n", id, version, father, forms, mm, mc, ss, sr)
	return exchanges_struct{id, version, father, forms, mm, mc, ss, sr, calling_function}
}

func WriteExchanges(father uint64, st State, sub_sent []Core.SubstAndForm, subst_received Core.SubstAndForm, calling_function string) {
	if Glob.GetExchanges() {
		mutex_file_exchanges.Lock()
		debug(Lib.MkLazy(func() string { return calling_function }))
		os_stat, _ := os.Stat(graph_file_name_exchanges)
		if os_stat.Size() != 0 {
			file_exchanges.WriteString(",\n")
		} else {
			file_exchanges.WriteString("[\n")
		}
		json_content := makeJsonExchanges(father, st,
			Core.RemoveEmptySubstFromSubstList(Core.GetSubstListFromSubstAndFormList(sub_sent)),
			subst_received.GetSubst(), calling_function)
		json_string, _ := json.MarshalIndent(json_content, "", " ")
		file_exchanges.Write(json_string)
		mutex_file_exchanges.Unlock()
	}
}
