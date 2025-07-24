fof(f02,axiom,
    ! [B,A] : ld(A,mult(A,B)) = B ).

fof(f04,axiom,
    ! [B,A] : rd(mult(A,B),B) = A ).

fof(f05,axiom,
    ! [C,B,A] : mult(A,mult(B,mult(C,B))) = mult(mult(mult(A,B),C),B) ).

fof(goals,conjecture,
    ! [X0,X1] :
      ( X0 = mult(X0,rd(X1,X1))
      & X0 = mult(rd(X1,X1),X0) ) ).

fof(f03,axiom,
    ! [B,A] : mult(rd(A,B),B) = A ).

fof(f01,axiom,
    ! [B,A] : mult(A,ld(A,B)) = B ).

