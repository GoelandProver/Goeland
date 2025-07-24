fof(fact_59_insert__commute,axiom,
    ! [X_b,X_2,Y_2,A_1] : hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),Y_2),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),X_2),A_1)) = hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),X_2),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),Y_2),A_1)) ).

fof(fact_38_diff__Suc__Suc,axiom,
    ! [M_2,N_1] : hAPP(nat,nat,hAPP(nat,fun(nat,nat),minus_minus(nat),hAPP(nat,nat,suc,M_2)),hAPP(nat,nat,suc,N_1)) = hAPP(nat,nat,hAPP(nat,fun(nat,nat),minus_minus(nat),M_2),N_1) ).

fof(fact_78_imageI,axiom,
    ! [X_c,X_b,F,X_2,A_1] :
      ( hBOOL(hAPP(fun(X_c,bool),bool,hAPP(X_c,fun(fun(X_c,bool),bool),member(X_c),hAPP(X_b,X_c,F,X_2)),hAPP(fun(X_b,bool),fun(X_c,bool),hAPP(fun(X_b,X_c),fun(fun(X_b,bool),fun(X_c,bool)),image(X_b,X_c),F),A_1)))
     <= hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),X_2),A_1)) ) ).

fof(fact_16_Suc__inject,axiom,
    ! [X,Y] :
      ( hAPP(nat,nat,suc,Y) = hAPP(nat,nat,suc,X)
     => Y = X ) ).

fof(fact_30_Suc__leD,axiom,
    ! [M_2,N_1] :
      ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),hAPP(nat,nat,suc,M_2)),N_1))
     => hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),M_2),N_1)) ) ).

fof(fact_86_subset__insertI2,axiom,
    ! [X_b,B_1,A_1,B] :
      ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),ord_less_eq(fun(X_b,bool)),A_1),B))
     => hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),ord_less_eq(fun(X_b,bool)),A_1),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),B_1),B))) ) ).

fof(help_fimplies_1_1_U,axiom,
    ! [Q,P] :
      ( hBOOL(hAPP(bool,bool,hAPP(bool,fun(bool,bool),fimplies,P),Q))
      | hBOOL(P) ) ).

fof(fact_61_insert__code,axiom,
    ! [X_b,Y_2,A_1,X_2] :
      ( hBOOL(hAPP(X_b,bool,hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),Y_2),A_1),X_2))
    <=> ( ti(X_b,Y_2) = ti(X_b,X_2)
        | hBOOL(hAPP(X_b,bool,A_1,X_2)) ) ) ).

fof(fact_72_subset__trans,axiom,
    ! [X_b,C,A_1,B] :
      ( ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),ord_less_eq(fun(X_b,bool)),B),C))
       => hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),ord_less_eq(fun(X_b,bool)),A_1),C)) )
     <= hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),ord_less_eq(fun(X_b,bool)),A_1),B)) ) ).

fof(fact_13_card__Collect__le__nat,axiom,
    ! [Na] : hAPP(fun(nat,bool),nat,finite_card(nat),hAPP(fun(nat,bool),fun(nat,bool),collect(nat),hAPP(nat,fun(nat,bool),hAPP(fun(nat,fun(nat,bool)),fun(nat,fun(nat,bool)),combc(nat,nat,bool),ord_less_eq(nat)),Na))) = hAPP(nat,nat,suc,Na) ).

fof(fact_67_equalityD1,axiom,
    ! [X_b,A_1,B] :
      ( ti(fun(X_b,bool),A_1) = ti(fun(X_b,bool),B)
     => hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),ord_less_eq(fun(X_b,bool)),A_1),B)) ) ).

fof(fact_8_card__insert__if,axiom,
    ! [X_b,X_2,A_1] :
      ( ( ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),X_2),A_1))
         => hAPP(fun(X_b,bool),nat,finite_card(X_b),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),X_2),A_1)) = hAPP(fun(X_b,bool),nat,finite_card(X_b),A_1) )
        & ( hAPP(nat,nat,suc,hAPP(fun(X_b,bool),nat,finite_card(X_b),A_1)) = hAPP(fun(X_b,bool),nat,finite_card(X_b),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),X_2),A_1))
         <= ~ hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),X_2),A_1)) ) )
     <= hBOOL(hAPP(fun(X_b,bool),bool,finite_finite(X_b),A_1)) ) ).

fof(help_COMBB_1_1_U,axiom,
    ! [X_a,X_c,X_b,P,Q,R] : hAPP(X_b,X_c,P,hAPP(X_a,X_b,Q,R)) = hAPP(X_a,X_c,hAPP(fun(X_a,X_b),fun(X_a,X_c),hAPP(fun(X_b,X_c),fun(fun(X_a,X_b),fun(X_a,X_c)),combb(X_b,X_c,X_a),P),Q),R) ).

fof(tsy_c_COMBB_res,axiom,
    ! [X_b,X_c,X_a] : ti(fun(fun(X_b,X_c),fun(fun(X_a,X_b),fun(X_a,X_c))),combb(X_b,X_c,X_a)) = combb(X_b,X_c,X_a) ).

fof(fact_93_subsetI,axiom,
    ! [X_b,B,A_1] :
      ( ! [X_1] :
          ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),X_1),A_1))
         => hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),X_1),B)) )
     => hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),ord_less_eq(fun(X_b,bool)),A_1),B)) ) ).

fof(fact_39_le__diff__iff,axiom,
    ! [Na,K,M_3] :
      ( ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),K),Na))
       => ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),M_3),Na))
        <=> hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),hAPP(nat,nat,hAPP(nat,fun(nat,nat),minus_minus(nat),M_3),K)),hAPP(nat,nat,hAPP(nat,fun(nat,nat),minus_minus(nat),Na),K))) ) )
     <= hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),K),M_3)) ) ).

fof(conj_5,hypothesis,
    ~ hBOOL(hAPP(fun(x_a,bool),bool,hAPP(x_a,fun(fun(x_a,bool),bool),member(x_a),hAPP(pname,x_a,mgt_call,pn)),g)) ).

fof(help_fdisj_3_1_U,axiom,
    ! [P,Q] :
      ( hBOOL(P)
      | hBOOL(Q)
      | ~ hBOOL(hAPP(bool,bool,hAPP(bool,fun(bool,bool),fdisj,P),Q)) ) ).

fof(fact_66_set__eq__subset,axiom,
    ! [X_b,A_1,B] :
      ( ti(fun(X_b,bool),B) = ti(fun(X_b,bool),A_1)
    <=> ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),ord_less_eq(fun(X_b,bool)),B),A_1))
        & hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),ord_less_eq(fun(X_b,bool)),A_1),B)) ) ) ).

fof(fact_9_card__insert__disjoint,axiom,
    ! [X_b,X_2,A_1] :
      ( hBOOL(hAPP(fun(X_b,bool),bool,finite_finite(X_b),A_1))
     => ( hAPP(fun(X_b,bool),nat,finite_card(X_b),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),X_2),A_1)) = hAPP(nat,nat,suc,hAPP(fun(X_b,bool),nat,finite_card(X_b),A_1))
       <= ~ hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),X_2),A_1)) ) ) ).

fof(help_fimplies_3_1_U,axiom,
    ! [P,Q] :
      ( ~ hBOOL(hAPP(bool,bool,hAPP(bool,fun(bool,bool),fimplies,P),Q))
      | hBOOL(Q)
      | ~ hBOOL(P) ) ).

fof(fact_74_ext,axiom,
    ! [X_b,X_c,F,G] :
      ( ! [X_1] : hAPP(X_b,X_c,F,X_1) = hAPP(X_b,X_c,G,X_1)
     => ti(fun(X_b,X_c),G) = ti(fun(X_b,X_c),F) ) ).

fof(tsy_c_COMBC_res,axiom,
    ! [X_a,X_b,X_c] : ti(fun(fun(X_a,fun(X_b,X_c)),fun(X_b,fun(X_a,X_c))),combc(X_a,X_b,X_c)) = combc(X_a,X_b,X_c) ).

fof(fact_20_le__antisym,axiom,
    ! [M_2,N_1] :
      ( ( M_2 = N_1
       <= hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),N_1),M_2)) )
     <= hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),M_2),N_1)) ) ).

fof(fact_33_Suc__le__mono,axiom,
    ! [Na,M_3] :
      ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),Na),M_3))
    <=> hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),hAPP(nat,nat,suc,Na)),hAPP(nat,nat,suc,M_3))) ) ).

fof(help_fNot_2_1_U,axiom,
    ! [P] :
      ( hBOOL(hAPP(bool,bool,fNot,P))
      | hBOOL(P) ) ).

fof(fact_80_insert__compr__raw,axiom,
    ! [X_b,X_1,Xa] : hAPP(fun(X_b,bool),fun(X_b,bool),collect(X_b),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,fun(bool,bool)),fun(fun(X_b,bool),fun(X_b,bool)),combs(X_b,bool,bool),hAPP(fun(X_b,bool),fun(X_b,fun(bool,bool)),hAPP(fun(bool,fun(bool,bool)),fun(fun(X_b,bool),fun(X_b,fun(bool,bool))),combb(bool,fun(bool,bool),X_b),fdisj),hAPP(X_b,fun(X_b,bool),hAPP(fun(X_b,fun(X_b,bool)),fun(X_b,fun(X_b,bool)),combc(X_b,X_b,bool),fequal(X_b)),X_1))),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,fun(fun(X_b,bool),bool)),fun(fun(X_b,bool),fun(X_b,bool)),combc(X_b,fun(X_b,bool),bool),member(X_b)),Xa))) = hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),X_1),Xa) ).

fof(tsy_c_hAPP_res,axiom,
    ! [X_c,X_a,B_1_1,B_2] : ti(X_c,hAPP(X_a,X_c,B_1_1,B_2)) = hAPP(X_a,X_c,B_1_1,B_2) ).

fof(tsy_c_fimplies_res,axiom,
    ti(fun(bool,fun(bool,bool)),fimplies) = fimplies ).

fof(fact_32_le__SucI,axiom,
    ! [M_2,N_1] :
      ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),M_2),hAPP(nat,nat,suc,N_1)))
     <= hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),M_2),N_1)) ) ).

fof(help_fimplies_2_1_U,axiom,
    ! [P,Q] :
      ( hBOOL(hAPP(bool,bool,hAPP(bool,fun(bool,bool),fimplies,P),Q))
      | ~ hBOOL(Q) ) ).

fof(tsy_v_pn_res,hypothesis,
    ti(pname,pn) = pn ).

fof(help_fequal_1_1_T,axiom,
    ! [X_a,X,Y] :
      ( ti(X_a,X) = ti(X_a,Y)
      | ~ hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),fequal(X_a),X),Y)) ) ).

fof(tsy_c_Finite__Set_Ocard_res,axiom,
    ! [X_c] : ti(fun(fun(X_c,bool),nat),finite_card(X_c)) = finite_card(X_c) ).

fof(fact_44_diff__le__mono2,axiom,
    ! [L,M_2,N_1] :
      ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),hAPP(nat,nat,hAPP(nat,fun(nat,nat),minus_minus(nat),L),N_1)),hAPP(nat,nat,hAPP(nat,fun(nat,nat),minus_minus(nat),L),M_2)))
     <= hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),M_2),N_1)) ) ).

fof(fact_96_image__subsetI,axiom,
    ! [X_c,X_b,F,B,A_1] :
      ( hBOOL(hAPP(fun(X_c,bool),bool,hAPP(fun(X_c,bool),fun(fun(X_c,bool),bool),ord_less_eq(fun(X_c,bool)),hAPP(fun(X_b,bool),fun(X_c,bool),hAPP(fun(X_b,X_c),fun(fun(X_b,bool),fun(X_c,bool)),image(X_b,X_c),F),A_1)),B))
     <= ! [X_1] :
          ( hBOOL(hAPP(fun(X_c,bool),bool,hAPP(X_c,fun(fun(X_c,bool),bool),member(X_c),hAPP(X_b,X_c,F,X_1)),B))
         <= hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),X_1),A_1)) ) ) ).

fof(fact_85_subset__insert,axiom,
    ! [X_b,B,X_2,A_1] :
      ( ~ hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),X_2),A_1))
     => ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),ord_less_eq(fun(X_b,bool)),A_1),B))
      <=> hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),ord_less_eq(fun(X_b,bool)),A_1),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),X_2),B))) ) ) ).

fof(fact_22_eq__imp__le,axiom,
    ! [M_2,N_1] :
      ( M_2 = N_1
     => hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),M_2),N_1)) ) ).

fof(help_fdisj_1_1_U,axiom,
    ! [Q,P] :
      ( ~ hBOOL(P)
      | hBOOL(hAPP(bool,bool,hAPP(bool,fun(bool,bool),fdisj,P),Q)) ) ).

fof(fact_43_diff__le__mono,axiom,
    ! [L,M_2,N_1] :
      ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),M_2),N_1))
     => hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),hAPP(nat,nat,hAPP(nat,fun(nat,nat),minus_minus(nat),M_2),L)),hAPP(nat,nat,hAPP(nat,fun(nat,nat),minus_minus(nat),N_1),L))) ) ).

fof(fact_27_finite__insert,axiom,
    ! [X_b,A_2,A_1] :
      ( hBOOL(hAPP(fun(X_b,bool),bool,finite_finite(X_b),A_1))
    <=> hBOOL(hAPP(fun(X_b,bool),bool,finite_finite(X_b),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),A_2),A_1))) ) ).

fof(fact_83_subset__insertI,axiom,
    ! [X_b,B,A_2] : hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),ord_less_eq(fun(X_b,bool)),B),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),A_2),B))) ).

fof(fact_69_in__mono,axiom,
    ! [X_b,X_2,A_1,B] :
      ( ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),X_2),A_1))
       => hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),X_2),B)) )
     <= hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),ord_less_eq(fun(X_b,bool)),A_1),B)) ) ).

fof(tsy_c_hBOOL_arg1,hypothesis,
    ! [B_1_1] :
      ( hBOOL(B_1_1)
    <=> hBOOL(ti(bool,B_1_1)) ) ).

fof(arity_HOL_Obool___Finite__Set_Ofinite,axiom,
    finite_finite_1(bool) ).

fof(fact_92_imageE,axiom,
    ! [X_b,X_c,B_1,F,A_1] :
      ( ~ ! [X_1] :
            ( ~ hBOOL(hAPP(fun(X_c,bool),bool,hAPP(X_c,fun(fun(X_c,bool),bool),member(X_c),X_1),A_1))
           <= ti(X_b,B_1) = hAPP(X_c,X_b,F,X_1) )
     <= hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),B_1),hAPP(fun(X_c,bool),fun(X_b,bool),hAPP(fun(X_c,X_b),fun(fun(X_c,bool),fun(X_b,bool)),image(X_c,X_b),F),A_1))) ) ).

fof(fact_76_Collect__def,axiom,
    ! [X_b,Pa] : ti(fun(X_b,bool),Pa) = hAPP(fun(X_b,bool),fun(X_b,bool),collect(X_b),Pa) ).

fof(fact_46_finite__surj,axiom,
    ! [X_c,X_b,B,F,A_1] :
      ( hBOOL(hAPP(fun(X_b,bool),bool,finite_finite(X_b),A_1))
     => ( hBOOL(hAPP(fun(X_c,bool),bool,finite_finite(X_c),B))
       <= hBOOL(hAPP(fun(X_c,bool),bool,hAPP(fun(X_c,bool),fun(fun(X_c,bool),bool),ord_less_eq(fun(X_c,bool)),B),hAPP(fun(X_b,bool),fun(X_c,bool),hAPP(fun(X_b,X_c),fun(fun(X_b,bool),fun(X_c,bool)),image(X_b,X_c),F),A_1))) ) ) ).

fof(fact_52_subsetD,axiom,
    ! [X_b,C_1,A_1,B] :
      ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),ord_less_eq(fun(X_b,bool)),A_1),B))
     => ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),C_1),A_1))
       => hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),C_1),B)) ) ) ).

fof(fact_24_le__refl,axiom,
    ! [N_1] : hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),N_1),N_1)) ).

fof(fact_79_rev__image__eqI,axiom,
    ! [X_c,X_b,B_1,F,X_2,A_1] :
      ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),X_2),A_1))
     => ( hBOOL(hAPP(fun(X_c,bool),bool,hAPP(X_c,fun(fun(X_c,bool),bool),member(X_c),B_1),hAPP(fun(X_b,bool),fun(X_c,bool),hAPP(fun(X_b,X_c),fun(fun(X_b,bool),fun(X_c,bool)),image(X_b,X_c),F),A_1)))
       <= hAPP(X_b,X_c,F,X_2) = ti(X_c,B_1) ) ) ).

fof(conj_2,hypothesis,
    hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),hAPP(nat,nat,suc,na)),hAPP(fun(x_a,bool),nat,finite_card(x_a),hAPP(fun(pname,bool),fun(x_a,bool),hAPP(fun(pname,x_a),fun(fun(pname,bool),fun(x_a,bool)),image(pname,x_a),mgt_call),u)))) ).

fof(help_fconj_1_1_U,axiom,
    ! [Q,P] :
      ( ~ hBOOL(P)
      | ~ hBOOL(Q)
      | hBOOL(hAPP(bool,bool,hAPP(bool,fun(bool,bool),fconj,P),Q)) ) ).

fof(tsy_c_Set_OCollect_res,axiom,
    ! [X_b] : ti(fun(fun(X_b,bool),fun(X_b,bool)),collect(X_b)) = collect(X_b) ).

fof(fact_90_subset__image__iff,axiom,
    ! [X_b,X_c,B,F,A_1] :
      ( ? [AA] :
          ( hBOOL(hAPP(fun(X_c,bool),bool,hAPP(fun(X_c,bool),fun(fun(X_c,bool),bool),ord_less_eq(fun(X_c,bool)),AA),A_1))
          & ti(fun(X_b,bool),B) = hAPP(fun(X_c,bool),fun(X_b,bool),hAPP(fun(X_c,X_b),fun(fun(X_c,bool),fun(X_b,bool)),image(X_c,X_b),F),AA) )
    <=> hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),ord_less_eq(fun(X_b,bool)),B),hAPP(fun(X_c,bool),fun(X_b,bool),hAPP(fun(X_c,X_b),fun(fun(X_c,bool),fun(X_b,bool)),image(X_c,X_b),F),A_1))) ) ).

fof(fact_18_Suc__n__not__n,axiom,
    ! [N_1] : hAPP(nat,nat,suc,N_1) != N_1 ).

fof(tsy_v_na_res,hypothesis,
    na = ti(nat,na) ).

fof(tsy_c_HOL_Oundefined_res,axiom,
    ! [X_a] : undefined(X_a) = ti(X_a,undefined(X_a)) ).

fof(help_fconj_3_1_U,axiom,
    ! [P,Q] :
      ( hBOOL(Q)
      | ~ hBOOL(hAPP(bool,bool,hAPP(bool,fun(bool,bool),fconj,P),Q)) ) ).

fof(tsy_c_Orderings_Oord__class_Oless__eq_res,axiom,
    ! [X_a] :
      ( ti(fun(X_a,fun(X_a,bool)),ord_less_eq(X_a)) = ord_less_eq(X_a)
     <= preorder(X_a) ) ).

fof(fact_35_not__less__eq__eq,axiom,
    ! [M_3,Na] :
      ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),hAPP(nat,nat,suc,Na)),M_3))
    <=> ~ hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),M_3),Na)) ) ).

fof(fact_71_set__mp,axiom,
    ! [X_b,X_2,A_1,B] :
      ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),ord_less_eq(fun(X_b,bool)),A_1),B))
     => ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),X_2),A_1))
       => hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),X_2),B)) ) ) ).

fof(help_COMBS_1_1_U,axiom,
    ! [X_a,X_c,X_b,P,Q,R] : hAPP(X_b,X_c,hAPP(X_a,fun(X_b,X_c),P,R),hAPP(X_a,X_b,Q,R)) = hAPP(X_a,X_c,hAPP(fun(X_a,X_b),fun(X_a,X_c),hAPP(fun(X_a,fun(X_b,X_c)),fun(fun(X_a,X_b),fun(X_a,X_c)),combs(X_a,X_b,X_c),P),Q),R) ).

fof(fact_81_image__image,axiom,
    ! [X_c,X_b,X_d,F,G,A_1] : hAPP(fun(X_d,bool),fun(X_b,bool),hAPP(fun(X_d,X_b),fun(fun(X_d,bool),fun(X_b,bool)),image(X_d,X_b),hAPP(fun(X_d,X_c),fun(X_d,X_b),hAPP(fun(X_c,X_b),fun(fun(X_d,X_c),fun(X_d,X_b)),combb(X_c,X_b,X_d),F),G)),A_1) = hAPP(fun(X_c,bool),fun(X_b,bool),hAPP(fun(X_c,X_b),fun(fun(X_c,bool),fun(X_b,bool)),image(X_c,X_b),F),hAPP(fun(X_d,bool),fun(X_c,bool),hAPP(fun(X_d,X_c),fun(fun(X_d,bool),fun(X_c,bool)),image(X_d,X_c),G),A_1)) ).

fof(arity_fun___Finite__Set_Ofinite,axiom,
    ! [T_2,T_1] :
      ( finite_finite_1(fun(T_2,T_1))
     <= ( finite_finite_1(T_1)
        & finite_finite_1(T_2) ) ) ).

fof(fact_64_insert__absorb,axiom,
    ! [X_b,A_2,A_1] :
      ( hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),A_2),A_1) = ti(fun(X_b,bool),A_1)
     <= hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),A_2),A_1)) ) ).

fof(fact_91_image__mono,axiom,
    ! [X_c,X_b,F,A_1,B] :
      ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),ord_less_eq(fun(X_b,bool)),A_1),B))
     => hBOOL(hAPP(fun(X_c,bool),bool,hAPP(fun(X_c,bool),fun(fun(X_c,bool),bool),ord_less_eq(fun(X_c,bool)),hAPP(fun(X_b,bool),fun(X_c,bool),hAPP(fun(X_b,X_c),fun(fun(X_b,bool),fun(X_c,bool)),image(X_b,X_c),F),A_1)),hAPP(fun(X_b,bool),fun(X_c,bool),hAPP(fun(X_b,X_c),fun(fun(X_b,bool),fun(X_c,bool)),image(X_b,X_c),F),B))) ) ).

fof(fact_3_finite_OinsertI,axiom,
    ! [X_b,A_2,A_1] :
      ( hBOOL(hAPP(fun(X_b,bool),bool,finite_finite(X_b),A_1))
     => hBOOL(hAPP(fun(X_b,bool),bool,finite_finite(X_b),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),A_2),A_1))) ) ).

fof(fact_49_pigeonhole__infinite,axiom,
    ! [X_c,X_b,F,A_1] :
      ( ~ hBOOL(hAPP(fun(X_b,bool),bool,finite_finite(X_b),A_1))
     => ( ? [X_1] :
            ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),X_1),A_1))
            & ~ hBOOL(hAPP(fun(X_b,bool),bool,finite_finite(X_b),hAPP(fun(X_b,bool),fun(X_b,bool),collect(X_b),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,fun(bool,bool)),fun(fun(X_b,bool),fun(X_b,bool)),combs(X_b,bool,bool),hAPP(fun(X_b,bool),fun(X_b,fun(bool,bool)),hAPP(fun(bool,fun(bool,bool)),fun(fun(X_b,bool),fun(X_b,fun(bool,bool))),combb(bool,fun(bool,bool),X_b),fconj),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,fun(fun(X_b,bool),bool)),fun(fun(X_b,bool),fun(X_b,bool)),combc(X_b,fun(X_b,bool),bool),member(X_b)),A_1))),hAPP(X_c,fun(X_b,bool),hAPP(fun(X_b,fun(X_c,bool)),fun(X_c,fun(X_b,bool)),combc(X_b,X_c,bool),hAPP(fun(X_b,X_c),fun(X_b,fun(X_c,bool)),hAPP(fun(X_c,fun(X_c,bool)),fun(fun(X_b,X_c),fun(X_b,fun(X_c,bool))),combb(X_c,fun(X_c,bool),X_b),fequal(X_c)),F)),hAPP(X_b,X_c,F,X_1)))))) )
       <= hBOOL(hAPP(fun(X_c,bool),bool,finite_finite(X_c),hAPP(fun(X_b,bool),fun(X_c,bool),hAPP(fun(X_b,X_c),fun(fun(X_b,bool),fun(X_c,bool)),image(X_b,X_c),F),A_1))) ) ) ).

fof(help_fequal_2_1_T,axiom,
    ! [X_a,X,Y] :
      ( ti(X_a,X) != ti(X_a,Y)
      | hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),fequal(X_a),X),Y)) ) ).

fof(arity_Nat_Onat___Orderings_Oorder,axiom,
    order(nat) ).

fof(fact_54_insertE,axiom,
    ! [X_b,A_2,B_1,A_1] :
      ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),A_2),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),B_1),A_1)))
     => ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),A_2),A_1))
       <= ti(X_b,A_2) != ti(X_b,B_1) ) ) ).

fof(fact_48_lift__Suc__mono__le,axiom,
    ! [X_b] :
      ( order(X_b)
     => ! [Na,N_3,F] :
          ( ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),Na),N_3))
           => hBOOL(hAPP(X_b,bool,hAPP(X_b,fun(X_b,bool),ord_less_eq(X_b),hAPP(nat,X_b,F,Na)),hAPP(nat,X_b,F,N_3))) )
         <= ! [N_2] : hBOOL(hAPP(X_b,bool,hAPP(X_b,fun(X_b,bool),ord_less_eq(X_b),hAPP(nat,X_b,F,N_2)),hAPP(nat,X_b,F,hAPP(nat,nat,suc,N_2)))) ) ) ).

fof(arity_fun___Orderings_Oorder,axiom,
    ! [T_2,T_1] :
      ( order(T_1)
     => order(fun(T_2,T_1)) ) ).

fof(tsy_c_fdisj_res,axiom,
    ti(fun(bool,fun(bool,bool)),fdisj) = fdisj ).

fof(fact_60_insert__iff,axiom,
    ! [X_b,A_2,B_1,A_1] :
      ( ( ti(X_b,A_2) = ti(X_b,B_1)
        | hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),A_2),A_1)) )
    <=> hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),A_2),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),B_1),A_1))) ) ).

fof(fact_4_card__image__le,axiom,
    ! [X_c,X_b,F,A_1] :
      ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),hAPP(fun(X_c,bool),nat,finite_card(X_c),hAPP(fun(X_b,bool),fun(X_c,bool),hAPP(fun(X_b,X_c),fun(fun(X_b,bool),fun(X_c,bool)),image(X_b,X_c),F),A_1))),hAPP(fun(X_b,bool),nat,finite_card(X_b),A_1)))
     <= hBOOL(hAPP(fun(X_b,bool),bool,finite_finite(X_b),A_1)) ) ).

fof(fact_42_diff__diff__cancel,axiom,
    ! [I_1,N_1] :
      ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),I_1),N_1))
     => I_1 = hAPP(nat,nat,hAPP(nat,fun(nat,nat),minus_minus(nat),N_1),hAPP(nat,nat,hAPP(nat,fun(nat,nat),minus_minus(nat),N_1),I_1)) ) ).

fof(fact_26_finite__Collect__disjI,axiom,
    ! [X_b,Pa,Q_1] :
      ( hBOOL(hAPP(fun(X_b,bool),bool,finite_finite(X_b),hAPP(fun(X_b,bool),fun(X_b,bool),collect(X_b),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,fun(bool,bool)),fun(fun(X_b,bool),fun(X_b,bool)),combs(X_b,bool,bool),hAPP(fun(X_b,bool),fun(X_b,fun(bool,bool)),hAPP(fun(bool,fun(bool,bool)),fun(fun(X_b,bool),fun(X_b,fun(bool,bool))),combb(bool,fun(bool,bool),X_b),fdisj),Pa)),Q_1))))
    <=> ( hBOOL(hAPP(fun(X_b,bool),bool,finite_finite(X_b),hAPP(fun(X_b,bool),fun(X_b,bool),collect(X_b),Pa)))
        & hBOOL(hAPP(fun(X_b,bool),bool,finite_finite(X_b),hAPP(fun(X_b,bool),fun(X_b,bool),collect(X_b),Q_1))) ) ) ).

fof(fact_15_finite,axiom,
    ! [X_b] :
      ( finite_finite_1(X_b)
     => ! [A_1] : hBOOL(hAPP(fun(X_b,bool),bool,finite_finite(X_b),A_1)) ) ).

fof(tsy_c_COMBI_res,axiom,
    ! [X_a] : ti(fun(X_a,X_a),combi(X_a)) = combi(X_a) ).

fof(fact_12_finite__Collect__le__nat,axiom,
    ! [K] : hBOOL(hAPP(fun(nat,bool),bool,finite_finite(nat),hAPP(fun(nat,bool),fun(nat,bool),collect(nat),hAPP(nat,fun(nat,bool),hAPP(fun(nat,fun(nat,bool)),fun(nat,fun(nat,bool)),combc(nat,nat,bool),ord_less_eq(nat)),K)))) ).

fof(fact_84_insert__subset,axiom,
    ! [X_b,X_2,A_1,B] :
      ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),ord_less_eq(fun(X_b,bool)),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),X_2),A_1)),B))
    <=> ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),ord_less_eq(fun(X_b,bool)),A_1),B))
        & hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),X_2),B)) ) ) ).

fof(tsy_c_Finite__Set_Ofinite_res,axiom,
    ! [X_b] : finite_finite(X_b) = ti(fun(fun(X_b,bool),bool),finite_finite(X_b)) ).

fof(tsy_c_COMBS_res,axiom,
    ! [X_a,X_b,X_c] : ti(fun(fun(X_a,fun(X_b,X_c)),fun(fun(X_a,X_b),fun(X_a,X_c))),combs(X_a,X_b,X_c)) = combs(X_a,X_b,X_c) ).

fof(tsy_v_mgt__call_res,hypothesis,
    ti(fun(pname,x_a),mgt_call) = mgt_call ).

fof(tsy_c_Set_Oinsert_res,axiom,
    ! [X_b] : ti(fun(X_b,fun(fun(X_b,bool),fun(X_b,bool))),insert(X_b)) = insert(X_b) ).

fof(fact_51_equalityI,axiom,
    ! [X_b,A_1,B] :
      ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),ord_less_eq(fun(X_b,bool)),A_1),B))
     => ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),ord_less_eq(fun(X_b,bool)),B),A_1))
       => ti(fun(X_b,bool),A_1) = ti(fun(X_b,bool),B) ) ) ).

fof(fact_34_le__Suc__eq,axiom,
    ! [M_3,Na] :
      ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),M_3),hAPP(nat,nat,suc,Na)))
    <=> ( M_3 = hAPP(nat,nat,suc,Na)
        | hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),M_3),Na)) ) ) ).

fof(fact_50_image__eqI,axiom,
    ! [X_b,X_c,A_1,B_1,F,X_2] :
      ( ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),B_1),hAPP(fun(X_c,bool),fun(X_b,bool),hAPP(fun(X_c,X_b),fun(fun(X_c,bool),fun(X_b,bool)),image(X_c,X_b),F),A_1)))
       <= hBOOL(hAPP(fun(X_c,bool),bool,hAPP(X_c,fun(fun(X_c,bool),bool),member(X_c),X_2),A_1)) )
     <= ti(X_b,B_1) = hAPP(X_c,X_b,F,X_2) ) ).

fof(fact_29_rev__finite__subset,axiom,
    ! [X_b,A_1,B] :
      ( ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),ord_less_eq(fun(X_b,bool)),A_1),B))
       => hBOOL(hAPP(fun(X_b,bool),bool,finite_finite(X_b),A_1)) )
     <= hBOOL(hAPP(fun(X_b,bool),bool,finite_finite(X_b),B)) ) ).

fof(conj_0,hypothesis,
    hBOOL(hAPP(fun(pname,bool),bool,finite_finite(pname),u)) ).

fof(help_fNot_1_1_U,axiom,
    ! [P] :
      ( ~ hBOOL(hAPP(bool,bool,fNot,P))
      | ~ hBOOL(P) ) ).

fof(arity_HOL_Obool___Orderings_Oorder,axiom,
    order(bool) ).

fof(fact_73_equalityE,axiom,
    ! [X_b,A_1,B] :
      ( ti(fun(X_b,bool),B) = ti(fun(X_b,bool),A_1)
     => ~ ( ~ hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),ord_less_eq(fun(X_b,bool)),B),A_1))
         <= hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),ord_less_eq(fun(X_b,bool)),A_1),B)) ) ) ).

fof(fact_62_insert__ident,axiom,
    ! [X_b,B,X_2,A_1] :
      ( ~ hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),X_2),A_1))
     => ( ~ hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),X_2),B))
       => ( hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),X_2),B) = hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),X_2),A_1)
        <=> ti(fun(X_b,bool),B) = ti(fun(X_b,bool),A_1) ) ) ) ).

fof(tsy_c_Groups_Ominus__class_Ominus_res,hypothesis,
    ti(fun(nat,fun(nat,nat)),minus_minus(nat)) = minus_minus(nat) ).

fof(arity_HOL_Obool___Orderings_Opreorder,axiom,
    preorder(bool) ).

fof(fact_55_insertI1,axiom,
    ! [X_b,A_2,B] : hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),A_2),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),A_2),B))) ).

fof(fact_23_nat__le__linear,axiom,
    ! [M_2,N_1] :
      ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),M_2),N_1))
      | hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),N_1),M_2)) ) ).

fof(fact_56_insert__compr,axiom,
    ! [X_b,A_2,B] : hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),A_2),B) = hAPP(fun(X_b,bool),fun(X_b,bool),collect(X_b),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,fun(bool,bool)),fun(fun(X_b,bool),fun(X_b,bool)),combs(X_b,bool,bool),hAPP(fun(X_b,bool),fun(X_b,fun(bool,bool)),hAPP(fun(bool,fun(bool,bool)),fun(fun(X_b,bool),fun(X_b,fun(bool,bool))),combb(bool,fun(bool,bool),X_b),fdisj),hAPP(X_b,fun(X_b,bool),hAPP(fun(X_b,fun(X_b,bool)),fun(X_b,fun(X_b,bool)),combc(X_b,X_b,bool),fequal(X_b)),A_2))),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,fun(fun(X_b,bool),bool)),fun(fun(X_b,bool),fun(X_b,bool)),combc(X_b,fun(X_b,bool),bool),member(X_b)),B))) ).

fof(arity_fun___Orderings_Opreorder,axiom,
    ! [T_2,T_1] :
      ( preorder(T_1)
     => preorder(fun(T_2,T_1)) ) ).

fof(arity_Nat_Onat___Orderings_Opreorder,axiom,
    preorder(nat) ).

fof(fact_82_image__ident,axiom,
    ! [X_b,Y_1] : ti(fun(X_b,bool),Y_1) = hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,X_b),fun(fun(X_b,bool),fun(X_b,bool)),image(X_b,X_b),combi(X_b)),Y_1) ).

fof(tsy_c_Set_Oimage_res,axiom,
    ! [X_b,X_c] : image(X_b,X_c) = ti(fun(fun(X_b,X_c),fun(fun(X_b,bool),fun(X_c,bool))),image(X_b,X_c)) ).

fof(tsy_c_fNot_res,axiom,
    ti(fun(bool,bool),fNot) = fNot ).

fof(fact_58_insert__absorb2,axiom,
    ! [X_b,X_2,A_1] : hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),X_2),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),X_2),A_1)) = hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),X_2),A_1) ).

fof(fact_31_le__SucE,axiom,
    ! [M_2,N_1] :
      ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),M_2),hAPP(nat,nat,suc,N_1)))
     => ( M_2 = hAPP(nat,nat,suc,N_1)
       <= ~ hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),M_2),N_1)) ) ) ).

fof(fact_89_insert__image,axiom,
    ! [X_c,X_b,F,X_2,A_1] :
      ( hAPP(fun(X_c,bool),fun(X_c,bool),hAPP(X_c,fun(fun(X_c,bool),fun(X_c,bool)),insert(X_c),hAPP(X_b,X_c,F,X_2)),hAPP(fun(X_b,bool),fun(X_c,bool),hAPP(fun(X_b,X_c),fun(fun(X_b,bool),fun(X_c,bool)),image(X_b,X_c),F),A_1)) = hAPP(fun(X_b,bool),fun(X_c,bool),hAPP(fun(X_b,X_c),fun(fun(X_b,bool),fun(X_c,bool)),image(X_b,X_c),F),A_1)
     <= hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),X_2),A_1)) ) ).

fof(fact_65_subset__refl,axiom,
    ! [X_b,A_1] : hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),ord_less_eq(fun(X_b,bool)),A_1),A_1)) ).

fof(tsy_v_G_res,hypothesis,
    ti(fun(x_a,bool),g) = g ).

fof(fact_14_finite__code,axiom,
    ! [X_b] :
      ( finite_finite_1(X_b)
     => ! [A_1] : hBOOL(hAPP(fun(X_b,bool),bool,finite_finite(X_b),A_1)) ) ).

fof(conj_6,conjecture,
    hBOOL(hAPP(fun(x_a,bool),bool,hAPP(fun(x_a,bool),fun(fun(x_a,bool),bool),ord_less_eq(fun(x_a,bool)),hAPP(fun(x_a,bool),fun(x_a,bool),hAPP(x_a,fun(fun(x_a,bool),fun(x_a,bool)),insert(x_a),hAPP(pname,x_a,mgt_call,pn)),g)),hAPP(fun(pname,bool),fun(x_a,bool),hAPP(fun(pname,x_a),fun(fun(pname,bool),fun(x_a,bool)),image(pname,x_a),mgt_call),u))) ).

fof(help_ti_idem,axiom,
    ! [T,A] : ti(T,ti(T,A)) = ti(T,A) ).

fof(tsy_c_hAPP_arg2,axiom,
    ! [X_a,X_c,B_1_1,B_2] : hAPP(X_a,X_c,B_1_1,ti(X_a,B_2)) = hAPP(X_a,X_c,B_1_1,B_2) ).

fof(tsy_c_fconj_res,axiom,
    ti(fun(bool,fun(bool,bool)),fconj) = fconj ).

fof(fact_57_insert__Collect,axiom,
    ! [X_b,A_2,Pa] : hAPP(fun(X_b,bool),fun(X_b,bool),collect(X_b),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,fun(bool,bool)),fun(fun(X_b,bool),fun(X_b,bool)),combs(X_b,bool,bool),hAPP(fun(X_b,bool),fun(X_b,fun(bool,bool)),hAPP(fun(bool,fun(bool,bool)),fun(fun(X_b,bool),fun(X_b,fun(bool,bool))),combb(bool,fun(bool,bool),X_b),fimplies),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(bool,bool),fun(fun(X_b,bool),fun(X_b,bool)),combb(bool,bool,X_b),fNot),hAPP(X_b,fun(X_b,bool),hAPP(fun(X_b,fun(X_b,bool)),fun(X_b,fun(X_b,bool)),combc(X_b,X_b,bool),fequal(X_b)),A_2)))),Pa)) = hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),A_2),hAPP(fun(X_b,bool),fun(X_b,bool),collect(X_b),Pa)) ).

fof(fact_53_insertCI,axiom,
    ! [X_b,B_1,A_2,B] :
      ( ( ti(X_b,B_1) = ti(X_b,A_2)
       <= ~ hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),A_2),B)) )
     => hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),A_2),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),B_1),B))) ) ).

fof(help_fdisj_2_1_U,axiom,
    ! [P,Q] :
      ( hBOOL(hAPP(bool,bool,hAPP(bool,fun(bool,bool),fdisj,P),Q))
      | ~ hBOOL(Q) ) ).

fof(help_COMBI_1_1_U,axiom,
    ! [X_a,P] : hAPP(X_a,X_a,combi(X_a),P) = ti(X_a,P) ).

fof(fact_5_card__mono,axiom,
    ! [X_b,A_1,B] :
      ( hBOOL(hAPP(fun(X_b,bool),bool,finite_finite(X_b),B))
     => ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),hAPP(fun(X_b,bool),nat,finite_card(X_b),A_1)),hAPP(fun(X_b,bool),nat,finite_card(X_b),B)))
       <= hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),ord_less_eq(fun(X_b,bool)),A_1),B)) ) ) ).

fof(conj_3,hypothesis,
    hAPP(nat,nat,hAPP(nat,fun(nat,nat),minus_minus(nat),hAPP(fun(x_a,bool),nat,finite_card(x_a),hAPP(fun(pname,bool),fun(x_a,bool),hAPP(fun(pname,x_a),fun(fun(pname,bool),fun(x_a,bool)),image(pname,x_a),mgt_call),u))),hAPP(nat,nat,suc,na)) = hAPP(fun(x_a,bool),nat,finite_card(x_a),g) ).

fof(tsy_c_fequal_res,axiom,
    ! [X_a] : ti(fun(X_a,fun(X_a,bool)),fequal(X_a)) = fequal(X_a) ).

fof(tsy_v_P_res,axiom,
    ti(fun(fun(x_a,bool),fun(fun(x_a,bool),bool)),p) = p ).

fof(fact_77_image__iff,axiom,
    ! [X_b,X_c,Z,F,A_1] :
      ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),Z),hAPP(fun(X_c,bool),fun(X_b,bool),hAPP(fun(X_c,X_b),fun(fun(X_c,bool),fun(X_b,bool)),image(X_c,X_b),F),A_1)))
    <=> ? [X_1] :
          ( hBOOL(hAPP(fun(X_c,bool),bool,hAPP(X_c,fun(fun(X_c,bool),bool),member(X_c),X_1),A_1))
          & hAPP(X_c,X_b,F,X_1) = ti(X_b,Z) ) ) ).

fof(help_COMBC_1_1_U,axiom,
    ! [X_a,X_c,X_b,P,Q,R] : hAPP(X_b,X_c,hAPP(X_a,fun(X_b,X_c),P,R),Q) = hAPP(X_a,X_c,hAPP(X_b,fun(X_a,X_c),hAPP(fun(X_a,fun(X_b,X_c)),fun(X_b,fun(X_a,X_c)),combc(X_a,X_b,X_c),P),Q),R) ).

fof(conj_4,hypothesis,
    hBOOL(hAPP(fun(pname,bool),bool,hAPP(pname,fun(fun(pname,bool),bool),member(pname),pn),u)) ).

fof(fact_41_eq__diff__iff,axiom,
    ! [Na,K,M_3] :
      ( ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),K),Na))
       => ( hAPP(nat,nat,hAPP(nat,fun(nat,nat),minus_minus(nat),M_3),K) = hAPP(nat,nat,hAPP(nat,fun(nat,nat),minus_minus(nat),Na),K)
        <=> M_3 = Na ) )
     <= hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),K),M_3)) ) ).

fof(fact_17_nat_Oinject,axiom,
    ! [Nat_1,Nat] :
      ( hAPP(nat,nat,suc,Nat_1) = hAPP(nat,nat,suc,Nat)
    <=> Nat_1 = Nat ) ).

fof(fact_36_Suc__n__not__le__n,axiom,
    ! [N_1] : ~ hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),hAPP(nat,nat,suc,N_1)),N_1)) ).

fof(fact_2_finite__imageI,axiom,
    ! [X_c,X_b,H,F_1] :
      ( hBOOL(hAPP(fun(X_b,bool),bool,finite_finite(X_b),F_1))
     => hBOOL(hAPP(fun(X_c,bool),bool,finite_finite(X_c),hAPP(fun(X_b,bool),fun(X_c,bool),hAPP(fun(X_b,X_c),fun(fun(X_b,bool),fun(X_c,bool)),image(X_b,X_c),H),F_1))) ) ).

fof(fact_68_equalityD2,axiom,
    ! [X_b,A_1,B] :
      ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),ord_less_eq(fun(X_b,bool)),B),A_1))
     <= ti(fun(X_b,bool),A_1) = ti(fun(X_b,bool),B) ) ).

fof(fact_75_mem__def,axiom,
    ! [X_b,X_2,A_1] :
      ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),X_2),A_1))
    <=> hBOOL(hAPP(X_b,bool,A_1,X_2)) ) ).

fof(fact_70_set__rev__mp,axiom,
    ! [X_b,B,X_2,A_1] :
      ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),X_2),A_1))
     => ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),X_2),B))
       <= hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),ord_less_eq(fun(X_b,bool)),A_1),B)) ) ) ).

fof(tsy_c_member_res,axiom,
    ! [X_b] : ti(fun(X_b,fun(fun(X_b,bool),bool)),member(X_b)) = member(X_b) ).

fof(fact_28_finite__subset,axiom,
    ! [X_b,A_1,B] :
      ( ( hBOOL(hAPP(fun(X_b,bool),bool,finite_finite(X_b),A_1))
       <= hBOOL(hAPP(fun(X_b,bool),bool,finite_finite(X_b),B)) )
     <= hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),ord_less_eq(fun(X_b,bool)),A_1),B)) ) ).

fof(fact_21_le__trans,axiom,
    ! [K_1,I_1,J] :
      ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),I_1),J))
     => ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),I_1),K_1))
       <= hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),J),K_1)) ) ) ).

fof(tsy_v_U_res,hypothesis,
    ti(fun(pname,bool),u) = u ).

fof(fact_94_zero__induct__lemma,axiom,
    ! [I,Pa,K] :
      ( ( ! [N_2] :
            ( hBOOL(hAPP(nat,bool,Pa,N_2))
           <= hBOOL(hAPP(nat,bool,Pa,hAPP(nat,nat,suc,N_2))) )
       => hBOOL(hAPP(nat,bool,Pa,hAPP(nat,nat,hAPP(nat,fun(nat,nat),minus_minus(nat),K),I))) )
     <= hBOOL(hAPP(nat,bool,Pa,K)) ) ).

fof(fact_25_diff__commute,axiom,
    ! [I_1,J,K_1] : hAPP(nat,nat,hAPP(nat,fun(nat,nat),minus_minus(nat),hAPP(nat,nat,hAPP(nat,fun(nat,nat),minus_minus(nat),I_1),K_1)),J) = hAPP(nat,nat,hAPP(nat,fun(nat,nat),minus_minus(nat),hAPP(nat,nat,hAPP(nat,fun(nat,nat),minus_minus(nat),I_1),J)),K_1) ).

fof(tsy_c_hAPP_arg1,axiom,
    ! [X_a,X_c,B_1_1,B_2] : hAPP(X_a,X_c,B_1_1,B_2) = hAPP(X_a,X_c,ti(fun(X_a,X_c),B_1_1),B_2) ).

fof(fact_88_image__insert,axiom,
    ! [X_c,X_b,F,A_2,B] : hAPP(fun(X_c,bool),fun(X_b,bool),hAPP(fun(X_c,X_b),fun(fun(X_c,bool),fun(X_b,bool)),image(X_c,X_b),F),hAPP(fun(X_c,bool),fun(X_c,bool),hAPP(X_c,fun(fun(X_c,bool),fun(X_c,bool)),insert(X_c),A_2),B)) = hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),hAPP(X_c,X_b,F,A_2)),hAPP(fun(X_c,bool),fun(X_b,bool),hAPP(fun(X_c,X_b),fun(fun(X_c,bool),fun(X_b,bool)),image(X_c,X_b),F),B)) ).

fof(fact_40_Nat_Odiff__diff__eq,axiom,
    ! [N_1,K_1,M_2] :
      ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),K_1),M_2))
     => ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),K_1),N_1))
       => hAPP(nat,nat,hAPP(nat,fun(nat,nat),minus_minus(nat),M_2),N_1) = hAPP(nat,nat,hAPP(nat,fun(nat,nat),minus_minus(nat),hAPP(nat,nat,hAPP(nat,fun(nat,nat),minus_minus(nat),M_2),K_1)),hAPP(nat,nat,hAPP(nat,fun(nat,nat),minus_minus(nat),N_1),K_1)) ) ) ).

fof(fact_1_finite__Collect__subsets,axiom,
    ! [X_b,A_1] :
      ( hBOOL(hAPP(fun(fun(X_b,bool),bool),bool,finite_finite(fun(X_b,bool)),hAPP(fun(fun(X_b,bool),bool),fun(fun(X_b,bool),bool),collect(fun(X_b,bool)),hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),hAPP(fun(fun(X_b,bool),fun(fun(X_b,bool),bool)),fun(fun(X_b,bool),fun(fun(X_b,bool),bool)),combc(fun(X_b,bool),fun(X_b,bool),bool),ord_less_eq(fun(X_b,bool))),A_1))))
     <= hBOOL(hAPP(fun(X_b,bool),bool,finite_finite(X_b),A_1)) ) ).

fof(fact_7_card__insert__le,axiom,
    ! [X_b,X_2,A_1] :
      ( hBOOL(hAPP(fun(X_b,bool),bool,finite_finite(X_b),A_1))
     => hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),hAPP(fun(X_b,bool),nat,finite_card(X_b),A_1)),hAPP(fun(X_b,bool),nat,finite_card(X_b),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),X_2),A_1)))) ) ).

fof(tsy_c_Nat_OSuc_res,hypothesis,
    suc = ti(fun(nat,nat),suc) ).

fof(fact_87_insert__mono,axiom,
    ! [X_b,A_2,C,D] :
      ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),ord_less_eq(fun(X_b,bool)),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),A_2),C)),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),A_2),D)))
     <= hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),ord_less_eq(fun(X_b,bool)),C),D)) ) ).

fof(help_fconj_2_1_U,axiom,
    ! [P,Q] :
      ( ~ hBOOL(hAPP(bool,bool,hAPP(bool,fun(bool,bool),fconj,P),Q))
      | hBOOL(P) ) ).

fof(fact_10_finite__Collect__conjI,axiom,
    ! [X_b,Q_1,Pa] :
      ( ( hBOOL(hAPP(fun(X_b,bool),bool,finite_finite(X_b),hAPP(fun(X_b,bool),fun(X_b,bool),collect(X_b),Q_1)))
        | hBOOL(hAPP(fun(X_b,bool),bool,finite_finite(X_b),hAPP(fun(X_b,bool),fun(X_b,bool),collect(X_b),Pa))) )
     => hBOOL(hAPP(fun(X_b,bool),bool,finite_finite(X_b),hAPP(fun(X_b,bool),fun(X_b,bool),collect(X_b),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,fun(bool,bool)),fun(fun(X_b,bool),fun(X_b,bool)),combs(X_b,bool,bool),hAPP(fun(X_b,bool),fun(X_b,fun(bool,bool)),hAPP(fun(bool,fun(bool,bool)),fun(fun(X_b,bool),fun(X_b,fun(bool,bool))),combb(bool,fun(bool,bool),X_b),fconj),Pa)),Q_1)))) ) ).

fof(fact_95_Suc__le__D,axiom,
    ! [N_1,M_1] :
      ( ? [M] : hAPP(nat,nat,suc,M) = M_1
     <= hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),hAPP(nat,nat,suc,N_1)),M_1)) ) ).

fof(fact_45_diff__le__self,axiom,
    ! [M_2,N_1] : hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),hAPP(nat,nat,hAPP(nat,fun(nat,nat),minus_minus(nat),M_2),N_1)),M_2)) ).

fof(fact_11_Suc__diff__le,axiom,
    ! [N_1,M_2] :
      ( hAPP(nat,nat,hAPP(nat,fun(nat,nat),minus_minus(nat),hAPP(nat,nat,suc,M_2)),N_1) = hAPP(nat,nat,suc,hAPP(nat,nat,hAPP(nat,fun(nat,nat),minus_minus(nat),M_2),N_1))
     <= hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),N_1),M_2)) ) ).

fof(fact_98_finite__nat__set__iff__bounded__le,axiom,
    ! [N] :
      ( hBOOL(hAPP(fun(nat,bool),bool,finite_finite(nat),N))
    <=> ? [M] :
        ! [X_1] :
          ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),X_1),M))
         <= hBOOL(hAPP(fun(nat,bool),bool,hAPP(nat,fun(fun(nat,bool),bool),member(nat),X_1),N)) ) ) ).

fof(fact_0_assms_I1_J,axiom,
    ! [Ts,G_1] :
      ( hBOOL(hAPP(fun(x_a,bool),bool,hAPP(fun(x_a,bool),fun(fun(x_a,bool),bool),ord_less_eq(fun(x_a,bool)),Ts),G_1))
     => hBOOL(hAPP(fun(x_a,bool),bool,hAPP(fun(x_a,bool),fun(fun(x_a,bool),bool),p,G_1),Ts)) ) ).

fof(fact_37_Suc__diff__diff,axiom,
    ! [M_2,N_1,K_1] : hAPP(nat,nat,hAPP(nat,fun(nat,nat),minus_minus(nat),hAPP(nat,nat,hAPP(nat,fun(nat,nat),minus_minus(nat),hAPP(nat,nat,suc,M_2)),N_1)),hAPP(nat,nat,suc,K_1)) = hAPP(nat,nat,hAPP(nat,fun(nat,nat),minus_minus(nat),hAPP(nat,nat,hAPP(nat,fun(nat,nat),minus_minus(nat),M_2),N_1)),K_1) ).

fof(fact_6_card__seteq,axiom,
    ! [X_b,A_1,B] :
      ( ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),ord_less_eq(fun(X_b,bool)),A_1),B))
       => ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),hAPP(fun(X_b,bool),nat,finite_card(X_b),B)),hAPP(fun(X_b,bool),nat,finite_card(X_b),A_1)))
         => ti(fun(X_b,bool),A_1) = ti(fun(X_b,bool),B) ) )
     <= hBOOL(hAPP(fun(X_b,bool),bool,finite_finite(X_b),B)) ) ).

fof(fact_47_finite__subset__image,axiom,
    ! [X_c,X_b,F,A_1,B] :
      ( ( ? [C_2] :
            ( hBOOL(hAPP(fun(X_c,bool),bool,finite_finite(X_c),C_2))
            & ti(fun(X_b,bool),B) = hAPP(fun(X_c,bool),fun(X_b,bool),hAPP(fun(X_c,X_b),fun(fun(X_c,bool),fun(X_b,bool)),image(X_c,X_b),F),C_2)
            & hBOOL(hAPP(fun(X_c,bool),bool,hAPP(fun(X_c,bool),fun(fun(X_c,bool),bool),ord_less_eq(fun(X_c,bool)),C_2),A_1)) )
       <= hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),ord_less_eq(fun(X_b,bool)),B),hAPP(fun(X_c,bool),fun(X_b,bool),hAPP(fun(X_c,X_b),fun(fun(X_c,bool),fun(X_b,bool)),image(X_c,X_b),F),A_1))) )
     <= hBOOL(hAPP(fun(X_b,bool),bool,finite_finite(X_b),B)) ) ).

fof(conj_1,hypothesis,
    hBOOL(hAPP(fun(x_a,bool),bool,hAPP(fun(x_a,bool),fun(fun(x_a,bool),bool),ord_less_eq(fun(x_a,bool)),g),hAPP(fun(pname,bool),fun(x_a,bool),hAPP(fun(pname,x_a),fun(fun(pname,bool),fun(x_a,bool)),image(pname,x_a),mgt_call),u))) ).

fof(fact_97_order__refl,axiom,
    ! [X_a] :
      ( ! [X] : hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X),X))
     <= preorder(X_a) ) ).

fof(fact_63_insertI2,axiom,
    ! [X_b,B_1,A_2,B] :
      ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),A_2),B))
     => hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),A_2),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),B_1),B))) ) ).

fof(fact_19_n__not__Suc__n,axiom,
    ! [N_1] : N_1 != hAPP(nat,nat,suc,N_1) ).

