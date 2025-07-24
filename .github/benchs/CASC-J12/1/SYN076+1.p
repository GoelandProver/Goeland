fof(pel53,conjecture,
    ( ? [W1] :
      ! [Y1] :
        ( W1 = Y1
      <=> ? [Z1] :
          ! [X1] :
            ( X1 = Z1
          <=> big_f(X1,Y1) ) )
  <=> ? [Z] :
      ! [X] :
        ( X = Z
      <=> ? [W] :
          ! [Y] :
            ( big_f(X,Y)
          <=> Y = W ) ) ) ).

fof(pel53_1,axiom,
    ? [X,Y] :
      ( ! [Z] :
          ( Z = Y
          | X = Z )
      & X != Y ) ).

