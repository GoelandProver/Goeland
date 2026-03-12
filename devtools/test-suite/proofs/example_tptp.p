% args: -otptp
% result: VALID

fof(test_tptp, conjecture, 
    (! [X] :
    p(X))  <=> (~(? [Y]:
    ~p(Y)))).
