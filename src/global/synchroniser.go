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
package global

import "sync"

/*
Use this struct as a promoted pointer field to make your struct easily synchronisable with a mutex
(see the Map struct as an example).
Calling the function MakeIntoSyncable to your struct will make it synchronised.
You should use the methods DoAtStart and DoAtEnd on each of the methods of your struct that
you want to be synchronised with a mutex.
*/
type Synchroniser struct {
	doAtStart func()
	doAtEnd   func()
}

func NewSynchroniser() *Synchroniser {
	return &Synchroniser{func() {}, func() {}}
}

func (sync *Synchroniser) DoAtStart() {
	sync.doAtStart()
}

func (sync *Synchroniser) DoAtEnd() {
	sync.doAtEnd()
}

func (sync *RWSynchroniser) SetFuncs(start, end func()) {
	sync.doAtStart = start
	sync.doAtEnd = end
}

/*
This interface is used for the MakeIntoSyncable function. See the Synchroniser struct for more details.
*/
type Syncable interface {
	DoAtStart()
	DoAtEnd()
	SetFuncs(func(), func())
}

/*
Using this function will make the struct passed as argument into a synchronised struct. See the Synchroniser struct for more details.
*/
func MakeIntoSyncable(obj Syncable) {
	mutex := sync.Mutex{}
	obj.SetFuncs(mutex.Lock, mutex.Unlock)
}

/*
Use this struct as a promoted pointer field to make your struct easily synchronisable with a RWMutex
(see the Map struct as an example).
Calling the function MakeIntoSyncableRW to your struct will make it synchronised.
You should use the methods DoAtStart and DoAtEnd on each of the methods of your struct that
you want to be synchronised with the writing par of the mutex and use DoAtStartR and DoAtEndR
for the reading part of the mutex.
*/
type RWSynchroniser struct {
	*Synchroniser
	doAtStartR func()
	doAtEndR   func()
}

func NewRWSynchroniser() *RWSynchroniser {
	return &RWSynchroniser{NewSynchroniser(), func() {}, func() {}}
}

func (rwSync *RWSynchroniser) DoAtStartR() {
	rwSync.doAtStartR()
}

func (rwSync *RWSynchroniser) DoAtEndR() {
	rwSync.doAtEndR()
}

func (rwSync *RWSynchroniser) SetRFuncs(start, end func()) {
	rwSync.doAtStartR = start
	rwSync.doAtEndR = end
}

/*
This interface is used for the MakeIntoSyncableRW function. See the RWSynchroniser struct for more details.
*/
type RWSyncable interface {
	Syncable
	DoAtStartR()
	DoAtEndR()
	SetRFuncs(func(), func())
}

/*
Using this function will make the struct passed as argument into a synchronised struct. See the RWSynchroniser struct for more details.
*/
func MakeIntoSyncableRW(obj RWSyncable) {
	mutex := sync.RWMutex{}
	obj.SetFuncs(mutex.Lock, mutex.Unlock)
	obj.SetRFuncs(mutex.RLock, mutex.RUnlock)
}
