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
* This file inits the global variables of the DMT and hook the functions to the prover.
**/

package dmt

import (
	"flag"
	"strings"

	"github.com/GoelandProver/Goeland/AST"
	"github.com/GoelandProver/Goeland/Glob"
	"github.com/GoelandProver/Goeland/Unif"
)

var positiveRewrite map[string]*AST.FormList /* Stores rewrites of atoms with positive occurrences */
var negativeRewrite map[string]*AST.FormList /* Stores rewrites of atoms with negative occurrences */

var positiveTree Unif.DataStructure /* Matches atoms with positive occurrences */
var negativeTree Unif.DataStructure /* Matches atoms with negative occurrences */

var activatePolarized bool
var preskolemize bool

var flagPolarized = flag.Bool("polarized", false, "Activate polarized DMT")
var flagPresko = flag.Bool("presko", false, "Activate preskolemization on DMT")

var registeredAxioms *AST.FormList

/**
 * Base function needed to initialize any plugin of Goéland.
 * It registers the hooks to the plugin manager, and parses the given options.
 **/
func InitPlugin() error {
	initPluginGlobalVariables()
	parsePluginOptions()

	// No error can be thrown in this plugin.
	return nil
}

// For testing purposes
func InitPluginTests(polarized, presko bool) {
	*flagPolarized = polarized
	*flagPresko = presko
	InitPlugin()
}

func initPluginGlobalVariables() {
	positiveRewrite = make(map[string]*AST.FormList)
	negativeRewrite = make(map[string]*AST.FormList)
	positiveTree = Unif.NewNode()
	negativeTree = Unif.NewNode()

	registeredAxioms = AST.NewFormList()
}

/**
 * Parses options given to the plugin by the prover.
 * It also displays what's been activated.
 **/
func parsePluginOptions() {
	// Parse options
	activatePolarized = *flagPolarized
	preskolemize = *flagPresko

	// Display what's been activated.
	output := "DMT loaded "

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
	Glob.PrintInfo("DMT", output)
}


func GetRegisteredAxioms() *AST.FormList {
	return registeredAxioms
}
