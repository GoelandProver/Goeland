package incremental

import (
	"strings"

	"github.com/GoelandProver/Goeland/AST"
)

type SubList []*Sub

func (sl SubList) Append(others ...*Sub) SubList {
	return append(sl, others...)
}

func (sl SubList) AppendIfNotContains(others ...*Sub) SubList {
	for _, other := range others {
		if !sl.Contains(other) {
			sl = sl.Append(other)
		}
	}

	return sl
}

func (sl SubList) Contains(other *Sub) bool {
	for _, element := range sl {
		if element.Equals(other) {
			return true
		}
	}

	return false
}

func (sl SubList) Equals(other *SubList) bool {
	if len(sl) == len(*other) {
		return true
	}

	for _, element := range sl {
		if !other.Contains(element) {
			return false
		}
	}

	return true
}

func (sl SubList) ToString() string {
	elements := []string{}

	for _, sub := range sl {
		elements = append(elements, sub.ToString())
	}

	return "[" + strings.Join(elements, "; ") + "]"
}

func (sl SubList) InstanciateAny() SubList {
	someTerm := anyTerm

	for _, subs := range sl {
		for _, ss := range subs.everySub {
			if !ss.isAnyTerm() {
				someTerm = ss.term.term
			}
		}
	}

	return sl.replaceThisByThat(anyTerm, someTerm)
}

func (sl SubList) replaceThisByThat(this AST.Term, that AST.Term) SubList {
	newSubList := SubList{}

	for _, subs := range sl {
		newSubList = append(newSubList, subs.replaceThisByThat(this, that))
	}

	return newSubList
}
