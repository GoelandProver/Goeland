% result: VALID

fof(eq, axiom, 
    ! [X] :
    (g(X) = f(X)
    | ~(X = a))).

fof(eq, axiom, 
    ! [Y] :
    g(f(Y)) = Y).

fof(eq, axiom, 
    b = c).

fof(eq, axiom, 
    p(g(g(a)), b)).

fof(test_quant_1, conjecture, 
    p(a, c)).

