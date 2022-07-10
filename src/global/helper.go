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
/*************/
/* helper.go */
/*************/
/**
* This file contains the helper functions.
**/

package global

import (
	"bytes"
	"fmt"
	"os"
	"runtime"
	"strconv"
	"strings"
	"sync"
	"time"
)

var debug = false
var destructive = true
var nb_gor = 0
var mutex sync.Mutex
var start time.Time
var nb_step = 1
var exchanges = false
var proof = false
var data_struct = "trees"
var limit = -1
var one_step = false
var plugins map[string]bool = make(map[string]bool)
var lock_plugins sync.Mutex
var cpt_node = -1
var lock_cpt_node sync.Mutex

// Executable path
var current_directory, _ = os.Executable()
var current_directory_splitted = strings.Split(current_directory, "/")
var exec_name = current_directory_splitted[len(current_directory_splitted)-1]
var exec_path = current_directory[:len(current_directory)-len(exec_name)]

/* Prints in debug mode. */
func PrintDebug(function, message string) {
	if debug {
		fmt.Printf("[%.6fs][%v][%v] %v\n", time.Since(start).Seconds(), GetGID(), function, message)
		//[\033[1;34mDEBUG\033[0m]
	}
}

/* incr the  global number of gouroutine lanched */
func IncrGoRoutine(i int) {
	mutex.Lock()
	nb_gor = nb_gor + i
	mutex.Unlock()
}

/**
*  Solely for debugging purposes.
*  Otherwise, you will go straight to hell.
**/
func GetGID() uint64 {
	b := make([]byte, 64)
	b = b[:runtime.Stack(b, false)]
	b = bytes.TrimPrefix(b, []byte("goroutine "))
	b = b[:bytes.IndexByte(b, ' ')]
	n, _ := strconv.ParseUint(string(b), 10, 64)
	return n
}

/* Getters */
func GetDebug() bool {
	return debug
}

func IsDestructive() bool {
	return destructive
}

func GetStart() time.Time {
	return start
}

func GetNbGoroutines() int {
	return nb_gor
}

func GetNbStep() int {
	return nb_step
}

func GetExchanges() bool {
	return exchanges
}

func GetDataStruct() string {
	return data_struct
}

func GetLimit() int {
	return limit
}

func IsOneStep() bool {
	return one_step
}

func GetProof() bool {
	return proof
}

func GetExecPath() string {
	return exec_path
}
func IsLoaded(s string) bool {
	// Not locked here because read-only except in main
	return plugins[s]
}
func GetCptNode() int {
	return cpt_node
}
func IncrCptNode() int {
	lock_cpt_node.Lock()
	cpt_node++
	lock_cpt_node.Unlock()
	return GetCptNode()
}

/* Setters */
func SetDebug(b bool) {
	debug = b
}

func SetStart(t time.Time) {
	start = t
}

func SetDestructive(b bool) {
	destructive = b
}

func SetNbGoroutines(i int) {
	nb_gor = i
}

func SetNbStep(i int) {
	nb_step = i
}

func SetExchanges(b bool) {
	exchanges = b
}

func SetDataStruct(s string) {
	data_struct = s
}

func SetLimit(i int) {
	limit = i
}

func SetOneStep(b bool) {
	one_step = b
}

func SetProof(b bool) {
	proof = b
}

func SetPlugin(s string, b bool) {
	lock_plugins.Lock()
	plugins[s] = b
	lock_plugins.Unlock()
}
