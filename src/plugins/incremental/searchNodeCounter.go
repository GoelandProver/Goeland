package incremental

import (
	"github.com/GoelandProver/Goeland/global"
)

type SearchNodeCounter struct {
	global.SyncCounter
	channel chan bool
}

var searchNodeCounter SearchNodeCounter

func init() {
	ch := make(chan bool)
	WhenFinished := func() {
		ch <- true
	}

	searchNodeCounter = SearchNodeCounter{*global.NewSyncCounter(WhenFinished), ch}
}
