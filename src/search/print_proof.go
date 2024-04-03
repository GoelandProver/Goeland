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
package search

import (
	"fmt"
	"log"
	"os"

	"github.com/GoelandProver/Goeland/global"
	basictypes "github.com/GoelandProver/Goeland/types/basic-types"
	proof "github.com/GoelandProver/Goeland/visualization_proof"
)

var BasicOutputProofStruct = &OutputProofStruct{ProofOutput: proof.ProofStructListToText, Name: "Basic", Extension: ".proof"}

type OutputProofStruct struct {
	ProofOutput func(finalProof []proof.ProofStruct, metaList *basictypes.MetaList) string
	Name        string
	Extension   string
}

var outputProofStructs []*OutputProofStruct

func AddPrintProofAlgorithm(ps *OutputProofStruct) {
	outputProofStructs = append(outputProofStructs, ps)
}

func printProof(final_proof []proof.ProofStruct, metaList *basictypes.MetaList) {
	if global.GetProof() {
		global.PrintInfo("MAIN", fmt.Sprintf("%s SZS output start Proof for %v", "%", global.GetProblemName()))

		for _, ps := range outputProofStructs {
			ps.printProofWithProofStruct(final_proof, metaList)
		}

		global.PrintInfo("MAIN", fmt.Sprintf("%s SZS output end Proof for %v", "%", global.GetProblemName()))
	}
}

func (ps *OutputProofStruct) printProofWithProofStruct(finalProof []proof.ProofStruct, metaList *basictypes.MetaList) {
	output := ps.ProofOutput(finalProof, metaList)

	if global.GetWriteLogs() {
		f, err := os.OpenFile(global.ProofFile+ps.Extension, os.O_RDWR|os.O_CREATE|os.O_TRUNC, 0666)
		if err != nil {
			log.Fatalf("Error opening "+global.ProofFile+" file: %v", err)
		}
		defer f.Close()

		global.PrintInfo("WLOGS", "Writing "+ps.Name+" proof to file "+global.ProofFile+ps.Extension)
		f.WriteString(output)
	}

	global.PrintInfo("PROOF", "\n"+output)
}
