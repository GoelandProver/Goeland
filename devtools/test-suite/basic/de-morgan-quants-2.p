% Another de morgan law for quantifiers
% result: VALID

fof(test_quant_1,conjecture,
    ( ~(! [X] : p(X)) => (? [Y] : ~p(Y)))).
