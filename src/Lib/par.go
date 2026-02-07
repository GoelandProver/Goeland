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

/**
 * This file provides a generic interface to launch goroutines on functions,
 * collect their result and compute a final value.
 * The computation of the final value is done incrementally at the answer of each child,
 * consequently, the function taking care of reconciliating the output of two children
 * should be associative, commutative, and have a neutral.
 **/

package Lib

import (
	"fmt"
	"reflect"
)

func GenericParallel[T any](
	calls []func(chan T),
	reconciliation func(T, T) T,
	neutral T,
) (T, error) {
	channels := make([](chan T), len(calls))
	for i, call := range calls {
		call_chan := make(chan T)
		channels[i] = call_chan
		go call(call_chan)
	}
	return genericSelect(channels, reconciliation, neutral)
}

func genericSelect[T any](
	channels [](chan T),
	reconciliation func(T, T) T,
	neutral T,
) (T, error) {
	remaining := len(channels)
	res := neutral
	cases := make([]reflect.SelectCase, len(channels))
	for i, channel := range channels {
		cases[i] = reflect.SelectCase{Dir: reflect.SelectRecv, Chan: reflect.ValueOf(channel)}
	}

	for remaining > 0 {
		_, value, _ := reflect.Select(cases)
		remaining--

		if v, ok := value.Interface().(T); ok {
			res = reconciliation(res, v)
		} else {
			return neutral, fmt.Errorf("Error in Lib.Par: channel has not answered a value of the right type.")
		}
	}

	return res, nil
}
