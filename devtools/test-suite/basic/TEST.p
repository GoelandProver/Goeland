% result: VALID

fof(test_and_1,axiom,
    (p(a) | p(b)) & p(c)).

fof(test_and_2,axiom,
    (p(a) => p(b)) & p(c)).

fof(test_and_3,axiom,
    (p(a) <=> p(b)) & p(c)).

fof(test_or_1,axiom,
    (p(a) => p(b)) | p(c)).

fof(test_or_2,axiom,
    (p(a) <=> p(b)) | p(c)).

fof(test_imply,axiom,
    (p(a) <=> p(b)) => (p(c) <=> p(d))).

fof(test_quant_1,axiom,
    (! [X] : (p(X) & q(X)))).

fof(test_quant_2,axiom,
    ~(! [X] : (p(X) & q(X)))).

fof(test_quant_3,axiom,
    (! [X] : (p(X) & q(X))) & (? [Y] : (p(Y) => q(Y)))).

fof(test_quant_4,axiom,
    (~(! [X] : (p(X) & q(X)))) & (? [Y] : (p(Y) => q(Y)))).

fof(test_conj, conjecture, $true).
