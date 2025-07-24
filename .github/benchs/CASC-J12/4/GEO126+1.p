include('Axioms/GEO004+0.ax').
include('Axioms/GEO004+1.ax').
include('Axioms/GEO004+2.ax').
fof(theorem_4_11,conjecture,
    ! [O] :
    ? [P,Q] :
      ( ordered_by(O,P,Q)
      & P != Q ) ).

