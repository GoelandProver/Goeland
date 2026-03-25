% Very simple unification test with ground term
% result: VALID

fof(test_rw_c,conjecture,
   p(a) => ? [X] : (p(X) & ? [X] : p(X)) ).
