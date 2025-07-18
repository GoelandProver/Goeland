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

package Sko

import (
	"fmt"
	"sync"

	"github.com/GoelandProver/Goeland/AST"
	"github.com/GoelandProver/Goeland/Glob"
	"github.com/GoelandProver/Goeland/Lib"
)

/** This file provides the generic [Skolemization] interface that is exported
 *  and should be used to skolemize formulas.
 *
 * See [Core.skolemisation] for a thorough description of the structure.
 *
 * It also provides some utility functions that may be used by the different
 * skolemization techniques.
 **/

type Skolemization interface {
	Skolemize(
		AST.Form,
		AST.Form,
		AST.Var,
		Lib.Set[AST.Meta],
	) (Skolemization, AST.Form)
}

func mkSkoFuncType(
	relevantMetas Lib.List[AST.Meta],
	varType AST.TypeApp,
) AST.TypeScheme {
	var resultingScheme AST.TypeScheme

	switch relevantMetas.Len() {
	case 0:
		if typ, ok := varType.(AST.TypeScheme); ok {
			resultingScheme = typ
		} else {
			Glob.Anomaly("Skolemization", "Variable has an illegal type")
		}
	case 1:
		metaType := relevantMetas.At(0).GetTypeApp()
		resultingScheme = AST.MkTypeArrow(metaType, varType)
	default:
		argTypes := Lib.ListMap(
			relevantMetas,
			func(x AST.Meta) AST.TypeApp { return x.GetTypeApp() },
		)
		resultingScheme = AST.MkTypeArrow(
			AST.MkTypeCross(argTypes.GetSlice()...),
			varType,
		)
	}

	return resultingScheme
}

/* If every Skolem symbol is created using this function, then it will generate
 * a fresh symbol for sure. Otherwise, nothing is guaranteed.
 */
func genFreshSymbol(existingSymbols *Lib.Set[AST.Id], mu sync.Mutex, x AST.Var) AST.Id {
	symbol := AST.MakerNewId(
		fmt.Sprintf("skolem@%v", x.GetName()),
	)
	existingSymbols.Add(symbol)

	return symbol
}
