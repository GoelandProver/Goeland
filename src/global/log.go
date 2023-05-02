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

/**********/
/* log.go */
/**********/

/**
* This file is used initialise the loggers and provide easily usable functions to log
**/
package global

import (
	"fmt"
	"io"
	"log"
	"os"
	"time"
)

var (
	logDebug *log.Logger
	logInfo  *log.Logger
	logError *log.Logger
	logPanic *log.Logger
	logFatal *log.Logger
)

// Initialises the logger with the correct options
func InitLogger() {
	initLogger(GetLogFile(), GetDebugTerminal(), GetDebugFile(), GetShowTrace(), GetNotWriteLogs())
}

/**
*  Initialises the loggers
*  -
*  Will write the logs in the file fileName and in the terminal
*  Will write the debug logs in the file fileName only if the parameter debugInFile is true
*  Will write the debug logs in the terminal only if the parameter debugInTerminal is true
*  Will write the line where the logger was called only if the parameter showTrace is true
**/
func initLogger(fileName string, debugInTerminal, debugInFile, showTrace, notWriteLogs bool) {

	var wrt io.Writer
	var f *os.File

	if !notWriteLogs {
		fmt.Println("TESTTESTETETTST")
		f, err := os.OpenFile(fileName, os.O_RDWR|os.O_CREATE|os.O_TRUNC, 0666)

		if err != nil {
			log.Fatalf("Error opening log file: %v", err)
		}

		wrt = io.MultiWriter(os.Stdout, f)

		f, err = os.OpenFile("/tmp/Goeland"+time.Now().Format("[2006-01-02 15:04:05]")+".log", os.O_RDWR|os.O_CREATE|os.O_TRUNC, 0666)

		if err != nil {
			log.Fatalf("Error opening log file: %v", err)
		}

		wrt = io.MultiWriter(wrt, f)
	} else {
		wrt = os.Stdout
	}

	logOptions := 0
	if showTrace {
		logOptions = log.Lshortfile
	}

	debPrefix := "DEB: "

	if debugInFile && notWriteLogs {
		if debugInTerminal {
			logDebug = log.New(wrt, debPrefix, logOptions)
		} else {
			logDebug = log.New(f, debPrefix, logOptions)
		}
	} else if debugInTerminal {
		logDebug = log.New(os.Stdout, debPrefix, logOptions)
	}

	logInfo = log.New(wrt, "INF: ", logOptions)
	logError = log.New(wrt, "ERR: ", logOptions)
	logPanic = log.New(wrt, "PAN: ", logOptions)
	logFatal = log.New(wrt, "FAT: ", logOptions)
}

func printToLogger(logger log.Logger, function, message string) {
	toParse := "[%.6fs]"
	options := []any{time.Since(start).Seconds()}

	if GetDebug() {
		toParse += "[%v]"
		options = append(options, GetGID())
	}

	if !GetShowTrace() {
		toParse += "[%v]"
		options = append(options, function)
	}

	toParse += " %v\n"
	options = append(options, message)

	logger.Output(3, fmt.Sprintf(toParse, options...))
}

// Prints the message into the terminal and/or the file as a debug message
//
// Use when you want to display a message for debugging purposes only.
// The prefix for debug messages is 'DEB'.
// Will only print in the terminal and/or the file if the corresponding options -debug and -dif have been set.
func PrintDebug(function, message string) {
	if logDebug != nil {
		printToLogger(*logDebug, function, message)
	}
}

// Prints the message into the terminal and the file as an information message
//
// Use when you want to display an important information.
// The prefix for information messages is 'INF'.
func PrintInfo(function, message string) {
	printToLogger(*logInfo, function, message)
}

// Prints the message into the terminal and the file as an error message
//
// Use when you want to warn that something is not happening as it should and it is important and must be corrected.
// The prefix for error messages is 'ERR'.
func PrintError(function, message string) {
	printToLogger(*logError, function, message)
}

// Prints the message into the terminal and the file as a panic message and calls panic()
//
// Use when something is not happening as it should and you want to call a panic.
// The format of the panic message is '[function] message'.
// The prefix for panic messages is 'PAN'.
func PrintPanic(function, message string) {
	printToLogger(*logPanic, function, message)
	panic(fmt.Sprintf("[%v] %v", function, message))
}

// Prints the message into the terminal and the file as a fatal message and calls os.Exit(1)
//
// Use when something is not happening as it should and you want to stop the current program immediatly.
// The prefix for fatal messages is 'FAT'.
func PrintFatal(function, message string) {
	printToLogger(*logFatal, function, message)
	os.Exit(1)
}
