% result: VALID

fof(test_minimaliste,conjecture,
    (   ~p(a) | 
        p(b) | 
        ~(! [X] :
         ( p(X) <=> ! [Y] : p(Y))))).
        