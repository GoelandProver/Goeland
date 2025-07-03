% args: -no_id -osctptp
% result: VALID

fof(test_sctptp, conjecture, 
   (! [X] : p(X)) <=> (~(? [Y] : ~p(Y)))).

        