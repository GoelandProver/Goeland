package global

import (
	"fmt"
	"io"
	"log"
	"os"
	"time"
)

var (
	logDebug   *log.Logger
	logInfo    *log.Logger
	logWarning *log.Logger
	logError   *log.Logger
	logPanic   *log.Logger
	logFatal   *log.Logger
)

func InitLogger() {
	initLogger(GetLogFile(), GetDebugTerminal(), GetDebugFile(), GetShowTrace())
}

/**
*  Initialises the loggers
*  -
*  Will write the logs in the file fileName and in the terminal
*  Will write the debug logs in the file fileName only if the parameter debugInFile is true
*  Will write the debug logs in the terminal only if the parameter debugInTerminal is true
*  Will write the line where the logger was called only if the parameter showTrace is true
**/
func initLogger(fileName string, debugInTerminal, debugInFile, showTrace bool) {
	f, err := os.OpenFile(fileName, os.O_RDWR|os.O_CREATE, 0666)

	if err != nil {
		log.Fatalf("Error opening log file: %v", err)
	}

	wrt := io.MultiWriter(os.Stdout, f)

	logOptions := 0
	if showTrace {
		logOptions = log.Lshortfile
	}

	debPrefix := "DEB: "

	if debugInFile {
		if debugInTerminal {
			logDebug = log.New(wrt, debPrefix, logOptions)
		} else {
			logDebug = log.New(f, debPrefix, logOptions)
		}
	} else if debugInTerminal {
		logDebug = log.New(os.Stdout, debPrefix, logOptions)
	}

	logInfo = log.New(wrt, "INF: ", logOptions)
	logWarning = log.New(wrt, "WAR: ", logOptions)
	logError = log.New(wrt, "ERR: ", logOptions)
	logPanic = log.New(wrt, "FAT: ", logOptions)
	logFatal = log.New(wrt, "PAN: ", logOptions)
}

func printToLogger(logger log.Logger, function, message string) {
	if GetDebug() {
		logger.Output(3, fmt.Sprintf("[%.6fs][%v][%v] %v\n", time.Since(start).Seconds(), GetGID(), function, message))
	} else {
		logger.Output(3, fmt.Sprintf("[%.6fs][%v] %v\n", time.Since(start).Seconds(), function, message))
	}
}

func PrintDebug(function, message string) {
	if logDebug != nil {
		printToLogger(*logDebug, function, message)
	}
}

func PrintInfo(function, message string) {
	printToLogger(*logInfo, function, message)
}

func PrintWarning(function, message string) {
	printToLogger(*logWarning, function, message)
}

func PrintError(function, message string) {
	printToLogger(*logError, function, message)
}

func PrintPanic(function, message string) {
	printToLogger(*logPanic, function, message)
	panic(fmt.Sprintf("[%v] %v", function, message))
}

func PrintFatal(function, message string) {
	printToLogger(*logFatal, function, message)
	os.Exit(1)
}
