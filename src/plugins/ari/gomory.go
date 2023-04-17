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
