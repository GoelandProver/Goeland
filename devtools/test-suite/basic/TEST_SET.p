% result: VALID

fof(prove_subset, conjecture, 
    ((! [A, B] : (subset(A, B)  <=> (! [X] : (member(X, A) => member(X, B)))))
     => (! [A] : (subset(A, A))))).
