fof(axiom_2,axiom,
    ! [B] :
      ( ? [C] :
          ( C = times(B,B)
          & times(B,C) = B )
    <=> element(B) ) ).

fof(axiom_1,axiom,
    ! [A,B,C] : times(B,times(C,A)) = times(times(A,B),C) ).

fof(conjecture_1,conjecture,
    ! [A,B,C] :
      ( element(C)
     <= ( element(A)
        & C = times(A,B)
        & element(B) ) ) ).

