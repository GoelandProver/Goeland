package global

import (
	"fmt"
	"io"
	"log"
	"os"
	"time"
)

var (
	LogDebug   *log.Logger
	LogInfo    *log.Logger
	LogWarning *log.Logger
	LogError   *log.Logger
)

/**
*  Initialises the loggers
*  -
*  Will write the logs in the file fileName and in the terminal
*  Will write the debug logs in the file fileName only if the parameter debugInFile is true
*  Will write the debug logs in the terminal only if the parameter debugInTerminal is true
*  Will write the line where the logger was called only if the parameter showTrace is true
**/
func InitLogger(fileName string, debugInTerminal, debugInFile, showTrace bool) {
	f, err := os.OpenFile(fileName, os.O_RDWR|os.O_CREATE|os.O_APPEND, 0666)

	if err != nil {
		log.Fatalf("error opening file: %v", err)
	}

	defer f.Close()

	wrt := io.MultiWriter(os.Stdout, f)

	logOptions := 0
	if showTrace {
		logOptions = log.Lshortfile
	}

	debPrefix := "DEB: "

	if debugInFile {
		if debugInTerminal {
			LogDebug = log.New(wrt, debPrefix, logOptions)
		} else {
			LogDebug = log.New(f, debPrefix, logOptions)
		}
	} else if debugInTerminal {
		LogDebug = log.New(os.Stdout, debPrefix, logOptions)
	}

	LogInfo = log.New(wrt, "INF: ", logOptions)
	LogWarning = log.New(wrt, "WAR: ", logOptions)
	LogError = log.New(wrt, "ERR: ", logOptions)
}

func printToLogger(logger log.Logger, function, message string) {
	logger.Output(3, fmt.Sprintf("[%.6fs][%v] %v\n", time.Since(start).Seconds(), function, message))
}

func PrintDebug(function, message string) {
	if LogDebug != nil {
		printToLogger(*LogDebug, function, message)
	}
}

func PrintInfo(function, message string) {
	printToLogger(*LogInfo, function, message)
}

func PrintWarning(function, message string) {
	printToLogger(*LogWarning, function, message)
}

func PrintError(function, message string) {
	printToLogger(*LogError, function, message)
}
