% args: -osctptp
% result: VALID

fof(test_sctptp, conjecture, 
   (! [X] : p(X)) <=> (~(? [Y] : ~p(Y)))).
