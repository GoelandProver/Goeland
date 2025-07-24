fof(fact_51_rel__simps_I34_J,axiom,
    ! [K,L] :
      ( ord_less_eq_int(K,L)
    <=> ord_less_eq_int(bit1(K),bit1(L)) ) ).

fof(fact_10_power2__sum,axiom,
    ! [X_2,Y_2] : plus_plus_int(plus_plus_int(power_power_int(X_2,number_number_of_nat(bit0(bit1(pls)))),power_power_int(Y_2,number_number_of_nat(bit0(bit1(pls))))),times_times_int(times_times_int(number_number_of_int(bit0(bit1(pls))),X_2),Y_2)) = power_power_int(plus_plus_int(X_2,Y_2),number_number_of_nat(bit0(bit1(pls)))) ).

fof(fact_99_comm__semiring__1__class_Onormalizing__semiring__rules_I25_J,axiom,
    ! [A_2,C_2,D_1] : plus_plus_nat(plus_plus_nat(A_2,C_2),D_1) = plus_plus_nat(A_2,plus_plus_nat(C_2,D_1)) ).

fof(fact_60_zadd__strict__right__mono,axiom,
    ! [K_1,I,J] :
      ( ord_less_int(plus_plus_int(I,K_1),plus_plus_int(J,K_1))
     <= ord_less_int(I,J) ) ).

fof(fact_102_comm__semiring__1__class_Onormalizing__semiring__rules_I24_J,axiom,
    ! [A,C] : plus_plus_int(C,A) = plus_plus_int(A,C) ).

fof(fact_121_less__eq__int__code_I14_J,axiom,
    ! [K1,K2] :
      ( ord_less_eq_int(K1,K2)
    <=> ord_less_eq_int(bit0(K1),bit1(K2)) ) ).

fof(fact_104_eq__number__of,axiom,
    ! [X_2,Y_2] :
      ( X_2 = Y_2
    <=> number_number_of_int(X_2) = number_number_of_int(Y_2) ) ).

fof(fact_67_less__eq__int__code_I15_J,axiom,
    ! [K1,K2] :
      ( ord_less_int(K1,K2)
    <=> ord_less_eq_int(bit1(K1),bit0(K2)) ) ).

fof(fact_56_less__eq__int__code_I13_J,axiom,
    ! [K1,K2] :
      ( ord_less_eq_int(K1,K2)
    <=> ord_less_eq_int(bit0(K1),bit0(K2)) ) ).

fof(fact_114_zadd__commute,axiom,
    ! [Z,W] : plus_plus_int(Z,W) = plus_plus_int(W,Z) ).

fof(fact_110_zmult__commute,axiom,
    ! [Z,W] : times_times_int(W,Z) = times_times_int(Z,W) ).

fof(fact_74_zprime__2,axiom,
    zprime(number_number_of_int(bit0(bit1(pls)))) ).

fof(fact_15_one__power2,axiom,
    one_one_int = power_power_int(one_one_int,number_number_of_nat(bit0(bit1(pls)))) ).

fof(fact_18_power2__eq__square,axiom,
    ! [A_7] : power_power_int(A_7,number_number_of_nat(bit0(bit1(pls)))) = times_times_int(A_7,A_7) ).

fof(fact_116_less__int__code_I15_J,axiom,
    ! [K1,K2] :
      ( ord_less_int(bit1(K1),bit0(K2))
    <=> ord_less_int(K1,K2) ) ).

fof(fact_61_zadd__left__mono,axiom,
    ! [K_1,I,J] :
      ( ord_less_eq_int(plus_plus_int(K_1,I),plus_plus_int(K_1,J))
     <= ord_less_eq_int(I,J) ) ).

fof(fact_64_Numeral1__eq1__nat,axiom,
    one_one_nat = number_number_of_nat(bit1(pls)) ).

fof(fact_103_comm__semiring__1__class_Onormalizing__semiring__rules_I24_J,axiom,
    ! [A,C] : plus_plus_nat(C,A) = plus_plus_nat(A,C) ).

fof(fact_8_zadd__power3,axiom,
    ! [A_8,B_4] : plus_plus_int(plus_plus_int(plus_plus_int(power_power_int(A_8,number_number_of_nat(bit1(bit1(pls)))),times_times_int(times_times_int(number_number_of_int(bit1(bit1(pls))),power_power_int(A_8,number_number_of_nat(bit0(bit1(pls))))),B_4)),times_times_int(times_times_int(number_number_of_int(bit1(bit1(pls))),A_8),power_power_int(B_4,number_number_of_nat(bit0(bit1(pls)))))),power_power_int(B_4,number_number_of_nat(bit1(bit1(pls))))) = power_power_int(plus_plus_int(A_8,B_4),number_number_of_nat(bit1(bit1(pls)))) ).

fof(fact_100_comm__semiring__1__class_Onormalizing__semiring__rules_I22_J,axiom,
    ! [A_1,C_1,D] : plus_plus_int(C_1,plus_plus_int(A_1,D)) = plus_plus_int(A_1,plus_plus_int(C_1,D)) ).

fof(fact_106_number__of__reorient,axiom,
    ! [W_1,X_2] :
      ( number_number_of_int(W_1) = X_2
    <=> X_2 = number_number_of_int(W_1) ) ).

fof(fact_25__096_B_Bthesis_O_A_I_B_Bt_O_As_A_094_A2_A_L_A1_A_061_A_I4_A_K_Am_A_L_A1_,axiom,
    ~ ! [T] : plus_plus_int(power_power_int(s,number_number_of_nat(bit0(bit1(pls)))),one_one_int) != times_times_int(plus_plus_int(times_times_int(number_number_of_int(bit0(bit0(bit1(pls)))),m),one_one_int),T) ).

fof(fact_45_nat__mult__2,axiom,
    ! [Z] : plus_plus_nat(Z,Z) = times_times_nat(number_number_of_nat(bit0(bit1(pls))),Z) ).

fof(fact_23_add__special_I3_J,axiom,
    ! [V_3] : number_number_of_int(plus_plus_int(V_3,bit1(pls))) = plus_plus_int(number_number_of_int(V_3),one_one_int) ).

fof(fact_112_zadd__assoc,axiom,
    ! [Z1,Z2,Z3] : plus_plus_int(Z1,plus_plus_int(Z2,Z3)) = plus_plus_int(plus_plus_int(Z1,Z2),Z3) ).

fof(fact_7_zadd__power2,axiom,
    ! [A_8,B_4] : plus_plus_int(plus_plus_int(power_power_int(A_8,number_number_of_nat(bit0(bit1(pls)))),times_times_int(times_times_int(number_number_of_int(bit0(bit1(pls))),A_8),B_4)),power_power_int(B_4,number_number_of_nat(bit0(bit1(pls))))) = power_power_int(plus_plus_int(A_8,B_4),number_number_of_nat(bit0(bit1(pls)))) ).

fof(fact_80_comm__semiring__1__class_Onormalizing__semiring__rules_I14_J,axiom,
    ! [Lx_4,Ly_2,Rx_4,Ry_2] : times_times_int(Lx_4,times_times_int(Ly_2,times_times_int(Rx_4,Ry_2))) = times_times_int(times_times_int(Lx_4,Ly_2),times_times_int(Rx_4,Ry_2)) ).

fof(fact_109_zmult__assoc,axiom,
    ! [Z1,Z2,Z3] : times_times_int(Z1,times_times_int(Z2,Z3)) = times_times_int(times_times_int(Z1,Z2),Z3) ).

fof(fact_76_comm__semiring__1__class_Onormalizing__semiring__rules_I13_J,axiom,
    ! [Lx_6,Ly_4,Rx_6,Ry_4] : times_times_int(times_times_int(Lx_6,Ly_4),times_times_int(Rx_6,Ry_4)) = times_times_int(times_times_int(Lx_6,Rx_6),times_times_int(Ly_4,Ry_4)) ).

fof(fact_119_rel__simps_I4_J,axiom,
    ! [K] :
      ( ord_less_int(pls,bit0(K))
    <=> ord_less_int(pls,K) ) ).

fof(fact_5_t,axiom,
    plus_plus_int(power_power_int(s,number_number_of_nat(bit0(bit1(pls)))),one_one_int) = times_times_int(plus_plus_int(times_times_int(number_number_of_int(bit0(bit0(bit1(pls)))),m),one_one_int),t) ).

fof(fact_69_less__int__code_I14_J,axiom,
    ! [K1,K2] :
      ( ord_less_eq_int(K1,K2)
    <=> ord_less_int(bit0(K1),bit1(K2)) ) ).

fof(fact_118_rel__simps_I10_J,axiom,
    ! [K] :
      ( ord_less_int(K,pls)
    <=> ord_less_int(bit0(K),pls) ) ).

fof(fact_50_less__eq__int__code_I16_J,axiom,
    ! [K1,K2] :
      ( ord_less_eq_int(K1,K2)
    <=> ord_less_eq_int(bit1(K1),bit1(K2)) ) ).

fof(fact_93_comm__semiring__1__class_Onormalizing__semiring__rules_I20_J,axiom,
    ! [A_5,B_2,C_5,D_2] : plus_plus_nat(plus_plus_nat(A_5,B_2),plus_plus_nat(C_5,D_2)) = plus_plus_nat(plus_plus_nat(A_5,C_5),plus_plus_nat(B_2,D_2)) ).

fof(fact_36_zpower__zpower,axiom,
    ! [X_1,Y_1,Z] : power_power_int(X_1,times_times_nat(Y_1,Z)) = power_power_int(power_power_int(X_1,Y_1),Z) ).

fof(fact_44_zpower__zadd__distrib,axiom,
    ! [X_1,Y_1,Z] : power_power_int(X_1,plus_plus_nat(Y_1,Z)) = times_times_int(power_power_int(X_1,Y_1),power_power_int(X_1,Z)) ).

fof(fact_108_rel__simps_I48_J,axiom,
    ! [K,L] :
      ( K = L
    <=> bit0(L) = bit0(K) ) ).

fof(fact_92_comm__semiring__1__class_Onormalizing__semiring__rules_I20_J,axiom,
    ! [A_5,B_2,C_5,D_2] : plus_plus_int(plus_plus_int(A_5,B_2),plus_plus_int(C_5,D_2)) = plus_plus_int(plus_plus_int(A_5,C_5),plus_plus_int(B_2,D_2)) ).

fof(fact_2__0961_A_060_At_A_061_061_062_AEX_Ax_Ay_O_Ax_A_094_A2_A_L_Ay_A_094_A2_A_06,axiom,
    ( ? [X,Y] : plus_plus_int(times_times_int(number_number_of_int(bit0(bit0(bit1(pls)))),m),one_one_int) = plus_plus_int(power_power_int(X,number_number_of_nat(bit0(bit1(pls)))),power_power_int(Y,number_number_of_nat(bit0(bit1(pls)))))
   <= ord_less_int(one_one_int,t) ) ).

fof(fact_39_less__number__of,axiom,
    ! [X_2,Y_2] :
      ( ord_less_int(X_2,Y_2)
    <=> ord_less_int(number_number_of_int(X_2),number_number_of_int(Y_2)) ) ).

fof(fact_81_comm__semiring__1__class_Onormalizing__semiring__rules_I14_J,axiom,
    ! [Lx_4,Ly_2,Rx_4,Ry_2] : times_times_nat(times_times_nat(Lx_4,Ly_2),times_times_nat(Rx_4,Ry_2)) = times_times_nat(Lx_4,times_times_nat(Ly_2,times_times_nat(Rx_4,Ry_2))) ).

fof(fact_48_less__int__code_I16_J,axiom,
    ! [K1,K2] :
      ( ord_less_int(bit1(K1),bit1(K2))
    <=> ord_less_int(K1,K2) ) ).

fof(fact_82_comm__semiring__1__class_Onormalizing__semiring__rules_I16_J,axiom,
    ! [Lx_3,Ly_1,Rx_3] : times_times_int(times_times_int(Lx_3,Ly_1),Rx_3) = times_times_int(times_times_int(Lx_3,Rx_3),Ly_1) ).

fof(fact_65_rel__simps_I29_J,axiom,
    ! [K] :
      ( ord_less_eq_int(bit1(K),pls)
    <=> ord_less_int(K,pls) ) ).

fof(fact_68_rel__simps_I33_J,axiom,
    ! [K,L] :
      ( ord_less_int(K,L)
    <=> ord_less_eq_int(bit1(K),bit0(L)) ) ).

fof(fact_53_less__int__code_I13_J,axiom,
    ! [K1,K2] :
      ( ord_less_int(K1,K2)
    <=> ord_less_int(bit0(K1),bit0(K2)) ) ).

fof(fact_95_comm__semiring__1__class_Onormalizing__semiring__rules_I23_J,axiom,
    ! [A_4,B_1,C_4] : plus_plus_nat(plus_plus_nat(A_4,B_1),C_4) = plus_plus_nat(plus_plus_nat(A_4,C_4),B_1) ).

fof(fact_91_comm__semiring__1__class_Onormalizing__semiring__rules_I7_J,axiom,
    ! [A_6,B_3] : times_times_nat(B_3,A_6) = times_times_nat(A_6,B_3) ).

fof(fact_43_comm__semiring__1__class_Onormalizing__semiring__rules_I26_J,axiom,
    ! [X_3,P,Q] : power_power_nat(X_3,plus_plus_nat(P,Q)) = times_times_nat(power_power_nat(X_3,P),power_power_nat(X_3,Q)) ).

fof(fact_71_zless__imp__add1__zle,axiom,
    ! [W,Z] :
      ( ord_less_eq_int(plus_plus_int(W,one_one_int),Z)
     <= ord_less_int(W,Z) ) ).

fof(fact_17_comm__semiring__1__class_Onormalizing__semiring__rules_I29_J,axiom,
    ! [X_7] : times_times_nat(X_7,X_7) = power_power_nat(X_7,number_number_of_nat(bit0(bit1(pls)))) ).

fof(fact_57_rel__simps_I31_J,axiom,
    ! [K,L] :
      ( ord_less_eq_int(bit0(K),bit0(L))
    <=> ord_less_eq_int(K,L) ) ).

fof(fact_83_comm__semiring__1__class_Onormalizing__semiring__rules_I16_J,axiom,
    ! [Lx_3,Ly_1,Rx_3] : times_times_nat(times_times_nat(Lx_3,Ly_1),Rx_3) = times_times_nat(times_times_nat(Lx_3,Rx_3),Ly_1) ).

fof(fact_88_comm__semiring__1__class_Onormalizing__semiring__rules_I19_J,axiom,
    ! [Lx,Rx,Ry] : times_times_int(Rx,times_times_int(Lx,Ry)) = times_times_int(Lx,times_times_int(Rx,Ry)) ).

fof(fact_33_comm__semiring__1__class_Onormalizing__semiring__rules_I31_J,axiom,
    ! [X_5,P_1,Q_1] : power_power_nat(X_5,times_times_nat(P_1,Q_1)) = power_power_nat(power_power_nat(X_5,P_1),Q_1) ).

fof(fact_37_le__number__of__eq__not__less,axiom,
    ! [V_2,W_1] :
      ( ord_less_eq_nat(number_number_of_nat(V_2),number_number_of_nat(W_1))
    <=> ~ ord_less_nat(number_number_of_nat(W_1),number_number_of_nat(V_2)) ) ).

fof(fact_66_rel__simps_I5_J,axiom,
    ! [K] :
      ( ord_less_eq_int(pls,K)
    <=> ord_less_int(pls,bit1(K)) ) ).

fof(fact_84_comm__semiring__1__class_Onormalizing__semiring__rules_I17_J,axiom,
    ! [Lx_2,Ly,Rx_2] : times_times_int(Lx_2,times_times_int(Ly,Rx_2)) = times_times_int(times_times_int(Lx_2,Ly),Rx_2) ).

fof(fact_58_less__number__of__int__code,axiom,
    ! [K,L] :
      ( ord_less_int(number_number_of_int(K),number_number_of_int(L))
    <=> ord_less_int(K,L) ) ).

fof(fact_14_one__power2,axiom,
    power_power_nat(one_one_nat,number_number_of_nat(bit0(bit1(pls)))) = one_one_nat ).

fof(fact_9_power2__sum,axiom,
    ! [X_2,Y_2] : plus_plus_nat(plus_plus_nat(power_power_nat(X_2,number_number_of_nat(bit0(bit1(pls)))),power_power_nat(Y_2,number_number_of_nat(bit0(bit1(pls))))),times_times_nat(times_times_nat(number_number_of_nat(bit0(bit1(pls))),X_2),Y_2)) = power_power_nat(plus_plus_nat(X_2,Y_2),number_number_of_nat(bit0(bit1(pls)))) ).

fof(fact_3_t__l__p,axiom,
    ord_less_int(t,plus_plus_int(times_times_int(number_number_of_int(bit0(bit0(bit1(pls)))),m),one_one_int)) ).

fof(fact_35_comm__semiring__1__class_Onormalizing__semiring__rules_I33_J,axiom,
    ! [X_4] : power_power_nat(X_4,one_one_nat) = X_4 ).

fof(fact_31_zle__antisym,axiom,
    ! [Z,W] :
      ( ( Z = W
       <= ord_less_eq_int(W,Z) )
     <= ord_less_eq_int(Z,W) ) ).

fof(fact_75_is__mult__sum2sq,axiom,
    ! [Y_1,X_1] :
      ( twoSqu526106917sum2sq(X_1)
     => ( twoSqu526106917sum2sq(Y_1)
       => twoSqu526106917sum2sq(times_times_int(X_1,Y_1)) ) ) ).

fof(fact_0_tpos,axiom,
    ord_less_eq_int(one_one_int,t) ).

fof(fact_59_less__eq__number__of__int__code,axiom,
    ! [K,L] :
      ( ord_less_eq_int(K,L)
    <=> ord_less_eq_int(number_number_of_int(K),number_number_of_int(L)) ) ).

fof(fact_38_le__number__of__eq__not__less,axiom,
    ! [V_2,W_1] :
      ( ord_less_eq_int(number_number_of_int(V_2),number_number_of_int(W_1))
    <=> ~ ord_less_int(number_number_of_int(W_1),number_number_of_int(V_2)) ) ).

fof(fact_41_zadd__zless__mono,axiom,
    ! [Z_2,Z,W_2,W] :
      ( ord_less_int(W_2,W)
     => ( ord_less_eq_int(Z_2,Z)
       => ord_less_int(plus_plus_int(W_2,Z_2),plus_plus_int(W,Z)) ) ) ).

fof(fact_46_nat__mult__2__right,axiom,
    ! [Z] : times_times_nat(Z,number_number_of_nat(bit0(bit1(pls)))) = plus_plus_nat(Z,Z) ).

fof(fact_97_comm__semiring__1__class_Onormalizing__semiring__rules_I21_J,axiom,
    ! [A_3,B,C_3] : plus_plus_nat(plus_plus_nat(A_3,B),C_3) = plus_plus_nat(A_3,plus_plus_nat(B,C_3)) ).

fof(fact_42_comm__semiring__1__class_Onormalizing__semiring__rules_I26_J,axiom,
    ! [X_3,P,Q] : power_power_int(X_3,plus_plus_nat(P,Q)) = times_times_int(power_power_int(X_3,P),power_power_int(X_3,Q)) ).

fof(fact_24_one__add__one__is__two,axiom,
    plus_plus_int(one_one_int,one_one_int) = number_number_of_int(bit0(bit1(pls))) ).

fof(fact_98_comm__semiring__1__class_Onormalizing__semiring__rules_I25_J,axiom,
    ! [A_2,C_2,D_1] : plus_plus_int(plus_plus_int(A_2,C_2),D_1) = plus_plus_int(A_2,plus_plus_int(C_2,D_1)) ).

fof(fact_12_power2__eq__square__number__of,axiom,
    ! [W_4] : power_power_nat(number_number_of_nat(W_4),number_number_of_nat(bit0(bit1(pls)))) = times_times_nat(number_number_of_nat(W_4),number_number_of_nat(W_4)) ).

fof(fact_94_comm__semiring__1__class_Onormalizing__semiring__rules_I23_J,axiom,
    ! [A_4,B_1,C_4] : plus_plus_int(plus_plus_int(A_4,B_1),C_4) = plus_plus_int(plus_plus_int(A_4,C_4),B_1) ).

fof(fact_105_number__of__reorient,axiom,
    ! [W_1,X_2] :
      ( number_number_of_nat(W_1) = X_2
    <=> X_2 = number_number_of_nat(W_1) ) ).

fof(fact_13_cube__square,axiom,
    ! [A_8] : power_power_int(A_8,number_number_of_nat(bit1(bit1(pls)))) = times_times_int(A_8,power_power_int(A_8,number_number_of_nat(bit0(bit1(pls))))) ).

fof(fact_62_add__nat__number__of,axiom,
    ! [V_1,V] :
      ( ( ~ ord_less_int(V,pls)
       => ( ( ~ ord_less_int(V_1,pls)
           => plus_plus_nat(number_number_of_nat(V),number_number_of_nat(V_1)) = number_number_of_nat(plus_plus_int(V,V_1)) )
          & ( ord_less_int(V_1,pls)
           => number_number_of_nat(V) = plus_plus_nat(number_number_of_nat(V),number_number_of_nat(V_1)) ) ) )
      & ( number_number_of_nat(V_1) = plus_plus_nat(number_number_of_nat(V),number_number_of_nat(V_1))
       <= ord_less_int(V,pls) ) ) ).

fof(fact_11_power2__eq__square__number__of,axiom,
    ! [W_4] : power_power_int(number_number_of_int(W_4),number_number_of_nat(bit0(bit1(pls)))) = times_times_int(number_number_of_int(W_4),number_number_of_int(W_4)) ).

fof(fact_30_zle__trans,axiom,
    ! [K_1,I,J] :
      ( ( ord_less_eq_int(J,K_1)
       => ord_less_eq_int(I,K_1) )
     <= ord_less_eq_int(I,J) ) ).

fof(fact_77_comm__semiring__1__class_Onormalizing__semiring__rules_I13_J,axiom,
    ! [Lx_6,Ly_4,Rx_6,Ry_4] : times_times_nat(times_times_nat(Lx_6,Ly_4),times_times_nat(Rx_6,Ry_4)) = times_times_nat(times_times_nat(Lx_6,Rx_6),times_times_nat(Ly_4,Ry_4)) ).

fof(fact_28_zless__le,axiom,
    ! [Z_1,W_1] :
      ( ord_less_int(Z_1,W_1)
    <=> ( W_1 != Z_1
        & ord_less_eq_int(Z_1,W_1) ) ) ).

fof(fact_26_zle__refl,axiom,
    ! [W] : ord_less_eq_int(W,W) ).

fof(fact_63_nat__numeral__1__eq__1,axiom,
    number_number_of_nat(bit1(pls)) = one_one_nat ).

fof(fact_70_rel__simps_I15_J,axiom,
    ! [K,L] :
      ( ord_less_eq_int(K,L)
    <=> ord_less_int(bit0(K),bit1(L)) ) ).

fof(fact_78_comm__semiring__1__class_Onormalizing__semiring__rules_I15_J,axiom,
    ! [Lx_5,Ly_3,Rx_5,Ry_3] : times_times_int(times_times_int(Lx_5,Ly_3),times_times_int(Rx_5,Ry_3)) = times_times_int(Rx_5,times_times_int(times_times_int(Lx_5,Ly_3),Ry_3)) ).

fof(fact_111_number__of__is__id,axiom,
    ! [K_1] : K_1 = number_number_of_int(K_1) ).

fof(fact_79_comm__semiring__1__class_Onormalizing__semiring__rules_I15_J,axiom,
    ! [Lx_5,Ly_3,Rx_5,Ry_3] : times_times_nat(times_times_nat(Lx_5,Ly_3),times_times_nat(Rx_5,Ry_3)) = times_times_nat(Rx_5,times_times_nat(times_times_nat(Lx_5,Ly_3),Ry_3)) ).

fof(fact_89_comm__semiring__1__class_Onormalizing__semiring__rules_I19_J,axiom,
    ! [Lx,Rx,Ry] : times_times_nat(Lx,times_times_nat(Rx,Ry)) = times_times_nat(Rx,times_times_nat(Lx,Ry)) ).

fof(fact_117_rel__simps_I16_J,axiom,
    ! [K,L] :
      ( ord_less_int(bit1(K),bit0(L))
    <=> ord_less_int(K,L) ) ).

fof(fact_22_add__special_I2_J,axiom,
    ! [W_3] : plus_plus_int(one_one_int,number_number_of_int(W_3)) = number_number_of_int(plus_plus_int(bit1(pls),W_3)) ).

fof(fact_27_zle__linear,axiom,
    ! [Z,W] :
      ( ord_less_eq_int(Z,W)
      | ord_less_eq_int(W,Z) ) ).

fof(fact_107_rel__simps_I51_J,axiom,
    ! [K,L] :
      ( L = K
    <=> bit1(K) = bit1(L) ) ).

fof(fact_34_comm__semiring__1__class_Onormalizing__semiring__rules_I33_J,axiom,
    ! [X_4] : X_4 = power_power_int(X_4,one_one_nat) ).

fof(fact_73_zle__add1__eq__le,axiom,
    ! [W_1,Z_1] :
      ( ord_less_int(W_1,plus_plus_int(Z_1,one_one_int))
    <=> ord_less_eq_int(W_1,Z_1) ) ).

fof(fact_20_comm__semiring__1__class_Onormalizing__semiring__rules_I36_J,axiom,
    ! [X_6,N] : power_power_int(X_6,times_times_nat(number_number_of_nat(bit0(bit1(pls))),N)) = times_times_int(power_power_int(X_6,N),power_power_int(X_6,N)) ).

fof(fact_52_rel__simps_I2_J,axiom,
    ~ ord_less_int(pls,pls) ).

fof(fact_101_comm__semiring__1__class_Onormalizing__semiring__rules_I22_J,axiom,
    ! [A_1,C_1,D] : plus_plus_nat(A_1,plus_plus_nat(C_1,D)) = plus_plus_nat(C_1,plus_plus_nat(A_1,D)) ).

fof(fact_47_nat__1__add__1,axiom,
    plus_plus_nat(one_one_nat,one_one_nat) = number_number_of_nat(bit0(bit1(pls))) ).

fof(fact_113_zadd__left__commute,axiom,
    ! [X_1,Y_1,Z] : plus_plus_int(Y_1,plus_plus_int(X_1,Z)) = plus_plus_int(X_1,plus_plus_int(Y_1,Z)) ).

fof(fact_54_rel__simps_I14_J,axiom,
    ! [K,L] :
      ( ord_less_int(bit0(K),bit0(L))
    <=> ord_less_int(K,L) ) ).

fof(fact_1__096t_A_061_A1_A_061_061_062_AEX_Ax_Ay_O_Ax_A_094_A2_A_L_Ay_A_094_A2_A_06,axiom,
    ( ? [X,Y] : plus_plus_int(power_power_int(X,number_number_of_nat(bit0(bit1(pls)))),power_power_int(Y,number_number_of_nat(bit0(bit1(pls))))) = plus_plus_int(times_times_int(number_number_of_int(bit0(bit0(bit1(pls)))),m),one_one_int)
   <= t = one_one_int ) ).

fof(conj_0,conjecture,
    ? [X,Y] : plus_plus_int(power_power_int(X,number_number_of_nat(bit0(bit1(pls)))),power_power_int(Y,number_number_of_nat(bit0(bit1(pls))))) = plus_plus_int(times_times_int(number_number_of_int(bit0(bit0(bit1(pls)))),m),one_one_int) ).

fof(fact_115_rel__simps_I12_J,axiom,
    ! [K] :
      ( ord_less_int(K,pls)
    <=> ord_less_int(bit1(K),pls) ) ).

fof(fact_6_qf1pt,axiom,
    twoSqu526106917sum2sq(times_times_int(plus_plus_int(times_times_int(number_number_of_int(bit0(bit0(bit1(pls)))),m),one_one_int),t)) ).

fof(fact_96_comm__semiring__1__class_Onormalizing__semiring__rules_I21_J,axiom,
    ! [A_3,B,C_3] : plus_plus_int(plus_plus_int(A_3,B),C_3) = plus_plus_int(A_3,plus_plus_int(B,C_3)) ).

fof(fact_87_comm__semiring__1__class_Onormalizing__semiring__rules_I18_J,axiom,
    ! [Lx_1,Rx_1,Ry_1] : times_times_nat(Lx_1,times_times_nat(Rx_1,Ry_1)) = times_times_nat(times_times_nat(Lx_1,Rx_1),Ry_1) ).

fof(fact_72_add1__zle__eq,axiom,
    ! [W_1,Z_1] :
      ( ord_less_eq_int(plus_plus_int(W_1,one_one_int),Z_1)
    <=> ord_less_int(W_1,Z_1) ) ).

fof(fact_32_comm__semiring__1__class_Onormalizing__semiring__rules_I31_J,axiom,
    ! [X_5,P_1,Q_1] : power_power_int(power_power_int(X_5,P_1),Q_1) = power_power_int(X_5,times_times_nat(P_1,Q_1)) ).

fof(fact_55_rel__simps_I19_J,axiom,
    ord_less_eq_int(pls,pls) ).

fof(fact_29_zless__linear,axiom,
    ! [X_1,Y_1] :
      ( ord_less_int(X_1,Y_1)
      | ord_less_int(Y_1,X_1)
      | Y_1 = X_1 ) ).

fof(fact_19_power2__eq__square,axiom,
    ! [A_7] : times_times_nat(A_7,A_7) = power_power_nat(A_7,number_number_of_nat(bit0(bit1(pls)))) ).

fof(fact_86_comm__semiring__1__class_Onormalizing__semiring__rules_I18_J,axiom,
    ! [Lx_1,Rx_1,Ry_1] : times_times_int(times_times_int(Lx_1,Rx_1),Ry_1) = times_times_int(Lx_1,times_times_int(Rx_1,Ry_1)) ).

fof(fact_40_le__number__of,axiom,
    ! [X_2,Y_2] :
      ( ord_less_eq_int(X_2,Y_2)
    <=> ord_less_eq_int(number_number_of_int(X_2),number_number_of_int(Y_2)) ) ).

fof(fact_90_comm__semiring__1__class_Onormalizing__semiring__rules_I7_J,axiom,
    ! [A_6,B_3] : times_times_int(A_6,B_3) = times_times_int(B_3,A_6) ).

fof(fact_49_rel__simps_I17_J,axiom,
    ! [K,L] :
      ( ord_less_int(K,L)
    <=> ord_less_int(bit1(K),bit1(L)) ) ).

fof(fact_21_comm__semiring__1__class_Onormalizing__semiring__rules_I36_J,axiom,
    ! [X_6,N] : times_times_nat(power_power_nat(X_6,N),power_power_nat(X_6,N)) = power_power_nat(X_6,times_times_nat(number_number_of_nat(bit0(bit1(pls))),N)) ).

fof(fact_122_rel__simps_I32_J,axiom,
    ! [K,L] :
      ( ord_less_eq_int(bit0(K),bit1(L))
    <=> ord_less_eq_int(K,L) ) ).

fof(fact_16_comm__semiring__1__class_Onormalizing__semiring__rules_I29_J,axiom,
    ! [X_7] : power_power_int(X_7,number_number_of_nat(bit0(bit1(pls)))) = times_times_int(X_7,X_7) ).

fof(fact_4_p,axiom,
    zprime(plus_plus_int(times_times_int(number_number_of_int(bit0(bit0(bit1(pls)))),m),one_one_int)) ).

fof(fact_120_rel__simps_I22_J,axiom,
    ! [K] :
      ( ord_less_eq_int(pls,K)
    <=> ord_less_eq_int(pls,bit1(K)) ) ).

fof(fact_85_comm__semiring__1__class_Onormalizing__semiring__rules_I17_J,axiom,
    ! [Lx_2,Ly,Rx_2] : times_times_nat(times_times_nat(Lx_2,Ly),Rx_2) = times_times_nat(Lx_2,times_times_nat(Ly,Rx_2)) ).

