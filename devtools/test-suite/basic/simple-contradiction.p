% Checks p & ~p is detected for a non totally trivial p
% result: VALID

fof(test_quant_1,axiom,
    ( ( ! [X] : ? [Y] : p(X,Y)))).

fof(test_quant_1,conjecture,
    ( ( ! [X] : ? [Y] : p(X,Y)))).
   
