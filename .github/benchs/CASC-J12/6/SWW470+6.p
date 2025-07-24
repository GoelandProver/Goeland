fof(fact_203_comp__fun__idem,axiom,
    ! [X_b] :
      ( ab_sem1668676832m_mult(X_b)
     => hBOOL(hAPP(fun(X_b,fun(X_b,X_b)),bool,finite_comp_fun_idem(X_b,X_b),times_times(X_b))) ) ).

fof(fact_477_inf__sup__aci_I4_J,axiom,
    ! [X_a] :
      ( ! [X,Y] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),X),Y) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),X),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),X),Y))
     <= lattice(X_a) ) ).

fof(fact_163_folding__image__simple__idem_Oidem,axiom,
    ! [X_c,X_b,X_1,F,Z_1,G,F_1] :
      ( hBOOL(hAPP(fun(fun(X_c,bool),X_b),bool,hAPP(fun(X_c,X_b),fun(fun(fun(X_c,bool),X_b),bool),hAPP(X_b,fun(fun(X_c,X_b),fun(fun(fun(X_c,bool),X_b),bool)),hAPP(fun(X_b,fun(X_b,X_b)),fun(X_b,fun(fun(X_c,X_b),fun(fun(fun(X_c,bool),X_b),bool))),finite908156982e_idem(X_b,X_c),F),Z_1),G),F_1))
     => hAPP(X_b,X_b,hAPP(X_b,fun(X_b,X_b),F,X_1),X_1) = ti(X_b,X_1) ) ).

fof(fact_172_empty__Diff,axiom,
    ! [X_b,A_1] : bot_bot(fun(X_b,bool)) = hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),minus_minus(fun(X_b,bool)),bot_bot(fun(X_b,bool))),A_1) ).

fof(help_fequal_1_1_T,axiom,
    ! [X_a,X,Y] :
      ( ti(X_a,X) = ti(X_a,Y)
      | ~ hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),fequal(X_a),X),Y)) ) ).

fof(tsy_c_Finite__Set_Ofolding__image__simple_res,axiom,
    ! [X_b,X_c] : finite1357897459simple(X_b,X_c) = ti(fun(fun(X_b,fun(X_b,X_b)),fun(X_b,fun(fun(X_c,X_b),fun(fun(fun(X_c,bool),X_b),bool)))),finite1357897459simple(X_b,X_c)) ).

fof(fact_423_inf__absorb1,axiom,
    ! [X_a] :
      ( ! [X,Y] :
          ( ti(X_a,X) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),X),Y)
         <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X),Y)) )
     <= semilattice_inf(X_a) ) ).

fof(fact_223_comp__fun__commute_Ofold__insert,axiom,
    ! [X_b,X_c,Z_1,X_1,A_1,F] :
      ( hBOOL(hAPP(fun(X_b,fun(X_c,X_c)),bool,finite100568337ommute(X_b,X_c),F))
     => ( ( ~ hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),X_1),A_1))
         => hAPP(fun(X_b,bool),X_c,hAPP(X_c,fun(fun(X_b,bool),X_c),hAPP(fun(X_b,fun(X_c,X_c)),fun(X_c,fun(fun(X_b,bool),X_c)),finite_fold(X_b,X_c),F),Z_1),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),X_1),A_1)) = hAPP(X_c,X_c,hAPP(X_b,fun(X_c,X_c),F,X_1),hAPP(fun(X_b,bool),X_c,hAPP(X_c,fun(fun(X_b,bool),X_c),hAPP(fun(X_b,fun(X_c,X_c)),fun(X_c,fun(fun(X_b,bool),X_c)),finite_fold(X_b,X_c),F),Z_1),A_1)) )
       <= hBOOL(hAPP(fun(X_b,bool),bool,finite_finite_1(X_b),A_1)) ) ) ).

fof(fact_430_inf__le1,axiom,
    ! [X_a] :
      ( semilattice_inf(X_a)
     => ! [X,Y] : hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),X),Y)),X)) ) ).

fof(fact_439_distrib__inf__le,axiom,
    ! [X_a] :
      ( ! [X,Y,Z] : hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),X),Y)),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),X),Z))),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),X),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),Y),Z))))
     <= lattice(X_a) ) ).

fof(fact_31_insert__Collect,axiom,
    ! [X_b,A_3,Pa] : hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),A_3),hAPP(fun(X_b,bool),fun(X_b,bool),collect(X_b),Pa)) = hAPP(fun(X_b,bool),fun(X_b,bool),collect(X_b),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,fun(bool,bool)),fun(fun(X_b,bool),fun(X_b,bool)),combs(X_b,bool,bool),hAPP(fun(X_b,bool),fun(X_b,fun(bool,bool)),hAPP(fun(bool,fun(bool,bool)),fun(fun(X_b,bool),fun(X_b,fun(bool,bool))),combb(bool,fun(bool,bool),X_b),fimplies),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(bool,bool),fun(fun(X_b,bool),fun(X_b,bool)),combb(bool,bool,X_b),fNot),hAPP(X_b,fun(X_b,bool),hAPP(fun(X_b,fun(X_b,bool)),fun(X_b,fun(X_b,bool)),combc(X_b,X_b,bool),fequal(X_b)),A_3)))),Pa)) ).

fof(fact_440_image__Int__subset,axiom,
    ! [X_b,X_c,F,A_1,B] : hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),ord_less_eq(fun(X_b,bool)),hAPP(fun(X_c,bool),fun(X_b,bool),hAPP(fun(X_c,X_b),fun(fun(X_c,bool),fun(X_b,bool)),image(X_c,X_b),F),hAPP(fun(X_c,bool),fun(X_c,bool),hAPP(fun(X_c,bool),fun(fun(X_c,bool),fun(X_c,bool)),semilattice_inf_inf(fun(X_c,bool)),A_1),B))),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_inf_inf(fun(X_b,bool)),hAPP(fun(X_c,bool),fun(X_b,bool),hAPP(fun(X_c,X_b),fun(fun(X_c,bool),fun(X_b,bool)),image(X_c,X_b),F),A_1)),hAPP(fun(X_c,bool),fun(X_b,bool),hAPP(fun(X_c,X_b),fun(fun(X_c,bool),fun(X_b,bool)),image(X_c,X_b),F),B)))) ).

fof(fact_76_mem__def,axiom,
    ! [X_b,X_1,A_1] :
      ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),X_1),A_1))
    <=> hBOOL(hAPP(X_b,bool,A_1,X_1)) ) ).

fof(fact_56_nonempty__iff,axiom,
    ! [X_b,A_1] :
      ( bot_bot(fun(X_b,bool)) != ti(fun(X_b,bool),A_1)
    <=> ? [X_2,B_2] :
          ( ti(fun(X_b,bool),A_1) = hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),X_2),B_2)
          & ~ hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),X_2),B_2)) ) ) ).

fof(arity_HOL_Obool___Orderings_Opreorder,axiom,
    preorder(bool) ).

fof(fact_297_Un__empty__left,axiom,
    ! [X_b,B] : hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_sup_sup(fun(X_b,bool)),bot_bot(fun(X_b,bool))),B) = ti(fun(X_b,bool),B) ).

fof(fact_61_image__eqI,axiom,
    ! [X_b,X_c,A_1,Ba,F,X_1] :
      ( ( hBOOL(hAPP(fun(X_c,bool),bool,hAPP(X_c,fun(fun(X_c,bool),bool),member(X_c),X_1),A_1))
       => hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),Ba),hAPP(fun(X_c,bool),fun(X_b,bool),hAPP(fun(X_c,X_b),fun(fun(X_c,bool),fun(X_b,bool)),image(X_c,X_b),F),A_1))) )
     <= ti(X_b,Ba) = hAPP(X_c,X_b,F,X_1) ) ).

fof(fact_291_inf__sup__ord_I4_J,axiom,
    ! [X_a] :
      ( ! [Y,X] : hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),Y),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),X),Y)))
     <= lattice(X_a) ) ).

fof(fact_97_empty__fold1SetE,axiom,
    ! [X_b,F,X_1] : ~ hBOOL(hAPP(X_b,bool,hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,fun(X_b,X_b)),fun(fun(X_b,bool),fun(X_b,bool)),finite_fold1Set(X_b),F),bot_bot(fun(X_b,bool))),X_1)) ).

fof(fact_390_folding__image__simple_Oeq__fold__g,axiom,
    ! [X_c,X_b,A_1,F,Z_1,G,F_1] :
      ( hBOOL(hAPP(fun(fun(X_c,bool),X_b),bool,hAPP(fun(X_c,X_b),fun(fun(fun(X_c,bool),X_b),bool),hAPP(X_b,fun(fun(X_c,X_b),fun(fun(fun(X_c,bool),X_b),bool)),hAPP(fun(X_b,fun(X_b,X_b)),fun(X_b,fun(fun(X_c,X_b),fun(fun(fun(X_c,bool),X_b),bool))),finite1357897459simple(X_b,X_c),F),Z_1),G),F_1))
     => ( hAPP(fun(X_c,bool),X_b,F_1,A_1) = hAPP(fun(X_c,bool),X_b,hAPP(X_b,fun(fun(X_c,bool),X_b),hAPP(fun(X_c,X_b),fun(X_b,fun(fun(X_c,bool),X_b)),hAPP(fun(X_b,fun(X_b,X_b)),fun(fun(X_c,X_b),fun(X_b,fun(fun(X_c,bool),X_b))),finite_fold_image(X_b,X_c),F),G),Z_1),A_1)
       <= hBOOL(hAPP(fun(X_c,bool),bool,finite_finite_1(X_c),A_1)) ) ) ).

fof(fact_146_vname_Osimps_I4_J,axiom,
    ! [Loc_1,Glb_1] : hAPP(glb_1,vname,glb,Glb_1) != hAPP(loc_1,vname,loc,Loc_1) ).

fof(arity_fun___Finite__Set_Ofinite,axiom,
    ! [T_2,T_1] :
      ( ( finite_finite(T_1)
        & finite_finite(T_2) )
     => finite_finite(fun(T_2,T_1)) ) ).

fof(fact_314_order__eq__refl,axiom,
    ! [X_a] :
      ( preorder(X_a)
     => ! [X,Y] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X),Y))
         <= X = Y ) ) ).

fof(fact_493_Diff__triv,axiom,
    ! [X_b,A_1,B] :
      ( hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),minus_minus(fun(X_b,bool)),A_1),B) = ti(fun(X_b,bool),A_1)
     <= bot_bot(fun(X_b,bool)) = hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_inf_inf(fun(X_b,bool)),A_1),B) ) ).

fof(fact_452_inf1D1,axiom,
    ! [X_b,A_1,B,X_1] :
      ( hBOOL(hAPP(X_b,bool,hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_inf_inf(fun(X_b,bool)),A_1),B),X_1))
     => hBOOL(hAPP(X_b,bool,A_1,X_1)) ) ).

fof(fact_236_order__refl,axiom,
    ! [X_a] :
      ( ! [X] : hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X),X))
     <= preorder(X_a) ) ).

fof(fact_137_finite__Collect__conjI,axiom,
    ! [X_b,Q_1,Pa] :
      ( ( hBOOL(hAPP(fun(X_b,bool),bool,finite_finite_1(X_b),hAPP(fun(X_b,bool),fun(X_b,bool),collect(X_b),Pa)))
        | hBOOL(hAPP(fun(X_b,bool),bool,finite_finite_1(X_b),hAPP(fun(X_b,bool),fun(X_b,bool),collect(X_b),Q_1))) )
     => hBOOL(hAPP(fun(X_b,bool),bool,finite_finite_1(X_b),hAPP(fun(X_b,bool),fun(X_b,bool),collect(X_b),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,fun(bool,bool)),fun(fun(X_b,bool),fun(X_b,bool)),combs(X_b,bool,bool),hAPP(fun(X_b,bool),fun(X_b,fun(bool,bool)),hAPP(fun(bool,fun(bool,bool)),fun(fun(X_b,bool),fun(X_b,fun(bool,bool))),combb(bool,fun(bool,bool),X_b),fconj),Pa)),Q_1)))) ) ).

fof(arity_HOL_Obool___Orderings_Oord,axiom,
    ord(bool) ).

fof(fact_179_Diff__insert2,axiom,
    ! [X_b,A_1,A_3,B] : hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),minus_minus(fun(X_b,bool)),A_1),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),A_3),B)) = hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),minus_minus(fun(X_b,bool)),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),minus_minus(fun(X_b,bool)),A_1),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),A_3),bot_bot(fun(X_b,bool))))),B) ).

fof(fact_252_subset__insertI,axiom,
    ! [X_b,B,A_3] : hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),ord_less_eq(fun(X_b,bool)),B),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),A_3),B))) ).

fof(fact_303_le__funE,axiom,
    ! [X_b,X_c] :
      ( ! [X_1,F,G] :
          ( hBOOL(hAPP(fun(X_b,X_c),bool,hAPP(fun(X_b,X_c),fun(fun(X_b,X_c),bool),ord_less_eq(fun(X_b,X_c)),F),G))
         => hBOOL(hAPP(X_c,bool,hAPP(X_c,fun(X_c,bool),ord_less_eq(X_c),hAPP(X_b,X_c,F,X_1)),hAPP(X_b,X_c,G,X_1))) )
     <= ord(X_c) ) ).

fof(fact_419_inf__mono,axiom,
    ! [X_a] :
      ( ! [B_1,D_1,A_2,C_1] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),A_2),C_1))
         => ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),A_2),B_1)),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),C_1),D_1)))
           <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),B_1),D_1)) ) )
     <= semilattice_inf(X_a) ) ).

fof(fact_268_sup__absorb1,axiom,
    ! [X_a] :
      ( ! [Y,X] :
          ( ti(X_a,X) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),X),Y)
         <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),Y),X)) )
     <= semilattice_sup(X_a) ) ).

fof(tsy_v_c_res,hypothesis,
    c = ti(com,c) ).

fof(fact_231_hom__fold1__commute,axiom,
    ! [X_b] :
      ( ! [N,H] :
          ( ! [X_2,Y_2] : hAPP(X_b,X_b,hAPP(X_b,fun(X_b,X_b),times_times(X_b),hAPP(X_b,X_b,H,X_2)),hAPP(X_b,X_b,H,Y_2)) = hAPP(X_b,X_b,H,hAPP(X_b,X_b,hAPP(X_b,fun(X_b,X_b),times_times(X_b),X_2),Y_2))
         => ( ( bot_bot(fun(X_b,bool)) != ti(fun(X_b,bool),N)
             => hAPP(fun(X_b,bool),X_b,hAPP(fun(X_b,fun(X_b,X_b)),fun(fun(X_b,bool),X_b),finite_fold1(X_b),times_times(X_b)),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,X_b),fun(fun(X_b,bool),fun(X_b,bool)),image(X_b,X_b),H),N)) = hAPP(X_b,X_b,H,hAPP(fun(X_b,bool),X_b,hAPP(fun(X_b,fun(X_b,X_b)),fun(fun(X_b,bool),X_b),finite_fold1(X_b),times_times(X_b)),N)) )
           <= hBOOL(hAPP(fun(X_b,bool),bool,finite_finite_1(X_b),N)) ) )
     <= ab_sem1668676832m_mult(X_b) ) ).

fof(fact_35_singleton__inject,axiom,
    ! [X_b,A_3,Ba] :
      ( ti(X_b,Ba) = ti(X_b,A_3)
     <= hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),Ba),bot_bot(fun(X_b,bool))) = hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),A_3),bot_bot(fun(X_b,bool))) ) ).

fof(fact_490_Un__Diff__Int,axiom,
    ! [X_b,A_1,B] : ti(fun(X_b,bool),A_1) = hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_sup_sup(fun(X_b,bool)),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),minus_minus(fun(X_b,bool)),A_1),B)),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_inf_inf(fun(X_b,bool)),A_1),B)) ).

fof(fact_395_fold__image__related,axiom,
    ! [X_c,X_b] :
      ( ! [H,G,S,R_1,E] :
          ( ( ! [X1,Y1,X2,Y2] :
                ( ( hBOOL(hAPP(X_b,bool,hAPP(X_b,fun(X_b,bool),R_1,Y1),Y2))
                  & hBOOL(hAPP(X_b,bool,hAPP(X_b,fun(X_b,bool),R_1,X1),X2)) )
               => hBOOL(hAPP(X_b,bool,hAPP(X_b,fun(X_b,bool),R_1,hAPP(X_b,X_b,hAPP(X_b,fun(X_b,X_b),times_times(X_b),X1),Y1)),hAPP(X_b,X_b,hAPP(X_b,fun(X_b,X_b),times_times(X_b),X2),Y2))) )
           => ( hBOOL(hAPP(fun(X_c,bool),bool,finite_finite_1(X_c),S))
             => ( hBOOL(hAPP(X_b,bool,hAPP(X_b,fun(X_b,bool),R_1,hAPP(fun(X_c,bool),X_b,hAPP(X_b,fun(fun(X_c,bool),X_b),hAPP(fun(X_c,X_b),fun(X_b,fun(fun(X_c,bool),X_b)),hAPP(fun(X_b,fun(X_b,X_b)),fun(fun(X_c,X_b),fun(X_b,fun(fun(X_c,bool),X_b))),finite_fold_image(X_b,X_c),times_times(X_b)),H),E),S)),hAPP(fun(X_c,bool),X_b,hAPP(X_b,fun(fun(X_c,bool),X_b),hAPP(fun(X_c,X_b),fun(X_b,fun(fun(X_c,bool),X_b)),hAPP(fun(X_b,fun(X_b,X_b)),fun(fun(X_c,X_b),fun(X_b,fun(fun(X_c,bool),X_b))),finite_fold_image(X_b,X_c),times_times(X_b)),G),E),S)))
               <= ! [X_2] :
                    ( hBOOL(hAPP(X_b,bool,hAPP(X_b,fun(X_b,bool),R_1,hAPP(X_c,X_b,H,X_2)),hAPP(X_c,X_b,G,X_2)))
                   <= hBOOL(hAPP(fun(X_c,bool),bool,hAPP(X_c,fun(fun(X_c,bool),bool),member(X_c),X_2),S)) ) ) ) )
         <= hBOOL(hAPP(X_b,bool,hAPP(X_b,fun(X_b,bool),R_1,E),E)) )
     <= comm_monoid_mult(X_b) ) ).

fof(fact_256_insert__mono,axiom,
    ! [X_b,A_3,C,D] :
      ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),ord_less_eq(fun(X_b,bool)),C),D))
     => hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),ord_less_eq(fun(X_b,bool)),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),A_3),C)),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),A_3),D))) ) ).

fof(fact_192_folding__image__simple_Oneutral,axiom,
    ! [X_c,X_b,A_1,F,Z_1,G,F_1] :
      ( ( hBOOL(hAPP(fun(X_c,bool),bool,finite_finite_1(X_c),A_1))
       => ( ti(X_b,Z_1) = hAPP(fun(X_c,bool),X_b,F_1,A_1)
         <= ! [X_2] :
              ( hAPP(X_c,X_b,G,X_2) = ti(X_b,Z_1)
             <= hBOOL(hAPP(fun(X_c,bool),bool,hAPP(X_c,fun(fun(X_c,bool),bool),member(X_c),X_2),A_1)) ) ) )
     <= hBOOL(hAPP(fun(fun(X_c,bool),X_b),bool,hAPP(fun(X_c,X_b),fun(fun(fun(X_c,bool),X_b),bool),hAPP(X_b,fun(fun(X_c,X_b),fun(fun(fun(X_c,bool),X_b),bool)),hAPP(fun(X_b,fun(X_b,X_b)),fun(X_b,fun(fun(X_c,X_b),fun(fun(fun(X_c,bool),X_b),bool))),finite1357897459simple(X_b,X_c),F),Z_1),G),F_1)) ) ).

fof(fact_109_evaln__elim__cases_I1_J,axiom,
    ! [S_1,N_2,T_4] :
      ( T_4 = S_1
     <= hBOOL(hAPP(state,bool,hAPP(nat,fun(state,bool),hAPP(state,fun(nat,fun(state,bool)),hAPP(com,fun(state,fun(nat,fun(state,bool))),evaln,skip),S_1),N_2),T_4)) ) ).

fof(fact_346_subset__refl,axiom,
    ! [X_b,A_1] : hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),ord_less_eq(fun(X_b,bool)),A_1),A_1)) ).

fof(fact_129_evalc__evaln,axiom,
    ! [C_1,S_1,T_4] :
      ( hBOOL(hAPP(state,bool,hAPP(state,fun(state,bool),hAPP(com,fun(state,fun(state,bool)),evalc,C_1),S_1),T_4))
     => ? [N_1] : hBOOL(hAPP(state,bool,hAPP(nat,fun(state,bool),hAPP(state,fun(nat,fun(state,bool)),hAPP(com,fun(state,fun(nat,fun(state,bool))),evaln,C_1),S_1),N_1),T_4)) ) ).

fof(fact_357_Un__insert__right,axiom,
    ! [X_b,A_1,A_3,B] : hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),A_3),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_sup_sup(fun(X_b,bool)),A_1),B)) = hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_sup_sup(fun(X_b,bool)),A_1),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),A_3),B)) ).

fof(fact_416_IntE,axiom,
    ! [X_b,Ca,A_1,B] :
      ( ~ ( ~ hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),Ca),B))
         <= hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),Ca),A_1)) )
     <= hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),Ca),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_inf_inf(fun(X_b,bool)),A_1),B))) ) ).

fof(tsy_c_Finite__Set_Ofold__graph_res,axiom,
    ! [X_b,X_c] : ti(fun(fun(X_b,fun(X_c,X_c)),fun(X_c,fun(fun(X_b,bool),fun(X_c,bool)))),finite_fold_graph(X_b,X_c)) = finite_fold_graph(X_b,X_c) ).

fof(fact_438_distrib__sup__le,axiom,
    ! [X_a] :
      ( lattice(X_a)
     => ! [X,Y,Z] : hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),X),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),Y),Z))),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),X),Y)),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),X),Z)))) ) ).

fof(tsy_c_Big__Operators_Osemilattice__big_res,axiom,
    ! [X_b] : big_semilattice_big(X_b) = ti(fun(fun(X_b,fun(X_b,X_b)),fun(fun(fun(X_b,bool),X_b),bool)),big_semilattice_big(X_b)) ).

fof(fact_148_folding__one_Oclosed,axiom,
    ! [X_b,A_1,F,F_1] :
      ( hBOOL(hAPP(fun(fun(X_b,bool),X_b),bool,hAPP(fun(X_b,fun(X_b,X_b)),fun(fun(fun(X_b,bool),X_b),bool),finite_folding_one(X_b),F),F_1))
     => ( hBOOL(hAPP(fun(X_b,bool),bool,finite_finite_1(X_b),A_1))
       => ( bot_bot(fun(X_b,bool)) != ti(fun(X_b,bool),A_1)
         => ( ! [X_2,Y_2] : hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),hAPP(X_b,X_b,hAPP(X_b,fun(X_b,X_b),F,X_2),Y_2)),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),X_2),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),Y_2),bot_bot(fun(X_b,bool))))))
           => hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),hAPP(fun(X_b,bool),X_b,F_1,A_1)),A_1)) ) ) ) ) ).

fof(fact_349_sup1I2,axiom,
    ! [X_b,A_1,B,X_1] :
      ( hBOOL(hAPP(X_b,bool,hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_sup_sup(fun(X_b,bool)),A_1),B),X_1))
     <= hBOOL(hAPP(X_b,bool,B,X_1)) ) ).

fof(tsy_c_Natural_Ogetlocs_res,axiom,
    getlocs = ti(fun(state,fun(loc_1,nat)),getlocs) ).

fof(fact_10_insertCI,axiom,
    ! [X_b,Ba,A_3,B] :
      ( ( ti(X_b,Ba) = ti(X_b,A_3)
       <= ~ hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),A_3),B)) )
     => hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),A_3),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),Ba),B))) ) ).

fof(fact_326_in__mono,axiom,
    ! [X_b,X_1,A_1,B] :
      ( ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),X_1),A_1))
       => hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),X_1),B)) )
     <= hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),ord_less_eq(fun(X_b,bool)),A_1),B)) ) ).

fof(fact_181_finite__Diff__insert,axiom,
    ! [X_b,A_1,A_3,B] :
      ( hBOOL(hAPP(fun(X_b,bool),bool,finite_finite_1(X_b),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),minus_minus(fun(X_b,bool)),A_1),B)))
    <=> hBOOL(hAPP(fun(X_b,bool),bool,finite_finite_1(X_b),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),minus_minus(fun(X_b,bool)),A_1),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),A_3),B)))) ) ).

fof(tsy_c_fdisj_res,axiom,
    ti(fun(bool,fun(bool,bool)),fdisj) = fdisj ).

fof(fact_9_insertE,axiom,
    ! [X_b,A_3,Ba,A_1] :
      ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),A_3),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),Ba),A_1)))
     => ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),A_3),A_1))
       <= ti(X_b,A_3) != ti(X_b,Ba) ) ) ).

fof(fact_319_Sup__fin_Oidem,axiom,
    ! [X_a] :
      ( lattice(X_a)
     => ! [X] : ti(X_a,X) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),X),X) ) ).

fof(fact_363_insert__is__Un,axiom,
    ! [X_b,A_3,A_1] : hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_sup_sup(fun(X_b,bool)),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),A_3),bot_bot(fun(X_b,bool)))),A_1) = hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),A_3),A_1) ).

fof(fact_118_com__det,axiom,
    ! [U_1,C_1,S_1,T_4] :
      ( ( hBOOL(hAPP(state,bool,hAPP(state,fun(state,bool),hAPP(com,fun(state,fun(state,bool)),evalc,C_1),S_1),U_1))
       => U_1 = T_4 )
     <= hBOOL(hAPP(state,bool,hAPP(state,fun(state,bool),hAPP(com,fun(state,fun(state,bool)),evalc,C_1),S_1),T_4)) ) ).

fof(fact_21_ex__in__conv,axiom,
    ! [X_b,A_1] :
      ( ? [X_2] : hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),X_2),A_1))
    <=> bot_bot(fun(X_b,bool)) != ti(fun(X_b,bool),A_1) ) ).

fof(help_fNot_2_1_U,axiom,
    ! [P] :
      ( hBOOL(P)
      | hBOOL(hAPP(bool,bool,fNot,P)) ) ).

fof(arity_fun___Lattices_Olattice,axiom,
    ! [T_2,T_1] :
      ( lattice(T_1)
     => lattice(fun(T_2,T_1)) ) ).

fof(fact_74_empty__is__image,axiom,
    ! [X_b,X_c,F,A_1] :
      ( ti(fun(X_c,bool),A_1) = bot_bot(fun(X_c,bool))
    <=> bot_bot(fun(X_b,bool)) = hAPP(fun(X_c,bool),fun(X_b,bool),hAPP(fun(X_c,X_b),fun(fun(X_c,bool),fun(X_b,bool)),image(X_c,X_b),F),A_1) ) ).

fof(fact_469_inf__bot__right,axiom,
    ! [X_a] :
      ( bounded_lattice_bot(X_a)
     => ! [X] : bot_bot(X_a) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),X),bot_bot(X_a)) ) ).

fof(tsy_c_Set_Oinsert_res,axiom,
    ! [X_b] : insert(X_b) = ti(fun(X_b,fun(fun(X_b,bool),fun(X_b,bool))),insert(X_b)) ).

fof(fact_115_evalc_OAssign,axiom,
    ! [X_3,A_3,S_4] : hBOOL(hAPP(state,bool,hAPP(state,fun(state,bool),hAPP(com,fun(state,fun(state,bool)),evalc,hAPP(fun(state,nat),com,hAPP(vname,fun(fun(state,nat),com),ass,X_3),A_3)),S_4),hAPP(nat,state,hAPP(vname,fun(nat,state),hAPP(state,fun(vname,fun(nat,state)),update,S_4),X_3),hAPP(state,nat,A_3,S_4)))) ).

fof(fact_177_Diff__insert__absorb,axiom,
    ! [X_b,X_1,A_1] :
      ( ~ hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),X_1),A_1))
     => hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),minus_minus(fun(X_b,bool)),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),X_1),A_1)),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),X_1),bot_bot(fun(X_b,bool)))) = ti(fun(X_b,bool),A_1) ) ).

fof(fact_367_finite__surj,axiom,
    ! [X_c,X_b,B,F,A_1] :
      ( ( hBOOL(hAPP(fun(X_c,bool),bool,finite_finite_1(X_c),B))
       <= hBOOL(hAPP(fun(X_c,bool),bool,hAPP(fun(X_c,bool),fun(fun(X_c,bool),bool),ord_less_eq(fun(X_c,bool)),B),hAPP(fun(X_b,bool),fun(X_c,bool),hAPP(fun(X_b,X_c),fun(fun(X_b,bool),fun(X_c,bool)),image(X_b,X_c),F),A_1))) )
     <= hBOOL(hAPP(fun(X_b,bool),bool,finite_finite_1(X_b),A_1)) ) ).

fof(fact_459_Int__left__absorb,axiom,
    ! [X_b,A_1,B] : hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_inf_inf(fun(X_b,bool)),A_1),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_inf_inf(fun(X_b,bool)),A_1),B)) = hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_inf_inf(fun(X_b,bool)),A_1),B) ).

fof(fact_310_xt1_I3_J,axiom,
    ! [X_a] :
      ( ! [C_1,A_2,B_1] :
          ( ti(X_a,B_1) = ti(X_a,A_2)
         => ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),C_1),A_2))
           <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),C_1),B_1)) ) )
     <= order(X_a) ) ).

fof(fact_128_MGT__def,axiom,
    ! [Ca] : hAPP(com,hoare_1656922687triple(state),hoare_Mirabelle_MGT,Ca) = hAPP(fun(state,fun(state,bool)),hoare_1656922687triple(state),hAPP(com,fun(fun(state,fun(state,bool)),hoare_1656922687triple(state)),hAPP(fun(state,fun(state,bool)),fun(com,fun(fun(state,fun(state,bool)),hoare_1656922687triple(state))),hoare_246368825triple(state),fequal(state)),Ca),hAPP(com,fun(state,fun(state,bool)),evalc,Ca)) ).

fof(fact_418_le__infE,axiom,
    ! [X_a] :
      ( ! [X,A_2,B_1] :
          ( ~ ( ~ hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X),B_1))
             <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X),A_2)) )
         <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),A_2),B_1))) )
     <= semilattice_inf(X_a) ) ).

fof(fact_487_Diff__Int__distrib2,axiom,
    ! [X_b,A_1,B,C] : hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),minus_minus(fun(X_b,bool)),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_inf_inf(fun(X_b,bool)),A_1),C)),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_inf_inf(fun(X_b,bool)),B),C)) = hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_inf_inf(fun(X_b,bool)),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),minus_minus(fun(X_b,bool)),A_1),B)),C) ).

fof(fact_24_insert__absorb,axiom,
    ! [X_b,A_3,A_1] :
      ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),A_3),A_1))
     => ti(fun(X_b,bool),A_1) = hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),A_3),A_1) ) ).

fof(fact_41_the__elem__eq,axiom,
    ! [X_b,X_1] : ti(X_b,X_1) = hAPP(fun(X_b,bool),X_b,the_elem(X_b),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),X_1),bot_bot(fun(X_b,bool)))) ).

fof(help_fdisj_1_1_U,axiom,
    ! [Q,P] :
      ( ~ hBOOL(P)
      | hBOOL(hAPP(bool,bool,hAPP(bool,fun(bool,bool),fdisj,P),Q)) ) ).

fof(fact_382_diff__eq__diff__less__eq,axiom,
    ! [X_b] :
      ( ordered_ab_group_add(X_b)
     => ! [A_3,Ba,Ca,D_2] :
          ( ( hBOOL(hAPP(X_b,bool,hAPP(X_b,fun(X_b,bool),ord_less_eq(X_b),Ca),D_2))
          <=> hBOOL(hAPP(X_b,bool,hAPP(X_b,fun(X_b,bool),ord_less_eq(X_b),A_3),Ba)) )
         <= hAPP(X_b,X_b,hAPP(X_b,fun(X_b,X_b),minus_minus(X_b),A_3),Ba) = hAPP(X_b,X_b,hAPP(X_b,fun(X_b,X_b),minus_minus(X_b),Ca),D_2) ) ) ).

fof(fact_412_Sup__fin_Ounion__disjoint,axiom,
    ! [X_b] :
      ( ! [B,A_1] :
          ( ( ti(fun(X_b,bool),A_1) != bot_bot(fun(X_b,bool))
           => ( ( ( hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_inf_inf(fun(X_b,bool)),A_1),B) = bot_bot(fun(X_b,bool))
                 => hAPP(fun(X_b,bool),X_b,big_lattice_Sup_fin(X_b),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_sup_sup(fun(X_b,bool)),A_1),B)) = hAPP(X_b,X_b,hAPP(X_b,fun(X_b,X_b),semilattice_sup_sup(X_b),hAPP(fun(X_b,bool),X_b,big_lattice_Sup_fin(X_b),A_1)),hAPP(fun(X_b,bool),X_b,big_lattice_Sup_fin(X_b),B)) )
               <= bot_bot(fun(X_b,bool)) != ti(fun(X_b,bool),B) )
             <= hBOOL(hAPP(fun(X_b,bool),bool,finite_finite_1(X_b),B)) ) )
         <= hBOOL(hAPP(fun(X_b,bool),bool,finite_finite_1(X_b),A_1)) )
     <= lattice(X_b) ) ).

fof(fact_456_Int__absorb,axiom,
    ! [X_b,A_1] : hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_inf_inf(fun(X_b,bool)),A_1),A_1) = ti(fun(X_b,bool),A_1) ).

fof(arity_Nat_Onat___Lattices_Osemilattice__sup,axiom,
    semilattice_sup(nat) ).

fof(arity_Nat_Onat___Lattices_Olattice,axiom,
    lattice(nat) ).

fof(fact_70_com_Osimps_I8_J,axiom,
    ! [Vname_1,Fun] : skip != hAPP(fun(state,nat),com,hAPP(vname,fun(fun(state,nat),com),ass,Vname_1),Fun) ).

fof(fact_226_folding__one_Oeq__fold_H,axiom,
    ! [X_b,X_1,A_1,F,F_1] :
      ( hBOOL(hAPP(fun(fun(X_b,bool),X_b),bool,hAPP(fun(X_b,fun(X_b,X_b)),fun(fun(fun(X_b,bool),X_b),bool),finite_folding_one(X_b),F),F_1))
     => ( ( ~ hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),X_1),A_1))
         => hAPP(fun(X_b,bool),X_b,hAPP(X_b,fun(fun(X_b,bool),X_b),hAPP(fun(X_b,fun(X_b,X_b)),fun(X_b,fun(fun(X_b,bool),X_b)),finite_fold(X_b,X_b),F),X_1),A_1) = hAPP(fun(X_b,bool),X_b,F_1,hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),X_1),A_1)) )
       <= hBOOL(hAPP(fun(X_b,bool),bool,finite_finite_1(X_b),A_1)) ) ) ).

fof(fact_467_Int__empty__left,axiom,
    ! [X_b,B] : bot_bot(fun(X_b,bool)) = hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_inf_inf(fun(X_b,bool)),bot_bot(fun(X_b,bool))),B) ).

fof(fact_353_bot__least,axiom,
    ! [X_a] :
      ( ! [A_2] : hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),bot_bot(X_a)),A_2))
     <= bot(X_a) ) ).

fof(fact_255_subset__insertI2,axiom,
    ! [X_b,Ba,A_1,B] :
      ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),ord_less_eq(fun(X_b,bool)),A_1),B))
     => hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),ord_less_eq(fun(X_b,bool)),A_1),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),Ba),B))) ) ).

fof(fact_1_triple_Oinject,axiom,
    ! [X_b,Fun1_1,Com_1,Fun2_1,Fun1_2,Com,Fun2_2] :
      ( ( Fun1_1 = Fun1_2
        & Com = Com_1
        & Fun2_2 = Fun2_1 )
    <=> hAPP(fun(X_b,fun(state,bool)),hoare_1656922687triple(X_b),hAPP(com,fun(fun(X_b,fun(state,bool)),hoare_1656922687triple(X_b)),hAPP(fun(X_b,fun(state,bool)),fun(com,fun(fun(X_b,fun(state,bool)),hoare_1656922687triple(X_b))),hoare_246368825triple(X_b),Fun1_1),Com_1),Fun2_1) = hAPP(fun(X_b,fun(state,bool)),hoare_1656922687triple(X_b),hAPP(com,fun(fun(X_b,fun(state,bool)),hoare_1656922687triple(X_b)),hAPP(fun(X_b,fun(state,bool)),fun(com,fun(fun(X_b,fun(state,bool)),hoare_1656922687triple(X_b))),hoare_246368825triple(X_b),Fun1_2),Com),Fun2_2) ) ).

fof(fact_120_empty__fold__graphE,axiom,
    ! [X_c,X_b,F,Z_1,X_1] :
      ( hBOOL(hAPP(X_c,bool,hAPP(fun(X_b,bool),fun(X_c,bool),hAPP(X_c,fun(fun(X_b,bool),fun(X_c,bool)),hAPP(fun(X_b,fun(X_c,X_c)),fun(X_c,fun(fun(X_b,bool),fun(X_c,bool))),finite_fold_graph(X_b,X_c),F),Z_1),bot_bot(fun(X_b,bool))),X_1))
     => ti(X_c,X_1) = ti(X_c,Z_1) ) ).

fof(fact_132_evaln__max2,axiom,
    ! [C2,S2,N2,T2,C1,S1,N1,T1] :
      ( hBOOL(hAPP(state,bool,hAPP(nat,fun(state,bool),hAPP(state,fun(nat,fun(state,bool)),hAPP(com,fun(state,fun(nat,fun(state,bool))),evaln,C1),S1),N1),T1))
     => ( hBOOL(hAPP(state,bool,hAPP(nat,fun(state,bool),hAPP(state,fun(nat,fun(state,bool)),hAPP(com,fun(state,fun(nat,fun(state,bool))),evaln,C2),S2),N2),T2))
       => ? [N_1] :
            ( hBOOL(hAPP(state,bool,hAPP(nat,fun(state,bool),hAPP(state,fun(nat,fun(state,bool)),hAPP(com,fun(state,fun(nat,fun(state,bool))),evaln,C1),S1),N_1),T1))
            & hBOOL(hAPP(state,bool,hAPP(nat,fun(state,bool),hAPP(state,fun(nat,fun(state,bool)),hAPP(com,fun(state,fun(nat,fun(state,bool))),evaln,C2),S2),N_1),T2)) ) ) ) ).

fof(fact_396_comm__monoid__big_OF__eq,axiom,
    ! [X_c,X_b,G,A_1,F,Z_1,F_1] :
      ( hBOOL(hAPP(fun(fun(X_c,X_b),fun(fun(X_c,bool),X_b)),bool,hAPP(X_b,fun(fun(fun(X_c,X_b),fun(fun(X_c,bool),X_b)),bool),hAPP(fun(X_b,fun(X_b,X_b)),fun(X_b,fun(fun(fun(X_c,X_b),fun(fun(X_c,bool),X_b)),bool)),big_comm_monoid_big(X_b,X_c),F),Z_1),F_1))
     => ( ( ~ hBOOL(hAPP(fun(X_c,bool),bool,finite_finite_1(X_c),A_1))
         => ti(X_b,Z_1) = hAPP(fun(X_c,bool),X_b,hAPP(fun(X_c,X_b),fun(fun(X_c,bool),X_b),F_1,G),A_1) )
        & ( hAPP(fun(X_c,bool),X_b,hAPP(fun(X_c,X_b),fun(fun(X_c,bool),X_b),F_1,G),A_1) = hAPP(fun(X_c,bool),X_b,hAPP(X_b,fun(fun(X_c,bool),X_b),hAPP(fun(X_c,X_b),fun(X_b,fun(fun(X_c,bool),X_b)),hAPP(fun(X_b,fun(X_b,X_b)),fun(fun(X_c,X_b),fun(X_b,fun(fun(X_c,bool),X_b))),finite_fold_image(X_b,X_c),F),G),Z_1),A_1)
         <= hBOOL(hAPP(fun(X_c,bool),bool,finite_finite_1(X_c),A_1)) ) ) ) ).

fof(fact_329_UnI2,axiom,
    ! [X_b,A_1,Ca,B] :
      ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),Ca),B))
     => hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),Ca),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_sup_sup(fun(X_b,bool)),A_1),B))) ) ).

fof(fact_340_subset__Un__eq,axiom,
    ! [X_b,A_1,B] :
      ( ti(fun(X_b,bool),B) = hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_sup_sup(fun(X_b,bool)),A_1),B)
    <=> hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),ord_less_eq(fun(X_b,bool)),A_1),B)) ) ).

fof(fact_371_diff__single__insert,axiom,
    ! [X_b,A_1,X_1,B] :
      ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),ord_less_eq(fun(X_b,bool)),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),minus_minus(fun(X_b,bool)),A_1),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),X_1),bot_bot(fun(X_b,bool))))),B))
     => ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),ord_less_eq(fun(X_b,bool)),A_1),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),X_1),B)))
       <= hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),X_1),A_1)) ) ) ).

fof(fact_498_Un__Int__distrib2,axiom,
    ! [X_b,B,C,A_1] : hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_sup_sup(fun(X_b,bool)),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_inf_inf(fun(X_b,bool)),B),C)),A_1) = hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_inf_inf(fun(X_b,bool)),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_sup_sup(fun(X_b,bool)),B),A_1)),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_sup_sup(fun(X_b,bool)),C),A_1)) ).

fof(help_fimplies_3_1_U,axiom,
    ! [P,Q] :
      ( ~ hBOOL(hAPP(bool,bool,hAPP(bool,fun(bool,bool),fimplies,P),Q))
      | ~ hBOOL(P)
      | hBOOL(Q) ) ).

fof(fact_173_finite__Diff2,axiom,
    ! [X_b,A_1,B] :
      ( hBOOL(hAPP(fun(X_b,bool),bool,finite_finite_1(X_b),B))
     => ( hBOOL(hAPP(fun(X_b,bool),bool,finite_finite_1(X_b),A_1))
      <=> hBOOL(hAPP(fun(X_b,bool),bool,finite_finite_1(X_b),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),minus_minus(fun(X_b,bool)),A_1),B))) ) ) ).

fof(tsy_c_Orderings_Oord__class_Oless__eq_res,axiom,
    ! [X_c] :
      ( ord(X_c)
     => ord_less_eq(X_c) = ti(fun(X_c,fun(X_c,bool)),ord_less_eq(X_c)) ) ).

fof(fact_200_comp__fun__commute_Ofun__left__comm,axiom,
    ! [X_b,X_c,X_1,Y_1,Z_1,F] :
      ( hBOOL(hAPP(fun(X_b,fun(X_c,X_c)),bool,finite100568337ommute(X_b,X_c),F))
     => hAPP(X_c,X_c,hAPP(X_b,fun(X_c,X_c),F,Y_1),hAPP(X_c,X_c,hAPP(X_b,fun(X_c,X_c),F,X_1),Z_1)) = hAPP(X_c,X_c,hAPP(X_b,fun(X_c,X_c),F,X_1),hAPP(X_c,X_c,hAPP(X_b,fun(X_c,X_c),F,Y_1),Z_1)) ) ).

fof(fact_8_conseq12,axiom,
    ! [X_b,Q_1,Pa,Ga,P_2,Ca,Q_3] :
      ( hBOOL(hAPP(fun(hoare_1656922687triple(X_b),bool),bool,hAPP(fun(hoare_1656922687triple(X_b),bool),fun(fun(hoare_1656922687triple(X_b),bool),bool),hoare_279057269derivs(X_b),Ga),hAPP(fun(hoare_1656922687triple(X_b),bool),fun(hoare_1656922687triple(X_b),bool),hAPP(hoare_1656922687triple(X_b),fun(fun(hoare_1656922687triple(X_b),bool),fun(hoare_1656922687triple(X_b),bool)),insert(hoare_1656922687triple(X_b)),hAPP(fun(X_b,fun(state,bool)),hoare_1656922687triple(X_b),hAPP(com,fun(fun(X_b,fun(state,bool)),hoare_1656922687triple(X_b)),hAPP(fun(X_b,fun(state,bool)),fun(com,fun(fun(X_b,fun(state,bool)),hoare_1656922687triple(X_b))),hoare_246368825triple(X_b),P_2),Ca),Q_3)),bot_bot(fun(hoare_1656922687triple(X_b),bool)))))
     => ( hBOOL(hAPP(fun(hoare_1656922687triple(X_b),bool),bool,hAPP(fun(hoare_1656922687triple(X_b),bool),fun(fun(hoare_1656922687triple(X_b),bool),bool),hoare_279057269derivs(X_b),Ga),hAPP(fun(hoare_1656922687triple(X_b),bool),fun(hoare_1656922687triple(X_b),bool),hAPP(hoare_1656922687triple(X_b),fun(fun(hoare_1656922687triple(X_b),bool),fun(hoare_1656922687triple(X_b),bool)),insert(hoare_1656922687triple(X_b)),hAPP(fun(X_b,fun(state,bool)),hoare_1656922687triple(X_b),hAPP(com,fun(fun(X_b,fun(state,bool)),hoare_1656922687triple(X_b)),hAPP(fun(X_b,fun(state,bool)),fun(com,fun(fun(X_b,fun(state,bool)),hoare_1656922687triple(X_b))),hoare_246368825triple(X_b),Pa),Ca),Q_1)),bot_bot(fun(hoare_1656922687triple(X_b),bool)))))
       <= ! [Z_2,S_2] :
            ( ! [S_3] :
                ( ! [Z_3] :
                    ( hBOOL(hAPP(state,bool,hAPP(X_b,fun(state,bool),Q_3,Z_3),S_3))
                   <= hBOOL(hAPP(state,bool,hAPP(X_b,fun(state,bool),P_2,Z_3),S_2)) )
               => hBOOL(hAPP(state,bool,hAPP(X_b,fun(state,bool),Q_1,Z_2),S_3)) )
           <= hBOOL(hAPP(state,bool,hAPP(X_b,fun(state,bool),Pa,Z_2),S_2)) ) ) ) ).

fof(fact_341_Un__commute,axiom,
    ! [X_b,A_1,B] : hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_sup_sup(fun(X_b,bool)),A_1),B) = hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_sup_sup(fun(X_b,bool)),B),A_1) ).

fof(fact_427_le__iff__inf,axiom,
    ! [X_b] :
      ( ! [X_1,Y_1] :
          ( ti(X_b,X_1) = hAPP(X_b,X_b,hAPP(X_b,fun(X_b,X_b),semilattice_inf_inf(X_b),X_1),Y_1)
        <=> hBOOL(hAPP(X_b,bool,hAPP(X_b,fun(X_b,bool),ord_less_eq(X_b),X_1),Y_1)) )
     <= semilattice_inf(X_b) ) ).

fof(fact_298_Un__empty__right,axiom,
    ! [X_b,A_1] : ti(fun(X_b,bool),A_1) = hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_sup_sup(fun(X_b,bool)),A_1),bot_bot(fun(X_b,bool))) ).

fof(fact_104_evalc_OLocal,axiom,
    ! [Ca,S0_1,Y_4,A_3,S1_2] :
      ( hBOOL(hAPP(state,bool,hAPP(state,fun(state,bool),hAPP(com,fun(state,fun(state,bool)),evalc,hAPP(com,com,hAPP(fun(state,nat),fun(com,com),hAPP(loc_1,fun(fun(state,nat),fun(com,com)),local,Y_4),A_3),Ca)),S0_1),hAPP(nat,state,hAPP(vname,fun(nat,state),hAPP(state,fun(vname,fun(nat,state)),update,S1_2),hAPP(loc_1,vname,loc,Y_4)),hAPP(loc_1,nat,hAPP(state,fun(loc_1,nat),getlocs,S0_1),Y_4))))
     <= hBOOL(hAPP(state,bool,hAPP(state,fun(state,bool),hAPP(com,fun(state,fun(state,bool)),evalc,Ca),hAPP(nat,state,hAPP(vname,fun(nat,state),hAPP(state,fun(vname,fun(nat,state)),update,S0_1),hAPP(loc_1,vname,loc,Y_4)),hAPP(state,nat,A_3,S0_1))),S1_2)) ) ).

fof(arity_HOL_Obool___Orderings_Oorder,axiom,
    order(bool) ).

fof(fact_465_disjoint__iff__not__equal,axiom,
    ! [X_b,A_1,B] :
      ( bot_bot(fun(X_b,bool)) = hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_inf_inf(fun(X_b,bool)),A_1),B)
    <=> ! [X_2] :
          ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),X_2),A_1))
         => ! [Xa] :
              ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),Xa),B))
             => ti(X_b,Xa) != ti(X_b,X_2) ) ) ) ).

fof(fact_209_comp__fun__commute_Ofold__rec,axiom,
    ! [X_b,X_c,Z_1,X_1,A_1,F] :
      ( hBOOL(hAPP(fun(X_b,fun(X_c,X_c)),bool,finite100568337ommute(X_b,X_c),F))
     => ( hBOOL(hAPP(fun(X_b,bool),bool,finite_finite_1(X_b),A_1))
       => ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),X_1),A_1))
         => hAPP(X_c,X_c,hAPP(X_b,fun(X_c,X_c),F,X_1),hAPP(fun(X_b,bool),X_c,hAPP(X_c,fun(fun(X_b,bool),X_c),hAPP(fun(X_b,fun(X_c,X_c)),fun(X_c,fun(fun(X_b,bool),X_c)),finite_fold(X_b,X_c),F),Z_1),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),minus_minus(fun(X_b,bool)),A_1),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),X_1),bot_bot(fun(X_b,bool)))))) = hAPP(fun(X_b,bool),X_c,hAPP(X_c,fun(fun(X_b,bool),X_c),hAPP(fun(X_b,fun(X_c,X_c)),fun(X_c,fun(fun(X_b,bool),X_c)),finite_fold(X_b,X_c),F),Z_1),A_1) ) ) ) ).

fof(fact_38_singleton__iff,axiom,
    ! [X_b,Ba,A_3] :
      ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),Ba),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),A_3),bot_bot(fun(X_b,bool)))))
    <=> ti(X_b,A_3) = ti(X_b,Ba) ) ).

fof(fact_85_fold1Set__sing,axiom,
    ! [X_b,F,A_3,Ba] :
      ( hBOOL(hAPP(X_b,bool,hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,fun(X_b,X_b)),fun(fun(X_b,bool),fun(X_b,bool)),finite_fold1Set(X_b),F),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),A_3),bot_bot(fun(X_b,bool)))),Ba))
    <=> ti(X_b,A_3) = ti(X_b,Ba) ) ).

fof(help_fimplies_2_1_U,axiom,
    ! [P,Q] :
      ( ~ hBOOL(Q)
      | hBOOL(hAPP(bool,bool,hAPP(bool,fun(bool,bool),fimplies,P),Q)) ) ).

fof(tsy_c_Com_Ocom_OLocal_res,axiom,
    ti(fun(loc_1,fun(fun(state,nat),fun(com,com))),local) = local ).

fof(fact_370_folding__image__simple__idem_Osubset__idem,axiom,
    ! [X_c,X_b,B,A_1,F,Z_1,G,F_1] :
      ( ( hBOOL(hAPP(fun(X_c,bool),bool,finite_finite_1(X_c),A_1))
       => ( hBOOL(hAPP(fun(X_c,bool),bool,hAPP(fun(X_c,bool),fun(fun(X_c,bool),bool),ord_less_eq(fun(X_c,bool)),B),A_1))
         => hAPP(X_b,X_b,hAPP(X_b,fun(X_b,X_b),F,hAPP(fun(X_c,bool),X_b,F_1,B)),hAPP(fun(X_c,bool),X_b,F_1,A_1)) = hAPP(fun(X_c,bool),X_b,F_1,A_1) ) )
     <= hBOOL(hAPP(fun(fun(X_c,bool),X_b),bool,hAPP(fun(X_c,X_b),fun(fun(fun(X_c,bool),X_b),bool),hAPP(X_b,fun(fun(X_c,X_b),fun(fun(fun(X_c,bool),X_b),bool)),hAPP(fun(X_b,fun(X_b,X_b)),fun(X_b,fun(fun(X_c,X_b),fun(fun(fun(X_c,bool),X_b),bool))),finite908156982e_idem(X_b,X_c),F),Z_1),G),F_1)) ) ).

fof(fact_499_Un__Int__crazy,axiom,
    ! [X_b,A_1,B,C] : hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_sup_sup(fun(X_b,bool)),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_sup_sup(fun(X_b,bool)),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_inf_inf(fun(X_b,bool)),A_1),B)),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_inf_inf(fun(X_b,bool)),B),C))),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_inf_inf(fun(X_b,bool)),C),A_1)) = hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_inf_inf(fun(X_b,bool)),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_inf_inf(fun(X_b,bool)),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_sup_sup(fun(X_b,bool)),A_1),B)),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_sup_sup(fun(X_b,bool)),B),C))),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_sup_sup(fun(X_b,bool)),C),A_1)) ).

fof(fact_39_insert__not__empty,axiom,
    ! [X_b,A_3,A_1] : bot_bot(fun(X_b,bool)) != hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),A_3),A_1) ).

fof(fact_59_image__constant__conv,axiom,
    ! [X_c,X_b,Ca,A_1] :
      ( ( ti(fun(X_b,bool),A_1) != bot_bot(fun(X_b,bool))
       => hAPP(fun(X_b,bool),fun(X_c,bool),hAPP(fun(X_b,X_c),fun(fun(X_b,bool),fun(X_c,bool)),image(X_b,X_c),hAPP(X_c,fun(X_b,X_c),combk(X_c,X_b),Ca)),A_1) = hAPP(fun(X_c,bool),fun(X_c,bool),hAPP(X_c,fun(fun(X_c,bool),fun(X_c,bool)),insert(X_c),Ca),bot_bot(fun(X_c,bool))) )
      & ( ti(fun(X_b,bool),A_1) = bot_bot(fun(X_b,bool))
       => bot_bot(fun(X_c,bool)) = hAPP(fun(X_b,bool),fun(X_c,bool),hAPP(fun(X_b,X_c),fun(fun(X_b,bool),fun(X_c,bool)),image(X_b,X_c),hAPP(X_c,fun(X_b,X_c),combk(X_c,X_b),Ca)),A_1) ) ) ).

fof(tsy_c_fFalse_res,hypothesis,
    fFalse = ti(bool,fFalse) ).

fof(tsy_c_Finite__Set_Ofinite_res,axiom,
    ! [X_b] : finite_finite_1(X_b) = ti(fun(fun(X_b,bool),bool),finite_finite_1(X_b)) ).

fof(fact_356_image__Un,axiom,
    ! [X_c,X_b,F,A_1,B] : hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_sup_sup(fun(X_b,bool)),hAPP(fun(X_c,bool),fun(X_b,bool),hAPP(fun(X_c,X_b),fun(fun(X_c,bool),fun(X_b,bool)),image(X_c,X_b),F),A_1)),hAPP(fun(X_c,bool),fun(X_b,bool),hAPP(fun(X_c,X_b),fun(fun(X_c,bool),fun(X_b,bool)),image(X_c,X_b),F),B)) = hAPP(fun(X_c,bool),fun(X_b,bool),hAPP(fun(X_c,X_b),fun(fun(X_c,bool),fun(X_b,bool)),image(X_c,X_b),F),hAPP(fun(X_c,bool),fun(X_c,bool),hAPP(fun(X_c,bool),fun(fun(X_c,bool),fun(X_c,bool)),semilattice_sup_sup(fun(X_c,bool)),A_1),B)) ).

fof(tsy_c_hBOOL_arg1,hypothesis,
    ! [B_1_1] :
      ( hBOOL(ti(bool,B_1_1))
    <=> hBOOL(B_1_1) ) ).

fof(fact_166_Diff__idemp,axiom,
    ! [X_b,A_1,B] : hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),minus_minus(fun(X_b,bool)),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),minus_minus(fun(X_b,bool)),A_1),B)),B) = hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),minus_minus(fun(X_b,bool)),A_1),B) ).

fof(fact_18_Collect__empty__eq,axiom,
    ! [X_b,Pa] :
      ( bot_bot(fun(X_b,bool)) = hAPP(fun(X_b,bool),fun(X_b,bool),collect(X_b),Pa)
    <=> ! [X_2] : ~ hBOOL(hAPP(X_b,bool,Pa,X_2)) ) ).

fof(fact_121_fold__graph_OemptyI,axiom,
    ! [X_c,X_b,F,Z_1] : hBOOL(hAPP(X_c,bool,hAPP(fun(X_b,bool),fun(X_c,bool),hAPP(X_c,fun(fun(X_b,bool),fun(X_c,bool)),hAPP(fun(X_b,fun(X_c,X_c)),fun(X_c,fun(fun(X_b,bool),fun(X_c,bool))),finite_fold_graph(X_b,X_c),F),Z_1),bot_bot(fun(X_b,bool))),Z_1)) ).

fof(fact_450_Int__insert__right,axiom,
    ! [X_b,B,A_3,A_1] :
      ( ( hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_inf_inf(fun(X_b,bool)),A_1),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),A_3),B)) = hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_inf_inf(fun(X_b,bool)),A_1),B)
       <= ~ hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),A_3),A_1)) )
      & ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),A_3),A_1))
       => hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),A_3),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_inf_inf(fun(X_b,bool)),A_1),B)) = hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_inf_inf(fun(X_b,bool)),A_1),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),A_3),B)) ) ) ).

fof(fact_299_Un__empty,axiom,
    ! [X_b,A_1,B] :
      ( ( bot_bot(fun(X_b,bool)) = ti(fun(X_b,bool),A_1)
        & bot_bot(fun(X_b,bool)) = ti(fun(X_b,bool),B) )
    <=> hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_sup_sup(fun(X_b,bool)),A_1),B) = bot_bot(fun(X_b,bool)) ) ).

fof(fact_251_Un__Diff,axiom,
    ! [X_b,A_1,B,C] : hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_sup_sup(fun(X_b,bool)),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),minus_minus(fun(X_b,bool)),A_1),C)),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),minus_minus(fun(X_b,bool)),B),C)) = hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),minus_minus(fun(X_b,bool)),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_sup_sup(fun(X_b,bool)),A_1),B)),C) ).

fof(fact_337_Un__left__commute,axiom,
    ! [X_b,A_1,B,C] : hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_sup_sup(fun(X_b,bool)),A_1),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_sup_sup(fun(X_b,bool)),B),C)) = hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_sup_sup(fun(X_b,bool)),B),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_sup_sup(fun(X_b,bool)),A_1),C)) ).

fof(tsy_c_Natural_Oevaln_res,axiom,
    evaln = ti(fun(com,fun(state,fun(nat,fun(state,bool)))),evaln) ).

fof(fact_330_UnI1,axiom,
    ! [X_b,B,Ca,A_1] :
      ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),Ca),A_1))
     => hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),Ca),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_sup_sup(fun(X_b,bool)),A_1),B))) ) ).

fof(fact_494_Diff__disjoint,axiom,
    ! [X_b,A_1,B] : hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_inf_inf(fun(X_b,bool)),A_1),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),minus_minus(fun(X_b,bool)),B),A_1)) = bot_bot(fun(X_b,bool)) ).

fof(fact_217_fold1__singleton,axiom,
    ! [X_b,F,A_3] : ti(X_b,A_3) = hAPP(fun(X_b,bool),X_b,hAPP(fun(X_b,fun(X_b,X_b)),fun(fun(X_b,bool),X_b),finite_fold1(X_b),F),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),A_3),bot_bot(fun(X_b,bool)))) ).

fof(fact_112_evalc__elim__cases_I1_J,axiom,
    ! [S_1,T_4] :
      ( hBOOL(hAPP(state,bool,hAPP(state,fun(state,bool),hAPP(com,fun(state,fun(state,bool)),evalc,skip),S_1),T_4))
     => S_1 = T_4 ) ).

fof(fact_264_le__supE,axiom,
    ! [X_a] :
      ( semilattice_sup(X_a)
     => ! [A_2,B_1,X] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),A_2),B_1)),X))
         => ~ ( ~ hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),B_1),X))
             <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),A_2),X)) ) ) ) ).

fof(fact_19_empty__iff,axiom,
    ! [X_b,Ca] : ~ hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),Ca),bot_bot(fun(X_b,bool)))) ).

fof(fact_153_finite__imp__fold__graph,axiom,
    ! [X_c,X_b,F,Z_1,A_1] :
      ( ? [X1] : hBOOL(hAPP(X_c,bool,hAPP(fun(X_b,bool),fun(X_c,bool),hAPP(X_c,fun(fun(X_b,bool),fun(X_c,bool)),hAPP(fun(X_b,fun(X_c,X_c)),fun(X_c,fun(fun(X_b,bool),fun(X_c,bool))),finite_fold_graph(X_b,X_c),F),Z_1),A_1),X1))
     <= hBOOL(hAPP(fun(X_b,bool),bool,finite_finite_1(X_b),A_1)) ) ).

fof(fact_385_diff__eq__diff__eq,axiom,
    ! [X_b] :
      ( ab_group_add(X_b)
     => ! [A_3,Ba,Ca,D_2] :
          ( ( ti(X_b,Ca) = ti(X_b,D_2)
          <=> ti(X_b,A_3) = ti(X_b,Ba) )
         <= hAPP(X_b,X_b,hAPP(X_b,fun(X_b,X_b),minus_minus(X_b),A_3),Ba) = hAPP(X_b,X_b,hAPP(X_b,fun(X_b,X_b),minus_minus(X_b),Ca),D_2) ) ) ).

fof(arity_fun___Lattices_Obounded__lattice,axiom,
    ! [T_2,T_1] :
      ( bounded_lattice(T_1)
     => bounded_lattice(fun(T_2,T_1)) ) ).

fof(fact_323_subset__trans,axiom,
    ! [X_b,C,A_1,B] :
      ( ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),ord_less_eq(fun(X_b,bool)),B),C))
       => hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),ord_less_eq(fun(X_b,bool)),A_1),C)) )
     <= hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),ord_less_eq(fun(X_b,bool)),A_1),B)) ) ).

fof(fact_158_folding__one_Oremove,axiom,
    ! [X_b,X_1,A_1,F,F_1] :
      ( hBOOL(hAPP(fun(fun(X_b,bool),X_b),bool,hAPP(fun(X_b,fun(X_b,X_b)),fun(fun(fun(X_b,bool),X_b),bool),finite_folding_one(X_b),F),F_1))
     => ( ( ( ( hAPP(fun(X_b,bool),X_b,F_1,A_1) = hAPP(X_b,X_b,hAPP(X_b,fun(X_b,X_b),F,X_1),hAPP(fun(X_b,bool),X_b,F_1,hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),minus_minus(fun(X_b,bool)),A_1),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),X_1),bot_bot(fun(X_b,bool))))))
             <= hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),minus_minus(fun(X_b,bool)),A_1),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),X_1),bot_bot(fun(X_b,bool)))) != bot_bot(fun(X_b,bool)) )
            & ( ti(X_b,X_1) = hAPP(fun(X_b,bool),X_b,F_1,A_1)
             <= bot_bot(fun(X_b,bool)) = hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),minus_minus(fun(X_b,bool)),A_1),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),X_1),bot_bot(fun(X_b,bool)))) ) )
         <= hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),X_1),A_1)) )
       <= hBOOL(hAPP(fun(X_b,bool),bool,finite_finite_1(X_b),A_1)) ) ) ).

fof(tsy_c_Finite__Set_Ofold1_res,axiom,
    ! [X_b] : finite_fold1(X_b) = ti(fun(fun(X_b,fun(X_b,X_b)),fun(fun(X_b,bool),X_b)),finite_fold1(X_b)) ).

fof(tsy_c_Finite__Set_Ocomp__fun__commute_res,axiom,
    ! [X_b,X_c] : ti(fun(fun(X_b,fun(X_c,X_c)),bool),finite100568337ommute(X_b,X_c)) = finite100568337ommute(X_b,X_c) ).

fof(fact_79_image__insert,axiom,
    ! [X_c,X_b,F,A_3,B] : hAPP(fun(X_c,bool),fun(X_b,bool),hAPP(fun(X_c,X_b),fun(fun(X_c,bool),fun(X_b,bool)),image(X_c,X_b),F),hAPP(fun(X_c,bool),fun(X_c,bool),hAPP(X_c,fun(fun(X_c,bool),fun(X_c,bool)),insert(X_c),A_3),B)) = hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),hAPP(X_c,X_b,F,A_3)),hAPP(fun(X_c,bool),fun(X_b,bool),hAPP(fun(X_c,X_b),fun(fun(X_c,bool),fun(X_b,bool)),image(X_c,X_b),F),B)) ).

fof(fact_63_image__image,axiom,
    ! [X_c,X_b,X_d,F,G,A_1] : hAPP(fun(X_d,bool),fun(X_b,bool),hAPP(fun(X_d,X_b),fun(fun(X_d,bool),fun(X_b,bool)),image(X_d,X_b),hAPP(fun(X_d,X_c),fun(X_d,X_b),hAPP(fun(X_c,X_b),fun(fun(X_d,X_c),fun(X_d,X_b)),combb(X_c,X_b,X_d),F),G)),A_1) = hAPP(fun(X_c,bool),fun(X_b,bool),hAPP(fun(X_c,X_b),fun(fun(X_c,bool),fun(X_b,bool)),image(X_c,X_b),F),hAPP(fun(X_d,bool),fun(X_c,bool),hAPP(fun(X_d,X_c),fun(fun(X_d,bool),fun(X_c,bool)),image(X_d,X_c),G),A_1)) ).

fof(tsy_c_hAPP_arg1,axiom,
    ! [X_a,X_c,B_1_1,B_2_1] : hAPP(X_a,X_c,ti(fun(X_a,X_c),B_1_1),B_2_1) = hAPP(X_a,X_c,B_1_1,B_2_1) ).

fof(fact_229_fold1__def,axiom,
    ! [X_b,F,A_1] : hAPP(fun(X_b,bool),X_b,the(X_b),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,fun(X_b,X_b)),fun(fun(X_b,bool),fun(X_b,bool)),finite_fold1Set(X_b),F),A_1)) = hAPP(fun(X_b,bool),X_b,hAPP(fun(X_b,fun(X_b,X_b)),fun(fun(X_b,bool),X_b),finite_fold1(X_b),F),A_1) ).

fof(fact_433_Int__greatest,axiom,
    ! [X_b,B,C,A_1] :
      ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),ord_less_eq(fun(X_b,bool)),C),A_1))
     => ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),ord_less_eq(fun(X_b,bool)),C),B))
       => hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),ord_less_eq(fun(X_b,bool)),C),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_inf_inf(fun(X_b,bool)),A_1),B))) ) ) ).

fof(fact_22_all__not__in__conv,axiom,
    ! [X_b,A_1] :
      ( ! [X_2] : ~ hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),X_2),A_1))
    <=> ti(fun(X_b,bool),A_1) = bot_bot(fun(X_b,bool)) ) ).

fof(tsy_v_G_res,hypothesis,
    ti(fun(hoare_1656922687triple(x_a),bool),g) = g ).

fof(fact_275_inf__sup__aci_I6_J,axiom,
    ! [X_a] :
      ( lattice(X_a)
     => ! [X,Y,Z] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),X),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),Y),Z)) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),X),Y)),Z) ) ).

fof(tsy_c_Com_Ocom_OAss_res,axiom,
    ti(fun(vname,fun(fun(state,nat),com)),ass) = ass ).

fof(fact_227_folding__one__idem_Oeq__fold__idem_H,axiom,
    ! [X_b,A_3,A_1,F,F_1] :
      ( ( hBOOL(hAPP(fun(X_b,bool),bool,finite_finite_1(X_b),A_1))
       => hAPP(fun(X_b,bool),X_b,hAPP(X_b,fun(fun(X_b,bool),X_b),hAPP(fun(X_b,fun(X_b,X_b)),fun(X_b,fun(fun(X_b,bool),X_b)),finite_fold(X_b,X_b),F),A_3),A_1) = hAPP(fun(X_b,bool),X_b,F_1,hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),A_3),A_1)) )
     <= hBOOL(hAPP(fun(fun(X_b,bool),X_b),bool,hAPP(fun(X_b,fun(X_b,X_b)),fun(fun(fun(X_b,bool),X_b),bool),finite2073411215e_idem(X_b),F),F_1)) ) ).

fof(arity_HOL_Obool___Lattices_Osemilattice__inf,axiom,
    semilattice_inf(bool) ).

fof(fact_368_image__diff__subset,axiom,
    ! [X_b,X_c,F,A_1,B] : hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),ord_less_eq(fun(X_b,bool)),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),minus_minus(fun(X_b,bool)),hAPP(fun(X_c,bool),fun(X_b,bool),hAPP(fun(X_c,X_b),fun(fun(X_c,bool),fun(X_b,bool)),image(X_c,X_b),F),A_1)),hAPP(fun(X_c,bool),fun(X_b,bool),hAPP(fun(X_c,X_b),fun(fun(X_c,bool),fun(X_b,bool)),image(X_c,X_b),F),B))),hAPP(fun(X_c,bool),fun(X_b,bool),hAPP(fun(X_c,X_b),fun(fun(X_c,bool),fun(X_b,bool)),image(X_c,X_b),F),hAPP(fun(X_c,bool),fun(X_c,bool),hAPP(fun(X_c,bool),fun(fun(X_c,bool),fun(X_c,bool)),minus_minus(fun(X_c,bool)),A_1),B)))) ).

fof(fact_58_Ass,axiom,
    ! [X_b,Ga,Pa,X_3,A_3] : hBOOL(hAPP(fun(hoare_1656922687triple(X_b),bool),bool,hAPP(fun(hoare_1656922687triple(X_b),bool),fun(fun(hoare_1656922687triple(X_b),bool),bool),hoare_279057269derivs(X_b),Ga),hAPP(fun(hoare_1656922687triple(X_b),bool),fun(hoare_1656922687triple(X_b),bool),hAPP(hoare_1656922687triple(X_b),fun(fun(hoare_1656922687triple(X_b),bool),fun(hoare_1656922687triple(X_b),bool)),insert(hoare_1656922687triple(X_b)),hAPP(fun(X_b,fun(state,bool)),hoare_1656922687triple(X_b),hAPP(com,fun(fun(X_b,fun(state,bool)),hoare_1656922687triple(X_b)),hAPP(fun(X_b,fun(state,bool)),fun(com,fun(fun(X_b,fun(state,bool)),hoare_1656922687triple(X_b))),hoare_246368825triple(X_b),hAPP(fun(state,state),fun(X_b,fun(state,bool)),hAPP(fun(X_b,fun(fun(state,state),fun(state,bool))),fun(fun(state,state),fun(X_b,fun(state,bool))),combc(X_b,fun(state,state),fun(state,bool)),hAPP(fun(X_b,fun(state,bool)),fun(X_b,fun(fun(state,state),fun(state,bool))),hAPP(fun(fun(state,bool),fun(fun(state,state),fun(state,bool))),fun(fun(X_b,fun(state,bool)),fun(X_b,fun(fun(state,state),fun(state,bool)))),combb(fun(state,bool),fun(fun(state,state),fun(state,bool)),X_b),combb(state,bool,state)),Pa)),hAPP(fun(state,nat),fun(state,state),hAPP(fun(state,fun(nat,state)),fun(fun(state,nat),fun(state,state)),combs(state,nat,state),hAPP(vname,fun(state,fun(nat,state)),hAPP(fun(state,fun(vname,fun(nat,state))),fun(vname,fun(state,fun(nat,state))),combc(state,vname,fun(nat,state)),update),X_3)),A_3))),hAPP(fun(state,nat),com,hAPP(vname,fun(fun(state,nat),com),ass,X_3),A_3)),Pa)),bot_bot(fun(hoare_1656922687triple(X_b),bool))))) ).

fof(tsy_c_Natural_Oevalc_res,axiom,
    ti(fun(com,fun(state,fun(state,bool))),evalc) = evalc ).

fof(fact_33_insertI1,axiom,
    ! [X_b,A_3,B] : hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),A_3),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),A_3),B))) ).

fof(fact_283_le__iff__sup,axiom,
    ! [X_b] :
      ( ! [X_1,Y_1] :
          ( hBOOL(hAPP(X_b,bool,hAPP(X_b,fun(X_b,bool),ord_less_eq(X_b),X_1),Y_1))
        <=> hAPP(X_b,X_b,hAPP(X_b,fun(X_b,X_b),semilattice_sup_sup(X_b),X_1),Y_1) = ti(X_b,Y_1) )
     <= semilattice_sup(X_b) ) ).

fof(tsy_c_Nitpick_Ofold__graph_H_res,axiom,
    ! [X_b,X_c] : fold_graph(X_b,X_c) = ti(fun(fun(X_b,fun(X_c,X_c)),fun(X_c,fun(fun(X_b,bool),fun(X_c,bool)))),fold_graph(X_b,X_c)) ).

fof(fact_111_evalc_OSkip,axiom,
    ! [S_1] : hBOOL(hAPP(state,bool,hAPP(state,fun(state,bool),hAPP(com,fun(state,fun(state,bool)),evalc,skip),S_1),S_1)) ).

fof(fact_354_bot__unique,axiom,
    ! [X_b] :
      ( ! [A_3] :
          ( hBOOL(hAPP(X_b,bool,hAPP(X_b,fun(X_b,bool),ord_less_eq(X_b),A_3),bot_bot(X_b)))
        <=> bot_bot(X_b) = ti(X_b,A_3) )
     <= bot(X_b) ) ).

fof(fact_400_comm__monoid__big_Oinfinite,axiom,
    ! [X_c,X_b,G,A_1,F,Z_1,F_1] :
      ( hBOOL(hAPP(fun(fun(X_c,X_b),fun(fun(X_c,bool),X_b)),bool,hAPP(X_b,fun(fun(fun(X_c,X_b),fun(fun(X_c,bool),X_b)),bool),hAPP(fun(X_b,fun(X_b,X_b)),fun(X_b,fun(fun(fun(X_c,X_b),fun(fun(X_c,bool),X_b)),bool)),big_comm_monoid_big(X_b,X_c),F),Z_1),F_1))
     => ( ~ hBOOL(hAPP(fun(X_c,bool),bool,finite_finite_1(X_c),A_1))
       => ti(X_b,Z_1) = hAPP(fun(X_c,bool),X_b,hAPP(fun(X_c,X_b),fun(fun(X_c,bool),X_b),F_1,G),A_1) ) ) ).

fof(arity_HOL_Obool___Finite__Set_Ofinite,axiom,
    finite_finite(bool) ).

fof(tsy_c_Lattices_Osemilattice__sup__class_Osup_res,axiom,
    ! [X_b] :
      ( ti(fun(X_b,fun(X_b,X_b)),semilattice_sup_sup(X_b)) = semilattice_sup_sup(X_b)
     <= semilattice_sup(X_b) ) ).

fof(fact_183_folding__image__simple__idem_Oin__idem,axiom,
    ! [X_c,X_b,X_1,A_1,F,Z_1,G,F_1] :
      ( hBOOL(hAPP(fun(fun(X_c,bool),X_b),bool,hAPP(fun(X_c,X_b),fun(fun(fun(X_c,bool),X_b),bool),hAPP(X_b,fun(fun(X_c,X_b),fun(fun(fun(X_c,bool),X_b),bool)),hAPP(fun(X_b,fun(X_b,X_b)),fun(X_b,fun(fun(X_c,X_b),fun(fun(fun(X_c,bool),X_b),bool))),finite908156982e_idem(X_b,X_c),F),Z_1),G),F_1))
     => ( ( hAPP(X_b,X_b,hAPP(X_b,fun(X_b,X_b),F,hAPP(X_c,X_b,G,X_1)),hAPP(fun(X_c,bool),X_b,F_1,A_1)) = hAPP(fun(X_c,bool),X_b,F_1,A_1)
         <= hBOOL(hAPP(fun(X_c,bool),bool,hAPP(X_c,fun(fun(X_c,bool),bool),member(X_c),X_1),A_1)) )
       <= hBOOL(hAPP(fun(X_c,bool),bool,finite_finite_1(X_c),A_1)) ) ) ).

fof(fact_233_semilattice__big_OF__eq,axiom,
    ! [X_b,A_1,F,F_1] :
      ( hBOOL(hAPP(fun(fun(X_b,bool),X_b),bool,hAPP(fun(X_b,fun(X_b,X_b)),fun(fun(fun(X_b,bool),X_b),bool),big_semilattice_big(X_b),F),F_1))
     => ( hAPP(fun(X_b,bool),X_b,F_1,A_1) = hAPP(fun(X_b,bool),X_b,hAPP(fun(X_b,fun(X_b,X_b)),fun(fun(X_b,bool),X_b),finite_fold1(X_b),F),A_1)
       <= hBOOL(hAPP(fun(X_b,bool),bool,finite_finite_1(X_b),A_1)) ) ) ).

fof(fact_402_Sup__fin_Oinsert__idem,axiom,
    ! [X_b] :
      ( lattice(X_b)
     => ! [X_1,A_1] :
          ( ( bot_bot(fun(X_b,bool)) != ti(fun(X_b,bool),A_1)
           => hAPP(X_b,X_b,hAPP(X_b,fun(X_b,X_b),semilattice_sup_sup(X_b),X_1),hAPP(fun(X_b,bool),X_b,big_lattice_Sup_fin(X_b),A_1)) = hAPP(fun(X_b,bool),X_b,big_lattice_Sup_fin(X_b),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),X_1),A_1)) )
         <= hBOOL(hAPP(fun(X_b,bool),bool,finite_finite_1(X_b),A_1)) ) ) ).

fof(fact_130_fold1Set_Osimps,axiom,
    ! [X_b,F,A1,A2] :
      ( hBOOL(hAPP(X_b,bool,hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,fun(X_b,X_b)),fun(fun(X_b,bool),fun(X_b,bool)),finite_fold1Set(X_b),F),A1),A2))
    <=> ? [A_4,A_5,X_2] :
          ( ti(fun(X_b,bool),A1) = hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),A_4),A_5)
          & hBOOL(hAPP(X_b,bool,hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),hAPP(fun(X_b,fun(X_b,X_b)),fun(X_b,fun(fun(X_b,bool),fun(X_b,bool))),finite_fold_graph(X_b,X_b),F),A_4),A_5),X_2))
          & ~ hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),A_4),A_5))
          & ti(X_b,A2) = ti(X_b,X_2) ) ) ).

fof(help_fimplies_1_1_U,axiom,
    ! [Q,P] :
      ( hBOOL(hAPP(bool,bool,hAPP(bool,fun(bool,bool),fimplies,P),Q))
      | hBOOL(P) ) ).

fof(tsy_c_hAPP_res,axiom,
    ! [X_c,X_a,B_1_1,B_2_1] : ti(X_c,hAPP(X_a,X_c,B_1_1,B_2_1)) = hAPP(X_a,X_c,B_1_1,B_2_1) ).

fof(fact_54_the__elem__def,axiom,
    ! [X_b,X_3] : hAPP(fun(X_b,bool),X_b,the_elem(X_b),X_3) = hAPP(fun(X_b,bool),X_b,the(X_b),hAPP(fun(X_b,fun(X_b,bool)),fun(X_b,bool),hAPP(fun(fun(X_b,bool),bool),fun(fun(X_b,fun(X_b,bool)),fun(X_b,bool)),combb(fun(X_b,bool),bool,X_b),hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),fequal(fun(X_b,bool)),X_3)),hAPP(fun(X_b,bool),fun(X_b,fun(X_b,bool)),hAPP(fun(X_b,fun(fun(X_b,bool),fun(X_b,bool))),fun(fun(X_b,bool),fun(X_b,fun(X_b,bool))),combc(X_b,fun(X_b,bool),fun(X_b,bool)),insert(X_b)),bot_bot(fun(X_b,bool))))) ).

fof(fact_168_set__diff__eq,axiom,
    ! [X_b,A_1,B] : hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),minus_minus(fun(X_b,bool)),A_1),B) = hAPP(fun(X_b,bool),fun(X_b,bool),collect(X_b),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,fun(bool,bool)),fun(fun(X_b,bool),fun(X_b,bool)),combs(X_b,bool,bool),hAPP(fun(X_b,bool),fun(X_b,fun(bool,bool)),hAPP(fun(bool,fun(bool,bool)),fun(fun(X_b,bool),fun(X_b,fun(bool,bool))),combb(bool,fun(bool,bool),X_b),fconj),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,fun(fun(X_b,bool),bool)),fun(fun(X_b,bool),fun(X_b,bool)),combc(X_b,fun(X_b,bool),bool),member(X_b)),A_1))),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(bool,bool),fun(fun(X_b,bool),fun(X_b,bool)),combb(bool,bool,X_b),fNot),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,fun(fun(X_b,bool),bool)),fun(fun(X_b,bool),fun(X_b,bool)),combc(X_b,fun(X_b,bool),bool),member(X_b)),B)))) ).

fof(fact_199_times_Oidem,axiom,
    ! [X_a] :
      ( ! [A_2] : ti(X_a,A_2) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),times_times(X_a),A_2),A_2)
     <= ab_sem1668676832m_mult(X_a) ) ).

fof(fact_254_subset__insert,axiom,
    ! [X_b,B,X_1,A_1] :
      ( ~ hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),X_1),A_1))
     => ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),ord_less_eq(fun(X_b,bool)),A_1),B))
      <=> hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),ord_less_eq(fun(X_b,bool)),A_1),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),X_1),B))) ) ) ).

fof(fact_271_le__supI1,axiom,
    ! [X_a] :
      ( ! [B_1,X,A_2] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X),A_2))
         => hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),A_2),B_1))) )
     <= semilattice_sup(X_a) ) ).

fof(fact_273_le__sup__iff,axiom,
    ! [X_b] :
      ( semilattice_sup(X_b)
     => ! [X_1,Y_1,Z_1] :
          ( hBOOL(hAPP(X_b,bool,hAPP(X_b,fun(X_b,bool),ord_less_eq(X_b),hAPP(X_b,X_b,hAPP(X_b,fun(X_b,X_b),semilattice_sup_sup(X_b),X_1),Y_1)),Z_1))
        <=> ( hBOOL(hAPP(X_b,bool,hAPP(X_b,fun(X_b,bool),ord_less_eq(X_b),X_1),Z_1))
            & hBOOL(hAPP(X_b,bool,hAPP(X_b,fun(X_b,bool),ord_less_eq(X_b),Y_1),Z_1)) ) ) ) ).

fof(tsy_c_Hoare__Mirabelle__nrugjuseim_Otriple_Otriple__case_res,axiom,
    ! [X_c,X_b] : ti(fun(fun(fun(X_c,fun(state,bool)),fun(com,fun(fun(X_c,fun(state,bool)),X_b))),fun(hoare_1656922687triple(X_c),X_b)),hoare_1312322281e_case(X_c,X_b)) = hoare_1312322281e_case(X_c,X_b) ).

fof(fact_421_le__infI,axiom,
    ! [X_a] :
      ( ! [B_1,X,A_2] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X),A_2))
         => ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X),B_1))
           => hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),A_2),B_1))) ) )
     <= semilattice_inf(X_a) ) ).

fof(tsy_c_hAPP_arg2,axiom,
    ! [X_a,X_c,B_1_1,B_2_1] : hAPP(X_a,X_c,B_1_1,ti(X_a,B_2_1)) = hAPP(X_a,X_c,B_1_1,B_2_1) ).

fof(fact_484_inf__assoc,axiom,
    ! [X_a] :
      ( ! [X,Y,Z] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),X),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),Y),Z)) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),X),Y)),Z)
     <= semilattice_inf(X_a) ) ).

fof(fact_489_Diff__Int__distrib,axiom,
    ! [X_b,C,A_1,B] : hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),minus_minus(fun(X_b,bool)),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_inf_inf(fun(X_b,bool)),C),A_1)),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_inf_inf(fun(X_b,bool)),C),B)) = hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_inf_inf(fun(X_b,bool)),C),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),minus_minus(fun(X_b,bool)),A_1),B)) ).

fof(tsy_c_Set_OCollect_res,axiom,
    ! [X_b] : collect(X_b) = ti(fun(fun(X_b,bool),fun(X_b,bool)),collect(X_b)) ).

fof(help_fequal_2_1_T,axiom,
    ! [X_a,X,Y] :
      ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),fequal(X_a),X),Y))
      | ti(X_a,Y) != ti(X_a,X) ) ).

fof(fact_306_order__trans,axiom,
    ! [X_a] :
      ( ! [Z,X,Y] :
          ( ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X),Z))
           <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),Y),Z)) )
         <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X),Y)) )
     <= preorder(X_a) ) ).

fof(fact_87_folding__one_Osingleton,axiom,
    ! [X_b,X_1,F,F_1] :
      ( ti(X_b,X_1) = hAPP(fun(X_b,bool),X_b,F_1,hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),X_1),bot_bot(fun(X_b,bool))))
     <= hBOOL(hAPP(fun(fun(X_b,bool),X_b),bool,hAPP(fun(X_b,fun(X_b,X_b)),fun(fun(fun(X_b,bool),X_b),bool),finite_folding_one(X_b),F),F_1)) ) ).

fof(fact_332_equalityD1,axiom,
    ! [X_b,A_1,B] :
      ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),ord_less_eq(fun(X_b,bool)),A_1),B))
     <= ti(fun(X_b,bool),B) = ti(fun(X_b,bool),A_1) ) ).

fof(tsy_c_fconj_res,hypothesis,
    ti(fun(bool,fun(bool,bool)),fconj) = fconj ).

fof(fact_384_ab__semigroup__mult__class_Omult__ac_I1_J,axiom,
    ! [X_a] :
      ( ! [A_2,B_1,C_1] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),times_times(X_a),A_2),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),times_times(X_a),B_1),C_1)) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),times_times(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),times_times(X_a),A_2),B_1)),C_1)
     <= ab_semigroup_mult(X_a) ) ).

fof(fact_169_folding__one__idem_Oidem,axiom,
    ! [X_b,X_1,F,F_1] :
      ( hBOOL(hAPP(fun(fun(X_b,bool),X_b),bool,hAPP(fun(X_b,fun(X_b,X_b)),fun(fun(fun(X_b,bool),X_b),bool),finite2073411215e_idem(X_b),F),F_1))
     => ti(X_b,X_1) = hAPP(X_b,X_b,hAPP(X_b,fun(X_b,X_b),F,X_1),X_1) ) ).

fof(arity_Nat_Onat___Groups_Ocomm__monoid__mult,axiom,
    comm_monoid_mult(nat) ).

fof(fact_345_Un__upper1,axiom,
    ! [X_b,A_1,B] : hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),ord_less_eq(fun(X_b,bool)),A_1),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_sup_sup(fun(X_b,bool)),A_1),B))) ).

fof(fact_288_sup__idem,axiom,
    ! [X_a] :
      ( semilattice_sup(X_a)
     => ! [X] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),X),X) = ti(X_a,X) ) ).

fof(fact_125_evalc__elim__cases_I4_J,axiom,
    ! [C1,C2,S_1,T_4] :
      ( hBOOL(hAPP(state,bool,hAPP(state,fun(state,bool),hAPP(com,fun(state,fun(state,bool)),evalc,hAPP(com,com,hAPP(com,fun(com,com),semi,C1),C2)),S_1),T_4))
     => ~ ! [S1_1] :
            ( hBOOL(hAPP(state,bool,hAPP(state,fun(state,bool),hAPP(com,fun(state,fun(state,bool)),evalc,C1),S_1),S1_1))
           => ~ hBOOL(hAPP(state,bool,hAPP(state,fun(state,bool),hAPP(com,fun(state,fun(state,bool)),evalc,C2),S1_1),T_4)) ) ) ).

fof(fact_36_singletonE,axiom,
    ! [X_b,Ba,A_3] :
      ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),Ba),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),A_3),bot_bot(fun(X_b,bool)))))
     => ti(X_b,A_3) = ti(X_b,Ba) ) ).

fof(fact_11_emptyE,axiom,
    ! [X_b,A_3] : ~ hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),A_3),bot_bot(fun(X_b,bool)))) ).

fof(fact_40_empty__not__insert,axiom,
    ! [X_b,A_3,A_1] : hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),A_3),A_1) != bot_bot(fun(X_b,bool)) ).

fof(fact_123_evalc__elim__cases_I3_J,axiom,
    ! [Y_4,A_3,Ca,S_4,T_5] :
      ( ~ ! [S1_1] :
            ( hAPP(nat,state,hAPP(vname,fun(nat,state),hAPP(state,fun(vname,fun(nat,state)),update,S1_1),hAPP(loc_1,vname,loc,Y_4)),hAPP(loc_1,nat,hAPP(state,fun(loc_1,nat),getlocs,S_4),Y_4)) = T_5
           => ~ hBOOL(hAPP(state,bool,hAPP(state,fun(state,bool),hAPP(com,fun(state,fun(state,bool)),evalc,Ca),hAPP(nat,state,hAPP(vname,fun(nat,state),hAPP(state,fun(vname,fun(nat,state)),update,S_4),hAPP(loc_1,vname,loc,Y_4)),hAPP(state,nat,A_3,S_4))),S1_1)) )
     <= hBOOL(hAPP(state,bool,hAPP(state,fun(state,bool),hAPP(com,fun(state,fun(state,bool)),evalc,hAPP(com,com,hAPP(fun(state,nat),fun(com,com),hAPP(loc_1,fun(fun(state,nat),fun(com,com)),local,Y_4),A_3),Ca)),S_4),T_5)) ) ).

fof(fact_434_Int__absorb1,axiom,
    ! [X_b,B,A_1] :
      ( ti(fun(X_b,bool),B) = hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_inf_inf(fun(X_b,bool)),A_1),B)
     <= hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),ord_less_eq(fun(X_b,bool)),B),A_1)) ) ).

fof(fact_93_com_Osimps_I23_J,axiom,
    ! [Loc_3,Fun,Com,Vname,Fun_1] : hAPP(fun(state,nat),com,hAPP(vname,fun(fun(state,nat),com),ass,Vname),Fun_1) != hAPP(com,com,hAPP(fun(state,nat),fun(com,com),hAPP(loc_1,fun(fun(state,nat),fun(com,com)),local,Loc_3),Fun),Com) ).

fof(fact_497_Int__Un__distrib2,axiom,
    ! [X_b,B,C,A_1] : hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_sup_sup(fun(X_b,bool)),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_inf_inf(fun(X_b,bool)),B),A_1)),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_inf_inf(fun(X_b,bool)),C),A_1)) = hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_inf_inf(fun(X_b,bool)),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_sup_sup(fun(X_b,bool)),B),C)),A_1) ).

fof(help_COMBK_1_1_U,axiom,
    ! [X_b,X_a,P,Q] : hAPP(X_b,X_a,hAPP(X_a,fun(X_b,X_a),combk(X_a,X_b),P),Q) = ti(X_a,P) ).

fof(fact_81_the__sym__eq__trivial,axiom,
    ! [X_b,X_1] : ti(X_b,X_1) = hAPP(fun(X_b,bool),X_b,the(X_b),hAPP(X_b,fun(X_b,bool),fequal(X_b),X_1)) ).

fof(help_fFalse_1_1_U,axiom,
    ~ hBOOL(fFalse) ).

fof(fact_161_DiffI,axiom,
    ! [X_b,B,Ca,A_1] :
      ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),Ca),A_1))
     => ( ~ hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),Ca),B))
       => hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),Ca),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),minus_minus(fun(X_b,bool)),A_1),B))) ) ) ).

fof(fact_336_Un__iff,axiom,
    ! [X_b,Ca,A_1,B] :
      ( ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),Ca),A_1))
        | hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),Ca),B)) )
    <=> hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),Ca),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_sup_sup(fun(X_b,bool)),A_1),B))) ) ).

fof(arity_Nat_Onat___Orderings_Opreorder,axiom,
    preorder(nat) ).

fof(fact_483_inf__sup__aci_I2_J,axiom,
    ! [X_a] :
      ( ! [X,Y,Z] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),X),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),Y),Z)) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),X),Y)),Z)
     <= lattice(X_a) ) ).

fof(fact_480_inf__sup__aci_I3_J,axiom,
    ! [X_a] :
      ( lattice(X_a)
     => ! [X,Y,Z] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),X),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),Y),Z)) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),Y),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),X),Z)) ) ).

fof(fact_451_inf__Int__eq,axiom,
    ! [X_b,R_1,S,X_2] :
      ( hBOOL(hAPP(X_b,bool,hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_inf_inf(fun(X_b,bool)),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,fun(fun(X_b,bool),bool)),fun(fun(X_b,bool),fun(X_b,bool)),combc(X_b,fun(X_b,bool),bool),member(X_b)),R_1)),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,fun(fun(X_b,bool),bool)),fun(fun(X_b,bool),fun(X_b,bool)),combc(X_b,fun(X_b,bool),bool),member(X_b)),S)),X_2))
    <=> hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),X_2),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_inf_inf(fun(X_b,bool)),R_1),S))) ) ).

fof(tsy_c_Hoare__Mirabelle__nrugjuseim_Ohoare__derivs_res,axiom,
    ! [X_b] : ti(fun(fun(hoare_1656922687triple(X_b),bool),fun(fun(hoare_1656922687triple(X_b),bool),bool)),hoare_279057269derivs(X_b)) = hoare_279057269derivs(X_b) ).

fof(tsy_c_HOL_Oundefined_res,axiom,
    ! [X_a] : undefined(X_a) = ti(X_a,undefined(X_a)) ).

fof(fact_49_mk__disjoint__insert,axiom,
    ! [X_b,A_3,A_1] :
      ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),A_3),A_1))
     => ? [B_2] :
          ( ~ hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),A_3),B_2))
          & hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),A_3),B_2) = ti(fun(X_b,bool),A_1) ) ) ).

fof(fact_392_fold__image__cong,axiom,
    ! [X_b,X_c] :
      ( ! [Z_1,G,H,A_1] :
          ( hBOOL(hAPP(fun(X_b,bool),bool,finite_finite_1(X_b),A_1))
         => ( hAPP(fun(X_b,bool),X_c,hAPP(X_c,fun(fun(X_b,bool),X_c),hAPP(fun(X_b,X_c),fun(X_c,fun(fun(X_b,bool),X_c)),hAPP(fun(X_c,fun(X_c,X_c)),fun(fun(X_b,X_c),fun(X_c,fun(fun(X_b,bool),X_c))),finite_fold_image(X_c,X_b),times_times(X_c)),G),Z_1),A_1) = hAPP(fun(X_b,bool),X_c,hAPP(X_c,fun(fun(X_b,bool),X_c),hAPP(fun(X_b,X_c),fun(X_c,fun(fun(X_b,bool),X_c)),hAPP(fun(X_c,fun(X_c,X_c)),fun(fun(X_b,X_c),fun(X_c,fun(fun(X_b,bool),X_c))),finite_fold_image(X_c,X_b),times_times(X_c)),H),Z_1),A_1)
           <= ! [X_2] :
                ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),X_2),A_1))
               => hAPP(X_b,X_c,H,X_2) = hAPP(X_b,X_c,G,X_2) ) ) )
     <= ab_semigroup_mult(X_c) ) ).

fof(fact_12_singleton__conv2,axiom,
    ! [X_b,A_3] : hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),A_3),bot_bot(fun(X_b,bool))) = hAPP(fun(X_b,bool),fun(X_b,bool),collect(X_b),hAPP(X_b,fun(X_b,bool),fequal(X_b),A_3)) ).

fof(fact_239_UnCI,axiom,
    ! [X_b,A_1,Ca,B] :
      ( ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),Ca),A_1))
       <= ~ hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),Ca),B)) )
     => hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),Ca),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_sup_sup(fun(X_b,bool)),A_1),B))) ) ).

fof(arity_HOL_Obool___Orderings_Obot,axiom,
    bot(bool) ).

fof(fact_391_fold__image__insert,axiom,
    ! [X_b,X_c] :
      ( ! [G,Z_1,A_3,A_1] :
          ( hBOOL(hAPP(fun(X_b,bool),bool,finite_finite_1(X_b),A_1))
         => ( ~ hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),A_3),A_1))
           => hAPP(X_c,X_c,hAPP(X_c,fun(X_c,X_c),times_times(X_c),hAPP(X_b,X_c,G,A_3)),hAPP(fun(X_b,bool),X_c,hAPP(X_c,fun(fun(X_b,bool),X_c),hAPP(fun(X_b,X_c),fun(X_c,fun(fun(X_b,bool),X_c)),hAPP(fun(X_c,fun(X_c,X_c)),fun(fun(X_b,X_c),fun(X_c,fun(fun(X_b,bool),X_c))),finite_fold_image(X_c,X_b),times_times(X_c)),G),Z_1),A_1)) = hAPP(fun(X_b,bool),X_c,hAPP(X_c,fun(fun(X_b,bool),X_c),hAPP(fun(X_b,X_c),fun(X_c,fun(fun(X_b,bool),X_c)),hAPP(fun(X_c,fun(X_c,X_c)),fun(fun(X_b,X_c),fun(X_c,fun(fun(X_b,bool),X_c))),finite_fold_image(X_c,X_b),times_times(X_c)),G),Z_1),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),A_3),A_1)) ) )
     <= ab_semigroup_mult(X_c) ) ).

fof(fact_324_set__mp,axiom,
    ! [X_b,X_1,A_1,B] :
      ( ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),X_1),A_1))
       => hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),X_1),B)) )
     <= hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),ord_less_eq(fun(X_b,bool)),A_1),B)) ) ).

fof(fact_103_vname_Osimps_I6_J,axiom,
    ! [X_b,F1,F2,Loc_2] : hAPP(loc_1,X_b,F2,Loc_2) = hAPP(vname,X_b,hAPP(fun(loc_1,X_b),fun(vname,X_b),hAPP(fun(glb_1,X_b),fun(fun(loc_1,X_b),fun(vname,X_b)),vname_case(X_b),F1),F2),hAPP(loc_1,vname,loc,Loc_2)) ).

fof(fact_60_image__constant,axiom,
    ! [X_c,X_b,Ca,X_1,A_1] :
      ( hAPP(fun(X_c,bool),fun(X_c,bool),hAPP(X_c,fun(fun(X_c,bool),fun(X_c,bool)),insert(X_c),Ca),bot_bot(fun(X_c,bool))) = hAPP(fun(X_b,bool),fun(X_c,bool),hAPP(fun(X_b,X_c),fun(fun(X_b,bool),fun(X_c,bool)),image(X_b,X_c),hAPP(X_c,fun(X_b,X_c),combk(X_c,X_b),Ca)),A_1)
     <= hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),X_1),A_1)) ) ).

fof(fact_476_inf_Oleft__idem,axiom,
    ! [X_a] :
      ( ! [A_2,B_1] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),A_2),B_1) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),A_2),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),A_2),B_1))
     <= semilattice_inf(X_a) ) ).

fof(fact_305_xt1_I5_J,axiom,
    ! [X_a] :
      ( order(X_a)
     => ! [Y,X] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),Y),X))
         => ( ti(X_a,X) = ti(X_a,Y)
           <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X),Y)) ) ) ) ).

fof(fact_374_fold__sup__le__sup,axiom,
    ! [X_b] :
      ( semilattice_sup(X_b)
     => ! [Ca,Ba,A_1] :
          ( hBOOL(hAPP(fun(X_b,bool),bool,finite_finite_1(X_b),A_1))
         => ( ! [X_2] :
                ( hBOOL(hAPP(X_b,bool,hAPP(X_b,fun(X_b,bool),ord_less_eq(X_b),X_2),Ba))
               <= hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),X_2),A_1)) )
           => hBOOL(hAPP(X_b,bool,hAPP(X_b,fun(X_b,bool),ord_less_eq(X_b),hAPP(fun(X_b,bool),X_b,hAPP(X_b,fun(fun(X_b,bool),X_b),hAPP(fun(X_b,fun(X_b,X_b)),fun(X_b,fun(fun(X_b,bool),X_b)),finite_fold(X_b,X_b),semilattice_sup_sup(X_b)),Ca),A_1)),hAPP(X_b,X_b,hAPP(X_b,fun(X_b,X_b),semilattice_sup_sup(X_b),Ba),Ca))) ) ) ) ).

fof(fact_431_inf__sup__ord_I1_J,axiom,
    ! [X_a] :
      ( ! [X,Y] : hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),X),Y)),X))
     <= lattice(X_a) ) ).

fof(tsy_c_Natural_Oupdate_res,axiom,
    ti(fun(state,fun(vname,fun(nat,state))),update) = update ).

fof(fact_228_comp__fun__commute_Ofold__graph__fold,axiom,
    ! [X_b,X_c,Z_1,A_1,F] :
      ( hBOOL(hAPP(fun(X_b,fun(X_c,X_c)),bool,finite100568337ommute(X_b,X_c),F))
     => ( hBOOL(hAPP(fun(X_b,bool),bool,finite_finite_1(X_b),A_1))
       => hBOOL(hAPP(X_c,bool,hAPP(fun(X_b,bool),fun(X_c,bool),hAPP(X_c,fun(fun(X_b,bool),fun(X_c,bool)),hAPP(fun(X_b,fun(X_c,X_c)),fun(X_c,fun(fun(X_b,bool),fun(X_c,bool))),finite_fold_graph(X_b,X_c),F),Z_1),A_1),hAPP(fun(X_b,bool),X_c,hAPP(X_c,fun(fun(X_b,bool),X_c),hAPP(fun(X_b,fun(X_c,X_c)),fun(X_c,fun(fun(X_b,bool),X_c)),finite_fold(X_b,X_c),F),Z_1),A_1))) ) ) ).

fof(fact_448_insert__inter__insert,axiom,
    ! [X_b,A_3,A_1,B] : hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_inf_inf(fun(X_b,bool)),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),A_3),A_1)),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),A_3),B)) = hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),A_3),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_inf_inf(fun(X_b,bool)),A_1),B)) ).

fof(fact_307_order__antisym,axiom,
    ! [X_a] :
      ( ! [X,Y] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X),Y))
         => ( ti(X_a,X) = ti(X_a,Y)
           <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),Y),X)) ) )
     <= order(X_a) ) ).

fof(fact_485_inf__apply,axiom,
    ! [X_c,X_b] :
      ( lattice(X_b)
     => ! [F,G,X_1] : hAPP(X_c,X_b,hAPP(fun(X_c,X_b),fun(X_c,X_b),hAPP(fun(X_c,X_b),fun(fun(X_c,X_b),fun(X_c,X_b)),semilattice_inf_inf(fun(X_c,X_b)),F),G),X_1) = hAPP(X_b,X_b,hAPP(X_b,fun(X_b,X_b),semilattice_inf_inf(X_b),hAPP(X_c,X_b,F,X_1)),hAPP(X_c,X_b,G,X_1)) ) ).

fof(arity_fun___Orderings_Opreorder,axiom,
    ! [T_2,T_1] :
      ( preorder(T_1)
     => preorder(fun(T_2,T_1)) ) ).

fof(fact_313_le__funD,axiom,
    ! [X_b,X_c] :
      ( ord(X_c)
     => ! [X_1,F,G] :
          ( hBOOL(hAPP(X_c,bool,hAPP(X_c,fun(X_c,bool),ord_less_eq(X_c),hAPP(X_b,X_c,F,X_1)),hAPP(X_b,X_c,G,X_1)))
         <= hBOOL(hAPP(fun(X_b,X_c),bool,hAPP(fun(X_b,X_c),fun(fun(X_b,X_c),bool),ord_less_eq(fun(X_b,X_c)),F),G)) ) ) ).

fof(fact_139_finite_OinsertI,axiom,
    ! [X_b,A_3,A_1] :
      ( hBOOL(hAPP(fun(X_b,bool),bool,finite_finite_1(X_b),A_1))
     => hBOOL(hAPP(fun(X_b,bool),bool,finite_finite_1(X_b),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),A_3),A_1))) ) ).

fof(fact_142_vname_Osimps_I1_J,axiom,
    ! [Glb_3,Glb_2] :
      ( ti(glb_1,Glb_3) = ti(glb_1,Glb_2)
    <=> hAPP(glb_1,vname,glb,Glb_3) = hAPP(glb_1,vname,glb,Glb_2) ) ).

fof(fact_47_triple_Oexhaust,axiom,
    ! [X_b,Y_1] :
      ~ ! [Fun1,Com_2,Fun2] : Y_1 != hAPP(fun(X_b,fun(state,bool)),hoare_1656922687triple(X_b),hAPP(com,fun(fun(X_b,fun(state,bool)),hoare_1656922687triple(X_b)),hAPP(fun(X_b,fun(state,bool)),fun(com,fun(fun(X_b,fun(state,bool)),hoare_1656922687triple(X_b))),hoare_246368825triple(X_b),Fun1),Com_2),Fun2) ).

fof(fact_114_evaln__elim__cases_I2_J,axiom,
    ! [X_3,A_3,S_4,N_3,T_5] :
      ( hBOOL(hAPP(state,bool,hAPP(nat,fun(state,bool),hAPP(state,fun(nat,fun(state,bool)),hAPP(com,fun(state,fun(nat,fun(state,bool))),evaln,hAPP(fun(state,nat),com,hAPP(vname,fun(fun(state,nat),com),ass,X_3),A_3)),S_4),N_3),T_5))
     => hAPP(nat,state,hAPP(vname,fun(nat,state),hAPP(state,fun(vname,fun(nat,state)),update,S_4),X_3),hAPP(state,nat,A_3,S_4)) = T_5 ) ).

fof(tsy_v_P_res,hypothesis,
    p = ti(fun(x_a,fun(state,bool)),p) ).

fof(fact_424_le__infI2,axiom,
    ! [X_a] :
      ( semilattice_inf(X_a)
     => ! [A_2,B_1,X] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),B_1),X))
         => hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),A_2),B_1)),X)) ) ) ).

fof(tsy_c_fequal_res,axiom,
    ! [X_a] : ti(fun(X_a,fun(X_a,bool)),fequal(X_a)) = fequal(X_a) ).

fof(fact_481_inf__left__commute,axiom,
    ! [X_a] :
      ( semilattice_inf(X_a)
     => ! [X,Y,Z] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),X),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),Y),Z)) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),Y),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),X),Z)) ) ).

fof(fact_425_le__infI1,axiom,
    ! [X_a] :
      ( semilattice_inf(X_a)
     => ! [B_1,A_2,X] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),A_2),X))
         => hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),A_2),B_1)),X)) ) ) ).

fof(fact_44_bot__fun__def,axiom,
    ! [X_b,X_c] :
      ( bot(X_c)
     => ! [X_2] : bot_bot(X_c) = hAPP(X_b,X_c,bot_bot(fun(X_b,X_c)),X_2) ) ).

fof(fact_462_Int__assoc,axiom,
    ! [X_b,A_1,B,C] : hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_inf_inf(fun(X_b,bool)),A_1),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_inf_inf(fun(X_b,bool)),B),C)) = hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_inf_inf(fun(X_b,bool)),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_inf_inf(fun(X_b,bool)),A_1),B)),C) ).

fof(arity_HOL_Obool___Groups_Ominus,axiom,
    minus(bool) ).

fof(fact_375_finite__subset__induct,axiom,
    ! [X_b,Pa,A_1,F_1] :
      ( ( ( hBOOL(hAPP(fun(X_b,bool),bool,Pa,bot_bot(fun(X_b,bool))))
         => ( hBOOL(hAPP(fun(X_b,bool),bool,Pa,F_1))
           <= ! [A_4,F_2] :
                ( ( ( ( hBOOL(hAPP(fun(X_b,bool),bool,Pa,hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),A_4),F_2)))
                     <= hBOOL(hAPP(fun(X_b,bool),bool,Pa,F_2)) )
                   <= ~ hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),A_4),F_2)) )
                 <= hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),A_4),A_1)) )
               <= hBOOL(hAPP(fun(X_b,bool),bool,finite_finite_1(X_b),F_2)) ) ) )
       <= hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),ord_less_eq(fun(X_b,bool)),F_1),A_1)) )
     <= hBOOL(hAPP(fun(X_b,bool),bool,finite_finite_1(X_b),F_1)) ) ).

fof(fact_86_the__equality,axiom,
    ! [X_b,Pa,A_3] :
      ( hBOOL(hAPP(X_b,bool,Pa,A_3))
     => ( ! [X_2] :
            ( ti(X_b,X_2) = ti(X_b,A_3)
           <= hBOOL(hAPP(X_b,bool,Pa,X_2)) )
       => ti(X_b,A_3) = hAPP(fun(X_b,bool),X_b,the(X_b),Pa) ) ) ).

fof(fact_277_sup__left__commute,axiom,
    ! [X_a] :
      ( semilattice_sup(X_a)
     => ! [X,Y,Z] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),Y),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),X),Z)) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),X),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),Y),Z)) ) ).

fof(fact_383_flat__lub__def,axiom,
    ! [X_b,A_1,Ba] :
      ( ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),ord_less_eq(fun(X_b,bool)),A_1),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),Ba),bot_bot(fun(X_b,bool)))))
       => hAPP(fun(X_b,bool),X_b,hAPP(X_b,fun(fun(X_b,bool),X_b),partial_flat_lub(X_b),Ba),A_1) = ti(X_b,Ba) )
      & ( ~ hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),ord_less_eq(fun(X_b,bool)),A_1),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),Ba),bot_bot(fun(X_b,bool)))))
       => hAPP(fun(X_b,bool),X_b,hAPP(X_b,fun(fun(X_b,bool),X_b),partial_flat_lub(X_b),Ba),A_1) = hAPP(fun(X_b,bool),X_b,the(X_b),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,fun(fun(X_b,bool),bool)),fun(fun(X_b,bool),fun(X_b,bool)),combc(X_b,fun(X_b,bool),bool),member(X_b)),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),minus_minus(fun(X_b,bool)),A_1),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),Ba),bot_bot(fun(X_b,bool)))))) ) ) ).

fof(fact_46_Comp,axiom,
    ! [X_b,D_2,R_1,Ga,Pa,Ca,Q_1] :
      ( hBOOL(hAPP(fun(hoare_1656922687triple(X_b),bool),bool,hAPP(fun(hoare_1656922687triple(X_b),bool),fun(fun(hoare_1656922687triple(X_b),bool),bool),hoare_279057269derivs(X_b),Ga),hAPP(fun(hoare_1656922687triple(X_b),bool),fun(hoare_1656922687triple(X_b),bool),hAPP(hoare_1656922687triple(X_b),fun(fun(hoare_1656922687triple(X_b),bool),fun(hoare_1656922687triple(X_b),bool)),insert(hoare_1656922687triple(X_b)),hAPP(fun(X_b,fun(state,bool)),hoare_1656922687triple(X_b),hAPP(com,fun(fun(X_b,fun(state,bool)),hoare_1656922687triple(X_b)),hAPP(fun(X_b,fun(state,bool)),fun(com,fun(fun(X_b,fun(state,bool)),hoare_1656922687triple(X_b))),hoare_246368825triple(X_b),Pa),Ca),Q_1)),bot_bot(fun(hoare_1656922687triple(X_b),bool)))))
     => ( hBOOL(hAPP(fun(hoare_1656922687triple(X_b),bool),bool,hAPP(fun(hoare_1656922687triple(X_b),bool),fun(fun(hoare_1656922687triple(X_b),bool),bool),hoare_279057269derivs(X_b),Ga),hAPP(fun(hoare_1656922687triple(X_b),bool),fun(hoare_1656922687triple(X_b),bool),hAPP(hoare_1656922687triple(X_b),fun(fun(hoare_1656922687triple(X_b),bool),fun(hoare_1656922687triple(X_b),bool)),insert(hoare_1656922687triple(X_b)),hAPP(fun(X_b,fun(state,bool)),hoare_1656922687triple(X_b),hAPP(com,fun(fun(X_b,fun(state,bool)),hoare_1656922687triple(X_b)),hAPP(fun(X_b,fun(state,bool)),fun(com,fun(fun(X_b,fun(state,bool)),hoare_1656922687triple(X_b))),hoare_246368825triple(X_b),Q_1),D_2),R_1)),bot_bot(fun(hoare_1656922687triple(X_b),bool)))))
       => hBOOL(hAPP(fun(hoare_1656922687triple(X_b),bool),bool,hAPP(fun(hoare_1656922687triple(X_b),bool),fun(fun(hoare_1656922687triple(X_b),bool),bool),hoare_279057269derivs(X_b),Ga),hAPP(fun(hoare_1656922687triple(X_b),bool),fun(hoare_1656922687triple(X_b),bool),hAPP(hoare_1656922687triple(X_b),fun(fun(hoare_1656922687triple(X_b),bool),fun(hoare_1656922687triple(X_b),bool)),insert(hoare_1656922687triple(X_b)),hAPP(fun(X_b,fun(state,bool)),hoare_1656922687triple(X_b),hAPP(com,fun(fun(X_b,fun(state,bool)),hoare_1656922687triple(X_b)),hAPP(fun(X_b,fun(state,bool)),fun(com,fun(fun(X_b,fun(state,bool)),hoare_1656922687triple(X_b))),hoare_246368825triple(X_b),Pa),hAPP(com,com,hAPP(com,fun(com,com),semi,Ca),D_2)),R_1)),bot_bot(fun(hoare_1656922687triple(X_b),bool))))) ) ) ).

fof(fact_447_Int__insert__right__if0,axiom,
    ! [X_b,B,A_3,A_1] :
      ( ~ hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),A_3),A_1))
     => hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_inf_inf(fun(X_b,bool)),A_1),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),A_3),B)) = hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_inf_inf(fun(X_b,bool)),A_1),B) ) ).

fof(fact_45_hoare__derivs_OSkip,axiom,
    ! [X_b,Ga,Pa] : hBOOL(hAPP(fun(hoare_1656922687triple(X_b),bool),bool,hAPP(fun(hoare_1656922687triple(X_b),bool),fun(fun(hoare_1656922687triple(X_b),bool),bool),hoare_279057269derivs(X_b),Ga),hAPP(fun(hoare_1656922687triple(X_b),bool),fun(hoare_1656922687triple(X_b),bool),hAPP(hoare_1656922687triple(X_b),fun(fun(hoare_1656922687triple(X_b),bool),fun(hoare_1656922687triple(X_b),bool)),insert(hoare_1656922687triple(X_b)),hAPP(fun(X_b,fun(state,bool)),hoare_1656922687triple(X_b),hAPP(com,fun(fun(X_b,fun(state,bool)),hoare_1656922687triple(X_b)),hAPP(fun(X_b,fun(state,bool)),fun(com,fun(fun(X_b,fun(state,bool)),hoare_1656922687triple(X_b))),hoare_246368825triple(X_b),Pa),skip),Pa)),bot_bot(fun(hoare_1656922687triple(X_b),bool))))) ).

fof(fact_280_sup__left__idem,axiom,
    ! [X_a] :
      ( semilattice_sup(X_a)
     => ! [X,Y] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),X),Y) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),X),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),X),Y)) ) ).

fof(fact_365_union__fold__insert,axiom,
    ! [X_b,B,A_1] :
      ( hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_sup_sup(fun(X_b,bool)),A_1),B) = hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),hAPP(fun(X_b,fun(fun(X_b,bool),fun(X_b,bool))),fun(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool))),finite_fold(X_b,fun(X_b,bool)),insert(X_b)),B),A_1)
     <= hBOOL(hAPP(fun(X_b,bool),bool,finite_finite_1(X_b),A_1)) ) ).

fof(fact_411_comm__monoid__big_OF__cong,axiom,
    ! [X_c,X_b,H,G,A_1,B,F,Z_1,F_1] :
      ( ( ti(fun(X_c,bool),B) = ti(fun(X_c,bool),A_1)
       => ( ! [X_2] :
              ( hAPP(X_c,X_b,G,X_2) = hAPP(X_c,X_b,H,X_2)
             <= hBOOL(hAPP(fun(X_c,bool),bool,hAPP(X_c,fun(fun(X_c,bool),bool),member(X_c),X_2),B)) )
         => hAPP(fun(X_c,bool),X_b,hAPP(fun(X_c,X_b),fun(fun(X_c,bool),X_b),F_1,H),A_1) = hAPP(fun(X_c,bool),X_b,hAPP(fun(X_c,X_b),fun(fun(X_c,bool),X_b),F_1,G),B) ) )
     <= hBOOL(hAPP(fun(fun(X_c,X_b),fun(fun(X_c,bool),X_b)),bool,hAPP(X_b,fun(fun(fun(X_c,X_b),fun(fun(X_c,bool),X_b)),bool),hAPP(fun(X_b,fun(X_b,X_b)),fun(X_b,fun(fun(fun(X_c,X_b),fun(fun(X_c,bool),X_b)),bool)),big_comm_monoid_big(X_b,X_c),F),Z_1),F_1)) ) ).

fof(fact_225_comp__fun__idem_Ofold__insert__idem,axiom,
    ! [X_b,X_c,Z_1,X_1,A_1,F] :
      ( ( hAPP(X_c,X_c,hAPP(X_b,fun(X_c,X_c),F,X_1),hAPP(fun(X_b,bool),X_c,hAPP(X_c,fun(fun(X_b,bool),X_c),hAPP(fun(X_b,fun(X_c,X_c)),fun(X_c,fun(fun(X_b,bool),X_c)),finite_fold(X_b,X_c),F),Z_1),A_1)) = hAPP(fun(X_b,bool),X_c,hAPP(X_c,fun(fun(X_b,bool),X_c),hAPP(fun(X_b,fun(X_c,X_c)),fun(X_c,fun(fun(X_b,bool),X_c)),finite_fold(X_b,X_c),F),Z_1),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),X_1),A_1))
       <= hBOOL(hAPP(fun(X_b,bool),bool,finite_finite_1(X_b),A_1)) )
     <= hBOOL(hAPP(fun(X_b,fun(X_c,X_c)),bool,finite_comp_fun_idem(X_b,X_c),F)) ) ).

fof(fact_266_sup__least,axiom,
    ! [X_a] :
      ( semilattice_sup(X_a)
     => ! [Z,Y,X] :
          ( ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),Z),X))
           => hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),Y),Z)),X)) )
         <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),Y),X)) ) ) ).

fof(fact_159_folding__one_Oinsert__remove,axiom,
    ! [X_b,X_1,A_1,F,F_1] :
      ( ( hBOOL(hAPP(fun(X_b,bool),bool,finite_finite_1(X_b),A_1))
       => ( ( bot_bot(fun(X_b,bool)) = hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),minus_minus(fun(X_b,bool)),A_1),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),X_1),bot_bot(fun(X_b,bool))))
           => ti(X_b,X_1) = hAPP(fun(X_b,bool),X_b,F_1,hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),X_1),A_1)) )
          & ( hAPP(fun(X_b,bool),X_b,F_1,hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),X_1),A_1)) = hAPP(X_b,X_b,hAPP(X_b,fun(X_b,X_b),F,X_1),hAPP(fun(X_b,bool),X_b,F_1,hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),minus_minus(fun(X_b,bool)),A_1),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),X_1),bot_bot(fun(X_b,bool))))))
           <= hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),minus_minus(fun(X_b,bool)),A_1),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),X_1),bot_bot(fun(X_b,bool)))) != bot_bot(fun(X_b,bool)) ) ) )
     <= hBOOL(hAPP(fun(fun(X_b,bool),X_b),bool,hAPP(fun(X_b,fun(X_b,X_b)),fun(fun(fun(X_b,bool),X_b),bool),finite_folding_one(X_b),F),F_1)) ) ).

fof(fact_195_fold__graph_H_Ointros_I2_J,axiom,
    ! [X_c,X_b,F,Z_1,Y_1,X_1,A_1] :
      ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),X_1),A_1))
     => ( hBOOL(hAPP(X_c,bool,hAPP(fun(X_b,bool),fun(X_c,bool),hAPP(X_c,fun(fun(X_b,bool),fun(X_c,bool)),hAPP(fun(X_b,fun(X_c,X_c)),fun(X_c,fun(fun(X_b,bool),fun(X_c,bool))),fold_graph(X_b,X_c),F),Z_1),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),minus_minus(fun(X_b,bool)),A_1),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),X_1),bot_bot(fun(X_b,bool))))),Y_1))
       => hBOOL(hAPP(X_c,bool,hAPP(fun(X_b,bool),fun(X_c,bool),hAPP(X_c,fun(fun(X_b,bool),fun(X_c,bool)),hAPP(fun(X_b,fun(X_c,X_c)),fun(X_c,fun(fun(X_b,bool),fun(X_c,bool))),fold_graph(X_b,X_c),F),Z_1),A_1),hAPP(X_c,X_c,hAPP(X_b,fun(X_c,X_c),F,X_1),Y_1))) ) ) ).

fof(tsy_c_member_res,axiom,
    ! [X_b] : member(X_b) = ti(fun(X_b,fun(fun(X_b,bool),bool)),member(X_b)) ).

fof(fact_435_Int__absorb2,axiom,
    ! [X_b,A_1,B] :
      ( hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_inf_inf(fun(X_b,bool)),A_1),B) = ti(fun(X_b,bool),A_1)
     <= hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),ord_less_eq(fun(X_b,bool)),A_1),B)) ) ).

fof(fact_138_finite_OemptyI,axiom,
    ! [X_b] : hBOOL(hAPP(fun(X_b,bool),bool,finite_finite_1(X_b),bot_bot(fun(X_b,bool)))) ).

fof(fact_0_empty,axiom,
    ! [X_b,Ga] : hBOOL(hAPP(fun(hoare_1656922687triple(X_b),bool),bool,hAPP(fun(hoare_1656922687triple(X_b),bool),fun(fun(hoare_1656922687triple(X_b),bool),bool),hoare_279057269derivs(X_b),Ga),bot_bot(fun(hoare_1656922687triple(X_b),bool)))) ).

fof(arity_HOL_Obool___Lattices_Osemilattice__sup,axiom,
    semilattice_sup(bool) ).

fof(fact_230_minus__fold__remove,axiom,
    ! [X_b,B,A_1] :
      ( hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),minus_minus(fun(X_b,bool)),B),A_1) = hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),hAPP(fun(X_b,fun(fun(X_b,bool),fun(X_b,bool))),fun(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool))),finite_fold(X_b,fun(X_b,bool)),hAPP(fun(X_b,fun(X_b,bool)),fun(X_b,fun(fun(X_b,bool),fun(X_b,bool))),hAPP(fun(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool))),fun(fun(X_b,fun(X_b,bool)),fun(X_b,fun(fun(X_b,bool),fun(X_b,bool)))),combb(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),X_b),hAPP(fun(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool))),fun(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool))),combc(fun(X_b,bool),fun(X_b,bool),fun(X_b,bool)),minus_minus(fun(X_b,bool)))),hAPP(fun(X_b,bool),fun(X_b,fun(X_b,bool)),hAPP(fun(X_b,fun(fun(X_b,bool),fun(X_b,bool))),fun(fun(X_b,bool),fun(X_b,fun(X_b,bool))),combc(X_b,fun(X_b,bool),fun(X_b,bool)),insert(X_b)),bot_bot(fun(X_b,bool))))),B),A_1)
     <= hBOOL(hAPP(fun(X_b,bool),bool,finite_finite_1(X_b),A_1)) ) ).

fof(help_COMBB_1_1_U,axiom,
    ! [X_a,X_c,X_b,P,Q,R] : hAPP(X_b,X_c,P,hAPP(X_a,X_b,Q,R)) = hAPP(X_a,X_c,hAPP(fun(X_a,X_b),fun(X_a,X_c),hAPP(fun(X_b,X_c),fun(fun(X_a,X_b),fun(X_a,X_c)),combb(X_b,X_c,X_a),P),Q),R) ).

fof(tsy_c_Com_Ovname_Ovname__rec_res,axiom,
    ! [X_b] : ti(fun(fun(glb_1,X_b),fun(fun(loc_1,X_b),fun(vname,X_b))),vname_rec(X_b)) = vname_rec(X_b) ).

fof(fact_26_insert__ident,axiom,
    ! [X_b,B,X_1,A_1] :
      ( ~ hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),X_1),A_1))
     => ( ( ti(fun(X_b,bool),A_1) = ti(fun(X_b,bool),B)
        <=> hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),X_1),A_1) = hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),X_1),B) )
       <= ~ hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),X_1),B)) ) ) ).

fof(fact_457_Int__def,axiom,
    ! [X_b,A_1,B] : hAPP(fun(X_b,bool),fun(X_b,bool),collect(X_b),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,fun(bool,bool)),fun(fun(X_b,bool),fun(X_b,bool)),combs(X_b,bool,bool),hAPP(fun(X_b,bool),fun(X_b,fun(bool,bool)),hAPP(fun(bool,fun(bool,bool)),fun(fun(X_b,bool),fun(X_b,fun(bool,bool))),combb(bool,fun(bool,bool),X_b),fconj),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,fun(fun(X_b,bool),bool)),fun(fun(X_b,bool),fun(X_b,bool)),combc(X_b,fun(X_b,bool),bool),member(X_b)),A_1))),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,fun(fun(X_b,bool),bool)),fun(fun(X_b,bool),fun(X_b,bool)),combc(X_b,fun(X_b,bool),bool),member(X_b)),B))) = hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_inf_inf(fun(X_b,bool)),A_1),B) ).

fof(tsy_c_Finite__Set_Ocomp__fun__idem_res,axiom,
    ! [X_b,X_c] : ti(fun(fun(X_b,fun(X_c,X_c)),bool),finite_comp_fun_idem(X_b,X_c)) = finite_comp_fun_idem(X_b,X_c) ).

fof(fact_162_finite__Diff,axiom,
    ! [X_b,B,A_1] :
      ( hBOOL(hAPP(fun(X_b,bool),bool,finite_finite_1(X_b),A_1))
     => hBOOL(hAPP(fun(X_b,bool),bool,finite_finite_1(X_b),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),minus_minus(fun(X_b,bool)),A_1),B))) ) ).

fof(arity_fun___Lattices_Osemilattice__sup,axiom,
    ! [T_2,T_1] :
      ( lattice(T_1)
     => semilattice_sup(fun(T_2,T_1)) ) ).

fof(fact_468_inf__bot__left,axiom,
    ! [X_a] :
      ( bounded_lattice_bot(X_a)
     => ! [X] : bot_bot(X_a) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),bot_bot(X_a)),X) ) ).

fof(help_fdisj_3_1_U,axiom,
    ! [P,Q] :
      ( ~ hBOOL(hAPP(bool,bool,hAPP(bool,fun(bool,bool),fdisj,P),Q))
      | hBOOL(P)
      | hBOOL(Q) ) ).

fof(fact_57_bot__empty__eq,axiom,
    ! [X_b,X_2] :
      ( hBOOL(hAPP(X_b,bool,bot_bot(fun(X_b,bool)),X_2))
    <=> hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),X_2),bot_bot(fun(X_b,bool)))) ) ).

fof(tsy_c_fimplies_res,axiom,
    fimplies = ti(fun(bool,fun(bool,bool)),fimplies) ).

fof(fact_267_le__supI,axiom,
    ! [X_a] :
      ( ! [B_1,A_2,X] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),A_2),X))
         => ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),B_1),X))
           => hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),A_2),B_1)),X)) ) )
     <= semilattice_sup(X_a) ) ).

fof(fact_287_sup__fun__def,axiom,
    ! [X_b,X_c] :
      ( ! [F,G,X_2] : hAPP(X_c,X_c,hAPP(X_c,fun(X_c,X_c),semilattice_sup_sup(X_c),hAPP(X_b,X_c,F,X_2)),hAPP(X_b,X_c,G,X_2)) = hAPP(X_b,X_c,hAPP(fun(X_b,X_c),fun(X_b,X_c),hAPP(fun(X_b,X_c),fun(fun(X_b,X_c),fun(X_b,X_c)),semilattice_sup_sup(fun(X_b,X_c)),F),G),X_2)
     <= lattice(X_c) ) ).

fof(fact_304_xt1_I6_J,axiom,
    ! [X_a] :
      ( ! [Z,Y,X] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),Y),X))
         => ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),Z),Y))
           => hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),Z),X)) ) )
     <= order(X_a) ) ).

fof(fact_246_subset__empty,axiom,
    ! [X_b,A_1] :
      ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),ord_less_eq(fun(X_b,bool)),A_1),bot_bot(fun(X_b,bool))))
    <=> ti(fun(X_b,bool),A_1) = bot_bot(fun(X_b,bool)) ) ).

fof(fact_102_vname_Orecs_I2_J,axiom,
    ! [X_b,F1,F2,Loc_2] : hAPP(vname,X_b,hAPP(fun(loc_1,X_b),fun(vname,X_b),hAPP(fun(glb_1,X_b),fun(fun(loc_1,X_b),fun(vname,X_b)),vname_rec(X_b),F1),F2),hAPP(loc_1,vname,loc,Loc_2)) = hAPP(loc_1,X_b,F2,Loc_2) ).

fof(fact_387_image__eq__fold__image,axiom,
    ! [X_c,X_b,F,A_1] :
      ( hBOOL(hAPP(fun(X_b,bool),bool,finite_finite_1(X_b),A_1))
     => hAPP(fun(X_b,bool),fun(X_c,bool),hAPP(fun(X_c,bool),fun(fun(X_b,bool),fun(X_c,bool)),hAPP(fun(X_b,fun(X_c,bool)),fun(fun(X_c,bool),fun(fun(X_b,bool),fun(X_c,bool))),hAPP(fun(fun(X_c,bool),fun(fun(X_c,bool),fun(X_c,bool))),fun(fun(X_b,fun(X_c,bool)),fun(fun(X_c,bool),fun(fun(X_b,bool),fun(X_c,bool)))),finite_fold_image(fun(X_c,bool),X_b),semilattice_sup_sup(fun(X_c,bool))),hAPP(fun(X_c,bool),fun(X_b,fun(X_c,bool)),hAPP(fun(X_b,fun(fun(X_c,bool),fun(X_c,bool))),fun(fun(X_c,bool),fun(X_b,fun(X_c,bool))),combc(X_b,fun(X_c,bool),fun(X_c,bool)),hAPP(fun(X_b,X_c),fun(X_b,fun(fun(X_c,bool),fun(X_c,bool))),hAPP(fun(X_c,fun(fun(X_c,bool),fun(X_c,bool))),fun(fun(X_b,X_c),fun(X_b,fun(fun(X_c,bool),fun(X_c,bool)))),combb(X_c,fun(fun(X_c,bool),fun(X_c,bool)),X_b),insert(X_c)),F)),bot_bot(fun(X_c,bool)))),bot_bot(fun(X_c,bool))),A_1) = hAPP(fun(X_b,bool),fun(X_c,bool),hAPP(fun(X_b,X_c),fun(fun(X_b,bool),fun(X_c,bool)),image(X_b,X_c),F),A_1) ) ).

fof(tsy_c_Partial__Function_Oflat__lub_res,axiom,
    ! [X_b] : partial_flat_lub(X_b) = ti(fun(X_b,fun(fun(X_b,bool),X_b)),partial_flat_lub(X_b)) ).

fof(fact_108_evaln_OSkip,axiom,
    ! [S_1,N_2] : hBOOL(hAPP(state,bool,hAPP(nat,fun(state,bool),hAPP(state,fun(nat,fun(state,bool)),hAPP(com,fun(state,fun(nat,fun(state,bool))),evaln,skip),S_1),N_2),S_1)) ).

fof(arity_Nat_Onat___Groups_Oab__semigroup__mult,axiom,
    ab_semigroup_mult(nat) ).

fof(fact_191_folding__image__simple_Oinsert,axiom,
    ! [X_c,X_b,X_1,A_1,F,Z_1,G,F_1] :
      ( ( ( ~ hBOOL(hAPP(fun(X_c,bool),bool,hAPP(X_c,fun(fun(X_c,bool),bool),member(X_c),X_1),A_1))
         => hAPP(X_b,X_b,hAPP(X_b,fun(X_b,X_b),F,hAPP(X_c,X_b,G,X_1)),hAPP(fun(X_c,bool),X_b,F_1,A_1)) = hAPP(fun(X_c,bool),X_b,F_1,hAPP(fun(X_c,bool),fun(X_c,bool),hAPP(X_c,fun(fun(X_c,bool),fun(X_c,bool)),insert(X_c),X_1),A_1)) )
       <= hBOOL(hAPP(fun(X_c,bool),bool,finite_finite_1(X_c),A_1)) )
     <= hBOOL(hAPP(fun(fun(X_c,bool),X_b),bool,hAPP(fun(X_c,X_b),fun(fun(fun(X_c,bool),X_b),bool),hAPP(X_b,fun(fun(X_c,X_b),fun(fun(fun(X_c,bool),X_b),bool)),hAPP(fun(X_b,fun(X_b,X_b)),fun(X_b,fun(fun(X_c,X_b),fun(fun(fun(X_c,bool),X_b),bool))),finite1357897459simple(X_b,X_c),F),Z_1),G),F_1)) ) ).

fof(fact_403_Sup__fin_Oinsert,axiom,
    ! [X_b] :
      ( lattice(X_b)
     => ! [X_1,A_1] :
          ( ( ( bot_bot(fun(X_b,bool)) != ti(fun(X_b,bool),A_1)
             => hAPP(fun(X_b,bool),X_b,big_lattice_Sup_fin(X_b),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),X_1),A_1)) = hAPP(X_b,X_b,hAPP(X_b,fun(X_b,X_b),semilattice_sup_sup(X_b),X_1),hAPP(fun(X_b,bool),X_b,big_lattice_Sup_fin(X_b),A_1)) )
           <= ~ hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),X_1),A_1)) )
         <= hBOOL(hAPP(fun(X_b,bool),bool,finite_finite_1(X_b),A_1)) ) ) ).

fof(fact_96_com_Osimps_I10_J,axiom,
    ! [Loc_3,Fun,Com] : hAPP(com,com,hAPP(fun(state,nat),fun(com,com),hAPP(loc_1,fun(fun(state,nat),fun(com,com)),local,Loc_3),Fun),Com) != skip ).

fof(fact_269_sup__absorb2,axiom,
    ! [X_a] :
      ( ! [X,Y] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X),Y))
         => hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),X),Y) = ti(X_a,Y) )
     <= semilattice_sup(X_a) ) ).

fof(fact_13_singleton__conv,axiom,
    ! [X_b,A_3] : hAPP(fun(X_b,bool),fun(X_b,bool),collect(X_b),hAPP(X_b,fun(X_b,bool),hAPP(fun(X_b,fun(X_b,bool)),fun(X_b,fun(X_b,bool)),combc(X_b,X_b,bool),fequal(X_b)),A_3)) = hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),A_3),bot_bot(fun(X_b,bool))) ).

fof(tsy_c_COMBS_res,axiom,
    ! [X_a,X_b,X_c] : ti(fun(fun(X_a,fun(X_b,X_c)),fun(fun(X_a,X_b),fun(X_a,X_c))),combs(X_a,X_b,X_c)) = combs(X_a,X_b,X_c) ).

fof(fact_258_image__mono,axiom,
    ! [X_c,X_b,F,A_1,B] :
      ( hBOOL(hAPP(fun(X_c,bool),bool,hAPP(fun(X_c,bool),fun(fun(X_c,bool),bool),ord_less_eq(fun(X_c,bool)),hAPP(fun(X_b,bool),fun(X_c,bool),hAPP(fun(X_b,X_c),fun(fun(X_b,bool),fun(X_c,bool)),image(X_b,X_c),F),A_1)),hAPP(fun(X_b,bool),fun(X_c,bool),hAPP(fun(X_b,X_c),fun(fun(X_b,bool),fun(X_c,bool)),image(X_b,X_c),F),B)))
     <= hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),ord_less_eq(fun(X_b,bool)),A_1),B)) ) ).

fof(fact_144_finite,axiom,
    ! [X_b] :
      ( ! [A_1] : hBOOL(hAPP(fun(X_b,bool),bool,finite_finite_1(X_b),A_1))
     <= finite_finite(X_b) ) ).

fof(fact_75_ext,axiom,
    ! [X_b,X_c,F,G] :
      ( ! [X_2] : hAPP(X_b,X_c,G,X_2) = hAPP(X_b,X_c,F,X_2)
     => ti(fun(X_b,X_c),F) = ti(fun(X_b,X_c),G) ) ).

fof(fact_160_DiffE,axiom,
    ! [X_b,Ca,A_1,B] :
      ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),Ca),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),minus_minus(fun(X_b,bool)),A_1),B)))
     => ~ ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),Ca),A_1))
         => hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),Ca),B)) ) ) ).

fof(fact_364_fold__sup__insert,axiom,
    ! [X_b] :
      ( ! [Ba,A_3,A_1] :
          ( hAPP(X_b,X_b,hAPP(X_b,fun(X_b,X_b),semilattice_sup_sup(X_b),A_3),hAPP(fun(X_b,bool),X_b,hAPP(X_b,fun(fun(X_b,bool),X_b),hAPP(fun(X_b,fun(X_b,X_b)),fun(X_b,fun(fun(X_b,bool),X_b)),finite_fold(X_b,X_b),semilattice_sup_sup(X_b)),Ba),A_1)) = hAPP(fun(X_b,bool),X_b,hAPP(X_b,fun(fun(X_b,bool),X_b),hAPP(fun(X_b,fun(X_b,X_b)),fun(X_b,fun(fun(X_b,bool),X_b)),finite_fold(X_b,X_b),semilattice_sup_sup(X_b)),Ba),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),A_3),A_1))
         <= hBOOL(hAPP(fun(X_b,bool),bool,finite_finite_1(X_b),A_1)) )
     <= semilattice_sup(X_b) ) ).

fof(fact_248_finite__subset,axiom,
    ! [X_b,A_1,B] :
      ( ( hBOOL(hAPP(fun(X_b,bool),bool,finite_finite_1(X_b),A_1))
       <= hBOOL(hAPP(fun(X_b,bool),bool,finite_finite_1(X_b),B)) )
     <= hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),ord_less_eq(fun(X_b,bool)),A_1),B)) ) ).

fof(fact_164_DiffD2,axiom,
    ! [X_b,Ca,A_1,B] :
      ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),Ca),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),minus_minus(fun(X_b,bool)),A_1),B)))
     => ~ hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),Ca),B)) ) ).

fof(fact_272_sup__apply,axiom,
    ! [X_c,X_b] :
      ( lattice(X_b)
     => ! [F,G,X_1] : hAPP(X_b,X_b,hAPP(X_b,fun(X_b,X_b),semilattice_sup_sup(X_b),hAPP(X_c,X_b,F,X_1)),hAPP(X_c,X_b,G,X_1)) = hAPP(X_c,X_b,hAPP(fun(X_c,X_b),fun(X_c,X_b),hAPP(fun(X_c,X_b),fun(fun(X_c,X_b),fun(X_c,X_b)),semilattice_sup_sup(fun(X_c,X_b)),F),G),X_1) ) ).

fof(fact_88_hoare__derivs_OLocal,axiom,
    ! [X_b,A_3,Ga,Pa,Ca,Q_1,X_3,S_5] :
      ( hBOOL(hAPP(fun(hoare_1656922687triple(X_b),bool),bool,hAPP(fun(hoare_1656922687triple(X_b),bool),fun(fun(hoare_1656922687triple(X_b),bool),bool),hoare_279057269derivs(X_b),Ga),hAPP(fun(hoare_1656922687triple(X_b),bool),fun(hoare_1656922687triple(X_b),bool),hAPP(hoare_1656922687triple(X_b),fun(fun(hoare_1656922687triple(X_b),bool),fun(hoare_1656922687triple(X_b),bool)),insert(hoare_1656922687triple(X_b)),hAPP(fun(X_b,fun(state,bool)),hoare_1656922687triple(X_b),hAPP(com,fun(fun(X_b,fun(state,bool)),hoare_1656922687triple(X_b)),hAPP(fun(X_b,fun(state,bool)),fun(com,fun(fun(X_b,fun(state,bool)),hoare_1656922687triple(X_b))),hoare_246368825triple(X_b),hAPP(fun(X_b,fun(state,bool)),fun(X_b,fun(state,bool)),hAPP(fun(fun(state,bool),fun(state,bool)),fun(fun(X_b,fun(state,bool)),fun(X_b,fun(state,bool))),combb(fun(state,bool),fun(state,bool),X_b),hAPP(fun(state,fun(bool,bool)),fun(fun(state,bool),fun(state,bool)),combs(state,bool,bool),hAPP(fun(state,bool),fun(state,fun(bool,bool)),hAPP(fun(bool,fun(bool,bool)),fun(fun(state,bool),fun(state,fun(bool,bool))),combb(bool,fun(bool,bool),state),fconj),hAPP(state,fun(state,bool),fequal(state),S_5)))),hAPP(fun(state,state),fun(X_b,fun(state,bool)),hAPP(fun(X_b,fun(fun(state,state),fun(state,bool))),fun(fun(state,state),fun(X_b,fun(state,bool))),combc(X_b,fun(state,state),fun(state,bool)),hAPP(fun(X_b,fun(state,bool)),fun(X_b,fun(fun(state,state),fun(state,bool))),hAPP(fun(fun(state,bool),fun(fun(state,state),fun(state,bool))),fun(fun(X_b,fun(state,bool)),fun(X_b,fun(fun(state,state),fun(state,bool)))),combb(fun(state,bool),fun(fun(state,state),fun(state,bool)),X_b),combb(state,bool,state)),Pa)),hAPP(fun(state,nat),fun(state,state),hAPP(fun(state,fun(nat,state)),fun(fun(state,nat),fun(state,state)),combs(state,nat,state),hAPP(vname,fun(state,fun(nat,state)),hAPP(fun(state,fun(vname,fun(nat,state))),fun(vname,fun(state,fun(nat,state))),combc(state,vname,fun(nat,state)),update),hAPP(loc_1,vname,loc,X_3))),A_3)))),hAPP(com,com,hAPP(fun(state,nat),fun(com,com),hAPP(loc_1,fun(fun(state,nat),fun(com,com)),local,X_3),A_3),Ca)),Q_1)),bot_bot(fun(hoare_1656922687triple(X_b),bool)))))
     <= hBOOL(hAPP(fun(hoare_1656922687triple(X_b),bool),bool,hAPP(fun(hoare_1656922687triple(X_b),bool),fun(fun(hoare_1656922687triple(X_b),bool),bool),hoare_279057269derivs(X_b),Ga),hAPP(fun(hoare_1656922687triple(X_b),bool),fun(hoare_1656922687triple(X_b),bool),hAPP(hoare_1656922687triple(X_b),fun(fun(hoare_1656922687triple(X_b),bool),fun(hoare_1656922687triple(X_b),bool)),insert(hoare_1656922687triple(X_b)),hAPP(fun(X_b,fun(state,bool)),hoare_1656922687triple(X_b),hAPP(com,fun(fun(X_b,fun(state,bool)),hoare_1656922687triple(X_b)),hAPP(fun(X_b,fun(state,bool)),fun(com,fun(fun(X_b,fun(state,bool)),hoare_1656922687triple(X_b))),hoare_246368825triple(X_b),Pa),Ca),hAPP(fun(state,state),fun(X_b,fun(state,bool)),hAPP(fun(X_b,fun(fun(state,state),fun(state,bool))),fun(fun(state,state),fun(X_b,fun(state,bool))),combc(X_b,fun(state,state),fun(state,bool)),hAPP(fun(X_b,fun(state,bool)),fun(X_b,fun(fun(state,state),fun(state,bool))),hAPP(fun(fun(state,bool),fun(fun(state,state),fun(state,bool))),fun(fun(X_b,fun(state,bool)),fun(X_b,fun(fun(state,state),fun(state,bool)))),combb(fun(state,bool),fun(fun(state,state),fun(state,bool)),X_b),combb(state,bool,state)),Q_1)),hAPP(nat,fun(state,state),hAPP(fun(state,fun(nat,state)),fun(nat,fun(state,state)),combc(state,nat,state),hAPP(vname,fun(state,fun(nat,state)),hAPP(fun(state,fun(vname,fun(nat,state))),fun(vname,fun(state,fun(nat,state))),combc(state,vname,fun(nat,state)),update),hAPP(loc_1,vname,loc,X_3))),hAPP(loc_1,nat,hAPP(state,fun(loc_1,nat),getlocs,S_5),X_3))))),bot_bot(fun(hoare_1656922687triple(X_b),bool))))) ) ).

fof(fact_250_Un__Diff__cancel2,axiom,
    ! [X_b,B,A_1] : hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_sup_sup(fun(X_b,bool)),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),minus_minus(fun(X_b,bool)),B),A_1)),A_1) = hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_sup_sup(fun(X_b,bool)),B),A_1) ).

fof(fact_294_sup__eq__bot__iff,axiom,
    ! [X_b] :
      ( bounded_lattice_bot(X_b)
     => ! [X_1,Y_1] :
          ( ( bot_bot(X_b) = ti(X_b,X_1)
            & bot_bot(X_b) = ti(X_b,Y_1) )
        <=> hAPP(X_b,X_b,hAPP(X_b,fun(X_b,X_b),semilattice_sup_sup(X_b),X_1),Y_1) = bot_bot(X_b) ) ) ).

fof(fact_131_fold__graph_Osimps,axiom,
    ! [X_c,X_b,F,Z_1,A1,A2] :
      ( ( ( bot_bot(fun(X_b,bool)) = ti(fun(X_b,bool),A1)
          & ti(X_c,Z_1) = ti(X_c,A2) )
        | ? [X_2,A_5,Y_2] :
            ( ti(fun(X_b,bool),A1) = hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),X_2),A_5)
            & hAPP(X_c,X_c,hAPP(X_b,fun(X_c,X_c),F,X_2),Y_2) = ti(X_c,A2)
            & hBOOL(hAPP(X_c,bool,hAPP(fun(X_b,bool),fun(X_c,bool),hAPP(X_c,fun(fun(X_b,bool),fun(X_c,bool)),hAPP(fun(X_b,fun(X_c,X_c)),fun(X_c,fun(fun(X_b,bool),fun(X_c,bool))),finite_fold_graph(X_b,X_c),F),Z_1),A_5),Y_2))
            & ~ hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),X_2),A_5)) ) )
    <=> hBOOL(hAPP(X_c,bool,hAPP(fun(X_b,bool),fun(X_c,bool),hAPP(X_c,fun(fun(X_b,bool),fun(X_c,bool)),hAPP(fun(X_b,fun(X_c,X_c)),fun(X_c,fun(fun(X_b,bool),fun(X_c,bool))),finite_fold_graph(X_b,X_c),F),Z_1),A1),A2)) ) ).

fof(tsy_c_Finite__Set_Ofold__image_res,axiom,
    ! [X_b,X_c] : finite_fold_image(X_b,X_c) = ti(fun(fun(X_b,fun(X_b,X_b)),fun(fun(X_c,X_b),fun(X_b,fun(fun(X_c,bool),X_b)))),finite_fold_image(X_b,X_c)) ).

fof(fact_155_finite__ne__induct,axiom,
    ! [X_b,Pa,F_1] :
      ( ( bot_bot(fun(X_b,bool)) != ti(fun(X_b,bool),F_1)
       => ( ! [X_2] : hBOOL(hAPP(fun(X_b,bool),bool,Pa,hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),X_2),bot_bot(fun(X_b,bool)))))
         => ( ! [X_2,F_2] :
                ( hBOOL(hAPP(fun(X_b,bool),bool,finite_finite_1(X_b),F_2))
               => ( ( ( hBOOL(hAPP(fun(X_b,bool),bool,Pa,hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),X_2),F_2)))
                     <= hBOOL(hAPP(fun(X_b,bool),bool,Pa,F_2)) )
                   <= ~ hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),X_2),F_2)) )
                 <= ti(fun(X_b,bool),F_2) != bot_bot(fun(X_b,bool)) ) )
           => hBOOL(hAPP(fun(X_b,bool),bool,Pa,F_1)) ) ) )
     <= hBOOL(hAPP(fun(X_b,bool),bool,finite_finite_1(X_b),F_1)) ) ).

fof(fact_282_sup_Oleft__idem,axiom,
    ! [X_a] :
      ( semilattice_sup(X_a)
     => ! [A_2,B_1] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),A_2),B_1) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),A_2),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),A_2),B_1)) ) ).

fof(fact_218_fold1__singleton__def,axiom,
    ! [X_b,A_3,G,F] :
      ( G = hAPP(fun(X_b,fun(X_b,X_b)),fun(fun(X_b,bool),X_b),finite_fold1(X_b),F)
     => ti(X_b,A_3) = hAPP(fun(X_b,bool),X_b,G,hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),A_3),bot_bot(fun(X_b,bool)))) ) ).

fof(fact_405_Sup__fin_Ounion__idem,axiom,
    ! [X_b] :
      ( ! [B,A_1] :
          ( ( bot_bot(fun(X_b,bool)) != ti(fun(X_b,bool),A_1)
           => ( ( bot_bot(fun(X_b,bool)) != ti(fun(X_b,bool),B)
               => hAPP(X_b,X_b,hAPP(X_b,fun(X_b,X_b),semilattice_sup_sup(X_b),hAPP(fun(X_b,bool),X_b,big_lattice_Sup_fin(X_b),A_1)),hAPP(fun(X_b,bool),X_b,big_lattice_Sup_fin(X_b),B)) = hAPP(fun(X_b,bool),X_b,big_lattice_Sup_fin(X_b),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_sup_sup(fun(X_b,bool)),A_1),B)) )
             <= hBOOL(hAPP(fun(X_b,bool),bool,finite_finite_1(X_b),B)) ) )
         <= hBOOL(hAPP(fun(X_b,bool),bool,finite_finite_1(X_b),A_1)) )
     <= lattice(X_b) ) ).

fof(fact_238_subsetD,axiom,
    ! [X_b,Ca,A_1,B] :
      ( ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),Ca),A_1))
       => hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),Ca),B)) )
     <= hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),ord_less_eq(fun(X_b,bool)),A_1),B)) ) ).

fof(fact_296_sup__bot__left,axiom,
    ! [X_a] :
      ( ! [X] : ti(X_a,X) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),bot_bot(X_a)),X)
     <= bounded_lattice_bot(X_a) ) ).

fof(fact_455_Int__Collect,axiom,
    ! [X_b,X_1,A_1,Pa] :
      ( ( hBOOL(hAPP(X_b,bool,Pa,X_1))
        & hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),X_1),A_1)) )
    <=> hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),X_1),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_inf_inf(fun(X_b,bool)),A_1),hAPP(fun(X_b,bool),fun(X_b,bool),collect(X_b),Pa)))) ) ).

fof(tsy_c_Orderings_Obot__class_Obot_res,axiom,
    ! [X_b] :
      ( bot(X_b)
     => ti(X_b,bot_bot(X_b)) = bot_bot(X_b) ) ).

fof(help_fFalse_1_1_T,axiom,
    ! [P] :
      ( ti(bool,P) = fFalse
      | ti(bool,P) = fTrue ) ).

fof(fact_83_If__def,axiom,
    ! [X_b,X_1,Y_1,Pa] :
      ( ( ~ hBOOL(Pa)
       => hAPP(fun(X_b,bool),X_b,the(X_b),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,fun(bool,bool)),fun(fun(X_b,bool),fun(X_b,bool)),combs(X_b,bool,bool),hAPP(fun(X_b,bool),fun(X_b,fun(bool,bool)),hAPP(fun(bool,fun(bool,bool)),fun(fun(X_b,bool),fun(X_b,fun(bool,bool))),combb(bool,fun(bool,bool),X_b),fconj),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(bool,bool),fun(fun(X_b,bool),fun(X_b,bool)),combb(bool,bool,X_b),hAPP(bool,fun(bool,bool),fimplies,Pa)),hAPP(X_b,fun(X_b,bool),hAPP(fun(X_b,fun(X_b,bool)),fun(X_b,fun(X_b,bool)),combc(X_b,X_b,bool),fequal(X_b)),X_1)))),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(bool,bool),fun(fun(X_b,bool),fun(X_b,bool)),combb(bool,bool,X_b),hAPP(bool,fun(bool,bool),fimplies,hAPP(bool,bool,fNot,Pa))),hAPP(X_b,fun(X_b,bool),hAPP(fun(X_b,fun(X_b,bool)),fun(X_b,fun(X_b,bool)),combc(X_b,X_b,bool),fequal(X_b)),Y_1)))) = ti(X_b,Y_1) )
      & ( ti(X_b,X_1) = hAPP(fun(X_b,bool),X_b,the(X_b),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,fun(bool,bool)),fun(fun(X_b,bool),fun(X_b,bool)),combs(X_b,bool,bool),hAPP(fun(X_b,bool),fun(X_b,fun(bool,bool)),hAPP(fun(bool,fun(bool,bool)),fun(fun(X_b,bool),fun(X_b,fun(bool,bool))),combb(bool,fun(bool,bool),X_b),fconj),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(bool,bool),fun(fun(X_b,bool),fun(X_b,bool)),combb(bool,bool,X_b),hAPP(bool,fun(bool,bool),fimplies,Pa)),hAPP(X_b,fun(X_b,bool),hAPP(fun(X_b,fun(X_b,bool)),fun(X_b,fun(X_b,bool)),combc(X_b,X_b,bool),fequal(X_b)),X_1)))),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(bool,bool),fun(fun(X_b,bool),fun(X_b,bool)),combb(bool,bool,X_b),hAPP(bool,fun(bool,bool),fimplies,hAPP(bool,bool,fNot,Pa))),hAPP(X_b,fun(X_b,bool),hAPP(fun(X_b,fun(X_b,bool)),fun(X_b,fun(X_b,bool)),combc(X_b,X_b,bool),fequal(X_b)),Y_1))))
       <= hBOOL(Pa) ) ) ).

fof(fact_220_fold__def,axiom,
    ! [X_c,X_b,F,Z_1,A_1] : hAPP(fun(X_b,bool),X_b,the(X_b),hAPP(fun(X_c,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_c,bool),fun(X_b,bool)),hAPP(fun(X_c,fun(X_b,X_b)),fun(X_b,fun(fun(X_c,bool),fun(X_b,bool))),finite_fold_graph(X_c,X_b),F),Z_1),A_1)) = hAPP(fun(X_c,bool),X_b,hAPP(X_b,fun(fun(X_c,bool),X_b),hAPP(fun(X_c,fun(X_b,X_b)),fun(X_b,fun(fun(X_c,bool),X_b)),finite_fold(X_c,X_b),F),Z_1),A_1) ).

fof(fact_23_empty__def,axiom,
    ! [X_b] : hAPP(fun(X_b,bool),fun(X_b,bool),collect(X_b),hAPP(bool,fun(X_b,bool),combk(bool,X_b),fFalse)) = bot_bot(fun(X_b,bool)) ).

fof(fact_66_imageI,axiom,
    ! [X_c,X_b,F,X_1,A_1] :
      ( hBOOL(hAPP(fun(X_c,bool),bool,hAPP(X_c,fun(fun(X_c,bool),bool),member(X_c),hAPP(X_b,X_c,F,X_1)),hAPP(fun(X_b,bool),fun(X_c,bool),hAPP(fun(X_b,X_c),fun(fun(X_b,bool),fun(X_c,bool)),image(X_b,X_c),F),A_1)))
     <= hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),X_1),A_1)) ) ).

fof(fact_420_inf__greatest,axiom,
    ! [X_a] :
      ( semilattice_inf(X_a)
     => ! [Z,X,Y] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X),Y))
         => ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X),Z))
           => hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),Y),Z))) ) ) ) ).

fof(fact_274_sup__assoc,axiom,
    ! [X_a] :
      ( ! [X,Y,Z] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),X),Y)),Z) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),X),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),Y),Z))
     <= semilattice_sup(X_a) ) ).

fof(fact_265_sup__mono,axiom,
    ! [X_a] :
      ( semilattice_sup(X_a)
     => ! [B_1,D_1,A_2,C_1] :
          ( ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),A_2),B_1)),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),C_1),D_1)))
           <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),B_1),D_1)) )
         <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),A_2),C_1)) ) ) ).

fof(fact_134_vname_Osimps_I5_J,axiom,
    ! [X_b,F1,F2,Glb_3] : hAPP(glb_1,X_b,F1,Glb_3) = hAPP(vname,X_b,hAPP(fun(loc_1,X_b),fun(vname,X_b),hAPP(fun(glb_1,X_b),fun(fun(loc_1,X_b),fun(vname,X_b)),vname_case(X_b),F1),F2),hAPP(glb_1,vname,glb,Glb_3)) ).

fof(fact_147_vname_Osimps_I3_J,axiom,
    ! [Glb_1,Loc_1] : hAPP(glb_1,vname,glb,Glb_1) != hAPP(loc_1,vname,loc,Loc_1) ).

fof(fact_6_conseq2,axiom,
    ! [X_b,Q_1,Ga,Pa,Ca,Q_3] :
      ( hBOOL(hAPP(fun(hoare_1656922687triple(X_b),bool),bool,hAPP(fun(hoare_1656922687triple(X_b),bool),fun(fun(hoare_1656922687triple(X_b),bool),bool),hoare_279057269derivs(X_b),Ga),hAPP(fun(hoare_1656922687triple(X_b),bool),fun(hoare_1656922687triple(X_b),bool),hAPP(hoare_1656922687triple(X_b),fun(fun(hoare_1656922687triple(X_b),bool),fun(hoare_1656922687triple(X_b),bool)),insert(hoare_1656922687triple(X_b)),hAPP(fun(X_b,fun(state,bool)),hoare_1656922687triple(X_b),hAPP(com,fun(fun(X_b,fun(state,bool)),hoare_1656922687triple(X_b)),hAPP(fun(X_b,fun(state,bool)),fun(com,fun(fun(X_b,fun(state,bool)),hoare_1656922687triple(X_b))),hoare_246368825triple(X_b),Pa),Ca),Q_3)),bot_bot(fun(hoare_1656922687triple(X_b),bool)))))
     => ( ! [Z_2,S_2] :
            ( hBOOL(hAPP(state,bool,hAPP(X_b,fun(state,bool),Q_1,Z_2),S_2))
           <= hBOOL(hAPP(state,bool,hAPP(X_b,fun(state,bool),Q_3,Z_2),S_2)) )
       => hBOOL(hAPP(fun(hoare_1656922687triple(X_b),bool),bool,hAPP(fun(hoare_1656922687triple(X_b),bool),fun(fun(hoare_1656922687triple(X_b),bool),bool),hoare_279057269derivs(X_b),Ga),hAPP(fun(hoare_1656922687triple(X_b),bool),fun(hoare_1656922687triple(X_b),bool),hAPP(hoare_1656922687triple(X_b),fun(fun(hoare_1656922687triple(X_b),bool),fun(hoare_1656922687triple(X_b),bool)),insert(hoare_1656922687triple(X_b)),hAPP(fun(X_b,fun(state,bool)),hoare_1656922687triple(X_b),hAPP(com,fun(fun(X_b,fun(state,bool)),hoare_1656922687triple(X_b)),hAPP(fun(X_b,fun(state,bool)),fun(com,fun(fun(X_b,fun(state,bool)),hoare_1656922687triple(X_b))),hoare_246368825triple(X_b),Pa),Ca),Q_1)),bot_bot(fun(hoare_1656922687triple(X_b),bool))))) ) ) ).

fof(fact_334_bex__Un,axiom,
    ! [X_b,Pa,A_1,B] :
      ( ( ? [X_2] :
            ( hBOOL(hAPP(X_b,bool,Pa,X_2))
            & hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),X_2),B)) )
        | ? [X_2] :
            ( hBOOL(hAPP(X_b,bool,Pa,X_2))
            & hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),X_2),A_1)) ) )
    <=> ? [X_2] :
          ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),X_2),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_sup_sup(fun(X_b,bool)),A_1),B)))
          & hBOOL(hAPP(X_b,bool,Pa,X_2)) ) ) ).

fof(arity_fun___Orderings_Oorder,axiom,
    ! [T_2,T_1] :
      ( order(T_1)
     => order(fun(T_2,T_1)) ) ).

fof(fact_249_Un__Diff__cancel,axiom,
    ! [X_b,A_1,B] : hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_sup_sup(fun(X_b,bool)),A_1),B) = hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_sup_sup(fun(X_b,bool)),A_1),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),minus_minus(fun(X_b,bool)),B),A_1)) ).

fof(arity_Nat_Onat___Orderings_Oorder,axiom,
    order(nat) ).

fof(fact_188_fun__diff__def,axiom,
    ! [X_b,X_c] :
      ( minus(X_c)
     => ! [A_1,B,X_2] : hAPP(X_c,X_c,hAPP(X_c,fun(X_c,X_c),minus_minus(X_c),hAPP(X_b,X_c,A_1,X_2)),hAPP(X_b,X_c,B,X_2)) = hAPP(X_b,X_c,hAPP(fun(X_b,X_c),fun(X_b,X_c),hAPP(fun(X_b,X_c),fun(fun(X_b,X_c),fun(X_b,X_c)),minus_minus(fun(X_b,X_c)),A_1),B),X_2) ) ).

fof(tsy_c_Lattices_Osemilattice__inf__class_Oinf_res,axiom,
    ! [X_a] :
      ( ti(fun(X_a,fun(X_a,X_a)),semilattice_inf_inf(X_a)) = semilattice_inf_inf(X_a)
     <= semilattice_inf(X_a) ) ).

fof(fact_263_Diff__subset__conv,axiom,
    ! [X_b,A_1,B,C] :
      ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),ord_less_eq(fun(X_b,bool)),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),minus_minus(fun(X_b,bool)),A_1),B)),C))
    <=> hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),ord_less_eq(fun(X_b,bool)),A_1),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_sup_sup(fun(X_b,bool)),B),C))) ) ).

fof(fact_422_inf__absorb2,axiom,
    ! [X_a] :
      ( ! [Y,X] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),Y),X))
         => hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),X),Y) = ti(X_a,Y) )
     <= semilattice_inf(X_a) ) ).

fof(fact_170_Diff__cancel,axiom,
    ! [X_b,A_1] : bot_bot(fun(X_b,bool)) = hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),minus_minus(fun(X_b,bool)),A_1),A_1) ).

fof(fact_381_finite__Collect__le__nat,axiom,
    ! [K] : hBOOL(hAPP(fun(nat,bool),bool,finite_finite_1(nat),hAPP(fun(nat,bool),fun(nat,bool),collect(nat),hAPP(nat,fun(nat,bool),hAPP(fun(nat,fun(nat,bool)),fun(nat,fun(nat,bool)),combc(nat,nat,bool),ord_less_eq(nat)),K)))) ).

fof(fact_350_sup1I1,axiom,
    ! [X_b,B,A_1,X_1] :
      ( hBOOL(hAPP(X_b,bool,hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_sup_sup(fun(X_b,bool)),A_1),B),X_1))
     <= hBOOL(hAPP(X_b,bool,A_1,X_1)) ) ).

fof(fact_135_triple__valid__def2,axiom,
    ! [X_b,N_3,Pa,Ca,Q_1] :
      ( ! [Z_2,S_2] :
          ( ! [S_3] :
              ( hBOOL(hAPP(state,bool,hAPP(nat,fun(state,bool),hAPP(state,fun(nat,fun(state,bool)),hAPP(com,fun(state,fun(nat,fun(state,bool))),evaln,Ca),S_2),N_3),S_3))
             => hBOOL(hAPP(state,bool,hAPP(X_b,fun(state,bool),Q_1,Z_2),S_3)) )
         <= hBOOL(hAPP(state,bool,hAPP(X_b,fun(state,bool),Pa,Z_2),S_2)) )
    <=> hBOOL(hAPP(hoare_1656922687triple(X_b),bool,hAPP(nat,fun(hoare_1656922687triple(X_b),bool),hoare_920331057_valid(X_b),N_3),hAPP(fun(X_b,fun(state,bool)),hoare_1656922687triple(X_b),hAPP(com,fun(fun(X_b,fun(state,bool)),hoare_1656922687triple(X_b)),hAPP(fun(X_b,fun(state,bool)),fun(com,fun(fun(X_b,fun(state,bool)),hoare_1656922687triple(X_b))),hoare_246368825triple(X_b),Pa),Ca),Q_1))) ) ).

fof(fact_25_insertI2,axiom,
    ! [X_b,Ba,A_3,B] :
      ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),A_3),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),Ba),B)))
     <= hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),A_3),B)) ) ).

fof(fact_151_finite_Osimps,axiom,
    ! [X_b,A_3] :
      ( ( ? [A_5,A_4] :
            ( hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),A_4),A_5) = ti(fun(X_b,bool),A_3)
            & hBOOL(hAPP(fun(X_b,bool),bool,finite_finite_1(X_b),A_5)) )
        | ti(fun(X_b,bool),A_3) = bot_bot(fun(X_b,bool)) )
    <=> hBOOL(hAPP(fun(X_b,bool),bool,finite_finite_1(X_b),A_3)) ) ).

fof(fact_215_fold1__eq__fold,axiom,
    ! [X_b] :
      ( ab_semigroup_mult(X_b)
     => ! [A_3,A_1] :
          ( hBOOL(hAPP(fun(X_b,bool),bool,finite_finite_1(X_b),A_1))
         => ( hAPP(fun(X_b,bool),X_b,hAPP(X_b,fun(fun(X_b,bool),X_b),hAPP(fun(X_b,fun(X_b,X_b)),fun(X_b,fun(fun(X_b,bool),X_b)),finite_fold(X_b,X_b),times_times(X_b)),A_3),A_1) = hAPP(fun(X_b,bool),X_b,hAPP(fun(X_b,fun(X_b,X_b)),fun(fun(X_b,bool),X_b),finite_fold1(X_b),times_times(X_b)),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),A_3),A_1))
           <= ~ hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),A_3),A_1)) ) ) ) ).

fof(help_COMBC_1_1_U,axiom,
    ! [X_a,X_c,X_b,P,Q,R] : hAPP(X_a,X_c,hAPP(X_b,fun(X_a,X_c),hAPP(fun(X_a,fun(X_b,X_c)),fun(X_b,fun(X_a,X_c)),combc(X_a,X_b,X_c),P),Q),R) = hAPP(X_b,X_c,hAPP(X_a,fun(X_b,X_c),P,R),Q) ).

fof(fact_64_com_Osimps_I1_J,axiom,
    ! [Vname,Fun_1,Vname_1,Fun] :
      ( hAPP(fun(state,nat),com,hAPP(vname,fun(fun(state,nat),com),ass,Vname_1),Fun) = hAPP(fun(state,nat),com,hAPP(vname,fun(fun(state,nat),com),ass,Vname),Fun_1)
    <=> ( ti(vname,Vname_1) = ti(vname,Vname)
        & Fun = Fun_1 ) ) ).

fof(tsy_c_Com_Ovname_OLoc_res,axiom,
    loc = ti(fun(loc_1,vname),loc) ).

fof(arity_fun___Orderings_Obot,axiom,
    ! [T_2,T_1] :
      ( bot(T_1)
     => bot(fun(T_2,T_1)) ) ).

fof(fact_458_Int__commute,axiom,
    ! [X_b,A_1,B] : hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_inf_inf(fun(X_b,bool)),A_1),B) = hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_inf_inf(fun(X_b,bool)),B),A_1) ).

fof(fact_149_finite__nonempty__imp__fold1Set,axiom,
    ! [X_b,F,A_1] :
      ( ( ti(fun(X_b,bool),A_1) != bot_bot(fun(X_b,bool))
       => ? [X1] : hBOOL(hAPP(X_b,bool,hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,fun(X_b,X_b)),fun(fun(X_b,bool),fun(X_b,bool)),finite_fold1Set(X_b),F),A_1),X1)) )
     <= hBOOL(hAPP(fun(X_b,bool),bool,finite_finite_1(X_b),A_1)) ) ).

fof(fact_222_comp__fun__commute_Ofold__insert2,axiom,
    ! [X_b,X_c,Z_1,X_1,A_1,F] :
      ( ( ( ~ hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),X_1),A_1))
         => hAPP(fun(X_b,bool),X_c,hAPP(X_c,fun(fun(X_b,bool),X_c),hAPP(fun(X_b,fun(X_c,X_c)),fun(X_c,fun(fun(X_b,bool),X_c)),finite_fold(X_b,X_c),F),Z_1),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),X_1),A_1)) = hAPP(fun(X_b,bool),X_c,hAPP(X_c,fun(fun(X_b,bool),X_c),hAPP(fun(X_b,fun(X_c,X_c)),fun(X_c,fun(fun(X_b,bool),X_c)),finite_fold(X_b,X_c),F),hAPP(X_c,X_c,hAPP(X_b,fun(X_c,X_c),F,X_1),Z_1)),A_1) )
       <= hBOOL(hAPP(fun(X_b,bool),bool,finite_finite_1(X_b),A_1)) )
     <= hBOOL(hAPP(fun(X_b,fun(X_c,X_c)),bool,finite100568337ommute(X_b,X_c),F)) ) ).

fof(fact_15_Collect__conv__if,axiom,
    ! [X_b,Pa,A_3] :
      ( ( hAPP(fun(X_b,bool),fun(X_b,bool),collect(X_b),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,fun(bool,bool)),fun(fun(X_b,bool),fun(X_b,bool)),combs(X_b,bool,bool),hAPP(fun(X_b,bool),fun(X_b,fun(bool,bool)),hAPP(fun(bool,fun(bool,bool)),fun(fun(X_b,bool),fun(X_b,fun(bool,bool))),combb(bool,fun(bool,bool),X_b),fconj),hAPP(X_b,fun(X_b,bool),hAPP(fun(X_b,fun(X_b,bool)),fun(X_b,fun(X_b,bool)),combc(X_b,X_b,bool),fequal(X_b)),A_3))),Pa)) = hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),A_3),bot_bot(fun(X_b,bool)))
       <= hBOOL(hAPP(X_b,bool,Pa,A_3)) )
      & ( hAPP(fun(X_b,bool),fun(X_b,bool),collect(X_b),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,fun(bool,bool)),fun(fun(X_b,bool),fun(X_b,bool)),combs(X_b,bool,bool),hAPP(fun(X_b,bool),fun(X_b,fun(bool,bool)),hAPP(fun(bool,fun(bool,bool)),fun(fun(X_b,bool),fun(X_b,fun(bool,bool))),combb(bool,fun(bool,bool),X_b),fconj),hAPP(X_b,fun(X_b,bool),hAPP(fun(X_b,fun(X_b,bool)),fun(X_b,fun(X_b,bool)),combc(X_b,X_b,bool),fequal(X_b)),A_3))),Pa)) = bot_bot(fun(X_b,bool))
       <= ~ hBOOL(hAPP(X_b,bool,Pa,A_3)) ) ) ).

fof(fact_16_triple_Orecs,axiom,
    ! [X_c,X_b,F1,Fun1_1,Com_1,Fun2_1] : hAPP(fun(X_c,fun(state,bool)),X_b,hAPP(com,fun(fun(X_c,fun(state,bool)),X_b),hAPP(fun(X_c,fun(state,bool)),fun(com,fun(fun(X_c,fun(state,bool)),X_b)),F1,Fun1_1),Com_1),Fun2_1) = hAPP(hoare_1656922687triple(X_c),X_b,hAPP(fun(fun(X_c,fun(state,bool)),fun(com,fun(fun(X_c,fun(state,bool)),X_b))),fun(hoare_1656922687triple(X_c),X_b),hoare_1632998903le_rec(X_c,X_b),F1),hAPP(fun(X_c,fun(state,bool)),hoare_1656922687triple(X_c),hAPP(com,fun(fun(X_c,fun(state,bool)),hoare_1656922687triple(X_c)),hAPP(fun(X_c,fun(state,bool)),fun(com,fun(fun(X_c,fun(state,bool)),hoare_1656922687triple(X_c))),hoare_246368825triple(X_c),Fun1_1),Com_1),Fun2_1)) ).

fof(arity_fun___Lattices_Osemilattice__inf,axiom,
    ! [T_2,T_1] :
      ( semilattice_inf(fun(T_2,T_1))
     <= lattice(T_1) ) ).

fof(fact_344_Un__upper2,axiom,
    ! [X_b,B,A_1] : hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),ord_less_eq(fun(X_b,bool)),B),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_sup_sup(fun(X_b,bool)),A_1),B))) ).

fof(fact_388_fold__image__def,axiom,
    ! [X_c,X_b,F,G] : hAPP(fun(X_c,fun(X_b,X_b)),fun(X_b,fun(fun(X_c,bool),X_b)),finite_fold(X_c,X_b),hAPP(fun(X_c,X_b),fun(X_c,fun(X_b,X_b)),hAPP(fun(X_b,fun(X_b,X_b)),fun(fun(X_c,X_b),fun(X_c,fun(X_b,X_b))),combb(X_b,fun(X_b,X_b),X_c),F),G)) = hAPP(fun(X_c,X_b),fun(X_b,fun(fun(X_c,bool),X_b)),hAPP(fun(X_b,fun(X_b,X_b)),fun(fun(X_c,X_b),fun(X_b,fun(fun(X_c,bool),X_b))),finite_fold_image(X_b,X_c),F),G) ).

fof(tsy_c_Groups_Otimes__class_Otimes_res,axiom,
    ! [X_b] :
      ( times_times(X_b) = ti(fun(X_b,fun(X_b,X_b)),times_times(X_b))
     <= ab_semigroup_mult(X_b) ) ).

fof(fact_359_weaken,axiom,
    ! [X_b,Ts,Ga,Ts_1] :
      ( ( hBOOL(hAPP(fun(hoare_1656922687triple(X_b),bool),bool,hAPP(fun(hoare_1656922687triple(X_b),bool),fun(fun(hoare_1656922687triple(X_b),bool),bool),ord_less_eq(fun(hoare_1656922687triple(X_b),bool)),Ts),Ts_1))
       => hBOOL(hAPP(fun(hoare_1656922687triple(X_b),bool),bool,hAPP(fun(hoare_1656922687triple(X_b),bool),fun(fun(hoare_1656922687triple(X_b),bool),bool),hoare_279057269derivs(X_b),Ga),Ts)) )
     <= hBOOL(hAPP(fun(hoare_1656922687triple(X_b),bool),bool,hAPP(fun(hoare_1656922687triple(X_b),bool),fun(fun(hoare_1656922687triple(X_b),bool),bool),hoare_279057269derivs(X_b),Ga),Ts_1)) ) ).

fof(arity_Nat_Onat___Orderings_Olinorder,axiom,
    linorder(nat) ).

fof(fact_308_xt1_I4_J,axiom,
    ! [X_a] :
      ( order(X_a)
     => ! [C_1,B_1,A_2] :
          ( ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),C_1),A_2))
           <= ti(X_a,B_1) = ti(X_a,C_1) )
         <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),B_1),A_2)) ) ) ).

fof(arity_Nat_Onat___Orderings_Oord,axiom,
    ord(nat) ).

fof(fact_491_Diff__Un,axiom,
    ! [X_b,A_1,B,C] : hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),minus_minus(fun(X_b,bool)),A_1),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_sup_sup(fun(X_b,bool)),B),C)) = hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_inf_inf(fun(X_b,bool)),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),minus_minus(fun(X_b,bool)),A_1),B)),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),minus_minus(fun(X_b,bool)),A_1),C)) ).

fof(fact_176_insert__Diff,axiom,
    ! [X_b,A_3,A_1] :
      ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),A_3),A_1))
     => hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),A_3),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),minus_minus(fun(X_b,bool)),A_1),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),A_3),bot_bot(fun(X_b,bool))))) = ti(fun(X_b,bool),A_1) ) ).

fof(fact_92_com_Osimps_I35_J,axiom,
    ! [Com1,Com2,Loc_2,Fun_1,Com_1] : hAPP(com,com,hAPP(com,fun(com,com),semi,Com1),Com2) != hAPP(com,com,hAPP(fun(state,nat),fun(com,com),hAPP(loc_1,fun(fun(state,nat),fun(com,com)),local,Loc_2),Fun_1),Com_1) ).

fof(fact_28_insert__iff,axiom,
    ! [X_b,A_3,Ba,A_1] :
      ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),A_3),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),Ba),A_1)))
    <=> ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),A_3),A_1))
        | ti(X_b,Ba) = ti(X_b,A_3) ) ) ).

fof(fact_414_inf1E,axiom,
    ! [X_b,A_1,B,X_1] :
      ( ~ ( ~ hBOOL(hAPP(X_b,bool,B,X_1))
         <= hBOOL(hAPP(X_b,bool,A_1,X_1)) )
     <= hBOOL(hAPP(X_b,bool,hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_inf_inf(fun(X_b,bool)),A_1),B),X_1)) ) ).

fof(fact_156_vname_Oexhaust,axiom,
    ! [Y] :
      ( ~ ! [Loc] : ti(vname,Y) != hAPP(loc_1,vname,loc,Loc)
     <= ! [Glb] : hAPP(glb_1,vname,glb,Glb) != ti(vname,Y) ) ).

fof(fact_342_Un__def,axiom,
    ! [X_b,A_1,B] : hAPP(fun(X_b,bool),fun(X_b,bool),collect(X_b),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,fun(bool,bool)),fun(fun(X_b,bool),fun(X_b,bool)),combs(X_b,bool,bool),hAPP(fun(X_b,bool),fun(X_b,fun(bool,bool)),hAPP(fun(bool,fun(bool,bool)),fun(fun(X_b,bool),fun(X_b,fun(bool,bool))),combb(bool,fun(bool,bool),X_b),fdisj),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,fun(fun(X_b,bool),bool)),fun(fun(X_b,bool),fun(X_b,bool)),combc(X_b,fun(X_b,bool),bool),member(X_b)),A_1))),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,fun(fun(X_b,bool),bool)),fun(fun(X_b,bool),fun(X_b,bool)),combc(X_b,fun(X_b,bool),bool),member(X_b)),B))) = hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_sup_sup(fun(X_b,bool)),A_1),B) ).

fof(fact_116_evalc__elim__cases_I2_J,axiom,
    ! [X_3,A_3,S_4,T_5] :
      ( T_5 = hAPP(nat,state,hAPP(vname,fun(nat,state),hAPP(state,fun(vname,fun(nat,state)),update,S_4),X_3),hAPP(state,nat,A_3,S_4))
     <= hBOOL(hAPP(state,bool,hAPP(state,fun(state,bool),hAPP(com,fun(state,fun(state,bool)),evalc,hAPP(fun(state,nat),com,hAPP(vname,fun(fun(state,nat),com),ass,X_3),A_3)),S_4),T_5)) ) ).

fof(fact_110_evalc_OSemi,axiom,
    ! [C1,S2,C0,S0,S1] :
      ( ( hBOOL(hAPP(state,bool,hAPP(state,fun(state,bool),hAPP(com,fun(state,fun(state,bool)),evalc,hAPP(com,com,hAPP(com,fun(com,com),semi,C0),C1)),S0),S2))
       <= hBOOL(hAPP(state,bool,hAPP(state,fun(state,bool),hAPP(com,fun(state,fun(state,bool)),evalc,C1),S1),S2)) )
     <= hBOOL(hAPP(state,bool,hAPP(state,fun(state,bool),hAPP(com,fun(state,fun(state,bool)),evalc,C0),S0),S1)) ) ).

fof(arity_Nat_Onat___Groups_Ominus,axiom,
    minus(nat) ).

fof(fact_351_pred__subset__eq,axiom,
    ! [X_b,R_1,S] :
      ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),ord_less_eq(fun(X_b,bool)),R_1),S))
    <=> hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),ord_less_eq(fun(X_b,bool)),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,fun(fun(X_b,bool),bool)),fun(fun(X_b,bool),fun(X_b,bool)),combc(X_b,fun(X_b,bool),bool),member(X_b)),R_1)),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,fun(fun(X_b,bool),bool)),fun(fun(X_b,bool),fun(X_b,bool)),combc(X_b,fun(X_b,bool),bool),member(X_b)),S))) ) ).

fof(help_fNot_1_1_U,axiom,
    ! [P] :
      ( ~ hBOOL(P)
      | ~ hBOOL(hAPP(bool,bool,fNot,P)) ) ).

fof(arity_fun___Groups_Ominus,axiom,
    ! [T_2,T_1] :
      ( minus(fun(T_2,T_1))
     <= minus(T_1) ) ).

fof(fact_201_comp__fun__idem_Ofun__left__idem,axiom,
    ! [X_b,X_c,X_1,Z_1,F] :
      ( hBOOL(hAPP(fun(X_b,fun(X_c,X_c)),bool,finite_comp_fun_idem(X_b,X_c),F))
     => hAPP(X_c,X_c,hAPP(X_b,fun(X_c,X_c),F,X_1),hAPP(X_c,X_c,hAPP(X_b,fun(X_c,X_c),F,X_1),Z_1)) = hAPP(X_c,X_c,hAPP(X_b,fun(X_c,X_c),F,X_1),Z_1) ) ).

fof(fact_290_sup__ge2,axiom,
    ! [X_a] :
      ( ! [Y,X] : hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),Y),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),X),Y)))
     <= semilattice_sup(X_a) ) ).

fof(tsy_c_Hoare__Mirabelle__nrugjuseim_Otriple_Otriple__rec_res,axiom,
    ! [X_c,X_b] : hoare_1632998903le_rec(X_c,X_b) = ti(fun(fun(fun(X_c,fun(state,bool)),fun(com,fun(fun(X_c,fun(state,bool)),X_b))),fun(hoare_1656922687triple(X_c),X_b)),hoare_1632998903le_rec(X_c,X_b)) ).

fof(fact_145_finite__insert,axiom,
    ! [X_b,A_3,A_1] :
      ( hBOOL(hAPP(fun(X_b,bool),bool,finite_finite_1(X_b),A_1))
    <=> hBOOL(hAPP(fun(X_b,bool),bool,finite_finite_1(X_b),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),A_3),A_1))) ) ).

fof(fact_436_Int__lower2,axiom,
    ! [X_b,A_1,B] : hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),ord_less_eq(fun(X_b,bool)),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_inf_inf(fun(X_b,bool)),A_1),B)),B)) ).

fof(fact_426_le__inf__iff,axiom,
    ! [X_b] :
      ( semilattice_inf(X_b)
     => ! [X_1,Y_1,Z_1] :
          ( hBOOL(hAPP(X_b,bool,hAPP(X_b,fun(X_b,bool),ord_less_eq(X_b),X_1),hAPP(X_b,X_b,hAPP(X_b,fun(X_b,X_b),semilattice_inf_inf(X_b),Y_1),Z_1)))
        <=> ( hBOOL(hAPP(X_b,bool,hAPP(X_b,fun(X_b,bool),ord_less_eq(X_b),X_1),Z_1))
            & hBOOL(hAPP(X_b,bool,hAPP(X_b,fun(X_b,bool),ord_less_eq(X_b),X_1),Y_1)) ) ) ) ).

fof(fact_372_subset__insert__iff,axiom,
    ! [X_b,A_1,X_1,B] :
      ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),ord_less_eq(fun(X_b,bool)),A_1),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),X_1),B)))
    <=> ( ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),X_1),A_1))
         => hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),ord_less_eq(fun(X_b,bool)),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),minus_minus(fun(X_b,bool)),A_1),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),X_1),bot_bot(fun(X_b,bool))))),B)) )
        & ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),ord_less_eq(fun(X_b,bool)),A_1),B))
         <= ~ hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),X_1),A_1)) ) ) ) ).

fof(fact_386_finite__nat__set__iff__bounded__le,axiom,
    ! [N] :
      ( hBOOL(hAPP(fun(nat,bool),bool,finite_finite_1(nat),N))
    <=> ? [M] :
        ! [X_2] :
          ( hBOOL(hAPP(fun(nat,bool),bool,hAPP(nat,fun(fun(nat,bool),bool),member(nat),X_2),N))
         => hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),X_2),M)) ) ) ).

fof(fact_417_finite__Int,axiom,
    ! [X_b,Ga,F_1] :
      ( hBOOL(hAPP(fun(X_b,bool),bool,finite_finite_1(X_b),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_inf_inf(fun(X_b,bool)),F_1),Ga)))
     <= ( hBOOL(hAPP(fun(X_b,bool),bool,finite_finite_1(X_b),Ga))
        | hBOOL(hAPP(fun(X_b,bool),bool,finite_finite_1(X_b),F_1)) ) ) ).

fof(tsy_c_COMBI_res,axiom,
    ! [X_a] : ti(fun(X_a,X_a),combi(X_a)) = combi(X_a) ).

fof(fact_207_fold__graph__insert__swap,axiom,
    ! [X_b] :
      ( ! [Z_1,Ba,A_1,Y_1] :
          ( hBOOL(hAPP(X_b,bool,hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),hAPP(fun(X_b,fun(X_b,X_b)),fun(X_b,fun(fun(X_b,bool),fun(X_b,bool))),finite_fold_graph(X_b,X_b),times_times(X_b)),Ba),A_1),Y_1))
         => ( hBOOL(hAPP(X_b,bool,hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),hAPP(fun(X_b,fun(X_b,X_b)),fun(X_b,fun(fun(X_b,bool),fun(X_b,bool))),finite_fold_graph(X_b,X_b),times_times(X_b)),Z_1),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),Ba),A_1)),hAPP(X_b,X_b,hAPP(X_b,fun(X_b,X_b),times_times(X_b),Z_1),Y_1)))
           <= ~ hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),Ba),A_1)) ) )
     <= ab_semigroup_mult(X_b) ) ).

fof(fact_2_cut,axiom,
    ! [X_b,Ga,G_1,Ts] :
      ( hBOOL(hAPP(fun(hoare_1656922687triple(X_b),bool),bool,hAPP(fun(hoare_1656922687triple(X_b),bool),fun(fun(hoare_1656922687triple(X_b),bool),bool),hoare_279057269derivs(X_b),G_1),Ts))
     => ( hBOOL(hAPP(fun(hoare_1656922687triple(X_b),bool),bool,hAPP(fun(hoare_1656922687triple(X_b),bool),fun(fun(hoare_1656922687triple(X_b),bool),bool),hoare_279057269derivs(X_b),Ga),G_1))
       => hBOOL(hAPP(fun(hoare_1656922687triple(X_b),bool),bool,hAPP(fun(hoare_1656922687triple(X_b),bool),fun(fun(hoare_1656922687triple(X_b),bool),bool),hoare_279057269derivs(X_b),Ga),Ts)) ) ) ).

fof(tsy_v_b_res,hypothesis,
    b = ti(fun(state,bool),b) ).

fof(fact_322_Un__least,axiom,
    ! [X_b,B,A_1,C] :
      ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),ord_less_eq(fun(X_b,bool)),A_1),C))
     => ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),ord_less_eq(fun(X_b,bool)),B),C))
       => hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),ord_less_eq(fun(X_b,bool)),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_sup_sup(fun(X_b,bool)),A_1),B)),C)) ) ) ).

fof(fact_53_com_Osimps_I12_J,axiom,
    ! [Com1_2,Com2_2] : skip != hAPP(com,com,hAPP(com,fun(com,com),semi,Com1_2),Com2_2) ).

fof(fact_213_fold__empty,axiom,
    ! [X_c,X_b,F,Z_1] : ti(X_b,Z_1) = hAPP(fun(X_c,bool),X_b,hAPP(X_b,fun(fun(X_c,bool),X_b),hAPP(fun(X_c,fun(X_b,X_b)),fun(X_b,fun(fun(X_c,bool),X_b)),finite_fold(X_c,X_b),F),Z_1),bot_bot(fun(X_c,bool))) ).

fof(tsy_c_Groups_Ominus__class_Ominus_res,axiom,
    ! [X_c] :
      ( minus_minus(X_c) = ti(fun(X_c,fun(X_c,X_c)),minus_minus(X_c))
     <= minus(X_c) ) ).

fof(fact_243_empty__subsetI,axiom,
    ! [X_b,A_1] : hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),ord_less_eq(fun(X_b,bool)),bot_bot(fun(X_b,bool))),A_1)) ).

fof(fact_190_folding__image__simple_Oempty,axiom,
    ! [X_c,X_b,F,Z_1,G,F_1] :
      ( hAPP(fun(X_c,bool),X_b,F_1,bot_bot(fun(X_c,bool))) = ti(X_b,Z_1)
     <= hBOOL(hAPP(fun(fun(X_c,bool),X_b),bool,hAPP(fun(X_c,X_b),fun(fun(fun(X_c,bool),X_b),bool),hAPP(X_b,fun(fun(X_c,X_b),fun(fun(fun(X_c,bool),X_b),bool)),hAPP(fun(X_b,fun(X_b,X_b)),fun(X_b,fun(fun(X_c,X_b),fun(fun(fun(X_c,bool),X_b),bool))),finite1357897459simple(X_b,X_c),F),Z_1),G),F_1)) ) ).

fof(fact_454_Collect__conj__eq,axiom,
    ! [X_b,Pa,Q_1] : hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_inf_inf(fun(X_b,bool)),hAPP(fun(X_b,bool),fun(X_b,bool),collect(X_b),Pa)),hAPP(fun(X_b,bool),fun(X_b,bool),collect(X_b),Q_1)) = hAPP(fun(X_b,bool),fun(X_b,bool),collect(X_b),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,fun(bool,bool)),fun(fun(X_b,bool),fun(X_b,bool)),combs(X_b,bool,bool),hAPP(fun(X_b,bool),fun(X_b,fun(bool,bool)),hAPP(fun(bool,fun(bool,bool)),fun(fun(X_b,bool),fun(X_b,fun(bool,bool))),combb(bool,fun(bool,bool),X_b),fconj),Pa)),Q_1)) ).

fof(fact_178_insert__Diff__single,axiom,
    ! [X_b,A_3,A_1] : hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),A_3),A_1) = hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),A_3),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),minus_minus(fun(X_b,bool)),A_1),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),A_3),bot_bot(fun(X_b,bool))))) ).

fof(fact_235_folding__one__idem_Osubset__idem,axiom,
    ! [X_b,B,A_1,F,F_1] :
      ( hBOOL(hAPP(fun(fun(X_b,bool),X_b),bool,hAPP(fun(X_b,fun(X_b,X_b)),fun(fun(fun(X_b,bool),X_b),bool),finite2073411215e_idem(X_b),F),F_1))
     => ( ( ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),ord_less_eq(fun(X_b,bool)),B),A_1))
           => hAPP(X_b,X_b,hAPP(X_b,fun(X_b,X_b),F,hAPP(fun(X_b,bool),X_b,F_1,B)),hAPP(fun(X_b,bool),X_b,F_1,A_1)) = hAPP(fun(X_b,bool),X_b,F_1,A_1) )
         <= ti(fun(X_b,bool),B) != bot_bot(fun(X_b,bool)) )
       <= hBOOL(hAPP(fun(X_b,bool),bool,finite_finite_1(X_b),A_1)) ) ) ).

fof(fact_293_inf__sup__ord_I3_J,axiom,
    ! [X_a] :
      ( lattice(X_a)
     => ! [X,Y] : hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),X),Y))) ) ).

fof(fact_95_com_Osimps_I11_J,axiom,
    ! [Loc_3,Fun,Com] : hAPP(com,com,hAPP(fun(state,nat),fun(com,com),hAPP(loc_1,fun(fun(state,nat),fun(com,com)),local,Loc_3),Fun),Com) != skip ).

fof(fact_165_DiffD1,axiom,
    ! [X_b,Ca,A_1,B] :
      ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),Ca),A_1))
     <= hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),Ca),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),minus_minus(fun(X_b,bool)),A_1),B))) ) ).

fof(fact_124_evaln__elim__cases_I3_J,axiom,
    ! [Y_4,A_3,Ca,S_4,N_3,T_5] :
      ( ~ ! [S1_1] :
            ( T_5 = hAPP(nat,state,hAPP(vname,fun(nat,state),hAPP(state,fun(vname,fun(nat,state)),update,S1_1),hAPP(loc_1,vname,loc,Y_4)),hAPP(loc_1,nat,hAPP(state,fun(loc_1,nat),getlocs,S_4),Y_4))
           => ~ hBOOL(hAPP(state,bool,hAPP(nat,fun(state,bool),hAPP(state,fun(nat,fun(state,bool)),hAPP(com,fun(state,fun(nat,fun(state,bool))),evaln,Ca),hAPP(nat,state,hAPP(vname,fun(nat,state),hAPP(state,fun(vname,fun(nat,state)),update,S_4),hAPP(loc_1,vname,loc,Y_4)),hAPP(state,nat,A_3,S_4))),N_3),S1_1)) )
     <= hBOOL(hAPP(state,bool,hAPP(nat,fun(state,bool),hAPP(state,fun(nat,fun(state,bool)),hAPP(com,fun(state,fun(nat,fun(state,bool))),evaln,hAPP(com,com,hAPP(fun(state,nat),fun(com,com),hAPP(loc_1,fun(fun(state,nat),fun(com,com)),local,Y_4),A_3),Ca)),S_4),N_3),T_5)) ) ).

fof(fact_143_finite__code,axiom,
    ! [X_b] :
      ( ! [A_1] : hBOOL(hAPP(fun(X_b,bool),bool,finite_finite_1(X_b),A_1))
     <= finite_finite(X_b) ) ).

fof(fact_406_Sup__fin_Oeq__fold__idem_H,axiom,
    ! [X_b] :
      ( ! [A_3,A_1] :
          ( hAPP(fun(X_b,bool),X_b,hAPP(X_b,fun(fun(X_b,bool),X_b),hAPP(fun(X_b,fun(X_b,X_b)),fun(X_b,fun(fun(X_b,bool),X_b)),finite_fold(X_b,X_b),semilattice_sup_sup(X_b)),A_3),A_1) = hAPP(fun(X_b,bool),X_b,big_lattice_Sup_fin(X_b),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),A_3),A_1))
         <= hBOOL(hAPP(fun(X_b,bool),bool,finite_finite_1(X_b),A_1)) )
     <= lattice(X_b) ) ).

fof(help_fconj_3_1_U,axiom,
    ! [P,Q] :
      ( hBOOL(Q)
      | ~ hBOOL(hAPP(bool,bool,hAPP(bool,fun(bool,bool),fconj,P),Q)) ) ).

fof(fact_471_inf__idem,axiom,
    ! [X_a] :
      ( ! [X] : ti(X_a,X) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),X),X)
     <= semilattice_inf(X_a) ) ).

fof(tsy_c_Hoare__Mirabelle__nrugjuseim_OMGT_res,axiom,
    ti(fun(com,hoare_1656922687triple(state)),hoare_Mirabelle_MGT) = hoare_Mirabelle_MGT ).

fof(tsy_c_Finite__Set_Ofolding__one__idem_res,axiom,
    ! [X_b] : ti(fun(fun(X_b,fun(X_b,X_b)),fun(fun(fun(X_b,bool),X_b),bool)),finite2073411215e_idem(X_b)) = finite2073411215e_idem(X_b) ).

fof(fact_202_comp__fun__commute,axiom,
    ! [X_b] :
      ( hBOOL(hAPP(fun(X_b,fun(X_b,X_b)),bool,finite100568337ommute(X_b,X_b),times_times(X_b)))
     <= ab_semigroup_mult(X_b) ) ).

fof(tsy_c_Finite__Set_Ofold_res,axiom,
    ! [X_b,X_c] : ti(fun(fun(X_b,fun(X_c,X_c)),fun(X_c,fun(fun(X_b,bool),X_c))),finite_fold(X_b,X_c)) = finite_fold(X_b,X_c) ).

fof(arity_fun___Orderings_Oord,axiom,
    ! [T_2,T_1] :
      ( ord(T_1)
     => ord(fun(T_2,T_1)) ) ).

fof(fact_394_fold__image__eq__general__inverses,axiom,
    ! [X_c,X_b,X_d] :
      ( ! [E,G,F,H,K,T_3,S] :
          ( ( ! [Y_2] :
                ( ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),hAPP(X_c,X_b,K,Y_2)),S))
                  & ti(X_c,Y_2) = hAPP(X_b,X_c,H,hAPP(X_c,X_b,K,Y_2)) )
               <= hBOOL(hAPP(fun(X_c,bool),bool,hAPP(X_c,fun(fun(X_c,bool),bool),member(X_c),Y_2),T_3)) )
           => ( hAPP(fun(X_b,bool),X_d,hAPP(X_d,fun(fun(X_b,bool),X_d),hAPP(fun(X_b,X_d),fun(X_d,fun(fun(X_b,bool),X_d)),hAPP(fun(X_d,fun(X_d,X_d)),fun(fun(X_b,X_d),fun(X_d,fun(fun(X_b,bool),X_d))),finite_fold_image(X_d,X_b),times_times(X_d)),F),E),S) = hAPP(fun(X_c,bool),X_d,hAPP(X_d,fun(fun(X_c,bool),X_d),hAPP(fun(X_c,X_d),fun(X_d,fun(fun(X_c,bool),X_d)),hAPP(fun(X_d,fun(X_d,X_d)),fun(fun(X_c,X_d),fun(X_d,fun(fun(X_c,bool),X_d))),finite_fold_image(X_d,X_c),times_times(X_d)),G),E),T_3)
             <= ! [X_2] :
                  ( ( hBOOL(hAPP(fun(X_c,bool),bool,hAPP(X_c,fun(fun(X_c,bool),bool),member(X_c),hAPP(X_b,X_c,H,X_2)),T_3))
                    & ti(X_b,X_2) = hAPP(X_c,X_b,K,hAPP(X_b,X_c,H,X_2))
                    & hAPP(X_b,X_d,F,X_2) = hAPP(X_c,X_d,G,hAPP(X_b,X_c,H,X_2)) )
                 <= hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),X_2),S)) ) ) )
         <= hBOOL(hAPP(fun(X_b,bool),bool,finite_finite_1(X_b),S)) )
     <= comm_monoid_mult(X_d) ) ).

fof(tsy_c_Finite__Set_Ofolding__one_res,axiom,
    ! [X_b] : ti(fun(fun(X_b,fun(X_b,X_b)),fun(fun(fun(X_b,bool),X_b),bool)),finite_folding_one(X_b)) = finite_folding_one(X_b) ).

fof(fact_182_folding__one__idem_Oin__idem,axiom,
    ! [X_b,X_1,A_1,F,F_1] :
      ( hBOOL(hAPP(fun(fun(X_b,bool),X_b),bool,hAPP(fun(X_b,fun(X_b,X_b)),fun(fun(fun(X_b,bool),X_b),bool),finite2073411215e_idem(X_b),F),F_1))
     => ( ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),X_1),A_1))
         => hAPP(X_b,X_b,hAPP(X_b,fun(X_b,X_b),F,X_1),hAPP(fun(X_b,bool),X_b,F_1,A_1)) = hAPP(fun(X_b,bool),X_b,F_1,A_1) )
       <= hBOOL(hAPP(fun(X_b,bool),bool,finite_finite_1(X_b),A_1)) ) ) ).

fof(fact_335_Un__assoc,axiom,
    ! [X_b,A_1,B,C] : hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_sup_sup(fun(X_b,bool)),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_sup_sup(fun(X_b,bool)),A_1),B)),C) = hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_sup_sup(fun(X_b,bool)),A_1),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_sup_sup(fun(X_b,bool)),B),C)) ).

fof(fact_393_finite__less__ub,axiom,
    ! [U,F] :
      ( ! [N_1] : hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),N_1),hAPP(nat,nat,F,N_1)))
     => hBOOL(hAPP(fun(nat,bool),bool,finite_finite_1(nat),hAPP(fun(nat,bool),fun(nat,bool),collect(nat),hAPP(nat,fun(nat,bool),hAPP(fun(nat,fun(nat,bool)),fun(nat,fun(nat,bool)),combc(nat,nat,bool),hAPP(fun(nat,nat),fun(nat,fun(nat,bool)),hAPP(fun(nat,fun(nat,bool)),fun(fun(nat,nat),fun(nat,fun(nat,bool))),combb(nat,fun(nat,bool),nat),ord_less_eq(nat)),F)),U)))) ) ).

fof(tsy_c_COMBK_res,axiom,
    ! [X_a,X_b] : ti(fun(X_a,fun(X_b,X_a)),combk(X_a,X_b)) = combk(X_a,X_b) ).

fof(fact_30_insert__absorb2,axiom,
    ! [X_b,X_1,A_1] : hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),X_1),A_1) = hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),X_1),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),X_1),A_1)) ).

fof(tsy_c_Big__Operators_Ocomm__monoid__big_res,axiom,
    ! [X_b,X_c] : big_comm_monoid_big(X_b,X_c) = ti(fun(fun(X_b,fun(X_b,X_b)),fun(X_b,fun(fun(fun(X_c,X_b),fun(fun(X_c,bool),X_b)),bool))),big_comm_monoid_big(X_b,X_c)) ).

fof(fact_94_com_Osimps_I22_J,axiom,
    ! [Vname,Fun_1,Loc_3,Fun,Com] : hAPP(com,com,hAPP(fun(state,nat),fun(com,com),hAPP(loc_1,fun(fun(state,nat),fun(com,com)),local,Loc_3),Fun),Com) != hAPP(fun(state,nat),com,hAPP(vname,fun(fun(state,nat),com),ass,Vname),Fun_1) ).

fof(fact_286_sup_Ocommute,axiom,
    ! [X_a] :
      ( ! [A_2,B_1] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),A_2),B_1) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),B_1),A_2)
     <= semilattice_sup(X_a) ) ).

fof(fact_378_evaln__nonstrict,axiom,
    ! [M_1,C_1,S_1,N_2,T_4] :
      ( hBOOL(hAPP(state,bool,hAPP(nat,fun(state,bool),hAPP(state,fun(nat,fun(state,bool)),hAPP(com,fun(state,fun(nat,fun(state,bool))),evaln,C_1),S_1),N_2),T_4))
     => ( hBOOL(hAPP(state,bool,hAPP(nat,fun(state,bool),hAPP(state,fun(nat,fun(state,bool)),hAPP(com,fun(state,fun(nat,fun(state,bool))),evaln,C_1),S_1),M_1),T_4))
       <= hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),N_2),M_1)) ) ) ).

fof(fact_80_imageE,axiom,
    ! [X_b,X_c,Ba,F,A_1] :
      ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),Ba),hAPP(fun(X_c,bool),fun(X_b,bool),hAPP(fun(X_c,X_b),fun(fun(X_c,bool),fun(X_b,bool)),image(X_c,X_b),F),A_1)))
     => ~ ! [X_2] :
            ( ti(X_b,Ba) = hAPP(X_c,X_b,F,X_2)
           => ~ hBOOL(hAPP(fun(X_c,bool),bool,hAPP(X_c,fun(fun(X_c,bool),bool),member(X_c),X_2),A_1)) ) ) ).

fof(fact_318_Collect__disj__eq,axiom,
    ! [X_b,Pa,Q_1] : hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_sup_sup(fun(X_b,bool)),hAPP(fun(X_b,bool),fun(X_b,bool),collect(X_b),Pa)),hAPP(fun(X_b,bool),fun(X_b,bool),collect(X_b),Q_1)) = hAPP(fun(X_b,bool),fun(X_b,bool),collect(X_b),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,fun(bool,bool)),fun(fun(X_b,bool),fun(X_b,bool)),combs(X_b,bool,bool),hAPP(fun(X_b,bool),fun(X_b,fun(bool,bool)),hAPP(fun(bool,fun(bool,bool)),fun(fun(X_b,bool),fun(X_b,fun(bool,bool))),combb(bool,fun(bool,bool),X_b),fdisj),Pa)),Q_1)) ).

fof(fact_397_Sup__fin_Oremove,axiom,
    ! [X_b] :
      ( lattice(X_b)
     => ! [X_1,A_1] :
          ( hBOOL(hAPP(fun(X_b,bool),bool,finite_finite_1(X_b),A_1))
         => ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),X_1),A_1))
           => ( ( ti(X_b,X_1) = hAPP(fun(X_b,bool),X_b,big_lattice_Sup_fin(X_b),A_1)
               <= hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),minus_minus(fun(X_b,bool)),A_1),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),X_1),bot_bot(fun(X_b,bool)))) = bot_bot(fun(X_b,bool)) )
              & ( hAPP(X_b,X_b,hAPP(X_b,fun(X_b,X_b),semilattice_sup_sup(X_b),X_1),hAPP(fun(X_b,bool),X_b,big_lattice_Sup_fin(X_b),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),minus_minus(fun(X_b,bool)),A_1),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),X_1),bot_bot(fun(X_b,bool)))))) = hAPP(fun(X_b,bool),X_b,big_lattice_Sup_fin(X_b),A_1)
               <= bot_bot(fun(X_b,bool)) != hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),minus_minus(fun(X_b,bool)),A_1),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),X_1),bot_bot(fun(X_b,bool)))) ) ) ) ) ) ).

fof(fact_449_Int__insert__left,axiom,
    ! [X_b,B,A_3,C] :
      ( ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),A_3),C))
       => hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),A_3),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_inf_inf(fun(X_b,bool)),B),C)) = hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_inf_inf(fun(X_b,bool)),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),A_3),B)),C) )
      & ( hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_inf_inf(fun(X_b,bool)),B),C) = hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_inf_inf(fun(X_b,bool)),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),A_3),B)),C)
       <= ~ hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),A_3),C)) ) ) ).

fof(fact_343_Un__absorb,axiom,
    ! [X_b,A_1] : hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_sup_sup(fun(X_b,bool)),A_1),A_1) = ti(fun(X_b,bool),A_1) ).

fof(fact_242_sup1E,axiom,
    ! [X_b,A_1,B,X_1] :
      ( hBOOL(hAPP(X_b,bool,hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_sup_sup(fun(X_b,bool)),A_1),B),X_1))
     => ( ~ hBOOL(hAPP(X_b,bool,A_1,X_1))
       => hBOOL(hAPP(X_b,bool,B,X_1)) ) ) ).

fof(fact_362_insert__def,axiom,
    ! [X_b,A_3,B] : hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),A_3),B) = hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_sup_sup(fun(X_b,bool)),hAPP(fun(X_b,bool),fun(X_b,bool),collect(X_b),hAPP(X_b,fun(X_b,bool),hAPP(fun(X_b,fun(X_b,bool)),fun(X_b,fun(X_b,bool)),combc(X_b,X_b,bool),fequal(X_b)),A_3))),B) ).

fof(fact_377_finite__subset__image,axiom,
    ! [X_c,X_b,F,A_1,B] :
      ( hBOOL(hAPP(fun(X_b,bool),bool,finite_finite_1(X_b),B))
     => ( ? [C_2] :
            ( hBOOL(hAPP(fun(X_c,bool),bool,hAPP(fun(X_c,bool),fun(fun(X_c,bool),bool),ord_less_eq(fun(X_c,bool)),C_2),A_1))
            & hBOOL(hAPP(fun(X_c,bool),bool,finite_finite_1(X_c),C_2))
            & ti(fun(X_b,bool),B) = hAPP(fun(X_c,bool),fun(X_b,bool),hAPP(fun(X_c,X_b),fun(fun(X_c,bool),fun(X_b,bool)),image(X_c,X_b),F),C_2) )
       <= hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),ord_less_eq(fun(X_b,bool)),B),hAPP(fun(X_c,bool),fun(X_b,bool),hAPP(fun(X_c,X_b),fun(fun(X_c,bool),fun(X_b,bool)),image(X_c,X_b),F),A_1))) ) ) ).

fof(fact_281_inf__sup__aci_I8_J,axiom,
    ! [X_a] :
      ( ! [X,Y] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),X),Y) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),X),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),X),Y))
     <= lattice(X_a) ) ).

fof(fact_187_folding__image__simple_Oinsert__remove,axiom,
    ! [X_c,X_b,X_1,A_1,F,Z_1,G,F_1] :
      ( ( hAPP(X_b,X_b,hAPP(X_b,fun(X_b,X_b),F,hAPP(X_c,X_b,G,X_1)),hAPP(fun(X_c,bool),X_b,F_1,hAPP(fun(X_c,bool),fun(X_c,bool),hAPP(fun(X_c,bool),fun(fun(X_c,bool),fun(X_c,bool)),minus_minus(fun(X_c,bool)),A_1),hAPP(fun(X_c,bool),fun(X_c,bool),hAPP(X_c,fun(fun(X_c,bool),fun(X_c,bool)),insert(X_c),X_1),bot_bot(fun(X_c,bool)))))) = hAPP(fun(X_c,bool),X_b,F_1,hAPP(fun(X_c,bool),fun(X_c,bool),hAPP(X_c,fun(fun(X_c,bool),fun(X_c,bool)),insert(X_c),X_1),A_1))
       <= hBOOL(hAPP(fun(X_c,bool),bool,finite_finite_1(X_c),A_1)) )
     <= hBOOL(hAPP(fun(fun(X_c,bool),X_b),bool,hAPP(fun(X_c,X_b),fun(fun(fun(X_c,bool),X_b),bool),hAPP(X_b,fun(fun(X_c,X_b),fun(fun(fun(X_c,bool),X_b),bool)),hAPP(fun(X_b,fun(X_b,X_b)),fun(X_b,fun(fun(X_c,X_b),fun(fun(fun(X_c,bool),X_b),bool))),finite1357897459simple(X_b,X_c),F),Z_1),G),F_1)) ) ).

fof(fact_37_doubleton__eq__iff,axiom,
    ! [X_b,A_3,Ba,Ca,D_2] :
      ( hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),Ca),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),D_2),bot_bot(fun(X_b,bool)))) = hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),A_3),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),Ba),bot_bot(fun(X_b,bool))))
    <=> ( ( ti(X_b,A_3) = ti(X_b,D_2)
          & ti(X_b,Ba) = ti(X_b,Ca) )
        | ( ti(X_b,D_2) = ti(X_b,Ba)
          & ti(X_b,Ca) = ti(X_b,A_3) ) ) ) ).

fof(fact_270_le__supI2,axiom,
    ! [X_a] :
      ( semilattice_sup(X_a)
     => ! [A_2,X,B_1] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X),B_1))
         => hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),A_2),B_1))) ) ) ).

fof(fact_67_image__iff,axiom,
    ! [X_b,X_c,Z_1,F,A_1] :
      ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),Z_1),hAPP(fun(X_c,bool),fun(X_b,bool),hAPP(fun(X_c,X_b),fun(fun(X_c,bool),fun(X_b,bool)),image(X_c,X_b),F),A_1)))
    <=> ? [X_2] :
          ( hBOOL(hAPP(fun(X_c,bool),bool,hAPP(X_c,fun(fun(X_c,bool),bool),member(X_c),X_2),A_1))
          & ti(X_b,Z_1) = hAPP(X_c,X_b,F,X_2) ) ) ).

fof(fact_463_IntD1,axiom,
    ! [X_b,Ca,A_1,B] :
      ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),Ca),A_1))
     <= hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),Ca),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_inf_inf(fun(X_b,bool)),A_1),B))) ) ).

fof(fact_17_equals0D,axiom,
    ! [X_b,A_3,A_1] :
      ( bot_bot(fun(X_b,bool)) = ti(fun(X_b,bool),A_1)
     => ~ hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),A_3),A_1)) ) ).

fof(fact_389_fold__image__empty,axiom,
    ! [X_c,X_b,F,G,Z_1] : ti(X_b,Z_1) = hAPP(fun(X_c,bool),X_b,hAPP(X_b,fun(fun(X_c,bool),X_b),hAPP(fun(X_c,X_b),fun(X_b,fun(fun(X_c,bool),X_b)),hAPP(fun(X_b,fun(X_b,X_b)),fun(fun(X_c,X_b),fun(X_b,fun(fun(X_c,bool),X_b))),finite_fold_image(X_b,X_c),F),G),Z_1),bot_bot(fun(X_c,bool))) ).

fof(fact_446_Int__insert__left__if0,axiom,
    ! [X_b,B,A_3,C] :
      ( hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_inf_inf(fun(X_b,bool)),B),C) = hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_inf_inf(fun(X_b,bool)),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),A_3),B)),C)
     <= ~ hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),A_3),C)) ) ).

fof(fact_339_set__eq__subset,axiom,
    ! [X_b,A_1,B] :
      ( ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),ord_less_eq(fun(X_b,bool)),B),A_1))
        & hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),ord_less_eq(fun(X_b,bool)),A_1),B)) )
    <=> ti(fun(X_b,bool),A_1) = ti(fun(X_b,bool),B) ) ).

fof(help_fconj_1_1_U,axiom,
    ! [Q,P] :
      ( ~ hBOOL(Q)
      | hBOOL(hAPP(bool,bool,hAPP(bool,fun(bool,bool),fconj,P),Q))
      | ~ hBOOL(P) ) ).

fof(tsy_c_Com_Ovname_Ovname__case_res,axiom,
    ! [X_b] : vname_case(X_b) = ti(fun(fun(glb_1,X_b),fun(fun(loc_1,X_b),fun(vname,X_b))),vname_case(X_b)) ).

fof(fact_253_insert__subset,axiom,
    ! [X_b,X_1,A_1,B] :
      ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),ord_less_eq(fun(X_b,bool)),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),X_1),A_1)),B))
    <=> ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),ord_less_eq(fun(X_b,bool)),A_1),B))
        & hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),X_1),B)) ) ) ).

fof(fact_321_Un__mono,axiom,
    ! [X_b,B,D,A_1,C] :
      ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),ord_less_eq(fun(X_b,bool)),A_1),C))
     => ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),ord_less_eq(fun(X_b,bool)),B),D))
       => hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),ord_less_eq(fun(X_b,bool)),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_sup_sup(fun(X_b,bool)),A_1),B)),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_sup_sup(fun(X_b,bool)),C),D))) ) ) ).

fof(fact_284_sup__commute,axiom,
    ! [X_a] :
      ( semilattice_sup(X_a)
     => ! [X,Y] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),Y),X) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),X),Y) ) ).

fof(fact_91_com_Osimps_I34_J,axiom,
    ! [Loc_2,Fun_1,Com_1,Com1,Com2] : hAPP(com,com,hAPP(com,fun(com,com),semi,Com1),Com2) != hAPP(com,com,hAPP(fun(state,nat),fun(com,com),hAPP(loc_1,fun(fun(state,nat),fun(com,com)),local,Loc_2),Fun_1),Com_1) ).

fof(fact_210_comp__fun__commute_Ofold__insert__remove,axiom,
    ! [X_b,X_c,Z_1,X_1,A_1,F] :
      ( ( hAPP(fun(X_b,bool),X_c,hAPP(X_c,fun(fun(X_b,bool),X_c),hAPP(fun(X_b,fun(X_c,X_c)),fun(X_c,fun(fun(X_b,bool),X_c)),finite_fold(X_b,X_c),F),Z_1),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),X_1),A_1)) = hAPP(X_c,X_c,hAPP(X_b,fun(X_c,X_c),F,X_1),hAPP(fun(X_b,bool),X_c,hAPP(X_c,fun(fun(X_b,bool),X_c),hAPP(fun(X_b,fun(X_c,X_c)),fun(X_c,fun(fun(X_b,bool),X_c)),finite_fold(X_b,X_c),F),Z_1),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),minus_minus(fun(X_b,bool)),A_1),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),X_1),bot_bot(fun(X_b,bool))))))
       <= hBOOL(hAPP(fun(X_b,bool),bool,finite_finite_1(X_b),A_1)) )
     <= hBOOL(hAPP(fun(X_b,fun(X_c,X_c)),bool,finite100568337ommute(X_b,X_c),F)) ) ).

fof(fact_316_linorder__linear,axiom,
    ! [X_a] :
      ( ! [X,Y] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X),Y))
          | hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),Y),X)) )
     <= linorder(X_a) ) ).

fof(fact_488_Int__Diff,axiom,
    ! [X_b,A_1,B,C] : hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_inf_inf(fun(X_b,bool)),A_1),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),minus_minus(fun(X_b,bool)),B),C)) = hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),minus_minus(fun(X_b,bool)),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_inf_inf(fun(X_b,bool)),A_1),B)),C) ).

fof(fact_42_triple_Osimps_I2_J,axiom,
    ! [X_c,X_b,F1,Fun1_1,Com_1,Fun2_1] : hAPP(hoare_1656922687triple(X_c),X_b,hAPP(fun(fun(X_c,fun(state,bool)),fun(com,fun(fun(X_c,fun(state,bool)),X_b))),fun(hoare_1656922687triple(X_c),X_b),hoare_1312322281e_case(X_c,X_b),F1),hAPP(fun(X_c,fun(state,bool)),hoare_1656922687triple(X_c),hAPP(com,fun(fun(X_c,fun(state,bool)),hoare_1656922687triple(X_c)),hAPP(fun(X_c,fun(state,bool)),fun(com,fun(fun(X_c,fun(state,bool)),hoare_1656922687triple(X_c))),hoare_246368825triple(X_c),Fun1_1),Com_1),Fun2_1)) = hAPP(fun(X_c,fun(state,bool)),X_b,hAPP(com,fun(fun(X_c,fun(state,bool)),X_b),hAPP(fun(X_c,fun(state,bool)),fun(com,fun(fun(X_c,fun(state,bool)),X_b)),F1,Fun1_1),Com_1),Fun2_1) ).

fof(fact_366_subset__singletonD,axiom,
    ! [X_b,A_1,X_1] :
      ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),ord_less_eq(fun(X_b,bool)),A_1),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),X_1),bot_bot(fun(X_b,bool)))))
     => ( ti(fun(X_b,bool),A_1) = bot_bot(fun(X_b,bool))
        | hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),X_1),bot_bot(fun(X_b,bool))) = ti(fun(X_b,bool),A_1) ) ) ).

fof(tsy_c_Set_Oimage_res,axiom,
    ! [X_b,X_c] : image(X_b,X_c) = ti(fun(fun(X_b,X_c),fun(fun(X_b,bool),fun(X_c,bool))),image(X_b,X_c)) ).

fof(tsy_c_Com_Ovname_OGlb_res,axiom,
    ti(fun(glb_1,vname),glb) = glb ).

fof(fact_214_fold1__eq__fold__idem,axiom,
    ! [X_b] :
      ( ! [A_3,A_1] :
          ( hAPP(fun(X_b,bool),X_b,hAPP(X_b,fun(fun(X_b,bool),X_b),hAPP(fun(X_b,fun(X_b,X_b)),fun(X_b,fun(fun(X_b,bool),X_b)),finite_fold(X_b,X_b),times_times(X_b)),A_3),A_1) = hAPP(fun(X_b,bool),X_b,hAPP(fun(X_b,fun(X_b,X_b)),fun(fun(X_b,bool),X_b),finite_fold1(X_b),times_times(X_b)),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),A_3),A_1))
         <= hBOOL(hAPP(fun(X_b,bool),bool,finite_finite_1(X_b),A_1)) )
     <= ab_sem1668676832m_mult(X_b) ) ).

fof(fact_327_Un__absorb2,axiom,
    ! [X_b,B,A_1] :
      ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),ord_less_eq(fun(X_b,bool)),B),A_1))
     => ti(fun(X_b,bool),A_1) = hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_sup_sup(fun(X_b,bool)),A_1),B) ) ).

fof(fact_240_UnE,axiom,
    ! [X_b,Ca,A_1,B] :
      ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),Ca),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_sup_sup(fun(X_b,bool)),A_1),B)))
     => ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),Ca),B))
       <= ~ hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),Ca),A_1)) ) ) ).

fof(fact_404_Sup__fin_Osubset__idem,axiom,
    ! [X_b] :
      ( ! [B,A_1] :
          ( hBOOL(hAPP(fun(X_b,bool),bool,finite_finite_1(X_b),A_1))
         => ( ( hAPP(fun(X_b,bool),X_b,big_lattice_Sup_fin(X_b),A_1) = hAPP(X_b,X_b,hAPP(X_b,fun(X_b,X_b),semilattice_sup_sup(X_b),hAPP(fun(X_b,bool),X_b,big_lattice_Sup_fin(X_b),B)),hAPP(fun(X_b,bool),X_b,big_lattice_Sup_fin(X_b),A_1))
             <= hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),ord_less_eq(fun(X_b,bool)),B),A_1)) )
           <= bot_bot(fun(X_b,bool)) != ti(fun(X_b,bool),B) ) )
     <= lattice(X_b) ) ).

fof(fact_50_equals0I,axiom,
    ! [X_b,A_1] :
      ( bot_bot(fun(X_b,bool)) = ti(fun(X_b,bool),A_1)
     <= ! [Y_2] : ~ hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),Y_2),A_1)) ) ).

fof(fact_444_Int__insert__left__if1,axiom,
    ! [X_b,B,A_3,C] :
      ( hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_inf_inf(fun(X_b,bool)),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),A_3),B)),C) = hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),A_3),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_inf_inf(fun(X_b,bool)),B),C))
     <= hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),A_3),C)) ) ).

fof(fact_154_folding__one__idem_Oinsert__idem,axiom,
    ! [X_b,X_1,A_1,F,F_1] :
      ( hBOOL(hAPP(fun(fun(X_b,bool),X_b),bool,hAPP(fun(X_b,fun(X_b,X_b)),fun(fun(fun(X_b,bool),X_b),bool),finite2073411215e_idem(X_b),F),F_1))
     => ( hBOOL(hAPP(fun(X_b,bool),bool,finite_finite_1(X_b),A_1))
       => ( ti(fun(X_b,bool),A_1) != bot_bot(fun(X_b,bool))
         => hAPP(fun(X_b,bool),X_b,F_1,hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),X_1),A_1)) = hAPP(X_b,X_b,hAPP(X_b,fun(X_b,X_b),F,X_1),hAPP(fun(X_b,bool),X_b,F_1,A_1)) ) ) ) ).

fof(fact_445_Int__insert__right__if1,axiom,
    ! [X_b,B,A_3,A_1] :
      ( hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_inf_inf(fun(X_b,bool)),A_1),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),A_3),B)) = hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),A_3),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_inf_inf(fun(X_b,bool)),A_1),B))
     <= hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),A_3),A_1)) ) ).

fof(fact_325_set__rev__mp,axiom,
    ! [X_b,B,X_1,A_1] :
      ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),X_1),A_1))
     => ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),ord_less_eq(fun(X_b,bool)),A_1),B))
       => hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),X_1),B)) ) ) ).

fof(tsy_c_COMBB_res,axiom,
    ! [X_b,X_c,X_a] : ti(fun(fun(X_b,X_c),fun(fun(X_a,X_b),fun(X_a,X_c))),combb(X_b,X_c,X_a)) = combb(X_b,X_c,X_a) ).

fof(fact_259_Diff__subset,axiom,
    ! [X_b,A_1,B] : hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),ord_less_eq(fun(X_b,bool)),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),minus_minus(fun(X_b,bool)),A_1),B)),A_1)) ).

fof(tsy_c_Hoare__Mirabelle__nrugjuseim_Otriple_Otriple_res,axiom,
    ! [X_b] : hoare_246368825triple(X_b) = ti(fun(fun(X_b,fun(state,bool)),fun(com,fun(fun(X_b,fun(state,bool)),hoare_1656922687triple(X_b)))),hoare_246368825triple(X_b)) ).

fof(fact_443_comp__fun__idem__inf,axiom,
    ! [X_b] :
      ( semilattice_inf(X_b)
     => hBOOL(hAPP(fun(X_b,fun(X_b,X_b)),bool,finite_comp_fun_idem(X_b,X_b),semilattice_inf_inf(X_b))) ) ).

fof(fact_219_comp__fun__commute_Ofold__equality,axiom,
    ! [X_b,X_c,Z_1,A_1,Y_1,F] :
      ( ( ti(X_c,Y_1) = hAPP(fun(X_b,bool),X_c,hAPP(X_c,fun(fun(X_b,bool),X_c),hAPP(fun(X_b,fun(X_c,X_c)),fun(X_c,fun(fun(X_b,bool),X_c)),finite_fold(X_b,X_c),F),Z_1),A_1)
       <= hBOOL(hAPP(X_c,bool,hAPP(fun(X_b,bool),fun(X_c,bool),hAPP(X_c,fun(fun(X_b,bool),fun(X_c,bool)),hAPP(fun(X_b,fun(X_c,X_c)),fun(X_c,fun(fun(X_b,bool),fun(X_c,bool))),finite_fold_graph(X_b,X_c),F),Z_1),A_1),Y_1)) )
     <= hBOOL(hAPP(fun(X_b,fun(X_c,X_c)),bool,finite100568337ommute(X_b,X_c),F)) ) ).

fof(help_fdisj_2_1_U,axiom,
    ! [P,Q] :
      ( ~ hBOOL(Q)
      | hBOOL(hAPP(bool,bool,hAPP(bool,fun(bool,bool),fdisj,P),Q)) ) ).

fof(fact_358_Un__insert__left,axiom,
    ! [X_b,A_3,B,C] : hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_sup_sup(fun(X_b,bool)),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),A_3),B)),C) = hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),A_3),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_sup_sup(fun(X_b,bool)),B),C)) ).

fof(fact_301_finite__UnI,axiom,
    ! [X_b,Ga,F_1] :
      ( ( hBOOL(hAPP(fun(X_b,bool),bool,finite_finite_1(X_b),Ga))
       => hBOOL(hAPP(fun(X_b,bool),bool,finite_finite_1(X_b),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_sup_sup(fun(X_b,bool)),F_1),Ga))) )
     <= hBOOL(hAPP(fun(X_b,bool),bool,finite_finite_1(X_b),F_1)) ) ).

fof(fact_338_Un__left__absorb,axiom,
    ! [X_b,A_1,B] : hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_sup_sup(fun(X_b,bool)),A_1),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_sup_sup(fun(X_b,bool)),A_1),B)) = hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_sup_sup(fun(X_b,bool)),A_1),B) ).

fof(fact_278_inf__sup__aci_I7_J,axiom,
    ! [X_a] :
      ( lattice(X_a)
     => ! [X,Y,Z] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),Y),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),X),Z)) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),X),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),Y),Z)) ) ).

fof(tsy_c_Hoare__Mirabelle__nrugjuseim_Otriple__valid_res,axiom,
    ! [X_b] : hoare_920331057_valid(X_b) = ti(fun(nat,fun(hoare_1656922687triple(X_b),bool)),hoare_920331057_valid(X_b)) ).

fof(fact_495_Int__Un__distrib,axiom,
    ! [X_b,A_1,B,C] : hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_inf_inf(fun(X_b,bool)),A_1),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_sup_sup(fun(X_b,bool)),B),C)) = hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_sup_sup(fun(X_b,bool)),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_inf_inf(fun(X_b,bool)),A_1),B)),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_inf_inf(fun(X_b,bool)),A_1),C)) ).

fof(tsy_c_Finite__Set_Ofold1Set_res,axiom,
    ! [X_b] : finite_fold1Set(X_b) = ti(fun(fun(X_b,fun(X_b,X_b)),fun(fun(X_b,bool),fun(X_b,bool))),finite_fold1Set(X_b)) ).

fof(fact_62_image__ident,axiom,
    ! [X_b,Y_4] : hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,X_b),fun(fun(X_b,bool),fun(X_b,bool)),image(X_b,X_b),combi(X_b)),Y_4) = ti(fun(X_b,bool),Y_4) ).

fof(fact_472_inf__fun__def,axiom,
    ! [X_b,X_c] :
      ( ! [F,G,X_2] : hAPP(X_b,X_c,hAPP(fun(X_b,X_c),fun(X_b,X_c),hAPP(fun(X_b,X_c),fun(fun(X_b,X_c),fun(X_b,X_c)),semilattice_inf_inf(fun(X_b,X_c)),F),G),X_2) = hAPP(X_c,X_c,hAPP(X_c,fun(X_c,X_c),semilattice_inf_inf(X_c),hAPP(X_b,X_c,F,X_2)),hAPP(X_b,X_c,G,X_2))
     <= lattice(X_c) ) ).

fof(fact_399_Sup__fin_Oin__idem,axiom,
    ! [X_b] :
      ( ! [X_1,A_1] :
          ( hBOOL(hAPP(fun(X_b,bool),bool,finite_finite_1(X_b),A_1))
         => ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),X_1),A_1))
           => hAPP(fun(X_b,bool),X_b,big_lattice_Sup_fin(X_b),A_1) = hAPP(X_b,X_b,hAPP(X_b,fun(X_b,X_b),semilattice_sup_sup(X_b),X_1),hAPP(fun(X_b,bool),X_b,big_lattice_Sup_fin(X_b),A_1)) ) )
     <= lattice(X_b) ) ).

fof(fact_5_escape,axiom,
    ! [X_b,Ga,Ca,Q_1,Pa] :
      ( hBOOL(hAPP(fun(hoare_1656922687triple(X_b),bool),bool,hAPP(fun(hoare_1656922687triple(X_b),bool),fun(fun(hoare_1656922687triple(X_b),bool),bool),hoare_279057269derivs(X_b),Ga),hAPP(fun(hoare_1656922687triple(X_b),bool),fun(hoare_1656922687triple(X_b),bool),hAPP(hoare_1656922687triple(X_b),fun(fun(hoare_1656922687triple(X_b),bool),fun(hoare_1656922687triple(X_b),bool)),insert(hoare_1656922687triple(X_b)),hAPP(fun(X_b,fun(state,bool)),hoare_1656922687triple(X_b),hAPP(com,fun(fun(X_b,fun(state,bool)),hoare_1656922687triple(X_b)),hAPP(fun(X_b,fun(state,bool)),fun(com,fun(fun(X_b,fun(state,bool)),hoare_1656922687triple(X_b))),hoare_246368825triple(X_b),Pa),Ca),Q_1)),bot_bot(fun(hoare_1656922687triple(X_b),bool)))))
     <= ! [Z_2,S_2] :
          ( hBOOL(hAPP(fun(hoare_1656922687triple(X_b),bool),bool,hAPP(fun(hoare_1656922687triple(X_b),bool),fun(fun(hoare_1656922687triple(X_b),bool),bool),hoare_279057269derivs(X_b),Ga),hAPP(fun(hoare_1656922687triple(X_b),bool),fun(hoare_1656922687triple(X_b),bool),hAPP(hoare_1656922687triple(X_b),fun(fun(hoare_1656922687triple(X_b),bool),fun(hoare_1656922687triple(X_b),bool)),insert(hoare_1656922687triple(X_b)),hAPP(fun(X_b,fun(state,bool)),hoare_1656922687triple(X_b),hAPP(com,fun(fun(X_b,fun(state,bool)),hoare_1656922687triple(X_b)),hAPP(fun(X_b,fun(state,bool)),fun(com,fun(fun(X_b,fun(state,bool)),hoare_1656922687triple(X_b))),hoare_246368825triple(X_b),hAPP(fun(state,bool),fun(X_b,fun(state,bool)),combk(fun(state,bool),X_b),hAPP(state,fun(state,bool),hAPP(fun(state,fun(state,bool)),fun(state,fun(state,bool)),combc(state,state,bool),fequal(state)),S_2))),Ca),hAPP(fun(state,bool),fun(X_b,fun(state,bool)),combk(fun(state,bool),X_b),hAPP(X_b,fun(state,bool),Q_1,Z_2)))),bot_bot(fun(hoare_1656922687triple(X_b),bool)))))
         <= hBOOL(hAPP(state,bool,hAPP(X_b,fun(state,bool),Pa,Z_2),S_2)) ) ) ).

fof(fact_185_finite__empty__induct,axiom,
    ! [X_b,Pa,A_1] :
      ( ( hBOOL(hAPP(fun(X_b,bool),bool,Pa,A_1))
       => ( ! [A_4,A_5] :
              ( ( ( hBOOL(hAPP(fun(X_b,bool),bool,Pa,hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),minus_minus(fun(X_b,bool)),A_5),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),A_4),bot_bot(fun(X_b,bool))))))
                 <= hBOOL(hAPP(fun(X_b,bool),bool,Pa,A_5)) )
               <= hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),A_4),A_5)) )
             <= hBOOL(hAPP(fun(X_b,bool),bool,finite_finite_1(X_b),A_5)) )
         => hBOOL(hAPP(fun(X_b,bool),bool,Pa,bot_bot(fun(X_b,bool)))) ) )
     <= hBOOL(hAPP(fun(X_b,bool),bool,finite_finite_1(X_b),A_1)) ) ).

fof(fact_466_Int__empty__right,axiom,
    ! [X_b,A_1] : hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_inf_inf(fun(X_b,bool)),A_1),bot_bot(fun(X_b,bool))) = bot_bot(fun(X_b,bool)) ).

fof(fact_369_folding__image__simple__idem_Ounion__idem,axiom,
    ! [X_c,X_b,B,A_1,F,Z_1,G,F_1] :
      ( hBOOL(hAPP(fun(fun(X_c,bool),X_b),bool,hAPP(fun(X_c,X_b),fun(fun(fun(X_c,bool),X_b),bool),hAPP(X_b,fun(fun(X_c,X_b),fun(fun(fun(X_c,bool),X_b),bool)),hAPP(fun(X_b,fun(X_b,X_b)),fun(X_b,fun(fun(X_c,X_b),fun(fun(fun(X_c,bool),X_b),bool))),finite908156982e_idem(X_b,X_c),F),Z_1),G),F_1))
     => ( ( hAPP(X_b,X_b,hAPP(X_b,fun(X_b,X_b),F,hAPP(fun(X_c,bool),X_b,F_1,A_1)),hAPP(fun(X_c,bool),X_b,F_1,B)) = hAPP(fun(X_c,bool),X_b,F_1,hAPP(fun(X_c,bool),fun(X_c,bool),hAPP(fun(X_c,bool),fun(fun(X_c,bool),fun(X_c,bool)),semilattice_sup_sup(fun(X_c,bool)),A_1),B))
         <= hBOOL(hAPP(fun(X_c,bool),bool,finite_finite_1(X_c),B)) )
       <= hBOOL(hAPP(fun(X_c,bool),bool,finite_finite_1(X_c),A_1)) ) ) ).

fof(fact_257_subset__image__iff,axiom,
    ! [X_b,X_c,B,F,A_1] :
      ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),ord_less_eq(fun(X_b,bool)),B),hAPP(fun(X_c,bool),fun(X_b,bool),hAPP(fun(X_c,X_b),fun(fun(X_c,bool),fun(X_b,bool)),image(X_c,X_b),F),A_1)))
    <=> ? [AA] :
          ( hBOOL(hAPP(fun(X_c,bool),bool,hAPP(fun(X_c,bool),fun(fun(X_c,bool),bool),ord_less_eq(fun(X_c,bool)),AA),A_1))
          & ti(fun(X_b,bool),B) = hAPP(fun(X_c,bool),fun(X_b,bool),hAPP(fun(X_c,X_b),fun(fun(X_c,bool),fun(X_b,bool)),image(X_c,X_b),F),AA) ) ) ).

fof(fact_473_inf_Ocommute,axiom,
    ! [X_a] :
      ( ! [A_2,B_1] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),B_1),A_2) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),A_2),B_1)
     <= semilattice_inf(X_a) ) ).

fof(fact_69_com_Osimps_I25_J,axiom,
    ! [Com1,Com2,Vname,Fun_1] : hAPP(com,com,hAPP(com,fun(com,com),semi,Com1),Com2) != hAPP(fun(state,nat),com,hAPP(vname,fun(fun(state,nat),com),ass,Vname),Fun_1) ).

fof(fact_312_order__antisym__conv,axiom,
    ! [X_b] :
      ( order(X_b)
     => ! [Y_1,X_1] :
          ( hBOOL(hAPP(X_b,bool,hAPP(X_b,fun(X_b,bool),ord_less_eq(X_b),Y_1),X_1))
         => ( ti(X_b,X_1) = ti(X_b,Y_1)
          <=> hBOOL(hAPP(X_b,bool,hAPP(X_b,fun(X_b,bool),ord_less_eq(X_b),X_1),Y_1)) ) ) ) ).

fof(fact_461_Int__iff,axiom,
    ! [X_b,Ca,A_1,B] :
      ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),Ca),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_inf_inf(fun(X_b,bool)),A_1),B)))
    <=> ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),Ca),B))
        & hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),Ca),A_1)) ) ) ).

fof(fact_174_insert__Diff1,axiom,
    ! [X_b,A_1,X_1,B] :
      ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),X_1),B))
     => hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),minus_minus(fun(X_b,bool)),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),X_1),A_1)),B) = hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),minus_minus(fun(X_b,bool)),A_1),B) ) ).

fof(fact_34_insert__compr__raw,axiom,
    ! [X_b,X_2,Xa] : hAPP(fun(X_b,bool),fun(X_b,bool),collect(X_b),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,fun(bool,bool)),fun(fun(X_b,bool),fun(X_b,bool)),combs(X_b,bool,bool),hAPP(fun(X_b,bool),fun(X_b,fun(bool,bool)),hAPP(fun(bool,fun(bool,bool)),fun(fun(X_b,bool),fun(X_b,fun(bool,bool))),combb(bool,fun(bool,bool),X_b),fdisj),hAPP(X_b,fun(X_b,bool),hAPP(fun(X_b,fun(X_b,bool)),fun(X_b,fun(X_b,bool)),combc(X_b,X_b,bool),fequal(X_b)),X_2))),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,fun(fun(X_b,bool),bool)),fun(fun(X_b,bool),fun(X_b,bool)),combc(X_b,fun(X_b,bool),bool),member(X_b)),Xa))) = hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),X_2),Xa) ).

fof(tsy_c_Com_Ocom_OSemi_res,axiom,
    semi = ti(fun(com,fun(com,com)),semi) ).

fof(fact_98_fold1Set__nonempty,axiom,
    ! [X_b,F,A_1,X_1] :
      ( hBOOL(hAPP(X_b,bool,hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,fun(X_b,X_b)),fun(fun(X_b,bool),fun(X_b,bool)),finite_fold1Set(X_b),F),A_1),X_1))
     => ti(fun(X_b,bool),A_1) != bot_bot(fun(X_b,bool)) ) ).

fof(fact_276_sup_Oassoc,axiom,
    ! [X_a] :
      ( ! [A_2,B_1,C_1] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),A_2),B_1)),C_1) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),A_2),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),B_1),C_1))
     <= semilattice_sup(X_a) ) ).

fof(fact_180_Diff__insert,axiom,
    ! [X_b,A_1,A_3,B] : hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),minus_minus(fun(X_b,bool)),A_1),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),A_3),B)) = hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),minus_minus(fun(X_b,bool)),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),minus_minus(fun(X_b,bool)),A_1),B)),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),A_3),bot_bot(fun(X_b,bool)))) ).

fof(fact_105_evaln_OLocal,axiom,
    ! [Ca,S0_1,Y_4,A_3,N_3,S1_2] :
      ( hBOOL(hAPP(state,bool,hAPP(nat,fun(state,bool),hAPP(state,fun(nat,fun(state,bool)),hAPP(com,fun(state,fun(nat,fun(state,bool))),evaln,hAPP(com,com,hAPP(fun(state,nat),fun(com,com),hAPP(loc_1,fun(fun(state,nat),fun(com,com)),local,Y_4),A_3),Ca)),S0_1),N_3),hAPP(nat,state,hAPP(vname,fun(nat,state),hAPP(state,fun(vname,fun(nat,state)),update,S1_2),hAPP(loc_1,vname,loc,Y_4)),hAPP(loc_1,nat,hAPP(state,fun(loc_1,nat),getlocs,S0_1),Y_4))))
     <= hBOOL(hAPP(state,bool,hAPP(nat,fun(state,bool),hAPP(state,fun(nat,fun(state,bool)),hAPP(com,fun(state,fun(nat,fun(state,bool))),evaln,Ca),hAPP(nat,state,hAPP(vname,fun(nat,state),hAPP(state,fun(vname,fun(nat,state)),update,S0_1),hAPP(loc_1,vname,loc,Y_4)),hAPP(state,nat,A_3,S0_1))),N_3),S1_2)) ) ).

fof(fact_90_com_Osimps_I2_J,axiom,
    ! [Loc_2,Fun_1,Com_1,Loc_3,Fun,Com] :
      ( hAPP(com,com,hAPP(fun(state,nat),fun(com,com),hAPP(loc_1,fun(fun(state,nat),fun(com,com)),local,Loc_2),Fun_1),Com_1) = hAPP(com,com,hAPP(fun(state,nat),fun(com,com),hAPP(loc_1,fun(fun(state,nat),fun(com,com)),local,Loc_3),Fun),Com)
    <=> ( ti(loc_1,Loc_2) = ti(loc_1,Loc_3)
        & Com = Com_1
        & Fun = Fun_1 ) ) ).

fof(fact_117_eval__eq,axiom,
    ! [Ca,S_4,T_5] :
      ( hBOOL(hAPP(state,bool,hAPP(state,fun(state,bool),hAPP(com,fun(state,fun(state,bool)),evalc,Ca),S_4),T_5))
    <=> ? [N_1] : hBOOL(hAPP(state,bool,hAPP(nat,fun(state,bool),hAPP(state,fun(nat,fun(state,bool)),hAPP(com,fun(state,fun(nat,fun(state,bool))),evaln,Ca),S_4),N_1),T_5)) ) ).

fof(fact_186_folding__image__simple_Oremove,axiom,
    ! [X_c,X_b,X_1,A_1,F,Z_1,G,F_1] :
      ( ( hBOOL(hAPP(fun(X_c,bool),bool,finite_finite_1(X_c),A_1))
       => ( hAPP(fun(X_c,bool),X_b,F_1,A_1) = hAPP(X_b,X_b,hAPP(X_b,fun(X_b,X_b),F,hAPP(X_c,X_b,G,X_1)),hAPP(fun(X_c,bool),X_b,F_1,hAPP(fun(X_c,bool),fun(X_c,bool),hAPP(fun(X_c,bool),fun(fun(X_c,bool),fun(X_c,bool)),minus_minus(fun(X_c,bool)),A_1),hAPP(fun(X_c,bool),fun(X_c,bool),hAPP(X_c,fun(fun(X_c,bool),fun(X_c,bool)),insert(X_c),X_1),bot_bot(fun(X_c,bool))))))
         <= hBOOL(hAPP(fun(X_c,bool),bool,hAPP(X_c,fun(fun(X_c,bool),bool),member(X_c),X_1),A_1)) ) )
     <= hBOOL(hAPP(fun(fun(X_c,bool),X_b),bool,hAPP(fun(X_c,X_b),fun(fun(fun(X_c,bool),X_b),bool),hAPP(X_b,fun(fun(X_c,X_b),fun(fun(fun(X_c,bool),X_b),bool)),hAPP(fun(X_b,fun(X_b,X_b)),fun(X_b,fun(fun(X_c,X_b),fun(fun(fun(X_c,bool),X_b),bool))),finite1357897459simple(X_b,X_c),F),Z_1),G),F_1)) ) ).

fof(fact_206_comp__fun__commute_Ofold__graph__determ,axiom,
    ! [X_b,X_c,Y_1,Z_1,A_1,X_1,F] :
      ( hBOOL(hAPP(fun(X_b,fun(X_c,X_c)),bool,finite100568337ommute(X_b,X_c),F))
     => ( ( ti(X_c,Y_1) = ti(X_c,X_1)
         <= hBOOL(hAPP(X_c,bool,hAPP(fun(X_b,bool),fun(X_c,bool),hAPP(X_c,fun(fun(X_b,bool),fun(X_c,bool)),hAPP(fun(X_b,fun(X_c,X_c)),fun(X_c,fun(fun(X_b,bool),fun(X_c,bool))),finite_fold_graph(X_b,X_c),F),Z_1),A_1),Y_1)) )
       <= hBOOL(hAPP(X_c,bool,hAPP(fun(X_b,bool),fun(X_c,bool),hAPP(X_c,fun(fun(X_b,bool),fun(X_c,bool)),hAPP(fun(X_b,fun(X_c,X_c)),fun(X_c,fun(fun(X_b,bool),fun(X_c,bool))),finite_fold_graph(X_b,X_c),F),Z_1),A_1),X_1)) ) ) ).

fof(fact_140_finite__imageI,axiom,
    ! [X_c,X_b,H,F_1] :
      ( hBOOL(hAPP(fun(X_c,bool),bool,finite_finite_1(X_c),hAPP(fun(X_b,bool),fun(X_c,bool),hAPP(fun(X_b,X_c),fun(fun(X_b,bool),fun(X_c,bool)),image(X_b,X_c),H),F_1)))
     <= hBOOL(hAPP(fun(X_b,bool),bool,finite_finite_1(X_b),F_1)) ) ).

fof(fact_244_finite__Collect__subsets,axiom,
    ! [X_b,A_1] :
      ( hBOOL(hAPP(fun(fun(X_b,bool),bool),bool,finite_finite_1(fun(X_b,bool)),hAPP(fun(fun(X_b,bool),bool),fun(fun(X_b,bool),bool),collect(fun(X_b,bool)),hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),hAPP(fun(fun(X_b,bool),fun(fun(X_b,bool),bool)),fun(fun(X_b,bool),fun(fun(X_b,bool),bool)),combc(fun(X_b,bool),fun(X_b,bool),bool),ord_less_eq(fun(X_b,bool))),A_1))))
     <= hBOOL(hAPP(fun(X_b,bool),bool,finite_finite_1(X_b),A_1)) ) ).

fof(tsy_c_COMBC_res,axiom,
    ! [X_a,X_b,X_c] : ti(fun(fun(X_a,fun(X_b,X_c)),fun(X_b,fun(X_a,X_c))),combc(X_a,X_b,X_c)) = combc(X_a,X_b,X_c) ).

fof(fact_428_inf__le2,axiom,
    ! [X_a] :
      ( semilattice_inf(X_a)
     => ! [X,Y] : hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),X),Y)),Y)) ) ).

fof(fact_204_fold__graph_H_Ointros_I1_J,axiom,
    ! [X_c,X_b,F,Z_1] : hBOOL(hAPP(X_c,bool,hAPP(fun(X_b,bool),fun(X_c,bool),hAPP(X_c,fun(fun(X_b,bool),fun(X_c,bool)),hAPP(fun(X_b,fun(X_c,X_c)),fun(X_c,fun(fun(X_b,bool),fun(X_c,bool))),fold_graph(X_b,X_c),F),Z_1),bot_bot(fun(X_b,bool))),Z_1)) ).

fof(help_COMBI_1_1_U,axiom,
    ! [X_a,P] : ti(X_a,P) = hAPP(X_a,X_a,combi(X_a),P) ).

fof(fact_152_pigeonhole__infinite,axiom,
    ! [X_c,X_b,F,A_1] :
      ( ~ hBOOL(hAPP(fun(X_b,bool),bool,finite_finite_1(X_b),A_1))
     => ( hBOOL(hAPP(fun(X_c,bool),bool,finite_finite_1(X_c),hAPP(fun(X_b,bool),fun(X_c,bool),hAPP(fun(X_b,X_c),fun(fun(X_b,bool),fun(X_c,bool)),image(X_b,X_c),F),A_1)))
       => ? [X_2] :
            ( ~ hBOOL(hAPP(fun(X_b,bool),bool,finite_finite_1(X_b),hAPP(fun(X_b,bool),fun(X_b,bool),collect(X_b),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,fun(bool,bool)),fun(fun(X_b,bool),fun(X_b,bool)),combs(X_b,bool,bool),hAPP(fun(X_b,bool),fun(X_b,fun(bool,bool)),hAPP(fun(bool,fun(bool,bool)),fun(fun(X_b,bool),fun(X_b,fun(bool,bool))),combb(bool,fun(bool,bool),X_b),fconj),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,fun(fun(X_b,bool),bool)),fun(fun(X_b,bool),fun(X_b,bool)),combc(X_b,fun(X_b,bool),bool),member(X_b)),A_1))),hAPP(X_c,fun(X_b,bool),hAPP(fun(X_b,fun(X_c,bool)),fun(X_c,fun(X_b,bool)),combc(X_b,X_c,bool),hAPP(fun(X_b,X_c),fun(X_b,fun(X_c,bool)),hAPP(fun(X_c,fun(X_c,bool)),fun(fun(X_b,X_c),fun(X_b,fun(X_c,bool))),combb(X_c,fun(X_c,bool),X_b),fequal(X_c)),F)),hAPP(X_b,X_c,F,X_2))))))
            & hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),X_2),A_1)) ) ) ) ).

fof(fact_224_comp__fun__idem_Ofold__insert__idem2,axiom,
    ! [X_b,X_c,Z_1,X_1,A_1,F] :
      ( ( hBOOL(hAPP(fun(X_b,bool),bool,finite_finite_1(X_b),A_1))
       => hAPP(fun(X_b,bool),X_c,hAPP(X_c,fun(fun(X_b,bool),X_c),hAPP(fun(X_b,fun(X_c,X_c)),fun(X_c,fun(fun(X_b,bool),X_c)),finite_fold(X_b,X_c),F),Z_1),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),X_1),A_1)) = hAPP(fun(X_b,bool),X_c,hAPP(X_c,fun(fun(X_b,bool),X_c),hAPP(fun(X_b,fun(X_c,X_c)),fun(X_c,fun(fun(X_b,bool),X_c)),finite_fold(X_b,X_c),F),hAPP(X_c,X_c,hAPP(X_b,fun(X_c,X_c),F,X_1),Z_1)),A_1) )
     <= hBOOL(hAPP(fun(X_b,fun(X_c,X_c)),bool,finite_comp_fun_idem(X_b,X_c),F)) ) ).

fof(fact_464_IntD2,axiom,
    ! [X_b,Ca,A_1,B] :
      ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),Ca),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_inf_inf(fun(X_b,bool)),A_1),B)))
     => hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),Ca),B)) ) ).

fof(fact_437_Int__lower1,axiom,
    ! [X_b,A_1,B] : hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),ord_less_eq(fun(X_b,bool)),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_inf_inf(fun(X_b,bool)),A_1),B)),A_1)) ).

fof(tsy_c_Finite__Set_Ofolding__image__simple__idem_res,axiom,
    ! [X_b,X_c] : ti(fun(fun(X_b,fun(X_b,X_b)),fun(X_b,fun(fun(X_c,X_b),fun(fun(fun(X_c,bool),X_b),bool)))),finite908156982e_idem(X_b,X_c)) = finite908156982e_idem(X_b,X_c) ).

fof(fact_212_fold1__insert__idem,axiom,
    ! [X_b] :
      ( ! [X_1,A_1] :
          ( ( hBOOL(hAPP(fun(X_b,bool),bool,finite_finite_1(X_b),A_1))
           => hAPP(X_b,X_b,hAPP(X_b,fun(X_b,X_b),times_times(X_b),X_1),hAPP(fun(X_b,bool),X_b,hAPP(fun(X_b,fun(X_b,X_b)),fun(fun(X_b,bool),X_b),finite_fold1(X_b),times_times(X_b)),A_1)) = hAPP(fun(X_b,bool),X_b,hAPP(fun(X_b,fun(X_b,X_b)),fun(fun(X_b,bool),X_b),finite_fold1(X_b),times_times(X_b)),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),X_1),A_1)) )
         <= bot_bot(fun(X_b,bool)) != ti(fun(X_b,bool),A_1) )
     <= ab_sem1668676832m_mult(X_b) ) ).

fof(fact_247_rev__finite__subset,axiom,
    ! [X_b,A_1,B] :
      ( hBOOL(hAPP(fun(X_b,bool),bool,finite_finite_1(X_b),B))
     => ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),ord_less_eq(fun(X_b,bool)),A_1),B))
       => hBOOL(hAPP(fun(X_b,bool),bool,finite_finite_1(X_b),A_1)) ) ) ).

fof(fact_347_predicate1D,axiom,
    ! [X_b,X_1,Pa,Q_1] :
      ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),ord_less_eq(fun(X_b,bool)),Pa),Q_1))
     => ( hBOOL(hAPP(X_b,bool,Q_1,X_1))
       <= hBOOL(hAPP(X_b,bool,Pa,X_1)) ) ) ).

fof(fact_184_folding__one__idem_Ohom__commute,axiom,
    ! [X_b,N,H,F,F_1] :
      ( ( ( ( hAPP(fun(X_b,bool),X_b,F_1,hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,X_b),fun(fun(X_b,bool),fun(X_b,bool)),image(X_b,X_b),H),N)) = hAPP(X_b,X_b,H,hAPP(fun(X_b,bool),X_b,F_1,N))
           <= ti(fun(X_b,bool),N) != bot_bot(fun(X_b,bool)) )
         <= hBOOL(hAPP(fun(X_b,bool),bool,finite_finite_1(X_b),N)) )
       <= ! [X_2,Y_2] : hAPP(X_b,X_b,hAPP(X_b,fun(X_b,X_b),F,hAPP(X_b,X_b,H,X_2)),hAPP(X_b,X_b,H,Y_2)) = hAPP(X_b,X_b,H,hAPP(X_b,X_b,hAPP(X_b,fun(X_b,X_b),F,X_2),Y_2)) )
     <= hBOOL(hAPP(fun(fun(X_b,bool),X_b),bool,hAPP(fun(X_b,fun(X_b,X_b)),fun(fun(fun(X_b,bool),X_b),bool),finite2073411215e_idem(X_b),F),F_1)) ) ).

fof(help_COMBS_1_1_U,axiom,
    ! [X_a,X_c,X_b,P,Q,R] : hAPP(X_a,X_c,hAPP(fun(X_a,X_b),fun(X_a,X_c),hAPP(fun(X_a,fun(X_b,X_c)),fun(fun(X_a,X_b),fun(X_a,X_c)),combs(X_a,X_b,X_c),P),Q),R) = hAPP(X_b,X_c,hAPP(X_a,fun(X_b,X_c),P,R),hAPP(X_a,X_b,Q,R)) ).

fof(fact_101_theI_H,axiom,
    ! [X_b,Pa] :
      ( ? [X_2] :
          ( hBOOL(hAPP(X_b,bool,Pa,X_2))
          & ! [Y_2] :
              ( hBOOL(hAPP(X_b,bool,Pa,Y_2))
             => ti(X_b,X_2) = ti(X_b,Y_2) ) )
     => hBOOL(hAPP(X_b,bool,Pa,hAPP(fun(X_b,bool),X_b,the(X_b),Pa))) ) ).

fof(fact_84_image__cong,axiom,
    ! [X_c,X_b,F,G,M_2,N] :
      ( ( ! [X_2] :
            ( hAPP(X_b,X_c,G,X_2) = hAPP(X_b,X_c,F,X_2)
           <= hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),X_2),N)) )
       => hAPP(fun(X_b,bool),fun(X_c,bool),hAPP(fun(X_b,X_c),fun(fun(X_b,bool),fun(X_c,bool)),image(X_b,X_c),F),M_2) = hAPP(fun(X_b,bool),fun(X_c,bool),hAPP(fun(X_b,X_c),fun(fun(X_b,bool),fun(X_c,bool)),image(X_b,X_c),G),N) )
     <= ti(fun(X_b,bool),M_2) = ti(fun(X_b,bool),N) ) ).

fof(fact_373_folding__one__idem_Ounion__idem,axiom,
    ! [X_b,B,A_1,F,F_1] :
      ( ( ( ti(fun(X_b,bool),A_1) != bot_bot(fun(X_b,bool))
         => ( hBOOL(hAPP(fun(X_b,bool),bool,finite_finite_1(X_b),B))
           => ( bot_bot(fun(X_b,bool)) != ti(fun(X_b,bool),B)
             => hAPP(X_b,X_b,hAPP(X_b,fun(X_b,X_b),F,hAPP(fun(X_b,bool),X_b,F_1,A_1)),hAPP(fun(X_b,bool),X_b,F_1,B)) = hAPP(fun(X_b,bool),X_b,F_1,hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_sup_sup(fun(X_b,bool)),A_1),B)) ) ) )
       <= hBOOL(hAPP(fun(X_b,bool),bool,finite_finite_1(X_b),A_1)) )
     <= hBOOL(hAPP(fun(fun(X_b,bool),X_b),bool,hAPP(fun(X_b,fun(X_b,X_b)),fun(fun(fun(X_b,bool),X_b),bool),finite2073411215e_idem(X_b),F),F_1)) ) ).

fof(fact_78_insert__image,axiom,
    ! [X_c,X_b,F,X_1,A_1] :
      ( hAPP(fun(X_b,bool),fun(X_c,bool),hAPP(fun(X_b,X_c),fun(fun(X_b,bool),fun(X_c,bool)),image(X_b,X_c),F),A_1) = hAPP(fun(X_c,bool),fun(X_c,bool),hAPP(X_c,fun(fun(X_c,bool),fun(X_c,bool)),insert(X_c),hAPP(X_b,X_c,F,X_1)),hAPP(fun(X_b,bool),fun(X_c,bool),hAPP(fun(X_b,X_c),fun(fun(X_b,bool),fun(X_c,bool)),image(X_b,X_c),F),A_1))
     <= hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),X_1),A_1)) ) ).

fof(fact_333_ball__Un,axiom,
    ! [X_b,Pa,A_1,B] :
      ( ( ! [X_2] :
            ( hBOOL(hAPP(X_b,bool,Pa,X_2))
           <= hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),X_2),B)) )
        & ! [X_2] :
            ( hBOOL(hAPP(X_b,bool,Pa,X_2))
           <= hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),X_2),A_1)) ) )
    <=> ! [X_2] :
          ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),X_2),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_sup_sup(fun(X_b,bool)),A_1),B)))
         => hBOOL(hAPP(X_b,bool,Pa,X_2)) ) ) ).

fof(fact_7_conseq1,axiom,
    ! [X_b,Pa,Ga,P_2,Ca,Q_1] :
      ( hBOOL(hAPP(fun(hoare_1656922687triple(X_b),bool),bool,hAPP(fun(hoare_1656922687triple(X_b),bool),fun(fun(hoare_1656922687triple(X_b),bool),bool),hoare_279057269derivs(X_b),Ga),hAPP(fun(hoare_1656922687triple(X_b),bool),fun(hoare_1656922687triple(X_b),bool),hAPP(hoare_1656922687triple(X_b),fun(fun(hoare_1656922687triple(X_b),bool),fun(hoare_1656922687triple(X_b),bool)),insert(hoare_1656922687triple(X_b)),hAPP(fun(X_b,fun(state,bool)),hoare_1656922687triple(X_b),hAPP(com,fun(fun(X_b,fun(state,bool)),hoare_1656922687triple(X_b)),hAPP(fun(X_b,fun(state,bool)),fun(com,fun(fun(X_b,fun(state,bool)),hoare_1656922687triple(X_b))),hoare_246368825triple(X_b),P_2),Ca),Q_1)),bot_bot(fun(hoare_1656922687triple(X_b),bool)))))
     => ( ! [Z_2,S_2] :
            ( hBOOL(hAPP(state,bool,hAPP(X_b,fun(state,bool),P_2,Z_2),S_2))
           <= hBOOL(hAPP(state,bool,hAPP(X_b,fun(state,bool),Pa,Z_2),S_2)) )
       => hBOOL(hAPP(fun(hoare_1656922687triple(X_b),bool),bool,hAPP(fun(hoare_1656922687triple(X_b),bool),fun(fun(hoare_1656922687triple(X_b),bool),bool),hoare_279057269derivs(X_b),Ga),hAPP(fun(hoare_1656922687triple(X_b),bool),fun(hoare_1656922687triple(X_b),bool),hAPP(hoare_1656922687triple(X_b),fun(fun(hoare_1656922687triple(X_b),bool),fun(hoare_1656922687triple(X_b),bool)),insert(hoare_1656922687triple(X_b)),hAPP(fun(X_b,fun(state,bool)),hoare_1656922687triple(X_b),hAPP(com,fun(fun(X_b,fun(state,bool)),hoare_1656922687triple(X_b)),hAPP(fun(X_b,fun(state,bool)),fun(com,fun(fun(X_b,fun(state,bool)),hoare_1656922687triple(X_b))),hoare_246368825triple(X_b),Pa),Ca),Q_1)),bot_bot(fun(hoare_1656922687triple(X_b),bool))))) ) ) ).

fof(fact_77_Collect__def,axiom,
    ! [X_b,Pa] : hAPP(fun(X_b,bool),fun(X_b,bool),collect(X_b),Pa) = ti(fun(X_b,bool),Pa) ).

fof(fact_193_comp__fun__idem__remove,axiom,
    ! [X_b] : hBOOL(hAPP(fun(X_b,fun(fun(X_b,bool),fun(X_b,bool))),bool,finite_comp_fun_idem(X_b,fun(X_b,bool)),hAPP(fun(X_b,fun(X_b,bool)),fun(X_b,fun(fun(X_b,bool),fun(X_b,bool))),hAPP(fun(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool))),fun(fun(X_b,fun(X_b,bool)),fun(X_b,fun(fun(X_b,bool),fun(X_b,bool)))),combb(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),X_b),hAPP(fun(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool))),fun(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool))),combc(fun(X_b,bool),fun(X_b,bool),fun(X_b,bool)),minus_minus(fun(X_b,bool)))),hAPP(fun(X_b,bool),fun(X_b,fun(X_b,bool)),hAPP(fun(X_b,fun(fun(X_b,bool),fun(X_b,bool))),fun(fun(X_b,bool),fun(X_b,fun(X_b,bool))),combc(X_b,fun(X_b,bool),fun(X_b,bool)),insert(X_b)),bot_bot(fun(X_b,bool)))))) ).

fof(fact_496_Un__Int__distrib,axiom,
    ! [X_b,A_1,B,C] : hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_inf_inf(fun(X_b,bool)),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_sup_sup(fun(X_b,bool)),A_1),B)),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_sup_sup(fun(X_b,bool)),A_1),C)) = hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_sup_sup(fun(X_b,bool)),A_1),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_inf_inf(fun(X_b,bool)),B),C)) ).

fof(fact_401_Sup__fin_OF__eq,axiom,
    ! [X_b] :
      ( ! [A_1] :
          ( hBOOL(hAPP(fun(X_b,bool),bool,finite_finite_1(X_b),A_1))
         => hAPP(fun(X_b,bool),X_b,big_lattice_Sup_fin(X_b),A_1) = hAPP(fun(X_b,bool),X_b,hAPP(fun(X_b,fun(X_b,X_b)),fun(fun(X_b,bool),X_b),finite_fold1(X_b),semilattice_sup_sup(X_b)),A_1) )
     <= lattice(X_b) ) ).

fof(fact_260_Diff__mono,axiom,
    ! [X_b,D,B,A_1,C] :
      ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),ord_less_eq(fun(X_b,bool)),A_1),C))
     => ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),ord_less_eq(fun(X_b,bool)),D),B))
       => hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),ord_less_eq(fun(X_b,bool)),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),minus_minus(fun(X_b,bool)),A_1),B)),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),minus_minus(fun(X_b,bool)),C),D))) ) ) ).

fof(fact_216_comp__fun__commute_Ofold__fun__comm,axiom,
    ! [X_b,X_c,X_1,Z_1,A_1,F] :
      ( ( hBOOL(hAPP(fun(X_b,bool),bool,finite_finite_1(X_b),A_1))
       => hAPP(fun(X_b,bool),X_c,hAPP(X_c,fun(fun(X_b,bool),X_c),hAPP(fun(X_b,fun(X_c,X_c)),fun(X_c,fun(fun(X_b,bool),X_c)),finite_fold(X_b,X_c),F),hAPP(X_c,X_c,hAPP(X_b,fun(X_c,X_c),F,X_1),Z_1)),A_1) = hAPP(X_c,X_c,hAPP(X_b,fun(X_c,X_c),F,X_1),hAPP(fun(X_b,bool),X_c,hAPP(X_c,fun(fun(X_b,bool),X_c),hAPP(fun(X_b,fun(X_c,X_c)),fun(X_c,fun(fun(X_b,bool),X_c)),finite_fold(X_b,X_c),F),Z_1),A_1)) )
     <= hBOOL(hAPP(fun(X_b,fun(X_c,X_c)),bool,finite100568337ommute(X_b,X_c),F)) ) ).

fof(fact_55_com_Osimps_I3_J,axiom,
    ! [Com1_1,Com2_1,Com1,Com2] :
      ( ( Com1_1 = Com1
        & Com2_1 = Com2 )
    <=> hAPP(com,com,hAPP(com,fun(com,com),semi,Com1),Com2) = hAPP(com,com,hAPP(com,fun(com,com),semi,Com1_1),Com2_1) ) ).

fof(arity_fun___Lattices_Obounded__lattice__bot,axiom,
    ! [T_2,T_1] :
      ( bounded_lattice_bot(fun(T_2,T_1))
     <= bounded_lattice(T_1) ) ).

fof(fact_352_sup__Un__eq,axiom,
    ! [X_b,R_1,S,X_2] :
      ( hBOOL(hAPP(X_b,bool,hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_sup_sup(fun(X_b,bool)),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,fun(fun(X_b,bool),bool)),fun(fun(X_b,bool),fun(X_b,bool)),combc(X_b,fun(X_b,bool),bool),member(X_b)),R_1)),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,fun(fun(X_b,bool),bool)),fun(fun(X_b,bool),fun(X_b,bool)),combc(X_b,fun(X_b,bool),bool),member(X_b)),S)),X_2))
    <=> hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),X_2),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_sup_sup(fun(X_b,bool)),R_1),S))) ) ).

fof(fact_196_fold__graph__permute__diff,axiom,
    ! [X_b] :
      ( ab_semigroup_mult(X_b)
     => ! [A_3,Ba,A_1,X_1] :
          ( ( ( hBOOL(hAPP(X_b,bool,hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),hAPP(fun(X_b,fun(X_b,X_b)),fun(X_b,fun(fun(X_b,bool),fun(X_b,bool))),finite_fold_graph(X_b,X_b),times_times(X_b)),A_3),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),Ba),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),minus_minus(fun(X_b,bool)),A_1),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),A_3),bot_bot(fun(X_b,bool)))))),X_1))
             <= ~ hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),Ba),A_1)) )
           <= hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),A_3),A_1)) )
         <= hBOOL(hAPP(X_b,bool,hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),hAPP(fun(X_b,fun(X_b,X_b)),fun(X_b,fun(fun(X_b,bool),fun(X_b,bool))),finite_fold_graph(X_b,X_b),times_times(X_b)),Ba),A_1),X_1)) ) ) ).

fof(conj_0,conjecture,
    hBOOL(hAPP(fun(hoare_1656922687triple(x_a),bool),bool,hAPP(fun(hoare_1656922687triple(x_a),bool),fun(fun(hoare_1656922687triple(x_a),bool),bool),hoare_279057269derivs(x_a),g),hAPP(fun(hoare_1656922687triple(x_a),bool),fun(hoare_1656922687triple(x_a),bool),hAPP(hoare_1656922687triple(x_a),fun(fun(hoare_1656922687triple(x_a),bool),fun(hoare_1656922687triple(x_a),bool)),insert(hoare_1656922687triple(x_a)),hAPP(fun(x_a,fun(state,bool)),hoare_1656922687triple(x_a),hAPP(com,fun(fun(x_a,fun(state,bool)),hoare_1656922687triple(x_a)),hAPP(fun(x_a,fun(state,bool)),fun(com,fun(fun(x_a,fun(state,bool)),hoare_1656922687triple(x_a))),hoare_246368825triple(x_a),hAPP(fun(state,bool),fun(x_a,fun(state,bool)),combk(fun(state,bool),x_a),hAPP(bool,fun(state,bool),combk(bool,state),fFalse))),c),hAPP(fun(state,bool),fun(x_a,fun(state,bool)),hAPP(fun(x_a,fun(fun(state,bool),fun(state,bool))),fun(fun(state,bool),fun(x_a,fun(state,bool))),combc(x_a,fun(state,bool),fun(state,bool)),hAPP(fun(x_a,fun(state,fun(bool,bool))),fun(x_a,fun(fun(state,bool),fun(state,bool))),hAPP(fun(fun(state,fun(bool,bool)),fun(fun(state,bool),fun(state,bool))),fun(fun(x_a,fun(state,fun(bool,bool))),fun(x_a,fun(fun(state,bool),fun(state,bool)))),combb(fun(state,fun(bool,bool)),fun(fun(state,bool),fun(state,bool)),x_a),combs(state,bool,bool)),hAPP(fun(x_a,fun(state,bool)),fun(x_a,fun(state,fun(bool,bool))),hAPP(fun(fun(state,bool),fun(state,fun(bool,bool))),fun(fun(x_a,fun(state,bool)),fun(x_a,fun(state,fun(bool,bool)))),combb(fun(state,bool),fun(state,fun(bool,bool)),x_a),hAPP(fun(bool,fun(bool,bool)),fun(fun(state,bool),fun(state,fun(bool,bool))),combb(bool,fun(bool,bool),state),fconj)),p))),hAPP(fun(state,bool),fun(state,bool),hAPP(fun(bool,bool),fun(fun(state,bool),fun(state,bool)),combb(bool,bool,state),fNot),b)))),bot_bot(fun(hoare_1656922687triple(x_a),bool))))) ).

fof(fact_432_Int__mono,axiom,
    ! [X_b,B,D,A_1,C] :
      ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),ord_less_eq(fun(X_b,bool)),A_1),C))
     => ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),ord_less_eq(fun(X_b,bool)),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_inf_inf(fun(X_b,bool)),A_1),B)),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_inf_inf(fun(X_b,bool)),C),D)))
       <= hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),ord_less_eq(fun(X_b,bool)),B),D)) ) ) ).

fof(fact_408_Sup__fin_Oinsert__remove,axiom,
    ! [X_b] :
      ( ! [X_1,A_1] :
          ( ( ( hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),minus_minus(fun(X_b,bool)),A_1),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),X_1),bot_bot(fun(X_b,bool)))) = bot_bot(fun(X_b,bool))
             => hAPP(fun(X_b,bool),X_b,big_lattice_Sup_fin(X_b),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),X_1),A_1)) = ti(X_b,X_1) )
            & ( hAPP(X_b,X_b,hAPP(X_b,fun(X_b,X_b),semilattice_sup_sup(X_b),X_1),hAPP(fun(X_b,bool),X_b,big_lattice_Sup_fin(X_b),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),minus_minus(fun(X_b,bool)),A_1),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),X_1),bot_bot(fun(X_b,bool)))))) = hAPP(fun(X_b,bool),X_b,big_lattice_Sup_fin(X_b),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),X_1),A_1))
             <= bot_bot(fun(X_b,bool)) != hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),minus_minus(fun(X_b,bool)),A_1),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),X_1),bot_bot(fun(X_b,bool)))) ) )
         <= hBOOL(hAPP(fun(X_b,bool),bool,finite_finite_1(X_b),A_1)) )
     <= lattice(X_b) ) ).

fof(fact_328_Un__absorb1,axiom,
    ! [X_b,A_1,B] :
      ( ti(fun(X_b,bool),B) = hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_sup_sup(fun(X_b,bool)),A_1),B)
     <= hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),ord_less_eq(fun(X_b,bool)),A_1),B)) ) ).

fof(help_fconj_2_1_U,axiom,
    ! [P,Q] :
      ( hBOOL(P)
      | ~ hBOOL(hAPP(bool,bool,hAPP(bool,fun(bool,bool),fconj,P),Q)) ) ).

fof(fact_300_finite__Un,axiom,
    ! [X_b,F_1,Ga] :
      ( hBOOL(hAPP(fun(X_b,bool),bool,finite_finite_1(X_b),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_sup_sup(fun(X_b,bool)),F_1),Ga)))
    <=> ( hBOOL(hAPP(fun(X_b,bool),bool,finite_finite_1(X_b),Ga))
        & hBOOL(hAPP(fun(X_b,bool),bool,finite_finite_1(X_b),F_1)) ) ) ).

fof(fact_51_conseq,axiom,
    ! [X_b,Q_1,Ga,Ca,Pa] :
      ( ! [Z_2,S_2] :
          ( hBOOL(hAPP(state,bool,hAPP(X_b,fun(state,bool),Pa,Z_2),S_2))
         => ? [P_1,Q_2] :
              ( hBOOL(hAPP(fun(hoare_1656922687triple(X_b),bool),bool,hAPP(fun(hoare_1656922687triple(X_b),bool),fun(fun(hoare_1656922687triple(X_b),bool),bool),hoare_279057269derivs(X_b),Ga),hAPP(fun(hoare_1656922687triple(X_b),bool),fun(hoare_1656922687triple(X_b),bool),hAPP(hoare_1656922687triple(X_b),fun(fun(hoare_1656922687triple(X_b),bool),fun(hoare_1656922687triple(X_b),bool)),insert(hoare_1656922687triple(X_b)),hAPP(fun(X_b,fun(state,bool)),hoare_1656922687triple(X_b),hAPP(com,fun(fun(X_b,fun(state,bool)),hoare_1656922687triple(X_b)),hAPP(fun(X_b,fun(state,bool)),fun(com,fun(fun(X_b,fun(state,bool)),hoare_1656922687triple(X_b))),hoare_246368825triple(X_b),P_1),Ca),Q_2)),bot_bot(fun(hoare_1656922687triple(X_b),bool)))))
              & ! [S_3] :
                  ( ! [Z_3] :
                      ( hBOOL(hAPP(state,bool,hAPP(X_b,fun(state,bool),Q_2,Z_3),S_3))
                     <= hBOOL(hAPP(state,bool,hAPP(X_b,fun(state,bool),P_1,Z_3),S_2)) )
                 => hBOOL(hAPP(state,bool,hAPP(X_b,fun(state,bool),Q_1,Z_2),S_3)) ) ) )
     => hBOOL(hAPP(fun(hoare_1656922687triple(X_b),bool),bool,hAPP(fun(hoare_1656922687triple(X_b),bool),fun(fun(hoare_1656922687triple(X_b),bool),bool),hoare_279057269derivs(X_b),Ga),hAPP(fun(hoare_1656922687triple(X_b),bool),fun(hoare_1656922687triple(X_b),bool),hAPP(hoare_1656922687triple(X_b),fun(fun(hoare_1656922687triple(X_b),bool),fun(hoare_1656922687triple(X_b),bool)),insert(hoare_1656922687triple(X_b)),hAPP(fun(X_b,fun(state,bool)),hoare_1656922687triple(X_b),hAPP(com,fun(fun(X_b,fun(state,bool)),hoare_1656922687triple(X_b)),hAPP(fun(X_b,fun(state,bool)),fun(com,fun(fun(X_b,fun(state,bool)),hoare_1656922687triple(X_b))),hoare_246368825triple(X_b),Pa),Ca),Q_1)),bot_bot(fun(hoare_1656922687triple(X_b),bool))))) ) ).

fof(fact_113_evaln_OAssign,axiom,
    ! [X_3,A_3,S_4,N_3] : hBOOL(hAPP(state,bool,hAPP(nat,fun(state,bool),hAPP(state,fun(nat,fun(state,bool)),hAPP(com,fun(state,fun(nat,fun(state,bool))),evaln,hAPP(fun(state,nat),com,hAPP(vname,fun(fun(state,nat),com),ass,X_3),A_3)),S_4),N_3),hAPP(nat,state,hAPP(vname,fun(nat,state),hAPP(state,fun(vname,fun(nat,state)),update,S_4),X_3),hAPP(state,nat,A_3,S_4)))) ).

fof(fact_175_insert__Diff__if,axiom,
    ! [X_b,A_1,X_1,B] :
      ( ( hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),minus_minus(fun(X_b,bool)),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),X_1),A_1)),B) = hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),X_1),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),minus_minus(fun(X_b,bool)),A_1),B))
       <= ~ hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),X_1),B)) )
      & ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),X_1),B))
       => hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),minus_minus(fun(X_b,bool)),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),X_1),A_1)),B) = hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),minus_minus(fun(X_b,bool)),A_1),B) ) ) ).

fof(fact_27_insert__code,axiom,
    ! [X_b,Y_1,A_1,X_1] :
      ( ( ti(X_b,Y_1) = ti(X_b,X_1)
        | hBOOL(hAPP(X_b,bool,A_1,X_1)) )
    <=> hBOOL(hAPP(X_b,bool,hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),Y_1),A_1),X_1)) ) ).

fof(fact_198_mult__idem,axiom,
    ! [X_a] :
      ( ab_sem1668676832m_mult(X_a)
     => ! [X] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),times_times(X_a),X),X) = ti(X_a,X) ) ).

fof(tsy_c_Com_Ocom_OSKIP_res,axiom,
    ti(com,skip) = skip ).

fof(fact_482_inf_Oassoc,axiom,
    ! [X_a] :
      ( ! [A_2,B_1,C_1] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),A_2),B_1)),C_1) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),A_2),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),B_1),C_1))
     <= semilattice_inf(X_a) ) ).

fof(fact_157_folding__image__simple__idem_Oinsert__idem,axiom,
    ! [X_c,X_b,X_1,A_1,F,Z_1,G,F_1] :
      ( hBOOL(hAPP(fun(fun(X_c,bool),X_b),bool,hAPP(fun(X_c,X_b),fun(fun(fun(X_c,bool),X_b),bool),hAPP(X_b,fun(fun(X_c,X_b),fun(fun(fun(X_c,bool),X_b),bool)),hAPP(fun(X_b,fun(X_b,X_b)),fun(X_b,fun(fun(X_c,X_b),fun(fun(fun(X_c,bool),X_b),bool))),finite908156982e_idem(X_b,X_c),F),Z_1),G),F_1))
     => ( hBOOL(hAPP(fun(X_c,bool),bool,finite_finite_1(X_c),A_1))
       => hAPP(fun(X_c,bool),X_b,F_1,hAPP(fun(X_c,bool),fun(X_c,bool),hAPP(X_c,fun(fun(X_c,bool),fun(X_c,bool)),insert(X_c),X_1),A_1)) = hAPP(X_b,X_b,hAPP(X_b,fun(X_b,X_b),F,hAPP(X_c,X_b,G,X_1)),hAPP(fun(X_c,bool),X_b,F_1,A_1)) ) ) ).

fof(fact_415_IntI,axiom,
    ! [X_b,B,Ca,A_1] :
      ( ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),Ca),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_inf_inf(fun(X_b,bool)),A_1),B)))
       <= hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),Ca),B)) )
     <= hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),Ca),A_1)) ) ).

fof(fact_43_bot__apply,axiom,
    ! [X_c,X_b] :
      ( bot(X_b)
     => ! [X_1] : hAPP(X_c,X_b,bot_bot(fun(X_c,X_b)),X_1) = bot_bot(X_b) ) ).

fof(fact_317_le__fun__def,axiom,
    ! [X_b,X_c] :
      ( ord(X_c)
     => ! [F,G] :
          ( ! [X_2] : hBOOL(hAPP(X_c,bool,hAPP(X_c,fun(X_c,bool),ord_less_eq(X_c),hAPP(X_b,X_c,F,X_2)),hAPP(X_b,X_c,G,X_2)))
        <=> hBOOL(hAPP(fun(X_b,X_c),bool,hAPP(fun(X_b,X_c),fun(fun(X_b,X_c),bool),ord_less_eq(fun(X_b,X_c)),F),G)) ) ) ).

fof(fact_20_empty__Collect__eq,axiom,
    ! [X_b,Pa] :
      ( hAPP(fun(X_b,bool),fun(X_b,bool),collect(X_b),Pa) = bot_bot(fun(X_b,bool))
    <=> ! [X_2] : ~ hBOOL(hAPP(X_b,bool,Pa,X_2)) ) ).

fof(fact_122_fold__graph_OinsertI,axiom,
    ! [X_c,X_b,F,Z_1,Y_1,X_1,A_1] :
      ( ( hBOOL(hAPP(X_c,bool,hAPP(fun(X_b,bool),fun(X_c,bool),hAPP(X_c,fun(fun(X_b,bool),fun(X_c,bool)),hAPP(fun(X_b,fun(X_c,X_c)),fun(X_c,fun(fun(X_b,bool),fun(X_c,bool))),finite_fold_graph(X_b,X_c),F),Z_1),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),X_1),A_1)),hAPP(X_c,X_c,hAPP(X_b,fun(X_c,X_c),F,X_1),Y_1)))
       <= hBOOL(hAPP(X_c,bool,hAPP(fun(X_b,bool),fun(X_c,bool),hAPP(X_c,fun(fun(X_b,bool),fun(X_c,bool)),hAPP(fun(X_b,fun(X_c,X_c)),fun(X_c,fun(fun(X_b,bool),fun(X_c,bool))),finite_fold_graph(X_b,X_c),F),Z_1),A_1),Y_1)) )
     <= ~ hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),X_1),A_1)) ) ).

fof(fact_205_comp__fun__idem__insert,axiom,
    ! [X_b] : hBOOL(hAPP(fun(X_b,fun(fun(X_b,bool),fun(X_b,bool))),bool,finite_comp_fun_idem(X_b,fun(X_b,bool)),insert(X_b))) ).

fof(fact_407_Sup__fin_Oeq__fold_H,axiom,
    ! [X_b] :
      ( lattice(X_b)
     => ! [X_1,A_1] :
          ( ( hAPP(fun(X_b,bool),X_b,big_lattice_Sup_fin(X_b),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),X_1),A_1)) = hAPP(fun(X_b,bool),X_b,hAPP(X_b,fun(fun(X_b,bool),X_b),hAPP(fun(X_b,fun(X_b,X_b)),fun(X_b,fun(fun(X_b,bool),X_b)),finite_fold(X_b,X_b),semilattice_sup_sup(X_b)),X_1),A_1)
           <= ~ hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),X_1),A_1)) )
         <= hBOOL(hAPP(fun(X_b,bool),bool,finite_finite_1(X_b),A_1)) ) ) ).

fof(fact_127_insert__fold1SetE,axiom,
    ! [X_b,F,A_3,X_3,X_1] :
      ( ~ ! [A_4,A_5] :
            ( ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),A_4),A_5))
             <= hBOOL(hAPP(X_b,bool,hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),hAPP(fun(X_b,fun(X_b,X_b)),fun(X_b,fun(fun(X_b,bool),fun(X_b,bool))),finite_fold_graph(X_b,X_b),F),A_4),A_5),X_1)) )
           <= hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),A_4),A_5) = hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),A_3),X_3) )
     <= hBOOL(hAPP(X_b,bool,hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,fun(X_b,X_b)),fun(fun(X_b,bool),fun(X_b,bool)),finite_fold1Set(X_b),F),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),A_3),X_3)),X_1)) ) ).

fof(fact_261_double__diff,axiom,
    ! [X_b,C,A_1,B] :
      ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),ord_less_eq(fun(X_b,bool)),A_1),B))
     => ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),ord_less_eq(fun(X_b,bool)),B),C))
       => hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),minus_minus(fun(X_b,bool)),B),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),minus_minus(fun(X_b,bool)),C),A_1)) = ti(fun(X_b,bool),A_1) ) ) ).

fof(fact_234_fold1__Un2,axiom,
    ! [X_b] :
      ( ! [B,A_1] :
          ( hBOOL(hAPP(fun(X_b,bool),bool,finite_finite_1(X_b),A_1))
         => ( ti(fun(X_b,bool),A_1) != bot_bot(fun(X_b,bool))
           => ( ( hAPP(fun(X_b,bool),X_b,hAPP(fun(X_b,fun(X_b,X_b)),fun(fun(X_b,bool),X_b),finite_fold1(X_b),times_times(X_b)),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_sup_sup(fun(X_b,bool)),A_1),B)) = hAPP(X_b,X_b,hAPP(X_b,fun(X_b,X_b),times_times(X_b),hAPP(fun(X_b,bool),X_b,hAPP(fun(X_b,fun(X_b,X_b)),fun(fun(X_b,bool),X_b),finite_fold1(X_b),times_times(X_b)),A_1)),hAPP(fun(X_b,bool),X_b,hAPP(fun(X_b,fun(X_b,X_b)),fun(fun(X_b,bool),X_b),finite_fold1(X_b),times_times(X_b)),B))
               <= bot_bot(fun(X_b,bool)) != ti(fun(X_b,bool),B) )
             <= hBOOL(hAPP(fun(X_b,bool),bool,finite_finite_1(X_b),B)) ) ) )
     <= ab_sem1668676832m_mult(X_b) ) ).

fof(fact_453_inf1D2,axiom,
    ! [X_b,A_1,B,X_1] :
      ( hBOOL(hAPP(X_b,bool,B,X_1))
     <= hBOOL(hAPP(X_b,bool,hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_inf_inf(fun(X_b,bool)),A_1),B),X_1)) ) ).

fof(fact_486_Diff__Int2,axiom,
    ! [X_b,A_1,C,B] : hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),minus_minus(fun(X_b,bool)),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_inf_inf(fun(X_b,bool)),A_1),C)),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_inf_inf(fun(X_b,bool)),B),C)) = hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),minus_minus(fun(X_b,bool)),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_inf_inf(fun(X_b,bool)),A_1),C)),B) ).

fof(tsy_c_fNot_res,hypothesis,
    ti(fun(bool,bool),fNot) = fNot ).

fof(fact_289_sup_Oidem,axiom,
    ! [X_a] :
      ( ! [A_2] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),A_2),A_2) = ti(X_a,A_2)
     <= semilattice_sup(X_a) ) ).

fof(fact_221_folding__one_Oeq__fold,axiom,
    ! [X_b,A_1,F,F_1] :
      ( ( hAPP(fun(X_b,bool),X_b,F_1,A_1) = hAPP(fun(X_b,bool),X_b,hAPP(fun(X_b,fun(X_b,X_b)),fun(fun(X_b,bool),X_b),finite_fold1(X_b),F),A_1)
       <= hBOOL(hAPP(fun(X_b,bool),bool,finite_finite_1(X_b),A_1)) )
     <= hBOOL(hAPP(fun(fun(X_b,bool),X_b),bool,hAPP(fun(X_b,fun(X_b,X_b)),fun(fun(fun(X_b,bool),X_b),bool),finite_folding_one(X_b),F),F_1)) ) ).

fof(fact_189_minus__apply,axiom,
    ! [X_c,X_b] :
      ( minus(X_b)
     => ! [A_1,B,X_1] : hAPP(X_c,X_b,hAPP(fun(X_c,X_b),fun(X_c,X_b),hAPP(fun(X_c,X_b),fun(fun(X_c,X_b),fun(X_c,X_b)),minus_minus(fun(X_c,X_b)),A_1),B),X_1) = hAPP(X_b,X_b,hAPP(X_b,fun(X_b,X_b),minus_minus(X_b),hAPP(X_c,X_b,A_1,X_1)),hAPP(X_c,X_b,B,X_1)) ) ).

fof(fact_331_equalityD2,axiom,
    ! [X_b,A_1,B] :
      ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),ord_less_eq(fun(X_b,bool)),B),A_1))
     <= ti(fun(X_b,bool),A_1) = ti(fun(X_b,bool),B) ) ).

fof(fact_470_inf_Oidem,axiom,
    ! [X_a] :
      ( ! [A_2] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),A_2),A_2) = ti(X_a,A_2)
     <= semilattice_inf(X_a) ) ).

fof(tsy_c_HOL_OThe_res,axiom,
    ! [X_b] : the(X_b) = ti(fun(fun(X_b,bool),X_b),the(X_b)) ).

fof(fact_133_vname_Orecs_I1_J,axiom,
    ! [X_b,F1,F2,Glb_3] : hAPP(vname,X_b,hAPP(fun(loc_1,X_b),fun(vname,X_b),hAPP(fun(glb_1,X_b),fun(fun(loc_1,X_b),fun(vname,X_b)),vname_rec(X_b),F1),F2),hAPP(glb_1,vname,glb,Glb_3)) = hAPP(glb_1,X_b,F1,Glb_3) ).

fof(fact_68_com_Osimps_I24_J,axiom,
    ! [Vname,Fun_1,Com1,Com2] : hAPP(com,com,hAPP(com,fun(com,com),semi,Com1),Com2) != hAPP(fun(state,nat),com,hAPP(vname,fun(fun(state,nat),com),ass,Vname),Fun_1) ).

fof(fact_410_Sup__fin_Oclosed,axiom,
    ! [X_b] :
      ( lattice(X_b)
     => ! [A_1] :
          ( ( ti(fun(X_b,bool),A_1) != bot_bot(fun(X_b,bool))
           => ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),hAPP(fun(X_b,bool),X_b,big_lattice_Sup_fin(X_b),A_1)),A_1))
             <= ! [X_2,Y_2] : hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),hAPP(X_b,X_b,hAPP(X_b,fun(X_b,X_b),semilattice_sup_sup(X_b),X_2),Y_2)),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),X_2),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),Y_2),bot_bot(fun(X_b,bool)))))) ) )
         <= hBOOL(hAPP(fun(X_b,bool),bool,finite_finite_1(X_b),A_1)) ) ) ).

fof(fact_355_le__bot,axiom,
    ! [X_a] :
      ( ! [A_2] :
          ( ti(X_a,A_2) = bot_bot(X_a)
         <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),A_2),bot_bot(X_a))) )
     <= bot(X_a) ) ).

fof(fact_119_evaln__evalc,axiom,
    ! [C_1,S_1,N_2,T_4] :
      ( hBOOL(hAPP(state,bool,hAPP(nat,fun(state,bool),hAPP(state,fun(nat,fun(state,bool)),hAPP(com,fun(state,fun(nat,fun(state,bool))),evaln,C_1),S_1),N_2),T_4))
     => hBOOL(hAPP(state,bool,hAPP(state,fun(state,bool),hAPP(com,fun(state,fun(state,bool)),evalc,C_1),S_1),T_4)) ) ).

fof(fact_150_finite__induct,axiom,
    ! [X_b,Pa,F_1] :
      ( hBOOL(hAPP(fun(X_b,bool),bool,finite_finite_1(X_b),F_1))
     => ( hBOOL(hAPP(fun(X_b,bool),bool,Pa,bot_bot(fun(X_b,bool))))
       => ( ! [X_2,F_2] :
              ( ( ( hBOOL(hAPP(fun(X_b,bool),bool,Pa,F_2))
                 => hBOOL(hAPP(fun(X_b,bool),bool,Pa,hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),X_2),F_2))) )
               <= ~ hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),X_2),F_2)) )
             <= hBOOL(hAPP(fun(X_b,bool),bool,finite_finite_1(X_b),F_2)) )
         => hBOOL(hAPP(fun(X_b,bool),bool,Pa,F_1)) ) ) ) ).

fof(fact_460_Int__left__commute,axiom,
    ! [X_b,A_1,B,C] : hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_inf_inf(fun(X_b,bool)),B),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_inf_inf(fun(X_b,bool)),A_1),C)) = hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_inf_inf(fun(X_b,bool)),A_1),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_inf_inf(fun(X_b,bool)),B),C)) ).

fof(fact_4_constant,axiom,
    ! [X_b,Ga,Pa,Ca,Q_1,C] :
      ( ( hBOOL(hAPP(fun(hoare_1656922687triple(X_b),bool),bool,hAPP(fun(hoare_1656922687triple(X_b),bool),fun(fun(hoare_1656922687triple(X_b),bool),bool),hoare_279057269derivs(X_b),Ga),hAPP(fun(hoare_1656922687triple(X_b),bool),fun(hoare_1656922687triple(X_b),bool),hAPP(hoare_1656922687triple(X_b),fun(fun(hoare_1656922687triple(X_b),bool),fun(hoare_1656922687triple(X_b),bool)),insert(hoare_1656922687triple(X_b)),hAPP(fun(X_b,fun(state,bool)),hoare_1656922687triple(X_b),hAPP(com,fun(fun(X_b,fun(state,bool)),hoare_1656922687triple(X_b)),hAPP(fun(X_b,fun(state,bool)),fun(com,fun(fun(X_b,fun(state,bool)),hoare_1656922687triple(X_b))),hoare_246368825triple(X_b),Pa),Ca),Q_1)),bot_bot(fun(hoare_1656922687triple(X_b),bool)))))
       <= hBOOL(C) )
     => hBOOL(hAPP(fun(hoare_1656922687triple(X_b),bool),bool,hAPP(fun(hoare_1656922687triple(X_b),bool),fun(fun(hoare_1656922687triple(X_b),bool),bool),hoare_279057269derivs(X_b),Ga),hAPP(fun(hoare_1656922687triple(X_b),bool),fun(hoare_1656922687triple(X_b),bool),hAPP(hoare_1656922687triple(X_b),fun(fun(hoare_1656922687triple(X_b),bool),fun(hoare_1656922687triple(X_b),bool)),insert(hoare_1656922687triple(X_b)),hAPP(fun(X_b,fun(state,bool)),hoare_1656922687triple(X_b),hAPP(com,fun(fun(X_b,fun(state,bool)),hoare_1656922687triple(X_b)),hAPP(fun(X_b,fun(state,bool)),fun(com,fun(fun(X_b,fun(state,bool)),hoare_1656922687triple(X_b))),hoare_246368825triple(X_b),hAPP(bool,fun(X_b,fun(state,bool)),hAPP(fun(X_b,fun(bool,fun(state,bool))),fun(bool,fun(X_b,fun(state,bool))),combc(X_b,bool,fun(state,bool)),hAPP(fun(X_b,fun(state,fun(bool,bool))),fun(X_b,fun(bool,fun(state,bool))),hAPP(fun(fun(state,fun(bool,bool)),fun(bool,fun(state,bool))),fun(fun(X_b,fun(state,fun(bool,bool))),fun(X_b,fun(bool,fun(state,bool)))),combb(fun(state,fun(bool,bool)),fun(bool,fun(state,bool)),X_b),combc(state,bool,bool)),hAPP(fun(X_b,fun(state,bool)),fun(X_b,fun(state,fun(bool,bool))),hAPP(fun(fun(state,bool),fun(state,fun(bool,bool))),fun(fun(X_b,fun(state,bool)),fun(X_b,fun(state,fun(bool,bool)))),combb(fun(state,bool),fun(state,fun(bool,bool)),X_b),hAPP(fun(bool,fun(bool,bool)),fun(fun(state,bool),fun(state,fun(bool,bool))),combb(bool,fun(bool,bool),state),fconj)),Pa))),C)),Ca),Q_1)),bot_bot(fun(hoare_1656922687triple(X_b),bool))))) ) ).

fof(fact_32_insert__compr,axiom,
    ! [X_b,A_3,B] : hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),A_3),B) = hAPP(fun(X_b,bool),fun(X_b,bool),collect(X_b),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,fun(bool,bool)),fun(fun(X_b,bool),fun(X_b,bool)),combs(X_b,bool,bool),hAPP(fun(X_b,bool),fun(X_b,fun(bool,bool)),hAPP(fun(bool,fun(bool,bool)),fun(fun(X_b,bool),fun(X_b,fun(bool,bool))),combb(bool,fun(bool,bool),X_b),fdisj),hAPP(X_b,fun(X_b,bool),hAPP(fun(X_b,fun(X_b,bool)),fun(X_b,fun(X_b,bool)),combc(X_b,X_b,bool),fequal(X_b)),A_3))),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,fun(fun(X_b,bool),bool)),fun(fun(X_b,bool),fun(X_b,bool)),combc(X_b,fun(X_b,bool),bool),member(X_b)),B))) ).

fof(fact_360_asm,axiom,
    ! [X_b,Ts,Ga] :
      ( hBOOL(hAPP(fun(hoare_1656922687triple(X_b),bool),bool,hAPP(fun(hoare_1656922687triple(X_b),bool),fun(fun(hoare_1656922687triple(X_b),bool),bool),hoare_279057269derivs(X_b),Ga),Ts))
     <= hBOOL(hAPP(fun(hoare_1656922687triple(X_b),bool),bool,hAPP(fun(hoare_1656922687triple(X_b),bool),fun(fun(hoare_1656922687triple(X_b),bool),bool),ord_less_eq(fun(hoare_1656922687triple(X_b),bool)),Ts),Ga)) ) ).

fof(fact_311_ord__eq__le__trans,axiom,
    ! [X_a] :
      ( ord(X_a)
     => ! [C_1,A_2,B_1] :
          ( ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),A_2),C_1))
           <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),B_1),C_1)) )
         <= A_2 = B_1 ) ) ).

fof(arity_HOL_Obool___Lattices_Obounded__lattice__bot,axiom,
    bounded_lattice_bot(bool) ).

fof(arity_Nat_Onat___Lattices_Osemilattice__inf,axiom,
    semilattice_inf(nat) ).

fof(fact_475_inf__commute,axiom,
    ! [X_a] :
      ( ! [X,Y] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),Y),X) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),X),Y)
     <= semilattice_inf(X_a) ) ).

fof(fact_315_order__eq__iff,axiom,
    ! [X_b] :
      ( order(X_b)
     => ! [X_1,Y_1] :
          ( ti(X_b,X_1) = ti(X_b,Y_1)
        <=> ( hBOOL(hAPP(X_b,bool,hAPP(X_b,fun(X_b,bool),ord_less_eq(X_b),X_1),Y_1))
            & hBOOL(hAPP(X_b,bool,hAPP(X_b,fun(X_b,bool),ord_less_eq(X_b),Y_1),X_1)) ) ) ) ).

fof(tsy_c_fTrue_res,axiom,
    fTrue = ti(bool,fTrue) ).

fof(fact_474_inf__sup__aci_I1_J,axiom,
    ! [X_a] :
      ( lattice(X_a)
     => ! [X,Y] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),X),Y) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),Y),X) ) ).

fof(fact_29_insert__commute,axiom,
    ! [X_b,X_1,Y_1,A_1] : hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),X_1),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),Y_1),A_1)) = hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),Y_1),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),X_1),A_1)) ).

fof(fact_380_le__funI,axiom,
    ! [X_b,X_c] :
      ( ord(X_c)
     => ! [F,G] :
          ( hBOOL(hAPP(fun(X_b,X_c),bool,hAPP(fun(X_b,X_c),fun(fun(X_b,X_c),bool),ord_less_eq(fun(X_b,X_c)),F),G))
         <= ! [X_2] : hBOOL(hAPP(X_c,bool,hAPP(X_c,fun(X_c,bool),ord_less_eq(X_c),hAPP(X_b,X_c,F,X_2)),hAPP(X_b,X_c,G,X_2))) ) ) ).

fof(fact_100_the1__equality,axiom,
    ! [X_b,A_3,Pa] :
      ( ? [X_2] :
          ( ! [Y_2] :
              ( ti(X_b,Y_2) = ti(X_b,X_2)
             <= hBOOL(hAPP(X_b,bool,Pa,Y_2)) )
          & hBOOL(hAPP(X_b,bool,Pa,X_2)) )
     => ( ti(X_b,A_3) = hAPP(fun(X_b,bool),X_b,the(X_b),Pa)
       <= hBOOL(hAPP(X_b,bool,Pa,A_3)) ) ) ).

fof(fact_492_Diff__Int,axiom,
    ! [X_b,A_1,B,C] : hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),minus_minus(fun(X_b,bool)),A_1),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_inf_inf(fun(X_b,bool)),B),C)) = hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_sup_sup(fun(X_b,bool)),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),minus_minus(fun(X_b,bool)),A_1),B)),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),minus_minus(fun(X_b,bool)),A_1),C)) ).

fof(fact_302_linorder__le__cases,axiom,
    ! [X_a] :
      ( ! [X,Y] :
          ( ~ hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X),Y))
         => hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),Y),X)) )
     <= linorder(X_a) ) ).

fof(fact_279_sup_Oleft__commute,axiom,
    ! [X_a] :
      ( ! [B_1,A_2,C_1] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),B_1),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),A_2),C_1)) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),A_2),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),B_1),C_1))
     <= semilattice_sup(X_a) ) ).

fof(fact_211_fold1__insert,axiom,
    ! [X_b] :
      ( ab_semigroup_mult(X_b)
     => ! [X_1,A_1] :
          ( ti(fun(X_b,bool),A_1) != bot_bot(fun(X_b,bool))
         => ( ( hAPP(fun(X_b,bool),X_b,hAPP(fun(X_b,fun(X_b,X_b)),fun(fun(X_b,bool),X_b),finite_fold1(X_b),times_times(X_b)),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),X_1),A_1)) = hAPP(X_b,X_b,hAPP(X_b,fun(X_b,X_b),times_times(X_b),X_1),hAPP(fun(X_b,bool),X_b,hAPP(fun(X_b,fun(X_b,X_b)),fun(fun(X_b,bool),X_b),finite_fold1(X_b),times_times(X_b)),A_1))
             <= ~ hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),X_1),A_1)) )
           <= hBOOL(hAPP(fun(X_b,bool),bool,finite_finite_1(X_b),A_1)) ) ) ) ).

fof(fact_232_fold1__in,axiom,
    ! [X_b] :
      ( ab_semigroup_mult(X_b)
     => ! [A_1] :
          ( hBOOL(hAPP(fun(X_b,bool),bool,finite_finite_1(X_b),A_1))
         => ( ( ! [X_2,Y_2] : hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),hAPP(X_b,X_b,hAPP(X_b,fun(X_b,X_b),times_times(X_b),X_2),Y_2)),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),X_2),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),Y_2),bot_bot(fun(X_b,bool))))))
             => hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),hAPP(fun(X_b,bool),X_b,hAPP(fun(X_b,fun(X_b,X_b)),fun(fun(X_b,bool),X_b),finite_fold1(X_b),times_times(X_b)),A_1)),A_1)) )
           <= bot_bot(fun(X_b,bool)) != ti(fun(X_b,bool),A_1) ) ) ) ).

fof(fact_442_Inf__fin_Oidem,axiom,
    ! [X_a] :
      ( lattice(X_a)
     => ! [X] : ti(X_a,X) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),X),X) ) ).

fof(fact_478_inf__left__idem,axiom,
    ! [X_a] :
      ( ! [X,Y] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),X),Y) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),X),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),X),Y))
     <= semilattice_inf(X_a) ) ).

fof(help_ti_idem,axiom,
    ! [T,A] : ti(T,ti(T,A)) = ti(T,A) ).

fof(fact_72_image__is__empty,axiom,
    ! [X_c,X_b,F,A_1] :
      ( bot_bot(fun(X_b,bool)) = hAPP(fun(X_c,bool),fun(X_b,bool),hAPP(fun(X_c,X_b),fun(fun(X_c,bool),fun(X_b,bool)),image(X_c,X_b),F),A_1)
    <=> bot_bot(fun(X_c,bool)) = ti(fun(X_c,bool),A_1) ) ).

fof(fact_14_Collect__conv__if2,axiom,
    ! [X_b,Pa,A_3] :
      ( ( hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),A_3),bot_bot(fun(X_b,bool))) = hAPP(fun(X_b,bool),fun(X_b,bool),collect(X_b),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,fun(bool,bool)),fun(fun(X_b,bool),fun(X_b,bool)),combs(X_b,bool,bool),hAPP(fun(X_b,bool),fun(X_b,fun(bool,bool)),hAPP(fun(bool,fun(bool,bool)),fun(fun(X_b,bool),fun(X_b,fun(bool,bool))),combb(bool,fun(bool,bool),X_b),fconj),hAPP(X_b,fun(X_b,bool),fequal(X_b),A_3))),Pa))
       <= hBOOL(hAPP(X_b,bool,Pa,A_3)) )
      & ( ~ hBOOL(hAPP(X_b,bool,Pa,A_3))
       => bot_bot(fun(X_b,bool)) = hAPP(fun(X_b,bool),fun(X_b,bool),collect(X_b),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,fun(bool,bool)),fun(fun(X_b,bool),fun(X_b,bool)),combs(X_b,bool,bool),hAPP(fun(X_b,bool),fun(X_b,fun(bool,bool)),hAPP(fun(bool,fun(bool,bool)),fun(fun(X_b,bool),fun(X_b,fun(bool,bool))),combb(bool,fun(bool,bool),X_b),fconj),hAPP(X_b,fun(X_b,bool),fequal(X_b),A_3))),Pa)) ) ) ).

fof(fact_348_rev__predicate1D,axiom,
    ! [X_b,Q_1,Pa,X_1] :
      ( ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),ord_less_eq(fun(X_b,bool)),Pa),Q_1))
       => hBOOL(hAPP(X_b,bool,Q_1,X_1)) )
     <= hBOOL(hAPP(X_b,bool,Pa,X_1)) ) ).

fof(fact_479_inf_Oleft__commute,axiom,
    ! [X_a] :
      ( semilattice_inf(X_a)
     => ! [B_1,A_2,C_1] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),B_1),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),A_2),C_1)) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),A_2),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),B_1),C_1)) ) ).

fof(fact_441_Un__Int__assoc__eq,axiom,
    ! [X_b,A_1,B,C] :
      ( hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_sup_sup(fun(X_b,bool)),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_inf_inf(fun(X_b,bool)),A_1),B)),C) = hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_inf_inf(fun(X_b,bool)),A_1),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_sup_sup(fun(X_b,bool)),B),C))
    <=> hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),ord_less_eq(fun(X_b,bool)),C),A_1)) ) ).

fof(fact_65_rev__image__eqI,axiom,
    ! [X_c,X_b,Ba,F,X_1,A_1] :
      ( ( hAPP(X_b,X_c,F,X_1) = ti(X_c,Ba)
       => hBOOL(hAPP(fun(X_c,bool),bool,hAPP(X_c,fun(fun(X_c,bool),bool),member(X_c),Ba),hAPP(fun(X_b,bool),fun(X_c,bool),hAPP(fun(X_b,X_c),fun(fun(X_b,bool),fun(X_c,bool)),image(X_b,X_c),F),A_1))) )
     <= hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),X_1),A_1)) ) ).

fof(fact_48_Set_Oset__insert,axiom,
    ! [X_b,X_1,A_1] :
      ( ~ ! [B_2] :
            ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),X_1),B_2))
           <= ti(fun(X_b,bool),A_1) = hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),X_1),B_2) )
     <= hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),X_1),A_1)) ) ).

fof(fact_126_evaln__elim__cases_I4_J,axiom,
    ! [C1,C2,S_1,N_2,T_4] :
      ( hBOOL(hAPP(state,bool,hAPP(nat,fun(state,bool),hAPP(state,fun(nat,fun(state,bool)),hAPP(com,fun(state,fun(nat,fun(state,bool))),evaln,hAPP(com,com,hAPP(com,fun(com,com),semi,C1),C2)),S_1),N_2),T_4))
     => ~ ! [S1_1] :
            ( hBOOL(hAPP(state,bool,hAPP(nat,fun(state,bool),hAPP(state,fun(nat,fun(state,bool)),hAPP(com,fun(state,fun(nat,fun(state,bool))),evaln,C1),S_1),N_2),S1_1))
           => ~ hBOOL(hAPP(state,bool,hAPP(nat,fun(state,bool),hAPP(state,fun(nat,fun(state,bool)),hAPP(com,fun(state,fun(nat,fun(state,bool))),evaln,C2),S1_1),N_2),T_4)) ) ) ).

fof(fact_71_com_Osimps_I9_J,axiom,
    ! [Vname_1,Fun] : hAPP(fun(state,nat),com,hAPP(vname,fun(fun(state,nat),com),ass,Vname_1),Fun) != skip ).

fof(fact_398_Sup__fin_Osingleton,axiom,
    ! [X_b] :
      ( lattice(X_b)
     => ! [X_1] : ti(X_b,X_1) = hAPP(fun(X_b,bool),X_b,big_lattice_Sup_fin(X_b),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),X_1),bot_bot(fun(X_b,bool)))) ) ).

fof(fact_241_sup1CI,axiom,
    ! [X_b,A_1,B,X_1] :
      ( hBOOL(hAPP(X_b,bool,hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_sup_sup(fun(X_b,bool)),A_1),B),X_1))
     <= ( ~ hBOOL(hAPP(X_b,bool,B,X_1))
       => hBOOL(hAPP(X_b,bool,A_1,X_1)) ) ) ).

fof(fact_285_inf__sup__aci_I5_J,axiom,
    ! [X_a] :
      ( ! [X,Y] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),X),Y) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),Y),X)
     <= lattice(X_a) ) ).

fof(fact_413_inf1I,axiom,
    ! [X_b,B,A_1,X_1] :
      ( ( hBOOL(hAPP(X_b,bool,B,X_1))
       => hBOOL(hAPP(X_b,bool,hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_inf_inf(fun(X_b,bool)),A_1),B),X_1)) )
     <= hBOOL(hAPP(X_b,bool,A_1,X_1)) ) ).

fof(fact_136_folding__one_Oinsert,axiom,
    ! [X_b,X_1,A_1,F,F_1] :
      ( hBOOL(hAPP(fun(fun(X_b,bool),X_b),bool,hAPP(fun(X_b,fun(X_b,X_b)),fun(fun(fun(X_b,bool),X_b),bool),finite_folding_one(X_b),F),F_1))
     => ( hBOOL(hAPP(fun(X_b,bool),bool,finite_finite_1(X_b),A_1))
       => ( ( hAPP(X_b,X_b,hAPP(X_b,fun(X_b,X_b),F,X_1),hAPP(fun(X_b,bool),X_b,F_1,A_1)) = hAPP(fun(X_b,bool),X_b,F_1,hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),X_1),A_1))
           <= ti(fun(X_b,bool),A_1) != bot_bot(fun(X_b,bool)) )
         <= ~ hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),X_1),A_1)) ) ) ) ).

fof(fact_379_image__subsetI,axiom,
    ! [X_c,X_b,F,B,A_1] :
      ( hBOOL(hAPP(fun(X_c,bool),bool,hAPP(fun(X_c,bool),fun(fun(X_c,bool),bool),ord_less_eq(fun(X_c,bool)),hAPP(fun(X_b,bool),fun(X_c,bool),hAPP(fun(X_b,X_c),fun(fun(X_b,bool),fun(X_c,bool)),image(X_b,X_c),F),A_1)),B))
     <= ! [X_2] :
          ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),X_2),A_1))
         => hBOOL(hAPP(fun(X_c,bool),bool,hAPP(X_c,fun(fun(X_c,bool),bool),member(X_c),hAPP(X_b,X_c,F,X_2)),B)) ) ) ).

fof(fact_73_image__empty,axiom,
    ! [X_c,X_b,F] : hAPP(fun(X_c,bool),fun(X_b,bool),hAPP(fun(X_c,X_b),fun(fun(X_c,bool),fun(X_b,bool)),image(X_c,X_b),F),bot_bot(fun(X_c,bool))) = bot_bot(fun(X_b,bool)) ).

fof(fact_429_inf__sup__ord_I2_J,axiom,
    ! [X_a] :
      ( ! [X,Y] : hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),X),Y)),Y))
     <= lattice(X_a) ) ).

fof(fact_245_sup__le__fold__sup,axiom,
    ! [X_b] :
      ( ! [Ba,A_3,A_1] :
          ( ( hBOOL(hAPP(X_b,bool,hAPP(X_b,fun(X_b,bool),ord_less_eq(X_b),hAPP(X_b,X_b,hAPP(X_b,fun(X_b,X_b),semilattice_sup_sup(X_b),A_3),Ba)),hAPP(fun(X_b,bool),X_b,hAPP(X_b,fun(fun(X_b,bool),X_b),hAPP(fun(X_b,fun(X_b,X_b)),fun(X_b,fun(fun(X_b,bool),X_b)),finite_fold(X_b,X_b),semilattice_sup_sup(X_b)),Ba),A_1)))
           <= hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),A_3),A_1)) )
         <= hBOOL(hAPP(fun(X_b,bool),bool,finite_finite_1(X_b),A_1)) )
     <= semilattice_sup(X_b) ) ).

fof(fact_52_com_Osimps_I13_J,axiom,
    ! [Com1_2,Com2_2] : hAPP(com,com,hAPP(com,fun(com,com),semi,Com1_2),Com2_2) != skip ).

fof(fact_208_comp__fun__commute_Ofold__graph__insertE,axiom,
    ! [X_b,X_c,Z_1,X_1,A_1,V,F] :
      ( hBOOL(hAPP(fun(X_b,fun(X_c,X_c)),bool,finite100568337ommute(X_b,X_c),F))
     => ( ( ~ ! [Y_2] :
                ( ~ hBOOL(hAPP(X_c,bool,hAPP(fun(X_b,bool),fun(X_c,bool),hAPP(X_c,fun(fun(X_b,bool),fun(X_c,bool)),hAPP(fun(X_b,fun(X_c,X_c)),fun(X_c,fun(fun(X_b,bool),fun(X_c,bool))),finite_fold_graph(X_b,X_c),F),Z_1),A_1),Y_2))
               <= ti(X_c,V) = hAPP(X_c,X_c,hAPP(X_b,fun(X_c,X_c),F,X_1),Y_2) )
         <= ~ hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),X_1),A_1)) )
       <= hBOOL(hAPP(X_c,bool,hAPP(fun(X_b,bool),fun(X_c,bool),hAPP(X_c,fun(fun(X_b,bool),fun(X_c,bool)),hAPP(fun(X_b,fun(X_c,X_c)),fun(X_c,fun(fun(X_b,bool),fun(X_c,bool))),finite_fold_graph(X_b,X_c),F),Z_1),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),X_1),A_1)),V)) ) ) ).

fof(fact_262_Diff__partition,axiom,
    ! [X_b,A_1,B] :
      ( hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_sup_sup(fun(X_b,bool)),A_1),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),minus_minus(fun(X_b,bool)),B),A_1)) = ti(fun(X_b,bool),B)
     <= hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),ord_less_eq(fun(X_b,bool)),A_1),B)) ) ).

fof(fact_376_subsetI,axiom,
    ! [X_b,B,A_1] :
      ( ! [X_2] :
          ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),X_2),B))
         <= hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),X_2),A_1)) )
     => hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),ord_less_eq(fun(X_b,bool)),A_1),B)) ) ).

fof(arity_HOL_Obool___Lattices_Obounded__lattice,axiom,
    bounded_lattice(bool) ).

fof(fact_141_finite__Collect__disjI,axiom,
    ! [X_b,Pa,Q_1] :
      ( ( hBOOL(hAPP(fun(X_b,bool),bool,finite_finite_1(X_b),hAPP(fun(X_b,bool),fun(X_b,bool),collect(X_b),Q_1)))
        & hBOOL(hAPP(fun(X_b,bool),bool,finite_finite_1(X_b),hAPP(fun(X_b,bool),fun(X_b,bool),collect(X_b),Pa))) )
    <=> hBOOL(hAPP(fun(X_b,bool),bool,finite_finite_1(X_b),hAPP(fun(X_b,bool),fun(X_b,bool),collect(X_b),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,fun(bool,bool)),fun(fun(X_b,bool),fun(X_b,bool)),combs(X_b,bool,bool),hAPP(fun(X_b,bool),fun(X_b,fun(bool,bool)),hAPP(fun(bool,fun(bool,bool)),fun(fun(X_b,bool),fun(X_b,fun(bool,bool))),combb(bool,fun(bool,bool),X_b),fdisj),Pa)),Q_1)))) ) ).

fof(fact_82_the__eq__trivial,axiom,
    ! [X_b,A_3] : ti(X_b,A_3) = hAPP(fun(X_b,bool),X_b,the(X_b),hAPP(X_b,fun(X_b,bool),hAPP(fun(X_b,fun(X_b,bool)),fun(X_b,fun(X_b,bool)),combc(X_b,X_b,bool),fequal(X_b)),A_3)) ).

fof(tsy_c_Big__Operators_Olattice__class_OSup__fin_res,axiom,
    ! [X_b] :
      ( lattice(X_b)
     => ti(fun(fun(X_b,bool),X_b),big_lattice_Sup_fin(X_b)) = big_lattice_Sup_fin(X_b) ) ).

fof(fact_99_theI,axiom,
    ! [X_b,Pa,A_3] :
      ( ( hBOOL(hAPP(X_b,bool,Pa,hAPP(fun(X_b,bool),X_b,the(X_b),Pa)))
       <= ! [X_2] :
            ( hBOOL(hAPP(X_b,bool,Pa,X_2))
           => ti(X_b,X_2) = ti(X_b,A_3) ) )
     <= hBOOL(hAPP(X_b,bool,Pa,A_3)) ) ).

fof(fact_292_sup__ge1,axiom,
    ! [X_a] :
      ( ! [X,Y] : hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),X),Y)))
     <= semilattice_sup(X_a) ) ).

fof(fact_237_equalityI,axiom,
    ! [X_b,A_1,B] :
      ( ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),ord_less_eq(fun(X_b,bool)),B),A_1))
       => ti(fun(X_b,bool),A_1) = ti(fun(X_b,bool),B) )
     <= hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),ord_less_eq(fun(X_b,bool)),A_1),B)) ) ).

fof(fact_309_ord__le__eq__trans,axiom,
    ! [X_a] :
      ( ord(X_a)
     => ! [C_1,A_2,B_1] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),A_2),B_1))
         => ( B_1 = C_1
           => hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),A_2),C_1)) ) ) ) ).

fof(fact_107_evaln_OSemi,axiom,
    ! [C1,S2,C0,S0,N_2,S1] :
      ( hBOOL(hAPP(state,bool,hAPP(nat,fun(state,bool),hAPP(state,fun(nat,fun(state,bool)),hAPP(com,fun(state,fun(nat,fun(state,bool))),evaln,C0),S0),N_2),S1))
     => ( hBOOL(hAPP(state,bool,hAPP(nat,fun(state,bool),hAPP(state,fun(nat,fun(state,bool)),hAPP(com,fun(state,fun(nat,fun(state,bool))),evaln,hAPP(com,com,hAPP(com,fun(com,com),semi,C0),C1)),S0),N_2),S2))
       <= hBOOL(hAPP(state,bool,hAPP(nat,fun(state,bool),hAPP(state,fun(nat,fun(state,bool)),hAPP(com,fun(state,fun(nat,fun(state,bool))),evaln,C1),S1),N_2),S2)) ) ) ).

fof(fact_89_vname_Osimps_I2_J,axiom,
    ! [Loc_2,Loc_3] :
      ( hAPP(loc_1,vname,loc,Loc_3) = hAPP(loc_1,vname,loc,Loc_2)
    <=> ti(loc_1,Loc_2) = ti(loc_1,Loc_3) ) ).

fof(tsy_c_Set_Othe__elem_res,axiom,
    ! [X_b] : ti(fun(fun(X_b,bool),X_b),the_elem(X_b)) = the_elem(X_b) ).

fof(fact_295_sup__bot__right,axiom,
    ! [X_a] :
      ( ! [X] : ti(X_a,X) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),X),bot_bot(X_a))
     <= bounded_lattice_bot(X_a) ) ).

fof(arity_HOL_Obool___Lattices_Olattice,axiom,
    lattice(bool) ).

fof(fact_197_mult__left__idem,axiom,
    ! [X_a] :
      ( ab_sem1668676832m_mult(X_a)
     => ! [A_2,B_1] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),times_times(X_a),A_2),B_1) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),times_times(X_a),A_2),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),times_times(X_a),A_2),B_1)) ) ).

fof(arity_Nat_Onat___Orderings_Obot,axiom,
    bot(nat) ).

fof(fact_361_comp__fun__idem__sup,axiom,
    ! [X_b] :
      ( hBOOL(hAPP(fun(X_b,fun(X_b,X_b)),bool,finite_comp_fun_idem(X_b,X_b),semilattice_sup_sup(X_b)))
     <= semilattice_sup(X_b) ) ).

fof(fact_171_Diff__empty,axiom,
    ! [X_b,A_1] : hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),minus_minus(fun(X_b,bool)),A_1),bot_bot(fun(X_b,bool))) = ti(fun(X_b,bool),A_1) ).

fof(fact_320_equalityE,axiom,
    ! [X_b,A_1,B] :
      ( ~ ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),ord_less_eq(fun(X_b,bool)),A_1),B))
         => ~ hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),ord_less_eq(fun(X_b,bool)),B),A_1)) )
     <= ti(fun(X_b,bool),B) = ti(fun(X_b,bool),A_1) ) ).

fof(fact_167_Diff__iff,axiom,
    ! [X_b,Ca,A_1,B] :
      ( ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),Ca),A_1))
        & ~ hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),Ca),B)) )
    <=> hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),Ca),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),minus_minus(fun(X_b,bool)),A_1),B))) ) ).

fof(fact_194_comp__fun__commute_Ofold__graph__insertE__aux,axiom,
    ! [X_b,X_c,A_3,Z_1,A_1,Y_1,F] :
      ( ( ( ? [Y_3] :
              ( hAPP(X_c,X_c,hAPP(X_b,fun(X_c,X_c),F,A_3),Y_3) = ti(X_c,Y_1)
              & hBOOL(hAPP(X_c,bool,hAPP(fun(X_b,bool),fun(X_c,bool),hAPP(X_c,fun(fun(X_b,bool),fun(X_c,bool)),hAPP(fun(X_b,fun(X_c,X_c)),fun(X_c,fun(fun(X_b,bool),fun(X_c,bool))),finite_fold_graph(X_b,X_c),F),Z_1),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),minus_minus(fun(X_b,bool)),A_1),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),A_3),bot_bot(fun(X_b,bool))))),Y_3)) )
         <= hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),A_3),A_1)) )
       <= hBOOL(hAPP(X_c,bool,hAPP(fun(X_b,bool),fun(X_c,bool),hAPP(X_c,fun(fun(X_b,bool),fun(X_c,bool)),hAPP(fun(X_b,fun(X_c,X_c)),fun(X_c,fun(fun(X_b,bool),fun(X_c,bool))),finite_fold_graph(X_b,X_c),F),Z_1),A_1),Y_1)) )
     <= hBOOL(hAPP(fun(X_b,fun(X_c,X_c)),bool,finite100568337ommute(X_b,X_c),F)) ) ).

fof(fact_409_Sup__fin_Ohom__commute,axiom,
    ! [X_b] :
      ( ! [N,H] :
          ( ( hBOOL(hAPP(fun(X_b,bool),bool,finite_finite_1(X_b),N))
           => ( hAPP(fun(X_b,bool),X_b,big_lattice_Sup_fin(X_b),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,X_b),fun(fun(X_b,bool),fun(X_b,bool)),image(X_b,X_b),H),N)) = hAPP(X_b,X_b,H,hAPP(fun(X_b,bool),X_b,big_lattice_Sup_fin(X_b),N))
             <= ti(fun(X_b,bool),N) != bot_bot(fun(X_b,bool)) ) )
         <= ! [X_2,Y_2] : hAPP(X_b,X_b,H,hAPP(X_b,X_b,hAPP(X_b,fun(X_b,X_b),semilattice_sup_sup(X_b),X_2),Y_2)) = hAPP(X_b,X_b,hAPP(X_b,fun(X_b,X_b),semilattice_sup_sup(X_b),hAPP(X_b,X_b,H,X_2)),hAPP(X_b,X_b,H,Y_2)) )
     <= lattice(X_b) ) ).

fof(fact_3_hoare__derivs_Oinsert,axiom,
    ! [X_b,Ts,Ga,T_5] :
      ( hBOOL(hAPP(fun(hoare_1656922687triple(X_b),bool),bool,hAPP(fun(hoare_1656922687triple(X_b),bool),fun(fun(hoare_1656922687triple(X_b),bool),bool),hoare_279057269derivs(X_b),Ga),hAPP(fun(hoare_1656922687triple(X_b),bool),fun(hoare_1656922687triple(X_b),bool),hAPP(hoare_1656922687triple(X_b),fun(fun(hoare_1656922687triple(X_b),bool),fun(hoare_1656922687triple(X_b),bool)),insert(hoare_1656922687triple(X_b)),T_5),bot_bot(fun(hoare_1656922687triple(X_b),bool)))))
     => ( hBOOL(hAPP(fun(hoare_1656922687triple(X_b),bool),bool,hAPP(fun(hoare_1656922687triple(X_b),bool),fun(fun(hoare_1656922687triple(X_b),bool),bool),hoare_279057269derivs(X_b),Ga),Ts))
       => hBOOL(hAPP(fun(hoare_1656922687triple(X_b),bool),bool,hAPP(fun(hoare_1656922687triple(X_b),bool),fun(fun(hoare_1656922687triple(X_b),bool),bool),hoare_279057269derivs(X_b),Ga),hAPP(fun(hoare_1656922687triple(X_b),bool),fun(hoare_1656922687triple(X_b),bool),hAPP(hoare_1656922687triple(X_b),fun(fun(hoare_1656922687triple(X_b),bool),fun(hoare_1656922687triple(X_b),bool)),insert(hoare_1656922687triple(X_b)),T_5),Ts))) ) ) ).

fof(fact_106_fold1Set_Ointros,axiom,
    ! [X_b,F,A_3,A_1,X_1] :
      ( hBOOL(hAPP(X_b,bool,hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),hAPP(fun(X_b,fun(X_b,X_b)),fun(X_b,fun(fun(X_b,bool),fun(X_b,bool))),finite_fold_graph(X_b,X_b),F),A_3),A_1),X_1))
     => ( hBOOL(hAPP(X_b,bool,hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,fun(X_b,X_b)),fun(fun(X_b,bool),fun(X_b,bool)),finite_fold1Set(X_b),F),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),A_3),A_1)),X_1))
       <= ~ hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),A_3),A_1)) ) ) ).

