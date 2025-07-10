% result: VALID

fof(test_cpp, conjecture,
    ~(! [X,Y] : ( (~p(Y) & (? [Z] : p(Z))) | (~q(X) & (? [Z] : q(Z)) ) ) )    
).
