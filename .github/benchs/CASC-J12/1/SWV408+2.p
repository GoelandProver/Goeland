include('Axioms/SWV007+0.ax').
include('Axioms/SWV007+2.ax').
include('Axioms/SWV007+3.ax').
fof(l48_li3839,lemma,
    ! [U,V,W,X] :
      ( pair_in_list(update_slb(U,X),V,X)
     <= ( pair_in_list(U,V,W)
        & strictly_less_than(W,X) ) ) ).

fof(l44_co,conjecture,
    ! [U,V,W,X] :
      ( ( ? [Y] :
            ( pair_in_list(update_slb(V,findmin_pqp_res(U)),X,Y)
            & less_than(findmin_pqp_res(U),Y) )
        | pair_in_list(update_slb(V,findmin_pqp_res(U)),X,findmin_pqp_res(U)) )
     <= ( strictly_less_than(X,findmin_cpq_res(triple(U,V,W)))
        & contains_slb(V,X) ) ) ).

fof(l49_li3637,lemma,
    ! [U,V,W,X] :
      ( ( less_than(X,W)
        & pair_in_list(U,V,W) )
     => pair_in_list(update_slb(U,X),V,W) ) ).

fof(l45_li4647,lemma,
    ! [U,V] :
      ( contains_slb(U,V)
     => ? [W] : pair_in_list(U,V,W) ) ).

