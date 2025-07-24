include('Axioms/GEO012+0.ax').
fof(exemplo6GDDFULL8110995,conjecture,
    ! [A,B,C,A1,S,F,P,Q,NWPNT1,NWPNT2] :
      ( para(B,C,P,Q)
     <= ( midp(A1,C,B)
        & eqangle(S,A,A,B,C,A,A,A1)
        & circle(F,A,B,C)
        & circle(F,A,P,NWPNT1)
        & coll(P,A,A1)
        & circle(F,A,Q,NWPNT2)
        & coll(Q,A,S)
        & coll(S,B,C) ) ) ).

