% Checks whether reintroduction properly solves this problem.
% result: VALID

fof(test_quant_1,conjecture,
    (? [X] : (p(X) => (p(a) & p(b))))).
   
