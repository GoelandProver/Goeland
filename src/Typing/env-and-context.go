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

// We define an ordered type of pairs of (string, Ty) in order to use sets.
type definedType struct {
	name string
	ty   AST.Ty
}

func (dty definedType) Less(oth any) bool {
	if other, ok := oth.(definedType); ok {
		return dty.name < other.name
	}
	return false
}

func (dty definedType) Equals(oth any) bool {
	if other, ok := oth.(definedType); ok {
		return dty.name == other.name && dty.ty.Equals(other.ty)
	}
	return false
}

// A context is a set of defined types
type Con struct {
	defs Lib.Set[definedType]
}

func emptyCon() Con {
	return Con{Lib.EmptySet[definedType]()}
}

func (con Con) Copy() Con {
	return Con{con.defs.Copy()}
}

func (con Con) add(name string, ty AST.Ty) Con {
	return Con{con.defs.Add(definedType{name, ty})}
}

func (con Con) contains(name string, ty AST.Ty) bool {
	return con.defs.Contains(definedType{name, ty})
}

// We could use [Con] to do environments, but as we need to query by name it's faster to use a map.
type Env struct {
	con map[string]AST.Ty
	mut sync.Mutex
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
					return Lib.MkSome(AST.InstantiateTy(ty, instance))
				},
			)
		},
	)
}
