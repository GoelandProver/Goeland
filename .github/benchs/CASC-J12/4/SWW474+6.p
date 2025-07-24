fof(fact_283_evalc_OBody,axiom,
    ! [Pn,S0,S1_1] :
      ( hBOOL(hAPP(state,bool,hAPP(state,fun(state,bool),hAPP(com,fun(state,fun(state,bool)),evalc,hAPP(option(com),com,the(com),hAPP(pname,option(com),body,Pn))),S0),S1_1))
     => hBOOL(hAPP(state,bool,hAPP(state,fun(state,bool),hAPP(com,fun(state,fun(state,bool)),evalc,hAPP(pname,com,body_1,Pn)),S0),S1_1)) ) ).

fof(fact_388_distrib__imp1,axiom,
    ! [X_a] :
      ( ! [X,Y,Z_1] :
          ( hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),X),Y)),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),X),Z_1)) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),X),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),Y),Z_1))
         <= ! [X_1,Y_1,Z_2] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),X_1),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),Y_1),Z_2)) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),X_1),Y_1)),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),X_1),Z_2)) )
     <= lattice(X_a) ) ).

fof(fact_190_elem__set,axiom,
    ! [X_a,X_2,Xo] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_2),hAPP(option(X_a),fun(X_a,bool),set(X_a),Xo)))
    <=> hAPP(X_a,option(X_a),some(X_a),X_2) = ti(option(X_a),Xo) ) ).

fof(fact_465_fun__upd__upd,axiom,
    ! [X_b,X_a,F,X_2,Y_2,Z] : hAPP(X_b,fun(X_a,X_b),hAPP(X_a,fun(X_b,fun(X_a,X_b)),hAPP(fun(X_a,X_b),fun(X_a,fun(X_b,fun(X_a,X_b))),fun_upd(X_a,X_b),F),X_2),Z) = hAPP(X_b,fun(X_a,X_b),hAPP(X_a,fun(X_b,fun(X_a,X_b)),hAPP(fun(X_a,X_b),fun(X_a,fun(X_b,fun(X_a,X_b))),fun_upd(X_a,X_b),hAPP(X_b,fun(X_a,X_b),hAPP(X_a,fun(X_b,fun(X_a,X_b)),hAPP(fun(X_a,X_b),fun(X_a,fun(X_b,fun(X_a,X_b))),fun_upd(X_a,X_b),F),X_2),Y_2)),X_2),Z) ).

fof(fact_241_WTs__elim__cases_I6_J,axiom,
    ! [B_1,C_1] :
      ( hBOOL(hAPP(com,bool,wt,C_1))
     <= hBOOL(hAPP(com,bool,wt,hAPP(com,com,hAPP(fun(state,bool),fun(com,com),while,B_1),C_1))) ) ).

fof(fact_383_image__Int__subset,axiom,
    ! [X_a,X_b,F,A_1,B] : hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),hAPP(fun(X_b,bool),fun(X_a,bool),hAPP(fun(X_b,X_a),fun(fun(X_b,bool),fun(X_a,bool)),image(X_b,X_a),F),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_inf_inf(fun(X_b,bool)),A_1),B))),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),hAPP(fun(X_b,bool),fun(X_a,bool),hAPP(fun(X_b,X_a),fun(fun(X_b,bool),fun(X_a,bool)),image(X_b,X_a),F),A_1)),hAPP(fun(X_b,bool),fun(X_a,bool),hAPP(fun(X_b,X_a),fun(fun(X_b,bool),fun(X_a,bool)),image(X_b,X_a),F),B)))) ).

fof(help_fimplies_1_1_U,axiom,
    ! [Q,P] :
      ( hBOOL(hAPP(bool,bool,hAPP(bool,fun(bool,bool),fimplies,P),Q))
      | hBOOL(P) ) ).

fof(fact_434_Un__Diff__cancel2,axiom,
    ! [X_a,B,A_1] : hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),B),A_1)),A_1) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),B),A_1) ).

fof(tsy_c_Hoare__Mirabelle__nrugjuseim_Ohoare__valids_res,axiom,
    ! [X_a] : hoare_2027193591valids(X_a) = ti(fun(fun(hoare_1656922687triple(X_a),bool),fun(fun(hoare_1656922687triple(X_a),bool),bool)),hoare_2027193591valids(X_a)) ).

fof(fact_230_folding__one__idem_Oinsert__idem,axiom,
    ! [X_a,X_2,A_1,F,Fa] :
      ( hBOOL(hAPP(fun(fun(X_a,bool),X_a),bool,hAPP(fun(X_a,fun(X_a,X_a)),fun(fun(fun(X_a,bool),X_a),bool),finite2073411215e_idem(X_a),F),Fa))
     => ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1))
       => ( hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),F,X_2),hAPP(fun(X_a,bool),X_a,Fa,A_1)) = hAPP(fun(X_a,bool),X_a,Fa,hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),A_1))
         <= ti(fun(X_a,bool),A_1) != bot_bot(fun(X_a,bool)) ) ) ) ).

fof(tsy_c_COMBB_res,axiom,
    ! [X_b,X_c,X_a] : combb(X_b,X_c,X_a) = ti(fun(fun(X_b,X_c),fun(fun(X_a,X_b),fun(X_a,X_c))),combb(X_b,X_c,X_a)) ).

fof(fact_252_com_Osimps_I49_J,axiom,
    ! [Pname,Com1_1,Com2_1] : hAPP(com,com,hAPP(com,fun(com,com),semi,Com1_1),Com2_1) != hAPP(pname,com,body_1,Pname) ).

fof(fact_133_Un__mono,axiom,
    ! [X_a,B,D_1,A_1,C] :
      ( ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),B),D_1))
       => hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),A_1),B)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),C),D_1))) )
     <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),A_1),C)) ) ).

fof(tsy_c_Hoare__Mirabelle__nrugjuseim_Ohoare__derivs_res,axiom,
    ! [X_a] : hoare_279057269derivs(X_a) = ti(fun(fun(hoare_1656922687triple(X_a),bool),fun(fun(hoare_1656922687triple(X_a),bool),bool)),hoare_279057269derivs(X_a)) ).

fof(fact_115_UnI2,axiom,
    ! [X_a,A_1,C_1,B] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),C_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),A_1),B)))
     <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),C_1),B)) ) ).

fof(tsy_v_Fa_res,hypothesis,
    ti(fun(hoare_1656922687triple(state),bool),fa) = fa ).

fof(tsy_c_COMBI_res,axiom,
    ! [X_a] : combi(X_a) = ti(fun(X_a,X_a),combi(X_a)) ).

fof(fact_40_insert__commute,axiom,
    ! [X_a,X_2,Y_2,A_1] : hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),Y_2),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),A_1)) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),Y_2),A_1)) ).

fof(fact_5_hoare__derivs_Oinsert,axiom,
    ! [X_a,Ts,G_1,T_3] :
      ( ( hBOOL(hAPP(fun(hoare_1656922687triple(X_a),bool),bool,hAPP(fun(hoare_1656922687triple(X_a),bool),fun(fun(hoare_1656922687triple(X_a),bool),bool),hoare_279057269derivs(X_a),G_1),hAPP(fun(hoare_1656922687triple(X_a),bool),fun(hoare_1656922687triple(X_a),bool),hAPP(hoare_1656922687triple(X_a),fun(fun(hoare_1656922687triple(X_a),bool),fun(hoare_1656922687triple(X_a),bool)),insert(hoare_1656922687triple(X_a)),T_3),Ts)))
       <= hBOOL(hAPP(fun(hoare_1656922687triple(X_a),bool),bool,hAPP(fun(hoare_1656922687triple(X_a),bool),fun(fun(hoare_1656922687triple(X_a),bool),bool),hoare_279057269derivs(X_a),G_1),Ts)) )
     <= hBOOL(hAPP(fun(hoare_1656922687triple(X_a),bool),bool,hAPP(fun(hoare_1656922687triple(X_a),bool),fun(fun(hoare_1656922687triple(X_a),bool),bool),hoare_279057269derivs(X_a),G_1),hAPP(fun(hoare_1656922687triple(X_a),bool),fun(hoare_1656922687triple(X_a),bool),hAPP(hoare_1656922687triple(X_a),fun(fun(hoare_1656922687triple(X_a),bool),fun(hoare_1656922687triple(X_a),bool)),insert(hoare_1656922687triple(X_a)),T_3),bot_bot(fun(hoare_1656922687triple(X_a),bool))))) ) ).

fof(fact_201_sup_Oleft__commute,axiom,
    ! [X_a] :
      ( semilattice_sup(X_a)
     => ! [B_2,A_6,C_2] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),B_2),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),A_6),C_2)) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),A_6),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),B_2),C_2)) ) ).

fof(fact_310_Int__empty__left,axiom,
    ! [X_a,B] : hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),bot_bot(fun(X_a,bool))),B) = bot_bot(fun(X_a,bool)) ).

fof(tsy_c_COMBS_res,axiom,
    ! [X_a,X_b,X_c] : ti(fun(fun(X_a,fun(X_b,X_c)),fun(fun(X_a,X_b),fun(X_a,X_c))),combs(X_a,X_b,X_c)) = combs(X_a,X_b,X_c) ).

fof(fact_423_insert__Diff1,axiom,
    ! [X_a,A_1,X_2,B] :
      ( hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),B) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),A_1)),B)
     <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_2),B)) ) ).

fof(fact_303_IntI,axiom,
    ! [X_a,B,C_1,A_1] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),C_1),A_1))
     => ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),C_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),B)))
       <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),C_1),B)) ) ) ).

fof(fact_227_folding__one__idem_Ounion__idem,axiom,
    ! [X_a,B,A_1,F,Fa] :
      ( hBOOL(hAPP(fun(fun(X_a,bool),X_a),bool,hAPP(fun(X_a,fun(X_a,X_a)),fun(fun(fun(X_a,bool),X_a),bool),finite2073411215e_idem(X_a),F),Fa))
     => ( ( bot_bot(fun(X_a,bool)) != ti(fun(X_a,bool),A_1)
         => ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),B))
           => ( bot_bot(fun(X_a,bool)) != ti(fun(X_a,bool),B)
             => hAPP(fun(X_a,bool),X_a,Fa,hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),A_1),B)) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),F,hAPP(fun(X_a,bool),X_a,Fa,A_1)),hAPP(fun(X_a,bool),X_a,Fa,B)) ) ) )
       <= hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1)) ) ) ).

fof(help_If_3_1_T,axiom,
    ! [P] :
      ( fFalse = ti(bool,P)
      | fTrue = ti(bool,P) ) ).

fof(fact_67_finite__insert,axiom,
    ! [X_a,A_3,A_1] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1))
    <=> hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),A_3),A_1))) ) ).

fof(fact_29_empty__Collect__eq,axiom,
    ! [X_a,P_1] :
      ( bot_bot(fun(X_a,bool)) = hAPP(fun(X_a,bool),fun(X_a,bool),collect(X_a),P_1)
    <=> ! [X_1] : ~ hBOOL(hAPP(X_a,bool,P_1,X_1)) ) ).

fof(fact_187_triple_Osimps_I2_J,axiom,
    ! [X_b,X_a,F1,Fun1_1,Com_2,Fun2_1] : hAPP(fun(X_b,fun(state,bool)),X_a,hAPP(com,fun(fun(X_b,fun(state,bool)),X_a),hAPP(fun(X_b,fun(state,bool)),fun(com,fun(fun(X_b,fun(state,bool)),X_a)),F1,Fun1_1),Com_2),Fun2_1) = hAPP(hoare_1656922687triple(X_b),X_a,hAPP(fun(fun(X_b,fun(state,bool)),fun(com,fun(fun(X_b,fun(state,bool)),X_a))),fun(hoare_1656922687triple(X_b),X_a),hoare_1312322281e_case(X_b,X_a),F1),hAPP(fun(X_b,fun(state,bool)),hoare_1656922687triple(X_b),hAPP(com,fun(fun(X_b,fun(state,bool)),hoare_1656922687triple(X_b)),hAPP(fun(X_b,fun(state,bool)),fun(com,fun(fun(X_b,fun(state,bool)),hoare_1656922687triple(X_b))),hoare_246368825triple(X_b),Fun1_1),Com_2),Fun2_1)) ).

fof(fact_277_mk__disjoint__insert,axiom,
    ! [X_a,A_3,A_1] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),A_3),A_1))
     => ? [B_3] :
          ( ~ hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),A_3),B_3))
          & hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),A_3),B_3) = ti(fun(X_a,bool),A_1) ) ) ).

fof(fact_279_equals0I,axiom,
    ! [X_a,A_1] :
      ( ! [Y_1] : ~ hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),Y_1),A_1))
     => bot_bot(fun(X_a,bool)) = ti(fun(X_a,bool),A_1) ) ).

fof(fact_420_Diff__empty,axiom,
    ! [X_a,A_1] : hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),bot_bot(fun(X_a,bool))) = ti(fun(X_a,bool),A_1) ).

fof(tsy_c_COMBK_res,axiom,
    ! [X_a,X_b] : ti(fun(X_a,fun(X_b,X_a)),combk(X_a,X_b)) = combk(X_a,X_b) ).

fof(fact_81_subset__insertI,axiom,
    ! [X_a,B,A_3] : hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),B),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),A_3),B))) ).

fof(arity_HOL_Obool___Lattices_Odistrib__lattice,axiom,
    distrib_lattice(bool) ).

fof(fact_11_finite_OinsertI,axiom,
    ! [X_a,A_3,A_1] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1))
     => hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),A_3),A_1))) ) ).

fof(fact_329_Int__Un__distrib,axiom,
    ! [X_a,A_1,B,C] : hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),B),C)) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),B)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),C)) ).

fof(fact_22_insertE,axiom,
    ! [X_a,A_3,B_1,A_1] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),A_3),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),B_1),A_1)))
     => ( ti(X_a,B_1) != ti(X_a,A_3)
       => hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),A_3),A_1)) ) ) ).

fof(fact_462_map__upd__Some__unfold,axiom,
    ! [X_b,X_a,M,A_3,B_1,X_2,Y_2] :
      ( hAPP(X_b,option(X_a),hAPP(option(X_a),fun(X_b,option(X_a)),hAPP(X_b,fun(option(X_a),fun(X_b,option(X_a))),hAPP(fun(X_b,option(X_a)),fun(X_b,fun(option(X_a),fun(X_b,option(X_a)))),fun_upd(X_b,option(X_a)),M),A_3),hAPP(X_a,option(X_a),some(X_a),B_1)),X_2) = hAPP(X_a,option(X_a),some(X_a),Y_2)
    <=> ( ( ti(X_b,A_3) = ti(X_b,X_2)
          & ti(X_a,Y_2) = ti(X_a,B_1) )
        | ( ti(X_b,X_2) != ti(X_b,A_3)
          & hAPP(X_b,option(X_a),M,X_2) = hAPP(X_a,option(X_a),some(X_a),Y_2) ) ) ) ).

fof(fact_496_option_Orecs_I1_J,axiom,
    ! [X_b,X_a,F1,F2] : hAPP(option(X_b),X_a,hAPP(fun(X_b,X_a),fun(option(X_b),X_a),hAPP(X_a,fun(fun(X_b,X_a),fun(option(X_b),X_a)),option_rec(X_a,X_b),F1),F2),none(X_b)) = ti(X_a,F1) ).

fof(fact_68_subset__empty,axiom,
    ! [X_a,A_1] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),A_1),bot_bot(fun(X_a,bool))))
    <=> ti(fun(X_a,bool),A_1) = bot_bot(fun(X_a,bool)) ) ).

fof(fact_430_Diff__idemp,axiom,
    ! [X_a,A_1,B] : hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),B) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),B)),B) ).

fof(tsy_c_hAPP_arg2,axiom,
    ! [X_a,X_c,B_1_1,B_2_1] : hAPP(X_a,X_c,B_1_1,B_2_1) = hAPP(X_a,X_c,B_1_1,ti(X_a,B_2_1)) ).

fof(fact_73_rev__finite__subset,axiom,
    ! [X_a,A_1,B] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),B))
     => ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1))
       <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),A_1),B)) ) ) ).

fof(fact_221_inf__sup__ord_I4_J,axiom,
    ! [X_a] :
      ( ! [Y,X] : hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),Y),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),X),Y)))
     <= lattice(X_a) ) ).

fof(arity_fun___Lattices_Odistrib__lattice,axiom,
    ! [T_2,T_1] :
      ( distrib_lattice(fun(T_2,T_1))
     <= distrib_lattice(T_1) ) ).

fof(fact_47_set__mp,axiom,
    ! [X_a,X_2,A_1,B] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),A_1),B))
     => ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_2),A_1))
       => hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_2),B)) ) ) ).

fof(fact_224_sup__eq__bot__iff,axiom,
    ! [X_a] :
      ( bounded_lattice_bot(X_a)
     => ! [X_2,Y_2] :
          ( hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),X_2),Y_2) = bot_bot(X_a)
        <=> ( ti(X_a,Y_2) = bot_bot(X_a)
            & ti(X_a,X_2) = bot_bot(X_a) ) ) ) ).

fof(tsy_c_fAll_res,axiom,
    ! [X_a] : fAll(X_a) = ti(fun(fun(X_a,bool),bool),fAll(X_a)) ).

fof(fact_172_conseq1,axiom,
    ! [X_a,P_1,G_1,P_2,C_1,Q_1] :
      ( ( hBOOL(hAPP(fun(hoare_1656922687triple(X_a),bool),bool,hAPP(fun(hoare_1656922687triple(X_a),bool),fun(fun(hoare_1656922687triple(X_a),bool),bool),hoare_279057269derivs(X_a),G_1),hAPP(fun(hoare_1656922687triple(X_a),bool),fun(hoare_1656922687triple(X_a),bool),hAPP(hoare_1656922687triple(X_a),fun(fun(hoare_1656922687triple(X_a),bool),fun(hoare_1656922687triple(X_a),bool)),insert(hoare_1656922687triple(X_a)),hAPP(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a),hAPP(com,fun(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a)),hAPP(fun(X_a,fun(state,bool)),fun(com,fun(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a))),hoare_246368825triple(X_a),P_1),C_1),Q_1)),bot_bot(fun(hoare_1656922687triple(X_a),bool)))))
       <= ! [Z_3,S_3] :
            ( hBOOL(hAPP(state,bool,hAPP(X_a,fun(state,bool),P_1,Z_3),S_3))
           => hBOOL(hAPP(state,bool,hAPP(X_a,fun(state,bool),P_2,Z_3),S_3)) ) )
     <= hBOOL(hAPP(fun(hoare_1656922687triple(X_a),bool),bool,hAPP(fun(hoare_1656922687triple(X_a),bool),fun(fun(hoare_1656922687triple(X_a),bool),bool),hoare_279057269derivs(X_a),G_1),hAPP(fun(hoare_1656922687triple(X_a),bool),fun(hoare_1656922687triple(X_a),bool),hAPP(hoare_1656922687triple(X_a),fun(fun(hoare_1656922687triple(X_a),bool),fun(hoare_1656922687triple(X_a),bool)),insert(hoare_1656922687triple(X_a)),hAPP(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a),hAPP(com,fun(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a)),hAPP(fun(X_a,fun(state,bool)),fun(com,fun(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a))),hoare_246368825triple(X_a),P_2),C_1),Q_1)),bot_bot(fun(hoare_1656922687triple(X_a),bool))))) ) ).

fof(fact_470_fun__upd__idem,axiom,
    ! [X_b,X_a,F,X_2,Y_2] :
      ( hAPP(X_b,X_a,F,X_2) = ti(X_a,Y_2)
     => ti(fun(X_b,X_a),F) = hAPP(X_a,fun(X_b,X_a),hAPP(X_b,fun(X_a,fun(X_b,X_a)),hAPP(fun(X_b,X_a),fun(X_b,fun(X_a,fun(X_b,X_a))),fun_upd(X_b,X_a),F),X_2),Y_2) ) ).

fof(fact_214_sup__absorb1,axiom,
    ! [X_a] :
      ( ! [Y,X] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),Y),X))
         => ti(X_a,X) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),X),Y) )
     <= semilattice_sup(X_a) ) ).

fof(fact_6_derivs__insertD,axiom,
    ! [X_a,G_1,T_3,Ts] :
      ( hBOOL(hAPP(fun(hoare_1656922687triple(X_a),bool),bool,hAPP(fun(hoare_1656922687triple(X_a),bool),fun(fun(hoare_1656922687triple(X_a),bool),bool),hoare_279057269derivs(X_a),G_1),hAPP(fun(hoare_1656922687triple(X_a),bool),fun(hoare_1656922687triple(X_a),bool),hAPP(hoare_1656922687triple(X_a),fun(fun(hoare_1656922687triple(X_a),bool),fun(hoare_1656922687triple(X_a),bool)),insert(hoare_1656922687triple(X_a)),T_3),Ts)))
     => ( hBOOL(hAPP(fun(hoare_1656922687triple(X_a),bool),bool,hAPP(fun(hoare_1656922687triple(X_a),bool),fun(fun(hoare_1656922687triple(X_a),bool),bool),hoare_279057269derivs(X_a),G_1),Ts))
        & hBOOL(hAPP(fun(hoare_1656922687triple(X_a),bool),bool,hAPP(fun(hoare_1656922687triple(X_a),bool),fun(fun(hoare_1656922687triple(X_a),bool),bool),hoare_279057269derivs(X_a),G_1),hAPP(fun(hoare_1656922687triple(X_a),bool),fun(hoare_1656922687triple(X_a),bool),hAPP(hoare_1656922687triple(X_a),fun(fun(hoare_1656922687triple(X_a),bool),fun(hoare_1656922687triple(X_a),bool)),insert(hoare_1656922687triple(X_a)),T_3),bot_bot(fun(hoare_1656922687triple(X_a),bool))))) ) ) ).

fof(fact_15_image__constant,axiom,
    ! [X_b,X_a,C_1,X_2,A_1] :
      ( hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),C_1),bot_bot(fun(X_b,bool))) = hAPP(fun(X_a,bool),fun(X_b,bool),hAPP(fun(X_a,X_b),fun(fun(X_a,bool),fun(X_b,bool)),image(X_a,X_b),hAPP(X_b,fun(X_a,X_b),combk(X_b,X_a),C_1)),A_1)
     <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_2),A_1)) ) ).

fof(fact_243_com_Osimps_I46_J,axiom,
    ! [Com1_3,Com2_3,Fun,Com_1] : hAPP(com,com,hAPP(fun(state,bool),fun(com,com),while,Fun),Com_1) != hAPP(com,com,hAPP(com,fun(com,com),semi,Com1_3),Com2_3) ).

fof(help_If_2_1_T,axiom,
    ! [X_a,X,Y] : ti(X_a,Y) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),hAPP(bool,fun(X_a,fun(X_a,X_a)),if(X_a),fFalse),X),Y) ).

fof(arity_fun___Lattices_Osemilattice__inf,axiom,
    ! [T_2,T_1] :
      ( lattice(T_1)
     => semilattice_inf(fun(T_2,T_1)) ) ).

fof(fact_166_bot__apply,axiom,
    ! [X_b,X_a] :
      ( bot(X_a)
     => ! [X_2] : hAPP(X_b,X_a,bot_bot(fun(X_b,X_a)),X_2) = bot_bot(X_a) ) ).

fof(fact_463_fold__graph_H_Ointros_I1_J,axiom,
    ! [X_b,X_a,F,Z] : hBOOL(hAPP(X_b,bool,hAPP(fun(X_a,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_a,bool),fun(X_b,bool)),hAPP(fun(X_a,fun(X_b,X_b)),fun(X_b,fun(fun(X_a,bool),fun(X_b,bool))),fold_graph(X_a,X_b),F),Z),bot_bot(fun(X_a,bool))),Z)) ).

fof(fact_247_com_Osimps_I59_J,axiom,
    ! [Pname_1,Fun_1,Com_2] : hAPP(com,com,hAPP(fun(state,bool),fun(com,com),while,Fun_1),Com_2) != hAPP(pname,com,body_1,Pname_1) ).

fof(help_fdisj_2_1_U,axiom,
    ! [P,Q] :
      ( hBOOL(hAPP(bool,bool,hAPP(bool,fun(bool,bool),fdisj,P),Q))
      | ~ hBOOL(Q) ) ).

fof(fact_444_override__on__emptyset,axiom,
    ! [X_a,X_b,F,G] : ti(fun(X_a,X_b),F) = hAPP(fun(X_a,bool),fun(X_a,X_b),hAPP(fun(X_a,X_b),fun(fun(X_a,bool),fun(X_a,X_b)),hAPP(fun(X_a,X_b),fun(fun(X_a,X_b),fun(fun(X_a,bool),fun(X_a,X_b))),override_on(X_a,X_b),F),G),bot_bot(fun(X_a,bool))) ).

fof(fact_174_MGF__complete,axiom,
    ! [P_1,Q_1,C_1] :
      ( ( hBOOL(hAPP(fun(hoare_1656922687triple(state),bool),bool,hAPP(fun(hoare_1656922687triple(state),bool),fun(fun(hoare_1656922687triple(state),bool),bool),hoare_279057269derivs(state),bot_bot(fun(hoare_1656922687triple(state),bool))),hAPP(fun(hoare_1656922687triple(state),bool),fun(hoare_1656922687triple(state),bool),hAPP(hoare_1656922687triple(state),fun(fun(hoare_1656922687triple(state),bool),fun(hoare_1656922687triple(state),bool)),insert(hoare_1656922687triple(state)),hAPP(fun(state,fun(state,bool)),hoare_1656922687triple(state),hAPP(com,fun(fun(state,fun(state,bool)),hoare_1656922687triple(state)),hAPP(fun(state,fun(state,bool)),fun(com,fun(fun(state,fun(state,bool)),hoare_1656922687triple(state))),hoare_246368825triple(state),P_1),C_1),Q_1)),bot_bot(fun(hoare_1656922687triple(state),bool)))))
       <= hBOOL(hAPP(fun(hoare_1656922687triple(state),bool),bool,hAPP(fun(hoare_1656922687triple(state),bool),fun(fun(hoare_1656922687triple(state),bool),bool),hoare_2027193591valids(state),bot_bot(fun(hoare_1656922687triple(state),bool))),hAPP(fun(hoare_1656922687triple(state),bool),fun(hoare_1656922687triple(state),bool),hAPP(hoare_1656922687triple(state),fun(fun(hoare_1656922687triple(state),bool),fun(hoare_1656922687triple(state),bool)),insert(hoare_1656922687triple(state)),hAPP(fun(state,fun(state,bool)),hoare_1656922687triple(state),hAPP(com,fun(fun(state,fun(state,bool)),hoare_1656922687triple(state)),hAPP(fun(state,fun(state,bool)),fun(com,fun(fun(state,fun(state,bool)),hoare_1656922687triple(state))),hoare_246368825triple(state),P_1),C_1),Q_1)),bot_bot(fun(hoare_1656922687triple(state),bool))))) )
     <= hBOOL(hAPP(fun(hoare_1656922687triple(state),bool),bool,hAPP(fun(hoare_1656922687triple(state),bool),fun(fun(hoare_1656922687triple(state),bool),bool),hoare_279057269derivs(state),bot_bot(fun(hoare_1656922687triple(state),bool))),hAPP(fun(hoare_1656922687triple(state),bool),fun(hoare_1656922687triple(state),bool),hAPP(hoare_1656922687triple(state),fun(fun(hoare_1656922687triple(state),bool),fun(hoare_1656922687triple(state),bool)),insert(hoare_1656922687triple(state)),hAPP(com,hoare_1656922687triple(state),hoare_Mirabelle_MGT,C_1)),bot_bot(fun(hoare_1656922687triple(state),bool))))) ) ).

fof(tsy_c_Groups_Ominus__class_Ominus_res,axiom,
    ! [X_b] :
      ( ti(fun(X_b,fun(X_b,X_b)),minus_minus(X_b)) = minus_minus(X_b)
     <= minus(X_b) ) ).

fof(arity_HOL_Obool___Finite__Set_Ofinite,axiom,
    finite_finite_1(bool) ).

fof(fact_342_Int__insert__right,axiom,
    ! [X_a,B,A_3,A_1] :
      ( ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),A_3),A_1))
       => hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),A_3),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),B)) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),A_3),B)) )
      & ( ~ hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),A_3),A_1))
       => hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),A_3),B)) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),B) ) ) ).

fof(tsy_c_Finite__Set_Ofolding__one_res,axiom,
    ! [X_a] : finite_folding_one(X_a) = ti(fun(fun(X_a,fun(X_a,X_a)),fun(fun(fun(X_a,bool),X_a),bool)),finite_folding_one(X_a)) ).

fof(fact_137_subset__Un__eq,axiom,
    ! [X_a,A_1,B] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),A_1),B))
    <=> hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),A_1),B) = ti(fun(X_a,bool),B) ) ).

fof(fact_3_thin,axiom,
    ! [X_a,G_1,G_2,Ts] :
      ( ( hBOOL(hAPP(fun(hoare_1656922687triple(X_a),bool),bool,hAPP(fun(hoare_1656922687triple(X_a),bool),fun(fun(hoare_1656922687triple(X_a),bool),bool),ord_less_eq(fun(hoare_1656922687triple(X_a),bool)),G_2),G_1))
       => hBOOL(hAPP(fun(hoare_1656922687triple(X_a),bool),bool,hAPP(fun(hoare_1656922687triple(X_a),bool),fun(fun(hoare_1656922687triple(X_a),bool),bool),hoare_279057269derivs(X_a),G_1),Ts)) )
     <= hBOOL(hAPP(fun(hoare_1656922687triple(X_a),bool),bool,hAPP(fun(hoare_1656922687triple(X_a),bool),fun(fun(hoare_1656922687triple(X_a),bool),bool),hoare_279057269derivs(X_a),G_2),Ts)) ) ).

fof(fact_293_xt3,axiom,
    ! [X_b,X_a] :
      ( ( order(X_b)
        & order(X_a) )
     => ! [C_1,F,B_1,A_3] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),B_1),A_3))
         => ( ( ! [X_1,Y_1] :
                  ( hBOOL(hAPP(X_b,bool,hAPP(X_b,fun(X_b,bool),ord_less_eq(X_b),hAPP(X_a,X_b,F,Y_1)),hAPP(X_a,X_b,F,X_1)))
                 <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),Y_1),X_1)) )
             => hBOOL(hAPP(X_b,bool,hAPP(X_b,fun(X_b,bool),ord_less_eq(X_b),C_1),hAPP(X_a,X_b,F,A_3))) )
           <= hBOOL(hAPP(X_b,bool,hAPP(X_b,fun(X_b,bool),ord_less_eq(X_b),C_1),hAPP(X_a,X_b,F,B_1))) ) ) ) ).

fof(fact_481_inj__on__image__Int,axiom,
    ! [X_a,X_b,B,A_1,F,C] :
      ( ( ( hAPP(fun(X_a,bool),fun(X_b,bool),hAPP(fun(X_a,X_b),fun(fun(X_a,bool),fun(X_b,bool)),image(X_a,X_b),F),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),B)) = hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_inf_inf(fun(X_b,bool)),hAPP(fun(X_a,bool),fun(X_b,bool),hAPP(fun(X_a,X_b),fun(fun(X_a,bool),fun(X_b,bool)),image(X_a,X_b),F),A_1)),hAPP(fun(X_a,bool),fun(X_b,bool),hAPP(fun(X_a,X_b),fun(fun(X_a,bool),fun(X_b,bool)),image(X_a,X_b),F),B))
         <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),B),C)) )
       <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),A_1),C)) )
     <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,X_b),fun(fun(X_a,bool),bool),inj_on(X_a,X_b),F),C)) ) ).

fof(fact_79_subset__insert,axiom,
    ! [X_a,B,X_2,A_1] :
      ( ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),A_1),B))
      <=> hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),B))) )
     <= ~ hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_2),A_1)) ) ).

fof(fact_427_Diff__subset,axiom,
    ! [X_a,A_1,B] : hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),B)),A_1)) ).

fof(fact_384_Un__Int__assoc__eq,axiom,
    ! [X_a,A_1,B,C] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),C),A_1))
    <=> hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),B),C)) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),B)),C) ) ).

fof(fact_16_insert__dom,axiom,
    ! [X_b,X_a,F,X_2,Y_2] :
      ( hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),X_2),hAPP(fun(X_b,option(X_a)),fun(X_b,bool),dom(X_b,X_a),F)) = hAPP(fun(X_b,option(X_a)),fun(X_b,bool),dom(X_b,X_a),F)
     <= hAPP(X_a,option(X_a),some(X_a),Y_2) = hAPP(X_b,option(X_a),F,X_2) ) ).

fof(help_fequal_1_1_T,axiom,
    ! [X_a,X,Y] :
      ( ti(X_a,X) = ti(X_a,Y)
      | ~ hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),fequal(X_a),X),Y)) ) ).

fof(fact_182_sup1I1,axiom,
    ! [X_a,B,A_1,X_2] :
      ( hBOOL(hAPP(X_a,bool,hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),A_1),B),X_2))
     <= hBOOL(hAPP(X_a,bool,A_1,X_2)) ) ).

fof(tsy_c_Lattices_Osemilattice__inf__class_Oinf_res,axiom,
    ! [X_a] :
      ( semilattice_inf_inf(X_a) = ti(fun(X_a,fun(X_a,X_a)),semilattice_inf_inf(X_a))
     <= semilattice_inf(X_a) ) ).

fof(fact_311_Int__absorb,axiom,
    ! [X_a,A_1] : ti(fun(X_a,bool),A_1) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),A_1) ).

fof(tsy_c_fimplies_res,axiom,
    ti(fun(bool,fun(bool,bool)),fimplies) = fimplies ).

fof(tsy_c_Partial__Function_Oflat__lub_res,axiom,
    ! [X_a] : partial_flat_lub(X_a) = ti(fun(X_a,fun(fun(X_a,bool),X_a)),partial_flat_lub(X_a)) ).

fof(fact_83_image__insert,axiom,
    ! [X_b,X_a,F,A_3,B] : hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),hAPP(X_b,X_a,F,A_3)),hAPP(fun(X_b,bool),fun(X_a,bool),hAPP(fun(X_b,X_a),fun(fun(X_b,bool),fun(X_a,bool)),image(X_b,X_a),F),B)) = hAPP(fun(X_b,bool),fun(X_a,bool),hAPP(fun(X_b,X_a),fun(fun(X_b,bool),fun(X_a,bool)),image(X_b,X_a),F),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),A_3),B)) ).

fof(fact_263_folding__one_Oclosed,axiom,
    ! [X_a,A_1,F,Fa] :
      ( hBOOL(hAPP(fun(fun(X_a,bool),X_a),bool,hAPP(fun(X_a,fun(X_a,X_a)),fun(fun(fun(X_a,bool),X_a),bool),finite_folding_one(X_a),F),Fa))
     => ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1))
       => ( ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),hAPP(fun(X_a,bool),X_a,Fa,A_1)),A_1))
           <= ! [X_1,Y_1] : hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),F,X_1),Y_1)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),Y_1),bot_bot(fun(X_a,bool)))))) )
         <= bot_bot(fun(X_a,bool)) != ti(fun(X_a,bool),A_1) ) ) ) ).

fof(fact_74_insert__mono,axiom,
    ! [X_a,A_3,C,D_1] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),A_3),C)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),A_3),D_1)))
     <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),C),D_1)) ) ).

fof(help_fequal_2_1_T,axiom,
    ! [X_a,X,Y] :
      ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),fequal(X_a),X),Y))
      | ti(X_a,Y) != ti(X_a,X) ) ).

fof(fact_23_equalityI,axiom,
    ! [X_a,A_1,B] :
      ( ( ti(fun(X_a,bool),A_1) = ti(fun(X_a,bool),B)
       <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),B),A_1)) )
     <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),A_1),B)) ) ).

fof(fact_261_folding__one_Osingleton,axiom,
    ! [X_a,X_2,F,Fa] :
      ( hBOOL(hAPP(fun(fun(X_a,bool),X_a),bool,hAPP(fun(X_a,fun(X_a,X_a)),fun(fun(fun(X_a,bool),X_a),bool),finite_folding_one(X_a),F),Fa))
     => hAPP(fun(X_a,bool),X_a,Fa,hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),bot_bot(fun(X_a,bool)))) = ti(X_a,X_2) ) ).

fof(fact_34_finite,axiom,
    ! [X_a] :
      ( finite_finite_1(X_a)
     => ! [A_1] : hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1)) ) ).

fof(fact_327_Int__Un__distrib2,axiom,
    ! [X_a,B,C,A_1] : hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),B),A_1)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),C),A_1)) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),B),C)),A_1) ).

fof(fact_181_sup1I2,axiom,
    ! [X_a,A_1,B,X_2] :
      ( hBOOL(hAPP(X_a,bool,hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),A_1),B),X_2))
     <= hBOOL(hAPP(X_a,bool,B,X_2)) ) ).

fof(help_COMBI_1_1_U,axiom,
    ! [X_a,P] : hAPP(X_a,X_a,combi(X_a),P) = ti(X_a,P) ).

fof(fact_195_state__not__singleton__def,axiom,
    ( ? [S_3,T_5] : T_5 != S_3
  <=> hBOOL(hoare_1924220188gleton) ) ).

fof(fact_28_empty__iff,axiom,
    ! [X_a,C_1] : ~ hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),C_1),bot_bot(fun(X_a,bool)))) ).

fof(fact_42_insert__Collect,axiom,
    ! [X_a,A_3,P_1] : hAPP(fun(X_a,bool),fun(X_a,bool),collect(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,fun(bool,bool)),fun(fun(X_a,bool),fun(X_a,bool)),combs(X_a,bool,bool),hAPP(fun(X_a,bool),fun(X_a,fun(bool,bool)),hAPP(fun(bool,fun(bool,bool)),fun(fun(X_a,bool),fun(X_a,fun(bool,bool))),combb(bool,fun(bool,bool),X_a),fimplies),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(bool,bool),fun(fun(X_a,bool),fun(X_a,bool)),combb(bool,bool,X_a),fNot),hAPP(X_a,fun(X_a,bool),hAPP(fun(X_a,fun(X_a,bool)),fun(X_a,fun(X_a,bool)),combc(X_a,X_a,bool),fequal(X_a)),A_3)))),P_1)) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),A_3),hAPP(fun(X_a,bool),fun(X_a,bool),collect(X_a),P_1)) ).

fof(fact_490_dom__def,axiom,
    ! [X_a,X_b,M] : hAPP(fun(X_a,bool),fun(X_a,bool),collect(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(bool,bool),fun(fun(X_a,bool),fun(X_a,bool)),combb(bool,bool,X_a),fNot),hAPP(option(X_b),fun(X_a,bool),hAPP(fun(X_a,fun(option(X_b),bool)),fun(option(X_b),fun(X_a,bool)),combc(X_a,option(X_b),bool),hAPP(fun(X_a,option(X_b)),fun(X_a,fun(option(X_b),bool)),hAPP(fun(option(X_b),fun(option(X_b),bool)),fun(fun(X_a,option(X_b)),fun(X_a,fun(option(X_b),bool))),combb(option(X_b),fun(option(X_b),bool),X_a),fequal(option(X_b))),M)),none(X_b)))) = hAPP(fun(X_a,option(X_b)),fun(X_a,bool),dom(X_a,X_b),M) ).

fof(fact_344_inf__le1,axiom,
    ! [X_a] :
      ( semilattice_inf(X_a)
     => ! [X,Y] : hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),X),Y)),X)) ) ).

fof(fact_494_option_Osimps_I3_J,axiom,
    ! [X_a,A_2] : none(X_a) != hAPP(X_a,option(X_a),some(X_a),A_2) ).

fof(fact_456_fun__upd__image,axiom,
    ! [X_b,X_a,F,Y_2,X_2,A_1] :
      ( ( hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),Y_2),hAPP(fun(X_a,bool),fun(X_b,bool),hAPP(fun(X_a,X_b),fun(fun(X_a,bool),fun(X_b,bool)),image(X_a,X_b),F),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),bot_bot(fun(X_a,bool)))))) = hAPP(fun(X_a,bool),fun(X_b,bool),hAPP(fun(X_a,X_b),fun(fun(X_a,bool),fun(X_b,bool)),image(X_a,X_b),hAPP(X_b,fun(X_a,X_b),hAPP(X_a,fun(X_b,fun(X_a,X_b)),hAPP(fun(X_a,X_b),fun(X_a,fun(X_b,fun(X_a,X_b))),fun_upd(X_a,X_b),F),X_2),Y_2)),A_1)
       <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_2),A_1)) )
      & ( ~ hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_2),A_1))
       => hAPP(fun(X_a,bool),fun(X_b,bool),hAPP(fun(X_a,X_b),fun(fun(X_a,bool),fun(X_b,bool)),image(X_a,X_b),hAPP(X_b,fun(X_a,X_b),hAPP(X_a,fun(X_b,fun(X_a,X_b)),hAPP(fun(X_a,X_b),fun(X_a,fun(X_b,fun(X_a,X_b))),fun_upd(X_a,X_b),F),X_2),Y_2)),A_1) = hAPP(fun(X_a,bool),fun(X_b,bool),hAPP(fun(X_a,X_b),fun(fun(X_a,bool),fun(X_b,bool)),image(X_a,X_b),F),A_1) ) ) ).

fof(arity_Option_Ooption___Finite__Set_Ofinite,axiom,
    ! [T_1] :
      ( finite_finite_1(T_1)
     => finite_finite_1(option(T_1)) ) ).

fof(fact_134_Un__least,axiom,
    ! [X_a,B,A_1,C] :
      ( ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),A_1),B)),C))
       <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),B),C)) )
     <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),A_1),C)) ) ).

fof(fact_232_folding__one__idem_Oidem,axiom,
    ! [X_a,X_2,F,Fa] :
      ( hBOOL(hAPP(fun(fun(X_a,bool),X_a),bool,hAPP(fun(X_a,fun(X_a,X_a)),fun(fun(fun(X_a,bool),X_a),bool),finite2073411215e_idem(X_a),F),Fa))
     => hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),F,X_2),X_2) = ti(X_a,X_2) ) ).

fof(fact_367_inf__fun__def,axiom,
    ! [X_a,X_b] :
      ( lattice(X_b)
     => ! [F,G,X_1] : hAPP(X_b,X_b,hAPP(X_b,fun(X_b,X_b),semilattice_inf_inf(X_b),hAPP(X_a,X_b,F,X_1)),hAPP(X_a,X_b,G,X_1)) = hAPP(X_a,X_b,hAPP(fun(X_a,X_b),fun(X_a,X_b),hAPP(fun(X_a,X_b),fun(fun(X_a,X_b),fun(X_a,X_b)),semilattice_inf_inf(fun(X_a,X_b)),F),G),X_1) ) ).

fof(fact_62_singletonE,axiom,
    ! [X_a,B_1,A_3] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),B_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),A_3),bot_bot(fun(X_a,bool)))))
     => ti(X_a,A_3) = ti(X_a,B_1) ) ).

fof(fact_373_inf__left__idem,axiom,
    ! [X_a] :
      ( semilattice_inf(X_a)
     => ! [X,Y] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),X),Y) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),X),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),X),Y)) ) ).

fof(fact_113_Collect__disj__eq,axiom,
    ! [X_a,P_1,Q_1] : hAPP(fun(X_a,bool),fun(X_a,bool),collect(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,fun(bool,bool)),fun(fun(X_a,bool),fun(X_a,bool)),combs(X_a,bool,bool),hAPP(fun(X_a,bool),fun(X_a,fun(bool,bool)),hAPP(fun(bool,fun(bool,bool)),fun(fun(X_a,bool),fun(X_a,fun(bool,bool))),combb(bool,fun(bool,bool),X_a),fdisj),P_1)),Q_1)) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),collect(X_a),P_1)),hAPP(fun(X_a,bool),fun(X_a,bool),collect(X_a),Q_1)) ).

fof(fact_4_cut,axiom,
    ! [X_a,G_1,G_2,Ts] :
      ( ( hBOOL(hAPP(fun(hoare_1656922687triple(X_a),bool),bool,hAPP(fun(hoare_1656922687triple(X_a),bool),fun(fun(hoare_1656922687triple(X_a),bool),bool),hoare_279057269derivs(X_a),G_1),G_2))
       => hBOOL(hAPP(fun(hoare_1656922687triple(X_a),bool),bool,hAPP(fun(hoare_1656922687triple(X_a),bool),fun(fun(hoare_1656922687triple(X_a),bool),bool),hoare_279057269derivs(X_a),G_1),Ts)) )
     <= hBOOL(hAPP(fun(hoare_1656922687triple(X_a),bool),bool,hAPP(fun(hoare_1656922687triple(X_a),bool),fun(fun(hoare_1656922687triple(X_a),bool),bool),hoare_279057269derivs(X_a),G_2),Ts)) ) ).

fof(fact_380_inf__apply,axiom,
    ! [X_b,X_a] :
      ( lattice(X_a)
     => ! [F,G,X_2] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),hAPP(X_b,X_a,F,X_2)),hAPP(X_b,X_a,G,X_2)) = hAPP(X_b,X_a,hAPP(fun(X_b,X_a),fun(X_b,X_a),hAPP(fun(X_b,X_a),fun(fun(X_b,X_a),fun(X_b,X_a)),semilattice_inf_inf(fun(X_b,X_a)),F),G),X_2) ) ).

fof(arity_HOL_Obool___Orderings_Obot,axiom,
    bot(bool) ).

fof(fact_116_UnI1,axiom,
    ! [X_a,B,C_1,A_1] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),C_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),A_1),B)))
     <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),C_1),A_1)) ) ).

fof(fact_495_option_Osimps_I2_J,axiom,
    ! [X_a,A_2] : none(X_a) != hAPP(X_a,option(X_a),some(X_a),A_2) ).

fof(fact_381_distrib__sup__le,axiom,
    ! [X_a] :
      ( lattice(X_a)
     => ! [X,Y,Z_1] : hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),X),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),Y),Z_1))),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),X),Y)),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),X),Z_1)))) ) ).

fof(fact_77_Collect__def,axiom,
    ! [X_a,P_1] : ti(fun(X_a,bool),P_1) = hAPP(fun(X_a,bool),fun(X_a,bool),collect(X_a),P_1) ).

fof(arity_fun___Groups_Ominus,axiom,
    ! [T_2,T_1] :
      ( minus(fun(T_2,T_1))
     <= minus(T_1) ) ).

fof(fact_295_xt1_I15_J,axiom,
    ! [X_a] :
      ( order(X_a)
     => ! [C_1,A_3,F,B_1] :
          ( ( ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(X_a,X_a,F,C_1)),A_3))
             <= ! [X_1,Y_1] :
                  ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),Y_1),X_1))
                 => hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(X_a,X_a,F,Y_1)),hAPP(X_a,X_a,F,X_1))) ) )
           <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),C_1),B_1)) )
         <= hAPP(X_a,X_a,F,B_1) = ti(X_a,A_3) ) ) ).

fof(fact_480_inj__on__Int,axiom,
    ! [X_a,X_b,B,F,A_1] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,X_b),fun(fun(X_a,bool),bool),inj_on(X_a,X_b),F),A_1))
     => ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,X_b),fun(fun(X_a,bool),bool),inj_on(X_a,X_b),F),B))
       => hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,X_b),fun(fun(X_a,bool),bool),inj_on(X_a,X_b),F),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),B))) ) ) ).

fof(fact_229_hoare__derivs_OSkip,axiom,
    ! [X_a,G_1,P_1] : hBOOL(hAPP(fun(hoare_1656922687triple(X_a),bool),bool,hAPP(fun(hoare_1656922687triple(X_a),bool),fun(fun(hoare_1656922687triple(X_a),bool),bool),hoare_279057269derivs(X_a),G_1),hAPP(fun(hoare_1656922687triple(X_a),bool),fun(hoare_1656922687triple(X_a),bool),hAPP(hoare_1656922687triple(X_a),fun(fun(hoare_1656922687triple(X_a),bool),fun(hoare_1656922687triple(X_a),bool)),insert(hoare_1656922687triple(X_a)),hAPP(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a),hAPP(com,fun(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a)),hAPP(fun(X_a,fun(state,bool)),fun(com,fun(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a))),hoare_246368825triple(X_a),P_1),skip),P_1)),bot_bot(fun(hoare_1656922687triple(X_a),bool))))) ).

fof(conj_6,hypothesis,
    hBOOL(hAPP(fun(hoare_1656922687triple(state),bool),bool,hAPP(fun(hoare_1656922687triple(state),bool),fun(fun(hoare_1656922687triple(state),bool),bool),hoare_279057269derivs(state),hAPP(fun(pname,bool),fun(hoare_1656922687triple(state),bool),hAPP(fun(pname,hoare_1656922687triple(state)),fun(fun(pname,bool),fun(hoare_1656922687triple(state),bool)),image(pname,hoare_1656922687triple(state)),hAPP(fun(pname,com),fun(pname,hoare_1656922687triple(state)),hAPP(fun(com,hoare_1656922687triple(state)),fun(fun(pname,com),fun(pname,hoare_1656922687triple(state))),combb(com,hoare_1656922687triple(state),pname),hoare_Mirabelle_MGT),body_1)),hAPP(fun(pname,option(com)),fun(pname,bool),dom(pname,com),body))),fa)) ).

fof(fact_160_le__bot,axiom,
    ! [X_a] :
      ( bot(X_a)
     => ! [A_6] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),A_6),bot_bot(X_a)))
         => ti(X_a,A_6) = bot_bot(X_a) ) ) ).

fof(fact_343_inf__sup__ord_I1_J,axiom,
    ! [X_a] :
      ( ! [X,Y] : hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),X),Y)),X))
     <= lattice(X_a) ) ).

fof(fact_197_inf__sup__aci_I6_J,axiom,
    ! [X_a] :
      ( lattice(X_a)
     => ! [X,Y,Z_1] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),X),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),Y),Z_1)) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),X),Y)),Z_1) ) ).

fof(fact_225_sup__bot__right,axiom,
    ! [X_a] :
      ( bounded_lattice_bot(X_a)
     => ! [X] : ti(X_a,X) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),X),bot_bot(X_a)) ) ).

fof(fact_63_doubleton__eq__iff,axiom,
    ! [X_a,A_3,B_1,C_1,D] :
      ( hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),A_3),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),B_1),bot_bot(fun(X_a,bool)))) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),C_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),D),bot_bot(fun(X_a,bool))))
    <=> ( ( ti(X_a,C_1) = ti(X_a,B_1)
          & ti(X_a,A_3) = ti(X_a,D) )
        | ( ti(X_a,B_1) = ti(X_a,D)
          & ti(X_a,A_3) = ti(X_a,C_1) ) ) ) ).

fof(help_ti_idem,axiom,
    ! [T,A] : ti(T,ti(T,A)) = ti(T,A) ).

fof(fact_250_com_Osimps_I16_J,axiom,
    ! [Fun,Com_1] : hAPP(com,com,hAPP(fun(state,bool),fun(com,com),while,Fun),Com_1) != skip ).

fof(fact_492_not__None__eq,axiom,
    ! [X_a,X_2] :
      ( ti(option(X_a),X_2) != none(X_a)
    <=> ? [Y_1] : ti(option(X_a),X_2) = hAPP(X_a,option(X_a),some(X_a),Y_1) ) ).

fof(tsy_c_Hoare__Mirabelle__nrugjuseim_Otriple_Otriple__rec_res,axiom,
    ! [X_b,X_a] : ti(fun(fun(fun(X_b,fun(state,bool)),fun(com,fun(fun(X_b,fun(state,bool)),X_a))),fun(hoare_1656922687triple(X_b),X_a)),hoare_1632998903le_rec(X_b,X_a)) = hoare_1632998903le_rec(X_b,X_a) ).

fof(fact_105_the__elem__eq,axiom,
    ! [X_a,X_2] : ti(X_a,X_2) = hAPP(fun(X_a,bool),X_a,the_elem(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),bot_bot(fun(X_a,bool)))) ).

fof(fact_176_sup1CI,axiom,
    ! [X_a,A_1,B,X_2] :
      ( hBOOL(hAPP(X_a,bool,hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),A_1),B),X_2))
     <= ( hBOOL(hAPP(X_a,bool,A_1,X_2))
       <= ~ hBOOL(hAPP(X_a,bool,B,X_2)) ) ) ).

fof(fact_313_Int__commute,axiom,
    ! [X_a,A_1,B] : hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),B) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),B),A_1) ).

fof(fact_142_insert__is__Un,axiom,
    ! [X_a,A_3,A_1] : hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),A_3),A_1) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),A_3),bot_bot(fun(X_a,bool)))),A_1) ).

fof(fact_292_evalc__WHILE__case,axiom,
    ! [B_1,C_1,S_1,T_3] :
      ( ( ( S_1 = T_3
         => hBOOL(hAPP(state,bool,B_1,S_1)) )
       => ~ ( ! [S1] :
                ( hBOOL(hAPP(state,bool,hAPP(state,fun(state,bool),hAPP(com,fun(state,fun(state,bool)),evalc,C_1),S_1),S1))
               => ~ hBOOL(hAPP(state,bool,hAPP(state,fun(state,bool),hAPP(com,fun(state,fun(state,bool)),evalc,hAPP(com,com,hAPP(fun(state,bool),fun(com,com),while,B_1),C_1)),S1),T_3)) )
           <= hBOOL(hAPP(state,bool,B_1,S_1)) ) )
     <= hBOOL(hAPP(state,bool,hAPP(state,fun(state,bool),hAPP(com,fun(state,fun(state,bool)),evalc,hAPP(com,com,hAPP(fun(state,bool),fun(com,com),while,B_1),C_1)),S_1),T_3)) ) ).

fof(fact_282_MGT__def,axiom,
    ! [C_1] : hAPP(com,hoare_1656922687triple(state),hoare_Mirabelle_MGT,C_1) = hAPP(fun(state,fun(state,bool)),hoare_1656922687triple(state),hAPP(com,fun(fun(state,fun(state,bool)),hoare_1656922687triple(state)),hAPP(fun(state,fun(state,bool)),fun(com,fun(fun(state,fun(state,bool)),hoare_1656922687triple(state))),hoare_246368825triple(state),fequal(state)),C_1),hAPP(com,fun(state,fun(state,bool)),evalc,C_1)) ).

fof(fact_362_sup__inf__distrib2,axiom,
    ! [X_a] :
      ( ! [Y,Z_1,X] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),Y),X)),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),Z_1),X)) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),Y),Z_1)),X)
     <= distrib_lattice(X_a) ) ).

fof(fact_194_single__stateE,axiom,
    ( hBOOL(hoare_1924220188gleton)
   => ! [T_5] :
        ~ ! [S_3] : T_5 = S_3 ) ).

fof(tsy_v_y_res,hypothesis,
    ti(com,y) = y ).

fof(fact_304_IntE,axiom,
    ! [X_a,C_1,A_1,B] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),C_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),B)))
     => ~ ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),C_1),A_1))
         => ~ hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),C_1),B)) ) ) ).

fof(fact_258_If__def,axiom,
    ! [X_a,X_2,Y_2,P_1] :
      ( ( hBOOL(P_1)
       => hAPP(fun(X_a,bool),X_a,the_1(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,fun(bool,bool)),fun(fun(X_a,bool),fun(X_a,bool)),combs(X_a,bool,bool),hAPP(fun(X_a,bool),fun(X_a,fun(bool,bool)),hAPP(fun(bool,fun(bool,bool)),fun(fun(X_a,bool),fun(X_a,fun(bool,bool))),combb(bool,fun(bool,bool),X_a),fconj),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(bool,bool),fun(fun(X_a,bool),fun(X_a,bool)),combb(bool,bool,X_a),hAPP(bool,fun(bool,bool),fimplies,P_1)),hAPP(X_a,fun(X_a,bool),hAPP(fun(X_a,fun(X_a,bool)),fun(X_a,fun(X_a,bool)),combc(X_a,X_a,bool),fequal(X_a)),X_2)))),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(bool,bool),fun(fun(X_a,bool),fun(X_a,bool)),combb(bool,bool,X_a),hAPP(bool,fun(bool,bool),fimplies,hAPP(bool,bool,fNot,P_1))),hAPP(X_a,fun(X_a,bool),hAPP(fun(X_a,fun(X_a,bool)),fun(X_a,fun(X_a,bool)),combc(X_a,X_a,bool),fequal(X_a)),Y_2)))) = ti(X_a,X_2) )
      & ( hAPP(fun(X_a,bool),X_a,the_1(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,fun(bool,bool)),fun(fun(X_a,bool),fun(X_a,bool)),combs(X_a,bool,bool),hAPP(fun(X_a,bool),fun(X_a,fun(bool,bool)),hAPP(fun(bool,fun(bool,bool)),fun(fun(X_a,bool),fun(X_a,fun(bool,bool))),combb(bool,fun(bool,bool),X_a),fconj),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(bool,bool),fun(fun(X_a,bool),fun(X_a,bool)),combb(bool,bool,X_a),hAPP(bool,fun(bool,bool),fimplies,P_1)),hAPP(X_a,fun(X_a,bool),hAPP(fun(X_a,fun(X_a,bool)),fun(X_a,fun(X_a,bool)),combc(X_a,X_a,bool),fequal(X_a)),X_2)))),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(bool,bool),fun(fun(X_a,bool),fun(X_a,bool)),combb(bool,bool,X_a),hAPP(bool,fun(bool,bool),fimplies,hAPP(bool,bool,fNot,P_1))),hAPP(X_a,fun(X_a,bool),hAPP(fun(X_a,fun(X_a,bool)),fun(X_a,fun(X_a,bool)),combc(X_a,X_a,bool),fequal(X_a)),Y_2)))) = ti(X_a,Y_2)
       <= ~ hBOOL(P_1) ) ) ).

fof(fact_474_inj__on__empty,axiom,
    ! [X_a,X_b,F] : hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,X_b),fun(fun(X_a,bool),bool),inj_on(X_a,X_b),F),bot_bot(fun(X_a,bool)))) ).

fof(fact_48_set__rev__mp,axiom,
    ! [X_a,B,X_2,A_1] :
      ( ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_2),B))
       <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),A_1),B)) )
     <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_2),A_1)) ) ).

fof(arity_HOL_Obool___Orderings_Oorder,axiom,
    order(bool) ).

fof(fact_188_triple_Orecs,axiom,
    ! [X_b,X_a,F1,Fun1_1,Com_2,Fun2_1] : hAPP(fun(X_b,fun(state,bool)),X_a,hAPP(com,fun(fun(X_b,fun(state,bool)),X_a),hAPP(fun(X_b,fun(state,bool)),fun(com,fun(fun(X_b,fun(state,bool)),X_a)),F1,Fun1_1),Com_2),Fun2_1) = hAPP(hoare_1656922687triple(X_b),X_a,hAPP(fun(fun(X_b,fun(state,bool)),fun(com,fun(fun(X_b,fun(state,bool)),X_a))),fun(hoare_1656922687triple(X_b),X_a),hoare_1632998903le_rec(X_b,X_a),F1),hAPP(fun(X_b,fun(state,bool)),hoare_1656922687triple(X_b),hAPP(com,fun(fun(X_b,fun(state,bool)),hoare_1656922687triple(X_b)),hAPP(fun(X_b,fun(state,bool)),fun(com,fun(fun(X_b,fun(state,bool)),hoare_1656922687triple(X_b))),hoare_246368825triple(X_b),Fun1_1),Com_2),Fun2_1)) ).

fof(help_fAll_1_1_U,axiom,
    ! [X_a,X,P] :
      ( ~ hBOOL(hAPP(fun(X_a,bool),bool,fAll(X_a),P))
      | hBOOL(hAPP(X_a,bool,P,X)) ) ).

fof(fact_285_evalc__elim__cases_I1_J,axiom,
    ! [S_2,T_4] :
      ( S_2 = T_4
     <= hBOOL(hAPP(state,bool,hAPP(state,fun(state,bool),hAPP(com,fun(state,fun(state,bool)),evalc,skip),S_2),T_4)) ) ).

fof(fact_358_sup__inf__absorb,axiom,
    ! [X_a] :
      ( lattice(X_a)
     => ! [X,Y] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),X),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),X),Y)) = ti(X_a,X) ) ).

fof(fact_266_theI,axiom,
    ! [X_a,P_1,A_3] :
      ( ( ! [X_1] :
            ( ti(X_a,X_1) = ti(X_a,A_3)
           <= hBOOL(hAPP(X_a,bool,P_1,X_1)) )
       => hBOOL(hAPP(X_a,bool,P_1,hAPP(fun(X_a,bool),X_a,the_1(X_a),P_1))) )
     <= hBOOL(hAPP(X_a,bool,P_1,A_3)) ) ).

fof(fact_289_evalc_OSkip,axiom,
    ! [S_2] : hBOOL(hAPP(state,bool,hAPP(state,fun(state,bool),hAPP(com,fun(state,fun(state,bool)),evalc,skip),S_2),S_2)) ).

fof(fact_445_diff__eq__diff__less__eq,axiom,
    ! [X_a] :
      ( ! [A_3,B_1,C_1,D] :
          ( ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),A_3),B_1))
          <=> hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),C_1),D)) )
         <= hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),minus_minus(X_a),A_3),B_1) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),minus_minus(X_a),C_1),D) )
     <= ordered_ab_group_add(X_a) ) ).

fof(tsy_c_Com_Obody_res,hypothesis,
    ti(fun(pname,option(com)),body) = body ).

fof(fact_72_finite__subset,axiom,
    ! [X_a,A_1,B] :
      ( ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),B))
       => hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1)) )
     <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),A_1),B)) ) ).

fof(tsy_c_COMBC_res,axiom,
    ! [X_a,X_b,X_c] : combc(X_a,X_b,X_c) = ti(fun(fun(X_a,fun(X_b,X_c)),fun(X_b,fun(X_a,X_c))),combc(X_a,X_b,X_c)) ).

fof(fact_336_Int__insert__left__if1,axiom,
    ! [X_a,B,A_3,C] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),A_3),C))
     => hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),A_3),B)),C) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),A_3),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),B),C)) ) ).

fof(fact_153_order__antisym__conv,axiom,
    ! [X_a] :
      ( order(X_a)
     => ! [Y_2,X_2] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),Y_2),X_2))
         => ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X_2),Y_2))
          <=> ti(X_a,Y_2) = ti(X_a,X_2) ) ) ) ).

fof(fact_158_constant,axiom,
    ! [X_a,G_1,P_1,C_1,Q_1,C] :
      ( hBOOL(hAPP(fun(hoare_1656922687triple(X_a),bool),bool,hAPP(fun(hoare_1656922687triple(X_a),bool),fun(fun(hoare_1656922687triple(X_a),bool),bool),hoare_279057269derivs(X_a),G_1),hAPP(fun(hoare_1656922687triple(X_a),bool),fun(hoare_1656922687triple(X_a),bool),hAPP(hoare_1656922687triple(X_a),fun(fun(hoare_1656922687triple(X_a),bool),fun(hoare_1656922687triple(X_a),bool)),insert(hoare_1656922687triple(X_a)),hAPP(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a),hAPP(com,fun(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a)),hAPP(fun(X_a,fun(state,bool)),fun(com,fun(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a))),hoare_246368825triple(X_a),hAPP(bool,fun(X_a,fun(state,bool)),hAPP(fun(X_a,fun(bool,fun(state,bool))),fun(bool,fun(X_a,fun(state,bool))),combc(X_a,bool,fun(state,bool)),hAPP(fun(X_a,fun(state,fun(bool,bool))),fun(X_a,fun(bool,fun(state,bool))),hAPP(fun(fun(state,fun(bool,bool)),fun(bool,fun(state,bool))),fun(fun(X_a,fun(state,fun(bool,bool))),fun(X_a,fun(bool,fun(state,bool)))),combb(fun(state,fun(bool,bool)),fun(bool,fun(state,bool)),X_a),combc(state,bool,bool)),hAPP(fun(X_a,fun(state,bool)),fun(X_a,fun(state,fun(bool,bool))),hAPP(fun(fun(state,bool),fun(state,fun(bool,bool))),fun(fun(X_a,fun(state,bool)),fun(X_a,fun(state,fun(bool,bool)))),combb(fun(state,bool),fun(state,fun(bool,bool)),X_a),hAPP(fun(bool,fun(bool,bool)),fun(fun(state,bool),fun(state,fun(bool,bool))),combb(bool,fun(bool,bool),state),fconj)),P_1))),C)),C_1),Q_1)),bot_bot(fun(hoare_1656922687triple(X_a),bool)))))
     <= ( hBOOL(hAPP(fun(hoare_1656922687triple(X_a),bool),bool,hAPP(fun(hoare_1656922687triple(X_a),bool),fun(fun(hoare_1656922687triple(X_a),bool),bool),hoare_279057269derivs(X_a),G_1),hAPP(fun(hoare_1656922687triple(X_a),bool),fun(hoare_1656922687triple(X_a),bool),hAPP(hoare_1656922687triple(X_a),fun(fun(hoare_1656922687triple(X_a),bool),fun(hoare_1656922687triple(X_a),bool)),insert(hoare_1656922687triple(X_a)),hAPP(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a),hAPP(com,fun(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a)),hAPP(fun(X_a,fun(state,bool)),fun(com,fun(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a))),hoare_246368825triple(X_a),P_1),C_1),Q_1)),bot_bot(fun(hoare_1656922687triple(X_a),bool)))))
       <= hBOOL(C) ) ) ).

fof(fact_130_finite__Un,axiom,
    ! [X_a,Fa,G_1] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),Fa),G_1)))
    <=> ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),G_1))
        & hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),Fa)) ) ) ).

fof(fact_146_xt1_I5_J,axiom,
    ! [X_a] :
      ( order(X_a)
     => ! [Y,X] :
          ( ( ti(X_a,Y) = ti(X_a,X)
           <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X),Y)) )
         <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),Y),X)) ) ) ).

fof(fact_346_inf__le2,axiom,
    ! [X_a] :
      ( ! [X,Y] : hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),X),Y)),Y))
     <= semilattice_inf(X_a) ) ).

fof(help_fFalse_1_1_T,axiom,
    ! [P] :
      ( fFalse = ti(bool,P)
      | ti(bool,P) = fTrue ) ).

fof(fact_354_inf__greatest,axiom,
    ! [X_a] :
      ( semilattice_inf(X_a)
     => ! [Z_1,X,Y] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X),Y))
         => ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X),Z_1))
           => hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),Y),Z_1))) ) ) ) ).

fof(fact_131_Un__insert__left,axiom,
    ! [X_a,A_3,B,C] : hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),A_3),B)),C) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),A_3),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),B),C)) ).

fof(fact_377_inf_Oassoc,axiom,
    ! [X_a] :
      ( semilattice_inf(X_a)
     => ! [A_6,B_2,C_2] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),A_6),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),B_2),C_2)) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),A_6),B_2)),C_2) ) ).

fof(fact_400_finite__Diff,axiom,
    ! [X_a,B,A_1] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1))
     => hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),B))) ) ).

fof(fact_385_if__image__distrib,axiom,
    ! [X_b,X_a,P_1,F,G,S] : hAPP(fun(X_b,bool),fun(X_a,bool),hAPP(fun(X_b,X_a),fun(fun(X_b,bool),fun(X_a,bool)),image(X_b,X_a),hAPP(fun(X_b,X_a),fun(X_b,X_a),hAPP(fun(X_b,fun(X_a,X_a)),fun(fun(X_b,X_a),fun(X_b,X_a)),combs(X_b,X_a,X_a),hAPP(fun(X_b,X_a),fun(X_b,fun(X_a,X_a)),hAPP(fun(X_b,fun(X_a,fun(X_a,X_a))),fun(fun(X_b,X_a),fun(X_b,fun(X_a,X_a))),combs(X_b,X_a,fun(X_a,X_a)),hAPP(fun(X_b,bool),fun(X_b,fun(X_a,fun(X_a,X_a))),hAPP(fun(bool,fun(X_a,fun(X_a,X_a))),fun(fun(X_b,bool),fun(X_b,fun(X_a,fun(X_a,X_a)))),combb(bool,fun(X_a,fun(X_a,X_a)),X_b),if(X_a)),P_1)),F)),G)),S) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),hAPP(fun(X_b,bool),fun(X_a,bool),hAPP(fun(X_b,X_a),fun(fun(X_b,bool),fun(X_a,bool)),image(X_b,X_a),F),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_inf_inf(fun(X_b,bool)),S),hAPP(fun(X_b,bool),fun(X_b,bool),collect(X_b),P_1)))),hAPP(fun(X_b,bool),fun(X_a,bool),hAPP(fun(X_b,X_a),fun(fun(X_b,bool),fun(X_a,bool)),image(X_b,X_a),G),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_inf_inf(fun(X_b,bool)),S),hAPP(fun(X_b,bool),fun(X_b,bool),collect(X_b),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(bool,bool),fun(fun(X_b,bool),fun(X_b,bool)),combb(bool,bool,X_b),fNot),P_1))))) ).

fof(tsy_c_fFalse_res,axiom,
    fFalse = ti(bool,fFalse) ).

fof(fact_417_Diff__Un,axiom,
    ! [X_a,A_1,B,C] : hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),B),C)) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),B)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),C)) ).

fof(fact_498_finite__imageD,axiom,
    ! [X_a,X_b,F,A_1] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),hAPP(fun(X_b,bool),fun(X_a,bool),hAPP(fun(X_b,X_a),fun(fun(X_b,bool),fun(X_a,bool)),image(X_b,X_a),F),A_1)))
     => ( hBOOL(hAPP(fun(X_b,bool),bool,finite_finite(X_b),A_1))
       <= hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,X_a),fun(fun(X_b,bool),bool),inj_on(X_b,X_a),F),A_1)) ) ) ).

fof(fact_178_bot__empty__eq,axiom,
    ! [X_a,X_1] :
      ( hBOOL(hAPP(X_a,bool,bot_bot(fun(X_a,bool)),X_1))
    <=> hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_1),bot_bot(fun(X_a,bool)))) ) ).

fof(fact_209_sup_Oidem,axiom,
    ! [X_a] :
      ( semilattice_sup(X_a)
     => ! [A_6] : ti(X_a,A_6) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),A_6),A_6) ) ).

fof(tsy_c_Com_OWT__bodies_res,hypothesis,
    wT_bodies = ti(bool,wT_bodies) ).

fof(fact_452_comp__fun__idem_Ofun__left__idem,axiom,
    ! [X_a,X_b,X_2,Z,F] :
      ( hAPP(X_b,X_b,hAPP(X_a,fun(X_b,X_b),F,X_2),Z) = hAPP(X_b,X_b,hAPP(X_a,fun(X_b,X_b),F,X_2),hAPP(X_b,X_b,hAPP(X_a,fun(X_b,X_b),F,X_2),Z))
     <= hBOOL(hAPP(fun(X_a,fun(X_b,X_b)),bool,finite_comp_fun_idem(X_a,X_b),F)) ) ).

fof(tsy_c_Com_Ocom_OWhile_res,axiom,
    while = ti(fun(fun(state,bool),fun(com,com)),while) ).

fof(fact_437_minus__apply,axiom,
    ! [X_b,X_a] :
      ( minus(X_a)
     => ! [A_1,B,X_2] : hAPP(X_b,X_a,hAPP(fun(X_b,X_a),fun(X_b,X_a),hAPP(fun(X_b,X_a),fun(fun(X_b,X_a),fun(X_b,X_a)),minus_minus(fun(X_b,X_a)),A_1),B),X_2) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),minus_minus(X_a),hAPP(X_b,X_a,A_1,X_2)),hAPP(X_b,X_a,B,X_2)) ) ).

fof(fact_124_Un__def,axiom,
    ! [X_a,A_1,B] : hAPP(fun(X_a,bool),fun(X_a,bool),collect(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,fun(bool,bool)),fun(fun(X_a,bool),fun(X_a,bool)),combs(X_a,bool,bool),hAPP(fun(X_a,bool),fun(X_a,fun(bool,bool)),hAPP(fun(bool,fun(bool,bool)),fun(fun(X_a,bool),fun(X_a,fun(bool,bool))),combb(bool,fun(bool,bool),X_a),fdisj),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,fun(fun(X_a,bool),bool)),fun(fun(X_a,bool),fun(X_a,bool)),combc(X_a,fun(X_a,bool),bool),member(X_a)),A_1))),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,fun(fun(X_a,bool),bool)),fun(fun(X_a,bool),fun(X_a,bool)),combc(X_a,fun(X_a,bool),bool),member(X_a)),B))) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),A_1),B) ).

fof(help_If_1_1_T,axiom,
    ! [X_a,X,Y] : ti(X_a,X) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),hAPP(bool,fun(X_a,fun(X_a,X_a)),if(X_a),fTrue),X),Y) ).

fof(fact_136_Un__absorb1,axiom,
    ! [X_a,A_1,B] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),A_1),B))
     => ti(fun(X_a,bool),B) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),A_1),B) ) ).

fof(fact_407_insert__Diff__single,axiom,
    ! [X_a,A_3,A_1] : hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),A_3),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),A_3),bot_bot(fun(X_a,bool))))) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),A_3),A_1) ).

fof(fact_75_ext,axiom,
    ! [X_a,X_b,F,G] :
      ( ti(fun(X_a,X_b),G) = ti(fun(X_a,X_b),F)
     <= ! [X_1] : hAPP(X_a,X_b,G,X_1) = hAPP(X_a,X_b,F,X_1) ) ).

fof(fact_31_all__not__in__conv,axiom,
    ! [X_a,A_1] :
      ( ! [X_1] : ~ hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_1),A_1))
    <=> ti(fun(X_a,bool),A_1) = bot_bot(fun(X_a,bool)) ) ).

fof(fact_466_fun__upd__same,axiom,
    ! [X_b,X_a,F,X_2,Y_2] : ti(X_a,Y_2) = hAPP(X_b,X_a,hAPP(X_a,fun(X_b,X_a),hAPP(X_b,fun(X_a,fun(X_b,X_a)),hAPP(fun(X_b,X_a),fun(X_b,fun(X_a,fun(X_b,X_a))),fun_upd(X_b,X_a),F),X_2),Y_2),X_2) ).

fof(arity_HOL_Obool___Groups_Ominus,axiom,
    minus(bool) ).

fof(fact_419_Diff__cancel,axiom,
    ! [X_a,A_1] : hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),A_1) = bot_bot(fun(X_a,bool)) ).

fof(fact_489_inj__Some,axiom,
    ! [X_a,A_1] : hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,option(X_a)),fun(fun(X_a,bool),bool),inj_on(X_a,option(X_a)),some(X_a)),A_1)) ).

fof(fact_312_Int__def,axiom,
    ! [X_a,A_1,B] : hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),B) = hAPP(fun(X_a,bool),fun(X_a,bool),collect(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,fun(bool,bool)),fun(fun(X_a,bool),fun(X_a,bool)),combs(X_a,bool,bool),hAPP(fun(X_a,bool),fun(X_a,fun(bool,bool)),hAPP(fun(bool,fun(bool,bool)),fun(fun(X_a,bool),fun(X_a,fun(bool,bool))),combb(bool,fun(bool,bool),X_a),fconj),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,fun(fun(X_a,bool),bool)),fun(fun(X_a,bool),fun(X_a,bool)),combc(X_a,fun(X_a,bool),bool),member(X_a)),A_1))),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,fun(fun(X_a,bool),bool)),fun(fun(X_a,bool),fun(X_a,bool)),combc(X_a,fun(X_a,bool),bool),member(X_a)),B))) ).

fof(fact_376_inf__left__commute,axiom,
    ! [X_a] :
      ( ! [X,Y,Z_1] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),X),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),Y),Z_1)) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),Y),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),X),Z_1))
     <= semilattice_inf(X_a) ) ).

fof(fact_148_order__antisym,axiom,
    ! [X_a] :
      ( ! [X,Y] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X),Y))
         => ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),Y),X))
           => ti(X_a,X) = ti(X_a,Y) ) )
     <= order(X_a) ) ).

fof(fact_108_nonempty__iff,axiom,
    ! [X_a,A_1] :
      ( ? [X_1,B_3] :
          ( ~ hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_1),B_3))
          & hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_1),B_3) = ti(fun(X_a,bool),A_1) )
    <=> bot_bot(fun(X_a,bool)) != ti(fun(X_a,bool),A_1) ) ).

fof(tsy_c_Finite__Set_Ofolding__one__idem_res,axiom,
    ! [X_a] : ti(fun(fun(X_a,fun(X_a,X_a)),fun(fun(fun(X_a,bool),X_a),bool)),finite2073411215e_idem(X_a)) = finite2073411215e_idem(X_a) ).

fof(fact_12_finite_OemptyI,axiom,
    ! [X_a] : hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),bot_bot(fun(X_a,bool)))) ).

fof(fact_351_inf__absorb1,axiom,
    ! [X_a] :
      ( ! [X,Y] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X),Y))
         => ti(X_a,X) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),X),Y) )
     <= semilattice_inf(X_a) ) ).

fof(fact_406_Diff__insert__absorb,axiom,
    ! [X_a,X_2,A_1] :
      ( ~ hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_2),A_1))
     => hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),A_1)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),bot_bot(fun(X_a,bool)))) = ti(fun(X_a,bool),A_1) ) ).

fof(fact_442_finite__empty__induct,axiom,
    ! [X_a,P_1,A_1] :
      ( ( ( ! [A_5,A_4] :
              ( ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),A_5),A_4))
               => ( hBOOL(hAPP(fun(X_a,bool),bool,P_1,hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_4),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),A_5),bot_bot(fun(X_a,bool))))))
                 <= hBOOL(hAPP(fun(X_a,bool),bool,P_1,A_4)) ) )
             <= hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_4)) )
         => hBOOL(hAPP(fun(X_a,bool),bool,P_1,bot_bot(fun(X_a,bool)))) )
       <= hBOOL(hAPP(fun(X_a,bool),bool,P_1,A_1)) )
     <= hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1)) ) ).

fof(fact_44_insertI1,axiom,
    ! [X_a,A_3,B] : hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),A_3),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),A_3),B))) ).

fof(tsy_c_fTrue_res,axiom,
    fTrue = ti(bool,fTrue) ).

fof(fact_80_insert__subset,axiom,
    ! [X_a,X_2,A_1,B] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),A_1)),B))
    <=> ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_2),B))
        & hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),A_1),B)) ) ) ).

fof(arity_fun___Lattices_Osemilattice__sup,axiom,
    ! [T_2,T_1] :
      ( lattice(T_1)
     => semilattice_sup(fun(T_2,T_1)) ) ).

fof(fact_0_empty,axiom,
    ! [X_a,G_1] : hBOOL(hAPP(fun(hoare_1656922687triple(X_a),bool),bool,hAPP(fun(hoare_1656922687triple(X_a),bool),fun(fun(hoare_1656922687triple(X_a),bool),bool),hoare_279057269derivs(X_a),G_1),bot_bot(fun(hoare_1656922687triple(X_a),bool)))) ).

fof(fact_101_pigeonhole__infinite,axiom,
    ! [X_b,X_a,F,A_1] :
      ( ( hBOOL(hAPP(fun(X_b,bool),bool,finite_finite(X_b),hAPP(fun(X_a,bool),fun(X_b,bool),hAPP(fun(X_a,X_b),fun(fun(X_a,bool),fun(X_b,bool)),image(X_a,X_b),F),A_1)))
       => ? [X_1] :
            ( ~ hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),collect(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,fun(bool,bool)),fun(fun(X_a,bool),fun(X_a,bool)),combs(X_a,bool,bool),hAPP(fun(X_a,bool),fun(X_a,fun(bool,bool)),hAPP(fun(bool,fun(bool,bool)),fun(fun(X_a,bool),fun(X_a,fun(bool,bool))),combb(bool,fun(bool,bool),X_a),fconj),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,fun(fun(X_a,bool),bool)),fun(fun(X_a,bool),fun(X_a,bool)),combc(X_a,fun(X_a,bool),bool),member(X_a)),A_1))),hAPP(X_b,fun(X_a,bool),hAPP(fun(X_a,fun(X_b,bool)),fun(X_b,fun(X_a,bool)),combc(X_a,X_b,bool),hAPP(fun(X_a,X_b),fun(X_a,fun(X_b,bool)),hAPP(fun(X_b,fun(X_b,bool)),fun(fun(X_a,X_b),fun(X_a,fun(X_b,bool))),combb(X_b,fun(X_b,bool),X_a),fequal(X_b)),F)),hAPP(X_a,X_b,F,X_1))))))
            & hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_1),A_1)) ) )
     <= ~ hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1)) ) ).

fof(fact_32_empty__def,axiom,
    ! [X_a] : hAPP(fun(X_a,bool),fun(X_a,bool),collect(X_a),hAPP(bool,fun(X_a,bool),combk(bool,X_a),fFalse)) = bot_bot(fun(X_a,bool)) ).

fof(fact_435_Un__Diff__cancel,axiom,
    ! [X_a,A_1,B] : hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),B),A_1)) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),A_1),B) ).

fof(fact_126_Un__empty,axiom,
    ! [X_a,A_1,B] :
      ( ( bot_bot(fun(X_a,bool)) = ti(fun(X_a,bool),A_1)
        & ti(fun(X_a,bool),B) = bot_bot(fun(X_a,bool)) )
    <=> bot_bot(fun(X_a,bool)) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),A_1),B) ) ).

fof(fact_382_distrib__inf__le,axiom,
    ! [X_a] :
      ( ! [X,Y,Z_1] : hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),X),Y)),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),X),Z_1))),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),X),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),Y),Z_1))))
     <= lattice(X_a) ) ).

fof(tsy_c_Hoare__Mirabelle__nrugjuseim_Ostate__not__singleton_res,hypothesis,
    hoare_1924220188gleton = ti(bool,hoare_1924220188gleton) ).

fof(fact_446_diff__eq__diff__eq,axiom,
    ! [X_a] :
      ( ab_group_add(X_a)
     => ! [A_3,B_1,C_1,D] :
          ( ( ti(X_a,A_3) = ti(X_a,B_1)
          <=> ti(X_a,C_1) = ti(X_a,D) )
         <= hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),minus_minus(X_a),A_3),B_1) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),minus_minus(X_a),C_1),D) ) ) ).

fof(fact_349_le__infI1,axiom,
    ! [X_a] :
      ( semilattice_inf(X_a)
     => ! [B_2,A_6,X] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),A_6),B_2)),X))
         <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),A_6),X)) ) ) ).

fof(conj_1,hypothesis,
    hBOOL(wT_bodies) ).

fof(fact_491_domIff,axiom,
    ! [X_a,X_b,A_3,M] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),A_3),hAPP(fun(X_a,option(X_b)),fun(X_a,bool),dom(X_a,X_b),M)))
    <=> hAPP(X_a,option(X_b),M,A_3) != none(X_b) ) ).

fof(fact_128_Un__empty__left,axiom,
    ! [X_a,B] : hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),bot_bot(fun(X_a,bool))),B) = ti(fun(X_a,bool),B) ).

fof(fact_138_Un__upper2,axiom,
    ! [X_a,B,A_1] : hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),B),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),A_1),B))) ).

fof(fact_99_finite__induct,axiom,
    ! [X_a,P_1,Fa] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),Fa))
     => ( hBOOL(hAPP(fun(X_a,bool),bool,P_1,bot_bot(fun(X_a,bool))))
       => ( ! [X_1,F_1] :
              ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),F_1))
             => ( ( hBOOL(hAPP(fun(X_a,bool),bool,P_1,hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_1),F_1)))
                 <= hBOOL(hAPP(fun(X_a,bool),bool,P_1,F_1)) )
               <= ~ hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_1),F_1)) ) )
         => hBOOL(hAPP(fun(X_a,bool),bool,P_1,Fa)) ) ) ) ).

fof(tsy_c_Com_Ocom_OBODY_res,hypothesis,
    ti(fun(pname,com),body_1) = body_1 ).

fof(fact_269_folding__image__simple__idem_Osubset__idem,axiom,
    ! [X_b,X_a,B,A_1,F,Z,G,Fa] :
      ( ( hBOOL(hAPP(fun(X_b,bool),bool,finite_finite(X_b),A_1))
       => ( hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),F,hAPP(fun(X_b,bool),X_a,Fa,B)),hAPP(fun(X_b,bool),X_a,Fa,A_1)) = hAPP(fun(X_b,bool),X_a,Fa,A_1)
         <= hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),ord_less_eq(fun(X_b,bool)),B),A_1)) ) )
     <= hBOOL(hAPP(fun(fun(X_b,bool),X_a),bool,hAPP(fun(X_b,X_a),fun(fun(fun(X_b,bool),X_a),bool),hAPP(X_a,fun(fun(X_b,X_a),fun(fun(fun(X_b,bool),X_a),bool)),hAPP(fun(X_a,fun(X_a,X_a)),fun(X_a,fun(fun(X_b,X_a),fun(fun(fun(X_b,bool),X_a),bool))),finite908156982e_idem(X_a,X_b),F),Z),G),Fa)) ) ).

fof(fact_53_subset__refl,axiom,
    ! [X_a,A_1] : hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),A_1),A_1)) ).

fof(arity_fun___Orderings_Oord,axiom,
    ! [T_2,T_1] :
      ( ord(fun(T_2,T_1))
     <= ord(T_1) ) ).

fof(fact_127_Un__empty__right,axiom,
    ! [X_a,A_1] : hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),A_1),bot_bot(fun(X_a,bool))) = ti(fun(X_a,bool),A_1) ).

fof(fact_415_Diff__subset__conv,axiom,
    ! [X_a,A_1,B,C] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),B),C)))
    <=> hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),B)),C)) ) ).

fof(fact_223_inf__sup__ord_I3_J,axiom,
    ! [X_a] :
      ( lattice(X_a)
     => ! [X,Y] : hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),X),Y))) ) ).

fof(fact_253_com_Osimps_I48_J,axiom,
    ! [Com1_1,Com2_1,Pname] : hAPP(com,com,hAPP(com,fun(com,com),semi,Com1_1),Com2_1) != hAPP(pname,com,body_1,Pname) ).

fof(fact_478_inj__on__diff,axiom,
    ! [X_a,X_b,B,F,A_1] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,X_b),fun(fun(X_a,bool),bool),inj_on(X_a,X_b),F),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),B)))
     <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,X_b),fun(fun(X_a,bool),bool),inj_on(X_a,X_b),F),A_1)) ) ).

fof(fact_416_Diff__Int,axiom,
    ! [X_a,A_1,B,C] : hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),B)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),C)) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),B),C)) ).

fof(fact_272_folding__image__simple__idem_Oinsert__idem,axiom,
    ! [X_b,X_a,X_2,A_1,F,Z,G,Fa] :
      ( ( hBOOL(hAPP(fun(X_b,bool),bool,finite_finite(X_b),A_1))
       => hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),F,hAPP(X_b,X_a,G,X_2)),hAPP(fun(X_b,bool),X_a,Fa,A_1)) = hAPP(fun(X_b,bool),X_a,Fa,hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),X_2),A_1)) )
     <= hBOOL(hAPP(fun(fun(X_b,bool),X_a),bool,hAPP(fun(X_b,X_a),fun(fun(fun(X_b,bool),X_a),bool),hAPP(X_a,fun(fun(X_b,X_a),fun(fun(fun(X_b,bool),X_a),bool)),hAPP(fun(X_a,fun(X_a,X_a)),fun(X_a,fun(fun(X_b,X_a),fun(fun(fun(X_b,bool),X_a),bool))),finite908156982e_idem(X_a,X_b),F),Z),G),Fa)) ) ).

fof(fact_210_le__supE,axiom,
    ! [X_a] :
      ( ! [A_6,B_2,X] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),A_6),B_2)),X))
         => ~ ( ~ hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),B_2),X))
             <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),A_6),X)) ) )
     <= semilattice_sup(X_a) ) ).

fof(fact_170_escape,axiom,
    ! [X_a,G_1,C_1,Q_1,P_1] :
      ( ! [Z_3,S_3] :
          ( hBOOL(hAPP(fun(hoare_1656922687triple(X_a),bool),bool,hAPP(fun(hoare_1656922687triple(X_a),bool),fun(fun(hoare_1656922687triple(X_a),bool),bool),hoare_279057269derivs(X_a),G_1),hAPP(fun(hoare_1656922687triple(X_a),bool),fun(hoare_1656922687triple(X_a),bool),hAPP(hoare_1656922687triple(X_a),fun(fun(hoare_1656922687triple(X_a),bool),fun(hoare_1656922687triple(X_a),bool)),insert(hoare_1656922687triple(X_a)),hAPP(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a),hAPP(com,fun(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a)),hAPP(fun(X_a,fun(state,bool)),fun(com,fun(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a))),hoare_246368825triple(X_a),hAPP(fun(state,bool),fun(X_a,fun(state,bool)),combk(fun(state,bool),X_a),hAPP(state,fun(state,bool),hAPP(fun(state,fun(state,bool)),fun(state,fun(state,bool)),combc(state,state,bool),fequal(state)),S_3))),C_1),hAPP(fun(state,bool),fun(X_a,fun(state,bool)),combk(fun(state,bool),X_a),hAPP(X_a,fun(state,bool),Q_1,Z_3)))),bot_bot(fun(hoare_1656922687triple(X_a),bool)))))
         <= hBOOL(hAPP(state,bool,hAPP(X_a,fun(state,bool),P_1,Z_3),S_3)) )
     => hBOOL(hAPP(fun(hoare_1656922687triple(X_a),bool),bool,hAPP(fun(hoare_1656922687triple(X_a),bool),fun(fun(hoare_1656922687triple(X_a),bool),bool),hoare_279057269derivs(X_a),G_1),hAPP(fun(hoare_1656922687triple(X_a),bool),fun(hoare_1656922687triple(X_a),bool),hAPP(hoare_1656922687triple(X_a),fun(fun(hoare_1656922687triple(X_a),bool),fun(hoare_1656922687triple(X_a),bool)),insert(hoare_1656922687triple(X_a)),hAPP(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a),hAPP(com,fun(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a)),hAPP(fun(X_a,fun(state,bool)),fun(com,fun(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a))),hoare_246368825triple(X_a),P_1),C_1),Q_1)),bot_bot(fun(hoare_1656922687triple(X_a),bool))))) ) ).

fof(fact_184_sup__Un__eq,axiom,
    ! [X_a,R_1,S,X_1] :
      ( hBOOL(hAPP(X_a,bool,hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,fun(fun(X_a,bool),bool)),fun(fun(X_a,bool),fun(X_a,bool)),combc(X_a,fun(X_a,bool),bool),member(X_a)),R_1)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,fun(fun(X_a,bool),bool)),fun(fun(X_a,bool),fun(X_a,bool)),combc(X_a,fun(X_a,bool),bool),member(X_a)),S)),X_1))
    <=> hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),R_1),S))) ) ).

fof(fact_330_Int__mono,axiom,
    ! [X_a,B,D_1,A_1,C] :
      ( ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),B)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),C),D_1)))
       <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),B),D_1)) )
     <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),A_1),C)) ) ).

fof(fact_387_Int__Collect__mono,axiom,
    ! [X_a,Q_1,P_1,A_1,B] :
      ( ( ! [X_1] :
            ( ( hBOOL(hAPP(X_a,bool,P_1,X_1))
             => hBOOL(hAPP(X_a,bool,Q_1,X_1)) )
           <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_1),A_1)) )
       => hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),collect(X_a),P_1))),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),B),hAPP(fun(X_a,bool),fun(X_a,bool),collect(X_a),Q_1)))) )
     <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),A_1),B)) ) ).

fof(fact_428_set__diff__eq,axiom,
    ! [X_a,A_1,B] : hAPP(fun(X_a,bool),fun(X_a,bool),collect(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,fun(bool,bool)),fun(fun(X_a,bool),fun(X_a,bool)),combs(X_a,bool,bool),hAPP(fun(X_a,bool),fun(X_a,fun(bool,bool)),hAPP(fun(bool,fun(bool,bool)),fun(fun(X_a,bool),fun(X_a,fun(bool,bool))),combb(bool,fun(bool,bool),X_a),fconj),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,fun(fun(X_a,bool),bool)),fun(fun(X_a,bool),fun(X_a,bool)),combc(X_a,fun(X_a,bool),bool),member(X_a)),A_1))),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(bool,bool),fun(fun(X_a,bool),fun(X_a,bool)),combb(bool,bool,X_a),fNot),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,fun(fun(X_a,bool),bool)),fun(fun(X_a,bool),fun(X_a,bool)),combc(X_a,fun(X_a,bool),bool),member(X_a)),B)))) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),B) ).

fof(fact_59_image__ident,axiom,
    ! [X_a,Y_3] : ti(fun(X_a,bool),Y_3) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,X_a),fun(fun(X_a,bool),fun(X_a,bool)),image(X_a,X_a),combi(X_a)),Y_3) ).

fof(fact_294_xt2,axiom,
    ! [X_b,X_a] :
      ( ( ord(X_b)
        & order(X_a) )
     => ! [C_1,F,B_1,A_3] :
          ( ( ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(X_b,X_a,F,C_1)),A_3))
             <= ! [X_1,Y_1] :
                  ( hBOOL(hAPP(X_b,bool,hAPP(X_b,fun(X_b,bool),ord_less_eq(X_b),Y_1),X_1))
                 => hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(X_b,X_a,F,Y_1)),hAPP(X_b,X_a,F,X_1))) ) )
           <= hBOOL(hAPP(X_b,bool,hAPP(X_b,fun(X_b,bool),ord_less_eq(X_b),C_1),B_1)) )
         <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(X_b,X_a,F,B_1)),A_3)) ) ) ).

fof(fact_226_sup__bot__left,axiom,
    ! [X_a] :
      ( bounded_lattice_bot(X_a)
     => ! [X] : ti(X_a,X) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),bot_bot(X_a)),X) ) ).

fof(arity_fun___Orderings_Obot,axiom,
    ! [T_2,T_1] :
      ( bot(T_1)
     => bot(fun(T_2,T_1)) ) ).

fof(fact_305_inf1I,axiom,
    ! [X_a,B,A_1,X_2] :
      ( hBOOL(hAPP(X_a,bool,A_1,X_2))
     => ( hBOOL(hAPP(X_a,bool,B,X_2))
       => hBOOL(hAPP(X_a,bool,hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),B),X_2)) ) ) ).

fof(fact_484_inj__on__iff,axiom,
    ! [X_a,X_b,Y_2,X_2,F,A_1] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,X_b),fun(fun(X_a,bool),bool),inj_on(X_a,X_b),F),A_1))
     => ( ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),Y_2),A_1))
         => ( ti(X_a,Y_2) = ti(X_a,X_2)
          <=> hAPP(X_a,X_b,F,Y_2) = hAPP(X_a,X_b,F,X_2) ) )
       <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_2),A_1)) ) ) ).

fof(fact_92_WT__bodiesD,axiom,
    ! [Pn,B_2] :
      ( ( hBOOL(hAPP(com,bool,wt,B_2))
       <= hAPP(pname,option(com),body,Pn) = hAPP(com,option(com),some(com),B_2) )
     <= hBOOL(wT_bodies) ) ).

fof(conj_0,hypothesis,
    hBOOL(hoare_1924220188gleton) ).

fof(fact_155_order__eq__iff,axiom,
    ! [X_a] :
      ( order(X_a)
     => ! [X_2,Y_2] :
          ( ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),Y_2),X_2))
            & hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X_2),Y_2)) )
        <=> ti(X_a,Y_2) = ti(X_a,X_2) ) ) ).

fof(fact_161_bot__unique,axiom,
    ! [X_a] :
      ( ! [A_3] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),A_3),bot_bot(X_a)))
        <=> ti(X_a,A_3) = bot_bot(X_a) )
     <= bot(X_a) ) ).

fof(fact_103_MGT__Body,axiom,
    ! [G_1,Procs] :
      ( ( hBOOL(hAPP(fun(hoare_1656922687triple(state),bool),bool,hAPP(fun(hoare_1656922687triple(state),bool),fun(fun(hoare_1656922687triple(state),bool),bool),hoare_279057269derivs(state),G_1),hAPP(fun(pname,bool),fun(hoare_1656922687triple(state),bool),hAPP(fun(pname,hoare_1656922687triple(state)),fun(fun(pname,bool),fun(hoare_1656922687triple(state),bool)),image(pname,hoare_1656922687triple(state)),hAPP(fun(pname,com),fun(pname,hoare_1656922687triple(state)),hAPP(fun(com,hoare_1656922687triple(state)),fun(fun(pname,com),fun(pname,hoare_1656922687triple(state))),combb(com,hoare_1656922687triple(state),pname),hoare_Mirabelle_MGT),body_1)),Procs)))
       <= hBOOL(hAPP(fun(pname,bool),bool,finite_finite(pname),Procs)) )
     <= hBOOL(hAPP(fun(hoare_1656922687triple(state),bool),bool,hAPP(fun(hoare_1656922687triple(state),bool),fun(fun(hoare_1656922687triple(state),bool),bool),hoare_279057269derivs(state),hAPP(fun(hoare_1656922687triple(state),bool),fun(hoare_1656922687triple(state),bool),hAPP(fun(hoare_1656922687triple(state),bool),fun(fun(hoare_1656922687triple(state),bool),fun(hoare_1656922687triple(state),bool)),semilattice_sup_sup(fun(hoare_1656922687triple(state),bool)),G_1),hAPP(fun(pname,bool),fun(hoare_1656922687triple(state),bool),hAPP(fun(pname,hoare_1656922687triple(state)),fun(fun(pname,bool),fun(hoare_1656922687triple(state),bool)),image(pname,hoare_1656922687triple(state)),hAPP(fun(pname,com),fun(pname,hoare_1656922687triple(state)),hAPP(fun(com,hoare_1656922687triple(state)),fun(fun(pname,com),fun(pname,hoare_1656922687triple(state))),combb(com,hoare_1656922687triple(state),pname),hoare_Mirabelle_MGT),body_1)),Procs))),hAPP(fun(pname,bool),fun(hoare_1656922687triple(state),bool),hAPP(fun(pname,hoare_1656922687triple(state)),fun(fun(pname,bool),fun(hoare_1656922687triple(state),bool)),image(pname,hoare_1656922687triple(state)),hAPP(fun(pname,com),fun(pname,hoare_1656922687triple(state)),hAPP(fun(com,hoare_1656922687triple(state)),fun(fun(pname,com),fun(pname,hoare_1656922687triple(state))),combb(com,hoare_1656922687triple(state),pname),hoare_Mirabelle_MGT),hAPP(fun(pname,option(com)),fun(pname,com),hAPP(fun(option(com),com),fun(fun(pname,option(com)),fun(pname,com)),combb(option(com),com,pname),the(com)),body))),Procs))) ) ).

fof(fact_154_order__eq__refl,axiom,
    ! [X_a] :
      ( ! [X,Y] :
          ( Y = X
         => hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X),Y)) )
     <= preorder(X_a) ) ).

fof(fact_173_conseq2,axiom,
    ! [X_a,Q_1,G_1,P_1,C_1,Q_2] :
      ( hBOOL(hAPP(fun(hoare_1656922687triple(X_a),bool),bool,hAPP(fun(hoare_1656922687triple(X_a),bool),fun(fun(hoare_1656922687triple(X_a),bool),bool),hoare_279057269derivs(X_a),G_1),hAPP(fun(hoare_1656922687triple(X_a),bool),fun(hoare_1656922687triple(X_a),bool),hAPP(hoare_1656922687triple(X_a),fun(fun(hoare_1656922687triple(X_a),bool),fun(hoare_1656922687triple(X_a),bool)),insert(hoare_1656922687triple(X_a)),hAPP(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a),hAPP(com,fun(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a)),hAPP(fun(X_a,fun(state,bool)),fun(com,fun(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a))),hoare_246368825triple(X_a),P_1),C_1),Q_2)),bot_bot(fun(hoare_1656922687triple(X_a),bool)))))
     => ( hBOOL(hAPP(fun(hoare_1656922687triple(X_a),bool),bool,hAPP(fun(hoare_1656922687triple(X_a),bool),fun(fun(hoare_1656922687triple(X_a),bool),bool),hoare_279057269derivs(X_a),G_1),hAPP(fun(hoare_1656922687triple(X_a),bool),fun(hoare_1656922687triple(X_a),bool),hAPP(hoare_1656922687triple(X_a),fun(fun(hoare_1656922687triple(X_a),bool),fun(hoare_1656922687triple(X_a),bool)),insert(hoare_1656922687triple(X_a)),hAPP(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a),hAPP(com,fun(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a)),hAPP(fun(X_a,fun(state,bool)),fun(com,fun(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a))),hoare_246368825triple(X_a),P_1),C_1),Q_1)),bot_bot(fun(hoare_1656922687triple(X_a),bool)))))
       <= ! [Z_3,S_3] :
            ( hBOOL(hAPP(state,bool,hAPP(X_a,fun(state,bool),Q_1,Z_3),S_3))
           <= hBOOL(hAPP(state,bool,hAPP(X_a,fun(state,bool),Q_2,Z_3),S_3)) ) ) ) ).

fof(fact_408_Diff__insert2,axiom,
    ! [X_a,A_1,A_3,B] : hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),A_3),B)) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),A_3),bot_bot(fun(X_a,bool))))),B) ).

fof(fact_323_inf1D1,axiom,
    ! [X_a,A_1,B,X_2] :
      ( hBOOL(hAPP(X_a,bool,A_1,X_2))
     <= hBOOL(hAPP(X_a,bool,hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),B),X_2)) ) ).

fof(fact_265_the1__equality,axiom,
    ! [X_a,A_3,P_1] :
      ( ( ti(X_a,A_3) = hAPP(fun(X_a,bool),X_a,the_1(X_a),P_1)
       <= hBOOL(hAPP(X_a,bool,P_1,A_3)) )
     <= ? [X_1] :
          ( hBOOL(hAPP(X_a,bool,P_1,X_1))
          & ! [Y_1] :
              ( ti(X_a,X_1) = ti(X_a,Y_1)
             <= hBOOL(hAPP(X_a,bool,P_1,Y_1)) ) ) ) ).

fof(tsy_c_Set_Oimage_res,axiom,
    ! [X_a,X_b] : ti(fun(fun(X_a,X_b),fun(fun(X_a,bool),fun(X_b,bool))),image(X_a,X_b)) = image(X_a,X_b) ).

fof(fact_41_insert__absorb2,axiom,
    ! [X_a,X_2,A_1] : hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),A_1) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),A_1)) ).

fof(fact_129_finite__UnI,axiom,
    ! [X_a,G_1,Fa] :
      ( ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),Fa),G_1)))
       <= hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),G_1)) )
     <= hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),Fa)) ) ).

fof(fact_372_inf__sup__aci_I4_J,axiom,
    ! [X_a] :
      ( ! [X,Y] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),X),Y) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),X),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),X),Y))
     <= lattice(X_a) ) ).

fof(fact_432_DiffD2,axiom,
    ! [X_a,C_1,A_1,B] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),C_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),B)))
     => ~ hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),C_1),B)) ) ).

fof(fact_120_Un__iff,axiom,
    ! [X_a,C_1,A_1,B] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),C_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),A_1),B)))
    <=> ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),C_1),B))
        | hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),C_1),A_1)) ) ) ).

fof(fact_222_sup__ge1,axiom,
    ! [X_a] :
      ( semilattice_sup(X_a)
     => ! [X,Y] : hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),X),Y))) ) ).

fof(fact_132_Un__insert__right,axiom,
    ! [X_a,A_1,A_3,B] : hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),A_3),B)) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),A_3),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),A_1),B)) ).

fof(fact_7_MGT__BodyN,axiom,
    ! [Pn_1,G_1] :
      ( hBOOL(hAPP(fun(hoare_1656922687triple(state),bool),bool,hAPP(fun(hoare_1656922687triple(state),bool),fun(fun(hoare_1656922687triple(state),bool),bool),hoare_279057269derivs(state),hAPP(fun(hoare_1656922687triple(state),bool),fun(hoare_1656922687triple(state),bool),hAPP(hoare_1656922687triple(state),fun(fun(hoare_1656922687triple(state),bool),fun(hoare_1656922687triple(state),bool)),insert(hoare_1656922687triple(state)),hAPP(com,hoare_1656922687triple(state),hoare_Mirabelle_MGT,hAPP(pname,com,body_1,Pn_1))),G_1)),hAPP(fun(hoare_1656922687triple(state),bool),fun(hoare_1656922687triple(state),bool),hAPP(hoare_1656922687triple(state),fun(fun(hoare_1656922687triple(state),bool),fun(hoare_1656922687triple(state),bool)),insert(hoare_1656922687triple(state)),hAPP(com,hoare_1656922687triple(state),hoare_Mirabelle_MGT,hAPP(option(com),com,the(com),hAPP(pname,option(com),body,Pn_1)))),bot_bot(fun(hoare_1656922687triple(state),bool)))))
     => hBOOL(hAPP(fun(hoare_1656922687triple(state),bool),bool,hAPP(fun(hoare_1656922687triple(state),bool),fun(fun(hoare_1656922687triple(state),bool),bool),hoare_279057269derivs(state),G_1),hAPP(fun(hoare_1656922687triple(state),bool),fun(hoare_1656922687triple(state),bool),hAPP(hoare_1656922687triple(state),fun(fun(hoare_1656922687triple(state),bool),fun(hoare_1656922687triple(state),bool)),insert(hoare_1656922687triple(state)),hAPP(com,hoare_1656922687triple(state),hoare_Mirabelle_MGT,hAPP(pname,com,body_1,Pn_1))),bot_bot(fun(hoare_1656922687triple(state),bool))))) ) ).

fof(fact_254_WT_OSemi,axiom,
    ! [C1,C0] :
      ( hBOOL(hAPP(com,bool,wt,C0))
     => ( hBOOL(hAPP(com,bool,wt,C1))
       => hBOOL(hAPP(com,bool,wt,hAPP(com,com,hAPP(com,fun(com,com),semi,C0),C1))) ) ) ).

fof(tsy_c_hBOOL_arg1,hypothesis,
    ! [B_1_1] :
      ( hBOOL(ti(bool,B_1_1))
    <=> hBOOL(B_1_1) ) ).

fof(arity_HOL_Obool___Lattices_Osemilattice__sup,axiom,
    semilattice_sup(bool) ).

fof(fact_13_finite__Collect__conjI,axiom,
    ! [X_a,Q_1,P_1] :
      ( ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),collect(X_a),Q_1)))
        | hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),collect(X_a),P_1))) )
     => hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),collect(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,fun(bool,bool)),fun(fun(X_a,bool),fun(X_a,bool)),combs(X_a,bool,bool),hAPP(fun(X_a,bool),fun(X_a,fun(bool,bool)),hAPP(fun(bool,fun(bool,bool)),fun(fun(X_a,bool),fun(X_a,fun(bool,bool))),combb(bool,fun(bool,bool),X_a),fconj),P_1)),Q_1)))) ) ).

fof(tsy_c_Nitpick_Ofold__graph_H_res,axiom,
    ! [X_a,X_b] : fold_graph(X_a,X_b) = ti(fun(fun(X_a,fun(X_b,X_b)),fun(X_b,fun(fun(X_a,bool),fun(X_b,bool)))),fold_graph(X_a,X_b)) ).

fof(fact_212_sup__least,axiom,
    ! [X_a] :
      ( semilattice_sup(X_a)
     => ! [Z_1,Y,X] :
          ( ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),Y),Z_1)),X))
           <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),Z_1),X)) )
         <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),Y),X)) ) ) ).

fof(fact_239_Comp,axiom,
    ! [X_a,D,R_1,G_1,P_1,C_1,Q_1] :
      ( ( hBOOL(hAPP(fun(hoare_1656922687triple(X_a),bool),bool,hAPP(fun(hoare_1656922687triple(X_a),bool),fun(fun(hoare_1656922687triple(X_a),bool),bool),hoare_279057269derivs(X_a),G_1),hAPP(fun(hoare_1656922687triple(X_a),bool),fun(hoare_1656922687triple(X_a),bool),hAPP(hoare_1656922687triple(X_a),fun(fun(hoare_1656922687triple(X_a),bool),fun(hoare_1656922687triple(X_a),bool)),insert(hoare_1656922687triple(X_a)),hAPP(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a),hAPP(com,fun(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a)),hAPP(fun(X_a,fun(state,bool)),fun(com,fun(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a))),hoare_246368825triple(X_a),P_1),hAPP(com,com,hAPP(com,fun(com,com),semi,C_1),D)),R_1)),bot_bot(fun(hoare_1656922687triple(X_a),bool)))))
       <= hBOOL(hAPP(fun(hoare_1656922687triple(X_a),bool),bool,hAPP(fun(hoare_1656922687triple(X_a),bool),fun(fun(hoare_1656922687triple(X_a),bool),bool),hoare_279057269derivs(X_a),G_1),hAPP(fun(hoare_1656922687triple(X_a),bool),fun(hoare_1656922687triple(X_a),bool),hAPP(hoare_1656922687triple(X_a),fun(fun(hoare_1656922687triple(X_a),bool),fun(hoare_1656922687triple(X_a),bool)),insert(hoare_1656922687triple(X_a)),hAPP(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a),hAPP(com,fun(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a)),hAPP(fun(X_a,fun(state,bool)),fun(com,fun(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a))),hoare_246368825triple(X_a),Q_1),D),R_1)),bot_bot(fun(hoare_1656922687triple(X_a),bool))))) )
     <= hBOOL(hAPP(fun(hoare_1656922687triple(X_a),bool),bool,hAPP(fun(hoare_1656922687triple(X_a),bool),fun(fun(hoare_1656922687triple(X_a),bool),bool),hoare_279057269derivs(X_a),G_1),hAPP(fun(hoare_1656922687triple(X_a),bool),fun(hoare_1656922687triple(X_a),bool),hAPP(hoare_1656922687triple(X_a),fun(fun(hoare_1656922687triple(X_a),bool),fun(hoare_1656922687triple(X_a),bool)),insert(hoare_1656922687triple(X_a)),hAPP(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a),hAPP(com,fun(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a)),hAPP(fun(X_a,fun(state,bool)),fun(com,fun(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a))),hoare_246368825triple(X_a),P_1),C_1),Q_1)),bot_bot(fun(hoare_1656922687triple(X_a),bool))))) ) ).

fof(fact_1_asm,axiom,
    ! [X_a,Ts,G_1] :
      ( hBOOL(hAPP(fun(hoare_1656922687triple(X_a),bool),bool,hAPP(fun(hoare_1656922687triple(X_a),bool),fun(fun(hoare_1656922687triple(X_a),bool),bool),ord_less_eq(fun(hoare_1656922687triple(X_a),bool)),Ts),G_1))
     => hBOOL(hAPP(fun(hoare_1656922687triple(X_a),bool),bool,hAPP(fun(hoare_1656922687triple(X_a),bool),fun(fun(hoare_1656922687triple(X_a),bool),bool),hoare_279057269derivs(X_a),G_1),Ts)) ) ).

fof(fact_324_inf1D2,axiom,
    ! [X_a,A_1,B,X_2] :
      ( hBOOL(hAPP(X_a,bool,hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),B),X_2))
     => hBOOL(hAPP(X_a,bool,B,X_2)) ) ).

fof(tsy_c_HOL_OThe_res,axiom,
    ! [X_a] : the_1(X_a) = ti(fun(fun(X_a,bool),X_a),the_1(X_a)) ).

fof(fact_421_empty__Diff,axiom,
    ! [X_a,A_1] : bot_bot(fun(X_a,bool)) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),bot_bot(fun(X_a,bool))),A_1) ).

fof(fact_369_inf__sup__aci_I1_J,axiom,
    ! [X_a] :
      ( lattice(X_a)
     => ! [X,Y] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),X),Y) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),Y),X) ) ).

fof(fact_441_folding__image__simple_Oinsert__remove,axiom,
    ! [X_b,X_a,X_2,A_1,F,Z,G,Fa] :
      ( ( hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),F,hAPP(X_b,X_a,G,X_2)),hAPP(fun(X_b,bool),X_a,Fa,hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),minus_minus(fun(X_b,bool)),A_1),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),X_2),bot_bot(fun(X_b,bool)))))) = hAPP(fun(X_b,bool),X_a,Fa,hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),X_2),A_1))
       <= hBOOL(hAPP(fun(X_b,bool),bool,finite_finite(X_b),A_1)) )
     <= hBOOL(hAPP(fun(fun(X_b,bool),X_a),bool,hAPP(fun(X_b,X_a),fun(fun(fun(X_b,bool),X_a),bool),hAPP(X_a,fun(fun(X_b,X_a),fun(fun(fun(X_b,bool),X_a),bool)),hAPP(fun(X_a,fun(X_a,X_a)),fun(X_a,fun(fun(X_b,X_a),fun(fun(fun(X_b,bool),X_a),bool))),finite1357897459simple(X_a,X_b),F),Z),G),Fa)) ) ).

fof(fact_159_Body1,axiom,
    ! [X_a,Pn_1,G_1,P_1,Q_1,Procs] :
      ( ( hBOOL(hAPP(fun(pname,bool),bool,hAPP(pname,fun(fun(pname,bool),bool),member(pname),Pn_1),Procs))
       => hBOOL(hAPP(fun(hoare_1656922687triple(X_a),bool),bool,hAPP(fun(hoare_1656922687triple(X_a),bool),fun(fun(hoare_1656922687triple(X_a),bool),bool),hoare_279057269derivs(X_a),G_1),hAPP(fun(hoare_1656922687triple(X_a),bool),fun(hoare_1656922687triple(X_a),bool),hAPP(hoare_1656922687triple(X_a),fun(fun(hoare_1656922687triple(X_a),bool),fun(hoare_1656922687triple(X_a),bool)),insert(hoare_1656922687triple(X_a)),hAPP(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a),hAPP(com,fun(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a)),hAPP(fun(X_a,fun(state,bool)),fun(com,fun(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a))),hoare_246368825triple(X_a),hAPP(pname,fun(X_a,fun(state,bool)),P_1,Pn_1)),hAPP(pname,com,body_1,Pn_1)),hAPP(pname,fun(X_a,fun(state,bool)),Q_1,Pn_1))),bot_bot(fun(hoare_1656922687triple(X_a),bool))))) )
     <= hBOOL(hAPP(fun(hoare_1656922687triple(X_a),bool),bool,hAPP(fun(hoare_1656922687triple(X_a),bool),fun(fun(hoare_1656922687triple(X_a),bool),bool),hoare_279057269derivs(X_a),hAPP(fun(hoare_1656922687triple(X_a),bool),fun(hoare_1656922687triple(X_a),bool),hAPP(fun(hoare_1656922687triple(X_a),bool),fun(fun(hoare_1656922687triple(X_a),bool),fun(hoare_1656922687triple(X_a),bool)),semilattice_sup_sup(fun(hoare_1656922687triple(X_a),bool)),G_1),hAPP(fun(pname,bool),fun(hoare_1656922687triple(X_a),bool),hAPP(fun(pname,hoare_1656922687triple(X_a)),fun(fun(pname,bool),fun(hoare_1656922687triple(X_a),bool)),image(pname,hoare_1656922687triple(X_a)),hAPP(fun(pname,fun(X_a,fun(state,bool))),fun(pname,hoare_1656922687triple(X_a)),hAPP(fun(pname,fun(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a))),fun(fun(pname,fun(X_a,fun(state,bool))),fun(pname,hoare_1656922687triple(X_a))),combs(pname,fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a)),hAPP(fun(pname,com),fun(pname,fun(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a))),hAPP(fun(pname,fun(com,fun(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a)))),fun(fun(pname,com),fun(pname,fun(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a)))),combs(pname,com,fun(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a))),hAPP(fun(pname,fun(X_a,fun(state,bool))),fun(pname,fun(com,fun(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a)))),hAPP(fun(fun(X_a,fun(state,bool)),fun(com,fun(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a)))),fun(fun(pname,fun(X_a,fun(state,bool))),fun(pname,fun(com,fun(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a))))),combb(fun(X_a,fun(state,bool)),fun(com,fun(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a))),pname),hoare_246368825triple(X_a)),P_1)),body_1)),Q_1)),Procs))),hAPP(fun(pname,bool),fun(hoare_1656922687triple(X_a),bool),hAPP(fun(pname,hoare_1656922687triple(X_a)),fun(fun(pname,bool),fun(hoare_1656922687triple(X_a),bool)),image(pname,hoare_1656922687triple(X_a)),hAPP(fun(pname,fun(X_a,fun(state,bool))),fun(pname,hoare_1656922687triple(X_a)),hAPP(fun(pname,fun(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a))),fun(fun(pname,fun(X_a,fun(state,bool))),fun(pname,hoare_1656922687triple(X_a))),combs(pname,fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a)),hAPP(fun(pname,com),fun(pname,fun(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a))),hAPP(fun(pname,fun(com,fun(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a)))),fun(fun(pname,com),fun(pname,fun(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a)))),combs(pname,com,fun(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a))),hAPP(fun(pname,fun(X_a,fun(state,bool))),fun(pname,fun(com,fun(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a)))),hAPP(fun(fun(X_a,fun(state,bool)),fun(com,fun(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a)))),fun(fun(pname,fun(X_a,fun(state,bool))),fun(pname,fun(com,fun(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a))))),combb(fun(X_a,fun(state,bool)),fun(com,fun(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a))),pname),hoare_246368825triple(X_a)),P_1)),hAPP(fun(pname,option(com)),fun(pname,com),hAPP(fun(option(com),com),fun(fun(pname,option(com)),fun(pname,com)),combb(option(com),com,pname),the(com)),body))),Q_1)),Procs))) ) ).

fof(fact_483_inj__onD,axiom,
    ! [X_a,X_b,X_2,Y_2,F,A_1] :
      ( ( hAPP(X_a,X_b,F,X_2) = hAPP(X_a,X_b,F,Y_2)
       => ( ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),Y_2),A_1))
           => ti(X_a,Y_2) = ti(X_a,X_2) )
         <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_2),A_1)) ) )
     <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,X_b),fun(fun(X_a,bool),bool),inj_on(X_a,X_b),F),A_1)) ) ).

fof(fact_476_map__upd__nonempty,axiom,
    ! [X_a,X_b,T_3,K,X_2] :
      ~ ! [X_1] : none(X_b) = hAPP(X_a,option(X_b),hAPP(option(X_b),fun(X_a,option(X_b)),hAPP(X_a,fun(option(X_b),fun(X_a,option(X_b))),hAPP(fun(X_a,option(X_b)),fun(X_a,fun(option(X_b),fun(X_a,option(X_b)))),fun_upd(X_a,option(X_b)),T_3),K),hAPP(X_b,option(X_b),some(X_b),X_2)),X_1) ).

fof(fact_20_emptyE,axiom,
    ! [X_a,A_3] : ~ hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),A_3),bot_bot(fun(X_a,bool)))) ).

fof(fact_193_sup__apply,axiom,
    ! [X_b,X_a] :
      ( ! [F,G,X_2] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),hAPP(X_b,X_a,F,X_2)),hAPP(X_b,X_a,G,X_2)) = hAPP(X_b,X_a,hAPP(fun(X_b,X_a),fun(X_b,X_a),hAPP(fun(X_b,X_a),fun(fun(X_b,X_a),fun(X_b,X_a)),semilattice_sup_sup(fun(X_b,X_a)),F),G),X_2)
     <= lattice(X_a) ) ).

fof(fact_54_rev__image__eqI,axiom,
    ! [X_b,X_a,B_1,F,X_2,A_1] :
      ( ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),B_1),hAPP(fun(X_a,bool),fun(X_b,bool),hAPP(fun(X_a,X_b),fun(fun(X_a,bool),fun(X_b,bool)),image(X_a,X_b),F),A_1)))
       <= hAPP(X_a,X_b,F,X_2) = ti(X_b,B_1) )
     <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_2),A_1)) ) ).

fof(tsy_c_Hoare__Mirabelle__nrugjuseim_Otriple_Otriple__case_res,axiom,
    ! [X_b,X_a] : hoare_1312322281e_case(X_b,X_a) = ti(fun(fun(fun(X_b,fun(state,bool)),fun(com,fun(fun(X_b,fun(state,bool)),X_a))),fun(hoare_1656922687triple(X_b),X_a)),hoare_1312322281e_case(X_b,X_a)) ).

fof(tsy_c_Com_Ocom_OSKIP_res,axiom,
    skip = ti(com,skip) ).

fof(fact_355_inf__mono,axiom,
    ! [X_a] :
      ( semilattice_inf(X_a)
     => ! [B_2,D_2,A_6,C_2] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),A_6),C_2))
         => ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),B_2),D_2))
           => hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),A_6),B_2)),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),C_2),D_2))) ) ) ) ).

fof(fact_189_Option_Oset_Osimps_I2_J,axiom,
    ! [X_a,X_2] : hAPP(option(X_a),fun(X_a,bool),set(X_a),hAPP(X_a,option(X_a),some(X_a),X_2)) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),bot_bot(fun(X_a,bool))) ).

fof(help_fFalse_1_1_U,axiom,
    ~ hBOOL(fFalse) ).

fof(fact_85_subset__image__iff,axiom,
    ! [X_a,X_b,B,F,A_1] :
      ( ? [AA] :
          ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),ord_less_eq(fun(X_b,bool)),AA),A_1))
          & hAPP(fun(X_b,bool),fun(X_a,bool),hAPP(fun(X_b,X_a),fun(fun(X_b,bool),fun(X_a,bool)),image(X_b,X_a),F),AA) = ti(fun(X_a,bool),B) )
    <=> hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),B),hAPP(fun(X_b,bool),fun(X_a,bool),hAPP(fun(X_b,X_a),fun(fun(X_b,bool),fun(X_a,bool)),image(X_b,X_a),F),A_1))) ) ).

fof(fact_235_WT_OSkip,axiom,
    hBOOL(hAPP(com,bool,wt,skip)) ).

fof(fact_49_in__mono,axiom,
    ! [X_a,X_2,A_1,B] :
      ( ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_2),A_1))
       => hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_2),B)) )
     <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),A_1),B)) ) ).

fof(fact_402_Int__Diff,axiom,
    ! [X_a,A_1,B,C] : hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),B)),C) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),B),C)) ).

fof(fact_110_weak__Body,axiom,
    ! [X_a,G_1,P_1,Pn_1,Q_1] :
      ( hBOOL(hAPP(fun(hoare_1656922687triple(X_a),bool),bool,hAPP(fun(hoare_1656922687triple(X_a),bool),fun(fun(hoare_1656922687triple(X_a),bool),bool),hoare_279057269derivs(X_a),G_1),hAPP(fun(hoare_1656922687triple(X_a),bool),fun(hoare_1656922687triple(X_a),bool),hAPP(hoare_1656922687triple(X_a),fun(fun(hoare_1656922687triple(X_a),bool),fun(hoare_1656922687triple(X_a),bool)),insert(hoare_1656922687triple(X_a)),hAPP(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a),hAPP(com,fun(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a)),hAPP(fun(X_a,fun(state,bool)),fun(com,fun(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a))),hoare_246368825triple(X_a),P_1),hAPP(option(com),com,the(com),hAPP(pname,option(com),body,Pn_1))),Q_1)),bot_bot(fun(hoare_1656922687triple(X_a),bool)))))
     => hBOOL(hAPP(fun(hoare_1656922687triple(X_a),bool),bool,hAPP(fun(hoare_1656922687triple(X_a),bool),fun(fun(hoare_1656922687triple(X_a),bool),bool),hoare_279057269derivs(X_a),G_1),hAPP(fun(hoare_1656922687triple(X_a),bool),fun(hoare_1656922687triple(X_a),bool),hAPP(hoare_1656922687triple(X_a),fun(fun(hoare_1656922687triple(X_a),bool),fun(hoare_1656922687triple(X_a),bool)),insert(hoare_1656922687triple(X_a)),hAPP(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a),hAPP(com,fun(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a)),hAPP(fun(X_a,fun(state,bool)),fun(com,fun(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a))),hoare_246368825triple(X_a),P_1),hAPP(pname,com,body_1,Pn_1)),Q_1)),bot_bot(fun(hoare_1656922687triple(X_a),bool))))) ) ).

fof(fact_391_folding__image__simple_Ounion__inter,axiom,
    ! [X_b,X_a,B,A_1,F,Z,G,Fa] :
      ( hBOOL(hAPP(fun(fun(X_b,bool),X_a),bool,hAPP(fun(X_b,X_a),fun(fun(fun(X_b,bool),X_a),bool),hAPP(X_a,fun(fun(X_b,X_a),fun(fun(fun(X_b,bool),X_a),bool)),hAPP(fun(X_a,fun(X_a,X_a)),fun(X_a,fun(fun(X_b,X_a),fun(fun(fun(X_b,bool),X_a),bool))),finite1357897459simple(X_a,X_b),F),Z),G),Fa))
     => ( hBOOL(hAPP(fun(X_b,bool),bool,finite_finite(X_b),A_1))
       => ( hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),F,hAPP(fun(X_b,bool),X_a,Fa,A_1)),hAPP(fun(X_b,bool),X_a,Fa,B)) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),F,hAPP(fun(X_b,bool),X_a,Fa,hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_sup_sup(fun(X_b,bool)),A_1),B))),hAPP(fun(X_b,bool),X_a,Fa,hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_inf_inf(fun(X_b,bool)),A_1),B)))
         <= hBOOL(hAPP(fun(X_b,bool),bool,finite_finite(X_b),B)) ) ) ) ).

fof(tsy_c_Finite__Set_Ofinite_res,axiom,
    ! [X_a] : finite_finite(X_a) = ti(fun(fun(X_a,bool),bool),finite_finite(X_a)) ).

fof(fact_30_ex__in__conv,axiom,
    ! [X_a,A_1] :
      ( bot_bot(fun(X_a,bool)) != ti(fun(X_a,bool),A_1)
    <=> ? [X_1] : hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_1),A_1)) ) ).

fof(fact_326_Un__Int__distrib2,axiom,
    ! [X_a,B,C,A_1] : hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),B),A_1)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),C),A_1)) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),B),C)),A_1) ).

fof(tsy_c_Fun_Oinj__on_res,axiom,
    ! [X_a,X_b] : inj_on(X_a,X_b) = ti(fun(fun(X_a,X_b),fun(fun(X_a,bool),bool)),inj_on(X_a,X_b)) ).

fof(fact_275_Collect__mono,axiom,
    ! [X_a,Q_1,P_1] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),collect(X_a),P_1)),hAPP(fun(X_a,bool),fun(X_a,bool),collect(X_a),Q_1)))
     <= ! [X_1] :
          ( hBOOL(hAPP(X_a,bool,P_1,X_1))
         => hBOOL(hAPP(X_a,bool,Q_1,X_1)) ) ) ).

fof(tsy_c_fequal_res,axiom,
    ! [X_a] : ti(fun(X_a,fun(X_a,bool)),fequal(X_a)) = fequal(X_a) ).

fof(fact_353_le__infI,axiom,
    ! [X_a] :
      ( semilattice_inf(X_a)
     => ! [B_2,X,A_6] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X),A_6))
         => ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),A_6),B_2)))
           <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X),B_2)) ) ) ) ).

fof(fact_405_insert__Diff,axiom,
    ! [X_a,A_3,A_1] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),A_3),A_1))
     => hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),A_3),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),A_3),bot_bot(fun(X_a,bool))))) = ti(fun(X_a,bool),A_1) ) ).

fof(fact_424_insert__Diff__if,axiom,
    ! [X_a,A_1,X_2,B] :
      ( ( hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),B) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),A_1)),B)
       <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_2),B)) )
      & ( ~ hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_2),B))
       => hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),B)) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),A_1)),B) ) ) ).

fof(fact_104_domD,axiom,
    ! [X_a,X_b,A_3,M] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),A_3),hAPP(fun(X_a,option(X_b)),fun(X_a,bool),dom(X_a,X_b),M)))
     => ? [B_4] : hAPP(X_a,option(X_b),M,A_3) = hAPP(X_b,option(X_b),some(X_b),B_4) ) ).

fof(fact_64_singleton__iff,axiom,
    ! [X_a,B_1,A_3] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),B_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),A_3),bot_bot(fun(X_a,bool)))))
    <=> ti(X_a,A_3) = ti(X_a,B_1) ) ).

fof(fact_69_image__is__empty,axiom,
    ! [X_b,X_a,F,A_1] :
      ( bot_bot(fun(X_b,bool)) = ti(fun(X_b,bool),A_1)
    <=> bot_bot(fun(X_a,bool)) = hAPP(fun(X_b,bool),fun(X_a,bool),hAPP(fun(X_b,X_a),fun(fun(X_b,bool),fun(X_a,bool)),image(X_b,X_a),F),A_1) ) ).

fof(help_COMBS_1_1_U,axiom,
    ! [X_a,X_c,X_b,P,Q,R] : hAPP(X_a,X_c,hAPP(fun(X_a,X_b),fun(X_a,X_c),hAPP(fun(X_a,fun(X_b,X_c)),fun(fun(X_a,X_b),fun(X_a,X_c)),combs(X_a,X_b,X_c),P),Q),R) = hAPP(X_b,X_c,hAPP(X_a,fun(X_b,X_c),P,R),hAPP(X_a,X_b,Q,R)) ).

fof(fact_455_comp__fun__idem__insert,axiom,
    ! [X_a] : hBOOL(hAPP(fun(X_a,fun(fun(X_a,bool),fun(X_a,bool))),bool,finite_comp_fun_idem(X_a,fun(X_a,bool)),insert(X_a))) ).

fof(arity_fun___Orderings_Oorder,axiom,
    ! [T_2,T_1] :
      ( order(T_1)
     => order(fun(T_2,T_1)) ) ).

fof(tsy_c_Option_Oset_res,axiom,
    ! [X_a] : ti(fun(option(X_a),fun(X_a,bool)),set(X_a)) = set(X_a) ).

fof(fact_467_fun__upd__apply,axiom,
    ! [X_b,X_a,F,Y_2,Z,X_2] :
      ( ( hAPP(X_a,X_b,hAPP(X_b,fun(X_a,X_b),hAPP(X_a,fun(X_b,fun(X_a,X_b)),hAPP(fun(X_a,X_b),fun(X_a,fun(X_b,fun(X_a,X_b))),fun_upd(X_a,X_b),F),X_2),Y_2),Z) = ti(X_b,Y_2)
       <= ti(X_a,X_2) = ti(X_a,Z) )
      & ( ti(X_a,X_2) != ti(X_a,Z)
       => hAPP(X_a,X_b,F,Z) = hAPP(X_a,X_b,hAPP(X_b,fun(X_a,X_b),hAPP(X_a,fun(X_b,fun(X_a,X_b)),hAPP(fun(X_a,X_b),fun(X_a,fun(X_b,fun(X_a,X_b))),fun_upd(X_a,X_b),F),X_2),Y_2),Z) ) ) ).

fof(fact_469_fun__upd__other,axiom,
    ! [X_b,X_a,F,Y_2,Z,X_2] :
      ( hAPP(X_a,X_b,hAPP(X_b,fun(X_a,X_b),hAPP(X_a,fun(X_b,fun(X_a,X_b)),hAPP(fun(X_a,X_b),fun(X_a,fun(X_b,fun(X_a,X_b))),fun_upd(X_a,X_b),F),X_2),Y_2),Z) = hAPP(X_a,X_b,F,Z)
     <= ti(X_a,Z) != ti(X_a,X_2) ) ).

fof(fact_249_While,axiom,
    ! [B_1,C_1] :
      ( hBOOL(hAPP(com,bool,wt,hAPP(com,com,hAPP(fun(state,bool),fun(com,com),while,B_1),C_1)))
     <= hBOOL(hAPP(com,bool,wt,C_1)) ) ).

fof(fact_259_the__eq__trivial,axiom,
    ! [X_a,A_3] : ti(X_a,A_3) = hAPP(fun(X_a,bool),X_a,the_1(X_a),hAPP(X_a,fun(X_a,bool),hAPP(fun(X_a,fun(X_a,bool)),fun(X_a,fun(X_a,bool)),combc(X_a,X_a,bool),fequal(X_a)),A_3)) ).

fof(fact_315_Int__left__commute,axiom,
    ! [X_a,A_1,B,C] : hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),B),C)) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),B),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),C)) ).

fof(fact_361_inf__sup__distrib2,axiom,
    ! [X_a] :
      ( ! [Y,Z_1,X] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),Y),X)),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),Z_1),X)) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),Y),Z_1)),X)
     <= distrib_lattice(X_a) ) ).

fof(fact_149_xt1_I4_J,axiom,
    ! [X_a] :
      ( ! [C_2,B_2,A_6] :
          ( ( ti(X_a,B_2) = ti(X_a,C_2)
           => hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),C_2),A_6)) )
         <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),B_2),A_6)) )
     <= order(X_a) ) ).

fof(fact_216_le__supI2,axiom,
    ! [X_a] :
      ( ! [A_6,X,B_2] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X),B_2))
         => hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),A_6),B_2))) )
     <= semilattice_sup(X_a) ) ).

fof(fact_162_bot__least,axiom,
    ! [X_a] :
      ( ! [A_6] : hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),bot_bot(X_a)),A_6))
     <= bot(X_a) ) ).

fof(fact_203_inf__sup__aci_I8_J,axiom,
    ! [X_a] :
      ( lattice(X_a)
     => ! [X,Y] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),X),Y) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),X),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),X),Y)) ) ).

fof(tsy_c_Set_Othe__elem_res,axiom,
    ! [X_a] : the_elem(X_a) = ti(fun(fun(X_a,bool),X_a),the_elem(X_a)) ).

fof(fact_202_sup__left__idem,axiom,
    ! [X_a] :
      ( semilattice_sup(X_a)
     => ! [X,Y] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),X),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),X),Y)) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),X),Y) ) ).

fof(fact_98_finite__dom__body,axiom,
    hBOOL(hAPP(fun(pname,bool),bool,finite_finite(pname),hAPP(fun(pname,option(com)),fun(pname,bool),dom(pname,com),body))) ).

fof(fact_365_inf_Oidem,axiom,
    ! [X_a] :
      ( semilattice_inf(X_a)
     => ! [A_6] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),A_6),A_6) = ti(X_a,A_6) ) ).

fof(fact_50_equalityD2,axiom,
    ! [X_a,A_1,B] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),B),A_1))
     <= ti(fun(X_a,bool),A_1) = ti(fun(X_a,bool),B) ) ).

fof(conj_7,conjecture,
    hBOOL(hAPP(fun(hoare_1656922687triple(state),bool),bool,hAPP(fun(hoare_1656922687triple(state),bool),fun(fun(hoare_1656922687triple(state),bool),bool),hoare_279057269derivs(state),hAPP(fun(pname,bool),fun(hoare_1656922687triple(state),bool),hAPP(fun(pname,hoare_1656922687triple(state)),fun(fun(pname,bool),fun(hoare_1656922687triple(state),bool)),image(pname,hoare_1656922687triple(state)),hAPP(fun(pname,com),fun(pname,hoare_1656922687triple(state)),hAPP(fun(com,hoare_1656922687triple(state)),fun(fun(pname,com),fun(pname,hoare_1656922687triple(state))),combb(com,hoare_1656922687triple(state),pname),hoare_Mirabelle_MGT),body_1)),hAPP(fun(pname,option(com)),fun(pname,bool),dom(pname,com),body))),hAPP(fun(hoare_1656922687triple(state),bool),fun(hoare_1656922687triple(state),bool),hAPP(hoare_1656922687triple(state),fun(fun(hoare_1656922687triple(state),bool),fun(hoare_1656922687triple(state),bool)),insert(hoare_1656922687triple(state)),hAPP(com,hoare_1656922687triple(state),hoare_Mirabelle_MGT,y)),bot_bot(fun(hoare_1656922687triple(state),bool))))) ).

fof(conj_3,hypothesis,
    ~ hBOOL(hAPP(fun(hoare_1656922687triple(state),bool),bool,hAPP(hoare_1656922687triple(state),fun(fun(hoare_1656922687triple(state),bool),bool),member(hoare_1656922687triple(state)),hAPP(com,hoare_1656922687triple(state),hoare_Mirabelle_MGT,y)),fa)) ).

fof(tsy_c_hAPP_arg1,axiom,
    ! [X_a,X_c,B_1_1,B_2_1] : hAPP(X_a,X_c,ti(fun(X_a,X_c),B_1_1),B_2_1) = hAPP(X_a,X_c,B_1_1,B_2_1) ).

fof(fact_10_empty__subsetI,axiom,
    ! [X_a,A_1] : hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),bot_bot(fun(X_a,bool))),A_1)) ).

fof(fact_450_flat__lub__def,axiom,
    ! [X_a,A_1,B_1] :
      ( ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),B_1),bot_bot(fun(X_a,bool)))))
       => hAPP(fun(X_a,bool),X_a,hAPP(X_a,fun(fun(X_a,bool),X_a),partial_flat_lub(X_a),B_1),A_1) = ti(X_a,B_1) )
      & ( hAPP(fun(X_a,bool),X_a,the_1(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,fun(fun(X_a,bool),bool)),fun(fun(X_a,bool),fun(X_a,bool)),combc(X_a,fun(X_a,bool),bool),member(X_a)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),B_1),bot_bot(fun(X_a,bool)))))) = hAPP(fun(X_a,bool),X_a,hAPP(X_a,fun(fun(X_a,bool),X_a),partial_flat_lub(X_a),B_1),A_1)
       <= ~ hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),B_1),bot_bot(fun(X_a,bool))))) ) ) ).

fof(tsy_c_Natural_Oevalc_res,axiom,
    evalc = ti(fun(com,fun(state,fun(state,bool))),evalc) ).

fof(fact_352_inf__absorb2,axiom,
    ! [X_a] :
      ( semilattice_inf(X_a)
     => ! [Y,X] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),Y),X))
         => ti(X_a,Y) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),X),Y) ) ) ).

fof(tsy_c_Option_Ooption_Ooption__rec_res,axiom,
    ! [X_a,X_b] : ti(fun(X_a,fun(fun(X_b,X_a),fun(option(X_b),X_a))),option_rec(X_a,X_b)) = option_rec(X_a,X_b) ).

fof(tsy_c_Map_Odom_res,axiom,
    ! [X_b,X_a] : dom(X_b,X_a) = ti(fun(fun(X_b,option(X_a)),fun(X_b,bool)),dom(X_b,X_a)) ).

fof(fact_396_folding__one_Oremove,axiom,
    ! [X_a,X_2,A_1,F,Fa] :
      ( ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1))
       => ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_2),A_1))
         => ( ( hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),bot_bot(fun(X_a,bool)))) = bot_bot(fun(X_a,bool))
             => ti(X_a,X_2) = hAPP(fun(X_a,bool),X_a,Fa,A_1) )
            & ( hAPP(fun(X_a,bool),X_a,Fa,A_1) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),F,X_2),hAPP(fun(X_a,bool),X_a,Fa,hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),bot_bot(fun(X_a,bool))))))
             <= hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),bot_bot(fun(X_a,bool)))) != bot_bot(fun(X_a,bool)) ) ) ) )
     <= hBOOL(hAPP(fun(fun(X_a,bool),X_a),bool,hAPP(fun(X_a,fun(X_a,X_a)),fun(fun(fun(X_a,bool),X_a),bool),finite_folding_one(X_a),F),Fa)) ) ).

fof(fact_319_IntD2,axiom,
    ! [X_a,C_1,A_1,B] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),C_1),B))
     <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),C_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),B))) ) ).

fof(fact_399_DiffE,axiom,
    ! [X_a,C_1,A_1,B] :
      ( ~ ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),C_1),B))
         <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),C_1),A_1)) )
     <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),C_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),B))) ) ).

fof(fact_33_finite__code,axiom,
    ! [X_a] :
      ( finite_finite_1(X_a)
     => ! [A_1] : hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1)) ) ).

fof(fact_196_sup__assoc,axiom,
    ! [X_a] :
      ( ! [X,Y,Z_1] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),X),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),Y),Z_1)) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),X),Y)),Z_1)
     <= semilattice_sup(X_a) ) ).

fof(fact_288_evalc_OSemi,axiom,
    ! [C1,S2,C0,S0,S1_1] :
      ( ( hBOOL(hAPP(state,bool,hAPP(state,fun(state,bool),hAPP(com,fun(state,fun(state,bool)),evalc,C1),S1_1),S2))
       => hBOOL(hAPP(state,bool,hAPP(state,fun(state,bool),hAPP(com,fun(state,fun(state,bool)),evalc,hAPP(com,com,hAPP(com,fun(com,com),semi,C0),C1)),S0),S2)) )
     <= hBOOL(hAPP(state,bool,hAPP(state,fun(state,bool),hAPP(com,fun(state,fun(state,bool)),evalc,C0),S0),S1_1)) ) ).

fof(fact_422_finite__Diff2,axiom,
    ! [X_a,A_1,B] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),B))
     => ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),B)))
      <=> hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1)) ) ) ).

fof(fact_389_distrib__imp2,axiom,
    ! [X_a] :
      ( lattice(X_a)
     => ! [X,Y,Z_1] :
          ( hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),X),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),Y),Z_1)) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),X),Y)),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),X),Z_1))
         <= ! [X_1,Y_1,Z_2] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),X_1),Y_1)),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),X_1),Z_2)) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),X_1),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),Y_1),Z_2)) ) ) ).

fof(fact_35_insert__absorb,axiom,
    ! [X_a,A_3,A_1] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),A_3),A_1))
     => hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),A_3),A_1) = ti(fun(X_a,bool),A_1) ) ).

fof(fact_55_imageI,axiom,
    ! [X_b,X_a,F,X_2,A_1] :
      ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),hAPP(X_a,X_b,F,X_2)),hAPP(fun(X_a,bool),fun(X_b,bool),hAPP(fun(X_a,X_b),fun(fun(X_a,bool),fun(X_b,bool)),image(X_a,X_b),F),A_1)))
     <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_2),A_1)) ) ).

fof(fact_482_inj__on__Un__image__eq__iff,axiom,
    ! [X_a,X_b,F,A_1,B] :
      ( ( hAPP(fun(X_a,bool),fun(X_b,bool),hAPP(fun(X_a,X_b),fun(fun(X_a,bool),fun(X_b,bool)),image(X_a,X_b),F),A_1) = hAPP(fun(X_a,bool),fun(X_b,bool),hAPP(fun(X_a,X_b),fun(fun(X_a,bool),fun(X_b,bool)),image(X_a,X_b),F),B)
      <=> ti(fun(X_a,bool),B) = ti(fun(X_a,bool),A_1) )
     <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,X_b),fun(fun(X_a,bool),bool),inj_on(X_a,X_b),F),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),A_1),B))) ) ).

fof(fact_457_fold__graph_H_Ointros_I2_J,axiom,
    ! [X_b,X_a,F,Z,Y_2,X_2,A_1] :
      ( ( hBOOL(hAPP(X_b,bool,hAPP(fun(X_a,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_a,bool),fun(X_b,bool)),hAPP(fun(X_a,fun(X_b,X_b)),fun(X_b,fun(fun(X_a,bool),fun(X_b,bool))),fold_graph(X_a,X_b),F),Z),A_1),hAPP(X_b,X_b,hAPP(X_a,fun(X_b,X_b),F,X_2),Y_2)))
       <= hBOOL(hAPP(X_b,bool,hAPP(fun(X_a,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_a,bool),fun(X_b,bool)),hAPP(fun(X_a,fun(X_b,X_b)),fun(X_b,fun(fun(X_a,bool),fun(X_b,bool))),fold_graph(X_a,X_b),F),Z),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),bot_bot(fun(X_a,bool))))),Y_2)) )
     <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_2),A_1)) ) ).

fof(fact_409_Diff__insert,axiom,
    ! [X_a,A_1,A_3,B] : hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),A_3),B)) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),B)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),A_3),bot_bot(fun(X_a,bool)))) ).

fof(fact_183_pred__subset__eq,axiom,
    ! [X_a,R_1,S] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,fun(fun(X_a,bool),bool)),fun(fun(X_a,bool),fun(X_a,bool)),combc(X_a,fun(X_a,bool),bool),member(X_a)),R_1)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,fun(fun(X_a,bool),bool)),fun(fun(X_a,bool),fun(X_a,bool)),combc(X_a,fun(X_a,bool),bool),member(X_a)),S)))
    <=> hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),R_1),S)) ) ).

fof(fact_95_WTs__elim__cases_I7_J,axiom,
    ! [P] :
      ( ~ ! [Y_1] : hAPP(com,option(com),some(com),Y_1) != hAPP(pname,option(com),body,P)
     <= hBOOL(hAPP(com,bool,wt,hAPP(pname,com,body_1,P))) ) ).

fof(tsy_c_Finite__Set_Ofolding__image__simple_res,axiom,
    ! [X_a,X_b] : ti(fun(fun(X_a,fun(X_a,X_a)),fun(X_a,fun(fun(X_b,X_a),fun(fun(fun(X_b,bool),X_a),bool)))),finite1357897459simple(X_a,X_b)) = finite1357897459simple(X_a,X_b) ).

fof(fact_231_finite__ne__induct,axiom,
    ! [X_a,P_1,Fa] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),Fa))
     => ( ti(fun(X_a,bool),Fa) != bot_bot(fun(X_a,bool))
       => ( ! [X_1] : hBOOL(hAPP(fun(X_a,bool),bool,P_1,hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_1),bot_bot(fun(X_a,bool)))))
         => ( hBOOL(hAPP(fun(X_a,bool),bool,P_1,Fa))
           <= ! [X_1,F_1] :
                ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),F_1))
               => ( ( ( hBOOL(hAPP(fun(X_a,bool),bool,P_1,hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_1),F_1)))
                     <= hBOOL(hAPP(fun(X_a,bool),bool,P_1,F_1)) )
                   <= ~ hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_1),F_1)) )
                 <= ti(fun(X_a,bool),F_1) != bot_bot(fun(X_a,bool)) ) ) ) ) ) ) ).

fof(tsy_c_Option_Othe_res,axiom,
    ! [X_a] : the(X_a) = ti(fun(option(X_a),X_a),the(X_a)) ).

fof(arity_HOL_Obool___Orderings_Opreorder,axiom,
    preorder(bool) ).

fof(fact_273_option_Orecs_I2_J,axiom,
    ! [X_b,X_a,F1,F2,A_3] : hAPP(option(X_b),X_a,hAPP(fun(X_b,X_a),fun(option(X_b),X_a),hAPP(X_a,fun(fun(X_b,X_a),fun(option(X_b),X_a)),option_rec(X_a,X_b),F1),F2),hAPP(X_b,option(X_b),some(X_b),A_3)) = hAPP(X_b,X_a,F2,A_3) ).

fof(fact_246_com_Osimps_I5_J,axiom,
    ! [Fun_1,Com_2,Fun,Com_1] :
      ( hAPP(com,com,hAPP(fun(state,bool),fun(com,com),while,Fun_1),Com_2) = hAPP(com,com,hAPP(fun(state,bool),fun(com,com),while,Fun),Com_1)
    <=> ( Fun_1 = Fun
        & Com_1 = Com_2 ) ) ).

fof(fact_84_image__mono,axiom,
    ! [X_b,X_a,F,A_1,B] :
      ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),ord_less_eq(fun(X_b,bool)),hAPP(fun(X_a,bool),fun(X_b,bool),hAPP(fun(X_a,X_b),fun(fun(X_a,bool),fun(X_b,bool)),image(X_a,X_b),F),A_1)),hAPP(fun(X_a,bool),fun(X_b,bool),hAPP(fun(X_a,X_b),fun(fun(X_a,bool),fun(X_b,bool)),image(X_a,X_b),F),B)))
     <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),A_1),B)) ) ).

fof(fact_147_order__trans,axiom,
    ! [X_a] :
      ( preorder(X_a)
     => ! [Z_1,X,Y] :
          ( ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),Y),Z_1))
           => hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X),Z_1)) )
         <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X),Y)) ) ) ).

fof(fact_485_inj__on__contraD,axiom,
    ! [X_a,X_b,X_2,Y_2,F,A_1] :
      ( ( ( ( hAPP(X_a,X_b,F,Y_2) != hAPP(X_a,X_b,F,X_2)
           <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),Y_2),A_1)) )
         <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_2),A_1)) )
       <= ti(X_a,Y_2) != ti(X_a,X_2) )
     <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,X_b),fun(fun(X_a,bool),bool),inj_on(X_a,X_b),F),A_1)) ) ).

fof(fact_390_folding__image__simple_Ounion__disjoint,axiom,
    ! [X_b,X_a,B,A_1,F,Z,G,Fa] :
      ( ( hBOOL(hAPP(fun(X_b,bool),bool,finite_finite(X_b),A_1))
       => ( ( hAPP(fun(X_b,bool),X_a,Fa,hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_sup_sup(fun(X_b,bool)),A_1),B)) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),F,hAPP(fun(X_b,bool),X_a,Fa,A_1)),hAPP(fun(X_b,bool),X_a,Fa,B))
           <= bot_bot(fun(X_b,bool)) = hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_inf_inf(fun(X_b,bool)),A_1),B) )
         <= hBOOL(hAPP(fun(X_b,bool),bool,finite_finite(X_b),B)) ) )
     <= hBOOL(hAPP(fun(fun(X_b,bool),X_a),bool,hAPP(fun(X_b,X_a),fun(fun(fun(X_b,bool),X_a),bool),hAPP(X_a,fun(fun(X_b,X_a),fun(fun(fun(X_b,bool),X_a),bool)),hAPP(fun(X_a,fun(X_a,X_a)),fun(X_a,fun(fun(X_b,X_a),fun(fun(fun(X_b,bool),X_a),bool))),finite1357897459simple(X_a,X_b),F),Z),G),Fa)) ) ).

fof(tsy_c_Hoare__Mirabelle__nrugjuseim_Otriple_Otriple_res,axiom,
    ! [X_a] : ti(fun(fun(X_a,fun(state,bool)),fun(com,fun(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a)))),hoare_246368825triple(X_a)) = hoare_246368825triple(X_a) ).

fof(fact_123_Un__commute,axiom,
    ! [X_a,A_1,B] : hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),A_1),B) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),B),A_1) ).

fof(fact_262_the__equality,axiom,
    ! [X_a,P_1,A_3] :
      ( ( ! [X_1] :
            ( ti(X_a,X_1) = ti(X_a,A_3)
           <= hBOOL(hAPP(X_a,bool,P_1,X_1)) )
       => ti(X_a,A_3) = hAPP(fun(X_a,bool),X_a,the_1(X_a),P_1) )
     <= hBOOL(hAPP(X_a,bool,P_1,A_3)) ) ).

fof(tsy_c_If_res,axiom,
    ! [X_a] : if(X_a) = ti(fun(bool,fun(X_a,fun(X_a,X_a))),if(X_a)) ).

fof(fact_363_inf__bot__right,axiom,
    ! [X_a] :
      ( ! [X] : bot_bot(X_a) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),X),bot_bot(X_a))
     <= bounded_lattice_bot(X_a) ) ).

fof(fact_144_linorder__le__cases,axiom,
    ! [X_a] :
      ( ! [X,Y] :
          ( ~ hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X),Y))
         => hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),Y),X)) )
     <= linorder(X_a) ) ).

fof(tsy_c_Fun_Ooverride__on_res,axiom,
    ! [X_a,X_b] : ti(fun(fun(X_a,X_b),fun(fun(X_a,X_b),fun(fun(X_a,bool),fun(X_a,X_b)))),override_on(X_a,X_b)) = override_on(X_a,X_b) ).

fof(fact_401_Diff__Int__distrib,axiom,
    ! [X_a,C,A_1,B] : hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),C),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),B)) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),C),A_1)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),C),B)) ).

fof(fact_245_com_Osimps_I3_J,axiom,
    ! [Com1_3,Com2_3,Com1_2,Com2_2] :
      ( hAPP(com,com,hAPP(com,fun(com,com),semi,Com1_2),Com2_2) = hAPP(com,com,hAPP(com,fun(com,com),semi,Com1_3),Com2_3)
    <=> ( Com1_3 = Com1_2
        & Com2_3 = Com2_2 ) ) ).

fof(fact_109_the_Osimps,axiom,
    ! [X_a,X] : hAPP(option(X_a),X_a,the(X_a),hAPP(X_a,option(X_a),some(X_a),X)) = ti(X_a,X) ).

fof(fact_21_insertCI,axiom,
    ! [X_a,B_1,A_3,B] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),A_3),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),B_1),B)))
     <= ( ti(X_a,A_3) = ti(X_a,B_1)
       <= ~ hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),A_3),B)) ) ) ).

fof(fact_357_inf__sup__absorb,axiom,
    ! [X_a] :
      ( ! [X,Y] : ti(X_a,X) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),X),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),X),Y))
     <= lattice(X_a) ) ).

fof(fact_297_xt1_I16_J,axiom,
    ! [X_a] :
      ( ! [F,C_1,B_1,A_3] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),B_1),A_3))
         => ( ( ! [X_1,Y_1] :
                  ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(X_a,X_a,F,Y_1)),hAPP(X_a,X_a,F,X_1)))
                 <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),Y_1),X_1)) )
             => hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),C_1),hAPP(X_a,X_a,F,A_3))) )
           <= hAPP(X_a,X_a,F,B_1) = ti(X_a,C_1) ) )
     <= order(X_a) ) ).

fof(fact_9_finite__imageI,axiom,
    ! [X_b,X_a,H,Fa] :
      ( hBOOL(hAPP(fun(X_b,bool),bool,finite_finite(X_b),hAPP(fun(X_a,bool),fun(X_b,bool),hAPP(fun(X_a,X_b),fun(fun(X_a,bool),fun(X_b,bool)),image(X_a,X_b),H),Fa)))
     <= hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),Fa)) ) ).

fof(fact_386_dom__if,axiom,
    ! [X_a,X_b,P_1,F,G] : hAPP(fun(X_a,option(X_b)),fun(X_a,bool),dom(X_a,X_b),hAPP(fun(X_a,option(X_b)),fun(X_a,option(X_b)),hAPP(fun(X_a,fun(option(X_b),option(X_b))),fun(fun(X_a,option(X_b)),fun(X_a,option(X_b))),combs(X_a,option(X_b),option(X_b)),hAPP(fun(X_a,option(X_b)),fun(X_a,fun(option(X_b),option(X_b))),hAPP(fun(X_a,fun(option(X_b),fun(option(X_b),option(X_b)))),fun(fun(X_a,option(X_b)),fun(X_a,fun(option(X_b),option(X_b)))),combs(X_a,option(X_b),fun(option(X_b),option(X_b))),hAPP(fun(X_a,bool),fun(X_a,fun(option(X_b),fun(option(X_b),option(X_b)))),hAPP(fun(bool,fun(option(X_b),fun(option(X_b),option(X_b)))),fun(fun(X_a,bool),fun(X_a,fun(option(X_b),fun(option(X_b),option(X_b))))),combb(bool,fun(option(X_b),fun(option(X_b),option(X_b))),X_a),if(option(X_b))),P_1)),F)),G)) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),hAPP(fun(X_a,option(X_b)),fun(X_a,bool),dom(X_a,X_b),F)),hAPP(fun(X_a,bool),fun(X_a,bool),collect(X_a),P_1))),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),hAPP(fun(X_a,option(X_b)),fun(X_a,bool),dom(X_a,X_b),G)),hAPP(fun(X_a,bool),fun(X_a,bool),collect(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(bool,bool),fun(fun(X_a,bool),fun(X_a,bool)),combb(bool,bool,X_a),fNot),P_1)))) ).

fof(fact_139_Un__upper1,axiom,
    ! [X_a,A_1,B] : hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),A_1),B))) ).

fof(fact_177_hoare__sound,axiom,
    ! [X_a,G_1,Ts] :
      ( hBOOL(hAPP(fun(hoare_1656922687triple(X_a),bool),bool,hAPP(fun(hoare_1656922687triple(X_a),bool),fun(fun(hoare_1656922687triple(X_a),bool),bool),hoare_2027193591valids(X_a),G_1),Ts))
     <= hBOOL(hAPP(fun(hoare_1656922687triple(X_a),bool),bool,hAPP(fun(hoare_1656922687triple(X_a),bool),fun(fun(hoare_1656922687triple(X_a),bool),bool),hoare_279057269derivs(X_a),G_1),Ts)) ) ).

fof(conj_2,hypothesis,
    hBOOL(hAPP(fun(hoare_1656922687triple(state),bool),bool,finite_finite(hoare_1656922687triple(state)),fa)) ).

fof(fact_280_MGT__alternD,axiom,
    ! [G_1,C_1] :
      ( ( hBOOL(hAPP(fun(hoare_1656922687triple(state),bool),bool,hAPP(fun(hoare_1656922687triple(state),bool),fun(fun(hoare_1656922687triple(state),bool),bool),hoare_279057269derivs(state),G_1),hAPP(fun(hoare_1656922687triple(state),bool),fun(hoare_1656922687triple(state),bool),hAPP(hoare_1656922687triple(state),fun(fun(hoare_1656922687triple(state),bool),fun(hoare_1656922687triple(state),bool)),insert(hoare_1656922687triple(state)),hAPP(fun(state,fun(state,bool)),hoare_1656922687triple(state),hAPP(com,fun(fun(state,fun(state,bool)),hoare_1656922687triple(state)),hAPP(fun(state,fun(state,bool)),fun(com,fun(fun(state,fun(state,bool)),hoare_1656922687triple(state))),hoare_246368825triple(state),hAPP(fun(state,fun(state,fun(state,bool))),fun(state,fun(state,bool)),hAPP(fun(fun(state,fun(state,bool)),fun(state,bool)),fun(fun(state,fun(state,fun(state,bool))),fun(state,fun(state,bool))),combb(fun(state,fun(state,bool)),fun(state,bool),state),hAPP(fun(fun(state,bool),bool),fun(fun(state,fun(state,bool)),fun(state,bool)),combb(fun(state,bool),bool,state),fAll(state))),hAPP(fun(state,fun(state,bool)),fun(state,fun(state,fun(state,bool))),hAPP(fun(fun(state,bool),fun(state,fun(state,bool))),fun(fun(state,fun(state,bool)),fun(state,fun(state,fun(state,bool)))),combb(fun(state,bool),fun(state,fun(state,bool)),state),hAPP(fun(state,fun(fun(state,bool),fun(state,bool))),fun(fun(state,bool),fun(state,fun(state,bool))),combc(state,fun(state,bool),fun(state,bool)),hAPP(fun(state,fun(state,fun(bool,bool))),fun(state,fun(fun(state,bool),fun(state,bool))),hAPP(fun(fun(state,fun(bool,bool)),fun(fun(state,bool),fun(state,bool))),fun(fun(state,fun(state,fun(bool,bool))),fun(state,fun(fun(state,bool),fun(state,bool)))),combb(fun(state,fun(bool,bool)),fun(fun(state,bool),fun(state,bool)),state),combs(state,bool,bool)),hAPP(fun(state,fun(state,bool)),fun(state,fun(state,fun(bool,bool))),hAPP(fun(fun(state,bool),fun(state,fun(bool,bool))),fun(fun(state,fun(state,bool)),fun(state,fun(state,fun(bool,bool)))),combb(fun(state,bool),fun(state,fun(bool,bool)),state),hAPP(fun(bool,fun(bool,bool)),fun(fun(state,bool),fun(state,fun(bool,bool))),combb(bool,fun(bool,bool),state),fimplies)),hAPP(com,fun(state,fun(state,bool)),evalc,C_1))))),fequal(state)))),C_1),fequal(state))),bot_bot(fun(hoare_1656922687triple(state),bool)))))
       => hBOOL(hAPP(fun(hoare_1656922687triple(state),bool),bool,hAPP(fun(hoare_1656922687triple(state),bool),fun(fun(hoare_1656922687triple(state),bool),bool),hoare_279057269derivs(state),G_1),hAPP(fun(hoare_1656922687triple(state),bool),fun(hoare_1656922687triple(state),bool),hAPP(hoare_1656922687triple(state),fun(fun(hoare_1656922687triple(state),bool),fun(hoare_1656922687triple(state),bool)),insert(hoare_1656922687triple(state)),hAPP(com,hoare_1656922687triple(state),hoare_Mirabelle_MGT,C_1)),bot_bot(fun(hoare_1656922687triple(state),bool))))) )
     <= hBOOL(hoare_1924220188gleton) ) ).

fof(fact_96_subsetI,axiom,
    ! [X_a,B,A_1] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),A_1),B))
     <= ! [X_1] :
          ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_1),B))
         <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_1),A_1)) ) ) ).

fof(tsy_c_fNot_res,axiom,
    fNot = ti(fun(bool,bool),fNot) ).

fof(fact_360_sup__inf__distrib1,axiom,
    ! [X_a] :
      ( ! [X,Y,Z_1] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),X),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),Y),Z_1)) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),X),Y)),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),X),Z_1))
     <= distrib_lattice(X_a) ) ).

fof(fact_156_linorder__linear,axiom,
    ! [X_a] :
      ( ! [X,Y] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),Y),X))
          | hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X),Y)) )
     <= linorder(X_a) ) ).

fof(fact_111_UnCI,axiom,
    ! [X_a,A_1,C_1,B] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),C_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),A_1),B)))
     <= ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),C_1),A_1))
       <= ~ hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),C_1),B)) ) ) ).

fof(fact_82_insert__image,axiom,
    ! [X_b,X_a,F,X_2,A_1] :
      ( hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),hAPP(X_a,X_b,F,X_2)),hAPP(fun(X_a,bool),fun(X_b,bool),hAPP(fun(X_a,X_b),fun(fun(X_a,bool),fun(X_b,bool)),image(X_a,X_b),F),A_1)) = hAPP(fun(X_a,bool),fun(X_b,bool),hAPP(fun(X_a,X_b),fun(fun(X_a,bool),fun(X_b,bool)),image(X_a,X_b),F),A_1)
     <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_2),A_1)) ) ).

fof(fact_412_Diff__triv,axiom,
    ! [X_a,A_1,B] :
      ( hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),B) = ti(fun(X_a,bool),A_1)
     <= bot_bot(fun(X_a,bool)) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),B) ) ).

fof(fact_179_rev__predicate1D,axiom,
    ! [X_a,Q_1,P_1,X_2] :
      ( hBOOL(hAPP(X_a,bool,P_1,X_2))
     => ( hBOOL(hAPP(X_a,bool,Q_1,X_2))
       <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),P_1),Q_1)) ) ) ).

fof(fact_472_inj__on__Un,axiom,
    ! [X_a,X_b,F,A_1,B] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,X_b),fun(fun(X_a,bool),bool),inj_on(X_a,X_b),F),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),A_1),B)))
    <=> ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,X_b),fun(fun(X_a,bool),bool),inj_on(X_a,X_b),F),B))
        & bot_bot(fun(X_b,bool)) = hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_inf_inf(fun(X_b,bool)),hAPP(fun(X_a,bool),fun(X_b,bool),hAPP(fun(X_a,X_b),fun(fun(X_a,bool),fun(X_b,bool)),image(X_a,X_b),F),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),B))),hAPP(fun(X_a,bool),fun(X_b,bool),hAPP(fun(X_a,X_b),fun(fun(X_a,bool),fun(X_b,bool)),image(X_a,X_b),F),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),B),A_1)))
        & hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,X_b),fun(fun(X_a,bool),bool),inj_on(X_a,X_b),F),A_1)) ) ) ).

fof(fact_340_insert__inter__insert,axiom,
    ! [X_a,A_3,A_1,B] : hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),A_3),A_1)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),A_3),B)) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),A_3),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),B)) ).

fof(fact_207_sup_Ocommute,axiom,
    ! [X_a] :
      ( semilattice_sup(X_a)
     => ! [A_6,B_2] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),B_2),A_6) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),A_6),B_2) ) ).

fof(fact_100_finite_Osimps,axiom,
    ! [X_a,A_3] :
      ( ( ? [A_4,A_5] :
            ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_4))
            & hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),A_5),A_4) = ti(fun(X_a,bool),A_3) )
        | bot_bot(fun(X_a,bool)) = ti(fun(X_a,bool),A_3) )
    <=> hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_3)) ) ).

fof(tsy_c_fdisj_res,axiom,
    ti(fun(bool,fun(bool,bool)),fdisj) = fdisj ).

fof(fact_438_subset__insert__iff,axiom,
    ! [X_a,A_1,X_2,B] :
      ( ( ( ~ hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_2),A_1))
         => hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),A_1),B)) )
        & ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),bot_bot(fun(X_a,bool))))),B))
         <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_2),A_1)) ) )
    <=> hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),B))) ) ).

fof(fact_397_folding__one_Oinsert__remove,axiom,
    ! [X_a,X_2,A_1,F,Fa] :
      ( ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1))
       => ( ( hAPP(fun(X_a,bool),X_a,Fa,hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),A_1)) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),F,X_2),hAPP(fun(X_a,bool),X_a,Fa,hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),bot_bot(fun(X_a,bool))))))
           <= hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),bot_bot(fun(X_a,bool)))) != bot_bot(fun(X_a,bool)) )
          & ( bot_bot(fun(X_a,bool)) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),bot_bot(fun(X_a,bool))))
           => ti(X_a,X_2) = hAPP(fun(X_a,bool),X_a,Fa,hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),A_1)) ) ) )
     <= hBOOL(hAPP(fun(fun(X_a,bool),X_a),bool,hAPP(fun(X_a,fun(X_a,X_a)),fun(fun(fun(X_a,bool),X_a),bool),finite_folding_one(X_a),F),Fa)) ) ).

fof(fact_217_le__supI1,axiom,
    ! [X_a] :
      ( semilattice_sup(X_a)
     => ! [B_2,X,A_6] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),A_6),B_2)))
         <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X),A_6)) ) ) ).

fof(fact_348_le__inf__iff,axiom,
    ! [X_a] :
      ( ! [X_2,Y_2,Z] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X_2),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),Y_2),Z)))
        <=> ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X_2),Y_2))
            & hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X_2),Z)) ) )
     <= semilattice_inf(X_a) ) ).

fof(fact_461_map__upd__triv,axiom,
    ! [X_b,X_a,T_3,K,X_2] :
      ( hAPP(X_a,option(X_a),some(X_a),X_2) = hAPP(X_b,option(X_a),T_3,K)
     => ti(fun(X_b,option(X_a)),T_3) = hAPP(option(X_a),fun(X_b,option(X_a)),hAPP(X_b,fun(option(X_a),fun(X_b,option(X_a))),hAPP(fun(X_b,option(X_a)),fun(X_b,fun(option(X_a),fun(X_b,option(X_a)))),fun_upd(X_b,option(X_a)),T_3),K),hAPP(X_a,option(X_a),some(X_a),X_2)) ) ).

fof(tsy_c_Lattices_Osemilattice__sup__class_Osup_res,axiom,
    ! [X_a] :
      ( semilattice_sup_sup(X_a) = ti(fun(X_a,fun(X_a,X_a)),semilattice_sup_sup(X_a))
     <= semilattice_sup(X_a) ) ).

fof(fact_140_image__Un,axiom,
    ! [X_b,X_a,F,A_1,B] : hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),hAPP(fun(X_b,bool),fun(X_a,bool),hAPP(fun(X_b,X_a),fun(fun(X_b,bool),fun(X_a,bool)),image(X_b,X_a),F),A_1)),hAPP(fun(X_b,bool),fun(X_a,bool),hAPP(fun(X_b,X_a),fun(fun(X_b,bool),fun(X_a,bool)),image(X_b,X_a),F),B)) = hAPP(fun(X_b,bool),fun(X_a,bool),hAPP(fun(X_b,X_a),fun(fun(X_b,bool),fun(X_a,bool)),image(X_b,X_a),F),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_sup_sup(fun(X_b,bool)),A_1),B)) ).

fof(fact_431_DiffD1,axiom,
    ! [X_a,C_1,A_1,B] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),C_1),A_1))
     <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),C_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),B))) ) ).

fof(help_fimplies_3_1_U,axiom,
    ! [P,Q] :
      ( ~ hBOOL(hAPP(bool,bool,hAPP(bool,fun(bool,bool),fimplies,P),Q))
      | hBOOL(Q)
      | ~ hBOOL(P) ) ).

fof(fact_270_folding__image__simple__idem_Oidem,axiom,
    ! [X_b,X_a,X_2,F,Z,G,Fa] :
      ( hBOOL(hAPP(fun(fun(X_b,bool),X_a),bool,hAPP(fun(X_b,X_a),fun(fun(fun(X_b,bool),X_a),bool),hAPP(X_a,fun(fun(X_b,X_a),fun(fun(fun(X_b,bool),X_a),bool)),hAPP(fun(X_a,fun(X_a,X_a)),fun(X_a,fun(fun(X_b,X_a),fun(fun(fun(X_b,bool),X_a),bool))),finite908156982e_idem(X_a,X_b),F),Z),G),Fa))
     => hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),F,X_2),X_2) = ti(X_a,X_2) ) ).

fof(fact_439_diff__single__insert,axiom,
    ! [X_a,A_1,X_2,B] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),bot_bot(fun(X_a,bool))))),B))
     => ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),B)))
       <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_2),A_1)) ) ) ).

fof(help_fNot_1_1_U,axiom,
    ! [P] :
      ( ~ hBOOL(P)
      | ~ hBOOL(hAPP(bool,bool,fNot,P)) ) ).

fof(fact_321_Int__Collect,axiom,
    ! [X_a,X_2,A_1,P_1] :
      ( ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_2),A_1))
        & hBOOL(hAPP(X_a,bool,P_1,X_2)) )
    <=> hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_2),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),collect(X_a),P_1)))) ) ).

fof(fact_94_finite__subset__induct,axiom,
    ! [X_a,P_1,A_1,Fa] :
      ( ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),Fa),A_1))
       => ( hBOOL(hAPP(fun(X_a,bool),bool,P_1,bot_bot(fun(X_a,bool))))
         => ( ! [A_5,F_1] :
                ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),F_1))
               => ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),A_5),A_1))
                 => ( ( hBOOL(hAPP(fun(X_a,bool),bool,P_1,F_1))
                     => hBOOL(hAPP(fun(X_a,bool),bool,P_1,hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),A_5),F_1))) )
                   <= ~ hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),A_5),F_1)) ) ) )
           => hBOOL(hAPP(fun(X_a,bool),bool,P_1,Fa)) ) ) )
     <= hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),Fa)) ) ).

fof(fact_281_MGT__alternI,axiom,
    ! [G_1,C_1] :
      ( hBOOL(hAPP(fun(hoare_1656922687triple(state),bool),bool,hAPP(fun(hoare_1656922687triple(state),bool),fun(fun(hoare_1656922687triple(state),bool),bool),hoare_279057269derivs(state),G_1),hAPP(fun(hoare_1656922687triple(state),bool),fun(hoare_1656922687triple(state),bool),hAPP(hoare_1656922687triple(state),fun(fun(hoare_1656922687triple(state),bool),fun(hoare_1656922687triple(state),bool)),insert(hoare_1656922687triple(state)),hAPP(com,hoare_1656922687triple(state),hoare_Mirabelle_MGT,C_1)),bot_bot(fun(hoare_1656922687triple(state),bool)))))
     => hBOOL(hAPP(fun(hoare_1656922687triple(state),bool),bool,hAPP(fun(hoare_1656922687triple(state),bool),fun(fun(hoare_1656922687triple(state),bool),bool),hoare_279057269derivs(state),G_1),hAPP(fun(hoare_1656922687triple(state),bool),fun(hoare_1656922687triple(state),bool),hAPP(hoare_1656922687triple(state),fun(fun(hoare_1656922687triple(state),bool),fun(hoare_1656922687triple(state),bool)),insert(hoare_1656922687triple(state)),hAPP(fun(state,fun(state,bool)),hoare_1656922687triple(state),hAPP(com,fun(fun(state,fun(state,bool)),hoare_1656922687triple(state)),hAPP(fun(state,fun(state,bool)),fun(com,fun(fun(state,fun(state,bool)),hoare_1656922687triple(state))),hoare_246368825triple(state),hAPP(fun(state,fun(state,fun(state,bool))),fun(state,fun(state,bool)),hAPP(fun(fun(state,fun(state,bool)),fun(state,bool)),fun(fun(state,fun(state,fun(state,bool))),fun(state,fun(state,bool))),combb(fun(state,fun(state,bool)),fun(state,bool),state),hAPP(fun(fun(state,bool),bool),fun(fun(state,fun(state,bool)),fun(state,bool)),combb(fun(state,bool),bool,state),fAll(state))),hAPP(fun(state,fun(state,bool)),fun(state,fun(state,fun(state,bool))),hAPP(fun(fun(state,bool),fun(state,fun(state,bool))),fun(fun(state,fun(state,bool)),fun(state,fun(state,fun(state,bool)))),combb(fun(state,bool),fun(state,fun(state,bool)),state),hAPP(fun(state,fun(fun(state,bool),fun(state,bool))),fun(fun(state,bool),fun(state,fun(state,bool))),combc(state,fun(state,bool),fun(state,bool)),hAPP(fun(state,fun(state,fun(bool,bool))),fun(state,fun(fun(state,bool),fun(state,bool))),hAPP(fun(fun(state,fun(bool,bool)),fun(fun(state,bool),fun(state,bool))),fun(fun(state,fun(state,fun(bool,bool))),fun(state,fun(fun(state,bool),fun(state,bool)))),combb(fun(state,fun(bool,bool)),fun(fun(state,bool),fun(state,bool)),state),combs(state,bool,bool)),hAPP(fun(state,fun(state,bool)),fun(state,fun(state,fun(bool,bool))),hAPP(fun(fun(state,bool),fun(state,fun(bool,bool))),fun(fun(state,fun(state,bool)),fun(state,fun(state,fun(bool,bool)))),combb(fun(state,bool),fun(state,fun(bool,bool)),state),hAPP(fun(bool,fun(bool,bool)),fun(fun(state,bool),fun(state,fun(bool,bool))),combb(bool,fun(bool,bool),state),fimplies)),hAPP(com,fun(state,fun(state,bool)),evalc,C_1))))),fequal(state)))),C_1),fequal(state))),bot_bot(fun(hoare_1656922687triple(state),bool))))) ) ).

fof(fact_93_imageE,axiom,
    ! [X_a,X_b,B_1,F,A_1] :
      ( ~ ! [X_1] :
            ( hAPP(X_b,X_a,F,X_1) = ti(X_a,B_1)
           => ~ hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),X_1),A_1)) )
     <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),B_1),hAPP(fun(X_b,bool),fun(X_a,bool),hAPP(fun(X_b,X_a),fun(fun(X_b,bool),fun(X_a,bool)),image(X_b,X_a),F),A_1))) ) ).

fof(fact_175_sup1E,axiom,
    ! [X_a,A_1,B,X_2] :
      ( ( hBOOL(hAPP(X_a,bool,B,X_2))
       <= ~ hBOOL(hAPP(X_a,bool,A_1,X_2)) )
     <= hBOOL(hAPP(X_a,bool,hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),A_1),B),X_2)) ) ).

fof(fact_26_equals0D,axiom,
    ! [X_a,A_3,A_1] :
      ( ~ hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),A_3),A_1))
     <= ti(fun(X_a,bool),A_1) = bot_bot(fun(X_a,bool)) ) ).

fof(fact_359_inf__sup__distrib1,axiom,
    ! [X_a] :
      ( distrib_lattice(X_a)
     => ! [X,Y,Z_1] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),X),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),Y),Z_1)) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),X),Y)),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),X),Z_1)) ) ).

fof(fact_468_fun__upd__twist,axiom,
    ! [X_b,X_a,M,B_1,D,A_3,C_1] :
      ( ti(X_a,A_3) != ti(X_a,C_1)
     => hAPP(X_b,fun(X_a,X_b),hAPP(X_a,fun(X_b,fun(X_a,X_b)),hAPP(fun(X_a,X_b),fun(X_a,fun(X_b,fun(X_a,X_b))),fun_upd(X_a,X_b),hAPP(X_b,fun(X_a,X_b),hAPP(X_a,fun(X_b,fun(X_a,X_b)),hAPP(fun(X_a,X_b),fun(X_a,fun(X_b,fun(X_a,X_b))),fun_upd(X_a,X_b),M),C_1),D)),A_3),B_1) = hAPP(X_b,fun(X_a,X_b),hAPP(X_a,fun(X_b,fun(X_a,X_b)),hAPP(fun(X_a,X_b),fun(X_a,fun(X_b,fun(X_a,X_b))),fun_upd(X_a,X_b),hAPP(X_b,fun(X_a,X_b),hAPP(X_a,fun(X_b,fun(X_a,X_b)),hAPP(fun(X_a,X_b),fun(X_a,fun(X_b,fun(X_a,X_b))),fun_upd(X_a,X_b),M),A_3),B_1)),C_1),D) ) ).

fof(fact_260_the__sym__eq__trivial,axiom,
    ! [X_a,X_2] : hAPP(fun(X_a,bool),X_a,the_1(X_a),hAPP(X_a,fun(X_a,bool),fequal(X_a),X_2)) = ti(X_a,X_2) ).

fof(fact_447_override__on__apply__in,axiom,
    ! [X_b,X_a,F,G,A_3,A_1] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),A_3),A_1))
     => hAPP(X_a,X_b,hAPP(fun(X_a,bool),fun(X_a,X_b),hAPP(fun(X_a,X_b),fun(fun(X_a,bool),fun(X_a,X_b)),hAPP(fun(X_a,X_b),fun(fun(X_a,X_b),fun(fun(X_a,bool),fun(X_a,X_b))),override_on(X_a,X_b),F),G),A_1),A_3) = hAPP(X_a,X_b,G,A_3) ) ).

fof(fact_448_override__on__apply__notin,axiom,
    ! [X_b,X_a,F,G,A_3,A_1] :
      ( ~ hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),A_3),A_1))
     => hAPP(X_a,X_b,hAPP(fun(X_a,bool),fun(X_a,X_b),hAPP(fun(X_a,X_b),fun(fun(X_a,bool),fun(X_a,X_b)),hAPP(fun(X_a,X_b),fun(fun(X_a,X_b),fun(fun(X_a,bool),fun(X_a,X_b))),override_on(X_a,X_b),F),G),A_1),A_3) = hAPP(X_a,X_b,F,A_3) ) ).

fof(fact_122_Un__left__absorb,axiom,
    ! [X_a,A_1,B] : hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),A_1),B)) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),A_1),B) ).

fof(fact_88_Collect__conv__if2,axiom,
    ! [X_a,P_1,A_3] :
      ( ( hBOOL(hAPP(X_a,bool,P_1,A_3))
       => hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),A_3),bot_bot(fun(X_a,bool))) = hAPP(fun(X_a,bool),fun(X_a,bool),collect(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,fun(bool,bool)),fun(fun(X_a,bool),fun(X_a,bool)),combs(X_a,bool,bool),hAPP(fun(X_a,bool),fun(X_a,fun(bool,bool)),hAPP(fun(bool,fun(bool,bool)),fun(fun(X_a,bool),fun(X_a,fun(bool,bool))),combb(bool,fun(bool,bool),X_a),fconj),hAPP(X_a,fun(X_a,bool),fequal(X_a),A_3))),P_1)) )
      & ( ~ hBOOL(hAPP(X_a,bool,P_1,A_3))
       => hAPP(fun(X_a,bool),fun(X_a,bool),collect(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,fun(bool,bool)),fun(fun(X_a,bool),fun(X_a,bool)),combs(X_a,bool,bool),hAPP(fun(X_a,bool),fun(X_a,fun(bool,bool)),hAPP(fun(bool,fun(bool,bool)),fun(fun(X_a,bool),fun(X_a,fun(bool,bool))),combb(bool,fun(bool,bool),X_a),fconj),hAPP(X_a,fun(X_a,bool),fequal(X_a),A_3))),P_1)) = bot_bot(fun(X_a,bool)) ) ) ).

fof(conj_5,hypothesis,
    hAPP(com,option(com),some(com),y) = hAPP(pname,option(com),body,pn) ).

fof(tsy_c_Option_Ooption_OSome_res,axiom,
    ! [X_a] : some(X_a) = ti(fun(X_a,option(X_a)),some(X_a)) ).

fof(fact_403_Diff__Int__distrib2,axiom,
    ! [X_a,A_1,B,C] : hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),C)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),B),C)) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),B)),C) ).

fof(fact_464_fun__upd__idem__iff,axiom,
    ! [X_b,X_a,F,X_2,Y_2] :
      ( ti(X_b,Y_2) = hAPP(X_a,X_b,F,X_2)
    <=> ti(fun(X_a,X_b),F) = hAPP(X_b,fun(X_a,X_b),hAPP(X_a,fun(X_b,fun(X_a,X_b)),hAPP(fun(X_a,X_b),fun(X_a,fun(X_b,fun(X_a,X_b))),fun_upd(X_a,X_b),F),X_2),Y_2) ) ).

fof(fact_117_ball__Un,axiom,
    ! [X_a,P_1,A_1,B] :
      ( ( ! [X_1] :
            ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_1),B))
           => hBOOL(hAPP(X_a,bool,P_1,X_1)) )
        & ! [X_1] :
            ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_1),A_1))
           => hBOOL(hAPP(X_a,bool,P_1,X_1)) ) )
    <=> ! [X_1] :
          ( hBOOL(hAPP(X_a,bool,P_1,X_1))
         <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),A_1),B))) ) ) ).

fof(fact_318_IntD1,axiom,
    ! [X_a,C_1,A_1,B] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),C_1),A_1))
     <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),C_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),B))) ) ).

fof(fact_46_subset__trans,axiom,
    ! [X_a,C,A_1,B] :
      ( ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),B),C))
       => hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),A_1),C)) )
     <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),A_1),B)) ) ).

fof(fact_320_Collect__conj__eq,axiom,
    ! [X_a,P_1,Q_1] : hAPP(fun(X_a,bool),fun(X_a,bool),collect(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,fun(bool,bool)),fun(fun(X_a,bool),fun(X_a,bool)),combs(X_a,bool,bool),hAPP(fun(X_a,bool),fun(X_a,fun(bool,bool)),hAPP(fun(bool,fun(bool,bool)),fun(fun(X_a,bool),fun(X_a,fun(bool,bool))),combb(bool,fun(bool,bool),X_a),fconj),P_1)),Q_1)) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),collect(X_a),P_1)),hAPP(fun(X_a,bool),fun(X_a,bool),collect(X_a),Q_1)) ).

fof(fact_301_folding__one_Ounion__inter,axiom,
    ! [X_a,B,A_1,F,Fa] :
      ( ( ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),B))
         => ( hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),F,hAPP(fun(X_a,bool),X_a,Fa,A_1)),hAPP(fun(X_a,bool),X_a,Fa,B)) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),F,hAPP(fun(X_a,bool),X_a,Fa,hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),A_1),B))),hAPP(fun(X_a,bool),X_a,Fa,hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),B)))
           <= hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),B) != bot_bot(fun(X_a,bool)) ) )
       <= hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1)) )
     <= hBOOL(hAPP(fun(fun(X_a,bool),X_a),bool,hAPP(fun(X_a,fun(X_a,X_a)),fun(fun(fun(X_a,bool),X_a),bool),finite_folding_one(X_a),F),Fa)) ) ).

fof(fact_25_image__eqI,axiom,
    ! [X_a,X_b,A_1,B_1,F,X_2] :
      ( ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),X_2),A_1))
       => hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),B_1),hAPP(fun(X_b,bool),fun(X_a,bool),hAPP(fun(X_b,X_a),fun(fun(X_b,bool),fun(X_a,bool)),image(X_b,X_a),F),A_1))) )
     <= ti(X_a,B_1) = hAPP(X_b,X_a,F,X_2) ) ).

fof(fact_107_order__refl,axiom,
    ! [X_a] :
      ( ! [X] : hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X),X))
     <= preorder(X_a) ) ).

fof(fact_87_Collect__conv__if,axiom,
    ! [X_a,P_1,A_3] :
      ( ( ~ hBOOL(hAPP(X_a,bool,P_1,A_3))
       => bot_bot(fun(X_a,bool)) = hAPP(fun(X_a,bool),fun(X_a,bool),collect(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,fun(bool,bool)),fun(fun(X_a,bool),fun(X_a,bool)),combs(X_a,bool,bool),hAPP(fun(X_a,bool),fun(X_a,fun(bool,bool)),hAPP(fun(bool,fun(bool,bool)),fun(fun(X_a,bool),fun(X_a,fun(bool,bool))),combb(bool,fun(bool,bool),X_a),fconj),hAPP(X_a,fun(X_a,bool),hAPP(fun(X_a,fun(X_a,bool)),fun(X_a,fun(X_a,bool)),combc(X_a,X_a,bool),fequal(X_a)),A_3))),P_1)) )
      & ( hBOOL(hAPP(X_a,bool,P_1,A_3))
       => hAPP(fun(X_a,bool),fun(X_a,bool),collect(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,fun(bool,bool)),fun(fun(X_a,bool),fun(X_a,bool)),combs(X_a,bool,bool),hAPP(fun(X_a,bool),fun(X_a,fun(bool,bool)),hAPP(fun(bool,fun(bool,bool)),fun(fun(X_a,bool),fun(X_a,fun(bool,bool))),combb(bool,fun(bool,bool),X_a),fconj),hAPP(X_a,fun(X_a,bool),hAPP(fun(X_a,fun(X_a,bool)),fun(X_a,fun(X_a,bool)),combc(X_a,X_a,bool),fequal(X_a)),A_3))),P_1)) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),A_3),bot_bot(fun(X_a,bool))) ) ) ).

fof(fact_211_sup__mono,axiom,
    ! [X_a] :
      ( semilattice_sup(X_a)
     => ! [B_2,D_2,A_6,C_2] :
          ( ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),A_6),B_2)),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),C_2),D_2)))
           <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),B_2),D_2)) )
         <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),A_6),C_2)) ) ) ).

fof(fact_477_inj__on__fun__updI,axiom,
    ! [X_a,X_b,X_2,Y_2,F,A_1] :
      ( ( ~ hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),Y_2),hAPP(fun(X_a,bool),fun(X_b,bool),hAPP(fun(X_a,X_b),fun(fun(X_a,bool),fun(X_b,bool)),image(X_a,X_b),F),A_1)))
       => hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,X_b),fun(fun(X_a,bool),bool),inj_on(X_a,X_b),hAPP(X_b,fun(X_a,X_b),hAPP(X_a,fun(X_b,fun(X_a,X_b)),hAPP(fun(X_a,X_b),fun(X_a,fun(X_b,fun(X_a,X_b))),fun_upd(X_a,X_b),F),X_2),Y_2)),A_1)) )
     <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,X_b),fun(fun(X_a,bool),bool),inj_on(X_a,X_b),F),A_1)) ) ).

fof(fact_208_sup__idem,axiom,
    ! [X_a] :
      ( ! [X] : ti(X_a,X) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),X),X)
     <= semilattice_sup(X_a) ) ).

fof(tsy_c_Set_Oinsert_res,axiom,
    ! [X_a] : ti(fun(X_a,fun(fun(X_a,bool),fun(X_a,bool))),insert(X_a)) = insert(X_a) ).

fof(fact_237_folding__one__idem_Ohom__commute,axiom,
    ! [X_a,N_1,H,F,Fa] :
      ( ( ! [X_1,Y_1] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),F,hAPP(X_a,X_a,H,X_1)),hAPP(X_a,X_a,H,Y_1)) = hAPP(X_a,X_a,H,hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),F,X_1),Y_1))
       => ( ( bot_bot(fun(X_a,bool)) != ti(fun(X_a,bool),N_1)
           => hAPP(fun(X_a,bool),X_a,Fa,hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,X_a),fun(fun(X_a,bool),fun(X_a,bool)),image(X_a,X_a),H),N_1)) = hAPP(X_a,X_a,H,hAPP(fun(X_a,bool),X_a,Fa,N_1)) )
         <= hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),N_1)) ) )
     <= hBOOL(hAPP(fun(fun(X_a,bool),X_a),bool,hAPP(fun(X_a,fun(X_a,X_a)),fun(fun(fun(X_a,bool),X_a),bool),finite2073411215e_idem(X_a),F),Fa)) ) ).

fof(fact_307_finite__Int,axiom,
    ! [X_a,G_1,Fa] :
      ( ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),G_1))
        | hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),Fa)) )
     => hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),Fa),G_1))) ) ).

fof(fact_429_Diff__iff,axiom,
    ! [X_a,C_1,A_1,B] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),C_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),B)))
    <=> ( ~ hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),C_1),B))
        & hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),C_1),A_1)) ) ) ).

fof(fact_443_dom__override__on,axiom,
    ! [X_a,X_b,F,G,A_1] : hAPP(fun(X_a,option(X_b)),fun(X_a,bool),dom(X_a,X_b),hAPP(fun(X_a,bool),fun(X_a,option(X_b)),hAPP(fun(X_a,option(X_b)),fun(fun(X_a,bool),fun(X_a,option(X_b))),hAPP(fun(X_a,option(X_b)),fun(fun(X_a,option(X_b)),fun(fun(X_a,bool),fun(X_a,option(X_b)))),override_on(X_a,option(X_b)),F),G),A_1)) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),hAPP(fun(X_a,option(X_b)),fun(X_a,bool),dom(X_a,X_b),F)),hAPP(fun(X_a,bool),fun(X_a,bool),collect(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,fun(fun(X_a,bool),bool)),fun(fun(X_a,bool),fun(X_a,bool)),combc(X_a,fun(X_a,bool),bool),member(X_a)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),hAPP(fun(X_a,option(X_b)),fun(X_a,bool),dom(X_a,X_b),G)))))),hAPP(fun(X_a,bool),fun(X_a,bool),collect(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,fun(fun(X_a,bool),bool)),fun(fun(X_a,bool),fun(X_a,bool)),combc(X_a,fun(X_a,bool),bool),member(X_a)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),hAPP(fun(X_a,option(X_b)),fun(X_a,bool),dom(X_a,X_b),G))))) ).

fof(fact_90_singleton__conv2,axiom,
    ! [X_a,A_3] : hAPP(fun(X_a,bool),fun(X_a,bool),collect(X_a),hAPP(X_a,fun(X_a,bool),fequal(X_a),A_3)) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),A_3),bot_bot(fun(X_a,bool))) ).

fof(fact_2_weaken,axiom,
    ! [X_a,Ts,G_1,Ts_1] :
      ( ( hBOOL(hAPP(fun(hoare_1656922687triple(X_a),bool),bool,hAPP(fun(hoare_1656922687triple(X_a),bool),fun(fun(hoare_1656922687triple(X_a),bool),bool),hoare_279057269derivs(X_a),G_1),Ts))
       <= hBOOL(hAPP(fun(hoare_1656922687triple(X_a),bool),bool,hAPP(fun(hoare_1656922687triple(X_a),bool),fun(fun(hoare_1656922687triple(X_a),bool),bool),ord_less_eq(fun(hoare_1656922687triple(X_a),bool)),Ts),Ts_1)) )
     <= hBOOL(hAPP(fun(hoare_1656922687triple(X_a),bool),bool,hAPP(fun(hoare_1656922687triple(X_a),bool),fun(fun(hoare_1656922687triple(X_a),bool),bool),hoare_279057269derivs(X_a),G_1),Ts_1)) ) ).

fof(fact_274_image__cong,axiom,
    ! [X_b,X_a,F,G,M_1,N_1] :
      ( ( hAPP(fun(X_a,bool),fun(X_b,bool),hAPP(fun(X_a,X_b),fun(fun(X_a,bool),fun(X_b,bool)),image(X_a,X_b),F),M_1) = hAPP(fun(X_a,bool),fun(X_b,bool),hAPP(fun(X_a,X_b),fun(fun(X_a,bool),fun(X_b,bool)),image(X_a,X_b),G),N_1)
       <= ! [X_1] :
            ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_1),N_1))
           => hAPP(X_a,X_b,G,X_1) = hAPP(X_a,X_b,F,X_1) ) )
     <= ti(fun(X_a,bool),M_1) = ti(fun(X_a,bool),N_1) ) ).

fof(fact_473_dom__eq__singleton__conv,axiom,
    ! [X_a,X_b,F,X_2] :
      ( hAPP(fun(X_a,option(X_b)),fun(X_a,bool),dom(X_a,X_b),F) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),bot_bot(fun(X_a,bool)))
    <=> ? [V] : ti(fun(X_a,option(X_b)),F) = hAPP(option(X_b),fun(X_a,option(X_b)),hAPP(X_a,fun(option(X_b),fun(X_a,option(X_b))),hAPP(fun(X_a,option(X_b)),fun(X_a,fun(option(X_b),fun(X_a,option(X_b)))),fun_upd(X_a,option(X_b)),hAPP(option(X_b),fun(X_a,option(X_b)),combk(option(X_b),X_a),none(X_b))),X_2),hAPP(X_b,option(X_b),some(X_b),V)) ) ).

fof(fact_150_ord__le__eq__trans,axiom,
    ! [X_a] :
      ( ! [C_2,A_6,B_2] :
          ( ( B_2 = C_2
           => hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),A_6),C_2)) )
         <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),A_6),B_2)) )
     <= ord(X_a) ) ).

fof(fact_454_comp__fun__idem__sup,axiom,
    ! [X_a] :
      ( semilattice_sup(X_a)
     => hBOOL(hAPP(fun(X_a,fun(X_a,X_a)),bool,finite_comp_fun_idem(X_a,X_a),semilattice_sup_sup(X_a))) ) ).

fof(fact_14_image__constant__conv,axiom,
    ! [X_b,X_a,C_1,A_1] :
      ( ( ti(fun(X_a,bool),A_1) != bot_bot(fun(X_a,bool))
       => hAPP(fun(X_a,bool),fun(X_b,bool),hAPP(fun(X_a,X_b),fun(fun(X_a,bool),fun(X_b,bool)),image(X_a,X_b),hAPP(X_b,fun(X_a,X_b),combk(X_b,X_a),C_1)),A_1) = hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),C_1),bot_bot(fun(X_b,bool))) )
      & ( bot_bot(fun(X_b,bool)) = hAPP(fun(X_a,bool),fun(X_b,bool),hAPP(fun(X_a,X_b),fun(fun(X_a,bool),fun(X_b,bool)),image(X_a,X_b),hAPP(X_b,fun(X_a,X_b),combk(X_b,X_a),C_1)),A_1)
       <= ti(fun(X_a,bool),A_1) = bot_bot(fun(X_a,bool)) ) ) ).

fof(fact_248_com_Osimps_I58_J,axiom,
    ! [Fun_1,Com_2,Pname_1] : hAPP(com,com,hAPP(fun(state,bool),fun(com,com),while,Fun_1),Com_2) != hAPP(pname,com,body_1,Pname_1) ).

fof(fact_242_WTs__elim__cases_I4_J,axiom,
    ! [C1,C2] :
      ( hBOOL(hAPP(com,bool,wt,hAPP(com,com,hAPP(com,fun(com,com),semi,C1),C2)))
     => ~ ( ~ hBOOL(hAPP(com,bool,wt,C2))
         <= hBOOL(hAPP(com,bool,wt,C1)) ) ) ).

fof(tsy_c_Orderings_Oord__class_Oless__eq_res,axiom,
    ! [X_a] :
      ( ord(X_a)
     => ord_less_eq(X_a) = ti(fun(X_a,fun(X_a,bool)),ord_less_eq(X_a)) ) ).

fof(fact_200_inf__sup__aci_I7_J,axiom,
    ! [X_a] :
      ( ! [X,Y,Z_1] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),Y),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),X),Z_1)) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),X),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),Y),Z_1))
     <= lattice(X_a) ) ).

fof(fact_479_inj__on__image__set__diff,axiom,
    ! [X_a,X_b,B,A_1,F,C] :
      ( ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),A_1),C))
       => ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),B),C))
         => hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),minus_minus(fun(X_b,bool)),hAPP(fun(X_a,bool),fun(X_b,bool),hAPP(fun(X_a,X_b),fun(fun(X_a,bool),fun(X_b,bool)),image(X_a,X_b),F),A_1)),hAPP(fun(X_a,bool),fun(X_b,bool),hAPP(fun(X_a,X_b),fun(fun(X_a,bool),fun(X_b,bool)),image(X_a,X_b),F),B)) = hAPP(fun(X_a,bool),fun(X_b,bool),hAPP(fun(X_a,X_b),fun(fun(X_a,bool),fun(X_b,bool)),image(X_a,X_b),F),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),B)) ) )
     <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,X_b),fun(fun(X_a,bool),bool),inj_on(X_a,X_b),F),C)) ) ).

fof(fact_497_dom__eq__empty__conv,axiom,
    ! [X_a,X_b,F] :
      ( bot_bot(fun(X_a,bool)) = hAPP(fun(X_a,option(X_b)),fun(X_a,bool),dom(X_a,X_b),F)
    <=> ! [X_1] : hAPP(X_a,option(X_b),F,X_1) = none(X_b) ) ).

fof(fact_286_evalc_OWhileFalse,axiom,
    ! [C_1,B_1,S_1] :
      ( hBOOL(hAPP(state,bool,hAPP(state,fun(state,bool),hAPP(com,fun(state,fun(state,bool)),evalc,hAPP(com,com,hAPP(fun(state,bool),fun(com,com),while,B_1),C_1)),S_1),S_1))
     <= ~ hBOOL(hAPP(state,bool,B_1,S_1)) ) ).

fof(fact_164_le__funD,axiom,
    ! [X_a,X_b] :
      ( ord(X_b)
     => ! [X_2,F,G] :
          ( hBOOL(hAPP(X_b,bool,hAPP(X_b,fun(X_b,bool),ord_less_eq(X_b),hAPP(X_a,X_b,F,X_2)),hAPP(X_a,X_b,G,X_2)))
         <= hBOOL(hAPP(fun(X_a,X_b),bool,hAPP(fun(X_a,X_b),fun(fun(X_a,X_b),bool),ord_less_eq(fun(X_a,X_b)),F),G)) ) ) ).

fof(fact_51_equalityD1,axiom,
    ! [X_a,A_1,B] :
      ( ti(fun(X_a,bool),B) = ti(fun(X_a,bool),A_1)
     => hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),A_1),B)) ) ).

fof(fact_167_bot__fun__def,axiom,
    ! [X_a,X_b] :
      ( bot(X_b)
     => ! [X_1] : hAPP(X_a,X_b,bot_bot(fun(X_a,X_b)),X_1) = bot_bot(X_b) ) ).

fof(tsy_c_Finite__Set_Ofolding__image__simple__idem_res,axiom,
    ! [X_a,X_b] : finite908156982e_idem(X_a,X_b) = ti(fun(fun(X_a,fun(X_a,X_a)),fun(X_a,fun(fun(X_b,X_a),fun(fun(fun(X_b,bool),X_a),bool)))),finite908156982e_idem(X_a,X_b)) ).

fof(arity_fun___Orderings_Opreorder,axiom,
    ! [T_2,T_1] :
      ( preorder(fun(T_2,T_1))
     <= preorder(T_1) ) ).

fof(fact_309_Int__empty__right,axiom,
    ! [X_a,A_1] : hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),bot_bot(fun(X_a,bool))) = bot_bot(fun(X_a,bool)) ).

fof(fact_433_Un__Diff,axiom,
    ! [X_a,A_1,B,C] : hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),C)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),B),C)) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),A_1),B)),C) ).

fof(fact_60_image__image,axiom,
    ! [X_b,X_a,X_c,F,G,A_1] : hAPP(fun(X_b,bool),fun(X_a,bool),hAPP(fun(X_b,X_a),fun(fun(X_b,bool),fun(X_a,bool)),image(X_b,X_a),F),hAPP(fun(X_c,bool),fun(X_b,bool),hAPP(fun(X_c,X_b),fun(fun(X_c,bool),fun(X_b,bool)),image(X_c,X_b),G),A_1)) = hAPP(fun(X_c,bool),fun(X_a,bool),hAPP(fun(X_c,X_a),fun(fun(X_c,bool),fun(X_a,bool)),image(X_c,X_a),hAPP(fun(X_c,X_b),fun(X_c,X_a),hAPP(fun(X_b,X_a),fun(fun(X_c,X_b),fun(X_c,X_a)),combb(X_b,X_a,X_c),F),G)),A_1) ).

fof(fact_219_le__iff__sup,axiom,
    ! [X_a] :
      ( ! [X_2,Y_2] :
          ( ti(X_a,Y_2) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),X_2),Y_2)
        <=> hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X_2),Y_2)) )
     <= semilattice_sup(X_a) ) ).

fof(fact_350_le__infI2,axiom,
    ! [X_a] :
      ( semilattice_inf(X_a)
     => ! [A_6,B_2,X] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),A_6),B_2)),X))
         <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),B_2),X)) ) ) ).

fof(fact_76_mem__def,axiom,
    ! [X_a,X_2,A_1] :
      ( hBOOL(hAPP(X_a,bool,A_1,X_2))
    <=> hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_2),A_1)) ) ).

fof(fact_418_Un__Diff__Int,axiom,
    ! [X_a,A_1,B] : ti(fun(X_a,bool),A_1) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),B)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),B)) ).

fof(fact_215_sup__absorb2,axiom,
    ! [X_a] :
      ( ! [X,Y] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X),Y))
         => ti(X_a,Y) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),X),Y) )
     <= semilattice_sup(X_a) ) ).

fof(fact_8_finite__Collect__subsets,axiom,
    ! [X_a,A_1] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1))
     => hBOOL(hAPP(fun(fun(X_a,bool),bool),bool,finite_finite(fun(X_a,bool)),hAPP(fun(fun(X_a,bool),bool),fun(fun(X_a,bool),bool),collect(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),hAPP(fun(fun(X_a,bool),fun(fun(X_a,bool),bool)),fun(fun(X_a,bool),fun(fun(X_a,bool),bool)),combc(fun(X_a,bool),fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool))),A_1)))) ) ).

fof(help_fNot_2_1_U,axiom,
    ! [P] :
      ( hBOOL(P)
      | hBOOL(hAPP(bool,bool,fNot,P)) ) ).

fof(fact_157_option_Oinject,axiom,
    ! [X_a,A_3,A_7] :
      ( hAPP(X_a,option(X_a),some(X_a),A_3) = hAPP(X_a,option(X_a),some(X_a),A_7)
    <=> ti(X_a,A_3) = ti(X_a,A_7) ) ).

fof(fact_56_image__iff,axiom,
    ! [X_a,X_b,Z,F,A_1] :
      ( ? [X_1] :
          ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),X_1),A_1))
          & ti(X_a,Z) = hAPP(X_b,X_a,F,X_1) )
    <=> hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),Z),hAPP(fun(X_b,bool),fun(X_a,bool),hAPP(fun(X_b,X_a),fun(fun(X_b,bool),fun(X_a,bool)),image(X_b,X_a),F),A_1))) ) ).

fof(fact_234_com_Osimps_I18_J,axiom,
    ! [Pname] : skip != hAPP(pname,com,body_1,Pname) ).

fof(fact_378_inf__sup__aci_I2_J,axiom,
    ! [X_a] :
      ( lattice(X_a)
     => ! [X,Y,Z_1] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),X),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),Y),Z_1)) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),X),Y)),Z_1) ) ).

fof(fact_296_order__subst1,axiom,
    ! [X_a,X_b] :
      ( ! [C_1,A_3,F,B_1] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),A_3),hAPP(X_b,X_a,F,B_1)))
         => ( ( ! [X_1,Y_1] :
                  ( hBOOL(hAPP(X_b,bool,hAPP(X_b,fun(X_b,bool),ord_less_eq(X_b),X_1),Y_1))
                 => hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(X_b,X_a,F,X_1)),hAPP(X_b,X_a,F,Y_1))) )
             => hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),A_3),hAPP(X_b,X_a,F,C_1))) )
           <= hBOOL(hAPP(X_b,bool,hAPP(X_b,fun(X_b,bool),ord_less_eq(X_b),B_1),C_1)) ) )
     <= ( order(X_b)
        & order(X_a) ) ) ).

fof(fact_17_finite__surj,axiom,
    ! [X_b,X_a,B,F,A_1] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1))
     => ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),ord_less_eq(fun(X_b,bool)),B),hAPP(fun(X_a,bool),fun(X_b,bool),hAPP(fun(X_a,X_b),fun(fun(X_a,bool),fun(X_b,bool)),image(X_a,X_b),F),A_1)))
       => hBOOL(hAPP(fun(X_b,bool),bool,finite_finite(X_b),B)) ) ) ).

fof(fact_404_Diff__Int2,axiom,
    ! [X_a,A_1,C,B] : hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),C)),B) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),C)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),B),C)) ).

fof(fact_356_le__infE,axiom,
    ! [X_a] :
      ( semilattice_inf(X_a)
     => ! [X,A_6,B_2] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),A_6),B_2)))
         => ~ ( ~ hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X),B_2))
             <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X),A_6)) ) ) ) ).

fof(fact_278_Set_Oset__insert,axiom,
    ! [X_a,X_2,A_1] :
      ( ~ ! [B_3] :
            ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_2),B_3))
           <= ti(fun(X_a,bool),A_1) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),B_3) )
     <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_2),A_1)) ) ).

fof(fact_347_le__iff__inf,axiom,
    ! [X_a] :
      ( semilattice_inf(X_a)
     => ! [X_2,Y_2] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X_2),Y_2))
        <=> ti(X_a,X_2) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),X_2),Y_2) ) ) ).

fof(fact_345_inf__sup__ord_I2_J,axiom,
    ! [X_a] :
      ( lattice(X_a)
     => ! [X,Y] : hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),X),Y)),Y)) ) ).

fof(help_fdisj_3_1_U,axiom,
    ! [P,Q] :
      ( ~ hBOOL(hAPP(bool,bool,hAPP(bool,fun(bool,bool),fdisj,P),Q))
      | hBOOL(P)
      | hBOOL(Q) ) ).

fof(fact_316_Int__iff,axiom,
    ! [X_a,C_1,A_1,B] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),C_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),B)))
    <=> ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),C_1),A_1))
        & hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),C_1),B)) ) ) ).

fof(fact_244_com_Osimps_I47_J,axiom,
    ! [Fun,Com_1,Com1_3,Com2_3] : hAPP(com,com,hAPP(fun(state,bool),fun(com,com),while,Fun),Com_1) != hAPP(com,com,hAPP(com,fun(com,com),semi,Com1_3),Com2_3) ).

fof(fact_191_ospec,axiom,
    ! [X_a,X_2,P_1,A_1] :
      ( ( ti(option(X_a),A_1) = hAPP(X_a,option(X_a),some(X_a),X_2)
       => hBOOL(hAPP(X_a,bool,P_1,X_2)) )
     <= ! [X_1] :
          ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_1),hAPP(option(X_a),fun(X_a,bool),set(X_a),A_1)))
         => hBOOL(hAPP(X_a,bool,P_1,X_1)) ) ) ).

fof(fact_112_UnE,axiom,
    ! [X_a,C_1,A_1,B] :
      ( ( ~ hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),C_1),A_1))
       => hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),C_1),B)) )
     <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),C_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),A_1),B))) ) ).

fof(tsy_c_Hoare__Mirabelle__nrugjuseim_OMGT_res,hypothesis,
    ti(fun(com,hoare_1656922687triple(state)),hoare_Mirabelle_MGT) = hoare_Mirabelle_MGT ).

fof(fact_65_insert__not__empty,axiom,
    ! [X_a,A_3,A_1] : bot_bot(fun(X_a,bool)) != hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),A_3),A_1) ).

fof(fact_118_bex__Un,axiom,
    ! [X_a,P_1,A_1,B] :
      ( ? [X_1] :
          ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),A_1),B)))
          & hBOOL(hAPP(X_a,bool,P_1,X_1)) )
    <=> ( ? [X_1] :
            ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_1),A_1))
            & hBOOL(hAPP(X_a,bool,P_1,X_1)) )
        | ? [X_1] :
            ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_1),B))
            & hBOOL(hAPP(X_a,bool,P_1,X_1)) ) ) ) ).

fof(fact_364_inf__bot__left,axiom,
    ! [X_a] :
      ( ! [X] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),bot_bot(X_a)),X) = bot_bot(X_a)
     <= bounded_lattice_bot(X_a) ) ).

fof(fact_89_singleton__conv,axiom,
    ! [X_a,A_3] : hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),A_3),bot_bot(fun(X_a,bool))) = hAPP(fun(X_a,bool),fun(X_a,bool),collect(X_a),hAPP(X_a,fun(X_a,bool),hAPP(fun(X_a,fun(X_a,bool)),fun(X_a,fun(X_a,bool)),combc(X_a,X_a,bool),fequal(X_a)),A_3)) ).

fof(fact_125_Un__absorb,axiom,
    ! [X_a,A_1] : ti(fun(X_a,bool),A_1) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),A_1),A_1) ).

fof(fact_106_image__subsetI,axiom,
    ! [X_b,X_a,F,B,A_1] :
      ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),ord_less_eq(fun(X_b,bool)),hAPP(fun(X_a,bool),fun(X_b,bool),hAPP(fun(X_a,X_b),fun(fun(X_a,bool),fun(X_b,bool)),image(X_a,X_b),F),A_1)),B))
     <= ! [X_1] :
          ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),hAPP(X_a,X_b,F,X_1)),B))
         <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_1),A_1)) ) ) ).

fof(fact_71_empty__is__image,axiom,
    ! [X_a,X_b,F,A_1] :
      ( hAPP(fun(X_b,bool),fun(X_a,bool),hAPP(fun(X_b,X_a),fun(fun(X_b,bool),fun(X_a,bool)),image(X_b,X_a),F),A_1) = bot_bot(fun(X_a,bool))
    <=> ti(fun(X_b,bool),A_1) = bot_bot(fun(X_b,bool)) ) ).

fof(fact_264_theI_H,axiom,
    ! [X_a,P_1] :
      ( hBOOL(hAPP(X_a,bool,P_1,hAPP(fun(X_a,bool),X_a,the_1(X_a),P_1)))
     <= ? [X_1] :
          ( hBOOL(hAPP(X_a,bool,P_1,X_1))
          & ! [Y_1] :
              ( ti(X_a,X_1) = ti(X_a,Y_1)
             <= hBOOL(hAPP(X_a,bool,P_1,Y_1)) ) ) ) ).

fof(fact_493_not__Some__eq,axiom,
    ! [X_a,X_2] :
      ( ti(option(X_a),X_2) = none(X_a)
    <=> ! [Y_1] : hAPP(X_a,option(X_a),some(X_a),Y_1) != ti(option(X_a),X_2) ) ).

fof(fact_119_Un__assoc,axiom,
    ! [X_a,A_1,B,C] : hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),B),C)) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),A_1),B)),C) ).

fof(fact_70_image__empty,axiom,
    ! [X_b,X_a,F] : bot_bot(fun(X_a,bool)) = hAPP(fun(X_b,bool),fun(X_a,bool),hAPP(fun(X_b,X_a),fun(fun(X_b,bool),fun(X_a,bool)),image(X_b,X_a),F),bot_bot(fun(X_b,bool))) ).

fof(fact_251_com_Osimps_I17_J,axiom,
    ! [Fun,Com_1] : skip != hAPP(com,com,hAPP(fun(state,bool),fun(com,com),while,Fun),Com_1) ).

fof(fact_256_com_Osimps_I13_J,axiom,
    ! [Com1,Com2] : hAPP(com,com,hAPP(com,fun(com,com),semi,Com1),Com2) != skip ).

fof(fact_66_empty__not__insert,axiom,
    ! [X_a,A_3,A_1] : hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),A_3),A_1) != bot_bot(fun(X_a,bool)) ).

fof(arity_fun___Lattices_Obounded__lattice__bot,axiom,
    ! [T_2,T_1] :
      ( bounded_lattice_bot(fun(T_2,T_1))
     <= bounded_lattice(T_1) ) ).

fof(fact_257_folding__one_Oinsert,axiom,
    ! [X_a,X_2,A_1,F,Fa] :
      ( ( ( ( hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),F,X_2),hAPP(fun(X_a,bool),X_a,Fa,A_1)) = hAPP(fun(X_a,bool),X_a,Fa,hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),A_1))
           <= ti(fun(X_a,bool),A_1) != bot_bot(fun(X_a,bool)) )
         <= ~ hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_2),A_1)) )
       <= hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1)) )
     <= hBOOL(hAPP(fun(fun(X_a,bool),X_a),bool,hAPP(fun(X_a,fun(X_a,X_a)),fun(fun(fun(X_a,bool),X_a),bool),finite_folding_one(X_a),F),Fa)) ) ).

fof(fact_371_inf_Oleft__idem,axiom,
    ! [X_a] :
      ( ! [A_6,B_2] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),A_6),B_2) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),A_6),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),A_6),B_2))
     <= semilattice_inf(X_a) ) ).

fof(fact_205_sup__commute,axiom,
    ! [X_a] :
      ( semilattice_sup(X_a)
     => ! [X,Y] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),Y),X) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),X),Y) ) ).

fof(arity_HOL_Obool___Lattices_Osemilattice__inf,axiom,
    semilattice_inf(bool) ).

fof(fact_314_Int__left__absorb,axiom,
    ! [X_a,A_1,B] : hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),B)) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),B) ).

fof(fact_121_Un__left__commute,axiom,
    ! [X_a,A_1,B,C] : hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),B),C)) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),B),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),A_1),C)) ).

fof(fact_284_evalc__elim__cases_I6_J,axiom,
    ! [P,S_2,S1_1] :
      ( hBOOL(hAPP(state,bool,hAPP(state,fun(state,bool),hAPP(com,fun(state,fun(state,bool)),evalc,hAPP(option(com),com,the(com),hAPP(pname,option(com),body,P))),S_2),S1_1))
     <= hBOOL(hAPP(state,bool,hAPP(state,fun(state,bool),hAPP(com,fun(state,fun(state,bool)),evalc,hAPP(pname,com,body_1,P)),S_2),S1_1)) ) ).

fof(fact_306_inf1E,axiom,
    ! [X_a,A_1,B,X_2] :
      ( hBOOL(hAPP(X_a,bool,hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),B),X_2))
     => ~ ( ~ hBOOL(hAPP(X_a,bool,B,X_2))
         <= hBOOL(hAPP(X_a,bool,A_1,X_2)) ) ) ).

fof(arity_HOL_Obool___Orderings_Oord,axiom,
    ord(bool) ).

fof(fact_186_le__funI,axiom,
    ! [X_a,X_b] :
      ( ord(X_b)
     => ! [F,G] :
          ( hBOOL(hAPP(fun(X_a,X_b),bool,hAPP(fun(X_a,X_b),fun(fun(X_a,X_b),bool),ord_less_eq(fun(X_a,X_b)),F),G))
         <= ! [X_1] : hBOOL(hAPP(X_b,bool,hAPP(X_b,fun(X_b,bool),ord_less_eq(X_b),hAPP(X_a,X_b,F,X_1)),hAPP(X_a,X_b,G,X_1))) ) ) ).

fof(fact_413_image__diff__subset,axiom,
    ! [X_a,X_b,F,A_1,B] : hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),hAPP(fun(X_b,bool),fun(X_a,bool),hAPP(fun(X_b,X_a),fun(fun(X_b,bool),fun(X_a,bool)),image(X_b,X_a),F),A_1)),hAPP(fun(X_b,bool),fun(X_a,bool),hAPP(fun(X_b,X_a),fun(fun(X_b,bool),fun(X_a,bool)),image(X_b,X_a),F),B))),hAPP(fun(X_b,bool),fun(X_a,bool),hAPP(fun(X_b,X_a),fun(fun(X_b,bool),fun(X_a,bool)),image(X_b,X_a),F),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),minus_minus(fun(X_b,bool)),A_1),B)))) ).

fof(fact_335_Int__lower1,axiom,
    ! [X_a,A_1,B] : hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),B)),A_1)) ).

fof(fact_475_empty__upd__none,axiom,
    ! [X_a,X_b,X_2,X_1] : hAPP(X_a,option(X_b),hAPP(option(X_b),fun(X_a,option(X_b)),hAPP(X_a,fun(option(X_b),fun(X_a,option(X_b))),hAPP(fun(X_a,option(X_b)),fun(X_a,fun(option(X_b),fun(X_a,option(X_b)))),fun_upd(X_a,option(X_b)),hAPP(option(X_b),fun(X_a,option(X_b)),combk(option(X_b),X_a),none(X_b))),X_2),none(X_b)),X_1) = none(X_b) ).

fof(fact_199_sup__left__commute,axiom,
    ! [X_a] :
      ( ! [X,Y,Z_1] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),X),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),Y),Z_1)) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),Y),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),X),Z_1))
     <= semilattice_sup(X_a) ) ).

fof(fact_453_comp__fun__idem__inf,axiom,
    ! [X_a] :
      ( hBOOL(hAPP(fun(X_a,fun(X_a,X_a)),bool,finite_comp_fun_idem(X_a,X_a),semilattice_inf_inf(X_a)))
     <= semilattice_inf(X_a) ) ).

fof(fact_233_com_Osimps_I19_J,axiom,
    ! [Pname] : skip != hAPP(pname,com,body_1,Pname) ).

fof(fact_163_le__funE,axiom,
    ! [X_a,X_b] :
      ( ! [X_2,F,G] :
          ( hBOOL(hAPP(fun(X_a,X_b),bool,hAPP(fun(X_a,X_b),fun(fun(X_a,X_b),bool),ord_less_eq(fun(X_a,X_b)),F),G))
         => hBOOL(hAPP(X_b,bool,hAPP(X_b,fun(X_b,bool),ord_less_eq(X_b),hAPP(X_a,X_b,F,X_2)),hAPP(X_a,X_b,G,X_2))) )
     <= ord(X_b) ) ).

fof(fact_206_inf__sup__aci_I5_J,axiom,
    ! [X_a] :
      ( ! [X,Y] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),X),Y) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),Y),X)
     <= lattice(X_a) ) ).

fof(fact_267_triple_Oexhaust,axiom,
    ! [X_a,Y_2] :
      ~ ! [Fun1,Com,Fun2] : Y_2 != hAPP(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a),hAPP(com,fun(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a)),hAPP(fun(X_a,fun(state,bool)),fun(com,fun(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a))),hoare_246368825triple(X_a),Fun1),Com),Fun2) ).

fof(fact_255_com_Osimps_I12_J,axiom,
    ! [Com1,Com2] : hAPP(com,com,hAPP(com,fun(com,com),semi,Com1),Com2) != skip ).

fof(fact_19_MGF,axiom,
    ! [C_1] :
      ( hBOOL(hoare_1924220188gleton)
     => ( hBOOL(wT_bodies)
       => ( hBOOL(hAPP(fun(hoare_1656922687triple(state),bool),bool,hAPP(fun(hoare_1656922687triple(state),bool),fun(fun(hoare_1656922687triple(state),bool),bool),hoare_279057269derivs(state),bot_bot(fun(hoare_1656922687triple(state),bool))),hAPP(fun(hoare_1656922687triple(state),bool),fun(hoare_1656922687triple(state),bool),hAPP(hoare_1656922687triple(state),fun(fun(hoare_1656922687triple(state),bool),fun(hoare_1656922687triple(state),bool)),insert(hoare_1656922687triple(state)),hAPP(com,hoare_1656922687triple(state),hoare_Mirabelle_MGT,C_1)),bot_bot(fun(hoare_1656922687triple(state),bool)))))
         <= hBOOL(hAPP(com,bool,wt,C_1)) ) ) ) ).

fof(tsy_c_fconj_res,axiom,
    ti(fun(bool,fun(bool,bool)),fconj) = fconj ).

fof(fact_331_Int__greatest,axiom,
    ! [X_a,B,C,A_1] :
      ( ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),C),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),B)))
       <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),C),B)) )
     <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),C),A_1)) ) ).

fof(help_fconj_1_1_U,axiom,
    ! [Q,P] :
      ( ~ hBOOL(P)
      | hBOOL(hAPP(bool,bool,hAPP(bool,fun(bool,bool),fconj,P),Q))
      | ~ hBOOL(Q) ) ).

fof(fact_37_insert__ident,axiom,
    ! [X_a,B,X_2,A_1] :
      ( ( ~ hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_2),B))
       => ( ti(fun(X_a,bool),B) = ti(fun(X_a,bool),A_1)
        <=> hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),B) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),A_1) ) )
     <= ~ hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_2),A_1)) ) ).

fof(fact_36_insertI2,axiom,
    ! [X_a,B_1,A_3,B] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),A_3),B))
     => hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),A_3),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),B_1),B))) ) ).

fof(tsy_c_member_res,axiom,
    ! [X_a] : member(X_a) = ti(fun(X_a,fun(fun(X_a,bool),bool)),member(X_a)) ).

fof(tsy_v_pn_res,hypothesis,
    ti(pname,pn) = pn ).

fof(fact_451_comp__fun__idem__remove,axiom,
    ! [X_a] : hBOOL(hAPP(fun(X_a,fun(fun(X_a,bool),fun(X_a,bool))),bool,finite_comp_fun_idem(X_a,fun(X_a,bool)),hAPP(fun(X_a,fun(X_a,bool)),fun(X_a,fun(fun(X_a,bool),fun(X_a,bool))),hAPP(fun(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool))),fun(fun(X_a,fun(X_a,bool)),fun(X_a,fun(fun(X_a,bool),fun(X_a,bool)))),combb(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),X_a),hAPP(fun(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool))),fun(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool))),combc(fun(X_a,bool),fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)))),hAPP(fun(X_a,bool),fun(X_a,fun(X_a,bool)),hAPP(fun(X_a,fun(fun(X_a,bool),fun(X_a,bool))),fun(fun(X_a,bool),fun(X_a,fun(X_a,bool))),combc(X_a,fun(X_a,bool),fun(X_a,bool)),insert(X_a)),bot_bot(fun(X_a,bool)))))) ).

fof(fact_425_double__diff,axiom,
    ! [X_a,C,A_1,B] :
      ( ( ti(fun(X_a,bool),A_1) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),B),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),C),A_1))
       <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),B),C)) )
     <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),A_1),B)) ) ).

fof(fact_287_evalc_OWhileTrue,axiom,
    ! [S2_1,C_1,S1_2,B_1,S0_1] :
      ( ( ( hBOOL(hAPP(state,bool,hAPP(state,fun(state,bool),hAPP(com,fun(state,fun(state,bool)),evalc,hAPP(com,com,hAPP(fun(state,bool),fun(com,com),while,B_1),C_1)),S0_1),S2_1))
         <= hBOOL(hAPP(state,bool,hAPP(state,fun(state,bool),hAPP(com,fun(state,fun(state,bool)),evalc,hAPP(com,com,hAPP(fun(state,bool),fun(com,com),while,B_1),C_1)),S1_2),S2_1)) )
       <= hBOOL(hAPP(state,bool,hAPP(state,fun(state,bool),hAPP(com,fun(state,fun(state,bool)),evalc,C_1),S0_1),S1_2)) )
     <= hBOOL(hAPP(state,bool,B_1,S0_1)) ) ).

fof(fact_337_Int__insert__right__if1,axiom,
    ! [X_a,B,A_3,A_1] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),A_3),A_1))
     => hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),A_3),B)) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),A_3),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),B)) ) ).

fof(fact_58_insert__compr__raw,axiom,
    ! [X_a,X_1,Xa] : hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_1),Xa) = hAPP(fun(X_a,bool),fun(X_a,bool),collect(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,fun(bool,bool)),fun(fun(X_a,bool),fun(X_a,bool)),combs(X_a,bool,bool),hAPP(fun(X_a,bool),fun(X_a,fun(bool,bool)),hAPP(fun(bool,fun(bool,bool)),fun(fun(X_a,bool),fun(X_a,fun(bool,bool))),combb(bool,fun(bool,bool),X_a),fdisj),hAPP(X_a,fun(X_a,bool),hAPP(fun(X_a,fun(X_a,bool)),fun(X_a,fun(X_a,bool)),combc(X_a,X_a,bool),fequal(X_a)),X_1))),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,fun(fun(X_a,bool),bool)),fun(fun(X_a,bool),fun(X_a,bool)),combc(X_a,fun(X_a,bool),bool),member(X_a)),Xa))) ).

fof(fact_38_insert__code,axiom,
    ! [X_a,Y_2,A_1,X_2] :
      ( hBOOL(hAPP(X_a,bool,hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),Y_2),A_1),X_2))
    <=> ( ti(X_a,Y_2) = ti(X_a,X_2)
        | hBOOL(hAPP(X_a,bool,A_1,X_2)) ) ) ).

fof(fact_290_com__det,axiom,
    ! [U,C_2,S_2,T_4] :
      ( hBOOL(hAPP(state,bool,hAPP(state,fun(state,bool),hAPP(com,fun(state,fun(state,bool)),evalc,C_2),S_2),T_4))
     => ( hBOOL(hAPP(state,bool,hAPP(state,fun(state,bool),hAPP(com,fun(state,fun(state,bool)),evalc,C_2),S_2),U))
       => U = T_4 ) ) ).

fof(fact_398_DiffI,axiom,
    ! [X_a,B,C_1,A_1] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),C_1),A_1))
     => ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),C_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),B)))
       <= ~ hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),C_1),B)) ) ) ).

fof(fact_57_finite__Collect__disjI,axiom,
    ! [X_a,P_1,Q_1] :
      ( ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),collect(X_a),P_1)))
        & hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),collect(X_a),Q_1))) )
    <=> hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),collect(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,fun(bool,bool)),fun(fun(X_a,bool),fun(X_a,bool)),combs(X_a,bool,bool),hAPP(fun(X_a,bool),fun(X_a,fun(bool,bool)),hAPP(fun(bool,fun(bool,bool)),fun(fun(X_a,bool),fun(X_a,fun(bool,bool))),combb(bool,fun(bool,bool),X_a),fdisj),P_1)),Q_1)))) ) ).

fof(fact_332_Int__absorb1,axiom,
    ! [X_a,B,A_1] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),B),A_1))
     => ti(fun(X_a,bool),B) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),B) ) ).

fof(fact_459_image__map__upd,axiom,
    ! [X_b,X_a,M,Y_2,X_2,A_1] :
      ( hAPP(fun(X_a,bool),fun(option(X_b),bool),hAPP(fun(X_a,option(X_b)),fun(fun(X_a,bool),fun(option(X_b),bool)),image(X_a,option(X_b)),M),A_1) = hAPP(fun(X_a,bool),fun(option(X_b),bool),hAPP(fun(X_a,option(X_b)),fun(fun(X_a,bool),fun(option(X_b),bool)),image(X_a,option(X_b)),hAPP(option(X_b),fun(X_a,option(X_b)),hAPP(X_a,fun(option(X_b),fun(X_a,option(X_b))),hAPP(fun(X_a,option(X_b)),fun(X_a,fun(option(X_b),fun(X_a,option(X_b)))),fun_upd(X_a,option(X_b)),M),X_2),hAPP(X_b,option(X_b),some(X_b),Y_2))),A_1)
     <= ~ hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_2),A_1)) ) ).

fof(fact_460_map__upd__eqD1,axiom,
    ! [X_b,X_a,M,A_3,X_2,N,Y_2] :
      ( ti(X_b,X_2) = ti(X_b,Y_2)
     <= hAPP(option(X_b),fun(X_a,option(X_b)),hAPP(X_a,fun(option(X_b),fun(X_a,option(X_b))),hAPP(fun(X_a,option(X_b)),fun(X_a,fun(option(X_b),fun(X_a,option(X_b)))),fun_upd(X_a,option(X_b)),N),A_3),hAPP(X_b,option(X_b),some(X_b),Y_2)) = hAPP(option(X_b),fun(X_a,option(X_b)),hAPP(X_a,fun(option(X_b),fun(X_a,option(X_b))),hAPP(fun(X_a,option(X_b)),fun(X_a,fun(option(X_b),fun(X_a,option(X_b)))),fun_upd(X_a,option(X_b)),M),A_3),hAPP(X_b,option(X_b),some(X_b),X_2)) ) ).

fof(arity_fun___Finite__Set_Ofinite,axiom,
    ! [T_2,T_1] :
      ( finite_finite_1(fun(T_2,T_1))
     <= ( finite_finite_1(T_2)
        & finite_finite_1(T_1) ) ) ).

fof(tsy_c_Com_Ocom_OSemi_res,axiom,
    semi = ti(fun(com,fun(com,com)),semi) ).

fof(fact_368_inf_Ocommute,axiom,
    ! [X_a] :
      ( ! [A_6,B_2] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),A_6),B_2) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),B_2),A_6)
     <= semilattice_inf(X_a) ) ).

fof(fact_220_sup__ge2,axiom,
    ! [X_a] :
      ( semilattice_sup(X_a)
     => ! [Y,X] : hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),Y),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),X),Y))) ) ).

fof(fact_276_predicate1I,axiom,
    ! [X_a,Q_1,P_1] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),P_1),Q_1))
     <= ! [X_1] :
          ( hBOOL(hAPP(X_a,bool,Q_1,X_1))
         <= hBOOL(hAPP(X_a,bool,P_1,X_1)) ) ) ).

fof(fact_440_folding__image__simple_Oremove,axiom,
    ! [X_b,X_a,X_2,A_1,F,Z,G,Fa] :
      ( hBOOL(hAPP(fun(fun(X_b,bool),X_a),bool,hAPP(fun(X_b,X_a),fun(fun(fun(X_b,bool),X_a),bool),hAPP(X_a,fun(fun(X_b,X_a),fun(fun(fun(X_b,bool),X_a),bool)),hAPP(fun(X_a,fun(X_a,X_a)),fun(X_a,fun(fun(X_b,X_a),fun(fun(fun(X_b,bool),X_a),bool))),finite1357897459simple(X_a,X_b),F),Z),G),Fa))
     => ( hBOOL(hAPP(fun(X_b,bool),bool,finite_finite(X_b),A_1))
       => ( hAPP(fun(X_b,bool),X_a,Fa,A_1) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),F,hAPP(X_b,X_a,G,X_2)),hAPP(fun(X_b,bool),X_a,Fa,hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),minus_minus(fun(X_b,bool)),A_1),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),X_2),bot_bot(fun(X_b,bool))))))
         <= hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),X_2),A_1)) ) ) ) ).

fof(fact_374_inf_Oleft__commute,axiom,
    ! [X_a] :
      ( ! [B_2,A_6,C_2] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),A_6),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),B_2),C_2)) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),B_2),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),A_6),C_2))
     <= semilattice_inf(X_a) ) ).

fof(fact_379_inf__assoc,axiom,
    ! [X_a] :
      ( ! [X,Y,Z_1] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),X),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),Y),Z_1)) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),X),Y)),Z_1)
     <= semilattice_inf(X_a) ) ).

fof(fact_395_folding__image__simple_Oneutral,axiom,
    ! [X_b,X_a,A_1,F,Z,G,Fa] :
      ( hBOOL(hAPP(fun(fun(X_b,bool),X_a),bool,hAPP(fun(X_b,X_a),fun(fun(fun(X_b,bool),X_a),bool),hAPP(X_a,fun(fun(X_b,X_a),fun(fun(fun(X_b,bool),X_a),bool)),hAPP(fun(X_a,fun(X_a,X_a)),fun(X_a,fun(fun(X_b,X_a),fun(fun(fun(X_b,bool),X_a),bool))),finite1357897459simple(X_a,X_b),F),Z),G),Fa))
     => ( hBOOL(hAPP(fun(X_b,bool),bool,finite_finite(X_b),A_1))
       => ( hAPP(fun(X_b,bool),X_a,Fa,A_1) = ti(X_a,Z)
         <= ! [X_1] :
              ( ti(X_a,Z) = hAPP(X_b,X_a,G,X_1)
             <= hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),X_1),A_1)) ) ) ) ) ).

fof(fact_165_le__fun__def,axiom,
    ! [X_a,X_b] :
      ( ord(X_b)
     => ! [F,G] :
          ( hBOOL(hAPP(fun(X_a,X_b),bool,hAPP(fun(X_a,X_b),fun(fun(X_a,X_b),bool),ord_less_eq(fun(X_a,X_b)),F),G))
        <=> ! [X_1] : hBOOL(hAPP(X_b,bool,hAPP(X_b,fun(X_b,bool),ord_less_eq(X_b),hAPP(X_a,X_b,F,X_1)),hAPP(X_a,X_b,G,X_1))) ) ) ).

fof(fact_339_Int__insert__right__if0,axiom,
    ! [X_a,B,A_3,A_1] :
      ( ~ hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),A_3),A_1))
     => hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),A_3),B)) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),B) ) ).

fof(fact_135_Un__absorb2,axiom,
    ! [X_a,B,A_1] :
      ( ti(fun(X_a,bool),A_1) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),A_1),B)
     <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),B),A_1)) ) ).

fof(fact_143_hoare__derivs_OBody,axiom,
    ! [X_a,G_1,P_1,Q_1,Procs] :
      ( hBOOL(hAPP(fun(hoare_1656922687triple(X_a),bool),bool,hAPP(fun(hoare_1656922687triple(X_a),bool),fun(fun(hoare_1656922687triple(X_a),bool),bool),hoare_279057269derivs(X_a),G_1),hAPP(fun(pname,bool),fun(hoare_1656922687triple(X_a),bool),hAPP(fun(pname,hoare_1656922687triple(X_a)),fun(fun(pname,bool),fun(hoare_1656922687triple(X_a),bool)),image(pname,hoare_1656922687triple(X_a)),hAPP(fun(pname,fun(X_a,fun(state,bool))),fun(pname,hoare_1656922687triple(X_a)),hAPP(fun(pname,fun(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a))),fun(fun(pname,fun(X_a,fun(state,bool))),fun(pname,hoare_1656922687triple(X_a))),combs(pname,fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a)),hAPP(fun(pname,com),fun(pname,fun(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a))),hAPP(fun(pname,fun(com,fun(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a)))),fun(fun(pname,com),fun(pname,fun(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a)))),combs(pname,com,fun(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a))),hAPP(fun(pname,fun(X_a,fun(state,bool))),fun(pname,fun(com,fun(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a)))),hAPP(fun(fun(X_a,fun(state,bool)),fun(com,fun(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a)))),fun(fun(pname,fun(X_a,fun(state,bool))),fun(pname,fun(com,fun(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a))))),combb(fun(X_a,fun(state,bool)),fun(com,fun(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a))),pname),hoare_246368825triple(X_a)),P_1)),body_1)),Q_1)),Procs)))
     <= hBOOL(hAPP(fun(hoare_1656922687triple(X_a),bool),bool,hAPP(fun(hoare_1656922687triple(X_a),bool),fun(fun(hoare_1656922687triple(X_a),bool),bool),hoare_279057269derivs(X_a),hAPP(fun(hoare_1656922687triple(X_a),bool),fun(hoare_1656922687triple(X_a),bool),hAPP(fun(hoare_1656922687triple(X_a),bool),fun(fun(hoare_1656922687triple(X_a),bool),fun(hoare_1656922687triple(X_a),bool)),semilattice_sup_sup(fun(hoare_1656922687triple(X_a),bool)),G_1),hAPP(fun(pname,bool),fun(hoare_1656922687triple(X_a),bool),hAPP(fun(pname,hoare_1656922687triple(X_a)),fun(fun(pname,bool),fun(hoare_1656922687triple(X_a),bool)),image(pname,hoare_1656922687triple(X_a)),hAPP(fun(pname,fun(X_a,fun(state,bool))),fun(pname,hoare_1656922687triple(X_a)),hAPP(fun(pname,fun(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a))),fun(fun(pname,fun(X_a,fun(state,bool))),fun(pname,hoare_1656922687triple(X_a))),combs(pname,fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a)),hAPP(fun(pname,com),fun(pname,fun(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a))),hAPP(fun(pname,fun(com,fun(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a)))),fun(fun(pname,com),fun(pname,fun(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a)))),combs(pname,com,fun(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a))),hAPP(fun(pname,fun(X_a,fun(state,bool))),fun(pname,fun(com,fun(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a)))),hAPP(fun(fun(X_a,fun(state,bool)),fun(com,fun(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a)))),fun(fun(pname,fun(X_a,fun(state,bool))),fun(pname,fun(com,fun(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a))))),combb(fun(X_a,fun(state,bool)),fun(com,fun(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a))),pname),hoare_246368825triple(X_a)),P_1)),body_1)),Q_1)),Procs))),hAPP(fun(pname,bool),fun(hoare_1656922687triple(X_a),bool),hAPP(fun(pname,hoare_1656922687triple(X_a)),fun(fun(pname,bool),fun(hoare_1656922687triple(X_a),bool)),image(pname,hoare_1656922687triple(X_a)),hAPP(fun(pname,fun(X_a,fun(state,bool))),fun(pname,hoare_1656922687triple(X_a)),hAPP(fun(pname,fun(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a))),fun(fun(pname,fun(X_a,fun(state,bool))),fun(pname,hoare_1656922687triple(X_a))),combs(pname,fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a)),hAPP(fun(pname,com),fun(pname,fun(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a))),hAPP(fun(pname,fun(com,fun(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a)))),fun(fun(pname,com),fun(pname,fun(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a)))),combs(pname,com,fun(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a))),hAPP(fun(pname,fun(X_a,fun(state,bool))),fun(pname,fun(com,fun(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a)))),hAPP(fun(fun(X_a,fun(state,bool)),fun(com,fun(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a)))),fun(fun(pname,fun(X_a,fun(state,bool))),fun(pname,fun(com,fun(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a))))),combb(fun(X_a,fun(state,bool)),fun(com,fun(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a))),pname),hoare_246368825triple(X_a)),P_1)),hAPP(fun(pname,option(com)),fun(pname,com),hAPP(fun(option(com),com),fun(fun(pname,option(com)),fun(pname,com)),combb(option(com),com,pname),the(com)),body))),Q_1)),Procs))) ) ).

fof(fact_213_le__supI,axiom,
    ! [X_a] :
      ( semilattice_sup(X_a)
     => ! [B_2,A_6,X] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),A_6),X))
         => ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),A_6),B_2)),X))
           <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),B_2),X)) ) ) ) ).

fof(help_COMBB_1_1_U,axiom,
    ! [X_a,X_c,X_b,P,Q,R] : hAPP(X_a,X_c,hAPP(fun(X_a,X_b),fun(X_a,X_c),hAPP(fun(X_b,X_c),fun(fun(X_a,X_b),fun(X_a,X_c)),combb(X_b,X_c,X_a),P),Q),R) = hAPP(X_b,X_c,P,hAPP(X_a,X_b,Q,R)) ).

fof(fact_393_folding__image__simple_Oinsert,axiom,
    ! [X_b,X_a,X_2,A_1,F,Z,G,Fa] :
      ( hBOOL(hAPP(fun(fun(X_b,bool),X_a),bool,hAPP(fun(X_b,X_a),fun(fun(fun(X_b,bool),X_a),bool),hAPP(X_a,fun(fun(X_b,X_a),fun(fun(fun(X_b,bool),X_a),bool)),hAPP(fun(X_a,fun(X_a,X_a)),fun(X_a,fun(fun(X_b,X_a),fun(fun(fun(X_b,bool),X_a),bool))),finite1357897459simple(X_a,X_b),F),Z),G),Fa))
     => ( ( hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),F,hAPP(X_b,X_a,G,X_2)),hAPP(fun(X_b,bool),X_a,Fa,A_1)) = hAPP(fun(X_b,bool),X_a,Fa,hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),X_2),A_1))
         <= ~ hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),X_2),A_1)) )
       <= hBOOL(hAPP(fun(X_b,bool),bool,finite_finite(X_b),A_1)) ) ) ).

fof(help_fconj_3_1_U,axiom,
    ! [P,Q] :
      ( ~ hBOOL(hAPP(bool,bool,hAPP(bool,fun(bool,bool),fconj,P),Q))
      | hBOOL(Q) ) ).

fof(fact_302_folding__one_Ounion__disjoint,axiom,
    ! [X_a,B,A_1,F,Fa] :
      ( ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1))
       => ( ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),B))
           => ( ( bot_bot(fun(X_a,bool)) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),B)
               => hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),F,hAPP(fun(X_a,bool),X_a,Fa,A_1)),hAPP(fun(X_a,bool),X_a,Fa,B)) = hAPP(fun(X_a,bool),X_a,Fa,hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),A_1),B)) )
             <= ti(fun(X_a,bool),B) != bot_bot(fun(X_a,bool)) ) )
         <= ti(fun(X_a,bool),A_1) != bot_bot(fun(X_a,bool)) ) )
     <= hBOOL(hAPP(fun(fun(X_a,bool),X_a),bool,hAPP(fun(X_a,fun(X_a,X_a)),fun(fun(fun(X_a,bool),X_a),bool),finite_folding_one(X_a),F),Fa)) ) ).

fof(fact_43_insert__compr,axiom,
    ! [X_a,A_3,B] : hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),A_3),B) = hAPP(fun(X_a,bool),fun(X_a,bool),collect(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,fun(bool,bool)),fun(fun(X_a,bool),fun(X_a,bool)),combs(X_a,bool,bool),hAPP(fun(X_a,bool),fun(X_a,fun(bool,bool)),hAPP(fun(bool,fun(bool,bool)),fun(fun(X_a,bool),fun(X_a,fun(bool,bool))),combb(bool,fun(bool,bool),X_a),fdisj),hAPP(X_a,fun(X_a,bool),hAPP(fun(X_a,fun(X_a,bool)),fun(X_a,fun(X_a,bool)),combc(X_a,X_a,bool),fequal(X_a)),A_3))),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,fun(fun(X_a,bool),bool)),fun(fun(X_a,bool),fun(X_a,bool)),combc(X_a,fun(X_a,bool),bool),member(X_a)),B))) ).

fof(fact_392_folding__image__simple_Oempty,axiom,
    ! [X_b,X_a,F,Z,G,Fa] :
      ( hAPP(fun(X_b,bool),X_a,Fa,bot_bot(fun(X_b,bool))) = ti(X_a,Z)
     <= hBOOL(hAPP(fun(fun(X_b,bool),X_a),bool,hAPP(fun(X_b,X_a),fun(fun(fun(X_b,bool),X_a),bool),hAPP(X_a,fun(fun(X_b,X_a),fun(fun(fun(X_b,bool),X_a),bool)),hAPP(fun(X_a,fun(X_a,X_a)),fun(X_a,fun(fun(X_b,X_a),fun(fun(fun(X_b,bool),X_a),bool))),finite1357897459simple(X_a,X_b),F),Z),G),Fa)) ) ).

fof(fact_192_sup__fun__def,axiom,
    ! [X_a,X_b] :
      ( ! [F,G,X_1] : hAPP(X_b,X_b,hAPP(X_b,fun(X_b,X_b),semilattice_sup_sup(X_b),hAPP(X_a,X_b,F,X_1)),hAPP(X_a,X_b,G,X_1)) = hAPP(X_a,X_b,hAPP(fun(X_a,X_b),fun(X_a,X_b),hAPP(fun(X_a,X_b),fun(fun(X_a,X_b),fun(X_a,X_b)),semilattice_sup_sup(fun(X_a,X_b)),F),G),X_1)
     <= lattice(X_b) ) ).

fof(fact_238_LoopF,axiom,
    ! [X_a,G_1,P_1,B_1,C_1] : hBOOL(hAPP(fun(hoare_1656922687triple(X_a),bool),bool,hAPP(fun(hoare_1656922687triple(X_a),bool),fun(fun(hoare_1656922687triple(X_a),bool),bool),hoare_279057269derivs(X_a),G_1),hAPP(fun(hoare_1656922687triple(X_a),bool),fun(hoare_1656922687triple(X_a),bool),hAPP(hoare_1656922687triple(X_a),fun(fun(hoare_1656922687triple(X_a),bool),fun(hoare_1656922687triple(X_a),bool)),insert(hoare_1656922687triple(X_a)),hAPP(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a),hAPP(com,fun(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a)),hAPP(fun(X_a,fun(state,bool)),fun(com,fun(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a))),hoare_246368825triple(X_a),hAPP(fun(state,bool),fun(X_a,fun(state,bool)),hAPP(fun(X_a,fun(fun(state,bool),fun(state,bool))),fun(fun(state,bool),fun(X_a,fun(state,bool))),combc(X_a,fun(state,bool),fun(state,bool)),hAPP(fun(X_a,fun(state,fun(bool,bool))),fun(X_a,fun(fun(state,bool),fun(state,bool))),hAPP(fun(fun(state,fun(bool,bool)),fun(fun(state,bool),fun(state,bool))),fun(fun(X_a,fun(state,fun(bool,bool))),fun(X_a,fun(fun(state,bool),fun(state,bool)))),combb(fun(state,fun(bool,bool)),fun(fun(state,bool),fun(state,bool)),X_a),combs(state,bool,bool)),hAPP(fun(X_a,fun(state,bool)),fun(X_a,fun(state,fun(bool,bool))),hAPP(fun(fun(state,bool),fun(state,fun(bool,bool))),fun(fun(X_a,fun(state,bool)),fun(X_a,fun(state,fun(bool,bool)))),combb(fun(state,bool),fun(state,fun(bool,bool)),X_a),hAPP(fun(bool,fun(bool,bool)),fun(fun(state,bool),fun(state,fun(bool,bool))),combb(bool,fun(bool,bool),state),fconj)),P_1))),hAPP(fun(state,bool),fun(state,bool),hAPP(fun(bool,bool),fun(fun(state,bool),fun(state,bool)),combb(bool,bool,state),fNot),B_1))),hAPP(com,com,hAPP(fun(state,bool),fun(com,com),while,B_1),C_1)),P_1)),bot_bot(fun(hoare_1656922687triple(X_a),bool))))) ).

fof(tsy_c_Fun_Ofun__upd_res,axiom,
    ! [X_a,X_b] : fun_upd(X_a,X_b) = ti(fun(fun(X_a,X_b),fun(X_a,fun(X_b,fun(X_a,X_b)))),fun_upd(X_a,X_b)) ).

fof(fact_61_singleton__inject,axiom,
    ! [X_a,A_3,B_1] :
      ( ti(X_a,B_1) = ti(X_a,A_3)
     <= hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),B_1),bot_bot(fun(X_a,bool))) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),A_3),bot_bot(fun(X_a,bool))) ) ).

fof(fact_114_triple_Oinject,axiom,
    ! [X_a,Fun1_1,Com_2,Fun2_1,Fun1_2,Com_1,Fun2_2] :
      ( ( Fun1_1 = Fun1_2
        & Fun2_2 = Fun2_1
        & Com_2 = Com_1 )
    <=> hAPP(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a),hAPP(com,fun(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a)),hAPP(fun(X_a,fun(state,bool)),fun(com,fun(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a))),hoare_246368825triple(X_a),Fun1_1),Com_2),Fun2_1) = hAPP(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a),hAPP(com,fun(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a)),hAPP(fun(X_a,fun(state,bool)),fun(com,fun(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a))),hoare_246368825triple(X_a),Fun1_2),Com_1),Fun2_2) ) ).

fof(fact_338_Int__insert__left__if0,axiom,
    ! [X_a,B,A_3,C] :
      ( hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),A_3),B)),C) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),B),C)
     <= ~ hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),A_3),C)) ) ).

fof(help_fdisj_1_1_U,axiom,
    ! [Q,P] :
      ( ~ hBOOL(P)
      | hBOOL(hAPP(bool,bool,hAPP(bool,fun(bool,bool),fdisj,P),Q)) ) ).

fof(fact_141_insert__def,axiom,
    ! [X_a,A_3,B] : hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),A_3),B) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),collect(X_a),hAPP(X_a,fun(X_a,bool),hAPP(fun(X_a,fun(X_a,bool)),fun(X_a,fun(X_a,bool)),combc(X_a,X_a,bool),fequal(X_a)),A_3))),B) ).

fof(fact_436_fun__diff__def,axiom,
    ! [X_a,X_b] :
      ( ! [A_1,B,X_1] : hAPP(X_a,X_b,hAPP(fun(X_a,X_b),fun(X_a,X_b),hAPP(fun(X_a,X_b),fun(fun(X_a,X_b),fun(X_a,X_b)),minus_minus(fun(X_a,X_b)),A_1),B),X_1) = hAPP(X_b,X_b,hAPP(X_b,fun(X_b,X_b),minus_minus(X_b),hAPP(X_a,X_b,A_1,X_1)),hAPP(X_a,X_b,B,X_1))
     <= minus(X_b) ) ).

fof(fact_410_finite__Diff__insert,axiom,
    ! [X_a,A_1,A_3,B] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),A_3),B))))
    <=> hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),B))) ) ).

fof(fact_487_inj__on__id2,axiom,
    ! [X_a,A_1] : hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,X_a),fun(fun(X_a,bool),bool),inj_on(X_a,X_a),combi(X_a)),A_1)) ).

fof(fact_27_Collect__empty__eq,axiom,
    ! [X_a,P_1] :
      ( bot_bot(fun(X_a,bool)) = hAPP(fun(X_a,bool),fun(X_a,bool),collect(X_a),P_1)
    <=> ! [X_1] : ~ hBOOL(hAPP(X_a,bool,P_1,X_1)) ) ).

fof(fact_86_domI,axiom,
    ! [X_b,X_a,M,A_3,B_1] :
      ( hAPP(X_a,option(X_a),some(X_a),B_1) = hAPP(X_b,option(X_a),M,A_3)
     => hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),A_3),hAPP(fun(X_b,option(X_a)),fun(X_b,bool),dom(X_b,X_a),M))) ) ).

fof(fact_426_Diff__mono,axiom,
    ! [X_a,D_1,B,A_1,C] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),A_1),C))
     => ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),D_1),B))
       => hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),B)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),C),D_1))) ) ) ).

fof(fact_486_inj__on__def,axiom,
    ! [X_a,X_b,F,A_1] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,X_b),fun(fun(X_a,bool),bool),inj_on(X_a,X_b),F),A_1))
    <=> ! [X_1] :
          ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_1),A_1))
         => ! [Xa] :
              ( ( ti(X_a,Xa) = ti(X_a,X_1)
               <= hAPP(X_a,X_b,F,Xa) = hAPP(X_a,X_b,F,X_1) )
             <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),Xa),A_1)) ) ) ) ).

fof(arity_HOL_Obool___Lattices_Obounded__lattice,axiom,
    bounded_lattice(bool) ).

fof(fact_171_Body__sound__lemma,axiom,
    ! [X_a,G_1,P_1,Q_1,Procs] :
      ( hBOOL(hAPP(fun(hoare_1656922687triple(X_a),bool),bool,hAPP(fun(hoare_1656922687triple(X_a),bool),fun(fun(hoare_1656922687triple(X_a),bool),bool),hoare_2027193591valids(X_a),hAPP(fun(hoare_1656922687triple(X_a),bool),fun(hoare_1656922687triple(X_a),bool),hAPP(fun(hoare_1656922687triple(X_a),bool),fun(fun(hoare_1656922687triple(X_a),bool),fun(hoare_1656922687triple(X_a),bool)),semilattice_sup_sup(fun(hoare_1656922687triple(X_a),bool)),G_1),hAPP(fun(pname,bool),fun(hoare_1656922687triple(X_a),bool),hAPP(fun(pname,hoare_1656922687triple(X_a)),fun(fun(pname,bool),fun(hoare_1656922687triple(X_a),bool)),image(pname,hoare_1656922687triple(X_a)),hAPP(fun(pname,fun(X_a,fun(state,bool))),fun(pname,hoare_1656922687triple(X_a)),hAPP(fun(pname,fun(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a))),fun(fun(pname,fun(X_a,fun(state,bool))),fun(pname,hoare_1656922687triple(X_a))),combs(pname,fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a)),hAPP(fun(pname,com),fun(pname,fun(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a))),hAPP(fun(pname,fun(com,fun(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a)))),fun(fun(pname,com),fun(pname,fun(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a)))),combs(pname,com,fun(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a))),hAPP(fun(pname,fun(X_a,fun(state,bool))),fun(pname,fun(com,fun(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a)))),hAPP(fun(fun(X_a,fun(state,bool)),fun(com,fun(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a)))),fun(fun(pname,fun(X_a,fun(state,bool))),fun(pname,fun(com,fun(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a))))),combb(fun(X_a,fun(state,bool)),fun(com,fun(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a))),pname),hoare_246368825triple(X_a)),P_1)),body_1)),Q_1)),Procs))),hAPP(fun(pname,bool),fun(hoare_1656922687triple(X_a),bool),hAPP(fun(pname,hoare_1656922687triple(X_a)),fun(fun(pname,bool),fun(hoare_1656922687triple(X_a),bool)),image(pname,hoare_1656922687triple(X_a)),hAPP(fun(pname,fun(X_a,fun(state,bool))),fun(pname,hoare_1656922687triple(X_a)),hAPP(fun(pname,fun(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a))),fun(fun(pname,fun(X_a,fun(state,bool))),fun(pname,hoare_1656922687triple(X_a))),combs(pname,fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a)),hAPP(fun(pname,com),fun(pname,fun(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a))),hAPP(fun(pname,fun(com,fun(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a)))),fun(fun(pname,com),fun(pname,fun(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a)))),combs(pname,com,fun(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a))),hAPP(fun(pname,fun(X_a,fun(state,bool))),fun(pname,fun(com,fun(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a)))),hAPP(fun(fun(X_a,fun(state,bool)),fun(com,fun(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a)))),fun(fun(pname,fun(X_a,fun(state,bool))),fun(pname,fun(com,fun(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a))))),combb(fun(X_a,fun(state,bool)),fun(com,fun(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a))),pname),hoare_246368825triple(X_a)),P_1)),hAPP(fun(pname,option(com)),fun(pname,com),hAPP(fun(option(com),com),fun(fun(pname,option(com)),fun(pname,com)),combb(option(com),com,pname),the(com)),body))),Q_1)),Procs)))
     => hBOOL(hAPP(fun(hoare_1656922687triple(X_a),bool),bool,hAPP(fun(hoare_1656922687triple(X_a),bool),fun(fun(hoare_1656922687triple(X_a),bool),bool),hoare_2027193591valids(X_a),G_1),hAPP(fun(pname,bool),fun(hoare_1656922687triple(X_a),bool),hAPP(fun(pname,hoare_1656922687triple(X_a)),fun(fun(pname,bool),fun(hoare_1656922687triple(X_a),bool)),image(pname,hoare_1656922687triple(X_a)),hAPP(fun(pname,fun(X_a,fun(state,bool))),fun(pname,hoare_1656922687triple(X_a)),hAPP(fun(pname,fun(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a))),fun(fun(pname,fun(X_a,fun(state,bool))),fun(pname,hoare_1656922687triple(X_a))),combs(pname,fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a)),hAPP(fun(pname,com),fun(pname,fun(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a))),hAPP(fun(pname,fun(com,fun(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a)))),fun(fun(pname,com),fun(pname,fun(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a)))),combs(pname,com,fun(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a))),hAPP(fun(pname,fun(X_a,fun(state,bool))),fun(pname,fun(com,fun(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a)))),hAPP(fun(fun(X_a,fun(state,bool)),fun(com,fun(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a)))),fun(fun(pname,fun(X_a,fun(state,bool))),fun(pname,fun(com,fun(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a))))),combb(fun(X_a,fun(state,bool)),fun(com,fun(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a))),pname),hoare_246368825triple(X_a)),P_1)),body_1)),Q_1)),Procs))) ) ).

fof(fact_366_inf__idem,axiom,
    ! [X_a] :
      ( ! [X] : ti(X_a,X) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),X),X)
     <= semilattice_inf(X_a) ) ).

fof(arity_fun___Lattices_Obounded__lattice,axiom,
    ! [T_2,T_1] :
      ( bounded_lattice(fun(T_2,T_1))
     <= bounded_lattice(T_1) ) ).

fof(fact_328_Un__Int__distrib,axiom,
    ! [X_a,A_1,B,C] : hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),B),C)) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),A_1),B)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),A_1),C)) ).

fof(fact_325_Un__Int__crazy,axiom,
    ! [X_a,A_1,B,C] : hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),A_1),B)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),B),C))),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),C),A_1)) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),B)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),B),C))),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),C),A_1)) ).

fof(fact_268_folding__image__simple__idem_Ounion__idem,axiom,
    ! [X_b,X_a,B,A_1,F,Z,G,Fa] :
      ( ( hBOOL(hAPP(fun(X_b,bool),bool,finite_finite(X_b),A_1))
       => ( hBOOL(hAPP(fun(X_b,bool),bool,finite_finite(X_b),B))
         => hAPP(fun(X_b,bool),X_a,Fa,hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_sup_sup(fun(X_b,bool)),A_1),B)) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),F,hAPP(fun(X_b,bool),X_a,Fa,A_1)),hAPP(fun(X_b,bool),X_a,Fa,B)) ) )
     <= hBOOL(hAPP(fun(fun(X_b,bool),X_a),bool,hAPP(fun(X_b,X_a),fun(fun(fun(X_b,bool),X_a),bool),hAPP(X_a,fun(fun(X_b,X_a),fun(fun(fun(X_b,bool),X_a),bool)),hAPP(fun(X_a,fun(X_a,X_a)),fun(X_a,fun(fun(X_b,X_a),fun(fun(fun(X_b,bool),X_a),bool))),finite908156982e_idem(X_a,X_b),F),Z),G),Fa)) ) ).

fof(help_fimplies_2_1_U,axiom,
    ! [P,Q] :
      ( hBOOL(hAPP(bool,bool,hAPP(bool,fun(bool,bool),fimplies,P),Q))
      | ~ hBOOL(Q) ) ).

fof(fact_152_ord__eq__le__trans,axiom,
    ! [X_a] :
      ( ! [C_2,A_6,B_2] :
          ( B_2 = A_6
         => ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),A_6),C_2))
           <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),B_2),C_2)) ) )
     <= ord(X_a) ) ).

fof(fact_298_ord__le__eq__subst,axiom,
    ! [X_a,X_b] :
      ( ! [F,C_1,A_3,B_1] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),A_3),B_1))
         => ( hAPP(X_a,X_b,F,B_1) = C_1
           => ( ! [X_1,Y_1] :
                  ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X_1),Y_1))
                 => hBOOL(hAPP(X_b,bool,hAPP(X_b,fun(X_b,bool),ord_less_eq(X_b),hAPP(X_a,X_b,F,X_1)),hAPP(X_a,X_b,F,Y_1))) )
             => hBOOL(hAPP(X_b,bool,hAPP(X_b,fun(X_b,bool),ord_less_eq(X_b),hAPP(X_a,X_b,F,A_3)),C_1)) ) ) )
     <= ( ord(X_b)
        & ord(X_a) ) ) ).

fof(fact_317_Int__assoc,axiom,
    ! [X_a,A_1,B,C] : hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),B)),C) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),B),C)) ).

fof(fact_97_finite__subset__image,axiom,
    ! [X_b,X_a,F,A_1,B] :
      ( ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),B),hAPP(fun(X_b,bool),fun(X_a,bool),hAPP(fun(X_b,X_a),fun(fun(X_b,bool),fun(X_a,bool)),image(X_b,X_a),F),A_1)))
       => ? [C_3] :
            ( hBOOL(hAPP(fun(X_b,bool),bool,finite_finite(X_b),C_3))
            & ti(fun(X_a,bool),B) = hAPP(fun(X_b,bool),fun(X_a,bool),hAPP(fun(X_b,X_a),fun(fun(X_b,bool),fun(X_a,bool)),image(X_b,X_a),F),C_3)
            & hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),ord_less_eq(fun(X_b,bool)),C_3),A_1)) ) )
     <= hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),B)) ) ).

fof(fact_334_Int__lower2,axiom,
    ! [X_a,A_1,B] : hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),B)),B)) ).

fof(help_fconj_2_1_U,axiom,
    ! [P,Q] :
      ( hBOOL(P)
      | ~ hBOOL(hAPP(bool,bool,hAPP(bool,fun(bool,bool),fconj,P),Q)) ) ).

fof(fact_91_MGF__lemma1,axiom,
    ! [C_1,G_1] :
      ( hBOOL(hoare_1924220188gleton)
     => ( ( hBOOL(hAPP(fun(hoare_1656922687triple(state),bool),bool,hAPP(fun(hoare_1656922687triple(state),bool),fun(fun(hoare_1656922687triple(state),bool),bool),hoare_279057269derivs(state),G_1),hAPP(fun(hoare_1656922687triple(state),bool),fun(hoare_1656922687triple(state),bool),hAPP(hoare_1656922687triple(state),fun(fun(hoare_1656922687triple(state),bool),fun(hoare_1656922687triple(state),bool)),insert(hoare_1656922687triple(state)),hAPP(com,hoare_1656922687triple(state),hoare_Mirabelle_MGT,C_1)),bot_bot(fun(hoare_1656922687triple(state),bool)))))
         <= hBOOL(hAPP(com,bool,wt,C_1)) )
       <= ! [X_1] :
            ( hBOOL(hAPP(fun(pname,bool),bool,hAPP(pname,fun(fun(pname,bool),bool),member(pname),X_1),hAPP(fun(pname,option(com)),fun(pname,bool),dom(pname,com),body)))
           => hBOOL(hAPP(fun(hoare_1656922687triple(state),bool),bool,hAPP(fun(hoare_1656922687triple(state),bool),fun(fun(hoare_1656922687triple(state),bool),bool),hoare_279057269derivs(state),G_1),hAPP(fun(hoare_1656922687triple(state),bool),fun(hoare_1656922687triple(state),bool),hAPP(hoare_1656922687triple(state),fun(fun(hoare_1656922687triple(state),bool),fun(hoare_1656922687triple(state),bool)),insert(hoare_1656922687triple(state)),hAPP(com,hoare_1656922687triple(state),hoare_Mirabelle_MGT,hAPP(pname,com,body_1,X_1))),bot_bot(fun(hoare_1656922687triple(state),bool))))) ) ) ) ).

fof(fact_204_sup_Oleft__idem,axiom,
    ! [X_a] :
      ( ! [A_6,B_2] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),A_6),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),A_6),B_2)) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),A_6),B_2)
     <= semilattice_sup(X_a) ) ).

fof(fact_394_folding__image__simple_Ounion__inter__neutral,axiom,
    ! [X_b,X_a,B,A_1,F,Z,G,Fa] :
      ( hBOOL(hAPP(fun(fun(X_b,bool),X_a),bool,hAPP(fun(X_b,X_a),fun(fun(fun(X_b,bool),X_a),bool),hAPP(X_a,fun(fun(X_b,X_a),fun(fun(fun(X_b,bool),X_a),bool)),hAPP(fun(X_a,fun(X_a,X_a)),fun(X_a,fun(fun(X_b,X_a),fun(fun(fun(X_b,bool),X_a),bool))),finite1357897459simple(X_a,X_b),F),Z),G),Fa))
     => ( hBOOL(hAPP(fun(X_b,bool),bool,finite_finite(X_b),A_1))
       => ( ( hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),F,hAPP(fun(X_b,bool),X_a,Fa,A_1)),hAPP(fun(X_b,bool),X_a,Fa,B)) = hAPP(fun(X_b,bool),X_a,Fa,hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_sup_sup(fun(X_b,bool)),A_1),B))
           <= ! [X_1] :
                ( hAPP(X_b,X_a,G,X_1) = ti(X_a,Z)
               <= hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),X_1),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_inf_inf(fun(X_b,bool)),A_1),B))) ) )
         <= hBOOL(hAPP(fun(X_b,bool),bool,finite_finite(X_b),B)) ) ) ) ).

fof(tsy_c_Orderings_Obot__class_Obot_res,axiom,
    ! [X_a] :
      ( ti(X_a,bot_bot(X_a)) = bot_bot(X_a)
     <= bot(X_a) ) ).

fof(fact_291_evalc__elim__cases_I4_J,axiom,
    ! [C1,C2,S_2,T_4] :
      ( ~ ! [S1] :
            ( hBOOL(hAPP(state,bool,hAPP(state,fun(state,bool),hAPP(com,fun(state,fun(state,bool)),evalc,C1),S_2),S1))
           => ~ hBOOL(hAPP(state,bool,hAPP(state,fun(state,bool),hAPP(com,fun(state,fun(state,bool)),evalc,C2),S1),T_4)) )
     <= hBOOL(hAPP(state,bool,hAPP(state,fun(state,bool),hAPP(com,fun(state,fun(state,bool)),evalc,hAPP(com,com,hAPP(com,fun(com,com),semi,C1),C2)),S_2),T_4)) ) ).

fof(tsy_c_HOL_Oundefined_res,axiom,
    ! [X_a] : undefined(X_a) = ti(X_a,undefined(X_a)) ).

fof(fact_411_Diff__disjoint,axiom,
    ! [X_a,A_1,B] : bot_bot(fun(X_a,bool)) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),B),A_1)) ).

fof(fact_240_the__elem__def,axiom,
    ! [X_a,X_3] : hAPP(fun(X_a,bool),X_a,the_elem(X_a),X_3) = hAPP(fun(X_a,bool),X_a,the_1(X_a),hAPP(fun(X_a,fun(X_a,bool)),fun(X_a,bool),hAPP(fun(fun(X_a,bool),bool),fun(fun(X_a,fun(X_a,bool)),fun(X_a,bool)),combb(fun(X_a,bool),bool,X_a),hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),fequal(fun(X_a,bool)),X_3)),hAPP(fun(X_a,bool),fun(X_a,fun(X_a,bool)),hAPP(fun(X_a,fun(fun(X_a,bool),fun(X_a,bool))),fun(fun(X_a,bool),fun(X_a,fun(X_a,bool))),combc(X_a,fun(X_a,bool),fun(X_a,bool)),insert(X_a)),bot_bot(fun(X_a,bool))))) ).

fof(help_COMBC_1_1_U,axiom,
    ! [X_a,X_c,X_b,P,Q,R] : hAPP(X_a,X_c,hAPP(X_b,fun(X_a,X_c),hAPP(fun(X_a,fun(X_b,X_c)),fun(X_b,fun(X_a,X_c)),combc(X_a,X_b,X_c),P),Q),R) = hAPP(X_b,X_c,hAPP(X_a,fun(X_b,X_c),P,R),Q) ).

fof(fact_198_sup_Oassoc,axiom,
    ! [X_a] :
      ( semilattice_sup(X_a)
     => ! [A_6,B_2,C_2] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),A_6),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),B_2),C_2)) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),A_6),B_2)),C_2) ) ).

fof(fact_449_override__on__def,axiom,
    ! [X_b,X_a,F,G,A_1,X_1] :
      ( ( hAPP(X_a,X_b,F,X_1) = hAPP(X_a,X_b,hAPP(fun(X_a,bool),fun(X_a,X_b),hAPP(fun(X_a,X_b),fun(fun(X_a,bool),fun(X_a,X_b)),hAPP(fun(X_a,X_b),fun(fun(X_a,X_b),fun(fun(X_a,bool),fun(X_a,X_b))),override_on(X_a,X_b),F),G),A_1),X_1)
       <= ~ hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_1),A_1)) )
      & ( hAPP(X_a,X_b,G,X_1) = hAPP(X_a,X_b,hAPP(fun(X_a,bool),fun(X_a,X_b),hAPP(fun(X_a,X_b),fun(fun(X_a,bool),fun(X_a,X_b)),hAPP(fun(X_a,X_b),fun(fun(X_a,X_b),fun(fun(X_a,bool),fun(X_a,X_b))),override_on(X_a,X_b),F),G),A_1),X_1)
       <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_1),A_1)) ) ) ).

fof(tsy_c_Set_OCollect_res,axiom,
    ! [X_a] : collect(X_a) = ti(fun(fun(X_a,bool),fun(X_a,bool)),collect(X_a)) ).

fof(fact_169_finite__pointwise,axiom,
    ! [X_b,X_a,P_1,Q_1,G_1,P_2,C0_1,Q_2,U_1] :
      ( ( ( hBOOL(hAPP(fun(hoare_1656922687triple(X_b),bool),bool,hAPP(fun(hoare_1656922687triple(X_b),bool),fun(fun(hoare_1656922687triple(X_b),bool),bool),hoare_279057269derivs(X_b),G_1),hAPP(fun(X_a,bool),fun(hoare_1656922687triple(X_b),bool),hAPP(fun(X_a,hoare_1656922687triple(X_b)),fun(fun(X_a,bool),fun(hoare_1656922687triple(X_b),bool)),image(X_a,hoare_1656922687triple(X_b)),hAPP(fun(X_a,fun(X_b,fun(state,bool))),fun(X_a,hoare_1656922687triple(X_b)),hAPP(fun(X_a,fun(fun(X_b,fun(state,bool)),hoare_1656922687triple(X_b))),fun(fun(X_a,fun(X_b,fun(state,bool))),fun(X_a,hoare_1656922687triple(X_b))),combs(X_a,fun(X_b,fun(state,bool)),hoare_1656922687triple(X_b)),hAPP(fun(X_a,com),fun(X_a,fun(fun(X_b,fun(state,bool)),hoare_1656922687triple(X_b))),hAPP(fun(X_a,fun(com,fun(fun(X_b,fun(state,bool)),hoare_1656922687triple(X_b)))),fun(fun(X_a,com),fun(X_a,fun(fun(X_b,fun(state,bool)),hoare_1656922687triple(X_b)))),combs(X_a,com,fun(fun(X_b,fun(state,bool)),hoare_1656922687triple(X_b))),hAPP(fun(X_a,fun(X_b,fun(state,bool))),fun(X_a,fun(com,fun(fun(X_b,fun(state,bool)),hoare_1656922687triple(X_b)))),hAPP(fun(fun(X_b,fun(state,bool)),fun(com,fun(fun(X_b,fun(state,bool)),hoare_1656922687triple(X_b)))),fun(fun(X_a,fun(X_b,fun(state,bool))),fun(X_a,fun(com,fun(fun(X_b,fun(state,bool)),hoare_1656922687triple(X_b))))),combb(fun(X_b,fun(state,bool)),fun(com,fun(fun(X_b,fun(state,bool)),hoare_1656922687triple(X_b))),X_a),hoare_246368825triple(X_b)),P_2)),C0_1)),Q_2)),U_1)))
         => hBOOL(hAPP(fun(hoare_1656922687triple(X_b),bool),bool,hAPP(fun(hoare_1656922687triple(X_b),bool),fun(fun(hoare_1656922687triple(X_b),bool),bool),hoare_279057269derivs(X_b),G_1),hAPP(fun(X_a,bool),fun(hoare_1656922687triple(X_b),bool),hAPP(fun(X_a,hoare_1656922687triple(X_b)),fun(fun(X_a,bool),fun(hoare_1656922687triple(X_b),bool)),image(X_a,hoare_1656922687triple(X_b)),hAPP(fun(X_a,fun(X_b,fun(state,bool))),fun(X_a,hoare_1656922687triple(X_b)),hAPP(fun(X_a,fun(fun(X_b,fun(state,bool)),hoare_1656922687triple(X_b))),fun(fun(X_a,fun(X_b,fun(state,bool))),fun(X_a,hoare_1656922687triple(X_b))),combs(X_a,fun(X_b,fun(state,bool)),hoare_1656922687triple(X_b)),hAPP(fun(X_a,com),fun(X_a,fun(fun(X_b,fun(state,bool)),hoare_1656922687triple(X_b))),hAPP(fun(X_a,fun(com,fun(fun(X_b,fun(state,bool)),hoare_1656922687triple(X_b)))),fun(fun(X_a,com),fun(X_a,fun(fun(X_b,fun(state,bool)),hoare_1656922687triple(X_b)))),combs(X_a,com,fun(fun(X_b,fun(state,bool)),hoare_1656922687triple(X_b))),hAPP(fun(X_a,fun(X_b,fun(state,bool))),fun(X_a,fun(com,fun(fun(X_b,fun(state,bool)),hoare_1656922687triple(X_b)))),hAPP(fun(fun(X_b,fun(state,bool)),fun(com,fun(fun(X_b,fun(state,bool)),hoare_1656922687triple(X_b)))),fun(fun(X_a,fun(X_b,fun(state,bool))),fun(X_a,fun(com,fun(fun(X_b,fun(state,bool)),hoare_1656922687triple(X_b))))),combb(fun(X_b,fun(state,bool)),fun(com,fun(fun(X_b,fun(state,bool)),hoare_1656922687triple(X_b))),X_a),hoare_246368825triple(X_b)),P_1)),C0_1)),Q_1)),U_1))) )
       <= ! [P_3] :
            ( hBOOL(hAPP(fun(hoare_1656922687triple(X_b),bool),bool,hAPP(fun(hoare_1656922687triple(X_b),bool),fun(fun(hoare_1656922687triple(X_b),bool),bool),hoare_279057269derivs(X_b),G_1),hAPP(fun(hoare_1656922687triple(X_b),bool),fun(hoare_1656922687triple(X_b),bool),hAPP(hoare_1656922687triple(X_b),fun(fun(hoare_1656922687triple(X_b),bool),fun(hoare_1656922687triple(X_b),bool)),insert(hoare_1656922687triple(X_b)),hAPP(fun(X_b,fun(state,bool)),hoare_1656922687triple(X_b),hAPP(com,fun(fun(X_b,fun(state,bool)),hoare_1656922687triple(X_b)),hAPP(fun(X_b,fun(state,bool)),fun(com,fun(fun(X_b,fun(state,bool)),hoare_1656922687triple(X_b))),hoare_246368825triple(X_b),hAPP(X_a,fun(X_b,fun(state,bool)),P_2,P_3)),hAPP(X_a,com,C0_1,P_3)),hAPP(X_a,fun(X_b,fun(state,bool)),Q_2,P_3))),bot_bot(fun(hoare_1656922687triple(X_b),bool)))))
           => hBOOL(hAPP(fun(hoare_1656922687triple(X_b),bool),bool,hAPP(fun(hoare_1656922687triple(X_b),bool),fun(fun(hoare_1656922687triple(X_b),bool),bool),hoare_279057269derivs(X_b),G_1),hAPP(fun(hoare_1656922687triple(X_b),bool),fun(hoare_1656922687triple(X_b),bool),hAPP(hoare_1656922687triple(X_b),fun(fun(hoare_1656922687triple(X_b),bool),fun(hoare_1656922687triple(X_b),bool)),insert(hoare_1656922687triple(X_b)),hAPP(fun(X_b,fun(state,bool)),hoare_1656922687triple(X_b),hAPP(com,fun(fun(X_b,fun(state,bool)),hoare_1656922687triple(X_b)),hAPP(fun(X_b,fun(state,bool)),fun(com,fun(fun(X_b,fun(state,bool)),hoare_1656922687triple(X_b))),hoare_246368825triple(X_b),hAPP(X_a,fun(X_b,fun(state,bool)),P_1,P_3)),hAPP(X_a,com,C0_1,P_3)),hAPP(X_a,fun(X_b,fun(state,bool)),Q_1,P_3))),bot_bot(fun(hoare_1656922687triple(X_b),bool))))) ) )
     <= hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),U_1)) ) ).

fof(tsy_c_hAPP_res,axiom,
    ! [X_c,X_a,B_1_1,B_2_1] : hAPP(X_a,X_c,B_1_1,B_2_1) = ti(X_c,hAPP(X_a,X_c,B_1_1,B_2_1)) ).

fof(fact_102_com_Osimps_I6_J,axiom,
    ! [Pname_2,Pname_1] :
      ( hAPP(pname,com,body_1,Pname_1) = hAPP(pname,com,body_1,Pname_2)
    <=> ti(pname,Pname_1) = ti(pname,Pname_2) ) ).

fof(fact_151_xt1_I3_J,axiom,
    ! [X_a] :
      ( ! [C_2,A_6,B_2] :
          ( ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),C_2),B_2))
           => hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),C_2),A_6)) )
         <= ti(X_a,A_6) = ti(X_a,B_2) )
     <= order(X_a) ) ).

fof(fact_308_disjoint__iff__not__equal,axiom,
    ! [X_a,A_1,B] :
      ( ! [X_1] :
          ( ! [Xa] :
              ( ti(X_a,Xa) != ti(X_a,X_1)
             <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),Xa),B)) )
         <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_1),A_1)) )
    <=> bot_bot(fun(X_a,bool)) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),B) ) ).

fof(fact_180_predicate1D,axiom,
    ! [X_a,X_2,P_1,Q_1] :
      ( ( hBOOL(hAPP(X_a,bool,Q_1,X_2))
       <= hBOOL(hAPP(X_a,bool,P_1,X_2)) )
     <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),P_1),Q_1)) ) ).

fof(fact_341_Int__insert__left,axiom,
    ! [X_a,B,A_3,C] :
      ( ( ~ hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),A_3),C))
       => hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),B),C) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),A_3),B)),C) )
      & ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),A_3),C))
       => hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),A_3),B)),C) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),A_3),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),B),C)) ) ) ).

fof(fact_322_inf__Int__eq,axiom,
    ! [X_a,R_1,S,X_1] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),R_1),S)))
    <=> hBOOL(hAPP(X_a,bool,hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,fun(fun(X_a,bool),bool)),fun(fun(X_a,bool),fun(X_a,bool)),combc(X_a,fun(X_a,bool),bool),member(X_a)),R_1)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,fun(fun(X_a,bool),bool)),fun(fun(X_a,bool),fun(X_a,bool)),combc(X_a,fun(X_a,bool),bool),member(X_a)),S)),X_1)) ) ).

fof(fact_375_inf__sup__aci_I3_J,axiom,
    ! [X_a] :
      ( ! [X,Y,Z_1] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),X),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),Y),Z_1)) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),Y),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),X),Z_1))
     <= lattice(X_a) ) ).

fof(fact_370_inf__commute,axiom,
    ! [X_a] :
      ( ! [X,Y] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),X),Y) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),Y),X)
     <= semilattice_inf(X_a) ) ).

fof(fact_185_conseq12,axiom,
    ! [X_a,Q_1,P_1,G_1,P_2,C_1,Q_2] :
      ( ( ! [Z_3,S_3] :
            ( hBOOL(hAPP(state,bool,hAPP(X_a,fun(state,bool),P_1,Z_3),S_3))
           => ! [S_4] :
                ( hBOOL(hAPP(state,bool,hAPP(X_a,fun(state,bool),Q_1,Z_3),S_4))
               <= ! [Z_4] :
                    ( hBOOL(hAPP(state,bool,hAPP(X_a,fun(state,bool),P_2,Z_4),S_3))
                   => hBOOL(hAPP(state,bool,hAPP(X_a,fun(state,bool),Q_2,Z_4),S_4)) ) ) )
       => hBOOL(hAPP(fun(hoare_1656922687triple(X_a),bool),bool,hAPP(fun(hoare_1656922687triple(X_a),bool),fun(fun(hoare_1656922687triple(X_a),bool),bool),hoare_279057269derivs(X_a),G_1),hAPP(fun(hoare_1656922687triple(X_a),bool),fun(hoare_1656922687triple(X_a),bool),hAPP(hoare_1656922687triple(X_a),fun(fun(hoare_1656922687triple(X_a),bool),fun(hoare_1656922687triple(X_a),bool)),insert(hoare_1656922687triple(X_a)),hAPP(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a),hAPP(com,fun(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a)),hAPP(fun(X_a,fun(state,bool)),fun(com,fun(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a))),hoare_246368825triple(X_a),P_1),C_1),Q_1)),bot_bot(fun(hoare_1656922687triple(X_a),bool))))) )
     <= hBOOL(hAPP(fun(hoare_1656922687triple(X_a),bool),bool,hAPP(fun(hoare_1656922687triple(X_a),bool),fun(fun(hoare_1656922687triple(X_a),bool),bool),hoare_279057269derivs(X_a),G_1),hAPP(fun(hoare_1656922687triple(X_a),bool),fun(hoare_1656922687triple(X_a),bool),hAPP(hoare_1656922687triple(X_a),fun(fun(hoare_1656922687triple(X_a),bool),fun(hoare_1656922687triple(X_a),bool)),insert(hoare_1656922687triple(X_a)),hAPP(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a),hAPP(com,fun(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a)),hAPP(fun(X_a,fun(state,bool)),fun(com,fun(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a))),hoare_246368825triple(X_a),P_2),C_1),Q_2)),bot_bot(fun(hoare_1656922687triple(X_a),bool))))) ) ).

fof(fact_24_subsetD,axiom,
    ! [X_a,C_1,A_1,B] :
      ( ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),C_1),B))
       <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),C_1),A_1)) )
     <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),A_1),B)) ) ).

fof(fact_333_Int__absorb2,axiom,
    ! [X_a,A_1,B] :
      ( hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),B) = ti(fun(X_a,bool),A_1)
     <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),A_1),B)) ) ).

fof(arity_HOL_Obool___Lattices_Obounded__lattice__bot,axiom,
    bounded_lattice_bot(bool) ).

fof(fact_228_folding__one__idem_Osubset__idem,axiom,
    ! [X_a,B,A_1,F,Fa] :
      ( ( ( ( hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),F,hAPP(fun(X_a,bool),X_a,Fa,B)),hAPP(fun(X_a,bool),X_a,Fa,A_1)) = hAPP(fun(X_a,bool),X_a,Fa,A_1)
           <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),B),A_1)) )
         <= ti(fun(X_a,bool),B) != bot_bot(fun(X_a,bool)) )
       <= hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1)) )
     <= hBOOL(hAPP(fun(fun(X_a,bool),X_a),bool,hAPP(fun(X_a,fun(X_a,X_a)),fun(fun(fun(X_a,bool),X_a),bool),finite2073411215e_idem(X_a),F),Fa)) ) ).

fof(fact_271_folding__image__simple__idem_Oin__idem,axiom,
    ! [X_b,X_a,X_2,A_1,F,Z,G,Fa] :
      ( hBOOL(hAPP(fun(fun(X_b,bool),X_a),bool,hAPP(fun(X_b,X_a),fun(fun(fun(X_b,bool),X_a),bool),hAPP(X_a,fun(fun(X_b,X_a),fun(fun(fun(X_b,bool),X_a),bool)),hAPP(fun(X_a,fun(X_a,X_a)),fun(X_a,fun(fun(X_b,X_a),fun(fun(fun(X_b,bool),X_a),bool))),finite908156982e_idem(X_a,X_b),F),Z),G),Fa))
     => ( hBOOL(hAPP(fun(X_b,bool),bool,finite_finite(X_b),A_1))
       => ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),X_2),A_1))
         => hAPP(fun(X_b,bool),X_a,Fa,A_1) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),F,hAPP(X_b,X_a,G,X_2)),hAPP(fun(X_b,bool),X_a,Fa,A_1)) ) ) ) ).

fof(fact_218_le__sup__iff,axiom,
    ! [X_a] :
      ( semilattice_sup(X_a)
     => ! [X_2,Y_2,Z] :
          ( ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X_2),Z))
            & hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),Y_2),Z)) )
        <=> hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),X_2),Y_2)),Z)) ) ) ).

fof(fact_39_insert__iff,axiom,
    ! [X_a,A_3,B_1,A_1] :
      ( ( ti(X_a,A_3) = ti(X_a,B_1)
        | hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),A_3),A_1)) )
    <=> hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),A_3),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),B_1),A_1))) ) ).

fof(fact_488_subset__inj__on,axiom,
    ! [X_a,X_b,A_1,F,B] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,X_b),fun(fun(X_a,bool),bool),inj_on(X_a,X_b),F),B))
     => ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),A_1),B))
       => hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,X_b),fun(fun(X_a,bool),bool),inj_on(X_a,X_b),F),A_1)) ) ) ).

fof(arity_fun___Lattices_Olattice,axiom,
    ! [T_2,T_1] :
      ( lattice(fun(T_2,T_1))
     <= lattice(T_1) ) ).

fof(conj_4,hypothesis,
    hBOOL(hAPP(fun(hoare_1656922687triple(state),bool),bool,hAPP(fun(hoare_1656922687triple(state),bool),fun(fun(hoare_1656922687triple(state),bool),bool),ord_less_eq(fun(hoare_1656922687triple(state),bool)),fa),hAPP(fun(pname,bool),fun(hoare_1656922687triple(state),bool),hAPP(fun(pname,hoare_1656922687triple(state)),fun(fun(pname,bool),fun(hoare_1656922687triple(state),bool)),image(pname,hoare_1656922687triple(state)),hAPP(fun(pname,com),fun(pname,hoare_1656922687triple(state)),hAPP(fun(com,hoare_1656922687triple(state)),fun(fun(pname,com),fun(pname,hoare_1656922687triple(state))),combb(com,hoare_1656922687triple(state),pname),hoare_Mirabelle_MGT),hAPP(fun(pname,option(com)),fun(pname,com),hAPP(fun(option(com),com),fun(fun(pname,option(com)),fun(pname,com)),combb(option(com),com,pname),the(com)),body))),hAPP(fun(pname,option(com)),fun(pname,bool),dom(pname,com),body)))) ).

fof(tsy_c_Finite__Set_Ocomp__fun__idem_res,axiom,
    ! [X_a,X_b] : finite_comp_fun_idem(X_a,X_b) = ti(fun(fun(X_a,fun(X_b,X_b)),bool),finite_comp_fun_idem(X_a,X_b)) ).

fof(fact_168_BodyN,axiom,
    ! [X_a,P_1,Pn_1,Q_1,G_1] :
      ( hBOOL(hAPP(fun(hoare_1656922687triple(X_a),bool),bool,hAPP(fun(hoare_1656922687triple(X_a),bool),fun(fun(hoare_1656922687triple(X_a),bool),bool),hoare_279057269derivs(X_a),hAPP(fun(hoare_1656922687triple(X_a),bool),fun(hoare_1656922687triple(X_a),bool),hAPP(hoare_1656922687triple(X_a),fun(fun(hoare_1656922687triple(X_a),bool),fun(hoare_1656922687triple(X_a),bool)),insert(hoare_1656922687triple(X_a)),hAPP(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a),hAPP(com,fun(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a)),hAPP(fun(X_a,fun(state,bool)),fun(com,fun(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a))),hoare_246368825triple(X_a),P_1),hAPP(pname,com,body_1,Pn_1)),Q_1)),G_1)),hAPP(fun(hoare_1656922687triple(X_a),bool),fun(hoare_1656922687triple(X_a),bool),hAPP(hoare_1656922687triple(X_a),fun(fun(hoare_1656922687triple(X_a),bool),fun(hoare_1656922687triple(X_a),bool)),insert(hoare_1656922687triple(X_a)),hAPP(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a),hAPP(com,fun(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a)),hAPP(fun(X_a,fun(state,bool)),fun(com,fun(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a))),hoare_246368825triple(X_a),P_1),hAPP(option(com),com,the(com),hAPP(pname,option(com),body,Pn_1))),Q_1)),bot_bot(fun(hoare_1656922687triple(X_a),bool)))))
     => hBOOL(hAPP(fun(hoare_1656922687triple(X_a),bool),bool,hAPP(fun(hoare_1656922687triple(X_a),bool),fun(fun(hoare_1656922687triple(X_a),bool),bool),hoare_279057269derivs(X_a),G_1),hAPP(fun(hoare_1656922687triple(X_a),bool),fun(hoare_1656922687triple(X_a),bool),hAPP(hoare_1656922687triple(X_a),fun(fun(hoare_1656922687triple(X_a),bool),fun(hoare_1656922687triple(X_a),bool)),insert(hoare_1656922687triple(X_a)),hAPP(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a),hAPP(com,fun(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a)),hAPP(fun(X_a,fun(state,bool)),fun(com,fun(fun(X_a,fun(state,bool)),hoare_1656922687triple(X_a))),hoare_246368825triple(X_a),P_1),hAPP(pname,com,body_1,Pn_1)),Q_1)),bot_bot(fun(hoare_1656922687triple(X_a),bool))))) ) ).

fof(fact_471_fun__upd__def,axiom,
    ! [X_b,X_a,F,B_1,A_3,X_1] :
      ( ( ti(X_a,X_1) = ti(X_a,A_3)
       => ti(X_b,B_1) = hAPP(X_a,X_b,hAPP(X_b,fun(X_a,X_b),hAPP(X_a,fun(X_b,fun(X_a,X_b)),hAPP(fun(X_a,X_b),fun(X_a,fun(X_b,fun(X_a,X_b))),fun_upd(X_a,X_b),F),A_3),B_1),X_1) )
      & ( hAPP(X_a,X_b,F,X_1) = hAPP(X_a,X_b,hAPP(X_b,fun(X_a,X_b),hAPP(X_a,fun(X_b,fun(X_a,X_b)),hAPP(fun(X_a,X_b),fun(X_a,fun(X_b,fun(X_a,X_b))),fun_upd(X_a,X_b),F),A_3),B_1),X_1)
       <= ti(X_a,X_1) != ti(X_a,A_3) ) ) ).

fof(fact_78_subset__insertI2,axiom,
    ! [X_a,B_1,A_1,B] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),A_1),B))
     => hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),B_1),B))) ) ).

fof(fact_52_set__eq__subset,axiom,
    ! [X_a,A_1,B] :
      ( ti(fun(X_a,bool),B) = ti(fun(X_a,bool),A_1)
    <=> ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),B),A_1))
        & hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),A_1),B)) ) ) ).

fof(tsy_c_Com_OWT_res,axiom,
    ti(fun(com,bool),wt) = wt ).

fof(fact_458_fun__upd__triv,axiom,
    ! [X_b,X_a,F,X_2] : hAPP(X_b,fun(X_a,X_b),hAPP(X_a,fun(X_b,fun(X_a,X_b)),hAPP(fun(X_a,X_b),fun(X_a,fun(X_b,fun(X_a,X_b))),fun_upd(X_a,X_b),F),X_2),hAPP(X_a,X_b,F,X_2)) = ti(fun(X_a,X_b),F) ).

fof(fact_18_subset__singletonD,axiom,
    ! [X_a,A_1,X_2] :
      ( ( hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),bot_bot(fun(X_a,bool))) = ti(fun(X_a,bool),A_1)
        | ti(fun(X_a,bool),A_1) = bot_bot(fun(X_a,bool)) )
     <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),bot_bot(fun(X_a,bool))))) ) ).

fof(help_COMBK_1_1_U,axiom,
    ! [X_b,X_a,P,Q] : hAPP(X_b,X_a,hAPP(X_a,fun(X_b,X_a),combk(X_a,X_b),P),Q) = ti(X_a,P) ).

fof(fact_414_Diff__partition,axiom,
    ! [X_a,A_1,B] :
      ( hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),B),A_1)) = ti(fun(X_a,bool),B)
     <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),A_1),B)) ) ).

fof(fact_300_ord__eq__le__subst,axiom,
    ! [X_a,X_b] :
      ( ( ord(X_b)
        & ord(X_a) )
     => ! [C_1,A_3,F,B_1] :
          ( hAPP(X_b,X_a,F,B_1) = A_3
         => ( hBOOL(hAPP(X_b,bool,hAPP(X_b,fun(X_b,bool),ord_less_eq(X_b),B_1),C_1))
           => ( ! [X_1,Y_1] :
                  ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(X_b,X_a,F,X_1)),hAPP(X_b,X_a,F,Y_1)))
                 <= hBOOL(hAPP(X_b,bool,hAPP(X_b,fun(X_b,bool),ord_less_eq(X_b),X_1),Y_1)) )
             => hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),A_3),hAPP(X_b,X_a,F,C_1))) ) ) ) ) ).

fof(fact_145_xt1_I6_J,axiom,
    ! [X_a] :
      ( ! [Z_1,Y,X] :
          ( ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),Z_1),Y))
           => hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),Z_1),X)) )
         <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),Y),X)) )
     <= order(X_a) ) ).

fof(fact_236_folding__one__idem_Oin__idem,axiom,
    ! [X_a,X_2,A_1,F,Fa] :
      ( hBOOL(hAPP(fun(fun(X_a,bool),X_a),bool,hAPP(fun(X_a,fun(X_a,X_a)),fun(fun(fun(X_a,bool),X_a),bool),finite2073411215e_idem(X_a),F),Fa))
     => ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1))
       => ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_2),A_1))
         => hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),F,X_2),hAPP(fun(X_a,bool),X_a,Fa,A_1)) = hAPP(fun(X_a,bool),X_a,Fa,A_1) ) ) ) ).

fof(tsy_c_Option_Ooption_ONone_res,axiom,
    ! [X_b] : ti(option(X_b),none(X_b)) = none(X_b) ).

fof(fact_45_equalityE,axiom,
    ! [X_a,A_1,B] :
      ( ti(fun(X_a,bool),B) = ti(fun(X_a,bool),A_1)
     => ~ ( ~ hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),B),A_1))
         <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),A_1),B)) ) ) ).

fof(fact_299_order__subst2,axiom,
    ! [X_a,X_b] :
      ( ( order(X_b)
        & order(X_a) )
     => ! [F,C_1,A_3,B_1] :
          ( ( hBOOL(hAPP(X_b,bool,hAPP(X_b,fun(X_b,bool),ord_less_eq(X_b),hAPP(X_a,X_b,F,B_1)),C_1))
           => ( hBOOL(hAPP(X_b,bool,hAPP(X_b,fun(X_b,bool),ord_less_eq(X_b),hAPP(X_a,X_b,F,A_3)),C_1))
             <= ! [X_1,Y_1] :
                  ( hBOOL(hAPP(X_b,bool,hAPP(X_b,fun(X_b,bool),ord_less_eq(X_b),hAPP(X_a,X_b,F,X_1)),hAPP(X_a,X_b,F,Y_1)))
                 <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X_1),Y_1)) ) ) )
         <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),A_3),B_1)) ) ) ).

fof(arity_HOL_Obool___Lattices_Olattice,axiom,
    lattice(bool) ).

