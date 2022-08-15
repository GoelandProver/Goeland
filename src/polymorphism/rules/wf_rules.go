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

/*****************/
/*  wf_rules.go  */
/*****************/

package polyrules

/**
 * This file defines the WF rules.
 **/

/* WF1 rule first empties the variables, and then the types. */
func applyWF2(state Sequent, root *ProofTree, fatherChan chan Reconstruct) Reconstruct {
	root.appliedRule = "WF_2"

	// Try to empty vars first
	if len(state.localContext.vars) > 0 {
		// Launch child on the type of the first var
		var_, newLocalContext := state.localContext.popVar()
		child := []Sequent{
			{
				localContext:  newLocalContext,
				globalContext: state.globalContext,
				consequence:   Consequence{a: var_.GetTypeApp()},
			},
		}
		return launchChildren(child, root, fatherChan)
	}

	// Then, if vars is not empty, empty the types
	_, newLocalContext := state.localContext.popTypeVar()
	child := []Sequent{
		{
			localContext:  newLocalContext,
			globalContext: state.globalContext,
			consequence:   Consequence{a: metaType},
		},
	}
	return launchChildren(child, root, fatherChan)
}