package ari

import (
	"fmt"
	"math/big"
	"strconv"
)

/**
 * This function applies the main logic of the simplex algorithm (without objective function).
 * It takes the following parameters:
 *   - `system`, a struct containing all information about the system
 * It returns the system that contain an affectation that satisfies the constraints.
 * In case the system has no solutions, the boolean return value is set to false.
 **/
func Simplexe(system info_system) (info_system, bool) {

	fmt.Println("system.tab_nom_var", system.tab_nom_var)
	fmt.Println("tab_cont", system.tab_cont)
	fmt.Println("alpha_tab", system.alpha_tab)
	fmt.Println("tab_coef", system.tab_coef)
	fmt.Println("pos_var_tab", system.pos_var_tab)

	var pos_var_tab_bis = make([]string, len(system.pos_var_tab))
	for i := 0; i < len(system.pos_var_tab); i++ {
		pos_var_tab_bis[i] = system.pos_var_tab[i]
	}

	if len(system.tab_coef)+len(system.tab_coef[0]) != len(system.bland) {
		system.bland = append(system.bland, fmt.Sprint("e", len(system.tab_coef)-1))
		pos_var_tab_bis = append(pos_var_tab_bis, fmt.Sprint("e", len(system.tab_coef)-1))
		for cpt := 0; cpt < len(system.tab_coef[0]); cpt++ {
			tmp := pos_var_tab_bis[len(system.pos_var_tab)-cpt]
			pos_var_tab_bis[len(pos_var_tab_bis)-1-cpt] = pos_var_tab_bis[len(pos_var_tab_bis)-cpt-2]
			pos_var_tab_bis[len(pos_var_tab_bis)-cpt-2] = tmp
		}

	}
	fmt.Println("pos_var_tab_bis : ", pos_var_tab_bis)

	fmt.Println("\033[0m")
	//boucle sur le nombre maximum de pivotation que l'on peut avoir
	for true {
		//ligne_pivot est la ligne qui ne respecte pas sa contrainte
		ligne_pivot := checkCont(system.alpha_tab, system.tab_cont, pos_var_tab_bis)
		if ligne_pivot == -1 {
			fmt.Println(" \033[33m La solution est : ")
			fmt.Println("alpha_tab_bis ", system.alpha_tab, "\n")
			system.pos_var_tab = pos_var_tab_bis
			return system, true
		}
		//on cherche la colonne du pivot
		colonne_pivot := 0
		system, colonne_pivot = pivot(system, ligne_pivot, pos_var_tab_bis)
		if colonne_pivot == -1 {
			fmt.Println(" \033[33m")
			fmt.Println("Il n'existe pas de solution pour ces contraintes")
			return system, false
		} else {
			//on modifie le tableau des coefficients pour la ligne du pivot
			system = updateMatrice(system, colonne_pivot, ligne_pivot)
			fmt.Println("tab_coef = ", system.tab_coef)
			//calcul des nouveaux alpha
			system = updateAlpha(system, ligne_pivot, pos_var_tab_bis)
			fmt.Println("alpha_tab = ", system.alpha_tab, "\n")
		}
	}
	return system, false
}

/**
 * This function search the first constraint which isn't respected
 * It takes the following parameters:
 *   - `alpha_tab`, a map associating the name of the variable and his alpha value
 *   - `tab_cont`, an array containing the constraints, tab_cont[0] contains the constraint of the first line of the matrice
 * 	 - `pos_var_tab`, an array containing the variable positions in the matrice starting by the out-base variable
 * It return the `tab_coef`'s line where the constraints isn't respect
 * If all constraints are respected, return -1
 **/
func checkCont(alpha_tab map[string]*big.Rat, tab_cont []*big.Rat, pos_var_tab []string) int {
	for index, variable := range pos_var_tab[:len(tab_cont)] {
		if variable[0] == 'e' {
			num_var, _ := strconv.Atoi(string(variable[1]))
			if alpha_tab[variable].Cmp(tab_cont[num_var]) == -1 {
				return index
			}
		}
	}
	return -1
}

/**
 * This function search if a variable is out of the base
 * It takes the following parameters:
 *   - `tab_cont`, an array containing the constraints, tab_cont[0] contains the constraint of the first line of the matrice
 * 	 - `pos_var_tab`, an array containing the variable positions in the matrice starting by the out-base variable
 *	 - `nom_var`, a string which is the variable whose we check if it's out of the base
 * It return the true if the variable is out of the base else it return false
 **/
func checkContHorsBase(tab_cont []*big.Rat, pos_var_tab []string, nom_var string) bool {
	for _, variable := range pos_var_tab[:len(tab_cont)] {
		if variable == nom_var {
			return true
		}
	}
	return false
}

/**
 * This function search the pivot and update the alpha and position of the switched varaible
 * It takes the following parameters:
 *   - `system`, a struct containing all information about the system
 * 	 - `pivot_line`, an int which indacate the pivot line in `tab_coef`
 * 	 - `pos_var_tab`, an array containing the variable positions in the matrice starting by the out-base variable
 * It return the line of the pivot with the update system
 * If any pivot is found, return -1
 **/
func pivot(system info_system, pivot_line int, pos_var_tab []string) (info_system, int) {

	var var_pivot string
	var colonne_pivot int
	for _, vari := range system.bland {
		var coef_colonne = new(big.Rat)
		//Find a possible pivot with Bland order coef and position
		for j := len(system.tab_coef); j < len(system.tab_coef)+len(system.tab_coef[0]); j++ {
			if vari == pos_var_tab[j] {
				var_pivot = vari
				colonne_pivot = j
				coef_colonne = system.tab_coef[pivot_line][colonne_pivot-len(system.tab_coef)]
			}
		}

		var vide string
		var var_ecart string
		var num_var_ecart int
		if var_pivot != vide {
			if var_pivot[0] == 'e' {
				var_ecart = var_pivot
			} else {
				var_ecart = pos_var_tab[pivot_line]
			}
			num_var_ecart, _ = strconv.Atoi(var_ecart[1:])
		}

		//Check if the pivot is suitable
		if colonne_pivot < len(system.tab_coef)+len(system.tab_coef[0]) && (coef_colonne.Cmp(new(big.Rat)) != 0) && var_pivot != vide && (var_pivot[0] != 'e' || coef_colonne.Cmp(new(big.Rat)) == 1 || (coef_colonne.Cmp(new(big.Rat)) == -1 && checkContHorsBase(system.tab_cont, pos_var_tab, var_ecart) && system.alpha_tab[var_pivot].Cmp(system.tab_cont[num_var_ecart]) > 0)) {
			//	 time.Sleep(time.Second)
			var theta = new(big.Rat)
			fmt.Println("num_var_ecart = ", num_var_ecart, system.alpha_tab[pos_var_tab[pivot_line]], coef_colonne)
			theta.Mul(new(big.Rat).Add(system.tab_cont[num_var_ecart], new(big.Rat).Neg(system.alpha_tab[pos_var_tab[pivot_line]])),
				new(big.Rat).Inv(coef_colonne))
			fmt.Println("theta = ", theta)
			var alpha_colonne = new(big.Rat)
			alpha_colonne.Add(system.alpha_tab[var_pivot], theta)
			system.alpha_tab[var_pivot] = alpha_colonne
			var alpha_ligne = new(big.Rat)
			//on calcule alpha_ligne
			for index2, element2 := range system.tab_coef[pivot_line] {
				alpha_ligne.Add(alpha_ligne, new(big.Rat).Mul(element2, system.alpha_tab[pos_var_tab[index2+len(system.tab_coef)]]))
			}
			fmt.Println("alpha_colonne", alpha_colonne)
			fmt.Println("alpha_ligne", alpha_ligne)
			system.alpha_tab[pos_var_tab[pivot_line]].Set(alpha_ligne)
			system.alpha_tab[var_pivot].Set(alpha_colonne)
			fmt.Println("\033[0m variable \033[36m colonne:", var_pivot+"\033[0m", "variable \033[36m ligne:",
				pos_var_tab[pivot_line]+"\033[0m")
			pos_var_tab[pivot_line], pos_var_tab[colonne_pivot] = pos_var_tab[colonne_pivot], pos_var_tab[pivot_line]
			//fmt.Println("\033[36m theta\033[0m =\033[36m",theta,"\033[0m")
			return system, colonne_pivot - len(system.tab_coef)
		}
	}
	return system, -1
}

/**
 * This function update tab_coef.
 * It takes the following parameters:
 *   - `system`, a struct containing all information about the system
 *   - `colonne_pivot`, column of the matrice where the pivot occur
 *   - `ligne_pivot`, line of the matrice where the pivot occur
 * It return the update system
 **/
func updateMatrice(system info_system, colonne_pivot int, ligne_pivot int) info_system {

	//ajout numéro colonne pivot
	system.incremental_coef = append(system.incremental_coef, big.NewRat(int64(colonne_pivot), 1))
	//ajout pivot
	inv_pivot := new(big.Rat).Set(new(big.Rat).Inv(system.tab_coef[ligne_pivot][colonne_pivot]))
	for i := 0; i < len(system.tab_coef[0]); i++ {
		if i == colonne_pivot {
			system.incremental_coef = append(system.incremental_coef, inv_pivot)
			system.tab_coef[ligne_pivot][i] = new(big.Rat).Set(inv_pivot)
		} else {
			system.tab_coef[ligne_pivot][i].Mul(new(big.Rat).Neg(system.tab_coef[ligne_pivot][i]), inv_pivot)
			system.incremental_coef = append(system.incremental_coef, new(big.Rat).Set(system.tab_coef[ligne_pivot][i]))
		}

	}

	//on modifie le tableau des coefficients des autres lignes
	for i := 0; i < len(system.tab_coef); i++ {
		//conservation du coefficient non modifier ligne actuel/colonne pivot
		//necessaire pour les prochains calcul de coef de la ligne
		var tab_i_pivot = new(big.Rat)
		tab_i_pivot.Set(system.tab_coef[i][colonne_pivot])

		if i != ligne_pivot {
			for j := 0; j < len(system.tab_coef[0]); j++ {
				if j == colonne_pivot {
					system.tab_coef[i][colonne_pivot].Mul(system.tab_coef[i][colonne_pivot], system.tab_coef[ligne_pivot][colonne_pivot])
				} else {
					system.tab_coef[i][j].Add(system.tab_coef[i][j], new(big.Rat).Mul(system.tab_coef[ligne_pivot][j], tab_i_pivot))
				}
			}
		}
	}
	return system
}

/**
 * This function update alpha_tab.
 * It takes the following parameters:
 *   - `system`, a struct containing all information about the system
 *   - `ligne_pivot`, line of the matrice where the pivot occur
 * 	 - `pos_var_tab`, an array containing the variable positions in the matrice starting by the out-base variable
 * It return the update system
 **/
func updateAlpha(system info_system, ligne_pivot int, pos_var_tab []string) info_system {

	for i := 0; i < len(system.tab_coef); i++ {
		if i != ligne_pivot {
			var cal_alpha = new(big.Rat)
			for j := 0; j < len(system.tab_coef[0]); j++ {
				cal_alpha.Add(cal_alpha, new(big.Rat).Mul(system.tab_coef[i][j], system.alpha_tab[pos_var_tab[j+len(system.tab_coef)]]))
			}
			system.alpha_tab[pos_var_tab[i]].Set(cal_alpha)
		}
	}
	return system
}
