include('Axioms/SET006+0.ax').
include('Axioms/SET006+1.ax').
fof(thII28,conjecture,
    ! [F,G,H,A,B,C] :
      ( one_to_one(G,B,C)
     <= ( maps(F,A,B)
        & maps(G,B,C)
        & maps(H,C,A)
        & injective(compose_function(H,compose_function(G,F,A,B,C),A,C,A),A,A)
        & surjective(compose_function(G,compose_function(F,H,C,A,B),C,B,C),C,C)
        & injective(compose_function(F,compose_function(H,G,B,C,A),B,A,B),B,B) ) ) ).

