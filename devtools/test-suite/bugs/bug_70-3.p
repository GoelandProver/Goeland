% result: VALID

% This file tests the reintroduction rule.

fof(prove_this,conjecture,
	( ? [X] : (d(X) => (! [X] : d(X) ) ) ) ).
