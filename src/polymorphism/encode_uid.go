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

/*******************/
/*  encode_uid.go  */
/*******************/

package polymorphism

/**
 * This file declares utilities functions to calculate the uid of a type scheme.
 * Unique identifiers are needed to quickly verify if a typescheme is equal to another.
 **/

const (
	ETypeHint = iota
	ETypeCross = iota
	ETypeArrow = iota
)

/* Encodes the type wanted. On error, returns 0. */
func encode(uids []uint64, typeEncoded int) uint64 {
	tmp := append(uids[:0:0], uids...)
	switch (typeEncoded) {
	case ETypeHint, ETypeCross:
		return encodeInt(int64(encodeList(tmp)))
	case ETypeArrow :
		return encodeInt(-int64(encodeList(tmp)))
	}
	return 0
}

/* Encodes a list of identifiers to a new unique identifier. */
func encodeList(uids []uint64) uint64 {
	res := encodePair(0, uids[0])
	for i := 1; i < len(uids); i++ {
		res = encodePair(res, uids[i])
	}
	return res
}

/* Encodes a pair following Szudzik's function. */
func encodePair(x uint64, y uint64) uint64 {
	if y > x {
		return y*y + x 
	} else {
		return x*x + x + y
	}
}

/* Encodes an integer to a natural number. */
func encodeInt(x int64) uint64 {
	if x >= 0 {
		return 2*uint64(x)
	} else {
		return 2*uint64(-x) - 1
	}
}