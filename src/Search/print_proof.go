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
package Search

import (
	"fmt"
	"log"
	"os"

	"github.com/GoelandProver/Goeland/AST"
	"github.com/GoelandProver/Goeland/Glob"
	"github.com/GoelandProver/Goeland/Lib"
)

var BasicOutputProofStruct = &OutputProofStruct{ProofOutput: ProofStructListToText, Name: "Basic", Extension: ".proof"}

type OutputProofStruct struct {
	ProofOutput func(finalProof []ProofStruct, metaList Lib.List[AST.Meta]) string
	Name        string
	Extension   string
}

var outputProofStructs []*OutputProofStruct

func AddPrintProofAlgorithm(ps *OutputProofStruct) {
	outputProofStructs = append(outputProofStructs, ps)
}

func PrintProof(final_proof []ProofStruct, metaList Lib.Set[AST.Meta]) {
	if !Glob.GetProof() {
		return
	}

	fmt.Printf("%v SZS output start Proof for %v\n", "%", Glob.GetProblemName())

	for _, ps := range outputProofStructs {
		ps.printProofWithProofStruct(final_proof, metaList)
	}

	fmt.Printf("%v SZS output end Proof for %v\n", "%", Glob.GetProblemName())
}

func (ps *OutputProofStruct) printProofWithProofStruct(finalProof []ProofStruct, metaList Lib.Set[AST.Meta]) {
	output := ps.ProofOutput(finalProof, metaList.Elements())

	if Glob.GetWriteLogs() {
		f, err := os.OpenFile(Glob.ProofFile+ps.Extension, os.O_RDWR|os.O_CREATE|os.O_TRUNC, 0666)
		if err != nil {
			log.Fatalf("Error opening "+Glob.ProofFile+" file: %v", err)
		}
		defer f.Close()

		Glob.PrintInfo("WLOGS", "Writing "+ps.Name+" proof to file "+Glob.ProofFile+ps.Extension)
		f.WriteString(output)
	}

	fmt.Printf("\n" + output)
}
