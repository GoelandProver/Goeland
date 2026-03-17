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
* This file provides the necessary methods and data to the variable management.
**/

package AST

import (
	"fmt"
	"sync"

	"github.com/GoelandProver/Goeland/Glob"
	"github.com/GoelandProver/Goeland/Lib"
)

/* Datas */
var occurenceMeta map[string]int = make(map[string]int)
var lock_term sync.Mutex
var meta_id int

var debug Glob.Debugger

func InitDebugger() {
	debug = Glob.CreateDebugger("AST")
}

// Global id
var Id_eq Id
var EmptyPredEq Pred

/* Initialization */
func Init() {
	Reset()
	Id_eq = MakerId("=")
	EmptyPredEq = MakerPred(Id_eq, Lib.NewList[Ty](), Lib.NewList[Term]())
	initPrinters()
	initTPTPNativeTypes()
}

/* Reset all the maps and counters */
func Reset() {
	ResetMeta()
}

/* Reset the metavariable table (useful when the IDDFS stop and restart) */
func ResetMeta() {
	meta_id = 0
	occurenceMeta = map[string]int{}
}

/* ID maker */
// Deprecated: use MakeId instead
func MakerId(s string) Id {
	return MakeId(s)
}

/* Var maker */
// Deprecated: use MakeVar instead
func MakerVar(s string) Var {
	return MakeVar(s)
}

/* Meta maker */
func MakerMeta(s string, formula int, ty Ty) Meta {
	lock_term.Lock()
	new_id := meta_id
	meta_id++
	i, ok := occurenceMeta[s]
	lock_term.Unlock()
	if ok {
		lock_term.Lock()
		occurenceMeta[s] = i + 1
		lock_term.Unlock()
		return MakeMeta(new_id, i, fmt.Sprintf("%s%d", s, new_id), formula, ty)
	} else {
		lock_term.Lock()
		occurenceMeta[s] = 1
		lock_term.Unlock()
		return MakeMeta(new_id, 0, fmt.Sprintf("%s%d", s, new_id), formula, ty)
	}
}

/* Const maker (given a id, create a fun without args) */
func MakerConst(id Id) Fun {
	return MakeFun(id, Lib.NewList[Ty](), Lib.NewList[Term](), Lib.EmptySet[Meta]())
}

/* Fun maker, with given id and args */
func MakerFun(id Id, ty_args Lib.List[Ty], terms Lib.List[Term]) Fun {
	return MakeFun(id, ty_args, terms, Lib.EmptySet[Meta]())
}
