package ari

import (
	"fmt"
	"math"
	"math/big"
)

/**
 * This function applies the main logic of the branch and bound algorithm
 * It takes the following parameters:
 *	 - `gotSol`, a boolean return by the simplex saying if the simplex find a solution
 *   - `channel`, a channel that will permit to receive information from goroutine
 *   - `system`, a struct containing all information about the system
 * 	 - `tab_rat_bool`, an array of bool that say if we want a rationnal or a integer for the variable
 * It returns a boolean which says if it exist a solution and the `alpha_tab` which represent the solution of the system
 **/
func Branch_bound(gotSol bool, channel chan branch_and_bound, system info_system, tab_rat_bool []bool) (map[string]*big.Rat, bool) {

	//fmt.Println("\033[0m ")
	solutionEntiere, index := estSol(system.alpha_tab, system.tab_nom_var, tab_rat_bool)

	//Cas d'arret si solution est fait seulement d'entier
	if !gotSol {
		return system.alpha_tab, false
	} else if solutionEntiere {
		return system.alpha_tab, true
	}

	tab_coef := deepCopyMatrice(system.tab_coef)
	tab_cont := deepCopyTableau(system.tab_cont)
	tab_nom_var := system.tab_nom_var
	pos_var_tab := system.pos_var_tab
	bland := system.bland
	alpha_tab := copy_alpha_tab(tab_coef, tab_nom_var, system.alpha_tab)
	incremental_coef := deepCopyTableau(system.incremental_coef)

	system_copy := info_system{tab_coef: tab_coef, tab_cont: tab_cont, tab_nom_var: tab_nom_var,
		pos_var_tab: pos_var_tab, bland: bland, alpha_tab: alpha_tab,
		incremental_coef: incremental_coef}

	go go_branch_and_bound(false, channel, index, system, tab_rat_bool)
	go go_branch_and_bound(true, channel, index, system_copy, tab_rat_bool)

	str_bandb := <-channel
	if !str_bandb.solBoolStr {
		str_bandb = <-channel
		if str_bandb.solBoolStr {
			close(channel)
		}
	} else {
		select {
		case <-channel:

		default:
			close(channel)
		}
	}
	return str_bandb.solStr, str_bandb.solBoolStr
}

func go_branch_and_bound(inf_sup bool, channel chan branch_and_bound, index int, system info_system, tab_rat_bool []bool) {
	select {
	case <-channel:
		return
	default:
		var tab_coef_bis [][]*big.Rat
		var tab_cont_bis []*big.Rat
		channelBis := make(chan branch_and_bound)
		//Copie de tableau et du tableau de contrainte
		tab_cont_bis = deepCopyTableau(system.tab_cont)
		tab_coef_bis = deepCopyMatrice(system.tab_coef)
		//Ajout de la nouvelle contrainte dans les copies de tableau
		var tabInter []*big.Rat
		if inf_sup {
			partiEntiere, _ := system.alpha_tab[system.tab_nom_var[index]].Float64()
			tab_cont_bis = append(tab_cont_bis, new(big.Rat).SetFloat64(math.Ceil(partiEntiere)))
			for i := 0; i < len(system.tab_nom_var); i++ {
				if i == index {
					tabInter = append(tabInter, big.NewRat(1, 1))
				} else {
					tabInter = append(tabInter, new(big.Rat))
				}
			}
		} else {
			partiEntiere, _ := system.alpha_tab[system.tab_nom_var[index]].Float64()
			tab_cont_bis = append(tab_cont_bis, new(big.Rat).SetFloat64(-math.Floor(partiEntiere)))
			for i := 0; i < len(system.tab_nom_var); i++ {
				if i == index {
					tabInter = append(tabInter, big.NewRat(-1, 1))
				} else {
					tabInter = append(tabInter, new(big.Rat))
				}
			}
		}
		tab_coef_bis = append(tab_coef_bis, tabInter)

		system.tab_coef = tab_coef_bis
		system.tab_cont = tab_cont_bis

		//incrémental
		tab_gom := VerifGomory(system.tab_nom_var, system.tab_cont, system.pos_var_tab, system.alpha_tab)
		if len(tab_gom) != 0 {
			fmt.Println("ici regarde", tab_gom[0].variable, tab_gom[0].borne)
		}
		system = incremental(system, tab_gom)
		//time.Sleep(time.Second*10)
		//fin incrémental

		system, gotSol := Simplexe(system)

		sol, solBool := Branch_bound(gotSol, channelBis, system, tab_rat_bool)
		str_bandb := branch_and_bound{solBoolStr: solBool, solStr: sol}
		select {
		case channel <- str_bandb:
		case <-channel:
		}
	}
}

/**
 * This function check if the solution is natural
 * It takes the following parameters:
 * 	 - `solution`, a map associating the name of the variable and his alpha value
 *   - `tab_nom_var`, an array of the system's starting variable
 * 	 - `tab_rat_bool`, an array of bool that say if we want a rationnal or a integer for the variable
 * It returns a boolean which inform of the solution is natural and the index of the decimal number in `solution` if there is one
 **/
func estSol(solution map[string]*big.Rat, tab_nom_var []string, tab_rat_bool []bool) (bool, int) {
	fmt.Println("tab_nom_var", tab_nom_var)
	for i := 0; i < len(tab_nom_var); i++ {
		if tab_rat_bool[i] && !solution[tab_nom_var[i]].IsInt() {
			return false, i
		}
	}
	return true, -1
}

/**
 * This function make a deep copy of the matrice give in parameter
 * It takes the following parameters:
 * 	 - `tab`, matrice that will be copied
 * It returns the copied matrice
 **/
func deepCopyMatrice(tab [][]*big.Rat) [][]*big.Rat {
	var tab_copy = make([][]*big.Rat, len(tab))
	for index_tab_ligne := 0; index_tab_ligne < len(tab); index_tab_ligne++ {
		tab_copy[index_tab_ligne] = append(tab_copy[index_tab_ligne], deepCopyTableau(tab[index_tab_ligne])...)
	}
	return tab_copy
}

/**
 * This function make a deep copy of the array give in parameter
 * It takes the following parameters:
 * 	 - `tab`, array that will be copied
 * It returns the copied array
 **/
func deepCopyTableau(tab []*big.Rat) []*big.Rat {
	var tab_copy = make([]*big.Rat, len(tab))
	for index_tab_colonne := 0; index_tab_colonne < len(tab); index_tab_colonne++ {
		tab_copy[index_tab_colonne] = new(big.Rat)
		tab_copy[index_tab_colonne].Set(tab[index_tab_colonne])
	}
	return tab_copy
}

/**
 * This function update the new coefficient line, the alpha of the new variable, the variable position and the bland order
 * It takes the following parameters:
 *   - `system`, a struct containing all information about the system
 * It returns the update system
 **/
func incremental(system info_system, tab_gom []Gomory) info_system {
	for iconstraint := 0; iconstraint < len(tab_gom)+1; iconstraint++ {

		//ajout contrainte gomory
		if iconstraint > 0 {
			var ligne_coef_gom = make([]*big.Rat, 0)
			system.tab_cont = append(system.tab_cont, tab_gom[iconstraint-1].borne)
			for ivariable := 0; ivariable < len(system.tab_nom_var); ivariable++ {
				if system.tab_nom_var[ivariable] == tab_gom[iconstraint-1].variable {
					ligne_coef_gom = append(ligne_coef_gom, big.NewRat(1, 1))
				} else {
					ligne_coef_gom = append(ligne_coef_gom, new(big.Rat))
				}

			}
			system.tab_coef = append(system.tab_coef, ligne_coef_gom)
		}

		nbParam := len(system.tab_coef[0]) + 1
		ligne_modif := len(system.tab_coef) - 1
		//Represente chaque itération de simplex
		for i := 0; i < len(system.incremental_coef)/(len(system.tab_coef[0])+1); i++ {
			pivot := int(system.incremental_coef[i*nbParam].Num().Int64())
			coef_pivot := new(big.Rat).Set(system.tab_coef[ligne_modif][pivot])
			//Calcul la nouvelle ligne et l'alpha sur une iteration de simplex
			for j := 0; j < len(system.tab_coef[0]); j++ {
				//Calcul ligne matrice
				if j == pivot {
					system.tab_coef[ligne_modif][j].Mul(system.tab_coef[ligne_modif][j], system.incremental_coef[(i*nbParam)+j+1])
				} else {
					system.tab_coef[ligne_modif][j].Add(system.tab_coef[ligne_modif][j], new(big.Rat).Mul(system.incremental_coef[(i*nbParam)+j+1], coef_pivot))
				}
			}
		}

		//Calcul alpha
		var cal_alpha = new(big.Rat)
		for i := 0; i < len(system.tab_coef[0]); i++ {
			cal_alpha.Add(cal_alpha, new(big.Rat).Mul(system.tab_coef[ligne_modif][i], system.alpha_tab[system.pos_var_tab[i+len(system.tab_coef)-1]]))
		}

		/*fmt.Println("Alpha = ", cal_alpha)
		fmt.Println("TabCoef = ", system.tab_coef[ligne_modif])*/

		//Maj des tableaux
		var new_pos_var_tab []string
		for i := 0; i < len(system.tab_cont)-1; i++ {
			new_pos_var_tab = append(new_pos_var_tab, system.pos_var_tab[i])
		}
		new_pos_var_tab = append(new_pos_var_tab, fmt.Sprint("e", len(system.tab_coef)-1))
		for i := len(system.tab_cont) - 1; i < len(system.pos_var_tab); i++ {
			new_pos_var_tab = append(new_pos_var_tab, system.pos_var_tab[i])
		}
		system.pos_var_tab = new_pos_var_tab
		system.alpha_tab[fmt.Sprint("e", len(system.tab_coef)-1)] = cal_alpha
		system.bland = append(system.bland, fmt.Sprint("e", len(system.tab_coef)-1))

	}
	//ici fin gomory
	return system
}

/**
 * This function make a deep copy of the map give in parameter
 * It takes the following parameters:
 * 	 - `alpha_tab`, the map that will be copied
 *	 - `tab_coef`, the matrice with the normalized inequations
 * 	 - `tab_nom_var`, an array of the system's starting variable
 * It returns the copied array
 **/
func copy_alpha_tab(tab_coef [][]*big.Rat, tab_nom_var []string, alpha_tab map[string]*big.Rat) map[string]*big.Rat {
	alpha_tab_bis := make(map[string]*big.Rat)
	//Creation variable d'ecart
	for i := 0; i < len(tab_coef); i++ {
		alpha_tab_bis[fmt.Sprint("e", i)] = new(big.Rat).Set(alpha_tab[fmt.Sprint("e", i)])
	}
	//Creation variable initial
	if len(tab_nom_var) == 0 {
		for i := 0; i < len(tab_coef[0]); i++ {
			alpha_tab_bis[fmt.Sprint("x", i)] = new(big.Rat).Set(alpha_tab[fmt.Sprint("x", i)])
		}
	} else {
		for i := 0; i < len(tab_coef[0]); i++ {
			alpha_tab_bis[tab_nom_var[i]] = new(big.Rat).Set(alpha_tab[tab_nom_var[i]])
		}
	}
	return alpha_tab_bis
}
