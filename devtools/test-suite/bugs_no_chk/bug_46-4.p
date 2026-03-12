% args: -inner
% result: VALID

fof(x2120,conjecture,
    ( ! [U,V,W] :
        ( big_p(U,V)
        | big_p(V,W) )
   => ? [X] :
      ! [Y] : big_p(X,Y) ) ).
