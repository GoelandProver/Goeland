include('Axioms/SWV007+0.ax').
include('Axioms/SWV007+2.ax').
include('Axioms/SWV007+3.ax').
fof(l16_co,conjecture,
    ! [U,V,W] :
      ( ~ ok(removemin_cpq_eff(triple(U,V,W)))
     <= ~ ok(triple(U,V,W)) ) ).

fof(l16_l14,lemma,
    ! [U,V,W,X] :
      ( ~ ok(remove_cpq(triple(U,V,W),X))
     <= ~ ok(triple(U,V,W)) ) ).

