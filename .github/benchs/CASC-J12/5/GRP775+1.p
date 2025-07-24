fof(sos02,axiom,
    ! [A] : A = product(A,A) ).

fof(goals,conjecture,
    ! [X7,X8] :
      ( d(X7,X8)
    <=> ( X7 = product(X7,product(X8,X7))
        & X8 = product(X8,product(X7,X8)) ) ) ).

fof(sos05,axiom,
    ! [X4,X5] :
      ( ? [X6] :
          ( l(X6,X5)
          & r(X4,X6) )
    <=> d(X4,X5) ) ).

fof(sos03,axiom,
    ! [X0,X1] :
      ( l(X0,X1)
    <=> ( X1 = product(X1,X0)
        & X0 = product(X0,X1) ) ) ).

fof(sos01,axiom,
    ! [C,B,A] : product(product(A,B),C) = product(A,product(B,C)) ).

fof(sos04,axiom,
    ! [X2,X3] :
      ( ( X3 = product(X2,X3)
        & product(X3,X2) = X2 )
    <=> r(X2,X3) ) ).

