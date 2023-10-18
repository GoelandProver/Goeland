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
	"bufio"
	"fmt"
	"math/big"
	"os"
	"regexp"
	"strings"
	"sync"
)

var lock sync.Mutex

func main() {
	fmt.Println("choisissez le test que vous voulez executer, ajoutez 1 pour le B&B \n\n 1 pour : x+y>=2,2x-y>=0,-x+2y>=1 \n 3 pour : x+y>=0,x+y>=1,x+y>=2,x+y>=3,x+y>=4 \n 5 pour : x+y>=0,x+2y>=1,x+3y>=2,x+4y>=3,x+5y>=4 \n 7 pour : x>=1/4,x<=1/5 \n 9 pour : x=1/4 \n 11 pour : construire votre matrice des coefficients et vos contraintes \n 13 pour : faire appel au parseur \n 15 pour : écrire à la main le système en utilisant le parseur\n\nexemple : l'option 1 lance le simplexe du jeu de test 1, l'option 2 lance le B&B sur le jeu de test 1")
	var x int
	fmt.Scanln(&x)
	var tab_var = make([]string, 0)
	var incremental_coef = make([]*big.Rat, 0)
	lock = sync.Mutex{}

	if x == 1 {
		var tableau = [][]*big.Rat{{big.NewRat(1, 1), big.NewRat(1, 1)}, {big.NewRat(2, 1), big.NewRat(-1, 1)}, {big.NewRat(-1, 1), big.NewRat(2, 1)}} //[]*big.Rat{big.NewRat(1,1),new(big.Rat),big.NewRat(1,1)}
		var tab_cont = []*big.Rat{big.NewRat(2, 1), new(big.Rat), big.NewRat(1, 1)}
		fmt.Println("x+y>=2,2x-y>=0,-x+2y>=1")

		//creation tableau des affectations : taille = nombre de ligne + nombre de colonnes
		alpha_tab := create_alpha_tab(tableau, tab_var)
		//tableau qui nous donne la postion des variables dans le tableau alpha_tab
		var pos_var_tab = create_pos_var_tab(tableau, tab_var)
		var bland = make([]string, len(pos_var_tab))
		fmt.Println("\033[0m")

		for i := 0; i < len(tableau); i++ {
			bland[i+len(tableau[0])] = pos_var_tab[i]
		}

		for i := 0; i < len(tableau[0]); i++ {
			bland[i] = pos_var_tab[i+len(tableau)]
			tab_var = append(tab_var, pos_var_tab[i+len(tableau)])
		}

		var PosConst = make([]int, len(tab_cont))
		for i := 0; i < len(tab_cont); i++ {
			PosConst[i] = i
		}
		system := info_system{tab_coef: tableau, tab_cont: tab_cont, tab_nom_var: tab_var,
			pos_var_tab: pos_var_tab, bland: bland, alpha_tab: alpha_tab,
			incremental_coef: incremental_coef}
		Simplexe(system)
	}

	if x == 2 {
		var tableau = [][]*big.Rat{{big.NewRat(1, 1), big.NewRat(1, 1)}, {big.NewRat(2, 1), big.NewRat(-1, 1)}, {big.NewRat(-1, 1), big.NewRat(2, 1)}} //[]*big.Rat{big.NewRat(1,1),new(big.Rat),big.NewRat(1,1)}
		var tab_cont = []*big.Rat{big.NewRat(2, 1), new(big.Rat), big.NewRat(1, 1)}
		var tab_rat_bool = []bool{true, true}
		fmt.Println("x+y>=2,2x-y>=0,-x+2y>=1")
		channel := make(chan branch_and_bound)

		//creation tableau des affectations : taille = nombre de ligne + nombre de colonnes
		alpha_tab := create_alpha_tab(tableau, tab_var)
		//tableau qui nous donne la postion des variables dans le tableau alpha_tab
		var pos_var_tab = create_pos_var_tab(tableau, tab_var)
		var bland = make([]string, len(pos_var_tab))
		fmt.Println("\033[0m")

		for i := 0; i < len(tableau); i++ {
			bland[i+len(tableau[0])] = pos_var_tab[i]
		}

		for i := 0; i < len(tableau[0]); i++ {
			bland[i] = pos_var_tab[i+len(tableau)]
			tab_var = append(tab_var, pos_var_tab[i+len(tableau)])
			tab_rat_bool[i] = true
		}

		var PosConst = make([]int, len(tab_cont))
		for i := 0; i < len(tab_cont); i++ {
			PosConst[i] = i
		}

		system := info_system{tab_coef: tableau, tab_cont: tab_cont, tab_nom_var: tab_var,
			pos_var_tab: pos_var_tab, bland: bland, alpha_tab: alpha_tab,
			incremental_coef: incremental_coef}
		system, gotSol := Simplexe(system)
		fmt.Println(Branch_bound(gotSol, channel, system, tab_rat_bool))
	}
	if x == 3 {
		var tableau = [][]*big.Rat{{big.NewRat(1, 1), big.NewRat(1, 1)}, {big.NewRat(1, 1), big.NewRat(1, 1)}, {big.NewRat(1, 1), big.NewRat(1, 1)}, {big.NewRat(1, 1), big.NewRat(1, 1)}, {big.NewRat(1, 1), big.NewRat(1, 1)}}
		var tab_cont = []*big.Rat{new(big.Rat), big.NewRat(1, 1), big.NewRat(2, 1), big.NewRat(3, 1), big.NewRat(4, 1)}
		fmt.Println("x+y>=0,x+y>=1,x+y>=2,x+y>=3,x+y>=4")

		//creation tableau des affectations : taille = nombre de ligne + nombre de colonnes
		alpha_tab := create_alpha_tab(tableau, tab_var)
		//tableau qui nous donne la postion des variables dans le tableau alpha_tab
		var pos_var_tab = create_pos_var_tab(tableau, tab_var)
		var bland = make([]string, len(pos_var_tab))
		fmt.Println("\033[0m")

		for i := 0; i < len(tableau); i++ {
			bland[i+len(tableau[0])] = pos_var_tab[i]
		}

		for i := 0; i < len(tableau[0]); i++ {
			bland[i] = pos_var_tab[i+len(tableau)]
			tab_var = append(tab_var, pos_var_tab[i+len(tableau)])
		}

		var PosConst = make([]int, len(tab_cont))
		for i := 0; i < len(tab_cont); i++ {
			PosConst[i] = i
		}

		system := info_system{tab_coef: tableau, tab_cont: tab_cont, tab_nom_var: tab_var,
			pos_var_tab: pos_var_tab, bland: bland, alpha_tab: alpha_tab,
			incremental_coef: incremental_coef}
		Simplexe(system)
	}

	if x == 4 {
		var tableau = [][]*big.Rat{{big.NewRat(1, 1), big.NewRat(1, 1)}, {big.NewRat(1, 1), big.NewRat(1, 1)}, {big.NewRat(1, 1), big.NewRat(1, 1)}, {big.NewRat(1, 1), big.NewRat(1, 1)}, {big.NewRat(1, 1), big.NewRat(1, 1)}}
		var tab_cont = []*big.Rat{new(big.Rat), big.NewRat(1, 1), big.NewRat(2, 1), big.NewRat(3, 1), big.NewRat(4, 1)}
		var tab_rat_bool = []bool{true, true}
		fmt.Println("x+y>=0,x+y>=1,x+y>=2,x+y>=3,x+y>=4")
		channel := make(chan branch_and_bound)

		//creation tableau des affectations : taille = nombre de ligne + nombre de colonnes
		alpha_tab := create_alpha_tab(tableau, tab_var)
		//tableau qui nous donne la postion des variables dans le tableau alpha_tab
		var pos_var_tab = create_pos_var_tab(tableau, tab_var)
		var bland = make([]string, len(pos_var_tab))
		fmt.Println("\033[0m")

		for i := 0; i < len(tableau); i++ {
			bland[i+len(tableau[0])] = pos_var_tab[i]
		}

		for i := 0; i < len(tableau[0]); i++ {
			bland[i] = pos_var_tab[i+len(tableau)]
			tab_var = append(tab_var, pos_var_tab[i+len(tableau)])
			tab_rat_bool[i] = true

		}

		var PosConst = make([]int, len(tab_cont))
		for i := 0; i < len(tab_cont); i++ {
			PosConst[i] = i
		}

		system := info_system{tab_coef: tableau, tab_cont: tab_cont, tab_nom_var: tab_var,
			pos_var_tab: pos_var_tab, bland: bland, alpha_tab: alpha_tab,
			incremental_coef: incremental_coef}
		system, gotSol := Simplexe(system)
		fmt.Println(Branch_bound(gotSol, channel, system, tab_rat_bool))
	}
	if x == 5 {
		var tableau = [][]*big.Rat{{big.NewRat(1, 1), big.NewRat(1, 1)}, {big.NewRat(1, 1), big.NewRat(2, 1)}, {big.NewRat(1, 1), big.NewRat(3, 1)}, {big.NewRat(1, 1), big.NewRat(4, 1)}, {big.NewRat(1, 1), big.NewRat(5, 1)}}
		var tab_cont = []*big.Rat{new(big.Rat), big.NewRat(1, 1), big.NewRat(2, 1), big.NewRat(3, 1), big.NewRat(4, 1)}
		fmt.Println("x+y>=0,x+2y>=1,x+3y>=2,x+4y>=3,x+5y>=4")

		//creation tableau des affectations : taille = nombre de ligne + nombre de colonnes
		alpha_tab := create_alpha_tab(tableau, tab_var)
		//tableau qui nous donne la postion des variables dans le tableau alpha_tab
		var pos_var_tab = create_pos_var_tab(tableau, tab_var)
		var bland = make([]string, len(pos_var_tab))
		fmt.Println("\033[0m")

		for i := 0; i < len(tableau); i++ {
			bland[i+len(tableau[0])] = pos_var_tab[i]
		}

		for i := 0; i < len(tableau[0]); i++ {
			bland[i] = pos_var_tab[i+len(tableau)]
			tab_var = append(tab_var, pos_var_tab[i+len(tableau)])
		}

		var PosConst = make([]int, len(tab_cont))
		for i := 0; i < len(tab_cont); i++ {
			PosConst[i] = i
		}

		system := info_system{tab_coef: tableau, tab_cont: tab_cont, tab_nom_var: tab_var,
			pos_var_tab: pos_var_tab, bland: bland, alpha_tab: alpha_tab,
			incremental_coef: incremental_coef}
		Simplexe(system)

	}

	if x == 6 {
		var tableau = [][]*big.Rat{{big.NewRat(1, 1), big.NewRat(1, 1)}, {big.NewRat(1, 1), big.NewRat(2, 1)}, {big.NewRat(1, 1), big.NewRat(3, 1)}, {big.NewRat(1, 1), big.NewRat(4, 1)}, {big.NewRat(1, 1), big.NewRat(5, 1)}}
		var tab_cont = []*big.Rat{new(big.Rat), big.NewRat(1, 1), big.NewRat(2, 1), big.NewRat(3, 1), big.NewRat(4, 1)}
		var tab_rat_bool = []bool{true, true}
		fmt.Println("x+y>=0,x+2y>=1,x+3y>=2,x+4y>=3,x+5y>=4")
		channel := make(chan branch_and_bound)

		//creation tableau des affectations : taille = nombre de ligne + nombre de colonnes
		alpha_tab := create_alpha_tab(tableau, tab_var)
		//tableau qui nous donne la postion des variables dans le tableau alpha_tab
		var pos_var_tab = create_pos_var_tab(tableau, tab_var)
		var bland = make([]string, len(pos_var_tab))
		fmt.Println("\033[0m")

		for i := 0; i < len(tableau); i++ {
			bland[i+len(tableau[0])] = pos_var_tab[i]
		}

		for i := 0; i < len(tableau[0]); i++ {
			bland[i] = pos_var_tab[i+len(tableau)]
			tab_var = append(tab_var, pos_var_tab[i+len(tableau)])
			tab_rat_bool[i] = true
		}

		var PosConst = make([]int, len(tab_cont))
		for i := 0; i < len(tab_cont); i++ {
			PosConst[i] = i
		}

		system := info_system{tab_coef: tableau, tab_cont: tab_cont, tab_nom_var: tab_var,
			pos_var_tab: pos_var_tab, bland: bland, alpha_tab: alpha_tab,
			incremental_coef: incremental_coef}
		system, gotSol := Simplexe(system)
		fmt.Println(Branch_bound(gotSol, channel, system, tab_rat_bool))
	}
	if x == 7 {
		var tableau = [][]*big.Rat{{big.NewRat(1, 1)}, {big.NewRat(-1, 1)}}
		var tab_cont = []*big.Rat{big.NewRat(1, 4), big.NewRat(-1, 5)}
		fmt.Println("x>=1/4,x<=1/5")

		//creation tableau des affectations : taille = nombre de ligne + nombre de colonnes
		alpha_tab := create_alpha_tab(tableau, tab_var)
		//tableau qui nous donne la postion des variables dans le tableau alpha_tab
		var pos_var_tab = create_pos_var_tab(tableau, tab_var)
		var bland = make([]string, len(pos_var_tab))
		fmt.Println("\033[0m")

		for i := 0; i < len(tableau); i++ {
			bland[i+len(tableau[0])] = pos_var_tab[i]
		}

		for i := 0; i < len(tableau[0]); i++ {
			bland[i] = pos_var_tab[i+len(tableau)]
			tab_var = append(tab_var, pos_var_tab[i+len(tableau)])
		}

		var PosConst = make([]int, len(tab_cont))
		for i := 0; i < len(tab_cont); i++ {
			PosConst[i] = i
		}

		system := info_system{tab_coef: tableau, tab_cont: tab_cont, tab_nom_var: tab_var,
			pos_var_tab: pos_var_tab, bland: bland, alpha_tab: alpha_tab,
			incremental_coef: incremental_coef}
		Simplexe(system)

	}

	if x == 8 {
		var tableau = [][]*big.Rat{{big.NewRat(1, 1)}, {big.NewRat(-1, 1)}}
		var tab_cont = []*big.Rat{big.NewRat(1, 4), big.NewRat(-1, 5)}
		var tab_rat_bool = []bool{true}
		fmt.Println("x>=1/4,x<=1/5")
		channel := make(chan branch_and_bound)

		//creation tableau des affectations : taille = nombre de ligne + nombre de colonnes
		alpha_tab := create_alpha_tab(tableau, tab_var)
		//tableau qui nous donne la postion des variables dans le tableau alpha_tab
		var pos_var_tab = create_pos_var_tab(tableau, tab_var)
		var bland = make([]string, len(pos_var_tab))
		fmt.Println("\033[0m")

		for i := 0; i < len(tableau); i++ {
			bland[i+len(tableau[0])] = pos_var_tab[i]
		}

		for i := 0; i < len(tableau[0]); i++ {
			bland[i] = pos_var_tab[i+len(tableau)]
			tab_var = append(tab_var, pos_var_tab[i+len(tableau)])
			tab_rat_bool[i] = true
		}

		var PosConst = make([]int, len(tab_cont))
		for i := 0; i < len(tab_cont); i++ {
			PosConst[i] = i
		}

		system := info_system{tab_coef: tableau, tab_cont: tab_cont, tab_nom_var: tab_var,
			pos_var_tab: pos_var_tab, bland: bland, alpha_tab: alpha_tab,
			incremental_coef: incremental_coef}
		system, gotSol := Simplexe(system)
		fmt.Println(Branch_bound(gotSol, channel, system, tab_rat_bool))
	}
	if x == 9 {
		var tableau = [][]*big.Rat{{big.NewRat(1, 1)}, {big.NewRat(-1, 1)}}
		var tab_cont = []*big.Rat{big.NewRat(1, 4), big.NewRat(-1, 4)}
		fmt.Println("x=1/4")

		//creation tableau des affectations : taille = nombre de ligne + nombre de colonnes
		alpha_tab := create_alpha_tab(tableau, tab_var)
		//tableau qui nous donne la postion des variables dans le tableau alpha_tab
		var pos_var_tab = create_pos_var_tab(tableau, tab_var)
		var bland = make([]string, len(pos_var_tab))
		fmt.Println("\033[0m")

		for i := 0; i < len(tableau); i++ {
			bland[i+len(tableau[0])] = pos_var_tab[i]
		}

		for i := 0; i < len(tableau[0]); i++ {
			bland[i] = pos_var_tab[i+len(tableau)]
			tab_var = append(tab_var, pos_var_tab[i+len(tableau)])
		}

		var PosConst = make([]int, len(tab_cont))
		for i := 0; i < len(tab_cont); i++ {
			PosConst[i] = i
		}

		system := info_system{tab_coef: tableau, tab_cont: tab_cont, tab_nom_var: tab_var,
			pos_var_tab: pos_var_tab, bland: bland, alpha_tab: alpha_tab,
			incremental_coef: incremental_coef}
		Simplexe(system)

	}

	if x == 10 {
		var tableau = [][]*big.Rat{{big.NewRat(1, 1)}, {big.NewRat(-1, 1)}}
		var tab_cont = []*big.Rat{big.NewRat(1, 4), big.NewRat(-1, 4)}
		var tab_rat_bool = []bool{true}
		fmt.Println("x=1/4")
		channel := make(chan branch_and_bound)

		//creation tableau des affectations : taille = nombre de ligne + nombre de colonnes
		alpha_tab := create_alpha_tab(tableau, tab_var)
		//tableau qui nous donne la postion des variables dans le tableau alpha_tab
		var pos_var_tab = create_pos_var_tab(tableau, tab_var)
		var bland = make([]string, len(pos_var_tab))
		fmt.Println("\033[0m")

		for i := 0; i < len(tableau); i++ {
			bland[i+len(tableau[0])] = pos_var_tab[i]
		}

		for i := 0; i < len(tableau[0]); i++ {
			bland[i] = pos_var_tab[i+len(tableau)]
			tab_var = append(tab_var, pos_var_tab[i+len(tableau)])
			tab_rat_bool[i] = true
		}

		var PosConst = make([]int, len(tab_cont))
		for i := 0; i < len(tab_cont); i++ {
			PosConst[i] = i
		}

		system := info_system{tab_coef: tableau, tab_cont: tab_cont, tab_nom_var: tab_var,
			pos_var_tab: pos_var_tab, bland: bland, alpha_tab: alpha_tab,
			incremental_coef: incremental_coef}
		system, gotSol := Simplexe(system)
		fmt.Println(Branch_bound(gotSol, channel, system, tab_rat_bool))
	}

	if x == 11 {
		fmt.Println("veuillez saisir le nombre de lignes de la matrice des coefficients")
		var c int
		var l int
		fmt.Scanln(&l)
		fmt.Println("veuillez saisir le nombre de colonnes de la matrice des coefficients")
		fmt.Scanln(&c)
		var tableau = make([][]*big.Rat, l)
		for j := 0; j < l; j++ {
			tableau[j] = make([]*big.Rat, c)
		}
		cpt := 0
		cpt2 := 0
		for k := range tableau {
			for kk := range tableau[0] {
				var a float64
				if cpt == 0 {
					fmt.Println("veuillez saisir la ligne :", cpt2+1)
				}
				fmt.Scanln(&a)
				tableau[k][kk] = new(big.Rat).SetFloat64(a)
				cpt++
				if cpt%c == 0 {
					cpt = 0
					cpt2++
				}

			}

		}

		fmt.Println("veuillez saisir les contraintes une à une :")
		var tab_cont = make([]*big.Rat, l)
		for j := range tab_cont {
			var a float64
			fmt.Scanln(&a)
			tab_cont[j] = new(big.Rat).SetFloat64(a)
		}

		fmt.Println("\nmatrice des coefficients saisis :", tableau, "\ntableau des contraintes saisies :", tab_cont)

		//creation tableau des affectations : taille = nombre de ligne + nombre de colonnes
		alpha_tab := create_alpha_tab(tableau, tab_var)
		//tableau qui nous donne la postion des variables dans le tableau alpha_tab
		var pos_var_tab = create_pos_var_tab(tableau, tab_var)
		var bland = make([]string, len(pos_var_tab))
		fmt.Println("\033[0m")

		for i := 0; i < len(tableau); i++ {
			bland[i+len(tableau[0])] = pos_var_tab[i]
		}

		for i := 0; i < len(tableau[0]); i++ {
			bland[i] = pos_var_tab[i+len(tableau)]
			tab_var = append(tab_var, pos_var_tab[i+len(tableau)])
		}

		var PosConst = make([]int, len(tab_cont))
		for i := 0; i < len(tab_cont); i++ {
			PosConst[i] = i
		}

		system := info_system{tab_coef: tableau, tab_cont: tab_cont, tab_nom_var: tab_var,
			pos_var_tab: pos_var_tab, bland: bland, alpha_tab: alpha_tab,
			incremental_coef: incremental_coef}
		Simplexe(system)

	}
	fmt.Println("\033[0m")

	if x == 12 {
		fmt.Println("veuillez saisir le nombre de lignes de la matrice des coefficients")
		var colonne int
		var ligne int
		fmt.Scanln(&ligne)
		fmt.Println("veuillez saisir le nombre de colonnes de la matrice des coefficients")
		fmt.Scanln(&colonne)
		var tab_rat_bool = make([]bool, colonne)
		var tableau = make([][]*big.Rat, ligne)
		for j := 0; j < ligne; j++ {
			tableau[j] = make([]*big.Rat, colonne)
		}
		cpt := 0
		cpt2 := 0
		for k := range tableau {
			for kk := range tableau[0] {
				var aa float64
				if cpt == 0 {
					fmt.Println("veuillez saisir la ligne :", cpt2+1)
				}
				fmt.Scanln(&aa)
				tableau[k][kk] = new(big.Rat).SetFloat64(aa)
				cpt++
				if cpt%colonne == 0 {
					cpt = 0
					cpt2++
				}

			}

		}

		fmt.Println("veuillez saisir les contraintes une à une :")
		var tab_cont = make([]*big.Rat, ligne)
		for j := range tab_cont {
			var aa float64
			fmt.Scanln(&aa)
			tab_cont[j] = new(big.Rat).SetFloat64(aa)
		}

		fmt.Println("\nmatrice des coefficients saisis :", tableau, "\ntableau des contraintes saisies :", tab_cont)
		channel := make(chan branch_and_bound)

		//creation tableau des affectations : taille = nombre de ligne + nombre de colonnes
		alpha_tab := create_alpha_tab(tableau, tab_var)
		//tableau qui nous donne la postion des variables dans le tableau alpha_tab
		var pos_var_tab = create_pos_var_tab(tableau, tab_var)
		var bland = make([]string, len(pos_var_tab))
		fmt.Println("\033[0m")
		for i := 0; i < len(tableau); i++ {
			bland[i+len(tableau[0])] = pos_var_tab[i]
		}

		for i := 0; i < len(tableau[0]); i++ {
			bland[i] = pos_var_tab[i+len(tableau)]
			tab_var = append(tab_var, pos_var_tab[i+len(tableau)])
			tab_rat_bool[i] = true
		}

		var PosConst = make([]int, len(tab_cont))
		for i := 0; i < len(tab_cont); i++ {
			PosConst[i] = i
		}

		system := info_system{tab_coef: tableau, tab_cont: tab_cont, tab_nom_var: tab_var,
			pos_var_tab: pos_var_tab, bland: bland, alpha_tab: alpha_tab,
			incremental_coef: incremental_coef}
		system, gotSol := Simplexe(system)
		fmt.Println(Branch_bound(gotSol, channel, system, tab_rat_bool))

	}
	fmt.Println("\033[0m")
	if x == 13 {
		// Creation du tableau de coeff et du tableau de contraintes
		var tableau = make([][]*big.Rat, 0)
		var tab_cont = make([]*big.Rat, 0)
		var tab_var = make([]string, 0)
		var tabExe = []string{"20 t - x + y -18 z >= 8", "0 t -5 x + y -0 z >= 5", "-7 t +3 x +5 y + z >= 33"}

		tableau, tab_cont, tab_var = addAllConst(tabExe, tableau, tab_cont, tab_var)
		fmt.Println("tableau = ", tableau)
		fmt.Println("tab_cont = ", tab_cont)
		fmt.Println("tab_var = ", tab_var)

		//creation tableau des affectations : taille = nombre de ligne + nombre de colonnes
		alpha_tab := create_alpha_tab(tableau, tab_var)
		//tableau qui nous donne la postion des variables dans le tableau alpha_tab
		var pos_var_tab = create_pos_var_tab(tableau, tab_var)
		var bland = make([]string, len(pos_var_tab))
		fmt.Println("\033[0m")

		for i := 0; i < len(tableau); i++ {
			bland[i+len(tableau[0])] = pos_var_tab[i]
		}

		for i := 0; i < len(tableau[0]); i++ {
			bland[i] = pos_var_tab[i+len(tableau)]
		}

		var PosConst = make([]int, len(tab_cont))
		for i := 0; i < len(tab_cont); i++ {
			PosConst[i] = i
		}

		system := info_system{tab_coef: tableau, tab_cont: tab_cont, tab_nom_var: tab_var,
			pos_var_tab: pos_var_tab, bland: bland, alpha_tab: alpha_tab,
			incremental_coef: incremental_coef}
		Simplexe(system)
	}
	if x == 14 {
		// Creation du tableau de coeff et du tableau de contraintes
		var tableau = make([][]*big.Rat, 0)
		var tab_cont = make([]*big.Rat, 0)
		var tab_var = make([]string, 0)
		var tab_rat_bool = []bool{true, true, true, true}
		var tabExe = []string{"20 t - x + y -18 z >= 8", "0 t -5 x + y -0 z >= 5", "-7 t +3 x +5 y + z >= 33"}
		//var tabExe = []string{"32 x -10 y +24 z +21 t >= 9","-19 x -10 y +17 z +33 t >= -27","-17 x -38 y -33 z +9 t >= -20"}

		tableau, tab_cont, tab_var = addAllConst(tabExe, tableau, tab_cont, tab_var)
		fmt.Println("tableau = ", tableau)
		fmt.Println("tab_cont = ", tab_cont)
		fmt.Println("tab_var = ", tab_var)
		channel := make(chan branch_and_bound)

		//creation tableau des affectations : taille = nombre de ligne + nombre de colonnes
		alpha_tab := create_alpha_tab(tableau, tab_var)
		//tableau qui nous donne la postion des variables dans le tableau alpha_tab
		var pos_var_tab = create_pos_var_tab(tableau, tab_var)
		var bland = make([]string, len(pos_var_tab))
		fmt.Println("\033[0m")

		for i := 0; i < len(tableau); i++ {
			bland[i+len(tableau[0])] = pos_var_tab[i]
		}

		for i := 0; i < len(tableau[0]); i++ {
			bland[i] = pos_var_tab[i+len(tableau)]
		}

		var PosConst = make([]int, len(tab_cont))
		for i := 0; i < len(tab_cont); i++ {
			PosConst[i] = i
		}

		system := info_system{tab_coef: tableau, tab_cont: tab_cont, tab_nom_var: tab_var,
			pos_var_tab: pos_var_tab, bland: bland, alpha_tab: alpha_tab,
			incremental_coef: incremental_coef}
		system, gotSol := Simplexe(system)
		fmt.Println(Branch_bound(gotSol, channel, system, tab_rat_bool))

	}

	if x == 15 {
		// Creation du tableau de coeff et du tableau de contraintes
		var tableau = make([][]*big.Rat, 0)
		var tab_cont = make([]*big.Rat, 0)
		var tab_var = make([]string, 0)
		fmt.Println("Veuillez saisir le nombre d'equations")
		var nbrEq int
		fmt.Scanln(&nbrEq)
		fmt.Println("nbrEq =", nbrEq)
		var tabExe = make([]string, 0)
		//var equation string
		for i := 0; i < nbrEq; i++ {
			reader := bufio.NewReader(os.Stdin)
			fmt.Print("Entrez une equation: ")
			equation, _ := reader.ReadString('\n')
			equation = strings.TrimSuffix(equation, "\n")
			tabExe = append(tabExe, equation)
		}

		tableau, tab_cont, tab_var = addAllConst(tabExe, tableau, tab_cont, tab_var)
		fmt.Println("tableau = ", tableau)
		fmt.Println("tab_cont = ", tab_cont)
		fmt.Println("tab_var = ", tab_var)

		//creation tableau des affectations : taille = nombre de ligne + nombre de colonnes
		alpha_tab := create_alpha_tab(tableau, tab_var)
		//tableau qui nous donne la postion des variables dans le tableau alpha_tab
		var pos_var_tab = create_pos_var_tab(tableau, tab_var)
		var bland = make([]string, len(pos_var_tab))
		fmt.Println("\033[0m")

		for i := 0; i < len(tableau); i++ {
			bland[i+len(tableau[0])] = pos_var_tab[i]
		}

		for i := 0; i < len(tableau[0]); i++ {
			bland[i] = pos_var_tab[i+len(tableau)]
		}

		var PosConst = make([]int, len(tab_cont))
		for i := 0; i < len(tab_cont); i++ {
			PosConst[i] = i
		}

		system := info_system{tab_coef: tableau, tab_cont: tab_cont, tab_nom_var: tab_var,
			pos_var_tab: pos_var_tab, bland: bland, alpha_tab: alpha_tab,
			incremental_coef: incremental_coef}
		Simplexe(system)

	}
	if x == 16 {
		// Creation du tableau de coeff et du tableau de contraintes
		var tableau = make([][]*big.Rat, 0)
		var tab_cont = make([]*big.Rat, 0)
		var tab_var = make([]string, 0)
		fmt.Println("Veuillez saisir le nombre d'equations")
		var nbrEq int
		fmt.Scanln(&nbrEq)
		fmt.Println("nbrEq =", nbrEq)
		var tabExe = make([]string, 0)
		//var equation string
		for i := 0; i < nbrEq; i++ {
			reader := bufio.NewReader(os.Stdin)
			fmt.Print("Entrez une equation: ")
			equation, _ := reader.ReadString('\n')
			equation = strings.TrimSuffix(equation, "\n")
			tabExe = append(tabExe, equation)
		}

		tableau, tab_cont, tab_var = addAllConst(tabExe, tableau, tab_cont, tab_var)
		fmt.Println("tableau = ", tableau)
		fmt.Println("tab_cont = ", tab_cont)
		fmt.Println("tab_var = ", tab_var)
		channel := make(chan branch_and_bound)

		//creation tableau des affectations : taille = nombre de ligne + nombre de colonnes
		alpha_tab := create_alpha_tab(tableau, tab_var)
		//tableau qui nous donne la postion des variables dans le tableau alpha_tab
		var pos_var_tab = create_pos_var_tab(tableau, tab_var)
		var bland = make([]string, len(pos_var_tab))
		fmt.Println("\033[0m")

		for i := 0; i < len(tableau); i++ {
			bland[i+len(tableau[0])] = pos_var_tab[i]
		}
		var tab_rat_bool = make([]bool, len(tableau[0]))
		for i := 0; i < len(tableau[0]); i++ {
			bland[i] = pos_var_tab[i+len(tableau)]
			tab_rat_bool[i] = true
		}

		var PosConst = make([]int, len(tab_cont))
		for i := 0; i < len(tab_cont); i++ {
			PosConst[i] = i
		}

		system := info_system{tab_coef: tableau, tab_cont: tab_cont, tab_nom_var: tab_var,
			pos_var_tab: pos_var_tab, bland: bland, alpha_tab: alpha_tab,
			incremental_coef: incremental_coef}
		system, gotSol := Simplexe(system)
		fmt.Println(Branch_bound(gotSol, channel, system, tab_rat_bool))
	}
}

/**
 * This function create the map `alpha_tab` which associate the name of the variable and his alpha value.
 * It takes the following parameters:
 *   - `tab_coef`, the matrice with the normalized inequations
 *   - `tab_nom_var`, an array of the system's starting variable
 * It returns the create map
 **/
func create_alpha_tab(tab_coef [][]*big.Rat, tab_nom_var []string) map[string]*big.Rat {
	alpha_tab := make(map[string]*big.Rat)
	//Creation variable d'ecart
	for i := 0; i < len(tab_coef); i++ {
		alpha_tab[fmt.Sprint("e", i)] = new(big.Rat)
	}
	//Creation variable initial
	if len(tab_nom_var) == 0 {
		for i := 0; i < len(tab_coef[0]); i++ {
			alpha_tab[fmt.Sprint("x", i)] = new(big.Rat)
		}
	} else {
		for i := 0; i < len(tab_coef[0]); i++ {
			alpha_tab[tab_nom_var[i]] = new(big.Rat)
		}
	}
	return alpha_tab
}

/**
 * This function create the array which contains the position each variable in the matrice.
 * It takes the following parameters:
 *   - `tab_coef`, the matrice with the normalized inequations
 *   - `tab_nom_var`, an array of the system's starting variable
 * It returns the create array
 **/
func create_pos_var_tab(tab_coef [][]*big.Rat, tab_nom_var []string) []string {
	//len(tab_coef[0]) correspond au nombre de ligne soit au nombre de variable d'ecart
	//len(tab_coef) correspond au nombre de colonne soit au nombre de variable initial
	var pos_var_tab = make([]string, len(tab_coef[0])+len(tab_coef))
	taille_tab := len(tab_coef)
	for i := 0; i < taille_tab+len(tab_coef[0]); i++ {
		if i < taille_tab {
			pos_var_tab[i] = fmt.Sprint("e", i)
		} else {
			if len(tab_nom_var) == 0 {
				pos_var_tab[i] = fmt.Sprint("x", i-taille_tab)
			} else {
				pos_var_tab[i] = tab_nom_var[i-taille_tab]
			}
		}
	}

	return pos_var_tab
}

// Remplace = par >= avec bool pour savoir si ce n'étais pas déja une inequation
func remplaceEgal(eq string) (string, bool) {
	tab_ascii := []rune(eq)
	for index, ascii := range tab_ascii {
		// 61 -> = | 60 -> < | 62 -> >
		if index > 1 && ascii == 61 && eq[index-1] != 60 && eq[index-1] != 62 {
			return string(append(tab_ascii[:index], append([]rune{62}, tab_ascii[index:]...)...)), true
		}
	}
	return eq, false
}

// Retourne le négatif d'une inéquation
func negEq(eq string) string {
	tab_ascii := []rune(eq)

	//gestion du premier signe
	if tab_ascii[0] != 45 {
		if tab_ascii[0] >= 48 && tab_ascii[0] <= 57 {
			tab_ascii = append([]rune{43}, tab_ascii...)
		} else {
			tab_ascii = append([]rune{43, 32}, tab_ascii...)
		}
	} else {
		tab_ascii = tab_ascii[2:]
	}

	//gestion du dernier signe
	for i := len(tab_ascii) - 1; i > 0; i-- {
		if tab_ascii[i-1] == 32 && tab_ascii[i] != 45 {
			tab_ascii = append(tab_ascii[:i], append([]rune{45}, tab_ascii[i:]...)...)
			i = -1
		} else if tab_ascii[i-1] == 32 && tab_ascii[i] == 45 {
			tab_ascii = append(tab_ascii[:i], tab_ascii[i:]...)
			i = -1
		}
	}

	//gestion des autres signe
	for index, ascii := range tab_ascii {
		// 43 -> +
		if ascii == 43 {
			tab_ascii[index] = 45
			// 45 -> -
		} else if ascii == 45 {
			tab_ascii[index] = 43
		}
	}

	return string(tab_ascii)
}

// Retourne les inequations correspondante au equation d'entré
func getIneq(eq string) []string {
	ineq, verif := remplaceEgal(eq)
	if verif {
		return []string{ineq, negEq(ineq)}
	} else {
		return []string{ineq}
	}
}

/**
 * This function transform a system of equations on different varaible needed for the simplex
 * It takes the following parameters:
 *   - `eqs`, a string which represent a system of equations
 * It returns the matrice of coefficient, the array of constraint and table of the system's starting variable
 **/
func addAllConst(eqs []string, tab_coef [][]*big.Rat, tab_cont []*big.Rat, tab_nom_var []string) ([][]*big.Rat, []*big.Rat, []string) {
	for _, element := range eqs {
		dernier_element, tab, liste_nom_var := parseOneConst(element)
		tab_coef = append(tab_coef, tab)
		tab_cont = append(tab_cont, dernier_element)
		tab_nom_var = addVarIfNotExists(liste_nom_var, tab_nom_var)

	}
	return tab_coef, tab_cont, tab_nom_var
}

/**
 * This function add the element of an array of string that doesn't exist in the other one
 * It takes the following parameters:
 *   - `liste_nom_var`, an array of string that will give his new element
 * 	 - `tab_nom_var`, an array of string that will receive the new element
 **/
func addVarIfNotExists(liste_nom_var []string, tab_nom_var []string) []string {
	for i := 0; i < len(liste_nom_var); i++ {
		present := false
		for j := 0; j < len(tab_nom_var); j++ {
			if liste_nom_var[i] == tab_nom_var[j] {
				present = true
			}
		}
		if !present {
			tab_nom_var = append(tab_nom_var, liste_nom_var[i])
		}
	}
	return tab_nom_var
}

/**
 * This function transform one equations on different varaible needed for the simplex
 * It takes the following parameters:
 *   - `eq`, a string which represent one equation
 * It returns a line of the matrice of coefficient, the constraint of the equation and the table of the equation's starting variable
 **/
func parseOneConst(eq string) (*big.Rat, []*big.Rat, []string) {
	// on split la string avec les espaces, ce qui nous donne un tableaux avec tous les elements de la string
	tab_element := strings.Split(eq, " ")
	// tableau qui va contenir les coefficients de l'equation
	var ligneEq []*big.Rat
	var tab_nom_var []string
	// indique notre position dans le tableau
	posTab := 0
	for i := 0; i < len(tab_element)-2; i++ {
		ligneEq = append(ligneEq, big.NewRat(1, 1))
		// nous permet de savoir si notre caractere est un chiffre
		re := regexp.MustCompile(`[0-9.,]`)
		isFig := re.FindString(tab_element[i])
		// nous permet de savoir si notre caractere est une lettre
		re2 := regexp.MustCompile(`[a-z]`)
		isLet := re2.FindString(tab_element[i])

		if isLet != "" {
			tab_nom_var = append(tab_nom_var, isLet)
		}

		// si on a un chiffre
		if isFig != "" {
			// on converti notre caractere qui est une string en float64
			conv, _ := new(big.Rat).SetString(tab_element[i])
			// on l'insere dans notre tableau a la position "posTab"
			ligneEq[posTab] = conv

		} else {
			// le cas du -
			if tab_element[i] == "-" {
				ligneEq[posTab].SetFloat64(-1.0)
				// le cas du +
			} else if tab_element[i] != "+" {
				posTab += 1
			}
		}
	}

	// On ajoute la contraintes dans le tableau de contraintes en l'a convertissant d'abord
	lastEle := tab_element[len(tab_element)-1]
	lastEleC, _ := new(big.Rat).SetString(lastEle)

	return lastEleC, ligneEq[0:posTab], tab_nom_var
}
