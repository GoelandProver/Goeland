% A very simple problem to check that dmt doesn't rewrite when there is a contradiction
% args: -dmt
% result: VALID

fof(test_rw_a2,axiom,
   p(a) <=> ( ! [X] : q(X))) .

fof(test_rw_a1,axiom,
   p(a) ).


fof(test_rw_c,conjecture,
   ? [X] : p(X)).
   
