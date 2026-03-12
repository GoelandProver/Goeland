% args: -inner
% result: VALID

fof(prove_this,conjecture,
    ( ! [X] :
      ? [Y] :
        ( p(X)
        & q(Y) )
   => ? [Z] :
      ! [Y] :
        ( p(Y)
        | r(Z) ) ) ).
