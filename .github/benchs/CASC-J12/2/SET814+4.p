include('Axioms/SET006+0.ax').
include('Axioms/SET006+4.ax').
fof(thI3,axiom,
    ! [A,B,C] :
      ( ( subset(B,C)
        & subset(A,B) )
     => subset(A,C) ) ).

fof(thV14,conjecture,
    ! [A] :
      ( member(A,on)
     => subset(sum(A),A) ) ).

