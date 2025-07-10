% result: VALID

fof(eq, axiom, 
    (! [X] :
    p(X) = p(X))).

fof(test_quant_1, conjecture, 
    (? [X] :
    p(X) = p(X))).


