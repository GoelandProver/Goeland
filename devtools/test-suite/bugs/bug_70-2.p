% result: VALID

% This file tests whether the outputs for a universally quantified variable that does not appear
% in the formula.

fof(prove_this,conjecture,
	~( ? [X,Y]: (p(Y) & ~p(Y)) ) ).
