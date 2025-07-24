include('Axioms/GEO012+0.ax').
fof(exemplo6GDDFULL012013,conjecture,
    ! [A,B,C,D,E,F,G,H] :
      ( para(E,F,G,H)
     <= ( para(A,B,C,D)
        & para(A,C,B,D)
        & perp(E,B,A,C)
        & coll(E,A,C)
        & coll(G,A,C)
        & coll(H,B,D)
        & perp(H,C,B,D)
        & perp(G,D,A,C)
        & coll(F,B,D)
        & perp(F,A,B,D) ) ) ).

