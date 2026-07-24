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
* This file contains all the definitons necessary to make a Code Tree
**/

package discriminationtree

import (
	"fmt"

	"github.com/GoelandProver/Goeland/AST"
)

// Implement the perfect tree link between a Meta and newMeta
type NormalizerContext struct {
	counter int                 // Counter for the naming
	mapping map[string]AST.Meta // Association a variable name to a normalizedVariable name
	ty      AST.Ty
}

// New Instance
func NewContext() *NormalizerContext {
	return &NormalizerContext{
		counter: 0,
		mapping: make(map[string]AST.Meta),
		ty:      nil,
	}
}

// Transform the discriminationTree to a perfect disriminationTree.
// Using a Map, when visiting a branch, each Meta is stored and transform into a NormalizedMeta. This allow memory gain.
// Branch 1 : f(x), Branch 2 : f(y) => Branch 1 : f(v1), Branch 2 : f(v1) => We notice it's the same one => Possible to fuse them to save memory
func (ctx *NormalizerContext) GetNormalizedMeta(originalMeta AST.Meta) AST.Meta {

	originalName := originalMeta.GetName() // Get meta Name
	orignalType := originalMeta.GetTy()    // Get Meta Ty

	// Contains check
	if normalizedMeta, exists := ctx.mapping[originalName]; exists {
		if normalizedMeta.GetTy().Equals(orignalType) {
			return normalizedMeta
		}
	}

	// Create new name
	ctx.counter++
	newName := fmt.Sprintf("v%d", ctx.counter) // Create the Meta name
	newMeta := AST.MakeMeta(ctx.counter, 0, newName, 0, originalMeta.GetTy())
	ctx.mapping[originalName] = newMeta // Add to the map
	ctx.ty = newMeta.GetTy()

	return newMeta
}

func (ctx *NormalizerContext) Reset() {

	ctx.counter = 0
	ctx.mapping = make(map[string]AST.Meta)

}
