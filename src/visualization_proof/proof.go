/**
* Copyright 2022 by the authors (see AUTHORs).
*
* Goéland is an automated theorem prover for first order logic.
*
* This software is governed by the CeCILL license under French law and
* abiding by the rules of distribution of free software.  You can  use, 
* modify and/ or redistribute the software under the terms of the CeCILL-B
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
/********************/
/* visualization.go */
/********************/
/**
* This file contains useful functions for generate a tree proof
**/

package proof

import (
	"encoding/json"
	"os"
	"sync"

	"github.com/delahayd/gotab/global"
)

var path_proof = global.GetExecPath() + "../../visualization/json/proof_output.json"
var file_proof *os.File
var mutex_file_proof sync.Mutex

// Graph struct
type ProofStruct struct {
	Formula  string          `json:"Formula"`
	Rule     string          `json:"Rule"`
	Children [][]ProofStruct `json:"Children"`
}

func (p ProofStruct) ToString() string {
	return p.GetFormula() + " - " + p.GetRule() + " - " + ProofChildrenToString(p.GetChildren())
}
func (p ProofStruct) Copy() ProofStruct {
	return ProofStruct{p.Formula, p.Rule, copyProofStructChildren(p.Children)}
}

func ProofStructListToString(l []ProofStruct) string {
	var s_res string
	for i, v := range l {
		s_res += v.ToString()
		if i < len(l)-1 {
			s_res += (", ")
		}
	}
	return s_res
}
func ProofChildrenToString(l [][]ProofStruct) string {
	var s_res string
	for i, v := range l {
		s_res += "[" + ProofStructListToString(v) + "]"
		if i < len(l)-1 {
			s_res += (" - ")
		}
	}
	return s_res
}

/* Getters */
func GetGraphFileNameProof() string {
	return path_proof
}
func (p ProofStruct) GetFormula() string {
	return p.Formula
}
func (p ProofStruct) GetRule() string {
	return p.Rule
}
func (p ProofStruct) GetChildren() [][]ProofStruct {
	return p.Children
}

/* Setters */
func SetFileProof(file *os.File) {
	file_proof = file
}

func (p *ProofStruct) SetChildrenProof(c [][]ProofStruct) {
	p.Children = c
}

func (p *ProofStruct) SetFormulaProof(f string) {
	p.Formula = f
}

func (p *ProofStruct) SetRuleProof(r string) {
	p.Rule = r
}

/* makers */

func MakeEmptyProofStruct() ProofStruct {
	return ProofStruct{"", "", [][]ProofStruct{}}
}

func MakeProofStruct(formula string, rule string, children [][]ProofStruct) ProofStruct {
	return ProofStruct{formula, rule, children}
}

/* Functions */
func ResetProofFile() {
	if global.GetProof() {
		f, _ := os.Create(GetGraphFileNameProof())
		SetFileProof(f)
	}
}

func WriteGraphProof(json_content []ProofStruct) {
	if global.GetProof() {
		mutex_file_proof.Lock()
		os_stat, _ := os.Stat(GetGraphFileNameProof())
		if os_stat.Size() != 0 {
			file_proof.WriteString(",\n")
		} else {
			file_proof.WriteString("\n")
		}
		json_string, _ := json.MarshalIndent(json_content, "", " ")
		file_proof.Write(json_string)
		mutex_file_proof.Unlock()
	}
}

/* Copy children */
func copyProofStructChildren(c [][]ProofStruct) [][]ProofStruct {
	res := make([][]ProofStruct, len(c))
	for i := range c {
		for j := range c[i] {
			res[i] = make([]ProofStruct, len(c[i]))
			res[i][j] = c[i][j].Copy()
		}
	}
	return res
}

/* Copy a list of proofstruct */
func CopyProofStructList(ps []ProofStruct) []ProofStruct {
	res := make([]ProofStruct, len(ps))
	for i := range ps {
		res[i] = ps[i].Copy()
	}
	return res
}
