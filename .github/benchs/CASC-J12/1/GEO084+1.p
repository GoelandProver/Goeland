include('Axioms/GEO004+0.ax').
fof(corollary_2_6_2,conjecture,
    ! [C1,C2,C3,P] :
      ( part_of(sum(C1,C2),C3)
     <= ( part_of(C1,C3)
        & part_of(C2,C3)
        & meet(P,C1,C2) ) ) ).

