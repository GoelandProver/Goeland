package incremental

import (
	"fmt"

	"github.com/GoelandProver/Goeland/AST"
	"github.com/GoelandProver/Goeland/Core"
	"github.com/GoelandProver/Goeland/Glob"
	"github.com/GoelandProver/Goeland/Lib"
)

var RuleStringMap map[string]string = map[string]string{
	"ALPHA":   "α",
	"BETA":    "β",
	"GAMMA":   "γ",
	"DELTA":   "δ",
	"NOT":     "¬",
	"AND":     "∧",
	"OR":      "∨",
	"IMPLY":   "⇒",
	"EQUIV":   "⇔",
	"FORALL":  "∀",
	"EXISTS":  "∃",
	"CLOSURE": "⊙",
}

type Rule interface {
	apply() []RuleList
	GetForm() AST.Form
	GetTerms() Lib.List[AST.Term]
	ToFormula() Core.FormAndTerms
	Equals(any) bool
	GetRuleStrings() (string, string)
}

type AnyRule struct {
	formula AST.Form
	terms   Lib.List[AST.Term]

	//formString string

	FullString []string
}

func (ar *AnyRule) GetForm() AST.Form {
	return ar.formula
}

func (ar *AnyRule) GetTerms() Lib.List[AST.Term] {
	return ar.terms
}

func (ar *AnyRule) ToFormula() Core.FormAndTerms {
	return Core.MakeFormAndTerm(ar.GetForm(), ar.GetTerms())
}

func (ar *AnyRule) Equals(other any) bool {
	oth, isRule := other.(Rule)
	return isRule &&
		Lib.ListEquals(ar.GetTerms(), oth.GetTerms()) &&
		ar.GetForm().Equals(oth.GetForm())
}

func (ar *AnyRule) GetRuleStrings() (full string, simple string) {
	full = ""
	simple = ""

	for _, el := range ar.FullString {
		full += el + "_"
		simple += RuleStringMap[el]
	}

	return full[:len(full)-1], simple
}

func makeCorrectRule(formula AST.Form, terms Lib.List[AST.Term]) Rule {
	any := AnyRule{formula: formula, terms: terms}
	//any := AnyRule{formula: formula, terms: terms, formString: formula.ToString()}

	switch typedFormula := formula.(type) {
	case AST.Pred:
		any.FullString = []string{"CLOSURE"}
		return &Pred{any}
	case AST.Top:
		any.FullString = []string{"CLOSURE"}
		return &Top{any}
	case AST.Bot:
		any.FullString = []string{"CLOSURE"}
		return &Bot{any}
	case AST.And:
		any.FullString = []string{"ALPHA", "AND"}
		return &AlphaAnd{any}
	case AST.Or:
		any.FullString = []string{"BETA", "OR"}
		return &BetaOr{any}
	case AST.Imp:
		any.FullString = []string{"BETA", "IMPLY"}
		return &BetaImp{any}
	case AST.Equ:
		any.FullString = []string{"BETA", "EQUIV"}
		return &BetaEqu{any}
	case AST.All:
		any.FullString = []string{"GAMMA", "FORALL"}
		return &GammaForall{AnyRule: any}
	case AST.Ex:
		any.FullString = []string{"DELTA", "EXISTS"}
		return &DeltaExists{any}
	case AST.Not:
		switch typedFormula.GetForm().(type) {
		case AST.Pred:
			any.FullString = []string{"CLOSURE"}
			return &NotPred{any}
		case AST.Top:
			any.FullString = []string{"CLOSURE"}
			return &NotTop{any}
		case AST.Bot:
			any.FullString = []string{"CLOSURE"}
			return &NotBot{any}
		case AST.Not:
			any.FullString = []string{"ALPHA", "NOT", "NOT"}
			return &AlphaNotNot{any}
		case AST.And:
			any.FullString = []string{"BETA", "NOT", "AND"}
			return &BetaNotAnd{any}
		case AST.Or:
			any.FullString = []string{"ALPHA", "NOT", "OR"}
			return &AlphaNotOr{any}
		case AST.Imp:
			any.FullString = []string{"ALPHA", "NOT", "IMPLY"}
			return &AlphaNotImp{any}
		case AST.Equ:
			any.FullString = []string{"BETA", "NOT", "EQUIV"}
			return &BetaNotEqu{any}
		case AST.All:
			any.FullString = []string{"DELTA", "NOT", "FORALL"}
			return &DeltaNotForall{any}
		case AST.Ex:
			any.FullString = []string{"GAMMA", "NOT", "EXISTS"}
			return &GammaNotExists{AnyRule: any}
		default:
			Glob.PrintError("RULES", "Could not find the type of the formula")
			return nil
		}
	default:
		Glob.PrintError("RULES", "Could not find the type of the formula")
		return nil
	}
}

type Closure struct {
	AnyRule
}

func (c *Closure) apply() []RuleList { return []RuleList{{c}} }

func (c *Closure) GetRuleStrings() (full string, simple string) {
	return "CLOSURE", RuleStringMap["CLOSURE"]
}

type Pred struct {
	AnyRule
}

func (p *Pred) apply() []RuleList { return []RuleList{{p}} }

type NotPred struct {
	AnyRule
}

func (np *NotPred) apply() []RuleList { return []RuleList{{np}} }

type Top struct {
	AnyRule
}

func (t *Top) apply() []RuleList { return []RuleList{{t}} }

type NotTop struct {
	AnyRule
}

func (nt *NotTop) apply() []RuleList { return []RuleList{{nt}} }

type Bot struct {
	AnyRule
}

func (b *Bot) apply() []RuleList { return []RuleList{{b}} }

type NotBot struct {
	AnyRule
}

func (nb *NotBot) apply() []RuleList { return []RuleList{{nb}} }

type AlphaAnd struct {
	AnyRule
}

func (aa *AlphaAnd) apply() []RuleList {
	resultRules := RuleList{}
	Glob.PrintDebug("SRCH", Lib.MkLazy(func() string { return "Applying " + fmt.Sprint(aa.FullString) }))

	switch form := aa.GetForm().(type) {
	case AST.And:
		for _, subForm := range form.GetChildFormulas().GetSlice() {
			resultRules = append(resultRules, makeCorrectRule(subForm, aa.GetTerms()))
		}
	}

	return []RuleList{resultRules}
}

type AlphaNotNot struct {
	AnyRule
}

func (ann *AlphaNotNot) apply() []RuleList {
	resultRules := RuleList{}
	Glob.PrintDebug("SRCH", Lib.MkLazy(func() string { return "Applying " + fmt.Sprint(ann.FullString) }))

	switch form := ann.GetForm().(type) {
	case AST.Not:
		switch subForm := form.GetForm().(type) {
		case AST.Not:
			resultRules = append(resultRules, makeCorrectRule(subForm.GetForm(), ann.GetTerms()))
		}
	}

	return []RuleList{resultRules}
}

type AlphaNotOr struct {
	AnyRule
}

func (ano *AlphaNotOr) apply() []RuleList {
	resultRules := RuleList{}
	Glob.PrintDebug("SRCH", Lib.MkLazy(func() string { return "Applying " + fmt.Sprint(ano.FullString) }))

	switch form := ano.GetForm().(type) {
	case AST.Not:
		switch subForm := form.GetForm().(type) {
		case AST.Or:
			for _, subForm := range subForm.GetChildFormulas().GetSlice() {
				resultRules = append(resultRules, makeCorrectRule(AST.MakerNot(subForm), ano.GetTerms()))
			}
		}
	}

	return []RuleList{resultRules}
}

type AlphaNotImp struct {
	AnyRule
}

func (ani *AlphaNotImp) apply() []RuleList {
	resultRules := RuleList{}
	Glob.PrintDebug("SRCH", Lib.MkLazy(func() string { return "Applying " + fmt.Sprint(ani.FullString) }))

	switch form := ani.GetForm().(type) {
	case AST.Not:
		switch subForm := form.GetForm().(type) {
		case AST.Imp:
			resultRules = append(resultRules, makeCorrectRule(subForm.GetF1(), ani.GetTerms()))
			resultRules = append(resultRules, makeCorrectRule(AST.MakerNot(subForm.GetF2()), ani.GetTerms()))
		}
	}

	return []RuleList{resultRules}
}

type BetaNotAnd struct {
	AnyRule
}

func (bna *BetaNotAnd) apply() []RuleList {
	resultRulesBeta := []RuleList{}
	Glob.PrintDebug("SRCH", Lib.MkLazy(func() string { return "Applying " + fmt.Sprint(bna.FullString) }))

	switch form := bna.GetForm().(type) {
	case AST.Not:
		switch subForm := form.GetForm().(type) {
		case AST.And:
			for _, andForm := range subForm.GetChildFormulas().GetSlice() {
				resultRulesBeta = append(resultRulesBeta, RuleList{makeCorrectRule(AST.MakerNot(andForm), bna.GetTerms())})
			}
		}
	}

	return resultRulesBeta
}

type BetaNotEqu struct {
	AnyRule
}

func (bne *BetaNotEqu) apply() []RuleList {
	resultRules1 := RuleList{}
	resultRules2 := RuleList{}
	Glob.PrintDebug("SRCH", Lib.MkLazy(func() string { return "Applying " + fmt.Sprint(bne.FullString) }))

	switch form := bne.GetForm().(type) {
	case AST.Not:
		switch subForm := form.GetForm().(type) {
		case AST.Equ:
			resultRules1 = append(resultRules1, makeCorrectRule(AST.MakerNot(subForm.GetF1()), bne.GetTerms()))
			resultRules1 = append(resultRules1, makeCorrectRule(subForm.GetF2(), bne.GetTerms()))

			resultRules2 = append(resultRules2, makeCorrectRule(subForm.GetF1(), bne.GetTerms()))
			resultRules2 = append(resultRules2, makeCorrectRule(AST.MakerNot(subForm.GetF2()), bne.GetTerms()))
		}
	}

	return []RuleList{resultRules1, resultRules2}
}

type BetaOr struct {
	AnyRule
}

func (bo *BetaOr) apply() []RuleList {
	resultRulesBeta := []RuleList{}
	Glob.PrintDebug("SRCH", Lib.MkLazy(func() string { return "Applying " + fmt.Sprint(bo.FullString) }))

	switch form := bo.GetForm().(type) {
	case AST.Or:
		for _, subForm := range form.GetChildFormulas().GetSlice() {
			resultRulesBeta = append(resultRulesBeta, RuleList{makeCorrectRule(subForm, bo.GetTerms())})
		}
	}

	return resultRulesBeta
}

type BetaImp struct {
	AnyRule
}

func (bi *BetaImp) apply() []RuleList {
	resultRules1 := RuleList{}
	resultRules2 := RuleList{}
	Glob.PrintDebug("SRCH", Lib.MkLazy(func() string { return "Applying " + fmt.Sprint(bi.FullString) }))

	switch subForm := bi.GetForm().(type) {
	case AST.Imp:
		resultRules1 = append(resultRules1, makeCorrectRule(AST.MakerNot(subForm.GetF1()), bi.GetTerms()))
		resultRules2 = append(resultRules2, makeCorrectRule(subForm.GetF2(), bi.GetTerms()))
	}

	return []RuleList{resultRules1, resultRules2}
}

type BetaEqu struct {
	AnyRule
}

func (be *BetaEqu) apply() []RuleList {
	resultRules1 := RuleList{}
	resultRules2 := RuleList{}
	Glob.PrintDebug("SRCH", Lib.MkLazy(func() string { return "Applying " + fmt.Sprint(be.FullString) }))

	switch form := be.GetForm().(type) {
	case AST.Equ:
		resultRules1 = append(resultRules1, makeCorrectRule(form.GetF1(), be.GetTerms()))
		resultRules1 = append(resultRules1, makeCorrectRule(form.GetF2(), be.GetTerms()))

		resultRules2 = append(resultRules2, makeCorrectRule(AST.MakerNot(form.GetF1()), be.GetTerms()))
		resultRules2 = append(resultRules2, makeCorrectRule(AST.MakerNot(form.GetF2()), be.GetTerms()))
	}

	return []RuleList{resultRules2, resultRules1}
}

type GammaRule interface {
	Rule
	Copy() GammaRule
	getGeneratedMetas() Lib.List[AST.Meta]
	getVarList() []AST.Var
}

type GammaNotExists struct {
	AnyRule
	generatedMetas Lib.List[AST.Meta]
}

func (gne *GammaNotExists) apply() []RuleList {
	resultRules := RuleList{}
	Glob.PrintDebug("SRCH", Lib.MkLazy(func() string { return "Applying " + fmt.Sprint(gne.FullString) }))

	instanciatedForm, metas := Core.Instantiate(Core.MakeFormAndTerm(gne.GetForm(), gne.GetTerms()), 42)
	newTerms := gne.GetTerms().Copy(AST.Term.Copy)
	newTerms.Add(AST.TermEquals, AST.MetaListToTermList(metas.Elements()).GetSlice()...)
	resultRules = append(resultRules, makeCorrectRule(instanciatedForm.GetForm(), newTerms))
	gne.generatedMetas = metas.Elements()

	return []RuleList{resultRules}
}

func (gne *GammaNotExists) Copy() GammaRule {
	rule := makeCorrectRule(gne.formula, gne.terms)

	if typed, ok := rule.(GammaRule); ok {
		return typed
	}

	return nil
}

func (gne *GammaNotExists) getGeneratedMetas() Lib.List[AST.Meta] {
	return gne.generatedMetas
}

func (gne *GammaNotExists) getVarList() []AST.Var {
	if not, isNot := gne.formula.(AST.Not); isNot {
		if exists, isExists := not.GetForm().(AST.Ex); isExists {
			return exists.GetVarList()
		}
	}
	return []AST.Var{}
}

type GammaForall struct {
	AnyRule
	generatedMetas Lib.List[AST.Meta]
}

func (gf *GammaForall) apply() []RuleList {
	resultRules := RuleList{}
	Glob.PrintDebug("SRCH", Lib.MkLazy(func() string { return "Applying " + fmt.Sprint(gf.FullString) }))

	instanciatedForm, metas := Core.Instantiate(Core.MakeFormAndTerm(gf.GetForm(), gf.GetTerms()), 42)
	newTerms := gf.GetTerms().Copy(AST.Term.Copy)
	newTerms.Add(AST.TermEquals, AST.MetaListToTermList(metas.Elements()).GetSlice()...)
	resultRules = append(resultRules, makeCorrectRule(instanciatedForm.GetForm(), newTerms))
	gf.generatedMetas = metas.Elements()

	return []RuleList{resultRules}
}

func (gf *GammaForall) Copy() GammaRule {
	rule := makeCorrectRule(gf.formula, gf.terms)

	if typed, ok := rule.(GammaRule); ok {
		return typed
	}

	return nil
}

func (gf *GammaForall) getGeneratedMetas() Lib.List[AST.Meta] {
	return gf.generatedMetas
}

func (gf *GammaForall) getVarList() []AST.Var {
	if forall, isForall := gf.formula.(AST.All); isForall {
		return forall.GetVarList()
	}
	return []AST.Var{}
}

type DeltaNotForall struct {
	AnyRule
}

func (dnf *DeltaNotForall) apply() []RuleList {
	resultRules := RuleList{}
	Glob.PrintDebug("SRCH", Lib.MkLazy(func() string { return "Applying " + fmt.Sprint(dnf.FullString) }))

	skolemizedForm := Core.Skolemize(dnf.GetForm(), dnf.GetForm().GetMetas())
	skolemizedFnt := Core.MakeFormAndTerm(skolemizedForm, dnf.GetTerms())

	resultRules = append(
		resultRules,
		makeCorrectRule(skolemizedFnt.GetForm(), skolemizedFnt.GetTerms()),
	)

	return []RuleList{resultRules}
}

type DeltaExists struct {
	AnyRule
}

func (de *DeltaExists) apply() []RuleList {
	resultRules := RuleList{}
	Glob.PrintDebug("SRCH", Lib.MkLazy(func() string { return "Applying " + fmt.Sprint(de.FullString) }))

	skolemizedForm := Core.Skolemize(de.GetForm(), de.GetForm().GetMetas())
	skolemizedFnt := Core.MakeFormAndTerm(skolemizedForm, de.GetTerms())

	resultRules = append(
		resultRules,
		makeCorrectRule(skolemizedFnt.GetForm(), skolemizedFnt.GetTerms()),
	)

	return []RuleList{resultRules}
}

type RuleList []Rule

func (rl *RuleList) GetFormList() Lib.List[AST.Form] {
	result := Lib.NewList[AST.Form]()

	for _, rule := range *rl {
		result.Append(rule.GetForm())
	}

	return result
}

func (rl *RuleList) TryToApply() (success bool, applied Rule, resultRules []RuleList) {
	if len(*rl) > 0 {
		success = true
		applied = (*rl)[0]
		resultRules = applied.apply()

		return success, applied, resultRules
	}

	return false, nil, nil
}

func (rl RuleList) RemoveIfContains(other Rule) RuleList {
	for i, rule := range rl {
		if rule.Equals(other) {
			return append(rl[0:i], rl[i+1:]...)
		}
	}

	return rl
}
