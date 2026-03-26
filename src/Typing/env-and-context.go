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
 * This file declares the environments of the typing process.
 * In particular, it handles the global context and its accesses.
**/

package Typing

import (
	"sync"

	"github.com/GoelandProver/Goeland/AST"
	"github.com/GoelandProver/Goeland/Lib"
)

// A context is a list of types, where the nth type is the type of the nth bound variable
// (where n is the number of quantifiers to cross to find back the quantifier that binds
// the variable --- à la De Bruijn)
type Ctx struct {
	Lib.List[AST.Ty]
}

func emptyCtx() Ctx {
	return Ctx{Lib.NewList[AST.Ty]()}
}

func (ctx Ctx) Copy() Ctx {
	return Ctx{ctx.Clone()}
}

func reindexTy(ty AST.Ty) AST.Ty {
	switch ty := ty.(type) {
	case AST.TyBound:
		return ty.Increase()
	case AST.TyConstr:
		return AST.MkTyConstr(
			ty.Symbol(),
			Lib.ListMap(ty.Args(), reindexTy),
		)
	default:
		return ty
	}
}

func (ctx Ctx) reindex() Ctx {
	return Ctx{Lib.ListMap(ctx.List, reindexTy)}
}

func (ctx Ctx) add(ty AST.Ty) Ctx {
	return Ctx{ctx.reindex().Cons(reindexTy(ty))}
}

func (ctx Ctx) toString() string {
	return Lib.ListToString(ctx.List, ", ", "{}")
}

type Env struct {
	con map[string]AST.Ty
	mut sync.Mutex
}

func (env *Env) toString() string {
	env.mut.Lock()
	result := "Typing environment:"
	for k, v := range env.con {
		result += "\n- " + k + ": " + v.ToString()
	}
	env.mut.Unlock()
	return result + "\n"
}

func safeGlobalOperation[T any](f func() T) T {
	global_env.mut.Lock()
	res := f()
	global_env.mut.Unlock()
	return res
}

func AddToGlobalEnv(name string, ty AST.Ty) {
	safeGlobalOperation(
		func() any {
			global_env.con[name] = ty
			return nil
		},
	)
}

func unsafeQuery(name string) Lib.Option[AST.Ty] {
	if ty, ok := global_env.con[name]; ok {
		return Lib.MkSome(ty)
	}
	return Lib.MkNone[AST.Ty]()
}

func QueryGlobalEnv(name string) Lib.Option[AST.Ty] {
	return safeGlobalOperation(func() Lib.Option[AST.Ty] { return unsafeQuery(name) })
}

// Queries the environment and, if found, instantiate the definition with the given types.
// Guaranteed to not return a Pi-type.
func QueryEnvInstance(name string, instance Lib.List[AST.Ty]) Lib.Option[AST.Ty] {
	return safeGlobalOperation(
		func() Lib.Option[AST.Ty] {
			// If [name] is safely found in the environment, instantiates it with the given vars
			// Otherwise, return None
			return Lib.OptBind(
				unsafeQuery(name),
				func(ty AST.Ty) Lib.Option[AST.Ty] {
					return AST.InstantiateTy(ty, instance)
				},
			)
		},
	)
}
