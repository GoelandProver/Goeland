include('Axioms/GEO012+0.ax').
fof(exemplo6GDDFULL012003,conjecture,
    ! [A,B,C,D,E,F,H,A1,P,Q] :
      ( cyclic(P,Q,H,D)
     <= ( perp(D,A,B,C)
        & coll(E,A,C)
        & perp(F,C,A,B)
        & coll(H,B,E)
        & coll(H,C,F)
        & midp(A1,C,B)
        & midp(P,E,B)
        & midp(Q,F,C)
        & coll(F,A,B)
        & perp(E,B,A,C)
        & coll(D,B,C) ) ) ).

