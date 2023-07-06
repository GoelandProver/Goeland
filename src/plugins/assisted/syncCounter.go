package assisted

import (
	"fmt"
	"sync"

	"github.com/GoelandProver/Goeland/global"
)

var Counter SyncCounter

type SyncCounter struct {
	cpt   int
	mutex sync.Mutex
}

func (sc *SyncCounter) Increase() {
	sc.mutex.Lock()
	defer sc.mutex.Unlock()
	sc.cpt++
	global.PrintDebug("CPT", fmt.Sprintf("++ : %d", sc.cpt))
}

func (sc *SyncCounter) decrease() {
	sc.mutex.Lock()
	defer sc.mutex.Unlock()
	sc.cpt--
	global.PrintDebug("CPT", fmt.Sprintf("-- : %d", sc.cpt))
	if sc.cpt == 0 {
		nextStep <- true
	}
}
