% Another simple quantification test where Y must be instantiated to a skolem symbol
% result: VALID

fof(test_quant_1,conjecture,
    (! [X] : (p(X) => (? [Y] : (p(Y) | q(Y)))))).
   
