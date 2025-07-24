include('Axioms/GEO012+0.ax').
fof(exemplo6GDDFULLmoreE0228,conjecture,
    ! [A,B,C,D,E,F,G,H,NWPNT1,NWPNT2,NWPNT3,NWPNT4,NWPNT5,NWPNT6,NWPNT7,NWPNT8,NWPNT9] :
      ( para(H,E,G,F)
     <= ( circle(A,B,NWPNT1,NWPNT2)
        & circle(A,B,D,NWPNT5)
        & circle(C,B,D,NWPNT6)
        & circle(C,B,E,NWPNT7)
        & coll(D,E,F)
        & circle(A,D,F,NWPNT8)
        & circle(A,B,G,NWPNT9)
        & perp(C,E,E,H)
        & coll(B,E,G)
        & circle(C,B,NWPNT3,NWPNT4) ) ) ).

