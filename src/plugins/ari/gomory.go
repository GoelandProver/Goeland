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
package ari

import (
	"math"
	"math/big"
	"strconv"
)

// déclaration de la structure Gomory
type Gomory struct {
	variable string
	borne    *big.Rat
}

//Verifier si on a les conditions pour faire une Gomory cut
//NombreVariables = len(TabVar)
func VerifGomory(tabVar []string, tabcont []*big.Rat, posVarTableau []string, alphaTab map[string]*big.Rat) []Gomory {

	var tab_gomory = make([]Gomory, 0)
	var GomoryStruct Gomory

	//Test tous les variables hors base valent exactement leur borne
	for i := len(posVarTableau) - 1; i >= len(posVarTableau)-1-len(tabVar)-1; i-- {
		if posVarTableau[i][0] != 'e' {
			return tab_gomory
		} else {
			j, _ := strconv.Atoi(posVarTableau[i][1:])
			if alphaTab[posVarTableau[i]].Cmp(tabcont[j]) > 0 {
				return tab_gomory
			}
		}
	}

	//toutes les variables initiales dont l'affectation est une fraction va provoquer une gomory cut
	var i = 0
	for i < len(tabVar) {
		if !alphaTab[tabVar[i]].IsInt() {
			GomoryStruct.variable = tabVar[i]
			var contrainte float64
			contrainte, _ = alphaTab[tabVar[i]].Float64()
			borne := math.Floor(contrainte) + 1
			GomoryStruct.borne = new(big.Rat).SetFloat64(borne)
			tab_gomory = append(tab_gomory, GomoryStruct)
		}
		i++
	}

	return tab_gomory
}
