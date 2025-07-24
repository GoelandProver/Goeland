include('Axioms/GEO004+0.ax').
fof(corollary_2_6_1,conjecture,
    ! [C1,C2,C3,P] :
      ( part_of(sum(C1,C2),sum(C1,C3))
     <= ( meet(P,C1,C3)
        & meet(P,C1,C2)
        & part_of(C2,C3) ) ) ).

