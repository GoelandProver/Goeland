fof(sos02,axiom,
    ! [B,A] : product(A,difference(A,B)) = B ).

fof(sos09,axiom,
    ! [X3,X4,X5] :
      ( m(X3,X4,X5)
    <=> product(product(X3,X4),product(X4,X5)) = product(X3,X5) ) ).

fof(sos11,axiom,
    d(bigB,a,c) ).

fof(sos10,axiom,
    d(b,bigA,c) ).

fof(sos12,axiom,
    d(b,a,bigC) ).

fof(sos06,axiom,
    ! [A] : A = product(A,A) ).

fof(sos15,axiom,
    d(a1,b1,c) ).

fof(sos14,axiom,
    d(a1,b,c1) ).

fof(goals,conjecture,
    m(bigA,b1,bigC) ).

fof(sos05,axiom,
    ! [D,C,B,A] : product(product(A,B),product(C,D)) = product(product(A,C),product(B,D)) ).

fof(sos04,axiom,
    ! [B,A] : product(quotient(A,B),B) = A ).

fof(sos07,axiom,
    ! [B,A] : product(product(product(A,B),B),product(B,product(B,A))) = B ).

fof(sos03,axiom,
    ! [B,A] : quotient(product(A,B),B) = A ).

fof(sos01,axiom,
    ! [B,A] : B = difference(A,product(A,B)) ).

fof(sos08,axiom,
    ! [X0,X1,X2] :
      ( d(X0,X1,X2)
    <=> product(X1,X2) = product(X0,X1) ) ).

fof(sos13,axiom,
    d(a,b1,c1) ).

