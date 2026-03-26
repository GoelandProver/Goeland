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

/** This file provides the preinner Skolemization method.
 *
 * See the [skolemisation] file of the package [Core] for more information.
**/

type PreInnerSkolemization struct {
	existingSymbols Lib.Set[AST.Id]
	linkedSymbols   Lib.List[Glob.Pair[AST.Form, AST.Id]] // FIXME: use a map once a formula is hashable
	mu              *sync.Mutex
}

func MkPreInnerSkolemization() PreInnerSkolemization {
	return PreInnerSkolemization{
		existingSymbols: Lib.EmptySet[AST.Id](),
		linkedSymbols:   Lib.NewList[Glob.Pair[AST.Form, AST.Id]](),
		mu:              &sync.Mutex{},
	}
}

func (sko PreInnerSkolemization) Skolemize(
	delta, form AST.Form,
	_ Lib.Set[AST.Meta],
) (Skolemization, AST.Form) {
	var symbol AST.Id
	sko.mu.Lock()
	if val, ok := sko.linkedSymbols.Find(
		func(p Glob.Pair[AST.Form, AST.Id]) bool { return p.Fst.Equals(delta) },
		Glob.MakePair(Glob.To[AST.Form](AST.MakeBot()), AST.MakeId("")),
	); ok {
		symbol = val.Snd
	} else {
		symbol = genFreshSymbol(&sko.existingSymbols)
		sko.linkedSymbols.Append(Glob.MakePair(delta, symbol))
	}
	sko.mu.Unlock()

	internalMetas := form.GetMetas().Elements()

	skolemFunc := AST.MakeFun(
		symbol,
		Lib.NewList[AST.Ty](),
		Lib.ListMap(internalMetas, Glob.To[AST.Term]),
	)

	skolemizedForm := form.Instantiate(0, skolemFunc)

	return sko, skolemizedForm
}
