% Check Skolemizing after creating a metavariable
% result: VALID

fof(test_quant_1,conjecture,
    ? [X] : (p(X) => (! [Y] : p(Y)))
    ).
