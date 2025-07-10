% result: VALID

fof(test_rule_order,conjecture,
    ( ! [X] : ~ p(X)
   => ? [Y] :
        ( ~ p(Y)
        & ( q(Y)
         => ! [Z] : q(Z) ) ) )).
