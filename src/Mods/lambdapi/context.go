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
	"github.com/GoelandProver/Goeland/Mods/CertifUtils"
	"github.com/GoelandProver/Goeland/Mods/dmt"
)

func makeContextIfNeeded(root AST.Form, metaList Lib.List[AST.Meta]) string {
	resultString := contextPreamble() + "\n\n"

	if Glob.IsLoaded("dmt") {
		registeredAxioms := dmt.GetRegisteredAxioms()
		registeredAxioms.Append(root)
		root = AST.MakeAnd(registeredAxioms)
	}

	// if AST.EmptyGlobalContext() {
	contextual_symbols := CertifUtils.GetContextFromFormula(root)
	for _, p := range contextual_symbols.GetSlice() {
		addToGlobalEnv(Lib.MkPair(p.Fst.ToString(), p.Snd))
		resultString += fmt.Sprintf("symbol %s : %s;\n", p.Fst.ToString(), p.Snd.ToString())
	}

	if metaList.Len() > 0 {
		resultString += contextualizeMetas(metaList)
	}
	// } else {
	// 	resultString += getContextAsString(root)

	// 	if metaList.Len() > 0 {
	// 		resultString += contextualizeMetas(metaList)
	// 	}
	// }
	return resultString
}

func contextPreamble() string {
	return "require open Logic.Goeland.FOL Logic.Goeland.LL Logic.Goeland.ND Logic.Goeland.ND_eps Logic.Goeland.ND_eps_full Logic.Goeland.ND_eps_aux Logic.Goeland.LL_ND Logic.Goeland.GS3;"
}

func contextualizeMetas(metaList Lib.List[AST.Meta]) string {
	result := ""
	for _, meta := range metaList.GetSlice() {
		addToGlobalEnv(Lib.MkPair(meta.ToString(), meta.GetTy()))
		result += fmt.Sprintf("symbol %s : %s;\n", meta.ToString(), meta.GetTy().ToString())
	}
	return result
}
