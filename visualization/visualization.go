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
/**
* go run server.go
* localhost:8080
**/

package main

import (
	"fmt"
	"log"
	"net/http"
	"os"
	"os/exec"
	"text/template"
)

type JsonFile struct {
	Data string
}

func handler_exchanges(w http.ResponseWriter, r *http.Request) {
	cmd := exec.Command("bash", "./exchanges/make_exchanges_tree.sh")
	out, err := cmd.CombinedOutput()
	if err != nil {
		fmt.Println(err)
	} else {
		fmt.Print(string(out))
	}

	// On lit le fichier
	content, _ := os.ReadFile("json/exchanges_tree.json")

	//Création du template
	p := JsonFile{string(content)}
	t := template.New("Visualisation")
	t = template.Must(t.ParseFiles("exchanges/index.html"))

	// Execute
	err = t.ExecuteTemplate(w, "layout", p)
	if err != nil {
		log.Fatalf("Template execution: %s", err)
	}
}

func handler_proof(w http.ResponseWriter, r *http.Request) {
	// On génère les fi
	cmd := exec.Command("bash", "./proof/make_proof_tree.sh")
	out, err := cmd.CombinedOutput()
	if err != nil {
		fmt.Println(err)
	} else {
		fmt.Print(string(out))
	}

	// On lit le fichier
	content, _ := os.ReadFile("json/proof_tree.json")

	//Création du template
	p := JsonFile{string(content)}
	t := template.New("Proof")
	t = template.Must(t.ParseFiles("proof/index.html"))

	// Execute
	err = t.ExecuteTemplate(w, "layout", p)
	if err != nil {
		log.Fatalf("Template execution: %s", err)
	}
}

func main() {
	http.HandleFunc("/exchanges", handler_exchanges)
	http.HandleFunc("/proof", handler_proof)
	log.Fatal(http.ListenAndServe(":8080", nil))
}
