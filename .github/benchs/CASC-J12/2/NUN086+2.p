include('Axioms/NUM008+0.ax').
fof(zerotimesoneeqzero,conjecture,
    ? [Y1] :
      ( ? [Y2] :
          ( ? [Y3] :
              ( r1(Y3)
              & r2(Y3,Y2) )
          & ? [Y4] :
              ( r1(Y4)
              & r4(Y4,Y2,Y1) ) )
      & ? [Y5] :
          ( r1(Y5)
          & Y5 = Y1 ) ) ).

