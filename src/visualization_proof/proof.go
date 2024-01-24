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

/**
* This file contains useful functions for generate a tree proof
**/

package proof

import (
	"encoding/json"
	"os"
	"strconv"
	"strings"
	"sync"

	"github.com/GoelandProver/Goeland/global"
	basictypes "github.com/GoelandProver/Goeland/types/basic-types"
)

var path_proof = global.GetExecPath() + "proof_output.json"
var file_proof *os.File
var mutex_file_proof sync.Mutex

// Graph struct
type ProofStruct struct {
	Formula         basictypes.FormAndTerms
	Id_dmt          int
	Node_id         int
	Rule            string
	Rule_name       string
	Result_formulas []IntFormAndTermsList
	Children        [][]ProofStruct
}

type JsonProofStruct struct {
	Formula         string              `json:"Formula"`
	Id_dmt          int                 `json:"id_dmt"`
	Node_id         int                 `json:"Node_id"`
	Rule            string              `json:"Rule"`
	Rule_name       string              `json:"Rule_name"`
	Result_formulas []IntIntStringPair  `json:"Generated_formulas"`
	Children        [][]JsonProofStruct `json:"Children"`
}

type IntIntStringPair struct {
	Node_id int             `json:"Node_Id"`
	Isp     []IntStringPair `json:"Formulas"`
}

type IntStringPair struct {
	I int    `json:"Id"`
	S string `json:"Formula"`
}

type IntFormAndTermsList struct {
	i  int
	fl basictypes.FormAndTermsList
}

func (ifl *IntFormAndTermsList) setInt(i int) {
	ifl.i = i
}
func (ifl *IntFormAndTermsList) setFl(fl basictypes.FormAndTermsList) {
	ifl.fl = fl
}
func (ifl *IntFormAndTermsList) GetI() int {
	return ifl.i
}
func (ifl *IntFormAndTermsList) GetFL() basictypes.FormAndTermsList {
	return ifl.fl.Copy()
}

func (ifl *IntFormAndTermsList) ToString() string {
	return strconv.Itoa(ifl.i) + " - " + ifl.fl.ToString()
}

func (ifl *IntFormAndTermsList) Copy() IntFormAndTermsList {
	return MakeIntFormAndTermsList(ifl.i, ifl.fl.Copy())
}

func (ifl *IntFormAndTermsList) GetForms() basictypes.FormList {
	res := basictypes.MakeEmptyFormList()
	for _, ift := range (*ifl).GetFL() {
		res = append(res, ift.GetForm())
	}
	return res
}

func GetFormulasFromIntFormAndTermList(iftl []IntFormAndTermsList) basictypes.FormList {
	res := basictypes.MakeEmptyFormList()
	for _, v := range iftl {
		res = append(res, v.GetForms()...)
	}
	return res
}

func MakeIntFormAndTermsList(i int, fl basictypes.FormAndTermsList) IntFormAndTermsList {
	return IntFormAndTermsList{i, fl}
}

func IntFormAndTermsListListToString(fll []IntFormAndTermsList) string {
	strArr := []string{}

	for _, element := range fll {
		strArr = append(strArr, element.ToString())
	}

	return strings.Join(strArr, " ")
}

func (p ProofStruct) ToString() string {
	res := "(" + strconv.Itoa(p.GetNodeId()) + ")" + p.GetFormula().ToString() + " - " + p.GetRule() + " - " + IntFormAndTermsListListToString(p.GetResultFormulas())
	if len(p.GetChildren()) > 0 {
		res += " - " + ProofChildrenToString(p.GetChildren())
	}
	return res
}
func (p ProofStruct) Copy() ProofStruct {
	return ProofStruct{p.GetFormula(), p.GetIdDMT(), p.GetNodeId(), p.GetRule(), p.GetRuleName(), p.GetResultFormulas(), copyProofStructChildren(p.Children)}
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
			s_res += (" --- ")
		}
	}
	return s_res
}

/* Getters */
func GetGraphFileNameProof() string {
	return path_proof
}
func (p ProofStruct) GetFormula() basictypes.FormAndTerms {
	return p.Formula
}
func (p ProofStruct) GetIdDMT() int {
	return p.Id_dmt
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
func (p ProofStruct) GetResultFormulas() []IntFormAndTermsList {
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

func (p *ProofStruct) SetFormulaProof(f basictypes.FormAndTerms) {
	p.Formula = f
}

func (p *ProofStruct) SetIdDMT(i int) {
	p.Id_dmt = i
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

func (p *ProofStruct) SetResultFormulasProof(fl []IntFormAndTermsList) {
	p.Result_formulas = fl
}

/* makers */

func MakeEmptyProofStruct() ProofStruct {
	return ProofStruct{basictypes.MakeFormAndTerm(basictypes.MakerBot(), basictypes.MakeEmptyTermList()), -1, -1, "", "", []IntFormAndTermsList{}, [][]ProofStruct{}}
}

func MakeProofStruct(formula basictypes.FormAndTerms, formula_use, id int, rule, rule_name string, Result_formulas []IntFormAndTermsList, children [][]ProofStruct) ProofStruct {
	return ProofStruct{formula, formula_use, id, rule, rule_name, Result_formulas, children}
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
func IntFormAndTermsListToIntIntStringPairList(fl []IntFormAndTermsList) []IntIntStringPair {
	res := []IntIntStringPair{}
	for _, f := range fl {
		tmp_fl := IntIntStringPair{}
		tmp_fl.Node_id = f.i

		for _, f2 := range f.fl {
			tmp_fl.Isp = append(tmp_fl.Isp, IntStringPair{f2.GetForm().GetIndex(), f2.ToString()})
		}
		res = append(res, tmp_fl)
	}
	return res
}

func ProofStructListToJsonProofStructList(ps []ProofStruct) []JsonProofStruct {
	res := []JsonProofStruct{}
	for _, p := range ps {
		new_json_element := JsonProofStruct{p.GetFormula().ToString(), p.GetIdDMT(), p.Node_id, p.Rule, p.Rule_name, IntFormAndTermsListToIntIntStringPairList(p.Result_formulas), proofStructChildrenToJsonProofStructChildren(p.Children)}
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

func (j *JsonProofStruct) ToText() string {
	res := ""
	res += "[" + strconv.Itoa(j.Node_id) + "]"
	res += /*" (" + j.Rule + ") " +*/ " " + j.Rule_name + " : "
	res += j.Formula + "\n"
	for _, rf := range j.Result_formulas {
		res += "	-> " + "[" + strconv.Itoa(rf.Node_id) + "] "
		for i, rf2 := range rf.Isp {
			res += /* "(" + strconv.Itoa(rf2.I) + ") " + */ rf2.S
			if i < len(rf.Isp)-1 {
				res += ", "
			}
		}
		res += "\n"
	}

	res += "\n"

	for _, c := range j.Children {
		res += JsonProofStructListToText(c)
	}

	return res
}

func JsonProofStructListToText(jps []JsonProofStruct) string {
	res := ""
	for _, j2 := range jps {
		res += j2.ToText()
	}
	return res
}

func ProofStructListToText(ps []ProofStruct, metaList basictypes.MetaList) string {
	json_content := ProofStructListToJsonProofStructList(ps)
	return JsonProofStructListToText(json_content)
}

func RetrieveUninstantiatedMetaFromProof(p []ProofStruct) basictypes.MetaList {
	res := basictypes.MakeEmptyMetaList()
	for _, proof_element := range p {
		res = res.Merge(proof_element.GetFormula().GetForm().GetMetas())
		res_result_formulas := GetFormulasFromIntFormAndTermList(proof_element.GetResultFormulas())
		for _, v := range res_result_formulas {
			res = res.Merge(v.GetMetas())
		}
		for _, children := range proof_element.GetChildren() {
			res = res.Merge(RetrieveUninstantiatedMetaFromProof(children))
		}

	}
	return res
}
