include('Axioms/SWV007+0.ax').
include('Axioms/SWV007+2.ax').
include('Axioms/SWV007+3.ax').
fof(l10_co,conjecture,
    ! [U,V,W] :
      ( ok(findmin_cpq_eff(triple(U,V,W)))
     => ( less_than(lookup_slb(V,findmin_pqp_res(U)),findmin_pqp_res(U))
        & contains_slb(V,findmin_pqp_res(U))
        & create_slb != V ) ) ).

