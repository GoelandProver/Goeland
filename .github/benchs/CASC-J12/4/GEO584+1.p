include('Axioms/GEO012+0.ax').
fof(exemplo6GDDFULL416046,conjecture,
    ! [A,B,C,O,D,E,Q,P,S,R,NWPNT1,NWPNT2] :
      ( eqangle(E,P,P,S,E,Q,Q,R)
     <= ( circle(O,A,B,C)
        & circle(O,A,D,NWPNT1)
        & circle(O,A,E,NWPNT2)
        & perp(S,E,A,D)
        & coll(S,A,D)
        & perp(R,E,C,D)
        & coll(R,C,D)
        & coll(P,A,B)
        & perp(P,E,A,B)
        & coll(Q,B,C)
        & perp(Q,E,B,C) ) ) ).

