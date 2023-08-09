package lambdapi

import btps "github.com/GoelandProver/Goeland/types/basic-types"

type DecoratedAll struct {
	btps.All
}

func MakeDecoratedAll(all btps.All) DecoratedAll {
	if typed, ok := all.Copy().(btps.All); ok {
		all = typed
	}
	decorated := DecoratedAll{all}
	decorated.MappedString.MappableString = decorated
	return decorated
}

func decorateForm(form btps.MappableString) btps.MappableString {
	switch typed := form.(type) {
	case btps.All:
		return MakeDecoratedAll(typed)
	default:
		return typed
	}
}
