package incremental

import (
	"fmt"

	"github.com/GoelandProver/Goeland/global"
	syntaxicmanipulations "github.com/GoelandProver/Goeland/syntaxic-manipulations"
	basictypes "github.com/GoelandProver/Goeland/types/basic-types"
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
	GetForm() basictypes.Form
	GetTerms() *basictypes.TermList
	ToFormula() basictypes.FormAndTerms
	Equals(any) bool
	GetRuleStrings() (string, string)
}

type AnyRule struct {
	formula basictypes.Form
	terms   *basictypes.TermList

	//formString string

	FullString []string
}

func (ar *AnyRule) GetForm() basictypes.Form {
	return ar.formula
}

func (ar *AnyRule) GetTerms() *basictypes.TermList {
	return ar.terms
}

func (ar *AnyRule) ToFormula() basictypes.FormAndTerms {
	return basictypes.MakeFormAndTerm(ar.GetForm(), ar.GetTerms())
}

func (ar *AnyRule) Equals(other any) bool {
	oth, isRule := other.(Rule)
	return isRule && ar.GetTerms().Equals(oth.GetTerms()) && ar.GetForm().Equals(oth.GetForm())
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

func makeCorrectRule(formula basictypes.Form, terms *basictypes.TermList) Rule {
	any := AnyRule{formula: formula, terms: terms}
	//any := AnyRule{formula: formula, terms: terms, formString: formula.ToString()}

	switch typedFormula := formula.(type) {
	case basictypes.Pred:
		any.FullString = []string{"CLOSURE"}
		return &Pred{any}
	case basictypes.Top:
		any.FullString = []string{"CLOSURE"}
		return &Top{any}
	case basictypes.Bot:
		any.FullString = []string{"CLOSURE"}
		return &Bot{any}
	case basictypes.And:
		any.FullString = []string{"ALPHA", "AND"}
		return &AlphaAnd{any}
	case basictypes.Or:
		any.FullString = []string{"BETA", "OR"}
		return &BetaOr{any}
	case basictypes.Imp:
		any.FullString = []string{"BETA", "IMPLY"}
		return &BetaImp{any}
	case basictypes.Equ:
		any.FullString = []string{"BETA", "EQUIV"}
		return &BetaEqu{any}
	case basictypes.All:
		any.FullString = []string{"GAMMA", "FORALL"}
		return &GammaForall{AnyRule: any}
	case basictypes.Ex:
		any.FullString = []string{"DELTA", "EXISTS"}
		return &DeltaExists{any}
	case basictypes.Not:
		switch typedFormula.GetForm().(type) {
		case basictypes.Pred:
			any.FullString = []string{"CLOSURE"}
			return &NotPred{any}
		case basictypes.Top:
			any.FullString = []string{"CLOSURE"}
			return &NotTop{any}
		case basictypes.Bot:
			any.FullString = []string{"CLOSURE"}
			return &NotBot{any}
		case basictypes.Not:
			any.FullString = []string{"ALPHA", "NOT", "NOT"}
			return &AlphaNotNot{any}
		case basictypes.And:
			any.FullString = []string{"BETA", "NOT", "AND"}
			return &BetaNotAnd{any}
		case basictypes.Or:
			any.FullString = []string{"ALPHA", "NOT", "OR"}
			return &AlphaNotOr{any}
		case basictypes.Imp:
			any.FullString = []string{"ALPHA", "NOT", "IMPLY"}
			return &AlphaNotImp{any}
		case basictypes.Equ:
			any.FullString = []string{"BETA", "NOT", "EQUIV"}
			return &BetaNotEqu{any}
		case basictypes.All:
			any.FullString = []string{"DELTA", "NOT", "FORALL"}
			return &DeltaNotForall{any}
		case basictypes.Ex:
			any.FullString = []string{"GAMMA", "NOT", "EXISTS"}
			return &GammaNotExists{AnyRule: any}
		default:
			global.PrintError("RULES", "Could not find the type of the formula")
			return nil
		}
	default:
		global.PrintError("RULES", "Could not find the type of the formula")
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
	global.PrintDebug("SRCH", "Applying "+fmt.Sprint(aa.FullString))

	switch form := aa.GetForm().(type) {
	case basictypes.And:
		for _, subForm := range form.FormList.Slice() {
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
	global.PrintDebug("SRCH", "Applying "+fmt.Sprint(ann.FullString))

	switch form := ann.GetForm().(type) {
	case basictypes.Not:
		switch subForm := form.GetForm().(type) {
		case basictypes.Not:
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
	global.PrintDebug("SRCH", "Applying "+fmt.Sprint(ano.FullString))

	switch form := ano.GetForm().(type) {
	case basictypes.Not:
		switch subForm := form.GetForm().(type) {
		case basictypes.Or:
			for _, subForm := range subForm.FormList.Slice() {
				resultRules = append(resultRules, makeCorrectRule(basictypes.RefuteForm(subForm), ano.GetTerms()))
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
	global.PrintDebug("SRCH", "Applying "+fmt.Sprint(ani.FullString))

	switch form := ani.GetForm().(type) {
	case basictypes.Not:
		switch subForm := form.GetForm().(type) {
		case basictypes.Imp:
			resultRules = append(resultRules, makeCorrectRule(subForm.GetF1(), ani.GetTerms()))
			resultRules = append(resultRules, makeCorrectRule(basictypes.RefuteForm(subForm.GetF2()), ani.GetTerms()))
		}
	}

	return []RuleList{resultRules}
}

type BetaNotAnd struct {
	AnyRule
}

func (bna *BetaNotAnd) apply() []RuleList {
	resultRulesBeta := []RuleList{}
	global.PrintDebug("SRCH", "Applying "+fmt.Sprint(bna.FullString))

	switch form := bna.GetForm().(type) {
	case basictypes.Not:
		switch subForm := form.GetForm().(type) {
		case basictypes.And:
			for _, andForm := range subForm.FormList.Slice() {
				resultRulesBeta = append(resultRulesBeta, RuleList{makeCorrectRule(basictypes.RefuteForm(andForm), bna.GetTerms())})
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
	global.PrintDebug("SRCH", "Applying "+fmt.Sprint(bne.FullString))

	switch form := bne.GetForm().(type) {
	case basictypes.Not:
		switch subForm := form.GetForm().(type) {
		case basictypes.Equ:
			resultRules1 = append(resultRules1, makeCorrectRule(basictypes.RefuteForm(subForm.GetF1()), bne.GetTerms()))
			resultRules1 = append(resultRules1, makeCorrectRule(subForm.GetF2(), bne.GetTerms()))

			resultRules2 = append(resultRules2, makeCorrectRule(subForm.GetF1(), bne.GetTerms()))
			resultRules2 = append(resultRules2, makeCorrectRule(basictypes.RefuteForm(subForm.GetF2()), bne.GetTerms()))
		}
	}

	return []RuleList{resultRules1, resultRules2}
}

type BetaOr struct {
	AnyRule
}

func (bo *BetaOr) apply() []RuleList {
	resultRulesBeta := []RuleList{}
	global.PrintDebug("SRCH", "Applying "+fmt.Sprint(bo.FullString))

	switch form := bo.GetForm().(type) {
	case basictypes.Or:
		for _, subForm := range form.FormList.Slice() {
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
	global.PrintDebug("SRCH", "Applying "+fmt.Sprint(bi.FullString))

	switch subForm := bi.GetForm().(type) {
	case basictypes.Imp:
		resultRules1 = append(resultRules1, makeCorrectRule(basictypes.RefuteForm(subForm.GetF1()), bi.GetTerms()))
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
	global.PrintDebug("SRCH", "Applying "+fmt.Sprint(be.FullString))

	switch form := be.GetForm().(type) {
	case basictypes.Equ:
		resultRules1 = append(resultRules1, makeCorrectRule(form.GetF1(), be.GetTerms()))
		resultRules1 = append(resultRules1, makeCorrectRule(form.GetF2(), be.GetTerms()))

		resultRules2 = append(resultRules2, makeCorrectRule(basictypes.RefuteForm(form.GetF1()), be.GetTerms()))
		resultRules2 = append(resultRules2, makeCorrectRule(basictypes.RefuteForm(form.GetF2()), be.GetTerms()))
	}

	return []RuleList{resultRules2, resultRules1}
}

type GammaRule interface {
	Rule
	Copy() GammaRule
	getGeneratedMetas() *basictypes.MetaList
	getVarList() []basictypes.Var
}

type GammaNotExists struct {
	AnyRule
	generatedMetas *basictypes.MetaList
}

func (gne *GammaNotExists) apply() []RuleList {
	resultRules := RuleList{}
	global.PrintDebug("SRCH", "Applying "+fmt.Sprint(gne.FullString))

	instanciatedForm, metas := syntaxicmanipulations.Instantiate(basictypes.MakeFormAndTerm(gne.GetForm(), gne.GetTerms()), 42)
	newTerms := gne.GetTerms().Copy()
	newTerms.AppendIfNotContains(metas.ToTermList().Slice()...)
	resultRules = append(resultRules, makeCorrectRule(instanciatedForm.GetForm(), newTerms))
	gne.generatedMetas = metas

	return []RuleList{resultRules}
}

func (gne *GammaNotExists) Copy() GammaRule {
	rule := makeCorrectRule(gne.formula, gne.terms)

	if typed, ok := rule.(GammaRule); ok {
		return typed
	}

	return nil
}

func (gne *GammaNotExists) getGeneratedMetas() *basictypes.MetaList {
	return gne.generatedMetas
}

func (gne *GammaNotExists) getVarList() []basictypes.Var {
	if not, isNot := gne.formula.(basictypes.Not); isNot {
		if exists, isExists := not.GetForm().(basictypes.Ex); isExists {
			return exists.GetVarList()
		}
	}
	return []basictypes.Var{}
}

type GammaForall struct {
	AnyRule
	generatedMetas *basictypes.MetaList
}

func (gf *GammaForall) apply() []RuleList {
	resultRules := RuleList{}
	global.PrintDebug("SRCH", "Applying "+fmt.Sprint(gf.FullString))

	instanciatedForm, metas := syntaxicmanipulations.Instantiate(basictypes.MakeFormAndTerm(gf.GetForm(), gf.GetTerms()), 42)
	newTerms := gf.GetTerms().Copy()
	newTerms.AppendIfNotContains(metas.ToTermList().Slice()...)
	resultRules = append(resultRules, makeCorrectRule(instanciatedForm.GetForm(), newTerms))
	gf.generatedMetas = metas

	return []RuleList{resultRules}
}

func (gf *GammaForall) Copy() GammaRule {
	rule := makeCorrectRule(gf.formula, gf.terms)

	if typed, ok := rule.(GammaRule); ok {
		return typed
	}

	return nil
}

func (gf *GammaForall) getGeneratedMetas() *basictypes.MetaList {
	return gf.generatedMetas
}

func (gf *GammaForall) getVarList() []basictypes.Var {
	if forall, isForall := gf.formula.(basictypes.All); isForall {
		return forall.GetVarList()
	}
	return []basictypes.Var{}
}

type DeltaNotForall struct {
	AnyRule
}

func (dnf *DeltaNotForall) apply() []RuleList {
	resultRules := RuleList{}
	global.PrintDebug("SRCH", "Applying "+fmt.Sprint(dnf.FullString))

	skolemizedForm := syntaxicmanipulations.Skolemize(basictypes.MakeFormAndTerm(dnf.GetForm(), dnf.GetTerms()), dnf.GetForm().GetMetas())
	resultRules = append(resultRules, makeCorrectRule(skolemizedForm.GetForm(), skolemizedForm.GetTerms()))

	return []RuleList{resultRules}
}

type DeltaExists struct {
	AnyRule
}

func (de *DeltaExists) apply() []RuleList {
	resultRules := RuleList{}
	global.PrintDebug("SRCH", "Applying "+fmt.Sprint(de.FullString))

	skolemizedForm := syntaxicmanipulations.Skolemize(basictypes.MakeFormAndTerm(de.GetForm(), de.GetTerms()), de.GetForm().GetMetas())
	resultRules = append(resultRules, makeCorrectRule(skolemizedForm.GetForm(), skolemizedForm.GetTerms()))

	return []RuleList{resultRules}
}

type RuleList []Rule

func (rl *RuleList) GetFormList() *basictypes.FormList {
	result := basictypes.NewFormList()

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
