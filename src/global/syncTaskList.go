package global

import (
	"sync"
)

/*
This is a useful task manager that will execute tasks one by one in the same goroutine.

It is safe to try to add another task as part of a task.
*/
type SyncTaskList struct {
	mutex sync.Mutex
	tasks []func()
}

func (stl *SyncTaskList) AddTask(task func()) {
	stl.mutex.Lock()
	if len(stl.tasks) == 0 {
		defer stl.doTasks()
	}
	defer stl.mutex.Unlock()

	stl.tasks = append(stl.tasks, task)
}

func (stl *SyncTaskList) doTasks() {
	stl.mutex.Lock()
	defer stl.mutex.Unlock()

	for len(stl.tasks) > 0 {
		firstTask := stl.getFirstTask()
		stl.mutex.Unlock()
		firstTask()
		stl.mutex.Lock()
	}
}

func (stl *SyncTaskList) getFirstTask() func() {
	current := stl.tasks[0]
	stl.tasks = stl.tasks[1:]

	return current
}
