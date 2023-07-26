package lambdapi

import (
	"strings"

	"github.com/GoelandProver/Goeland/global"
	"github.com/GoelandProver/Goeland/plugins/gs3"
	btps "github.com/GoelandProver/Goeland/types/basic-types"
	proof "github.com/GoelandProver/Goeland/visualization_proof"
)

var contextEnabled bool = false

func MakeLPOutput(proof []proof.ProofStruct, meta btps.MetaList) string {
	if len(proof) == 0 {
		global.PrintError("LambdaPi", "Nothing to output")
		return ""
	}

	return makeLPProof(gs3.MakeGS3Proof(proof), meta)
}

func makeLPProof(proof *gs3.GS3Sequent, meta btps.MetaList) string {
	contextString := makeContextIfNeeded(proof.GetTargetForm(), meta)
	// global.PrintInfo("GS3", proof.ToString())
	proofString := makeLPProofFromGS3(*proof)
	return contextString + "\n" + proofString
}

func mapDefault(str string) string {
	return strings.ReplaceAll(strings.ReplaceAll(strings.ReplaceAll(str, "$i", "τ (ι)"), "$o", "Prop"), "->", "→")
}

func lPMapconnectors() map[btps.FormulaType]string {
	return map[btps.FormulaType]string{
		btps.AndConn:        "∧",
		btps.OrConn:         "∨",
		btps.ImpConn:        "⇒",
		btps.EquConn:        "⇔",
		btps.NotConn:        "¬",
		btps.TopType:        "⊤",
		btps.BotType:        "⊥",
		btps.AllQuant:       "∀",
		btps.ExQuant:        "∃",
		btps.AllTypeQuant:   "∀",
		btps.QuantVarOpen:   "(",
		btps.QuantVarClose:  ")",
		btps.QuantVarSep:    " ",
		btps.PredEmpty:      "",
		btps.PredTypeVarSep: " ",
		btps.TypeVarType:    "Type",
	}
}

// Context flag utility function
func GetContextEnabled() bool {
	return contextEnabled
}

// Context flag utility function
func SetContextEnabled(ce bool) {
	contextEnabled = true
}
