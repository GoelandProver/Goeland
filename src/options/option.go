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

/*************/
/* option.go */
/*************/

/**
* This file defines the structure for options
**/

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
		op.value = any(flag.Int(name, any(defaultValue).(int), usage)).(*T)
	case string:
		op.value = any(flag.String(name, any(defaultValue).(string), usage)).(*T)
	}
}

func addOption(op optionable) {
	options = append(options, op)
}
