include('Axioms/GEO004+0.ax').
fof(corollary_2_11,conjecture,
    ! [C,P] :
      ( ? [Cpp] :
          ( part_of(Cpp,C)
          & inner_point(P,Cpp) )
     => inner_point(P,C) ) ).

