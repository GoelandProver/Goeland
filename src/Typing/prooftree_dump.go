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

package Typing

// import (
// 	"encoding/json"
// 	"errors"
// 	"fmt"
// 	"os"
// 	"strings"

// 	"github.com/GoelandProver/Goeland/AST"
// 	"github.com/GoelandProver/Goeland/Glob"
// )

// /**
//  * This file contains the methods to dump a prooftree in a json.
//  **/

// /* Dumps the prooftree in a json. */
// func (root *ProofTree) DumpJson() error {
// 	// Dump folder should be a flag in the future
// 	dump := "../visualization/types/"
// 	// Create a new file
// 	i := 0
// 	for fileExists(getFileName(dump, i)) {
// 		i++
// 	}

// 	f, err := os.OpenFile(getFileName(dump, i), os.O_APPEND|os.O_CREATE|os.O_WRONLY, 0644)
// 	if err != nil {
// 		return err
// 	}
// 	json, err := root.dump()

// 	if err != nil {
// 		return err
// 	}

// 	_, err = f.WriteString(json)
// 	Glob.PrintInfo("DUMP", fmt.Sprintf("Dumped type proof in %s\n", f.Name()))
// 	return err
// }

// /* Creates file if not exists, dump informations in it, and calls recursively on each child */
// func (root *ProofTree) dump() (string, error) {
// 	varsString := []string{}
// 	var consequence string = ""
// 	var ts string
// 	if root.typeScheme != nil {
// 		ts = root.typeScheme.ToString()
// 	}

// 	for _, var_ := range root.sequent.localContext.vars {
// 		varsString = append(varsString, var_.ToString())
// 	}
// 	for _, var_ := range root.sequent.localContext.typeVars {
// 		varsString = append(varsString, fmt.Sprintf("%s: Type", var_.ToString()))
// 	}

// 	switch whatIsSet(root.sequent.consequence) {
// 	case formIsSet:
// 		consequence = root.sequent.consequence.f.ToString()
// 		if root.typeScheme == nil {
// 			ts = root.sequent.consequence.f.GetType().ToString()
// 		}
// 	case termIsSet:
// 		consequence = root.sequent.consequence.t.ToString()
// 		if root.typeScheme == nil {
// 			if root.sequent.consequence.t.(AST.TypedTerm).GetTypeHint() == nil {
// 				ts = root.sequent.consequence.t.(AST.TypedTerm).GetTypeApp().ToString()
// 			} else {
// 				ts = root.sequent.consequence.t.(AST.TypedTerm).GetTypeHint().ToString()
// 			}
// 		}
// 	case typeIsSet:
// 		consequence = root.sequent.consequence.a.ToString()
// 		if root.typeScheme == nil {
// 			ts = "Type"
// 		}
// 	}

// 	childrenProofs := []string{}

// 	for _, child := range root.children {
// 		bytes, err := child.dump()
// 		if err != nil {
// 			return "", err
// 		}
// 		childrenProofs = append(childrenProofs, bytes)
// 	}

// 	bytes, err := json.Marshal(&struct {
// 		LocalContext string   `json:"localContext"`
// 		Consequence  string   `json:"consequence"`
// 		TypeScheme   string   `json:"typeScheme"`
// 		Rule         string   `json:"rule"`
// 		Children     []string `json:"children"`
// 	}{
// 		LocalContext: strings.Join(varsString, ", "),
// 		Consequence:  consequence,
// 		TypeScheme:   ts,
// 		Rule:         root.appliedRule,
// 		Children:     childrenProofs,
// 	})

// 	return strings.ReplaceAll(strings.ReplaceAll(strings.ReplaceAll(string(bytes), "\\", ""), "\"{", "{"), "}\"", "}"), err
// }

// /* Utils */

// /* Checks if file exists at given path */
// func fileExists(path string) bool {
// 	_, err := os.Stat(path)
// 	return !errors.Is(err, os.ErrNotExist)
// }

// /* Create a formated file name */
// func getFileName(folder string, i int) string {
// 	return fmt.Sprintf("%sproof_%d.json", folder, i)
// }
