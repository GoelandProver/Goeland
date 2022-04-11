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
/****************/
/* equalitys.go */
/****************/
/**
* This file implements the main logic behind the equality plugin.
**/

package main

import (
	treetypes "github.com/GoelandProver/Goeland/code-trees/tree-types"
	"github.com/GoelandProver/Goeland/global"
	"github.com/GoelandProver/Goeland/plugin"
	basictypes "github.com/GoelandProver/Goeland/types/basic-types"
	datastruct "github.com/GoelandProver/Goeland/types/data-struct"
)

/**
 * Base function needed to initialize any plugin of Goéland.
 * It registers the hooks to the plugin manager, and parses the given options.
 **/
func InitPlugin(pm *plugin.PluginManager, options []plugin.Option, debugMode bool) error {
	registerHooks(pm)
	initPluginGlobalVariables()
	parsePluginOptions(options)

	// No error can be thrown in this plugin.
	return nil
}

/**
* Fonction EqualityReasoning
* Prend atomics
* créé problème
* réturn bool et substitution
**/
func EqualityReasoning(tree_pos, tree_neg datastruct.DataStructure, atomic basictypes.FormList) (bool, []treetypes.Substitutions) {
	global.PrintDebug("ER", "ER call")
	problem, equalities := BuildEqualityProblemMultiList(atomic, tree_pos, tree_neg)
	if equalities {
		return equalityReasoningMultiList(problem)
	} else {
		return false, []treetypes.Substitutions{}
	}
}

func InsertLPO(p basictypes.Pred) {
	lpo.insertPred(p)
}
