include('Axioms/CSR006+0.ax').
fof(antonymPattern10035,conjecture,
    ! [X,Y] :
      ( ( p__d__instance(X,c__EvenInteger)
        & p__d__instance(Y,c__OddInteger) )
     => Y != X ) ).

