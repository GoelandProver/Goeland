fof(fact_621_right__diff__distrib__number__of,axiom,
    ! [V_4,B_47,C_26] : hAPP_int_int(minus_minus_int(hAPP_int_int(times_times_int(number_number_of_int(V_4)),B_47)),hAPP_int_int(times_times_int(number_number_of_int(V_4)),C_26)) = hAPP_int_int(times_times_int(number_number_of_int(V_4)),hAPP_int_int(minus_minus_int(B_47),C_26)) ).

fof(fact_777_mult__mono,axiom,
    ! [C_14,D_4,A_30,B_28] :
      ( ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,C_14),D_4))
       => ( ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,zero_zero_int),C_14))
           => hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,hAPP_int_int(times_times_int(A_30),C_14)),hAPP_int_int(times_times_int(B_28),D_4))) )
         <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,zero_zero_int),B_28)) ) )
     <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,A_30),B_28)) ) ).

fof(fact_1070_Wilson__Russ,axiom,
    ! [P_1] :
      ( hBOOL(hAPP_int_bool(zcong(zfact(hAPP_int_int(minus_minus_int(P_1),one_one_int)),number_number_of_int(min)),P_1))
     <= hBOOL(hAPP_int_bool(zprime,P_1)) ) ).

fof(fact_258_mult__numeral__1__right,axiom,
    ! [A_92] :
      ( is_int(A_92)
     => A_92 = hAPP_int_int(times_times_int(A_92),number_number_of_int(bit1(pls))) ) ).

fof(fact_357_double__eq__0__iff,axiom,
    ! [A_2] :
      ( zero_zero_real = A_2
    <=> hAPP_real_real(plus_plus_real(A_2),A_2) = zero_zero_real ) ).

fof(fact_1102_wset__mem__imp__or,axiom,
    ! [B_2,P_3,A_2] :
      ( ( is_int(B_2)
        & is_int(A_2) )
     => ( ( ( hBOOL(member_int(B_2,wset(A_2,P_3)))
           => ( B_2 = A_2
              | inv(P_3,A_2) = B_2 ) )
         <= ~ hBOOL(member_int(B_2,wset(hAPP_int_int(minus_minus_int(A_2),one_one_int),P_3))) )
       <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,one_one_int),A_2)) ) ) ).

fof(fact_629_zcong__def,axiom,
    ! [A_2,B_2,Ma] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(dvd_dvd_int,Ma),hAPP_int_int(minus_minus_int(A_2),B_2)))
    <=> hBOOL(hAPP_int_bool(zcong(A_2,B_2),Ma)) ) ).

fof(fact_233_comm__semiring__1__class_Onormalizing__semiring__rules_I4_J,axiom,
    ! [M_10] : hAPP_nat_nat(plus_plus_nat(M_10),M_10) = hAPP_nat_nat(times_times_nat(hAPP_nat_nat(plus_plus_nat(one_one_nat),one_one_nat)),M_10) ).

fof(fact_1163_mod__neg__neg__trivial,axiom,
    ! [B,A] :
      ( is_int(A)
     => ( ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,B),A))
         => hAPP_int_int(div_mod_int(A),B) = A )
       <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,A),zero_zero_int)) ) ) ).

fof(fact_142_zmult__assoc,axiom,
    ! [Z1,Z2,Z3] : hAPP_int_int(times_times_int(hAPP_int_int(times_times_int(Z1),Z2)),Z3) = hAPP_int_int(times_times_int(Z1),hAPP_int_int(times_times_int(Z2),Z3)) ).

fof(fact_643_zcong__id,axiom,
    ! [M] : hBOOL(hAPP_int_bool(zcong(M,zero_zero_int),M)) ).

fof(fact_4_p,axiom,
    hBOOL(hAPP_int_bool(zprime,hAPP_int_int(plus_plus_int(hAPP_int_int(times_times_int(number_number_of_int(bit0(bit0(bit1(pls))))),m)),one_one_int))) ).

fof(fact_918_dvd_Oantisym__conv,axiom,
    ! [Y_2,X_2] :
      ( ( Y_2 = X_2
      <=> hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,X_2),Y_2)) )
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,Y_2),X_2)) ) ).

fof(fact_633_zle__diff1__eq,axiom,
    ! [W_1,Z_1] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,W_1),hAPP_int_int(minus_minus_int(Z_1),one_one_int)))
    <=> hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,W_1),Z_1)) ) ).

fof(fact_507_even__power__le__0__imp__0,axiom,
    ! [A_58,K_4] :
      ( is_int(A_58)
     => ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,hAPP_nat_int(power_power_int(A_58),hAPP_nat_nat(times_times_nat(number_number_of_nat(bit0(bit1(pls)))),K_4))),zero_zero_int))
       => zero_zero_int = A_58 ) ) ).

fof(fact_744_dvd__mult2,axiom,
    ! [C_16,A_37,B_34] :
      ( hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(dvd_dvd_real,A_37),B_34))
     => hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(dvd_dvd_real,A_37),hAPP_real_real(times_times_real(B_34),C_16))) ) ).

fof(fact_627_less__bin__lemma,axiom,
    ! [K,L_1] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,K),L_1))
    <=> hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,hAPP_int_int(minus_minus_int(K),L_1)),zero_zero_int)) ) ).

fof(fact_360_zadd__0,axiom,
    ! [Z] :
      ( is_int(Z)
     => hAPP_int_int(plus_plus_int(zero_zero_int),Z) = Z ) ).

fof(fact_661_zcong__zmult__prop3,axiom,
    ! [Y_1,X_1,P_1] :
      ( hBOOL(hAPP_int_bool(zprime,P_1))
     => ( ~ hBOOL(hAPP_int_bool(zcong(X_1,zero_zero_int),P_1))
       => ( ~ hBOOL(hAPP_int_bool(zcong(hAPP_int_int(times_times_int(X_1),Y_1),zero_zero_int),P_1))
         <= ~ hBOOL(hAPP_int_bool(zcong(Y_1,zero_zero_int),P_1)) ) ) ) ).

fof(fact_1141_zmod__eq__0__iff,axiom,
    ! [Ma,D] :
      ( is_int(Ma)
     => ( ? [Q_2] :
            ( is_int(Q_2)
            & hAPP_int_int(times_times_int(D),Q_2) = Ma )
      <=> zero_zero_int = hAPP_int_int(div_mod_int(Ma),D) ) ) ).

fof(fact_917_dvd_Ole__imp__less__or__eq,axiom,
    ! [X_1,Y_1] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,X_1),Y_1))
     => ( Y_1 = X_1
        | ( ~ hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,Y_1),X_1))
          & hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,X_1),Y_1)) ) ) ) ).

fof(fact_587_Nat__Transfer_Otransfer__nat__int__function__closures_I1_J,axiom,
    ! [Y_1,X_1] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,zero_zero_int),X_1))
     => ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,zero_zero_int),hAPP_int_int(plus_plus_int(X_1),Y_1)))
       <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,zero_zero_int),Y_1)) ) ) ).

fof(fact_1073_MultInvPair__distinct,axiom,
    ! [J_1,A,P_1] :
      ( hBOOL(hAPP_int_bool(zprime,P_1))
     => ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,number_number_of_int(bit0(bit1(pls)))),P_1))
       => ( ~ hBOOL(hAPP_int_bool(zcong(A,zero_zero_int),P_1))
         => ( ~ hBOOL(hAPP_int_bool(zcong(J_1,zero_zero_int),P_1))
           => ( ~ hBOOL(hAPP_int_bool(zcong(J_1,hAPP_int_int(times_times_int(A),multInv(P_1,J_1))),P_1))
             <= ~ hBOOL(hAPP_int_bool(quadRes(P_1),A)) ) ) ) ) ) ).

fof(fact_1045_nat__mult__eq__cancel__disj,axiom,
    ! [K,Ma,N] :
      ( ( zero_zero_nat = K
        | N = Ma )
    <=> hAPP_nat_nat(times_times_nat(K),N) = hAPP_nat_nat(times_times_nat(K),Ma) ) ).

fof(fact_1026_nat__mult__1__right,axiom,
    ! [N_1] : hAPP_nat_nat(times_times_nat(N_1),one_one_nat) = N_1 ).

fof(fact_18_one__power2,axiom,
    one_one_real = hAPP_nat_real(power_power_real(one_one_real),number_number_of_nat(bit0(bit1(pls)))) ).

fof(fact_21_comm__semiring__1__class_Onormalizing__semiring__rules_I29_J,axiom,
    ! [X_26] : hAPP_nat_nat(times_times_nat(X_26),X_26) = hAPP_nat_nat(power_power_nat(X_26),number_number_of_nat(bit0(bit1(pls)))) ).

fof(fact_424_power__one__right,axiom,
    ! [A_70] : hAPP_nat_real(power_power_real(A_70),one_one_nat) = A_70 ).

fof(fact_579_zcong__zadd,axiom,
    ! [C,D_5,A,B,M] :
      ( hBOOL(hAPP_int_bool(zcong(A,B),M))
     => ( hBOOL(hAPP_int_bool(zcong(hAPP_int_int(plus_plus_int(A),C),hAPP_int_int(plus_plus_int(B),D_5)),M))
       <= hBOOL(hAPP_int_bool(zcong(C,D_5),M)) ) ) ).

fof(fact_833_mult__less__cancel__left__neg,axiom,
    ! [A_2,B_2,C_2] :
      ( ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,hAPP_int_int(times_times_int(C_2),A_2)),hAPP_int_int(times_times_int(C_2),B_2)))
      <=> hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,B_2),A_2)) )
     <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,C_2),zero_zero_int)) ) ).

fof(fact_1034_mult__less__mono1,axiom,
    ! [K_1,I_1,J_1] :
      ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,zero_zero_nat),K_1))
       => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,hAPP_nat_nat(times_times_nat(I_1),K_1)),hAPP_nat_nat(times_times_nat(J_1),K_1))) )
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,I_1),J_1)) ) ).

fof(fact_788_mult__left__mono,axiom,
    ! [C_9,A_25,B_23] :
      ( ( hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_eq_real,zero_zero_real),C_9))
       => hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_eq_real,hAPP_real_real(times_times_real(C_9),A_25)),hAPP_real_real(times_times_real(C_9),B_23))) )
     <= hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_eq_real,A_25),B_23)) ) ).

fof(fact_1054_nat__eq__add__iff1,axiom,
    ! [U,Ma,N,J_2,I_2] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,J_2),I_2))
     => ( N = hAPP_nat_nat(plus_plus_nat(hAPP_nat_nat(times_times_nat(hAPP_nat_nat(minus_minus_nat(I_2),J_2)),U)),Ma)
      <=> hAPP_nat_nat(plus_plus_nat(hAPP_nat_nat(times_times_nat(J_2),U)),N) = hAPP_nat_nat(plus_plus_nat(hAPP_nat_nat(times_times_nat(I_2),U)),Ma) ) ) ).

fof(fact_170_crossproduct__eq,axiom,
    ! [W_1,Y_2,X_2,Z_1] :
      ( ( is_int(X_2)
        & is_int(Z_1)
        & is_int(Y_2)
        & is_int(W_1) )
     => ( hAPP_int_int(plus_plus_int(hAPP_int_int(times_times_int(W_1),Y_2)),hAPP_int_int(times_times_int(X_2),Z_1)) = hAPP_int_int(plus_plus_int(hAPP_int_int(times_times_int(W_1),Z_1)),hAPP_int_int(times_times_int(X_2),Y_2))
      <=> ( X_2 = W_1
          | Y_2 = Z_1 ) ) ) ).

fof(fact_245_add__number__of__left,axiom,
    ! [V_11,W_10,Z_7] : hAPP_int_int(plus_plus_int(number_number_of_int(V_11)),hAPP_int_int(plus_plus_int(number_number_of_int(W_10)),Z_7)) = hAPP_int_int(plus_plus_int(number_number_of_int(hAPP_int_int(plus_plus_int(V_11),W_10))),Z_7) ).

fof(fact_7_zadd__power2,axiom,
    ! [A,B] : hAPP_int_int(plus_plus_int(hAPP_int_int(plus_plus_int(hAPP_nat_int(power_power_int(A),number_number_of_nat(bit0(bit1(pls))))),hAPP_int_int(times_times_int(hAPP_int_int(times_times_int(number_number_of_int(bit0(bit1(pls)))),A)),B))),hAPP_nat_int(power_power_int(B),number_number_of_nat(bit0(bit1(pls))))) = hAPP_nat_int(power_power_int(hAPP_int_int(plus_plus_int(A),B)),number_number_of_nat(bit0(bit1(pls)))) ).

fof(fact_610__096_126_AQuadRes_A_I4_A_K_Am_A_L_A1_J_A_N1_A_061_061_062_ALegendre_A_N,axiom,
    ( one_one_int != legendre(number_number_of_int(min),hAPP_int_int(plus_plus_int(hAPP_int_int(times_times_int(number_number_of_int(bit0(bit0(bit1(pls))))),m)),one_one_int))
   <= ~ hBOOL(hAPP_int_bool(quadRes(hAPP_int_int(plus_plus_int(hAPP_int_int(times_times_int(number_number_of_int(bit0(bit0(bit1(pls))))),m)),one_one_int)),number_number_of_int(min))) ) ).

fof(fact_658_Int2_Ozcong__zero,axiom,
    ! [M,X_1] :
      ( is_int(X_1)
     => ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,zero_zero_int),X_1))
       => ( ( hBOOL(hAPP_int_bool(zcong(X_1,zero_zero_int),M))
           => zero_zero_int = X_1 )
         <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,X_1),M)) ) ) ) ).

fof(fact_101_comm__semiring__1__class_Onormalizing__semiring__rules_I16_J,axiom,
    ! [Lx_3,Ly_1,Rx_3] : hAPP_nat_nat(times_times_nat(hAPP_nat_nat(times_times_nat(Lx_3),Rx_3)),Ly_1) = hAPP_nat_nat(times_times_nat(hAPP_nat_nat(times_times_nat(Lx_3),Ly_1)),Rx_3) ).

fof(fact_529_rel__simps_I9_J,axiom,
    ! [K] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,min),bit1(K)))
    <=> hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,min),K)) ) ).

fof(fact_336_power__0__left,axiom,
    ! [N_29] :
      ( ( zero_zero_real = hAPP_nat_real(power_power_real(zero_zero_real),N_29)
       <= N_29 != zero_zero_nat )
      & ( hAPP_nat_real(power_power_real(zero_zero_real),N_29) = one_one_real
       <= N_29 = zero_zero_nat ) ) ).

fof(fact_732_dvd__mult__left,axiom,
    ! [A_41,B_38,C_19] :
      ( hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(dvd_dvd_real,hAPP_real_real(times_times_real(A_41),B_38)),C_19))
     => hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(dvd_dvd_real,A_41),C_19)) ) ).

fof(fact_766_nat__mult__eq__one,axiom,
    ! [N,Ma] :
      ( hAPP_nat_nat(times_times_nat(N),Ma) = one_one_nat
    <=> ( one_one_nat = N
        & one_one_nat = Ma ) ) ).

fof(fact_313_power__eq__0__iff,axiom,
    ! [A_2,N] :
      ( hAPP_nat_real(power_power_real(A_2),N) = zero_zero_real
    <=> ( A_2 = zero_zero_real
        & zero_zero_nat != N ) ) ).

fof(fact_714_zero__neq__one,axiom,
    one_one_int != zero_zero_int ).

fof(fact_1032_nat__diff__split__asm,axiom,
    ! [P_2,A_2,B_2] :
      ( ~ ( ? [D_2] :
              ( A_2 = hAPP_nat_nat(plus_plus_nat(B_2),D_2)
              & ~ hBOOL(hAPP_nat_bool(P_2,D_2)) )
          | ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,A_2),B_2))
            & ~ hBOOL(hAPP_nat_bool(P_2,zero_zero_nat)) ) )
    <=> hBOOL(hAPP_nat_bool(P_2,hAPP_nat_nat(minus_minus_nat(A_2),B_2))) ) ).

fof(fact_1028_nat__mult__1,axiom,
    ! [N_1] : hAPP_nat_nat(times_times_nat(one_one_nat),N_1) = N_1 ).

fof(fact_625_diff__bin__simps_I10_J,axiom,
    ! [K_1,L] : bit0(hAPP_int_int(minus_minus_int(K_1),L)) = hAPP_int_int(minus_minus_int(bit1(K_1)),bit1(L)) ).

fof(fact_66_rel__simps_I34_J,axiom,
    ! [K,L_1] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,bit1(K)),bit1(L_1)))
    <=> hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,K),L_1)) ) ).

fof(fact_552_zmult__eq__1__iff,axiom,
    ! [Ma,N] :
      ( ( is_int(Ma)
        & is_int(N) )
     => ( hAPP_int_int(times_times_int(Ma),N) = one_one_int
      <=> ( ( number_number_of_int(min) = N
            & Ma = number_number_of_int(min) )
          | ( Ma = one_one_int
            & N = one_one_int ) ) ) ) ).

fof(fact_536_rel__simps_I20_J,axiom,
    ~ hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,pls),min)) ).

fof(fact_0_tpos,axiom,
    hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,one_one_int),t)) ).

fof(fact_468_power__one,axiom,
    ! [N_15] : one_one_int = hAPP_nat_int(power_power_int(one_one_int),N_15) ).

fof(fact_8_zadd__power3,axiom,
    ! [A,B] : hAPP_nat_int(power_power_int(hAPP_int_int(plus_plus_int(A),B)),number_number_of_nat(bit1(bit1(pls)))) = hAPP_int_int(plus_plus_int(hAPP_int_int(plus_plus_int(hAPP_int_int(plus_plus_int(hAPP_nat_int(power_power_int(A),number_number_of_nat(bit1(bit1(pls))))),hAPP_int_int(times_times_int(hAPP_int_int(times_times_int(number_number_of_int(bit1(bit1(pls)))),hAPP_nat_int(power_power_int(A),number_number_of_nat(bit0(bit1(pls)))))),B))),hAPP_int_int(times_times_int(hAPP_int_int(times_times_int(number_number_of_int(bit1(bit1(pls)))),A)),hAPP_nat_int(power_power_int(B),number_number_of_nat(bit0(bit1(pls))))))),hAPP_nat_int(power_power_int(B),number_number_of_nat(bit1(bit1(pls))))) ).

fof(fact_1171_divmod__int__rel__mod__eq,axiom,
    ! [A_1,B_1,Q_3,Y_1] :
      ( ( A_1 = hAPP_int_int(plus_plus_int(hAPP_int_int(times_times_int(B_1),Q_3)),Y_1)
       => ( ( ( ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,B_1),Y_1))
                & hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,Y_1),zero_zero_int)) )
             <= ~ hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,zero_zero_int),B_1)) )
            & ( ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,Y_1),B_1))
                & hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,zero_zero_int),Y_1)) )
             <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,zero_zero_int),B_1)) ) )
         => ( B_1 != zero_zero_int
           => hAPP_int_int(div_mod_int(A_1),B_1) = Y_1 ) ) )
     <= ( is_int(Y_1)
        & is_int(B_1) ) ) ).

fof(fact_40_zle__antisym,axiom,
    ! [Z,W] :
      ( ( is_int(W)
        & is_int(Z) )
     => ( ( Z = W
         <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,W),Z)) )
       <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,Z),W)) ) ) ).

fof(fact_803_mult__nonneg__nonpos,axiom,
    ! [B_18,A_20] :
      ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(times_times_nat(A_20),B_18)),zero_zero_nat))
       <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,B_18),zero_zero_nat)) )
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,zero_zero_nat),A_20)) ) ).

fof(fact_998_nat__add__left__cancel__le,axiom,
    ! [K,Ma,N] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(plus_plus_nat(K),Ma)),hAPP_nat_nat(plus_plus_nat(K),N)))
    <=> hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,Ma),N)) ) ).

fof(fact_150_rel__simps_I16_J,axiom,
    ! [K,L_1] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,bit1(K)),bit0(L_1)))
    <=> hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,K),L_1)) ) ).

fof(fact_1130_pow__divides__pow__int,axiom,
    ! [A,N_1,B] :
      ( ( zero_zero_nat != N_1
       => hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(dvd_dvd_int,A),B)) )
     <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(dvd_dvd_int,hAPP_nat_int(power_power_int(A),N_1)),hAPP_nat_int(power_power_int(B),N_1))) ) ).

fof(fact_173_comm__semiring__1__class_Onormalizing__semiring__rules_I1_J,axiom,
    ! [A_102,M_13,B_59] : hAPP_int_int(plus_plus_int(hAPP_int_int(times_times_int(A_102),M_13)),hAPP_int_int(times_times_int(B_59),M_13)) = hAPP_int_int(times_times_int(hAPP_int_int(plus_plus_int(A_102),B_59)),M_13) ).

fof(fact_54_le__number__of,axiom,
    ! [X_2,Y_2] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,X_2),Y_2))
    <=> hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_eq_real,number267125858f_real(X_2)),number267125858f_real(Y_2))) ) ).

fof(fact_500_power__strict__increasing,axiom,
    ! [A_59,N_8,N_7] :
      ( ( hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_real,one_one_real),A_59))
       => hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_real,hAPP_nat_real(power_power_real(A_59),N_8)),hAPP_nat_real(power_power_real(A_59),N_7))) )
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,N_8),N_7)) ) ).

fof(gsy_c_hAPP_000tc__Int__Oint_000tc__Int__Oint,hypothesis,
    ! [B_1_1,B_2_1] :
      ( is_int(hAPP_int_int(B_1_1,B_2_1))
     <= is_int(B_2_1) ) ).

fof(fact_699_divisors__zero,axiom,
    ! [A_50,B_44] :
      ( hAPP_nat_nat(times_times_nat(A_50),B_44) = zero_zero_nat
     => ( zero_zero_nat = B_44
        | A_50 = zero_zero_nat ) ) ).

fof(fact_834_zero__less__mult__pos2,axiom,
    ! [B_9,A_10] :
      ( ( hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_real,zero_zero_real),A_10))
       => hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_real,zero_zero_real),B_9)) )
     <= hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_real,zero_zero_real),hAPP_real_real(times_times_real(B_9),A_10))) ) ).

fof(fact_199_rel__simps_I38_J,axiom,
    ! [L_1] :
      ( ( pls = L_1
      <=> bit0(L_1) = pls )
     <= is_int(L_1) ) ).

fof(fact_547_nat__number__of__Pls,axiom,
    zero_zero_nat = number_number_of_nat(pls) ).

fof(fact_112_comm__semiring__1__class_Onormalizing__semiring__rules_I7_J,axiom,
    ! [A_111,B_63] : hAPP_int_int(times_times_int(B_63),A_111) = hAPP_int_int(times_times_int(A_111),B_63) ).

fof(fact_573_IntPrimes_Ozcong__zero,axiom,
    ! [A_2,B_2] :
      ( ( A_2 = B_2
      <=> hBOOL(hAPP_int_bool(zcong(A_2,B_2),zero_zero_int)) )
     <= ( is_int(A_2)
        & is_int(B_2) ) ) ).

fof(fact_1157_zcong__zmod__eq,axiom,
    ! [A_2,B_2,Ma] :
      ( ( hBOOL(hAPP_int_bool(zcong(A_2,B_2),Ma))
      <=> hAPP_int_int(div_mod_int(B_2),Ma) = hAPP_int_int(div_mod_int(A_2),Ma) )
     <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,zero_zero_int),Ma)) ) ).

fof(fact_239_mult__number__of__left,axiom,
    ! [V_14,W_13,Z_8] : hAPP_int_int(times_times_int(number_number_of_int(V_14)),hAPP_int_int(times_times_int(number_number_of_int(W_13)),Z_8)) = hAPP_int_int(times_times_int(number_number_of_int(hAPP_int_int(times_times_int(V_14),W_13))),Z_8) ).

fof(fact_304_power__increasing__iff,axiom,
    ! [X_2,Y_2,B_2] :
      ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(power_power_nat(B_2),X_2)),hAPP_nat_nat(power_power_nat(B_2),Y_2)))
      <=> hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,X_2),Y_2)) )
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,one_one_nat),B_2)) ) ).

fof(fact_1149_zmod__zmult1__eq,axiom,
    ! [A,B,C] : hAPP_int_int(div_mod_int(hAPP_int_int(times_times_int(A),B)),C) = hAPP_int_int(div_mod_int(hAPP_int_int(times_times_int(A),hAPP_int_int(div_mod_int(B),C))),C) ).

fof(fact_520_Bit1__Min,axiom,
    min = bit1(min) ).

fof(fact_720_combine__common__factor,axiom,
    ! [A_46,E,B_42,C_23] : hAPP_int_int(plus_plus_int(hAPP_int_int(times_times_int(A_46),E)),hAPP_int_int(plus_plus_int(hAPP_int_int(times_times_int(B_42),E)),C_23)) = hAPP_int_int(plus_plus_int(hAPP_int_int(times_times_int(hAPP_int_int(plus_plus_int(A_46),B_42)),E)),C_23) ).

fof(fact_622_left__diff__distrib__number__of,axiom,
    ! [A_55,B_46,V_3] : hAPP_real_real(times_times_real(hAPP_real_real(minus_minus_real(A_55),B_46)),number267125858f_real(V_3)) = hAPP_real_real(minus_minus_real(hAPP_real_real(times_times_real(A_55),number267125858f_real(V_3))),hAPP_real_real(times_times_real(B_46),number267125858f_real(V_3))) ).

fof(fact_679_dvd__refl,axiom,
    ! [A_52] : hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,A_52),A_52)) ).

fof(fact_1152_zmod__zero,axiom,
    ! [B] : hAPP_int_int(div_mod_int(zero_zero_int),B) = zero_zero_int ).

fof(fact_391_semiring__norm_I112_J,axiom,
    zero_zero_int = number_number_of_int(pls) ).

fof(fact_742_dvd__mult,axiom,
    ! [B_35,A_38,C_17] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,A_38),hAPP_nat_nat(times_times_nat(B_35),C_17)))
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,A_38),C_17)) ) ).

fof(fact_440_zero__power2,axiom,
    zero_zero_int = hAPP_nat_int(power_power_int(zero_zero_int),number_number_of_nat(bit0(bit1(pls)))) ).

fof(fact_618_zcong__zdiff,axiom,
    ! [C,D_5,A,B,M] :
      ( hBOOL(hAPP_int_bool(zcong(A,B),M))
     => ( hBOOL(hAPP_int_bool(zcong(hAPP_int_int(minus_minus_int(A),C),hAPP_int_int(minus_minus_int(B),D_5)),M))
       <= hBOOL(hAPP_int_bool(zcong(C,D_5),M)) ) ) ).

fof(fact_590_zcong__iff__lin,axiom,
    ! [A_2,B_2,Ma] :
      ( ( hBOOL(hAPP_int_bool(zcong(A_2,B_2),Ma))
      <=> ? [K_2] :
            ( is_int(K_2)
            & hAPP_int_int(plus_plus_int(A_2),hAPP_int_int(times_times_int(Ma),K_2)) = B_2 ) )
     <= is_int(B_2) ) ).

fof(fact_533_bin__less__0__simps_I2_J,axiom,
    hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,min),zero_zero_int)) ).

fof(fact_829_mult__neg__pos,axiom,
    ! [B_10,A_11] :
      ( ( hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_real,hAPP_real_real(times_times_real(A_11),B_10)),zero_zero_real))
       <= hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_real,zero_zero_real),B_10)) )
     <= hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_real,A_11),zero_zero_real)) ) ).

fof(fact_1132_mult__left__cancel,axiom,
    ! [N_1,M,K_1] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,zero_zero_nat),K_1))
     => ( hAPP_nat_nat(times_times_nat(K_1),M) = hAPP_nat_nat(times_times_nat(K_1),N_1)
       => N_1 = M ) ) ).

fof(fact_74_less__eq__number__of__int__code,axiom,
    ! [K,L_1] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,number_number_of_int(K)),number_number_of_int(L_1)))
    <=> hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,K),L_1)) ) ).

fof(fact_41_comm__semiring__1__class_Onormalizing__semiring__rules_I31_J,axiom,
    ! [X_24,P_7,Q_7] : hAPP_nat_int(power_power_int(X_24),hAPP_nat_nat(times_times_nat(P_7),Q_7)) = hAPP_nat_int(power_power_int(hAPP_nat_int(power_power_int(X_24),P_7)),Q_7) ).

fof(fact_408_power__Suc__less,axiom,
    ! [N_19,A_71] :
      ( ( hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_real,hAPP_real_real(times_times_real(A_71),hAPP_nat_real(power_power_real(A_71),N_19))),hAPP_nat_real(power_power_real(A_71),N_19)))
       <= hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_real,A_71),one_one_real)) )
     <= hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_real,zero_zero_real),A_71)) ) ).

fof(fact_225_right__distrib__number__of,axiom,
    ! [V_15,B_56,C_28] : hAPP_real_real(times_times_real(number267125858f_real(V_15)),hAPP_real_real(plus_plus_real(B_56),C_28)) = hAPP_real_real(plus_plus_real(hAPP_real_real(times_times_real(number267125858f_real(V_15)),B_56)),hAPP_real_real(times_times_real(number267125858f_real(V_15)),C_28)) ).

fof(fact_804_mult__nonneg__nonpos,axiom,
    ! [B_18,A_20] :
      ( ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,B_18),zero_zero_int))
       => hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,hAPP_int_int(times_times_int(A_20),B_18)),zero_zero_int)) )
     <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,zero_zero_int),A_20)) ) ).

fof(fact_960_add__eq__self__zero,axiom,
    ! [M,N_1] :
      ( M = hAPP_nat_nat(plus_plus_nat(M),N_1)
     => zero_zero_nat = N_1 ) ).

fof(fact_222_left__distrib__number__of,axiom,
    ! [A_98,B_57,V_16] : hAPP_real_real(times_times_real(hAPP_real_real(plus_plus_real(A_98),B_57)),number267125858f_real(V_16)) = hAPP_real_real(plus_plus_real(hAPP_real_real(times_times_real(A_98),number267125858f_real(V_16))),hAPP_real_real(times_times_real(B_57),number267125858f_real(V_16))) ).

fof(gsy_c_Groups_Oone__class_Oone_000tc__Int__Oint,hypothesis,
    is_int(one_one_int) ).

fof(fact_961_add__is__0,axiom,
    ! [Ma,N] :
      ( ( zero_zero_nat = N
        & zero_zero_nat = Ma )
    <=> zero_zero_nat = hAPP_nat_nat(plus_plus_nat(Ma),N) ) ).

fof(fact_1153_zdiff__zmod__right,axiom,
    ! [X_1,Y_1,M] : hAPP_int_int(div_mod_int(hAPP_int_int(minus_minus_int(X_1),Y_1)),M) = hAPP_int_int(div_mod_int(hAPP_int_int(minus_minus_int(X_1),hAPP_int_int(div_mod_int(Y_1),M))),M) ).

fof(fact_586_Nat__Transfer_Otransfer__nat__int__function__closures_I2_J,axiom,
    ! [Y_1,X_1] :
      ( ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,zero_zero_int),hAPP_int_int(times_times_int(X_1),Y_1)))
       <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,zero_zero_int),Y_1)) )
     <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,zero_zero_int),X_1)) ) ).

fof(fact_189_comm__semiring__1__class_Onormalizing__semiring__rules_I11_J,axiom,
    ! [A_99] : hAPP_nat_nat(times_times_nat(one_one_nat),A_99) = A_99 ).

fof(fact_347_comm__semiring__1__class_Onormalizing__semiring__rules_I5_J,axiom,
    ! [A_80] :
      ( is_int(A_80)
     => A_80 = hAPP_int_int(plus_plus_int(zero_zero_int),A_80) ) ).

fof(fact_187_comm__semiring__1__class_Onormalizing__semiring__rules_I12_J,axiom,
    ! [A_100] : A_100 = hAPP_real_real(times_times_real(A_100),one_one_real) ).

fof(fact_866_real__two__squares__add__zero__iff,axiom,
    ! [X_2,Y_2] :
      ( zero_zero_real = hAPP_real_real(plus_plus_real(hAPP_real_real(times_times_real(X_2),X_2)),hAPP_real_real(times_times_real(Y_2),Y_2))
    <=> ( zero_zero_real = X_2
        & Y_2 = zero_zero_real ) ) ).

fof(fact_442_zero__eq__power2,axiom,
    ! [A_2] :
      ( ( A_2 = zero_zero_int
      <=> zero_zero_int = hAPP_nat_int(power_power_int(A_2),number_number_of_nat(bit0(bit1(pls)))) )
     <= is_int(A_2) ) ).

fof(fact_1039_dvd__imp__le,axiom,
    ! [K_1,N_1] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,K_1),N_1))
     => ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,K_1),N_1))
       <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,zero_zero_nat),N_1)) ) ) ).

fof(fact_210_zadd__zmult__distrib,axiom,
    ! [Z1,Z2,W] : hAPP_int_int(times_times_int(hAPP_int_int(plus_plus_int(Z1),Z2)),W) = hAPP_int_int(plus_plus_int(hAPP_int_int(times_times_int(Z1),W)),hAPP_int_int(times_times_int(Z2),W)) ).

fof(fact_688_real__mult__assoc,axiom,
    ! [Z1,Z2,Z3] : hAPP_real_real(times_times_real(hAPP_real_real(times_times_real(Z1),Z2)),Z3) = hAPP_real_real(times_times_real(Z1),hAPP_real_real(times_times_real(Z2),Z3)) ).

fof(fact_949_nat__mult__assoc,axiom,
    ! [M,N_1,K_1] : hAPP_nat_nat(times_times_nat(hAPP_nat_nat(times_times_nat(M),N_1)),K_1) = hAPP_nat_nat(times_times_nat(M),hAPP_nat_nat(times_times_nat(N_1),K_1)) ).

fof(fact_636_diff__bin__simps_I6_J,axiom,
    ! [L] : hAPP_int_int(minus_minus_int(min),bit1(L)) = bit0(hAPP_int_int(minus_minus_int(min),L)) ).

fof(fact_1182_mod__mult__self3,axiom,
    ! [K_1,N_1,M] : hAPP_nat_nat(div_mod_nat(M),N_1) = hAPP_nat_nat(div_mod_nat(hAPP_nat_nat(plus_plus_nat(hAPP_nat_nat(times_times_nat(K_1),N_1)),M)),N_1) ).

fof(fact_953_gr0I,axiom,
    ! [N_1] :
      ( zero_zero_nat != N_1
     => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,zero_zero_nat),N_1)) ) ).

fof(fact_972_mult__cancel1,axiom,
    ! [K,Ma,N] :
      ( hAPP_nat_nat(times_times_nat(K),Ma) = hAPP_nat_nat(times_times_nat(K),N)
    <=> ( zero_zero_nat = K
        | Ma = N ) ) ).

fof(fact_38_zless__linear,axiom,
    ! [X_1,Y_1] :
      ( ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,Y_1),X_1))
        | X_1 = Y_1
        | hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,X_1),Y_1)) )
     <= ( is_int(X_1)
        & is_int(Y_1) ) ) ).

fof(fact_1192_StandardRes__ubound,axiom,
    ! [X_1,P_1] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,zero_zero_int),P_1))
     => hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,standardRes(P_1,X_1)),P_1)) ) ).

fof(fact_1147_zdvd__zmod,axiom,
    ! [N_1,F,M] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(dvd_dvd_int,F),M))
     => ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(dvd_dvd_int,F),hAPP_int_int(div_mod_int(M),N_1)))
       <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(dvd_dvd_int,F),N_1)) ) ) ).

fof(fact_504_Euler_Oaux____1,axiom,
    ! [Y_1,X_1,P_1] :
      ( ~ hBOOL(hAPP_int_bool(zcong(X_1,zero_zero_int),P_1))
     => ( ~ hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(dvd_dvd_int,P_1),Y_1))
       <= hBOOL(hAPP_int_bool(zcong(hAPP_nat_int(power_power_int(Y_1),number_number_of_nat(bit0(bit1(pls)))),X_1),P_1)) ) ) ).

fof(fact_648_power2__diff,axiom,
    ! [X_7,Y_6] : hAPP_nat_real(power_power_real(hAPP_real_real(minus_minus_real(X_7),Y_6)),number_number_of_nat(bit0(bit1(pls)))) = hAPP_real_real(minus_minus_real(hAPP_real_real(plus_plus_real(hAPP_nat_real(power_power_real(X_7),number_number_of_nat(bit0(bit1(pls))))),hAPP_nat_real(power_power_real(Y_6),number_number_of_nat(bit0(bit1(pls)))))),hAPP_real_real(times_times_real(hAPP_real_real(times_times_real(number267125858f_real(bit0(bit1(pls)))),X_7)),Y_6)) ).

fof(fact_390_zprime__zdvd__power,axiom,
    ! [A,N_1,P_1] :
      ( ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(dvd_dvd_int,P_1),A))
       <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(dvd_dvd_int,P_1),hAPP_nat_int(power_power_int(A),N_1))) )
     <= hBOOL(hAPP_int_bool(zprime,P_1)) ) ).

fof(fact_366_power__mono,axiom,
    ! [N_26,A_77,B_52] :
      ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(power_power_nat(A_77),N_26)),hAPP_nat_nat(power_power_nat(B_52),N_26)))
       <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,zero_zero_nat),A_77)) )
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,A_77),B_52)) ) ).

fof(fact_479_not__sum__power2__lt__zero,axiom,
    ! [X_11,Y_8] : ~ hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_real,hAPP_real_real(plus_plus_real(hAPP_nat_real(power_power_real(X_11),number_number_of_nat(bit0(bit1(pls))))),hAPP_nat_real(power_power_real(Y_8),number_number_of_nat(bit0(bit1(pls)))))),zero_zero_real)) ).

fof(fact_1010_add__diff__assoc,axiom,
    ! [I_1,K_1,J_1] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,K_1),J_1))
     => hAPP_nat_nat(plus_plus_nat(I_1),hAPP_nat_nat(minus_minus_nat(J_1),K_1)) = hAPP_nat_nat(minus_minus_nat(hAPP_nat_nat(plus_plus_nat(I_1),J_1)),K_1) ) ).

fof(fact_46_comm__semiring__1__class_Onormalizing__semiring__rules_I33_J,axiom,
    ! [X_23] : X_23 = hAPP_nat_nat(power_power_nat(X_23),one_one_nat) ).

fof(fact_271_power3__eq__cube,axiom,
    ! [A_91] : hAPP_nat_int(power_power_int(A_91),number_number_of_nat(bit1(bit1(pls)))) = hAPP_int_int(times_times_int(hAPP_int_int(times_times_int(A_91),A_91)),A_91) ).

fof(fact_343_comm__semiring__1__class_Onormalizing__semiring__rules_I9_J,axiom,
    ! [A_82] : zero_zero_real = hAPP_real_real(times_times_real(zero_zero_real),A_82) ).

fof(fact_638_zcong__eq__trans,axiom,
    ! [D_5,C,A,B,M] :
      ( hBOOL(hAPP_int_bool(zcong(A,B),M))
     => ( ( hBOOL(hAPP_int_bool(zcong(C,D_5),M))
         => hBOOL(hAPP_int_bool(zcong(A,D_5),M)) )
       <= C = B ) ) ).

fof(fact_14_power2__eq__square__number__of,axiom,
    ! [W_16] : hAPP_nat_nat(power_power_nat(number_number_of_nat(W_16)),number_number_of_nat(bit0(bit1(pls)))) = hAPP_nat_nat(times_times_nat(number_number_of_nat(W_16)),number_number_of_nat(W_16)) ).

fof(fact_400_bin__less__0__simps_I3_J,axiom,
    ! [W_1] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,W_1),zero_zero_int))
    <=> hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,bit0(W_1)),zero_zero_int)) ) ).

fof(fact_730_dvd__mult__right,axiom,
    ! [A_42,B_39,C_20] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,hAPP_nat_nat(times_times_nat(A_42),B_39)),C_20))
     => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,B_39),C_20)) ) ).

fof(fact_1078_inv__not__p__minus__1,axiom,
    ! [A,P_1] :
      ( hBOOL(hAPP_int_bool(zprime,P_1))
     => ( ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,A),hAPP_int_int(minus_minus_int(P_1),one_one_int)))
         => inv(P_1,A) != hAPP_int_int(minus_minus_int(P_1),one_one_int) )
       <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,one_one_int),A)) ) ) ).

fof(fact_1109_mono__nat__linear__lb,axiom,
    ! [Ma,K,F_1] :
      ( ! [M_2,N_2] :
          ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,M_2),N_2))
         => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,hAPP_nat_nat(F_1,M_2)),hAPP_nat_nat(F_1,N_2))) )
     => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(plus_plus_nat(hAPP_nat_nat(F_1,Ma)),K)),hAPP_nat_nat(F_1,hAPP_nat_nat(plus_plus_nat(Ma),K)))) ) ).

fof(fact_851_mult__less__cancel__left__disj,axiom,
    ! [C_2,A_2,B_2] :
      ( ( ( hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_real,C_2),zero_zero_real))
          & hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_real,B_2),A_2)) )
        | ( hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_real,A_2),B_2))
          & hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_real,zero_zero_real),C_2)) ) )
    <=> hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_real,hAPP_real_real(times_times_real(C_2),A_2)),hAPP_real_real(times_times_real(C_2),B_2))) ) ).

fof(fact_900_dvd_Oless__le__trans,axiom,
    ! [Z,X_1,Y_1] :
      ( ( ~ hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,Y_1),X_1))
        & hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,X_1),Y_1)) )
     => ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,Y_1),Z))
       => ( ~ hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,Z),X_1))
          & hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,X_1),Z)) ) ) ) ).

fof(fact_49_le__number__of__eq__not__less,axiom,
    ! [V_7,W_1] :
      ( ~ hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,number_number_of_nat(W_1)),number_number_of_nat(V_7)))
    <=> hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,number_number_of_nat(V_7)),number_number_of_nat(W_1))) ) ).

fof(fact_592_power__0__left__number__of,axiom,
    ! [W_4] :
      ( ( one_one_nat = hAPP_nat_nat(power_power_nat(zero_zero_nat),number_number_of_nat(W_4))
       <= zero_zero_nat = number_number_of_nat(W_4) )
      & ( zero_zero_nat = hAPP_nat_nat(power_power_nat(zero_zero_nat),number_number_of_nat(W_4))
       <= zero_zero_nat != number_number_of_nat(W_4) ) ) ).

fof(fact_318_dvd__power__le,axiom,
    ! [N_34,M_7,X_19,Y_16] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(dvd_dvd_int,X_19),Y_16))
     => ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(dvd_dvd_int,hAPP_nat_int(power_power_int(X_19),N_34)),hAPP_nat_int(power_power_int(Y_16),M_7)))
       <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,N_34),M_7)) ) ) ).

fof(fact_914_dvd_Oord__le__eq__trans,axiom,
    ! [C,A,B] :
      ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,A),C))
       <= C = B )
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,A),B)) ) ).

fof(fact_261_semiring__numeral__1__eq__1,axiom,
    one_one_nat = number_number_of_nat(bit1(pls)) ).

fof(fact_839_zero__less__mult__pos,axiom,
    ! [A_9,B_8] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,zero_zero_int),hAPP_int_int(times_times_int(A_9),B_8)))
     => ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,zero_zero_int),B_8))
       <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,zero_zero_int),A_9)) ) ) ).

fof(fact_1108_int__gr__induct,axiom,
    ! [P_2,K,I_2] :
      ( ( hBOOL(hAPP_int_bool(P_2,hAPP_int_int(plus_plus_int(K),one_one_int)))
       => ( hBOOL(hAPP_int_bool(P_2,I_2))
         <= ! [I] :
              ( is_int(I)
             => ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,K),I))
               => ( hBOOL(hAPP_int_bool(P_2,I))
                 => hBOOL(hAPP_int_bool(P_2,hAPP_int_int(plus_plus_int(I),one_one_int))) ) ) ) ) )
     <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,K),I_2)) ) ).

fof(fact_739_mult__dvd__mono,axiom,
    ! [C_18,D_6,A_39,B_36] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,A_39),B_36))
     => ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,hAPP_nat_nat(times_times_nat(A_39),C_18)),hAPP_nat_nat(times_times_nat(B_36),D_6)))
       <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,C_18),D_6)) ) ) ).

fof(fact_1033_mult__less__mono2,axiom,
    ! [K_1,I_1,J_1] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,I_1),J_1))
     => ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,hAPP_nat_nat(times_times_nat(K_1),I_1)),hAPP_nat_nat(times_times_nat(K_1),J_1)))
       <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,zero_zero_nat),K_1)) ) ) ).

fof(fact_997_le__iff__add,axiom,
    ! [Ma,N] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,Ma),N))
    <=> ? [K_2] : hAPP_nat_nat(plus_plus_nat(Ma),K_2) = N ) ).

fof(fact_663_zcong__zprime__prod__zero__contra,axiom,
    ! [B,A,P_1] :
      ( ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,zero_zero_int),A))
       => ( ( ~ hBOOL(hAPP_int_bool(zcong(B,zero_zero_int),P_1))
            & ~ hBOOL(hAPP_int_bool(zcong(A,zero_zero_int),P_1)) )
         => ~ hBOOL(hAPP_int_bool(zcong(hAPP_int_int(times_times_int(A),B),zero_zero_int),P_1)) ) )
     <= hBOOL(hAPP_int_bool(zprime,P_1)) ) ).

fof(fact_316_le__imp__power__dvd,axiom,
    ! [A_87,M_8,N_35] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,hAPP_nat_nat(power_power_nat(A_87),M_8)),hAPP_nat_nat(power_power_nat(A_87),N_35)))
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,M_8),N_35)) ) ).

fof(fact_1138_pos__mod__bound,axiom,
    ! [A,B] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,hAPP_int_int(div_mod_int(A),B)),B))
     <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,zero_zero_int),B)) ) ).

fof(fact_68_less__int__code_I13_J,axiom,
    ! [K1,K2] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,bit0(K1)),bit0(K2)))
    <=> hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,K1),K2)) ) ).

fof(fact_465_power__add,axiom,
    ! [A_65,M_5,N_16] : hAPP_nat_int(power_power_int(A_65),hAPP_nat_nat(plus_plus_nat(M_5),N_16)) = hAPP_int_int(times_times_int(hAPP_nat_int(power_power_int(A_65),M_5)),hAPP_nat_int(power_power_int(A_65),N_16)) ).

fof(fact_1082_inv__not__0,axiom,
    ! [A,P_1] :
      ( ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,one_one_int),A))
       => ( inv(P_1,A) != zero_zero_int
         <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,A),hAPP_int_int(minus_minus_int(P_1),one_one_int))) ) )
     <= hBOOL(hAPP_int_bool(zprime,P_1)) ) ).

fof(fact_913_dvd__antisym,axiom,
    ! [M,N_1] :
      ( ( M = N_1
       <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,N_1),M)) )
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,M),N_1)) ) ).

fof(fact_904_dvd_Oless__imp__not__eq,axiom,
    ! [X_1,Y_1] :
      ( ( ~ hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,Y_1),X_1))
        & hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,X_1),Y_1)) )
     => Y_1 != X_1 ) ).

fof(gsy_v_m,hypothesis,
    is_int(m) ).

fof(fact_635_diff__bin__simps_I5_J,axiom,
    ! [L] : hAPP_int_int(minus_minus_int(min),bit0(L)) = bit1(hAPP_int_int(minus_minus_int(min),L)) ).

fof(fact_314_le__imp__power__dvd,axiom,
    ! [A_87,M_8,N_35] :
      ( hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(dvd_dvd_real,hAPP_nat_real(power_power_real(A_87),M_8)),hAPP_nat_real(power_power_real(A_87),N_35)))
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,M_8),N_35)) ) ).

fof(fact_58_comm__semiring__1__class_Onormalizing__semiring__rules_I26_J,axiom,
    ! [X_22,P_6,Q_6] : hAPP_nat_nat(times_times_nat(hAPP_nat_nat(power_power_nat(X_22),P_6)),hAPP_nat_nat(power_power_nat(X_22),Q_6)) = hAPP_nat_nat(power_power_nat(X_22),hAPP_nat_nat(plus_plus_nat(P_6),Q_6)) ).

fof(fact_1101_wset__g__1,axiom,
    ! [B_2,A_2,P_3] :
      ( ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,A_2),hAPP_int_int(minus_minus_int(P_3),one_one_int)))
       => ( hBOOL(member_int(B_2,wset(A_2,P_3)))
         => hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,one_one_int),B_2)) ) )
     <= hBOOL(hAPP_int_bool(zprime,P_3)) ) ).

fof(fact_92_comm__semiring__1__class_Onormalizing__semiring__rules_I13_J,axiom,
    ! [Lx_6,Ly_4,Rx_6,Ry_4] : hAPP_nat_nat(times_times_nat(hAPP_nat_nat(times_times_nat(Lx_6),Rx_6)),hAPP_nat_nat(times_times_nat(Ly_4),Ry_4)) = hAPP_nat_nat(times_times_nat(hAPP_nat_nat(times_times_nat(Lx_6),Ly_4)),hAPP_nat_nat(times_times_nat(Rx_6),Ry_4)) ).

fof(fact_1043_ex__least__nat__less,axiom,
    ! [N,P_2] :
      ( ~ hBOOL(hAPP_nat_bool(P_2,zero_zero_nat))
     => ( hBOOL(hAPP_nat_bool(P_2,N))
       => ? [K_2] :
            ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,K_2),N))
            & hBOOL(hAPP_nat_bool(P_2,hAPP_nat_nat(plus_plus_nat(K_2),one_one_nat)))
            & ! [I] :
                ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,I),K_2))
               => ~ hBOOL(hAPP_nat_bool(P_2,I)) ) ) ) ) ).

fof(fact_606_neg__one__power__eq__mod__m,axiom,
    ! [J_1,K_1,M] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,number_number_of_int(bit0(bit1(pls)))),M))
     => ( hBOOL(hAPP_int_bool(zcong(hAPP_nat_int(power_power_int(number_number_of_int(min)),J_1),hAPP_nat_int(power_power_int(number_number_of_int(min)),K_1)),M))
       => hAPP_nat_int(power_power_int(number_number_of_int(min)),K_1) = hAPP_nat_int(power_power_int(number_number_of_int(min)),J_1) ) ) ).

fof(fact_1134_neg__zmod__mult__2,axiom,
    ! [B,A] :
      ( hAPP_int_int(minus_minus_int(hAPP_int_int(times_times_int(number_number_of_int(bit0(bit1(pls)))),hAPP_int_int(div_mod_int(hAPP_int_int(plus_plus_int(B),one_one_int)),A))),one_one_int) = hAPP_int_int(div_mod_int(hAPP_int_int(plus_plus_int(one_one_int),hAPP_int_int(times_times_int(number_number_of_int(bit0(bit1(pls)))),B))),hAPP_int_int(times_times_int(number_number_of_int(bit0(bit1(pls)))),A))
     <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,A),zero_zero_int)) ) ).

fof(fact_1030_add__gr__0,axiom,
    ! [Ma,N] :
      ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,zero_zero_nat),Ma))
        | hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,zero_zero_nat),N)) )
    <=> hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,zero_zero_nat),hAPP_nat_nat(plus_plus_nat(Ma),N))) ) ).

fof(fact_1167_zmult2__lemma__aux3,axiom,
    ! [Q_1,B,R_1,C] :
      ( ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,zero_zero_int),R_1))
       => ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,zero_zero_int),hAPP_int_int(plus_plus_int(hAPP_int_int(times_times_int(B),hAPP_int_int(div_mod_int(Q_1),C))),R_1)))
         <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,R_1),B)) ) )
     <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,zero_zero_int),C)) ) ).

fof(fact_213_semiring__mult__number__of,axiom,
    ! [V_20,V_19] :
      ( ( hAPP_int_int(times_times_int(number_number_of_int(V_19)),number_number_of_int(V_20)) = number_number_of_int(hAPP_int_int(times_times_int(V_19),V_20))
       <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,pls),V_20)) )
     <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,pls),V_19)) ) ).

fof(fact_102_comm__semiring__1__class_Onormalizing__semiring__rules_I16_J,axiom,
    ! [Lx_3,Ly_1,Rx_3] : hAPP_real_real(times_times_real(hAPP_real_real(times_times_real(Lx_3),Ly_1)),Rx_3) = hAPP_real_real(times_times_real(hAPP_real_real(times_times_real(Lx_3),Rx_3)),Ly_1) ).

fof(fact_1177_mod__le__divisor,axiom,
    ! [M,N_1] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,zero_zero_nat),N_1))
     => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(div_mod_nat(M),N_1)),N_1)) ) ).

fof(fact_680_dvd__refl,axiom,
    ! [A_52] : hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(dvd_dvd_int,A_52),A_52)) ).

fof(fact_624_diff__bin__simps_I9_J,axiom,
    ! [K_1,L] : hAPP_int_int(minus_minus_int(bit1(K_1)),bit0(L)) = bit1(hAPP_int_int(minus_minus_int(K_1),L)) ).

fof(fact_894_less__not__refl,axiom,
    ! [N_1] : ~ hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,N_1),N_1)) ).

fof(fact_1131_divides__le,axiom,
    ! [M,N_1] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,M),N_1))
     => ( N_1 = zero_zero_nat
        | hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,M),N_1)) ) ) ).

fof(fact_802_mult__nonneg__nonpos,axiom,
    ! [B_18,A_20] :
      ( hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_eq_real,zero_zero_real),A_20))
     => ( hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_eq_real,B_18),zero_zero_real))
       => hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_eq_real,hAPP_real_real(times_times_real(A_20),B_18)),zero_zero_real)) ) ) ).

fof(fact_611_Int2_Oaux1,axiom,
    ! [A,B,C] :
      ( is_int(A)
     => ( A = hAPP_int_int(plus_plus_int(C),B)
       <= C = hAPP_int_int(minus_minus_int(A),B) ) ) ).

fof(gsy_c_Int2_OMultInv,axiom,
    ! [B_1_1,B_2_1] :
      ( is_int(multInv(B_1_1,B_2_1))
     <= ( is_int(B_1_1)
        & is_int(B_2_1) ) ) ).

fof(fact_25_comm__semiring__1__class_Onormalizing__semiring__rules_I36_J,axiom,
    ! [X_25,N_40] : hAPP_int_int(times_times_int(hAPP_nat_int(power_power_int(X_25),N_40)),hAPP_nat_int(power_power_int(X_25),N_40)) = hAPP_nat_int(power_power_int(X_25),hAPP_nat_nat(times_times_nat(number_number_of_nat(bit0(bit1(pls)))),N_40)) ).

fof(fact_73_less__number__of__int__code,axiom,
    ! [K,L_1] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,number_number_of_int(K)),number_number_of_int(L_1)))
    <=> hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,K),L_1)) ) ).

fof(fact_796_mult__nonpos__nonneg,axiom,
    ! [B_20,A_22] :
      ( ( hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_eq_real,hAPP_real_real(times_times_real(A_22),B_20)),zero_zero_real))
       <= hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_eq_real,zero_zero_real),B_20)) )
     <= hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_eq_real,A_22),zero_zero_real)) ) ).

fof(fact_847_mult__pos__pos,axiom,
    ! [B_5,A_6] :
      ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,zero_zero_nat),hAPP_nat_nat(times_times_nat(A_6),B_5)))
       <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,zero_zero_nat),B_5)) )
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,zero_zero_nat),A_6)) ) ).

fof(fact_467_power__one,axiom,
    ! [N_15] : hAPP_nat_nat(power_power_nat(one_one_nat),N_15) = one_one_nat ).

fof(fact_1044_nat__less__add__iff2,axiom,
    ! [U,Ma,N,I_2,J_2] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,I_2),J_2))
     => ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,Ma),hAPP_nat_nat(plus_plus_nat(hAPP_nat_nat(times_times_nat(hAPP_nat_nat(minus_minus_nat(J_2),I_2)),U)),N)))
      <=> hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,hAPP_nat_nat(plus_plus_nat(hAPP_nat_nat(times_times_nat(I_2),U)),Ma)),hAPP_nat_nat(plus_plus_nat(hAPP_nat_nat(times_times_nat(J_2),U)),N))) ) ) ).

fof(fact_871_two__realpow__ge__one,axiom,
    ! [N_1] : hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_eq_real,one_one_real),hAPP_nat_real(power_power_real(number267125858f_real(bit0(bit1(pls)))),N_1))) ).

fof(fact_206_Bit0__def,axiom,
    ! [K_1] : bit0(K_1) = hAPP_int_int(plus_plus_int(K_1),K_1) ).

fof(fact_598_unique__quotient__lemma__neg,axiom,
    ! [B,Q_4,R_3,Q_1,R_1] :
      ( ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,R_1),zero_zero_int))
       => ( ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,B),R_3))
           => hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,Q_1),Q_4)) )
         <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,B),R_1)) ) )
     <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,hAPP_int_int(plus_plus_int(hAPP_int_int(times_times_int(B),Q_4)),R_3)),hAPP_int_int(plus_plus_int(hAPP_int_int(times_times_int(B),Q_1)),R_1))) ) ).

fof(fact_874_dvd__mult__cancel2,axiom,
    ! [N,Ma] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,zero_zero_nat),Ma))
     => ( N = one_one_nat
      <=> hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,hAPP_nat_nat(times_times_nat(N),Ma)),Ma)) ) ) ).

fof(fact_474_power2__less__imp__less,axiom,
    ! [X_13,Y_10] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,hAPP_nat_int(power_power_int(X_13),number_number_of_nat(bit0(bit1(pls))))),hAPP_nat_int(power_power_int(Y_10),number_number_of_nat(bit0(bit1(pls))))))
     => ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,zero_zero_int),Y_10))
       => hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,X_13),Y_10)) ) ) ).

fof(fact_764_divides__mul__l,axiom,
    ! [C,A,B] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,A),B))
     => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,hAPP_nat_nat(times_times_nat(C),A)),hAPP_nat_nat(times_times_nat(C),B))) ) ).

fof(fact_956_neq0__conv,axiom,
    ! [N] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,zero_zero_nat),N))
    <=> N != zero_zero_nat ) ).

fof(fact_935_Nat_Odiff__cancel,axiom,
    ! [K_1,M,N_1] : hAPP_nat_nat(minus_minus_nat(M),N_1) = hAPP_nat_nat(minus_minus_nat(hAPP_nat_nat(plus_plus_nat(K_1),M)),hAPP_nat_nat(plus_plus_nat(K_1),N_1)) ).

fof(fact_649_power2__diff,axiom,
    ! [X_7,Y_6] : hAPP_nat_int(power_power_int(hAPP_int_int(minus_minus_int(X_7),Y_6)),number_number_of_nat(bit0(bit1(pls)))) = hAPP_int_int(minus_minus_int(hAPP_int_int(plus_plus_int(hAPP_nat_int(power_power_int(X_7),number_number_of_nat(bit0(bit1(pls))))),hAPP_nat_int(power_power_int(Y_6),number_number_of_nat(bit0(bit1(pls)))))),hAPP_int_int(times_times_int(hAPP_int_int(times_times_int(number_number_of_int(bit0(bit1(pls)))),X_7)),Y_6)) ).

fof(fact_193_comm__semiring__1__class_Onormalizing__semiring__rules_I30_J,axiom,
    ! [X_20,Y_17,Q_5] : hAPP_nat_nat(power_power_nat(hAPP_nat_nat(times_times_nat(X_20),Y_17)),Q_5) = hAPP_nat_nat(times_times_nat(hAPP_nat_nat(power_power_nat(X_20),Q_5)),hAPP_nat_nat(power_power_nat(Y_17),Q_5)) ).

fof(fact_842_mult__pos__neg2,axiom,
    ! [B_7,A_8] :
      ( ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,B_7),zero_zero_int))
       => hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,hAPP_int_int(times_times_int(B_7),A_8)),zero_zero_int)) )
     <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,zero_zero_int),A_8)) ) ).

fof(fact_1002_add__le__mono,axiom,
    ! [K_1,L,I_1,J_1] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,I_1),J_1))
     => ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(plus_plus_nat(I_1),K_1)),hAPP_nat_nat(plus_plus_nat(J_1),L)))
       <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,K_1),L)) ) ) ).

fof(fact_944_diff__le__mono,axiom,
    ! [L,M,N_1] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(minus_minus_nat(M),L)),hAPP_nat_nat(minus_minus_nat(N_1),L)))
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,M),N_1)) ) ).

fof(fact_281_semiring__mult__2__right,axiom,
    ! [Z_4] : hAPP_nat_nat(times_times_nat(Z_4),number_number_of_nat(bit0(bit1(pls)))) = hAPP_nat_nat(plus_plus_nat(Z_4),Z_4) ).

fof(fact_881_real__le__linear,axiom,
    ! [Z,W] :
      ( hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_eq_real,W),Z))
      | hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_eq_real,Z),W)) ) ).

fof(fact_889_less__not__refl3,axiom,
    ! [S,T] :
      ( T != S
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,S),T)) ) ).

fof(fact_630_add__number__of__diff1,axiom,
    ! [V_2,W_2,C_25] : hAPP_real_real(plus_plus_real(number267125858f_real(V_2)),hAPP_real_real(minus_minus_real(number267125858f_real(W_2)),C_25)) = hAPP_real_real(minus_minus_real(number267125858f_real(hAPP_int_int(plus_plus_int(V_2),W_2))),C_25) ).

fof(fact_767_real__add__mult__distrib,axiom,
    ! [Z1,Z2,W] : hAPP_real_real(plus_plus_real(hAPP_real_real(times_times_real(Z1),W)),hAPP_real_real(times_times_real(Z2),W)) = hAPP_real_real(times_times_real(hAPP_real_real(plus_plus_real(Z1),Z2)),W) ).

fof(fact_155_rel__simps_I32_J,axiom,
    ! [K,L_1] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,K),L_1))
    <=> hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,bit0(K)),bit1(L_1))) ) ).

fof(fact_414_sum__squares__le__zero__iff,axiom,
    ! [X_2,Y_2] :
      ( hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_eq_real,hAPP_real_real(plus_plus_real(hAPP_real_real(times_times_real(X_2),X_2)),hAPP_real_real(times_times_real(Y_2),Y_2))),zero_zero_real))
    <=> ( Y_2 = zero_zero_real
        & X_2 = zero_zero_real ) ) ).

fof(fact_464_power__add,axiom,
    ! [A_65,M_5,N_16] : hAPP_nat_real(power_power_real(A_65),hAPP_nat_nat(plus_plus_nat(M_5),N_16)) = hAPP_real_real(times_times_real(hAPP_nat_real(power_power_real(A_65),M_5)),hAPP_nat_real(power_power_real(A_65),N_16)) ).

fof(fact_1143_Residues_Oaux,axiom,
    ! [X_1,M,Y_1] :
      ( hBOOL(hAPP_int_bool(zcong(X_1,Y_1),M))
     <= hAPP_int_int(div_mod_int(Y_1),M) = hAPP_int_int(div_mod_int(X_1),M) ) ).

fof(fact_861_real__mult__less__iff1,axiom,
    ! [X_2,Y_2,Z_1] :
      ( ( hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_real,X_2),Y_2))
      <=> hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_real,hAPP_real_real(times_times_real(X_2),Z_1)),hAPP_real_real(times_times_real(Y_2),Z_1))) )
     <= hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_real,zero_zero_real),Z_1)) ) ).

fof(fact_48_le__number__of__eq__not__less,axiom,
    ! [V_7,W_1] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,number_number_of_int(V_7)),number_number_of_int(W_1)))
    <=> ~ hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,number_number_of_int(W_1)),number_number_of_int(V_7))) ) ).

fof(gsy_c_Groups_Ozero__class_Ozero_000tc__Int__Oint,axiom,
    is_int(zero_zero_int) ).

fof(fact_231_comm__semiring__1__class_Onormalizing__semiring__rules_I3_J,axiom,
    ! [M_11,A_96] : hAPP_real_real(plus_plus_real(M_11),hAPP_real_real(times_times_real(A_96),M_11)) = hAPP_real_real(times_times_real(hAPP_real_real(plus_plus_real(A_96),one_one_real)),M_11) ).

fof(fact_541_comm__semiring__1__class_Onormalizing__semiring__rules_I32_J,axiom,
    ! [X_10] : one_one_real = hAPP_nat_real(power_power_real(X_10),zero_zero_nat) ).

fof(fact_820_comm__mult__strict__left__mono,axiom,
    ! [C_5,A_15,B_14] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,A_15),B_14))
     => ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,zero_zero_int),C_5))
       => hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,hAPP_int_int(times_times_int(C_5),A_15)),hAPP_int_int(times_times_int(C_5),B_14))) ) ) ).

fof(fact_433_le__special_I1_J,axiom,
    ! [Y_2] :
      ( hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_eq_real,zero_zero_real),number267125858f_real(Y_2)))
    <=> hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,pls),Y_2)) ) ).

fof(fact_1114_d22set__g__1,axiom,
    ! [B_2,A_2] :
      ( hBOOL(member_int(B_2,d22set(A_2)))
     => hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,one_one_int),B_2)) ) ).

fof(fact_1100_wset__less,axiom,
    ! [B_2,A_2,P_3] :
      ( hBOOL(hAPP_int_bool(zprime,P_3))
     => ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,A_2),hAPP_int_int(minus_minus_int(P_3),one_one_int)))
       => ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,B_2),hAPP_int_int(minus_minus_int(P_3),one_one_int)))
         <= hBOOL(member_int(B_2,wset(A_2,P_3))) ) ) ) ).

fof(fact_35_zle__refl,axiom,
    ! [W] : hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,W),W)) ).

fof(fact_1179_mod__eq__0__iff,axiom,
    ! [Ma,D] :
      ( ? [Q_2] : hAPP_nat_nat(times_times_nat(D),Q_2) = Ma
    <=> zero_zero_nat = hAPP_nat_nat(div_mod_nat(Ma),D) ) ).

fof(fact_298_power__gt1__lemma,axiom,
    ! [N_37,A_89] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,one_one_nat),hAPP_nat_nat(times_times_nat(A_89),hAPP_nat_nat(power_power_nat(A_89),N_37))))
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,one_one_nat),A_89)) ) ).

fof(fact_745_dvd__mult2,axiom,
    ! [C_16,A_37,B_34] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,A_37),B_34))
     => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,A_37),hAPP_nat_nat(times_times_nat(B_34),C_16))) ) ).

fof(fact_108_comm__semiring__1__class_Onormalizing__semiring__rules_I18_J,axiom,
    ! [Lx_1,Rx_1,Ry_1] : hAPP_real_real(times_times_real(hAPP_real_real(times_times_real(Lx_1),Rx_1)),Ry_1) = hAPP_real_real(times_times_real(Lx_1),hAPP_real_real(times_times_real(Rx_1),Ry_1)) ).

fof(fact_512__096_B_Bthesis_O_A_I_B_Bs1_O_A_091s1_A_094_A2_A_061_A_N1_093_A_Imod_A4_,axiom,
    ~ ! [S1] :
        ( is_int(S1)
       => ~ hBOOL(hAPP_int_bool(zcong(hAPP_nat_int(power_power_int(S1),number_number_of_nat(bit0(bit1(pls)))),number_number_of_int(min)),hAPP_int_int(plus_plus_int(hAPP_int_int(times_times_int(number_number_of_int(bit0(bit0(bit1(pls))))),m)),one_one_int))) ) ).

fof(fact_1197_StandardRes__prop2,axiom,
    ! [X1,X2,Ma] :
      ( ( standardRes(Ma,X1) = standardRes(Ma,X2)
      <=> hBOOL(hAPP_int_bool(zcong(X1,X2),Ma)) )
     <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,zero_zero_int),Ma)) ) ).

fof(fact_124_comm__semiring__1__class_Onormalizing__semiring__rules_I21_J,axiom,
    ! [A_107,B_60,C_33] : hAPP_nat_nat(plus_plus_nat(A_107),hAPP_nat_nat(plus_plus_nat(B_60),C_33)) = hAPP_nat_nat(plus_plus_nat(hAPP_nat_nat(plus_plus_nat(A_107),B_60)),C_33) ).

fof(fact_55_zadd__zless__mono,axiom,
    ! [Z_10,Z,W_14,W] :
      ( ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,hAPP_int_int(plus_plus_int(W_14),Z_10)),hAPP_int_int(plus_plus_int(W),Z)))
       <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,Z_10),Z)) )
     <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,W_14),W)) ) ).

fof(fact_710_mult__zero__left,axiom,
    ! [A_47] : zero_zero_nat = hAPP_nat_nat(times_times_nat(zero_zero_nat),A_47) ).

fof(fact_862_real__mult__le__cancel__iff1,axiom,
    ! [X_2,Y_2,Z_1] :
      ( hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_real,zero_zero_real),Z_1))
     => ( hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_eq_real,X_2),Y_2))
      <=> hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_eq_real,hAPP_real_real(times_times_real(X_2),Z_1)),hAPP_real_real(times_times_real(Y_2),Z_1))) ) ) ).

fof(fact_988_le__neq__implies__less,axiom,
    ! [M,N_1] :
      ( ( N_1 != M
       => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,M),N_1)) )
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,M),N_1)) ) ).

fof(fact_32_one__add__one__is__two,axiom,
    hAPP_int_int(plus_plus_int(one_one_int),one_one_int) = number_number_of_int(bit0(bit1(pls))) ).

fof(fact_290_prime__g__5,axiom,
    ! [P_1] :
      ( ( hBOOL(hAPP_int_bool(zprime,P_1))
       => ( number_number_of_int(bit0(bit1(pls))) != P_1
         => ( number_number_of_int(bit1(bit1(pls))) != P_1
           => hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,number_number_of_int(bit1(bit0(bit1(pls))))),P_1)) ) ) )
     <= is_int(P_1) ) ).

fof(fact_463_power__add,axiom,
    ! [A_65,M_5,N_16] : hAPP_nat_nat(power_power_nat(A_65),hAPP_nat_nat(plus_plus_nat(M_5),N_16)) = hAPP_nat_nat(times_times_nat(hAPP_nat_nat(power_power_nat(A_65),M_5)),hAPP_nat_nat(power_power_nat(A_65),N_16)) ).

fof(fact_351_comm__semiring__1__class_Onormalizing__semiring__rules_I6_J,axiom,
    ! [A_79] : hAPP_nat_nat(plus_plus_nat(A_79),zero_zero_nat) = A_79 ).

fof(fact_492_power__inject__exp,axiom,
    ! [Ma,N,A_2] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,one_one_nat),A_2))
     => ( hAPP_nat_nat(power_power_nat(A_2),Ma) = hAPP_nat_nat(power_power_nat(A_2),N)
      <=> N = Ma ) ) ).

fof(help_COMBB_1_1_COMBB_000tc__HOL__Obool_000tc__fun_Itc__HOL__Obool_Mtc__HOL__Oboo,axiom,
    ! [P,Q,R] : hAPP_i68813070l_bool(cOMBB_1652995168ol_int(P,Q),R) = hAPP_b589554111l_bool(P,hAPP_int_bool(Q,R)) ).

fof(fact_1107_int__ge__induct,axiom,
    ! [P_2,K,I_2] :
      ( ( hBOOL(hAPP_int_bool(P_2,K))
       => ( ! [I] :
              ( ( ( hBOOL(hAPP_int_bool(P_2,hAPP_int_int(plus_plus_int(I),one_one_int)))
                 <= hBOOL(hAPP_int_bool(P_2,I)) )
               <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,K),I)) )
             <= is_int(I) )
         => hBOOL(hAPP_int_bool(P_2,I_2)) ) )
     <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,K),I_2)) ) ).

fof(fact_338_power__strict__mono,axiom,
    ! [N_28,A_83,B_53] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,A_83),B_53))
     => ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,zero_zero_nat),N_28))
         => hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,hAPP_nat_int(power_power_int(A_83),N_28)),hAPP_nat_int(power_power_int(B_53),N_28))) )
       <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,zero_zero_int),A_83)) ) ) ).

fof(fact_671_convex__bound__lt,axiom,
    ! [V_1,U_2,Y_5,X_6,A_54] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,X_6),A_54))
     => ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,Y_5),A_54))
       => ( ( ( hAPP_int_int(plus_plus_int(U_2),V_1) = one_one_int
             => hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,hAPP_int_int(plus_plus_int(hAPP_int_int(times_times_int(U_2),X_6)),hAPP_int_int(times_times_int(V_1),Y_5))),A_54)) )
           <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,zero_zero_int),V_1)) )
         <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,zero_zero_int),U_2)) ) ) ) ).

fof(fact_121_comm__semiring__1__class_Onormalizing__semiring__rules_I23_J,axiom,
    ! [A_108,B_61,C_34] : hAPP_nat_nat(plus_plus_nat(hAPP_nat_nat(plus_plus_nat(A_108),C_34)),B_61) = hAPP_nat_nat(plus_plus_nat(hAPP_nat_nat(plus_plus_nat(A_108),B_61)),C_34) ).

fof(fact_273_power3__eq__cube,axiom,
    ! [A_91] : hAPP_nat_nat(times_times_nat(hAPP_nat_nat(times_times_nat(A_91),A_91)),A_91) = hAPP_nat_nat(power_power_nat(A_91),number_number_of_nat(bit1(bit1(pls)))) ).

fof(fact_280_semiring__mult__2__right,axiom,
    ! [Z_4] : hAPP_int_int(times_times_int(Z_4),number_number_of_int(bit0(bit1(pls)))) = hAPP_int_int(plus_plus_int(Z_4),Z_4) ).

fof(fact_1092_Int2_Oaux____2,axiom,
    ! [X_1,P_1] :
      ( ( ( ~ hBOOL(hAPP_int_bool(zcong(X_1,zero_zero_int),P_1))
         => hBOOL(hAPP_int_bool(zcong(hAPP_int_int(times_times_int(hAPP_int_int(times_times_int(X_1),multInv(P_1,X_1))),multInv(P_1,multInv(P_1,X_1))),X_1),P_1)) )
       <= hBOOL(hAPP_int_bool(zprime,P_1)) )
     <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,number_number_of_int(bit0(bit1(pls)))),P_1)) ) ).

fof(fact_130_comm__semiring__1__class_Onormalizing__semiring__rules_I22_J,axiom,
    ! [A_105,C_31,D_9] : hAPP_nat_nat(plus_plus_nat(A_105),hAPP_nat_nat(plus_plus_nat(C_31),D_9)) = hAPP_nat_nat(plus_plus_nat(C_31),hAPP_nat_nat(plus_plus_nat(A_105),D_9)) ).

fof(fact_448_power2__eq__imp__eq,axiom,
    ! [X_14,Y_11] :
      ( hAPP_nat_real(power_power_real(Y_11),number_number_of_nat(bit0(bit1(pls)))) = hAPP_nat_real(power_power_real(X_14),number_number_of_nat(bit0(bit1(pls))))
     => ( ( X_14 = Y_11
         <= hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_eq_real,zero_zero_real),Y_11)) )
       <= hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_eq_real,zero_zero_real),X_14)) ) ) ).

fof(fact_438_zero__power2,axiom,
    hAPP_nat_real(power_power_real(zero_zero_real),number_number_of_nat(bit0(bit1(pls)))) = zero_zero_real ).

fof(fact_950_nat__mult__commute,axiom,
    ! [M,N_1] : hAPP_nat_nat(times_times_nat(N_1),M) = hAPP_nat_nat(times_times_nat(M),N_1) ).

fof(fact_110_comm__semiring__1__class_Onormalizing__semiring__rules_I19_J,axiom,
    ! [Lx,Rx,Ry] : hAPP_nat_nat(times_times_nat(Lx),hAPP_nat_nat(times_times_nat(Rx),Ry)) = hAPP_nat_nat(times_times_nat(Rx),hAPP_nat_nat(times_times_nat(Lx),Ry)) ).

fof(fact_27_comm__semiring__1__class_Onormalizing__semiring__rules_I36_J,axiom,
    ! [X_25,N_40] : hAPP_nat_nat(power_power_nat(X_25),hAPP_nat_nat(times_times_nat(number_number_of_nat(bit0(bit1(pls)))),N_40)) = hAPP_nat_nat(times_times_nat(hAPP_nat_nat(power_power_nat(X_25),N_40)),hAPP_nat_nat(power_power_nat(X_25),N_40)) ).

fof(fact_356_double__eq__0__iff,axiom,
    ! [A_2] :
      ( is_int(A_2)
     => ( A_2 = zero_zero_int
      <=> hAPP_int_int(plus_plus_int(A_2),A_2) = zero_zero_int ) ) ).

fof(fact_323_power__eq__imp__eq__base,axiom,
    ! [A_85,N_32,B_54] :
      ( ( ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,zero_zero_int),A_85))
         => ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,zero_zero_int),B_54))
           => ( A_85 = B_54
             <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,zero_zero_nat),N_32)) ) ) )
       <= hAPP_nat_int(power_power_int(A_85),N_32) = hAPP_nat_int(power_power_int(B_54),N_32) )
     <= ( is_int(A_85)
        & is_int(B_54) ) ) ).

fof(fact_382_power__strict__decreasing,axiom,
    ! [A_73,N_21,N_20] :
      ( ( hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_real,zero_zero_real),A_73))
       => ( hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_real,hAPP_nat_real(power_power_real(A_73),N_20)),hAPP_nat_real(power_power_real(A_73),N_21)))
         <= hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_real,A_73),one_one_real)) ) )
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,N_21),N_20)) ) ).

fof(fact_422_number__of__Bit0,axiom,
    ! [W_5] : number267125858f_real(bit0(W_5)) = hAPP_real_real(plus_plus_real(hAPP_real_real(plus_plus_real(zero_zero_real),number267125858f_real(W_5))),number267125858f_real(W_5)) ).

fof(fact_928_nat__add__left__commute,axiom,
    ! [X_1,Y_1,Z] : hAPP_nat_nat(plus_plus_nat(Y_1),hAPP_nat_nat(plus_plus_nat(X_1),Z)) = hAPP_nat_nat(plus_plus_nat(X_1),hAPP_nat_nat(plus_plus_nat(Y_1),Z)) ).

fof(fact_1077_inv__not__1,axiom,
    ! [A,P_1] :
      ( ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,one_one_int),A))
       => ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,A),hAPP_int_int(minus_minus_int(P_1),one_one_int)))
         => inv(P_1,A) != one_one_int ) )
     <= hBOOL(hAPP_int_bool(zprime,P_1)) ) ).

fof(fact_446_power2__le__imp__le,axiom,
    ! [X_15,Y_12] :
      ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,X_15),Y_12))
       <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,zero_zero_nat),Y_12)) )
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(power_power_nat(X_15),number_number_of_nat(bit0(bit1(pls))))),hAPP_nat_nat(power_power_nat(Y_12),number_number_of_nat(bit0(bit1(pls)))))) ) ).

fof(fact_886_diff__self__eq__0,axiom,
    ! [M] : zero_zero_nat = hAPP_nat_nat(minus_minus_nat(M),M) ).

fof(fact_403_pos__zmult__pos,axiom,
    ! [B,A] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,zero_zero_int),A))
     => ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,zero_zero_int),hAPP_int_int(times_times_int(A),B)))
       => hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,zero_zero_int),B)) ) ) ).

fof(fact_1136_zdvd__iff__zmod__eq__0__number__of,axiom,
    ! [X_2,Y_2] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(dvd_dvd_int,number_number_of_int(X_2)),number_number_of_int(Y_2)))
    <=> zero_zero_int = hAPP_int_int(div_mod_int(number_number_of_int(Y_2)),number_number_of_int(X_2)) ) ).

fof(fact_1155_zmod__minus1__right,axiom,
    ! [A] : zero_zero_int = hAPP_int_int(div_mod_int(A),number_number_of_int(min)) ).

fof(fact_620_right__diff__distrib__number__of,axiom,
    ! [V_4,B_47,C_26] : hAPP_real_real(times_times_real(number267125858f_real(V_4)),hAPP_real_real(minus_minus_real(B_47),C_26)) = hAPP_real_real(minus_minus_real(hAPP_real_real(times_times_real(number267125858f_real(V_4)),B_47)),hAPP_real_real(times_times_real(number267125858f_real(V_4)),C_26)) ).

fof(fact_436_le__special_I3_J,axiom,
    ! [X_2] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,number_number_of_int(X_2)),zero_zero_int))
    <=> hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,X_2),pls)) ) ).

fof(fact_975_not__add__less2,axiom,
    ! [J_1,I_1] : ~ hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,hAPP_nat_nat(plus_plus_nat(J_1),I_1)),I_1)) ).

fof(fact_375_power__less__imp__less__base,axiom,
    ! [A_75,N_24,B_51] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,hAPP_nat_nat(power_power_nat(A_75),N_24)),hAPP_nat_nat(power_power_nat(B_51),N_24)))
     => ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,A_75),B_51))
       <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,zero_zero_nat),B_51)) ) ) ).

fof(fact_958_diff__less,axiom,
    ! [M,N_1] :
      ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,zero_zero_nat),M))
       => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,hAPP_nat_nat(minus_minus_nat(M),N_1)),M)) )
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,zero_zero_nat),N_1)) ) ).

fof(fact_72_rel__simps_I31_J,axiom,
    ! [K,L_1] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,bit0(K)),bit0(L_1)))
    <=> hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,K),L_1)) ) ).

fof(fact_122_comm__semiring__1__class_Onormalizing__semiring__rules_I23_J,axiom,
    ! [A_108,B_61,C_34] : hAPP_real_real(plus_plus_real(hAPP_real_real(plus_plus_real(A_108),B_61)),C_34) = hAPP_real_real(plus_plus_real(hAPP_real_real(plus_plus_real(A_108),C_34)),B_61) ).

fof(fact_469_power__mult,axiom,
    ! [A_64,M_4,N_14] : hAPP_nat_nat(power_power_nat(A_64),hAPP_nat_nat(times_times_nat(M_4),N_14)) = hAPP_nat_nat(power_power_nat(hAPP_nat_nat(power_power_nat(A_64),M_4)),N_14) ).

fof(fact_1151_zmod__self,axiom,
    ! [A] : zero_zero_int = hAPP_int_int(div_mod_int(A),A) ).

fof(fact_548_semiring__norm_I113_J,axiom,
    number_number_of_nat(pls) = zero_zero_nat ).

fof(gsy_c_Int_OPls,hypothesis,
    is_int(pls) ).

fof(fact_212_plus__numeral__code_I9_J,axiom,
    ! [V,W] : hAPP_int_int(plus_plus_int(number_number_of_int(V)),number_number_of_int(W)) = number_number_of_int(hAPP_int_int(plus_plus_int(V),W)) ).

fof(fact_176_comm__semiring__1__class_Onormalizing__semiring__rules_I8_J,axiom,
    ! [A_101,B_58,C_29] : hAPP_int_int(times_times_int(hAPP_int_int(plus_plus_int(A_101),B_58)),C_29) = hAPP_int_int(plus_plus_int(hAPP_int_int(times_times_int(A_101),C_29)),hAPP_int_int(times_times_int(B_58),C_29)) ).

fof(fact_104_comm__semiring__1__class_Onormalizing__semiring__rules_I17_J,axiom,
    ! [Lx_2,Ly,Rx_2] : hAPP_nat_nat(times_times_nat(hAPP_nat_nat(times_times_nat(Lx_2),Ly)),Rx_2) = hAPP_nat_nat(times_times_nat(Lx_2),hAPP_nat_nat(times_times_nat(Ly),Rx_2)) ).

fof(fact_293_four__x__squared,axiom,
    ! [X_1] : hAPP_real_real(times_times_real(number267125858f_real(bit0(bit0(bit1(pls))))),hAPP_nat_real(power_power_real(X_1),number_number_of_nat(bit0(bit1(pls))))) = hAPP_nat_real(power_power_real(hAPP_real_real(times_times_real(number267125858f_real(bit0(bit1(pls)))),X_1)),number_number_of_nat(bit0(bit1(pls)))) ).

fof(fact_619_zdvd__zdiffD,axiom,
    ! [K_1,M,N_1] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(dvd_dvd_int,K_1),hAPP_int_int(minus_minus_int(M),N_1)))
     => ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(dvd_dvd_int,K_1),N_1))
       => hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(dvd_dvd_int,K_1),M)) ) ) ).

fof(fact_1022_mult__le__mono1,axiom,
    ! [K_1,I_1,J_1] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,I_1),J_1))
     => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(times_times_nat(I_1),K_1)),hAPP_nat_nat(times_times_nat(J_1),K_1))) ) ).

fof(fact_665_Legendre__1mod4,axiom,
    ! [M] :
      ( hBOOL(hAPP_int_bool(zprime,hAPP_int_int(plus_plus_int(hAPP_int_int(times_times_int(number_number_of_int(bit0(bit0(bit1(pls))))),M)),one_one_int)))
     => legendre(number_number_of_int(min),hAPP_int_int(plus_plus_int(hAPP_int_int(times_times_int(number_number_of_int(bit0(bit0(bit1(pls))))),M)),one_one_int)) = one_one_int ) ).

fof(fact_835_zero__less__mult__pos2,axiom,
    ! [B_9,A_10] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,zero_zero_nat),hAPP_nat_nat(times_times_nat(B_9),A_10)))
     => ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,zero_zero_nat),B_9))
       <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,zero_zero_nat),A_10)) ) ) ).

fof(fact_119_Collect__def,axiom,
    ! [P_2] : P_2 = collect_int(P_2) ).

fof(fact_485_one__le__power,axiom,
    ! [N_12,A_62] :
      ( hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_eq_real,one_one_real),A_62))
     => hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_eq_real,one_one_real),hAPP_nat_real(power_power_real(A_62),N_12))) ) ).

fof(fact_1154_zdiff__zmod__left,axiom,
    ! [X_1,M,Y_1] : hAPP_int_int(div_mod_int(hAPP_int_int(minus_minus_int(hAPP_int_int(div_mod_int(X_1),M)),Y_1)),M) = hAPP_int_int(div_mod_int(hAPP_int_int(minus_minus_int(X_1),Y_1)),M) ).

fof(fact_551_pos__zmult__eq__1__iff__lemma,axiom,
    ! [M,N_1] :
      ( is_int(M)
     => ( hAPP_int_int(times_times_int(M),N_1) = one_one_int
       => ( M = number_number_of_int(min)
          | M = one_one_int ) ) ) ).

fof(fact_540_power__dvd__imp__le,axiom,
    ! [I_1,M,N_1] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,hAPP_nat_nat(power_power_nat(I_1),M)),hAPP_nat_nat(power_power_nat(I_1),N_1)))
     => ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,M),N_1))
       <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,one_one_nat),I_1)) ) ) ).

fof(gsy_c_hAPP_000tc__Int__Oint_000tc__HOL__Obool,axiom,
    ! [B_1_1,B_2_1] :
      ( is_bool(hAPP_int_bool(B_1_1,B_2_1))
     <= is_int(B_2_1) ) ).

fof(fact_516_zero__less__power__nat__eq__number__of,axiom,
    ! [X_2,W_1] :
      ( ( zero_zero_nat = number_number_of_nat(W_1)
        | hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,zero_zero_nat),X_2)) )
    <=> hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,zero_zero_nat),hAPP_nat_nat(power_power_nat(X_2),number_number_of_nat(W_1)))) ) ).

fof(fact_755_dvd__add,axiom,
    ! [C_15,A_34,B_31] :
      ( ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(dvd_dvd_int,A_34),hAPP_int_int(plus_plus_int(B_31),C_15)))
       <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(dvd_dvd_int,A_34),C_15)) )
     <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(dvd_dvd_int,A_34),B_31)) ) ).

fof(fact_929_nat__add__assoc,axiom,
    ! [M,N_1,K_1] : hAPP_nat_nat(plus_plus_nat(M),hAPP_nat_nat(plus_plus_nat(N_1),K_1)) = hAPP_nat_nat(plus_plus_nat(hAPP_nat_nat(plus_plus_nat(M),N_1)),K_1) ).

fof(fact_729_dvd__mult__right,axiom,
    ! [A_42,B_39,C_20] :
      ( hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(dvd_dvd_real,hAPP_real_real(times_times_real(A_42),B_39)),C_20))
     => hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(dvd_dvd_real,B_39),C_20)) ) ).

fof(fact_726_dvd__0__left,axiom,
    ! [A_44] :
      ( ( A_44 = zero_zero_int
       <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(dvd_dvd_int,zero_zero_int),A_44)) )
     <= is_int(A_44) ) ).

fof(fact_1080_inv__less__p__minus__1,axiom,
    ! [A,P_1] :
      ( ( ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,A),hAPP_int_int(minus_minus_int(P_1),one_one_int)))
         => hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,inv(P_1,A)),hAPP_int_int(minus_minus_int(P_1),one_one_int))) )
       <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,one_one_int),A)) )
     <= hBOOL(hAPP_int_bool(zprime,P_1)) ) ).

fof(fact_867_divides__exp2,axiom,
    ! [X_1,Y_1,N_1] :
      ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,hAPP_nat_nat(power_power_nat(X_1),N_1)),Y_1))
       => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,X_1),Y_1)) )
     <= N_1 != zero_zero_nat ) ).

fof(fact_578_zcong__zmult__self,axiom,
    ! [A,M,B] : hBOOL(hAPP_int_bool(zcong(hAPP_int_int(times_times_int(A),M),hAPP_int_int(times_times_int(B),M)),M)) ).

fof(fact_62_nat__1__add__1,axiom,
    hAPP_nat_nat(plus_plus_nat(one_one_nat),one_one_nat) = number_number_of_nat(bit0(bit1(pls))) ).

fof(fact_773_split__mult__pos__le,axiom,
    ! [B_29,A_31] :
      ( hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_eq_real,zero_zero_real),hAPP_real_real(times_times_real(A_31),B_29)))
     <= ( ( hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_eq_real,A_31),zero_zero_real))
          & hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_eq_real,B_29),zero_zero_real)) )
        | ( hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_eq_real,zero_zero_real),B_29))
          & hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_eq_real,zero_zero_real),A_31)) ) ) ) ).

fof(fact_985_nat__less__le,axiom,
    ! [Ma,N] :
      ( ( Ma != N
        & hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,Ma),N)) )
    <=> hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,Ma),N)) ) ).

fof(fact_420_le__nat__number__of,axiom,
    ! [V_7,V_8] :
      ( ( ~ hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,V_7),V_8))
       => hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,V_7),pls)) )
    <=> hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,number_number_of_nat(V_7)),number_number_of_nat(V_8))) ) ).

fof(fact_701_no__zero__divisors,axiom,
    ! [B_43,A_49] :
      ( zero_zero_real != A_49
     => ( hAPP_real_real(times_times_real(A_49),B_43) != zero_zero_real
       <= B_43 != zero_zero_real ) ) ).

fof(fact_144_number__of__is__id,axiom,
    ! [K_1] :
      ( is_int(K_1)
     => number_number_of_int(K_1) = K_1 ) ).

fof(fact_51_less__number__of,axiom,
    ! [X_2,Y_2] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,X_2),Y_2))
    <=> hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,number_number_of_int(X_2)),number_number_of_int(Y_2))) ) ).

fof(fact_553_one__less__power,axiom,
    ! [N_6,A_56] :
      ( ( hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_real,one_one_real),hAPP_nat_real(power_power_real(A_56),N_6)))
       <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,zero_zero_nat),N_6)) )
     <= hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_real,one_one_real),A_56)) ) ).

fof(fact_75_zadd__strict__right__mono,axiom,
    ! [K_1,I_1,J_1] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,I_1),J_1))
     => hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,hAPP_int_int(plus_plus_int(I_1),K_1)),hAPP_int_int(plus_plus_int(J_1),K_1))) ) ).

fof(fact_483_zero__le__even__power_H,axiom,
    ! [A_63,N_13] : hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_eq_real,zero_zero_real),hAPP_nat_real(power_power_real(A_63),hAPP_nat_nat(times_times_nat(number_number_of_nat(bit0(bit1(pls)))),N_13)))) ).

fof(fact_282_semiring__mult__2__right,axiom,
    ! [Z_4] : hAPP_real_real(times_times_real(Z_4),number267125858f_real(bit0(bit1(pls)))) = hAPP_real_real(plus_plus_real(Z_4),Z_4) ).

fof(fact_1063_zdvd__mono,axiom,
    ! [Ma,Ta,K] :
      ( ( ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(dvd_dvd_int,hAPP_int_int(times_times_int(K),Ma)),hAPP_int_int(times_times_int(K),Ta)))
        <=> hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(dvd_dvd_int,Ma),Ta)) )
       <= zero_zero_int != K )
     <= is_int(K) ) ).

fof(fact_571_Nat__Transfer_Otransfer__nat__int__function__closures_I5_J,axiom,
    hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,zero_zero_int),zero_zero_int)) ).

fof(fact_832_mult__less__cancel__left__neg,axiom,
    ! [A_2,B_2,C_2] :
      ( hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_real,C_2),zero_zero_real))
     => ( hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_real,B_2),A_2))
      <=> hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_real,hAPP_real_real(times_times_real(C_2),A_2)),hAPP_real_real(times_times_real(C_2),B_2))) ) ) ).

fof(fact_793_mult__right__mono,axiom,
    ! [C_8,A_24,B_22] :
      ( ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,zero_zero_int),C_8))
       => hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,hAPP_int_int(times_times_int(A_24),C_8)),hAPP_int_int(times_times_int(B_22),C_8))) )
     <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,A_24),B_22)) ) ).

fof(fact_202_mult__Bit0,axiom,
    ! [K_1,L] : hAPP_int_int(times_times_int(bit0(K_1)),L) = bit0(hAPP_int_int(times_times_int(K_1),L)) ).

fof(fact_819_comm__mult__strict__left__mono,axiom,
    ! [C_5,A_15,B_14] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,A_15),B_14))
     => ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,zero_zero_nat),C_5))
       => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,hAPP_nat_nat(times_times_nat(C_5),A_15)),hAPP_nat_nat(times_times_nat(C_5),B_14))) ) ) ).

fof(fact_47_zpower__zpower,axiom,
    ! [X_1,Y_1,Z] : hAPP_nat_int(power_power_int(hAPP_nat_int(power_power_int(X_1),Y_1)),Z) = hAPP_nat_int(power_power_int(X_1),hAPP_nat_nat(times_times_nat(Y_1),Z)) ).

fof(fact_266_semiring__norm_I110_J,axiom,
    one_one_real = number267125858f_real(bit1(pls)) ).

fof(fact_354_add__0__iff,axiom,
    ! [B_2,A_2] :
      ( A_2 = zero_zero_nat
    <=> hAPP_nat_nat(plus_plus_nat(B_2),A_2) = B_2 ) ).

fof(fact_896_less__imp__diff__less,axiom,
    ! [N_1,J_1,K_1] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,J_1),K_1))
     => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,hAPP_nat_nat(minus_minus_nat(J_1),N_1)),K_1)) ) ).

fof(fact_713_zero__neq__one,axiom,
    zero_zero_nat != one_one_nat ).

fof(fact_885_minus__nat_Odiff__0,axiom,
    ! [M] : hAPP_nat_nat(minus_minus_nat(M),zero_zero_nat) = M ).

fof(fact_978_trans__less__add2,axiom,
    ! [M,I_1,J_1] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,I_1),hAPP_nat_nat(plus_plus_nat(M),J_1)))
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,I_1),J_1)) ) ).

fof(fact_1008_le__add__diff,axiom,
    ! [M,K_1,N_1] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,M),hAPP_nat_nat(minus_minus_nat(hAPP_nat_nat(plus_plus_nat(N_1),M)),K_1)))
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,K_1),N_1)) ) ).

fof(fact_682_dvd__trans,axiom,
    ! [C_24,A_51,B_45] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,A_51),B_45))
     => ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,A_51),C_24))
       <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,B_45),C_24)) ) ) ).

fof(fact_757_one__dvd,axiom,
    ! [A_33] : hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,one_one_nat),A_33)) ).

fof(fact_24_power2__eq__square,axiom,
    ! [A_112] : hAPP_nat_nat(times_times_nat(A_112),A_112) = hAPP_nat_nat(power_power_nat(A_112),number_number_of_nat(bit0(bit1(pls)))) ).

fof(fact_153_rel__simps_I22_J,axiom,
    ! [K] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,pls),K))
    <=> hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,pls),bit1(K))) ) ).

fof(fact_693_realpow__minus__mult,axiom,
    ! [X_4,N_3] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,zero_zero_nat),N_3))
     => hAPP_real_real(times_times_real(hAPP_nat_real(power_power_real(X_4),hAPP_nat_nat(minus_minus_nat(N_3),one_one_nat))),X_4) = hAPP_nat_real(power_power_real(X_4),N_3) ) ).

fof(fact_392_semiring__norm_I112_J,axiom,
    zero_zero_real = number267125858f_real(pls) ).

fof(fact_704_mult__eq__0__iff,axiom,
    ! [A_2,B_2] :
      ( ( A_2 = zero_zero_real
        | B_2 = zero_zero_real )
    <=> zero_zero_real = hAPP_real_real(times_times_real(A_2),B_2) ) ).

fof(fact_895_diff__less__mono2,axiom,
    ! [L,M,N_1] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,M),N_1))
     => ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,hAPP_nat_nat(minus_minus_nat(L),N_1)),hAPP_nat_nat(minus_minus_nat(L),M)))
       <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,M),L)) ) ) ).

fof(fact_1142_zmod__eq__dvd__iff,axiom,
    ! [X_2,N,Y_2] :
      ( hAPP_int_int(div_mod_int(X_2),N) = hAPP_int_int(div_mod_int(Y_2),N)
    <=> hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(dvd_dvd_int,N),hAPP_int_int(minus_minus_int(X_2),Y_2))) ) ).

fof(fact_963_plus__nat_Oadd__0,axiom,
    ! [N_1] : hAPP_nat_nat(plus_plus_nat(zero_zero_nat),N_1) = N_1 ).

fof(fact_335_power__0__left,axiom,
    ! [N_29] :
      ( ( zero_zero_nat = N_29
       => hAPP_nat_nat(power_power_nat(zero_zero_nat),N_29) = one_one_nat )
      & ( zero_zero_nat != N_29
       => hAPP_nat_nat(power_power_nat(zero_zero_nat),N_29) = zero_zero_nat ) ) ).

fof(fact_184_comm__semiring__1__class_Onormalizing__semiring__rules_I34_J,axiom,
    ! [X_21,Y_18,Z_9] : hAPP_real_real(times_times_real(X_21),hAPP_real_real(plus_plus_real(Y_18),Z_9)) = hAPP_real_real(plus_plus_real(hAPP_real_real(times_times_real(X_21),Y_18)),hAPP_real_real(times_times_real(X_21),Z_9)) ).

fof(fact_229_comm__semiring__1__class_Onormalizing__semiring__rules_I3_J,axiom,
    ! [M_11,A_96] : hAPP_int_int(plus_plus_int(M_11),hAPP_int_int(times_times_int(A_96),M_11)) = hAPP_int_int(times_times_int(hAPP_int_int(plus_plus_int(A_96),one_one_int)),M_11) ).

fof(fact_166_le__special_I4_J,axiom,
    ! [X_2] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,number_number_of_int(X_2)),one_one_int))
    <=> hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,X_2),bit1(pls))) ) ).

fof(fact_576_zcong__scalar2,axiom,
    ! [K_1,A,B,M] :
      ( hBOOL(hAPP_int_bool(zcong(A,B),M))
     => hBOOL(hAPP_int_bool(zcong(hAPP_int_int(times_times_int(K_1),A),hAPP_int_int(times_times_int(K_1),B)),M)) ) ).

fof(fact_256_mult__numeral__1,axiom,
    ! [A_93] :
      ( hAPP_int_int(times_times_int(number_number_of_int(bit1(pls))),A_93) = A_93
     <= is_int(A_93) ) ).

fof(fact_510_self__quotient__aux1,axiom,
    ! [R_1,Q_1,A] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,zero_zero_int),A))
     => ( hAPP_int_int(plus_plus_int(R_1),hAPP_int_int(times_times_int(A),Q_1)) = A
       => ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,one_one_int),Q_1))
         <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,R_1),A)) ) ) ) ).

fof(fact_687_divides__antisym,axiom,
    ! [X_2,Y_2] :
      ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,X_2),Y_2))
        & hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,Y_2),X_2)) )
    <=> X_2 = Y_2 ) ).

fof(fact_1085_MultInv__prop4,axiom,
    ! [X_1,P_1] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,number_number_of_int(bit0(bit1(pls)))),P_1))
     => ( hBOOL(hAPP_int_bool(zprime,P_1))
       => ( hBOOL(hAPP_int_bool(zcong(multInv(P_1,multInv(P_1,X_1)),X_1),P_1))
         <= ~ hBOOL(hAPP_int_bool(zcong(X_1,zero_zero_int),P_1)) ) ) ) ).

fof(fact_760_dvd__diff,axiom,
    ! [Z_2,X_3,Y_3] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(dvd_dvd_int,X_3),Y_3))
     => ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(dvd_dvd_int,X_3),hAPP_int_int(minus_minus_int(Y_3),Z_2)))
       <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(dvd_dvd_int,X_3),Z_2)) ) ) ).

fof(fact_628_xzgcda__linear__aux1,axiom,
    ! [A,R_1,B,M,C,D_5,N_1] : hAPP_int_int(plus_plus_int(hAPP_int_int(times_times_int(hAPP_int_int(minus_minus_int(A),hAPP_int_int(times_times_int(R_1),B))),M)),hAPP_int_int(times_times_int(hAPP_int_int(minus_minus_int(C),hAPP_int_int(times_times_int(R_1),D_5))),N_1)) = hAPP_int_int(minus_minus_int(hAPP_int_int(plus_plus_int(hAPP_int_int(times_times_int(A),M)),hAPP_int_int(times_times_int(C),N_1))),hAPP_int_int(times_times_int(R_1),hAPP_int_int(plus_plus_int(hAPP_int_int(times_times_int(B),M)),hAPP_int_int(times_times_int(D_5),N_1)))) ).

fof(fact_1145_zcong__zmod,axiom,
    ! [A_2,B_2,Ma] :
      ( hBOOL(hAPP_int_bool(zcong(hAPP_int_int(div_mod_int(A_2),Ma),hAPP_int_int(div_mod_int(B_2),Ma)),Ma))
    <=> hBOOL(hAPP_int_bool(zcong(A_2,B_2),Ma)) ) ).

fof(fact_778_mult__mono_H,axiom,
    ! [C_13,D_3,A_29,B_27] :
      ( hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_eq_real,A_29),B_27))
     => ( ( hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_eq_real,zero_zero_real),A_29))
         => ( hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_eq_real,zero_zero_real),C_13))
           => hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_eq_real,hAPP_real_real(times_times_real(A_29),C_13)),hAPP_real_real(times_times_real(B_27),D_3))) ) )
       <= hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_eq_real,C_13),D_3)) ) ) ).

fof(fact_813_zero__le__square,axiom,
    ! [A_18] : hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,zero_zero_int),hAPP_int_int(times_times_int(A_18),A_18))) ).

fof(fact_570_order__le__neq__implies__less,axiom,
    ! [X_8,Y_7] :
      ( ( ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,X_8),Y_7))
         <= Y_7 != X_8 )
       <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,X_8),Y_7)) )
     <= ( is_int(X_8)
        & is_int(Y_7) ) ) ).

fof(fact_1129_pow__divides__eq__nat,axiom,
    ! [A_2,B_2,N] :
      ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,hAPP_nat_nat(power_power_nat(A_2),N)),hAPP_nat_nat(power_power_nat(B_2),N)))
      <=> hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,A_2),B_2)) )
     <= zero_zero_nat != N ) ).

fof(fact_743_dvd__mult,axiom,
    ! [B_35,A_38,C_17] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(dvd_dvd_int,A_38),hAPP_int_int(times_times_int(B_35),C_17)))
     <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(dvd_dvd_int,A_38),C_17)) ) ).

fof(fact_1042_mult__le__cancel2,axiom,
    ! [Ma,K,N] :
      ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,zero_zero_nat),K))
       => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,Ma),N)) )
    <=> hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(times_times_nat(Ma),K)),hAPP_nat_nat(times_times_nat(N),K))) ) ).

fof(fact_197_rel__simps_I49_J,axiom,
    ! [K_1,L] : bit0(K_1) != bit1(L) ).

fof(fact_838_zero__less__mult__pos,axiom,
    ! [A_9,B_8] :
      ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,zero_zero_nat),A_9))
       => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,zero_zero_nat),B_8)) )
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,zero_zero_nat),hAPP_nat_nat(times_times_nat(A_9),B_8))) ) ).

fof(fact_364_zero__le__power,axiom,
    ! [N_27,A_78] :
      ( hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_eq_real,zero_zero_real),hAPP_nat_real(power_power_real(A_78),N_27)))
     <= hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_eq_real,zero_zero_real),A_78)) ) ).

fof(fact_352_comm__semiring__1__class_Onormalizing__semiring__rules_I6_J,axiom,
    ! [A_79] : hAPP_real_real(plus_plus_real(A_79),zero_zero_real) = A_79 ).

fof(fact_218_semiring__add__number__of,axiom,
    ! [V_18,V_17] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,pls),V_17))
     => ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,pls),V_18))
       => number267125858f_real(hAPP_int_int(plus_plus_int(V_17),V_18)) = hAPP_real_real(plus_plus_real(number267125858f_real(V_17)),number267125858f_real(V_18)) ) ) ).

fof(fact_183_comm__semiring__1__class_Onormalizing__semiring__rules_I34_J,axiom,
    ! [X_21,Y_18,Z_9] : hAPP_nat_nat(times_times_nat(X_21),hAPP_nat_nat(plus_plus_nat(Y_18),Z_9)) = hAPP_nat_nat(plus_plus_nat(hAPP_nat_nat(times_times_nat(X_21),Y_18)),hAPP_nat_nat(times_times_nat(X_21),Z_9)) ).

fof(fact_118_mem__def,axiom,
    ! [X_2,A_109] :
      ( hBOOL(hAPP_int_bool(A_109,X_2))
    <=> hBOOL(member_int(X_2,A_109)) ) ).

fof(fact_177_comm__semiring__1__class_Onormalizing__semiring__rules_I8_J,axiom,
    ! [A_101,B_58,C_29] : hAPP_nat_nat(times_times_nat(hAPP_nat_nat(plus_plus_nat(A_101),B_58)),C_29) = hAPP_nat_nat(plus_plus_nat(hAPP_nat_nat(times_times_nat(A_101),C_29)),hAPP_nat_nat(times_times_nat(B_58),C_29)) ).

fof(fact_499_power__less__imp__less__exp,axiom,
    ! [M_3,N_9,A_60] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,one_one_int),A_60))
     => ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,hAPP_nat_int(power_power_int(A_60),M_3)),hAPP_nat_int(power_power_int(A_60),N_9)))
       => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,M_3),N_9)) ) ) ).

fof(fact_784_mult__right__mono__neg,axiom,
    ! [C_11,B_25,A_27] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,B_25),A_27))
     => ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,hAPP_int_int(times_times_int(A_27),C_11)),hAPP_int_int(times_times_int(B_25),C_11)))
       <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,C_11),zero_zero_int)) ) ) ).

fof(fact_734_dvd__mult__left,axiom,
    ! [A_41,B_38,C_19] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(dvd_dvd_int,A_41),C_19))
     <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(dvd_dvd_int,hAPP_int_int(times_times_int(A_41),B_38)),C_19)) ) ).

fof(fact_1106_d22set__induct__old,axiom,
    ! [X_2,P_2] :
      ( ! [A_3] :
          ( is_int(A_3)
         => ( hBOOL(hAPP_int_bool(P_2,A_3))
           <= ( hBOOL(hAPP_int_bool(P_2,hAPP_int_int(minus_minus_int(A_3),one_one_int)))
             <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,one_one_int),A_3)) ) ) )
     => hBOOL(hAPP_int_bool(P_2,X_2)) ) ).

fof(fact_905_dvd_Oless__imp__not__less,axiom,
    ! [X_1,Y_1] :
      ( ~ ( ~ hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,X_1),Y_1))
          & hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,Y_1),X_1)) )
     <= ( ~ hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,Y_1),X_1))
        & hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,X_1),Y_1)) ) ) ).

fof(fact_190_comm__semiring__1__class_Onormalizing__semiring__rules_I11_J,axiom,
    ! [A_99] : hAPP_real_real(times_times_real(one_one_real),A_99) = A_99 ).

fof(fact_302_power__le__imp__le__exp,axiom,
    ! [M_9,N_36,A_88] :
      ( hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_real,one_one_real),A_88))
     => ( hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_eq_real,hAPP_nat_real(power_power_real(A_88),M_9)),hAPP_nat_real(power_power_real(A_88),N_36)))
       => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,M_9),N_36)) ) ) ).

fof(fact_1113_d22set__le__swap,axiom,
    ! [A_2,B_2] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,A_2),B_2))
     => ~ hBOOL(member_int(B_2,d22set(A_2))) ) ).

fof(fact_848_mult__pos__pos,axiom,
    ! [B_5,A_6] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,zero_zero_int),A_6))
     => ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,zero_zero_int),hAPP_int_int(times_times_int(A_6),B_5)))
       <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,zero_zero_int),B_5)) ) ) ).

fof(fact_723_comm__semiring__class_Odistrib,axiom,
    ! [A_45,B_41,C_22] : hAPP_int_int(plus_plus_int(hAPP_int_int(times_times_int(A_45),C_22)),hAPP_int_int(times_times_int(B_41),C_22)) = hAPP_int_int(times_times_int(hAPP_int_int(plus_plus_int(A_45),B_41)),C_22) ).

fof(fact_60_nat__mult__2,axiom,
    ! [Z] : hAPP_nat_nat(plus_plus_nat(Z),Z) = hAPP_nat_nat(times_times_nat(number_number_of_nat(bit0(bit1(pls)))),Z) ).

fof(fact_868_divides__rev,axiom,
    ! [A,N_1,B] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,hAPP_nat_nat(power_power_nat(A),N_1)),hAPP_nat_nat(power_power_nat(B),N_1)))
     => ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,A),B))
       <= N_1 != zero_zero_nat ) ) ).

fof(fact_344_comm__semiring__1__class_Onormalizing__semiring__rules_I10_J,axiom,
    ! [A_81] : zero_zero_int = hAPP_int_int(times_times_int(A_81),zero_zero_int) ).

fof(fact_410_zprime__power__zdvd__cancel__right,axiom,
    ! [N_1,A,B,P_1] :
      ( ( ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(dvd_dvd_int,hAPP_nat_int(power_power_int(P_1),N_1)),A))
         <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(dvd_dvd_int,hAPP_nat_int(power_power_int(P_1),N_1)),hAPP_int_int(times_times_int(A),B))) )
       <= ~ hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(dvd_dvd_int,P_1),B)) )
     <= hBOOL(hAPP_int_bool(zprime,P_1)) ) ).

fof(fact_825_mult__strict__right__mono,axiom,
    ! [C_3,A_13,B_12] :
      ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,hAPP_nat_nat(times_times_nat(A_13),C_3)),hAPP_nat_nat(times_times_nat(B_12),C_3)))
       <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,zero_zero_nat),C_3)) )
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,A_13),B_12)) ) ).

fof(fact_372_zdvd__reduce,axiom,
    ! [K,N,Ma] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(dvd_dvd_int,K),hAPP_int_int(plus_plus_int(N),hAPP_int_int(times_times_int(K),Ma))))
    <=> hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(dvd_dvd_int,K),N)) ) ).

fof(fact_423_power__one__right,axiom,
    ! [A_70] :
      ( is_int(A_70)
     => hAPP_nat_int(power_power_int(A_70),one_one_nat) = A_70 ) ).

fof(fact_321_power__le__dvd,axiom,
    ! [M_6,A_86,N_33,B_55] :
      ( ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(dvd_dvd_int,hAPP_nat_int(power_power_int(A_86),M_6)),B_55))
       <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,M_6),N_33)) )
     <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(dvd_dvd_int,hAPP_nat_int(power_power_int(A_86),N_33)),B_55)) ) ).

fof(fact_1194_split__mod,axiom,
    ! [P_2,N,K] :
      ( ( ( K = zero_zero_nat
         => hBOOL(hAPP_nat_bool(P_2,N)) )
        & ( K != zero_zero_nat
         => ! [I,J] :
              ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,J),K))
             => ( hBOOL(hAPP_nat_bool(P_2,J))
               <= hAPP_nat_nat(plus_plus_nat(hAPP_nat_nat(times_times_nat(K),I)),J) = N ) ) ) )
    <=> hBOOL(hAPP_nat_bool(P_2,hAPP_nat_nat(div_mod_nat(N),K))) ) ).

fof(fact_903_dvd_Oless__imp__not__eq2,axiom,
    ! [X_1,Y_1] :
      ( ( ~ hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,Y_1),X_1))
        & hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,X_1),Y_1)) )
     => X_1 != Y_1 ) ).

fof(fact_856_not__square__less__zero,axiom,
    ! [A_5] : ~ hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,hAPP_int_int(times_times_int(A_5),A_5)),zero_zero_int)) ).

fof(fact_93_comm__semiring__1__class_Onormalizing__semiring__rules_I13_J,axiom,
    ! [Lx_6,Ly_4,Rx_6,Ry_4] : hAPP_real_real(times_times_real(hAPP_real_real(times_times_real(Lx_6),Rx_6)),hAPP_real_real(times_times_real(Ly_4),Ry_4)) = hAPP_real_real(times_times_real(hAPP_real_real(times_times_real(Lx_6),Ly_4)),hAPP_real_real(times_times_real(Rx_6),Ry_4)) ).

fof(fact_1111_ex__least__nat__le,axiom,
    ! [N,P_2] :
      ( ~ hBOOL(hAPP_nat_bool(P_2,zero_zero_nat))
     => ( ? [K_2] :
            ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,K_2),N))
            & ! [I] :
                ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,I),K_2))
               => ~ hBOOL(hAPP_nat_bool(P_2,I)) )
            & hBOOL(hAPP_nat_bool(P_2,K_2)) )
       <= hBOOL(hAPP_nat_bool(P_2,N)) ) ) ).

fof(fact_545_power__0,axiom,
    ! [A_57] : one_one_nat = hAPP_nat_nat(power_power_nat(A_57),zero_zero_nat) ).

fof(fact_1187_mod__less,axiom,
    ! [M,N_1] :
      ( M = hAPP_nat_nat(div_mod_nat(M),N_1)
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,M),N_1)) ) ).

fof(fact_1004_add__leD1,axiom,
    ! [M,K_1,N_1] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(plus_plus_nat(M),K_1)),N_1))
     => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,M),N_1)) ) ).

fof(fact_167_le__special_I4_J,axiom,
    ! [X_2] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,X_2),bit1(pls)))
    <=> hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_eq_real,number267125858f_real(X_2)),one_one_real)) ) ).

fof(fact_241_arith__simps_I32_J,axiom,
    ! [V_13,W_12] : number_number_of_int(hAPP_int_int(times_times_int(V_13),W_12)) = hAPP_int_int(times_times_int(number_number_of_int(V_13)),number_number_of_int(W_12)) ).

fof(fact_330_dvd__power__same,axiom,
    ! [N_31,X_18,Y_15] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(dvd_dvd_int,X_18),Y_15))
     => hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(dvd_dvd_int,hAPP_nat_int(power_power_int(X_18),N_31)),hAPP_nat_int(power_power_int(Y_15),N_31))) ) ).

fof(fact_215_semiring__mult__number__of,axiom,
    ! [V_20,V_19] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,pls),V_19))
     => ( hAPP_real_real(times_times_real(number267125858f_real(V_19)),number267125858f_real(V_20)) = number267125858f_real(hAPP_int_int(times_times_int(V_19),V_20))
       <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,pls),V_20)) ) ) ).

fof(fact_1135_zmod__number__of__Bit1,axiom,
    ! [V,W] :
      ( ( hAPP_int_int(minus_minus_int(hAPP_int_int(times_times_int(number_number_of_int(bit0(bit1(pls)))),hAPP_int_int(div_mod_int(hAPP_int_int(plus_plus_int(number_number_of_int(V)),one_one_int)),number_number_of_int(W)))),one_one_int) = hAPP_int_int(div_mod_int(number_number_of_int(bit1(V))),number_number_of_int(bit0(W)))
       <= ~ hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,zero_zero_int),number_number_of_int(W))) )
      & ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,zero_zero_int),number_number_of_int(W)))
       => hAPP_int_int(div_mod_int(number_number_of_int(bit1(V))),number_number_of_int(bit0(W))) = hAPP_int_int(plus_plus_int(hAPP_int_int(times_times_int(number_number_of_int(bit0(bit1(pls)))),hAPP_int_int(div_mod_int(number_number_of_int(V)),number_number_of_int(W)))),one_one_int) ) ) ).

fof(fact_1133_SR__def,axiom,
    ! [P_3] : collect_int(cOMBS_int_bool_bool(cOMBB_1652995168ol_int(fconj,hAPP_i1948725293t_bool(ord_less_eq_int,zero_zero_int)),cOMBC_int_int_bool(ord_less_int,P_3))) = sr(P_3) ).

fof(fact_656_zcong__zero__equiv__div,axiom,
    ! [A_2,Ma] :
      ( hBOOL(hAPP_int_bool(zcong(A_2,zero_zero_int),Ma))
    <=> hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(dvd_dvd_int,Ma),A_2)) ) ).

fof(fact_300_power__le__imp__le__exp,axiom,
    ! [M_9,N_36,A_88] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,one_one_int),A_88))
     => ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,hAPP_nat_int(power_power_int(A_88),M_9)),hAPP_nat_int(power_power_int(A_88),N_36)))
       => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,M_9),N_36)) ) ) ).

fof(gsy_c_hAPP_000tc__HOL__Obool_000tc__HOL__Obool,axiom,
    ! [B_1_1,B_2_1] :
      ( is_bool(hAPP_bool_bool(B_1_1,B_2_1))
     <= is_bool(B_2_1) ) ).

fof(fact_114_comm__semiring__1__class_Onormalizing__semiring__rules_I7_J,axiom,
    ! [A_111,B_63] : hAPP_real_real(times_times_real(A_111),B_63) = hAPP_real_real(times_times_real(B_63),A_111) ).

fof(fact_230_comm__semiring__1__class_Onormalizing__semiring__rules_I3_J,axiom,
    ! [M_11,A_96] : hAPP_nat_nat(times_times_nat(hAPP_nat_nat(plus_plus_nat(A_96),one_one_nat)),M_11) = hAPP_nat_nat(plus_plus_nat(M_11),hAPP_nat_nat(times_times_nat(A_96),M_11)) ).

fof(fact_539_eq__number__of__Pls__Min,axiom,
    number_number_of_int(pls) != number_number_of_int(min) ).

fof(fact_491_power__inject__exp,axiom,
    ! [Ma,N,A_2] :
      ( hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_real,one_one_real),A_2))
     => ( N = Ma
      <=> hAPP_nat_real(power_power_real(A_2),N) = hAPP_nat_real(power_power_real(A_2),Ma) ) ) ).

fof(fact_724_dvd__0__left,axiom,
    ! [A_44] :
      ( hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(dvd_dvd_real,zero_zero_real),A_44))
     => zero_zero_real = A_44 ) ).

fof(fact_943_diff__le__mono2,axiom,
    ! [L,M,N_1] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(minus_minus_nat(L),N_1)),hAPP_nat_nat(minus_minus_nat(L),M)))
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,M),N_1)) ) ).

fof(fact_37_zless__le,axiom,
    ! [Z_1,W_1] :
      ( ( is_int(W_1)
        & is_int(Z_1) )
     => ( ( W_1 != Z_1
          & hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,Z_1),W_1)) )
      <=> hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,Z_1),W_1)) ) ) ).

fof(fact_262_semiring__numeral__1__eq__1,axiom,
    number267125858f_real(bit1(pls)) = one_one_real ).

fof(fact_315_le__imp__power__dvd,axiom,
    ! [A_87,M_8,N_35] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,M_8),N_35))
     => hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(dvd_dvd_int,hAPP_nat_int(power_power_int(A_87),M_8)),hAPP_nat_int(power_power_int(A_87),N_35))) ) ).

fof(fact_1185_mod__mult__distrib,axiom,
    ! [M,N_1,K_1] : hAPP_nat_nat(times_times_nat(hAPP_nat_nat(div_mod_nat(M),N_1)),K_1) = hAPP_nat_nat(div_mod_nat(hAPP_nat_nat(times_times_nat(M),K_1)),hAPP_nat_nat(times_times_nat(N_1),K_1)) ).

fof(fact_127_comm__semiring__1__class_Onormalizing__semiring__rules_I25_J,axiom,
    ! [A_106,C_32,D_10] : hAPP_nat_nat(plus_plus_nat(A_106),hAPP_nat_nat(plus_plus_nat(C_32),D_10)) = hAPP_nat_nat(plus_plus_nat(hAPP_nat_nat(plus_plus_nat(A_106),C_32)),D_10) ).

fof(fact_535_rel__simps_I26_J,axiom,
    ! [K] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,min),K))
    <=> hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,min),bit1(K))) ) ).

fof(fact_660_neg__one__power,axiom,
    ! [N_1] :
      ( hAPP_nat_int(power_power_int(number_number_of_int(min)),N_1) = one_one_int
      | number_number_of_int(min) = hAPP_nat_int(power_power_int(number_number_of_int(min)),N_1) ) ).

fof(fact_196_rel__simps_I50_J,axiom,
    ! [K_1,L] : bit0(L) != bit1(K_1) ).

fof(fact_653_zcong__not__zero,axiom,
    ! [M,X_1] :
      ( ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,X_1),M))
       => ~ hBOOL(hAPP_int_bool(zcong(X_1,zero_zero_int),M)) )
     <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,zero_zero_int),X_1)) ) ).

fof(fact_171_crossproduct__eq,axiom,
    ! [W_1,Y_2,X_2,Z_1] :
      ( ( W_1 = X_2
        | Z_1 = Y_2 )
    <=> hAPP_nat_nat(plus_plus_nat(hAPP_nat_nat(times_times_nat(W_1),Y_2)),hAPP_nat_nat(times_times_nat(X_2),Z_1)) = hAPP_nat_nat(plus_plus_nat(hAPP_nat_nat(times_times_nat(W_1),Z_1)),hAPP_nat_nat(times_times_nat(X_2),Y_2)) ) ).

fof(fact_969_mult__0,axiom,
    ! [N_1] : zero_zero_nat = hAPP_nat_nat(times_times_nat(zero_zero_nat),N_1) ).

fof(fact_1015_add__diff__assoc2,axiom,
    ! [I_1,K_1,J_1] :
      ( hAPP_nat_nat(plus_plus_nat(hAPP_nat_nat(minus_minus_nat(J_1),K_1)),I_1) = hAPP_nat_nat(minus_minus_nat(hAPP_nat_nat(plus_plus_nat(J_1),I_1)),K_1)
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,K_1),J_1)) ) ).

fof(fact_1012_le__add__diff__inverse2,axiom,
    ! [N_1,M] :
      ( M = hAPP_nat_nat(plus_plus_nat(hAPP_nat_nat(minus_minus_nat(M),N_1)),N_1)
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,N_1),M)) ) ).

fof(fact_1093_Int2_Oaux____1,axiom,
    ! [X_1,P_1] :
      ( ( ( hBOOL(hAPP_int_bool(zcong(multInv(P_1,multInv(P_1,X_1)),hAPP_int_int(times_times_int(hAPP_int_int(times_times_int(X_1),multInv(P_1,X_1))),multInv(P_1,multInv(P_1,X_1)))),P_1))
         <= ~ hBOOL(hAPP_int_bool(zcong(X_1,zero_zero_int),P_1)) )
       <= hBOOL(hAPP_int_bool(zprime,P_1)) )
     <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,number_number_of_int(bit0(bit1(pls)))),P_1)) ) ).

fof(fact_602_q__pos__lemma,axiom,
    ! [B_48,Q_4,R_3] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,zero_zero_int),hAPP_int_int(plus_plus_int(hAPP_int_int(times_times_int(B_48),Q_4)),R_3)))
     => ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,R_3),B_48))
       => ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,zero_zero_int),Q_4))
         <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,zero_zero_int),B_48)) ) ) ) ).

fof(fact_717_one__neq__zero,axiom,
    one_one_int != zero_zero_int ).

fof(fact_1117_pow__divides__eq__int,axiom,
    ! [A_2,B_2,N] :
      ( zero_zero_nat != N
     => ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(dvd_dvd_int,A_2),B_2))
      <=> hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(dvd_dvd_int,hAPP_nat_int(power_power_int(A_2),N)),hAPP_nat_int(power_power_int(B_2),N))) ) ) ).

fof(fact_738_mult__dvd__mono,axiom,
    ! [C_18,D_6,A_39,B_36] :
      ( ( hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(dvd_dvd_real,hAPP_real_real(times_times_real(A_39),C_18)),hAPP_real_real(times_times_real(B_36),D_6)))
       <= hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(dvd_dvd_real,C_18),D_6)) )
     <= hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(dvd_dvd_real,A_39),B_36)) ) ).

fof(fact_591_power__0__left__number__of,axiom,
    ! [W_4] :
      ( ( zero_zero_real = hAPP_nat_real(power_power_real(zero_zero_real),number_number_of_nat(W_4))
       <= number_number_of_nat(W_4) != zero_zero_nat )
      & ( hAPP_nat_real(power_power_real(zero_zero_real),number_number_of_nat(W_4)) = one_one_real
       <= number_number_of_nat(W_4) = zero_zero_nat ) ) ).

fof(fact_697_diff__square,axiom,
    ! [X_1,Y_1] : hAPP_nat_nat(times_times_nat(hAPP_nat_nat(plus_plus_nat(X_1),Y_1)),hAPP_nat_nat(minus_minus_nat(X_1),Y_1)) = hAPP_nat_nat(minus_minus_nat(hAPP_nat_nat(power_power_nat(X_1),number_number_of_nat(bit0(bit1(pls))))),hAPP_nat_nat(power_power_nat(Y_1),number_number_of_nat(bit0(bit1(pls))))) ).

fof(fact_216_semiring__add__number__of,axiom,
    ! [V_18,V_17] :
      ( ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,pls),V_18))
       => hAPP_int_int(plus_plus_int(number_number_of_int(V_17)),number_number_of_int(V_18)) = number_number_of_int(hAPP_int_int(plus_plus_int(V_17),V_18)) )
     <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,pls),V_17)) ) ).

fof(fact_70_rel__simps_I19_J,axiom,
    hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,pls),pls)) ).

fof(fact_264_numeral__1__eq__1,axiom,
    one_one_real = number267125858f_real(bit1(pls)) ).

fof(fact_376_power__less__imp__less__base,axiom,
    ! [A_75,N_24,B_51] :
      ( ( hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_eq_real,zero_zero_real),B_51))
       => hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_real,A_75),B_51)) )
     <= hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_real,hAPP_nat_real(power_power_real(A_75),N_24)),hAPP_nat_real(power_power_real(B_51),N_24))) ) ).

fof(fact_284_mult__2__right,axiom,
    ! [Z_3] : hAPP_real_real(times_times_real(Z_3),number267125858f_real(bit0(bit1(pls)))) = hAPP_real_real(plus_plus_real(Z_3),Z_3) ).

fof(fact_22_power2__eq__square,axiom,
    ! [A_112] : hAPP_nat_int(power_power_int(A_112),number_number_of_nat(bit0(bit1(pls)))) = hAPP_int_int(times_times_int(A_112),A_112) ).

fof(fact_31_add__special_I3_J,axiom,
    ! [V_21] : hAPP_real_real(plus_plus_real(number267125858f_real(V_21)),one_one_real) = number267125858f_real(hAPP_int_int(plus_plus_int(V_21),bit1(pls))) ).

fof(fact_973_mult__cancel2,axiom,
    ! [Ma,K,N] :
      ( ( Ma = N
        | zero_zero_nat = K )
    <=> hAPP_nat_nat(times_times_nat(N),K) = hAPP_nat_nat(times_times_nat(Ma),K) ) ).

fof(fact_869_exp__eq__1,axiom,
    ! [X_2,N] :
      ( hAPP_nat_nat(power_power_nat(X_2),N) = one_one_nat
    <=> ( zero_zero_nat = N
        | one_one_nat = X_2 ) ) ).

fof(fact_418_sum__squares__gt__zero__iff,axiom,
    ! [X_2,Y_2] :
      ( ( is_int(Y_2)
        & is_int(X_2) )
     => ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,zero_zero_int),hAPP_int_int(plus_plus_int(hAPP_int_int(times_times_int(X_2),X_2)),hAPP_int_int(times_times_int(Y_2),Y_2))))
      <=> ( zero_zero_int != X_2
          | Y_2 != zero_zero_int ) ) ) ).

fof(fact_965_le__0__eq,axiom,
    ! [N] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,N),zero_zero_nat))
    <=> zero_zero_nat = N ) ).

fof(fact_111_comm__semiring__1__class_Onormalizing__semiring__rules_I19_J,axiom,
    ! [Lx,Rx,Ry] : hAPP_real_real(times_times_real(Rx),hAPP_real_real(times_times_real(Lx),Ry)) = hAPP_real_real(times_times_real(Lx),hAPP_real_real(times_times_real(Rx),Ry)) ).

fof(fact_381_power__strict__decreasing,axiom,
    ! [A_73,N_21,N_20] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,N_21),N_20))
     => ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,zero_zero_nat),A_73))
       => ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,A_73),one_one_nat))
         => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,hAPP_nat_nat(power_power_nat(A_73),N_20)),hAPP_nat_nat(power_power_nat(A_73),N_21))) ) ) ) ).

fof(fact_109_comm__semiring__1__class_Onormalizing__semiring__rules_I19_J,axiom,
    ! [Lx,Rx,Ry] : hAPP_int_int(times_times_int(Lx),hAPP_int_int(times_times_int(Rx),Ry)) = hAPP_int_int(times_times_int(Rx),hAPP_int_int(times_times_int(Lx),Ry)) ).

fof(fact_543_comm__semiring__1__class_Onormalizing__semiring__rules_I32_J,axiom,
    ! [X_10] : hAPP_nat_int(power_power_int(X_10),zero_zero_nat) = one_one_int ).

fof(fact_472_power2__less__imp__less,axiom,
    ! [X_13,Y_10] :
      ( ( hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_real,X_13),Y_10))
       <= hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_eq_real,zero_zero_real),Y_10)) )
     <= hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_real,hAPP_nat_real(power_power_real(X_13),number_number_of_nat(bit0(bit1(pls))))),hAPP_nat_real(power_power_real(Y_10),number_number_of_nat(bit0(bit1(pls)))))) ) ).

fof(fact_718_combine__common__factor,axiom,
    ! [A_46,E,B_42,C_23] : hAPP_real_real(plus_plus_real(hAPP_real_real(times_times_real(A_46),E)),hAPP_real_real(plus_plus_real(hAPP_real_real(times_times_real(B_42),E)),C_23)) = hAPP_real_real(plus_plus_real(hAPP_real_real(times_times_real(hAPP_real_real(plus_plus_real(A_46),B_42)),E)),C_23) ).

fof(fact_243_number__of__mult,axiom,
    ! [V_12,W_11] : number_number_of_int(hAPP_int_int(times_times_int(V_12),W_11)) = hAPP_int_int(times_times_int(number_number_of_int(V_12)),number_number_of_int(W_11)) ).

fof(fact_1011_le__diff__conv2,axiom,
    ! [I_2,K,J_2] :
      ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,I_2),hAPP_nat_nat(minus_minus_nat(J_2),K)))
      <=> hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(plus_plus_nat(I_2),K)),J_2)) )
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,K),J_2)) ) ).

fof(fact_616_zdiff__zmult__distrib2,axiom,
    ! [W,Z1,Z2] : hAPP_int_int(minus_minus_int(hAPP_int_int(times_times_int(W),Z1)),hAPP_int_int(times_times_int(W),Z2)) = hAPP_int_int(times_times_int(W),hAPP_int_int(minus_minus_int(Z1),Z2)) ).

fof(fact_141_rel__simps_I48_J,axiom,
    ! [K,L_1] :
      ( ( is_int(L_1)
        & is_int(K) )
     => ( bit0(L_1) = bit0(K)
      <=> K = L_1 ) ) ).

fof(fact_970_mult__0__right,axiom,
    ! [M] : zero_zero_nat = hAPP_nat_nat(times_times_nat(M),zero_zero_nat) ).

fof(fact_1191_StandardRes__prop1,axiom,
    ! [X_1,M] : hBOOL(hAPP_int_bool(zcong(X_1,standardRes(M,X_1)),M)) ).

fof(fact_369_zero__less__power,axiom,
    ! [N_25,A_76] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,zero_zero_nat),hAPP_nat_nat(power_power_nat(A_76),N_25)))
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,zero_zero_nat),A_76)) ) ).

fof(fact_945_diff__diff__cancel,axiom,
    ! [I_1,N_1] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,I_1),N_1))
     => I_1 = hAPP_nat_nat(minus_minus_nat(N_1),hAPP_nat_nat(minus_minus_nat(N_1),I_1)) ) ).

fof(fact_194_rel__simps_I46_J,axiom,
    ! [K_1] : pls != bit1(K_1) ).

fof(fact_1173_zmod__minus1,axiom,
    ! [B] :
      ( hAPP_int_int(div_mod_int(number_number_of_int(min)),B) = hAPP_int_int(minus_minus_int(B),one_one_int)
     <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,zero_zero_int),B)) ) ).

fof(fact_685_less__eq__real__def,axiom,
    ! [X_2,Y_2] :
      ( ( Y_2 = X_2
        | hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_real,X_2),Y_2)) )
    <=> hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_eq_real,X_2),Y_2)) ) ).

fof(fact_942_Nat_Odiff__le__self,axiom,
    ! [M,N_1] : hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(minus_minus_nat(M),N_1)),M)) ).

fof(fact_657_zprime__zdvd__zmult__better,axiom,
    ! [M,N_1,P_1] :
      ( hBOOL(hAPP_int_bool(zprime,P_1))
     => ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(dvd_dvd_int,P_1),hAPP_int_int(times_times_int(M),N_1)))
       => ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(dvd_dvd_int,P_1),N_1))
          | hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(dvd_dvd_int,P_1),M)) ) ) ) ).

fof(fact_559_less__0__number__of,axiom,
    ! [V_7] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,zero_zero_nat),number_number_of_nat(V_7)))
    <=> hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,pls),V_7)) ) ).

fof(fact_275_semiring__mult__2,axiom,
    ! [Z_6] : hAPP_int_int(plus_plus_int(Z_6),Z_6) = hAPP_int_int(times_times_int(number_number_of_int(bit0(bit1(pls)))),Z_6) ).

fof(fact_771_split__mult__neg__le,axiom,
    ! [B_30,A_32] :
      ( ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,A_32),zero_zero_nat))
          & hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,zero_zero_nat),B_30)) )
        | ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,zero_zero_nat),A_32))
          & hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,B_30),zero_zero_nat)) ) )
     => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(times_times_nat(A_32),B_30)),zero_zero_nat)) ) ).

fof(fact_378_power__decreasing,axiom,
    ! [A_74,N_23,N_22] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,N_23),N_22))
     => ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,A_74),one_one_nat))
         => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(power_power_nat(A_74),N_22)),hAPP_nat_nat(power_power_nat(A_74),N_23))) )
       <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,zero_zero_nat),A_74)) ) ) ).

fof(fact_151_rel__simps_I10_J,axiom,
    ! [K] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,bit0(K)),pls))
    <=> hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,K),pls)) ) ).

fof(fact_567_mult__nat__number__of,axiom,
    ! [V_6,V] :
      ( ( zero_zero_nat = hAPP_nat_nat(times_times_nat(number_number_of_nat(V)),number_number_of_nat(V_6))
       <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,V),pls)) )
      & ( ~ hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,V),pls))
       => number_number_of_nat(hAPP_int_int(times_times_int(V),V_6)) = hAPP_nat_nat(times_times_nat(number_number_of_nat(V)),number_number_of_nat(V_6)) ) ) ).

fof(fact_115_comm__semiring__1__class_Onormalizing__semiring__rules_I20_J,axiom,
    ! [A_110,B_62,C_35,D_11] : hAPP_int_int(plus_plus_int(hAPP_int_int(plus_plus_int(A_110),B_62)),hAPP_int_int(plus_plus_int(C_35),D_11)) = hAPP_int_int(plus_plus_int(hAPP_int_int(plus_plus_int(A_110),C_35)),hAPP_int_int(plus_plus_int(B_62),D_11)) ).

fof(fact_1027_nat__1__eq__mult__iff,axiom,
    ! [Ma,N] :
      ( one_one_nat = hAPP_nat_nat(times_times_nat(Ma),N)
    <=> ( one_one_nat = N
        & Ma = one_one_nat ) ) ).

fof(fact_683_dvd__trans,axiom,
    ! [C_24,A_51,B_45] :
      ( ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(dvd_dvd_int,A_51),C_24))
       <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(dvd_dvd_int,B_45),C_24)) )
     <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(dvd_dvd_int,A_51),B_45)) ) ).

fof(fact_631_add__number__of__diff1,axiom,
    ! [V_2,W_2,C_25] : hAPP_int_int(plus_plus_int(number_number_of_int(V_2)),hAPP_int_int(minus_minus_int(number_number_of_int(W_2)),C_25)) = hAPP_int_int(minus_minus_int(number_number_of_int(hAPP_int_int(plus_plus_int(V_2),W_2))),C_25) ).

fof(fact_1110_d22set__eq__wset,axiom,
    ! [P_3] :
      ( hBOOL(hAPP_int_bool(zprime,P_3))
     => d22set(hAPP_int_int(minus_minus_int(P_3),number_number_of_int(bit0(bit1(pls))))) = wset(hAPP_int_int(minus_minus_int(P_3),number_number_of_int(bit0(bit1(pls)))),P_3) ) ).

fof(fact_56_comm__semiring__1__class_Onormalizing__semiring__rules_I26_J,axiom,
    ! [X_22,P_6,Q_6] : hAPP_nat_int(power_power_int(X_22),hAPP_nat_nat(plus_plus_nat(P_6),Q_6)) = hAPP_int_int(times_times_int(hAPP_nat_int(power_power_int(X_22),P_6)),hAPP_nat_int(power_power_int(X_22),Q_6)) ).

fof(fact_252_add__Bit0__Bit1,axiom,
    ! [K_1,L] : hAPP_int_int(plus_plus_int(bit0(K_1)),bit1(L)) = bit1(hAPP_int_int(plus_plus_int(K_1),L)) ).

fof(fact_287_semiring__one__add__one__is__two,axiom,
    hAPP_real_real(plus_plus_real(one_one_real),one_one_real) = number267125858f_real(bit0(bit1(pls))) ).

fof(fact_780_mult__mono_H,axiom,
    ! [C_13,D_3,A_29,B_27] :
      ( ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,C_13),D_3))
       => ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,zero_zero_int),A_29))
         => ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,zero_zero_int),C_13))
           => hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,hAPP_int_int(times_times_int(A_29),C_13)),hAPP_int_int(times_times_int(B_27),D_3))) ) ) )
     <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,A_29),B_27)) ) ).

fof(fact_81_rel__simps_I5_J,axiom,
    ! [K] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,pls),bit1(K)))
    <=> hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,pls),K)) ) ).

fof(fact_686_real__less__def,axiom,
    ! [X_2,Y_2] :
      ( hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_real,X_2),Y_2))
    <=> ( hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_eq_real,X_2),Y_2))
        & Y_2 != X_2 ) ) ).

fof(fact_527_not__real__square__gt__zero,axiom,
    ! [X_2] :
      ( zero_zero_real = X_2
    <=> ~ hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_real,zero_zero_real),hAPP_real_real(times_times_real(X_2),X_2))) ) ).

fof(fact_430_less__special_I1_J,axiom,
    ! [Y_2] :
      ( hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_real,zero_zero_real),number267125858f_real(Y_2)))
    <=> hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,pls),Y_2)) ) ).

fof(fact_581_power__m1__even,axiom,
    ! [N_4] : one_one_int = hAPP_nat_int(power_power_int(number_number_of_int(min)),hAPP_nat_nat(times_times_nat(number_number_of_nat(bit0(bit1(pls)))),N_4)) ).

fof(fact_595_zcong__zless__0,axiom,
    ! [M,A] :
      ( is_int(A)
     => ( ( ( hBOOL(hAPP_int_bool(zcong(A,zero_zero_int),M))
           => A = zero_zero_int )
         <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,A),M)) )
       <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,zero_zero_int),A)) ) ) ).

fof(fact_1__096t_A_061_A1_A_061_061_062_AEX_Ax_Ay_O_Ax_A_094_A2_A_L_Ay_A_094_A2_A_06,axiom,
    ( ? [X,Y] :
        ( is_int(X)
        & hAPP_int_int(plus_plus_int(hAPP_int_int(times_times_int(number_number_of_int(bit0(bit0(bit1(pls))))),m)),one_one_int) = hAPP_int_int(plus_plus_int(hAPP_nat_int(power_power_int(X),number_number_of_nat(bit0(bit1(pls))))),hAPP_nat_int(power_power_int(Y),number_number_of_nat(bit0(bit1(pls)))))
        & is_int(Y) )
   <= one_one_int = t ) ).

fof(fact_169_le__special_I2_J,axiom,
    ! [Y_2] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,bit1(pls)),Y_2))
    <=> hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_eq_real,one_one_real),number267125858f_real(Y_2))) ) ).

fof(fact_269_double__number__of__Bit0,axiom,
    ! [W_6] : number_number_of_int(bit0(W_6)) = hAPP_int_int(times_times_int(hAPP_int_int(plus_plus_int(one_one_int),one_one_int)),number_number_of_int(W_6)) ).

fof(fact_843_mult__pos__neg,axiom,
    ! [B_6,A_7] :
      ( ( hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_real,B_6),zero_zero_real))
       => hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_real,hAPP_real_real(times_times_real(A_7),B_6)),zero_zero_real)) )
     <= hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_real,zero_zero_real),A_7)) ) ).

fof(fact_1125_gcd__lcm__complete__lattice__nat_Obot__less,axiom,
    ! [A_2] :
      ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,one_one_nat),A_2))
        & ~ hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,A_2),one_one_nat)) )
    <=> one_one_nat != A_2 ) ).

fof(fact_277_semiring__mult__2,axiom,
    ! [Z_6] : hAPP_real_real(plus_plus_real(Z_6),Z_6) = hAPP_real_real(times_times_real(number267125858f_real(bit0(bit1(pls)))),Z_6) ).

fof(fact_191_comm__semiring__1__class_Onormalizing__semiring__rules_I30_J,axiom,
    ! [X_20,Y_17,Q_5] : hAPP_nat_int(power_power_int(hAPP_int_int(times_times_int(X_20),Y_17)),Q_5) = hAPP_int_int(times_times_int(hAPP_nat_int(power_power_int(X_20),Q_5)),hAPP_nat_int(power_power_int(Y_17),Q_5)) ).

fof(fact_1122_gcd__lcm__complete__lattice__nat_Onot__top__less,axiom,
    ! [A] :
      ~ ( ~ hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,A),zero_zero_nat))
        & hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,zero_zero_nat),A)) ) ).

fof(fact_666_Legendre__def,axiom,
    ! [A,P_1] :
      ( ( zero_zero_int = legendre(A,P_1)
       <= hBOOL(hAPP_int_bool(zcong(A,zero_zero_int),P_1)) )
      & ( ( ( ~ hBOOL(hAPP_int_bool(quadRes(P_1),A))
           => legendre(A,P_1) = number_number_of_int(min) )
          & ( legendre(A,P_1) = one_one_int
           <= hBOOL(hAPP_int_bool(quadRes(P_1),A)) ) )
       <= ~ hBOOL(hAPP_int_bool(zcong(A,zero_zero_int),P_1)) ) ) ).

fof(fact_134_comm__semiring__1__class_Onormalizing__semiring__rules_I24_J,axiom,
    ! [A_104,C_30] : hAPP_real_real(plus_plus_real(A_104),C_30) = hAPP_real_real(plus_plus_real(C_30),A_104) ).

fof(fact_292_real__sum__squared__expand,axiom,
    ! [X_1,Y_1] : hAPP_nat_real(power_power_real(hAPP_real_real(plus_plus_real(X_1),Y_1)),number_number_of_nat(bit0(bit1(pls)))) = hAPP_real_real(plus_plus_real(hAPP_real_real(plus_plus_real(hAPP_nat_real(power_power_real(X_1),number_number_of_nat(bit0(bit1(pls))))),hAPP_nat_real(power_power_real(Y_1),number_number_of_nat(bit0(bit1(pls)))))),hAPP_real_real(times_times_real(hAPP_real_real(times_times_real(number267125858f_real(bit0(bit1(pls)))),X_1)),Y_1)) ).

fof(fact_456_sum__power2__eq__zero__iff,axiom,
    ! [X_2,Y_2] :
      ( ( hAPP_int_int(plus_plus_int(hAPP_nat_int(power_power_int(X_2),number_number_of_nat(bit0(bit1(pls))))),hAPP_nat_int(power_power_int(Y_2),number_number_of_nat(bit0(bit1(pls))))) = zero_zero_int
      <=> ( zero_zero_int = X_2
          & zero_zero_int = Y_2 ) )
     <= ( is_int(X_2)
        & is_int(Y_2) ) ) ).

fof(fact_672_dvd__0__right,axiom,
    ! [A_53] : hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(dvd_dvd_real,A_53),zero_zero_real)) ).

fof(fact_163_less__special_I4_J,axiom,
    ! [X_2] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,X_2),bit1(pls)))
    <=> hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_real,number267125858f_real(X_2)),one_one_real)) ) ).

fof(fact_50_le__number__of__eq__not__less,axiom,
    ! [V_7,W_1] :
      ( hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_eq_real,number267125858f_real(V_7)),number267125858f_real(W_1)))
    <=> ~ hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_real,number267125858f_real(W_1)),number267125858f_real(V_7))) ) ).

fof(fact_317_dvd__power__le,axiom,
    ! [N_34,M_7,X_19,Y_16] :
      ( hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(dvd_dvd_real,X_19),Y_16))
     => ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,N_34),M_7))
       => hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(dvd_dvd_real,hAPP_nat_real(power_power_real(X_19),N_34)),hAPP_nat_real(power_power_real(Y_16),M_7))) ) ) ).

fof(fact_1060_is__sum2sq__def,axiom,
    ! [X_2] :
      ( is_int(X_2)
     => ( ? [A_3,B_3] :
            ( is_int(A_3)
            & is_int(B_3)
            & X_2 = twoSqu1241645765sum2sq(product_Pair_int_int(A_3,B_3)) )
      <=> hBOOL(hAPP_int_bool(twoSqu1154269391sum2sq,X_2)) ) ) ).

fof(fact_362_zero__le__power,axiom,
    ! [N_27,A_78] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,zero_zero_int),hAPP_nat_int(power_power_int(A_78),N_27)))
     <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,zero_zero_int),A_78)) ) ).

fof(fact_311_power__eq__0__iff,axiom,
    ! [A_2,N] :
      ( is_int(A_2)
     => ( hAPP_nat_int(power_power_int(A_2),N) = zero_zero_int
      <=> ( zero_zero_int = A_2
          & N != zero_zero_nat ) ) ) ).

fof(fact_135_eq__number__of,axiom,
    ! [X_2,Y_2] :
      ( ( X_2 = Y_2
      <=> number_number_of_int(X_2) = number_number_of_int(Y_2) )
     <= ( is_int(Y_2)
        & is_int(X_2) ) ) ).

fof(fact_86_zless__imp__add1__zle,axiom,
    ! [W,Z] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,W),Z))
     => hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,hAPP_int_int(plus_plus_int(W),one_one_int)),Z)) ) ).

fof(fact_528_rel__simps_I13_J,axiom,
    ! [K] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,K),min))
    <=> hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,bit1(K)),min)) ) ).

fof(fact_775_mult__mono,axiom,
    ! [C_14,D_4,A_30,B_28] :
      ( ( ( ( hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_eq_real,hAPP_real_real(times_times_real(A_30),C_14)),hAPP_real_real(times_times_real(B_28),D_4)))
           <= hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_eq_real,zero_zero_real),C_14)) )
         <= hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_eq_real,zero_zero_real),B_28)) )
       <= hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_eq_real,C_14),D_4)) )
     <= hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_eq_real,A_30),B_28)) ) ).

fof(fact_333_field__power__not__zero,axiom,
    ! [N_30,A_84] :
      ( zero_zero_real != hAPP_nat_real(power_power_real(A_84),N_30)
     <= A_84 != zero_zero_real ) ).

fof(fact_1018_add__mult__distrib2,axiom,
    ! [K_1,M,N_1] : hAPP_nat_nat(plus_plus_nat(hAPP_nat_nat(times_times_nat(K_1),M)),hAPP_nat_nat(times_times_nat(K_1),N_1)) = hAPP_nat_nat(times_times_nat(K_1),hAPP_nat_nat(plus_plus_nat(M),N_1)) ).

fof(fact_824_mult__strict__right__mono,axiom,
    ! [C_3,A_13,B_12] :
      ( hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_real,A_13),B_12))
     => ( hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_real,hAPP_real_real(times_times_real(A_13),C_3)),hAPP_real_real(times_times_real(B_12),C_3)))
       <= hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_real,zero_zero_real),C_3)) ) ) ).

fof(fact_324_power__eq__imp__eq__base,axiom,
    ! [A_85,N_32,B_54] :
      ( hAPP_nat_nat(power_power_nat(B_54),N_32) = hAPP_nat_nat(power_power_nat(A_85),N_32)
     => ( ( ( B_54 = A_85
           <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,zero_zero_nat),N_32)) )
         <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,zero_zero_nat),B_54)) )
       <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,zero_zero_nat),A_85)) ) ) ).

fof(fact_428_odd__less__0,axiom,
    ! [Z_1] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,hAPP_int_int(plus_plus_int(hAPP_int_int(plus_plus_int(one_one_int),Z_1)),Z_1)),zero_zero_int))
    <=> hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,Z_1),zero_zero_int)) ) ).

fof(fact_325_power__eq__imp__eq__base,axiom,
    ! [A_85,N_32,B_54] :
      ( ( ( hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_eq_real,zero_zero_real),B_54))
         => ( B_54 = A_85
           <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,zero_zero_nat),N_32)) ) )
       <= hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_eq_real,zero_zero_real),A_85)) )
     <= hAPP_nat_real(power_power_real(A_85),N_32) = hAPP_nat_real(power_power_real(B_54),N_32) ) ).

fof(fact_1016_diff__add__assoc2,axiom,
    ! [I_1,K_1,J_1] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,K_1),J_1))
     => hAPP_nat_nat(minus_minus_nat(hAPP_nat_nat(plus_plus_nat(J_1),I_1)),K_1) = hAPP_nat_nat(plus_plus_nat(hAPP_nat_nat(minus_minus_nat(J_1),K_1)),I_1) ) ).

fof(fact_306__096_091s_A_094_A2_A_061_As1_A_094_A2_093_A_Imod_A4_A_K_Am_A_L_A1_J_096,axiom,
    hBOOL(hAPP_int_bool(zcong(hAPP_nat_int(power_power_int(s),number_number_of_nat(bit0(bit1(pls)))),hAPP_nat_int(power_power_int(s1),number_number_of_nat(bit0(bit1(pls))))),hAPP_int_int(plus_plus_int(hAPP_int_int(times_times_int(number_number_of_int(bit0(bit0(bit1(pls))))),m)),one_one_int))) ).

fof(fact_692_realpow__minus__mult,axiom,
    ! [X_4,N_3] :
      ( hAPP_nat_nat(power_power_nat(X_4),N_3) = hAPP_nat_nat(times_times_nat(hAPP_nat_nat(power_power_nat(X_4),hAPP_nat_nat(minus_minus_nat(N_3),one_one_nat))),X_4)
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,zero_zero_nat),N_3)) ) ).

fof(fact_568_order__le__neq__implies__less,axiom,
    ! [X_8,Y_7] :
      ( ( Y_7 != X_8
       => hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_real,X_8),Y_7)) )
     <= hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_eq_real,X_8),Y_7)) ) ).

fof(fact_453_zero__less__power2,axiom,
    ! [A_2] :
      ( A_2 != zero_zero_real
    <=> hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_real,zero_zero_real),hAPP_nat_real(power_power_real(A_2),number_number_of_nat(bit0(bit1(pls)))))) ) ).

fof(fact_399_bin__less__0__simps_I1_J,axiom,
    ~ hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,pls),zero_zero_int)) ).

fof(fact_931_nat__add__right__cancel,axiom,
    ! [Ma,K,N] :
      ( hAPP_nat_nat(plus_plus_nat(Ma),K) = hAPP_nat_nat(plus_plus_nat(N),K)
    <=> N = Ma ) ).

fof(fact_415_less__nat__number__of,axiom,
    ! [V_7,V_8] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,number_number_of_nat(V_7)),number_number_of_nat(V_8)))
    <=> ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,V_7),V_8))
        & ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,pls),V_8))
         <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,V_7),V_8)) ) ) ) ).

fof(fact_522_rel__simps_I40_J,axiom,
    min != pls ).

fof(fact_584_power__eq__0__iff__number__of,axiom,
    ! [A_2,W_1] :
      ( ( ( number_number_of_nat(W_1) != zero_zero_nat
          & A_2 = zero_zero_int )
      <=> hAPP_nat_int(power_power_int(A_2),number_number_of_nat(W_1)) = zero_zero_int )
     <= is_int(A_2) ) ).

fof(fact_192_comm__semiring__1__class_Onormalizing__semiring__rules_I30_J,axiom,
    ! [X_20,Y_17,Q_5] : hAPP_real_real(times_times_real(hAPP_nat_real(power_power_real(X_20),Q_5)),hAPP_nat_real(power_power_real(Y_17),Q_5)) = hAPP_nat_real(power_power_real(hAPP_real_real(times_times_real(X_20),Y_17)),Q_5) ).

fof(fact_709_mult__zero__left,axiom,
    ! [A_47] : hAPP_real_real(times_times_real(zero_zero_real),A_47) = zero_zero_real ).

fof(fact_406_power__Suc__less,axiom,
    ! [N_19,A_71] :
      ( ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,hAPP_int_int(times_times_int(A_71),hAPP_nat_int(power_power_int(A_71),N_19))),hAPP_nat_int(power_power_int(A_71),N_19)))
       <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,A_71),one_one_int)) )
     <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,zero_zero_int),A_71)) ) ).

fof(fact_901_dvd_Oord__less__eq__trans,axiom,
    ! [C,A,B] :
      ( ( B = C
       => ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,A),C))
          & ~ hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,C),A)) ) )
     <= ( ~ hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,B),A))
        & hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,A),B)) ) ) ).

fof(fact_715_one__neq__zero,axiom,
    one_one_real != zero_zero_real ).

fof(fact_278_mult__2,axiom,
    ! [Z_5] : hAPP_int_int(times_times_int(number_number_of_int(bit0(bit1(pls)))),Z_5) = hAPP_int_int(plus_plus_int(Z_5),Z_5) ).

fof(fact_255_number__of__Bit1,axiom,
    ! [W_7] : number267125858f_real(bit1(W_7)) = hAPP_real_real(plus_plus_real(hAPP_real_real(plus_plus_real(one_one_real),number267125858f_real(W_7))),number267125858f_real(W_7)) ).

fof(fact_753_dvd__add,axiom,
    ! [C_15,A_34,B_31] :
      ( hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(dvd_dvd_real,A_34),B_31))
     => ( hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(dvd_dvd_real,A_34),hAPP_real_real(plus_plus_real(B_31),C_15)))
       <= hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(dvd_dvd_real,A_34),C_15)) ) ) ).

fof(fact_946_eq__diff__iff,axiom,
    ! [N,K,Ma] :
      ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,K),N))
       => ( hAPP_nat_nat(minus_minus_nat(Ma),K) = hAPP_nat_nat(minus_minus_nat(N),K)
        <=> N = Ma ) )
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,K),Ma)) ) ).

fof(fact_322_power__le__dvd,axiom,
    ! [M_6,A_86,N_33,B_55] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,hAPP_nat_nat(power_power_nat(A_86),N_33)),B_55))
     => ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,M_6),N_33))
       => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,hAPP_nat_nat(power_power_nat(A_86),M_6)),B_55)) ) ) ).

fof(fact_353_add__0__iff,axiom,
    ! [B_2,A_2] :
      ( ( A_2 = zero_zero_int
      <=> hAPP_int_int(plus_plus_int(B_2),A_2) = B_2 )
     <= ( is_int(B_2)
        & is_int(A_2) ) ) ).

fof(fact_157_rel__simps_I21_J,axiom,
    ! [K] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,pls),bit0(K)))
    <=> hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,pls),K)) ) ).

fof(fact_227_comm__semiring__1__class_Onormalizing__semiring__rules_I2_J,axiom,
    ! [A_97,M_12] : hAPP_nat_nat(times_times_nat(hAPP_nat_nat(plus_plus_nat(A_97),one_one_nat)),M_12) = hAPP_nat_nat(plus_plus_nat(hAPP_nat_nat(times_times_nat(A_97),M_12)),M_12) ).

fof(fact_146_zadd__left__commute,axiom,
    ! [X_1,Y_1,Z] : hAPP_int_int(plus_plus_int(X_1),hAPP_int_int(plus_plus_int(Y_1),Z)) = hAPP_int_int(plus_plus_int(Y_1),hAPP_int_int(plus_plus_int(X_1),Z)) ).

fof(fact_792_mult__right__mono,axiom,
    ! [C_8,A_24,B_22] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,A_24),B_22))
     => ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,zero_zero_nat),C_8))
       => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(times_times_nat(A_24),C_8)),hAPP_nat_nat(times_times_nat(B_22),C_8))) ) ) ).

fof(fact_126_comm__semiring__1__class_Onormalizing__semiring__rules_I25_J,axiom,
    ! [A_106,C_32,D_10] : hAPP_int_int(plus_plus_int(hAPP_int_int(plus_plus_int(A_106),C_32)),D_10) = hAPP_int_int(plus_plus_int(A_106),hAPP_int_int(plus_plus_int(C_32),D_10)) ).

fof(fact_982_add__lessD1,axiom,
    ! [I_1,J_1,K_1] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,hAPP_nat_nat(plus_plus_nat(I_1),J_1)),K_1))
     => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,I_1),K_1)) ) ).

fof(fact_566_nat__number__of__mult__left,axiom,
    ! [V_6,K_1,V] :
      ( ( ~ hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,V),pls))
       => hAPP_nat_nat(times_times_nat(number_number_of_nat(hAPP_int_int(times_times_int(V),V_6))),K_1) = hAPP_nat_nat(times_times_nat(number_number_of_nat(V)),hAPP_nat_nat(times_times_nat(number_number_of_nat(V_6)),K_1)) )
      & ( hAPP_nat_nat(times_times_nat(number_number_of_nat(V)),hAPP_nat_nat(times_times_nat(number_number_of_nat(V_6)),K_1)) = zero_zero_nat
       <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,V),pls)) ) ) ).

fof(fact_80_rel__simps_I29_J,axiom,
    ! [K] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,K),pls))
    <=> hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,bit1(K)),pls)) ) ).

fof(fact_473_power2__less__imp__less,axiom,
    ! [X_13,Y_10] :
      ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,zero_zero_nat),Y_10))
       => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,X_13),Y_10)) )
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,hAPP_nat_nat(power_power_nat(X_13),number_number_of_nat(bit0(bit1(pls))))),hAPP_nat_nat(power_power_nat(Y_10),number_number_of_nat(bit0(bit1(pls)))))) ) ).

fof(fact_1112_d22set__le,axiom,
    ! [B_2,A_2] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,B_2),A_2))
     <= hBOOL(member_int(B_2,d22set(A_2))) ) ).

fof(fact_83_rel__simps_I33_J,axiom,
    ! [K,L_1] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,bit1(K)),bit0(L_1)))
    <=> hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,K),L_1)) ) ).

fof(fact_646_zcong__shift,axiom,
    ! [C,A,B,M] :
      ( hBOOL(hAPP_int_bool(zcong(hAPP_int_int(plus_plus_int(A),C),hAPP_int_int(plus_plus_int(B),C)),M))
     <= hBOOL(hAPP_int_bool(zcong(A,B),M)) ) ).

fof(fact_952_diff__mult__distrib2,axiom,
    ! [K_1,M,N_1] : hAPP_nat_nat(minus_minus_nat(hAPP_nat_nat(times_times_nat(K_1),M)),hAPP_nat_nat(times_times_nat(K_1),N_1)) = hAPP_nat_nat(times_times_nat(K_1),hAPP_nat_nat(minus_minus_nat(M),N_1)) ).

fof(fact_444_zero__le__power2,axiom,
    ! [A_69] : hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,zero_zero_int),hAPP_nat_int(power_power_int(A_69),number_number_of_nat(bit0(bit1(pls)))))) ).

fof(fact_609__096s_A_094_A2_A_N_A_N1_A_061_As_A_094_A2_A_L_A1_096,axiom,
    hAPP_int_int(plus_plus_int(hAPP_nat_int(power_power_int(s),number_number_of_nat(bit0(bit1(pls))))),one_one_int) = hAPP_int_int(minus_minus_int(hAPP_nat_int(power_power_int(s),number_number_of_nat(bit0(bit1(pls))))),number_number_of_int(min)) ).

fof(fact_159_power__even__eq,axiom,
    ! [A_103,N_39] : hAPP_nat_int(power_power_int(A_103),hAPP_nat_nat(times_times_nat(number_number_of_nat(bit0(bit1(pls)))),N_39)) = hAPP_nat_int(power_power_int(hAPP_nat_int(power_power_int(A_103),N_39)),number_number_of_nat(bit0(bit1(pls)))) ).

fof(fact_831_mult__neg__pos,axiom,
    ! [B_10,A_11] :
      ( ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,zero_zero_int),B_10))
       => hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,hAPP_int_int(times_times_int(A_11),B_10)),zero_zero_int)) )
     <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,A_11),zero_zero_int)) ) ).

fof(fact_938_nat__le__linear,axiom,
    ! [M,N_1] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,N_1),M))
      | hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,M),N_1)) ) ).

fof(help_fconj_2_1_U,axiom,
    ! [P,Q] :
      ( ~ hBOOL(hAPP_bool_bool(hAPP_b589554111l_bool(fconj,P),Q))
      | hBOOL(P) ) ).

fof(fact_1165_zmod__number__of__Bit0,axiom,
    ! [V,W] : hAPP_int_int(times_times_int(number_number_of_int(bit0(bit1(pls)))),hAPP_int_int(div_mod_int(number_number_of_int(V)),number_number_of_int(W))) = hAPP_int_int(div_mod_int(number_number_of_int(bit0(V))),number_number_of_int(bit0(W))) ).

fof(fact_654_zdvd__bounds,axiom,
    ! [N_1,M] :
      ( ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,M),zero_zero_int))
        | hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,N_1),M)) )
     <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(dvd_dvd_int,N_1),M)) ) ).

fof(fact_827_mult__neg__neg,axiom,
    ! [B_11,A_12] :
      ( ( hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_real,B_11),zero_zero_real))
       => hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_real,zero_zero_real),hAPP_real_real(times_times_real(A_12),B_11))) )
     <= hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_real,A_12),zero_zero_real)) ) ).

fof(fact_1166_split__zmod,axiom,
    ! [P_2,N,K] :
      ( ( is_int(N)
        & is_int(K) )
     => ( ( ( K = zero_zero_int
           => hBOOL(hAPP_int_bool(P_2,N)) )
          & ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,K),zero_zero_int))
           => ! [I,J] :
                ( ( hBOOL(hAPP_int_bool(P_2,J))
                 <= ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,K),J))
                    & hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,J),zero_zero_int))
                    & hAPP_int_int(plus_plus_int(hAPP_int_int(times_times_int(K),I)),J) = N ) )
               <= ( is_int(J)
                  & is_int(I) ) ) )
          & ( ! [I,J] :
                ( ( is_int(I)
                  & is_int(J) )
               => ( ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,zero_zero_int),J))
                    & hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,J),K))
                    & N = hAPP_int_int(plus_plus_int(hAPP_int_int(times_times_int(K),I)),J) )
                 => hBOOL(hAPP_int_bool(P_2,J)) ) )
           <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,zero_zero_int),K)) ) )
      <=> hBOOL(hAPP_int_bool(P_2,hAPP_int_int(div_mod_int(N),K))) ) ) ).

fof(fact_404_zmult__zless__mono2,axiom,
    ! [K_1,I_1,J_1] :
      ( ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,zero_zero_int),K_1))
       => hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,hAPP_int_int(times_times_int(K_1),I_1)),hAPP_int_int(times_times_int(K_1),J_1))) )
     <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,I_1),J_1)) ) ).

fof(fact_505_int__pos__lt__two__imp__zero__or__one,axiom,
    ! [X_1] :
      ( is_int(X_1)
     => ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,zero_zero_int),X_1))
       => ( ( X_1 = one_one_int
            | zero_zero_int = X_1 )
         <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,X_1),number_number_of_int(bit0(bit1(pls))))) ) ) ) ).

fof(gsy_c_hAPP_000tc__Nat__Onat_000tc__HOL__Obool,axiom,
    ! [B_1_1,B_2_1] : is_bool(hAPP_nat_bool(B_1_1,B_2_1)) ).

fof(fact_236_add__numeral__0,axiom,
    ! [A_95] : A_95 = hAPP_real_real(plus_plus_real(number267125858f_real(pls)),A_95) ).

fof(fact_962_Nat_Oadd__0__right,axiom,
    ! [M] : M = hAPP_nat_nat(plus_plus_nat(M),zero_zero_nat) ).

fof(fact_1175_zmod__eq__0D,axiom,
    ! [M_1,D_1] :
      ( is_int(M_1)
     => ( ? [Q_2] :
            ( hAPP_int_int(times_times_int(D_1),Q_2) = M_1
            & is_int(Q_2) )
       <= hAPP_int_int(div_mod_int(M_1),D_1) = zero_zero_int ) ) ).

fof(fact_79_Numeral1__eq1__nat,axiom,
    number_number_of_nat(bit1(pls)) = one_one_nat ).

fof(fact_655_zcong__eq__zdvd__prop,axiom,
    ! [X_2,P_3] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(dvd_dvd_int,P_3),X_2))
    <=> hBOOL(hAPP_int_bool(zcong(X_2,zero_zero_int),P_3)) ) ).

fof(fact_787_comm__mult__left__mono,axiom,
    ! [C_10,A_26,B_24] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,A_26),B_24))
     => ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,zero_zero_int),C_10))
       => hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,hAPP_int_int(times_times_int(C_10),A_26)),hAPP_int_int(times_times_int(C_10),B_24))) ) ) ).

fof(fact_211_zadd__zmult__distrib2,axiom,
    ! [W,Z1,Z2] : hAPP_int_int(times_times_int(W),hAPP_int_int(plus_plus_int(Z1),Z2)) = hAPP_int_int(plus_plus_int(hAPP_int_int(times_times_int(W),Z1)),hAPP_int_int(times_times_int(W),Z2)) ).

fof(fact_1161_neg__mod__sign,axiom,
    ! [A,B] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,B),zero_zero_int))
     => hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,hAPP_int_int(div_mod_int(A),B)),zero_zero_int)) ) ).

fof(fact_521_rel__simps_I37_J,axiom,
    min != pls ).

fof(fact_823_mult__strict__left__mono,axiom,
    ! [C_4,A_14,B_13] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,A_14),B_13))
     => ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,zero_zero_int),C_4))
       => hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,hAPP_int_int(times_times_int(C_4),A_14)),hAPP_int_int(times_times_int(C_4),B_13))) ) ) ).

fof(fact_741_dvd__mult,axiom,
    ! [B_35,A_38,C_17] :
      ( hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(dvd_dvd_real,A_38),C_17))
     => hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(dvd_dvd_real,A_38),hAPP_real_real(times_times_real(B_35),C_17))) ) ).

fof(fact_128_comm__semiring__1__class_Onormalizing__semiring__rules_I25_J,axiom,
    ! [A_106,C_32,D_10] : hAPP_real_real(plus_plus_real(hAPP_real_real(plus_plus_real(A_106),C_32)),D_10) = hAPP_real_real(plus_plus_real(A_106),hAPP_real_real(plus_plus_real(C_32),D_10)) ).

fof(fact_546_power__0,axiom,
    ! [A_57] : hAPP_nat_int(power_power_int(A_57),zero_zero_nat) = one_one_int ).

fof(fact_99_comm__semiring__1__class_Onormalizing__semiring__rules_I14_J,axiom,
    ! [Lx_4,Ly_2,Rx_4,Ry_2] : hAPP_real_real(times_times_real(Lx_4),hAPP_real_real(times_times_real(Ly_2),hAPP_real_real(times_times_real(Rx_4),Ry_2))) = hAPP_real_real(times_times_real(hAPP_real_real(times_times_real(Lx_4),Ly_2)),hAPP_real_real(times_times_real(Rx_4),Ry_2)) ).

fof(fact_1169_zmult2__lemma__aux1,axiom,
    ! [Q_1,B,R_1,C] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,zero_zero_int),C))
     => ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,B),R_1))
       => ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,R_1),zero_zero_int))
         => hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,hAPP_int_int(times_times_int(B),C)),hAPP_int_int(plus_plus_int(hAPP_int_int(times_times_int(B),hAPP_int_int(div_mod_int(Q_1),C))),R_1))) ) ) ) ).

fof(fact_849_mult__less__cancel__left__pos,axiom,
    ! [A_2,B_2,C_2] :
      ( ( hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_real,hAPP_real_real(times_times_real(C_2),A_2)),hAPP_real_real(times_times_real(C_2),B_2)))
      <=> hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_real,A_2),B_2)) )
     <= hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_real,zero_zero_real),C_2)) ) ).

fof(fact_1118_gcd__lcm__complete__lattice__nat_Otop__le,axiom,
    ! [A] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,zero_zero_nat),A))
     => zero_zero_nat = A ) ).

fof(fact_204_add__Pls,axiom,
    ! [K_1] :
      ( is_int(K_1)
     => K_1 = hAPP_int_int(plus_plus_int(pls),K_1) ) ).

fof(fact_503_s,axiom,
    hBOOL(hAPP_int_bool(zcong(hAPP_nat_int(power_power_int(s),number_number_of_nat(bit0(bit1(pls)))),number_number_of_int(min)),hAPP_int_int(plus_plus_int(hAPP_int_int(times_times_int(number_number_of_int(bit0(bit0(bit1(pls))))),m)),one_one_int))) ).

fof(fact_846_mult__pos__pos,axiom,
    ! [B_5,A_6] :
      ( ( hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_real,zero_zero_real),B_5))
       => hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_real,zero_zero_real),hAPP_real_real(times_times_real(A_6),B_5))) )
     <= hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_real,zero_zero_real),A_6)) ) ).

fof(fact_1119_gcd__lcm__complete__lattice__nat_Otop__unique,axiom,
    ! [A_2] :
      ( zero_zero_nat = A_2
    <=> hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,zero_zero_nat),A_2)) ) ).

fof(fact_1098_wset__mem__mem,axiom,
    ! [P_3,A_2] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,one_one_int),A_2))
     => hBOOL(member_int(A_2,wset(A_2,P_3))) ) ).

fof(fact_501_power__strict__increasing,axiom,
    ! [A_59,N_8,N_7] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,N_8),N_7))
     => ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,hAPP_nat_nat(power_power_nat(A_59),N_8)),hAPP_nat_nat(power_power_nat(A_59),N_7)))
       <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,one_one_nat),A_59)) ) ) ).

fof(fact_776_mult__mono,axiom,
    ! [C_14,D_4,A_30,B_28] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,A_30),B_28))
     => ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,C_14),D_4))
       => ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(times_times_nat(A_30),C_14)),hAPP_nat_nat(times_times_nat(B_28),D_4)))
           <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,zero_zero_nat),C_14)) )
         <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,zero_zero_nat),B_28)) ) ) ) ).

fof(fact_240_mult__number__of__left,axiom,
    ! [V_14,W_13,Z_8] : hAPP_real_real(times_times_real(number267125858f_real(hAPP_int_int(times_times_int(V_14),W_13))),Z_8) = hAPP_real_real(times_times_real(number267125858f_real(V_14)),hAPP_real_real(times_times_real(number267125858f_real(W_13)),Z_8)) ).

fof(fact_844_mult__pos__neg,axiom,
    ! [B_6,A_7] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,zero_zero_nat),A_7))
     => ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,B_6),zero_zero_nat))
       => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,hAPP_nat_nat(times_times_nat(A_7),B_6)),zero_zero_nat)) ) ) ).

fof(fact_283_mult__2__right,axiom,
    ! [Z_3] : hAPP_int_int(plus_plus_int(Z_3),Z_3) = hAPP_int_int(times_times_int(Z_3),number_number_of_int(bit0(bit1(pls)))) ).

fof(fact_437_le__imp__0__less,axiom,
    ! [Z] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,zero_zero_int),hAPP_int_int(plus_plus_int(one_one_int),Z)))
     <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,zero_zero_int),Z)) ) ).

fof(fact_425_power__one__right,axiom,
    ! [A_70] : hAPP_nat_nat(power_power_nat(A_70),one_one_nat) = A_70 ).

fof(fact_103_comm__semiring__1__class_Onormalizing__semiring__rules_I17_J,axiom,
    ! [Lx_2,Ly,Rx_2] : hAPP_int_int(times_times_int(hAPP_int_int(times_times_int(Lx_2),Ly)),Rx_2) = hAPP_int_int(times_times_int(Lx_2),hAPP_int_int(times_times_int(Ly),Rx_2)) ).

fof(fact_36_zle__linear,axiom,
    ! [Z,W] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,W),Z))
      | hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,Z),W)) ) ).

fof(fact_560_eq__number__of__0,axiom,
    ! [V_7] :
      ( zero_zero_nat = number_number_of_nat(V_7)
    <=> hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,V_7),pls)) ) ).

fof(fact_397_semiring__numeral__0__eq__0,axiom,
    number267125858f_real(pls) = zero_zero_real ).

fof(fact_673_dvd__0__right,axiom,
    ! [A_53] : hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,A_53),zero_zero_nat)) ).

fof(gsy_c_Residues_OStandardRes,axiom,
    ! [B_1_1,B_2_1] :
      ( ( is_int(B_2_1)
        & is_int(B_1_1) )
     => is_int(standardRes(B_1_1,B_2_1)) ) ).

fof(fact_585_Nat__Transfer_Otransfer__nat__int__function__closures_I6_J,axiom,
    hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,zero_zero_int),one_one_int)) ).

fof(fact_637_inv__not__p__minus__1__aux,axiom,
    ! [A_2,P_3] :
      ( hBOOL(hAPP_int_bool(zcong(hAPP_int_int(times_times_int(A_2),hAPP_int_int(minus_minus_int(P_3),one_one_int)),one_one_int),P_3))
    <=> hBOOL(hAPP_int_bool(zcong(A_2,hAPP_int_int(minus_minus_int(P_3),one_one_int)),P_3)) ) ).

fof(fact_954_gr__implies__not0,axiom,
    ! [M,N_1] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,M),N_1))
     => N_1 != zero_zero_nat ) ).

fof(fact_327_zdvd__antisym__nonneg,axiom,
    ! [N_1,M] :
      ( ( is_int(N_1)
        & is_int(M) )
     => ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,zero_zero_int),M))
       => ( ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(dvd_dvd_int,M),N_1))
           => ( M = N_1
             <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(dvd_dvd_int,N_1),M)) ) )
         <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,zero_zero_int),N_1)) ) ) ) ).

fof(fact_466_power__one,axiom,
    ! [N_15] : hAPP_nat_real(power_power_real(one_one_real),N_15) = one_one_real ).

fof(fact_380_power__strict__decreasing,axiom,
    ! [A_73,N_21,N_20] :
      ( ( ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,A_73),one_one_int))
         => hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,hAPP_nat_int(power_power_int(A_73),N_20)),hAPP_nat_int(power_power_int(A_73),N_21))) )
       <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,zero_zero_int),A_73)) )
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,N_21),N_20)) ) ).

fof(fact_731_dvd__mult__right,axiom,
    ! [A_42,B_39,C_20] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(dvd_dvd_int,B_39),C_20))
     <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(dvd_dvd_int,hAPP_int_int(times_times_int(A_42),B_39)),C_20)) ) ).

fof(fact_1156_zmod__zdvd__zmod,axiom,
    ! [A,B,M] :
      ( ( hAPP_int_int(div_mod_int(hAPP_int_int(div_mod_int(A),B)),M) = hAPP_int_int(div_mod_int(A),M)
       <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(dvd_dvd_int,M),B)) )
     <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,zero_zero_int),M)) ) ).

fof(fact_235_add__numeral__0,axiom,
    ! [A_95] :
      ( A_95 = hAPP_int_int(plus_plus_int(number_number_of_int(pls)),A_95)
     <= is_int(A_95) ) ).

fof(fact_254_number__of__Bit1,axiom,
    ! [W_7] : hAPP_int_int(plus_plus_int(hAPP_int_int(plus_plus_int(one_one_int),number_number_of_int(W_7))),number_number_of_int(W_7)) = number_number_of_int(bit1(W_7)) ).

fof(fact_203_add__Pls__right,axiom,
    ! [K_1] :
      ( is_int(K_1)
     => K_1 = hAPP_int_int(plus_plus_int(K_1),pls) ) ).

fof(fact_927_nat__add__commute,axiom,
    ! [M,N_1] : hAPP_nat_nat(plus_plus_nat(N_1),M) = hAPP_nat_nat(plus_plus_nat(M),N_1) ).

fof(fact_342_comm__semiring__1__class_Onormalizing__semiring__rules_I9_J,axiom,
    ! [A_82] : zero_zero_nat = hAPP_nat_nat(times_times_nat(zero_zero_nat),A_82) ).

fof(fact_912_dvd_Oantisym,axiom,
    ! [X_1,Y_1] :
      ( ( Y_1 = X_1
       <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,Y_1),X_1)) )
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,X_1),Y_1)) ) ).

fof(fact_1035_mult__less__cancel2,axiom,
    ! [Ma,K,N] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,hAPP_nat_nat(times_times_nat(Ma),K)),hAPP_nat_nat(times_times_nat(N),K)))
    <=> ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,Ma),N))
        & hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,zero_zero_nat),K)) ) ) ).

fof(fact_386_sum__squares__eq__zero__iff,axiom,
    ! [X_2,Y_2] :
      ( hAPP_real_real(plus_plus_real(hAPP_real_real(times_times_real(X_2),X_2)),hAPP_real_real(times_times_real(Y_2),Y_2)) = zero_zero_real
    <=> ( X_2 = zero_zero_real
        & Y_2 = zero_zero_real ) ) ).

fof(fact_1057_nat__eq__add__iff2,axiom,
    ! [U,Ma,N,I_2,J_2] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,I_2),J_2))
     => ( hAPP_nat_nat(plus_plus_nat(hAPP_nat_nat(times_times_nat(J_2),U)),N) = hAPP_nat_nat(plus_plus_nat(hAPP_nat_nat(times_times_nat(I_2),U)),Ma)
      <=> hAPP_nat_nat(plus_plus_nat(hAPP_nat_nat(times_times_nat(hAPP_nat_nat(minus_minus_nat(J_2),I_2)),U)),N) = Ma ) ) ).

fof(fact_593_power__0__left__number__of,axiom,
    ! [W_4] :
      ( ( zero_zero_int = hAPP_nat_int(power_power_int(zero_zero_int),number_number_of_nat(W_4))
       <= number_number_of_nat(W_4) != zero_zero_nat )
      & ( zero_zero_nat = number_number_of_nat(W_4)
       => hAPP_nat_int(power_power_int(zero_zero_int),number_number_of_nat(W_4)) = one_one_int ) ) ).

fof(fact_359_int__0__neq__1,axiom,
    one_one_int != zero_zero_int ).

fof(fact_160_power__even__eq,axiom,
    ! [A_103,N_39] : hAPP_nat_real(power_power_real(A_103),hAPP_nat_nat(times_times_nat(number_number_of_nat(bit0(bit1(pls)))),N_39)) = hAPP_nat_real(power_power_real(hAPP_nat_real(power_power_real(A_103),N_39)),number_number_of_nat(bit0(bit1(pls)))) ).

fof(fact_550_rel__simps_I11_J,axiom,
    ! [K] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,K),min))
    <=> hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,bit0(K)),min)) ) ).

fof(fact_495_power__strict__increasing__iff,axiom,
    ! [X_2,Y_2,B_2] :
      ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,X_2),Y_2))
      <=> hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,hAPP_nat_nat(power_power_nat(B_2),X_2)),hAPP_nat_nat(power_power_nat(B_2),Y_2))) )
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,one_one_nat),B_2)) ) ).

fof(fact_1038_mult__eq__self__implies__10,axiom,
    ! [M,N_1] :
      ( ( N_1 = one_one_nat
        | zero_zero_nat = M )
     <= M = hAPP_nat_nat(times_times_nat(M),N_1) ) ).

fof(fact_919_dvd_Oeq__refl,axiom,
    ! [X_1,Y_1] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,X_1),Y_1))
     <= X_1 = Y_1 ) ).

fof(fact_761_real__mult__right__cancel,axiom,
    ! [A_2,B_2,C_2] :
      ( C_2 != zero_zero_real
     => ( hAPP_real_real(times_times_real(A_2),C_2) = hAPP_real_real(times_times_real(B_2),C_2)
      <=> B_2 = A_2 ) ) ).

fof(fact_138_number__of__reorient,axiom,
    ! [W_1,X_2] :
      ( ( number_number_of_int(W_1) = X_2
      <=> X_2 = number_number_of_int(W_1) )
     <= is_int(X_2) ) ).

fof(fact_148_rel__simps_I12_J,axiom,
    ! [K] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,K),pls))
    <=> hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,bit1(K)),pls)) ) ).

fof(fact_754_dvd__add,axiom,
    ! [C_15,A_34,B_31] :
      ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,A_34),C_15))
       => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,A_34),hAPP_nat_nat(plus_plus_nat(B_31),C_15))) )
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,A_34),B_31)) ) ).

fof(fact_716_one__neq__zero,axiom,
    zero_zero_nat != one_one_nat ).

fof(fact_417_not__sum__squares__lt__zero,axiom,
    ! [X_16,Y_13] : ~ hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_real,hAPP_real_real(plus_plus_real(hAPP_real_real(times_times_real(X_16),X_16)),hAPP_real_real(times_times_real(Y_13),Y_13))),zero_zero_real)) ).

fof(fact_857_pos__add__strict,axiom,
    ! [B_4,C_1,A_4] :
      ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,B_4),hAPP_nat_nat(plus_plus_nat(A_4),C_1)))
       <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,B_4),C_1)) )
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,zero_zero_nat),A_4)) ) ).

fof(fact_462_power__mult__distrib,axiom,
    ! [A_66,B_49,N_17] : hAPP_int_int(times_times_int(hAPP_nat_int(power_power_int(A_66),N_17)),hAPP_nat_int(power_power_int(B_49),N_17)) = hAPP_nat_int(power_power_int(hAPP_int_int(times_times_int(A_66),B_49)),N_17) ).

fof(fact_853_mult__less__cancel__right__disj,axiom,
    ! [A_2,C_2,B_2] :
      ( hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_real,hAPP_real_real(times_times_real(A_2),C_2)),hAPP_real_real(times_times_real(B_2),C_2)))
    <=> ( ( hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_real,zero_zero_real),C_2))
          & hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_real,A_2),B_2)) )
        | ( hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_real,B_2),A_2))
          & hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_real,C_2),zero_zero_real)) ) ) ) ).

fof(fact_100_comm__semiring__1__class_Onormalizing__semiring__rules_I16_J,axiom,
    ! [Lx_3,Ly_1,Rx_3] : hAPP_int_int(times_times_int(hAPP_int_int(times_times_int(Lx_3),Rx_3)),Ly_1) = hAPP_int_int(times_times_int(hAPP_int_int(times_times_int(Lx_3),Ly_1)),Rx_3) ).

fof(fact_915_dvd_Oord__eq__le__trans,axiom,
    ! [C,A,B] :
      ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,A),C))
       <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,B),C)) )
     <= B = A ) ).

fof(fact_597_zdiv__mono2__neg__lemma,axiom,
    ! [B,Q_1,R_1,B_48,Q_4,R_3] :
      ( ( ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,R_1),B))
         => ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,zero_zero_int),R_3))
           => ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,zero_zero_int),B_48))
             => ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,Q_4),Q_1))
               <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,B_48),B)) ) ) ) )
       <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,hAPP_int_int(plus_plus_int(hAPP_int_int(times_times_int(B_48),Q_4)),R_3)),zero_zero_int)) )
     <= hAPP_int_int(plus_plus_int(hAPP_int_int(times_times_int(B),Q_1)),R_1) = hAPP_int_int(plus_plus_int(hAPP_int_int(times_times_int(B_48),Q_4)),R_3) ) ).

fof(fact_339_power__strict__mono,axiom,
    ! [N_28,A_83,B_53] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,A_83),B_53))
     => ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,zero_zero_nat),N_28))
         => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,hAPP_nat_nat(power_power_nat(A_83),N_28)),hAPP_nat_nat(power_power_nat(B_53),N_28))) )
       <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,zero_zero_nat),A_83)) ) ) ).

fof(fact_645_zcong__zmult__prop2,axiom,
    ! [C_2,D,A_2,B_2,Ma] :
      ( ( hBOOL(hAPP_int_bool(zcong(C_2,hAPP_int_int(times_times_int(D),B_2)),Ma))
      <=> hBOOL(hAPP_int_bool(zcong(C_2,hAPP_int_int(times_times_int(D),A_2)),Ma)) )
     <= hBOOL(hAPP_int_bool(zcong(A_2,B_2),Ma)) ) ).

fof(fact_733_dvd__mult__left,axiom,
    ! [A_41,B_38,C_19] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,hAPP_nat_nat(times_times_nat(A_41),B_38)),C_19))
     => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,A_41),C_19)) ) ).

fof(fact_226_comm__semiring__1__class_Onormalizing__semiring__rules_I2_J,axiom,
    ! [A_97,M_12] : hAPP_int_int(times_times_int(hAPP_int_int(plus_plus_int(A_97),one_one_int)),M_12) = hAPP_int_int(plus_plus_int(hAPP_int_int(times_times_int(A_97),M_12)),M_12) ).

fof(fact_558_dvd__power,axiom,
    ! [X_9,N_5] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(dvd_dvd_int,X_9),hAPP_nat_int(power_power_int(X_9),N_5)))
     <= ( one_one_int = X_9
        | hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,zero_zero_nat),N_5)) ) ) ).

fof(fact_800_mult__nonneg__nonpos2,axiom,
    ! [B_19,A_21] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,zero_zero_nat),A_21))
     => ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(times_times_nat(B_19),A_21)),zero_zero_nat))
       <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,B_19),zero_zero_nat)) ) ) ).

fof(fact_830_mult__neg__pos,axiom,
    ! [B_10,A_11] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,A_11),zero_zero_nat))
     => ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,zero_zero_nat),B_10))
       => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,hAPP_nat_nat(times_times_nat(A_11),B_10)),zero_zero_nat)) ) ) ).

fof(fact_209_times__numeral__code_I5_J,axiom,
    ! [V,W] : hAPP_int_int(times_times_int(number_number_of_int(V)),number_number_of_int(W)) = number_number_of_int(hAPP_int_int(times_times_int(V),W)) ).

fof(fact_770_split__mult__neg__le,axiom,
    ! [B_30,A_32] :
      ( hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_eq_real,hAPP_real_real(times_times_real(A_32),B_30)),zero_zero_real))
     <= ( ( hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_eq_real,zero_zero_real),B_30))
          & hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_eq_real,A_32),zero_zero_real)) )
        | ( hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_eq_real,B_30),zero_zero_real))
          & hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_eq_real,zero_zero_real),A_32)) ) ) ) ).

fof(fact_395_semiring__numeral__0__eq__0,axiom,
    zero_zero_int = number_number_of_int(pls) ).

fof(fact_140_rel__simps_I51_J,axiom,
    ! [K,L_1] :
      ( ( K = L_1
      <=> bit1(L_1) = bit1(K) )
     <= ( is_int(K)
        & is_int(L_1) ) ) ).

fof(fact_676_linorder__neqE__linordered__idom,axiom,
    ! [X_5,Y_4] :
      ( ( ~ hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_real,X_5),Y_4))
       => hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_real,Y_4),X_5)) )
     <= Y_4 != X_5 ) ).

fof(fact_817_mult__strict__right__mono__neg,axiom,
    ! [C_6,B_15,A_16] :
      ( ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,hAPP_int_int(times_times_int(A_16),C_6)),hAPP_int_int(times_times_int(B_15),C_6)))
       <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,C_6),zero_zero_int)) )
     <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,B_15),A_16)) ) ).

fof(gsy_c_Int_Onumber__class_Onumber__of_000tc__Int__Oint,hypothesis,
    ! [B_1_1] :
      ( is_int(B_1_1)
     => is_int(number_number_of_int(B_1_1)) ) ).

fof(fact_361_zadd__0__right,axiom,
    ! [Z] :
      ( is_int(Z)
     => Z = hAPP_int_int(plus_plus_int(Z),zero_zero_int) ) ).

fof(fact_794_mult__nonpos__nonpos,axiom,
    ! [B_21,A_23] :
      ( hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_eq_real,A_23),zero_zero_real))
     => ( hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_eq_real,B_21),zero_zero_real))
       => hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_eq_real,zero_zero_real),hAPP_real_real(times_times_real(A_23),B_21))) ) ) ).

fof(fact_1128_dvd__pos__nat,axiom,
    ! [M,N_1] :
      ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,zero_zero_nat),M))
       <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,M),N_1)) )
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,zero_zero_nat),N_1)) ) ).

fof(fact_490_power__increasing,axiom,
    ! [A_61,N_11,N_10] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,N_11),N_10))
     => ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,one_one_int),A_61))
       => hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,hAPP_nat_int(power_power_int(A_61),N_11)),hAPP_nat_int(power_power_int(A_61),N_10))) ) ) ).

fof(fact_1072_inv__inv,axiom,
    ! [A,P_1] :
      ( is_int(A)
     => ( ( ( ( inv(P_1,inv(P_1,A)) = A
             <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,A),P_1)) )
           <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,zero_zero_int),A)) )
         <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,number_number_of_int(bit1(bit0(bit1(pls))))),P_1)) )
       <= hBOOL(hAPP_int_bool(zprime,P_1)) ) ) ).

fof(fact_475_sum__power2__ge__zero,axiom,
    ! [X_12,Y_9] : hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_eq_real,zero_zero_real),hAPP_real_real(plus_plus_real(hAPP_nat_real(power_power_real(X_12),number_number_of_nat(bit0(bit1(pls))))),hAPP_nat_real(power_power_real(Y_9),number_number_of_nat(bit0(bit1(pls))))))) ).

fof(fact_891_less__irrefl__nat,axiom,
    ! [N_1] : ~ hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,N_1),N_1)) ).

fof(fact_966_less__eq__nat_Osimps_I1_J,axiom,
    ! [N_1] : hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,zero_zero_nat),N_1)) ).

fof(fact_1126_gcd__lcm__complete__lattice__nat_Obot__unique,axiom,
    ! [A_2] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,A_2),one_one_nat))
    <=> one_one_nat = A_2 ) ).

fof(fact_29_add__special_I2_J,axiom,
    ! [W_15] : number267125858f_real(hAPP_int_int(plus_plus_int(bit1(pls)),W_15)) = hAPP_real_real(plus_plus_real(one_one_real),number267125858f_real(W_15)) ).

fof(fact_816_mult__strict__right__mono__neg,axiom,
    ! [C_6,B_15,A_16] :
      ( ( hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_real,C_6),zero_zero_real))
       => hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_real,hAPP_real_real(times_times_real(A_16),C_6)),hAPP_real_real(times_times_real(B_15),C_6))) )
     <= hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_real,B_15),A_16)) ) ).

fof(fact_19_comm__semiring__1__class_Onormalizing__semiring__rules_I29_J,axiom,
    ! [X_26] : hAPP_int_int(times_times_int(X_26),X_26) = hAPP_nat_int(power_power_int(X_26),number_number_of_nat(bit0(bit1(pls)))) ).

fof(fact_237_add__numeral__0__right,axiom,
    ! [A_94] :
      ( is_int(A_94)
     => hAPP_int_int(plus_plus_int(A_94),number_number_of_int(pls)) = A_94 ) ).

fof(fact_416_not__sum__squares__lt__zero,axiom,
    ! [X_16,Y_13] : ~ hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,hAPP_int_int(plus_plus_int(hAPP_int_int(times_times_int(X_16),X_16)),hAPP_int_int(times_times_int(Y_13),Y_13))),zero_zero_int)) ).

fof(fact_1047_nat__mult__eq__cancel1,axiom,
    ! [Ma,N,K] :
      ( ( Ma = N
      <=> hAPP_nat_nat(times_times_nat(K),Ma) = hAPP_nat_nat(times_times_nat(K),N) )
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,zero_zero_nat),K)) ) ).

fof(fact_488_power__increasing,axiom,
    ! [A_61,N_11,N_10] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,N_11),N_10))
     => ( hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_eq_real,one_one_real),A_61))
       => hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_eq_real,hAPP_nat_real(power_power_real(A_61),N_11)),hAPP_nat_real(power_power_real(A_61),N_10))) ) ) ).

fof(fact_89_zprime__2,axiom,
    hBOOL(hAPP_int_bool(zprime,number_number_of_int(bit0(bit1(pls))))) ).

fof(fact_795_mult__nonpos__nonpos,axiom,
    ! [B_21,A_23] :
      ( ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,B_21),zero_zero_int))
       => hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,zero_zero_int),hAPP_int_int(times_times_int(A_23),B_21))) )
     <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,A_23),zero_zero_int)) ) ).

fof(fact_71_less__eq__int__code_I13_J,axiom,
    ! [K1,K2] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,bit0(K1)),bit0(K2)))
    <=> hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,K1),K2)) ) ).

fof(fact_872_realpow__pos__nth,axiom,
    ! [A,N_1] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,zero_zero_nat),N_1))
     => ( ? [R_2] :
            ( A = hAPP_nat_real(power_power_real(R_2),N_1)
            & hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_real,zero_zero_real),R_2)) )
       <= hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_real,zero_zero_real),A)) ) ) ).

fof(fact_865_real__mult__less__mono2,axiom,
    ! [X_1,Y_1,Z] :
      ( hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_real,zero_zero_real),Z))
     => ( hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_real,X_1),Y_1))
       => hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_real,hAPP_real_real(times_times_real(Z),X_1)),hAPP_real_real(times_times_real(Z),Y_1))) ) ) ).

fof(fact_1055_nat__le__add__iff2,axiom,
    ! [U,Ma,N,I_2,J_2] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,I_2),J_2))
     => ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(plus_plus_nat(hAPP_nat_nat(times_times_nat(I_2),U)),Ma)),hAPP_nat_nat(plus_plus_nat(hAPP_nat_nat(times_times_nat(J_2),U)),N)))
      <=> hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,Ma),hAPP_nat_nat(plus_plus_nat(hAPP_nat_nat(times_times_nat(hAPP_nat_nat(minus_minus_nat(J_2),I_2)),U)),N))) ) ) ).

fof(fact_419_sum__squares__gt__zero__iff,axiom,
    ! [X_2,Y_2] :
      ( ( zero_zero_real != Y_2
        | X_2 != zero_zero_real )
    <=> hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_real,zero_zero_real),hAPP_real_real(plus_plus_real(hAPP_real_real(times_times_real(X_2),X_2)),hAPP_real_real(times_times_real(Y_2),Y_2)))) ) ).

fof(fact_1094_MultInv__prop2a,axiom,
    ! [X_1,P_1] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,number_number_of_int(bit0(bit1(pls)))),P_1))
     => ( ( ~ hBOOL(hAPP_int_bool(zcong(X_1,zero_zero_int),P_1))
         => hBOOL(hAPP_int_bool(zcong(hAPP_int_int(times_times_int(multInv(P_1,X_1)),X_1),one_one_int),P_1)) )
       <= hBOOL(hAPP_int_bool(zprime,P_1)) ) ) ).

fof(fact_670_convex__bound__lt,axiom,
    ! [V_1,U_2,Y_5,X_6,A_54] :
      ( ( hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_real,Y_5),A_54))
       => ( ( hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_eq_real,zero_zero_real),V_1))
           => ( hAPP_real_real(plus_plus_real(U_2),V_1) = one_one_real
             => hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_real,hAPP_real_real(plus_plus_real(hAPP_real_real(times_times_real(U_2),X_6)),hAPP_real_real(times_times_real(V_1),Y_5))),A_54)) ) )
         <= hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_eq_real,zero_zero_real),U_2)) ) )
     <= hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_real,X_6),A_54)) ) ).

fof(fact_1095_MultInv__prop2,axiom,
    ! [X_1,P_1] :
      ( ( hBOOL(hAPP_int_bool(zprime,P_1))
       => ( ~ hBOOL(hAPP_int_bool(zcong(X_1,zero_zero_int),P_1))
         => hBOOL(hAPP_int_bool(zcong(hAPP_int_int(times_times_int(X_1),multInv(P_1,X_1)),one_one_int),P_1)) ) )
     <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,number_number_of_int(bit0(bit1(pls)))),P_1)) ) ).

fof(fact_858_pos__add__strict,axiom,
    ! [B_4,C_1,A_4] :
      ( ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,B_4),hAPP_int_int(plus_plus_int(A_4),C_1)))
       <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,B_4),C_1)) )
     <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,zero_zero_int),A_4)) ) ).

fof(fact_44_comm__semiring__1__class_Onormalizing__semiring__rules_I33_J,axiom,
    ! [X_23] :
      ( is_int(X_23)
     => X_23 = hAPP_nat_int(power_power_int(X_23),one_one_nat) ) ).

fof(fact_1019_nat__dvd__1__iff__1,axiom,
    ! [Ma] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,Ma),one_one_nat))
    <=> one_one_nat = Ma ) ).

fof(fact_725_dvd__0__left,axiom,
    ! [A_44] :
      ( A_44 = zero_zero_nat
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,zero_zero_nat),A_44)) ) ).

fof(fact_223_right__distrib__number__of,axiom,
    ! [V_15,B_56,C_28] : hAPP_int_int(plus_plus_int(hAPP_int_int(times_times_int(number_number_of_int(V_15)),B_56)),hAPP_int_int(times_times_int(number_number_of_int(V_15)),C_28)) = hAPP_int_int(times_times_int(number_number_of_int(V_15)),hAPP_int_int(plus_plus_int(B_56),C_28)) ).

fof(fact_454_zero__less__power2,axiom,
    ! [A_2] :
      ( ( zero_zero_int != A_2
      <=> hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,zero_zero_int),hAPP_nat_int(power_power_int(A_2),number_number_of_nat(bit0(bit1(pls)))))) )
     <= is_int(A_2) ) ).

fof(fact_53_le__number__of,axiom,
    ! [X_2,Y_2] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,X_2),Y_2))
    <=> hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,number_number_of_int(X_2)),number_number_of_int(Y_2))) ) ).

fof(fact_600_unique__quotient__lemma,axiom,
    ! [B,Q_4,R_3,Q_1,R_1] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,hAPP_int_int(plus_plus_int(hAPP_int_int(times_times_int(B),Q_4)),R_3)),hAPP_int_int(plus_plus_int(hAPP_int_int(times_times_int(B),Q_1)),R_1)))
     => ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,zero_zero_int),R_3))
       => ( ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,Q_4),Q_1))
           <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,R_1),B)) )
         <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,R_3),B)) ) ) ) ).

fof(fact_506_even__power__le__0__imp__0,axiom,
    ! [A_58,K_4] :
      ( A_58 = zero_zero_real
     <= hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_eq_real,hAPP_nat_real(power_power_real(A_58),hAPP_nat_nat(times_times_nat(number_number_of_nat(bit0(bit1(pls)))),K_4))),zero_zero_real)) ) ).

fof(fact_477_sum__power2__le__zero__iff,axiom,
    ! [X_2,Y_2] :
      ( hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_eq_real,hAPP_real_real(plus_plus_real(hAPP_nat_real(power_power_real(X_2),number_number_of_nat(bit0(bit1(pls))))),hAPP_nat_real(power_power_real(Y_2),number_number_of_nat(bit0(bit1(pls)))))),zero_zero_real))
    <=> ( X_2 = zero_zero_real
        & Y_2 = zero_zero_real ) ) ).

fof(fact_1099_wset__subset,axiom,
    ! [B_2,P_3,A_2] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,one_one_int),A_2))
     => ( hBOOL(member_int(B_2,wset(hAPP_int_int(minus_minus_int(A_2),one_one_int),P_3)))
       => hBOOL(member_int(B_2,wset(A_2,P_3))) ) ) ).

fof(fact_544_power__0,axiom,
    ! [A_57] : one_one_real = hAPP_nat_real(power_power_real(A_57),zero_zero_nat) ).

fof(fact_1013_le__imp__diff__is__add,axiom,
    ! [K,I_2,J_2] :
      ( ( hAPP_nat_nat(plus_plus_nat(K),I_2) = J_2
      <=> K = hAPP_nat_nat(minus_minus_nat(J_2),I_2) )
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,I_2),J_2)) ) ).

fof(fact_355_add__0__iff,axiom,
    ! [B_2,A_2] :
      ( zero_zero_real = A_2
    <=> B_2 = hAPP_real_real(plus_plus_real(B_2),A_2) ) ).

fof(fact_276_semiring__mult__2,axiom,
    ! [Z_6] : hAPP_nat_nat(plus_plus_nat(Z_6),Z_6) = hAPP_nat_nat(times_times_nat(number_number_of_nat(bit0(bit1(pls)))),Z_6) ).

fof(fact_374_power__less__imp__less__base,axiom,
    ! [A_75,N_24,B_51] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,hAPP_nat_int(power_power_int(A_75),N_24)),hAPP_nat_int(power_power_int(B_51),N_24)))
     => ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,A_75),B_51))
       <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,zero_zero_int),B_51)) ) ) ).

fof(fact_608_one__not__neg__one__mod__m,axiom,
    ! [M] :
      ( ~ hBOOL(hAPP_int_bool(zcong(one_one_int,number_number_of_int(min)),M))
     <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,number_number_of_int(bit0(bit1(pls)))),M)) ) ).

fof(fact_605__0964_A_K_Am_A_L_A1_Advd_As_A_094_A2_A_N_A_N1_096,axiom,
    hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(dvd_dvd_int,hAPP_int_int(plus_plus_int(hAPP_int_int(times_times_int(number_number_of_int(bit0(bit0(bit1(pls))))),m)),one_one_int)),hAPP_int_int(minus_minus_int(hAPP_nat_int(power_power_int(s),number_number_of_nat(bit0(bit1(pls))))),number_number_of_int(min)))) ).

fof(fact_267_one__is__num__one,axiom,
    number_number_of_int(bit1(pls)) = one_one_int ).

fof(fact_727_add__diff__add,axiom,
    ! [A_43,C_21,B_40,D_7] : hAPP_real_real(plus_plus_real(hAPP_real_real(minus_minus_real(A_43),B_40)),hAPP_real_real(minus_minus_real(C_21),D_7)) = hAPP_real_real(minus_minus_real(hAPP_real_real(plus_plus_real(A_43),C_21)),hAPP_real_real(plus_plus_real(B_40),D_7)) ).

fof(fact_993_dvd__diffD1,axiom,
    ! [K_1,M,N_1] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,K_1),hAPP_nat_nat(minus_minus_nat(M),N_1)))
     => ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,N_1),M))
         => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,K_1),N_1)) )
       <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,K_1),M)) ) ) ).

fof(fact_217_semiring__add__number__of,axiom,
    ! [V_18,V_17] :
      ( ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,pls),V_18))
       => number_number_of_nat(hAPP_int_int(plus_plus_int(V_17),V_18)) = hAPP_nat_nat(plus_plus_nat(number_number_of_nat(V_17)),number_number_of_nat(V_18)) )
     <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,pls),V_17)) ) ).

fof(gsy_c_HOL_Oundefined_000tc__Int__Oint,axiom,
    is_int(undefined_int(int)) ).

fof(fact_1006_diff__diff__right,axiom,
    ! [I_1,K_1,J_1] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,K_1),J_1))
     => hAPP_nat_nat(minus_minus_nat(I_1),hAPP_nat_nat(minus_minus_nat(J_1),K_1)) = hAPP_nat_nat(minus_minus_nat(hAPP_nat_nat(plus_plus_nat(I_1),K_1)),J_1) ) ).

fof(fact_334_power__0__left,axiom,
    ! [N_29] :
      ( ( zero_zero_nat != N_29
       => zero_zero_int = hAPP_nat_int(power_power_int(zero_zero_int),N_29) )
      & ( zero_zero_nat = N_29
       => one_one_int = hAPP_nat_int(power_power_int(zero_zero_int),N_29) ) ) ).

fof(fact_1036_mult__less__cancel1,axiom,
    ! [K,Ma,N] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,hAPP_nat_nat(times_times_nat(K),Ma)),hAPP_nat_nat(times_times_nat(K),N)))
    <=> ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,Ma),N))
        & hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,zero_zero_nat),K)) ) ) ).

fof(fact_815_mult__strict__left__mono__neg,axiom,
    ! [C_7,B_16,A_17] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,B_16),A_17))
     => ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,hAPP_int_int(times_times_int(C_7),A_17)),hAPP_int_int(times_times_int(C_7),B_16)))
       <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,C_7),zero_zero_int)) ) ) ).

fof(fact_471_power__mult,axiom,
    ! [A_64,M_4,N_14] : hAPP_nat_int(power_power_int(A_64),hAPP_nat_nat(times_times_nat(M_4),N_14)) = hAPP_nat_int(power_power_int(hAPP_nat_int(power_power_int(A_64),M_4)),N_14) ).

fof(fact_514_nat__zero__less__power__iff,axiom,
    ! [X_2,N] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,zero_zero_nat),hAPP_nat_nat(power_power_nat(X_2),N)))
    <=> ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,zero_zero_nat),X_2))
        | N = zero_zero_nat ) ) ).

fof(fact_308__096EX_B_As_O_A0_A_060_061_As_A_G_As_A_060_A4_A_K_Am_A_L_A1_A_G_A_091s1,axiom,
    ? [X] :
      ( is_int(X)
      & hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,X),hAPP_int_int(plus_plus_int(hAPP_int_int(times_times_int(number_number_of_int(bit0(bit0(bit1(pls))))),m)),one_one_int)))
      & ! [Y] :
          ( ( ( hBOOL(hAPP_int_bool(zcong(s1,Y),hAPP_int_int(plus_plus_int(hAPP_int_int(times_times_int(number_number_of_int(bit0(bit0(bit1(pls))))),m)),one_one_int)))
              & hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,Y),hAPP_int_int(plus_plus_int(hAPP_int_int(times_times_int(number_number_of_int(bit0(bit0(bit1(pls))))),m)),one_one_int)))
              & hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,zero_zero_int),Y)) )
           => Y = X )
         <= is_int(Y) )
      & hBOOL(hAPP_int_bool(zcong(s1,X),hAPP_int_int(plus_plus_int(hAPP_int_int(times_times_int(number_number_of_int(bit0(bit0(bit1(pls))))),m)),one_one_int)))
      & hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,zero_zero_int),X)) ) ).

fof(fact_518_rel__simps_I47_J,axiom,
    ! [K] :
      ( ( min = K
      <=> min = bit1(K) )
     <= is_int(K) ) ).

fof(fact_265_semiring__norm_I110_J,axiom,
    number_number_of_int(bit1(pls)) = one_one_int ).

fof(fact_955_less__nat__zero__code,axiom,
    ! [N_1] : ~ hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,N_1),zero_zero_nat)) ).

fof(fact_228_comm__semiring__1__class_Onormalizing__semiring__rules_I2_J,axiom,
    ! [A_97,M_12] : hAPP_real_real(plus_plus_real(hAPP_real_real(times_times_real(A_97),M_12)),M_12) = hAPP_real_real(times_times_real(hAPP_real_real(plus_plus_real(A_97),one_one_real)),M_12) ).

fof(fact_554_one__less__power,axiom,
    ! [N_6,A_56] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,one_one_nat),A_56))
     => ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,zero_zero_nat),N_6))
       => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,one_one_nat),hAPP_nat_nat(power_power_nat(A_56),N_6))) ) ) ).

fof(fact_15_cube__square,axiom,
    ! [A] : hAPP_nat_int(power_power_int(A),number_number_of_nat(bit1(bit1(pls)))) = hAPP_int_int(times_times_int(A),hAPP_nat_int(power_power_int(A),number_number_of_nat(bit0(bit1(pls))))) ).

fof(fact_806_mult__nonneg__nonneg,axiom,
    ! [B_17,A_19] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,zero_zero_nat),A_19))
     => ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,zero_zero_nat),B_17))
       => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,zero_zero_nat),hAPP_nat_nat(times_times_nat(A_19),B_17))) ) ) ).

fof(fact_450_power2__eq__imp__eq,axiom,
    ! [X_14,Y_11] :
      ( ( is_int(X_14)
        & is_int(Y_11) )
     => ( hAPP_nat_int(power_power_int(X_14),number_number_of_nat(bit0(bit1(pls)))) = hAPP_nat_int(power_power_int(Y_11),number_number_of_nat(bit0(bit1(pls))))
       => ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,zero_zero_int),X_14))
         => ( Y_11 = X_14
           <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,zero_zero_int),Y_11)) ) ) ) ) ).

fof(fact_12_power2__eq__square__number__of,axiom,
    ! [W_16] : hAPP_nat_int(power_power_int(number_number_of_int(W_16)),number_number_of_nat(bit0(bit1(pls)))) = hAPP_int_int(times_times_int(number_number_of_int(W_16)),number_number_of_int(W_16)) ).

fof(gsy_c_hAPP_000tc__Nat__Onat_000tc__Int__Oint,hypothesis,
    ! [B_1_1,B_2_1] : is_int(hAPP_nat_int(B_1_1,B_2_1)) ).

fof(gsy_c_member_000tc__Int__Oint,axiom,
    ! [B_1_1,B_2_1] :
      ( is_bool(member_int(B_1_1,B_2_1))
     <= is_int(B_1_1) ) ).

fof(fact_574_zcong__1,axiom,
    ! [A,B] : hBOOL(hAPP_int_bool(zcong(A,B),one_one_int)) ).

fof(fact_90_is__mult__sum2sq,axiom,
    ! [Y_1,X_1] :
      ( ( hBOOL(hAPP_int_bool(twoSqu1154269391sum2sq,Y_1))
       => hBOOL(hAPP_int_bool(twoSqu1154269391sum2sq,hAPP_int_int(times_times_int(X_1),Y_1))) )
     <= hBOOL(hAPP_int_bool(twoSqu1154269391sum2sq,X_1)) ) ).

fof(fact_132_comm__semiring__1__class_Onormalizing__semiring__rules_I24_J,axiom,
    ! [A_104,C_30] : hAPP_int_int(plus_plus_int(A_104),C_30) = hAPP_int_int(plus_plus_int(C_30),A_104) ).

fof(fact_1159_pos__mod__conj,axiom,
    ! [A,B] :
      ( ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,hAPP_int_int(div_mod_int(A),B)),B))
        & hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,zero_zero_int),hAPP_int_int(div_mod_int(A),B))) )
     <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,zero_zero_int),B)) ) ).

fof(fact_427_pos__zmult__eq__1__iff,axiom,
    ! [N,Ma] :
      ( ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,zero_zero_int),Ma))
       => ( hAPP_int_int(times_times_int(Ma),N) = one_one_int
        <=> ( one_one_int = N
            & Ma = one_one_int ) ) )
     <= ( is_int(Ma)
        & is_int(N) ) ) ).

fof(fact_385_sum__squares__eq__zero__iff,axiom,
    ! [X_2,Y_2] :
      ( ( zero_zero_int = hAPP_int_int(plus_plus_int(hAPP_int_int(times_times_int(X_2),X_2)),hAPP_int_int(times_times_int(Y_2),Y_2))
      <=> ( Y_2 = zero_zero_int
          & X_2 = zero_zero_int ) )
     <= ( is_int(X_2)
        & is_int(Y_2) ) ) ).

fof(fact_911_dvd_Oorder__trans,axiom,
    ! [Z,X_1,Y_1] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,X_1),Y_1))
     => ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,X_1),Z))
       <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,Y_1),Z)) ) ) ).

fof(fact_401_zero__is__num__zero,axiom,
    number_number_of_int(pls) = zero_zero_int ).

fof(fact_224_right__distrib__number__of,axiom,
    ! [V_15,B_56,C_28] : hAPP_nat_nat(plus_plus_nat(hAPP_nat_nat(times_times_nat(number_number_of_nat(V_15)),B_56)),hAPP_nat_nat(times_times_nat(number_number_of_nat(V_15)),C_28)) = hAPP_nat_nat(times_times_nat(number_number_of_nat(V_15)),hAPP_nat_nat(plus_plus_nat(B_56),C_28)) ).

fof(fact_384_even__less__0__iff,axiom,
    ! [A_2] :
      ( hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_real,hAPP_real_real(plus_plus_real(A_2),A_2)),zero_zero_real))
    <=> hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_real,A_2),zero_zero_real)) ) ).

fof(fact_1184_StandardRes__def,axiom,
    ! [M,X_1] : standardRes(M,X_1) = hAPP_int_int(div_mod_int(X_1),M) ).

fof(fact_920_dvd_Oneq__le__trans,axiom,
    ! [A,B] :
      ( A != B
     => ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,A),B))
       => ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,A),B))
          & ~ hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,B),A)) ) ) ) ).

fof(fact_1193_StandardRes__SR__prop,axiom,
    ! [X_2,P_3] :
      ( ( hBOOL(member_int(X_2,sr(P_3)))
       => X_2 = standardRes(P_3,X_2) )
     <= is_int(X_2) ) ).

fof(fact_1120_gcd__lcm__complete__lattice__nat_Oless__top,axiom,
    ! [A_2] :
      ( A_2 != zero_zero_nat
    <=> ( ~ hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,zero_zero_nat),A_2))
        & hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,A_2),zero_zero_nat)) ) ) ).

fof(fact_107_comm__semiring__1__class_Onormalizing__semiring__rules_I18_J,axiom,
    ! [Lx_1,Rx_1,Ry_1] : hAPP_nat_nat(times_times_nat(hAPP_nat_nat(times_times_nat(Lx_1),Rx_1)),Ry_1) = hAPP_nat_nat(times_times_nat(Lx_1),hAPP_nat_nat(times_times_nat(Rx_1),Ry_1)) ).

fof(conj_0,conjecture,
    ? [X,Y] : hAPP_int_int(plus_plus_int(hAPP_nat_int(power_power_int(X),number_number_of_nat(bit0(bit1(pls))))),hAPP_nat_int(power_power_int(Y),number_number_of_nat(bit0(bit1(pls))))) = hAPP_int_int(plus_plus_int(hAPP_int_int(times_times_int(number_number_of_int(bit0(bit0(bit1(pls))))),m)),one_one_int) ).

fof(fact_286_semiring__one__add__one__is__two,axiom,
    number_number_of_nat(bit0(bit1(pls))) = hAPP_nat_nat(plus_plus_nat(one_one_nat),one_one_nat) ).

fof(fact_373_zdvd__period,axiom,
    ! [C_2,X_2,Ta,A_2,D] :
      ( ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(dvd_dvd_int,A_2),hAPP_int_int(plus_plus_int(X_2),Ta)))
      <=> hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(dvd_dvd_int,A_2),hAPP_int_int(plus_plus_int(hAPP_int_int(plus_plus_int(X_2),hAPP_int_int(times_times_int(C_2),D))),Ta))) )
     <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(dvd_dvd_int,A_2),D)) ) ).

fof(fact_139_number__of__reorient,axiom,
    ! [W_1,X_2] :
      ( X_2 = number267125858f_real(W_1)
    <=> X_2 = number267125858f_real(W_1) ) ).

fof(fact_525_rel__simps_I7_J,axiom,
    ~ hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,min),min)) ).

fof(fact_876_le0,axiom,
    ! [N_1] : hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,zero_zero_nat),N_1)) ).

fof(fact_1024_le__square,axiom,
    ! [M] : hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,M),hAPP_nat_nat(times_times_nat(M),M))) ).

fof(fact_105_comm__semiring__1__class_Onormalizing__semiring__rules_I17_J,axiom,
    ! [Lx_2,Ly,Rx_2] : hAPP_real_real(times_times_real(Lx_2),hAPP_real_real(times_times_real(Ly),Rx_2)) = hAPP_real_real(times_times_real(hAPP_real_real(times_times_real(Lx_2),Ly)),Rx_2) ).

fof(fact_435_le__special_I3_J,axiom,
    ! [X_2] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,X_2),pls))
    <=> hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_eq_real,number267125858f_real(X_2)),zero_zero_real)) ) ).

fof(fact_1105_int__less__induct,axiom,
    ! [P_2,I_2,K] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,I_2),K))
     => ( hBOOL(hAPP_int_bool(P_2,hAPP_int_int(minus_minus_int(K),one_one_int)))
       => ( hBOOL(hAPP_int_bool(P_2,I_2))
         <= ! [I] :
              ( ( ( hBOOL(hAPP_int_bool(P_2,I))
                 => hBOOL(hAPP_int_bool(P_2,hAPP_int_int(minus_minus_int(I),one_one_int))) )
               <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,I),K)) )
             <= is_int(I) ) ) ) ) ).

fof(fact_303_power__increasing__iff,axiom,
    ! [X_2,Y_2,B_2] :
      ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,X_2),Y_2))
      <=> hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,hAPP_nat_int(power_power_int(B_2),X_2)),hAPP_nat_int(power_power_int(B_2),Y_2))) )
     <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,one_one_int),B_2)) ) ).

fof(fact_326_zdvd__not__zless,axiom,
    ! [N_1,M] :
      ( ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,M),N_1))
       => ~ hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(dvd_dvd_int,N_1),M)) )
     <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,zero_zero_int),M)) ) ).

fof(fact_642_zspecial__product,axiom,
    ! [A,B] : hAPP_int_int(times_times_int(hAPP_int_int(plus_plus_int(A),B)),hAPP_int_int(minus_minus_int(A),B)) = hAPP_int_int(minus_minus_int(hAPP_nat_int(power_power_int(A),number_number_of_nat(bit0(bit1(pls))))),hAPP_nat_int(power_power_int(B),number_number_of_nat(bit0(bit1(pls))))) ).

fof(fact_487_one__le__power,axiom,
    ! [N_12,A_62] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,one_one_int),A_62))
     => hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,one_one_int),hAPP_nat_int(power_power_int(A_62),N_12))) ) ).

fof(fact_1137_neg__mod__bound,axiom,
    ! [A,B] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,B),zero_zero_int))
     => hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,B),hAPP_int_int(div_mod_int(A),B))) ) ).

fof(fact_207_zmult__1__right,axiom,
    ! [Z] :
      ( is_int(Z)
     => hAPP_int_int(times_times_int(Z),one_one_int) = Z ) ).

fof(fact_82_less__eq__int__code_I15_J,axiom,
    ! [K1,K2] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,K1),K2))
    <=> hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,bit1(K1)),bit0(K2))) ) ).

fof(fact_695_mult__eq__if,axiom,
    ! [N_1,M] :
      ( ( hAPP_nat_nat(times_times_nat(M),N_1) = zero_zero_nat
       <= zero_zero_nat = M )
      & ( M != zero_zero_nat
       => hAPP_nat_nat(times_times_nat(M),N_1) = hAPP_nat_nat(plus_plus_nat(N_1),hAPP_nat_nat(times_times_nat(hAPP_nat_nat(minus_minus_nat(M),one_one_nat)),N_1)) ) ) ).

fof(fact_95_comm__semiring__1__class_Onormalizing__semiring__rules_I15_J,axiom,
    ! [Lx_5,Ly_3,Rx_5,Ry_3] : hAPP_nat_nat(times_times_nat(Rx_5),hAPP_nat_nat(times_times_nat(hAPP_nat_nat(times_times_nat(Lx_5),Ly_3)),Ry_3)) = hAPP_nat_nat(times_times_nat(hAPP_nat_nat(times_times_nat(Lx_5),Ly_3)),hAPP_nat_nat(times_times_nat(Rx_5),Ry_3)) ).

fof(fact_526_rel__simps_I24_J,axiom,
    hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,min),min)) ).

fof(fact_434_le__special_I1_J,axiom,
    ! [Y_2] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,zero_zero_int),number_number_of_int(Y_2)))
    <=> hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,pls),Y_2)) ) ).

fof(fact_125_comm__semiring__1__class_Onormalizing__semiring__rules_I21_J,axiom,
    ! [A_107,B_60,C_33] : hAPP_real_real(plus_plus_real(hAPP_real_real(plus_plus_real(A_107),B_60)),C_33) = hAPP_real_real(plus_plus_real(A_107),hAPP_real_real(plus_plus_real(B_60),C_33)) ).

fof(fact_94_comm__semiring__1__class_Onormalizing__semiring__rules_I15_J,axiom,
    ! [Lx_5,Ly_3,Rx_5,Ry_3] : hAPP_int_int(times_times_int(Rx_5),hAPP_int_int(times_times_int(hAPP_int_int(times_times_int(Lx_5),Ly_3)),Ry_3)) = hAPP_int_int(times_times_int(hAPP_int_int(times_times_int(Lx_5),Ly_3)),hAPP_int_int(times_times_int(Rx_5),Ry_3)) ).

fof(fact_1049_nat__mult__dvd__cancel__disj,axiom,
    ! [K,Ma,N] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,hAPP_nat_nat(times_times_nat(K),Ma)),hAPP_nat_nat(times_times_nat(K),N)))
    <=> ( K = zero_zero_nat
        | hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,Ma),N)) ) ) ).

fof(fact_136_eq__number__of,axiom,
    ! [X_2,Y_2] :
      ( ( is_int(X_2)
        & is_int(Y_2) )
     => ( X_2 = Y_2
      <=> number267125858f_real(Y_2) = number267125858f_real(X_2) ) ) ).

fof(fact_801_mult__nonneg__nonpos2,axiom,
    ! [B_19,A_21] :
      ( ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,B_19),zero_zero_int))
       => hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,hAPP_int_int(times_times_int(B_19),A_21)),zero_zero_int)) )
     <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,zero_zero_int),A_21)) ) ).

fof(fact_1127_gcd__lcm__complete__lattice__nat_Ole__bot,axiom,
    ! [A] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,A),one_one_nat))
     => one_one_nat = A ) ).

fof(fact_478_sum__power2__le__zero__iff,axiom,
    ! [X_2,Y_2] :
      ( ( is_int(Y_2)
        & is_int(X_2) )
     => ( ( Y_2 = zero_zero_int
          & zero_zero_int = X_2 )
      <=> hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,hAPP_int_int(plus_plus_int(hAPP_nat_int(power_power_int(X_2),number_number_of_nat(bit0(bit1(pls))))),hAPP_nat_int(power_power_int(Y_2),number_number_of_nat(bit0(bit1(pls)))))),zero_zero_int)) ) ) ).

fof(fact_459_power__commutes,axiom,
    ! [A_67,N_18] : hAPP_int_int(times_times_int(hAPP_nat_int(power_power_int(A_67),N_18)),A_67) = hAPP_int_int(times_times_int(A_67),hAPP_nat_int(power_power_int(A_67),N_18)) ).

fof(fact_443_zero__le__power2,axiom,
    ! [A_69] : hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_eq_real,zero_zero_real),hAPP_nat_real(power_power_real(A_69),number_number_of_nat(bit0(bit1(pls)))))) ).

fof(fact_756_one__dvd,axiom,
    ! [A_33] : hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(dvd_dvd_real,one_one_real),A_33)) ).

fof(fact_519_rel__simps_I43_J,axiom,
    ! [L_1] :
      ( is_int(L_1)
     => ( min = bit1(L_1)
      <=> L_1 = min ) ) ).

fof(fact_537_rel__simps_I23_J,axiom,
    hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,min),pls)) ).

fof(fact_647_zcong__zpower,axiom,
    ! [Z,X_1,Y_1,M] :
      ( hBOOL(hAPP_int_bool(zcong(X_1,Y_1),M))
     => hBOOL(hAPP_int_bool(zcong(hAPP_nat_int(power_power_int(X_1),Z),hAPP_nat_int(power_power_int(Y_1),Z)),M)) ) ).

fof(fact_877_dvd_Oorder__refl,axiom,
    ! [X_1] : hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,X_1),X_1)) ).

fof(gsy_v_s____,axiom,
    is_int(s) ).

fof(fact_168_le__special_I2_J,axiom,
    ! [Y_2] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,one_one_int),number_number_of_int(Y_2)))
    <=> hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,bit1(pls)),Y_2)) ) ).

fof(fact_232_comm__semiring__1__class_Onormalizing__semiring__rules_I4_J,axiom,
    ! [M_10] : hAPP_int_int(plus_plus_int(M_10),M_10) = hAPP_int_int(times_times_int(hAPP_int_int(plus_plus_int(one_one_int),one_one_int)),M_10) ).

fof(fact_995_le__add2,axiom,
    ! [N_1,M] : hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,N_1),hAPP_nat_nat(plus_plus_nat(M),N_1))) ).

fof(fact_509_self__quotient__aux2,axiom,
    ! [R_1,Q_1,A] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,zero_zero_int),A))
     => ( ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,zero_zero_int),R_1))
         => hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,Q_1),one_one_int)) )
       <= A = hAPP_int_int(plus_plus_int(R_1),hAPP_int_int(times_times_int(A),Q_1)) ) ) ).

fof(fact_572_Euler_Oaux2,axiom,
    ! [B,A,C] :
      ( ( ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,B),A))
          | hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,A),B)) )
       <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,B),C)) )
     <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,A),C)) ) ).

fof(fact_1158_pos__mod__sign,axiom,
    ! [A,B] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,zero_zero_int),hAPP_int_int(div_mod_int(A),B)))
     <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,zero_zero_int),B)) ) ).

fof(fact_363_zero__le__power,axiom,
    ! [N_27,A_78] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,zero_zero_nat),hAPP_nat_nat(power_power_nat(A_78),N_27)))
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,zero_zero_nat),A_78)) ) ).

fof(fact_899_dvd_Oless__asym_H,axiom,
    ! [A,B] :
      ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,A),B))
        & ~ hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,B),A)) )
     => ~ ( ~ hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,A),B))
          & hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,B),A)) ) ) ).

fof(fact_205_add__Bit0__Bit0,axiom,
    ! [K_1,L] : hAPP_int_int(plus_plus_int(bit0(K_1)),bit0(L)) = bit0(hAPP_int_int(plus_plus_int(K_1),L)) ).

fof(fact_289__0964_A_K_Am_A_L_A1_Advd_As_A_094_A2_A_L_A1_096,axiom,
    hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(dvd_dvd_int,hAPP_int_int(plus_plus_int(hAPP_int_int(times_times_int(number_number_of_int(bit0(bit0(bit1(pls))))),m)),one_one_int)),hAPP_int_int(plus_plus_int(hAPP_nat_int(power_power_int(s),number_number_of_nat(bit0(bit1(pls))))),one_one_int))) ).

fof(fact_1104_int__le__induct,axiom,
    ! [P_2,I_2,K] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,I_2),K))
     => ( ( ! [I] :
              ( ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,I),K))
               => ( hBOOL(hAPP_int_bool(P_2,I))
                 => hBOOL(hAPP_int_bool(P_2,hAPP_int_int(minus_minus_int(I),one_one_int))) ) )
             <= is_int(I) )
         => hBOOL(hAPP_int_bool(P_2,I_2)) )
       <= hBOOL(hAPP_int_bool(P_2,K)) ) ) ).

fof(fact_930_nat__add__left__cancel,axiom,
    ! [K,Ma,N] :
      ( N = Ma
    <=> hAPP_nat_nat(plus_plus_nat(K),Ma) = hAPP_nat_nat(plus_plus_nat(K),N) ) ).

fof(fact_994_dvd__diffD,axiom,
    ! [K_1,M,N_1] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,K_1),hAPP_nat_nat(minus_minus_nat(M),N_1)))
     => ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,N_1),M))
         => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,K_1),M)) )
       <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,K_1),N_1)) ) ) ).

fof(fact_986_le__eq__less__or__eq,axiom,
    ! [Ma,N] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,Ma),N))
    <=> ( Ma = N
        | hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,Ma),N)) ) ) ).

fof(fact_365_power__mono,axiom,
    ! [N_26,A_77,B_52] :
      ( ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,zero_zero_int),A_77))
       => hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,hAPP_nat_int(power_power_int(A_77),N_26)),hAPP_nat_int(power_power_int(B_52),N_26))) )
     <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,A_77),B_52)) ) ).

fof(fact_182_comm__semiring__1__class_Onormalizing__semiring__rules_I34_J,axiom,
    ! [X_21,Y_18,Z_9] : hAPP_int_int(times_times_int(X_21),hAPP_int_int(plus_plus_int(Y_18),Z_9)) = hAPP_int_int(plus_plus_int(hAPP_int_int(times_times_int(X_21),Y_18)),hAPP_int_int(times_times_int(X_21),Z_9)) ).

fof(fact_328_zdvd__mult__cancel,axiom,
    ! [K_1,M,N_1] :
      ( ( ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(dvd_dvd_int,M),N_1))
         <= K_1 != zero_zero_int )
       <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(dvd_dvd_int,hAPP_int_int(times_times_int(K_1),M)),hAPP_int_int(times_times_int(K_1),N_1))) )
     <= is_int(K_1) ) ).

fof(fact_201_mult__Pls,axiom,
    ! [W] : hAPP_int_int(times_times_int(pls),W) = pls ).

fof(fact_120_comm__semiring__1__class_Onormalizing__semiring__rules_I23_J,axiom,
    ! [A_108,B_61,C_34] : hAPP_int_int(plus_plus_int(hAPP_int_int(plus_plus_int(A_108),C_34)),B_61) = hAPP_int_int(plus_plus_int(hAPP_int_int(plus_plus_int(A_108),B_61)),C_34) ).

fof(fact_449_power2__eq__imp__eq,axiom,
    ! [X_14,Y_11] :
      ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,zero_zero_nat),X_14))
       => ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,zero_zero_nat),Y_11))
         => X_14 = Y_11 ) )
     <= hAPP_nat_nat(power_power_nat(X_14),number_number_of_nat(bit0(bit1(pls)))) = hAPP_nat_nat(power_power_nat(Y_11),number_number_of_nat(bit0(bit1(pls)))) ) ).

fof(fact_1116_less__imp__add__positive,axiom,
    ! [I_1,J_1] :
      ( ? [K_2] :
          ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,zero_zero_nat),K_2))
          & J_1 = hAPP_nat_nat(plus_plus_nat(I_1),K_2) )
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,I_1),J_1)) ) ).

fof(fact_23_power2__eq__square,axiom,
    ! [A_112] : hAPP_real_real(times_times_real(A_112),A_112) = hAPP_nat_real(power_power_real(A_112),number_number_of_nat(bit0(bit1(pls)))) ).

fof(fact_921_dvd_Oless__le__not__le,axiom,
    ! [X_2,Y_2] :
      ( ( ~ hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,Y_2),X_2))
        & hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,X_2),Y_2)) )
    <=> ( ~ hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,Y_2),X_2))
        & hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,X_2),Y_2)) ) ) ).

fof(fact_934_diff__diff__left,axiom,
    ! [I_1,J_1,K_1] : hAPP_nat_nat(minus_minus_nat(hAPP_nat_nat(minus_minus_nat(I_1),J_1)),K_1) = hAPP_nat_nat(minus_minus_nat(I_1),hAPP_nat_nat(plus_plus_nat(J_1),K_1)) ).

fof(fact_798_mult__nonpos__nonneg,axiom,
    ! [B_20,A_22] :
      ( ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,hAPP_int_int(times_times_int(A_22),B_20)),zero_zero_int))
       <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,zero_zero_int),B_20)) )
     <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,A_22),zero_zero_int)) ) ).

fof(fact_299_power__gt1__lemma,axiom,
    ! [N_37,A_89] :
      ( hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_real,one_one_real),hAPP_real_real(times_times_real(A_89),hAPP_nat_real(power_power_real(A_89),N_37))))
     <= hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_real,one_one_real),A_89)) ) ).

fof(fact_596_Nat__Transfer_Otransfer__nat__int__function__closures_I8_J,axiom,
    hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,zero_zero_int),number_number_of_int(bit1(bit1(pls))))) ).

fof(fact_409_zprime__power__zdvd__cancel__left,axiom,
    ! [N_1,B,A,P_1] :
      ( ( ~ hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(dvd_dvd_int,P_1),A))
       => ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(dvd_dvd_int,hAPP_nat_int(power_power_int(P_1),N_1)),hAPP_int_int(times_times_int(A),B)))
         => hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(dvd_dvd_int,hAPP_nat_int(power_power_int(P_1),N_1)),B)) ) )
     <= hBOOL(hAPP_int_bool(zprime,P_1)) ) ).

fof(fact_2__0961_A_060_At_A_061_061_062_AEX_Ax_Ay_O_Ax_A_094_A2_A_L_Ay_A_094_A2_A_06,axiom,
    ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,one_one_int),t))
   => ? [X,Y] :
        ( hAPP_int_int(plus_plus_int(hAPP_nat_int(power_power_int(X),number_number_of_nat(bit0(bit1(pls))))),hAPP_nat_int(power_power_int(Y),number_number_of_nat(bit0(bit1(pls))))) = hAPP_int_int(plus_plus_int(hAPP_int_int(times_times_int(number_number_of_int(bit0(bit0(bit1(pls))))),m)),one_one_int)
        & is_int(Y)
        & is_int(X) ) ) ).

fof(fact_295_power__less__power__Suc,axiom,
    ! [N_38,A_90] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,hAPP_nat_nat(power_power_nat(A_90),N_38)),hAPP_nat_nat(times_times_nat(A_90),hAPP_nat_nat(power_power_nat(A_90),N_38))))
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,one_one_nat),A_90)) ) ).

fof(fact_486_one__le__power,axiom,
    ! [N_12,A_62] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,one_one_nat),A_62))
     => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,one_one_nat),hAPP_nat_nat(power_power_nat(A_62),N_12))) ) ).

fof(fact_821_mult__strict__left__mono,axiom,
    ! [C_4,A_14,B_13] :
      ( hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_real,A_14),B_13))
     => ( hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_real,zero_zero_real),C_4))
       => hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_real,hAPP_real_real(times_times_real(C_4),A_14)),hAPP_real_real(times_times_real(C_4),B_13))) ) ) ).

fof(fact_799_mult__nonneg__nonpos2,axiom,
    ! [B_19,A_21] :
      ( ( hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_eq_real,hAPP_real_real(times_times_real(B_19),A_21)),zero_zero_real))
       <= hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_eq_real,B_19),zero_zero_real)) )
     <= hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_eq_real,zero_zero_real),A_21)) ) ).

fof(fact_288_p0,axiom,
    hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,zero_zero_int),hAPP_int_int(plus_plus_int(hAPP_int_int(times_times_int(number_number_of_int(bit0(bit0(bit1(pls))))),m)),one_one_int))) ).

fof(fact_297_power__gt1__lemma,axiom,
    ! [N_37,A_89] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,one_one_int),hAPP_int_int(times_times_int(A_89),hAPP_nat_int(power_power_int(A_89),N_37))))
     <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,one_one_int),A_89)) ) ).

fof(fact_1014_diff__add__assoc,axiom,
    ! [I_1,K_1,J_1] :
      ( hAPP_nat_nat(minus_minus_nat(hAPP_nat_nat(plus_plus_nat(I_1),J_1)),K_1) = hAPP_nat_nat(plus_plus_nat(I_1),hAPP_nat_nat(minus_minus_nat(J_1),K_1))
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,K_1),J_1)) ) ).

fof(fact_383_even__less__0__iff,axiom,
    ! [A_2] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,A_2),zero_zero_int))
    <=> hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,hAPP_int_int(plus_plus_int(A_2),A_2)),zero_zero_int)) ) ).

fof(fact_1052_nat__le__add__iff1,axiom,
    ! [U,Ma,N,J_2,I_2] :
      ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(plus_plus_nat(hAPP_nat_nat(times_times_nat(hAPP_nat_nat(minus_minus_nat(I_2),J_2)),U)),Ma)),N))
      <=> hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(plus_plus_nat(hAPP_nat_nat(times_times_nat(I_2),U)),Ma)),hAPP_nat_nat(plus_plus_nat(hAPP_nat_nat(times_times_nat(J_2),U)),N))) )
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,J_2),I_2)) ) ).

fof(fact_279_mult__2,axiom,
    ! [Z_5] : hAPP_real_real(times_times_real(number267125858f_real(bit0(bit1(pls)))),Z_5) = hAPP_real_real(plus_plus_real(Z_5),Z_5) ).

fof(fact_898_dvd_Oless__trans,axiom,
    ! [Z,X_1,Y_1] :
      ( ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,X_1),Z))
          & ~ hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,Z),X_1)) )
       <= ( ~ hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,Z),Y_1))
          & hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,Y_1),Z)) ) )
     <= ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,X_1),Y_1))
        & ~ hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,Y_1),X_1)) ) ) ).

fof(fact_1068_zcong__zless__unique,axiom,
    ! [A,M] :
      ( ? [X] :
          ( is_int(X)
          & hBOOL(hAPP_int_bool(zcong(A,X),M))
          & ! [Y] :
              ( ( X = Y
               <= ( hBOOL(hAPP_int_bool(zcong(A,Y),M))
                  & hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,Y),M))
                  & hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,zero_zero_int),Y)) ) )
             <= is_int(Y) )
          & hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,X),M))
          & hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,zero_zero_int),X)) )
     <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,zero_zero_int),M)) ) ).

fof(fact_370_zero__less__power,axiom,
    ! [N_25,A_76] :
      ( hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_real,zero_zero_real),hAPP_nat_real(power_power_real(A_76),N_25)))
     <= hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_real,zero_zero_real),A_76)) ) ).

fof(fact_991_diff__less__mono,axiom,
    ! [C,A,B] :
      ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,hAPP_nat_nat(minus_minus_nat(A),C)),hAPP_nat_nat(minus_minus_nat(B),C)))
       <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,C),A)) )
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,A),B)) ) ).

fof(fact_106_comm__semiring__1__class_Onormalizing__semiring__rules_I18_J,axiom,
    ! [Lx_1,Rx_1,Ry_1] : hAPP_int_int(times_times_int(Lx_1),hAPP_int_int(times_times_int(Rx_1),Ry_1)) = hAPP_int_int(times_times_int(hAPP_int_int(times_times_int(Lx_1),Rx_1)),Ry_1) ).

fof(fact_259_mult__numeral__1__right,axiom,
    ! [A_92] : A_92 = hAPP_real_real(times_times_real(A_92),number267125858f_real(bit1(pls))) ).

fof(fact_1037_nat__0__less__mult__iff,axiom,
    ! [Ma,N] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,zero_zero_nat),hAPP_nat_nat(times_times_nat(Ma),N)))
    <=> ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,zero_zero_nat),N))
        & hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,zero_zero_nat),Ma)) ) ) ).

fof(fact_1031_nat__diff__split,axiom,
    ! [P_2,A_2,B_2] :
      ( hBOOL(hAPP_nat_bool(P_2,hAPP_nat_nat(minus_minus_nat(A_2),B_2)))
    <=> ( ! [D_2] :
            ( hBOOL(hAPP_nat_bool(P_2,D_2))
           <= hAPP_nat_nat(plus_plus_nat(B_2),D_2) = A_2 )
        & ( hBOOL(hAPP_nat_bool(P_2,zero_zero_nat))
         <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,A_2),B_2)) ) ) ) ).

fof(fact_641_zcong__square__zless,axiom,
    ! [A,P_1] :
      ( ( ( ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,A),P_1))
           => ( ( A = one_one_int
                | A = hAPP_int_int(minus_minus_int(P_1),one_one_int) )
             <= hBOOL(hAPP_int_bool(zcong(hAPP_int_int(times_times_int(A),A),one_one_int),P_1)) ) )
         <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,zero_zero_int),A)) )
       <= hBOOL(hAPP_int_bool(zprime,P_1)) )
     <= is_int(A) ) ).

fof(fact_791_mult__right__mono,axiom,
    ! [C_8,A_24,B_22] :
      ( hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_eq_real,A_24),B_22))
     => ( hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_eq_real,zero_zero_real),C_8))
       => hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_eq_real,hAPP_real_real(times_times_real(A_24),C_8)),hAPP_real_real(times_times_real(B_22),C_8))) ) ) ).

fof(fact_893_nat__neq__iff,axiom,
    ! [Ma,N] :
      ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,N),Ma))
        | hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,Ma),N)) )
    <=> N != Ma ) ).

fof(fact_294_power__less__power__Suc,axiom,
    ! [N_38,A_90] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,one_one_int),A_90))
     => hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,hAPP_nat_int(power_power_int(A_90),N_38)),hAPP_int_int(times_times_int(A_90),hAPP_nat_int(power_power_int(A_90),N_38)))) ) ).

fof(fact_1067_zprime__factor__exists,axiom,
    ! [A] :
      ( ? [P_4] :
          ( is_int(P_4)
          & hBOOL(hAPP_int_bool(zprime,P_4))
          & hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(dvd_dvd_int,P_4),A)) )
     <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,one_one_int),A)) ) ).

fof(fact_880_real__le__refl,axiom,
    ! [W] : hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_eq_real,W),W)) ).

fof(fact_461_power__mult__distrib,axiom,
    ! [A_66,B_49,N_17] : hAPP_nat_real(power_power_real(hAPP_real_real(times_times_real(A_66),B_49)),N_17) = hAPP_real_real(times_times_real(hAPP_nat_real(power_power_real(A_66),N_17)),hAPP_nat_real(power_power_real(B_49),N_17)) ).

fof(fact_11_power2__sum,axiom,
    ! [X_2,Y_2] : hAPP_real_real(plus_plus_real(hAPP_real_real(plus_plus_real(hAPP_nat_real(power_power_real(X_2),number_number_of_nat(bit0(bit1(pls))))),hAPP_nat_real(power_power_real(Y_2),number_number_of_nat(bit0(bit1(pls)))))),hAPP_real_real(times_times_real(hAPP_real_real(times_times_real(number267125858f_real(bit0(bit1(pls)))),X_2)),Y_2)) = hAPP_nat_real(power_power_real(hAPP_real_real(plus_plus_real(X_2),Y_2)),number_number_of_nat(bit0(bit1(pls)))) ).

fof(fact_1162_neg__mod__conj,axiom,
    ! [A,B] :
      ( ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,hAPP_int_int(div_mod_int(A),B)),zero_zero_int))
        & hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,B),hAPP_int_int(div_mod_int(A),B))) )
     <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,B),zero_zero_int)) ) ).

fof(fact_350_comm__semiring__1__class_Onormalizing__semiring__rules_I6_J,axiom,
    ! [A_79] :
      ( is_int(A_79)
     => hAPP_int_int(plus_plus_int(A_79),zero_zero_int) = A_79 ) ).

fof(fact_1040_dvd__mult__cancel,axiom,
    ! [K_1,M,N_1] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,hAPP_nat_nat(times_times_nat(K_1),M)),hAPP_nat_nat(times_times_nat(K_1),N_1)))
     => ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,M),N_1))
       <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,zero_zero_nat),K_1)) ) ) ).

fof(fact_694_realpow__minus__mult,axiom,
    ! [X_4,N_3] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,zero_zero_nat),N_3))
     => hAPP_nat_int(power_power_int(X_4),N_3) = hAPP_int_int(times_times_int(hAPP_nat_int(power_power_int(X_4),hAPP_nat_nat(minus_minus_nat(N_3),one_one_nat))),X_4) ) ).

fof(fact_411_sum__squares__ge__zero,axiom,
    ! [X_17,Y_14] : hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,zero_zero_int),hAPP_int_int(plus_plus_int(hAPP_int_int(times_times_int(X_17),X_17)),hAPP_int_int(times_times_int(Y_14),Y_14)))) ).

fof(fact_1160_mod__pos__pos__trivial,axiom,
    ! [B,A] :
      ( ( ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,A),B))
         => A = hAPP_int_int(div_mod_int(A),B) )
       <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,zero_zero_int),A)) )
     <= is_int(A) ) ).

fof(fact_458_power__commutes,axiom,
    ! [A_67,N_18] : hAPP_real_real(times_times_real(A_67),hAPP_nat_real(power_power_real(A_67),N_18)) = hAPP_real_real(times_times_real(hAPP_nat_real(power_power_real(A_67),N_18)),A_67) ).

fof(fact_916_dvd_Ole__neq__trans,axiom,
    ! [A,B] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,A),B))
     => ( A != B
       => ( ~ hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,B),A))
          & hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,A),B)) ) ) ) ).

fof(fact_722_comm__semiring__class_Odistrib,axiom,
    ! [A_45,B_41,C_22] : hAPP_nat_nat(plus_plus_nat(hAPP_nat_nat(times_times_nat(A_45),C_22)),hAPP_nat_nat(times_times_nat(B_41),C_22)) = hAPP_nat_nat(times_times_nat(hAPP_nat_nat(plus_plus_nat(A_45),B_41)),C_22) ).

fof(fact_1005_add__leE,axiom,
    ! [M,K_1,N_1] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(plus_plus_nat(M),K_1)),N_1))
     => ~ ( ~ hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,K_1),N_1))
         <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,M),N_1)) ) ) ).

fof(fact_781_mult__left__mono__neg,axiom,
    ! [C_12,B_26,A_28] :
      ( ( hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_eq_real,hAPP_real_real(times_times_real(C_12),A_28)),hAPP_real_real(times_times_real(C_12),B_26)))
       <= hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_eq_real,C_12),zero_zero_real)) )
     <= hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_eq_real,B_26),A_28)) ) ).

fof(fact_457_power__commutes,axiom,
    ! [A_67,N_18] : hAPP_nat_nat(times_times_nat(A_67),hAPP_nat_nat(power_power_nat(A_67),N_18)) = hAPP_nat_nat(times_times_nat(hAPP_nat_nat(power_power_nat(A_67),N_18)),A_67) ).

fof(fact_532_rel__simps_I8_J,axiom,
    ! [K] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,min),K))
    <=> hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,min),bit0(K))) ) ).

fof(fact_782_mult__left__mono__neg,axiom,
    ! [C_12,B_26,A_28] :
      ( ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,hAPP_int_int(times_times_int(C_12),A_28)),hAPP_int_int(times_times_int(C_12),B_26)))
       <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,C_12),zero_zero_int)) )
     <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,B_26),A_28)) ) ).

fof(fact_43_comm__semiring__1__class_Onormalizing__semiring__rules_I31_J,axiom,
    ! [X_24,P_7,Q_7] : hAPP_nat_nat(power_power_nat(X_24),hAPP_nat_nat(times_times_nat(P_7),Q_7)) = hAPP_nat_nat(power_power_nat(hAPP_nat_nat(power_power_nat(X_24),P_7)),Q_7) ).

fof(fact_348_comm__semiring__1__class_Onormalizing__semiring__rules_I5_J,axiom,
    ! [A_80] : A_80 = hAPP_nat_nat(plus_plus_nat(zero_zero_nat),A_80) ).

fof(fact_87_add1__zle__eq,axiom,
    ! [W_1,Z_1] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,hAPP_int_int(plus_plus_int(W_1),one_one_int)),Z_1))
    <=> hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,W_1),Z_1)) ) ).

fof(gsy_c_hAPP_000tc__RealDef__Oreal_000tc__HOL__Obool,axiom,
    ! [B_1_1,B_2_1] : is_bool(hAPP_real_bool(B_1_1,B_2_1)) ).

fof(fact_257_mult__numeral__1,axiom,
    ! [A_93] : A_93 = hAPP_real_real(times_times_real(number267125858f_real(bit1(pls))),A_93) ).

fof(fact_16_one__power2,axiom,
    one_one_int = hAPP_nat_int(power_power_int(one_one_int),number_number_of_nat(bit0(bit1(pls)))) ).

fof(fact_452_power2__less__0,axiom,
    ! [A_68] : ~ hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,hAPP_nat_int(power_power_int(A_68),number_number_of_nat(bit0(bit1(pls))))),zero_zero_int)) ).

fof(fact_28_add__special_I2_J,axiom,
    ! [W_15] : number_number_of_int(hAPP_int_int(plus_plus_int(bit1(pls)),W_15)) = hAPP_int_int(plus_plus_int(one_one_int),number_number_of_int(W_15)) ).

fof(fact_863_real__mult__le__cancel__iff2,axiom,
    ! [X_2,Y_2,Z_1] :
      ( ( hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_eq_real,hAPP_real_real(times_times_real(Z_1),X_2)),hAPP_real_real(times_times_real(Z_1),Y_2)))
      <=> hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_eq_real,X_2),Y_2)) )
     <= hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_real,zero_zero_real),Z_1)) ) ).

fof(fact_922_dvd_Oless__le,axiom,
    ! [X_2,Y_2] :
      ( ( ~ hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,Y_2),X_2))
        & hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,X_2),Y_2)) )
    <=> ( Y_2 != X_2
        & hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,X_2),Y_2)) ) ) ).

fof(fact_951_diff__mult__distrib,axiom,
    ! [M,N_1,K_1] : hAPP_nat_nat(minus_minus_nat(hAPP_nat_nat(times_times_nat(M),K_1)),hAPP_nat_nat(times_times_nat(N_1),K_1)) = hAPP_nat_nat(times_times_nat(hAPP_nat_nat(minus_minus_nat(M),N_1)),K_1) ).

fof(fact_98_comm__semiring__1__class_Onormalizing__semiring__rules_I14_J,axiom,
    ! [Lx_4,Ly_2,Rx_4,Ry_2] : hAPP_nat_nat(times_times_nat(hAPP_nat_nat(times_times_nat(Lx_4),Ly_2)),hAPP_nat_nat(times_times_nat(Rx_4),Ry_2)) = hAPP_nat_nat(times_times_nat(Lx_4),hAPP_nat_nat(times_times_nat(Ly_2),hAPP_nat_nat(times_times_nat(Rx_4),Ry_2))) ).

fof(fact_412_sum__squares__ge__zero,axiom,
    ! [X_17,Y_14] : hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_eq_real,zero_zero_real),hAPP_real_real(plus_plus_real(hAPP_real_real(times_times_real(X_17),X_17)),hAPP_real_real(times_times_real(Y_14),Y_14)))) ).

fof(fact_1140_zmod__le__nonneg__dividend,axiom,
    ! [K_1,M] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,hAPP_int_int(div_mod_int(M),K_1)),M))
     <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,zero_zero_int),M)) ) ).

fof(gsy_c_Int_OMin,axiom,
    is_int(min) ).

fof(fact_790_mult__left__mono,axiom,
    ! [C_9,A_25,B_23] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,A_25),B_23))
     => ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,hAPP_int_int(times_times_int(C_9),A_25)),hAPP_int_int(times_times_int(C_9),B_23)))
       <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,zero_zero_int),C_9)) ) ) ).

fof(fact_337_zdvd__imp__le,axiom,
    ! [Z,N_1] :
      ( ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,zero_zero_int),N_1))
       => hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,Z),N_1)) )
     <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(dvd_dvd_int,Z),N_1)) ) ).

fof(help_COMBC_1_1_COMBC_000tc__Int__Oint_000tc__Int__Oint_000tc__HOL__Obool_U,axiom,
    ! [P,Q,R] : hAPP_int_bool(hAPP_i1948725293t_bool(P,R),Q) = hAPP_int_bool(cOMBC_int_int_bool(P,Q),R) ).

fof(fact_441_zero__eq__power2,axiom,
    ! [A_2] :
      ( hAPP_nat_real(power_power_real(A_2),number_number_of_nat(bit0(bit1(pls)))) = zero_zero_real
    <=> zero_zero_real = A_2 ) ).

fof(fact_690_real__mult__1,axiom,
    ! [Z] : Z = hAPP_real_real(times_times_real(one_one_real),Z) ).

fof(fact_689_real__mult__commute,axiom,
    ! [Z,W] : hAPP_real_real(times_times_real(W),Z) = hAPP_real_real(times_times_real(Z),W) ).

fof(fact_1009_le__add__diff__inverse,axiom,
    ! [N_1,M] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,N_1),M))
     => hAPP_nat_nat(plus_plus_nat(N_1),hAPP_nat_nat(minus_minus_nat(M),N_1)) = M ) ).

fof(fact_614_diff__bin__simps_I1_J,axiom,
    ! [K_1] :
      ( hAPP_int_int(minus_minus_int(K_1),pls) = K_1
     <= is_int(K_1) ) ).

fof(fact_389_add__scale__eq__noteq,axiom,
    ! [C_27,D_8,A_72,B_50,R_4] :
      ( zero_zero_real != R_4
     => ( hAPP_real_real(plus_plus_real(A_72),hAPP_real_real(times_times_real(R_4),C_27)) != hAPP_real_real(plus_plus_real(B_50),hAPP_real_real(times_times_real(R_4),D_8))
       <= ( C_27 != D_8
          & B_50 = A_72 ) ) ) ).

fof(fact_789_mult__left__mono,axiom,
    ! [C_9,A_25,B_23] :
      ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(times_times_nat(C_9),A_25)),hAPP_nat_nat(times_times_nat(C_9),B_23)))
       <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,zero_zero_nat),C_9)) )
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,A_25),B_23)) ) ).

fof(fact_747_dvd__triv__right,axiom,
    ! [A_36,B_33] : hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(dvd_dvd_real,A_36),hAPP_real_real(times_times_real(B_33),A_36))) ).

fof(fact_740_mult__dvd__mono,axiom,
    ! [C_18,D_6,A_39,B_36] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(dvd_dvd_int,A_39),B_36))
     => ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(dvd_dvd_int,hAPP_int_int(times_times_int(A_39),C_18)),hAPP_int_int(times_times_int(B_36),D_6)))
       <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(dvd_dvd_int,C_18),D_6)) ) ) ).

fof(fact_429_less__special_I1_J,axiom,
    ! [Y_2] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,pls),Y_2))
    <=> hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,zero_zero_int),number_number_of_int(Y_2))) ) ).

fof(fact_349_comm__semiring__1__class_Onormalizing__semiring__rules_I5_J,axiom,
    ! [A_80] : A_80 = hAPP_real_real(plus_plus_real(zero_zero_real),A_80) ).

fof(fact_822_mult__strict__left__mono,axiom,
    ! [C_4,A_14,B_13] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,A_14),B_13))
     => ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,hAPP_nat_nat(times_times_nat(C_4),A_14)),hAPP_nat_nat(times_times_nat(C_4),B_13)))
       <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,zero_zero_nat),C_4)) ) ) ).

fof(fact_530_rel__simps_I3_J,axiom,
    ~ hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,pls),min)) ).

fof(fact_569_order__le__neq__implies__less,axiom,
    ! [X_8,Y_7] :
      ( ( Y_7 != X_8
       => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,X_8),Y_7)) )
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,X_8),Y_7)) ) ).

fof(fact_296_power__less__power__Suc,axiom,
    ! [N_38,A_90] :
      ( hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_real,hAPP_nat_real(power_power_real(A_90),N_38)),hAPP_real_real(times_times_real(A_90),hAPP_nat_real(power_power_real(A_90),N_38))))
     <= hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_real,one_one_real),A_90)) ) ).

fof(fact_826_mult__strict__right__mono,axiom,
    ! [C_3,A_13,B_12] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,A_13),B_12))
     => ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,zero_zero_int),C_3))
       => hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,hAPP_int_int(times_times_int(A_13),C_3)),hAPP_int_int(times_times_int(B_12),C_3))) ) ) ).

fof(fact_242_arith__simps_I32_J,axiom,
    ! [V_13,W_12] : number267125858f_real(hAPP_int_int(times_times_int(V_13),W_12)) = hAPP_real_real(times_times_real(number267125858f_real(V_13)),number267125858f_real(W_12)) ).

fof(fact_909_dvd_Ole__less__trans,axiom,
    ! [Z,X_1,Y_1] :
      ( ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,X_1),Z))
          & ~ hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,Z),X_1)) )
       <= ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,Y_1),Z))
          & ~ hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,Z),Y_1)) ) )
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,X_1),Y_1)) ) ).

fof(fact_705_mult__eq__0__iff,axiom,
    ! [A_2,B_2] :
      ( ( ( zero_zero_int = A_2
          | B_2 = zero_zero_int )
      <=> zero_zero_int = hAPP_int_int(times_times_int(A_2),B_2) )
     <= ( is_int(B_2)
        & is_int(A_2) ) ) ).

fof(fact_712_zero__neq__one,axiom,
    zero_zero_real != one_one_real ).

fof(fact_455_sum__power2__eq__zero__iff,axiom,
    ! [X_2,Y_2] :
      ( hAPP_real_real(plus_plus_real(hAPP_nat_real(power_power_real(X_2),number_number_of_nat(bit0(bit1(pls))))),hAPP_nat_real(power_power_real(Y_2),number_number_of_nat(bit0(bit1(pls))))) = zero_zero_real
    <=> ( zero_zero_real = X_2
        & zero_zero_real = Y_2 ) ) ).

fof(fact_563_zcong__refl,axiom,
    ! [K_1,M] : hBOOL(hAPP_int_bool(zcong(K_1,K_1),M)) ).

fof(fact_1170_zmult2__lemma__aux2,axiom,
    ! [Q_1,B,R_1,C] :
      ( ( ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,hAPP_int_int(plus_plus_int(hAPP_int_int(times_times_int(B),hAPP_int_int(div_mod_int(Q_1),C))),R_1)),zero_zero_int))
         <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,R_1),zero_zero_int)) )
       <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,B),R_1)) )
     <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,zero_zero_int),C)) ) ).

fof(fact_659_zpower__zdvd__prop1,axiom,
    ! [P_1,Y_1,N_1] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,zero_zero_nat),N_1))
     => ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(dvd_dvd_int,P_1),Y_1))
       => hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(dvd_dvd_int,P_1),hAPP_nat_int(power_power_int(Y_1),N_1))) ) ) ).

fof(fact_272_power3__eq__cube,axiom,
    ! [A_91] : hAPP_nat_real(power_power_real(A_91),number_number_of_nat(bit1(bit1(pls)))) = hAPP_real_real(times_times_real(hAPP_real_real(times_times_real(A_91),A_91)),A_91) ).

fof(fact_319_dvd__power__le,axiom,
    ! [N_34,M_7,X_19,Y_16] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,X_19),Y_16))
     => ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,N_34),M_7))
       => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,hAPP_nat_nat(power_power_nat(X_19),N_34)),hAPP_nat_nat(power_power_nat(Y_16),M_7))) ) ) ).

fof(fact_855_not__square__less__zero,axiom,
    ! [A_5] : ~ hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_real,hAPP_real_real(times_times_real(A_5),A_5)),zero_zero_real)) ).

fof(fact_129_comm__semiring__1__class_Onormalizing__semiring__rules_I22_J,axiom,
    ! [A_105,C_31,D_9] : hAPP_int_int(plus_plus_int(A_105),hAPP_int_int(plus_plus_int(C_31),D_9)) = hAPP_int_int(plus_plus_int(C_31),hAPP_int_int(plus_plus_int(A_105),D_9)) ).

fof(fact_45_comm__semiring__1__class_Onormalizing__semiring__rules_I33_J,axiom,
    ! [X_23] : hAPP_nat_real(power_power_real(X_23),one_one_nat) = X_23 ).

fof(fact_244_number__of__mult,axiom,
    ! [V_12,W_11] : hAPP_real_real(times_times_real(number267125858f_real(V_12)),number267125858f_real(W_11)) = number267125858f_real(hAPP_int_int(times_times_int(V_12),W_11)) ).

fof(fact_859_divides__ge,axiom,
    ! [A,B] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,A),B))
     => ( B = zero_zero_nat
        | hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,A),B)) ) ) ).

fof(fact_1064_number__of2,axiom,
    hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,zero_zero_int),number_number_of_int(pls))) ).

fof(fact_617_zdiff__zmult__distrib,axiom,
    ! [Z1,Z2,W] : hAPP_int_int(times_times_int(hAPP_int_int(minus_minus_int(Z1),Z2)),W) = hAPP_int_int(minus_minus_int(hAPP_int_int(times_times_int(Z1),W)),hAPP_int_int(times_times_int(Z2),W)) ).

fof(fact_924_dvd_Oeq__iff,axiom,
    ! [X_2,Y_2] :
      ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,X_2),Y_2))
        & hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,Y_2),X_2)) )
    <=> X_2 = Y_2 ) ).

fof(fact_1086_MultInv__prop3,axiom,
    ! [X_1,P_1] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,number_number_of_int(bit0(bit1(pls)))),P_1))
     => ( ( ~ hBOOL(hAPP_int_bool(zcong(X_1,zero_zero_int),P_1))
         => ~ hBOOL(hAPP_int_bool(zcong(multInv(P_1,X_1),zero_zero_int),P_1)) )
       <= hBOOL(hAPP_int_bool(zprime,P_1)) ) ) ).

fof(fact_1062_conj__le__cong,axiom,
    ! [P_5,P_2,X_2] :
      ( ( ( hBOOL(P_2)
          & hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,zero_zero_int),X_2)) )
      <=> ( hBOOL(P_5)
          & hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,zero_zero_int),X_2)) ) )
     <= ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,zero_zero_int),X_2))
       => ( hBOOL(P_2)
        <=> hBOOL(P_5) ) ) ) ).

fof(fact_480_not__sum__power2__lt__zero,axiom,
    ! [X_11,Y_8] : ~ hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,hAPP_int_int(plus_plus_int(hAPP_nat_int(power_power_int(X_11),number_number_of_nat(bit0(bit1(pls))))),hAPP_nat_int(power_power_int(Y_8),number_number_of_nat(bit0(bit1(pls)))))),zero_zero_int)) ).

fof(fact_1172_neq__one__mod__two,axiom,
    ! [X_2] :
      ( hAPP_int_int(div_mod_int(X_2),number_number_of_int(bit0(bit1(pls)))) = one_one_int
    <=> zero_zero_int != hAPP_int_int(div_mod_int(X_2),number_number_of_int(bit0(bit1(pls)))) ) ).

fof(fact_1195_mod__lemma,axiom,
    ! [Q_1,R_1,B,C] :
      ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,hAPP_nat_nat(plus_plus_nat(hAPP_nat_nat(times_times_nat(B),hAPP_nat_nat(div_mod_nat(Q_1),C))),R_1)),hAPP_nat_nat(times_times_nat(B),C)))
       <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,R_1),B)) )
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,zero_zero_nat),C)) ) ).

fof(fact_234_comm__semiring__1__class_Onormalizing__semiring__rules_I4_J,axiom,
    ! [M_10] : hAPP_real_real(times_times_real(hAPP_real_real(plus_plus_real(one_one_real),one_one_real)),M_10) = hAPP_real_real(plus_plus_real(M_10),M_10) ).

fof(fact_1139_Divides_Otransfer__nat__int__function__closures_I2_J,axiom,
    ! [Y_1,X_1] :
      ( ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,zero_zero_int),Y_1))
       => hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,zero_zero_int),hAPP_int_int(div_mod_int(X_1),Y_1))) )
     <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,zero_zero_int),X_1)) ) ).

fof(fact_1189_StandardRes__eq__zcong,axiom,
    ! [Ma,X_2] :
      ( zero_zero_int = standardRes(Ma,X_2)
    <=> hBOOL(hAPP_int_bool(zcong(X_2,zero_zero_int),Ma)) ) ).

fof(fact_947_Nat_Odiff__diff__eq,axiom,
    ! [N_1,K_1,M] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,K_1),M))
     => ( hAPP_nat_nat(minus_minus_nat(M),N_1) = hAPP_nat_nat(minus_minus_nat(hAPP_nat_nat(minus_minus_nat(M),K_1)),hAPP_nat_nat(minus_minus_nat(N_1),K_1))
       <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,K_1),N_1)) ) ) ).

fof(gsy_v_t____,axiom,
    is_int(t) ).

fof(fact_604__096QuadRes_A_I4_A_K_Am_A_L_A1_J_A_N1_096,axiom,
    hBOOL(hAPP_int_bool(quadRes(hAPP_int_int(plus_plus_int(hAPP_int_int(times_times_int(number_number_of_int(bit0(bit0(bit1(pls))))),m)),one_one_int)),number_number_of_int(min))) ).

fof(fact_174_comm__semiring__1__class_Onormalizing__semiring__rules_I1_J,axiom,
    ! [A_102,M_13,B_59] : hAPP_nat_nat(times_times_nat(hAPP_nat_nat(plus_plus_nat(A_102),B_59)),M_13) = hAPP_nat_nat(plus_plus_nat(hAPP_nat_nat(times_times_nat(A_102),M_13)),hAPP_nat_nat(times_times_nat(B_59),M_13)) ).

fof(fact_662_zcong__zprime__prod__zero,axiom,
    ! [B,A,P_1] :
      ( ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,zero_zero_int),A))
       => ( hBOOL(hAPP_int_bool(zcong(hAPP_int_int(times_times_int(A),B),zero_zero_int),P_1))
         => ( hBOOL(hAPP_int_bool(zcong(B,zero_zero_int),P_1))
            | hBOOL(hAPP_int_bool(zcong(A,zero_zero_int),P_1)) ) ) )
     <= hBOOL(hAPP_int_bool(zprime,P_1)) ) ).

fof(fact_421_number__of__Bit0,axiom,
    ! [W_5] : number_number_of_int(bit0(W_5)) = hAPP_int_int(plus_plus_int(hAPP_int_int(plus_plus_int(zero_zero_int),number_number_of_int(W_5))),number_number_of_int(W_5)) ).

fof(fact_439_zero__power2,axiom,
    hAPP_nat_nat(power_power_nat(zero_zero_nat),number_number_of_nat(bit0(bit1(pls)))) = zero_zero_nat ).

fof(fact_762_real__mult__left__cancel,axiom,
    ! [A_2,B_2,C_2] :
      ( zero_zero_real != C_2
     => ( A_2 = B_2
      <=> hAPP_real_real(times_times_real(C_2),B_2) = hAPP_real_real(times_times_real(C_2),A_2) ) ) ).

fof(fact_310_s1,axiom,
    hBOOL(hAPP_int_bool(zcong(hAPP_nat_int(power_power_int(s1),number_number_of_nat(bit0(bit1(pls)))),number_number_of_int(min)),hAPP_int_int(plus_plus_int(hAPP_int_int(times_times_int(number_number_of_int(bit0(bit0(bit1(pls))))),m)),one_one_int))) ).

fof(fact_992_dvd__reduce,axiom,
    ! [K,N] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,K),hAPP_nat_nat(plus_plus_nat(N),K)))
    <=> hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,K),N)) ) ).

fof(fact_612_number__of__diff,axiom,
    ! [V_5,W_3] : hAPP_real_real(minus_minus_real(number267125858f_real(V_5)),number267125858f_real(W_3)) = number267125858f_real(hAPP_int_int(minus_minus_int(V_5),W_3)) ).

fof(fact_933_diff__add__inverse,axiom,
    ! [N_1,M] : M = hAPP_nat_nat(minus_minus_nat(hAPP_nat_nat(plus_plus_nat(N_1),M)),N_1) ).

fof(fact_13_power2__eq__square__number__of,axiom,
    ! [W_16] : hAPP_nat_real(power_power_real(number267125858f_real(W_16)),number_number_of_nat(bit0(bit1(pls)))) = hAPP_real_real(times_times_real(number267125858f_real(W_16)),number267125858f_real(W_16)) ).

fof(fact_1029_nat__dvd__not__less,axiom,
    ! [N_1,M] :
      ( ( ~ hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,N_1),M))
       <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,M),N_1)) )
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,zero_zero_nat),M)) ) ).

fof(fact_39_zle__trans,axiom,
    ! [K_1,I_1,J_1] :
      ( ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,I_1),K_1))
       <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,J_1),K_1)) )
     <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,I_1),J_1)) ) ).

fof(fact_565_pos2,axiom,
    hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,zero_zero_nat),number_number_of_nat(bit0(bit1(pls))))) ).

fof(fact_1124_gcd__lcm__complete__lattice__nat_Obot__least,axiom,
    ! [A] : hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,one_one_nat),A)) ).

fof(fact_797_mult__nonpos__nonneg,axiom,
    ! [B_20,A_22] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,A_22),zero_zero_nat))
     => ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,zero_zero_nat),B_20))
       => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(times_times_nat(A_22),B_20)),zero_zero_nat)) ) ) ).

fof(fact_599_zdiv__mono2__lemma,axiom,
    ! [B,Q_1,R_1,B_48,Q_4,R_3] :
      ( ( ( ( ( ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,Q_1),Q_4))
               <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,B_48),B)) )
             <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,zero_zero_int),B_48)) )
           <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,zero_zero_int),R_1)) )
         <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,R_3),B_48)) )
       <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,zero_zero_int),hAPP_int_int(plus_plus_int(hAPP_int_int(times_times_int(B_48),Q_4)),R_3))) )
     <= hAPP_int_int(plus_plus_int(hAPP_int_int(times_times_int(B),Q_1)),R_1) = hAPP_int_int(plus_plus_int(hAPP_int_int(times_times_int(B_48),Q_4)),R_3) ) ).

fof(fact_76_zadd__left__mono,axiom,
    ! [K_1,I_1,J_1] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,I_1),J_1))
     => hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,hAPP_int_int(plus_plus_int(K_1),I_1)),hAPP_int_int(plus_plus_int(K_1),J_1))) ) ).

fof(fact_807_mult__nonneg__nonneg,axiom,
    ! [B_17,A_19] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,zero_zero_int),A_19))
     => ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,zero_zero_int),B_17))
       => hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,zero_zero_int),hAPP_int_int(times_times_int(A_19),B_17))) ) ) ).

fof(fact_651_zdiff__power3,axiom,
    ! [A,B] : hAPP_int_int(minus_minus_int(hAPP_int_int(plus_plus_int(hAPP_int_int(minus_minus_int(hAPP_nat_int(power_power_int(A),number_number_of_nat(bit1(bit1(pls))))),hAPP_int_int(times_times_int(hAPP_int_int(times_times_int(number_number_of_int(bit1(bit1(pls)))),hAPP_nat_int(power_power_int(A),number_number_of_nat(bit0(bit1(pls)))))),B))),hAPP_int_int(times_times_int(hAPP_int_int(times_times_int(number_number_of_int(bit1(bit1(pls)))),A)),hAPP_nat_int(power_power_int(B),number_number_of_nat(bit0(bit1(pls))))))),hAPP_nat_int(power_power_int(B),number_number_of_nat(bit1(bit1(pls))))) = hAPP_nat_int(power_power_int(hAPP_int_int(minus_minus_int(A),B)),number_number_of_nat(bit1(bit1(pls)))) ).

fof(fact_908_dvd_Oless__imp__neq,axiom,
    ! [X_1,Y_1] :
      ( X_1 != Y_1
     <= ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,X_1),Y_1))
        & ~ hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,Y_1),X_1)) ) ) ).

fof(fact_1150_zmod__simps_I3_J,axiom,
    ! [A,B,C] : hAPP_int_int(div_mod_int(hAPP_int_int(times_times_int(A),B)),C) = hAPP_int_int(div_mod_int(hAPP_int_int(times_times_int(A),hAPP_int_int(div_mod_int(B),C))),C) ).

fof(fact_613_number__of__diff,axiom,
    ! [V_5,W_3] : hAPP_int_int(minus_minus_int(number_number_of_int(V_5)),number_number_of_int(W_3)) = number_number_of_int(hAPP_int_int(minus_minus_int(V_5),W_3)) ).

fof(fact_814_mult__strict__left__mono__neg,axiom,
    ! [C_7,B_16,A_17] :
      ( hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_real,B_16),A_17))
     => ( hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_real,C_7),zero_zero_real))
       => hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_real,hAPP_real_real(times_times_real(C_7),A_17)),hAPP_real_real(times_times_real(C_7),B_16))) ) ) ).

fof(fact_88_zle__add1__eq__le,axiom,
    ! [W_1,Z_1] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,W_1),Z_1))
    <=> hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,W_1),hAPP_int_int(plus_plus_int(Z_1),one_one_int))) ) ).

fof(fact_377_power__decreasing,axiom,
    ! [A_74,N_23,N_22] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,N_23),N_22))
     => ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,zero_zero_int),A_74))
       => ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,hAPP_nat_int(power_power_int(A_74),N_22)),hAPP_nat_int(power_power_int(A_74),N_23)))
         <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,A_74),one_one_int)) ) ) ) ).

fof(fact_367_power__mono,axiom,
    ! [N_26,A_77,B_52] :
      ( hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_eq_real,A_77),B_52))
     => ( hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_eq_real,zero_zero_real),A_77))
       => hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_eq_real,hAPP_nat_real(power_power_real(A_77),N_26)),hAPP_nat_real(power_power_real(B_52),N_26))) ) ) ).

fof(fact_1058_nat__less__add__iff1,axiom,
    ! [U,Ma,N,J_2,I_2] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,J_2),I_2))
     => ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,hAPP_nat_nat(plus_plus_nat(hAPP_nat_nat(times_times_nat(I_2),U)),Ma)),hAPP_nat_nat(plus_plus_nat(hAPP_nat_nat(times_times_nat(J_2),U)),N)))
      <=> hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,hAPP_nat_nat(plus_plus_nat(hAPP_nat_nat(times_times_nat(hAPP_nat_nat(minus_minus_nat(I_2),J_2)),U)),Ma)),N)) ) ) ).

fof(fact_1076_inv__distinct,axiom,
    ! [A,P_1] :
      ( ( ( inv(P_1,A) != A
         <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,A),hAPP_int_int(minus_minus_int(P_1),one_one_int))) )
       <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,one_one_int),A)) )
     <= hBOOL(hAPP_int_bool(zprime,P_1)) ) ).

fof(fact_959_zero__less__diff,axiom,
    ! [N,Ma] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,Ma),N))
    <=> hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,zero_zero_nat),hAPP_nat_nat(minus_minus_nat(N),Ma))) ) ).

fof(fact_61_nat__mult__2__right,axiom,
    ! [Z] : hAPP_nat_nat(times_times_nat(Z),number_number_of_nat(bit0(bit1(pls)))) = hAPP_nat_nat(plus_plus_nat(Z),Z) ).

fof(fact_1196_StandardRes__lbound,axiom,
    ! [X_1,P_1] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,zero_zero_int),standardRes(P_1,X_1)))
     <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,zero_zero_int),P_1)) ) ).

fof(fact_307_s0p,axiom,
    ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,s),hAPP_int_int(plus_plus_int(hAPP_int_int(times_times_int(number_number_of_int(bit0(bit0(bit1(pls))))),m)),one_one_int)))
    & hBOOL(hAPP_int_bool(zcong(s1,s),hAPP_int_int(plus_plus_int(hAPP_int_int(times_times_int(number_number_of_int(bit0(bit0(bit1(pls))))),m)),one_one_int)))
    & hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,zero_zero_int),s)) ) ).

fof(fact_113_comm__semiring__1__class_Onormalizing__semiring__rules_I7_J,axiom,
    ! [A_111,B_63] : hAPP_nat_nat(times_times_nat(A_111),B_63) = hAPP_nat_nat(times_times_nat(B_63),A_111) ).

fof(fact_63_less__int__code_I16_J,axiom,
    ! [K1,K2] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,bit1(K1)),bit1(K2)))
    <=> hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,K1),K2)) ) ).

fof(fact_674_dvd__0__right,axiom,
    ! [A_53] : hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(dvd_dvd_int,A_53),zero_zero_int)) ).

fof(fact_765_divides__mul__r,axiom,
    ! [C,A,B] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,A),B))
     => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,hAPP_nat_nat(times_times_nat(A),C)),hAPP_nat_nat(times_times_nat(B),C))) ) ).

fof(fact_1121_gcd__lcm__complete__lattice__nat_Otop__greatest,axiom,
    ! [A] : hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,A),zero_zero_nat)) ).

fof(fact_341_comm__semiring__1__class_Onormalizing__semiring__rules_I9_J,axiom,
    ! [A_82] : hAPP_int_int(times_times_int(zero_zero_int),A_82) = zero_zero_int ).

fof(fact_268_mult__Bit1,axiom,
    ! [K_1,L] : hAPP_int_int(times_times_int(bit1(K_1)),L) = hAPP_int_int(plus_plus_int(bit0(hAPP_int_int(times_times_int(K_1),L))),L) ).

fof(fact_309__096_B_Bthesis_O_A_I_B_Bs_O_A0_A_060_061_As_A_G_As_A_060_A4_A_K_Am_A_L_,axiom,
    ~ ! [S_1] :
        ( is_int(S_1)
       => ~ ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,zero_zero_int),S_1))
            & hBOOL(hAPP_int_bool(zcong(s1,S_1),hAPP_int_int(plus_plus_int(hAPP_int_int(times_times_int(number_number_of_int(bit0(bit0(bit1(pls))))),m)),one_one_int)))
            & hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,S_1),hAPP_int_int(plus_plus_int(hAPP_int_int(times_times_int(number_number_of_int(bit0(bit0(bit1(pls))))),m)),one_one_int))) ) ) ).

fof(fact_650_zdiff__power2,axiom,
    ! [A,B] : hAPP_int_int(plus_plus_int(hAPP_int_int(minus_minus_int(hAPP_nat_int(power_power_int(A),number_number_of_nat(bit0(bit1(pls))))),hAPP_int_int(times_times_int(hAPP_int_int(times_times_int(number_number_of_int(bit0(bit1(pls)))),A)),B))),hAPP_nat_int(power_power_int(B),number_number_of_nat(bit0(bit1(pls))))) = hAPP_nat_int(power_power_int(hAPP_int_int(minus_minus_int(A),B)),number_number_of_nat(bit0(bit1(pls)))) ).

fof(fact_3_t__l__p,axiom,
    hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,t),hAPP_int_int(plus_plus_int(hAPP_int_int(times_times_int(number_number_of_int(bit0(bit0(bit1(pls))))),m)),one_one_int))) ).

fof(fact_117_comm__semiring__1__class_Onormalizing__semiring__rules_I20_J,axiom,
    ! [A_110,B_62,C_35,D_11] : hAPP_real_real(plus_plus_real(hAPP_real_real(plus_plus_real(A_110),C_35)),hAPP_real_real(plus_plus_real(B_62),D_11)) = hAPP_real_real(plus_plus_real(hAPP_real_real(plus_plus_real(A_110),B_62)),hAPP_real_real(plus_plus_real(C_35),D_11)) ).

fof(fact_668_QuadRes__def,axiom,
    ! [Ma,X_2] :
      ( hBOOL(hAPP_int_bool(quadRes(Ma),X_2))
    <=> ? [Y] :
          ( hBOOL(hAPP_int_bool(zcong(hAPP_nat_int(power_power_int(Y),number_number_of_nat(bit0(bit1(pls)))),X_2),Ma))
          & is_int(Y) ) ) ).

fof(fact_700_divisors__zero,axiom,
    ! [A_50,B_44] :
      ( ( hAPP_int_int(times_times_int(A_50),B_44) = zero_zero_int
       => ( A_50 = zero_zero_int
          | zero_zero_int = B_44 ) )
     <= ( is_int(B_44)
        & is_int(A_50) ) ) ).

fof(fact_603_zprime__zdvd__zmult,axiom,
    ! [N_1,P_1,M] :
      ( ( ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(dvd_dvd_int,P_1),hAPP_int_int(times_times_int(M),N_1)))
         => ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(dvd_dvd_int,P_1),M))
            | hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(dvd_dvd_int,P_1),N_1)) ) )
       <= hBOOL(hAPP_int_bool(zprime,P_1)) )
     <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,zero_zero_int),M)) ) ).

fof(fact_763_divides__add__revr,axiom,
    ! [B,D_5,A] :
      ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,D_5),B))
       <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,D_5),hAPP_nat_nat(plus_plus_nat(A),B))) )
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,D_5),A)) ) ).

fof(fact_1046_left__add__mult__distrib,axiom,
    ! [I_1,U_1,J_1,K_1] : hAPP_nat_nat(plus_plus_nat(hAPP_nat_nat(times_times_nat(hAPP_nat_nat(plus_plus_nat(I_1),J_1)),U_1)),K_1) = hAPP_nat_nat(plus_plus_nat(hAPP_nat_nat(times_times_nat(I_1),U_1)),hAPP_nat_nat(plus_plus_nat(hAPP_nat_nat(times_times_nat(J_1),U_1)),K_1)) ).

fof(fact_172_crossproduct__eq,axiom,
    ! [W_1,Y_2,X_2,Z_1] :
      ( hAPP_real_real(plus_plus_real(hAPP_real_real(times_times_real(W_1),Y_2)),hAPP_real_real(times_times_real(X_2),Z_1)) = hAPP_real_real(plus_plus_real(hAPP_real_real(times_times_real(W_1),Z_1)),hAPP_real_real(times_times_real(X_2),Y_2))
    <=> ( Y_2 = Z_1
        | X_2 = W_1 ) ) ).

fof(fact_198_rel__simps_I44_J,axiom,
    ! [K] :
      ( is_int(K)
     => ( pls = K
      <=> bit0(K) = pls ) ) ).

fof(fact_340_power__strict__mono,axiom,
    ! [N_28,A_83,B_53] :
      ( hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_real,A_83),B_53))
     => ( hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_eq_real,zero_zero_real),A_83))
       => ( hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_real,hAPP_nat_real(power_power_real(A_83),N_28)),hAPP_nat_real(power_power_real(B_53),N_28)))
         <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,zero_zero_nat),N_28)) ) ) ) ).

fof(fact_515_zero__less__power__nat__eq,axiom,
    ! [X_2,N] :
      ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,zero_zero_nat),X_2))
        | zero_zero_nat = N )
    <=> hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,zero_zero_nat),hAPP_nat_nat(power_power_nat(X_2),N))) ) ).

fof(fact_884_diff__0__eq__0,axiom,
    ! [N_1] : zero_zero_nat = hAPP_nat_nat(minus_minus_nat(zero_zero_nat),N_1) ).

fof(fact_1065_decr__mult__lemma,axiom,
    ! [K,P_2,D] :
      ( ( ! [X] :
            ( ( hBOOL(hAPP_int_bool(P_2,X))
             => hBOOL(hAPP_int_bool(P_2,hAPP_int_int(minus_minus_int(X),D))) )
           <= is_int(X) )
       => ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,zero_zero_int),K))
         => ! [X] :
              ( hBOOL(hAPP_int_bool(P_2,hAPP_int_int(minus_minus_int(X),hAPP_int_int(times_times_int(K),D))))
             <= hBOOL(hAPP_int_bool(P_2,X)) ) ) )
     <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,zero_zero_int),D)) ) ).

fof(fact_1021_mult__le__mono2,axiom,
    ! [K_1,I_1,J_1] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,I_1),J_1))
     => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(times_times_nat(K_1),I_1)),hAPP_nat_nat(times_times_nat(K_1),J_1))) ) ).

fof(fact_644_zcong__zmult__prop1,axiom,
    ! [C_2,D,A_2,B_2,Ma] :
      ( hBOOL(hAPP_int_bool(zcong(A_2,B_2),Ma))
     => ( hBOOL(hAPP_int_bool(zcong(C_2,hAPP_int_int(times_times_int(B_2),D)),Ma))
      <=> hBOOL(hAPP_int_bool(zcong(C_2,hAPP_int_int(times_times_int(A_2),D)),Ma)) ) ) ).

fof(fact_1083_MultInv__zcong__prop1,axiom,
    ! [A,J_1,K_1,P_1] :
      ( ( hBOOL(hAPP_int_bool(zcong(J_1,K_1),P_1))
       => hBOOL(hAPP_int_bool(zcong(hAPP_int_int(times_times_int(A),multInv(P_1,J_1)),hAPP_int_int(times_times_int(A),multInv(P_1,K_1))),P_1)) )
     <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,number_number_of_int(bit0(bit1(pls)))),P_1)) ) ).

fof(fact_758_one__dvd,axiom,
    ! [A_33] : hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(dvd_dvd_int,one_one_int),A_33)) ).

fof(fact_1056_nat__diff__add__eq2,axiom,
    ! [U_1,M,N_1,I_1,J_1] :
      ( hAPP_nat_nat(minus_minus_nat(M),hAPP_nat_nat(plus_plus_nat(hAPP_nat_nat(times_times_nat(hAPP_nat_nat(minus_minus_nat(J_1),I_1)),U_1)),N_1)) = hAPP_nat_nat(minus_minus_nat(hAPP_nat_nat(plus_plus_nat(hAPP_nat_nat(times_times_nat(I_1),U_1)),M)),hAPP_nat_nat(plus_plus_nat(hAPP_nat_nat(times_times_nat(J_1),U_1)),N_1))
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,I_1),J_1)) ) ).

fof(fact_652_zcong__less__eq,axiom,
    ! [M,Y_1,X_1] :
      ( ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,zero_zero_int),X_1))
       => ( ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,zero_zero_int),M))
           => ( hBOOL(hAPP_int_bool(zcong(X_1,Y_1),M))
             => ( ( X_1 = Y_1
                 <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,Y_1),M)) )
               <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,X_1),M)) ) ) )
         <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,zero_zero_int),Y_1)) ) )
     <= ( is_int(Y_1)
        & is_int(X_1) ) ) ).

fof(fact_531_rel__simps_I6_J,axiom,
    hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,min),pls)) ).

fof(fact_263_numeral__1__eq__1,axiom,
    number_number_of_int(bit1(pls)) = one_one_int ).

fof(fact_907_dvd_Oless__not__sym,axiom,
    ! [X_1,Y_1] :
      ( ( ~ hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,Y_1),X_1))
        & hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,X_1),Y_1)) )
     => ~ ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,Y_1),X_1))
          & ~ hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,X_1),Y_1)) ) ) ).

fof(fact_123_comm__semiring__1__class_Onormalizing__semiring__rules_I21_J,axiom,
    ! [A_107,B_60,C_33] : hAPP_int_int(plus_plus_int(A_107),hAPP_int_int(plus_plus_int(B_60),C_33)) = hAPP_int_int(plus_plus_int(hAPP_int_int(plus_plus_int(A_107),B_60)),C_33) ).

fof(fact_371_zcong__zpower__zmult,axiom,
    ! [Z,X_1,Y_1,P_1] :
      ( hBOOL(hAPP_int_bool(zcong(hAPP_nat_int(power_power_int(X_1),Y_1),one_one_int),P_1))
     => hBOOL(hAPP_int_bool(zcong(hAPP_nat_int(power_power_int(X_1),hAPP_nat_nat(times_times_nat(Y_1),Z)),one_one_int),P_1)) ) ).

fof(fact_752_dvd__triv__left,axiom,
    ! [A_35,B_32] : hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(dvd_dvd_int,A_35),hAPP_int_int(times_times_int(A_35),B_32))) ).

fof(fact_948_le__diff__iff,axiom,
    ! [N,K,Ma] :
      ( ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(minus_minus_nat(Ma),K)),hAPP_nat_nat(minus_minus_nat(N),K)))
        <=> hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,Ma),N)) )
       <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,K),N)) )
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,K),Ma)) ) ).

fof(fact_175_comm__semiring__1__class_Onormalizing__semiring__rules_I1_J,axiom,
    ! [A_102,M_13,B_59] : hAPP_real_real(plus_plus_real(hAPP_real_real(times_times_real(A_102),M_13)),hAPP_real_real(times_times_real(B_59),M_13)) = hAPP_real_real(times_times_real(hAPP_real_real(plus_plus_real(A_102),B_59)),M_13) ).

fof(fact_677_linorder__neqE__linordered__idom,axiom,
    ! [X_5,Y_4] :
      ( ( X_5 != Y_4
       => ( ~ hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,X_5),Y_4))
         => hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,Y_4),X_5)) ) )
     <= ( is_int(X_5)
        & is_int(Y_4) ) ) ).

fof(fact_557_dvd__power,axiom,
    ! [X_9,N_5] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,X_9),hAPP_nat_nat(power_power_nat(X_9),N_5)))
     <= ( X_9 = one_one_nat
        | hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,zero_zero_nat),N_5)) ) ) ).

fof(fact_812_zero__le__square,axiom,
    ! [A_18] : hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_eq_real,zero_zero_real),hAPP_real_real(times_times_real(A_18),A_18))) ).

fof(fact_481_sum__power2__gt__zero__iff,axiom,
    ! [X_2,Y_2] :
      ( ( Y_2 != zero_zero_real
        | X_2 != zero_zero_real )
    <=> hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_real,zero_zero_real),hAPP_real_real(plus_plus_real(hAPP_nat_real(power_power_real(X_2),number_number_of_nat(bit0(bit1(pls))))),hAPP_nat_real(power_power_real(Y_2),number_number_of_nat(bit0(bit1(pls))))))) ) ).

fof(fact_156_rel__simps_I27_J,axiom,
    ! [K] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,bit0(K)),pls))
    <=> hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,K),pls)) ) ).

fof(fact_59_zpower__zadd__distrib,axiom,
    ! [X_1,Y_1,Z] : hAPP_int_int(times_times_int(hAPP_nat_int(power_power_int(X_1),Y_1)),hAPP_nat_int(power_power_int(X_1),Z)) = hAPP_nat_int(power_power_int(X_1),hAPP_nat_nat(plus_plus_nat(Y_1),Z)) ).

fof(gsy_c_Residues_OLegendre,axiom,
    ! [B_1_1,B_2_1] :
      ( is_int(legendre(B_1_1,B_2_1))
     <= ( is_int(B_1_1)
        & is_int(B_2_1) ) ) ).

fof(fact_78_nat__numeral__1__eq__1,axiom,
    number_number_of_nat(bit1(pls)) = one_one_nat ).

fof(fact_511_Nat__Transfer_Otransfer__nat__int__function__closures_I7_J,axiom,
    hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,zero_zero_int),number_number_of_int(bit0(bit1(pls))))) ).

fof(fact_165_less__special_I2_J,axiom,
    ! [Y_2] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,bit1(pls)),Y_2))
    <=> hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_real,one_one_real),number267125858f_real(Y_2))) ) ).

fof(fact_247_add__number__of__eq,axiom,
    ! [V_10,W_9] : number_number_of_int(hAPP_int_int(plus_plus_int(V_10),W_9)) = hAPP_int_int(plus_plus_int(number_number_of_int(V_10)),number_number_of_int(W_9)) ).

fof(fact_396_semiring__numeral__0__eq__0,axiom,
    number_number_of_nat(pls) = zero_zero_nat ).

fof(fact_640_zcong__square,axiom,
    ! [A,P_1] :
      ( ( ( ( hBOOL(hAPP_int_bool(zcong(A,one_one_int),P_1))
            | hBOOL(hAPP_int_bool(zcong(A,hAPP_int_int(minus_minus_int(P_1),one_one_int)),P_1)) )
         <= hBOOL(hAPP_int_bool(zcong(hAPP_int_int(times_times_int(A),A),one_one_int),P_1)) )
       <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,zero_zero_int),A)) )
     <= hBOOL(hAPP_int_bool(zprime,P_1)) ) ).

fof(fact_923_dvd_Ole__less,axiom,
    ! [X_2,Y_2] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,X_2),Y_2))
    <=> ( Y_2 = X_2
        | ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,X_2),Y_2))
          & ~ hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,Y_2),X_2)) ) ) ) ).

fof(fact_708_mult__zero__right,axiom,
    ! [A_48] : hAPP_int_int(times_times_int(A_48),zero_zero_int) = zero_zero_int ).

fof(fact_667_divides__cases,axiom,
    ! [N_1,M] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,N_1),M))
     => ( M = zero_zero_nat
        | M = N_1
        | hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(times_times_nat(number_number_of_nat(bit0(bit1(pls)))),N_1)),M)) ) ) ).

fof(fact_91_comm__semiring__1__class_Onormalizing__semiring__rules_I13_J,axiom,
    ! [Lx_6,Ly_4,Rx_6,Ry_4] : hAPP_int_int(times_times_int(hAPP_int_int(times_times_int(Lx_6),Ly_4)),hAPP_int_int(times_times_int(Rx_6),Ry_4)) = hAPP_int_int(times_times_int(hAPP_int_int(times_times_int(Lx_6),Rx_6)),hAPP_int_int(times_times_int(Ly_4),Ry_4)) ).

fof(fact_615_diff__bin__simps_I7_J,axiom,
    ! [K_1,L] : bit0(hAPP_int_int(minus_minus_int(K_1),L)) = hAPP_int_int(minus_minus_int(bit0(K_1)),bit0(L)) ).

fof(fact_312_power__eq__0__iff,axiom,
    ! [A_2,N] :
      ( hAPP_nat_nat(power_power_nat(A_2),N) = zero_zero_nat
    <=> ( zero_zero_nat = A_2
        & zero_zero_nat != N ) ) ).

fof(fact_149_less__int__code_I15_J,axiom,
    ! [K1,K2] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,bit1(K1)),bit0(K2)))
    <=> hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,K1),K2)) ) ).

fof(fact_253_Bit1__def,axiom,
    ! [K_1] : hAPP_int_int(plus_plus_int(hAPP_int_int(plus_plus_int(one_one_int),K_1)),K_1) = bit1(K_1) ).

fof(fact_577_zcong__scalar,axiom,
    ! [K_1,A,B,M] :
      ( hBOOL(hAPP_int_bool(zcong(A,B),M))
     => hBOOL(hAPP_int_bool(zcong(hAPP_int_int(times_times_int(A),K_1),hAPP_int_int(times_times_int(B),K_1)),M)) ) ).

fof(fact_841_mult__pos__neg2,axiom,
    ! [B_7,A_8] :
      ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,hAPP_nat_nat(times_times_nat(B_7),A_8)),zero_zero_nat))
       <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,B_7),zero_zero_nat)) )
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,zero_zero_nat),A_8)) ) ).

fof(fact_379_power__decreasing,axiom,
    ! [A_74,N_23,N_22] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,N_23),N_22))
     => ( ( hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_eq_real,A_74),one_one_real))
         => hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_eq_real,hAPP_nat_real(power_power_real(A_74),N_22)),hAPP_nat_real(power_power_real(A_74),N_23))) )
       <= hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_eq_real,zero_zero_real),A_74)) ) ) ).

fof(gsy_c_IntFact_Ozfact,axiom,
    ! [B_1_1] :
      ( is_int(zfact(B_1_1))
     <= is_int(B_1_1) ) ).

fof(fact_407_power__Suc__less,axiom,
    ! [N_19,A_71] :
      ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,A_71),one_one_nat))
       => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,hAPP_nat_nat(times_times_nat(A_71),hAPP_nat_nat(power_power_nat(A_71),N_19))),hAPP_nat_nat(power_power_nat(A_71),N_19))) )
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,zero_zero_nat),A_71)) ) ).

fof(fact_476_sum__power2__ge__zero,axiom,
    ! [X_12,Y_9] : hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,zero_zero_int),hAPP_int_int(plus_plus_int(hAPP_nat_int(power_power_int(X_12),number_number_of_nat(bit0(bit1(pls))))),hAPP_nat_int(power_power_int(Y_9),number_number_of_nat(bit0(bit1(pls))))))) ).

fof(gsy_c_WilsonRuss_Oinv,axiom,
    ! [B_1_1,B_2_1] :
      ( is_int(inv(B_1_1,B_2_1))
     <= ( is_int(B_1_1)
        & is_int(B_2_1) ) ) ).

fof(fact_882_real__le__trans,axiom,
    ! [K_1,I_1,J_1] :
      ( hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_eq_real,I_1),J_1))
     => ( hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_eq_real,J_1),K_1))
       => hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_eq_real,I_1),K_1)) ) ) ).

fof(fact_1079_inv__g__1,axiom,
    ! [A,P_1] :
      ( hBOOL(hAPP_int_bool(zprime,P_1))
     => ( ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,A),hAPP_int_int(minus_minus_int(P_1),one_one_int)))
         => hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,one_one_int),inv(P_1,A))) )
       <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,one_one_int),A)) ) ) ).

fof(fact_1087_inv__is__inv,axiom,
    ! [A,P_1] :
      ( hBOOL(hAPP_int_bool(zprime,P_1))
     => ( ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,A),P_1))
         => hBOOL(hAPP_int_bool(zcong(hAPP_int_int(times_times_int(A),inv(P_1,A)),one_one_int),P_1)) )
       <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,zero_zero_int),A)) ) ) ).

fof(fact_137_number__of__reorient,axiom,
    ! [W_1,X_2] :
      ( number_number_of_nat(W_1) = X_2
    <=> number_number_of_nat(W_1) = X_2 ) ).

fof(fact_179_crossproduct__noteq,axiom,
    ! [C_2,D,A_2,B_2] :
      ( ( hAPP_int_int(plus_plus_int(hAPP_int_int(times_times_int(A_2),C_2)),hAPP_int_int(times_times_int(B_2),D)) != hAPP_int_int(plus_plus_int(hAPP_int_int(times_times_int(A_2),D)),hAPP_int_int(times_times_int(B_2),C_2))
      <=> ( A_2 != B_2
          & D != C_2 ) )
     <= ( is_int(C_2)
        & is_int(D)
        & is_int(A_2)
        & is_int(B_2) ) ) ).

fof(fact_878_less__zeroE,axiom,
    ! [N_1] : ~ hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,N_1),zero_zero_nat)) ).

fof(fact_691_real__add__left__mono,axiom,
    ! [Z,X_1,Y_1] :
      ( hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_eq_real,X_1),Y_1))
     => hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_eq_real,hAPP_real_real(plus_plus_real(Z),X_1)),hAPP_real_real(plus_plus_real(Z),Y_1))) ) ).

fof(fact_589_Nat__Transfer_Otransfer__nat__int__function__closures_I4_J,axiom,
    ! [N_1,X_1] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,zero_zero_int),hAPP_nat_int(power_power_int(X_1),N_1)))
     <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,zero_zero_int),X_1)) ) ).

fof(fact_133_comm__semiring__1__class_Onormalizing__semiring__rules_I24_J,axiom,
    ! [A_104,C_30] : hAPP_nat_nat(plus_plus_nat(C_30),A_104) = hAPP_nat_nat(plus_plus_nat(A_104),C_30) ).

fof(fact_684_real__zero__not__eq__one,axiom,
    zero_zero_real != one_one_real ).

fof(fact_143_zmult__commute,axiom,
    ! [Z,W] : hAPP_int_int(times_times_int(Z),W) = hAPP_int_int(times_times_int(W),Z) ).

fof(fact_331_dvd__power__same,axiom,
    ! [N_31,X_18,Y_15] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,hAPP_nat_nat(power_power_nat(X_18),N_31)),hAPP_nat_nat(power_power_nat(Y_15),N_31)))
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,X_18),Y_15)) ) ).

fof(fact_875_dvd__mult__cancel1,axiom,
    ! [N,Ma] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,zero_zero_nat),Ma))
     => ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,hAPP_nat_nat(times_times_nat(Ma),N)),Ma))
      <=> one_one_nat = N ) ) ).

fof(fact_977_trans__less__add1,axiom,
    ! [M,I_1,J_1] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,I_1),J_1))
     => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,I_1),hAPP_nat_nat(plus_plus_nat(J_1),M))) ) ).

fof(fact_69_rel__simps_I14_J,axiom,
    ! [K,L_1] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,bit0(K)),bit0(L_1)))
    <=> hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,K),L_1)) ) ).

fof(fact_971_mult__is__0,axiom,
    ! [Ma,N] :
      ( ( N = zero_zero_nat
        | Ma = zero_zero_nat )
    <=> hAPP_nat_nat(times_times_nat(Ma),N) = zero_zero_nat ) ).

fof(fact_575_zcong__zmult,axiom,
    ! [C,D_5,A,B,M] :
      ( hBOOL(hAPP_int_bool(zcong(A,B),M))
     => ( hBOOL(hAPP_int_bool(zcong(hAPP_int_int(times_times_int(A),C),hAPP_int_int(times_times_int(B),D_5)),M))
       <= hBOOL(hAPP_int_bool(zcong(C,D_5),M)) ) ) ).

fof(fact_1180_mod__geq,axiom,
    ! [M,N_1] :
      ( hAPP_nat_nat(div_mod_nat(hAPP_nat_nat(minus_minus_nat(M),N_1)),N_1) = hAPP_nat_nat(div_mod_nat(M),N_1)
     <= ~ hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,M),N_1)) ) ).

fof(fact_158_zless__add1__eq,axiom,
    ! [W_1,Z_1] :
      ( ( is_int(Z_1)
        & is_int(W_1) )
     => ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,W_1),hAPP_int_int(plus_plus_int(Z_1),one_one_int)))
      <=> ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,W_1),Z_1))
          | W_1 = Z_1 ) ) ) ).

fof(fact_180_crossproduct__noteq,axiom,
    ! [C_2,D,A_2,B_2] :
      ( hAPP_nat_nat(plus_plus_nat(hAPP_nat_nat(times_times_nat(A_2),C_2)),hAPP_nat_nat(times_times_nat(B_2),D)) != hAPP_nat_nat(plus_plus_nat(hAPP_nat_nat(times_times_nat(A_2),D)),hAPP_nat_nat(times_times_nat(B_2),C_2))
    <=> ( D != C_2
        & A_2 != B_2 ) ) ).

fof(fact_250_number__of__add,axiom,
    ! [V_9,W_8] : number267125858f_real(hAPP_int_int(plus_plus_int(V_9),W_8)) = hAPP_real_real(plus_plus_real(number267125858f_real(V_9)),number267125858f_real(W_8)) ).

fof(fact_910_dvd_Oord__eq__less__trans,axiom,
    ! [C,A,B] :
      ( A = B
     => ( ( ~ hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,C),A))
          & hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,A),C)) )
       <= ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,B),C))
          & ~ hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,C),B)) ) ) ) ).

fof(fact_1041_mult__le__cancel1,axiom,
    ! [K,Ma,N] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(times_times_nat(K),Ma)),hAPP_nat_nat(times_times_nat(K),N)))
    <=> ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,Ma),N))
       <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,zero_zero_nat),K)) ) ) ).

fof(fact_601_q__neg__lemma,axiom,
    ! [B_48,Q_4,R_3] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,hAPP_int_int(plus_plus_int(hAPP_int_int(times_times_int(B_48),Q_4)),R_3)),zero_zero_int))
     => ( ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,Q_4),zero_zero_int))
         <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,zero_zero_int),B_48)) )
       <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,zero_zero_int),R_3)) ) ) ).

fof(fact_751_dvd__triv__left,axiom,
    ! [A_35,B_32] : hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,A_35),hAPP_nat_nat(times_times_nat(A_35),B_32))) ).

fof(fact_195_rel__simps_I39_J,axiom,
    ! [L] : bit1(L) != pls ).

fof(fact_274_quartic__square__square,axiom,
    ! [X_1] : hAPP_nat_int(power_power_int(hAPP_nat_int(power_power_int(X_1),number_number_of_nat(bit0(bit1(pls))))),number_number_of_nat(bit0(bit1(pls)))) = hAPP_nat_int(power_power_int(X_1),number_number_of_nat(bit0(bit0(bit1(pls))))) ).

fof(fact_67_rel__simps_I2_J,axiom,
    ~ hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,pls),pls)) ).

fof(fact_345_comm__semiring__1__class_Onormalizing__semiring__rules_I10_J,axiom,
    ! [A_81] : zero_zero_nat = hAPP_nat_nat(times_times_nat(A_81),zero_zero_nat) ).

fof(fact_639_mult__sum2sq,axiom,
    ! [A,B,P_1,Q_1] : twoSqu1241645765sum2sq(product_Pair_int_int(hAPP_int_int(plus_plus_int(hAPP_int_int(times_times_int(A),P_1)),hAPP_int_int(times_times_int(B),Q_1)),hAPP_int_int(minus_minus_int(hAPP_int_int(times_times_int(A),Q_1)),hAPP_int_int(times_times_int(B),P_1)))) = hAPP_int_int(times_times_int(twoSqu1241645765sum2sq(product_Pair_int_int(A,B))),twoSqu1241645765sum2sq(product_Pair_int_int(P_1,Q_1))) ).

fof(fact_957_not__less0,axiom,
    ! [N_1] : ~ hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,N_1),zero_zero_nat)) ).

fof(fact_1048_nat__mult__less__cancel1,axiom,
    ! [Ma,N,K] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,zero_zero_nat),K))
     => ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,Ma),N))
      <=> hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,hAPP_nat_nat(times_times_nat(K),Ma)),hAPP_nat_nat(times_times_nat(K),N))) ) ) ).

fof(fact_1023_le__cube,axiom,
    ! [M] : hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,M),hAPP_nat_nat(times_times_nat(M),hAPP_nat_nat(times_times_nat(M),M)))) ).

fof(fact_887_diffs0__imp__equal,axiom,
    ! [M,N_1] :
      ( ( hAPP_nat_nat(minus_minus_nat(N_1),M) = zero_zero_nat
       => N_1 = M )
     <= hAPP_nat_nat(minus_minus_nat(M),N_1) = zero_zero_nat ) ).

fof(fact_291__096sum2sq_A_Is_M_A1_J_A_061_A_I4_A_K_Am_A_L_A1_J_A_K_At_096,axiom,
    hAPP_int_int(times_times_int(hAPP_int_int(plus_plus_int(hAPP_int_int(times_times_int(number_number_of_int(bit0(bit0(bit1(pls))))),m)),one_one_int)),t) = twoSqu1241645765sum2sq(product_Pair_int_int(s,one_one_int)) ).

fof(gsy_c_Int_OBit1,hypothesis,
    ! [B_1_1] :
      ( is_int(B_1_1)
     => is_int(bit1(B_1_1)) ) ).

fof(fact_42_comm__semiring__1__class_Onormalizing__semiring__rules_I31_J,axiom,
    ! [X_24,P_7,Q_7] : hAPP_nat_real(power_power_real(X_24),hAPP_nat_nat(times_times_nat(P_7),Q_7)) = hAPP_nat_real(power_power_real(hAPP_nat_real(power_power_real(X_24),P_7)),Q_7) ).

fof(fact_9_power2__sum,axiom,
    ! [X_2,Y_2] : hAPP_nat_int(power_power_int(hAPP_int_int(plus_plus_int(X_2),Y_2)),number_number_of_nat(bit0(bit1(pls)))) = hAPP_int_int(plus_plus_int(hAPP_int_int(plus_plus_int(hAPP_nat_int(power_power_int(X_2),number_number_of_nat(bit0(bit1(pls))))),hAPP_nat_int(power_power_int(Y_2),number_number_of_nat(bit0(bit1(pls)))))),hAPP_int_int(times_times_int(hAPP_int_int(times_times_int(number_number_of_int(bit0(bit1(pls)))),X_2)),Y_2)) ).

fof(fact_238_add__numeral__0__right,axiom,
    ! [A_94] : hAPP_real_real(plus_plus_real(A_94),number267125858f_real(pls)) = A_94 ).

fof(fact_562_zcong__sym,axiom,
    ! [A_2,B_2,Ma] :
      ( hBOOL(hAPP_int_bool(zcong(B_2,A_2),Ma))
    <=> hBOOL(hAPP_int_bool(zcong(A_2,B_2),Ma)) ) ).

fof(fact_181_crossproduct__noteq,axiom,
    ! [C_2,D,A_2,B_2] :
      ( ( B_2 != A_2
        & C_2 != D )
    <=> hAPP_real_real(plus_plus_real(hAPP_real_real(times_times_real(A_2),D)),hAPP_real_real(times_times_real(B_2),C_2)) != hAPP_real_real(plus_plus_real(hAPP_real_real(times_times_real(A_2),C_2)),hAPP_real_real(times_times_real(B_2),D)) ) ).

fof(fact_1181_mod__if,axiom,
    ! [M,N_1] :
      ( ( hAPP_nat_nat(div_mod_nat(M),N_1) = M
       <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,M),N_1)) )
      & ( ~ hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,M),N_1))
       => hAPP_nat_nat(div_mod_nat(hAPP_nat_nat(minus_minus_nat(M),N_1)),N_1) = hAPP_nat_nat(div_mod_nat(M),N_1) ) ) ).

fof(fact_332_field__power__not__zero,axiom,
    ! [N_30,A_84] :
      ( is_int(A_84)
     => ( zero_zero_int != hAPP_nat_int(power_power_int(A_84),N_30)
       <= A_84 != zero_zero_int ) ) ).

fof(fact_26_comm__semiring__1__class_Onormalizing__semiring__rules_I36_J,axiom,
    ! [X_25,N_40] : hAPP_nat_real(power_power_real(X_25),hAPP_nat_nat(times_times_nat(number_number_of_nat(bit0(bit1(pls)))),N_40)) = hAPP_real_real(times_times_real(hAPP_nat_real(power_power_real(X_25),N_40)),hAPP_nat_real(power_power_real(X_25),N_40)) ).

fof(fact_785_comm__mult__left__mono,axiom,
    ! [C_10,A_26,B_24] :
      ( ( hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_eq_real,hAPP_real_real(times_times_real(C_10),A_26)),hAPP_real_real(times_times_real(C_10),B_24)))
       <= hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_eq_real,zero_zero_real),C_10)) )
     <= hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_eq_real,A_26),B_24)) ) ).

fof(fact_1066_incr__mult__lemma,axiom,
    ! [K,P_2,D] :
      ( ( ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,zero_zero_int),K))
         => ! [X] :
              ( hBOOL(hAPP_int_bool(P_2,hAPP_int_int(plus_plus_int(X),hAPP_int_int(times_times_int(K),D))))
             <= hBOOL(hAPP_int_bool(P_2,X)) ) )
       <= ! [X] :
            ( ( hBOOL(hAPP_int_bool(P_2,X))
             => hBOOL(hAPP_int_bool(P_2,hAPP_int_int(plus_plus_int(X),D))) )
           <= is_int(X) ) )
     <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,zero_zero_int),D)) ) ).

fof(fact_561_eq__0__number__of,axiom,
    ! [V_7] :
      ( zero_zero_nat = number_number_of_nat(V_7)
    <=> hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,V_7),pls)) ) ).

fof(gsy_c_TwoSquares__Mirabelle__enbualjaop_Osum2sq,axiom,
    ! [B_1_1] : is_int(twoSqu1241645765sum2sq(B_1_1)) ).

fof(fact_270_double__number__of__Bit0,axiom,
    ! [W_6] : hAPP_real_real(times_times_real(hAPP_real_real(plus_plus_real(one_one_real),one_one_real)),number267125858f_real(W_6)) = number267125858f_real(bit0(W_6)) ).

fof(fact_398_bin__less__0__simps_I4_J,axiom,
    ! [W_1] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,bit1(W_1)),zero_zero_int))
    <=> hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,W_1),zero_zero_int)) ) ).

fof(fact_221_left__distrib__number__of,axiom,
    ! [A_98,B_57,V_16] : hAPP_nat_nat(times_times_nat(hAPP_nat_nat(plus_plus_nat(A_98),B_57)),number_number_of_nat(V_16)) = hAPP_nat_nat(plus_plus_nat(hAPP_nat_nat(times_times_nat(A_98),number_number_of_nat(V_16))),hAPP_nat_nat(times_times_nat(B_57),number_number_of_nat(V_16))) ).

fof(fact_702_no__zero__divisors,axiom,
    ! [B_43,A_49] :
      ( A_49 != zero_zero_nat
     => ( zero_zero_nat != hAPP_nat_nat(times_times_nat(A_49),B_43)
       <= B_43 != zero_zero_nat ) ) ).

fof(fact_161_power__even__eq,axiom,
    ! [A_103,N_39] : hAPP_nat_nat(power_power_nat(hAPP_nat_nat(power_power_nat(A_103),N_39)),number_number_of_nat(bit0(bit1(pls)))) = hAPP_nat_nat(power_power_nat(A_103),hAPP_nat_nat(times_times_nat(number_number_of_nat(bit0(bit1(pls)))),N_39)) ).

fof(fact_850_mult__less__cancel__left__pos,axiom,
    ! [A_2,B_2,C_2] :
      ( ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,A_2),B_2))
      <=> hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,hAPP_int_int(times_times_int(C_2),A_2)),hAPP_int_int(times_times_int(C_2),B_2))) )
     <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,zero_zero_int),C_2)) ) ).

fof(fact_564_zcong__trans,axiom,
    ! [C,A,B,M] :
      ( hBOOL(hAPP_int_bool(zcong(A,B),M))
     => ( hBOOL(hAPP_int_bool(zcong(A,C),M))
       <= hBOOL(hAPP_int_bool(zcong(B,C),M)) ) ) ).

fof(fact_681_dvd__trans,axiom,
    ! [C_24,A_51,B_45] :
      ( ( hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(dvd_dvd_real,B_45),C_24))
       => hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(dvd_dvd_real,A_51),C_24)) )
     <= hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(dvd_dvd_real,A_51),B_45)) ) ).

fof(fact_285_semiring__one__add__one__is__two,axiom,
    hAPP_int_int(plus_plus_int(one_one_int),one_one_int) = number_number_of_int(bit0(bit1(pls))) ).

fof(fact_968_diff__is__0__eq,axiom,
    ! [Ma,N] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,Ma),N))
    <=> hAPP_nat_nat(minus_minus_nat(Ma),N) = zero_zero_nat ) ).

fof(fact_162_less__special_I4_J,axiom,
    ! [X_2] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,X_2),bit1(pls)))
    <=> hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,number_number_of_int(X_2)),one_one_int)) ) ).

fof(fact_1183_le__mod__geq,axiom,
    ! [N_1,M] :
      ( hAPP_nat_nat(div_mod_nat(hAPP_nat_nat(minus_minus_nat(M),N_1)),N_1) = hAPP_nat_nat(div_mod_nat(M),N_1)
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,N_1),M)) ) ).

fof(gsy_c_Int_OBit0,hypothesis,
    ! [B_1_1] :
      ( is_int(bit0(B_1_1))
     <= is_int(B_1_1) ) ).

fof(fact_368_zero__less__power,axiom,
    ! [N_25,A_76] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,zero_zero_int),A_76))
     => hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,zero_zero_int),hAPP_nat_int(power_power_int(A_76),N_25))) ) ).

fof(fact_746_dvd__mult2,axiom,
    ! [C_16,A_37,B_34] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(dvd_dvd_int,A_37),hAPP_int_int(times_times_int(B_34),C_16)))
     <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(dvd_dvd_int,A_37),B_34)) ) ).

fof(fact_583_power__eq__0__iff__number__of,axiom,
    ! [A_2,W_1] :
      ( ( number_number_of_nat(W_1) != zero_zero_nat
        & A_2 = zero_zero_nat )
    <=> hAPP_nat_nat(power_power_nat(A_2),number_number_of_nat(W_1)) = zero_zero_nat ) ).

fof(fact_145_zadd__assoc,axiom,
    ! [Z1,Z2,Z3] : hAPP_int_int(plus_plus_int(hAPP_int_int(plus_plus_int(Z1),Z2)),Z3) = hAPP_int_int(plus_plus_int(Z1),hAPP_int_int(plus_plus_int(Z2),Z3)) ).

fof(fact_1096_wset__mem__inv__mem,axiom,
    ! [B_2,A_2,P_3] :
      ( ( ( ( hBOOL(member_int(inv(P_3,B_2),wset(A_2,P_3)))
           <= hBOOL(member_int(B_2,wset(A_2,P_3))) )
         <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,A_2),hAPP_int_int(minus_minus_int(P_3),one_one_int))) )
       <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,number_number_of_int(bit1(bit0(bit1(pls))))),P_3)) )
     <= hBOOL(hAPP_int_bool(zprime,P_3)) ) ).

fof(fact_387_add__scale__eq__noteq,axiom,
    ! [C_27,D_8,A_72,B_50,R_4] :
      ( ( is_int(D_8)
        & is_int(R_4)
        & is_int(C_27) )
     => ( R_4 != zero_zero_int
       => ( hAPP_int_int(plus_plus_int(A_72),hAPP_int_int(times_times_int(R_4),C_27)) != hAPP_int_int(plus_plus_int(B_50),hAPP_int_int(times_times_int(R_4),D_8))
         <= ( C_27 != D_8
            & B_50 = A_72 ) ) ) ) ).

fof(fact_445_power2__le__imp__le,axiom,
    ! [X_15,Y_12] :
      ( hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_eq_real,hAPP_nat_real(power_power_real(X_15),number_number_of_nat(bit0(bit1(pls))))),hAPP_nat_real(power_power_real(Y_12),number_number_of_nat(bit0(bit1(pls))))))
     => ( hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_eq_real,X_15),Y_12))
       <= hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_eq_real,zero_zero_real),Y_12)) ) ) ).

fof(fact_809_mult__le__0__iff,axiom,
    ! [A_2,B_2] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,hAPP_int_int(times_times_int(A_2),B_2)),zero_zero_int))
    <=> ( ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,A_2),zero_zero_int))
          & hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,zero_zero_int),B_2)) )
        | ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,zero_zero_int),A_2))
          & hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,B_2),zero_zero_int)) ) ) ) ).

fof(fact_897_dvd_Oless__asym,axiom,
    ! [X_1,Y_1] :
      ( ~ ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,Y_1),X_1))
          & ~ hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,X_1),Y_1)) )
     <= ( ~ hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,Y_1),X_1))
        & hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,X_1),Y_1)) ) ) ).

fof(fact_906_dvd_Oless__imp__le,axiom,
    ! [X_1,Y_1] :
      ( ( ~ hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,Y_1),X_1))
        & hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,X_1),Y_1)) )
     => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,X_1),Y_1)) ) ).

fof(fact_460_power__mult__distrib,axiom,
    ! [A_66,B_49,N_17] : hAPP_nat_nat(times_times_nat(hAPP_nat_nat(power_power_nat(A_66),N_17)),hAPP_nat_nat(power_power_nat(B_49),N_17)) = hAPP_nat_nat(power_power_nat(hAPP_nat_nat(times_times_nat(A_66),B_49)),N_17) ).

fof(fact_85_rel__simps_I15_J,axiom,
    ! [K,L_1] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,K),L_1))
    <=> hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,bit0(K)),bit1(L_1))) ) ).

fof(fact_1059_number__of1,axiom,
    ! [N_1] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,zero_zero_int),number_number_of_int(N_1)))
     => ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,zero_zero_int),number_number_of_int(bit0(N_1))))
        & hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,zero_zero_int),number_number_of_int(bit1(N_1)))) ) ) ).

fof(fact_147_zadd__commute,axiom,
    ! [Z,W] : hAPP_int_int(plus_plus_int(Z),W) = hAPP_int_int(plus_plus_int(W),Z) ).

fof(fact_1168_zmult2__lemma__aux4,axiom,
    ! [Q_1,B,R_1,C] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,zero_zero_int),C))
     => ( ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,R_1),B))
         => hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,hAPP_int_int(plus_plus_int(hAPP_int_int(times_times_int(B),hAPP_int_int(div_mod_int(Q_1),C))),R_1)),hAPP_int_int(times_times_int(B),C))) )
       <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,zero_zero_int),R_1)) ) ) ).

fof(fact_1071_zfact_Osimps,axiom,
    ! [N_1] :
      ( ( zfact(N_1) = hAPP_int_int(times_times_int(N_1),zfact(hAPP_int_int(minus_minus_int(N_1),one_one_int)))
       <= ~ hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,N_1),zero_zero_int)) )
      & ( one_one_int = zfact(N_1)
       <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,N_1),zero_zero_int)) ) ) ).

fof(fact_556_dvd__power,axiom,
    ! [X_9,N_5] :
      ( hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(dvd_dvd_real,X_9),hAPP_nat_real(power_power_real(X_9),N_5)))
     <= ( one_one_real = X_9
        | hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,zero_zero_nat),N_5)) ) ) ).

fof(fact_388_add__scale__eq__noteq,axiom,
    ! [C_27,D_8,A_72,B_50,R_4] :
      ( ( hAPP_nat_nat(plus_plus_nat(B_50),hAPP_nat_nat(times_times_nat(R_4),D_8)) != hAPP_nat_nat(plus_plus_nat(A_72),hAPP_nat_nat(times_times_nat(R_4),C_27))
       <= ( A_72 = B_50
          & D_8 != C_27 ) )
     <= R_4 != zero_zero_nat ) ).

fof(fact_246_add__number__of__left,axiom,
    ! [V_11,W_10,Z_7] : hAPP_real_real(plus_plus_real(number267125858f_real(hAPP_int_int(plus_plus_int(V_11),W_10))),Z_7) = hAPP_real_real(plus_plus_real(number267125858f_real(V_11)),hAPP_real_real(plus_plus_real(number267125858f_real(W_10)),Z_7)) ).

fof(fact_707_mult__zero__right,axiom,
    ! [A_48] : hAPP_nat_nat(times_times_nat(A_48),zero_zero_nat) = zero_zero_nat ).

fof(fact_154_less__eq__int__code_I14_J,axiom,
    ! [K1,K2] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,K1),K2))
    <=> hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,bit0(K1)),bit1(K2))) ) ).

fof(fact_260_semiring__numeral__1__eq__1,axiom,
    number_number_of_int(bit1(pls)) = one_one_int ).

fof(fact_588_zcong__not,axiom,
    ! [B,M,A] :
      ( ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,A),M))
       => ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,zero_zero_int),B))
         => ( ~ hBOOL(hAPP_int_bool(zcong(A,B),M))
           <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,B),A)) ) ) )
     <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,zero_zero_int),A)) ) ).

fof(fact_346_comm__semiring__1__class_Onormalizing__semiring__rules_I10_J,axiom,
    ! [A_81] : zero_zero_real = hAPP_real_real(times_times_real(A_81),zero_zero_real) ).

fof(fact_152_rel__simps_I4_J,axiom,
    ! [K] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,pls),K))
    <=> hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,pls),bit0(K))) ) ).

fof(fact_634_diff__bin__simps_I4_J,axiom,
    ! [L] : bit1(hAPP_int_int(minus_minus_int(min),L)) = hAPP_int_int(minus_minus_int(pls),bit1(L)) ).

fof(fact_1020_mult__le__mono,axiom,
    ! [K_1,L,I_1,J_1] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,I_1),J_1))
     => ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(times_times_nat(I_1),K_1)),hAPP_nat_nat(times_times_nat(J_1),L)))
       <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,K_1),L)) ) ) ).

fof(fact_703_no__zero__divisors,axiom,
    ! [B_43,A_49] :
      ( ( is_int(A_49)
        & is_int(B_43) )
     => ( A_49 != zero_zero_int
       => ( zero_zero_int != hAPP_int_int(times_times_int(A_49),B_43)
         <= B_43 != zero_zero_int ) ) ) ).

fof(fact_1000_trans__le__add2,axiom,
    ! [M,I_1,J_1] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,I_1),hAPP_nat_nat(plus_plus_nat(M),J_1)))
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,I_1),J_1)) ) ).

fof(fact_6_qf1pt,axiom,
    hBOOL(hAPP_int_bool(twoSqu1154269391sum2sq,hAPP_int_int(times_times_int(hAPP_int_int(plus_plus_int(hAPP_int_int(times_times_int(number_number_of_int(bit0(bit0(bit1(pls))))),m)),one_one_int)),t))) ).

fof(fact_818_comm__mult__strict__left__mono,axiom,
    ! [C_5,A_15,B_14] :
      ( ( hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_real,hAPP_real_real(times_times_real(C_5),A_15)),hAPP_real_real(times_times_real(C_5),B_14)))
       <= hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_real,zero_zero_real),C_5)) )
     <= hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_real,A_15),B_14)) ) ).

fof(fact_711_mult__zero__left,axiom,
    ! [A_47] : hAPP_int_int(times_times_int(zero_zero_int),A_47) = zero_zero_int ).

fof(fact_1075_aux______1,axiom,
    ! [J_1,A,P_1,K_1] :
      ( hBOOL(hAPP_int_bool(zcong(hAPP_int_int(times_times_int(J_1),K_1),hAPP_int_int(times_times_int(hAPP_int_int(times_times_int(A),multInv(P_1,K_1))),K_1)),P_1))
     <= hBOOL(hAPP_int_bool(zcong(J_1,hAPP_int_int(times_times_int(A),multInv(P_1,K_1))),P_1)) ) ).

fof(fact_1146_zdvd__zmod__imp__zdvd,axiom,
    ! [K_1,M,N_1] :
      ( ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(dvd_dvd_int,K_1),M))
       <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(dvd_dvd_int,K_1),N_1)) )
     <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(dvd_dvd_int,K_1),hAPP_int_int(div_mod_int(M),N_1))) ) ).

fof(fact_405_odd__nonzero,axiom,
    ! [Z] : hAPP_int_int(plus_plus_int(hAPP_int_int(plus_plus_int(one_one_int),Z)),Z) != zero_zero_int ).

fof(fact_737_dvdI,axiom,
    ! [A_40,B_37,K_3] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(dvd_dvd_int,B_37),A_40))
     <= A_40 = hAPP_int_int(times_times_int(B_37),K_3) ) ).

fof(fact_735_dvdI,axiom,
    ! [A_40,B_37,K_3] :
      ( hAPP_real_real(times_times_real(B_37),K_3) = A_40
     => hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(dvd_dvd_real,B_37),A_40)) ) ).

fof(fact_925_dvd_Oless__irrefl,axiom,
    ! [X_1] :
      ~ ( ~ hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,X_1),X_1))
        & hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,X_1),X_1)) ) ).

fof(fact_508_zprime__def,axiom,
    ! [P_3] :
      ( is_int(P_3)
     => ( hBOOL(hAPP_int_bool(zprime,P_3))
      <=> ( ! [M_2] :
              ( ( ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,zero_zero_int),M_2))
                  & hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(dvd_dvd_int,M_2),P_3)) )
               => ( M_2 = one_one_int
                  | M_2 = P_3 ) )
             <= is_int(M_2) )
          & hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,one_one_int),P_3)) ) ) ) ).

fof(fact_779_mult__mono_H,axiom,
    ! [C_13,D_3,A_29,B_27] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,A_29),B_27))
     => ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,C_13),D_3))
       => ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,zero_zero_nat),A_29))
         => ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,zero_zero_nat),C_13))
           => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(times_times_nat(A_29),C_13)),hAPP_nat_nat(times_times_nat(B_27),D_3))) ) ) ) ) ).

fof(fact_84_less__int__code_I14_J,axiom,
    ! [K1,K2] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,bit0(K1)),bit1(K2)))
    <=> hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,K1),K2)) ) ).

fof(fact_17_one__power2,axiom,
    one_one_nat = hAPP_nat_nat(power_power_nat(one_one_nat),number_number_of_nat(bit0(bit1(pls)))) ).

fof(fact_1176_StandardRes__prop4,axiom,
    ! [X_1,Y_1,M] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,number_number_of_int(bit0(bit1(pls)))),M))
     => hBOOL(hAPP_int_bool(zcong(hAPP_int_int(times_times_int(standardRes(M,X_1)),standardRes(M,Y_1)),hAPP_int_int(times_times_int(X_1),Y_1)),M)) ) ).

fof(fact_936_diff__cancel2,axiom,
    ! [M,K_1,N_1] : hAPP_nat_nat(minus_minus_nat(hAPP_nat_nat(plus_plus_nat(M),K_1)),hAPP_nat_nat(plus_plus_nat(N_1),K_1)) = hAPP_nat_nat(minus_minus_nat(M),N_1) ).

fof(fact_248_add__number__of__eq,axiom,
    ! [V_10,W_9] : number267125858f_real(hAPP_int_int(plus_plus_int(V_10),W_9)) = hAPP_real_real(plus_plus_real(number267125858f_real(V_10)),number267125858f_real(W_9)) ).

fof(fact_329_dvd__power__same,axiom,
    ! [N_31,X_18,Y_15] :
      ( hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(dvd_dvd_real,hAPP_nat_real(power_power_real(X_18),N_31)),hAPP_nat_real(power_power_real(Y_15),N_31)))
     <= hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(dvd_dvd_real,X_18),Y_15)) ) ).

fof(fact_976_nat__add__left__cancel__less,axiom,
    ! [K,Ma,N] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,Ma),N))
    <=> hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,hAPP_nat_nat(plus_plus_nat(K),Ma)),hAPP_nat_nat(plus_plus_nat(K),N))) ) ).

fof(fact_939_eq__imp__le,axiom,
    ! [M,N_1] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,M),N_1))
     <= M = N_1 ) ).

fof(fact_983_add__diff__inverse,axiom,
    ! [M,N_1] :
      ( M = hAPP_nat_nat(plus_plus_nat(N_1),hAPP_nat_nat(minus_minus_nat(M),N_1))
     <= ~ hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,M),N_1)) ) ).

fof(fact_426_int__one__le__iff__zero__less,axiom,
    ! [Z_1] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,one_one_int),Z_1))
    <=> hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,zero_zero_int),Z_1)) ) ).

fof(fact_493_power__inject__exp,axiom,
    ! [Ma,N,A_2] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,one_one_int),A_2))
     => ( N = Ma
      <=> hAPP_nat_int(power_power_int(A_2),N) = hAPP_nat_int(power_power_int(A_2),Ma) ) ) ).

fof(fact_1164_mod__pos__neg__trivial,axiom,
    ! [B,A] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,zero_zero_int),A))
     => ( hAPP_int_int(plus_plus_int(A),B) = hAPP_int_int(div_mod_int(A),B)
       <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,hAPP_int_int(plus_plus_int(A),B)),zero_zero_int)) ) ) ).

fof(fact_870_divides__div__not,axiom,
    ! [X_1,Q_1,N_1,R_1] :
      ( X_1 = hAPP_nat_nat(plus_plus_nat(hAPP_nat_nat(times_times_nat(Q_1),N_1)),R_1)
     => ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,zero_zero_nat),R_1))
       => ( ~ hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,N_1),X_1))
         <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,R_1),N_1)) ) ) ) ).

fof(fact_394_number__of__Pls,axiom,
    zero_zero_real = number267125858f_real(pls) ).

fof(fact_496_power__strict__increasing__iff,axiom,
    ! [X_2,Y_2,B_2] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,one_one_int),B_2))
     => ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,X_2),Y_2))
      <=> hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,hAPP_nat_int(power_power_int(B_2),X_2)),hAPP_nat_int(power_power_int(B_2),Y_2))) ) ) ).

fof(fact_555_one__less__power,axiom,
    ! [N_6,A_56] :
      ( ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,one_one_int),hAPP_nat_int(power_power_int(A_56),N_6)))
       <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,zero_zero_nat),N_6)) )
     <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,one_one_int),A_56)) ) ).

fof(fact_1174_pos__zmod__mult__2,axiom,
    ! [B,A] :
      ( hAPP_int_int(div_mod_int(hAPP_int_int(plus_plus_int(one_one_int),hAPP_int_int(times_times_int(number_number_of_int(bit0(bit1(pls)))),B))),hAPP_int_int(times_times_int(number_number_of_int(bit0(bit1(pls)))),A)) = hAPP_int_int(plus_plus_int(one_one_int),hAPP_int_int(times_times_int(number_number_of_int(bit0(bit1(pls)))),hAPP_int_int(div_mod_int(B),A)))
     <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,zero_zero_int),A)) ) ).

fof(fact_607_zcong__neg__1__impl__ne__1,axiom,
    ! [X_1,P_1] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,number_number_of_int(bit0(bit1(pls)))),P_1))
     => ( ~ hBOOL(hAPP_int_bool(zcong(X_1,one_one_int),P_1))
       <= hBOOL(hAPP_int_bool(zcong(X_1,number_number_of_int(min)),P_1)) ) ) ).

fof(fact_808_mult__le__0__iff,axiom,
    ! [A_2,B_2] :
      ( ( ( hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_eq_real,zero_zero_real),A_2))
          & hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_eq_real,B_2),zero_zero_real)) )
        | ( hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_eq_real,zero_zero_real),B_2))
          & hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_eq_real,A_2),zero_zero_real)) ) )
    <=> hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_eq_real,hAPP_real_real(times_times_real(A_2),B_2)),zero_zero_real)) ) ).

fof(fact_810_zero__le__mult__iff,axiom,
    ! [A_2,B_2] :
      ( ( ( hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_eq_real,A_2),zero_zero_real))
          & hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_eq_real,B_2),zero_zero_real)) )
        | ( hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_eq_real,zero_zero_real),A_2))
          & hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_eq_real,zero_zero_real),B_2)) ) )
    <=> hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_eq_real,zero_zero_real),hAPP_real_real(times_times_real(A_2),B_2))) ) ).

fof(fact_513__096Legendre_A_N1_A_I4_A_K_Am_A_L_A1_J_A_061_A1_096,axiom,
    one_one_int = legendre(number_number_of_int(min),hAPP_int_int(plus_plus_int(hAPP_int_int(times_times_int(number_number_of_int(bit0(bit0(bit1(pls))))),m)),one_one_int)) ).

fof(fact_698_divisors__zero,axiom,
    ! [A_50,B_44] :
      ( ( A_50 = zero_zero_real
        | B_44 = zero_zero_real )
     <= hAPP_real_real(times_times_real(A_50),B_44) = zero_zero_real ) ).

fof(fact_52_less__number__of,axiom,
    ! [X_2,Y_2] :
      ( hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_real,number267125858f_real(X_2)),number267125858f_real(Y_2)))
    <=> hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,X_2),Y_2)) ) ).

fof(fact_696_power__eq__if,axiom,
    ! [P_1,M] :
      ( ( zero_zero_nat = M
       => hAPP_nat_nat(power_power_nat(P_1),M) = one_one_nat )
      & ( zero_zero_nat != M
       => hAPP_nat_nat(power_power_nat(P_1),M) = hAPP_nat_nat(times_times_nat(P_1),hAPP_nat_nat(power_power_nat(P_1),hAPP_nat_nat(minus_minus_nat(M),one_one_nat))) ) ) ).

fof(fact_489_power__increasing,axiom,
    ! [A_61,N_11,N_10] :
      ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(power_power_nat(A_61),N_11)),hAPP_nat_nat(power_power_nat(A_61),N_10)))
       <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,one_one_nat),A_61)) )
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,N_11),N_10)) ) ).

fof(fact_1017_add__mult__distrib,axiom,
    ! [M,N_1,K_1] : hAPP_nat_nat(times_times_nat(hAPP_nat_nat(plus_plus_nat(M),N_1)),K_1) = hAPP_nat_nat(plus_plus_nat(hAPP_nat_nat(times_times_nat(M),K_1)),hAPP_nat_nat(times_times_nat(N_1),K_1)) ).

fof(fact_783_mult__right__mono__neg,axiom,
    ! [C_11,B_25,A_27] :
      ( hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_eq_real,B_25),A_27))
     => ( hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_eq_real,C_11),zero_zero_real))
       => hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_eq_real,hAPP_real_real(times_times_real(A_27),C_11)),hAPP_real_real(times_times_real(B_25),C_11))) ) ) ).

fof(fact_1144_mod__mod__is__mod,axiom,
    ! [X_1,M] : hBOOL(hAPP_int_bool(zcong(X_1,hAPP_int_int(div_mod_int(X_1),M)),M)) ).

fof(fact_1050_nat__mult__dvd__cancel1,axiom,
    ! [Ma,N,K] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,zero_zero_nat),K))
     => ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,Ma),N))
      <=> hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,hAPP_nat_nat(times_times_nat(K),Ma)),hAPP_nat_nat(times_times_nat(K),N))) ) ) ).

fof(fact_892_linorder__neqE__nat,axiom,
    ! [X_1,Y_1] :
      ( Y_1 != X_1
     => ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,Y_1),X_1))
       <= ~ hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,X_1),Y_1)) ) ) ).

fof(fact_840_mult__pos__neg2,axiom,
    ! [B_7,A_8] :
      ( hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_real,zero_zero_real),A_8))
     => ( hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_real,hAPP_real_real(times_times_real(B_7),A_8)),zero_zero_real))
       <= hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_real,B_7),zero_zero_real)) ) ) ).

fof(fact_879_diff__commute,axiom,
    ! [I_1,J_1,K_1] : hAPP_nat_nat(minus_minus_nat(hAPP_nat_nat(minus_minus_nat(I_1),J_1)),K_1) = hAPP_nat_nat(minus_minus_nat(hAPP_nat_nat(minus_minus_nat(I_1),K_1)),J_1) ).

fof(fact_1186_mod__mult__distrib2,axiom,
    ! [K_1,M,N_1] : hAPP_nat_nat(div_mod_nat(hAPP_nat_nat(times_times_nat(K_1),M)),hAPP_nat_nat(times_times_nat(K_1),N_1)) = hAPP_nat_nat(times_times_nat(K_1),hAPP_nat_nat(div_mod_nat(M),N_1)) ).

fof(fact_769_divides__exp,axiom,
    ! [N_1,X_1,Y_1] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,X_1),Y_1))
     => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,hAPP_nat_nat(power_power_nat(X_1),N_1)),hAPP_nat_nat(power_power_nat(Y_1),N_1))) ) ).

fof(fact_482_sum__power2__gt__zero__iff,axiom,
    ! [X_2,Y_2] :
      ( ( ( zero_zero_int != X_2
          | zero_zero_int != Y_2 )
      <=> hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,zero_zero_int),hAPP_int_int(plus_plus_int(hAPP_nat_int(power_power_int(X_2),number_number_of_nat(bit0(bit1(pls))))),hAPP_nat_int(power_power_int(Y_2),number_number_of_nat(bit0(bit1(pls))))))) )
     <= ( is_int(Y_2)
        & is_int(X_2) ) ) ).

fof(fact_805_mult__nonneg__nonneg,axiom,
    ! [B_17,A_19] :
      ( hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_eq_real,zero_zero_real),A_19))
     => ( hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_eq_real,zero_zero_real),B_17))
       => hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_eq_real,zero_zero_real),hAPP_real_real(times_times_real(A_19),B_17))) ) ) ).

fof(fact_721_comm__semiring__class_Odistrib,axiom,
    ! [A_45,B_41,C_22] : hAPP_real_real(plus_plus_real(hAPP_real_real(times_times_real(A_45),C_22)),hAPP_real_real(times_times_real(B_41),C_22)) = hAPP_real_real(times_times_real(hAPP_real_real(plus_plus_real(A_45),B_41)),C_22) ).

fof(fact_967_diff__is__0__eq_H,axiom,
    ! [M,N_1] :
      ( zero_zero_nat = hAPP_nat_nat(minus_minus_nat(M),N_1)
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,M),N_1)) ) ).

fof(fact_937_le__refl,axiom,
    ! [N_1] : hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,N_1),N_1)) ).

fof(fact_542_comm__semiring__1__class_Onormalizing__semiring__rules_I32_J,axiom,
    ! [X_10] : one_one_nat = hAPP_nat_nat(power_power_nat(X_10),zero_zero_nat) ).

fof(fact_432_less__special_I3_J,axiom,
    ! [X_2] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,X_2),pls))
    <=> hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_real,number267125858f_real(X_2)),zero_zero_real)) ) ).

fof(fact_1090_MultInv__zcong__prop2,axiom,
    ! [A,J_1,K_1,P_1] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,number_number_of_int(bit0(bit1(pls)))),P_1))
     => ( hBOOL(hAPP_int_bool(zprime,P_1))
       => ( ( ( hBOOL(hAPP_int_bool(zcong(K_1,hAPP_int_int(times_times_int(A),multInv(P_1,J_1))),P_1))
             <= hBOOL(hAPP_int_bool(zcong(J_1,hAPP_int_int(times_times_int(A),multInv(P_1,K_1))),P_1)) )
           <= ~ hBOOL(hAPP_int_bool(zcong(J_1,zero_zero_int),P_1)) )
         <= ~ hBOOL(hAPP_int_bool(zcong(K_1,zero_zero_int),P_1)) ) ) ) ).

fof(fact_451_power2__less__0,axiom,
    ! [A_68] : ~ hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_real,hAPP_nat_real(power_power_real(A_68),number_number_of_nat(bit0(bit1(pls))))),zero_zero_real)) ).

fof(fact_728_add__diff__add,axiom,
    ! [A_43,C_21,B_40,D_7] : hAPP_int_int(plus_plus_int(hAPP_int_int(minus_minus_int(A_43),B_40)),hAPP_int_int(minus_minus_int(C_21),D_7)) = hAPP_int_int(minus_minus_int(hAPP_int_int(plus_plus_int(A_43),C_21)),hAPP_int_int(plus_plus_int(B_40),D_7)) ).

fof(fact_64_rel__simps_I17_J,axiom,
    ! [K,L_1] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,bit1(K)),bit1(L_1)))
    <=> hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,K),L_1)) ) ).

fof(fact_786_comm__mult__left__mono,axiom,
    ! [C_10,A_26,B_24] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,A_26),B_24))
     => ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,zero_zero_nat),C_10))
       => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(times_times_nat(C_10),A_26)),hAPP_nat_nat(times_times_nat(C_10),B_24))) ) ) ).

fof(fact_1069_norR__mem__unique__aux,axiom,
    ! [A,B] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,A),hAPP_int_int(minus_minus_int(B),one_one_int)))
     => hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,A),B)) ) ).

fof(fact_77_add__nat__number__of,axiom,
    ! [V_6,V] :
      ( ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,V),pls))
       => number_number_of_nat(V_6) = hAPP_nat_nat(plus_plus_nat(number_number_of_nat(V)),number_number_of_nat(V_6)) )
      & ( ~ hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,V),pls))
       => ( ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,V_6),pls))
           => number_number_of_nat(V) = hAPP_nat_nat(plus_plus_nat(number_number_of_nat(V)),number_number_of_nat(V_6)) )
          & ( hAPP_nat_nat(plus_plus_nat(number_number_of_nat(V)),number_number_of_nat(V_6)) = number_number_of_nat(hAPP_int_int(plus_plus_int(V),V_6))
           <= ~ hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,V_6),pls)) ) ) ) ) ).

fof(fact_768_nat__power__eq__0__iff,axiom,
    ! [Ma,N] :
      ( zero_zero_nat = hAPP_nat_nat(power_power_nat(Ma),N)
    <=> ( zero_zero_nat != N
        & Ma = zero_zero_nat ) ) ).

fof(fact_932_diff__add__inverse2,axiom,
    ! [M,N_1] : hAPP_nat_nat(minus_minus_nat(hAPP_nat_nat(plus_plus_nat(M),N_1)),N_1) = M ).

fof(fact_664_zpower__zdvd__prop2,axiom,
    ! [Y_1,N_1,P_1] :
      ( hBOOL(hAPP_int_bool(zprime,P_1))
     => ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,zero_zero_nat),N_1))
         => hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(dvd_dvd_int,P_1),Y_1)) )
       <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(dvd_dvd_int,P_1),hAPP_nat_int(power_power_int(Y_1),N_1))) ) ) ).

fof(fact_1123_gcd__lcm__complete__lattice__nat_Onot__less__bot,axiom,
    ! [A] :
      ~ ( ~ hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,one_one_nat),A))
        & hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,A),one_one_nat)) ) ).

fof(fact_989_less__or__eq__imp__le,axiom,
    ! [M,N_1] :
      ( ( M = N_1
        | hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,M),N_1)) )
     => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,M),N_1)) ) ).

fof(fact_582_power__eq__0__iff__number__of,axiom,
    ! [A_2,W_1] :
      ( ( number_number_of_nat(W_1) != zero_zero_nat
        & A_2 = zero_zero_real )
    <=> zero_zero_real = hAPP_nat_real(power_power_real(A_2),number_number_of_nat(W_1)) ) ).

fof(fact_748_dvd__triv__right,axiom,
    ! [A_36,B_33] : hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,A_36),hAPP_nat_nat(times_times_nat(B_33),A_36))) ).

fof(fact_811_zero__le__mult__iff,axiom,
    ! [A_2,B_2] :
      ( ( ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,zero_zero_int),B_2))
          & hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,zero_zero_int),A_2)) )
        | ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,B_2),zero_zero_int))
          & hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,A_2),zero_zero_int)) ) )
    <=> hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,zero_zero_int),hAPP_int_int(times_times_int(A_2),B_2))) ) ).

fof(fact_97_comm__semiring__1__class_Onormalizing__semiring__rules_I14_J,axiom,
    ! [Lx_4,Ly_2,Rx_4,Ry_2] : hAPP_int_int(times_times_int(hAPP_int_int(times_times_int(Lx_4),Ly_2)),hAPP_int_int(times_times_int(Rx_4),Ry_2)) = hAPP_int_int(times_times_int(Lx_4),hAPP_int_int(times_times_int(Ly_2),hAPP_int_int(times_times_int(Rx_4),Ry_2))) ).

fof(fact_186_comm__semiring__1__class_Onormalizing__semiring__rules_I12_J,axiom,
    ! [A_100] : hAPP_nat_nat(times_times_nat(A_100),one_one_nat) = A_100 ).

fof(fact_200_Bit0__Pls,axiom,
    bit0(pls) = pls ).

fof(fact_188_comm__semiring__1__class_Onormalizing__semiring__rules_I11_J,axiom,
    ! [A_99] :
      ( is_int(A_99)
     => A_99 = hAPP_int_int(times_times_int(one_one_int),A_99) ) ).

fof(fact_1007_le__diff__conv,axiom,
    ! [J_2,K,I_2] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,J_2),hAPP_nat_nat(plus_plus_nat(I_2),K)))
    <=> hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(minus_minus_nat(J_2),K)),I_2)) ) ).

fof(fact_523_rel__simps_I45_J,axiom,
    ! [K_1] : min != bit0(K_1) ).

fof(fact_999_trans__le__add1,axiom,
    ! [M,I_1,J_1] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,I_1),J_1))
     => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,I_1),hAPP_nat_nat(plus_plus_nat(J_1),M))) ) ).

fof(gsy_v_s1____,axiom,
    is_int(s1) ).

fof(fact_890_less__not__refl2,axiom,
    ! [N_1,M] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,N_1),M))
     => M != N_1 ) ).

fof(fact_837_zero__less__mult__pos,axiom,
    ! [A_9,B_8] :
      ( hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_real,zero_zero_real),hAPP_real_real(times_times_real(A_9),B_8)))
     => ( hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_real,zero_zero_real),B_8))
       <= hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_real,zero_zero_real),A_9)) ) ) ).

fof(fact_534_rel__simps_I30_J,axiom,
    ! [K] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,bit1(K)),min))
    <=> hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,K),min)) ) ).

fof(fact_864_real__mult__order,axiom,
    ! [Y_1,X_1] :
      ( ( hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_real,zero_zero_real),hAPP_real_real(times_times_real(X_1),Y_1)))
       <= hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_real,zero_zero_real),Y_1)) )
     <= hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_real,zero_zero_real),X_1)) ) ).

fof(fact_1148_zpower__zmod,axiom,
    ! [X_1,M,Y_1] : hAPP_int_int(div_mod_int(hAPP_nat_int(power_power_int(hAPP_int_int(div_mod_int(X_1),M)),Y_1)),M) = hAPP_int_int(div_mod_int(hAPP_nat_int(power_power_int(X_1),Y_1)),M) ).

fof(fact_860_nat__mult__dvd__cancel__disj_H,axiom,
    ! [Ma,K,N] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,hAPP_nat_nat(times_times_nat(Ma),K)),hAPP_nat_nat(times_times_nat(N),K)))
    <=> ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,Ma),N))
        | K = zero_zero_nat ) ) ).

fof(fact_131_comm__semiring__1__class_Onormalizing__semiring__rules_I22_J,axiom,
    ! [A_105,C_31,D_9] : hAPP_real_real(plus_plus_real(A_105),hAPP_real_real(plus_plus_real(C_31),D_9)) = hAPP_real_real(plus_plus_real(C_31),hAPP_real_real(plus_plus_real(A_105),D_9)) ).

fof(fact_828_mult__neg__neg,axiom,
    ! [B_11,A_12] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,A_12),zero_zero_int))
     => ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,B_11),zero_zero_int))
       => hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,zero_zero_int),hAPP_int_int(times_times_int(A_12),B_11))) ) ) ).

fof(help_fconj_3_1_U,axiom,
    ! [P,Q] :
      ( hBOOL(Q)
      | ~ hBOOL(hAPP_bool_bool(hAPP_b589554111l_bool(fconj,P),Q)) ) ).

fof(fact_675_real__le__eq__diff,axiom,
    ! [X_2,Y_2] :
      ( hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_eq_real,X_2),Y_2))
    <=> hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_eq_real,hAPP_real_real(minus_minus_real(X_2),Y_2)),zero_zero_real)) ) ).

fof(fact_1074_aux______3,axiom,
    ! [J_1,K_1,A,P_1] :
      ( hBOOL(hAPP_int_bool(zcong(hAPP_int_int(times_times_int(hAPP_int_int(times_times_int(multInv(P_1,J_1)),J_1)),K_1),hAPP_int_int(times_times_int(multInv(P_1,J_1)),A)),P_1))
     <= hBOOL(hAPP_int_bool(zcong(hAPP_int_int(times_times_int(J_1),K_1),A),P_1)) ) ).

fof(fact_208_zmult__1,axiom,
    ! [Z] :
      ( hAPP_int_int(times_times_int(one_one_int),Z) = Z
     <= is_int(Z) ) ).

fof(fact_484_zero__le__even__power_H,axiom,
    ! [A_63,N_13] : hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,zero_zero_int),hAPP_nat_int(power_power_int(A_63),hAPP_nat_nat(times_times_nat(number_number_of_nat(bit0(bit1(pls)))),N_13)))) ).

fof(fact_497_power__less__imp__less__exp,axiom,
    ! [M_3,N_9,A_60] :
      ( ( hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_real,hAPP_nat_real(power_power_real(A_60),M_3)),hAPP_nat_real(power_power_real(A_60),N_9)))
       => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,M_3),N_9)) )
     <= hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_real,one_one_real),A_60)) ) ).

fof(fact_214_semiring__mult__number__of,axiom,
    ! [V_20,V_19] :
      ( ( number_number_of_nat(hAPP_int_int(times_times_int(V_19),V_20)) = hAPP_nat_nat(times_times_nat(number_number_of_nat(V_19)),number_number_of_nat(V_20))
       <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,pls),V_20)) )
     <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,pls),V_19)) ) ).

fof(fact_759_dvd__diff,axiom,
    ! [Z_2,X_3,Y_3] :
      ( hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(dvd_dvd_real,X_3),Y_3))
     => ( hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(dvd_dvd_real,X_3),hAPP_real_real(minus_minus_real(Y_3),Z_2)))
       <= hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(dvd_dvd_real,X_3),Z_2)) ) ) ).

fof(fact_402_int__0__less__1,axiom,
    hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,zero_zero_int),one_one_int)) ).

fof(fact_979_add__less__mono1,axiom,
    ! [K_1,I_1,J_1] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,I_1),J_1))
     => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,hAPP_nat_nat(plus_plus_nat(I_1),K_1)),hAPP_nat_nat(plus_plus_nat(J_1),K_1))) ) ).

fof(fact_750_dvd__triv__left,axiom,
    ! [A_35,B_32] : hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(dvd_dvd_real,A_35),hAPP_real_real(times_times_real(A_35),B_32))) ).

fof(fact_1081_MultInv__prop1,axiom,
    ! [X_1,Y_1,P_1] :
      ( ( hBOOL(hAPP_int_bool(zcong(multInv(P_1,X_1),multInv(P_1,Y_1)),P_1))
       <= hBOOL(hAPP_int_bool(zcong(X_1,Y_1),P_1)) )
     <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,number_number_of_int(bit0(bit1(pls)))),P_1)) ) ).

fof(fact_888_nat__less__cases,axiom,
    ! [P_2,Ma,N] :
      ( ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(P_2,N),Ma))
         <= N = Ma )
       => ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(P_2,N),Ma))
           <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,N),Ma)) )
         => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(P_2,N),Ma)) ) )
     <= ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(P_2,N),Ma))
       <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,Ma),N)) ) ) ).

fof(fact_1188_mod__less__eq__dividend,axiom,
    ! [M,N_1] : hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(div_mod_nat(M),N_1)),M)) ).

fof(fact_626_diff__bin__simps_I3_J,axiom,
    ! [L] : bit0(hAPP_int_int(minus_minus_int(pls),L)) = hAPP_int_int(minus_minus_int(pls),bit0(L)) ).

fof(fact_116_comm__semiring__1__class_Onormalizing__semiring__rules_I20_J,axiom,
    ! [A_110,B_62,C_35,D_11] : hAPP_nat_nat(plus_plus_nat(hAPP_nat_nat(plus_plus_nat(A_110),C_35)),hAPP_nat_nat(plus_plus_nat(B_62),D_11)) = hAPP_nat_nat(plus_plus_nat(hAPP_nat_nat(plus_plus_nat(A_110),B_62)),hAPP_nat_nat(plus_plus_nat(C_35),D_11)) ).

fof(fact_974_not__add__less1,axiom,
    ! [I_1,J_1] : ~ hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,hAPP_nat_nat(plus_plus_nat(I_1),J_1)),I_1)) ).

fof(fact_20_comm__semiring__1__class_Onormalizing__semiring__rules_I29_J,axiom,
    ! [X_26] : hAPP_real_real(times_times_real(X_26),X_26) = hAPP_nat_real(power_power_real(X_26),number_number_of_nat(bit0(bit1(pls)))) ).

fof(fact_30_add__special_I3_J,axiom,
    ! [V_21] : number_number_of_int(hAPP_int_int(plus_plus_int(V_21),bit1(pls))) = hAPP_int_int(plus_plus_int(number_number_of_int(V_21)),one_one_int) ).

fof(fact_964_diff__add__0,axiom,
    ! [N_1,M] : hAPP_nat_nat(minus_minus_nat(N_1),hAPP_nat_nat(plus_plus_nat(N_1),M)) = zero_zero_nat ).

fof(fact_431_less__special_I3_J,axiom,
    ! [X_2] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,number_number_of_int(X_2)),zero_zero_int))
    <=> hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,X_2),pls)) ) ).

fof(fact_1084_MultInv__prop5,axiom,
    ! [Y_1,X_1,P_1] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,number_number_of_int(bit0(bit1(pls)))),P_1))
     => ( hBOOL(hAPP_int_bool(zprime,P_1))
       => ( ~ hBOOL(hAPP_int_bool(zcong(X_1,zero_zero_int),P_1))
         => ( ~ hBOOL(hAPP_int_bool(zcong(Y_1,zero_zero_int),P_1))
           => ( hBOOL(hAPP_int_bool(zcong(X_1,Y_1),P_1))
             <= hBOOL(hAPP_int_bool(zcong(multInv(P_1,X_1),multInv(P_1,Y_1)),P_1)) ) ) ) ) ) ).

fof(help_COMBS_1_1_COMBS_000tc__Int__Oint_000tc__HOL__Obool_000tc__HOL__Obool_U,axiom,
    ! [P,Q,R] : hAPP_bool_bool(hAPP_i68813070l_bool(P,R),hAPP_int_bool(Q,R)) = hAPP_int_bool(cOMBS_int_bool_bool(P,Q),R) ).

fof(fact_358_Pls__def,axiom,
    pls = zero_zero_int ).

fof(fact_393_number__of__Pls,axiom,
    zero_zero_int = number_number_of_int(pls) ).

fof(fact_1051_nat__mult__le__cancel1,axiom,
    ! [Ma,N,K] :
      ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,Ma),N))
      <=> hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(times_times_nat(K),Ma)),hAPP_nat_nat(times_times_nat(K),N))) )
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,zero_zero_nat),K)) ) ).

fof(fact_774_split__mult__pos__le,axiom,
    ! [B_29,A_31] :
      ( ( ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,B_29),zero_zero_int))
          & hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,A_31),zero_zero_int)) )
        | ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,zero_zero_int),B_29))
          & hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,zero_zero_int),A_31)) ) )
     => hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,zero_zero_int),hAPP_int_int(times_times_int(A_31),B_29))) ) ).

fof(fact_883_real__le__antisym,axiom,
    ! [Z,W] :
      ( hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_eq_real,Z),W))
     => ( W = Z
       <= hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_eq_real,W),Z)) ) ) ).

fof(fact_220_left__distrib__number__of,axiom,
    ! [A_98,B_57,V_16] : hAPP_int_int(times_times_int(hAPP_int_int(plus_plus_int(A_98),B_57)),number_number_of_int(V_16)) = hAPP_int_int(plus_plus_int(hAPP_int_int(times_times_int(A_98),number_number_of_int(V_16))),hAPP_int_int(times_times_int(B_57),number_number_of_int(V_16))) ).

fof(fact_669_realpow__two__sum__zero__iff,axiom,
    ! [X_2,Y_2] :
      ( zero_zero_real = hAPP_real_real(plus_plus_real(hAPP_nat_real(power_power_real(X_2),number_number_of_nat(bit0(bit1(pls))))),hAPP_nat_real(power_power_real(Y_2),number_number_of_nat(bit0(bit1(pls)))))
    <=> ( zero_zero_real = X_2
        & Y_2 = zero_zero_real ) ) ).

fof(fact_301_power__le__imp__le__exp,axiom,
    ! [M_9,N_36,A_88] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,one_one_nat),A_88))
     => ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(power_power_nat(A_88),M_9)),hAPP_nat_nat(power_power_nat(A_88),N_36)))
       => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,M_9),N_36)) ) ) ).

fof(fact_719_combine__common__factor,axiom,
    ! [A_46,E,B_42,C_23] : hAPP_nat_nat(plus_plus_nat(hAPP_nat_nat(times_times_nat(hAPP_nat_nat(plus_plus_nat(A_46),B_42)),E)),C_23) = hAPP_nat_nat(plus_plus_nat(hAPP_nat_nat(times_times_nat(A_46),E)),hAPP_nat_nat(plus_plus_nat(hAPP_nat_nat(times_times_nat(B_42),E)),C_23)) ).

fof(fact_249_number__of__add,axiom,
    ! [V_9,W_8] : hAPP_int_int(plus_plus_int(number_number_of_int(V_9)),number_number_of_int(W_8)) = number_number_of_int(hAPP_int_int(plus_plus_int(V_9),W_8)) ).

fof(fact_854_mult__less__cancel__right__disj,axiom,
    ! [A_2,C_2,B_2] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,hAPP_int_int(times_times_int(A_2),C_2)),hAPP_int_int(times_times_int(B_2),C_2)))
    <=> ( ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,B_2),A_2))
          & hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,C_2),zero_zero_int)) )
        | ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,zero_zero_int),C_2))
          & hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,A_2),B_2)) ) ) ) ).

fof(fact_164_less__special_I2_J,axiom,
    ! [Y_2] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,one_one_int),number_number_of_int(Y_2)))
    <=> hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,bit1(pls)),Y_2)) ) ).

fof(fact_1091_MultInv__zcong__prop3,axiom,
    ! [J_1,K_1,A,P_1] :
      ( ( hBOOL(hAPP_int_bool(zprime,P_1))
       => ( ( ( ~ hBOOL(hAPP_int_bool(zcong(J_1,zero_zero_int),P_1))
             => ( hBOOL(hAPP_int_bool(zcong(J_1,K_1),P_1))
               <= hBOOL(hAPP_int_bool(zcong(hAPP_int_int(times_times_int(A),multInv(P_1,J_1)),hAPP_int_int(times_times_int(A),multInv(P_1,K_1))),P_1)) ) )
           <= ~ hBOOL(hAPP_int_bool(zcong(K_1,zero_zero_int),P_1)) )
         <= ~ hBOOL(hAPP_int_bool(zcong(A,zero_zero_int),P_1)) ) )
     <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,number_number_of_int(bit0(bit1(pls)))),P_1)) ) ).

fof(fact_185_comm__semiring__1__class_Onormalizing__semiring__rules_I12_J,axiom,
    ! [A_100] :
      ( hAPP_int_int(times_times_int(A_100),one_one_int) = A_100
     <= is_int(A_100) ) ).

fof(fact_517_nat__power__less__imp__less,axiom,
    ! [M,N_1,I_1] :
      ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,M),N_1))
       <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,hAPP_nat_nat(power_power_nat(I_1),M)),hAPP_nat_nat(power_power_nat(I_1),N_1))) )
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,zero_zero_nat),I_1)) ) ).

fof(fact_980_add__less__mono,axiom,
    ! [K_1,L,I_1,J_1] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,I_1),J_1))
     => ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,K_1),L))
       => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,hAPP_nat_nat(plus_plus_nat(I_1),K_1)),hAPP_nat_nat(plus_plus_nat(J_1),L))) ) ) ).

fof(fact_1053_nat__diff__add__eq1,axiom,
    ! [U_1,M,N_1,J_1,I_1] :
      ( hAPP_nat_nat(minus_minus_nat(hAPP_nat_nat(plus_plus_nat(hAPP_nat_nat(times_times_nat(I_1),U_1)),M)),hAPP_nat_nat(plus_plus_nat(hAPP_nat_nat(times_times_nat(J_1),U_1)),N_1)) = hAPP_nat_nat(minus_minus_nat(hAPP_nat_nat(plus_plus_nat(hAPP_nat_nat(times_times_nat(hAPP_nat_nat(minus_minus_nat(I_1),J_1)),U_1)),M)),N_1)
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,J_1),I_1)) ) ).

fof(fact_1003_add__leD2,axiom,
    ! [M,K_1,N_1] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,K_1),N_1))
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(plus_plus_nat(M),K_1)),N_1)) ) ).

fof(fact_873_realpow__pos__nth__unique,axiom,
    ! [A,N_1] :
      ( ( hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_real,zero_zero_real),A))
       => ? [X] :
            ( ! [Y] :
                ( ( hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_real,zero_zero_real),Y))
                  & hAPP_nat_real(power_power_real(Y),N_1) = A )
               => X = Y )
            & hAPP_nat_real(power_power_real(X),N_1) = A
            & hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_real,zero_zero_real),X)) ) )
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,zero_zero_nat),N_1)) ) ).

fof(fact_5_t,axiom,
    hAPP_int_int(times_times_int(hAPP_int_int(plus_plus_int(hAPP_int_int(times_times_int(number_number_of_int(bit0(bit0(bit1(pls))))),m)),one_one_int)),t) = hAPP_int_int(plus_plus_int(hAPP_nat_int(power_power_int(s),number_number_of_nat(bit0(bit1(pls))))),one_one_int) ).

fof(fact_772_split__mult__neg__le,axiom,
    ! [B_30,A_32] :
      ( ( ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,B_30),zero_zero_int))
          & hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,zero_zero_int),A_32)) )
        | ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,zero_zero_int),B_30))
          & hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,A_32),zero_zero_int)) ) )
     => hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,hAPP_int_int(times_times_int(A_32),B_30)),zero_zero_int)) ) ).

fof(fact_736_dvdI,axiom,
    ! [A_40,B_37,K_3] :
      ( hAPP_nat_nat(times_times_nat(B_37),K_3) = A_40
     => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,B_37),A_40)) ) ).

fof(fact_10_power2__sum,axiom,
    ! [X_2,Y_2] : hAPP_nat_nat(plus_plus_nat(hAPP_nat_nat(plus_plus_nat(hAPP_nat_nat(power_power_nat(X_2),number_number_of_nat(bit0(bit1(pls))))),hAPP_nat_nat(power_power_nat(Y_2),number_number_of_nat(bit0(bit1(pls)))))),hAPP_nat_nat(times_times_nat(hAPP_nat_nat(times_times_nat(number_number_of_nat(bit0(bit1(pls)))),X_2)),Y_2)) = hAPP_nat_nat(power_power_nat(hAPP_nat_nat(plus_plus_nat(X_2),Y_2)),number_number_of_nat(bit0(bit1(pls)))) ).

fof(help_fconj_1_1_U,axiom,
    ! [Q,P] :
      ( hBOOL(hAPP_bool_bool(hAPP_b589554111l_bool(fconj,P),Q))
      | ~ hBOOL(Q)
      | ~ hBOOL(P) ) ).

fof(fact_594_zcong__zless__imp__eq,axiom,
    ! [B,M,A] :
      ( ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,zero_zero_int),A))
       => ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,A),M))
         => ( ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,B),M))
             => ( B = A
               <= hBOOL(hAPP_int_bool(zcong(A,B),M)) ) )
           <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,zero_zero_int),B)) ) ) )
     <= ( is_int(B)
        & is_int(A) ) ) ).

fof(fact_845_mult__pos__neg,axiom,
    ! [B_6,A_7] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,zero_zero_int),A_7))
     => ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,B_6),zero_zero_int))
       => hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,hAPP_int_int(times_times_int(A_7),B_6)),zero_zero_int)) ) ) ).

fof(fact_470_power__mult,axiom,
    ! [A_64,M_4,N_14] : hAPP_nat_real(power_power_real(hAPP_nat_real(power_power_real(A_64),M_4)),N_14) = hAPP_nat_real(power_power_real(A_64),hAPP_nat_nat(times_times_nat(M_4),N_14)) ).

fof(fact_498_power__less__imp__less__exp,axiom,
    ! [M_3,N_9,A_60] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,one_one_nat),A_60))
     => ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,M_3),N_9))
       <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,hAPP_nat_nat(power_power_nat(A_60),M_3)),hAPP_nat_nat(power_power_nat(A_60),N_9))) ) ) ).

fof(fact_902_dvd_Oless__imp__triv,axiom,
    ! [P_2,X_2,Y_2] :
      ( ( hBOOL(P_2)
       <= ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,Y_2),X_2))
          & ~ hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,X_2),Y_2)) ) )
     <= ( ~ hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,Y_2),X_2))
        & hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,X_2),Y_2)) ) ) ).

fof(fact_749_dvd__triv__right,axiom,
    ! [A_36,B_33] : hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(dvd_dvd_int,A_36),hAPP_int_int(times_times_int(B_33),A_36))) ).

fof(fact_538_rel__simps_I28_J,axiom,
    ! [K] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,K),min))
    <=> hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,bit0(K)),min)) ) ).

fof(fact_580_power__m1__even,axiom,
    ! [N_4] : one_one_real = hAPP_nat_real(power_power_real(number267125858f_real(min)),hAPP_nat_nat(times_times_nat(number_number_of_nat(bit0(bit1(pls)))),N_4)) ).

fof(fact_502_power__strict__increasing,axiom,
    ! [A_59,N_8,N_7] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,N_8),N_7))
     => ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,hAPP_nat_int(power_power_int(A_59),N_8)),hAPP_nat_int(power_power_int(A_59),N_7)))
       <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,one_one_int),A_59)) ) ) ).

fof(fact_1025_nat__mult__eq__1__iff,axiom,
    ! [Ma,N] :
      ( hAPP_nat_nat(times_times_nat(Ma),N) = one_one_nat
    <=> ( Ma = one_one_nat
        & one_one_nat = N ) ) ).

fof(fact_305_power__increasing__iff,axiom,
    ! [X_2,Y_2,B_2] :
      ( hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_real,one_one_real),B_2))
     => ( hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_eq_real,hAPP_nat_real(power_power_real(B_2),X_2)),hAPP_nat_real(power_power_real(B_2),Y_2)))
      <=> hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,X_2),Y_2)) ) ) ).

fof(fact_494_power__strict__increasing__iff,axiom,
    ! [X_2,Y_2,B_2] :
      ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,X_2),Y_2))
      <=> hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_real,hAPP_nat_real(power_power_real(B_2),X_2)),hAPP_nat_real(power_power_real(B_2),Y_2))) )
     <= hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(ord_less_real,one_one_real),B_2)) ) ).

fof(fact_1178_mod__less__divisor,axiom,
    ! [M,N_1] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,zero_zero_nat),N_1))
     => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,hAPP_nat_nat(div_mod_nat(M),N_1)),N_1)) ) ).

fof(fact_1190_StandardRes__prop3,axiom,
    ! [X_2,P_3] :
      ( zero_zero_int != standardRes(P_3,X_2)
    <=> ~ hBOOL(hAPP_int_bool(zcong(X_2,zero_zero_int),P_3)) ) ).

fof(fact_413_sum__squares__le__zero__iff,axiom,
    ! [X_2,Y_2] :
      ( ( ( Y_2 = zero_zero_int
          & zero_zero_int = X_2 )
      <=> hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,hAPP_int_int(plus_plus_int(hAPP_int_int(times_times_int(X_2),X_2)),hAPP_int_int(times_times_int(Y_2),Y_2))),zero_zero_int)) )
     <= ( is_int(Y_2)
        & is_int(X_2) ) ) ).

fof(fact_65_less__eq__int__code_I16_J,axiom,
    ! [K1,K2] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,K1),K2))
    <=> hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,bit1(K1)),bit1(K2))) ) ).

fof(fact_219_power2__ge__self,axiom,
    ! [X_1] : hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,X_1),hAPP_nat_int(power_power_int(X_1),number_number_of_nat(bit0(bit1(pls)))))) ).

fof(fact_33_one__add__one__is__two,axiom,
    number267125858f_real(bit0(bit1(pls))) = hAPP_real_real(plus_plus_real(one_one_real),one_one_real) ).

fof(fact_1061_imp__le__cong,axiom,
    ! [P_5,P_2,X_2] :
      ( ( ( hBOOL(P_2)
         <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,zero_zero_int),X_2)) )
      <=> ( hBOOL(P_5)
         <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,zero_zero_int),X_2)) ) )
     <= ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,zero_zero_int),X_2))
       => ( hBOOL(P_2)
        <=> hBOOL(P_5) ) ) ) ).

fof(fact_632_Euler_Oaux1,axiom,
    ! [A,X_1] :
      ( ( ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,X_1),A))
         => ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,X_1),hAPP_int_int(minus_minus_int(A),one_one_int)))
           <= X_1 != hAPP_int_int(minus_minus_int(A),one_one_int) ) )
       <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,zero_zero_int),X_1)) )
     <= is_int(X_1) ) ).

fof(fact_836_zero__less__mult__pos2,axiom,
    ! [B_9,A_10] :
      ( ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,zero_zero_int),A_10))
       => hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,zero_zero_int),B_9)) )
     <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,zero_zero_int),hAPP_int_int(times_times_int(B_9),A_10))) ) ).

fof(fact_524_rel__simps_I42_J,axiom,
    ! [L] : min != bit0(L) ).

fof(fact_852_mult__less__cancel__left__disj,axiom,
    ! [C_2,A_2,B_2] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,hAPP_int_int(times_times_int(C_2),A_2)),hAPP_int_int(times_times_int(C_2),B_2)))
    <=> ( ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,zero_zero_int),C_2))
          & hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,A_2),B_2)) )
        | ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,B_2),A_2))
          & hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,C_2),zero_zero_int)) ) ) ) ).

fof(fact_1097_wset__inv__mem__mem,axiom,
    ! [B_2,A_2,P_3] :
      ( ( ( ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,one_one_int),B_2))
           => ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,B_2),hAPP_int_int(minus_minus_int(P_3),one_one_int)))
             => ( hBOOL(member_int(inv(P_3,B_2),wset(A_2,P_3)))
               => hBOOL(member_int(B_2,wset(A_2,P_3))) ) ) )
         <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,A_2),hAPP_int_int(minus_minus_int(P_3),one_one_int))) )
       <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,number_number_of_int(bit1(bit0(bit1(pls))))),P_3)) )
     <= hBOOL(hAPP_int_bool(zprime,P_3)) ) ).

fof(fact_1088_aux______4,axiom,
    ! [K_1,A,J_1,P_1] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,number_number_of_int(bit0(bit1(pls)))),P_1))
     => ( hBOOL(hAPP_int_bool(zprime,P_1))
       => ( ( hBOOL(hAPP_int_bool(zcong(K_1,hAPP_int_int(times_times_int(A),multInv(P_1,J_1))),P_1))
           <= hBOOL(hAPP_int_bool(zcong(hAPP_int_int(times_times_int(hAPP_int_int(times_times_int(multInv(P_1,J_1)),J_1)),K_1),hAPP_int_int(times_times_int(multInv(P_1,J_1)),A)),P_1)) )
         <= ~ hBOOL(hAPP_int_bool(zcong(J_1,zero_zero_int),P_1)) ) ) ) ).

fof(fact_251_add__Bit1__Bit0,axiom,
    ! [K_1,L] : hAPP_int_int(plus_plus_int(bit1(K_1)),bit0(L)) = bit1(hAPP_int_int(plus_plus_int(K_1),L)) ).

fof(fact_940_le__trans,axiom,
    ! [K_1,I_1,J_1] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,I_1),J_1))
     => ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,I_1),K_1))
       <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,J_1),K_1)) ) ) ).

fof(fact_996_le__add1,axiom,
    ! [N_1,M] : hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,N_1),hAPP_nat_nat(plus_plus_nat(N_1),M))) ).

fof(fact_447_power2__le__imp__le,axiom,
    ! [X_15,Y_12] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,hAPP_nat_int(power_power_int(X_15),number_number_of_nat(bit0(bit1(pls))))),hAPP_nat_int(power_power_int(Y_12),number_number_of_nat(bit0(bit1(pls))))))
     => ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,X_15),Y_12))
       <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,zero_zero_int),Y_12)) ) ) ).

fof(fact_1089_aux______2,axiom,
    ! [J_1,A,K_1,P_1] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,number_number_of_int(bit0(bit1(pls)))),P_1))
     => ( hBOOL(hAPP_int_bool(zprime,P_1))
       => ( ~ hBOOL(hAPP_int_bool(zcong(K_1,zero_zero_int),P_1))
         => ( hBOOL(hAPP_int_bool(zcong(hAPP_int_int(times_times_int(J_1),K_1),A),P_1))
           <= hBOOL(hAPP_int_bool(zcong(hAPP_int_int(times_times_int(J_1),K_1),hAPP_int_int(times_times_int(hAPP_int_int(times_times_int(A),multInv(P_1,K_1))),K_1)),P_1)) ) ) ) ) ).

fof(fact_706_mult__zero__right,axiom,
    ! [A_48] : zero_zero_real = hAPP_real_real(times_times_real(A_48),zero_zero_real) ).

fof(fact_941_le__antisym,axiom,
    ! [M,N_1] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,M),N_1))
     => ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,N_1),M))
       => M = N_1 ) ) ).

fof(fact_1115_d22set__mem,axiom,
    ! [A_2,B_2] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,one_one_int),B_2))
     => ( hBOOL(member_int(B_2,d22set(A_2)))
       <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,B_2),A_2)) ) ) ).

fof(fact_981_less__add__eq__less,axiom,
    ! [M,N_1,K_1,L] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,K_1),L))
     => ( hAPP_nat_nat(plus_plus_nat(M),L) = hAPP_nat_nat(plus_plus_nat(K_1),N_1)
       => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,M),N_1)) ) ) ).

fof(fact_57_comm__semiring__1__class_Onormalizing__semiring__rules_I26_J,axiom,
    ! [X_22,P_6,Q_6] : hAPP_nat_real(power_power_real(X_22),hAPP_nat_nat(plus_plus_nat(P_6),Q_6)) = hAPP_real_real(times_times_real(hAPP_nat_real(power_power_real(X_22),P_6)),hAPP_nat_real(power_power_real(X_22),Q_6)) ).

fof(fact_549_rel__simps_I25_J,axiom,
    ! [K] :
      ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,min),bit0(K)))
    <=> hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,min),K)) ) ).

fof(fact_987_less__imp__le__nat,axiom,
    ! [M,N_1] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,M),N_1))
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,M),N_1)) ) ).

fof(fact_320_power__le__dvd,axiom,
    ! [M_6,A_86,N_33,B_55] :
      ( hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(dvd_dvd_real,hAPP_nat_real(power_power_real(A_86),N_33)),B_55))
     => ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,M_6),N_33))
       => hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(dvd_dvd_real,hAPP_nat_real(power_power_real(A_86),M_6)),B_55)) ) ) ).

fof(fact_1001_add__le__mono1,axiom,
    ! [K_1,I_1,J_1] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(plus_plus_nat(I_1),K_1)),hAPP_nat_nat(plus_plus_nat(J_1),K_1)))
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,I_1),J_1)) ) ).

fof(fact_623_left__diff__distrib__number__of,axiom,
    ! [A_55,B_46,V_3] : hAPP_int_int(minus_minus_int(hAPP_int_int(times_times_int(A_55),number_number_of_int(V_3))),hAPP_int_int(times_times_int(B_46),number_number_of_int(V_3))) = hAPP_int_int(times_times_int(hAPP_int_int(minus_minus_int(A_55),B_46)),number_number_of_int(V_3)) ).

fof(fact_926_dvd__diff__nat,axiom,
    ! [N_1,K_1,M] :
      ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,K_1),hAPP_nat_nat(minus_minus_nat(M),N_1)))
       <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,K_1),N_1)) )
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(dvd_dvd_nat,K_1),M)) ) ).

fof(fact_984_less__diff__conv,axiom,
    ! [I_2,J_2,K] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,I_2),hAPP_nat_nat(minus_minus_nat(J_2),K)))
    <=> hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,hAPP_nat_nat(plus_plus_nat(I_2),K)),J_2)) ) ).

fof(fact_96_comm__semiring__1__class_Onormalizing__semiring__rules_I15_J,axiom,
    ! [Lx_5,Ly_3,Rx_5,Ry_3] : hAPP_real_real(times_times_real(hAPP_real_real(times_times_real(Lx_5),Ly_3)),hAPP_real_real(times_times_real(Rx_5),Ry_3)) = hAPP_real_real(times_times_real(Rx_5),hAPP_real_real(times_times_real(hAPP_real_real(times_times_real(Lx_5),Ly_3)),Ry_3)) ).

fof(fact_34__096_B_Bthesis_O_A_I_B_Bt_O_As_A_094_A2_A_L_A1_A_061_A_I4_A_K_Am_A_L_A1_,axiom,
    ~ ! [T_1] :
        ( hAPP_int_int(times_times_int(hAPP_int_int(plus_plus_int(hAPP_int_int(times_times_int(number_number_of_int(bit0(bit0(bit1(pls))))),m)),one_one_int)),T_1) != hAPP_int_int(plus_plus_int(hAPP_nat_int(power_power_int(s),number_number_of_nat(bit0(bit1(pls))))),one_one_int)
       <= is_int(T_1) ) ).

fof(fact_178_comm__semiring__1__class_Onormalizing__semiring__rules_I8_J,axiom,
    ! [A_101,B_58,C_29] : hAPP_real_real(plus_plus_real(hAPP_real_real(times_times_real(A_101),C_29)),hAPP_real_real(times_times_real(B_58),C_29)) = hAPP_real_real(times_times_real(hAPP_real_real(plus_plus_real(A_101),B_58)),C_29) ).

fof(fact_1103_wset__mem,axiom,
    ! [B_2,A_2,P_3] :
      ( ( hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,A_2),hAPP_int_int(minus_minus_int(P_3),one_one_int)))
       => ( ( hBOOL(member_int(B_2,wset(A_2,P_3)))
           <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_eq_int,B_2),A_2)) )
         <= hBOOL(hAPP_int_bool(hAPP_i1948725293t_bool(ord_less_int,one_one_int),B_2)) ) )
     <= hBOOL(hAPP_int_bool(zprime,P_3)) ) ).

fof(fact_990_less__diff__iff,axiom,
    ! [N,K,Ma] :
      ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,K),N))
       => ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,hAPP_nat_nat(minus_minus_nat(Ma),K)),hAPP_nat_nat(minus_minus_nat(N),K)))
        <=> hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,Ma),N)) ) )
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,K),Ma)) ) ).

fof(fact_678_dvd__refl,axiom,
    ! [A_52] : hBOOL(hAPP_real_bool(hAPP_r1134773055l_bool(dvd_dvd_real,A_52),A_52)) ).

