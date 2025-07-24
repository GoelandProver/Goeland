fof(f05,axiom,
    ! [C,B,A] : mult(A,mult(B,mult(C,B))) = mult(mult(mult(A,B),C),B) ).

fof(f03,axiom,
    ! [B,A] : A = mult(rd(A,B),B) ).

fof(f02,axiom,
    ! [B,A] : B = ld(A,mult(A,B)) ).

fof(f01,axiom,
    ! [B,A] : mult(A,ld(A,B)) = B ).

fof(goals,conjecture,
    ? [X0] :
    ! [X1] :
      ( mult(X0,X1) = X1
      & mult(X1,X0) = X1 ) ).

fof(f04,axiom,
    ! [B,A] : rd(mult(A,B),B) = A ).

