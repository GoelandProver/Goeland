package arithmetic

import (
	"math"
	"strconv"
)

type Integer int

func (i Integer) ToString() string {
	return strconv.Itoa(int(i))
}

func (i Integer) Equals(other any) bool {
	if typed, ok := other.(Integer); ok {
		return int(i) == int(typed)
	}
	return false
}

func (i Integer) Copy() Form {
	return i
}

func (i Integer) getFactorMap() map[string]float64 {
	return make(map[string]float64)
}

func (i Integer) Evaluate() float64 {
	return float64(i)
}

func (i Integer) Sum(other Numeric) Numeric {
	switch typed := other.(type) {
	case Integer:
		return Integer(i + typed)
	default:
		PanicOperation("Integer")
		return nil
	}
}

func (i Integer) Diff(other Numeric) Numeric {
	switch typed := other.(type) {
	case Integer:
		return Integer(i - typed)
	default:
		PanicOperation("Integer")
		return nil
	}
}

func (i Integer) Mult(other Numeric) Numeric {
	switch typed := other.(type) {
	case Integer:
		return Integer(i * typed)
	default:
		PanicOperation("Integer")
		return nil
	}
}

func (i Integer) Div(other Numeric) Numeric {
	switch typed := other.(type) {
	case Integer:
		return Integer(i / typed)
	default:
		PanicOperation("Integer")
		return nil
	}
}

func (i Integer) Mod(other Numeric) Numeric {
	switch typed := other.(type) {
	case Integer:
		return Integer(i % typed)
	default:
		PanicOperation("Integer")
		return nil
	}
}

func (i Integer) Neg() Numeric {
	return Integer(-i)
}

func (i Integer) Floor() Numeric {
	return Integer(math.Floor(float64(i)))
}

func (i Integer) Ceil() Numeric {
	return Integer(math.Ceil(float64(i)))
}

func (i Integer) Trunc() Numeric {
	return Integer(math.Trunc(float64(i)))
}

func (i Integer) Round() Numeric {
	return Integer(math.RoundToEven(float64(i)))
}

func (i Integer) Eq(other Numeric) bool {
	switch typed := other.(type) {
	case Integer:
		return int(i) == int(typed)
	default:
		PanicOperation("Integer")
		return false
	}
}

func (i Integer) Gr(other Numeric) bool {
	switch typed := other.(type) {
	case Integer:
		return int(i) > int(typed)
	default:
		PanicOperation("Integer")
		return false
	}
}

func (i Integer) Geq(other Numeric) bool {
	switch typed := other.(type) {
	case Integer:
		return int(i) >= int(typed)
	default:
		PanicOperation("Integer")
		return false
	}
}

func (i Integer) Le(other Numeric) bool {
	switch typed := other.(type) {
	case Integer:
		return int(i) < int(typed)
	default:
		PanicOperation("Integer")
		return false
	}
}

func (i Integer) Leq(other Numeric) bool {
	switch typed := other.(type) {
	case Integer:
		return int(i) <= int(typed)
	default:
		PanicOperation("Integer")
		return false
	}
}

func (i Integer) Neq(other Numeric) bool {
	switch typed := other.(type) {
	case Integer:
		return int(i) != int(typed)
	default:
		PanicOperation("Integer")
		return false
	}
}
