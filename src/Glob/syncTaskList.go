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

package Glob

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
