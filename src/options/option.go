package options

import (
	"flag"
)

type optionable interface {
	isValueDefault() bool
	doFunctions()
}

var options []optionable

type option[T comparable] struct {
	value          *T
	defaultValue   T
	funcNotDefault func(T)
	funcAlways     func(T)
}

func (op *option[T]) initOption(defaultValue T, funcNotDefault func(T), funcAlways func(T)) {
	op.defaultValue = defaultValue
	op.funcNotDefault = funcNotDefault
	op.funcAlways = funcAlways

	addOption(op)
}

func (op *option[T]) isValueDefault() bool {
	return *op.value != op.defaultValue
}

func (op *option[T]) doFunctions() {
	op.funcAlways(*op.value)

	if op.isValueDefault() {
		op.funcNotDefault(*op.value)
	}
}

func (op *option[T]) init(name string, defaultValue T, usage string, funcNotDefault func(T), funcAlways func(T)) {
	op.initOption(defaultValue, funcNotDefault, funcAlways)

	switch any(defaultValue).(type) {
	case bool:
		op.value = any(flag.Bool(name, any(defaultValue).(bool), usage)).(*T)
	case int:
		op.value = any(flag.Int(usage, any(defaultValue).(int), usage)).(*T)
	case string:
		op.value = any(flag.String(usage, any(defaultValue).(string), usage)).(*T)
	}
}

func addOption(op optionable) {
	options = append(options, op)
}
