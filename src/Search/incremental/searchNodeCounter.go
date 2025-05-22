package incremental

import (
	"github.com/GoelandProver/Goeland/Glob"
)

type SearchNodeCounter struct {
	Glob.SyncCounter
	channel chan bool
}

var searchNodeCounter SearchNodeCounter

func init() {
	ch := make(chan bool)
	WhenFinished := func() {
		ch <- true
	}

	searchNodeCounter = SearchNodeCounter{*Glob.NewSyncCounter(WhenFinished), ch}
}
