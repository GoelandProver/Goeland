include('Axioms/SWV007+0.ax').
include('Axioms/SWV007+1.ax').
include('Axioms/SWV007+2.ax').
include('Axioms/SWV007+3.ax').
include('Axioms/SWV007+4.ax').
fof(l2_co,conjecture,
    ! [U] :
      ( ! [Z,X1,X2,X3,X4,X5] : i(triple(X1,insert_slb(U,pair(X4,X5)),X3)) = i(triple(Z,insert_slb(U,pair(X4,X5)),X2))
     <= ! [V,W,X,Y] : i(triple(W,U,Y)) = i(triple(V,U,X)) ) ).

