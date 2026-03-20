% Checks the proper unification of metavariables with ground terms
% result: VALID

fof(test_quant_1,conjecture,
   ? [X,Y] : (~p(X) | ~p(Y) | ( $true & (p(c) & (p(a) & p(b)))))).
   
