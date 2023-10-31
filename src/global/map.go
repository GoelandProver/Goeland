package global

import "sync"

type ComparableMap[T Comparable, U any] struct {
	keys   []T
	values []U
}

func (cm *ComparableMap[T, U]) Get(otherKey T) U {
	for i, key := range cm.keys {
		if key.Equals(otherKey) {
			return cm.values[i]
		}
	}
	var zero U
	return zero
}

func (cm *ComparableMap[T, U]) GetExists(otherKey T) (U, bool) {
	for i, key := range cm.keys {
		if key.Equals(otherKey) {
			return cm.values[i], true
		}
	}
	var zero U
	return zero, false
}

func (cm *ComparableMap[T, U]) Exists(otherKey T) bool {
	_, result := cm.GetExists(otherKey)
	return result
}

func (cm *ComparableMap[T, U]) Set(otherKey T, otherValue U) {
	for i, key := range cm.keys {
		if key.Equals(otherKey) {
			cm.values[i] = otherValue
			return
		}
	}

	cm.keys = append(cm.keys, otherKey)
	cm.values = append(cm.values, otherValue)
}

func (cm *ComparableMap[T, U]) Length() int {
	return len(cm.keys)
}

func (cm *ComparableMap[T, U]) Clear() {
	cm.keys = []T{}
	cm.values = []U{}
}

func (cm *ComparableMap[T, U]) Clone() *ComparableMap[T, U] {
	newCm := new(ComparableMap[T, U])
	newCm.keys = append(newCm.keys, cm.keys...)
	newCm.values = append(newCm.values, cm.values...)
	return newCm
}

func (cm *ComparableMap[T, U]) CopyInto(other *ComparableMap[T, U]) {
	for i := range cm.keys {
		other.Set(cm.keys[i], cm.values[i])
	}
}

func (cm *ComparableMap[T, U]) Keys() []T {
	return cm.keys
}

func (cm *ComparableMap[T, U]) Values() []U {
	return cm.values
}

type SyncComparableMap[T Comparable, U any] struct {
	ComparableMap[T, U]
	mutex sync.RWMutex
}

func (cm *SyncComparableMap[T, U]) Get(otherKey T) U {
	cm.mutex.RLock()
	defer cm.mutex.RUnlock()

	return cm.ComparableMap.Get(otherKey)
}

func (cm *SyncComparableMap[T, U]) GetExists(otherKey T) (U, bool) {
	cm.mutex.RLock()
	defer cm.mutex.RUnlock()

	return cm.ComparableMap.GetExists(otherKey)
}

func (cm *SyncComparableMap[T, U]) Exists(otherKey T) bool {
	cm.mutex.RLock()
	defer cm.mutex.RUnlock()

	return cm.ComparableMap.Exists(otherKey)
}

func (cm *SyncComparableMap[T, U]) Set(otherKey T, otherValue U) {
	cm.mutex.Lock()
	defer cm.mutex.Unlock()

	cm.ComparableMap.Set(otherKey, otherValue)
}

func (cm *SyncComparableMap[T, U]) Length() int {
	cm.mutex.RLock()
	defer cm.mutex.RUnlock()

	return cm.ComparableMap.Length()
}

func (cm *SyncComparableMap[T, U]) Clear() {
	cm.mutex.Lock()
	defer cm.mutex.Unlock()

	cm.ComparableMap.Clear()
}

func (cm *SyncComparableMap[T, U]) Clone() *ComparableMap[T, U] {
	cm.mutex.RLock()
	defer cm.mutex.RUnlock()

	return cm.ComparableMap.Clone()
}

func (cm *SyncComparableMap[T, U]) CopyInto(other *ComparableMap[T, U]) {
	cm.mutex.Lock()
	defer cm.mutex.Unlock()

	cm.ComparableMap.CopyInto(other)
}

func (cm *SyncComparableMap[T, U]) Keys() []T {
	cm.mutex.RLock()
	defer cm.mutex.RUnlock()

	return cm.ComparableMap.Keys()
}

func (cm *SyncComparableMap[T, U]) Values() []U {
	cm.mutex.RLock()
	defer cm.mutex.RUnlock()

	return cm.ComparableMap.Values()
}
