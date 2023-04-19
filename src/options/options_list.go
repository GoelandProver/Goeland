package options

import (
	"flag"
)

func RunOptions() {
	initOptions()
	flag.Parse()

	for _, op := range options {
		op.doFunctions()
	}
}

func initOptions() {

}
