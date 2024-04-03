package incremental

import (
	treetypes "github.com/GoelandProver/Goeland/code-trees/tree-types"
	basictypes "github.com/GoelandProver/Goeland/types/basic-types"
)

var anyTerm basictypes.Term = nil

type TermWrapper struct {
	term basictypes.Term
}

func (tw *TermWrapper) Equals(other *TermWrapper) bool {
	return (tw.term == anyTerm && other.term == anyTerm) || (tw.term != anyTerm && other.term != anyTerm && tw.term.Equals(other.term))
}

type SingleSub struct {
	meta *basictypes.Meta
	term *TermWrapper
}

func (ss *SingleSub) getMeta() *basictypes.Meta {
	return ss.meta
}

func (ss *SingleSub) getTerm() basictypes.Term {
	return ss.term.term
}

func (ss *SingleSub) isAnyTerm() bool {
	return ss.term.term == anyTerm
}

func (ss *SingleSub) Equals(other *SingleSub) bool {
	return ss.meta.Equals(*other.meta) && ss.term.Equals(other.term)
}

func (ss *SingleSub) ToString() string {
	termName := "any"
	if !ss.isAnyTerm() {
		termName = ss.term.term.ToString()
	}
	return ss.meta.ToString() + "->" + termName
}

var SubJoker *Sub = NewEmptySub()

type Sub struct {
	everySub []*SingleSub
}

func NewEmptySub() *Sub {
	return &Sub{[]*SingleSub{}}
}

func NewFromOldSub(oldSubs treetypes.MatchingSubstitutions) *Sub {
	newSub := NewEmptySub()

	for _, oldSub := range oldSubs.GetSubst() {
		meta := oldSub.Key()
		term := oldSub.Value()
		newSub.everySub = append(newSub.everySub, &SingleSub{&meta, &TermWrapper{term}})
	}

	return newSub
}

func (s *Sub) IsEmpty() bool {
	return len(s.everySub) == 0
}

func (s *Sub) containsMeta(meta *basictypes.Meta) (contains bool, which *SingleSub) {
	for _, ss := range s.everySub {
		if ss.getMeta().Equals(*meta) {
			return true, ss
		}
	}

	return false, nil
}

func (s *Sub) buildCompatibleWith(other *Sub) (intersection *Sub, compatible bool) {
	if s == SubJoker {
		return other.Copy(), true
	} else if other == SubJoker {
		return s.Copy(), true
	}

	newSub := NewEmptySub()

	if !s.isCompatibleWith(other) {
		return newSub, false
	}

	for _, single := range s.everySub {
		if single.isAnyTerm() {
			if contains, otherSingle := other.containsMeta(single.getMeta()); contains {
				newSub.everySub = append(newSub.everySub, otherSingle)
			} else {
				newSub.everySub = append(newSub.everySub, single)
			}
		} else {
			newSub.everySub = append(newSub.everySub, single)
		}
	}

	for _, otherSingle := range other.everySub {
		if contains, _ := s.containsMeta(otherSingle.getMeta()); !contains {
			newSub.everySub = append(newSub.everySub, otherSingle)
		}
	}

	return newSub, true
}

func (s *Sub) isCompatibleWith(other *Sub) bool {
	if s == SubJoker || other == SubJoker {
		return true
	}

	for _, ss := range s.everySub {
		if contains, rightSs := other.containsMeta(ss.getMeta()); contains {
			if !(rightSs.isAnyTerm() || ss.isAnyTerm() || rightSs.getTerm().Equals(ss.getTerm())) {
				return false
			}
		}
	}

	return true
}

func (s *Sub) Copy() *Sub {
	return &Sub{append([]*SingleSub{}, s.everySub...)}
}

func (s *Sub) Equals(other *Sub) bool {
	if len(s.everySub) != len(other.everySub) {
		return false
	}

	for _, ss := range s.everySub {
		found := false

		for _, otherSs := range other.everySub {
			if ss.Equals(otherSs) {
				found = true
			}
		}

		if !found {
			return false
		}
	}

	return true
}

func (s *Sub) ToString() string {
	if s == SubJoker {
		return "[* -> *]"
	}

	str := "["

	for _, ss := range s.everySub {
		str += ss.ToString() + "; "
	}

	if len(s.everySub) > 0 {
		str = str[:len(str)-2]
	}

	return str + "]"
}

func (s *Sub) AddSingleSub(ss *SingleSub) {
	s.everySub = append(s.everySub, ss)
}

func (s *Sub) AddMetaAndTerm(meta basictypes.Meta, term basictypes.Term) {
	s.AddSingleSub(&SingleSub{&meta, &TermWrapper{term}})
}

func (s *Sub) AddOtherSub(other *Sub) {
	for _, ss := range other.everySub {
		s.AddSingleSub(ss)
	}
}

func (s *Sub) GetAsMetasAndTerms() (metas *basictypes.MetaList, terms *basictypes.TermList) {
	for _, ss := range s.everySub {
		metas.Append(*ss.getMeta())

		if ss.isAnyTerm() {
			terms.Append(*ss.getMeta())
		} else {
			terms.Append(ss.getTerm())
		}
	}

	return metas, terms
}

func (s *Sub) replaceThisByThat(this basictypes.Term, that basictypes.Term) *Sub {
	newSubs := s.Copy()

	for _, ss := range newSubs.everySub {
		if ss.isAnyTerm() && this == anyTerm {
			ss.term.term = that
		} else if ss.term.term.Equals(this) {
			ss.term.term = that
		}
	}

	return newSubs
}

func getCompatibleBetween(first SubList, second SubList) SubList {
	compatibles := SubList{}

	for _, firstSub := range first {
		for _, secondSub := range second {
			if inter, compatible := firstSub.buildCompatibleWith(secondSub); compatible {
				compatibles = compatibles.AppendIfNotContains(inter)
			}
		}
	}

	return compatibles
}

func addMissingMetas(compatibles SubList, metas *basictypes.MetaList) SubList {
	if metas.Len() == 0 || len(compatibles) == 0 {
		return compatibles
	}

	for _, subs := range compatibles {
		metasInSubs, _ := subs.GetAsMetasAndTerms()
		for _, meta := range metasInSubs.Slice() {
			metas.AppendIfNotContains(meta)
		}
	}

	newCompatibles := SubList{}

	for _, subs := range compatibles {
		newSubs := subs.Copy()

		for _, meta := range metas.Slice() {
			if ok, _ := subs.containsMeta(&meta); !ok {
				newSubs.AddMetaAndTerm(meta, anyTerm)
			}
		}

		newCompatibles = newCompatibles.AppendIfNotContains(newSubs)
	}

	return newCompatibles
}
