fof(f01,axiom,
    ! [B,A] : mult(A,ld(A,B)) = B ).

fof(f02,axiom,
    ! [B,A] : B = ld(A,mult(A,B)) ).

fof(f03,axiom,
    ! [B,A] : mult(rd(A,B),B) = A ).

fof(f04,axiom,
    ! [B,A] : rd(mult(A,B),B) = A ).

fof(f05,axiom,
    ! [C,B,A] : mult(mult(mult(A,B),C),B) = mult(A,mult(B,mult(C,B))) ).

fof(goals,conjecture,
    ! [X0,X1] :
      ( mult(ld(X1,X1),X0) = X0
      & X0 = mult(X0,ld(X1,X1)) ) ).

