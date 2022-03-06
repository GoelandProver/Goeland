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

	treesearch "github.com/delahayd/gotab/code-trees/tree-search"
	"github.com/delahayd/gotab/plugin"
	btypes "github.com/delahayd/gotab/types/basic-types"
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

func initPluginGlobalVariables() {
	positiveRewrite = make(map[string]btypes.Form)
	negativeRewrite = make(map[string]btypes.Form)
	positiveTree = new(treesearch.Node)
	negativeTree = new(treesearch.Node)
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
			activatePolarized = opt.Value == "true"
		case "preskolemization":
			preskolemize = opt.Value == "true"
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