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
	ProofOutput func(finalProof []proof.ProofStruct, metaList basictypes.MetaList) string
	Name        string
	Extension   string
}

var outputProofStructs []*OutputProofStruct

func AddPrintProofAlgorithm(ps *OutputProofStruct) {
	outputProofStructs = append(outputProofStructs, ps)
}

func printProof(final_proof []proof.ProofStruct, metaList basictypes.MetaList) {
	if global.GetProof() {
		global.PrintInfo("MAIN", fmt.Sprintf("%s SZS output start Proof for %v", "%", global.GetProblemName()))

		for _, ps := range outputProofStructs {
			ps.printProofWithProofStruct(final_proof, metaList)
		}

		global.PrintInfo("MAIN", fmt.Sprintf("%s SZS output end Proof for %v", "%", global.GetProblemName()))
	}
}

func (ps *OutputProofStruct) printProofWithProofStruct(finalProof []proof.ProofStruct, metaList basictypes.MetaList) {
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

	println(output)
}
