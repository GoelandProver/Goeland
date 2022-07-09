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
	"strings"
	"sync"

	"github.com/GoelandProver/Goeland/global"
	basictypes "github.com/GoelandProver/Goeland/types/basic-types"
)

var path_proof = global.GetExecPath() + "../../visualization/json/proof_output.json"
var file_proof *os.File
var mutex_file_proof sync.Mutex

// Graph struct
type ProofStruct struct {
	Formula         basictypes.Form
	Node_id         int
	Rule            string
	Rule_name       string
	Result_formulas []basictypes.FormList
	Children        [][]ProofStruct
}

type JsonProofStruct struct {
	Formula         string              `json:"Formula"`
	Node_id         int                 `json:"Formula_id"`
	Rule            string              `json:"Rule"`
	Rule_name       string              `json:"Rule_name"`
	Result_formulas [][]IntStringPair   `json:"Generated_formulas"`
	Children        [][]JsonProofStruct `json:"Children"`
}

type IntStringPair struct {
	I int    `json:"Id"`
	S string `json:"Formulas"`
}

func FormListListToString(fll []basictypes.FormList) string {
	strArr := []string{}

	for _, element := range fll {
		strArr = append(strArr, element.ToString())
	}

	return strings.Join(strArr, " ")
}

func (p ProofStruct) ToString() string {
	res := p.GetFormula().ToString() + " - " + p.GetRule() + " - " + FormListListToString(p.GetResultFormulas())
	if len(p.GetChildren()) > 0 {
		res += " - " + ProofChildrenToString(p.GetChildren())
	}
	return res
}
func (p ProofStruct) Copy() ProofStruct {
	return ProofStruct{p.GetFormula(), p.GetNodeId(), p.GetRule(), p.GetRuleName(), p.GetResultFormulas(), copyProofStructChildren(p.Children)}
}

func ProofStructListToString(l []ProofStruct) string {
	var s_res string
	for i, v := range l {
		s_res += "| " + v.ToString() + " | "
		if i < len(l)-1 {
			s_res += ("\n")
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
func (p ProofStruct) GetFormula() basictypes.Form {
	return p.Formula
}
func (p ProofStruct) GetNodeId() int {
	return p.Node_id
}
func (p ProofStruct) GetRule() string {
	return p.Rule
}
func (p ProofStruct) GetRuleName() string {
	return p.Rule_name
}
func (p ProofStruct) GetResultFormulas() []basictypes.FormList {
	return p.Result_formulas
}
func (p ProofStruct) GetChildren() [][]ProofStruct {
	return p.Children
}

/* Setters */
func SetFileProof(file *os.File) {
	file_proof = file
}

func (p *ProofStruct) SetChildrenProof(c [][]ProofStruct) {
	p.Children = copyProofStructChildren(c)
}

func (p *ProofStruct) SetFormulaProof(f basictypes.Form) {
	p.Formula = f
}

func (p *ProofStruct) SetNodeIdProof(i int) {
	p.Node_id = i
}

func (p *ProofStruct) SetRuleProof(r string) {
	p.Rule = r
}

func (p *ProofStruct) SetRuleNameProof(r string) {
	p.Rule_name = r
}

func (p *ProofStruct) SetResultFormulasProof(fl []basictypes.FormList) {
	p.Result_formulas = fl
}

/* makers */

func MakeEmptyProofStruct() ProofStruct {
	return ProofStruct{basictypes.MakerBot(), -1, "", "", []basictypes.FormList{}, [][]ProofStruct{}}
}

func MakeProofStruct(formula basictypes.Form, id int, rule, rule_name string, Result_formulas []basictypes.FormList, children [][]ProofStruct) ProofStruct {
	return ProofStruct{formula, id, rule, rule_name, Result_formulas, children}
}

/* tostring */

func (j JsonProofStruct) ToString() string {
	res := j.Formula + " - " + j.Rule
	return res
}

func JsonProofStructListToString(jpsl []JsonProofStruct) string {
	res := ""
	for _, j := range jpsl {
		res += j.ToString() + "\n"
	}
	return res
}

/* Functions */
func FormListToIntStringPairList(fl []basictypes.FormList) [][]IntStringPair {
	res := [][]IntStringPair{}
	for _, f := range fl {
		tmp_fl := []IntStringPair{}
		for _, f2 := range f {
			tmp_fl = append(tmp_fl, IntStringPair{f2.GetIndex(), f2.ToString()})
		}
		res = append(res, tmp_fl)
	}
	return res
}

func ProofStructListToJsonProofStructList(ps []ProofStruct) []JsonProofStruct {
	res := []JsonProofStruct{}
	for _, p := range ps {
		new_json_element := JsonProofStruct{p.GetFormula().ToString(), p.Node_id, p.Rule, p.Rule_name, FormListToIntStringPairList(p.Result_formulas), proofStructChildrenToJsonProofStructChildren(p.Children)}
		res = append(res, new_json_element)
	}
	return res
}

func proofStructChildrenToJsonProofStructChildren(c [][]ProofStruct) [][]JsonProofStruct {
	res := make([][]JsonProofStruct, len(c))
	for i, c2 := range c {
		res[i] = ProofStructListToJsonProofStructList(c2)
	}
	return res
}

func ResetProofFile() {
	if global.GetProof() {
		f, _ := os.Create(GetGraphFileNameProof())
		SetFileProof(f)
	}
}

func WriteGraphProof(proof_content []ProofStruct) {
	json_content := ProofStructListToJsonProofStructList(proof_content)
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
		res[i] = make([]ProofStruct, len(c[i]))
		for j := range c[i] {
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
