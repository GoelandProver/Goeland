package global

/*
This is a useful counter that executes a given function when the counter gets to 0.

The SyncCounter can be used concurrently without issue. Although care should be taken when incrementing and decrementing, as the counter will execute the given function any time Decrement() is called and the counter is equals to 0 after.
*/
type SyncCounter struct {
	SyncTaskList

	counter int

	WhenFinished func()
}

func NewEmptySyncCounter() *SyncCounter {
	return new(SyncCounter)
}

func NewSyncCounter(WhenFinished func()) *SyncCounter {
	sc := new(SyncCounter)
	sc.WhenFinished = WhenFinished
	return sc
}

func (sc *SyncCounter) increment() {
	sc.counter++
}

func (sc *SyncCounter) decrement() {
	sc.counter--

	if sc.counter == 0 {
		sc.WhenFinished()
	}
}

func (sc *SyncCounter) Increment() {
	sc.AddTask(sc.increment)
}

func (sc *SyncCounter) Decrement() {
	sc.AddTask(sc.decrement)
}

func (sc *SyncCounter) Empty() {
	sc.counter = 0
}

func (sc *SyncCounter) SetWhenFinished(whenFinished func()) {
	sc.WhenFinished = whenFinished
}

func (sc *SyncCounter) Value() int {
	return sc.counter
}
