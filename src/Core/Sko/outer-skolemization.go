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
	"sync"

	"github.com/GoelandProver/Goeland/AST"
	"github.com/GoelandProver/Goeland/Glob"
	"github.com/GoelandProver/Goeland/Lib"
)

/** This file provides the outer Skolemization method.
 *
 * See the [skolemisation] file of the package [Core] for more information.
**/

type OuterSkolemization struct {
	existingSymbols Lib.Set[AST.Id]
	mu              sync.Mutex
}

func MkOuterSkolemization() OuterSkolemization {
	return OuterSkolemization{
		existingSymbols: Lib.EmptySet[AST.Id](),
		mu:              sync.Mutex{},
	}
}

func (sko OuterSkolemization) Skolemize(
	_, form AST.Form,
	x AST.Var,
	fvs Lib.Set[AST.Meta],
) (Skolemization, AST.Form) {
	sko.mu.Lock()
	symbol := genFreshSymbol(&sko.existingSymbols, sko.mu, x)
	sko.mu.Unlock()

	metas := fvs.Elements()

	skolemFunc := AST.MakerFun(
		symbol,
		Lib.ListMap(metas, Glob.To[AST.Term]),
		[]AST.TypeApp{},
		mkSkoFuncType(metas, x.GetTypeApp()),
	)

	skolemizedForm, _ := form.ReplaceTermByTerm(
		Glob.To[AST.Term](x),
		Glob.To[AST.Term](skolemFunc),
	)

	return sko, skolemizedForm
}
