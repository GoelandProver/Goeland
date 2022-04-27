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
/***********/
/* init.go */
/***********/
/**
* This file contains the initialization functions of the plugin.
**/

package main

import (
	"fmt"
	"strings"

	treesearch "github.com/GoelandProver/Goeland/code-trees/tree-search"
	"github.com/GoelandProver/Goeland/plugin"
	btypes "github.com/GoelandProver/Goeland/types/basic-types"
)

/**
 * Registers all the hooks of this plugin in the PluginManager.
 * In particular, two hooks are activated by this plugin :
 *		- SendAxiomHook, to take axioms and make it a rewrite rule
 *		- RewriteHook, to rewrite an atom.
 **/
func registerHooks(pm *plugin.PluginManager) {
	pm.RegisterRewriteHook(rewrite)
	pm.RegisterSendAxiomHook(registerAxiom)
}

func initPluginGlobalVariables(debugMode bool) {
	positiveRewrite = make(map[string]btypes.FormList)
	negativeRewrite = make(map[string]btypes.FormList)
	positiveTree = new(treesearch.Node)
	negativeTree = new(treesearch.Node)
	debugActivated = debugMode
}

/**
 * Parses options given to the plugin by the prover.
 * It also displays what's been activated.
 **/
func parsePluginOptions(options []plugin.Option) {
	// Parse options
	for _, opt := range options {
		switch opt.Name {
		case "polarized":
			activatePolarized = opt.Value != "false"
		case "preskolemization":
			preskolemize = opt.Value != "false"
		}
	}

	// Display what's been activated.
	output := "[DMT] DMT loaded "

	if activatePolarized || preskolemize {
		output += "with "
	}

	var activatedOptions []string
	if activatePolarized {
		activatedOptions = append(activatedOptions, "polarization")
	}
	if preskolemize {
		activatedOptions = append(activatedOptions, "preskolemization")
	}

	output += strings.Join(activatedOptions, " and ")
	output += "\n"
	fmt.Print(output)
}
