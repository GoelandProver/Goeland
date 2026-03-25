% Another simple test of universal quantification and unification
% result: VALID

fof(test_minimaliste, conjecture,
    (! [X] : p(X)) => (p(a) & (p(b)))    
).
