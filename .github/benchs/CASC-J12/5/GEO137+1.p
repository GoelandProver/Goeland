include('Axioms/GEO004+0.ax').
include('Axioms/GEO004+1.ax').
include('Axioms/GEO004+2.ax').
fof(theorem_4_20,conjecture,
    ! [O1,O2] :
      ( ( ! [P] :
            ( incident_o(P,O2)
          <=> incident_o(P,O1) )
        & ? [P,Q] :
            ( ordered_by(O2,P,Q)
            & ordered_by(O1,P,Q) ) )
     => O2 = O1 ) ).

