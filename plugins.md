# Plugins

Currently available hooks :
* `rewrite`: hook in `DispatchForm` ([`state.go`](src/types/complex-types/state.go) file), which gives an atom of type `FormAndTerm` and expects back a `FormAndTerm`, which is either the given atom if no rewrite rule could be applied, or the rewritten form.
* `sendAxiom` : hook in `StatementListToFormula` ([`main.go`](src/main.go) file), which gives a formula (type `Form`) and expects back a `boolean`, to know if the axiom has been consumed by the plugin and does not need to be added to the list of axioms, or if it hasn't and should be added to the axioms.