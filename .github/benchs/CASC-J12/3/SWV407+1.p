include('Axioms/SWV007+0.ax').
include('Axioms/SWV007+2.ax').
include('Axioms/SWV007+3.ax').
fof(l43_l44,lemma,
    ! [U,V,W,X] :
      ( ( pair_in_list(update_slb(V,findmin_pqp_res(U)),X,findmin_pqp_res(U))
        | ? [Y] :
            ( less_than(findmin_pqp_res(U),Y)
            & pair_in_list(update_slb(V,findmin_pqp_res(U)),X,Y) ) )
     <= ( contains_slb(V,X)
        & strictly_less_than(X,findmin_cpq_res(triple(U,V,W))) ) ) ).

fof(l43_li4142,lemma,
    ! [U,V,W] :
      ( ! [X,Y] :
          ( pair_in_list(V,X,Y)
         => less_than(Y,X) )
    <=> check_cpq(triple(U,V,W)) ) ).

fof(l43_co,conjecture,
    ! [U,V,W] :
      ( ? [X] :
          ( contains_cpq(triple(U,V,W),X)
          & strictly_less_than(X,findmin_cpq_res(triple(U,V,W))) )
     => ~ check_cpq(findmin_cpq_eff(triple(U,V,W))) ) ).

