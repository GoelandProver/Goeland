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
/**************/
/* manager.go */
/**************/
/**
* This file provides an interface to manage plugins.
**/

package plugin

import (
	btypes "github.com/GoelandProver/Goeland/types/basic-types"
)

/**
 * RewriteHook func. Takes atomic forms as input & output.
 **/
type RewriteHook func(btypes.FormAndTerm) ([]btypes.FormAndTerm, error)
type SendAxiomHook func(btypes.Form) bool 

/**
 * Stores the hooks of the differents plugins.
 **/
type PluginManager struct {
	rewriteHook RewriteHook
	sendAxiomHook SendAxiomHook
}

/**
 * Properly creates a new PluginManager. It is advised to keep only one 
 * instance of PluginManager in your application (that's why a pointer is returned).
 **/
func makeManager() *PluginManager {
	pm := &PluginManager{}
	return pm
}

/**
* Exported functions, usable in others modules.
**/

/**
 * Register the rewrite hook. Use this in the plugins. Refer to the docs to see where
 * a hook can be called.
 **/
func (pm *PluginManager) RegisterRewriteHook(hook RewriteHook) {
	pm.rewriteHook = hook
}

/**
 * Execute the rewrite hook.
 **/
func (pm *PluginManager) ApplyRewriteHook(arg btypes.FormAndTerm) ([]btypes.FormAndTerm, error) {
	if pm.rewriteHook == nil {
		return []btypes.FormAndTerm{arg}, nil
	}
	return pm.rewriteHook(arg)
}

/**
 * Register the send axiom hook. Use this in the plugins. Refer to the docs to see where
 * a hook can be called.
 **/
func (pm *PluginManager) RegisterSendAxiomHook(hook SendAxiomHook) {
	pm.sendAxiomHook = hook
}

/**
 * Execute the sendAxiomHook hook.
 **/
func (pm *PluginManager) ApplySendAxiomHook(arg btypes.Form) bool {
	if pm.sendAxiomHook == nil {
		return false
	}
	return pm.sendAxiomHook(arg)
}