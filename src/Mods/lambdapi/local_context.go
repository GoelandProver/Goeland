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
package lambdapi

import (
	"fmt"

	"github.com/GoelandProver/Goeland/AST"
	"github.com/GoelandProver/Goeland/Glob"
	"github.com/GoelandProver/Goeland/Lib"
)

var global_env Lib.List[Lib.Pair[string, AST.Ty]] = Lib.NewList[Lib.Pair[string, AST.Ty]]()

func toLocalVar(i int) string {
	return fmt.Sprintf("v%d", i)
}

func addToLocalContext(form AST.Form, local_con Lib.List[AST.Form]) (string, Lib.List[AST.Form]) {
	index := local_con.Len()
	local_con.Append(form)
	return toLocalVar(index), local_con
}

func getFromLocalContext(form AST.Form, local_con Lib.List[AST.Form]) string {
	opt_int := Lib.ListIndexOf(form, local_con)

	switch index := opt_int.(type) {
	case Lib.Some[int]:
		return toLocalVar(index.Val)
	case Lib.None[int]:
		debug(Lib.MkLazy(func() string {
			return fmt.Sprintf(
				"Trying to find %s in local context %s",
				form.ToString(),
				Lib.ListToString(local_con, ", ", "{}"),
			)
		}))
		Glob.Anomaly("LambdaPi", "a formula was not found in the local context while translating")
	}
	return ""
}

func addToGlobalEnv(p Lib.Pair[string, AST.Ty]) {
	global_env.Append(p)
}

func searchGlobalEnv(ty AST.Ty) Lib.Option[string] {
	for _, p := range global_env.GetSlice() {
		if p.Snd.Equals(ty) {
			return Lib.MkSome(p.Fst)
		}
	}
	return Lib.MkNone[string]()
}
