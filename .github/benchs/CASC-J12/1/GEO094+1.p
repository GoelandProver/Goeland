include('Axioms/GEO004+0.ax').
fof(proposition_2_14_3,conjecture,
    ! [C,C1,C2,P] :
      ( ~ end_point(P,C)
     <= ( meet(P,C1,C2)
        & part_of(C1,C)
        & part_of(C2,C) ) ) ).

