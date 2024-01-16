package lambdapi

import (
	"strings"

	"github.com/GoelandProver/Goeland/global"
	"github.com/GoelandProver/Goeland/plugins/gs3"
	btps "github.com/GoelandProver/Goeland/types/basic-types"
	proof "github.com/GoelandProver/Goeland/visualization_proof"
)

var contextEnabled bool = false

var lambdaPiMapConnectors = map[btps.FormulaType]string{
	btps.AndConn:        "∧",
	btps.OrConn:         "∨",
	btps.ImpConn:        "⇒",
	btps.EquConn:        "⇔",
	btps.NotConn:        "¬",
	btps.TopType:        "⊤",
	btps.BotType:        "⊥",
	btps.AllQuant:       "∀α",
	btps.ExQuant:        "∃α",
	btps.AllTypeQuant:   "∀",
	btps.QuantVarOpen:   "(",
	btps.QuantVarClose:  ")",
	btps.QuantVarSep:    " ",
	btps.PredEmpty:      "",
	btps.PredTypeVarSep: ") (",
	btps.TypeVarType:    "Type",
}

// ----------------------------------------------------------------------------
// Plugin initialisation and main function to call.

// Section: init
// Functions: MakeCoqOutput
// Main functions of the coq module.
// TODO:
//	* Write the context for TFF problems

func MakeLambdapiOutput(prf []proof.ProofStruct, meta btps.MetaList) string {
	if len(prf) == 0 {
		global.PrintError("LambdaPi", "Nothing to output")
		return ""
	}

	// Transform tableaux's proof in GS3 proof
	return MakeLambdaPiProof(gs3.MakeGS3Proof(prf), meta)
}

var MakeLambdaPiProof = func(proof *gs3.GS3Sequent, meta btps.MetaList) string {
	contextString := makeContextIfNeeded(proof.GetTargetForm(), meta)
	proofString := makeLambdaPiProofFromGS3(proof)
	return contextString + "\n" + proofString
}

func mapDefault(str string) string {
	result := strings.ReplaceAll(strings.ReplaceAll(strings.ReplaceAll(strings.ReplaceAll(str, "$i", "ι"), "$o", "Prop"), "->", "→"), "*", "→")
	return result
}

// Context flag utility function
func GetContextEnabled() bool {
	return contextEnabled
}

// Context flag utility function
func SetContextEnabled(ce bool) {
	contextEnabled = true
}
