include('Axioms/GEO004+0.ax').
fof(part_of_antisymmetry,conjecture,
    ! [C1,C2] :
      ( ( part_of(C2,C1)
        & part_of(C1,C2) )
     => C2 = C1 ) ).

