fof(tsy_c_hAPP_res,axiom,
    ! [X_c,X_a,B_1_1,B_2] : ti(X_c,hAPP(X_a,X_c,B_1_1,B_2)) = hAPP(X_a,X_c,B_1_1,B_2) ).

fof(fact_19_empty__iff,axiom,
    ! [X_b,Ca] : ~ hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),Ca),bot_bot(fun(X_b,bool)))) ).

fof(tsy_c_fequal_res,axiom,
    ! [X_a] : ti(fun(X_a,fun(X_a,bool)),fequal(X_a)) = fequal(X_a) ).

fof(tsy_c_Hoare__Mirabelle__pjuwniqynr_Ohoare__derivs_res,axiom,
    ! [X_b] : ti(fun(fun(hoare_509422987triple(X_b),bool),fun(fun(hoare_509422987triple(X_b),bool),bool)),hoare_122391849derivs(X_b)) = hoare_122391849derivs(X_b) ).

fof(help_ti_idem,axiom,
    ! [T,A] : ti(T,A) = ti(T,ti(T,A)) ).

fof(tsy_c_COMBK_res,axiom,
    ! [X_a,X_b] : combk(X_a,X_b) = ti(fun(X_a,fun(X_b,X_a)),combk(X_a,X_b)) ).

fof(fact_89_insert__fold1SetE,axiom,
    ! [X_b,F_1,A_4,X_3,X_1] :
      ( hBOOL(hAPP(X_b,bool,hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,fun(X_b,X_b)),fun(fun(X_b,bool),fun(X_b,bool)),finite_fold1Set(X_b),F_1),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),A_4),X_3)),X_1))
     => ~ ! [A_3,A_2] :
            ( hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),A_4),X_3) = hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),A_3),A_2)
           => ( hBOOL(hAPP(X_b,bool,hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),hAPP(fun(X_b,fun(X_b,X_b)),fun(X_b,fun(fun(X_b,bool),fun(X_b,bool))),finite_fold_graph(X_b,X_b),F_1),A_3),A_2),X_1))
             => hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),A_3),A_2)) ) ) ) ).

fof(fact_85_finite__insert,axiom,
    ! [X_b,A_4,A_1] :
      ( hBOOL(hAPP(fun(X_b,bool),bool,finite_finite_1(X_b),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),A_4),A_1)))
    <=> hBOOL(hAPP(fun(X_b,bool),bool,finite_finite_1(X_b),A_1)) ) ).

fof(fact_48_Set_Oset__insert,axiom,
    ! [X_b,X_1,A_1] :
      ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),X_1),A_1))
     => ~ ! [B] :
            ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),X_1),B))
           <= hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),X_1),B) = ti(fun(X_b,bool),A_1) ) ) ).

fof(tsy_c_fNot_res,hypothesis,
    fNot = ti(fun(bool,bool),fNot) ).

fof(fact_22_all__not__in__conv,axiom,
    ! [X_b,A_1] :
      ( ! [X_2] : ~ hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),X_2),A_1))
    <=> bot_bot(fun(X_b,bool)) = ti(fun(X_b,bool),A_1) ) ).

fof(fact_83_finite__code,axiom,
    ! [X_b] :
      ( ! [A_1] : hBOOL(hAPP(fun(X_b,bool),bool,finite_finite_1(X_b),A_1))
     <= finite_finite(X_b) ) ).

fof(help_fdisj_3_1_U,axiom,
    ! [P,Q] :
      ( hBOOL(P)
      | hBOOL(Q)
      | ~ hBOOL(hAPP(bool,bool,hAPP(bool,fun(bool,bool),fdisj,P),Q)) ) ).

fof(arity_fun___Finite__Set_Ofinite,axiom,
    ! [T_2,T_1] :
      ( ( finite_finite(T_2)
        & finite_finite(T_1) )
     => finite_finite(fun(T_2,T_1)) ) ).

fof(fact_74_finite_OinsertI,axiom,
    ! [X_b,A_4,A_1] :
      ( hBOOL(hAPP(fun(X_b,bool),bool,finite_finite_1(X_b),A_1))
     => hBOOL(hAPP(fun(X_b,bool),bool,finite_finite_1(X_b),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),A_4),A_1))) ) ).

fof(fact_44_bot__fun__def,axiom,
    ! [X_b,X_c] :
      ( bot(X_c)
     => ! [X_2] : hAPP(X_b,X_c,bot_bot(fun(X_b,X_c)),X_2) = bot_bot(X_c) ) ).

fof(fact_8_conseq12,axiom,
    ! [X_b,Q_1,Pa,Ga,P_2,Ca,Q_3] :
      ( ( ! [Z_1,S] :
            ( hBOOL(hAPP(state,bool,hAPP(X_b,fun(state,bool),Pa,Z_1),S))
           => ! [S_1] :
                ( ! [Z_2] :
                    ( hBOOL(hAPP(state,bool,hAPP(X_b,fun(state,bool),Q_3,Z_2),S_1))
                   <= hBOOL(hAPP(state,bool,hAPP(X_b,fun(state,bool),P_2,Z_2),S)) )
               => hBOOL(hAPP(state,bool,hAPP(X_b,fun(state,bool),Q_1,Z_1),S_1)) ) )
       => hBOOL(hAPP(fun(hoare_509422987triple(X_b),bool),bool,hAPP(fun(hoare_509422987triple(X_b),bool),fun(fun(hoare_509422987triple(X_b),bool),bool),hoare_122391849derivs(X_b),Ga),hAPP(fun(hoare_509422987triple(X_b),bool),fun(hoare_509422987triple(X_b),bool),hAPP(hoare_509422987triple(X_b),fun(fun(hoare_509422987triple(X_b),bool),fun(hoare_509422987triple(X_b),bool)),insert(hoare_509422987triple(X_b)),hAPP(fun(X_b,fun(state,bool)),hoare_509422987triple(X_b),hAPP(com,fun(fun(X_b,fun(state,bool)),hoare_509422987triple(X_b)),hAPP(fun(X_b,fun(state,bool)),fun(com,fun(fun(X_b,fun(state,bool)),hoare_509422987triple(X_b))),hoare_1008221573triple(X_b),Pa),Ca),Q_1)),bot_bot(fun(hoare_509422987triple(X_b),bool))))) )
     <= hBOOL(hAPP(fun(hoare_509422987triple(X_b),bool),bool,hAPP(fun(hoare_509422987triple(X_b),bool),fun(fun(hoare_509422987triple(X_b),bool),bool),hoare_122391849derivs(X_b),Ga),hAPP(fun(hoare_509422987triple(X_b),bool),fun(hoare_509422987triple(X_b),bool),hAPP(hoare_509422987triple(X_b),fun(fun(hoare_509422987triple(X_b),bool),fun(hoare_509422987triple(X_b),bool)),insert(hoare_509422987triple(X_b)),hAPP(fun(X_b,fun(state,bool)),hoare_509422987triple(X_b),hAPP(com,fun(fun(X_b,fun(state,bool)),hoare_509422987triple(X_b)),hAPP(fun(X_b,fun(state,bool)),fun(com,fun(fun(X_b,fun(state,bool)),hoare_509422987triple(X_b))),hoare_1008221573triple(X_b),P_2),Ca),Q_3)),bot_bot(fun(hoare_509422987triple(X_b),bool))))) ) ).

fof(tsy_c_HOL_OThe_res,axiom,
    ! [X_b] : ti(fun(fun(X_b,bool),X_b),the(X_b)) = the(X_b) ).

fof(fact_21_ex__in__conv,axiom,
    ! [X_b,A_1] :
      ( ti(fun(X_b,bool),A_1) != bot_bot(fun(X_b,bool))
    <=> ? [X_2] : hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),X_2),A_1)) ) ).

fof(fact_30_insert__absorb2,axiom,
    ! [X_b,X_1,A_1] : hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),X_1),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),X_1),A_1)) = hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),X_1),A_1) ).

fof(tsy_c_Com_Ocom_OSemi_res,axiom,
    ti(fun(com,fun(com,com)),semi) = semi ).

fof(fact_31_insert__Collect,axiom,
    ! [X_b,A_4,Pa] : hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),A_4),hAPP(fun(X_b,bool),fun(X_b,bool),collect(X_b),Pa)) = hAPP(fun(X_b,bool),fun(X_b,bool),collect(X_b),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,fun(bool,bool)),fun(fun(X_b,bool),fun(X_b,bool)),combs(X_b,bool,bool),hAPP(fun(X_b,bool),fun(X_b,fun(bool,bool)),hAPP(fun(bool,fun(bool,bool)),fun(fun(X_b,bool),fun(X_b,fun(bool,bool))),combb(bool,fun(bool,bool),X_b),fimplies),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(bool,bool),fun(fun(X_b,bool),fun(X_b,bool)),combb(bool,bool,X_b),fNot),hAPP(X_b,fun(X_b,bool),hAPP(fun(X_b,fun(X_b,bool)),fun(X_b,fun(X_b,bool)),combc(X_b,X_b,bool),fequal(X_b)),A_4)))),Pa)) ).

fof(help_fequal_1_1_T,axiom,
    ! [X_a,X,Y] :
      ( ti(X_a,Y) = ti(X_a,X)
      | ~ hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),fequal(X_a),X),Y)) ) ).

fof(fact_23_empty__def,axiom,
    ! [X_b] : bot_bot(fun(X_b,bool)) = hAPP(fun(X_b,bool),fun(X_b,bool),collect(X_b),hAPP(bool,fun(X_b,bool),combk(bool,X_b),fFalse)) ).

fof(fact_56_If__def,axiom,
    ! [X_b,X_1,Y_2,Pa] :
      ( ( hAPP(fun(X_b,bool),X_b,the(X_b),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,fun(bool,bool)),fun(fun(X_b,bool),fun(X_b,bool)),combs(X_b,bool,bool),hAPP(fun(X_b,bool),fun(X_b,fun(bool,bool)),hAPP(fun(bool,fun(bool,bool)),fun(fun(X_b,bool),fun(X_b,fun(bool,bool))),combb(bool,fun(bool,bool),X_b),fconj),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(bool,bool),fun(fun(X_b,bool),fun(X_b,bool)),combb(bool,bool,X_b),hAPP(bool,fun(bool,bool),fimplies,Pa)),hAPP(X_b,fun(X_b,bool),hAPP(fun(X_b,fun(X_b,bool)),fun(X_b,fun(X_b,bool)),combc(X_b,X_b,bool),fequal(X_b)),X_1)))),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(bool,bool),fun(fun(X_b,bool),fun(X_b,bool)),combb(bool,bool,X_b),hAPP(bool,fun(bool,bool),fimplies,hAPP(bool,bool,fNot,Pa))),hAPP(X_b,fun(X_b,bool),hAPP(fun(X_b,fun(X_b,bool)),fun(X_b,fun(X_b,bool)),combc(X_b,X_b,bool),fequal(X_b)),Y_2)))) = ti(X_b,X_1)
       <= hBOOL(Pa) )
      & ( ~ hBOOL(Pa)
       => ti(X_b,Y_2) = hAPP(fun(X_b,bool),X_b,the(X_b),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,fun(bool,bool)),fun(fun(X_b,bool),fun(X_b,bool)),combs(X_b,bool,bool),hAPP(fun(X_b,bool),fun(X_b,fun(bool,bool)),hAPP(fun(bool,fun(bool,bool)),fun(fun(X_b,bool),fun(X_b,fun(bool,bool))),combb(bool,fun(bool,bool),X_b),fconj),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(bool,bool),fun(fun(X_b,bool),fun(X_b,bool)),combb(bool,bool,X_b),hAPP(bool,fun(bool,bool),fimplies,Pa)),hAPP(X_b,fun(X_b,bool),hAPP(fun(X_b,fun(X_b,bool)),fun(X_b,fun(X_b,bool)),combc(X_b,X_b,bool),fequal(X_b)),X_1)))),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(bool,bool),fun(fun(X_b,bool),fun(X_b,bool)),combb(bool,bool,X_b),hAPP(bool,fun(bool,bool),fimplies,hAPP(bool,bool,fNot,Pa))),hAPP(X_b,fun(X_b,bool),hAPP(fun(X_b,fun(X_b,bool)),fun(X_b,fun(X_b,bool)),combc(X_b,X_b,bool),fequal(X_b)),Y_2)))) ) ) ).

fof(help_COMBB_1_1_U,axiom,
    ! [X_a,X_c,X_b,P,Q,R] : hAPP(X_a,X_c,hAPP(fun(X_a,X_b),fun(X_a,X_c),hAPP(fun(X_b,X_c),fun(fun(X_a,X_b),fun(X_a,X_c)),combb(X_b,X_c,X_a),P),Q),R) = hAPP(X_b,X_c,P,hAPP(X_a,X_b,Q,R)) ).

fof(tsy_c_Set_OCollect_res,axiom,
    ! [X_b] : collect(X_b) = ti(fun(fun(X_b,bool),fun(X_b,bool)),collect(X_b)) ).

fof(fact_18_Collect__empty__eq,axiom,
    ! [X_b,Pa] :
      ( ! [X_2] : ~ hBOOL(hAPP(X_b,bool,Pa,X_2))
    <=> bot_bot(fun(X_b,bool)) = hAPP(fun(X_b,bool),fun(X_b,bool),collect(X_b),Pa) ) ).

fof(help_fimplies_2_1_U,axiom,
    ! [P,Q] :
      ( hBOOL(hAPP(bool,bool,hAPP(bool,fun(bool,bool),fimplies,P),Q))
      | ~ hBOOL(Q) ) ).

fof(tsy_v_b_res,hypothesis,
    ti(fun(state,bool),b) = b ).

fof(fact_52_mk__disjoint__insert,axiom,
    ! [X_b,A_4,A_1] :
      ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),A_4),A_1))
     => ? [B] :
          ( ti(fun(X_b,bool),A_1) = hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),A_4),B)
          & ~ hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),A_4),B)) ) ) ).

fof(fact_15_Collect__conv__if,axiom,
    ! [X_b,Pa,A_4] :
      ( ( hBOOL(hAPP(X_b,bool,Pa,A_4))
       => hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),A_4),bot_bot(fun(X_b,bool))) = hAPP(fun(X_b,bool),fun(X_b,bool),collect(X_b),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,fun(bool,bool)),fun(fun(X_b,bool),fun(X_b,bool)),combs(X_b,bool,bool),hAPP(fun(X_b,bool),fun(X_b,fun(bool,bool)),hAPP(fun(bool,fun(bool,bool)),fun(fun(X_b,bool),fun(X_b,fun(bool,bool))),combb(bool,fun(bool,bool),X_b),fconj),hAPP(X_b,fun(X_b,bool),hAPP(fun(X_b,fun(X_b,bool)),fun(X_b,fun(X_b,bool)),combc(X_b,X_b,bool),fequal(X_b)),A_4))),Pa)) )
      & ( ~ hBOOL(hAPP(X_b,bool,Pa,A_4))
       => hAPP(fun(X_b,bool),fun(X_b,bool),collect(X_b),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,fun(bool,bool)),fun(fun(X_b,bool),fun(X_b,bool)),combs(X_b,bool,bool),hAPP(fun(X_b,bool),fun(X_b,fun(bool,bool)),hAPP(fun(bool,fun(bool,bool)),fun(fun(X_b,bool),fun(X_b,fun(bool,bool))),combb(bool,fun(bool,bool),X_b),fconj),hAPP(X_b,fun(X_b,bool),hAPP(fun(X_b,fun(X_b,bool)),fun(X_b,fun(X_b,bool)),combc(X_b,X_b,bool),fequal(X_b)),A_4))),Pa)) = bot_bot(fun(X_b,bool)) ) ) ).

fof(help_fimplies_1_1_U,axiom,
    ! [Q,P] :
      ( hBOOL(P)
      | hBOOL(hAPP(bool,bool,hAPP(bool,fun(bool,bool),fimplies,P),Q)) ) ).

fof(fact_3_hoare__derivs_Oinsert,axiom,
    ! [X_b,Ts,Ga,T_3] :
      ( ( hBOOL(hAPP(fun(hoare_509422987triple(X_b),bool),bool,hAPP(fun(hoare_509422987triple(X_b),bool),fun(fun(hoare_509422987triple(X_b),bool),bool),hoare_122391849derivs(X_b),Ga),Ts))
       => hBOOL(hAPP(fun(hoare_509422987triple(X_b),bool),bool,hAPP(fun(hoare_509422987triple(X_b),bool),fun(fun(hoare_509422987triple(X_b),bool),bool),hoare_122391849derivs(X_b),Ga),hAPP(fun(hoare_509422987triple(X_b),bool),fun(hoare_509422987triple(X_b),bool),hAPP(hoare_509422987triple(X_b),fun(fun(hoare_509422987triple(X_b),bool),fun(hoare_509422987triple(X_b),bool)),insert(hoare_509422987triple(X_b)),T_3),Ts))) )
     <= hBOOL(hAPP(fun(hoare_509422987triple(X_b),bool),bool,hAPP(fun(hoare_509422987triple(X_b),bool),fun(fun(hoare_509422987triple(X_b),bool),bool),hoare_122391849derivs(X_b),Ga),hAPP(fun(hoare_509422987triple(X_b),bool),fun(hoare_509422987triple(X_b),bool),hAPP(hoare_509422987triple(X_b),fun(fun(hoare_509422987triple(X_b),bool),fun(hoare_509422987triple(X_b),bool)),insert(hoare_509422987triple(X_b)),T_3),bot_bot(fun(hoare_509422987triple(X_b),bool))))) ) ).

fof(tsy_c_fdisj_res,axiom,
    ti(fun(bool,fun(bool,bool)),fdisj) = fdisj ).

fof(fact_77_Collect__def,axiom,
    ! [X_b,Pa] : hAPP(fun(X_b,bool),fun(X_b,bool),collect(X_b),Pa) = ti(fun(X_b,bool),Pa) ).

fof(fact_72_finite__Collect__conjI,axiom,
    ! [X_b,Q_1,Pa] :
      ( hBOOL(hAPP(fun(X_b,bool),bool,finite_finite_1(X_b),hAPP(fun(X_b,bool),fun(X_b,bool),collect(X_b),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,fun(bool,bool)),fun(fun(X_b,bool),fun(X_b,bool)),combs(X_b,bool,bool),hAPP(fun(X_b,bool),fun(X_b,fun(bool,bool)),hAPP(fun(bool,fun(bool,bool)),fun(fun(X_b,bool),fun(X_b,fun(bool,bool))),combb(bool,fun(bool,bool),X_b),fconj),Pa)),Q_1))))
     <= ( hBOOL(hAPP(fun(X_b,bool),bool,finite_finite_1(X_b),hAPP(fun(X_b,bool),fun(X_b,bool),collect(X_b),Pa)))
        | hBOOL(hAPP(fun(X_b,bool),bool,finite_finite_1(X_b),hAPP(fun(X_b,bool),fun(X_b,bool),collect(X_b),Q_1))) ) ) ).

fof(fact_87_fold1__singleton,axiom,
    ! [X_b,F_1,A_4] : ti(X_b,A_4) = hAPP(fun(X_b,bool),X_b,hAPP(fun(X_b,fun(X_b,X_b)),fun(fun(X_b,bool),X_b),finite_fold1(X_b),F_1),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),A_4),bot_bot(fun(X_b,bool)))) ).

fof(fact_81_fold__graph_OinsertI,axiom,
    ! [X_c,X_b,F_1,Z,Y_2,X_1,A_1] :
      ( ~ hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),X_1),A_1))
     => ( hBOOL(hAPP(X_c,bool,hAPP(fun(X_b,bool),fun(X_c,bool),hAPP(X_c,fun(fun(X_b,bool),fun(X_c,bool)),hAPP(fun(X_b,fun(X_c,X_c)),fun(X_c,fun(fun(X_b,bool),fun(X_c,bool))),finite_fold_graph(X_b,X_c),F_1),Z),A_1),Y_2))
       => hBOOL(hAPP(X_c,bool,hAPP(fun(X_b,bool),fun(X_c,bool),hAPP(X_c,fun(fun(X_b,bool),fun(X_c,bool)),hAPP(fun(X_b,fun(X_c,X_c)),fun(X_c,fun(fun(X_b,bool),fun(X_c,bool))),finite_fold_graph(X_b,X_c),F_1),Z),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),X_1),A_1)),hAPP(X_c,X_c,hAPP(X_b,fun(X_c,X_c),F_1,X_1),Y_2))) ) ) ).

fof(tsy_c_hBOOL_arg1,hypothesis,
    ! [B_1_1] :
      ( hBOOL(ti(bool,B_1_1))
    <=> hBOOL(B_1_1) ) ).

fof(tsy_c_Hoare__Mirabelle__pjuwniqynr_Otriple_Otriple_res,axiom,
    ! [X_b] : ti(fun(fun(X_b,fun(state,bool)),fun(com,fun(fun(X_b,fun(state,bool)),hoare_509422987triple(X_b)))),hoare_1008221573triple(X_b)) = hoare_1008221573triple(X_b) ).

fof(tsy_c_Finite__Set_Ofold1Set_res,axiom,
    ! [X_b] : ti(fun(fun(X_b,fun(X_b,X_b)),fun(fun(X_b,bool),fun(X_b,bool))),finite_fold1Set(X_b)) = finite_fold1Set(X_b) ).

fof(fact_63_nonempty__iff,axiom,
    ! [X_b,A_1] :
      ( ? [X_2,B] :
          ( ti(fun(X_b,bool),A_1) = hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),X_2),B)
          & ~ hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),X_2),B)) )
    <=> bot_bot(fun(X_b,bool)) != ti(fun(X_b,bool),A_1) ) ).

fof(help_fNot_2_1_U,axiom,
    ! [P] :
      ( hBOOL(hAPP(bool,bool,fNot,P))
      | hBOOL(P) ) ).

fof(fact_35_singleton__inject,axiom,
    ! [X_b,A_4,Ba] :
      ( hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),A_4),bot_bot(fun(X_b,bool))) = hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),Ba),bot_bot(fun(X_b,bool)))
     => ti(X_b,A_4) = ti(X_b,Ba) ) ).

fof(fact_1_triple_Oinject,axiom,
    ! [X_b,Fun1_1,Com_1,Fun2_1,Fun1_2,Com_2,Fun2_2] :
      ( ( Fun2_2 = Fun2_1
        & Com_1 = Com_2
        & Fun1_1 = Fun1_2 )
    <=> hAPP(fun(X_b,fun(state,bool)),hoare_509422987triple(X_b),hAPP(com,fun(fun(X_b,fun(state,bool)),hoare_509422987triple(X_b)),hAPP(fun(X_b,fun(state,bool)),fun(com,fun(fun(X_b,fun(state,bool)),hoare_509422987triple(X_b))),hoare_1008221573triple(X_b),Fun1_2),Com_2),Fun2_2) = hAPP(fun(X_b,fun(state,bool)),hoare_509422987triple(X_b),hAPP(com,fun(fun(X_b,fun(state,bool)),hoare_509422987triple(X_b)),hAPP(fun(X_b,fun(state,bool)),fun(com,fun(fun(X_b,fun(state,bool)),hoare_509422987triple(X_b))),hoare_1008221573triple(X_b),Fun1_1),Com_1),Fun2_1) ) ).

fof(fact_0_empty,axiom,
    ! [X_b,Ga] : hBOOL(hAPP(fun(hoare_509422987triple(X_b),bool),bool,hAPP(fun(hoare_509422987triple(X_b),bool),fun(fun(hoare_509422987triple(X_b),bool),bool),hoare_122391849derivs(X_b),Ga),bot_bot(fun(hoare_509422987triple(X_b),bool)))) ).

fof(fact_84_finite__Collect__disjI,axiom,
    ! [X_b,Pa,Q_1] :
      ( ( hBOOL(hAPP(fun(X_b,bool),bool,finite_finite_1(X_b),hAPP(fun(X_b,bool),fun(X_b,bool),collect(X_b),Q_1)))
        & hBOOL(hAPP(fun(X_b,bool),bool,finite_finite_1(X_b),hAPP(fun(X_b,bool),fun(X_b,bool),collect(X_b),Pa))) )
    <=> hBOOL(hAPP(fun(X_b,bool),bool,finite_finite_1(X_b),hAPP(fun(X_b,bool),fun(X_b,bool),collect(X_b),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,fun(bool,bool)),fun(fun(X_b,bool),fun(X_b,bool)),combs(X_b,bool,bool),hAPP(fun(X_b,bool),fun(X_b,fun(bool,bool)),hAPP(fun(bool,fun(bool,bool)),fun(fun(X_b,bool),fun(X_b,fun(bool,bool))),combb(bool,fun(bool,bool),X_b),fdisj),Pa)),Q_1)))) ) ).

fof(help_COMBK_1_1_U,axiom,
    ! [X_b,X_a,P,Q] : hAPP(X_b,X_a,hAPP(X_a,fun(X_b,X_a),combk(X_a,X_b),P),Q) = ti(X_a,P) ).

fof(fact_54_the__sym__eq__trivial,axiom,
    ! [X_b,X_1] : hAPP(fun(X_b,bool),X_b,the(X_b),hAPP(X_b,fun(X_b,bool),fequal(X_b),X_1)) = ti(X_b,X_1) ).

fof(arity_HOL_Obool___Finite__Set_Ofinite,axiom,
    finite_finite(bool) ).

fof(fact_58_the__equality,axiom,
    ! [X_b,Pa,A_4] :
      ( hBOOL(hAPP(X_b,bool,Pa,A_4))
     => ( ! [X_2] :
            ( ti(X_b,A_4) = ti(X_b,X_2)
           <= hBOOL(hAPP(X_b,bool,Pa,X_2)) )
       => hAPP(fun(X_b,bool),X_b,the(X_b),Pa) = ti(X_b,A_4) ) ) ).

fof(help_fFalse_1_1_T,axiom,
    ! [P] :
      ( fTrue = ti(bool,P)
      | fFalse = ti(bool,P) ) ).

fof(fact_91_finite__induct,axiom,
    ! [X_b,Pa,F] :
      ( ( hBOOL(hAPP(fun(X_b,bool),bool,Pa,bot_bot(fun(X_b,bool))))
       => ( ! [X_2,F_2] :
              ( ( ( hBOOL(hAPP(fun(X_b,bool),bool,Pa,F_2))
                 => hBOOL(hAPP(fun(X_b,bool),bool,Pa,hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),X_2),F_2))) )
               <= ~ hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),X_2),F_2)) )
             <= hBOOL(hAPP(fun(X_b,bool),bool,finite_finite_1(X_b),F_2)) )
         => hBOOL(hAPP(fun(X_b,bool),bool,Pa,F)) ) )
     <= hBOOL(hAPP(fun(X_b,bool),bool,finite_finite_1(X_b),F)) ) ).

fof(fact_92_finite_Osimps,axiom,
    ! [X_b,A_4] :
      ( ( ti(fun(X_b,bool),A_4) = bot_bot(fun(X_b,bool))
        | ? [A_2,A_3] :
            ( hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),A_3),A_2) = ti(fun(X_b,bool),A_4)
            & hBOOL(hAPP(fun(X_b,bool),bool,finite_finite_1(X_b),A_2)) ) )
    <=> hBOOL(hAPP(fun(X_b,bool),bool,finite_finite_1(X_b),A_4)) ) ).

fof(tsy_v_G_res,hypothesis,
    ti(fun(hoare_509422987triple(x_a),bool),g) = g ).

fof(fact_38_singleton__iff,axiom,
    ! [X_b,Ba,A_4] :
      ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),Ba),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),A_4),bot_bot(fun(X_b,bool)))))
    <=> ti(X_b,A_4) = ti(X_b,Ba) ) ).

fof(fact_50_com_Osimps_I12_J,axiom,
    ! [Com1_2,Com2_2] : hAPP(com,com,hAPP(com,fun(com,com),semi,Com1_2),Com2_2) != skip ).

fof(fact_40_empty__not__insert,axiom,
    ! [X_b,A_4,A_1] : bot_bot(fun(X_b,bool)) != hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),A_4),A_1) ).

fof(tsy_c_hAPP_arg1,axiom,
    ! [X_a,X_c,B_1_1,B_2] : hAPP(X_a,X_c,B_1_1,B_2) = hAPP(X_a,X_c,ti(fun(X_a,X_c),B_1_1),B_2) ).

fof(tsy_c_fimplies_res,axiom,
    ti(fun(bool,fun(bool,bool)),fimplies) = fimplies ).

fof(fact_60_the1__equality,axiom,
    ! [X_b,A_4,Pa] :
      ( ( hBOOL(hAPP(X_b,bool,Pa,A_4))
       => hAPP(fun(X_b,bool),X_b,the(X_b),Pa) = ti(X_b,A_4) )
     <= ? [X_2] :
          ( hBOOL(hAPP(X_b,bool,Pa,X_2))
          & ! [Y_1] :
              ( hBOOL(hAPP(X_b,bool,Pa,Y_1))
             => ti(X_b,Y_1) = ti(X_b,X_2) ) ) ) ).

fof(help_fNot_1_1_U,axiom,
    ! [P] :
      ( ~ hBOOL(P)
      | ~ hBOOL(hAPP(bool,bool,fNot,P)) ) ).

fof(fact_28_insert__iff,axiom,
    ! [X_b,A_4,Ba,A_1] :
      ( ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),A_4),A_1))
        | ti(X_b,Ba) = ti(X_b,A_4) )
    <=> hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),A_4),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),Ba),A_1))) ) ).

fof(fact_97_finite__ne__induct,axiom,
    ! [X_b,Pa,F] :
      ( ( ti(fun(X_b,bool),F) != bot_bot(fun(X_b,bool))
       => ( ( ! [X_2,F_2] :
                ( ( ( ~ hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),X_2),F_2))
                   => ( hBOOL(hAPP(fun(X_b,bool),bool,Pa,F_2))
                     => hBOOL(hAPP(fun(X_b,bool),bool,Pa,hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),X_2),F_2))) ) )
                 <= ti(fun(X_b,bool),F_2) != bot_bot(fun(X_b,bool)) )
               <= hBOOL(hAPP(fun(X_b,bool),bool,finite_finite_1(X_b),F_2)) )
           => hBOOL(hAPP(fun(X_b,bool),bool,Pa,F)) )
         <= ! [X_2] : hBOOL(hAPP(fun(X_b,bool),bool,Pa,hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),X_2),bot_bot(fun(X_b,bool))))) ) )
     <= hBOOL(hAPP(fun(X_b,bool),bool,finite_finite_1(X_b),F)) ) ).

fof(fact_45_hoare__derivs_OSkip,axiom,
    ! [X_b,Ga,Pa] : hBOOL(hAPP(fun(hoare_509422987triple(X_b),bool),bool,hAPP(fun(hoare_509422987triple(X_b),bool),fun(fun(hoare_509422987triple(X_b),bool),bool),hoare_122391849derivs(X_b),Ga),hAPP(fun(hoare_509422987triple(X_b),bool),fun(hoare_509422987triple(X_b),bool),hAPP(hoare_509422987triple(X_b),fun(fun(hoare_509422987triple(X_b),bool),fun(hoare_509422987triple(X_b),bool)),insert(hoare_509422987triple(X_b)),hAPP(fun(X_b,fun(state,bool)),hoare_509422987triple(X_b),hAPP(com,fun(fun(X_b,fun(state,bool)),hoare_509422987triple(X_b)),hAPP(fun(X_b,fun(state,bool)),fun(com,fun(fun(X_b,fun(state,bool)),hoare_509422987triple(X_b))),hoare_1008221573triple(X_b),Pa),skip),Pa)),bot_bot(fun(hoare_509422987triple(X_b),bool))))) ).

fof(fact_67_empty__fold1SetE,axiom,
    ! [X_b,F_1,X_1] : ~ hBOOL(hAPP(X_b,bool,hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,fun(X_b,X_b)),fun(fun(X_b,bool),fun(X_b,bool)),finite_fold1Set(X_b),F_1),bot_bot(fun(X_b,bool))),X_1)) ).

fof(fact_4_constant,axiom,
    ! [X_b,Ga,Pa,Ca,Q_1,C] :
      ( hBOOL(hAPP(fun(hoare_509422987triple(X_b),bool),bool,hAPP(fun(hoare_509422987triple(X_b),bool),fun(fun(hoare_509422987triple(X_b),bool),bool),hoare_122391849derivs(X_b),Ga),hAPP(fun(hoare_509422987triple(X_b),bool),fun(hoare_509422987triple(X_b),bool),hAPP(hoare_509422987triple(X_b),fun(fun(hoare_509422987triple(X_b),bool),fun(hoare_509422987triple(X_b),bool)),insert(hoare_509422987triple(X_b)),hAPP(fun(X_b,fun(state,bool)),hoare_509422987triple(X_b),hAPP(com,fun(fun(X_b,fun(state,bool)),hoare_509422987triple(X_b)),hAPP(fun(X_b,fun(state,bool)),fun(com,fun(fun(X_b,fun(state,bool)),hoare_509422987triple(X_b))),hoare_1008221573triple(X_b),hAPP(bool,fun(X_b,fun(state,bool)),hAPP(fun(X_b,fun(bool,fun(state,bool))),fun(bool,fun(X_b,fun(state,bool))),combc(X_b,bool,fun(state,bool)),hAPP(fun(X_b,fun(state,fun(bool,bool))),fun(X_b,fun(bool,fun(state,bool))),hAPP(fun(fun(state,fun(bool,bool)),fun(bool,fun(state,bool))),fun(fun(X_b,fun(state,fun(bool,bool))),fun(X_b,fun(bool,fun(state,bool)))),combb(fun(state,fun(bool,bool)),fun(bool,fun(state,bool)),X_b),combc(state,bool,bool)),hAPP(fun(X_b,fun(state,bool)),fun(X_b,fun(state,fun(bool,bool))),hAPP(fun(fun(state,bool),fun(state,fun(bool,bool))),fun(fun(X_b,fun(state,bool)),fun(X_b,fun(state,fun(bool,bool)))),combb(fun(state,bool),fun(state,fun(bool,bool)),X_b),hAPP(fun(bool,fun(bool,bool)),fun(fun(state,bool),fun(state,fun(bool,bool))),combb(bool,fun(bool,bool),state),fconj)),Pa))),C)),Ca),Q_1)),bot_bot(fun(hoare_509422987triple(X_b),bool)))))
     <= ( hBOOL(C)
       => hBOOL(hAPP(fun(hoare_509422987triple(X_b),bool),bool,hAPP(fun(hoare_509422987triple(X_b),bool),fun(fun(hoare_509422987triple(X_b),bool),bool),hoare_122391849derivs(X_b),Ga),hAPP(fun(hoare_509422987triple(X_b),bool),fun(hoare_509422987triple(X_b),bool),hAPP(hoare_509422987triple(X_b),fun(fun(hoare_509422987triple(X_b),bool),fun(hoare_509422987triple(X_b),bool)),insert(hoare_509422987triple(X_b)),hAPP(fun(X_b,fun(state,bool)),hoare_509422987triple(X_b),hAPP(com,fun(fun(X_b,fun(state,bool)),hoare_509422987triple(X_b)),hAPP(fun(X_b,fun(state,bool)),fun(com,fun(fun(X_b,fun(state,bool)),hoare_509422987triple(X_b))),hoare_1008221573triple(X_b),Pa),Ca),Q_1)),bot_bot(fun(hoare_509422987triple(X_b),bool))))) ) ) ).

fof(help_fimplies_3_1_U,axiom,
    ! [P,Q] :
      ( ~ hBOOL(hAPP(bool,bool,hAPP(bool,fun(bool,bool),fimplies,P),Q))
      | hBOOL(Q)
      | ~ hBOOL(P) ) ).

fof(fact_2_cut,axiom,
    ! [X_b,Ga,G_1,Ts] :
      ( ( hBOOL(hAPP(fun(hoare_509422987triple(X_b),bool),bool,hAPP(fun(hoare_509422987triple(X_b),bool),fun(fun(hoare_509422987triple(X_b),bool),bool),hoare_122391849derivs(X_b),Ga),Ts))
       <= hBOOL(hAPP(fun(hoare_509422987triple(X_b),bool),bool,hAPP(fun(hoare_509422987triple(X_b),bool),fun(fun(hoare_509422987triple(X_b),bool),bool),hoare_122391849derivs(X_b),Ga),G_1)) )
     <= hBOOL(hAPP(fun(hoare_509422987triple(X_b),bool),bool,hAPP(fun(hoare_509422987triple(X_b),bool),fun(fun(hoare_509422987triple(X_b),bool),bool),hoare_122391849derivs(X_b),G_1),Ts)) ) ).

fof(fact_43_bot__apply,axiom,
    ! [X_c,X_b] :
      ( bot(X_b)
     => ! [X_1] : hAPP(X_c,X_b,bot_bot(fun(X_c,X_b)),X_1) = bot_bot(X_b) ) ).

fof(fact_47_triple_Oexhaust,axiom,
    ! [X_b,Y_2] :
      ~ ! [Fun1,Com,Fun2] : hAPP(fun(X_b,fun(state,bool)),hoare_509422987triple(X_b),hAPP(com,fun(fun(X_b,fun(state,bool)),hoare_509422987triple(X_b)),hAPP(fun(X_b,fun(state,bool)),fun(com,fun(fun(X_b,fun(state,bool)),hoare_509422987triple(X_b))),hoare_1008221573triple(X_b),Fun1),Com),Fun2) != Y_2 ).

fof(tsy_c_Set_Oinsert_res,axiom,
    ! [X_b] : insert(X_b) = ti(fun(X_b,fun(fun(X_b,bool),fun(X_b,bool))),insert(X_b)) ).

fof(fact_26_insert__ident,axiom,
    ! [X_b,B_1,X_1,A_1] :
      ( ( ( ti(fun(X_b,bool),B_1) = ti(fun(X_b,bool),A_1)
        <=> hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),X_1),B_1) = hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),X_1),A_1) )
       <= ~ hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),X_1),B_1)) )
     <= ~ hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),X_1),A_1)) ) ).

fof(tsy_c_Com_Ocom_OSKIP_res,axiom,
    ti(com,skip) = skip ).

fof(fact_6_conseq2,axiom,
    ! [X_b,Q_1,Ga,Pa,Ca,Q_3] :
      ( ( hBOOL(hAPP(fun(hoare_509422987triple(X_b),bool),bool,hAPP(fun(hoare_509422987triple(X_b),bool),fun(fun(hoare_509422987triple(X_b),bool),bool),hoare_122391849derivs(X_b),Ga),hAPP(fun(hoare_509422987triple(X_b),bool),fun(hoare_509422987triple(X_b),bool),hAPP(hoare_509422987triple(X_b),fun(fun(hoare_509422987triple(X_b),bool),fun(hoare_509422987triple(X_b),bool)),insert(hoare_509422987triple(X_b)),hAPP(fun(X_b,fun(state,bool)),hoare_509422987triple(X_b),hAPP(com,fun(fun(X_b,fun(state,bool)),hoare_509422987triple(X_b)),hAPP(fun(X_b,fun(state,bool)),fun(com,fun(fun(X_b,fun(state,bool)),hoare_509422987triple(X_b))),hoare_1008221573triple(X_b),Pa),Ca),Q_1)),bot_bot(fun(hoare_509422987triple(X_b),bool)))))
       <= ! [Z_1,S] :
            ( hBOOL(hAPP(state,bool,hAPP(X_b,fun(state,bool),Q_3,Z_1),S))
           => hBOOL(hAPP(state,bool,hAPP(X_b,fun(state,bool),Q_1,Z_1),S)) ) )
     <= hBOOL(hAPP(fun(hoare_509422987triple(X_b),bool),bool,hAPP(fun(hoare_509422987triple(X_b),bool),fun(fun(hoare_509422987triple(X_b),bool),bool),hoare_122391849derivs(X_b),Ga),hAPP(fun(hoare_509422987triple(X_b),bool),fun(hoare_509422987triple(X_b),bool),hAPP(hoare_509422987triple(X_b),fun(fun(hoare_509422987triple(X_b),bool),fun(hoare_509422987triple(X_b),bool)),insert(hoare_509422987triple(X_b)),hAPP(fun(X_b,fun(state,bool)),hoare_509422987triple(X_b),hAPP(com,fun(fun(X_b,fun(state,bool)),hoare_509422987triple(X_b)),hAPP(fun(X_b,fun(state,bool)),fun(com,fun(fun(X_b,fun(state,bool)),hoare_509422987triple(X_b))),hoare_1008221573triple(X_b),Pa),Ca),Q_3)),bot_bot(fun(hoare_509422987triple(X_b),bool))))) ) ).

fof(tsy_c_COMBC_res,axiom,
    ! [X_a,X_b,X_c] : ti(fun(fun(X_a,fun(X_b,X_c)),fun(X_b,fun(X_a,X_c))),combc(X_a,X_b,X_c)) = combc(X_a,X_b,X_c) ).

fof(fact_32_insert__compr,axiom,
    ! [X_b,A_4,B_1] : hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),A_4),B_1) = hAPP(fun(X_b,bool),fun(X_b,bool),collect(X_b),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,fun(bool,bool)),fun(fun(X_b,bool),fun(X_b,bool)),combs(X_b,bool,bool),hAPP(fun(X_b,bool),fun(X_b,fun(bool,bool)),hAPP(fun(bool,fun(bool,bool)),fun(fun(X_b,bool),fun(X_b,fun(bool,bool))),combb(bool,fun(bool,bool),X_b),fdisj),hAPP(X_b,fun(X_b,bool),hAPP(fun(X_b,fun(X_b,bool)),fun(X_b,fun(X_b,bool)),combc(X_b,X_b,bool),fequal(X_b)),A_4))),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,fun(fun(X_b,bool),bool)),fun(fun(X_b,bool),fun(X_b,bool)),combc(X_b,fun(X_b,bool),bool),member(X_b)),B_1))) ).

fof(help_COMBS_1_1_U,axiom,
    ! [X_a,X_c,X_b,P,Q,R] : hAPP(X_b,X_c,hAPP(X_a,fun(X_b,X_c),P,R),hAPP(X_a,X_b,Q,R)) = hAPP(X_a,X_c,hAPP(fun(X_a,X_b),fun(X_a,X_c),hAPP(fun(X_a,fun(X_b,X_c)),fun(fun(X_a,X_b),fun(X_a,X_c)),combs(X_a,X_b,X_c),P),Q),R) ).

fof(fact_59_theI,axiom,
    ! [X_b,Pa,A_4] :
      ( hBOOL(hAPP(X_b,bool,Pa,A_4))
     => ( ! [X_2] :
            ( hBOOL(hAPP(X_b,bool,Pa,X_2))
           => ti(X_b,X_2) = ti(X_b,A_4) )
       => hBOOL(hAPP(X_b,bool,Pa,hAPP(fun(X_b,bool),X_b,the(X_b),Pa))) ) ) ).

fof(fact_99_folding__one__idem_Oin__idem,axiom,
    ! [X_b,X_1,A_1,F_1,F] :
      ( hBOOL(hAPP(fun(fun(X_b,bool),X_b),bool,hAPP(fun(X_b,fun(X_b,X_b)),fun(fun(fun(X_b,bool),X_b),bool),finite2073411215e_idem(X_b),F_1),F))
     => ( ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),X_1),A_1))
         => hAPP(fun(X_b,bool),X_b,F,A_1) = hAPP(X_b,X_b,hAPP(X_b,fun(X_b,X_b),F_1,X_1),hAPP(fun(X_b,bool),X_b,F,A_1)) )
       <= hBOOL(hAPP(fun(X_b,bool),bool,finite_finite_1(X_b),A_1)) ) ) ).

fof(fact_14_Collect__conv__if2,axiom,
    ! [X_b,Pa,A_4] :
      ( ( hBOOL(hAPP(X_b,bool,Pa,A_4))
       => hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),A_4),bot_bot(fun(X_b,bool))) = hAPP(fun(X_b,bool),fun(X_b,bool),collect(X_b),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,fun(bool,bool)),fun(fun(X_b,bool),fun(X_b,bool)),combs(X_b,bool,bool),hAPP(fun(X_b,bool),fun(X_b,fun(bool,bool)),hAPP(fun(bool,fun(bool,bool)),fun(fun(X_b,bool),fun(X_b,fun(bool,bool))),combb(bool,fun(bool,bool),X_b),fconj),hAPP(X_b,fun(X_b,bool),fequal(X_b),A_4))),Pa)) )
      & ( bot_bot(fun(X_b,bool)) = hAPP(fun(X_b,bool),fun(X_b,bool),collect(X_b),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,fun(bool,bool)),fun(fun(X_b,bool),fun(X_b,bool)),combs(X_b,bool,bool),hAPP(fun(X_b,bool),fun(X_b,fun(bool,bool)),hAPP(fun(bool,fun(bool,bool)),fun(fun(X_b,bool),fun(X_b,fun(bool,bool))),combb(bool,fun(bool,bool),X_b),fconj),hAPP(X_b,fun(X_b,bool),fequal(X_b),A_4))),Pa))
       <= ~ hBOOL(hAPP(X_b,bool,Pa,A_4)) ) ) ).

fof(fact_11_emptyE,axiom,
    ! [X_b,A_4] : ~ hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),A_4),bot_bot(fun(X_b,bool)))) ).

fof(tsy_c_COMBB_res,axiom,
    ! [X_b,X_c,X_a] : ti(fun(fun(X_b,X_c),fun(fun(X_a,X_b),fun(X_a,X_c))),combb(X_b,X_c,X_a)) = combb(X_b,X_c,X_a) ).

fof(fact_42_triple_Osimps_I2_J,axiom,
    ! [X_c,X_b,F1,Fun1_1,Com_1,Fun2_1] : hAPP(hoare_509422987triple(X_c),X_b,hAPP(fun(fun(X_c,fun(state,bool)),fun(com,fun(fun(X_c,fun(state,bool)),X_b))),fun(hoare_509422987triple(X_c),X_b),hoare_885240885e_case(X_c,X_b),F1),hAPP(fun(X_c,fun(state,bool)),hoare_509422987triple(X_c),hAPP(com,fun(fun(X_c,fun(state,bool)),hoare_509422987triple(X_c)),hAPP(fun(X_c,fun(state,bool)),fun(com,fun(fun(X_c,fun(state,bool)),hoare_509422987triple(X_c))),hoare_1008221573triple(X_c),Fun1_1),Com_1),Fun2_1)) = hAPP(fun(X_c,fun(state,bool)),X_b,hAPP(com,fun(fun(X_c,fun(state,bool)),X_b),hAPP(fun(X_c,fun(state,bool)),fun(com,fun(fun(X_c,fun(state,bool)),X_b)),F1,Fun1_1),Com_1),Fun2_1) ).

fof(fact_34_insert__compr__raw,axiom,
    ! [X_b,X_2,Xa] : hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),X_2),Xa) = hAPP(fun(X_b,bool),fun(X_b,bool),collect(X_b),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,fun(bool,bool)),fun(fun(X_b,bool),fun(X_b,bool)),combs(X_b,bool,bool),hAPP(fun(X_b,bool),fun(X_b,fun(bool,bool)),hAPP(fun(bool,fun(bool,bool)),fun(fun(X_b,bool),fun(X_b,fun(bool,bool))),combb(bool,fun(bool,bool),X_b),fdisj),hAPP(X_b,fun(X_b,bool),hAPP(fun(X_b,fun(X_b,bool)),fun(X_b,fun(X_b,bool)),combc(X_b,X_b,bool),fequal(X_b)),X_2))),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,fun(fun(X_b,bool),bool)),fun(fun(X_b,bool),fun(X_b,bool)),combc(X_b,fun(X_b,bool),bool),member(X_b)),Xa))) ).

fof(fact_41_the__elem__eq,axiom,
    ! [X_b,X_1] : ti(X_b,X_1) = hAPP(fun(X_b,bool),X_b,the_elem(X_b),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),X_1),bot_bot(fun(X_b,bool)))) ).

fof(fact_65_folding__one_Osingleton,axiom,
    ! [X_b,X_1,F_1,F] :
      ( ti(X_b,X_1) = hAPP(fun(X_b,bool),X_b,F,hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),X_1),bot_bot(fun(X_b,bool))))
     <= hBOOL(hAPP(fun(fun(X_b,bool),X_b),bool,hAPP(fun(X_b,fun(X_b,X_b)),fun(fun(fun(X_b,bool),X_b),bool),finite_folding_one(X_b),F_1),F)) ) ).

fof(arity_HOL_Obool___Orderings_Obot,axiom,
    bot(bool) ).

fof(fact_70_folding__one_Oinsert,axiom,
    ! [X_b,X_1,A_1,F_1,F] :
      ( hBOOL(hAPP(fun(fun(X_b,bool),X_b),bool,hAPP(fun(X_b,fun(X_b,X_b)),fun(fun(fun(X_b,bool),X_b),bool),finite_folding_one(X_b),F_1),F))
     => ( hBOOL(hAPP(fun(X_b,bool),bool,finite_finite_1(X_b),A_1))
       => ( ( ti(fun(X_b,bool),A_1) != bot_bot(fun(X_b,bool))
           => hAPP(X_b,X_b,hAPP(X_b,fun(X_b,X_b),F_1,X_1),hAPP(fun(X_b,bool),X_b,F,A_1)) = hAPP(fun(X_b,bool),X_b,F,hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),X_1),A_1)) )
         <= ~ hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),X_1),A_1)) ) ) ) ).

fof(fact_29_insert__commute,axiom,
    ! [X_b,X_1,Y_2,A_1] : hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),Y_2),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),X_1),A_1)) = hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),X_1),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),Y_2),A_1)) ).

fof(tsy_c_HOL_Oundefined_res,axiom,
    ! [X_a] : undefined(X_a) = ti(X_a,undefined(X_a)) ).

fof(fact_5_escape,axiom,
    ! [X_b,Ga,Ca,Q_1,Pa] :
      ( hBOOL(hAPP(fun(hoare_509422987triple(X_b),bool),bool,hAPP(fun(hoare_509422987triple(X_b),bool),fun(fun(hoare_509422987triple(X_b),bool),bool),hoare_122391849derivs(X_b),Ga),hAPP(fun(hoare_509422987triple(X_b),bool),fun(hoare_509422987triple(X_b),bool),hAPP(hoare_509422987triple(X_b),fun(fun(hoare_509422987triple(X_b),bool),fun(hoare_509422987triple(X_b),bool)),insert(hoare_509422987triple(X_b)),hAPP(fun(X_b,fun(state,bool)),hoare_509422987triple(X_b),hAPP(com,fun(fun(X_b,fun(state,bool)),hoare_509422987triple(X_b)),hAPP(fun(X_b,fun(state,bool)),fun(com,fun(fun(X_b,fun(state,bool)),hoare_509422987triple(X_b))),hoare_1008221573triple(X_b),Pa),Ca),Q_1)),bot_bot(fun(hoare_509422987triple(X_b),bool)))))
     <= ! [Z_1,S] :
          ( hBOOL(hAPP(fun(hoare_509422987triple(X_b),bool),bool,hAPP(fun(hoare_509422987triple(X_b),bool),fun(fun(hoare_509422987triple(X_b),bool),bool),hoare_122391849derivs(X_b),Ga),hAPP(fun(hoare_509422987triple(X_b),bool),fun(hoare_509422987triple(X_b),bool),hAPP(hoare_509422987triple(X_b),fun(fun(hoare_509422987triple(X_b),bool),fun(hoare_509422987triple(X_b),bool)),insert(hoare_509422987triple(X_b)),hAPP(fun(X_b,fun(state,bool)),hoare_509422987triple(X_b),hAPP(com,fun(fun(X_b,fun(state,bool)),hoare_509422987triple(X_b)),hAPP(fun(X_b,fun(state,bool)),fun(com,fun(fun(X_b,fun(state,bool)),hoare_509422987triple(X_b))),hoare_1008221573triple(X_b),hAPP(fun(state,bool),fun(X_b,fun(state,bool)),combk(fun(state,bool),X_b),hAPP(state,fun(state,bool),hAPP(fun(state,fun(state,bool)),fun(state,fun(state,bool)),combc(state,state,bool),fequal(state)),S))),Ca),hAPP(fun(state,bool),fun(X_b,fun(state,bool)),combk(fun(state,bool),X_b),hAPP(X_b,fun(state,bool),Q_1,Z_1)))),bot_bot(fun(hoare_509422987triple(X_b),bool)))))
         <= hBOOL(hAPP(state,bool,hAPP(X_b,fun(state,bool),Pa,Z_1),S)) ) ) ).

fof(tsy_c_Finite__Set_Ofold__graph_res,axiom,
    ! [X_b,X_c] : ti(fun(fun(X_b,fun(X_c,X_c)),fun(X_c,fun(fun(X_b,bool),fun(X_c,bool)))),finite_fold_graph(X_b,X_c)) = finite_fold_graph(X_b,X_c) ).

fof(fact_98_folding__one__idem_Oidem,axiom,
    ! [X_b,X_1,F_1,F] :
      ( hBOOL(hAPP(fun(fun(X_b,bool),X_b),bool,hAPP(fun(X_b,fun(X_b,X_b)),fun(fun(fun(X_b,bool),X_b),bool),finite2073411215e_idem(X_b),F_1),F))
     => ti(X_b,X_1) = hAPP(X_b,X_b,hAPP(X_b,fun(X_b,X_b),F_1,X_1),X_1) ) ).

fof(fact_96_folding__one__idem_Oinsert__idem,axiom,
    ! [X_b,X_1,A_1,F_1,F] :
      ( ( hBOOL(hAPP(fun(X_b,bool),bool,finite_finite_1(X_b),A_1))
       => ( ti(fun(X_b,bool),A_1) != bot_bot(fun(X_b,bool))
         => hAPP(X_b,X_b,hAPP(X_b,fun(X_b,X_b),F_1,X_1),hAPP(fun(X_b,bool),X_b,F,A_1)) = hAPP(fun(X_b,bool),X_b,F,hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),X_1),A_1)) ) )
     <= hBOOL(hAPP(fun(fun(X_b,bool),X_b),bool,hAPP(fun(X_b,fun(X_b,X_b)),fun(fun(fun(X_b,bool),X_b),bool),finite2073411215e_idem(X_b),F_1),F)) ) ).

fof(fact_95_fold__graph_Osimps,axiom,
    ! [X_c,X_b,F_1,Z,A1,A2] :
      ( ( ( ti(X_c,A2) = ti(X_c,Z)
          & bot_bot(fun(X_b,bool)) = ti(fun(X_b,bool),A1) )
        | ? [X_2,A_2,Y_1] :
            ( ~ hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),X_2),A_2))
            & hBOOL(hAPP(X_c,bool,hAPP(fun(X_b,bool),fun(X_c,bool),hAPP(X_c,fun(fun(X_b,bool),fun(X_c,bool)),hAPP(fun(X_b,fun(X_c,X_c)),fun(X_c,fun(fun(X_b,bool),fun(X_c,bool))),finite_fold_graph(X_b,X_c),F_1),Z),A_2),Y_1))
            & hAPP(X_c,X_c,hAPP(X_b,fun(X_c,X_c),F_1,X_2),Y_1) = ti(X_c,A2)
            & hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),X_2),A_2) = ti(fun(X_b,bool),A1) ) )
    <=> hBOOL(hAPP(X_c,bool,hAPP(fun(X_b,bool),fun(X_c,bool),hAPP(X_c,fun(fun(X_b,bool),fun(X_c,bool)),hAPP(fun(X_b,fun(X_c,X_c)),fun(X_c,fun(fun(X_b,bool),fun(X_c,bool))),finite_fold_graph(X_b,X_c),F_1),Z),A1),A2)) ) ).

fof(help_fdisj_1_1_U,axiom,
    ! [Q,P] :
      ( ~ hBOOL(P)
      | hBOOL(hAPP(bool,bool,hAPP(bool,fun(bool,bool),fdisj,P),Q)) ) ).

fof(tsy_c_Finite__Set_Ofolding__one__idem_res,axiom,
    ! [X_b] : finite2073411215e_idem(X_b) = ti(fun(fun(X_b,fun(X_b,X_b)),fun(fun(fun(X_b,bool),X_b),bool)),finite2073411215e_idem(X_b)) ).

fof(fact_61_theI_H,axiom,
    ! [X_b,Pa] :
      ( hBOOL(hAPP(X_b,bool,Pa,hAPP(fun(X_b,bool),X_b,the(X_b),Pa)))
     <= ? [X_2] :
          ( hBOOL(hAPP(X_b,bool,Pa,X_2))
          & ! [Y_1] :
              ( hBOOL(hAPP(X_b,bool,Pa,Y_1))
             => ti(X_b,Y_1) = ti(X_b,X_2) ) ) ) ).

fof(fact_33_insertI1,axiom,
    ! [X_b,A_4,B_1] : hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),A_4),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),A_4),B_1))) ).

fof(fact_88_folding__one_Oclosed,axiom,
    ! [X_b,A_1,F_1,F] :
      ( hBOOL(hAPP(fun(fun(X_b,bool),X_b),bool,hAPP(fun(X_b,fun(X_b,X_b)),fun(fun(fun(X_b,bool),X_b),bool),finite_folding_one(X_b),F_1),F))
     => ( ( ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),hAPP(fun(X_b,bool),X_b,F,A_1)),A_1))
           <= ! [X_2,Y_1] : hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),hAPP(X_b,X_b,hAPP(X_b,fun(X_b,X_b),F_1,X_2),Y_1)),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),X_2),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),Y_1),bot_bot(fun(X_b,bool)))))) )
         <= bot_bot(fun(X_b,bool)) != ti(fun(X_b,bool),A_1) )
       <= hBOOL(hAPP(fun(X_b,bool),bool,finite_finite_1(X_b),A_1)) ) ) ).

fof(fact_10_insertCI,axiom,
    ! [X_b,Ba,A_4,B_1] :
      ( ( ~ hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),A_4),B_1))
       => ti(X_b,Ba) = ti(X_b,A_4) )
     => hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),A_4),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),Ba),B_1))) ) ).

fof(fact_20_empty__Collect__eq,axiom,
    ! [X_b,Pa] :
      ( bot_bot(fun(X_b,bool)) = hAPP(fun(X_b,bool),fun(X_b,bool),collect(X_b),Pa)
    <=> ! [X_2] : ~ hBOOL(hAPP(X_b,bool,Pa,X_2)) ) ).

fof(fact_7_conseq1,axiom,
    ! [X_b,Pa,Ga,P_2,Ca,Q_1] :
      ( hBOOL(hAPP(fun(hoare_509422987triple(X_b),bool),bool,hAPP(fun(hoare_509422987triple(X_b),bool),fun(fun(hoare_509422987triple(X_b),bool),bool),hoare_122391849derivs(X_b),Ga),hAPP(fun(hoare_509422987triple(X_b),bool),fun(hoare_509422987triple(X_b),bool),hAPP(hoare_509422987triple(X_b),fun(fun(hoare_509422987triple(X_b),bool),fun(hoare_509422987triple(X_b),bool)),insert(hoare_509422987triple(X_b)),hAPP(fun(X_b,fun(state,bool)),hoare_509422987triple(X_b),hAPP(com,fun(fun(X_b,fun(state,bool)),hoare_509422987triple(X_b)),hAPP(fun(X_b,fun(state,bool)),fun(com,fun(fun(X_b,fun(state,bool)),hoare_509422987triple(X_b))),hoare_1008221573triple(X_b),P_2),Ca),Q_1)),bot_bot(fun(hoare_509422987triple(X_b),bool)))))
     => ( hBOOL(hAPP(fun(hoare_509422987triple(X_b),bool),bool,hAPP(fun(hoare_509422987triple(X_b),bool),fun(fun(hoare_509422987triple(X_b),bool),bool),hoare_122391849derivs(X_b),Ga),hAPP(fun(hoare_509422987triple(X_b),bool),fun(hoare_509422987triple(X_b),bool),hAPP(hoare_509422987triple(X_b),fun(fun(hoare_509422987triple(X_b),bool),fun(hoare_509422987triple(X_b),bool)),insert(hoare_509422987triple(X_b)),hAPP(fun(X_b,fun(state,bool)),hoare_509422987triple(X_b),hAPP(com,fun(fun(X_b,fun(state,bool)),hoare_509422987triple(X_b)),hAPP(fun(X_b,fun(state,bool)),fun(com,fun(fun(X_b,fun(state,bool)),hoare_509422987triple(X_b))),hoare_1008221573triple(X_b),Pa),Ca),Q_1)),bot_bot(fun(hoare_509422987triple(X_b),bool)))))
       <= ! [Z_1,S] :
            ( hBOOL(hAPP(state,bool,hAPP(X_b,fun(state,bool),P_2,Z_1),S))
           <= hBOOL(hAPP(state,bool,hAPP(X_b,fun(state,bool),Pa,Z_1),S)) ) ) ) ).

fof(help_fdisj_2_1_U,axiom,
    ! [P,Q] :
      ( hBOOL(hAPP(bool,bool,hAPP(bool,fun(bool,bool),fdisj,P),Q))
      | ~ hBOOL(Q) ) ).

fof(fact_27_insert__code,axiom,
    ! [X_b,Y_2,A_1,X_1] :
      ( ( ti(X_b,Y_2) = ti(X_b,X_1)
        | hBOOL(hAPP(X_b,bool,A_1,X_1)) )
    <=> hBOOL(hAPP(X_b,bool,hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),Y_2),A_1),X_1)) ) ).

fof(fact_55_the__eq__trivial,axiom,
    ! [X_b,A_4] : ti(X_b,A_4) = hAPP(fun(X_b,bool),X_b,the(X_b),hAPP(X_b,fun(X_b,bool),hAPP(fun(X_b,fun(X_b,bool)),fun(X_b,fun(X_b,bool)),combc(X_b,X_b,bool),fequal(X_b)),A_4)) ).

fof(fact_12_singleton__conv2,axiom,
    ! [X_b,A_4] : hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),A_4),bot_bot(fun(X_b,bool))) = hAPP(fun(X_b,bool),fun(X_b,bool),collect(X_b),hAPP(X_b,fun(X_b,bool),fequal(X_b),A_4)) ).

fof(arity_fun___Orderings_Obot,axiom,
    ! [T_2,T_1] :
      ( bot(T_1)
     => bot(fun(T_2,T_1)) ) ).

fof(fact_69_fold1Set_Ointros,axiom,
    ! [X_b,F_1,A_4,A_1,X_1] :
      ( ( hBOOL(hAPP(X_b,bool,hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,fun(X_b,X_b)),fun(fun(X_b,bool),fun(X_b,bool)),finite_fold1Set(X_b),F_1),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),A_4),A_1)),X_1))
       <= ~ hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),A_4),A_1)) )
     <= hBOOL(hAPP(X_b,bool,hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),hAPP(fun(X_b,fun(X_b,X_b)),fun(X_b,fun(fun(X_b,bool),fun(X_b,bool))),finite_fold_graph(X_b,X_b),F_1),A_4),A_1),X_1)) ) ).

fof(fact_46_Comp,axiom,
    ! [X_b,D,R_1,Ga,Pa,Ca,Q_1] :
      ( ( hBOOL(hAPP(fun(hoare_509422987triple(X_b),bool),bool,hAPP(fun(hoare_509422987triple(X_b),bool),fun(fun(hoare_509422987triple(X_b),bool),bool),hoare_122391849derivs(X_b),Ga),hAPP(fun(hoare_509422987triple(X_b),bool),fun(hoare_509422987triple(X_b),bool),hAPP(hoare_509422987triple(X_b),fun(fun(hoare_509422987triple(X_b),bool),fun(hoare_509422987triple(X_b),bool)),insert(hoare_509422987triple(X_b)),hAPP(fun(X_b,fun(state,bool)),hoare_509422987triple(X_b),hAPP(com,fun(fun(X_b,fun(state,bool)),hoare_509422987triple(X_b)),hAPP(fun(X_b,fun(state,bool)),fun(com,fun(fun(X_b,fun(state,bool)),hoare_509422987triple(X_b))),hoare_1008221573triple(X_b),Pa),hAPP(com,com,hAPP(com,fun(com,com),semi,Ca),D)),R_1)),bot_bot(fun(hoare_509422987triple(X_b),bool)))))
       <= hBOOL(hAPP(fun(hoare_509422987triple(X_b),bool),bool,hAPP(fun(hoare_509422987triple(X_b),bool),fun(fun(hoare_509422987triple(X_b),bool),bool),hoare_122391849derivs(X_b),Ga),hAPP(fun(hoare_509422987triple(X_b),bool),fun(hoare_509422987triple(X_b),bool),hAPP(hoare_509422987triple(X_b),fun(fun(hoare_509422987triple(X_b),bool),fun(hoare_509422987triple(X_b),bool)),insert(hoare_509422987triple(X_b)),hAPP(fun(X_b,fun(state,bool)),hoare_509422987triple(X_b),hAPP(com,fun(fun(X_b,fun(state,bool)),hoare_509422987triple(X_b)),hAPP(fun(X_b,fun(state,bool)),fun(com,fun(fun(X_b,fun(state,bool)),hoare_509422987triple(X_b))),hoare_1008221573triple(X_b),Q_1),D),R_1)),bot_bot(fun(hoare_509422987triple(X_b),bool))))) )
     <= hBOOL(hAPP(fun(hoare_509422987triple(X_b),bool),bool,hAPP(fun(hoare_509422987triple(X_b),bool),fun(fun(hoare_509422987triple(X_b),bool),bool),hoare_122391849derivs(X_b),Ga),hAPP(fun(hoare_509422987triple(X_b),bool),fun(hoare_509422987triple(X_b),bool),hAPP(hoare_509422987triple(X_b),fun(fun(hoare_509422987triple(X_b),bool),fun(hoare_509422987triple(X_b),bool)),insert(hoare_509422987triple(X_b)),hAPP(fun(X_b,fun(state,bool)),hoare_509422987triple(X_b),hAPP(com,fun(fun(X_b,fun(state,bool)),hoare_509422987triple(X_b)),hAPP(fun(X_b,fun(state,bool)),fun(com,fun(fun(X_b,fun(state,bool)),hoare_509422987triple(X_b))),hoare_1008221573triple(X_b),Pa),Ca),Q_1)),bot_bot(fun(hoare_509422987triple(X_b),bool))))) ) ).

fof(fact_86_fold1__singleton__def,axiom,
    ! [X_b,A_4,G,F_1] :
      ( hAPP(fun(X_b,bool),X_b,G,hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),A_4),bot_bot(fun(X_b,bool)))) = ti(X_b,A_4)
     <= G = hAPP(fun(X_b,fun(X_b,X_b)),fun(fun(X_b,bool),X_b),finite_fold1(X_b),F_1) ) ).

fof(fact_13_singleton__conv,axiom,
    ! [X_b,A_4] : hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),A_4),bot_bot(fun(X_b,bool))) = hAPP(fun(X_b,bool),fun(X_b,bool),collect(X_b),hAPP(X_b,fun(X_b,bool),hAPP(fun(X_b,fun(X_b,bool)),fun(X_b,fun(X_b,bool)),combc(X_b,X_b,bool),fequal(X_b)),A_4)) ).

fof(help_fconj_1_1_U,axiom,
    ! [Q,P] :
      ( ~ hBOOL(Q)
      | hBOOL(hAPP(bool,bool,hAPP(bool,fun(bool,bool),fconj,P),Q))
      | ~ hBOOL(P) ) ).

fof(fact_64_fold1Set__sing,axiom,
    ! [X_b,F_1,A_4,Ba] :
      ( hBOOL(hAPP(X_b,bool,hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,fun(X_b,X_b)),fun(fun(X_b,bool),fun(X_b,bool)),finite_fold1Set(X_b),F_1),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),A_4),bot_bot(fun(X_b,bool)))),Ba))
    <=> ti(X_b,A_4) = ti(X_b,Ba) ) ).

fof(fact_66_bot__empty__eq,axiom,
    ! [X_b,X_2] :
      ( hBOOL(hAPP(X_b,bool,bot_bot(fun(X_b,bool)),X_2))
    <=> hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),X_2),bot_bot(fun(X_b,bool)))) ) ).

fof(fact_93_finite__imp__fold__graph,axiom,
    ! [X_c,X_b,F_1,Z,A_1] :
      ( ? [X1] : hBOOL(hAPP(X_c,bool,hAPP(fun(X_b,bool),fun(X_c,bool),hAPP(X_c,fun(fun(X_b,bool),fun(X_c,bool)),hAPP(fun(X_b,fun(X_c,X_c)),fun(X_c,fun(fun(X_b,bool),fun(X_c,bool))),finite_fold_graph(X_b,X_c),F_1),Z),A_1),X1))
     <= hBOOL(hAPP(fun(X_b,bool),bool,finite_finite_1(X_b),A_1)) ) ).

fof(fact_76_mem__def,axiom,
    ! [X_b,X_1,A_1] :
      ( hBOOL(hAPP(X_b,bool,A_1,X_1))
    <=> hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),X_1),A_1)) ) ).

fof(fact_24_insert__absorb,axiom,
    ! [X_b,A_4,A_1] :
      ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),A_4),A_1))
     => ti(fun(X_b,bool),A_1) = hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),A_4),A_1) ) ).

fof(tsy_c_Finite__Set_Ofinite_res,axiom,
    ! [X_b] : finite_finite_1(X_b) = ti(fun(fun(X_b,bool),bool),finite_finite_1(X_b)) ).

fof(help_COMBC_1_1_U,axiom,
    ! [X_a,X_c,X_b,P,Q,R] : hAPP(X_b,X_c,hAPP(X_a,fun(X_b,X_c),P,R),Q) = hAPP(X_a,X_c,hAPP(X_b,fun(X_a,X_c),hAPP(fun(X_a,fun(X_b,X_c)),fun(X_b,fun(X_a,X_c)),combc(X_a,X_b,X_c),P),Q),R) ).

fof(fact_73_finite_OemptyI,axiom,
    ! [X_b] : hBOOL(hAPP(fun(X_b,bool),bool,finite_finite_1(X_b),bot_bot(fun(X_b,bool)))) ).

fof(fact_25_insertI2,axiom,
    ! [X_b,Ba,A_4,B_1] :
      ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),A_4),B_1))
     => hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),A_4),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),Ba),B_1))) ) ).

fof(tsy_c_Finite__Set_Ofolding__one_res,axiom,
    ! [X_b] : ti(fun(fun(X_b,fun(X_b,X_b)),fun(fun(fun(X_b,bool),X_b),bool)),finite_folding_one(X_b)) = finite_folding_one(X_b) ).

fof(fact_51_the__elem__def,axiom,
    ! [X_b,X_3] : hAPP(fun(X_b,bool),X_b,the_elem(X_b),X_3) = hAPP(fun(X_b,bool),X_b,the(X_b),hAPP(fun(X_b,fun(X_b,bool)),fun(X_b,bool),hAPP(fun(fun(X_b,bool),bool),fun(fun(X_b,fun(X_b,bool)),fun(X_b,bool)),combb(fun(X_b,bool),bool,X_b),hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),fequal(fun(X_b,bool)),X_3)),hAPP(fun(X_b,bool),fun(X_b,fun(X_b,bool)),hAPP(fun(X_b,fun(fun(X_b,bool),fun(X_b,bool))),fun(fun(X_b,bool),fun(X_b,fun(X_b,bool))),combc(X_b,fun(X_b,bool),fun(X_b,bool)),insert(X_b)),bot_bot(fun(X_b,bool))))) ).

fof(tsy_c_Hoare__Mirabelle__pjuwniqynr_Otriple_Otriple__rec_res,axiom,
    ! [X_c,X_b] : hoare_728318379le_rec(X_c,X_b) = ti(fun(fun(fun(X_c,fun(state,bool)),fun(com,fun(fun(X_c,fun(state,bool)),X_b))),fun(hoare_509422987triple(X_c),X_b)),hoare_728318379le_rec(X_c,X_b)) ).

fof(fact_71_fold1__def,axiom,
    ! [X_b,F_1,A_1] : hAPP(fun(X_b,bool),X_b,hAPP(fun(X_b,fun(X_b,X_b)),fun(fun(X_b,bool),X_b),finite_fold1(X_b),F_1),A_1) = hAPP(fun(X_b,bool),X_b,the(X_b),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,fun(X_b,X_b)),fun(fun(X_b,bool),fun(X_b,bool)),finite_fold1Set(X_b),F_1),A_1)) ).

fof(fact_39_insert__not__empty,axiom,
    ! [X_b,A_4,A_1] : bot_bot(fun(X_b,bool)) != hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),A_4),A_1) ).

fof(fact_49_com_Osimps_I13_J,axiom,
    ! [Com1_2,Com2_2] : hAPP(com,com,hAPP(com,fun(com,com),semi,Com1_2),Com2_2) != skip ).

fof(tsy_c_Orderings_Obot__class_Obot_res,axiom,
    ! [X_b] :
      ( bot(X_b)
     => ti(X_b,bot_bot(X_b)) = bot_bot(X_b) ) ).

fof(tsy_c_Finite__Set_Ofold1_res,axiom,
    ! [X_b] : finite_fold1(X_b) = ti(fun(fun(X_b,fun(X_b,X_b)),fun(fun(X_b,bool),X_b)),finite_fold1(X_b)) ).

fof(tsy_c_Hoare__Mirabelle__pjuwniqynr_Otriple_Otriple__case_res,axiom,
    ! [X_c,X_b] : ti(fun(fun(fun(X_c,fun(state,bool)),fun(com,fun(fun(X_c,fun(state,bool)),X_b))),fun(hoare_509422987triple(X_c),X_b)),hoare_885240885e_case(X_c,X_b)) = hoare_885240885e_case(X_c,X_b) ).

fof(fact_17_equals0D,axiom,
    ! [X_b,A_4,A_1] :
      ( ~ hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),A_4),A_1))
     <= ti(fun(X_b,bool),A_1) = bot_bot(fun(X_b,bool)) ) ).

fof(tsy_c_Set_Othe__elem_res,axiom,
    ! [X_b] : the_elem(X_b) = ti(fun(fun(X_b,bool),X_b),the_elem(X_b)) ).

fof(help_fconj_2_1_U,axiom,
    ! [P,Q] :
      ( ~ hBOOL(hAPP(bool,bool,hAPP(bool,fun(bool,bool),fconj,P),Q))
      | hBOOL(P) ) ).

fof(tsy_c_member_res,axiom,
    ! [X_b] : ti(fun(X_b,fun(fun(X_b,bool),bool)),member(X_b)) = member(X_b) ).

fof(tsy_c_fTrue_res,axiom,
    fTrue = ti(bool,fTrue) ).

fof(fact_78_folding__one_Oeq__fold,axiom,
    ! [X_b,A_1,F_1,F] :
      ( hBOOL(hAPP(fun(fun(X_b,bool),X_b),bool,hAPP(fun(X_b,fun(X_b,X_b)),fun(fun(fun(X_b,bool),X_b),bool),finite_folding_one(X_b),F_1),F))
     => ( hAPP(fun(X_b,bool),X_b,F,A_1) = hAPP(fun(X_b,bool),X_b,hAPP(fun(X_b,fun(X_b,X_b)),fun(fun(X_b,bool),X_b),finite_fold1(X_b),F_1),A_1)
       <= hBOOL(hAPP(fun(X_b,bool),bool,finite_finite_1(X_b),A_1)) ) ) ).

fof(tsy_c_fconj_res,hypothesis,
    ti(fun(bool,fun(bool,bool)),fconj) = fconj ).

fof(fact_37_doubleton__eq__iff,axiom,
    ! [X_b,A_4,Ba,Ca,D] :
      ( ( ( ti(X_b,Ba) = ti(X_b,D)
          & ti(X_b,A_4) = ti(X_b,Ca) )
        | ( ti(X_b,A_4) = ti(X_b,D)
          & ti(X_b,Ca) = ti(X_b,Ba) ) )
    <=> hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),Ca),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),D),bot_bot(fun(X_b,bool)))) = hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),A_4),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),Ba),bot_bot(fun(X_b,bool)))) ) ).

fof(fact_75_ext,axiom,
    ! [X_b,X_c,F_1,G] :
      ( ti(fun(X_b,X_c),G) = ti(fun(X_b,X_c),F_1)
     <= ! [X_2] : hAPP(X_b,X_c,F_1,X_2) = hAPP(X_b,X_c,G,X_2) ) ).

fof(fact_80_empty__fold__graphE,axiom,
    ! [X_c,X_b,F_1,Z,X_1] :
      ( hBOOL(hAPP(X_c,bool,hAPP(fun(X_b,bool),fun(X_c,bool),hAPP(X_c,fun(fun(X_b,bool),fun(X_c,bool)),hAPP(fun(X_b,fun(X_c,X_c)),fun(X_c,fun(fun(X_b,bool),fun(X_c,bool))),finite_fold_graph(X_b,X_c),F_1),Z),bot_bot(fun(X_b,bool))),X_1))
     => ti(X_c,X_1) = ti(X_c,Z) ) ).

fof(help_fequal_2_1_T,axiom,
    ! [X_a,X,Y] :
      ( ti(X_a,Y) != ti(X_a,X)
      | hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),fequal(X_a),X),Y)) ) ).

fof(fact_53_com_Osimps_I3_J,axiom,
    ! [Com1_1,Com2_1,Com1,Com2] :
      ( hAPP(com,com,hAPP(com,fun(com,com),semi,Com1_1),Com2_1) = hAPP(com,com,hAPP(com,fun(com,com),semi,Com1),Com2)
    <=> ( Com1_1 = Com1
        & Com2_1 = Com2 ) ) ).

fof(fact_79_fold__graph_OemptyI,axiom,
    ! [X_c,X_b,F_1,Z] : hBOOL(hAPP(X_c,bool,hAPP(fun(X_b,bool),fun(X_c,bool),hAPP(X_c,fun(fun(X_b,bool),fun(X_c,bool)),hAPP(fun(X_b,fun(X_c,X_c)),fun(X_c,fun(fun(X_b,bool),fun(X_c,bool))),finite_fold_graph(X_b,X_c),F_1),Z),bot_bot(fun(X_b,bool))),Z)) ).

fof(fact_94_fold1Set_Osimps,axiom,
    ! [X_b,F_1,A1,A2] :
      ( hBOOL(hAPP(X_b,bool,hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,fun(X_b,X_b)),fun(fun(X_b,bool),fun(X_b,bool)),finite_fold1Set(X_b),F_1),A1),A2))
    <=> ? [A_3,A_2,X_2] :
          ( ~ hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),A_3),A_2))
          & hBOOL(hAPP(X_b,bool,hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),hAPP(fun(X_b,fun(X_b,X_b)),fun(X_b,fun(fun(X_b,bool),fun(X_b,bool))),finite_fold_graph(X_b,X_b),F_1),A_3),A_2),X_2))
          & ti(X_b,X_2) = ti(X_b,A2)
          & hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),A_3),A_2) = ti(fun(X_b,bool),A1) ) ) ).

fof(conj_0,conjecture,
    hBOOL(hAPP(fun(hoare_509422987triple(x_a),bool),bool,hAPP(fun(hoare_509422987triple(x_a),bool),fun(fun(hoare_509422987triple(x_a),bool),bool),hoare_122391849derivs(x_a),g),hAPP(fun(hoare_509422987triple(x_a),bool),fun(hoare_509422987triple(x_a),bool),hAPP(hoare_509422987triple(x_a),fun(fun(hoare_509422987triple(x_a),bool),fun(hoare_509422987triple(x_a),bool)),insert(hoare_509422987triple(x_a)),hAPP(fun(x_a,fun(state,bool)),hoare_509422987triple(x_a),hAPP(com,fun(fun(x_a,fun(state,bool)),hoare_509422987triple(x_a)),hAPP(fun(x_a,fun(state,bool)),fun(com,fun(fun(x_a,fun(state,bool)),hoare_509422987triple(x_a))),hoare_1008221573triple(x_a),hAPP(fun(state,bool),fun(x_a,fun(state,bool)),combk(fun(state,bool),x_a),hAPP(bool,fun(state,bool),combk(bool,state),fFalse))),c),hAPP(fun(state,bool),fun(x_a,fun(state,bool)),hAPP(fun(x_a,fun(fun(state,bool),fun(state,bool))),fun(fun(state,bool),fun(x_a,fun(state,bool))),combc(x_a,fun(state,bool),fun(state,bool)),hAPP(fun(x_a,fun(state,fun(bool,bool))),fun(x_a,fun(fun(state,bool),fun(state,bool))),hAPP(fun(fun(state,fun(bool,bool)),fun(fun(state,bool),fun(state,bool))),fun(fun(x_a,fun(state,fun(bool,bool))),fun(x_a,fun(fun(state,bool),fun(state,bool)))),combb(fun(state,fun(bool,bool)),fun(fun(state,bool),fun(state,bool)),x_a),combs(state,bool,bool)),hAPP(fun(x_a,fun(state,bool)),fun(x_a,fun(state,fun(bool,bool))),hAPP(fun(fun(state,bool),fun(state,fun(bool,bool))),fun(fun(x_a,fun(state,bool)),fun(x_a,fun(state,fun(bool,bool)))),combb(fun(state,bool),fun(state,fun(bool,bool)),x_a),hAPP(fun(bool,fun(bool,bool)),fun(fun(state,bool),fun(state,fun(bool,bool))),combb(bool,fun(bool,bool),state),fconj)),p))),hAPP(fun(state,bool),fun(state,bool),hAPP(fun(bool,bool),fun(fun(state,bool),fun(state,bool)),combb(bool,bool,state),fNot),b)))),bot_bot(fun(hoare_509422987triple(x_a),bool))))) ).

fof(fact_9_insertE,axiom,
    ! [X_b,A_4,Ba,A_1] :
      ( ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),A_4),A_1))
       <= ti(X_b,Ba) != ti(X_b,A_4) )
     <= hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),A_4),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),Ba),A_1))) ) ).

fof(tsy_c_COMBS_res,axiom,
    ! [X_a,X_b,X_c] : combs(X_a,X_b,X_c) = ti(fun(fun(X_a,fun(X_b,X_c)),fun(fun(X_a,X_b),fun(X_a,X_c))),combs(X_a,X_b,X_c)) ).

fof(fact_62_conseq,axiom,
    ! [X_b,Q_1,Ga,Ca,Pa] :
      ( hBOOL(hAPP(fun(hoare_509422987triple(X_b),bool),bool,hAPP(fun(hoare_509422987triple(X_b),bool),fun(fun(hoare_509422987triple(X_b),bool),bool),hoare_122391849derivs(X_b),Ga),hAPP(fun(hoare_509422987triple(X_b),bool),fun(hoare_509422987triple(X_b),bool),hAPP(hoare_509422987triple(X_b),fun(fun(hoare_509422987triple(X_b),bool),fun(hoare_509422987triple(X_b),bool)),insert(hoare_509422987triple(X_b)),hAPP(fun(X_b,fun(state,bool)),hoare_509422987triple(X_b),hAPP(com,fun(fun(X_b,fun(state,bool)),hoare_509422987triple(X_b)),hAPP(fun(X_b,fun(state,bool)),fun(com,fun(fun(X_b,fun(state,bool)),hoare_509422987triple(X_b))),hoare_1008221573triple(X_b),Pa),Ca),Q_1)),bot_bot(fun(hoare_509422987triple(X_b),bool)))))
     <= ! [Z_1,S] :
          ( ? [P_1,Q_2] :
              ( hBOOL(hAPP(fun(hoare_509422987triple(X_b),bool),bool,hAPP(fun(hoare_509422987triple(X_b),bool),fun(fun(hoare_509422987triple(X_b),bool),bool),hoare_122391849derivs(X_b),Ga),hAPP(fun(hoare_509422987triple(X_b),bool),fun(hoare_509422987triple(X_b),bool),hAPP(hoare_509422987triple(X_b),fun(fun(hoare_509422987triple(X_b),bool),fun(hoare_509422987triple(X_b),bool)),insert(hoare_509422987triple(X_b)),hAPP(fun(X_b,fun(state,bool)),hoare_509422987triple(X_b),hAPP(com,fun(fun(X_b,fun(state,bool)),hoare_509422987triple(X_b)),hAPP(fun(X_b,fun(state,bool)),fun(com,fun(fun(X_b,fun(state,bool)),hoare_509422987triple(X_b))),hoare_1008221573triple(X_b),P_1),Ca),Q_2)),bot_bot(fun(hoare_509422987triple(X_b),bool)))))
              & ! [S_1] :
                  ( hBOOL(hAPP(state,bool,hAPP(X_b,fun(state,bool),Q_1,Z_1),S_1))
                 <= ! [Z_2] :
                      ( hBOOL(hAPP(state,bool,hAPP(X_b,fun(state,bool),P_1,Z_2),S))
                     => hBOOL(hAPP(state,bool,hAPP(X_b,fun(state,bool),Q_2,Z_2),S_1)) ) ) )
         <= hBOOL(hAPP(state,bool,hAPP(X_b,fun(state,bool),Pa,Z_1),S)) ) ) ).

fof(tsy_v_c_res,hypothesis,
    c = ti(com,c) ).

fof(tsy_c_fFalse_res,hypothesis,
    ti(bool,fFalse) = fFalse ).

fof(tsy_c_hAPP_arg2,axiom,
    ! [X_a,X_c,B_1_1,B_2] : hAPP(X_a,X_c,B_1_1,ti(X_a,B_2)) = hAPP(X_a,X_c,B_1_1,B_2) ).

fof(fact_68_fold1Set__nonempty,axiom,
    ! [X_b,F_1,A_1,X_1] :
      ( hBOOL(hAPP(X_b,bool,hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,fun(X_b,X_b)),fun(fun(X_b,bool),fun(X_b,bool)),finite_fold1Set(X_b),F_1),A_1),X_1))
     => ti(fun(X_b,bool),A_1) != bot_bot(fun(X_b,bool)) ) ).

fof(fact_90_finite__nonempty__imp__fold1Set,axiom,
    ! [X_b,F_1,A_1] :
      ( hBOOL(hAPP(fun(X_b,bool),bool,finite_finite_1(X_b),A_1))
     => ( ? [X1] : hBOOL(hAPP(X_b,bool,hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,fun(X_b,X_b)),fun(fun(X_b,bool),fun(X_b,bool)),finite_fold1Set(X_b),F_1),A_1),X1))
       <= bot_bot(fun(X_b,bool)) != ti(fun(X_b,bool),A_1) ) ) ).

fof(tsy_v_P_res,hypothesis,
    p = ti(fun(x_a,fun(state,bool)),p) ).

fof(help_fconj_3_1_U,axiom,
    ! [P,Q] :
      ( hBOOL(Q)
      | ~ hBOOL(hAPP(bool,bool,hAPP(bool,fun(bool,bool),fconj,P),Q)) ) ).

fof(help_fFalse_1_1_U,axiom,
    ~ hBOOL(fFalse) ).

fof(fact_16_triple_Orecs,axiom,
    ! [X_c,X_b,F1,Fun1_1,Com_1,Fun2_1] : hAPP(hoare_509422987triple(X_c),X_b,hAPP(fun(fun(X_c,fun(state,bool)),fun(com,fun(fun(X_c,fun(state,bool)),X_b))),fun(hoare_509422987triple(X_c),X_b),hoare_728318379le_rec(X_c,X_b),F1),hAPP(fun(X_c,fun(state,bool)),hoare_509422987triple(X_c),hAPP(com,fun(fun(X_c,fun(state,bool)),hoare_509422987triple(X_c)),hAPP(fun(X_c,fun(state,bool)),fun(com,fun(fun(X_c,fun(state,bool)),hoare_509422987triple(X_c))),hoare_1008221573triple(X_c),Fun1_1),Com_1),Fun2_1)) = hAPP(fun(X_c,fun(state,bool)),X_b,hAPP(com,fun(fun(X_c,fun(state,bool)),X_b),hAPP(fun(X_c,fun(state,bool)),fun(com,fun(fun(X_c,fun(state,bool)),X_b)),F1,Fun1_1),Com_1),Fun2_1) ).

fof(fact_57_equals0I,axiom,
    ! [X_b,A_1] :
      ( ti(fun(X_b,bool),A_1) = bot_bot(fun(X_b,bool))
     <= ! [Y_1] : ~ hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),Y_1),A_1)) ) ).

fof(fact_82_finite,axiom,
    ! [X_b] :
      ( ! [A_1] : hBOOL(hAPP(fun(X_b,bool),bool,finite_finite_1(X_b),A_1))
     <= finite_finite(X_b) ) ).

fof(fact_36_singletonE,axiom,
    ! [X_b,Ba,A_4] :
      ( ti(X_b,Ba) = ti(X_b,A_4)
     <= hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),Ba),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),A_4),bot_bot(fun(X_b,bool))))) ) ).

