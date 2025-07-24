include('Axioms/GEO004+0.ax').
include('Axioms/GEO004+1.ax').
fof(theorem_3_8_2,conjecture,
    ! [C,P,Q,R] :
      ( between_c(C,R,Q,P)
     <= between_c(C,P,Q,R) ) ).

