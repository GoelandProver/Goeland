% A less trivial test that checks the definition of a subset
% result: VALID

fof(prove_subset, conjecture, 
    ((! [A, B] : (subset(A, B)  <=> (! [X] : (member(X, A) => member(X, B)))))
     => (! [A] : (subset(A, A))))).
