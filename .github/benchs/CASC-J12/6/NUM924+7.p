fof(tsy_c_Groups_Otimes__class_Otimes_1_arg1,axiom,
    ! [B_1_1,X_a] :
      ( power(X_a)
     => times_times(X_a,ti(X_a,B_1_1)) = times_times(X_a,B_1_1) ) ).

fof(fact_219_comm__semiring__1__class_Onormalizing__semiring__rules_I7_J,axiom,
    ! [X_a] :
      ( ! [A_1,B] : hAPP(X_a,X_a,times_times(X_a,B),A_1) = hAPP(X_a,X_a,times_times(X_a,A_1),B)
     <= comm_semiring_1(X_a) ) ).

fof(fact_945_mod__mult__self2__is__0,axiom,
    ! [X_a] :
      ( ! [A_1,B] : hAPP(X_a,X_a,div_mod(X_a,hAPP(X_a,X_a,times_times(X_a,A_1),B)),B) = zero_zero(X_a)
     <= semiring_div(X_a) ) ).

fof(arity_Int_Oint___Rings_Oordered__cancel__semiring,axiom,
    ordere453448008miring(int) ).

fof(arity_Int_Oint___Rings_Oidom,axiom,
    idom(int) ).

fof(fact_361_split__mult__neg__le,axiom,
    ! [X_a] :
      ( ! [B,A_1] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(X_a,X_a,times_times(X_a,A_1),B)),zero_zero(X_a)))
         <= ( ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),zero_zero(X_a)),A_1))
              & hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),B),zero_zero(X_a))) )
            | ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),zero_zero(X_a)),B))
              & hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),A_1),zero_zero(X_a))) ) ) )
     <= ordere453448008miring(X_a) ) ).

fof(arity_Int_Oint___Rings_Olinordered__ring__strict,axiom,
    linord581940658strict(int) ).

fof(fact_173_semiring__norm_I110_J,axiom,
    ! [X_a] :
      ( number_ring(X_a)
     => one_one(X_a) = number_number_of(X_a,bit1(pls)) ) ).

fof(fact_84_zle__add1__eq__le,axiom,
    ! [W_1,Z_2] :
      ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),W_1),hAPP(int,int,plus_plus(int,Z_2),one_one(int))))
    <=> hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),W_1),Z_2)) ) ).

fof(tsy_c_COMBB_res,axiom,
    ! [X_a,X_c,X_b,B_1_1,B_2_1] : combb(X_b,X_c,X_a,B_1_1,B_2_1) = ti(fun(X_a,X_c),combb(X_b,X_c,X_a,B_1_1,B_2_1)) ).

fof(tsy_c_IntFact_Od22set_arg1,axiom,
    ! [B_1_1] : d22set(ti(int,B_1_1)) = d22set(B_1_1) ).

fof(fact_540_real__zero__not__eq__one,axiom,
    zero_zero(real) != one_one(real) ).

fof(arity_Int_Oint___Rings_Osemiring__0,axiom,
    semiring_0(int) ).

fof(fact_797_diff__add__cancel,axiom,
    ! [X_a] :
      ( group_add(X_a)
     => ! [A_1,B] : hAPP(X_a,X_a,plus_plus(X_a,hAPP(X_a,X_a,minus_minus(X_a,A_1),B)),B) = ti(X_a,A_1) ) ).

fof(fact_64_less__number__of__int__code,axiom,
    ! [K,L] :
      ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),K),L))
    <=> hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),number_number_of(int,K)),number_number_of(int,L))) ) ).

fof(fact_698_nat__0__less__mult__iff,axiom,
    ! [Ma,N] :
      ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),zero_zero(nat)),hAPP(nat,nat,times_times(nat,Ma),N)))
    <=> ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),zero_zero(nat)),Ma))
        & hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),zero_zero(nat)),N)) ) ) ).

fof(fact_835_MultInvPair__distinct,axiom,
    ! [J_1,A_1,P_3] :
      ( ( ( ~ hBOOL(hAPP(int,bool,zcong(A_1,zero_zero(int)),P_3))
         => ( ( ~ hBOOL(hAPP(int,bool,quadRes(P_3),A_1))
             => ~ hBOOL(hAPP(int,bool,zcong(J_1,hAPP(int,int,times_times(int,A_1),multInv(P_3,J_1))),P_3)) )
           <= ~ hBOOL(hAPP(int,bool,zcong(J_1,zero_zero(int)),P_3)) ) )
       <= hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),number_number_of(int,bit0(bit1(pls)))),P_3)) )
     <= hBOOL(hAPP(int,bool,zprime,P_3)) ) ).

fof(fact_492_add__number__of__diff1,axiom,
    ! [X_a] :
      ( number_ring(X_a)
     => ! [V,W,C] : hAPP(X_a,X_a,plus_plus(X_a,number_number_of(X_a,V)),hAPP(X_a,X_a,minus_minus(X_a,number_number_of(X_a,W)),C)) = hAPP(X_a,X_a,minus_minus(X_a,number_number_of(X_a,hAPP(int,int,plus_plus(int,V),W))),C) ) ).

fof(fact_837_aux______1,axiom,
    ! [J_1,A_1,P_3,K_1] :
      ( hBOOL(hAPP(int,bool,zcong(hAPP(int,int,times_times(int,J_1),K_1),hAPP(int,int,times_times(int,hAPP(int,int,times_times(int,A_1),multInv(P_3,K_1))),K_1)),P_3))
     <= hBOOL(hAPP(int,bool,zcong(J_1,hAPP(int,int,times_times(int,A_1),multInv(P_3,K_1))),P_3)) ) ).

fof(fact_485_less__bin__lemma,axiom,
    ! [K,L] :
      ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),K),L))
    <=> hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),hAPP(int,int,minus_minus(int,K),L)),zero_zero(int))) ) ).

fof(fact_274_pos2,axiom,
    hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),zero_zero(nat)),number_number_of(nat,bit0(bit1(pls))))) ).

fof(arity_Int_Oint___Int_Onumber__ring,axiom,
    number_ring(int) ).

fof(arity_Int_Oint___Groups_Omonoid__mult,axiom,
    monoid_mult(int) ).

fof(arity_RealDef_Oreal___Groups_Oordered__cancel__ab__semigroup__add,axiom,
    ordere223160158up_add(real) ).

fof(fact_292_rel__simps_I3_J,axiom,
    ~ hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),pls),min)) ).

fof(arity_Int_Oint___Rings_Osemiring__1,axiom,
    semiring_1(int) ).

fof(arity_RealDef_Oreal___RealVector_Oreal__normed__algebra,axiom,
    real_normed_algebra(real) ).

fof(fact_847_MultInv__zcong__prop3,axiom,
    ! [J_1,K_1,A_1,P_3] :
      ( ( hBOOL(hAPP(int,bool,zprime,P_3))
       => ( ~ hBOOL(hAPP(int,bool,zcong(A_1,zero_zero(int)),P_3))
         => ( ~ hBOOL(hAPP(int,bool,zcong(K_1,zero_zero(int)),P_3))
           => ( ~ hBOOL(hAPP(int,bool,zcong(J_1,zero_zero(int)),P_3))
             => ( hBOOL(hAPP(int,bool,zcong(hAPP(int,int,times_times(int,A_1),multInv(P_3,J_1)),hAPP(int,int,times_times(int,A_1),multInv(P_3,K_1))),P_3))
               => hBOOL(hAPP(int,bool,zcong(J_1,K_1),P_3)) ) ) ) ) )
     <= hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),number_number_of(int,bit0(bit1(pls)))),P_3)) ) ).

fof(fact_163_int__0__less__1,axiom,
    hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),zero_zero(int)),one_one(int))) ).

fof(fact_244_comm__semiring__1__class_Onormalizing__semiring__rules_I11_J,axiom,
    ! [X_a] :
      ( ! [A_1] : hAPP(X_a,X_a,times_times(X_a,one_one(X_a)),A_1) = ti(X_a,A_1)
     <= comm_semiring_1(X_a) ) ).

fof(fact_503_power2__diff,axiom,
    ! [X_a] :
      ( ! [X_1,Y] : hAPP(X_a,X_a,minus_minus(X_a,hAPP(X_a,X_a,plus_plus(X_a,hAPP(nat,X_a,power_power(X_a,X_1),number_number_of(nat,bit0(bit1(pls))))),hAPP(nat,X_a,power_power(X_a,Y),number_number_of(nat,bit0(bit1(pls)))))),hAPP(X_a,X_a,times_times(X_a,hAPP(X_a,X_a,times_times(X_a,number_number_of(X_a,bit0(bit1(pls)))),X_1)),Y)) = hAPP(nat,X_a,power_power(X_a,hAPP(X_a,X_a,minus_minus(X_a,X_1),Y)),number_number_of(nat,bit0(bit1(pls))))
     <= number_ring(X_a) ) ).

fof(fact_610_diff__mult__distrib2,axiom,
    ! [K_1,M,N_1] : hAPP(nat,nat,times_times(nat,K_1),hAPP(nat,nat,minus_minus(nat,M),N_1)) = hAPP(nat,nat,minus_minus(nat,hAPP(nat,nat,times_times(nat,K_1),M)),hAPP(nat,nat,times_times(nat,K_1),N_1)) ).

fof(tsy_c_Groups_Ominus__class_Ominus_1_res,axiom,
    ! [B_1_1] : minus_minus(nat,B_1_1) = ti(fun(nat,nat),minus_minus(nat,B_1_1)) ).

fof(fact_889_mult__right_Ozero,axiom,
    ! [X_a] :
      ( real_normed_algebra(X_a)
     => ! [X_1] : hAPP(X_a,X_a,times_times(X_a,X_1),zero_zero(X_a)) = zero_zero(X_a) ) ).

fof(fact_841_MultInv__prop5,axiom,
    ! [Y,X_1,P_3] :
      ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),number_number_of(int,bit0(bit1(pls)))),P_3))
     => ( ( ~ hBOOL(hAPP(int,bool,zcong(X_1,zero_zero(int)),P_3))
         => ( ~ hBOOL(hAPP(int,bool,zcong(Y,zero_zero(int)),P_3))
           => ( hBOOL(hAPP(int,bool,zcong(X_1,Y),P_3))
             <= hBOOL(hAPP(int,bool,zcong(multInv(P_3,X_1),multInv(P_3,Y)),P_3)) ) ) )
       <= hBOOL(hAPP(int,bool,zprime,P_3)) ) ) ).

fof(fact_785_add__less__imp__less__left,axiom,
    ! [X_a] :
      ( ! [C,A_1,B] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),A_1),B))
         <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),hAPP(X_a,X_a,plus_plus(X_a,C),A_1)),hAPP(X_a,X_a,plus_plus(X_a,C),B))) )
     <= ordere236663937imp_le(X_a) ) ).

fof(fact_675_le__add__diff__inverse2,axiom,
    ! [N_1,M] :
      ( hAPP(nat,nat,plus_plus(nat,hAPP(nat,nat,minus_minus(nat,M),N_1)),N_1) = M
     <= hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),N_1),M)) ) ).

fof(fact_725_real__le__antisym,axiom,
    ! [Z_1,W] :
      ( hBOOL(hAPP(real,bool,hAPP(real,fun(real,bool),ord_less_eq(real),Z_1),W))
     => ( hBOOL(hAPP(real,bool,hAPP(real,fun(real,bool),ord_less_eq(real),W),Z_1))
       => Z_1 = W ) ) ).

fof(fact_123_less__int__code_I16_J,axiom,
    ! [K1,K2] :
      ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),K1),K2))
    <=> hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),bit1(K1)),bit1(K2))) ) ).

fof(arity_Int_Oint___Int_Onumber__semiring,axiom,
    number_semiring(int) ).

fof(fact_680_add__mult__distrib2,axiom,
    ! [K_1,M,N_1] : hAPP(nat,nat,times_times(nat,K_1),hAPP(nat,nat,plus_plus(nat,M),N_1)) = hAPP(nat,nat,plus_plus(nat,hAPP(nat,nat,times_times(nat,K_1),M)),hAPP(nat,nat,times_times(nat,K_1),N_1)) ).

fof(fact_133_zadd__0__right,axiom,
    ! [Z_1] : hAPP(int,int,plus_plus(int,Z_1),zero_zero(int)) = ti(int,Z_1) ).

fof(fact_290_rel__simps_I13_J,axiom,
    ! [K] :
      ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),K),min))
    <=> hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),bit1(K)),min)) ) ).

fof(fact_366_mult__right__mono__neg,axiom,
    ! [X_a] :
      ( ! [C,B,A_1] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),B),A_1))
         => ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),C),zero_zero(X_a)))
           => hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(X_a,X_a,times_times(X_a,A_1),C)),hAPP(X_a,X_a,times_times(X_a,B),C))) ) )
     <= ordered_ring(X_a) ) ).

fof(fact_537_minus__nat_Odiff__0,axiom,
    ! [M] : hAPP(nat,nat,minus_minus(nat,M),zero_zero(nat)) = M ).

fof(fact_174_odd__less__0,axiom,
    ! [Z_2] :
      ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),hAPP(int,int,plus_plus(int,hAPP(int,int,plus_plus(int,one_one(int)),Z_2)),Z_2)),zero_zero(int)))
    <=> hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),Z_2),zero_zero(int))) ) ).

fof(fact_318_mult__zero__right,axiom,
    ! [X_a] :
      ( ! [A_1] : zero_zero(X_a) = hAPP(X_a,X_a,times_times(X_a,A_1),zero_zero(X_a))
     <= mult_zero(X_a) ) ).

fof(fact_253_comm__semiring__1__class_Onormalizing__semiring__rules_I3_J,axiom,
    ! [X_a] :
      ( comm_semiring_1(X_a)
     => ! [M,A_1] : hAPP(X_a,X_a,plus_plus(X_a,M),hAPP(X_a,X_a,times_times(X_a,A_1),M)) = hAPP(X_a,X_a,times_times(X_a,hAPP(X_a,X_a,plus_plus(X_a,A_1),one_one(X_a))),M) ) ).

fof(tsy_c_Rings_Odvd__class_Odvd_res,axiom,
    ! [X_a] :
      ( dvd(X_a)
     => dvd_dvd(X_a) = ti(fun(X_a,fun(X_a,bool)),dvd_dvd(X_a)) ) ).

fof(arity_Nat_Onat___Divides_Osemiring__div,axiom,
    semiring_div(nat) ).

fof(fact_190_Nat__Transfer_Otransfer__nat__int__function__closures_I7_J,axiom,
    hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),zero_zero(int)),number_number_of(int,bit0(bit1(pls))))) ).

fof(arity_Nat_Onat___Rings_Olinordered__semidom,axiom,
    linordered_semidom(nat) ).

fof(tsy_c_TwoSquares__Mirabelle__lldtdwpyrp_Osum2sq_arg1,axiom,
    ! [B_1_1] : twoSqu1929807760sum2sq(ti(product_prod(int,int),B_1_1)) = twoSqu1929807760sum2sq(B_1_1) ).

fof(fact_562_dvd_Oless__imp__le,axiom,
    ! [X_1,Y] :
      ( ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),X_1),Y))
        & ~ hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),Y),X_1)) )
     => hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),X_1),Y)) ) ).

fof(tsy_c_Groups_Oplus__class_Oplus_0_arg1,axiom,
    ! [B_1_1,X_a] :
      ( ( linorder(X_a)
        & dvd(X_a)
        & plus(X_a) )
     => plus_plus(X_a,ti(X_a,B_1_1)) = plus_plus(X_a,B_1_1) ) ).

fof(fact_591_Nat_Odiff__cancel,axiom,
    ! [K_1,M,N_1] : hAPP(nat,nat,minus_minus(nat,M),N_1) = hAPP(nat,nat,minus_minus(nat,hAPP(nat,nat,plus_plus(nat,K_1),M)),hAPP(nat,nat,plus_plus(nat,K_1),N_1)) ).

fof(arity_RealDef_Oreal___Groups_Ocomm__monoid__add,axiom,
    comm_monoid_add(real) ).

fof(fact_702_mult__less__mono2,axiom,
    ! [K_1,I_1,J_1] :
      ( ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),zero_zero(nat)),K_1))
       => hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),hAPP(nat,nat,times_times(nat,K_1),I_1)),hAPP(nat,nat,times_times(nat,K_1),J_1))) )
     <= hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),I_1),J_1)) ) ).

fof(fact_811_le__iff__diff__le__0,axiom,
    ! [X_a] :
      ( ordered_ab_group_add(X_a)
     => ! [A_3,B_2] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),A_3),B_2))
        <=> hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(X_a,X_a,minus_minus(X_a,A_3),B_2)),zero_zero(X_a))) ) ) ).

fof(arity_RealDef_Oreal___Rings_Olinordered__ring__strict,axiom,
    linord581940658strict(real) ).

fof(fact_149_less__number__of,axiom,
    ! [X_a] :
      ( ( number_ring(X_a)
        & linordered_idom(X_a) )
     => ! [X,Y_1] :
          ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),X),Y_1))
        <=> hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),number_number_of(X_a,X)),number_number_of(X_a,Y_1))) ) ) ).

fof(fact_314_order__le__neq__implies__less,axiom,
    ! [X_a] :
      ( order(X_a)
     => ! [X_1,Y] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X_1),Y))
         => ( ti(X_a,X_1) != ti(X_a,Y)
           => hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),X_1),Y)) ) ) ) ).

fof(fact_951_mod__diff__left__eq,axiom,
    ! [X_a] :
      ( ring_div(X_a)
     => ! [A_1,B,C] : hAPP(X_a,X_a,div_mod(X_a,hAPP(X_a,X_a,minus_minus(X_a,hAPP(X_a,X_a,div_mod(X_a,A_1),C)),B)),C) = hAPP(X_a,X_a,div_mod(X_a,hAPP(X_a,X_a,minus_minus(X_a,A_1),B)),C) ) ).

fof(fact_707_real__mult__less__iff1,axiom,
    ! [X,Y_1,Z_2] :
      ( hBOOL(hAPP(real,bool,hAPP(real,fun(real,bool),ord_less(real),zero_zero(real)),Z_2))
     => ( hBOOL(hAPP(real,bool,hAPP(real,fun(real,bool),ord_less(real),hAPP(real,real,times_times(real,X),Z_2)),hAPP(real,real,times_times(real,Y_1),Z_2)))
      <=> hBOOL(hAPP(real,bool,hAPP(real,fun(real,bool),ord_less(real),X),Y_1)) ) ) ).

fof(fact_617_gr__implies__not0,axiom,
    ! [M,N_1] :
      ( zero_zero(nat) != N_1
     <= hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),M),N_1)) ) ).

fof(fact_874_gcd__lcm__complete__lattice__nat_Onot__top__less,axiom,
    ! [A_1] :
      ~ ( ~ hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),A_1),zero_zero(nat)))
        & hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),zero_zero(nat)),A_1)) ) ).

fof(fact_883_mult__left__cancel,axiom,
    ! [N_1,M,K_1] :
      ( ( M = N_1
       <= hAPP(nat,nat,times_times(nat,K_1),N_1) = hAPP(nat,nat,times_times(nat,K_1),M) )
     <= hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),zero_zero(nat)),K_1)) ) ).

fof(fact_633_mult__cancel1,axiom,
    ! [K,Ma,N] :
      ( ( K = zero_zero(nat)
        | N = Ma )
    <=> hAPP(nat,nat,times_times(nat,K),N) = hAPP(nat,nat,times_times(nat,K),Ma) ) ).

fof(fact_465_one__not__neg__one__mod__m,axiom,
    ! [M] :
      ( ~ hBOOL(hAPP(int,bool,zcong(one_one(int),number_number_of(int,min)),M))
     <= hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),number_number_of(int,bit0(bit1(pls)))),M)) ) ).

fof(fact_685_mult__le__mono1,axiom,
    ! [K_1,I_1,J_1] :
      ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),hAPP(nat,nat,times_times(nat,I_1),K_1)),hAPP(nat,nat,times_times(nat,J_1),K_1)))
     <= hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),I_1),J_1)) ) ).

fof(arity_Nat_Onat___Groups_Oordered__ab__semigroup__add__imp__le,axiom,
    ordere236663937imp_le(nat) ).

fof(fact_68_zadd__zmult__distrib,axiom,
    ! [Z1,Z2,W] : hAPP(int,int,plus_plus(int,hAPP(int,int,times_times(int,Z1),W)),hAPP(int,int,times_times(int,Z2),W)) = hAPP(int,int,times_times(int,hAPP(int,int,plus_plus(int,Z1),Z2)),W) ).

fof(fact_818_zfact_Osimps,axiom,
    ! [N_1] :
      ( ( zfact(N_1) = hAPP(int,int,times_times(int,N_1),zfact(hAPP(int,int,minus_minus(int,N_1),one_one(int))))
       <= ~ hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),N_1),zero_zero(int))) )
      & ( zfact(N_1) = one_one(int)
       <= hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),N_1),zero_zero(int))) ) ) ).

fof(fact_213_comm__semiring__1__class_Onormalizing__semiring__rules_I15_J,axiom,
    ! [X_a] :
      ( comm_semiring_1(X_a)
     => ! [Lx,Ly,Rx,Ry] : hAPP(X_a,X_a,times_times(X_a,hAPP(X_a,X_a,times_times(X_a,Lx),Ly)),hAPP(X_a,X_a,times_times(X_a,Rx),Ry)) = hAPP(X_a,X_a,times_times(X_a,Rx),hAPP(X_a,X_a,times_times(X_a,hAPP(X_a,X_a,times_times(X_a,Lx),Ly)),Ry)) ) ).

fof(arity_Int_Oint___Divides_Osemiring__div,axiom,
    semiring_div(int) ).

fof(fact_152_number__of__add,axiom,
    ! [X_a] :
      ( number_ring(X_a)
     => ! [V,W] : hAPP(X_a,X_a,plus_plus(X_a,number_number_of(X_a,V)),number_number_of(X_a,W)) = number_number_of(X_a,hAPP(int,int,plus_plus(int,V),W)) ) ).

fof(fact_967_zmult2__lemma__aux1,axiom,
    ! [Q_1,B,R_1,C] :
      ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),zero_zero(int)),C))
     => ( ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),R_1),zero_zero(int)))
         => hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),hAPP(int,int,times_times(int,B),C)),hAPP(int,int,plus_plus(int,hAPP(int,int,times_times(int,B),hAPP(int,int,div_mod(int,Q_1),C))),R_1))) )
       <= hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),B),R_1)) ) ) ).

fof(fact_501_zcong__square,axiom,
    ! [A_1,P_3] :
      ( hBOOL(hAPP(int,bool,zprime,P_3))
     => ( ( hBOOL(hAPP(int,bool,zcong(hAPP(int,int,times_times(int,A_1),A_1),one_one(int)),P_3))
         => ( hBOOL(hAPP(int,bool,zcong(A_1,one_one(int)),P_3))
            | hBOOL(hAPP(int,bool,zcong(A_1,hAPP(int,int,minus_minus(int,P_3),one_one(int))),P_3)) ) )
       <= hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),zero_zero(int)),A_1)) ) ) ).

fof(arity_RealDef_Oreal___Groups_Omonoid__mult,axiom,
    monoid_mult(real) ).

fof(fact_881_pow__divides__eq__nat,axiom,
    ! [A_3,B_2,N] :
      ( zero_zero(nat) != N
     => ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),hAPP(nat,nat,power_power(nat,A_3),N)),hAPP(nat,nat,power_power(nat,B_2),N)))
      <=> hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),A_3),B_2)) ) ) ).

fof(fact_306_linorder__neqE__linordered__idom,axiom,
    ! [X_a] :
      ( ! [X_1,Y] :
          ( ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),Y),X_1))
           <= ~ hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),X_1),Y)) )
         <= ti(X_a,Y) != ti(X_a,X_1) )
     <= linordered_idom(X_a) ) ).

fof(fact_150_add__number__of__left,axiom,
    ! [X_a] :
      ( ! [V,W,Z_1] : hAPP(X_a,X_a,plus_plus(X_a,number_number_of(X_a,hAPP(int,int,plus_plus(int,V),W))),Z_1) = hAPP(X_a,X_a,plus_plus(X_a,number_number_of(X_a,V)),hAPP(X_a,X_a,plus_plus(X_a,number_number_of(X_a,W)),Z_1))
     <= number_ring(X_a) ) ).

fof(fact_489_le__add__iff2,axiom,
    ! [X_a] :
      ( ordered_ring(X_a)
     => ! [A_3,E,C_1,B_2,D] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),C_1),hAPP(X_a,X_a,plus_plus(X_a,hAPP(X_a,X_a,times_times(X_a,hAPP(X_a,X_a,minus_minus(X_a,B_2),A_3)),E)),D)))
        <=> hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(X_a,X_a,plus_plus(X_a,hAPP(X_a,X_a,times_times(X_a,A_3),E)),C_1)),hAPP(X_a,X_a,plus_plus(X_a,hAPP(X_a,X_a,times_times(X_a,B_2),E)),D))) ) ) ).

fof(arity_HOL_Obool___Orderings_Oorder,axiom,
    order(bool) ).

fof(fact_920_mod__mod__cancel,axiom,
    ! [X_a] :
      ( semiring_div(X_a)
     => ! [A_1,C,B] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),dvd_dvd(X_a),C),B))
         => hAPP(X_a,X_a,div_mod(X_a,hAPP(X_a,X_a,div_mod(X_a,A_1),B)),C) = hAPP(X_a,X_a,div_mod(X_a,A_1),C) ) ) ).

fof(arity_Int_Oint___Rings_Oring,axiom,
    ring(int) ).

fof(fact_77_rel__simps_I15_J,axiom,
    ! [K,L] :
      ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),bit0(K)),bit1(L)))
    <=> hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),K),L)) ) ).

fof(arity_Int_Oint___Orderings_Oorder,axiom,
    order(int) ).

fof(fact_399_not__one__less__zero,axiom,
    ! [X_a] :
      ( ~ hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),one_one(X_a)),zero_zero(X_a)))
     <= linordered_semidom(X_a) ) ).

fof(fact_565_dvd_Ole__less__trans,axiom,
    ! [Z_1,X_1,Y] :
      ( ( ( ~ hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),Z_1),Y))
          & hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),Y),Z_1)) )
       => ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),X_1),Z_1))
          & ~ hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),Z_1),X_1)) ) )
     <= hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),X_1),Y)) ) ).

fof(fact_716_two__realpow__ge__one,axiom,
    ! [N_1] : hBOOL(hAPP(real,bool,hAPP(real,fun(real,bool),ord_less_eq(real),one_one(real)),hAPP(nat,real,power_power(real,number_number_of(real,bit0(bit1(pls)))),N_1))) ).

fof(arity_Nat_Onat___Groups_Oab__semigroup__mult,axiom,
    ab_semigroup_mult(nat) ).

fof(fact_117_rel__simps_I50_J,axiom,
    ! [K_1,L_1] : bit0(L_1) != bit1(K_1) ).

fof(fact_159_bin__less__0__simps_I1_J,axiom,
    ~ hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),pls),zero_zero(int))) ).

fof(fact_636_real__mult__right__cancel,axiom,
    ! [A_3,B_2,C_1] :
      ( C_1 != zero_zero(real)
     => ( hAPP(real,real,times_times(real,A_3),C_1) = hAPP(real,real,times_times(real,B_2),C_1)
      <=> B_2 = A_3 ) ) ).

fof(fact_924_zmod__simps_I1_J,axiom,
    ! [X_a] :
      ( semiring_div(X_a)
     => ! [A_1,C,B] : hAPP(X_a,X_a,div_mod(X_a,hAPP(X_a,X_a,plus_plus(X_a,hAPP(X_a,X_a,div_mod(X_a,A_1),C)),B)),C) = hAPP(X_a,X_a,div_mod(X_a,hAPP(X_a,X_a,plus_plus(X_a,A_1),B)),C) ) ).

fof(fact_509_QuadRes__def,axiom,
    ! [Ma,X] :
      ( hBOOL(hAPP(int,bool,quadRes(Ma),X))
    <=> ? [Y_2] : hBOOL(hAPP(int,bool,zcong(hAPP(nat,int,power_power(int,Y_2),number_number_of(nat,bit0(bit1(pls)))),X),Ma)) ) ).

fof(fact_351_zcong__zmult__self,axiom,
    ! [A_1,M,B] : hBOOL(hAPP(int,bool,zcong(hAPP(int,int,times_times(int,A_1),M),hAPP(int,int,times_times(int,B),M)),M)) ).

fof(fact_203_zdvd__not__zless,axiom,
    ! [N_1,M] :
      ( ( ~ hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),dvd_dvd(int),N_1),M))
       <= hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),M),N_1)) )
     <= hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),zero_zero(int)),M)) ) ).

fof(fact_470_dvd__diff,axiom,
    ! [X_a] :
      ( ! [Z_1,X_1,Y] :
          ( ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),dvd_dvd(X_a),X_1),hAPP(X_a,X_a,minus_minus(X_a,Y),Z_1)))
           <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),dvd_dvd(X_a),X_1),Z_1)) )
         <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),dvd_dvd(X_a),X_1),Y)) )
     <= comm_ring_1(X_a) ) ).

fof(fact_32_less__eq__int__code_I16_J,axiom,
    ! [K1,K2] :
      ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),bit1(K1)),bit1(K2)))
    <=> hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),K1),K2)) ) ).

fof(fact_496_diff__bin__simps_I5_J,axiom,
    ! [L_1] : hAPP(int,int,minus_minus(int,min),bit0(L_1)) = bit1(hAPP(int,int,minus_minus(int,min),L_1)) ).

fof(arity_RealDef_Oreal___Int_Onumber__ring,axiom,
    number_ring(real) ).

fof(fact_17_t__l__p,axiom,
    hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),t),hAPP(int,int,plus_plus(int,hAPP(int,int,times_times(int,number_number_of(int,bit0(bit0(bit1(pls))))),m)),one_one(int)))) ).

fof(fact_970_split__zmod,axiom,
    ! [P_1,N,K] :
      ( hBOOL(hAPP(int,bool,P_1,hAPP(int,int,div_mod(int,N),K)))
    <=> ( ( hBOOL(hAPP(int,bool,P_1,N))
         <= ti(int,K) = zero_zero(int) )
        & ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),zero_zero(int)),K))
         => ! [I,J] :
              ( ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),zero_zero(int)),J))
                & hAPP(int,int,plus_plus(int,hAPP(int,int,times_times(int,K),I)),J) = ti(int,N)
                & hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),J),K)) )
             => hBOOL(hAPP(int,bool,P_1,J)) ) )
        & ( ! [I,J] :
              ( ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),K),J))
                & hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),J),zero_zero(int)))
                & hAPP(int,int,plus_plus(int,hAPP(int,int,times_times(int,K),I)),J) = ti(int,N) )
             => hBOOL(hAPP(int,bool,P_1,J)) )
         <= hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),K),zero_zero(int))) ) ) ) ).

fof(fact_86_add__nat__number__of,axiom,
    ! [V_1,V] :
      ( ( ( ( hAPP(nat,nat,plus_plus(nat,number_number_of(nat,V)),number_number_of(nat,V_1)) = number_number_of(nat,hAPP(int,int,plus_plus(int,V),V_1))
           <= ~ hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),V_1),pls)) )
          & ( number_number_of(nat,V) = hAPP(nat,nat,plus_plus(nat,number_number_of(nat,V)),number_number_of(nat,V_1))
           <= hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),V_1),pls)) ) )
       <= ~ hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),V),pls)) )
      & ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),V),pls))
       => number_number_of(nat,V_1) = hAPP(nat,nat,plus_plus(nat,number_number_of(nat,V)),number_number_of(nat,V_1)) ) ) ).

fof(arity_Nat_Onat___Rings_Oordered__semiring,axiom,
    ordered_semiring(nat) ).

fof(fact_804_add__nonpos__nonpos,axiom,
    ! [X_a] :
      ( ordere216010020id_add(X_a)
     => ! [B,A_1] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),A_1),zero_zero(X_a)))
         => ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),B),zero_zero(X_a)))
           => hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(X_a,X_a,plus_plus(X_a,A_1),B)),zero_zero(X_a))) ) ) ) ).

fof(fact_739_number__of1,axiom,
    ! [N_1] :
      ( ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),zero_zero(int)),number_number_of(int,bit1(N_1))))
        & hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),zero_zero(int)),number_number_of(int,bit0(N_1)))) )
     <= hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),zero_zero(int)),number_number_of(int,N_1))) ) ).

fof(fact_21_zle__refl,axiom,
    ! [W] : hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),W),W)) ).

fof(fact_311_zcong__eq__trans,axiom,
    ! [D_2,C,A_1,B,M] :
      ( hBOOL(hAPP(int,bool,zcong(A_1,B),M))
     => ( ( hBOOL(hAPP(int,bool,zcong(A_1,D_2),M))
         <= hBOOL(hAPP(int,bool,zcong(C,D_2),M)) )
       <= ti(int,B) = ti(int,C) ) ) ).

fof(fact_15_add__special_I2_J,axiom,
    ! [X_a] :
      ( ! [W] : number_number_of(X_a,hAPP(int,int,plus_plus(int,bit1(pls)),W)) = hAPP(X_a,X_a,plus_plus(X_a,one_one(X_a)),number_number_of(X_a,W))
     <= number_ring(X_a) ) ).

fof(fact_494_zle__diff1__eq,axiom,
    ! [W_1,Z_2] :
      ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),W_1),hAPP(int,int,minus_minus(int,Z_2),one_one(int))))
    <=> hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),W_1),Z_2)) ) ).

fof(fact_589_diff__add__inverse,axiom,
    ! [N_1,M] : M = hAPP(nat,nat,minus_minus(nat,hAPP(nat,nat,plus_plus(nat,N_1),M)),N_1) ).

fof(fact_408_one__le__power,axiom,
    ! [X_a] :
      ( ! [N_1,A_1] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),one_one(X_a)),hAPP(nat,X_a,power_power(X_a,A_1),N_1)))
         <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),one_one(X_a)),A_1)) )
     <= linordered_semidom(X_a) ) ).

fof(fact_921_dvd__mod,axiom,
    ! [X_a] :
      ( ! [N_1,K_1,M] :
          ( ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),dvd_dvd(X_a),K_1),hAPP(X_a,X_a,div_mod(X_a,M),N_1)))
           <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),dvd_dvd(X_a),K_1),N_1)) )
         <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),dvd_dvd(X_a),K_1),M)) )
     <= semiring_div(X_a) ) ).

fof(fact_54_rel__simps_I27_J,axiom,
    ! [K] :
      ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),bit0(K)),pls))
    <=> hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),K),pls)) ) ).

fof(fact_302_rel__simps_I11_J,axiom,
    ! [K] :
      ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),K),min))
    <=> hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),bit0(K)),min)) ) ).

fof(fact_592_diff__cancel2,axiom,
    ! [M,K_1,N_1] : hAPP(nat,nat,minus_minus(nat,M),N_1) = hAPP(nat,nat,minus_minus(nat,hAPP(nat,nat,plus_plus(nat,M),K_1)),hAPP(nat,nat,plus_plus(nat,N_1),K_1)) ).

fof(fact_221_comm__semiring__1__class_Onormalizing__semiring__rules_I22_J,axiom,
    ! [X_a] :
      ( ! [A_1,C,D_2] : hAPP(X_a,X_a,plus_plus(X_a,C),hAPP(X_a,X_a,plus_plus(X_a,A_1),D_2)) = hAPP(X_a,X_a,plus_plus(X_a,A_1),hAPP(X_a,X_a,plus_plus(X_a,C),D_2))
     <= comm_semiring_1(X_a) ) ).

fof(fact_619_diff__less,axiom,
    ! [M,N_1] :
      ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),zero_zero(nat)),N_1))
     => ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),hAPP(nat,nat,minus_minus(nat,M),N_1)),M))
       <= hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),zero_zero(nat)),M)) ) ) ).

fof(fact_466__096s_A_094_A2_A_N_A_N1_A_061_As_A_094_A2_A_L_A1_096,axiom,
    hAPP(int,int,minus_minus(int,hAPP(nat,int,power_power(int,s),number_number_of(nat,bit0(bit1(pls))))),number_number_of(int,min)) = hAPP(int,int,plus_plus(int,hAPP(nat,int,power_power(int,s),number_number_of(nat,bit0(bit1(pls))))),one_one(int)) ).

fof(fact_794_mult__1__right,axiom,
    ! [X_a] :
      ( ! [A_1] : hAPP(X_a,X_a,times_times(X_a,A_1),one_one(X_a)) = ti(X_a,A_1)
     <= monoid_mult(X_a) ) ).

fof(fact_815_add__strict__increasing,axiom,
    ! [X_a] :
      ( ordere216010020id_add(X_a)
     => ! [B,C,A_1] :
          ( ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),B),hAPP(X_a,X_a,plus_plus(X_a,A_1),C)))
           <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),B),C)) )
         <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),zero_zero(X_a)),A_1)) ) ) ).

fof(fact_294_rel__simps_I8_J,axiom,
    ! [K] :
      ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),min),K))
    <=> hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),min),bit0(K))) ) ).

fof(fact_437_power__decreasing,axiom,
    ! [X_a] :
      ( linordered_semidom(X_a)
     => ! [A_1,N_1,N_3] :
          ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),N_1),N_3))
         => ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),zero_zero(X_a)),A_1))
           => ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(nat,X_a,power_power(X_a,A_1),N_3)),hAPP(nat,X_a,power_power(X_a,A_1),N_1)))
             <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),A_1),one_one(X_a))) ) ) ) ) ).

fof(fact_741_conj__le__cong,axiom,
    ! [P_4,P_1,X] :
      ( ( ( hBOOL(P_1)
        <=> hBOOL(P_4) )
       <= hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),zero_zero(int)),X)) )
     => ( ( hBOOL(P_1)
          & hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),zero_zero(int)),X)) )
      <=> ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),zero_zero(int)),X))
          & hBOOL(P_4) ) ) ) ).

fof(arity_RealDef_Oreal___Orderings_Olinorder,axiom,
    linorder(real) ).

fof(arity_Int_Oint___Rings_Odvd,axiom,
    dvd(int) ).

fof(fact_71_rel__simps_I5_J,axiom,
    ! [K] :
      ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),pls),K))
    <=> hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),pls),bit1(K))) ) ).

fof(fact_137_power3__eq__cube,axiom,
    ! [X_a] :
      ( ! [A_1] : hAPP(X_a,X_a,times_times(X_a,hAPP(X_a,X_a,times_times(X_a,A_1),A_1)),A_1) = hAPP(nat,X_a,power_power(X_a,A_1),number_number_of(nat,bit1(bit1(pls))))
     <= monoid_mult(X_a) ) ).

fof(fact_400_power__mono,axiom,
    ! [X_a] :
      ( linordered_semidom(X_a)
     => ! [N_1,A_1,B] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),A_1),B))
         => ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),zero_zero(X_a)),A_1))
           => hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(nat,X_a,power_power(X_a,A_1),N_1)),hAPP(nat,X_a,power_power(X_a,B),N_1))) ) ) ) ).

fof(fact_697_nat__diff__split,axiom,
    ! [P_1,A_3,B_2] :
      ( hBOOL(hAPP(nat,bool,P_1,hAPP(nat,nat,minus_minus(nat,A_3),B_2)))
    <=> ( ! [D_4] :
            ( hAPP(nat,nat,plus_plus(nat,B_2),D_4) = A_3
           => hBOOL(hAPP(nat,bool,P_1,D_4)) )
        & ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),A_3),B_2))
         => hBOOL(hAPP(nat,bool,P_1,zero_zero(nat))) ) ) ) ).

fof(arity_Nat_Onat___Rings_Olinordered__semiring,axiom,
    linordered_semiring(nat) ).

fof(fact_455_power__strict__decreasing,axiom,
    ! [X_a] :
      ( ! [A_1,N_1,N_3] :
          ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),N_1),N_3))
         => ( ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),hAPP(nat,X_a,power_power(X_a,A_1),N_3)),hAPP(nat,X_a,power_power(X_a,A_1),N_1)))
             <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),A_1),one_one(X_a))) )
           <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),zero_zero(X_a)),A_1)) ) )
     <= linordered_semidom(X_a) ) ).

fof(tsy_c_Groups_Ominus__class_Ominus_0_arg1,axiom,
    ! [B_1_1,X_a] :
      ( minus_minus(X_a,B_1_1) = minus_minus(X_a,ti(X_a,B_1_1))
     <= group_add(X_a) ) ).

fof(arity_RealDef_Oreal___Groups_Oplus,axiom,
    plus(real) ).

fof(fact_299_rel__simps_I20_J,axiom,
    ~ hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),pls),min)) ).

fof(fact_873_gcd__lcm__complete__lattice__nat_Otop__greatest,axiom,
    ! [A_1] : hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),A_1),zero_zero(nat))) ).

fof(fact_73_rel__simps_I33_J,axiom,
    ! [K,L] :
      ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),bit1(K)),bit0(L)))
    <=> hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),K),L)) ) ).

fof(fact_885_SR__def,axiom,
    ! [P_2] : sr(P_2) = collect(int,combs(int,bool,bool,combb(bool,fun(bool,bool),int,fconj,hAPP(int,fun(int,bool),ord_less_eq(int),zero_zero(int))),combc(int,int,bool,ord_less(int),P_2))) ).

fof(fact_65_zmult__1__right,axiom,
    ! [Z_1] : ti(int,Z_1) = hAPP(int,int,times_times(int,Z_1),one_one(int)) ).

fof(fact_728_nat__mult__less__cancel1,axiom,
    ! [Ma,N,K] :
      ( ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),Ma),N))
      <=> hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),hAPP(nat,nat,times_times(nat,K),Ma)),hAPP(nat,nat,times_times(nat,K),N))) )
     <= hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),zero_zero(nat)),K)) ) ).

fof(fact_243_crossproduct__eq,axiom,
    ! [X_a] :
      ( semiri456707255roduct(X_a)
     => ! [W_1,Y_1,X,Z_2] :
          ( hAPP(X_a,X_a,plus_plus(X_a,hAPP(X_a,X_a,times_times(X_a,W_1),Z_2)),hAPP(X_a,X_a,times_times(X_a,X),Y_1)) = hAPP(X_a,X_a,plus_plus(X_a,hAPP(X_a,X_a,times_times(X_a,W_1),Y_1)),hAPP(X_a,X_a,times_times(X_a,X),Z_2))
        <=> ( ti(X_a,Z_2) = ti(X_a,Y_1)
            | ti(X_a,X) = ti(X_a,W_1) ) ) ) ).

fof(tsy_c_Groups_Otimes__class_Otimes_0_res,axiom,
    ! [B_1_1,X_a] :
      ( ti(fun(X_a,X_a),times_times(X_a,B_1_1)) = times_times(X_a,B_1_1)
     <= ab_semigroup_mult(X_a) ) ).

fof(fact_546_linorder__neqE__nat,axiom,
    ! [X_1,Y] :
      ( Y != X_1
     => ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),Y),X_1))
       <= ~ hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),X_1),Y)) ) ) ).

fof(tsy_c_Product__Type_OPair_res,axiom,
    ! [B_1_1,B_2_1] : ti(product_prod(int,int),product_Pair(int,int,B_1_1,B_2_1)) = product_Pair(int,int,B_1_1,B_2_1) ).

fof(fact_563_dvd_Oless__not__sym,axiom,
    ! [X_1,Y] :
      ( ~ ( ~ hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),X_1),Y))
          & hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),Y),X_1)) )
     <= ( ~ hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),Y),X_1))
        & hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),X_1),Y)) ) ) ).

fof(fact_486_xzgcda__linear__aux1,axiom,
    ! [A_1,R_1,B,M,C,D_2,N_1] : hAPP(int,int,minus_minus(int,hAPP(int,int,plus_plus(int,hAPP(int,int,times_times(int,A_1),M)),hAPP(int,int,times_times(int,C),N_1))),hAPP(int,int,times_times(int,R_1),hAPP(int,int,plus_plus(int,hAPP(int,int,times_times(int,B),M)),hAPP(int,int,times_times(int,D_2),N_1)))) = hAPP(int,int,plus_plus(int,hAPP(int,int,times_times(int,hAPP(int,int,minus_minus(int,A_1),hAPP(int,int,times_times(int,R_1),B))),M)),hAPP(int,int,times_times(int,hAPP(int,int,minus_minus(int,C),hAPP(int,int,times_times(int,R_1),D_2))),N_1)) ).

fof(fact_611_diff__mult__distrib,axiom,
    ! [M,N_1,K_1] : hAPP(nat,nat,times_times(nat,hAPP(nat,nat,minus_minus(nat,M),N_1)),K_1) = hAPP(nat,nat,minus_minus(nat,hAPP(nat,nat,times_times(nat,M),K_1)),hAPP(nat,nat,times_times(nat,N_1),K_1)) ).

fof(fact_518_power__eq__if,axiom,
    ! [P_3,M] :
      ( ( M != zero_zero(nat)
       => hAPP(nat,nat,power_power(nat,P_3),M) = hAPP(nat,nat,times_times(nat,P_3),hAPP(nat,nat,power_power(nat,P_3),hAPP(nat,nat,minus_minus(nat,M),one_one(nat)))) )
      & ( zero_zero(nat) = M
       => one_one(nat) = hAPP(nat,nat,power_power(nat,P_3),M) ) ) ).

fof(fact_155_rel__simps_I16_J,axiom,
    ! [K,L] :
      ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),K),L))
    <=> hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),bit1(K)),bit0(L))) ) ).

fof(fact_448_zcong__zless__0,axiom,
    ! [M,A_1] :
      ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),zero_zero(int)),A_1))
     => ( ( zero_zero(int) = ti(int,A_1)
         <= hBOOL(hAPP(int,bool,zcong(A_1,zero_zero(int)),M)) )
       <= hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),A_1),M)) ) ) ).

fof(fact_411_power__0,axiom,
    ! [X_a] :
      ( power(X_a)
     => ! [A_1] : hAPP(nat,X_a,power_power(X_a,A_1),zero_zero(nat)) = one_one(X_a) ) ).

fof(fact_283_Bit1__Min,axiom,
    min = bit1(min) ).

fof(fact_908_zmod__simps_I3_J,axiom,
    ! [A_1,B,C] : hAPP(int,int,div_mod(int,hAPP(int,int,times_times(int,A_1),B)),C) = hAPP(int,int,div_mod(int,hAPP(int,int,times_times(int,A_1),hAPP(int,int,div_mod(int,B),C))),C) ).

fof(arity_Int_Oint___Rings_Olinordered__semiring__1__strict,axiom,
    linord626643107strict(int) ).

fof(fact_128_int__0__neq__1,axiom,
    one_one(int) != zero_zero(int) ).

fof(arity_Int_Oint___Groups_Oordered__cancel__ab__semigroup__add,axiom,
    ordere223160158up_add(int) ).

fof(fact_793_mult__1,axiom,
    ! [X_a] :
      ( ! [A_1] : hAPP(X_a,X_a,times_times(X_a,one_one(X_a)),A_1) = ti(X_a,A_1)
     <= comm_monoid_mult(X_a) ) ).

fof(arity_Int_Oint___Groups_Oordered__ab__group__add,axiom,
    ordered_ab_group_add(int) ).

fof(fact_412_power__add,axiom,
    ! [X_a] :
      ( monoid_mult(X_a)
     => ! [A_1,M,N_1] : hAPP(X_a,X_a,times_times(X_a,hAPP(nat,X_a,power_power(X_a,A_1),M)),hAPP(nat,X_a,power_power(X_a,A_1),N_1)) = hAPP(nat,X_a,power_power(X_a,A_1),hAPP(nat,nat,plus_plus(nat,M),N_1)) ) ).

fof(fact_323_comm__semiring__class_Odistrib,axiom,
    ! [X_a] :
      ( comm_semiring(X_a)
     => ! [A_1,B,C] : hAPP(X_a,X_a,times_times(X_a,hAPP(X_a,X_a,plus_plus(X_a,A_1),B)),C) = hAPP(X_a,X_a,plus_plus(X_a,hAPP(X_a,X_a,times_times(X_a,A_1),C)),hAPP(X_a,X_a,times_times(X_a,B),C)) ) ).

fof(arity_RealDef_Oreal___Groups_Oordered__ab__semigroup__add,axiom,
    ordere779506340up_add(real) ).

fof(arity_RealDef_Oreal___Orderings_Oorder,axiom,
    order(real) ).

fof(fact_107_sum__squares__gt__zero__iff,axiom,
    ! [X_a] :
      ( linord581940658strict(X_a)
     => ! [X,Y_1] :
          ( ( zero_zero(X_a) != ti(X_a,Y_1)
            | zero_zero(X_a) != ti(X_a,X) )
        <=> hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),zero_zero(X_a)),hAPP(X_a,X_a,plus_plus(X_a,hAPP(X_a,X_a,times_times(X_a,X),X)),hAPP(X_a,X_a,times_times(X_a,Y_1),Y_1)))) ) ) ).

fof(fact_956_zcong__zmod__eq,axiom,
    ! [A_3,B_2,Ma] :
      ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),zero_zero(int)),Ma))
     => ( hBOOL(hAPP(int,bool,zcong(A_3,B_2),Ma))
      <=> hAPP(int,int,div_mod(int,A_3),Ma) = hAPP(int,int,div_mod(int,B_2),Ma) ) ) ).

fof(arity_Int_Oint___Divides_Oring__div,axiom,
    ring_div(int) ).

fof(tsy_c_WilsonRuss_Oinv_arg1,axiom,
    ! [B_1_1,B_2_1] : inv(B_1_1,B_2_1) = inv(ti(int,B_1_1),B_2_1) ).

fof(fact_799_double__add__le__zero__iff__single__add__le__zero,axiom,
    ! [X_a] :
      ( linord219039673up_add(X_a)
     => ! [A_3] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),A_3),zero_zero(X_a)))
        <=> hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(X_a,X_a,plus_plus(X_a,A_3),A_3)),zero_zero(X_a))) ) ) ).

fof(fact_308_dvd__trans,axiom,
    ! [X_a] :
      ( comm_semiring_1(X_a)
     => ! [C,A_1,B] :
          ( ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),dvd_dvd(X_a),A_1),C))
           <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),dvd_dvd(X_a),B),C)) )
         <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),dvd_dvd(X_a),A_1),B)) ) ) ).

fof(fact_181__0964_A_K_Am_A_L_A1_Advd_As_A_094_A2_A_L_A1_096,axiom,
    hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),dvd_dvd(int),hAPP(int,int,plus_plus(int,hAPP(int,int,times_times(int,number_number_of(int,bit0(bit0(bit1(pls))))),m)),one_one(int))),hAPP(int,int,plus_plus(int,hAPP(nat,int,power_power(int,s),number_number_of(nat,bit0(bit1(pls))))),one_one(int)))) ).

fof(fact_875_gcd__lcm__complete__lattice__nat_Ole__bot,axiom,
    ! [A_1] :
      ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),A_1),one_one(nat)))
     => A_1 = one_one(nat) ) ).

fof(fact_979_StandardRes__def,axiom,
    ! [M,X_1] : hAPP(int,int,div_mod(int,X_1),M) = standardRes(M,X_1) ).

fof(fact_288_rel__simps_I7_J,axiom,
    ~ hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),min),min)) ).

fof(fact_398_zero__less__one,axiom,
    ! [X_a] :
      ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),zero_zero(X_a)),one_one(X_a)))
     <= linordered_semidom(X_a) ) ).

fof(fact_151_add__number__of__eq,axiom,
    ! [X_a] :
      ( ! [V,W] : number_number_of(X_a,hAPP(int,int,plus_plus(int,V),W)) = hAPP(X_a,X_a,plus_plus(X_a,number_number_of(X_a,V)),number_number_of(X_a,W))
     <= number_ring(X_a) ) ).

fof(fact_834_wset__mem,axiom,
    ! [B_2,A_3,P_2] :
      ( hBOOL(hAPP(int,bool,zprime,P_2))
     => ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),A_3),hAPP(int,int,minus_minus(int,P_2),one_one(int))))
       => ( ( hBOOL(hAPP(fun(int,bool),bool,member(int,B_2),wset(A_3,P_2)))
           <= hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),B_2),A_3)) )
         <= hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),one_one(int)),B_2)) ) ) ) ).

fof(fact_202_zpower__zpower,axiom,
    ! [X_1,Y,Z_1] : hAPP(nat,int,power_power(int,hAPP(nat,int,power_power(int,X_1),Y)),Z_1) = hAPP(nat,int,power_power(int,X_1),hAPP(nat,nat,times_times(nat,Y),Z_1)) ).

fof(fact_100_zmult__zless__mono2,axiom,
    ! [K_1,I_1,J_1] :
      ( ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),zero_zero(int)),K_1))
       => hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),hAPP(int,int,times_times(int,K_1),I_1)),hAPP(int,int,times_times(int,K_1),J_1))) )
     <= hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),I_1),J_1)) ) ).

fof(tsy_c_Groups_Otimes__class_Otimes_4_arg1,axiom,
    ! [B_1_1,X_a] :
      ( times_times(X_a,ti(X_a,B_1_1)) = times_times(X_a,B_1_1)
     <= mult_zero(X_a) ) ).

fof(fact_99_zero__is__num__zero,axiom,
    zero_zero(int) = number_number_of(int,pls) ).

fof(fact_696_nat__diff__split__asm,axiom,
    ! [P_1,A_3,B_2] :
      ( ~ ( ? [D_4] :
              ( ~ hBOOL(hAPP(nat,bool,P_1,D_4))
              & A_3 = hAPP(nat,nat,plus_plus(nat,B_2),D_4) )
          | ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),A_3),B_2))
            & ~ hBOOL(hAPP(nat,bool,P_1,zero_zero(nat))) ) )
    <=> hBOOL(hAPP(nat,bool,P_1,hAPP(nat,nat,minus_minus(nat,A_3),B_2))) ) ).

fof(fact_320_zero__neq__one,axiom,
    ! [X_a] :
      ( one_one(X_a) != zero_zero(X_a)
     <= zero_neq_one(X_a) ) ).

fof(arity_Int_Oint___Groups_Oplus,axiom,
    plus(int) ).

fof(fact_705_real__mult__less__mono2,axiom,
    ! [X_1,Y,Z_1] :
      ( ( hBOOL(hAPP(real,bool,hAPP(real,fun(real,bool),ord_less(real),X_1),Y))
       => hBOOL(hAPP(real,bool,hAPP(real,fun(real,bool),ord_less(real),hAPP(real,real,times_times(real,Z_1),X_1)),hAPP(real,real,times_times(real,Z_1),Y))) )
     <= hBOOL(hAPP(real,bool,hAPP(real,fun(real,bool),ord_less(real),zero_zero(real)),Z_1)) ) ).

fof(arity_Int_Oint___Rings_Oordered__comm__semiring,axiom,
    ordere1490568538miring(int) ).

fof(fact_252_comm__semiring__1__class_Onormalizing__semiring__rules_I4_J,axiom,
    ! [X_a] :
      ( ! [M] : hAPP(X_a,X_a,plus_plus(X_a,M),M) = hAPP(X_a,X_a,times_times(X_a,hAPP(X_a,X_a,plus_plus(X_a,one_one(X_a)),one_one(X_a))),M)
     <= comm_semiring_1(X_a) ) ).

fof(fact_782_add__strict__left__mono,axiom,
    ! [X_a] :
      ( ! [C,A_1,B] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),hAPP(X_a,X_a,plus_plus(X_a,C),A_1)),hAPP(X_a,X_a,plus_plus(X_a,C),B)))
         <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),A_1),B)) )
     <= ordere223160158up_add(X_a) ) ).

fof(fact_539_diffs0__imp__equal,axiom,
    ! [M,N_1] :
      ( zero_zero(nat) = hAPP(nat,nat,minus_minus(nat,M),N_1)
     => ( N_1 = M
       <= zero_zero(nat) = hAPP(nat,nat,minus_minus(nat,N_1),M) ) ) ).

fof(fact_271_Euler_Oaux____1,axiom,
    ! [Y,X_1,P_3] :
      ( ( hBOOL(hAPP(int,bool,zcong(hAPP(nat,int,power_power(int,Y),number_number_of(nat,bit0(bit1(pls)))),X_1),P_3))
       => ~ hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),dvd_dvd(int),P_3),Y)) )
     <= ~ hBOOL(hAPP(int,bool,zcong(X_1,zero_zero(int)),P_3)) ) ).

fof(fact_944_mod__by__1,axiom,
    ! [X_a] :
      ( ! [A_1] : zero_zero(X_a) = hAPP(X_a,X_a,div_mod(X_a,A_1),one_one(X_a))
     <= semiring_div(X_a) ) ).

fof(tsy_c_Groups_Oplus__class_Oplus_2_arg1,axiom,
    ! [B_1_1,X_a] :
      ( plus_plus(X_a,ti(X_a,B_1_1)) = plus_plus(X_a,B_1_1)
     <= cancel_semigroup_add(X_a) ) ).

fof(fact_28_zmult__assoc,axiom,
    ! [Z1,Z2,Z3] : hAPP(int,int,times_times(int,Z1),hAPP(int,int,times_times(int,Z2),Z3)) = hAPP(int,int,times_times(int,hAPP(int,int,times_times(int,Z1),Z2)),Z3) ).

fof(tsy_c_Int_Onumber__class_Onumber__of_arg1,axiom,
    ! [B_1_1,X_a] :
      ( number_number_of(X_a,B_1_1) = number_number_of(X_a,ti(int,B_1_1))
     <= number(X_a) ) ).

fof(arity_Nat_Onat___Rings_Ocomm__semiring__1,axiom,
    comm_semiring_1(nat) ).

fof(fact_524_divides__exp2,axiom,
    ! [X_1,Y,N_1] :
      ( zero_zero(nat) != N_1
     => ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),X_1),Y))
       <= hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),hAPP(nat,nat,power_power(nat,X_1),N_1)),Y)) ) ) ).

fof(tsy_c_Divides_Odiv__class_Omod_res,axiom,
    ! [B_1_1,X_a] :
      ( div_mod(X_a,B_1_1) = ti(fun(X_a,X_a),div_mod(X_a,B_1_1))
     <= semiring_div(X_a) ) ).

fof(tsy_c_WilsonRuss_Owset_res,axiom,
    ! [B_1_1,B_2_1] : wset(B_1_1,B_2_1) = ti(fun(int,bool),wset(B_1_1,B_2_1)) ).

fof(fact_305_pos__zmult__eq__1__iff__lemma,axiom,
    ! [M,N_1] :
      ( hAPP(int,int,times_times(int,M),N_1) = one_one(int)
     => ( ti(int,M) = number_number_of(int,min)
        | one_one(int) = ti(int,M) ) ) ).

fof(fact_963_mod__pos__neg__trivial,axiom,
    ! [B,A_1] :
      ( ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),hAPP(int,int,plus_plus(int,A_1),B)),zero_zero(int)))
       => hAPP(int,int,div_mod(int,A_1),B) = hAPP(int,int,plus_plus(int,A_1),B) )
     <= hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),zero_zero(int)),A_1)) ) ).

fof(fact_34_rel__simps_I19_J,axiom,
    hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),pls),pls)) ).

fof(fact_877_gcd__lcm__complete__lattice__nat_Obot__less,axiom,
    ! [A_3] :
      ( A_3 != one_one(nat)
    <=> ( ~ hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),A_3),one_one(nat)))
        & hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),one_one(nat)),A_3)) ) ) ).

fof(fact_169_number__of__Bit0,axiom,
    ! [X_a] :
      ( number_ring(X_a)
     => ! [W] : hAPP(X_a,X_a,plus_plus(X_a,hAPP(X_a,X_a,plus_plus(X_a,zero_zero(X_a)),number_number_of(X_a,W))),number_number_of(X_a,W)) = number_number_of(X_a,bit0(W)) ) ).

fof(fact_272_zprime__def,axiom,
    ! [P_2] :
      ( hBOOL(hAPP(int,bool,zprime,P_2))
    <=> ( ! [M_2] :
            ( ( ti(int,M_2) = one_one(int)
              | ti(int,M_2) = ti(int,P_2) )
           <= ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),zero_zero(int)),M_2))
              & hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),dvd_dvd(int),M_2),P_2)) ) )
        & hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),one_one(int)),P_2)) ) ) ).

fof(fact_638_not__add__less2,axiom,
    ! [J_1,I_1] : ~ hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),hAPP(nat,nat,plus_plus(nat,J_1),I_1)),I_1)) ).

fof(fact_96_zadd__assoc,axiom,
    ! [Z1,Z2,Z3] : hAPP(int,int,plus_plus(int,hAPP(int,int,plus_plus(int,Z1),Z2)),Z3) = hAPP(int,int,plus_plus(int,Z1),hAPP(int,int,plus_plus(int,Z2),Z3)) ).

fof(fact_449_zcong__zless__imp__eq,axiom,
    ! [B,M,A_1] :
      ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),zero_zero(int)),A_1))
     => ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),A_1),M))
       => ( ( ( ti(int,A_1) = ti(int,B)
             <= hBOOL(hAPP(int,bool,zcong(A_1,B),M)) )
           <= hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),B),M)) )
         <= hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),zero_zero(int)),B)) ) ) ) ).

fof(arity_Nat_Onat___Groups_Ocomm__monoid__mult,axiom,
    comm_monoid_mult(nat) ).

fof(fact_860_d22set__g__1,axiom,
    ! [B_2,A_3] :
      ( hBOOL(hAPP(fun(int,bool),bool,member(int,B_2),d22set(A_3)))
     => hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),one_one(int)),B_2)) ) ).

fof(fact_57_nat__number__of__Pls,axiom,
    zero_zero(nat) = number_number_of(nat,pls) ).

fof(tsy_c_HOL_Oundefined_res,axiom,
    ! [X_a] : undefined(X_a) = ti(X_a,undefined(X_a)) ).

fof(fact_745_inf__period_I3_J,axiom,
    ! [X_a] :
      ( ! [Ta,D,D_3] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),dvd_dvd(X_a),D),D_3))
         => ! [X_2,K_2] :
              ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),dvd_dvd(X_a),D),hAPP(X_a,X_a,plus_plus(X_a,hAPP(X_a,X_a,minus_minus(X_a,X_2),hAPP(X_a,X_a,times_times(X_a,K_2),D_3))),Ta)))
            <=> hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),dvd_dvd(X_a),D),hAPP(X_a,X_a,plus_plus(X_a,X_2),Ta))) ) )
     <= ( dvd(X_a)
        & comm_ring(X_a) ) ) ).

fof(fact_353_zcong__zmult__prop2,axiom,
    ! [C_1,D,A_3,B_2,Ma] :
      ( ( hBOOL(hAPP(int,bool,zcong(C_1,hAPP(int,int,times_times(int,D),A_3)),Ma))
      <=> hBOOL(hAPP(int,bool,zcong(C_1,hAPP(int,int,times_times(int,D),B_2)),Ma)) )
     <= hBOOL(hAPP(int,bool,zcong(A_3,B_2),Ma)) ) ).

fof(fact_801_add__nonneg__eq__0__iff,axiom,
    ! [X_a] :
      ( ! [Y_1,X] :
          ( ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),zero_zero(X_a)),Y_1))
           => ( ( ti(X_a,X) = zero_zero(X_a)
                & ti(X_a,Y_1) = zero_zero(X_a) )
            <=> hAPP(X_a,X_a,plus_plus(X_a,X),Y_1) = zero_zero(X_a) ) )
         <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),zero_zero(X_a)),X)) )
     <= ordere216010020id_add(X_a) ) ).

fof(arity_Int_Oint___Groups_Ogroup__add,axiom,
    group_add(int) ).

fof(fact_423_mult__less__imp__less__left,axiom,
    ! [X_a] :
      ( ! [C,A_1,B] :
          ( ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),zero_zero(X_a)),C))
           => hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),A_1),B)) )
         <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),hAPP(X_a,X_a,times_times(X_a,C),A_1)),hAPP(X_a,X_a,times_times(X_a,C),B))) )
     <= linord20386208strict(X_a) ) ).

fof(fact_585_nat__add__assoc,axiom,
    ! [M,N_1,K_1] : hAPP(nat,nat,plus_plus(nat,M),hAPP(nat,nat,plus_plus(nat,N_1),K_1)) = hAPP(nat,nat,plus_plus(nat,hAPP(nat,nat,plus_plus(nat,M),N_1)),K_1) ).

fof(fact_620_zero__less__diff,axiom,
    ! [N,Ma] :
      ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),Ma),N))
    <=> hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),zero_zero(nat)),hAPP(nat,nat,minus_minus(nat,N),Ma))) ) ).

fof(fact_204_zdvd__antisym__nonneg,axiom,
    ! [N_1,M] :
      ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),zero_zero(int)),M))
     => ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),zero_zero(int)),N_1))
       => ( ( ti(int,M) = ti(int,N_1)
           <= hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),dvd_dvd(int),N_1),M)) )
         <= hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),dvd_dvd(int),M),N_1)) ) ) ) ).

fof(fact_991_StandardRes__ubound,axiom,
    ! [X_1,P_3] :
      ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),zero_zero(int)),P_3))
     => hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),standardRes(P_3,X_1)),P_3)) ) ).

fof(fact_744_unity__coeff__ex,axiom,
    ! [X_a] :
      ( ( dvd(X_a)
        & semiring_0(X_a) )
     => ! [P_1,L] :
          ( ? [X_2] : hBOOL(hAPP(X_a,bool,P_1,hAPP(X_a,X_a,times_times(X_a,L),X_2)))
        <=> ? [X_2] :
              ( hBOOL(hAPP(X_a,bool,P_1,X_2))
              & hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),dvd_dvd(X_a),L),hAPP(X_a,X_a,plus_plus(X_a,X_2),zero_zero(X_a)))) ) ) ) ).

fof(fact_825_inv__not__0,axiom,
    ! [A_1,P_3] :
      ( hBOOL(hAPP(int,bool,zprime,P_3))
     => ( ( inv(P_3,A_1) != zero_zero(int)
         <= hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),A_1),hAPP(int,int,minus_minus(int,P_3),one_one(int)))) )
       <= hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),one_one(int)),A_1)) ) ) ).

fof(fact_800_add__nonneg__nonneg,axiom,
    ! [X_a] :
      ( ordere216010020id_add(X_a)
     => ! [B,A_1] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),zero_zero(X_a)),A_1))
         => ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),zero_zero(X_a)),B))
           => hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),zero_zero(X_a)),hAPP(X_a,X_a,plus_plus(X_a,A_1),B))) ) ) ) ).

fof(fact_331_dvd__mult,axiom,
    ! [X_a] :
      ( comm_semiring_1(X_a)
     => ! [B,A_1,C] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),dvd_dvd(X_a),A_1),hAPP(X_a,X_a,times_times(X_a,B),C)))
         <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),dvd_dvd(X_a),A_1),C)) ) ) ).

fof(fact_6_p0,axiom,
    hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),zero_zero(int)),hAPP(int,int,plus_plus(int,hAPP(int,int,times_times(int,number_number_of(int,bit0(bit0(bit1(pls))))),m)),one_one(int)))) ).

fof(fact_483_diff__bin__simps_I10_J,axiom,
    ! [K_1,L_1] : bit0(hAPP(int,int,minus_minus(int,K_1),L_1)) = hAPP(int,int,minus_minus(int,bit1(K_1)),bit1(L_1)) ).

fof(fact_66_zmult__1,axiom,
    ! [Z_1] : ti(int,Z_1) = hAPP(int,int,times_times(int,one_one(int)),Z_1) ).

fof(fact_270_s,axiom,
    hBOOL(hAPP(int,bool,zcong(hAPP(nat,int,power_power(int,s),number_number_of(nat,bit0(bit1(pls)))),number_number_of(int,min)),hAPP(int,int,plus_plus(int,hAPP(int,int,times_times(int,number_number_of(int,bit0(bit0(bit1(pls))))),m)),one_one(int)))) ).

fof(fact_645_add__lessD1,axiom,
    ! [I_1,J_1,K_1] :
      ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),hAPP(nat,nat,plus_plus(nat,I_1),J_1)),K_1))
     => hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),I_1),K_1)) ) ).

fof(fact_475_Int2_Oaux1,axiom,
    ! [A_1,B,C] :
      ( hAPP(int,int,plus_plus(int,C),B) = ti(int,A_1)
     <= hAPP(int,int,minus_minus(int,A_1),B) = ti(int,C) ) ).

fof(fact_365_mult__left__mono__neg,axiom,
    ! [X_a] :
      ( ! [C,B,A_1] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),B),A_1))
         => ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),C),zero_zero(X_a)))
           => hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(X_a,X_a,times_times(X_a,C),A_1)),hAPP(X_a,X_a,times_times(X_a,C),B))) ) )
     <= ordered_ring(X_a) ) ).

fof(fact_58_semiring__norm_I113_J,axiom,
    number_number_of(nat,pls) = zero_zero(nat) ).

fof(fact_864_pinf_I9_J,axiom,
    ! [X_a] :
      ( ! [D,Sa] :
        ? [Z] :
        ! [X_2] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),Z),X_2))
         => ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),dvd_dvd(X_a),D),hAPP(X_a,X_a,plus_plus(X_a,X_2),Sa)))
          <=> hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),dvd_dvd(X_a),D),hAPP(X_a,X_a,plus_plus(X_a,X_2),Sa))) ) )
     <= ( plus(X_a)
        & dvd(X_a)
        & linorder(X_a) ) ) ).

fof(fact_616_less__nat__zero__code,axiom,
    ! [N_1] : ~ hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),N_1),zero_zero(nat))) ).

fof(fact_662_trans__le__add1,axiom,
    ! [M,I_1,J_1] :
      ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),I_1),J_1))
     => hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),I_1),hAPP(nat,nat,plus_plus(nat,J_1),M))) ) ).

fof(fact_642_add__less__mono1,axiom,
    ! [K_1,I_1,J_1] :
      ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),I_1),J_1))
     => hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),hAPP(nat,nat,plus_plus(nat,I_1),K_1)),hAPP(nat,nat,plus_plus(nat,J_1),K_1))) ) ).

fof(fact_182_zadd__power3,axiom,
    ! [A_1,B] : hAPP(int,int,plus_plus(int,hAPP(int,int,plus_plus(int,hAPP(int,int,plus_plus(int,hAPP(nat,int,power_power(int,A_1),number_number_of(nat,bit1(bit1(pls))))),hAPP(int,int,times_times(int,hAPP(int,int,times_times(int,number_number_of(int,bit1(bit1(pls)))),hAPP(nat,int,power_power(int,A_1),number_number_of(nat,bit0(bit1(pls)))))),B))),hAPP(int,int,times_times(int,hAPP(int,int,times_times(int,number_number_of(int,bit1(bit1(pls)))),A_1)),hAPP(nat,int,power_power(int,B),number_number_of(nat,bit0(bit1(pls))))))),hAPP(nat,int,power_power(int,B),number_number_of(nat,bit1(bit1(pls))))) = hAPP(nat,int,power_power(int,hAPP(int,int,plus_plus(int,A_1),B)),number_number_of(nat,bit1(bit1(pls)))) ).

fof(fact_954_zmod__minus1__right,axiom,
    ! [A_1] : hAPP(int,int,div_mod(int,A_1),number_number_of(int,min)) = zero_zero(int) ).

fof(tsy_c_Orderings_Oord__class_Oless_res,axiom,
    ! [X_a] :
      ( ord_less(X_a) = ti(fun(X_a,fun(X_a,bool)),ord_less(X_a))
     <= order(X_a) ) ).

fof(fact_201_zprime__power__zdvd__cancel__left,axiom,
    ! [N_1,B,A_1,P_3] :
      ( hBOOL(hAPP(int,bool,zprime,P_3))
     => ( ~ hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),dvd_dvd(int),P_3),A_1))
       => ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),dvd_dvd(int),hAPP(nat,int,power_power(int,P_3),N_1)),hAPP(int,int,times_times(int,A_1),B)))
         => hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),dvd_dvd(int),hAPP(nat,int,power_power(int,P_3),N_1)),B)) ) ) ) ).

fof(fact_703_real__mult__le__cancel__iff1,axiom,
    ! [X,Y_1,Z_2] :
      ( hBOOL(hAPP(real,bool,hAPP(real,fun(real,bool),ord_less(real),zero_zero(real)),Z_2))
     => ( hBOOL(hAPP(real,bool,hAPP(real,fun(real,bool),ord_less_eq(real),X),Y_1))
      <=> hBOOL(hAPP(real,bool,hAPP(real,fun(real,bool),ord_less_eq(real),hAPP(real,real,times_times(real,X),Z_2)),hAPP(real,real,times_times(real,Y_1),Z_2))) ) ) ).

fof(arity_Int_Oint___Rings_Ocomm__semiring__1,axiom,
    comm_semiring_1(int) ).

fof(help_COMBC_1_1_U,axiom,
    ! [X_a,X_c,X_b,P,Q,R] : hAPP(X_a,X_c,combc(X_a,X_b,X_c,P,Q),R) = hAPP(X_b,X_c,hAPP(X_a,fun(X_b,X_c),P,R),Q) ).

fof(fact_330_dvd__mult2,axiom,
    ! [X_a] :
      ( comm_semiring_1(X_a)
     => ! [C,A_1,B] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),dvd_dvd(X_a),A_1),B))
         => hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),dvd_dvd(X_a),A_1),hAPP(X_a,X_a,times_times(X_a,B),C))) ) ) ).

fof(fact_784_add__less__imp__less__right,axiom,
    ! [X_a] :
      ( ordere236663937imp_le(X_a)
     => ! [A_1,C,B] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),A_1),B))
         <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),hAPP(X_a,X_a,plus_plus(X_a,A_1),C)),hAPP(X_a,X_a,plus_plus(X_a,B),C))) ) ) ).

fof(fact_871_gcd__lcm__complete__lattice__nat_Otop__unique,axiom,
    ! [A_3] :
      ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),zero_zero(nat)),A_3))
    <=> zero_zero(nat) = A_3 ) ).

fof(fact_20_qf1pt,axiom,
    hBOOL(hAPP(int,bool,twoSqu658283162sum2sq,hAPP(int,int,times_times(int,hAPP(int,int,plus_plus(int,hAPP(int,int,times_times(int,number_number_of(int,bit0(bit0(bit1(pls))))),m)),one_one(int))),t))) ).

fof(arity_RealDef_Oreal___Groups_Oordered__comm__monoid__add,axiom,
    ordere216010020id_add(real) ).

fof(fact_454_power__Suc__less,axiom,
    ! [X_a] :
      ( linordered_semidom(X_a)
     => ! [N_1,A_1] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),zero_zero(X_a)),A_1))
         => ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),hAPP(X_a,X_a,times_times(X_a,A_1),hAPP(nat,X_a,power_power(X_a,A_1),N_1))),hAPP(nat,X_a,power_power(X_a,A_1),N_1)))
           <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),A_1),one_one(X_a))) ) ) ) ).

fof(fact_497_diff__bin__simps_I6_J,axiom,
    ! [L_1] : hAPP(int,int,minus_minus(int,min),bit1(L_1)) = bit0(hAPP(int,int,minus_minus(int,min),L_1)) ).

fof(fact_714_mult__le__cancel2,axiom,
    ! [Ma,K,N] :
      ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),hAPP(nat,nat,times_times(nat,Ma),K)),hAPP(nat,nat,times_times(nat,N),K)))
    <=> ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),zero_zero(nat)),K))
       => hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),Ma),N)) ) ) ).

fof(fact_849_Int2_Oaux____1,axiom,
    ! [X_1,P_3] :
      ( ( ( hBOOL(hAPP(int,bool,zcong(multInv(P_3,multInv(P_3,X_1)),hAPP(int,int,times_times(int,hAPP(int,int,times_times(int,X_1),multInv(P_3,X_1))),multInv(P_3,multInv(P_3,X_1)))),P_3))
         <= ~ hBOOL(hAPP(int,bool,zcong(X_1,zero_zero(int)),P_3)) )
       <= hBOOL(hAPP(int,bool,zprime,P_3)) )
     <= hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),number_number_of(int,bit0(bit1(pls)))),P_3)) ) ).

fof(fact_750_zcong__zless__unique,axiom,
    ! [A_1,M] :
      ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),zero_zero(int)),M))
     => ? [X_2] :
          ( hBOOL(hAPP(int,bool,zcong(A_1,X_2),M))
          & ! [Y_2] :
              ( ( hBOOL(hAPP(int,bool,zcong(A_1,Y_2),M))
                & hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),Y_2),M))
                & hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),zero_zero(int)),Y_2)) )
             => ti(int,X_2) = ti(int,Y_2) )
          & hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),X_2),M))
          & hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),zero_zero(int)),X_2)) ) ) ).

fof(fact_508_Legendre__def,axiom,
    ! [A_1,P_3] :
      ( ( hBOOL(hAPP(int,bool,zcong(A_1,zero_zero(int)),P_3))
       => zero_zero(int) = legendre(A_1,P_3) )
      & ( ( ( ~ hBOOL(hAPP(int,bool,quadRes(P_3),A_1))
           => number_number_of(int,min) = legendre(A_1,P_3) )
          & ( one_one(int) = legendre(A_1,P_3)
           <= hBOOL(hAPP(int,bool,quadRes(P_3),A_1)) ) )
       <= ~ hBOOL(hAPP(int,bool,zcong(A_1,zero_zero(int)),P_3)) ) ) ).

fof(tsy_c_COMBC_arg2,axiom,
    ! [X_a,X_b,X_c,B_1_1,B_2_1] : combc(X_a,X_b,X_c,B_1_1,B_2_1) = combc(X_a,X_b,X_c,B_1_1,ti(X_b,B_2_1)) ).

fof(fact_258_Nat__Transfer_Otransfer__nat__int__function__closures_I2_J,axiom,
    ! [Y,X_1] :
      ( ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),zero_zero(int)),hAPP(int,int,times_times(int,X_1),Y)))
       <= hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),zero_zero(int)),Y)) )
     <= hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),zero_zero(int)),X_1)) ) ).

fof(fact_561_dvd_Oless__imp__not__less,axiom,
    ! [X_1,Y] :
      ( ( ~ hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),Y),X_1))
        & hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),X_1),Y)) )
     => ~ ( ~ hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),X_1),Y))
          & hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),Y),X_1)) ) ) ).

fof(fact_535_diff__commute,axiom,
    ! [I_1,J_1,K_1] : hAPP(nat,nat,minus_minus(nat,hAPP(nat,nat,minus_minus(nat,I_1),K_1)),J_1) = hAPP(nat,nat,minus_minus(nat,hAPP(nat,nat,minus_minus(nat,I_1),J_1)),K_1) ).

fof(tsy_c_Divides_Odiv__class_Omod_arg1,axiom,
    ! [B_1_1,X_a] :
      ( semiring_div(X_a)
     => div_mod(X_a,B_1_1) = div_mod(X_a,ti(X_a,B_1_1)) ) ).

fof(fact_206_zdvd__reduce,axiom,
    ! [K,N,Ma] :
      ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),dvd_dvd(int),K),N))
    <=> hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),dvd_dvd(int),K),hAPP(int,int,plus_plus(int,N),hAPP(int,int,times_times(int,K),Ma)))) ) ).

fof(fact_869_pow__divides__pow__int,axiom,
    ! [A_1,N_1,B] :
      ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),dvd_dvd(int),hAPP(nat,int,power_power(int,A_1),N_1)),hAPP(nat,int,power_power(int,B),N_1)))
     => ( zero_zero(nat) != N_1
       => hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),dvd_dvd(int),A_1),B)) ) ) ).

fof(fact_983_mod__geq,axiom,
    ! [M,N_1] :
      ( hAPP(nat,nat,div_mod(nat,M),N_1) = hAPP(nat,nat,div_mod(nat,hAPP(nat,nat,minus_minus(nat,M),N_1)),N_1)
     <= ~ hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),M),N_1)) ) ).

fof(fact_18__096_B_Bthesis_O_A_I_B_Bt_O_As_A_094_A2_A_L_A1_A_061_A_I4_A_K_Am_A_L_A1_,axiom,
    ~ ! [T_4] : hAPP(int,int,plus_plus(int,hAPP(nat,int,power_power(int,s),number_number_of(nat,bit0(bit1(pls))))),one_one(int)) != hAPP(int,int,times_times(int,hAPP(int,int,plus_plus(int,hAPP(int,int,times_times(int,number_number_of(int,bit0(bit0(bit1(pls))))),m)),one_one(int))),T_4) ).

fof(fact_438_power__le__imp__le__exp,axiom,
    ! [X_a] :
      ( linordered_semidom(X_a)
     => ! [M,N_1,A_1] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),one_one(X_a)),A_1))
         => ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),M),N_1))
           <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(nat,X_a,power_power(X_a,A_1),M)),hAPP(nat,X_a,power_power(X_a,A_1),N_1))) ) ) ) ).

fof(fact_122_Pls__def,axiom,
    zero_zero(int) = pls ).

fof(fact_730_nat__mult__dvd__cancel__disj,axiom,
    ! [K,Ma,N] :
      ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),hAPP(nat,nat,times_times(nat,K),Ma)),hAPP(nat,nat,times_times(nat,K),N)))
    <=> ( zero_zero(nat) = K
        | hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),Ma),N)) ) ) ).

fof(fact_783_add__strict__mono,axiom,
    ! [X_a] :
      ( ! [C,D_2,A_1,B] :
          ( ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),C),D_2))
           => hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),hAPP(X_a,X_a,plus_plus(X_a,A_1),C)),hAPP(X_a,X_a,plus_plus(X_a,B),D_2))) )
         <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),A_1),B)) )
     <= ordere223160158up_add(X_a) ) ).

fof(fact_114_double__eq__0__iff,axiom,
    ! [X_a] :
      ( linord219039673up_add(X_a)
     => ! [A_3] :
          ( zero_zero(X_a) = hAPP(X_a,X_a,plus_plus(X_a,A_3),A_3)
        <=> ti(X_a,A_3) = zero_zero(X_a) ) ) ).

fof(fact_922_dvd__mod__imp__dvd,axiom,
    ! [X_a] :
      ( ! [K_1,M,N_1] :
          ( ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),dvd_dvd(X_a),K_1),N_1))
           => hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),dvd_dvd(X_a),K_1),M)) )
         <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),dvd_dvd(X_a),K_1),hAPP(X_a,X_a,div_mod(X_a,M),N_1))) )
     <= semiring_div(X_a) ) ).

fof(fact_796_add__diff__cancel,axiom,
    ! [X_a] :
      ( group_add(X_a)
     => ! [A_1,B] : ti(X_a,A_1) = hAPP(X_a,X_a,minus_minus(X_a,hAPP(X_a,X_a,plus_plus(X_a,A_1),B)),B) ) ).

fof(fact_547_less__irrefl__nat,axiom,
    ! [N_1] : ~ hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),N_1),N_1)) ).

fof(fact_668_add__leE,axiom,
    ! [M,K_1,N_1] :
      ( ~ ( ~ hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),K_1),N_1))
         <= hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),M),N_1)) )
     <= hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),hAPP(nat,nat,plus_plus(nat,M),K_1)),N_1)) ) ).

fof(fact_677_diff__add__assoc,axiom,
    ! [I_1,K_1,J_1] :
      ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),K_1),J_1))
     => hAPP(nat,nat,plus_plus(nat,I_1),hAPP(nat,nat,minus_minus(nat,J_1),K_1)) = hAPP(nat,nat,minus_minus(nat,hAPP(nat,nat,plus_plus(nat,I_1),J_1)),K_1) ) ).

fof(arity_Int_Oint___Rings_Olinordered__semiring__strict,axiom,
    linord20386208strict(int) ).

fof(fact_848_Int2_Oaux____2,axiom,
    ! [X_1,P_3] :
      ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),number_number_of(int,bit0(bit1(pls)))),P_3))
     => ( hBOOL(hAPP(int,bool,zprime,P_3))
       => ( ~ hBOOL(hAPP(int,bool,zcong(X_1,zero_zero(int)),P_3))
         => hBOOL(hAPP(int,bool,zcong(hAPP(int,int,times_times(int,hAPP(int,int,times_times(int,X_1),multInv(P_3,X_1))),multInv(P_3,multInv(P_3,X_1))),X_1),P_3)) ) ) ) ).

fof(fact_595_real__mult__1,axiom,
    ! [Z_1] : hAPP(real,real,times_times(real,one_one(real)),Z_1) = Z_1 ).

fof(fact_97_zadd__left__commute,axiom,
    ! [X_1,Y,Z_1] : hAPP(int,int,plus_plus(int,Y),hAPP(int,int,plus_plus(int,X_1),Z_1)) = hAPP(int,int,plus_plus(int,X_1),hAPP(int,int,plus_plus(int,Y),Z_1)) ).

fof(arity_RealDef_Oreal___Int_Onumber,axiom,
    number(real) ).

fof(fact_251_add__scale__eq__noteq,axiom,
    ! [X_a] :
      ( ! [C,D_2,A_1,B,R_1] :
          ( ( hAPP(X_a,X_a,plus_plus(X_a,B),hAPP(X_a,X_a,times_times(X_a,R_1),D_2)) != hAPP(X_a,X_a,plus_plus(X_a,A_1),hAPP(X_a,X_a,times_times(X_a,R_1),C))
           <= ( ti(X_a,B) = ti(X_a,A_1)
              & ti(X_a,D_2) != ti(X_a,C) ) )
         <= ti(X_a,R_1) != zero_zero(X_a) )
     <= semiri456707255roduct(X_a) ) ).

fof(fact_904_mod__mult__mult1,axiom,
    ! [X_a] :
      ( ! [C,A_1,B] : hAPP(X_a,X_a,times_times(X_a,C),hAPP(X_a,X_a,div_mod(X_a,A_1),B)) = hAPP(X_a,X_a,div_mod(X_a,hAPP(X_a,X_a,times_times(X_a,C),A_1)),hAPP(X_a,X_a,times_times(X_a,C),B))
     <= semiring_div(X_a) ) ).

fof(arity_Int_Oint___Groups_Oab__semigroup__add,axiom,
    ab_semigroup_add(int) ).

fof(fact_256_pos__zmult__pos,axiom,
    ! [B,A_1] :
      ( ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),zero_zero(int)),B))
       <= hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),zero_zero(int)),hAPP(int,int,times_times(int,A_1),B))) )
     <= hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),zero_zero(int)),A_1)) ) ).

fof(fact_112_mult__Bit1,axiom,
    ! [K_1,L_1] : hAPP(int,int,times_times(int,bit1(K_1)),L_1) = hAPP(int,int,plus_plus(int,bit0(hAPP(int,int,times_times(int,K_1),L_1))),L_1) ).

fof(fact_180_less__special_I2_J,axiom,
    ! [X_a] :
      ( ( number_ring(X_a)
        & linordered_idom(X_a) )
     => ! [Y_1] :
          ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),bit1(pls)),Y_1))
        <=> hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),one_one(X_a)),number_number_of(X_a,Y_1))) ) ) ).

fof(fact_194__096EX_B_As_O_A0_A_060_061_As_A_G_As_A_060_A4_A_K_Am_A_L_A1_A_G_A_091s1,axiom,
    ? [X_2] :
      ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),X_2),hAPP(int,int,plus_plus(int,hAPP(int,int,times_times(int,number_number_of(int,bit0(bit0(bit1(pls))))),m)),one_one(int))))
      & ! [Y_2] :
          ( ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),Y_2),hAPP(int,int,plus_plus(int,hAPP(int,int,times_times(int,number_number_of(int,bit0(bit0(bit1(pls))))),m)),one_one(int))))
            & hBOOL(hAPP(int,bool,zcong(s1,Y_2),hAPP(int,int,plus_plus(int,hAPP(int,int,times_times(int,number_number_of(int,bit0(bit0(bit1(pls))))),m)),one_one(int))))
            & hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),zero_zero(int)),Y_2)) )
         => ti(int,X_2) = ti(int,Y_2) )
      & hBOOL(hAPP(int,bool,zcong(s1,X_2),hAPP(int,int,plus_plus(int,hAPP(int,int,times_times(int,number_number_of(int,bit0(bit0(bit1(pls))))),m)),one_one(int))))
      & hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),zero_zero(int)),X_2)) ) ).

fof(fact_568_dvd_Oorder__trans,axiom,
    ! [Z_1,X_1,Y] :
      ( ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),Y),Z_1))
       => hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),X_1),Z_1)) )
     <= hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),X_1),Y)) ) ).

fof(fact_343_nat__power__less__imp__less,axiom,
    ! [M,N_1,I_1] :
      ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),zero_zero(nat)),I_1))
     => ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),M),N_1))
       <= hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),hAPP(nat,nat,power_power(nat,I_1),M)),hAPP(nat,nat,power_power(nat,I_1),N_1))) ) ) ).

fof(fact_569_dvd_Oantisym,axiom,
    ! [X_1,Y] :
      ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),X_1),Y))
     => ( X_1 = Y
       <= hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),Y),X_1)) ) ) ).

fof(fact_493_Euler_Oaux1,axiom,
    ! [A_1,X_1] :
      ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),zero_zero(int)),X_1))
     => ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),X_1),A_1))
       => ( hAPP(int,int,minus_minus(int,A_1),one_one(int)) != ti(int,X_1)
         => hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),X_1),hAPP(int,int,minus_minus(int,A_1),one_one(int)))) ) ) ) ).

fof(fact_687_mult__le__mono,axiom,
    ! [K_1,L_1,I_1,J_1] :
      ( ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),K_1),L_1))
       => hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),hAPP(nat,nat,times_times(nat,I_1),K_1)),hAPP(nat,nat,times_times(nat,J_1),L_1))) )
     <= hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),I_1),J_1)) ) ).

fof(fact_92_zless__linear,axiom,
    ! [X_1,Y] :
      ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),X_1),Y))
      | hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),Y),X_1))
      | ti(int,Y) = ti(int,X_1) ) ).

fof(fact_555_dvd_Oless__asym_H,axiom,
    ! [A_1,B] :
      ( ~ ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),B),A_1))
          & ~ hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),A_1),B)) )
     <= ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),A_1),B))
        & ~ hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),B),A_1)) ) ) ).

fof(fact_250_zero__le__even__power_H,axiom,
    ! [X_a] :
      ( ! [A_1,N_1] : hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),zero_zero(X_a)),hAPP(nat,X_a,power_power(X_a,A_1),hAPP(nat,nat,times_times(nat,number_number_of(nat,bit0(bit1(pls)))),N_1))))
     <= linordered_idom(X_a) ) ).

fof(fact_934_zmod__eq__dvd__iff,axiom,
    ! [X,N,Y_1] :
      ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),dvd_dvd(int),N),hAPP(int,int,minus_minus(int,X),Y_1)))
    <=> hAPP(int,int,div_mod(int,X),N) = hAPP(int,int,div_mod(int,Y_1),N) ) ).

fof(fact_410_power__eq__0__iff,axiom,
    ! [X_a] :
      ( ! [A_3,N] :
          ( ( N != zero_zero(nat)
            & zero_zero(X_a) = ti(X_a,A_3) )
        <=> hAPP(nat,X_a,power_power(X_a,A_3),N) = zero_zero(X_a) )
     <= ( power(X_a)
        & mult_zero(X_a)
        & no_zero_divisors(X_a)
        & zero_neq_one(X_a) ) ) ).

fof(fact_377_zero__le__square,axiom,
    ! [X_a] :
      ( ! [A_1] : hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),zero_zero(X_a)),hAPP(X_a,X_a,times_times(X_a,A_1),A_1)))
     <= linordered_ring(X_a) ) ).

fof(fact_511_divides__cases,axiom,
    ! [N_1,M] :
      ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),N_1),M))
     => ( M = N_1
        | hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),hAPP(nat,nat,times_times(nat,number_number_of(nat,bit0(bit1(pls)))),N_1)),M))
        | zero_zero(nat) = M ) ) ).

fof(help_ti_idem,axiom,
    ! [T,A] : ti(T,ti(T,A)) = ti(T,A) ).

fof(fact_43_arith__simps_I32_J,axiom,
    ! [X_a] :
      ( number_ring(X_a)
     => ! [V,W] : hAPP(X_a,X_a,times_times(X_a,number_number_of(X_a,V)),number_number_of(X_a,W)) = number_number_of(X_a,hAPP(int,int,times_times(int,V),W)) ) ).

fof(fact_651_le__neq__implies__less,axiom,
    ! [M,N_1] :
      ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),M),N_1))
     => ( M != N_1
       => hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),M),N_1)) ) ) ).

fof(fact_507_Legendre__1mod4,axiom,
    ! [M] :
      ( legendre(number_number_of(int,min),hAPP(int,int,plus_plus(int,hAPP(int,int,times_times(int,number_number_of(int,bit0(bit0(bit1(pls))))),M)),one_one(int))) = one_one(int)
     <= hBOOL(hAPP(int,bool,zprime,hAPP(int,int,plus_plus(int,hAPP(int,int,times_times(int,number_number_of(int,bit0(bit0(bit1(pls))))),M)),one_one(int)))) ) ).

fof(arity_Nat_Onat___Groups_Ozero,axiom,
    zero(nat) ).

fof(fact_678_add__diff__assoc2,axiom,
    ! [I_1,K_1,J_1] :
      ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),K_1),J_1))
     => hAPP(nat,nat,minus_minus(nat,hAPP(nat,nat,plus_plus(nat,J_1),I_1)),K_1) = hAPP(nat,nat,plus_plus(nat,hAPP(nat,nat,minus_minus(nat,J_1),K_1)),I_1) ) ).

fof(fact_16_add__special_I3_J,axiom,
    ! [X_a] :
      ( ! [V] : number_number_of(X_a,hAPP(int,int,plus_plus(int,V),bit1(pls))) = hAPP(X_a,X_a,plus_plus(X_a,number_number_of(X_a,V)),one_one(X_a))
     <= number_ring(X_a) ) ).

fof(fact_647_less__diff__conv,axiom,
    ! [I_2,J_2,K] :
      ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),I_2),hAPP(nat,nat,minus_minus(nat,J_2),K)))
    <=> hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),hAPP(nat,nat,plus_plus(nat,I_2),K)),J_2)) ) ).

fof(tsy_c_Groups_Otimes__class_Otimes_2_arg1,axiom,
    ! [B_1_1,X_a] :
      ( times_times(X_a,B_1_1) = times_times(X_a,ti(X_a,B_1_1))
     <= dvd(X_a) ) ).

fof(fact_39_eq__number__of__0,axiom,
    ! [V_3] :
      ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),V_3),pls))
    <=> zero_zero(nat) = number_number_of(nat,V_3) ) ).

fof(fact_445_power__strict__increasing__iff,axiom,
    ! [X_a] :
      ( ! [X,Y_1,B_2] :
          ( ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),X),Y_1))
          <=> hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),hAPP(nat,X_a,power_power(X_a,B_2),X)),hAPP(nat,X_a,power_power(X_a,B_2),Y_1))) )
         <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),one_one(X_a)),B_2)) )
     <= linordered_semidom(X_a) ) ).

fof(fact_436_power__less__imp__less__base,axiom,
    ! [X_a] :
      ( linordered_semidom(X_a)
     => ! [A_1,N_1,B] :
          ( ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),zero_zero(X_a)),B))
           => hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),A_1),B)) )
         <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),hAPP(nat,X_a,power_power(X_a,A_1),N_1)),hAPP(nat,X_a,power_power(X_a,B),N_1))) ) ) ).

fof(fact_473_zdiff__zmult__distrib,axiom,
    ! [Z1,Z2,W] : hAPP(int,int,times_times(int,hAPP(int,int,minus_minus(int,Z1),Z2)),W) = hAPP(int,int,minus_minus(int,hAPP(int,int,times_times(int,Z1),W)),hAPP(int,int,times_times(int,Z2),W)) ).

fof(fact_41_semiring__mult__number__of,axiom,
    ! [X_a] :
      ( ! [V_1,V] :
          ( ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),pls),V_1))
           => hAPP(X_a,X_a,times_times(X_a,number_number_of(X_a,V)),number_number_of(X_a,V_1)) = number_number_of(X_a,hAPP(int,int,times_times(int,V),V_1)) )
         <= hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),pls),V)) )
     <= number_semiring(X_a) ) ).

fof(fact_51_rel__simps_I22_J,axiom,
    ! [K] :
      ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),pls),bit1(K)))
    <=> hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),pls),K)) ) ).

fof(fact_3_t,axiom,
    hAPP(int,int,plus_plus(int,hAPP(nat,int,power_power(int,s),number_number_of(nat,bit0(bit1(pls))))),one_one(int)) = hAPP(int,int,times_times(int,hAPP(int,int,plus_plus(int,hAPP(int,int,times_times(int,number_number_of(int,bit0(bit0(bit1(pls))))),m)),one_one(int))),t) ).

fof(fact_238_add__0__iff,axiom,
    ! [X_a] :
      ( ! [B_2,A_3] :
          ( hAPP(X_a,X_a,plus_plus(X_a,B_2),A_3) = ti(X_a,B_2)
        <=> ti(X_a,A_3) = zero_zero(X_a) )
     <= semiri456707255roduct(X_a) ) ).

fof(tsy_c_Groups_Oone__class_Oone_res,axiom,
    ! [X_a] :
      ( one(X_a)
     => one_one(X_a) = ti(X_a,one_one(X_a)) ) ).

fof(fact_838_aux______3,axiom,
    ! [J_1,K_1,A_1,P_3] :
      ( hBOOL(hAPP(int,bool,zcong(hAPP(int,int,times_times(int,hAPP(int,int,times_times(int,multInv(P_3,J_1)),J_1)),K_1),hAPP(int,int,times_times(int,multInv(P_3,J_1)),A_1)),P_3))
     <= hBOOL(hAPP(int,bool,zcong(hAPP(int,int,times_times(int,J_1),K_1),A_1),P_3)) ) ).

fof(fact_523_nat__power__eq__0__iff,axiom,
    ! [Ma,N] :
      ( zero_zero(nat) = hAPP(nat,nat,power_power(nat,Ma),N)
    <=> ( Ma = zero_zero(nat)
        & zero_zero(nat) != N ) ) ).

fof(fact_35_less__eq__int__code_I13_J,axiom,
    ! [K1,K2] :
      ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),K1),K2))
    <=> hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),bit0(K1)),bit0(K2))) ) ).

fof(arity_RealDef_Oreal___Int_Oring__char__0,axiom,
    ring_char_0(real) ).

fof(tsy_c_TwoSquares__Mirabelle__lldtdwpyrp_Ois__sum2sq_res,axiom,
    twoSqu658283162sum2sq = ti(fun(int,bool),twoSqu658283162sum2sq) ).

fof(arity_Nat_Onat___Rings_Odvd,axiom,
    dvd(nat) ).

fof(fact_247_comm__semiring__1__class_Onormalizing__semiring__rules_I26_J,axiom,
    ! [X_a] :
      ( comm_semiring_1(X_a)
     => ! [X_1,P_3,Q_1] : hAPP(nat,X_a,power_power(X_a,X_1),hAPP(nat,nat,plus_plus(nat,P_3),Q_1)) = hAPP(X_a,X_a,times_times(X_a,hAPP(nat,X_a,power_power(X_a,X_1),P_3)),hAPP(nat,X_a,power_power(X_a,X_1),Q_1)) ) ).

fof(fact_387_zero__less__mult__pos,axiom,
    ! [X_a] :
      ( ! [A_1,B] :
          ( ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),zero_zero(X_a)),B))
           <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),zero_zero(X_a)),A_1)) )
         <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),zero_zero(X_a)),hAPP(X_a,X_a,times_times(X_a,A_1),B))) )
     <= linord20386208strict(X_a) ) ).

fof(fact_737_nat__diff__add__eq2,axiom,
    ! [U_1,M,N_1,I_1,J_1] :
      ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),I_1),J_1))
     => hAPP(nat,nat,minus_minus(nat,hAPP(nat,nat,plus_plus(nat,hAPP(nat,nat,times_times(nat,I_1),U_1)),M)),hAPP(nat,nat,plus_plus(nat,hAPP(nat,nat,times_times(nat,J_1),U_1)),N_1)) = hAPP(nat,nat,minus_minus(nat,M),hAPP(nat,nat,plus_plus(nat,hAPP(nat,nat,times_times(nat,hAPP(nat,nat,minus_minus(nat,J_1),I_1)),U_1)),N_1)) ) ).

fof(fact_870_gcd__lcm__complete__lattice__nat_Otop__le,axiom,
    ! [A_1] :
      ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),zero_zero(nat)),A_1))
     => zero_zero(nat) = A_1 ) ).

fof(fact_840_MultInv__zcong__prop1,axiom,
    ! [A_1,J_1,K_1,P_3] :
      ( ( hBOOL(hAPP(int,bool,zcong(hAPP(int,int,times_times(int,A_1),multInv(P_3,J_1)),hAPP(int,int,times_times(int,A_1),multInv(P_3,K_1))),P_3))
       <= hBOOL(hAPP(int,bool,zcong(J_1,K_1),P_3)) )
     <= hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),number_number_of(int,bit0(bit1(pls)))),P_3)) ) ).

fof(arity_RealDef_Oreal___Power_Opower,axiom,
    power(real) ).

fof(fact_994_mod__lemma,axiom,
    ! [Q_1,R_1,B,C] :
      ( ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),R_1),B))
       => hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),hAPP(nat,nat,plus_plus(nat,hAPP(nat,nat,times_times(nat,B),hAPP(nat,nat,div_mod(nat,Q_1),C))),R_1)),hAPP(nat,nat,times_times(nat,B),C))) )
     <= hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),zero_zero(nat)),C)) ) ).

fof(fact_506_neg__one__power,axiom,
    ! [N_1] :
      ( number_number_of(int,min) = hAPP(nat,int,power_power(int,number_number_of(int,min)),N_1)
      | hAPP(nat,int,power_power(int,number_number_of(int,min)),N_1) = one_one(int) ) ).

fof(arity_RealDef_Oreal___Groups_Oab__semigroup__mult,axiom,
    ab_semigroup_mult(real) ).

fof(fact_566_dvd_Oord__eq__less__trans,axiom,
    ! [C,A_1,B] :
      ( ( ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),B),C))
          & ~ hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),C),B)) )
       => ( ~ hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),C),A_1))
          & hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),A_1),C)) ) )
     <= A_1 = B ) ).

fof(tsy_c_TwoSquares__Mirabelle__lldtdwpyrp_Osum2sq_res,axiom,
    ! [B_1_1] : ti(int,twoSqu1929807760sum2sq(B_1_1)) = twoSqu1929807760sum2sq(B_1_1) ).

fof(arity_RealDef_Oreal___Groups_Oone,axiom,
    one(real) ).

fof(fact_962_mod__neg__neg__trivial,axiom,
    ! [B,A_1] :
      ( ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),B),A_1))
       => hAPP(int,int,div_mod(int,A_1),B) = ti(int,A_1) )
     <= hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),A_1),zero_zero(int))) ) ).

fof(fact_763_add__imp__eq,axiom,
    ! [X_a] :
      ( cancel146912293up_add(X_a)
     => ! [A_1,B,C] :
          ( ti(X_a,B) = ti(X_a,C)
         <= hAPP(X_a,X_a,plus_plus(X_a,A_1),C) = hAPP(X_a,X_a,plus_plus(X_a,A_1),B) ) ) ).

fof(fact_966_zmult2__lemma__aux2,axiom,
    ! [Q_1,B,R_1,C] :
      ( ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),B),R_1))
       => ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),hAPP(int,int,plus_plus(int,hAPP(int,int,times_times(int,B),hAPP(int,int,div_mod(int,Q_1),C))),R_1)),zero_zero(int)))
         <= hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),R_1),zero_zero(int))) ) )
     <= hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),zero_zero(int)),C)) ) ).

fof(tsy_c_WilsonRuss_Oinv_res,axiom,
    ! [B_1_1,B_2_1] : inv(B_1_1,B_2_1) = ti(int,inv(B_1_1,B_2_1)) ).

fof(arity_Nat_Onat___Rings_Ono__zero__divisors,axiom,
    no_zero_divisors(nat) ).

fof(fact_695_add__gr__0,axiom,
    ! [Ma,N] :
      ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),zero_zero(nat)),hAPP(nat,nat,plus_plus(nat,Ma),N)))
    <=> ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),zero_zero(nat)),N))
        | hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),zero_zero(nat)),Ma)) ) ) ).

fof(fact_836_int__le__induct,axiom,
    ! [P_1,I_2,K] :
      ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),I_2),K))
     => ( hBOOL(hAPP(int,bool,P_1,K))
       => ( hBOOL(hAPP(int,bool,P_1,I_2))
         <= ! [I] :
              ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),I),K))
             => ( hBOOL(hAPP(int,bool,P_1,I))
               => hBOOL(hAPP(int,bool,P_1,hAPP(int,int,minus_minus(int,I),one_one(int)))) ) ) ) ) ) ).

fof(fact_363_mult__mono,axiom,
    ! [X_a] :
      ( ordered_semiring(X_a)
     => ! [C,D_2,A_1,B] :
          ( ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),C),D_2))
           => ( ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),zero_zero(X_a)),C))
               => hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(X_a,X_a,times_times(X_a,A_1),C)),hAPP(X_a,X_a,times_times(X_a,B),D_2))) )
             <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),zero_zero(X_a)),B)) ) )
         <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),A_1),B)) ) ) ).

fof(fact_284_rel__simps_I37_J,axiom,
    pls != min ).

fof(fact_188_self__quotient__aux1,axiom,
    ! [R_1,Q_1,A_1] :
      ( ( ti(int,A_1) = hAPP(int,int,plus_plus(int,R_1),hAPP(int,int,times_times(int,A_1),Q_1))
       => ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),R_1),A_1))
         => hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),one_one(int)),Q_1)) ) )
     <= hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),zero_zero(int)),A_1)) ) ).

fof(arity_Int_Oint___Rings_Ozero__neq__one,axiom,
    zero_neq_one(int) ).

fof(fact_968_zmult2__lemma__aux4,axiom,
    ! [Q_1,B,R_1,C] :
      ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),zero_zero(int)),C))
     => ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),zero_zero(int)),R_1))
       => ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),hAPP(int,int,plus_plus(int,hAPP(int,int,times_times(int,B),hAPP(int,int,div_mod(int,Q_1),C))),R_1)),hAPP(int,int,times_times(int,B),C)))
         <= hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),R_1),B)) ) ) ) ).

fof(fact_567_dvd__diff__nat,axiom,
    ! [N_1,K_1,M] :
      ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),K_1),M))
     => ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),K_1),hAPP(nat,nat,minus_minus(nat,M),N_1)))
       <= hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),K_1),N_1)) ) ) ).

fof(fact_428_mult__less__le__imp__less,axiom,
    ! [X_a] :
      ( ! [C,D_2,A_1,B] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),A_1),B))
         => ( ( ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),hAPP(X_a,X_a,times_times(X_a,A_1),C)),hAPP(X_a,X_a,times_times(X_a,B),D_2)))
               <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),zero_zero(X_a)),C)) )
             <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),zero_zero(X_a)),A_1)) )
           <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),C),D_2)) ) )
     <= linord20386208strict(X_a) ) ).

fof(fact_211_le__nat__number__of,axiom,
    ! [V_3,V_2] :
      ( ( ~ hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),V_3),V_2))
       => hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),V_3),pls)) )
    <=> hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),number_number_of(nat,V_3)),number_number_of(nat,V_2))) ) ).

fof(fact_731_nat__mult__dvd__cancel1,axiom,
    ! [Ma,N,K] :
      ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),zero_zero(nat)),K))
     => ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),hAPP(nat,nat,times_times(nat,K),Ma)),hAPP(nat,nat,times_times(nat,K),N)))
      <=> hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),Ma),N)) ) ) ).

fof(fact_710_real__squared__diff__one__factored,axiom,
    ! [X_a] :
      ( ! [X_1] : hAPP(X_a,X_a,minus_minus(X_a,hAPP(X_a,X_a,times_times(X_a,X_1),X_1)),one_one(X_a)) = hAPP(X_a,X_a,times_times(X_a,hAPP(X_a,X_a,plus_plus(X_a,X_1),one_one(X_a))),hAPP(X_a,X_a,minus_minus(X_a,X_1),one_one(X_a)))
     <= ring_1(X_a) ) ).

fof(fact_758_ab__semigroup__mult__class_Omult__ac_I1_J,axiom,
    ! [X_a] :
      ( ab_semigroup_mult(X_a)
     => ! [A_1,B,C] : hAPP(X_a,X_a,times_times(X_a,hAPP(X_a,X_a,times_times(X_a,A_1),B)),C) = hAPP(X_a,X_a,times_times(X_a,A_1),hAPP(X_a,X_a,times_times(X_a,B),C)) ) ).

fof(fact_105_sum__power2__le__zero__iff,axiom,
    ! [X_a] :
      ( linordered_idom(X_a)
     => ! [X,Y_1] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(X_a,X_a,plus_plus(X_a,hAPP(nat,X_a,power_power(X_a,X),number_number_of(nat,bit0(bit1(pls))))),hAPP(nat,X_a,power_power(X_a,Y_1),number_number_of(nat,bit0(bit1(pls)))))),zero_zero(X_a)))
        <=> ( ti(X_a,X) = zero_zero(X_a)
            & ti(X_a,Y_1) = zero_zero(X_a) ) ) ) ).

fof(fact_590_diff__diff__left,axiom,
    ! [I_1,J_1,K_1] : hAPP(nat,nat,minus_minus(nat,I_1),hAPP(nat,nat,plus_plus(nat,J_1),K_1)) = hAPP(nat,nat,minus_minus(nat,hAPP(nat,nat,minus_minus(nat,I_1),J_1)),K_1) ).

fof(arity_RealDef_Oreal___Rings_Ocomm__ring__1,axiom,
    comm_ring_1(real) ).

fof(tsy_c_Int2_OMultInv_arg1,axiom,
    ! [B_1_1,B_2_1] : multInv(B_1_1,B_2_1) = multInv(ti(int,B_1_1),B_2_1) ).

fof(fact_390_mult__pos__pos,axiom,
    ! [X_a] :
      ( ! [B,A_1] :
          ( ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),zero_zero(X_a)),B))
           => hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),zero_zero(X_a)),hAPP(X_a,X_a,times_times(X_a,A_1),B))) )
         <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),zero_zero(X_a)),A_1)) )
     <= linord20386208strict(X_a) ) ).

fof(arity_RealDef_Oreal___Rings_Omult__zero,axiom,
    mult_zero(real) ).

fof(tsy_c_Residues_OQuadRes_res,axiom,
    ! [B_1_1] : ti(fun(int,bool),quadRes(B_1_1)) = quadRes(B_1_1) ).

fof(fact_630_mult__0,axiom,
    ! [N_1] : zero_zero(nat) = hAPP(nat,nat,times_times(nat,zero_zero(nat)),N_1) ).

fof(fact_467__096_126_AQuadRes_A_I4_A_K_Am_A_L_A1_J_A_N1_A_061_061_062_ALegendre_A_N,axiom,
    ( legendre(number_number_of(int,min),hAPP(int,int,plus_plus(int,hAPP(int,int,times_times(int,number_number_of(int,bit0(bit0(bit1(pls))))),m)),one_one(int))) != one_one(int)
   <= ~ hBOOL(hAPP(int,bool,quadRes(hAPP(int,int,plus_plus(int,hAPP(int,int,times_times(int,number_number_of(int,bit0(bit0(bit1(pls))))),m)),one_one(int))),number_number_of(int,min))) ) ).

fof(fact_364_mult__mono_H,axiom,
    ! [X_a] :
      ( ordered_semiring(X_a)
     => ! [C,D_2,A_1,B] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),A_1),B))
         => ( ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),zero_zero(X_a)),A_1))
             => ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(X_a,X_a,times_times(X_a,A_1),C)),hAPP(X_a,X_a,times_times(X_a,B),D_2)))
               <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),zero_zero(X_a)),C)) ) )
           <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),C),D_2)) ) ) ) ).

fof(tsy_c_COMBC_arg1,axiom,
    ! [X_a,X_b,X_c,B_1_1,B_2_1] : combc(X_a,X_b,X_c,ti(fun(X_a,fun(X_b,X_c)),B_1_1),B_2_1) = combc(X_a,X_b,X_c,B_1_1,B_2_1) ).

fof(fact_296_rel__simps_I26_J,axiom,
    ! [K] :
      ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),min),K))
    <=> hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),min),bit1(K))) ) ).

fof(fact_209_zdvd__imp__le,axiom,
    ! [Z_1,N_1] :
      ( ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),zero_zero(int)),N_1))
       => hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),Z_1),N_1)) )
     <= hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),dvd_dvd(int),Z_1),N_1)) ) ).

fof(fact_47_le__special_I3_J,axiom,
    ! [X_a] :
      ( ! [X] :
          ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),X),pls))
        <=> hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),number_number_of(X_a,X)),zero_zero(X_a))) )
     <= ( linordered_idom(X_a)
        & number_ring(X_a) ) ) ).

fof(fact_10_power2__less__0,axiom,
    ! [X_a] :
      ( ! [A_1] : ~ hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),hAPP(nat,X_a,power_power(X_a,A_1),number_number_of(nat,bit0(bit1(pls))))),zero_zero(X_a)))
     <= linordered_idom(X_a) ) ).

fof(fact_450_zpower__zdvd__prop1,axiom,
    ! [P_3,Y,N_1] :
      ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),zero_zero(nat)),N_1))
     => ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),dvd_dvd(int),P_3),Y))
       => hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),dvd_dvd(int),P_3),hAPP(nat,int,power_power(int,Y),N_1))) ) ) ).

fof(fact_276_convex__bound__lt,axiom,
    ! [X_a] :
      ( linord626643107strict(X_a)
     => ! [V,U_1,Y,X_1,A_1] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),X_1),A_1))
         => ( ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),zero_zero(X_a)),U_1))
             => ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),zero_zero(X_a)),V))
               => ( hAPP(X_a,X_a,plus_plus(X_a,U_1),V) = one_one(X_a)
                 => hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),hAPP(X_a,X_a,plus_plus(X_a,hAPP(X_a,X_a,times_times(X_a,U_1),X_1)),hAPP(X_a,X_a,times_times(X_a,V),Y))),A_1)) ) ) )
           <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),Y),A_1)) ) ) ) ).

fof(fact_23_zmult__commute,axiom,
    ! [Z_1,W] : hAPP(int,int,times_times(int,Z_1),W) = hAPP(int,int,times_times(int,W),Z_1) ).

fof(fact_8_sum__power2__gt__zero__iff,axiom,
    ! [X_a] :
      ( ! [X,Y_1] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),zero_zero(X_a)),hAPP(X_a,X_a,plus_plus(X_a,hAPP(nat,X_a,power_power(X_a,X),number_number_of(nat,bit0(bit1(pls))))),hAPP(nat,X_a,power_power(X_a,Y_1),number_number_of(nat,bit0(bit1(pls)))))))
        <=> ( ti(X_a,Y_1) != zero_zero(X_a)
            | zero_zero(X_a) != ti(X_a,X) ) )
     <= linordered_idom(X_a) ) ).

fof(arity_Nat_Onat___Rings_Osemiring,axiom,
    semiring(nat) ).

fof(arity_Nat_Onat___Groups_Oplus,axiom,
    plus(nat) ).

fof(fact_759_ab__semigroup__add__class_Oadd__ac_I1_J,axiom,
    ! [X_a] :
      ( ! [A_1,B,C] : hAPP(X_a,X_a,plus_plus(X_a,hAPP(X_a,X_a,plus_plus(X_a,A_1),B)),C) = hAPP(X_a,X_a,plus_plus(X_a,A_1),hAPP(X_a,X_a,plus_plus(X_a,B),C))
     <= ab_semigroup_add(X_a) ) ).

fof(fact_2__096_I4_A_K_Am_A_L_A1_J_A_K_At_A_060_A_I4_A_K_Am_A_L_A1_J_A_K_A0_096,axiom,
    hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),hAPP(int,int,times_times(int,hAPP(int,int,plus_plus(int,hAPP(int,int,times_times(int,number_number_of(int,bit0(bit0(bit1(pls))))),m)),one_one(int))),t)),hAPP(int,int,times_times(int,hAPP(int,int,plus_plus(int,hAPP(int,int,times_times(int,number_number_of(int,bit0(bit0(bit1(pls))))),m)),one_one(int))),zero_zero(int)))) ).

fof(fact_426_mult__right__less__imp__less,axiom,
    ! [X_a] :
      ( ! [A_1,C,B] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),hAPP(X_a,X_a,times_times(X_a,A_1),C)),hAPP(X_a,X_a,times_times(X_a,B),C)))
         => ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),zero_zero(X_a)),C))
           => hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),A_1),B)) ) )
     <= linordered_semiring(X_a) ) ).

fof(fact_953_zdvd__iff__zmod__eq__0__number__of,axiom,
    ! [X,Y_1] :
      ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),dvd_dvd(int),number_number_of(int,X)),number_number_of(int,Y_1)))
    <=> zero_zero(int) = hAPP(int,int,div_mod(int,number_number_of(int,Y_1)),number_number_of(int,X)) ) ).

fof(fact_300_rel__simps_I28_J,axiom,
    ! [K] :
      ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),K),min))
    <=> hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),bit0(K)),min)) ) ).

fof(fact_594_real__mult__commute,axiom,
    ! [Z_1,W] : hAPP(real,real,times_times(real,W),Z_1) = hAPP(real,real,times_times(real,Z_1),W) ).

fof(tsy_c_Groups_Oplus__class_Oplus_0_res,axiom,
    ! [B_1_1,X_a] :
      ( ( plus(X_a)
        & dvd(X_a)
        & linorder(X_a) )
     => ti(fun(X_a,X_a),plus_plus(X_a,B_1_1)) = plus_plus(X_a,B_1_1) ) ).

fof(help_fconj_1_1_U,axiom,
    ! [Q,P] :
      ( ~ hBOOL(P)
      | hBOOL(hAPP(bool,bool,hAPP(bool,fun(bool,bool),fconj,P),Q))
      | ~ hBOOL(Q) ) ).

fof(fact_992_StandardRes__SR__prop,axiom,
    ! [X,P_2] :
      ( standardRes(P_2,X) = ti(int,X)
     <= hBOOL(hAPP(fun(int,bool),bool,member(int,X),sr(P_2))) ) ).

fof(fact_240_crossproduct__noteq,axiom,
    ! [X_a] :
      ( ! [C_1,D,A_3,B_2] :
          ( ( ti(X_a,A_3) != ti(X_a,B_2)
            & ti(X_a,C_1) != ti(X_a,D) )
        <=> hAPP(X_a,X_a,plus_plus(X_a,hAPP(X_a,X_a,times_times(X_a,A_3),D)),hAPP(X_a,X_a,times_times(X_a,B_2),C_1)) != hAPP(X_a,X_a,plus_plus(X_a,hAPP(X_a,X_a,times_times(X_a,A_3),C_1)),hAPP(X_a,X_a,times_times(X_a,B_2),D)) )
     <= semiri456707255roduct(X_a) ) ).

fof(fact_918_zmod__zero,axiom,
    ! [B] : zero_zero(int) = hAPP(int,int,div_mod(int,zero_zero(int)),B) ).

fof(tsy_c_Residues_OStandardRes_arg2,axiom,
    ! [B_1_1,B_2_1] : standardRes(B_1_1,B_2_1) = standardRes(B_1_1,ti(int,B_2_1)) ).

fof(fact_964_zmod__number__of__Bit0,axiom,
    ! [V,W] : hAPP(int,int,times_times(int,number_number_of(int,bit0(bit1(pls)))),hAPP(int,int,div_mod(int,number_number_of(int,V)),number_number_of(int,W))) = hAPP(int,int,div_mod(int,number_number_of(int,bit0(V))),number_number_of(int,bit0(W))) ).

fof(fact_788_diff__self,axiom,
    ! [X_a] :
      ( ! [A_1] : zero_zero(X_a) = hAPP(X_a,X_a,minus_minus(X_a,A_1),A_1)
     <= group_add(X_a) ) ).

fof(tsy_c_Product__Type_OPair_arg2,axiom,
    ! [B_1_1,B_2_1] : product_Pair(int,int,B_1_1,ti(int,B_2_1)) = product_Pair(int,int,B_1_1,B_2_1) ).

fof(fact_55_rel__simps_I21_J,axiom,
    ! [K] :
      ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),pls),K))
    <=> hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),pls),bit0(K))) ) ).

fof(arity_Int_Oint___Rings_Olinordered__semidom,axiom,
    linordered_semidom(int) ).

fof(fact_248_comm__semiring__1__class_Onormalizing__semiring__rules_I32_J,axiom,
    ! [X_a] :
      ( comm_semiring_1(X_a)
     => ! [X_1] : hAPP(nat,X_a,power_power(X_a,X_1),zero_zero(nat)) = one_one(X_a) ) ).

fof(fact_191_comm__semiring__1__class_Onormalizing__semiring__rules_I36_J,axiom,
    ! [X_a] :
      ( ! [X_1,N_1] : hAPP(nat,X_a,power_power(X_a,X_1),hAPP(nat,nat,times_times(nat,number_number_of(nat,bit0(bit1(pls)))),N_1)) = hAPP(X_a,X_a,times_times(X_a,hAPP(nat,X_a,power_power(X_a,X_1),N_1)),hAPP(nat,X_a,power_power(X_a,X_1),N_1))
     <= comm_semiring_1(X_a) ) ).

fof(fact_171_semiring__numeral__1__eq__1,axiom,
    ! [X_a] :
      ( number_semiring(X_a)
     => number_number_of(X_a,bit1(pls)) = one_one(X_a) ) ).

fof(fact_679_diff__add__assoc2,axiom,
    ! [I_1,K_1,J_1] :
      ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),K_1),J_1))
     => hAPP(nat,nat,minus_minus(nat,hAPP(nat,nat,plus_plus(nat,J_1),I_1)),K_1) = hAPP(nat,nat,plus_plus(nat,hAPP(nat,nat,minus_minus(nat,J_1),K_1)),I_1) ) ).

fof(fact_166_zless__add1__eq,axiom,
    ! [W_1,Z_2] :
      ( ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),W_1),Z_2))
        | ti(int,Z_2) = ti(int,W_1) )
    <=> hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),W_1),hAPP(int,int,plus_plus(int,Z_2),one_one(int)))) ) ).

fof(fact_111_one__is__num__one,axiom,
    number_number_of(int,bit1(pls)) = one_one(int) ).

fof(arity_RealDef_Oreal___Rings_Oring,axiom,
    ring(real) ).

fof(arity_RealDef_Oreal___Rings_Olinordered__semidom,axiom,
    linordered_semidom(real) ).

fof(fact_861_d22set__mem,axiom,
    ! [A_3,B_2] :
      ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),one_one(int)),B_2))
     => ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),B_2),A_3))
       => hBOOL(hAPP(fun(int,bool),bool,member(int,B_2),d22set(A_3))) ) ) ).

fof(arity_Nat_Onat___Groups_Oordered__cancel__ab__semigroup__add,axiom,
    ordere223160158up_add(nat) ).

fof(fact_393_mult__less__cancel__right__disj,axiom,
    ! [X_a] :
      ( ! [A_3,C_1,B_2] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),hAPP(X_a,X_a,times_times(X_a,A_3),C_1)),hAPP(X_a,X_a,times_times(X_a,B_2),C_1)))
        <=> ( ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),A_3),B_2))
              & hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),zero_zero(X_a)),C_1)) )
            | ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),C_1),zero_zero(X_a)))
              & hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),B_2),A_3)) ) ) )
     <= linord581940658strict(X_a) ) ).

fof(tsy_c_Int_Onumber__class_Onumber__of_res,axiom,
    ! [B_1_1,X_a] :
      ( number(X_a)
     => ti(X_a,number_number_of(X_a,B_1_1)) = number_number_of(X_a,B_1_1) ) ).

fof(arity_RealDef_Oreal___Groups_Oordered__ab__semigroup__add__imp__le,axiom,
    ordere236663937imp_le(real) ).

fof(fact_588_diff__add__inverse2,axiom,
    ! [M,N_1] : hAPP(nat,nat,minus_minus(nat,hAPP(nat,nat,plus_plus(nat,M),N_1)),N_1) = M ).

fof(fact_915_zdvd__zmod,axiom,
    ! [N_1,F,M] :
      ( ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),dvd_dvd(int),F),N_1))
       => hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),dvd_dvd(int),F),hAPP(int,int,div_mod(int,M),N_1))) )
     <= hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),dvd_dvd(int),F),M)) ) ).

fof(fact_810_add__le__less__mono,axiom,
    ! [X_a] :
      ( ordere223160158up_add(X_a)
     => ! [C,D_2,A_1,B] :
          ( ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),hAPP(X_a,X_a,plus_plus(X_a,A_1),C)),hAPP(X_a,X_a,plus_plus(X_a,B),D_2)))
           <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),C),D_2)) )
         <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),A_1),B)) ) ) ).

fof(fact_148_add__numeral__0__right,axiom,
    ! [X_a] :
      ( ! [A_1] : hAPP(X_a,X_a,plus_plus(X_a,A_1),number_number_of(X_a,pls)) = ti(X_a,A_1)
     <= number_ring(X_a) ) ).

fof(fact_901_mod__mult__cong,axiom,
    ! [X_a] :
      ( semiring_div(X_a)
     => ! [B,B_3,A_1,C,A_4] :
          ( hAPP(X_a,X_a,div_mod(X_a,A_1),C) = hAPP(X_a,X_a,div_mod(X_a,A_4),C)
         => ( hAPP(X_a,X_a,div_mod(X_a,hAPP(X_a,X_a,times_times(X_a,A_4),B_3)),C) = hAPP(X_a,X_a,div_mod(X_a,hAPP(X_a,X_a,times_times(X_a,A_1),B)),C)
           <= hAPP(X_a,X_a,div_mod(X_a,B),C) = hAPP(X_a,X_a,div_mod(X_a,B_3),C) ) ) ) ).

fof(fact_803_add__increasing2,axiom,
    ! [X_a] :
      ( ! [B,A_1,C] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),zero_zero(X_a)),C))
         => ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),B),hAPP(X_a,X_a,plus_plus(X_a,A_1),C)))
           <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),B),A_1)) ) )
     <= ordere216010020id_add(X_a) ) ).

fof(fact_56_zadd__zless__mono,axiom,
    ! [Z_3,Z_1,W_2,W] :
      ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),W_2),W))
     => ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),Z_3),Z_1))
       => hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),hAPP(int,int,plus_plus(int,W_2),Z_3)),hAPP(int,int,plus_plus(int,W),Z_1))) ) ) ).

fof(fact_890_mult_Oadd__right,axiom,
    ! [X_a] :
      ( ! [A_1,B,B_3] : hAPP(X_a,X_a,plus_plus(X_a,hAPP(X_a,X_a,times_times(X_a,A_1),B)),hAPP(X_a,X_a,times_times(X_a,A_1),B_3)) = hAPP(X_a,X_a,times_times(X_a,A_1),hAPP(X_a,X_a,plus_plus(X_a,B),B_3))
     <= real_normed_algebra(X_a) ) ).

fof(fact_125_rel__simps_I2_J,axiom,
    ~ hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),pls),pls)) ).

fof(fact_368_mult__left__mono,axiom,
    ! [X_a] :
      ( ! [C,A_1,B] :
          ( ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(X_a,X_a,times_times(X_a,C),A_1)),hAPP(X_a,X_a,times_times(X_a,C),B)))
           <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),zero_zero(X_a)),C)) )
         <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),A_1),B)) )
     <= ordered_semiring(X_a) ) ).

fof(fact_867_pinf_I10_J,axiom,
    ! [X_a] :
      ( ! [D,Sa] :
        ? [Z] :
        ! [X_2] :
          ( ( ~ hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),dvd_dvd(X_a),D),hAPP(X_a,X_a,plus_plus(X_a,X_2),Sa)))
          <=> ~ hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),dvd_dvd(X_a),D),hAPP(X_a,X_a,plus_plus(X_a,X_2),Sa))) )
         <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),Z),X_2)) )
     <= ( plus(X_a)
        & linorder(X_a)
        & dvd(X_a) ) ) ).

fof(tsy_c_Set_OCollect_arg1,axiom,
    ! [X_a,B_1_1] : collect(X_a,B_1_1) = collect(X_a,ti(fun(X_a,bool),B_1_1)) ).

fof(fact_520_divides__ge,axiom,
    ! [A_1,B] :
      ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),A_1),B))
     => ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),A_1),B))
        | zero_zero(nat) = B ) ) ).

fof(fact_699_mult__less__cancel1,axiom,
    ! [K,Ma,N] :
      ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),hAPP(nat,nat,times_times(nat,K),Ma)),hAPP(nat,nat,times_times(nat,K),N)))
    <=> ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),Ma),N))
        & hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),zero_zero(nat)),K)) ) ) ).

fof(fact_121_Bit0__Pls,axiom,
    pls = bit0(pls) ).

fof(arity_Nat_Onat___Groups_Ocomm__monoid__add,axiom,
    comm_monoid_add(nat) ).

fof(fact_443_power__strict__increasing,axiom,
    ! [X_a] :
      ( linordered_semidom(X_a)
     => ! [A_1,N_1,N_3] :
          ( ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),hAPP(nat,X_a,power_power(X_a,A_1),N_1)),hAPP(nat,X_a,power_power(X_a,A_1),N_3)))
           <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),one_one(X_a)),A_1)) )
         <= hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),N_1),N_3)) ) ) ).

fof(tsy_c_hAPP_arg2,axiom,
    ! [X_a,X_c,B_1_1,B_2_1] : hAPP(X_a,X_c,B_1_1,ti(X_a,B_2_1)) = hAPP(X_a,X_c,B_1_1,B_2_1) ).

fof(fact_418_zcong__eq__zdvd__prop,axiom,
    ! [X,P_2] :
      ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),dvd_dvd(int),P_2),X))
    <=> hBOOL(hAPP(int,bool,zcong(X,zero_zero(int)),P_2)) ) ).

fof(fact_846_MultInv__zcong__prop2,axiom,
    ! [A_1,J_1,K_1,P_3] :
      ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),number_number_of(int,bit0(bit1(pls)))),P_3))
     => ( hBOOL(hAPP(int,bool,zprime,P_3))
       => ( ( ( hBOOL(hAPP(int,bool,zcong(J_1,hAPP(int,int,times_times(int,A_1),multInv(P_3,K_1))),P_3))
             => hBOOL(hAPP(int,bool,zcong(K_1,hAPP(int,int,times_times(int,A_1),multInv(P_3,J_1))),P_3)) )
           <= ~ hBOOL(hAPP(int,bool,zcong(J_1,zero_zero(int)),P_3)) )
         <= ~ hBOOL(hAPP(int,bool,zcong(K_1,zero_zero(int)),P_3)) ) ) ) ).

fof(arity_Nat_Onat___Rings_Oordered__comm__semiring,axiom,
    ordere1490568538miring(nat) ).

fof(fact_499_power__dvd__imp__le,axiom,
    ! [I_1,M,N_1] :
      ( ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),one_one(nat)),I_1))
       => hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),M),N_1)) )
     <= hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),hAPP(nat,nat,power_power(nat,I_1),M)),hAPP(nat,nat,power_power(nat,I_1),N_1))) ) ).

fof(fact_69_zadd__zmult__distrib2,axiom,
    ! [W,Z1,Z2] : hAPP(int,int,times_times(int,W),hAPP(int,int,plus_plus(int,Z1),Z2)) = hAPP(int,int,plus_plus(int,hAPP(int,int,times_times(int,W),Z1)),hAPP(int,int,times_times(int,W),Z2)) ).

fof(fact_4_calculation_I2_J,axiom,
    ( t = zero_zero(int)
   => hAPP(int,int,plus_plus(int,hAPP(nat,int,power_power(int,s),number_number_of(nat,bit0(bit1(pls))))),one_one(int)) = zero_zero(int) ) ).

fof(fact_621_plus__nat_Oadd__0,axiom,
    ! [N_1] : N_1 = hAPP(nat,nat,plus_plus(nat,zero_zero(nat)),N_1) ).

fof(fact_210_is__mult__sum2sq,axiom,
    ! [Y,X_1] :
      ( ( hBOOL(hAPP(int,bool,twoSqu658283162sum2sq,Y))
       => hBOOL(hAPP(int,bool,twoSqu658283162sum2sq,hAPP(int,int,times_times(int,X_1),Y))) )
     <= hBOOL(hAPP(int,bool,twoSqu658283162sum2sq,X_1)) ) ).

fof(fact_824_inv__distinct,axiom,
    ! [A_1,P_3] :
      ( ( ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),A_1),hAPP(int,int,minus_minus(int,P_3),one_one(int))))
         => ti(int,A_1) != inv(P_3,A_1) )
       <= hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),one_one(int)),A_1)) )
     <= hBOOL(hAPP(int,bool,zprime,P_3)) ) ).

fof(fact_937_zmod__le__nonneg__dividend,axiom,
    ! [K_1,M] :
      ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),hAPP(int,int,div_mod(int,M),K_1)),M))
     <= hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),zero_zero(int)),M)) ) ).

fof(fact_241_comm__semiring__1__class_Onormalizing__semiring__rules_I8_J,axiom,
    ! [X_a] :
      ( comm_semiring_1(X_a)
     => ! [A_1,B,C] : hAPP(X_a,X_a,times_times(X_a,hAPP(X_a,X_a,plus_plus(X_a,A_1),B)),C) = hAPP(X_a,X_a,plus_plus(X_a,hAPP(X_a,X_a,times_times(X_a,A_1),C)),hAPP(X_a,X_a,times_times(X_a,B),C)) ) ).

fof(fact_753_is__sum2sq__def,axiom,
    ! [X] :
      ( hBOOL(hAPP(int,bool,twoSqu658283162sum2sq,X))
    <=> ? [A_5,B_4] : twoSqu1929807760sum2sq(product_Pair(int,int,A_5,B_4)) = ti(int,X) ) ).

fof(fact_62_mult__Pls,axiom,
    ! [W] : pls = hAPP(int,int,times_times(int,pls),W) ).

fof(fact_472_diff__bin__simps_I7_J,axiom,
    ! [K_1,L_1] : hAPP(int,int,minus_minus(int,bit0(K_1)),bit0(L_1)) = bit0(hAPP(int,int,minus_minus(int,K_1),L_1)) ).

fof(fact_512_divides__antisym,axiom,
    ! [X,Y_1] :
      ( Y_1 = X
    <=> ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),X),Y_1))
        & hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),Y_1),X)) ) ) ).

fof(fact_44_number__of__mult,axiom,
    ! [X_a] :
      ( ! [V,W] : number_number_of(X_a,hAPP(int,int,times_times(int,V),W)) = hAPP(X_a,X_a,times_times(X_a,number_number_of(X_a,V)),number_number_of(X_a,W))
     <= number_ring(X_a) ) ).

fof(fact_342_le__imp__power__dvd,axiom,
    ! [X_a] :
      ( comm_semiring_1(X_a)
     => ! [A_1,M,N_1] :
          ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),M),N_1))
         => hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),dvd_dvd(X_a),hAPP(nat,X_a,power_power(X_a,A_1),M)),hAPP(nat,X_a,power_power(X_a,A_1),N_1))) ) ) ).

fof(fact_197_zero__less__power__nat__eq,axiom,
    ! [X,N] :
      ( ( N = zero_zero(nat)
        | hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),zero_zero(nat)),X)) )
    <=> hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),zero_zero(nat)),hAPP(nat,nat,power_power(nat,X),N))) ) ).

fof(fact_606_diff__le__mono2,axiom,
    ! [L_1,M,N_1] :
      ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),M),N_1))
     => hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),hAPP(nat,nat,minus_minus(nat,L_1),N_1)),hAPP(nat,nat,minus_minus(nat,L_1),M))) ) ).

fof(fact_817_add__neg__nonpos,axiom,
    ! [X_a] :
      ( ! [B,A_1] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),A_1),zero_zero(X_a)))
         => ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),B),zero_zero(X_a)))
           => hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),hAPP(X_a,X_a,plus_plus(X_a,A_1),B)),zero_zero(X_a))) ) )
     <= ordere216010020id_add(X_a) ) ).

fof(fact_850_MultInv__prop2a,axiom,
    ! [X_1,P_3] :
      ( ( ( ~ hBOOL(hAPP(int,bool,zcong(X_1,zero_zero(int)),P_3))
         => hBOOL(hAPP(int,bool,zcong(hAPP(int,int,times_times(int,multInv(P_3,X_1)),X_1),one_one(int)),P_3)) )
       <= hBOOL(hAPP(int,bool,zprime,P_3)) )
     <= hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),number_number_of(int,bit0(bit1(pls)))),P_3)) ) ).

fof(fact_229_nat__mult__2,axiom,
    ! [Z_1] : hAPP(nat,nat,plus_plus(nat,Z_1),Z_1) = hAPP(nat,nat,times_times(nat,number_number_of(nat,bit0(bit1(pls)))),Z_1) ).

fof(fact_544_less__not__refl,axiom,
    ! [N_1] : ~ hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),N_1),N_1)) ).

fof(fact_143_even__less__0__iff,axiom,
    ! [X_a] :
      ( linordered_idom(X_a)
     => ! [A_3] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),A_3),zero_zero(X_a)))
        <=> hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),hAPP(X_a,X_a,plus_plus(X_a,A_3),A_3)),zero_zero(X_a))) ) ) ).

fof(arity_Int_Oint___Groups_Ocancel__semigroup__add,axiom,
    cancel_semigroup_add(int) ).

fof(tsy_c_Groups_Oplus__class_Oplus_3_arg1,axiom,
    ! [B_1_1,X_a] :
      ( plus_plus(X_a,B_1_1) = plus_plus(X_a,ti(X_a,B_1_1))
     <= ab_semigroup_add(X_a) ) ).

fof(fact_952_mod__diff__right__eq,axiom,
    ! [X_a] :
      ( ring_div(X_a)
     => ! [A_1,B,C] : hAPP(X_a,X_a,div_mod(X_a,hAPP(X_a,X_a,minus_minus(X_a,A_1),hAPP(X_a,X_a,div_mod(X_a,B),C))),C) = hAPP(X_a,X_a,div_mod(X_a,hAPP(X_a,X_a,minus_minus(X_a,A_1),B)),C) ) ).

fof(fact_439_power__increasing__iff,axiom,
    ! [X_a] :
      ( ! [X,Y_1,B_2] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),one_one(X_a)),B_2))
         => ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(nat,X_a,power_power(X_a,B_2),X)),hAPP(nat,X_a,power_power(X_a,B_2),Y_1)))
          <=> hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),X),Y_1)) ) )
     <= linordered_semidom(X_a) ) ).

fof(fact_222_comm__semiring__1__class_Onormalizing__semiring__rules_I25_J,axiom,
    ! [X_a] :
      ( comm_semiring_1(X_a)
     => ! [A_1,C,D_2] : hAPP(X_a,X_a,plus_plus(X_a,A_1),hAPP(X_a,X_a,plus_plus(X_a,C),D_2)) = hAPP(X_a,X_a,plus_plus(X_a,hAPP(X_a,X_a,plus_plus(X_a,A_1),C)),D_2) ) ).

fof(arity_RealDef_Oreal___Rings_Olinordered__ring,axiom,
    linordered_ring(real) ).

fof(arity_Int_Oint___Rings_Olinordered__semiring__1,axiom,
    linord1278240602ring_1(int) ).

fof(fact_263_q__pos__lemma,axiom,
    ! [B_3,Q_4,R_3] :
      ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),zero_zero(int)),hAPP(int,int,plus_plus(int,hAPP(int,int,times_times(int,B_3),Q_4)),R_3)))
     => ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),R_3),B_3))
       => ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),zero_zero(int)),B_3))
         => hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),zero_zero(int)),Q_4)) ) ) ) ).

fof(fact_362_split__mult__pos__le,axiom,
    ! [X_a] :
      ( ordered_ring(X_a)
     => ! [B,A_1] :
          ( ( ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),A_1),zero_zero(X_a)))
              & hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),B),zero_zero(X_a))) )
            | ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),zero_zero(X_a)),B))
              & hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),zero_zero(X_a)),A_1)) ) )
         => hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),zero_zero(X_a)),hAPP(X_a,X_a,times_times(X_a,A_1),B))) ) ) ).

fof(fact_196_s1,axiom,
    hBOOL(hAPP(int,bool,zcong(hAPP(nat,int,power_power(int,s1),number_number_of(nat,bit0(bit1(pls)))),number_number_of(int,min)),hAPP(int,int,plus_plus(int,hAPP(int,int,times_times(int,number_number_of(int,bit0(bit0(bit1(pls))))),m)),one_one(int)))) ).

fof(fact_178_one__add__one__is__two,axiom,
    ! [X_a] :
      ( number_ring(X_a)
     => number_number_of(X_a,bit0(bit1(pls))) = hAPP(X_a,X_a,plus_plus(X_a,one_one(X_a)),one_one(X_a)) ) ).

fof(fact_755_Wilson__Russ,axiom,
    ! [P_3] :
      ( hBOOL(hAPP(int,bool,zprime,P_3))
     => hBOOL(hAPP(int,bool,zcong(zfact(hAPP(int,int,minus_minus(int,P_3),one_one(int))),number_number_of(int,min)),P_3)) ) ).

fof(arity_RealDef_Oreal___Groups_Ozero,axiom,
    zero(real) ).

fof(arity_Nat_Onat___Groups_Ocancel__ab__semigroup__add,axiom,
    cancel146912293up_add(nat) ).

fof(fact_976_mod__le__divisor,axiom,
    ! [M,N_1] :
      ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),zero_zero(nat)),N_1))
     => hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),hAPP(nat,nat,div_mod(nat,M),N_1)),N_1)) ) ).

fof(fact_11_zero__less__power2,axiom,
    ! [X_a] :
      ( ! [A_3] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),zero_zero(X_a)),hAPP(nat,X_a,power_power(X_a,A_3),number_number_of(nat,bit0(bit1(pls))))))
        <=> zero_zero(X_a) != ti(X_a,A_3) )
     <= linordered_idom(X_a) ) ).

fof(fact_224_comm__semiring__1__class_Onormalizing__semiring__rules_I23_J,axiom,
    ! [X_a] :
      ( comm_semiring_1(X_a)
     => ! [A_1,B,C] : hAPP(X_a,X_a,plus_plus(X_a,hAPP(X_a,X_a,plus_plus(X_a,A_1),B)),C) = hAPP(X_a,X_a,plus_plus(X_a,hAPP(X_a,X_a,plus_plus(X_a,A_1),C)),B) ) ).

fof(fact_521_nat__mult__dvd__cancel__disj_H,axiom,
    ! [Ma,K,N] :
      ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),hAPP(nat,nat,times_times(nat,Ma),K)),hAPP(nat,nat,times_times(nat,N),K)))
    <=> ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),Ma),N))
        | K = zero_zero(nat) ) ) ).

fof(arity_RealDef_Oreal___Groups_Ocancel__ab__semigroup__add,axiom,
    cancel146912293up_add(real) ).

fof(fact_866_minf_I10_J,axiom,
    ! [X_a] :
      ( ! [D,Sa] :
        ? [Z] :
        ! [X_2] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),X_2),Z))
         => ( ~ hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),dvd_dvd(X_a),D),hAPP(X_a,X_a,plus_plus(X_a,X_2),Sa)))
          <=> ~ hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),dvd_dvd(X_a),D),hAPP(X_a,X_a,plus_plus(X_a,X_2),Sa))) ) )
     <= ( dvd(X_a)
        & linorder(X_a)
        & plus(X_a) ) ) ).

fof(fact_22_number__of__is__id,axiom,
    ! [K_1] : number_number_of(int,K_1) = ti(int,K_1) ).

fof(fact_863_less__imp__add__positive,axiom,
    ! [I_1,J_1] :
      ( ? [K_2] :
          ( hAPP(nat,nat,plus_plus(nat,I_1),K_2) = J_1
          & hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),zero_zero(nat)),K_2)) )
     <= hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),I_1),J_1)) ) ).

fof(tsy_c_IntFact_Od22set_res,axiom,
    ! [B_1_1] : ti(fun(int,bool),d22set(B_1_1)) = d22set(B_1_1) ).

fof(fact_126_less__int__code_I13_J,axiom,
    ! [K1,K2] :
      ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),K1),K2))
    <=> hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),bit0(K1)),bit0(K2))) ) ).

fof(fact_369_mult__right__mono,axiom,
    ! [X_a] :
      ( ordered_semiring(X_a)
     => ! [C,A_1,B] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),A_1),B))
         => ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(X_a,X_a,times_times(X_a,A_1),C)),hAPP(X_a,X_a,times_times(X_a,B),C)))
           <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),zero_zero(X_a)),C)) ) ) ) ).

fof(fact_165_odd__nonzero,axiom,
    ! [Z_1] : zero_zero(int) != hAPP(int,int,plus_plus(int,hAPP(int,int,plus_plus(int,one_one(int)),Z_1)),Z_1) ).

fof(fact_514_divides__mul__r,axiom,
    ! [C,A_1,B] :
      ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),A_1),B))
     => hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),hAPP(nat,nat,times_times(nat,A_1),C)),hAPP(nat,nat,times_times(nat,B),C))) ) ).

fof(fact_982_mod__mult__self3,axiom,
    ! [K_1,N_1,M] : hAPP(nat,nat,div_mod(nat,M),N_1) = hAPP(nat,nat,div_mod(nat,hAPP(nat,nat,plus_plus(nat,hAPP(nat,nat,times_times(nat,K_1),N_1)),M)),N_1) ).

fof(fact_813_add__pos__nonneg,axiom,
    ! [X_a] :
      ( ordere216010020id_add(X_a)
     => ! [B,A_1] :
          ( ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),zero_zero(X_a)),hAPP(X_a,X_a,plus_plus(X_a,A_1),B)))
           <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),zero_zero(X_a)),B)) )
         <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),zero_zero(X_a)),A_1)) ) ) ).

fof(fact_868_pow__divides__eq__int,axiom,
    ! [A_3,B_2,N] :
      ( ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),dvd_dvd(int),A_3),B_2))
      <=> hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),dvd_dvd(int),hAPP(nat,int,power_power(int,A_3),N)),hAPP(nat,int,power_power(int,B_2),N))) )
     <= N != zero_zero(nat) ) ).

fof(fact_80_nat__numeral__1__eq__1,axiom,
    one_one(nat) = number_number_of(nat,bit1(pls)) ).

fof(fact_317_mult__eq__0__iff,axiom,
    ! [X_a] :
      ( ring_n68954251visors(X_a)
     => ! [A_3,B_2] :
          ( hAPP(X_a,X_a,times_times(X_a,A_3),B_2) = zero_zero(X_a)
        <=> ( ti(X_a,A_3) = zero_zero(X_a)
            | zero_zero(X_a) = ti(X_a,B_2) ) ) ) ).

fof(fact_656_dvd__diffD,axiom,
    ! [K_1,M,N_1] :
      ( ( ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),N_1),M))
         => hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),K_1),M)) )
       <= hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),K_1),N_1)) )
     <= hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),K_1),hAPP(nat,nat,minus_minus(nat,M),N_1))) ) ).

fof(fact_658_le__add2,axiom,
    ! [N_1,M] : hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),N_1),hAPP(nat,nat,plus_plus(nat,M),N_1))) ).

fof(fact_949_zdiff__zmod__right,axiom,
    ! [X_1,Y,M] : hAPP(int,int,div_mod(int,hAPP(int,int,minus_minus(int,X_1),hAPP(int,int,div_mod(int,Y),M))),M) = hAPP(int,int,div_mod(int,hAPP(int,int,minus_minus(int,X_1),Y)),M) ).

fof(fact_603_eq__diff__iff,axiom,
    ! [N,K,Ma] :
      ( ( ( hAPP(nat,nat,minus_minus(nat,N),K) = hAPP(nat,nat,minus_minus(nat,Ma),K)
        <=> Ma = N )
       <= hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),K),N)) )
     <= hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),K),Ma)) ) ).

fof(fact_573_dvd_Ole__neq__trans,axiom,
    ! [A_1,B] :
      ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),A_1),B))
     => ( ( ~ hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),B),A_1))
          & hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),A_1),B)) )
       <= B != A_1 ) ) ).

fof(fact_357_zcong__zadd,axiom,
    ! [C,D_2,A_1,B,M] :
      ( ( hBOOL(hAPP(int,bool,zcong(hAPP(int,int,plus_plus(int,A_1),C),hAPP(int,int,plus_plus(int,B),D_2)),M))
       <= hBOOL(hAPP(int,bool,zcong(C,D_2),M)) )
     <= hBOOL(hAPP(int,bool,zcong(A_1,B),M)) ) ).

fof(arity_RealDef_Oreal___Rings_Oring__1__no__zero__divisors,axiom,
    ring_11004092258visors(real) ).

fof(fact_960_neg__mod__sign,axiom,
    ! [A_1,B] :
      ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),hAPP(int,int,div_mod(int,A_1),B)),zero_zero(int)))
     <= hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),B),zero_zero(int))) ) ).

fof(fact_802_add__increasing,axiom,
    ! [X_a] :
      ( ! [B,C,A_1] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),zero_zero(X_a)),A_1))
         => ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),B),C))
           => hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),B),hAPP(X_a,X_a,plus_plus(X_a,A_1),C))) ) )
     <= ordere216010020id_add(X_a) ) ).

fof(fact_228_nat__mult__2__right,axiom,
    ! [Z_1] : hAPP(nat,nat,plus_plus(nat,Z_1),Z_1) = hAPP(nat,nat,times_times(nat,Z_1),number_number_of(nat,bit0(bit1(pls)))) ).

fof(fact_781_add__strict__right__mono,axiom,
    ! [X_a] :
      ( ! [C,A_1,B] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),A_1),B))
         => hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),hAPP(X_a,X_a,plus_plus(X_a,A_1),C)),hAPP(X_a,X_a,plus_plus(X_a,B),C))) )
     <= ordere223160158up_add(X_a) ) ).

fof(fact_798_zero__le__double__add__iff__zero__le__single__add,axiom,
    ! [X_a] :
      ( ! [A_3] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),zero_zero(X_a)),hAPP(X_a,X_a,plus_plus(X_a,A_3),A_3)))
        <=> hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),zero_zero(X_a)),A_3)) )
     <= linord219039673up_add(X_a) ) ).

fof(arity_RealDef_Oreal___Int_Onumber__semiring,axiom,
    number_semiring(real) ).

fof(fact_671_le__add__diff,axiom,
    ! [M,K_1,N_1] :
      ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),K_1),N_1))
     => hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),M),hAPP(nat,nat,minus_minus(nat,hAPP(nat,nat,plus_plus(nat,N_1),M)),K_1))) ) ).

fof(fact_289_rel__simps_I24_J,axiom,
    hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),min),min)) ).

fof(fact_207_zdvd__period,axiom,
    ! [C_1,X,Ta,A_3,D] :
      ( ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),dvd_dvd(int),A_3),hAPP(int,int,plus_plus(int,X),Ta)))
      <=> hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),dvd_dvd(int),A_3),hAPP(int,int,plus_plus(int,hAPP(int,int,plus_plus(int,X),hAPP(int,int,times_times(int,C_1),D))),Ta))) )
     <= hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),dvd_dvd(int),A_3),D)) ) ).

fof(fact_693_mult__diff__mult,axiom,
    ! [X_a] :
      ( ! [X_1,Y,A_1,B] : hAPP(X_a,X_a,plus_plus(X_a,hAPP(X_a,X_a,times_times(X_a,X_1),hAPP(X_a,X_a,minus_minus(X_a,Y),B))),hAPP(X_a,X_a,times_times(X_a,hAPP(X_a,X_a,minus_minus(X_a,X_1),A_1)),B)) = hAPP(X_a,X_a,minus_minus(X_a,hAPP(X_a,X_a,times_times(X_a,X_1),Y)),hAPP(X_a,X_a,times_times(X_a,A_1),B))
     <= ring(X_a) ) ).

fof(fact_339_dvd__power__same,axiom,
    ! [X_a] :
      ( ! [N_1,X_1,Y] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),dvd_dvd(X_a),hAPP(nat,X_a,power_power(X_a,X_1),N_1)),hAPP(nat,X_a,power_power(X_a,Y),N_1)))
         <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),dvd_dvd(X_a),X_1),Y)) )
     <= comm_semiring_1(X_a) ) ).

fof(fact_615_neq0__conv,axiom,
    ! [N] :
      ( zero_zero(nat) != N
    <=> hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),zero_zero(nat)),N)) ) ).

fof(fact_19_p,axiom,
    hBOOL(hAPP(int,bool,zprime,hAPP(int,int,plus_plus(int,hAPP(int,int,times_times(int,number_number_of(int,bit0(bit0(bit1(pls))))),m)),one_one(int)))) ).

fof(fact_183_zadd__power2,axiom,
    ! [A_1,B] : hAPP(nat,int,power_power(int,hAPP(int,int,plus_plus(int,A_1),B)),number_number_of(nat,bit0(bit1(pls)))) = hAPP(int,int,plus_plus(int,hAPP(int,int,plus_plus(int,hAPP(nat,int,power_power(int,A_1),number_number_of(nat,bit0(bit1(pls))))),hAPP(int,int,times_times(int,hAPP(int,int,times_times(int,number_number_of(int,bit0(bit1(pls)))),A_1)),B))),hAPP(nat,int,power_power(int,B),number_number_of(nat,bit0(bit1(pls))))) ).

fof(arity_Nat_Onat___Power_Opower,axiom,
    power(nat) ).

fof(fact_367_comm__mult__left__mono,axiom,
    ! [X_a] :
      ( ! [C,A_1,B] :
          ( ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(X_a,X_a,times_times(X_a,C),A_1)),hAPP(X_a,X_a,times_times(X_a,C),B)))
           <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),zero_zero(X_a)),C)) )
         <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),A_1),B)) )
     <= ordere1490568538miring(X_a) ) ).

fof(arity_Int_Oint___Rings_Olinordered__idom,axiom,
    linordered_idom(int) ).

fof(fact_720_nat__less__add__iff2,axiom,
    ! [U,Ma,N,I_2,J_2] :
      ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),I_2),J_2))
     => ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),Ma),hAPP(nat,nat,plus_plus(nat,hAPP(nat,nat,times_times(nat,hAPP(nat,nat,minus_minus(nat,J_2),I_2)),U)),N)))
      <=> hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),hAPP(nat,nat,plus_plus(nat,hAPP(nat,nat,times_times(nat,I_2),U)),Ma)),hAPP(nat,nat,plus_plus(nat,hAPP(nat,nat,times_times(nat,J_2),U)),N))) ) ) ).

fof(tsy_c_COMBB_arg1,axiom,
    ! [X_b,X_c,X_a,B_1_1,B_2_1] : combb(X_b,X_c,X_a,ti(fun(X_b,X_c),B_1_1),B_2_1) = combb(X_b,X_c,X_a,B_1_1,B_2_1) ).

fof(fact_333_dvdI,axiom,
    ! [X_a] :
      ( ! [A_1,B,K_1] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),dvd_dvd(X_a),B),A_1))
         <= A_1 = hAPP(X_a,X_a,times_times(X_a,B),K_1) )
     <= dvd(X_a) ) ).

fof(fact_808_add__neg__neg,axiom,
    ! [X_a] :
      ( ordere216010020id_add(X_a)
     => ! [B,A_1] :
          ( ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),hAPP(X_a,X_a,plus_plus(X_a,A_1),B)),zero_zero(X_a)))
           <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),B),zero_zero(X_a))) )
         <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),A_1),zero_zero(X_a))) ) ) ).

fof(fact_409_power__inject__exp,axiom,
    ! [X_a] :
      ( linordered_semidom(X_a)
     => ! [Ma,N,A_3] :
          ( ( hAPP(nat,X_a,power_power(X_a,A_3),Ma) = hAPP(nat,X_a,power_power(X_a,A_3),N)
          <=> N = Ma )
         <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),one_one(X_a)),A_3)) ) ) ).

fof(fact_792_mult__1__left,axiom,
    ! [X_a] :
      ( monoid_mult(X_a)
     => ! [A_1] : ti(X_a,A_1) = hAPP(X_a,X_a,times_times(X_a,one_one(X_a)),A_1) ) ).

fof(fact_325_dvd__0__left,axiom,
    ! [X_a] :
      ( comm_semiring_1(X_a)
     => ! [A_1] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),dvd_dvd(X_a),zero_zero(X_a)),A_1))
         => ti(X_a,A_1) = zero_zero(X_a) ) ) ).

fof(fact_218_comm__semiring__1__class_Onormalizing__semiring__rules_I19_J,axiom,
    ! [X_a] :
      ( comm_semiring_1(X_a)
     => ! [Lx,Rx,Ry] : hAPP(X_a,X_a,times_times(X_a,Rx),hAPP(X_a,X_a,times_times(X_a,Lx),Ry)) = hAPP(X_a,X_a,times_times(X_a,Lx),hAPP(X_a,X_a,times_times(X_a,Rx),Ry)) ) ).

fof(fact_380_comm__mult__strict__left__mono,axiom,
    ! [X_a] :
      ( ! [C,A_1,B] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),A_1),B))
         => ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),hAPP(X_a,X_a,times_times(X_a,C),A_1)),hAPP(X_a,X_a,times_times(X_a,C),B)))
           <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),zero_zero(X_a)),C)) ) )
     <= linord893533164strict(X_a) ) ).

fof(help_COMBS_1_1_U,axiom,
    ! [X_a,X_c,X_b,P,Q,R] : hAPP(X_a,X_c,combs(X_a,X_b,X_c,P,Q),R) = hAPP(X_b,X_c,hAPP(X_a,fun(X_b,X_c),P,R),hAPP(X_a,X_b,Q,R)) ).

fof(fact_127_rel__simps_I14_J,axiom,
    ! [K,L] :
      ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),K),L))
    <=> hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),bit0(K)),bit0(L))) ) ).

fof(fact_36_rel__simps_I31_J,axiom,
    ! [K,L] :
      ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),bit0(K)),bit0(L)))
    <=> hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),K),L)) ) ).

fof(fact_397_not__one__le__zero,axiom,
    ! [X_a] :
      ( ~ hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),one_one(X_a)),zero_zero(X_a)))
     <= linordered_semidom(X_a) ) ).

fof(fact_772_add__le__cancel__right,axiom,
    ! [X_a] :
      ( ! [A_3,C_1,B_2] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),A_3),B_2))
        <=> hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(X_a,X_a,plus_plus(X_a,A_3),C_1)),hAPP(X_a,X_a,plus_plus(X_a,B_2),C_1))) )
     <= ordere236663937imp_le(X_a) ) ).

fof(fact_245_comm__semiring__1__class_Onormalizing__semiring__rules_I12_J,axiom,
    ! [X_a] :
      ( comm_semiring_1(X_a)
     => ! [A_1] : hAPP(X_a,X_a,times_times(X_a,A_1),one_one(X_a)) = ti(X_a,A_1) ) ).

fof(fact_821_inv__g__1,axiom,
    ! [A_1,P_3] :
      ( ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),one_one(int)),A_1))
       => ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),A_1),hAPP(int,int,minus_minus(int,P_3),one_one(int))))
         => hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),one_one(int)),inv(P_3,A_1))) ) )
     <= hBOOL(hAPP(int,bool,zprime,P_3)) ) ).

fof(fact_403_zero__less__power,axiom,
    ! [X_a] :
      ( linordered_semidom(X_a)
     => ! [N_1,A_1] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),zero_zero(X_a)),hAPP(nat,X_a,power_power(X_a,A_1),N_1)))
         <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),zero_zero(X_a)),A_1)) ) ) ).

fof(fact_395_pos__add__strict,axiom,
    ! [X_a] :
      ( linordered_semidom(X_a)
     => ! [B,C,A_1] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),zero_zero(X_a)),A_1))
         => ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),B),C))
           => hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),B),hAPP(X_a,X_a,plus_plus(X_a,A_1),C))) ) ) ) ).

fof(fact_629_diff__is__0__eq_H,axiom,
    ! [M,N_1] :
      ( hAPP(nat,nat,minus_minus(nat,M),N_1) = zero_zero(nat)
     <= hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),M),N_1)) ) ).

fof(fact_164_Bit1__def,axiom,
    ! [K_1] : hAPP(int,int,plus_plus(int,hAPP(int,int,plus_plus(int,one_one(int)),K_1)),K_1) = bit1(K_1) ).

fof(fact_598_eq__imp__le,axiom,
    ! [M,N_1] :
      ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),M),N_1))
     <= M = N_1 ) ).

fof(tsy_c_Int_OBit1_res,hypothesis,
    ! [B_1_1] : ti(int,bit1(B_1_1)) = bit1(B_1_1) ).

fof(fact_237_comm__semiring__1__class_Onormalizing__semiring__rules_I6_J,axiom,
    ! [X_a] :
      ( comm_semiring_1(X_a)
     => ! [A_1] : hAPP(X_a,X_a,plus_plus(X_a,A_1),zero_zero(X_a)) = ti(X_a,A_1) ) ).

fof(fact_217_comm__semiring__1__class_Onormalizing__semiring__rules_I18_J,axiom,
    ! [X_a] :
      ( ! [Lx,Rx,Ry] : hAPP(X_a,X_a,times_times(X_a,Lx),hAPP(X_a,X_a,times_times(X_a,Rx),Ry)) = hAPP(X_a,X_a,times_times(X_a,hAPP(X_a,X_a,times_times(X_a,Lx),Rx)),Ry)
     <= comm_semiring_1(X_a) ) ).

fof(tsy_c_Orderings_Oord__class_Oless__eq_res,axiom,
    ! [X_a] :
      ( order(X_a)
     => ord_less_eq(X_a) = ti(fun(X_a,fun(X_a,bool)),ord_less_eq(X_a)) ) ).

fof(fact_746_inf__period_I4_J,axiom,
    ! [X_a] :
      ( ! [Ta,D,D_3] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),dvd_dvd(X_a),D),D_3))
         => ! [X_2,K_2] :
              ( ~ hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),dvd_dvd(X_a),D),hAPP(X_a,X_a,plus_plus(X_a,hAPP(X_a,X_a,minus_minus(X_a,X_2),hAPP(X_a,X_a,times_times(X_a,K_2),D_3))),Ta)))
            <=> ~ hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),dvd_dvd(X_a),D),hAPP(X_a,X_a,plus_plus(X_a,X_2),Ta))) ) )
     <= ( comm_ring(X_a)
        & dvd(X_a) ) ) ).

fof(fact_791_diff__eq__diff__less,axiom,
    ! [X_a] :
      ( ! [A_3,B_2,C_1,D] :
          ( hAPP(X_a,X_a,minus_minus(X_a,A_3),B_2) = hAPP(X_a,X_a,minus_minus(X_a,C_1),D)
         => ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),A_3),B_2))
          <=> hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),C_1),D)) ) )
     <= ordered_ab_group_add(X_a) ) ).

fof(fact_732_nat__mult__le__cancel1,axiom,
    ! [Ma,N,K] :
      ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),zero_zero(nat)),K))
     => ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),Ma),N))
      <=> hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),hAPP(nat,nat,times_times(nat,K),Ma)),hAPP(nat,nat,times_times(nat,K),N))) ) ) ).

fof(fact_727_left__add__mult__distrib,axiom,
    ! [I_1,U_1,J_1,K_1] : hAPP(nat,nat,plus_plus(nat,hAPP(nat,nat,times_times(nat,I_1),U_1)),hAPP(nat,nat,plus_plus(nat,hAPP(nat,nat,times_times(nat,J_1),U_1)),K_1)) = hAPP(nat,nat,plus_plus(nat,hAPP(nat,nat,times_times(nat,hAPP(nat,nat,plus_plus(nat,I_1),J_1)),U_1)),K_1) ).

fof(tsy_c_Int2_OMultInv_res,axiom,
    ! [B_1_1,B_2_1] : multInv(B_1_1,B_2_1) = ti(int,multInv(B_1_1,B_2_1)) ).

fof(fact_158_rel__simps_I4_J,axiom,
    ! [K] :
      ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),pls),bit0(K)))
    <=> hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),pls),K)) ) ).

fof(arity_RealDef_Oreal___Groups_Oab__group__add,axiom,
    ab_group_add(real) ).

fof(fact_328_dvd__triv__left,axiom,
    ! [X_a] :
      ( ! [A_1,B] : hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),dvd_dvd(X_a),A_1),hAPP(X_a,X_a,times_times(X_a,A_1),B)))
     <= comm_semiring_1(X_a) ) ).

fof(fact_948_zdiff__zmod__left,axiom,
    ! [X_1,M,Y] : hAPP(int,int,div_mod(int,hAPP(int,int,minus_minus(int,X_1),Y)),M) = hAPP(int,int,div_mod(int,hAPP(int,int,minus_minus(int,hAPP(int,int,div_mod(int,X_1),M)),Y)),M) ).

fof(fact_421_mult__left__le__imp__le,axiom,
    ! [X_a] :
      ( ! [C,A_1,B] :
          ( ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),zero_zero(X_a)),C))
           => hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),A_1),B)) )
         <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(X_a,X_a,times_times(X_a,C),A_1)),hAPP(X_a,X_a,times_times(X_a,C),B))) )
     <= linord20386208strict(X_a) ) ).

fof(fact_324_field__power__not__zero,axiom,
    ! [X_a] :
      ( ring_11004092258visors(X_a)
     => ! [N_1,A_1] :
          ( zero_zero(X_a) != hAPP(nat,X_a,power_power(X_a,A_1),N_1)
         <= zero_zero(X_a) != ti(X_a,A_1) ) ) ).

fof(fact_927_mod__add__left__eq,axiom,
    ! [X_a] :
      ( semiring_div(X_a)
     => ! [A_1,B,C] : hAPP(X_a,X_a,div_mod(X_a,hAPP(X_a,X_a,plus_plus(X_a,hAPP(X_a,X_a,div_mod(X_a,A_1),C)),B)),C) = hAPP(X_a,X_a,div_mod(X_a,hAPP(X_a,X_a,plus_plus(X_a,A_1),B)),C) ) ).

fof(fact_704_real__mult__le__cancel__iff2,axiom,
    ! [X,Y_1,Z_2] :
      ( hBOOL(hAPP(real,bool,hAPP(real,fun(real,bool),ord_less(real),zero_zero(real)),Z_2))
     => ( hBOOL(hAPP(real,bool,hAPP(real,fun(real,bool),ord_less_eq(real),hAPP(real,real,times_times(real,Z_2),X)),hAPP(real,real,times_times(real,Z_2),Y_1)))
      <=> hBOOL(hAPP(real,bool,hAPP(real,fun(real,bool),ord_less_eq(real),X),Y_1)) ) ) ).

fof(fact_971_neq__one__mod__two,axiom,
    ! [X] :
      ( hAPP(int,int,div_mod(int,X),number_number_of(int,bit0(bit1(pls)))) = one_one(int)
    <=> hAPP(int,int,div_mod(int,X),number_number_of(int,bit0(bit1(pls)))) != zero_zero(int) ) ).

fof(fact_396_zero__le__one,axiom,
    ! [X_a] :
      ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),zero_zero(X_a)),one_one(X_a)))
     <= linordered_semidom(X_a) ) ).

fof(fact_312_zcong__trans,axiom,
    ! [C,A_1,B,M] :
      ( ( hBOOL(hAPP(int,bool,zcong(A_1,C),M))
       <= hBOOL(hAPP(int,bool,zcong(B,C),M)) )
     <= hBOOL(hAPP(int,bool,zcong(A_1,B),M)) ) ).

fof(fact_574_dvd_Ole__imp__less__or__eq,axiom,
    ! [X_1,Y] :
      ( ( ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),X_1),Y))
          & ~ hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),Y),X_1)) )
        | Y = X_1 )
     <= hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),X_1),Y)) ) ).

fof(fact_666_add__leD2,axiom,
    ! [M,K_1,N_1] :
      ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),K_1),N_1))
     <= hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),hAPP(nat,nat,plus_plus(nat,M),K_1)),N_1)) ) ).

fof(fact_609_nat__mult__assoc,axiom,
    ! [M,N_1,K_1] : hAPP(nat,nat,times_times(nat,hAPP(nat,nat,times_times(nat,M),N_1)),K_1) = hAPP(nat,nat,times_times(nat,M),hAPP(nat,nat,times_times(nat,N_1),K_1)) ).

fof(arity_Nat_Onat___Groups_Ocancel__semigroup__add,axiom,
    cancel_semigroup_add(nat) ).

fof(fact_682_nat__dvd__1__iff__1,axiom,
    ! [Ma] :
      ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),Ma),one_one(nat)))
    <=> Ma = one_one(nat) ) ).

fof(fact_78_less__nat__number__of,axiom,
    ! [V_3,V_2] :
      ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),number_number_of(nat,V_3)),number_number_of(nat,V_2)))
    <=> ( ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),V_3),V_2))
         => hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),pls),V_2)) )
        & hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),V_3),V_2)) ) ) ).

fof(fact_259_Nat__Transfer_Otransfer__nat__int__function__closures_I1_J,axiom,
    ! [Y,X_1] :
      ( ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),zero_zero(int)),hAPP(int,int,plus_plus(int,X_1),Y)))
       <= hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),zero_zero(int)),Y)) )
     <= hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),zero_zero(int)),X_1)) ) ).

fof(fact_807_add__pos__pos,axiom,
    ! [X_a] :
      ( ordere216010020id_add(X_a)
     => ! [B,A_1] :
          ( ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),zero_zero(X_a)),hAPP(X_a,X_a,plus_plus(X_a,A_1),B)))
           <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),zero_zero(X_a)),B)) )
         <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),zero_zero(X_a)),A_1)) ) ) ).

fof(fact_118_rel__simps_I49_J,axiom,
    ! [K_1,L_1] : bit0(K_1) != bit1(L_1) ).

fof(fact_898_zmod__number__of__Bit1,axiom,
    ! [V,W] :
      ( ( ~ hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),zero_zero(int)),number_number_of(int,W)))
       => hAPP(int,int,minus_minus(int,hAPP(int,int,times_times(int,number_number_of(int,bit0(bit1(pls)))),hAPP(int,int,div_mod(int,hAPP(int,int,plus_plus(int,number_number_of(int,V)),one_one(int))),number_number_of(int,W)))),one_one(int)) = hAPP(int,int,div_mod(int,number_number_of(int,bit1(V))),number_number_of(int,bit0(W))) )
      & ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),zero_zero(int)),number_number_of(int,W)))
       => hAPP(int,int,div_mod(int,number_number_of(int,bit1(V))),number_number_of(int,bit0(W))) = hAPP(int,int,plus_plus(int,hAPP(int,int,times_times(int,number_number_of(int,bit0(bit1(pls)))),hAPP(int,int,div_mod(int,number_number_of(int,V)),number_number_of(int,W)))),one_one(int)) ) ) ).

fof(fact_104_power2__less__imp__less,axiom,
    ! [X_a] :
      ( ! [X_1,Y] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),hAPP(nat,X_a,power_power(X_a,X_1),number_number_of(nat,bit0(bit1(pls))))),hAPP(nat,X_a,power_power(X_a,Y),number_number_of(nat,bit0(bit1(pls))))))
         => ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),zero_zero(X_a)),Y))
           => hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),X_1),Y)) ) )
     <= linordered_semidom(X_a) ) ).

fof(fact_235_comm__semiring__1__class_Onormalizing__semiring__rules_I10_J,axiom,
    ! [X_a] :
      ( ! [A_1] : hAPP(X_a,X_a,times_times(X_a,A_1),zero_zero(X_a)) = zero_zero(X_a)
     <= comm_semiring_1(X_a) ) ).

fof(fact_419_zcong__zero__equiv__div,axiom,
    ! [A_3,Ma] :
      ( hBOOL(hAPP(int,bool,zcong(A_3,zero_zero(int)),Ma))
    <=> hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),dvd_dvd(int),Ma),A_3)) ) ).

fof(fact_257_Nat__Transfer_Otransfer__nat__int__function__closures_I6_J,axiom,
    hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),zero_zero(int)),one_one(int))) ).

fof(fact_326_power__mult__distrib,axiom,
    ! [X_a] :
      ( comm_monoid_mult(X_a)
     => ! [A_1,B,N_1] : hAPP(nat,X_a,power_power(X_a,hAPP(X_a,X_a,times_times(X_a,A_1),B)),N_1) = hAPP(X_a,X_a,times_times(X_a,hAPP(nat,X_a,power_power(X_a,A_1),N_1)),hAPP(nat,X_a,power_power(X_a,B),N_1)) ) ).

fof(fact_352_zcong__zmult__prop1,axiom,
    ! [C_1,D,A_3,B_2,Ma] :
      ( hBOOL(hAPP(int,bool,zcong(A_3,B_2),Ma))
     => ( hBOOL(hAPP(int,bool,zcong(C_1,hAPP(int,int,times_times(int,A_3),D)),Ma))
      <=> hBOOL(hAPP(int,bool,zcong(C_1,hAPP(int,int,times_times(int,B_2),D)),Ma)) ) ) ).

fof(fact_322_combine__common__factor,axiom,
    ! [X_a] :
      ( semiring(X_a)
     => ! [A_1,E_1,B,C] : hAPP(X_a,X_a,plus_plus(X_a,hAPP(X_a,X_a,times_times(X_a,hAPP(X_a,X_a,plus_plus(X_a,A_1),B)),E_1)),C) = hAPP(X_a,X_a,plus_plus(X_a,hAPP(X_a,X_a,times_times(X_a,A_1),E_1)),hAPP(X_a,X_a,plus_plus(X_a,hAPP(X_a,X_a,times_times(X_a,B),E_1)),C)) ) ).

fof(fact_70_rel__simps_I29_J,axiom,
    ! [K] :
      ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),K),pls))
    <=> hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),bit1(K)),pls)) ) ).

fof(fact_525_divides__rev,axiom,
    ! [A_1,N_1,B] :
      ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),hAPP(nat,nat,power_power(nat,A_1),N_1)),hAPP(nat,nat,power_power(nat,B),N_1)))
     => ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),A_1),B))
       <= N_1 != zero_zero(nat) ) ) ).

fof(fact_560_dvd_Oless__imp__not__eq,axiom,
    ! [X_1,Y] :
      ( ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),X_1),Y))
        & ~ hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),Y),X_1)) )
     => Y != X_1 ) ).

fof(fact_762_add__left__imp__eq,axiom,
    ! [X_a] :
      ( ! [A_1,B,C] :
          ( hAPP(X_a,X_a,plus_plus(X_a,A_1),B) = hAPP(X_a,X_a,plus_plus(X_a,A_1),C)
         => ti(X_a,B) = ti(X_a,C) )
     <= cancel_semigroup_add(X_a) ) ).

fof(arity_Int_Oint___Groups_Oordered__ab__semigroup__add__imp__le,axiom,
    ordere236663937imp_le(int) ).

fof(arity_RealDef_Oreal___Rings_Ozero__neq__one,axiom,
    zero_neq_one(real) ).

fof(fact_266_zdiv__mono2__lemma,axiom,
    ! [B,Q_1,R_1,B_3,Q_4,R_3] :
      ( ( ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),R_3),B_3))
         => ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),zero_zero(int)),R_1))
           => ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),zero_zero(int)),B_3))
             => ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),B_3),B))
               => hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),Q_1),Q_4)) ) ) ) )
       <= hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),zero_zero(int)),hAPP(int,int,plus_plus(int,hAPP(int,int,times_times(int,B_3),Q_4)),R_3))) )
     <= hAPP(int,int,plus_plus(int,hAPP(int,int,times_times(int,B),Q_1)),R_1) = hAPP(int,int,plus_plus(int,hAPP(int,int,times_times(int,B_3),Q_4)),R_3) ) ).

fof(fact_63_mult__Bit0,axiom,
    ! [K_1,L_1] : hAPP(int,int,times_times(int,bit0(K_1)),L_1) = bit0(hAPP(int,int,times_times(int,K_1),L_1)) ).

fof(tsy_c_IntPrimes_Ozcong_arg1,axiom,
    ! [B_1_1,B_2_1] : zcong(B_1_1,B_2_1) = zcong(ti(int,B_1_1),B_2_1) ).

fof(fact_417_zcong__iff__lin,axiom,
    ! [A_3,B_2,Ma] :
      ( ? [K_2] : hAPP(int,int,plus_plus(int,A_3),hAPP(int,int,times_times(int,Ma),K_2)) = ti(int,B_2)
    <=> hBOOL(hAPP(int,bool,zcong(A_3,B_2),Ma)) ) ).

fof(arity_RealDef_Oreal___Rings_Osemiring,axiom,
    semiring(real) ).

fof(fact_25_times__numeral__code_I5_J,axiom,
    ! [V,W] : hAPP(int,int,times_times(int,number_number_of(int,V)),number_number_of(int,W)) = number_number_of(int,hAPP(int,int,times_times(int,V),W)) ).

fof(fact_147_add__numeral__0,axiom,
    ! [X_a] :
      ( number_ring(X_a)
     => ! [A_1] : hAPP(X_a,X_a,plus_plus(X_a,number_number_of(X_a,pls)),A_1) = ti(X_a,A_1) ) ).

fof(fact_789_diff__0__right,axiom,
    ! [X_a] :
      ( group_add(X_a)
     => ! [A_1] : hAPP(X_a,X_a,minus_minus(X_a,A_1),zero_zero(X_a)) = ti(X_a,A_1) ) ).

fof(fact_717_dvd__mult__cancel1,axiom,
    ! [N,Ma] :
      ( ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),hAPP(nat,nat,times_times(nat,Ma),N)),Ma))
      <=> N = one_one(nat) )
     <= hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),zero_zero(nat)),Ma)) ) ).

fof(fact_536_diff__0__eq__0,axiom,
    ! [N_1] : hAPP(nat,nat,minus_minus(nat,zero_zero(nat)),N_1) = zero_zero(nat) ).

fof(fact_304_zmult__eq__1__iff,axiom,
    ! [Ma,N] :
      ( ( ( one_one(int) = ti(int,Ma)
          & one_one(int) = ti(int,N) )
        | ( ti(int,Ma) = number_number_of(int,min)
          & number_number_of(int,min) = ti(int,N) ) )
    <=> hAPP(int,int,times_times(int,Ma),N) = one_one(int) ) ).

fof(fact_665_add__le__mono,axiom,
    ! [K_1,L_1,I_1,J_1] :
      ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),I_1),J_1))
     => ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),K_1),L_1))
       => hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),hAPP(nat,nat,plus_plus(nat,I_1),K_1)),hAPP(nat,nat,plus_plus(nat,J_1),L_1))) ) ) ).

fof(fact_747_number__of2,axiom,
    hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),zero_zero(int)),number_number_of(int,pls))) ).

fof(fact_287_rel__simps_I42_J,axiom,
    ! [L_1] : bit0(L_1) != min ).

fof(arity_RealDef_Oreal___Rings_Osemiring__1,axiom,
    semiring_1(real) ).

fof(fact_413_zcong__not,axiom,
    ! [B,M,A_1] :
      ( ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),A_1),M))
       => ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),zero_zero(int)),B))
         => ( ~ hBOOL(hAPP(int,bool,zcong(A_1,B),M))
           <= hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),B),A_1)) ) ) )
     <= hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),zero_zero(int)),A_1)) ) ).

fof(fact_754_norR__mem__unique__aux,axiom,
    ! [A_1,B] :
      ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),A_1),B))
     <= hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),A_1),hAPP(int,int,minus_minus(int,B),one_one(int)))) ) ).

fof(fact_310_zcong__refl,axiom,
    ! [K_1,M] : hBOOL(hAPP(int,bool,zcong(K_1,K_1),M)) ).

fof(fact_522_nat__mult__eq__one,axiom,
    ! [N,Ma] :
      ( ( one_one(nat) = N
        & one_one(nat) = Ma )
    <=> one_one(nat) = hAPP(nat,nat,times_times(nat,N),Ma) ) ).

fof(fact_40_eq__0__number__of,axiom,
    ! [V_3] :
      ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),V_3),pls))
    <=> number_number_of(nat,V_3) = zero_zero(nat) ) ).

fof(fact_985_mod__eq__0__iff,axiom,
    ! [Ma,D] :
      ( ? [Q_2] : hAPP(nat,nat,times_times(nat,D),Q_2) = Ma
    <=> zero_zero(nat) = hAPP(nat,nat,div_mod(nat,Ma),D) ) ).

fof(fact_347_power__one__right,axiom,
    ! [X_a] :
      ( ! [A_1] : ti(X_a,A_1) = hAPP(nat,X_a,power_power(X_a,A_1),one_one(nat))
     <= monoid_mult(X_a) ) ).

fof(fact_556_dvd_Oless__le__trans,axiom,
    ! [Z_1,X_1,Y] :
      ( ( ~ hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),Y),X_1))
        & hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),X_1),Y)) )
     => ( ( ~ hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),Z_1),X_1))
          & hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),X_1),Z_1)) )
       <= hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),Y),Z_1)) ) ) ).

fof(fact_986_mod__less__divisor,axiom,
    ! [M,N_1] :
      ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),hAPP(nat,nat,div_mod(nat,M),N_1)),N_1))
     <= hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),zero_zero(nat)),N_1)) ) ).

fof(fact_819_inv__inv,axiom,
    ! [A_1,P_3] :
      ( ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),number_number_of(int,bit1(bit0(bit1(pls))))),P_3))
       => ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),zero_zero(int)),A_1))
         => ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),A_1),P_3))
           => ti(int,A_1) = inv(P_3,inv(P_3,A_1)) ) ) )
     <= hBOOL(hAPP(int,bool,zprime,P_3)) ) ).

fof(fact_59_le__special_I4_J,axiom,
    ! [X_a] :
      ( ! [X] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),number_number_of(X_a,X)),one_one(X_a)))
        <=> hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),X),bit1(pls))) )
     <= ( linordered_idom(X_a)
        & number_ring(X_a) ) ) ).

fof(fact_650_less__imp__le__nat,axiom,
    ! [M,N_1] :
      ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),M),N_1))
     <= hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),M),N_1)) ) ).

fof(fact_200_zprime__power__zdvd__cancel__right,axiom,
    ! [N_1,A_1,B,P_3] :
      ( ( ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),dvd_dvd(int),hAPP(nat,int,power_power(int,P_3),N_1)),A_1))
         <= hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),dvd_dvd(int),hAPP(nat,int,power_power(int,P_3),N_1)),hAPP(int,int,times_times(int,A_1),B))) )
       <= ~ hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),dvd_dvd(int),P_3),B)) )
     <= hBOOL(hAPP(int,bool,zprime,P_3)) ) ).

fof(tsy_c_IntFact_Ozfact_res,axiom,
    ! [B_1_1] : zfact(B_1_1) = ti(int,zfact(B_1_1)) ).

fof(arity_RealDef_Oreal___Rings_Ocomm__semiring__1,axiom,
    comm_semiring_1(real) ).

fof(arity_Int_Oint___Power_Opower,axiom,
    power(int) ).

fof(fact_900_dvd__eq__mod__eq__0__number__of,axiom,
    ! [X_a] :
      ( ! [X,Y_1] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),dvd_dvd(X_a),number_number_of(X_a,X)),number_number_of(X_a,Y_1)))
        <=> hAPP(X_a,X_a,div_mod(X_a,number_number_of(X_a,Y_1)),number_number_of(X_a,X)) = zero_zero(X_a) )
     <= ( semiring_div(X_a)
        & number(X_a) ) ) ).

fof(fact_776_add__mono,axiom,
    ! [X_a] :
      ( ordere779506340up_add(X_a)
     => ! [C,D_2,A_1,B] :
          ( ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),C),D_2))
           => hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(X_a,X_a,plus_plus(X_a,A_1),C)),hAPP(X_a,X_a,plus_plus(X_a,B),D_2))) )
         <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),A_1),B)) ) ) ).

fof(fact_857_d22set__eq__wset,axiom,
    ! [P_2] :
      ( hBOOL(hAPP(int,bool,zprime,P_2))
     => wset(hAPP(int,int,minus_minus(int,P_2),number_number_of(int,bit0(bit1(pls)))),P_2) = d22set(hAPP(int,int,minus_minus(int,P_2),number_number_of(int,bit0(bit1(pls))))) ) ).

fof(fact_946_mod__mult__self1__is__0,axiom,
    ! [X_a] :
      ( ! [B,A_1] : zero_zero(X_a) = hAPP(X_a,X_a,div_mod(X_a,hAPP(X_a,X_a,times_times(X_a,B),A_1)),B)
     <= semiring_div(X_a) ) ).

fof(fact_631_mult__0__right,axiom,
    ! [M] : zero_zero(nat) = hAPP(nat,nat,times_times(nat,M),zero_zero(nat)) ).

fof(tsy_c_COMBS_arg2,axiom,
    ! [X_a,X_b,X_c,B_1_1,B_2_1] : combs(X_a,X_b,X_c,B_1_1,B_2_1) = combs(X_a,X_b,X_c,B_1_1,ti(fun(X_a,X_b),B_2_1)) ).

fof(fact_947_mod__diff__cong,axiom,
    ! [X_a] :
      ( ring_div(X_a)
     => ! [B,B_3,A_1,C,A_4] :
          ( hAPP(X_a,X_a,div_mod(X_a,A_1),C) = hAPP(X_a,X_a,div_mod(X_a,A_4),C)
         => ( hAPP(X_a,X_a,div_mod(X_a,B_3),C) = hAPP(X_a,X_a,div_mod(X_a,B),C)
           => hAPP(X_a,X_a,div_mod(X_a,hAPP(X_a,X_a,minus_minus(X_a,A_1),B)),C) = hAPP(X_a,X_a,div_mod(X_a,hAPP(X_a,X_a,minus_minus(X_a,A_4),B_3)),C) ) ) ) ).

fof(fact_852_d22set__induct__old,axiom,
    ! [X,P_1] :
      ( ! [A_5] :
          ( ( hBOOL(hAPP(int,bool,P_1,hAPP(int,int,minus_minus(int,A_5),one_one(int))))
           <= hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),one_one(int)),A_5)) )
         => hBOOL(hAPP(int,bool,P_1,A_5)) )
     => hBOOL(hAPP(int,bool,P_1,X)) ) ).

fof(fact_822_inv__not__p__minus__1,axiom,
    ! [A_1,P_3] :
      ( ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),one_one(int)),A_1))
       => ( inv(P_3,A_1) != hAPP(int,int,minus_minus(int,P_3),one_one(int))
         <= hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),A_1),hAPP(int,int,minus_minus(int,P_3),one_one(int)))) ) )
     <= hBOOL(hAPP(int,bool,zprime,P_3)) ) ).

fof(arity_RealDef_Oreal___Rings_Oordered__ring,axiom,
    ordered_ring(real) ).

fof(fact_414_zcong__not__zero,axiom,
    ! [M,X_1] :
      ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),zero_zero(int)),X_1))
     => ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),X_1),M))
       => ~ hBOOL(hAPP(int,bool,zcong(X_1,zero_zero(int)),M)) ) ) ).

fof(fact_653_diff__less__mono,axiom,
    ! [C,A_1,B] :
      ( ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),C),A_1))
       => hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),hAPP(nat,nat,minus_minus(nat,A_1),C)),hAPP(nat,nat,minus_minus(nat,B),C))) )
     <= hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),A_1),B)) ) ).

fof(fact_120_rel__simps_I38_J,axiom,
    ! [L] :
      ( pls = ti(int,L)
    <=> bit0(L) = pls ) ).

fof(fact_177_semiring__one__add__one__is__two,axiom,
    ! [X_a] :
      ( number_semiring(X_a)
     => number_number_of(X_a,bit0(bit1(pls))) = hAPP(X_a,X_a,plus_plus(X_a,one_one(X_a)),one_one(X_a)) ) ).

fof(fact_208_zprime__2,axiom,
    hBOOL(hAPP(int,bool,zprime,number_number_of(int,bit0(bit1(pls))))) ).

fof(fact_226_comm__semiring__1__class_Onormalizing__semiring__rules_I33_J,axiom,
    ! [X_a] :
      ( ! [X_1] : hAPP(nat,X_a,power_power(X_a,X_1),one_one(nat)) = ti(X_a,X_1)
     <= comm_semiring_1(X_a) ) ).

fof(fact_404_less__add__one,axiom,
    ! [X_a] :
      ( linordered_semidom(X_a)
     => ! [A_1] : hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),A_1),hAPP(X_a,X_a,plus_plus(X_a,A_1),one_one(X_a)))) ) ).

fof(fact_386_zero__less__mult__pos2,axiom,
    ! [X_a] :
      ( linord20386208strict(X_a)
     => ! [B,A_1] :
          ( ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),zero_zero(X_a)),B))
           <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),zero_zero(X_a)),A_1)) )
         <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),zero_zero(X_a)),hAPP(X_a,X_a,times_times(X_a,B),A_1))) ) ) ).

fof(fact_911_zpower__zmod,axiom,
    ! [X_1,M,Y] : hAPP(int,int,div_mod(int,hAPP(nat,int,power_power(int,hAPP(int,int,div_mod(int,X_1),M)),Y)),M) = hAPP(int,int,div_mod(int,hAPP(nat,int,power_power(int,X_1),Y)),M) ).

fof(fact_460_zcong__zprime__prod__zero__contra,axiom,
    ! [B,A_1,P_3] :
      ( hBOOL(hAPP(int,bool,zprime,P_3))
     => ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),zero_zero(int)),A_1))
       => ( ~ hBOOL(hAPP(int,bool,zcong(hAPP(int,int,times_times(int,A_1),B),zero_zero(int)),P_3))
         <= ( ~ hBOOL(hAPP(int,bool,zcong(B,zero_zero(int)),P_3))
            & ~ hBOOL(hAPP(int,bool,zcong(A_1,zero_zero(int)),P_3)) ) ) ) ) ).

fof(fact_487_zcong__def,axiom,
    ! [A_3,B_2,Ma] :
      ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),dvd_dvd(int),Ma),hAPP(int,int,minus_minus(int,A_3),B_2)))
    <=> hBOOL(hAPP(int,bool,zcong(A_3,B_2),Ma)) ) ).

fof(fact_98_zadd__commute,axiom,
    ! [Z_1,W] : hAPP(int,int,plus_plus(int,W),Z_1) = hAPP(int,int,plus_plus(int,Z_1),W) ).

fof(fact_735_nat__eq__add__iff1,axiom,
    ! [U,Ma,N,J_2,I_2] :
      ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),J_2),I_2))
     => ( hAPP(nat,nat,plus_plus(nat,hAPP(nat,nat,times_times(nat,I_2),U)),Ma) = hAPP(nat,nat,plus_plus(nat,hAPP(nat,nat,times_times(nat,J_2),U)),N)
      <=> N = hAPP(nat,nat,plus_plus(nat,hAPP(nat,nat,times_times(nat,hAPP(nat,nat,minus_minus(nat,I_2),J_2)),U)),Ma) ) ) ).

fof(fact_406_dvd__mult__cancel__right,axiom,
    ! [X_a] :
      ( idom(X_a)
     => ! [A_3,C_1,B_2] :
          ( ( zero_zero(X_a) = ti(X_a,C_1)
            | hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),dvd_dvd(X_a),A_3),B_2)) )
        <=> hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),dvd_dvd(X_a),hAPP(X_a,X_a,times_times(X_a,A_3),C_1)),hAPP(X_a,X_a,times_times(X_a,B_2),C_1))) ) ) ).

fof(tsy_c_Int_OBit0_arg1,hypothesis,
    ! [B_1_1] : bit0(B_1_1) = bit0(ti(int,B_1_1)) ).

fof(fact_613_add__diff__add,axiom,
    ! [X_a] :
      ( ab_group_add(X_a)
     => ! [A_1,C,B,D_2] : hAPP(X_a,X_a,minus_minus(X_a,hAPP(X_a,X_a,plus_plus(X_a,A_1),C)),hAPP(X_a,X_a,plus_plus(X_a,B),D_2)) = hAPP(X_a,X_a,plus_plus(X_a,hAPP(X_a,X_a,minus_minus(X_a,A_1),B)),hAPP(X_a,X_a,minus_minus(X_a,C),D_2)) ) ).

fof(fact_482_diff__bin__simps_I9_J,axiom,
    ! [K_1,L_1] : bit1(hAPP(int,int,minus_minus(int,K_1),L_1)) = hAPP(int,int,minus_minus(int,bit1(K_1)),bit0(L_1)) ).

fof(fact_172_numeral__1__eq__1,axiom,
    ! [X_a] :
      ( one_one(X_a) = number_number_of(X_a,bit1(pls))
     <= number_ring(X_a) ) ).

fof(fact_627_le__0__eq,axiom,
    ! [N] :
      ( zero_zero(nat) = N
    <=> hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),N),zero_zero(nat))) ) ).

fof(fact_914_Residues_Oaux,axiom,
    ! [X_1,M,Y] :
      ( hBOOL(hAPP(int,bool,zcong(X_1,Y),M))
     <= hAPP(int,int,div_mod(int,X_1),M) = hAPP(int,int,div_mod(int,Y),M) ) ).

fof(fact_360_power__m1__even,axiom,
    ! [X_a] :
      ( ! [N_1] : one_one(X_a) = hAPP(nat,X_a,power_power(X_a,number_number_of(X_a,min)),hAPP(nat,nat,times_times(nat,number_number_of(nat,bit0(bit1(pls)))),N_1))
     <= number_ring(X_a) ) ).

fof(fact_463__0964_A_K_Am_A_L_A1_Advd_As_A_094_A2_A_N_A_N1_096,axiom,
    hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),dvd_dvd(int),hAPP(int,int,plus_plus(int,hAPP(int,int,times_times(int,number_number_of(int,bit0(bit0(bit1(pls))))),m)),one_one(int))),hAPP(int,int,minus_minus(int,hAPP(nat,int,power_power(int,s),number_number_of(nat,bit0(bit1(pls))))),number_number_of(int,min)))) ).

fof(tsy_c_Int_OBit1_arg1,hypothesis,
    ! [B_1_1] : bit1(ti(int,B_1_1)) = bit1(B_1_1) ).

fof(fact_655_dvd__reduce,axiom,
    ! [K,N] :
      ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),K),hAPP(nat,nat,plus_plus(nat,N),K)))
    <=> hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),K),N)) ) ).

fof(arity_Nat_Onat___Int_Onumber__semiring,axiom,
    number_semiring(nat) ).

fof(arity_RealDef_Oreal___Rings_Odvd,axiom,
    dvd(real) ).

fof(fact_91_rel__simps_I48_J,axiom,
    ! [K,L] :
      ( ti(int,K) = ti(int,L)
    <=> bit0(L) = bit0(K) ) ).

fof(fact_225_comm__semiring__1__class_Onormalizing__semiring__rules_I20_J,axiom,
    ! [X_a] :
      ( ! [A_1,B,C,D_2] : hAPP(X_a,X_a,plus_plus(X_a,hAPP(X_a,X_a,plus_plus(X_a,A_1),B)),hAPP(X_a,X_a,plus_plus(X_a,C),D_2)) = hAPP(X_a,X_a,plus_plus(X_a,hAPP(X_a,X_a,plus_plus(X_a,A_1),C)),hAPP(X_a,X_a,plus_plus(X_a,B),D_2))
     <= comm_semiring_1(X_a) ) ).

fof(fact_102_power2__le__imp__le,axiom,
    ! [X_a] :
      ( linordered_semidom(X_a)
     => ! [X_1,Y] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(nat,X_a,power_power(X_a,X_1),number_number_of(nat,bit0(bit1(pls))))),hAPP(nat,X_a,power_power(X_a,Y),number_number_of(nat,bit0(bit1(pls))))))
         => ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X_1),Y))
           <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),zero_zero(X_a)),Y)) ) ) ) ).

fof(fact_124_rel__simps_I17_J,axiom,
    ! [K,L] :
      ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),bit1(K)),bit1(L)))
    <=> hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),K),L)) ) ).

fof(fact_842_MultInv__prop4,axiom,
    ! [X_1,P_3] :
      ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),number_number_of(int,bit0(bit1(pls)))),P_3))
     => ( hBOOL(hAPP(int,bool,zprime,P_3))
       => ( ~ hBOOL(hAPP(int,bool,zcong(X_1,zero_zero(int)),P_3))
         => hBOOL(hAPP(int,bool,zcong(multInv(P_3,multInv(P_3,X_1)),X_1),P_3)) ) ) ) ).

fof(fact_254_comm__semiring__1__class_Onormalizing__semiring__rules_I2_J,axiom,
    ! [X_a] :
      ( ! [A_1,M] : hAPP(X_a,X_a,plus_plus(X_a,hAPP(X_a,X_a,times_times(X_a,A_1),M)),M) = hAPP(X_a,X_a,times_times(X_a,hAPP(X_a,X_a,plus_plus(X_a,A_1),one_one(X_a))),M)
     <= comm_semiring_1(X_a) ) ).

fof(fact_277_zpower__zdvd__prop2,axiom,
    ! [Y,N_1,P_3] :
      ( ( ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),zero_zero(nat)),N_1))
         => hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),dvd_dvd(int),P_3),Y)) )
       <= hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),dvd_dvd(int),P_3),hAPP(nat,int,power_power(int,Y),N_1))) )
     <= hBOOL(hAPP(int,bool,zprime,P_3)) ) ).

fof(fact_402_less__1__mult,axiom,
    ! [X_a] :
      ( ! [N_1,M] :
          ( ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),one_one(X_a)),hAPP(X_a,X_a,times_times(X_a,M),N_1)))
           <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),one_one(X_a)),N_1)) )
         <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),one_one(X_a)),M)) )
     <= linordered_semidom(X_a) ) ).

fof(fact_303_rel__simps_I25_J,axiom,
    ! [K] :
      ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),min),bit0(K)))
    <=> hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),min),K)) ) ).

fof(fact_771_add_Ocomm__neutral,axiom,
    ! [X_a] :
      ( comm_monoid_add(X_a)
     => ! [A_1] : ti(X_a,A_1) = hAPP(X_a,X_a,plus_plus(X_a,A_1),zero_zero(X_a)) ) ).

fof(arity_RealDef_Oreal___Rings_Oordered__cancel__semiring,axiom,
    ordere453448008miring(real) ).

fof(tsy_c_Power_Opower__class_Opower_res,axiom,
    ! [B_1_1,X_a] :
      ( power(X_a)
     => ti(fun(nat,X_a),power_power(X_a,B_1_1)) = power_power(X_a,B_1_1) ) ).

fof(tsy_c_Groups_Otimes__class_Otimes_3_arg1,axiom,
    ! [B_1_1,X_a] :
      ( times_times(X_a,B_1_1) = times_times(X_a,ti(X_a,B_1_1))
     <= semiring(X_a) ) ).

fof(fact_786_right__minus__eq,axiom,
    ! [X_a] :
      ( ! [A_3,B_2] :
          ( ti(X_a,A_3) = ti(X_a,B_2)
        <=> zero_zero(X_a) = hAPP(X_a,X_a,minus_minus(X_a,A_3),B_2) )
     <= group_add(X_a) ) ).

fof(fact_391_mult__less__cancel__left__pos,axiom,
    ! [X_a] :
      ( linord581940658strict(X_a)
     => ! [A_3,B_2,C_1] :
          ( ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),A_3),B_2))
          <=> hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),hAPP(X_a,X_a,times_times(X_a,C_1),A_3)),hAPP(X_a,X_a,times_times(X_a,C_1),B_2))) )
         <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),zero_zero(X_a)),C_1)) ) ) ).

fof(fact_519_diff__square,axiom,
    ! [X_1,Y] : hAPP(nat,nat,times_times(nat,hAPP(nat,nat,plus_plus(nat,X_1),Y)),hAPP(nat,nat,minus_minus(nat,X_1),Y)) = hAPP(nat,nat,minus_minus(nat,hAPP(nat,nat,power_power(nat,X_1),number_number_of(nat,bit0(bit1(pls))))),hAPP(nat,nat,power_power(nat,Y),number_number_of(nat,bit0(bit1(pls))))) ).

fof(fact_892_mult_Oadd__left,axiom,
    ! [X_a] :
      ( real_normed_algebra(X_a)
     => ! [A_1,A_4,B] : hAPP(X_a,X_a,times_times(X_a,hAPP(X_a,X_a,plus_plus(X_a,A_1),A_4)),B) = hAPP(X_a,X_a,plus_plus(X_a,hAPP(X_a,X_a,times_times(X_a,A_1),B)),hAPP(X_a,X_a,times_times(X_a,A_4),B)) ) ).

fof(fact_743_zdvd__mono,axiom,
    ! [Ma,Ta,K] :
      ( zero_zero(int) != ti(int,K)
     => ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),dvd_dvd(int),hAPP(int,int,times_times(int,K),Ma)),hAPP(int,int,times_times(int,K),Ta)))
      <=> hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),dvd_dvd(int),Ma),Ta)) ) ) ).

fof(fact_987_mod__less__eq__dividend,axiom,
    ! [M,N_1] : hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),hAPP(nat,nat,div_mod(nat,M),N_1)),M)) ).

fof(fact_381_mult__strict__left__mono,axiom,
    ! [X_a] :
      ( ! [C,A_1,B] :
          ( ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),hAPP(X_a,X_a,times_times(X_a,C),A_1)),hAPP(X_a,X_a,times_times(X_a,C),B)))
           <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),zero_zero(X_a)),C)) )
         <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),A_1),B)) )
     <= linord20386208strict(X_a) ) ).

fof(fact_433_mult__left__le__one__le,axiom,
    ! [X_a] :
      ( ! [Y,X_1] :
          ( ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),zero_zero(X_a)),Y))
           => ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(X_a,X_a,times_times(X_a,Y),X_1)),X_1))
             <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),Y),one_one(X_a))) ) )
         <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),zero_zero(X_a)),X_1)) )
     <= linordered_idom(X_a) ) ).

fof(fact_933_mod__0,axiom,
    ! [X_a] :
      ( ! [A_1] : hAPP(X_a,X_a,div_mod(X_a,zero_zero(X_a)),A_1) = zero_zero(X_a)
     <= semiring_div(X_a) ) ).

fof(arity_Nat_Onat___Orderings_Oorder,axiom,
    order(nat) ).

fof(tsy_c_Groups_Otimes__class_Otimes_4_res,axiom,
    ! [B_1_1,X_a] :
      ( ti(fun(X_a,X_a),times_times(X_a,B_1_1)) = times_times(X_a,B_1_1)
     <= mult_zero(X_a) ) ).

fof(fact_371_mult__nonpos__nonneg,axiom,
    ! [X_a] :
      ( ordere453448008miring(X_a)
     => ! [B,A_1] :
          ( ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(X_a,X_a,times_times(X_a,A_1),B)),zero_zero(X_a)))
           <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),zero_zero(X_a)),B)) )
         <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),A_1),zero_zero(X_a))) ) ) ).

fof(fact_354_zcong__scalar,axiom,
    ! [K_1,A_1,B,M] :
      ( hBOOL(hAPP(int,bool,zcong(hAPP(int,int,times_times(int,A_1),K_1),hAPP(int,int,times_times(int,B),K_1)),M))
     <= hBOOL(hAPP(int,bool,zcong(A_1,B),M)) ) ).

fof(tsy_c_member_arg1,axiom,
    ! [X_a,B_1_1] : member(X_a,B_1_1) = member(X_a,ti(X_a,B_1_1)) ).

fof(fact_683_le__square,axiom,
    ! [M] : hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),M),hAPP(nat,nat,times_times(nat,M),M))) ).

fof(fact_187_power2__ge__self,axiom,
    ! [X_1] : hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),X_1),hAPP(nat,int,power_power(int,X_1),number_number_of(nat,bit0(bit1(pls)))))) ).

fof(fact_618_gr0I,axiom,
    ! [N_1] :
      ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),zero_zero(nat)),N_1))
     <= zero_zero(nat) != N_1 ) ).

fof(fact_692_real__add__mult__distrib,axiom,
    ! [Z1,Z2,W] : hAPP(real,real,times_times(real,hAPP(real,real,plus_plus(real,Z1),Z2)),W) = hAPP(real,real,plus_plus(real,hAPP(real,real,times_times(real,Z1),W)),hAPP(real,real,times_times(real,Z2),W)) ).

fof(fact_108_not__sum__squares__lt__zero,axiom,
    ! [X_a] :
      ( ! [X_1,Y] : ~ hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),hAPP(X_a,X_a,plus_plus(X_a,hAPP(X_a,X_a,times_times(X_a,X_1),X_1)),hAPP(X_a,X_a,times_times(X_a,Y),Y))),zero_zero(X_a)))
     <= linordered_ring(X_a) ) ).

fof(fact_773_add__le__cancel__left,axiom,
    ! [X_a] :
      ( ordere236663937imp_le(X_a)
     => ! [C_1,A_3,B_2] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(X_a,X_a,plus_plus(X_a,C_1),A_3)),hAPP(X_a,X_a,plus_plus(X_a,C_1),B_2)))
        <=> hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),A_3),B_2)) ) ) ).

fof(fact_431_mult__le__cancel__left__neg,axiom,
    ! [X_a] :
      ( linord581940658strict(X_a)
     => ! [A_3,B_2,C_1] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),C_1),zero_zero(X_a)))
         => ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),B_2),A_3))
          <=> hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(X_a,X_a,times_times(X_a,C_1),A_3)),hAPP(X_a,X_a,times_times(X_a,C_1),B_2))) ) ) ) ).

fof(fact_823_inv__not__1,axiom,
    ! [A_1,P_3] :
      ( hBOOL(hAPP(int,bool,zprime,P_3))
     => ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),one_one(int)),A_1))
       => ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),A_1),hAPP(int,int,minus_minus(int,P_3),one_one(int))))
         => inv(P_3,A_1) != one_one(int) ) ) ) ).

fof(fact_515_divides__mul__l,axiom,
    ! [C,A_1,B] :
      ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),hAPP(nat,nat,times_times(nat,C),A_1)),hAPP(nat,nat,times_times(nat,C),B)))
     <= hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),A_1),B)) ) ).

fof(fact_887_mult__left_Ozero,axiom,
    ! [X_a] :
      ( ! [Y] : zero_zero(X_a) = hAPP(X_a,X_a,times_times(X_a,zero_zero(X_a)),Y)
     <= real_normed_algebra(X_a) ) ).

fof(tsy_c_IntPrimes_Ozcong_arg2,axiom,
    ! [B_1_1,B_2_1] : zcong(B_1_1,ti(int,B_2_1)) = zcong(B_1_1,B_2_1) ).

fof(fact_392_mult__less__cancel__left__disj,axiom,
    ! [X_a] :
      ( linord581940658strict(X_a)
     => ! [C_1,A_3,B_2] :
          ( ( ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),B_2),A_3))
              & hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),C_1),zero_zero(X_a))) )
            | ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),zero_zero(X_a)),C_1))
              & hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),A_3),B_2)) ) )
        <=> hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),hAPP(X_a,X_a,times_times(X_a,C_1),A_3)),hAPP(X_a,X_a,times_times(X_a,C_1),B_2))) ) ) ).

fof(fact_639_nat__add__left__cancel__less,axiom,
    ! [K,Ma,N] :
      ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),Ma),N))
    <=> hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),hAPP(nat,nat,plus_plus(nat,K),Ma)),hAPP(nat,nat,plus_plus(nat,K),N))) ) ).

fof(fact_464_neg__one__power__eq__mod__m,axiom,
    ! [J_1,K_1,M] :
      ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),number_number_of(int,bit0(bit1(pls)))),M))
     => ( hBOOL(hAPP(int,bool,zcong(hAPP(nat,int,power_power(int,number_number_of(int,min)),J_1),hAPP(nat,int,power_power(int,number_number_of(int,min)),K_1)),M))
       => hAPP(nat,int,power_power(int,number_number_of(int,min)),J_1) = hAPP(nat,int,power_power(int,number_number_of(int,min)),K_1) ) ) ).

fof(fact_795_mult_Ocomm__neutral,axiom,
    ! [X_a] :
      ( comm_monoid_mult(X_a)
     => ! [A_1] : hAPP(X_a,X_a,times_times(X_a,A_1),one_one(X_a)) = ti(X_a,A_1) ) ).

fof(arity_Nat_Onat___Semiring__Normalization_Ocomm__semiring__1__cancel__crossproduc,axiom,
    semiri456707255roduct(nat) ).

fof(fact_42_mult__number__of__left,axiom,
    ! [X_a] :
      ( ! [V,W,Z_1] : hAPP(X_a,X_a,times_times(X_a,number_number_of(X_a,V)),hAPP(X_a,X_a,times_times(X_a,number_number_of(X_a,W)),Z_1)) = hAPP(X_a,X_a,times_times(X_a,number_number_of(X_a,hAPP(int,int,times_times(int,V),W))),Z_1)
     <= number_ring(X_a) ) ).

fof(tsy_c_Groups_Oplus__class_Oplus_1_res,axiom,
    ! [B_1_1,X_a] :
      ( plus_plus(X_a,B_1_1) = ti(fun(X_a,X_a),plus_plus(X_a,B_1_1))
     <= monoid_add(X_a) ) ).

fof(arity_Nat_Onat___Groups_Omonoid__mult,axiom,
    monoid_mult(nat) ).

fof(fact_913_mod__mod__is__mod,axiom,
    ! [X_1,M] : hBOOL(hAPP(int,bool,zcong(X_1,hAPP(int,int,div_mod(int,X_1),M)),M)) ).

fof(fact_341_dvd__power__le,axiom,
    ! [X_a] :
      ( ! [N_1,M,X_1,Y] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),dvd_dvd(X_a),X_1),Y))
         => ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),N_1),M))
           => hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),dvd_dvd(X_a),hAPP(nat,X_a,power_power(X_a,X_1),N_1)),hAPP(nat,X_a,power_power(X_a,Y),M))) ) )
     <= comm_semiring_1(X_a) ) ).

fof(fact_686_mult__le__mono2,axiom,
    ! [K_1,I_1,J_1] :
      ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),hAPP(nat,nat,times_times(nat,K_1),I_1)),hAPP(nat,nat,times_times(nat,K_1),J_1)))
     <= hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),I_1),J_1)) ) ).

fof(tsy_c_COMBS_arg1,axiom,
    ! [X_a,X_b,X_c,B_1_1,B_2_1] : combs(X_a,X_b,X_c,ti(fun(X_a,fun(X_b,X_c)),B_1_1),B_2_1) = combs(X_a,X_b,X_c,B_1_1,B_2_1) ).

fof(fact_553_dvd_Oless__asym,axiom,
    ! [X_1,Y] :
      ( ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),X_1),Y))
        & ~ hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),Y),X_1)) )
     => ~ ( ~ hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),X_1),Y))
          & hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),Y),X_1)) ) ) ).

fof(fact_646_add__diff__inverse,axiom,
    ! [M,N_1] :
      ( hAPP(nat,nat,plus_plus(nat,N_1),hAPP(nat,nat,minus_minus(nat,M),N_1)) = M
     <= ~ hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),M),N_1)) ) ).

fof(arity_Int_Oint___Rings_Oordered__semiring,axiom,
    ordered_semiring(int) ).

fof(fact_282_rel__simps_I43_J,axiom,
    ! [L] :
      ( min = ti(int,L)
    <=> bit1(L) = min ) ).

fof(tsy_c_COMBB_arg2,axiom,
    ! [X_b,X_c,X_a,B_1_1,B_2_1] : combb(X_b,X_c,X_a,B_1_1,ti(fun(X_a,X_b),B_2_1)) = combb(X_b,X_c,X_a,B_1_1,B_2_1) ).

fof(tsy_c_hAPP_res,axiom,
    ! [X_c,X_a,B_1_1,B_2_1] : ti(X_c,hAPP(X_a,X_c,B_1_1,B_2_1)) = hAPP(X_a,X_c,B_1_1,B_2_1) ).

fof(fact_564_dvd_Oless__imp__neq,axiom,
    ! [X_1,Y] :
      ( X_1 != Y
     <= ( ~ hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),Y),X_1))
        & hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),X_1),Y)) ) ) ).

fof(arity_RealDef_Oreal___Groups_Oordered__ab__group__add,axiom,
    ordered_ab_group_add(real) ).

fof(fact_349_IntPrimes_Ozcong__zero,axiom,
    ! [A_3,B_2] :
      ( ti(int,A_3) = ti(int,B_2)
    <=> hBOOL(hAPP(int,bool,zcong(A_3,B_2),zero_zero(int))) ) ).

fof(fact_461_zprime__zdvd__zmult,axiom,
    ! [N_1,P_3,M] :
      ( ( hBOOL(hAPP(int,bool,zprime,P_3))
       => ( ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),dvd_dvd(int),P_3),N_1))
            | hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),dvd_dvd(int),P_3),M)) )
         <= hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),dvd_dvd(int),P_3),hAPP(int,int,times_times(int,M),N_1))) ) )
     <= hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),zero_zero(int)),M)) ) ).

fof(fact_170_number__of__Bit1,axiom,
    ! [X_a] :
      ( number_ring(X_a)
     => ! [W] : number_number_of(X_a,bit1(W)) = hAPP(X_a,X_a,plus_plus(X_a,hAPP(X_a,X_a,plus_plus(X_a,one_one(X_a)),number_number_of(X_a,W))),number_number_of(X_a,W)) ) ).

fof(arity_RealDef_Oreal___Rings_Olinordered__semiring__1,axiom,
    linord1278240602ring_1(real) ).

fof(arity_Nat_Onat___Groups_Oab__semigroup__add,axiom,
    ab_semigroup_add(nat) ).

fof(tsy_c_Groups_Otimes__class_Otimes_1_res,axiom,
    ! [B_1_1,X_a] :
      ( power(X_a)
     => times_times(X_a,B_1_1) = ti(fun(X_a,X_a),times_times(X_a,B_1_1)) ) ).

fof(fact_255_power__eq__0__iff__number__of,axiom,
    ! [X_a] :
      ( ! [A_3,W_1] :
          ( ( zero_zero(nat) != number_number_of(nat,W_1)
            & zero_zero(X_a) = ti(X_a,A_3) )
        <=> hAPP(nat,X_a,power_power(X_a,A_3),number_number_of(nat,W_1)) = zero_zero(X_a) )
     <= ( power(X_a)
        & zero_neq_one(X_a)
        & no_zero_divisors(X_a)
        & mult_zero(X_a) ) ) ).

fof(fact_701_mult__less__mono1,axiom,
    ! [K_1,I_1,J_1] :
      ( ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),zero_zero(nat)),K_1))
       => hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),hAPP(nat,nat,times_times(nat,I_1),K_1)),hAPP(nat,nat,times_times(nat,J_1),K_1))) )
     <= hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),I_1),J_1)) ) ).

fof(fact_812_less__iff__diff__less__0,axiom,
    ! [X_a] :
      ( ! [A_3,B_2] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),hAPP(X_a,X_a,minus_minus(X_a,A_3),B_2)),zero_zero(X_a)))
        <=> hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),A_3),B_2)) )
     <= ordered_ab_group_add(X_a) ) ).

fof(fact_990_StandardRes__prop1,axiom,
    ! [X_1,M] : hBOOL(hAPP(int,bool,zcong(X_1,standardRes(M,X_1)),M)) ).

fof(fact_893_mult__left_Oadd,axiom,
    ! [X_a] :
      ( real_normed_algebra(X_a)
     => ! [X_1,Y,Ya] : hAPP(X_a,X_a,times_times(X_a,hAPP(X_a,X_a,plus_plus(X_a,X_1),Y)),Ya) = hAPP(X_a,X_a,plus_plus(X_a,hAPP(X_a,X_a,times_times(X_a,X_1),Ya)),hAPP(X_a,X_a,times_times(X_a,Y),Ya)) ) ).

fof(fact_593_real__mult__assoc,axiom,
    ! [Z1,Z2,Z3] : hAPP(real,real,times_times(real,hAPP(real,real,times_times(real,Z1),Z2)),Z3) = hAPP(real,real,times_times(real,Z1),hAPP(real,real,times_times(real,Z2),Z3)) ).

fof(fact_430_mult__strict__mono,axiom,
    ! [X_a] :
      ( ! [C,D_2,A_1,B] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),A_1),B))
         => ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),C),D_2))
           => ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),zero_zero(X_a)),B))
             => ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),zero_zero(X_a)),C))
               => hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),hAPP(X_a,X_a,times_times(X_a,A_1),C)),hAPP(X_a,X_a,times_times(X_a,B),D_2))) ) ) ) )
     <= linord20386208strict(X_a) ) ).

fof(fact_142_power2__eq__square,axiom,
    ! [X_a] :
      ( monoid_mult(X_a)
     => ! [A_1] : hAPP(nat,X_a,power_power(X_a,A_1),number_number_of(nat,bit0(bit1(pls)))) = hAPP(X_a,X_a,times_times(X_a,A_1),A_1) ) ).

fof(fact_706_real__mult__order,axiom,
    ! [Y,X_1] :
      ( hBOOL(hAPP(real,bool,hAPP(real,fun(real,bool),ord_less(real),zero_zero(real)),X_1))
     => ( hBOOL(hAPP(real,bool,hAPP(real,fun(real,bool),ord_less(real),zero_zero(real)),Y))
       => hBOOL(hAPP(real,bool,hAPP(real,fun(real,bool),ord_less(real),zero_zero(real)),hAPP(real,real,times_times(real,X_1),Y))) ) ) ).

fof(fact_129_add__Pls__right,axiom,
    ! [K_1] : hAPP(int,int,plus_plus(int,K_1),pls) = ti(int,K_1) ).

fof(fact_407_power__increasing,axiom,
    ! [X_a] :
      ( linordered_semidom(X_a)
     => ! [A_1,N_1,N_3] :
          ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),N_1),N_3))
         => ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(nat,X_a,power_power(X_a,A_1),N_1)),hAPP(nat,X_a,power_power(X_a,A_1),N_3)))
           <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),one_one(X_a)),A_1)) ) ) ) ).

fof(fact_681_add__mult__distrib,axiom,
    ! [M,N_1,K_1] : hAPP(nat,nat,plus_plus(nat,hAPP(nat,nat,times_times(nat,M),K_1)),hAPP(nat,nat,times_times(nat,N_1),K_1)) = hAPP(nat,nat,times_times(nat,hAPP(nat,nat,plus_plus(nat,M),N_1)),K_1) ).

fof(tsy_c_COMBC_res,axiom,
    ! [X_a,X_c,X_b,B_1_1,B_2_1] : ti(fun(X_a,X_c),combc(X_a,X_b,X_c,B_1_1,B_2_1)) = combc(X_a,X_b,X_c,B_1_1,B_2_1) ).

fof(arity_RealDef_Oreal___Groups_Ocancel__semigroup__add,axiom,
    cancel_semigroup_add(real) ).

fof(fact_805_zero__less__double__add__iff__zero__less__single__add,axiom,
    ! [X_a] :
      ( linord219039673up_add(X_a)
     => ! [A_3] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),zero_zero(X_a)),A_3))
        <=> hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),zero_zero(X_a)),hAPP(X_a,X_a,plus_plus(X_a,A_3),A_3))) ) ) ).

fof(fact_45_sum__squares__le__zero__iff,axiom,
    ! [X_a] :
      ( linord581940658strict(X_a)
     => ! [X,Y_1] :
          ( ( zero_zero(X_a) = ti(X_a,Y_1)
            & ti(X_a,X) = zero_zero(X_a) )
        <=> hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(X_a,X_a,plus_plus(X_a,hAPP(X_a,X_a,times_times(X_a,X),X)),hAPP(X_a,X_a,times_times(X_a,Y_1),Y_1))),zero_zero(X_a))) ) ) ).

fof(fact_401_zero__le__power,axiom,
    ! [X_a] :
      ( linordered_semidom(X_a)
     => ! [N_1,A_1] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),zero_zero(X_a)),A_1))
         => hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),zero_zero(X_a)),hAPP(nat,X_a,power_power(X_a,A_1),N_1))) ) ) ).

fof(fact_249_Nat__Transfer_Otransfer__nat__int__function__closures_I5_J,axiom,
    hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),zero_zero(int)),zero_zero(int))) ).

fof(fact_319_mult__zero__left,axiom,
    ! [X_a] :
      ( ! [A_1] : hAPP(X_a,X_a,times_times(X_a,zero_zero(X_a)),A_1) = zero_zero(X_a)
     <= mult_zero(X_a) ) ).

fof(fact_531_dvd__mult__cancel2,axiom,
    ! [N,Ma] :
      ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),zero_zero(nat)),Ma))
     => ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),hAPP(nat,nat,times_times(nat,N),Ma)),Ma))
      <=> N = one_one(nat) ) ) ).

fof(arity_RealDef_Oreal___Rings_Ocomm__semiring,axiom,
    comm_semiring(real) ).

fof(fact_313_zcong__neg__1__impl__ne__1,axiom,
    ! [X_1,P_3] :
      ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),number_number_of(int,bit0(bit1(pls)))),P_3))
     => ( hBOOL(hAPP(int,bool,zcong(X_1,number_number_of(int,min)),P_3))
       => ~ hBOOL(hAPP(int,bool,zcong(X_1,one_one(int)),P_3)) ) ) ).

fof(fact_468_not__real__square__gt__zero,axiom,
    ! [X] :
      ( ~ hBOOL(hAPP(real,bool,hAPP(real,fun(real,bool),ord_less(real),zero_zero(real)),hAPP(real,real,times_times(real,X),X)))
    <=> X = zero_zero(real) ) ).

fof(fact_146_semiring__norm_I112_J,axiom,
    ! [X_a] :
      ( zero_zero(X_a) = number_number_of(X_a,pls)
     <= number_ring(X_a) ) ).

fof(fact_575_dvd_Oantisym__conv,axiom,
    ! [Y_1,X] :
      ( ( Y_1 = X
      <=> hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),X),Y_1)) )
     <= hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),Y_1),X)) ) ).

fof(fact_583_nat__add__commute,axiom,
    ! [M,N_1] : hAPP(nat,nat,plus_plus(nat,N_1),M) = hAPP(nat,nat,plus_plus(nat,M),N_1) ).

fof(fact_931_mod__self,axiom,
    ! [X_a] :
      ( ! [A_1] : zero_zero(X_a) = hAPP(X_a,X_a,div_mod(X_a,A_1),A_1)
     <= semiring_div(X_a) ) ).

fof(tsy_c_WilsonRuss_Owset_arg1,axiom,
    ! [B_1_1,B_2_1] : wset(ti(int,B_1_1),B_2_1) = wset(B_1_1,B_2_1) ).

fof(arity_Int_Oint___Rings_Oring__1,axiom,
    ring_1(int) ).

fof(fact_676_le__imp__diff__is__add,axiom,
    ! [K,I_2,J_2] :
      ( ( hAPP(nat,nat,plus_plus(nat,K),I_2) = J_2
      <=> K = hAPP(nat,nat,minus_minus(nat,J_2),I_2) )
     <= hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),I_2),J_2)) ) ).

fof(fact_379_mult__strict__right__mono__neg,axiom,
    ! [X_a] :
      ( linord581940658strict(X_a)
     => ! [C,B,A_1] :
          ( ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),C),zero_zero(X_a)))
           => hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),hAPP(X_a,X_a,times_times(X_a,A_1),C)),hAPP(X_a,X_a,times_times(X_a,B),C))) )
         <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),B),A_1)) ) ) ).

fof(fact_632_mult__is__0,axiom,
    ! [Ma,N] :
      ( hAPP(nat,nat,times_times(nat,Ma),N) = zero_zero(nat)
    <=> ( Ma = zero_zero(nat)
        | zero_zero(nat) = N ) ) ).

fof(fact_195__096_B_Bthesis_O_A_I_B_Bs_O_A0_A_060_061_As_A_G_As_A_060_A4_A_K_Am_A_L_,axiom,
    ~ ! [S_1] :
        ~ ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),S_1),hAPP(int,int,plus_plus(int,hAPP(int,int,times_times(int,number_number_of(int,bit0(bit0(bit1(pls))))),m)),one_one(int))))
          & hBOOL(hAPP(int,bool,zcong(s1,S_1),hAPP(int,int,plus_plus(int,hAPP(int,int,times_times(int,number_number_of(int,bit0(bit0(bit1(pls))))),m)),one_one(int))))
          & hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),zero_zero(int)),S_1)) ) ).

fof(fact_925_zmod__simps_I2_J,axiom,
    ! [X_a] :
      ( semiring_div(X_a)
     => ! [A_1,B,C] : hAPP(X_a,X_a,div_mod(X_a,hAPP(X_a,X_a,plus_plus(X_a,A_1),hAPP(X_a,X_a,div_mod(X_a,B),C))),C) = hAPP(X_a,X_a,div_mod(X_a,hAPP(X_a,X_a,plus_plus(X_a,A_1),B)),C) ) ).

fof(fact_935_zmod__eq__0__iff,axiom,
    ! [Ma,D] :
      ( zero_zero(int) = hAPP(int,int,div_mod(int,Ma),D)
    <=> ? [Q_2] : ti(int,Ma) = hAPP(int,int,times_times(int,D),Q_2) ) ).

fof(fact_652_less__or__eq__imp__le,axiom,
    ! [M,N_1] :
      ( ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),M),N_1))
        | N_1 = M )
     => hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),M),N_1)) ) ).

fof(tsy_c_Residues_OSR_res,axiom,
    ! [B_1_1] : ti(fun(int,bool),sr(B_1_1)) = sr(B_1_1) ).

fof(fact_886_mult_Ozero__left,axiom,
    ! [X_a] :
      ( ! [B] : zero_zero(X_a) = hAPP(X_a,X_a,times_times(X_a,zero_zero(X_a)),B)
     <= real_normed_algebra(X_a) ) ).

fof(arity_Nat_Onat___Rings_Osemiring__0,axiom,
    semiring_0(nat) ).

fof(fact_712_dvd__mult__cancel,axiom,
    ! [K_1,M,N_1] :
      ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),hAPP(nat,nat,times_times(nat,K_1),M)),hAPP(nat,nat,times_times(nat,K_1),N_1)))
     => ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),M),N_1))
       <= hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),zero_zero(nat)),K_1)) ) ) ).

fof(fact_779_add__less__cancel__right,axiom,
    ! [X_a] :
      ( ordere236663937imp_le(X_a)
     => ! [A_3,C_1,B_2] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),hAPP(X_a,X_a,plus_plus(X_a,A_3),C_1)),hAPP(X_a,X_a,plus_plus(X_a,B_2),C_1)))
        <=> hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),A_3),B_2)) ) ) ).

fof(fact_216_comm__semiring__1__class_Onormalizing__semiring__rules_I17_J,axiom,
    ! [X_a] :
      ( comm_semiring_1(X_a)
     => ! [Lx,Ly,Rx] : hAPP(X_a,X_a,times_times(X_a,Lx),hAPP(X_a,X_a,times_times(X_a,Ly),Rx)) = hAPP(X_a,X_a,times_times(X_a,hAPP(X_a,X_a,times_times(X_a,Lx),Ly)),Rx) ) ).

fof(arity_RealDef_Oreal___Groups_Ocomm__monoid__mult,axiom,
    comm_monoid_mult(real) ).

fof(fact_688_nat__mult__1,axiom,
    ! [N_1] : N_1 = hAPP(nat,nat,times_times(nat,one_one(nat)),N_1) ).

fof(fact_337_power__one,axiom,
    ! [X_a] :
      ( monoid_mult(X_a)
     => ! [N_1] : hAPP(nat,X_a,power_power(X_a,one_one(X_a)),N_1) = one_one(X_a) ) ).

fof(fact_882_divides__le,axiom,
    ! [M,N_1] :
      ( ( N_1 = zero_zero(nat)
        | hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),M),N_1)) )
     <= hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),M),N_1)) ) ).

fof(arity_Nat_Onat___Groups_Oordered__comm__monoid__add,axiom,
    ordere216010020id_add(nat) ).

fof(arity_Int_Oint___Int_Oring__char__0,axiom,
    ring_char_0(int) ).

fof(fact_601_le__diff__iff,axiom,
    ! [N,K,Ma] :
      ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),K),Ma))
     => ( ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),hAPP(nat,nat,minus_minus(nat,Ma),K)),hAPP(nat,nat,minus_minus(nat,N),K)))
        <=> hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),Ma),N)) )
       <= hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),K),N)) ) ) ).

fof(fact_502_zspecial__product,axiom,
    ! [A_1,B] : hAPP(int,int,times_times(int,hAPP(int,int,plus_plus(int,A_1),B)),hAPP(int,int,minus_minus(int,A_1),B)) = hAPP(int,int,minus_minus(int,hAPP(nat,int,power_power(int,A_1),number_number_of(nat,bit0(bit1(pls))))),hAPP(nat,int,power_power(int,B),number_number_of(nat,bit0(bit1(pls))))) ).

fof(fact_49_less__0__number__of,axiom,
    ! [V_3] :
      ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),pls),V_3))
    <=> hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),zero_zero(nat)),number_number_of(nat,V_3))) ) ).

fof(fact_929_mod__add__self1,axiom,
    ! [X_a] :
      ( semiring_div(X_a)
     => ! [B,A_1] : hAPP(X_a,X_a,div_mod(X_a,hAPP(X_a,X_a,plus_plus(X_a,B),A_1)),B) = hAPP(X_a,X_a,div_mod(X_a,A_1),B) ) ).

fof(arity_RealDef_Oreal___Rings_Ono__zero__divisors,axiom,
    no_zero_divisors(real) ).

fof(fact_816_add__strict__increasing2,axiom,
    ! [X_a] :
      ( ordere216010020id_add(X_a)
     => ! [B,C,A_1] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),zero_zero(X_a)),A_1))
         => ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),B),C))
           => hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),B),hAPP(X_a,X_a,plus_plus(X_a,A_1),C))) ) ) ) ).

fof(fact_388_mult__pos__neg2,axiom,
    ! [X_a] :
      ( linord20386208strict(X_a)
     => ! [B,A_1] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),zero_zero(X_a)),A_1))
         => ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),hAPP(X_a,X_a,times_times(X_a,B),A_1)),zero_zero(X_a)))
           <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),B),zero_zero(X_a))) ) ) ) ).

fof(fact_637_not__add__less1,axiom,
    ! [I_1,J_1] : ~ hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),hAPP(nat,nat,plus_plus(nat,I_1),J_1)),I_1)) ).

fof(fact_136_double__number__of__Bit0,axiom,
    ! [X_a] :
      ( ! [W] : number_number_of(X_a,bit0(W)) = hAPP(X_a,X_a,times_times(X_a,hAPP(X_a,X_a,plus_plus(X_a,one_one(X_a)),one_one(X_a))),number_number_of(X_a,W))
     <= number_ring(X_a) ) ).

fof(tsy_c_Residues_OLegendre_arg2,axiom,
    ! [B_1_1,B_2_1] : legendre(B_1_1,ti(int,B_2_1)) = legendre(B_1_1,B_2_1) ).

fof(fact_53_rel__simps_I32_J,axiom,
    ! [K,L] :
      ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),K),L))
    <=> hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),bit0(K)),bit1(L))) ) ).

fof(arity_Nat_Onat___Rings_Olinordered__comm__semiring__strict,axiom,
    linord893533164strict(nat) ).

fof(fact_94_left__distrib__number__of,axiom,
    ! [X_b] :
      ( ( number(X_b)
        & semiring(X_b) )
     => ! [A_1,B,V] : hAPP(X_b,X_b,plus_plus(X_b,hAPP(X_b,X_b,times_times(X_b,A_1),number_number_of(X_b,V))),hAPP(X_b,X_b,times_times(X_b,B),number_number_of(X_b,V))) = hAPP(X_b,X_b,times_times(X_b,hAPP(X_b,X_b,plus_plus(X_b,A_1),B)),number_number_of(X_b,V)) ) ).

fof(fact_579_dvd_Oless__le,axiom,
    ! [X,Y_1] :
      ( ( ~ hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),Y_1),X))
        & hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),X),Y_1)) )
    <=> ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),X),Y_1))
        & Y_1 != X ) ) ).

fof(fact_160_bin__less__0__simps_I3_J,axiom,
    ! [W_1] :
      ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),W_1),zero_zero(int)))
    <=> hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),bit0(W_1)),zero_zero(int))) ) ).

fof(fact_961_neg__mod__conj,axiom,
    ! [A_1,B] :
      ( ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),B),hAPP(int,int,div_mod(int,A_1),B)))
        & hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),hAPP(int,int,div_mod(int,A_1),B)),zero_zero(int))) )
     <= hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),B),zero_zero(int))) ) ).

fof(fact_865_minf_I9_J,axiom,
    ! [X_a] :
      ( ( dvd(X_a)
        & linorder(X_a)
        & plus(X_a) )
     => ! [D,Sa] :
        ? [Z] :
        ! [X_2] :
          ( ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),dvd_dvd(X_a),D),hAPP(X_a,X_a,plus_plus(X_a,X_2),Sa)))
          <=> hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),dvd_dvd(X_a),D),hAPP(X_a,X_a,plus_plus(X_a,X_2),Sa))) )
         <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),X_2),Z)) ) ) ).

fof(fact_185_s0p,axiom,
    ( hBOOL(hAPP(int,bool,zcong(s1,s),hAPP(int,int,plus_plus(int,hAPP(int,int,times_times(int,number_number_of(int,bit0(bit0(bit1(pls))))),m)),one_one(int))))
    & hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),s),hAPP(int,int,plus_plus(int,hAPP(int,int,times_times(int,number_number_of(int,bit0(bit0(bit1(pls))))),m)),one_one(int))))
    & hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),zero_zero(int)),s)) ) ).

fof(fact_260_Nat__Transfer_Otransfer__nat__int__function__closures_I4_J,axiom,
    ! [N_1,X_1] :
      ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),zero_zero(int)),X_1))
     => hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),zero_zero(int)),hAPP(nat,int,power_power(int,X_1),N_1))) ) ).

fof(fact_729_nat__mult__eq__cancel1,axiom,
    ! [Ma,N,K] :
      ( ( hAPP(nat,nat,times_times(nat,K),Ma) = hAPP(nat,nat,times_times(nat,K),N)
      <=> N = Ma )
     <= hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),zero_zero(nat)),K)) ) ).

fof(arity_Nat_Onat___Rings_Ocomm__semiring,axiom,
    comm_semiring(nat) ).

fof(fact_684_le__cube,axiom,
    ! [M] : hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),M),hAPP(nat,nat,times_times(nat,M),hAPP(nat,nat,times_times(nat,M),M)))) ).

fof(fact_634_mult__cancel2,axiom,
    ! [Ma,K,N] :
      ( hAPP(nat,nat,times_times(nat,Ma),K) = hAPP(nat,nat,times_times(nat,N),K)
    <=> ( Ma = N
        | K = zero_zero(nat) ) ) ).

fof(fact_488_le__add__iff1,axiom,
    ! [X_a] :
      ( ! [A_3,E,C_1,B_2,D] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(X_a,X_a,plus_plus(X_a,hAPP(X_a,X_a,times_times(X_a,hAPP(X_a,X_a,minus_minus(X_a,A_3),B_2)),E)),C_1)),D))
        <=> hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(X_a,X_a,plus_plus(X_a,hAPP(X_a,X_a,times_times(X_a,A_3),E)),C_1)),hAPP(X_a,X_a,plus_plus(X_a,hAPP(X_a,X_a,times_times(X_a,B_2),E)),D))) )
     <= ordered_ring(X_a) ) ).

fof(arity_Int_Oint___Rings_Osemiring,axiom,
    semiring(int) ).

fof(fact_232_power__even__eq,axiom,
    ! [X_a] :
      ( monoid_mult(X_a)
     => ! [A_1,N_1] : hAPP(nat,X_a,power_power(X_a,A_1),hAPP(nat,nat,times_times(nat,number_number_of(nat,bit0(bit1(pls)))),N_1)) = hAPP(nat,X_a,power_power(X_a,hAPP(nat,X_a,power_power(X_a,A_1),N_1)),number_number_of(nat,bit0(bit1(pls)))) ) ).

fof(fact_346_Euler_Oaux2,axiom,
    ! [B,A_1,C] :
      ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),A_1),C))
     => ( ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),A_1),B))
          | hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),B),A_1)) )
       <= hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),B),C)) ) ) ).

fof(fact_622_Nat_Oadd__0__right,axiom,
    ! [M] : M = hAPP(nat,nat,plus_plus(nat,M),zero_zero(nat)) ).

fof(fact_862_ex__least__nat__le,axiom,
    ! [N,P_1] :
      ( ( ? [K_2] :
            ( ! [I] :
                ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),I),K_2))
               => ~ hBOOL(hAPP(nat,bool,P_1,I)) )
            & hBOOL(hAPP(nat,bool,P_1,K_2))
            & hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),K_2),N)) )
       <= hBOOL(hAPP(nat,bool,P_1,N)) )
     <= ~ hBOOL(hAPP(nat,bool,P_1,zero_zero(nat))) ) ).

fof(fact_106_sum__power2__ge__zero,axiom,
    ! [X_a] :
      ( linordered_idom(X_a)
     => ! [X_1,Y] : hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),zero_zero(X_a)),hAPP(X_a,X_a,plus_plus(X_a,hAPP(nat,X_a,power_power(X_a,X_1),number_number_of(nat,bit0(bit1(pls))))),hAPP(nat,X_a,power_power(X_a,Y),number_number_of(nat,bit0(bit1(pls))))))) ) ).

fof(arity_Int_Oint___Semiring__Normalization_Ocomm__semiring__1__cancel__crossproduc,axiom,
    semiri456707255roduct(int) ).

fof(fact_242_comm__semiring__1__class_Onormalizing__semiring__rules_I1_J,axiom,
    ! [X_a] :
      ( ! [A_1,M,B] : hAPP(X_a,X_a,times_times(X_a,hAPP(X_a,X_a,plus_plus(X_a,A_1),B)),M) = hAPP(X_a,X_a,plus_plus(X_a,hAPP(X_a,X_a,times_times(X_a,A_1),M)),hAPP(X_a,X_a,times_times(X_a,B),M))
     <= comm_semiring_1(X_a) ) ).

fof(fact_571_dvd_Oord__le__eq__trans,axiom,
    ! [C,A_1,B] :
      ( ( B = C
       => hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),A_1),C)) )
     <= hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),A_1),B)) ) ).

fof(fact_572_dvd_Oord__eq__le__trans,axiom,
    ! [C,A_1,B] :
      ( ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),A_1),C))
       <= hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),B),C)) )
     <= B = A_1 ) ).

fof(fact_212_comm__semiring__1__class_Onormalizing__semiring__rules_I13_J,axiom,
    ! [X_a] :
      ( comm_semiring_1(X_a)
     => ! [Lx,Ly,Rx,Ry] : hAPP(X_a,X_a,times_times(X_a,hAPP(X_a,X_a,times_times(X_a,Lx),Ly)),hAPP(X_a,X_a,times_times(X_a,Rx),Ry)) = hAPP(X_a,X_a,times_times(X_a,hAPP(X_a,X_a,times_times(X_a,Lx),Rx)),hAPP(X_a,X_a,times_times(X_a,Ly),Ry)) ) ).

fof(fact_623_add__is__0,axiom,
    ! [Ma,N] :
      ( ( N = zero_zero(nat)
        & zero_zero(nat) = Ma )
    <=> zero_zero(nat) = hAPP(nat,nat,plus_plus(nat,Ma),N) ) ).

fof(fact_774_add__right__mono,axiom,
    ! [X_a] :
      ( ! [C,A_1,B] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(X_a,X_a,plus_plus(X_a,A_1),C)),hAPP(X_a,X_a,plus_plus(X_a,B),C)))
         <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),A_1),B)) )
     <= ordere779506340up_add(X_a) ) ).

fof(tsy_c_Int_OMin_res,axiom,
    min = ti(int,min) ).

fof(arity_RealDef_Oreal___Rings_Ocomm__ring,axiom,
    comm_ring(real) ).

fof(fact_977_mod__mult__distrib2,axiom,
    ! [K_1,M,N_1] : hAPP(nat,nat,times_times(nat,K_1),hAPP(nat,nat,div_mod(nat,M),N_1)) = hAPP(nat,nat,div_mod(nat,hAPP(nat,nat,times_times(nat,K_1),M)),hAPP(nat,nat,times_times(nat,K_1),N_1)) ).

fof(fact_718_realpow__num__eq__if,axiom,
    ! [X_a] :
      ( power(X_a)
     => ! [M,N_1] :
          ( ( zero_zero(nat) = N_1
           => one_one(X_a) = hAPP(nat,X_a,power_power(X_a,M),N_1) )
          & ( hAPP(nat,X_a,power_power(X_a,M),N_1) = hAPP(X_a,X_a,times_times(X_a,M),hAPP(nat,X_a,power_power(X_a,M),hAPP(nat,nat,minus_minus(nat,N_1),one_one(nat))))
           <= N_1 != zero_zero(nat) ) ) ) ).

fof(fact_597_le__trans,axiom,
    ! [K_1,I_1,J_1] :
      ( ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),I_1),K_1))
       <= hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),J_1),K_1)) )
     <= hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),I_1),J_1)) ) ).

fof(fact_912_mod__mod__trivial,axiom,
    ! [X_a] :
      ( ! [A_1,B] : hAPP(X_a,X_a,div_mod(X_a,hAPP(X_a,X_a,div_mod(X_a,A_1),B)),B) = hAPP(X_a,X_a,div_mod(X_a,A_1),B)
     <= semiring_div(X_a) ) ).

fof(fact_845_aux______2,axiom,
    ! [J_1,A_1,K_1,P_3] :
      ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),number_number_of(int,bit0(bit1(pls)))),P_3))
     => ( hBOOL(hAPP(int,bool,zprime,P_3))
       => ( ( hBOOL(hAPP(int,bool,zcong(hAPP(int,int,times_times(int,J_1),K_1),hAPP(int,int,times_times(int,hAPP(int,int,times_times(int,A_1),multInv(P_3,K_1))),K_1)),P_3))
           => hBOOL(hAPP(int,bool,zcong(hAPP(int,int,times_times(int,J_1),K_1),A_1),P_3)) )
         <= ~ hBOOL(hAPP(int,bool,zcong(K_1,zero_zero(int)),P_3)) ) ) ) ).

fof(fact_742_imp__le__cong,axiom,
    ! [P_4,P_1,X] :
      ( ( ( hBOOL(P_1)
        <=> hBOOL(P_4) )
       <= hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),zero_zero(int)),X)) )
     => ( ( hBOOL(P_4)
         <= hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),zero_zero(int)),X)) )
      <=> ( hBOOL(P_1)
         <= hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),zero_zero(int)),X)) ) ) ) ).

fof(fact_457_one__less__power,axiom,
    ! [X_a] :
      ( linordered_semidom(X_a)
     => ! [N_1,A_1] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),one_one(X_a)),A_1))
         => ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),zero_zero(nat)),N_1))
           => hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),one_one(X_a)),hAPP(nat,X_a,power_power(X_a,A_1),N_1))) ) ) ) ).

fof(fact_9_sum__power2__eq__zero__iff,axiom,
    ! [X_a] :
      ( linordered_idom(X_a)
     => ! [X,Y_1] :
          ( ( ti(X_a,X) = zero_zero(X_a)
            & zero_zero(X_a) = ti(X_a,Y_1) )
        <=> zero_zero(X_a) = hAPP(X_a,X_a,plus_plus(X_a,hAPP(nat,X_a,power_power(X_a,X),number_number_of(nat,bit0(bit1(pls))))),hAPP(nat,X_a,power_power(X_a,Y_1),number_number_of(nat,bit0(bit1(pls))))) ) ) ).

fof(fact_775_add__left__mono,axiom,
    ! [X_a] :
      ( ordere779506340up_add(X_a)
     => ! [C,A_1,B] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(X_a,X_a,plus_plus(X_a,C),A_1)),hAPP(X_a,X_a,plus_plus(X_a,C),B)))
         <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),A_1),B)) ) ) ).

fof(fact_109_mult__numeral__1,axiom,
    ! [X_a] :
      ( ! [A_1] : hAPP(X_a,X_a,times_times(X_a,number_number_of(X_a,bit1(pls))),A_1) = ti(X_a,A_1)
     <= number_ring(X_a) ) ).

fof(fact_462__096QuadRes_A_I4_A_K_Am_A_L_A1_J_A_N1_096,axiom,
    hBOOL(hAPP(int,bool,quadRes(hAPP(int,int,plus_plus(int,hAPP(int,int,times_times(int,number_number_of(int,bit0(bit0(bit1(pls))))),m)),one_one(int))),number_number_of(int,min))) ).

fof(fact_641_trans__less__add2,axiom,
    ! [M,I_1,J_1] :
      ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),I_1),J_1))
     => hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),I_1),hAPP(nat,nat,plus_plus(nat,M),J_1))) ) ).

fof(arity_Nat_Onat___Int_Onumber,axiom,
    number(nat) ).

fof(fact_919_dvd__mod__iff,axiom,
    ! [X_a] :
      ( ! [Ma,K,N] :
          ( ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),dvd_dvd(X_a),K),hAPP(X_a,X_a,div_mod(X_a,Ma),N)))
          <=> hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),dvd_dvd(X_a),K),Ma)) )
         <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),dvd_dvd(X_a),K),N)) )
     <= semiring_div(X_a) ) ).

fof(tsy_c_Groups_Ominus__class_Ominus_0_res,axiom,
    ! [B_1_1,X_a] :
      ( group_add(X_a)
     => minus_minus(X_a,B_1_1) = ti(fun(X_a,X_a),minus_minus(X_a,B_1_1)) ) ).

fof(fact_451_zcong__zpower__zmult,axiom,
    ! [Z_1,X_1,Y,P_3] :
      ( hBOOL(hAPP(int,bool,zcong(hAPP(nat,int,power_power(int,X_1),hAPP(nat,nat,times_times(nat,Y),Z_1)),one_one(int)),P_3))
     <= hBOOL(hAPP(int,bool,zcong(hAPP(nat,int,power_power(int,X_1),Y),one_one(int)),P_3)) ) ).

fof(fact_79_int__one__le__iff__zero__less,axiom,
    ! [Z_2] :
      ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),one_one(int)),Z_2))
    <=> hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),zero_zero(int)),Z_2)) ) ).

fof(fact_459_zcong__zprime__prod__zero,axiom,
    ! [B,A_1,P_3] :
      ( ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),zero_zero(int)),A_1))
       => ( hBOOL(hAPP(int,bool,zcong(hAPP(int,int,times_times(int,A_1),B),zero_zero(int)),P_3))
         => ( hBOOL(hAPP(int,bool,zcong(B,zero_zero(int)),P_3))
            | hBOOL(hAPP(int,bool,zcong(A_1,zero_zero(int)),P_3)) ) ) )
     <= hBOOL(hAPP(int,bool,zprime,P_3)) ) ).

fof(fact_140_semiring__mult__2__right,axiom,
    ! [X_a] :
      ( number_semiring(X_a)
     => ! [Z_1] : hAPP(X_a,X_a,times_times(X_a,Z_1),number_number_of(X_a,bit0(bit1(pls)))) = hAPP(X_a,X_a,plus_plus(X_a,Z_1),Z_1) ) ).

fof(fact_769_double__zero__sym,axiom,
    ! [X_a] :
      ( ! [A_3] :
          ( zero_zero(X_a) = ti(X_a,A_3)
        <=> hAPP(X_a,X_a,plus_plus(X_a,A_3),A_3) = zero_zero(X_a) )
     <= linord219039673up_add(X_a) ) ).

fof(fact_943_mod__mult__self1,axiom,
    ! [X_a] :
      ( semiring_div(X_a)
     => ! [A_1,C,B] : hAPP(X_a,X_a,div_mod(X_a,A_1),B) = hAPP(X_a,X_a,div_mod(X_a,hAPP(X_a,X_a,plus_plus(X_a,A_1),hAPP(X_a,X_a,times_times(X_a,C),B))),B) ) ).

fof(fact_50_le__number__of__eq__not__less,axiom,
    ! [X_a] :
      ( ( linorder(X_a)
        & number(X_a) )
     => ! [V_3,W_1] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),number_number_of(X_a,V_3)),number_number_of(X_a,W_1)))
        <=> ~ hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),number_number_of(X_a,W_1)),number_number_of(X_a,V_3))) ) ) ).

fof(fact_446_four__x__squared,axiom,
    ! [X_1] : hAPP(nat,real,power_power(real,hAPP(real,real,times_times(real,number_number_of(real,bit0(bit1(pls)))),X_1)),number_number_of(nat,bit0(bit1(pls)))) = hAPP(real,real,times_times(real,number_number_of(real,bit0(bit0(bit1(pls))))),hAPP(nat,real,power_power(real,X_1),number_number_of(nat,bit0(bit1(pls))))) ).

fof(tsy_c_Residues_OLegendre_arg1,axiom,
    ! [B_1_1,B_2_1] : legendre(ti(int,B_1_1),B_2_1) = legendre(B_1_1,B_2_1) ).

fof(fact_733_nat__le__add__iff1,axiom,
    ! [U,Ma,N,J_2,I_2] :
      ( ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),hAPP(nat,nat,plus_plus(nat,hAPP(nat,nat,times_times(nat,hAPP(nat,nat,minus_minus(nat,I_2),J_2)),U)),Ma)),N))
      <=> hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),hAPP(nat,nat,plus_plus(nat,hAPP(nat,nat,times_times(nat,I_2),U)),Ma)),hAPP(nat,nat,plus_plus(nat,hAPP(nat,nat,times_times(nat,J_2),U)),N))) )
     <= hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),J_2),I_2)) ) ).

fof(fact_134_zadd__0,axiom,
    ! [Z_1] : ti(int,Z_1) = hAPP(int,int,plus_plus(int,zero_zero(int)),Z_1) ).

fof(arity_Int_Oint___Rings_Oring__no__zero__divisors,axiom,
    ring_n68954251visors(int) ).

fof(tsy_c_Groups_Otimes__class_Otimes_5_res,axiom,
    ! [B_1_1,X_a] :
      ( times_times(X_a,B_1_1) = ti(fun(X_a,X_a),times_times(X_a,B_1_1))
     <= no_zero_divisors(X_a) ) ).

fof(fact_604_diff__diff__cancel,axiom,
    ! [I_1,N_1] :
      ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),I_1),N_1))
     => hAPP(nat,nat,minus_minus(nat,N_1),hAPP(nat,nat,minus_minus(nat,N_1),I_1)) = I_1 ) ).

fof(fact_596_le__antisym,axiom,
    ! [M,N_1] :
      ( ( N_1 = M
       <= hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),N_1),M)) )
     <= hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),M),N_1)) ) ).

fof(arity_Int_Oint___Groups_Oab__group__add,axiom,
    ab_group_add(int) ).

fof(fact_27_le__number__of,axiom,
    ! [X_a] :
      ( ( number_ring(X_a)
        & linordered_idom(X_a) )
     => ! [X,Y_1] :
          ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),X),Y_1))
        <=> hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),number_number_of(X_a,X)),number_number_of(X_a,Y_1))) ) ) ).

fof(fact_474_zdiff__zmult__distrib2,axiom,
    ! [W,Z1,Z2] : hAPP(int,int,minus_minus(int,hAPP(int,int,times_times(int,W),Z1)),hAPP(int,int,times_times(int,W),Z2)) = hAPP(int,int,times_times(int,W),hAPP(int,int,minus_minus(int,Z1),Z2)) ).

fof(fact_917_zmod__self,axiom,
    ! [A_1] : hAPP(int,int,div_mod(int,A_1),A_1) = zero_zero(int) ).

fof(fact_643_add__less__mono,axiom,
    ! [K_1,L_1,I_1,J_1] :
      ( ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),K_1),L_1))
       => hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),hAPP(nat,nat,plus_plus(nat,I_1),K_1)),hAPP(nat,nat,plus_plus(nat,J_1),L_1))) )
     <= hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),I_1),J_1)) ) ).

fof(fact_635_real__mult__left__cancel,axiom,
    ! [A_3,B_2,C_1] :
      ( ( B_2 = A_3
      <=> hAPP(real,real,times_times(real,C_1),A_3) = hAPP(real,real,times_times(real,C_1),B_2) )
     <= C_1 != zero_zero(real) ) ).

fof(arity_RealDef_Oreal___Groups_Olinordered__ab__group__add,axiom,
    linord219039673up_add(real) ).

fof(fact_358_zcong__shift,axiom,
    ! [C,A_1,B,M] :
      ( hBOOL(hAPP(int,bool,zcong(hAPP(int,int,plus_plus(int,A_1),C),hAPP(int,int,plus_plus(int,B),C)),M))
     <= hBOOL(hAPP(int,bool,zcong(A_1,B),M)) ) ).

fof(fact_76_Collect__def,axiom,
    ! [X_a,P_1] : collect(X_a,P_1) = ti(fun(X_a,bool),P_1) ).

fof(fact_130_add__Pls,axiom,
    ! [K_1] : hAPP(int,int,plus_plus(int,pls),K_1) = ti(int,K_1) ).

fof(fact_227_zero__less__power__nat__eq__number__of,axiom,
    ! [X,W_1] :
      ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),zero_zero(nat)),hAPP(nat,nat,power_power(nat,X),number_number_of(nat,W_1))))
    <=> ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),zero_zero(nat)),X))
        | zero_zero(nat) = number_number_of(nat,W_1) ) ) ).

fof(fact_654_less__diff__iff,axiom,
    ! [N,K,Ma] :
      ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),K),Ma))
     => ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),K),N))
       => ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),Ma),N))
        <=> hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),hAPP(nat,nat,minus_minus(nat,Ma),K)),hAPP(nat,nat,minus_minus(nat,N),K))) ) ) ) ).

fof(fact_13_zero__power2,axiom,
    ! [X_a] :
      ( hAPP(nat,X_a,power_power(X_a,zero_zero(X_a)),number_number_of(nat,bit0(bit1(pls)))) = zero_zero(X_a)
     <= semiring_1(X_a) ) ).

fof(fact_262_Nat__Transfer_Otransfer__nat__int__function__closures_I8_J,axiom,
    hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),zero_zero(int)),number_number_of(int,bit1(bit1(pls))))) ).

fof(fact_942_mod__mult__self2,axiom,
    ! [X_a] :
      ( ! [A_1,B,C] : hAPP(X_a,X_a,div_mod(X_a,A_1),B) = hAPP(X_a,X_a,div_mod(X_a,hAPP(X_a,X_a,plus_plus(X_a,A_1),hAPP(X_a,X_a,times_times(X_a,B),C))),B)
     <= semiring_div(X_a) ) ).

fof(tsy_v_t_____res,axiom,
    t = ti(int,t) ).

fof(fact_879_gcd__lcm__complete__lattice__nat_Onot__less__bot,axiom,
    ! [A_1] :
      ~ ( ~ hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),one_one(nat)),A_1))
        & hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),A_1),one_one(nat))) ) ).

fof(fact_829_wset__mem__mem,axiom,
    ! [P_2,A_3] :
      ( hBOOL(hAPP(fun(int,bool),bool,member(int,A_3),wset(A_3,P_2)))
     <= hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),one_one(int)),A_3)) ) ).

fof(arity_Int_Oint___Groups_Oab__semigroup__mult,axiom,
    ab_semigroup_mult(int) ).

fof(fact_751__096sum2sq_A_Is_M_A1_J_A_061_A_I4_A_K_Am_A_L_A1_J_A_K_At_096,axiom,
    twoSqu1929807760sum2sq(product_Pair(int,int,s,one_one(int))) = hAPP(int,int,times_times(int,hAPP(int,int,plus_plus(int,hAPP(int,int,times_times(int,number_number_of(int,bit0(bit0(bit1(pls))))),m)),one_one(int))),t) ).

fof(fact_649_le__eq__less__or__eq,axiom,
    ! [Ma,N] :
      ( ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),Ma),N))
        | Ma = N )
    <=> hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),Ma),N)) ) ).

fof(arity_Int_Oint___Rings_Ocomm__ring__1,axiom,
    comm_ring_1(int) ).

fof(fact_30_zle__antisym,axiom,
    ! [Z_1,W] :
      ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),Z_1),W))
     => ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),W),Z_1))
       => ti(int,W) = ti(int,Z_1) ) ) ).

fof(tsy_c_Int_OPls_res,hypothesis,
    ti(int,pls) = pls ).

fof(fact_723_real__le__linear,axiom,
    ! [Z_1,W] :
      ( hBOOL(hAPP(real,bool,hAPP(real,fun(real,bool),ord_less_eq(real),Z_1),W))
      | hBOOL(hAPP(real,bool,hAPP(real,fun(real,bool),ord_less_eq(real),W),Z_1)) ) ).

fof(fact_415_zcong__less__eq,axiom,
    ! [M,Y,X_1] :
      ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),zero_zero(int)),X_1))
     => ( ( ( ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),X_1),M))
             => ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),Y),M))
               => ti(int,Y) = ti(int,X_1) ) )
           <= hBOOL(hAPP(int,bool,zcong(X_1,Y),M)) )
         <= hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),zero_zero(int)),M)) )
       <= hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),zero_zero(int)),Y)) ) ) ).

fof(fact_909_zmod__zmult1__eq,axiom,
    ! [A_1,B,C] : hAPP(int,int,div_mod(int,hAPP(int,int,times_times(int,A_1),hAPP(int,int,div_mod(int,B),C))),C) = hAPP(int,int,div_mod(int,hAPP(int,int,times_times(int,A_1),B)),C) ).

fof(fact_529_realpow__pos__nth__unique,axiom,
    ! [A_1,N_1] :
      ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),zero_zero(nat)),N_1))
     => ( hBOOL(hAPP(real,bool,hAPP(real,fun(real,bool),ord_less(real),zero_zero(real)),A_1))
       => ? [X_2] :
            ( ! [Y_2] :
                ( ( hBOOL(hAPP(real,bool,hAPP(real,fun(real,bool),ord_less(real),zero_zero(real)),Y_2))
                  & A_1 = hAPP(nat,real,power_power(real,Y_2),N_1) )
               => X_2 = Y_2 )
            & A_1 = hAPP(nat,real,power_power(real,X_2),N_1)
            & hBOOL(hAPP(real,bool,hAPP(real,fun(real,bool),ord_less(real),zero_zero(real)),X_2)) ) ) ) ).

fof(fact_806_double__add__less__zero__iff__single__add__less__zero,axiom,
    ! [X_a] :
      ( ! [A_3] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),hAPP(X_a,X_a,plus_plus(X_a,A_3),A_3)),zero_zero(X_a)))
        <=> hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),A_3),zero_zero(X_a))) )
     <= linord219039673up_add(X_a) ) ).

fof(fact_1_calculation_I1_J,axiom,
    hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),t),one_one(int))) ).

fof(fact_234_comm__semiring__1__class_Onormalizing__semiring__rules_I9_J,axiom,
    ! [X_a] :
      ( ! [A_1] : zero_zero(X_a) = hAPP(X_a,X_a,times_times(X_a,zero_zero(X_a)),A_1)
     <= comm_semiring_1(X_a) ) ).

fof(fact_498_inv__not__p__minus__1__aux,axiom,
    ! [A_3,P_2] :
      ( hBOOL(hAPP(int,bool,zcong(A_3,hAPP(int,int,minus_minus(int,P_2),one_one(int))),P_2))
    <=> hBOOL(hAPP(int,bool,zcong(hAPP(int,int,times_times(int,A_3),hAPP(int,int,minus_minus(int,P_2),one_one(int))),one_one(int)),P_2)) ) ).

fof(fact_756_add__nonpos__neg,axiom,
    ! [X_a] :
      ( ! [B,A_1] :
          ( ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),B),zero_zero(X_a)))
           => hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),hAPP(X_a,X_a,plus_plus(X_a,A_1),B)),zero_zero(X_a))) )
         <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),A_1),zero_zero(X_a))) )
     <= ordere216010020id_add(X_a) ) ).

fof(fact_286_rel__simps_I45_J,axiom,
    ! [K_1] : min != bit0(K_1) ).

fof(arity_RealDef_Oreal___Groups_Ogroup__add,axiom,
    group_add(real) ).

fof(fact_88_eq__number__of,axiom,
    ! [X_a] :
      ( ( ring_char_0(X_a)
        & number_ring(X_a) )
     => ! [X,Y_1] :
          ( ti(int,Y_1) = ti(int,X)
        <=> number_number_of(X_a,X) = number_number_of(X_a,Y_1) ) ) ).

fof(fact_545_nat__neq__iff,axiom,
    ! [Ma,N] :
      ( ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),N),Ma))
        | hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),Ma),N)) )
    <=> Ma != N ) ).

fof(fact_193__096_091s_A_094_A2_A_061_As1_A_094_A2_093_A_Imod_A4_A_K_Am_A_L_A1_J_096,axiom,
    hBOOL(hAPP(int,bool,zcong(hAPP(nat,int,power_power(int,s),number_number_of(nat,bit0(bit1(pls)))),hAPP(nat,int,power_power(int,s1),number_number_of(nat,bit0(bit1(pls))))),hAPP(int,int,plus_plus(int,hAPP(int,int,times_times(int,number_number_of(int,bit0(bit0(bit1(pls))))),m)),one_one(int)))) ).

fof(fact_581_dvd_Oeq__iff,axiom,
    ! [X,Y_1] :
      ( Y_1 = X
    <=> ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),X),Y_1))
        & hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),Y_1),X)) ) ) ).

fof(fact_82_zless__imp__add1__zle,axiom,
    ! [W,Z_1] :
      ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),hAPP(int,int,plus_plus(int,W),one_one(int))),Z_1))
     <= hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),W),Z_1)) ) ).

fof(tsy_c_fconj_res,axiom,
    fconj = ti(fun(bool,fun(bool,bool)),fconj) ).

fof(fact_478_eq__add__iff2,axiom,
    ! [X_a] :
      ( ! [A_3,E,C_1,B_2,D] :
          ( ti(X_a,C_1) = hAPP(X_a,X_a,plus_plus(X_a,hAPP(X_a,X_a,times_times(X_a,hAPP(X_a,X_a,minus_minus(X_a,B_2),A_3)),E)),D)
        <=> hAPP(X_a,X_a,plus_plus(X_a,hAPP(X_a,X_a,times_times(X_a,A_3),E)),C_1) = hAPP(X_a,X_a,plus_plus(X_a,hAPP(X_a,X_a,times_times(X_a,B_2),E)),D) )
     <= ring(X_a) ) ).

fof(fact_722_real__le__refl,axiom,
    ! [W] : hBOOL(hAPP(real,bool,hAPP(real,fun(real,bool),ord_less_eq(real),W),W)) ).

fof(fact_644_less__add__eq__less,axiom,
    ! [M,N_1,K_1,L_1] :
      ( ( hAPP(nat,nat,plus_plus(nat,M),L_1) = hAPP(nat,nat,plus_plus(nat,K_1),N_1)
       => hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),M),N_1)) )
     <= hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),K_1),L_1)) ) ).

fof(fact_980_mod__less,axiom,
    ! [M,N_1] :
      ( hAPP(nat,nat,div_mod(nat,M),N_1) = M
     <= hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),M),N_1)) ) ).

fof(fact_584_nat__add__left__commute,axiom,
    ! [X_1,Y,Z_1] : hAPP(nat,nat,plus_plus(nat,Y),hAPP(nat,nat,plus_plus(nat,X_1),Z_1)) = hAPP(nat,nat,plus_plus(nat,X_1),hAPP(nat,nat,plus_plus(nat,Y),Z_1)) ).

fof(fact_899_neg__zmod__mult__2,axiom,
    ! [B,A_1] :
      ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),A_1),zero_zero(int)))
     => hAPP(int,int,div_mod(int,hAPP(int,int,plus_plus(int,one_one(int)),hAPP(int,int,times_times(int,number_number_of(int,bit0(bit1(pls)))),B))),hAPP(int,int,times_times(int,number_number_of(int,bit0(bit1(pls)))),A_1)) = hAPP(int,int,minus_minus(int,hAPP(int,int,times_times(int,number_number_of(int,bit0(bit1(pls)))),hAPP(int,int,div_mod(int,hAPP(int,int,plus_plus(int,B),one_one(int))),A_1))),one_one(int)) ) ).

fof(fact_916_zdvd__zmod__imp__zdvd,axiom,
    ! [K_1,M,N_1] :
      ( ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),dvd_dvd(int),K_1),M))
       <= hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),dvd_dvd(int),K_1),N_1)) )
     <= hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),dvd_dvd(int),K_1),hAPP(int,int,div_mod(int,M),N_1))) ) ).

fof(fact_110_mult__numeral__1__right,axiom,
    ! [X_a] :
      ( number_ring(X_a)
     => ! [A_1] : hAPP(X_a,X_a,times_times(X_a,A_1),number_number_of(X_a,bit1(pls))) = ti(X_a,A_1) ) ).

fof(tsy_c_Groups_Otimes__class_Otimes_2_res,axiom,
    ! [B_1_1,X_a] :
      ( ti(fun(X_a,X_a),times_times(X_a,B_1_1)) = times_times(X_a,B_1_1)
     <= dvd(X_a) ) ).

fof(fact_719_ex__least__nat__less,axiom,
    ! [N,P_1] :
      ( ( hBOOL(hAPP(nat,bool,P_1,N))
       => ? [K_2] :
            ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),K_2),N))
            & ! [I] :
                ( ~ hBOOL(hAPP(nat,bool,P_1,I))
               <= hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),I),K_2)) )
            & hBOOL(hAPP(nat,bool,P_1,hAPP(nat,nat,plus_plus(nat,K_2),one_one(nat)))) ) )
     <= ~ hBOOL(hAPP(nat,bool,P_1,zero_zero(nat))) ) ).

fof(tsy_c_Residues_OSR_arg1,axiom,
    ! [B_1_1] : sr(B_1_1) = sr(ti(int,B_1_1)) ).

fof(fact_820_inv__less__p__minus__1,axiom,
    ! [A_1,P_3] :
      ( hBOOL(hAPP(int,bool,zprime,P_3))
     => ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),one_one(int)),A_1))
       => ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),inv(P_3,A_1)),hAPP(int,int,minus_minus(int,P_3),one_one(int))))
         <= hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),A_1),hAPP(int,int,minus_minus(int,P_3),one_one(int)))) ) ) ) ).

fof(fact_74_less__int__code_I14_J,axiom,
    ! [K1,K2] :
      ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),K1),K2))
    <=> hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),bit0(K1)),bit1(K2))) ) ).

fof(fact_752_mult__sum2sq,axiom,
    ! [A_1,B,P_3,Q_1] : hAPP(int,int,times_times(int,twoSqu1929807760sum2sq(product_Pair(int,int,A_1,B))),twoSqu1929807760sum2sq(product_Pair(int,int,P_3,Q_1))) = twoSqu1929807760sum2sq(product_Pair(int,int,hAPP(int,int,plus_plus(int,hAPP(int,int,times_times(int,A_1),P_3)),hAPP(int,int,times_times(int,B),Q_1)),hAPP(int,int,minus_minus(int,hAPP(int,int,times_times(int,A_1),Q_1)),hAPP(int,int,times_times(int,B),P_3)))) ).

fof(fact_975_StandardRes__prop4,axiom,
    ! [X_1,Y,M] :
      ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),number_number_of(int,bit0(bit1(pls)))),M))
     => hBOOL(hAPP(int,bool,zcong(hAPP(int,int,times_times(int,standardRes(M,X_1)),standardRes(M,Y)),hAPP(int,int,times_times(int,X_1),Y)),M)) ) ).

fof(arity_RealDef_Oreal___Rings_Olinordered__semiring,axiom,
    linordered_semiring(real) ).

fof(fact_327_power__commutes,axiom,
    ! [X_a] :
      ( monoid_mult(X_a)
     => ! [A_1,N_1] : hAPP(X_a,X_a,times_times(X_a,hAPP(nat,X_a,power_power(X_a,A_1),N_1)),A_1) = hAPP(X_a,X_a,times_times(X_a,A_1),hAPP(nat,X_a,power_power(X_a,A_1),N_1)) ) ).

fof(fact_843_MultInv__prop3,axiom,
    ! [X_1,P_3] :
      ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),number_number_of(int,bit0(bit1(pls)))),P_3))
     => ( hBOOL(hAPP(int,bool,zprime,P_3))
       => ( ~ hBOOL(hAPP(int,bool,zcong(X_1,zero_zero(int)),P_3))
         => ~ hBOOL(hAPP(int,bool,zcong(multInv(P_3,X_1),zero_zero(int)),P_3)) ) ) ) ).

fof(fact_894_mult_Odiff__right,axiom,
    ! [X_a] :
      ( real_normed_algebra(X_a)
     => ! [A_1,B,B_3] : hAPP(X_a,X_a,minus_minus(X_a,hAPP(X_a,X_a,times_times(X_a,A_1),B)),hAPP(X_a,X_a,times_times(X_a,A_1),B_3)) = hAPP(X_a,X_a,times_times(X_a,A_1),hAPP(X_a,X_a,minus_minus(X_a,B),B_3)) ) ).

fof(fact_505_zdiff__power3,axiom,
    ! [A_1,B] : hAPP(int,int,minus_minus(int,hAPP(int,int,plus_plus(int,hAPP(int,int,minus_minus(int,hAPP(nat,int,power_power(int,A_1),number_number_of(nat,bit1(bit1(pls))))),hAPP(int,int,times_times(int,hAPP(int,int,times_times(int,number_number_of(int,bit1(bit1(pls)))),hAPP(nat,int,power_power(int,A_1),number_number_of(nat,bit0(bit1(pls)))))),B))),hAPP(int,int,times_times(int,hAPP(int,int,times_times(int,number_number_of(int,bit1(bit1(pls)))),A_1)),hAPP(nat,int,power_power(int,B),number_number_of(nat,bit0(bit1(pls))))))),hAPP(nat,int,power_power(int,B),number_number_of(nat,bit1(bit1(pls))))) = hAPP(nat,int,power_power(int,hAPP(int,int,minus_minus(int,A_1),B)),number_number_of(nat,bit1(bit1(pls)))) ).

fof(arity_RealDef_Oreal___Rings_Oordered__semiring,axiom,
    ordered_semiring(real) ).

fof(fact_264_q__neg__lemma,axiom,
    ! [B_3,Q_4,R_3] :
      ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),hAPP(int,int,plus_plus(int,hAPP(int,int,times_times(int,B_3),Q_4)),R_3)),zero_zero(int)))
     => ( ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),Q_4),zero_zero(int)))
         <= hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),zero_zero(int)),B_3)) )
       <= hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),zero_zero(int)),R_3)) ) ) ).

fof(arity_Int_Oint___Groups_Ocancel__ab__semigroup__add,axiom,
    cancel146912293up_add(int) ).

fof(fact_85_semiring__add__number__of,axiom,
    ! [X_a] :
      ( number_semiring(X_a)
     => ! [V_1,V] :
          ( ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),pls),V_1))
           => number_number_of(X_a,hAPP(int,int,plus_plus(int,V),V_1)) = hAPP(X_a,X_a,plus_plus(X_a,number_number_of(X_a,V)),number_number_of(X_a,V_1)) )
         <= hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),pls),V)) ) ) ).

fof(fact_828_wset__inv__mem__mem,axiom,
    ! [B_2,A_3,P_2] :
      ( ( ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),A_3),hAPP(int,int,minus_minus(int,P_2),one_one(int))))
         => ( ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),B_2),hAPP(int,int,minus_minus(int,P_2),one_one(int))))
             => ( hBOOL(hAPP(fun(int,bool),bool,member(int,inv(P_2,B_2)),wset(A_3,P_2)))
               => hBOOL(hAPP(fun(int,bool),bool,member(int,B_2),wset(A_3,P_2))) ) )
           <= hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),one_one(int)),B_2)) ) )
       <= hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),number_number_of(int,bit1(bit0(bit1(pls))))),P_2)) )
     <= hBOOL(hAPP(int,bool,zprime,P_2)) ) ).

fof(tsy_c_WilsonRuss_Owset_arg2,axiom,
    ! [B_1_1,B_2_1] : wset(B_1_1,ti(int,B_2_1)) = wset(B_1_1,B_2_1) ).

fof(fact_941_dvd__imp__mod__0,axiom,
    ! [X_a] :
      ( ! [A_1,B] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),dvd_dvd(X_a),A_1),B))
         => hAPP(X_a,X_a,div_mod(X_a,B),A_1) = zero_zero(X_a) )
     <= semiring_div(X_a) ) ).

fof(fact_778_add__le__imp__le__left,axiom,
    ! [X_a] :
      ( ordere236663937imp_le(X_a)
     => ! [C,A_1,B] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),A_1),B))
         <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(X_a,X_a,plus_plus(X_a,C),A_1)),hAPP(X_a,X_a,plus_plus(X_a,C),B))) ) ) ).

fof(fact_878_gcd__lcm__complete__lattice__nat_Obot__least,axiom,
    ! [A_1] : hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),one_one(nat)),A_1)) ).

fof(fact_370_mult__nonpos__nonpos,axiom,
    ! [X_a] :
      ( ! [B,A_1] :
          ( ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),B),zero_zero(X_a)))
           => hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),zero_zero(X_a)),hAPP(X_a,X_a,times_times(X_a,A_1),B))) )
         <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),A_1),zero_zero(X_a))) )
     <= ordered_ring(X_a) ) ).

fof(fact_905_mod__mult__eq,axiom,
    ! [X_a] :
      ( ! [A_1,B,C] : hAPP(X_a,X_a,div_mod(X_a,hAPP(X_a,X_a,times_times(X_a,A_1),B)),C) = hAPP(X_a,X_a,div_mod(X_a,hAPP(X_a,X_a,times_times(X_a,hAPP(X_a,X_a,div_mod(X_a,A_1),C)),hAPP(X_a,X_a,div_mod(X_a,B),C))),C)
     <= semiring_div(X_a) ) ).

fof(fact_667_add__leD1,axiom,
    ! [M,K_1,N_1] :
      ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),M),N_1))
     <= hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),hAPP(nat,nat,plus_plus(nat,M),K_1)),N_1)) ) ).

fof(fact_192_comm__semiring__1__class_Onormalizing__semiring__rules_I29_J,axiom,
    ! [X_a] :
      ( ! [X_1] : hAPP(X_a,X_a,times_times(X_a,X_1),X_1) = hAPP(nat,X_a,power_power(X_a,X_1),number_number_of(nat,bit0(bit1(pls))))
     <= comm_semiring_1(X_a) ) ).

fof(tsy_c_IntPrimes_Ozcong_res,axiom,
    ! [B_1_1,B_2_1] : zcong(B_1_1,B_2_1) = ti(fun(int,bool),zcong(B_1_1,B_2_1)) ).

fof(fact_139_mult__2,axiom,
    ! [X_a] :
      ( number_ring(X_a)
     => ! [Z_1] : hAPP(X_a,X_a,plus_plus(X_a,Z_1),Z_1) = hAPP(X_a,X_a,times_times(X_a,number_number_of(X_a,bit0(bit1(pls)))),Z_1) ) ).

fof(fact_839_MultInv__prop1,axiom,
    ! [X_1,Y,P_3] :
      ( ( hBOOL(hAPP(int,bool,zcong(X_1,Y),P_3))
       => hBOOL(hAPP(int,bool,zcong(multInv(P_3,X_1),multInv(P_3,Y)),P_3)) )
     <= hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),number_number_of(int,bit0(bit1(pls)))),P_3)) ) ).

fof(fact_768_add__0,axiom,
    ! [X_a] :
      ( ! [A_1] : ti(X_a,A_1) = hAPP(X_a,X_a,plus_plus(X_a,zero_zero(X_a)),A_1)
     <= comm_monoid_add(X_a) ) ).

fof(fact_766_diff__eq__diff__eq,axiom,
    ! [X_a] :
      ( ab_group_add(X_a)
     => ! [A_3,B_2,C_1,D] :
          ( hAPP(X_a,X_a,minus_minus(X_a,A_3),B_2) = hAPP(X_a,X_a,minus_minus(X_a,C_1),D)
         => ( ti(X_a,C_1) = ti(X_a,D)
          <=> ti(X_a,B_2) = ti(X_a,A_3) ) ) ) ).

fof(fact_780_add__less__cancel__left,axiom,
    ! [X_a] :
      ( ordere236663937imp_le(X_a)
     => ! [C_1,A_3,B_2] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),hAPP(X_a,X_a,plus_plus(X_a,C_1),A_3)),hAPP(X_a,X_a,plus_plus(X_a,C_1),B_2)))
        <=> hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),A_3),B_2)) ) ) ).

fof(fact_75_mem__def,axiom,
    ! [X_a,X,A_6] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,member(X_a,X),A_6))
    <=> hBOOL(hAPP(X_a,bool,A_6,X)) ) ).

fof(fact_765_one__reorient,axiom,
    ! [X_a] :
      ( one(X_a)
     => ! [X] :
          ( ti(X_a,X) = one_one(X_a)
        <=> ti(X_a,X) = one_one(X_a) ) ) ).

fof(arity_Int_Oint___Groups_Omonoid__add,axiom,
    monoid_add(int) ).

fof(tsy_c_Set_OCollect_res,axiom,
    ! [X_a,B_1_1] : ti(fun(X_a,bool),collect(X_a,B_1_1)) = collect(X_a,B_1_1) ).

fof(arity_Nat_Onat___Groups_Omonoid__add,axiom,
    monoid_add(nat) ).

fof(fact_827_wset__mem__inv__mem,axiom,
    ! [B_2,A_3,P_2] :
      ( hBOOL(hAPP(int,bool,zprime,P_2))
     => ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),number_number_of(int,bit1(bit0(bit1(pls))))),P_2))
       => ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),A_3),hAPP(int,int,minus_minus(int,P_2),one_one(int))))
         => ( hBOOL(hAPP(fun(int,bool),bool,member(int,inv(P_2,B_2)),wset(A_3,P_2)))
           <= hBOOL(hAPP(fun(int,bool),bool,member(int,B_2),wset(A_3,P_2))) ) ) ) ) ).

fof(fact_674_le__diff__conv2,axiom,
    ! [I_2,K,J_2] :
      ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),K),J_2))
     => ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),hAPP(nat,nat,plus_plus(nat,I_2),K)),J_2))
      <=> hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),I_2),hAPP(nat,nat,minus_minus(nat,J_2),K))) ) ) ).

fof(fact_424_mult__left__less__imp__less,axiom,
    ! [X_a] :
      ( linordered_semiring(X_a)
     => ! [C,A_1,B] :
          ( ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),zero_zero(X_a)),C))
           => hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),A_1),B)) )
         <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),hAPP(X_a,X_a,times_times(X_a,C),A_1)),hAPP(X_a,X_a,times_times(X_a,C),B))) ) ) ).

fof(fact_394_not__square__less__zero,axiom,
    ! [X_a] :
      ( ! [A_1] : ~ hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),hAPP(X_a,X_a,times_times(X_a,A_1),A_1)),zero_zero(X_a)))
     <= linordered_ring(X_a) ) ).

fof(fact_542_real__less__def,axiom,
    ! [X,Y_1] :
      ( ( hBOOL(hAPP(real,bool,hAPP(real,fun(real,bool),ord_less_eq(real),X),Y_1))
        & X != Y_1 )
    <=> hBOOL(hAPP(real,bool,hAPP(real,fun(real,bool),ord_less(real),X),Y_1)) ) ).

fof(fact_614_not__less0,axiom,
    ! [N_1] : ~ hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),N_1),zero_zero(nat))) ).

fof(arity_Int_Oint___Rings_Oring__1__no__zero__divisors,axiom,
    ring_11004092258visors(int) ).

fof(fact_427_mult__le__less__imp__less,axiom,
    ! [X_a] :
      ( ! [C,D_2,A_1,B] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),A_1),B))
         => ( ( ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),hAPP(X_a,X_a,times_times(X_a,A_1),C)),hAPP(X_a,X_a,times_times(X_a,B),D_2)))
               <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),zero_zero(X_a)),C)) )
             <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),zero_zero(X_a)),A_1)) )
           <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),C),D_2)) ) )
     <= linord20386208strict(X_a) ) ).

fof(fact_246_comm__semiring__1__class_Onormalizing__semiring__rules_I30_J,axiom,
    ! [X_a] :
      ( comm_semiring_1(X_a)
     => ! [X_1,Y,Q_1] : hAPP(nat,X_a,power_power(X_a,hAPP(X_a,X_a,times_times(X_a,X_1),Y)),Q_1) = hAPP(X_a,X_a,times_times(X_a,hAPP(nat,X_a,power_power(X_a,X_1),Q_1)),hAPP(nat,X_a,power_power(X_a,Y),Q_1)) ) ).

fof(fact_672_le__add__diff__inverse,axiom,
    ! [N_1,M] :
      ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),N_1),M))
     => hAPP(nat,nat,plus_plus(nat,N_1),hAPP(nat,nat,minus_minus(nat,M),N_1)) = M ) ).

fof(arity_Int_Oint___Orderings_Olinorder,axiom,
    linorder(int) ).

fof(fact_425_mult__less__imp__less__right,axiom,
    ! [X_a] :
      ( linord20386208strict(X_a)
     => ! [A_1,C,B] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),hAPP(X_a,X_a,times_times(X_a,A_1),C)),hAPP(X_a,X_a,times_times(X_a,B),C)))
         => ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),A_1),B))
           <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),zero_zero(X_a)),C)) ) ) ) ).

fof(fact_833_wset__mem__imp__or,axiom,
    ! [B_2,P_2,A_3] :
      ( ( ~ hBOOL(hAPP(fun(int,bool),bool,member(int,B_2),wset(hAPP(int,int,minus_minus(int,A_3),one_one(int)),P_2)))
       => ( ( ti(int,B_2) = inv(P_2,A_3)
            | ti(int,A_3) = ti(int,B_2) )
         <= hBOOL(hAPP(fun(int,bool),bool,member(int,B_2),wset(A_3,P_2))) ) )
     <= hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),one_one(int)),A_3)) ) ).

fof(fact_348_zcong__id,axiom,
    ! [M] : hBOOL(hAPP(int,bool,zcong(M,zero_zero(int)),M)) ).

fof(fact_761_add__right__cancel,axiom,
    ! [X_a] :
      ( ! [B_2,A_3,C_1] :
          ( ti(X_a,B_2) = ti(X_a,C_1)
        <=> hAPP(X_a,X_a,plus_plus(X_a,B_2),A_3) = hAPP(X_a,X_a,plus_plus(X_a,C_1),A_3) )
     <= cancel_semigroup_add(X_a) ) ).

fof(fact_230_mult__nat__number__of,axiom,
    ! [V_1,V] :
      ( ( number_number_of(nat,hAPP(int,int,times_times(int,V),V_1)) = hAPP(nat,nat,times_times(nat,number_number_of(nat,V)),number_number_of(nat,V_1))
       <= ~ hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),V),pls)) )
      & ( hAPP(nat,nat,times_times(nat,number_number_of(nat,V)),number_number_of(nat,V_1)) = zero_zero(nat)
       <= hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),V),pls)) ) ) ).

fof(arity_Nat_Onat___Rings_Osemiring__1,axiom,
    semiring_1(nat) ).

fof(fact_577_dvd_Oneq__le__trans,axiom,
    ! [A_1,B] :
      ( A_1 != B
     => ( ( ~ hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),B),A_1))
          & hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),A_1),B)) )
       <= hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),A_1),B)) ) ) ).

fof(fact_198_zprime__zdvd__power,axiom,
    ! [A_1,N_1,P_3] :
      ( hBOOL(hAPP(int,bool,zprime,P_3))
     => ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),dvd_dvd(int),P_3),hAPP(nat,int,power_power(int,A_1),N_1)))
       => hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),dvd_dvd(int),P_3),A_1)) ) ) ).

fof(fact_479_eq__add__iff1,axiom,
    ! [X_a] :
      ( ! [A_3,E,C_1,B_2,D] :
          ( hAPP(X_a,X_a,plus_plus(X_a,hAPP(X_a,X_a,times_times(X_a,B_2),E)),D) = hAPP(X_a,X_a,plus_plus(X_a,hAPP(X_a,X_a,times_times(X_a,A_3),E)),C_1)
        <=> hAPP(X_a,X_a,plus_plus(X_a,hAPP(X_a,X_a,times_times(X_a,hAPP(X_a,X_a,minus_minus(X_a,A_3),B_2)),E)),C_1) = ti(X_a,D) )
     <= ring(X_a) ) ).

fof(fact_607_Nat_Odiff__le__self,axiom,
    ! [M,N_1] : hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),hAPP(nat,nat,minus_minus(nat,M),N_1)),M)) ).

fof(fact_278_dvd__0__right,axiom,
    ! [X_a] :
      ( ! [A_1] : hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),dvd_dvd(X_a),A_1),zero_zero(X_a)))
     <= comm_semiring_1(X_a) ) ).

fof(fact_131_add__Bit0__Bit0,axiom,
    ! [K_1,L_1] : hAPP(int,int,plus_plus(int,bit0(K_1)),bit0(L_1)) = bit0(hAPP(int,int,plus_plus(int,K_1),L_1)) ).

fof(tsy_c_Residues_OStandardRes_res,axiom,
    ! [B_1_1,B_2_1] : ti(int,standardRes(B_1_1,B_2_1)) = standardRes(B_1_1,B_2_1) ).

fof(fact_153_rel__simps_I12_J,axiom,
    ! [K] :
      ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),bit1(K)),pls))
    <=> hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),K),pls)) ) ).

fof(fact_5__096_126_A1_A_060_061_At_096,axiom,
    ~ hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),one_one(int)),t)) ).

fof(fact_940_dvd__eq__mod__eq__0,axiom,
    ! [X_a] :
      ( ! [A_3,B_2] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),dvd_dvd(X_a),A_3),B_2))
        <=> zero_zero(X_a) = hAPP(X_a,X_a,div_mod(X_a,B_2),A_3) )
     <= semiring_div(X_a) ) ).

fof(fact_67_plus__numeral__code_I9_J,axiom,
    ! [V,W] : number_number_of(int,hAPP(int,int,plus_plus(int,V),W)) = hAPP(int,int,plus_plus(int,number_number_of(int,V)),number_number_of(int,W)) ).

fof(fact_491_less__add__iff1,axiom,
    ! [X_a] :
      ( ordered_ring(X_a)
     => ! [A_3,E,C_1,B_2,D] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),hAPP(X_a,X_a,plus_plus(X_a,hAPP(X_a,X_a,times_times(X_a,hAPP(X_a,X_a,minus_minus(X_a,A_3),B_2)),E)),C_1)),D))
        <=> hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),hAPP(X_a,X_a,plus_plus(X_a,hAPP(X_a,X_a,times_times(X_a,A_3),E)),C_1)),hAPP(X_a,X_a,plus_plus(X_a,hAPP(X_a,X_a,times_times(X_a,B_2),E)),D))) ) ) ).

fof(arity_RealDef_Oreal___Rings_Oring__1,axiom,
    ring_1(real) ).

fof(fact_814_add__nonneg__pos,axiom,
    ! [X_a] :
      ( ordere216010020id_add(X_a)
     => ! [B,A_1] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),zero_zero(X_a)),A_1))
         => ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),zero_zero(X_a)),hAPP(X_a,X_a,plus_plus(X_a,A_1),B)))
           <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),zero_zero(X_a)),B)) ) ) ) ).

fof(arity_Int_Oint___Rings_Ocomm__ring,axiom,
    comm_ring(int) ).

fof(fact_26_less__eq__number__of__int__code,axiom,
    ! [K,L] :
      ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),K),L))
    <=> hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),number_number_of(int,K)),number_number_of(int,L))) ) ).

fof(fact_659_le__add1,axiom,
    ! [N_1,M] : hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),N_1),hAPP(nat,nat,plus_plus(nat,N_1),M))) ).

fof(fact_441_power__gt1__lemma,axiom,
    ! [X_a] :
      ( ! [N_1,A_1] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),one_one(X_a)),hAPP(X_a,X_a,times_times(X_a,A_1),hAPP(nat,X_a,power_power(X_a,A_1),N_1))))
         <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),one_one(X_a)),A_1)) )
     <= linordered_semidom(X_a) ) ).

fof(fact_726_nat__mult__eq__cancel__disj,axiom,
    ! [K,Ma,N] :
      ( hAPP(nat,nat,times_times(nat,K),N) = hAPP(nat,nat,times_times(nat,K),Ma)
    <=> ( K = zero_zero(nat)
        | Ma = N ) ) ).

fof(tsy_c_member_res,axiom,
    ! [X_a,B_1_1] : member(X_a,B_1_1) = ti(fun(fun(X_a,bool),bool),member(X_a,B_1_1)) ).

fof(tsy_c_Int2_OMultInv_arg2,axiom,
    ! [B_1_1,B_2_1] : multInv(B_1_1,ti(int,B_2_1)) = multInv(B_1_1,B_2_1) ).

fof(arity_Int_Oint___Groups_Oone,axiom,
    one(int) ).

fof(fact_500_zcong__square__zless,axiom,
    ! [A_1,P_3] :
      ( hBOOL(hAPP(int,bool,zprime,P_3))
     => ( ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),A_1),P_3))
         => ( hBOOL(hAPP(int,bool,zcong(hAPP(int,int,times_times(int,A_1),A_1),one_one(int)),P_3))
           => ( one_one(int) = ti(int,A_1)
              | hAPP(int,int,minus_minus(int,P_3),one_one(int)) = ti(int,A_1) ) ) )
       <= hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),zero_zero(int)),A_1)) ) ) ).

fof(fact_233_even__power__le__0__imp__0,axiom,
    ! [X_a] :
      ( linordered_idom(X_a)
     => ! [A_1,K_1] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(nat,X_a,power_power(X_a,A_1),hAPP(nat,nat,times_times(nat,number_number_of(nat,bit0(bit1(pls)))),K_1))),zero_zero(X_a)))
         => zero_zero(X_a) = ti(X_a,A_1) ) ) ).

fof(fact_432_mult__le__cancel__left__pos,axiom,
    ! [X_a] :
      ( ! [A_3,B_2,C_1] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),zero_zero(X_a)),C_1))
         => ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),A_3),B_2))
          <=> hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(X_a,X_a,times_times(X_a,C_1),A_3)),hAPP(X_a,X_a,times_times(X_a,C_1),B_2))) ) )
     <= linord581940658strict(X_a) ) ).

fof(fact_859_d22set__le,axiom,
    ! [B_2,A_3] :
      ( hBOOL(hAPP(fun(int,bool),bool,member(int,B_2),d22set(A_3)))
     => hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),B_2),A_3)) ) ).

fof(fact_72_less__eq__int__code_I15_J,axiom,
    ! [K1,K2] :
      ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),K1),K2))
    <=> hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),bit1(K1)),bit0(K2))) ) ).

fof(fact_612_real__add__left__mono,axiom,
    ! [Z_1,X_1,Y] :
      ( hBOOL(hAPP(real,bool,hAPP(real,fun(real,bool),ord_less_eq(real),X_1),Y))
     => hBOOL(hAPP(real,bool,hAPP(real,fun(real,bool),ord_less_eq(real),hAPP(real,real,plus_plus(real,Z_1),X_1)),hAPP(real,real,plus_plus(real,Z_1),Y))) ) ).

fof(fact_269_quartic__square__square,axiom,
    ! [X_1] : hAPP(nat,int,power_power(int,X_1),number_number_of(nat,bit0(bit0(bit1(pls))))) = hAPP(nat,int,power_power(int,hAPP(nat,int,power_power(int,X_1),number_number_of(nat,bit0(bit1(pls))))),number_number_of(nat,bit0(bit1(pls)))) ).

fof(fact_345_power__mult,axiom,
    ! [X_a] :
      ( ! [A_1,M,N_1] : hAPP(nat,X_a,power_power(X_a,hAPP(nat,X_a,power_power(X_a,A_1),M)),N_1) = hAPP(nat,X_a,power_power(X_a,A_1),hAPP(nat,nat,times_times(nat,M),N_1))
     <= monoid_mult(X_a) ) ).

fof(fact_981_le__mod__geq,axiom,
    ! [N_1,M] :
      ( hAPP(nat,nat,div_mod(nat,M),N_1) = hAPP(nat,nat,div_mod(nat,hAPP(nat,nat,minus_minus(nat,M),N_1)),N_1)
     <= hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),N_1),M)) ) ).

fof(fact_145_number__of__Pls,axiom,
    ! [X_a] :
      ( zero_zero(X_a) = number_number_of(X_a,pls)
     <= number_ring(X_a) ) ).

fof(fact_90_rel__simps_I51_J,axiom,
    ! [K,L] :
      ( bit1(L) = bit1(K)
    <=> ti(int,K) = ti(int,L) ) ).

fof(fact_382_mult__strict__right__mono,axiom,
    ! [X_a] :
      ( linord20386208strict(X_a)
     => ! [C,A_1,B] :
          ( ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),hAPP(X_a,X_a,times_times(X_a,A_1),C)),hAPP(X_a,X_a,times_times(X_a,B),C)))
           <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),zero_zero(X_a)),C)) )
         <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),A_1),B)) ) ) ).

fof(arity_RealDef_Oreal___Rings_Oring__no__zero__divisors,axiom,
    ring_n68954251visors(real) ).

fof(fact_179_less__special_I4_J,axiom,
    ! [X_a] :
      ( ! [X] :
          ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),X),bit1(pls)))
        <=> hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),number_number_of(X_a,X)),one_one(X_a))) )
     <= ( number_ring(X_a)
        & linordered_idom(X_a) ) ) ).

fof(fact_530_realpow__pos__nth,axiom,
    ! [A_1,N_1] :
      ( ( ? [R_2] :
            ( A_1 = hAPP(nat,real,power_power(real,R_2),N_1)
            & hBOOL(hAPP(real,bool,hAPP(real,fun(real,bool),ord_less(real),zero_zero(real)),R_2)) )
       <= hBOOL(hAPP(real,bool,hAPP(real,fun(real,bool),ord_less(real),zero_zero(real)),A_1)) )
     <= hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),zero_zero(nat)),N_1)) ) ).

fof(fact_452_zcong__zmult__prop3,axiom,
    ! [Y,X_1,P_3] :
      ( ( ( ~ hBOOL(hAPP(int,bool,zcong(Y,zero_zero(int)),P_3))
         => ~ hBOOL(hAPP(int,bool,zcong(hAPP(int,int,times_times(int,X_1),Y),zero_zero(int)),P_3)) )
       <= ~ hBOOL(hAPP(int,bool,zcong(X_1,zero_zero(int)),P_3)) )
     <= hBOOL(hAPP(int,bool,zprime,P_3)) ) ).

fof(fact_156_bin__less__0__simps_I4_J,axiom,
    ! [W_1] :
      ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),bit1(W_1)),zero_zero(int)))
    <=> hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),W_1),zero_zero(int))) ) ).

fof(fact_691_nat__mult__eq__1__iff,axiom,
    ! [Ma,N] :
      ( hAPP(nat,nat,times_times(nat,Ma),N) = one_one(nat)
    <=> ( N = one_one(nat)
        & Ma = one_one(nat) ) ) ).

fof(fact_516_divides__exp,axiom,
    ! [N_1,X_1,Y] :
      ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),hAPP(nat,nat,power_power(nat,X_1),N_1)),hAPP(nat,nat,power_power(nat,Y),N_1)))
     <= hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),X_1),Y)) ) ).

fof(fact_81_Numeral1__eq1__nat,axiom,
    one_one(nat) = number_number_of(nat,bit1(pls)) ).

fof(fact_928_mod__add__right__eq,axiom,
    ! [X_a] :
      ( semiring_div(X_a)
     => ! [A_1,B,C] : hAPP(X_a,X_a,div_mod(X_a,hAPP(X_a,X_a,plus_plus(X_a,A_1),B)),C) = hAPP(X_a,X_a,div_mod(X_a,hAPP(X_a,X_a,plus_plus(X_a,A_1),hAPP(X_a,X_a,div_mod(X_a,B),C))),C) ) ).

fof(fact_298_rel__simps_I23_J,axiom,
    hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),min),pls)) ).

fof(fact_959_mod__pos__pos__trivial,axiom,
    ! [B,A_1] :
      ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),zero_zero(int)),A_1))
     => ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),A_1),B))
       => ti(int,A_1) = hAPP(int,int,div_mod(int,A_1),B) ) ) ).

fof(fact_60_le__special_I2_J,axiom,
    ! [X_a] :
      ( ! [Y_1] :
          ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),bit1(pls)),Y_1))
        <=> hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),one_one(X_a)),number_number_of(X_a,Y_1))) )
     <= ( number_ring(X_a)
        & linordered_idom(X_a) ) ) ).

fof(arity_RealDef_Oreal___Rings_Oordered__comm__semiring,axiom,
    ordere1490568538miring(real) ).

fof(fact_826_inv__is__inv,axiom,
    ! [A_1,P_3] :
      ( hBOOL(hAPP(int,bool,zprime,P_3))
     => ( ( hBOOL(hAPP(int,bool,zcong(hAPP(int,int,times_times(int,A_1),inv(P_3,A_1)),one_one(int)),P_3))
         <= hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),A_1),P_3)) )
       <= hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),zero_zero(int)),A_1)) ) ) ).

fof(fact_708_mult__eq__self__implies__10,axiom,
    ! [M,N_1] :
      ( ( zero_zero(nat) = M
        | one_one(nat) = N_1 )
     <= M = hAPP(nat,nat,times_times(nat,M),N_1) ) ).

fof(fact_46_sum__squares__ge__zero,axiom,
    ! [X_a] :
      ( linordered_ring(X_a)
     => ! [X_1,Y] : hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),zero_zero(X_a)),hAPP(X_a,X_a,plus_plus(X_a,hAPP(X_a,X_a,times_times(X_a,X_1),X_1)),hAPP(X_a,X_a,times_times(X_a,Y),Y)))) ) ).

fof(fact_199_comm__semiring__1__class_Onormalizing__semiring__rules_I31_J,axiom,
    ! [X_a] :
      ( comm_semiring_1(X_a)
     => ! [X_1,P_3,Q_1] : hAPP(nat,X_a,power_power(X_a,hAPP(nat,X_a,power_power(X_a,X_1),P_3)),Q_1) = hAPP(nat,X_a,power_power(X_a,X_1),hAPP(nat,nat,times_times(nat,P_3),Q_1)) ) ).

fof(tsy_c_Groups_Ozero__class_Ozero_res,axiom,
    ! [X_a] :
      ( ti(X_a,zero_zero(X_a)) = zero_zero(X_a)
     <= zero(X_a) ) ).

fof(fact_831_wset__g__1,axiom,
    ! [B_2,A_3,P_2] :
      ( ( ( hBOOL(hAPP(fun(int,bool),bool,member(int,B_2),wset(A_3,P_2)))
         => hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),one_one(int)),B_2)) )
       <= hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),A_3),hAPP(int,int,minus_minus(int,P_2),one_one(int)))) )
     <= hBOOL(hAPP(int,bool,zprime,P_2)) ) ).

fof(arity_Int_Oint___Rings_Olinordered__comm__semiring__strict,axiom,
    linord893533164strict(int) ).

fof(fact_930_mod__add__self2,axiom,
    ! [X_a] :
      ( ! [A_1,B] : hAPP(X_a,X_a,div_mod(X_a,hAPP(X_a,X_a,plus_plus(X_a,A_1),B)),B) = hAPP(X_a,X_a,div_mod(X_a,A_1),B)
     <= semiring_div(X_a) ) ).

fof(fact_416_zdvd__bounds,axiom,
    ! [N_1,M] :
      ( ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),M),zero_zero(int)))
        | hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),N_1),M)) )
     <= hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),dvd_dvd(int),N_1),M)) ) ).

fof(fact_332_mult__dvd__mono,axiom,
    ! [X_a] :
      ( ! [C,D_2,A_1,B] :
          ( ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),dvd_dvd(X_a),C),D_2))
           => hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),dvd_dvd(X_a),hAPP(X_a,X_a,times_times(X_a,A_1),C)),hAPP(X_a,X_a,times_times(X_a,B),D_2))) )
         <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),dvd_dvd(X_a),A_1),B)) )
     <= comm_semiring_1(X_a) ) ).

fof(fact_932_mod__by__0,axiom,
    ! [X_a] :
      ( semiring_div(X_a)
     => ! [A_1] : hAPP(X_a,X_a,div_mod(X_a,A_1),zero_zero(X_a)) = ti(X_a,A_1) ) ).

fof(fact_640_trans__less__add1,axiom,
    ! [M,I_1,J_1] :
      ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),I_1),hAPP(nat,nat,plus_plus(nat,J_1),M)))
     <= hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),I_1),J_1)) ) ).

fof(fact_89_number__of__reorient,axiom,
    ! [X_a] :
      ( ! [W_1,X] :
          ( ti(X_a,X) = number_number_of(X_a,W_1)
        <=> number_number_of(X_a,W_1) = ti(X_a,X) )
     <= number(X_a) ) ).

fof(fact_896_mult_Odiff__left,axiom,
    ! [X_a] :
      ( real_normed_algebra(X_a)
     => ! [A_1,A_4,B] : hAPP(X_a,X_a,minus_minus(X_a,hAPP(X_a,X_a,times_times(X_a,A_1),B)),hAPP(X_a,X_a,times_times(X_a,A_4),B)) = hAPP(X_a,X_a,times_times(X_a,hAPP(X_a,X_a,minus_minus(X_a,A_1),A_4)),B) ) ).

fof(fact_965_divmod__int__rel__mod__eq,axiom,
    ! [A_2,B_1,Q_3,Y] :
      ( ( ( ( ~ hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),zero_zero(int)),B_1))
           => ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),B_1),Y))
              & hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),Y),zero_zero(int))) ) )
          & ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),zero_zero(int)),B_1))
           => ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),Y),B_1))
              & hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),zero_zero(int)),Y)) ) ) )
       => ( zero_zero(int) != ti(int,B_1)
         => ti(int,Y) = hAPP(int,int,div_mod(int,A_2),B_1) ) )
     <= hAPP(int,int,plus_plus(int,hAPP(int,int,times_times(int,B_1),Q_3)),Y) = ti(int,A_2) ) ).

fof(fact_14_zero__eq__power2,axiom,
    ! [X_a] :
      ( ring_11004092258visors(X_a)
     => ! [A_3] :
          ( zero_zero(X_a) = hAPP(nat,X_a,power_power(X_a,A_3),number_number_of(nat,bit0(bit1(pls))))
        <=> ti(X_a,A_3) = zero_zero(X_a) ) ) ).

fof(fact_31_zpower__zadd__distrib,axiom,
    ! [X_1,Y,Z_1] : hAPP(nat,int,power_power(int,X_1),hAPP(nat,nat,plus_plus(nat,Y),Z_1)) = hAPP(int,int,times_times(int,hAPP(nat,int,power_power(int,X_1),Y)),hAPP(nat,int,power_power(int,X_1),Z_1)) ).

fof(tsy_c_Groups_Otimes__class_Otimes_0_arg1,axiom,
    ! [B_1_1,X_a] :
      ( ab_semigroup_mult(X_a)
     => times_times(X_a,B_1_1) = times_times(X_a,ti(X_a,B_1_1)) ) ).

fof(fact_973_pos__zmod__mult__2,axiom,
    ! [B,A_1] :
      ( hAPP(int,int,plus_plus(int,one_one(int)),hAPP(int,int,times_times(int,number_number_of(int,bit0(bit1(pls)))),hAPP(int,int,div_mod(int,B),A_1))) = hAPP(int,int,div_mod(int,hAPP(int,int,plus_plus(int,one_one(int)),hAPP(int,int,times_times(int,number_number_of(int,bit0(bit1(pls)))),B))),hAPP(int,int,times_times(int,number_number_of(int,bit0(bit1(pls)))),A_1))
     <= hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),zero_zero(int)),A_1)) ) ).

fof(help_fconj_2_1_U,axiom,
    ! [P,Q] :
      ( ~ hBOOL(hAPP(bool,bool,hAPP(bool,fun(bool,bool),fconj,P),Q))
      | hBOOL(P) ) ).

fof(fact_116_rel__simps_I39_J,axiom,
    ! [L_1] : bit1(L_1) != pls ).

fof(fact_458_dvd__power,axiom,
    ! [X_a] :
      ( ! [X_1,N_1] :
          ( ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),zero_zero(nat)),N_1))
            | one_one(X_a) = ti(X_a,X_1) )
         => hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),dvd_dvd(X_a),X_1),hAPP(nat,X_a,power_power(X_a,X_1),N_1))) )
     <= comm_semiring_1(X_a) ) ).

fof(fact_119_rel__simps_I44_J,axiom,
    ! [K] :
      ( pls = ti(int,K)
    <=> bit0(K) = pls ) ).

fof(fact_444_power__less__imp__less__exp,axiom,
    ! [X_a] :
      ( linordered_semidom(X_a)
     => ! [M,N_1,A_1] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),one_one(X_a)),A_1))
         => ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),M),N_1))
           <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),hAPP(nat,X_a,power_power(X_a,A_1),M)),hAPP(nat,X_a,power_power(X_a,A_1),N_1))) ) ) ) ).

fof(fact_162_add__Bit0__Bit1,axiom,
    ! [K_1,L_1] : hAPP(int,int,plus_plus(int,bit0(K_1)),bit1(L_1)) = bit1(hAPP(int,int,plus_plus(int,K_1),L_1)) ).

fof(arity_RealDef_Oreal___Rings_Olinordered__semiring__strict,axiom,
    linord20386208strict(real) ).

fof(arity_RealDef_Oreal___Rings_Olinordered__idom,axiom,
    linordered_idom(real) ).

fof(fact_336_dvd__add,axiom,
    ! [X_a] :
      ( ! [C,A_1,B] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),dvd_dvd(X_a),A_1),B))
         => ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),dvd_dvd(X_a),A_1),C))
           => hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),dvd_dvd(X_a),A_1),hAPP(X_a,X_a,plus_plus(X_a,B),C))) ) )
     <= comm_semiring_1(X_a) ) ).

fof(fact_660_le__iff__add,axiom,
    ! [Ma,N] :
      ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),Ma),N))
    <=> ? [K_2] : N = hAPP(nat,nat,plus_plus(nat,Ma),K_2) ) ).

fof(fact_664_add__le__mono1,axiom,
    ! [K_1,I_1,J_1] :
      ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),I_1),J_1))
     => hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),hAPP(nat,nat,plus_plus(nat,I_1),K_1)),hAPP(nat,nat,plus_plus(nat,J_1),K_1))) ) ).

fof(arity_Nat_Onat___Rings_Oordered__cancel__semiring,axiom,
    ordere453448008miring(nat) ).

fof(fact_974_zmod__eq__0D,axiom,
    ! [M_1,D_1] :
      ( ? [Q_2] : ti(int,M_1) = hAPP(int,int,times_times(int,D_1),Q_2)
     <= hAPP(int,int,div_mod(int,M_1),D_1) = zero_zero(int) ) ).

fof(fact_442_power__0__left,axiom,
    ! [X_a] :
      ( ( semiring_0(X_a)
        & power(X_a) )
     => ! [N_1] :
          ( ( N_1 != zero_zero(nat)
           => hAPP(nat,X_a,power_power(X_a,zero_zero(X_a)),N_1) = zero_zero(X_a) )
          & ( one_one(X_a) = hAPP(nat,X_a,power_power(X_a,zero_zero(X_a)),N_1)
           <= N_1 = zero_zero(nat) ) ) ) ).

fof(fact_378_mult__strict__left__mono__neg,axiom,
    ! [X_a] :
      ( ! [C,B,A_1] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),B),A_1))
         => ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),C),zero_zero(X_a)))
           => hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),hAPP(X_a,X_a,times_times(X_a,C),A_1)),hAPP(X_a,X_a,times_times(X_a,C),B))) ) )
     <= linord581940658strict(X_a) ) ).

fof(arity_Int_Oint___Rings_Ocomm__semiring,axiom,
    comm_semiring(int) ).

fof(fact_721_nat__less__add__iff1,axiom,
    ! [U,Ma,N,J_2,I_2] :
      ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),J_2),I_2))
     => ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),hAPP(nat,nat,plus_plus(nat,hAPP(nat,nat,times_times(nat,I_2),U)),Ma)),hAPP(nat,nat,plus_plus(nat,hAPP(nat,nat,times_times(nat,J_2),U)),N)))
      <=> hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),hAPP(nat,nat,plus_plus(nat,hAPP(nat,nat,times_times(nat,hAPP(nat,nat,minus_minus(nat,I_2),J_2)),U)),Ma)),N)) ) ) ).

fof(arity_RealDef_Oreal___Rings_Olinordered__semiring__1__strict,axiom,
    linord626643107strict(real) ).

fof(fact_526_exp__eq__1,axiom,
    ! [X,N] :
      ( ( X = one_one(nat)
        | N = zero_zero(nat) )
    <=> one_one(nat) = hAPP(nat,nat,power_power(nat,X),N) ) ).

fof(fact_715_realpow__minus__mult,axiom,
    ! [X_a] :
      ( ! [X_1,N_1] :
          ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),zero_zero(nat)),N_1))
         => hAPP(X_a,X_a,times_times(X_a,hAPP(nat,X_a,power_power(X_a,X_1),hAPP(nat,nat,minus_minus(nat,N_1),one_one(nat)))),X_1) = hAPP(nat,X_a,power_power(X_a,X_1),N_1) )
     <= monoid_mult(X_a) ) ).

fof(fact_24_zle__linear,axiom,
    ! [Z_1,W] :
      ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),Z_1),W))
      | hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),W),Z_1)) ) ).

fof(arity_fun___Orderings_Oorder,axiom,
    ! [T_2,T_1] :
      ( order(T_1)
     => order(fun(T_2,T_1)) ) ).

fof(fact_938_pos__mod__bound,axiom,
    ! [A_1,B] :
      ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),zero_zero(int)),B))
     => hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),hAPP(int,int,div_mod(int,A_1),B)),B)) ) ).

fof(tsy_c_Groups_Oplus__class_Oplus_2_res,axiom,
    ! [B_1_1,X_a] :
      ( cancel_semigroup_add(X_a)
     => ti(fun(X_a,X_a),plus_plus(X_a,B_1_1)) = plus_plus(X_a,B_1_1) ) ).

fof(fact_517_mult__eq__if,axiom,
    ! [N_1,M] :
      ( ( M = zero_zero(nat)
       => hAPP(nat,nat,times_times(nat,M),N_1) = zero_zero(nat) )
      & ( zero_zero(nat) != M
       => hAPP(nat,nat,plus_plus(nat,N_1),hAPP(nat,nat,times_times(nat,hAPP(nat,nat,minus_minus(nat,M),one_one(nat))),N_1)) = hAPP(nat,nat,times_times(nat,M),N_1) ) ) ).

fof(fact_167_power2__eq__square__number__of,axiom,
    ! [X_b] :
      ( ! [W] : hAPP(nat,X_b,power_power(X_b,number_number_of(X_b,W)),number_number_of(nat,bit0(bit1(pls)))) = hAPP(X_b,X_b,times_times(X_b,number_number_of(X_b,W)),number_number_of(X_b,W))
     <= ( number(X_b)
        & monoid_mult(X_b) ) ) ).

fof(fact_138_semiring__mult__2,axiom,
    ! [X_a] :
      ( number_semiring(X_a)
     => ! [Z_1] : hAPP(X_a,X_a,plus_plus(X_a,Z_1),Z_1) = hAPP(X_a,X_a,times_times(X_a,number_number_of(X_a,bit0(bit1(pls)))),Z_1) ) ).

fof(arity_Nat_Onat___Rings_Ozero__neq__one,axiom,
    zero_neq_one(nat) ).

fof(fact_239_comm__semiring__1__class_Onormalizing__semiring__rules_I34_J,axiom,
    ! [X_a] :
      ( ! [X_1,Y,Z_1] : hAPP(X_a,X_a,plus_plus(X_a,hAPP(X_a,X_a,times_times(X_a,X_1),Y)),hAPP(X_a,X_a,times_times(X_a,X_1),Z_1)) = hAPP(X_a,X_a,times_times(X_a,X_1),hAPP(X_a,X_a,plus_plus(X_a,Y),Z_1))
     <= comm_semiring_1(X_a) ) ).

fof(fact_184_int__pos__lt__two__imp__zero__or__one,axiom,
    ! [X_1] :
      ( ( ( ti(int,X_1) = one_one(int)
          | ti(int,X_1) = zero_zero(int) )
       <= hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),X_1),number_number_of(int,bit0(bit1(pls))))) )
     <= hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),zero_zero(int)),X_1)) ) ).

fof(fact_989_StandardRes__prop3,axiom,
    ! [X,P_2] :
      ( zero_zero(int) != standardRes(P_2,X)
    <=> ~ hBOOL(hAPP(int,bool,zcong(X,zero_zero(int)),P_2)) ) ).

fof(fact_340_power__le__dvd,axiom,
    ! [X_a] :
      ( ! [M,A_1,N_1,B] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),dvd_dvd(X_a),hAPP(nat,X_a,power_power(X_a,A_1),N_1)),B))
         => ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),dvd_dvd(X_a),hAPP(nat,X_a,power_power(X_a,A_1),M)),B))
           <= hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),M),N_1)) ) )
     <= comm_semiring_1(X_a) ) ).

fof(fact_504_zdiff__power2,axiom,
    ! [A_1,B] : hAPP(int,int,plus_plus(int,hAPP(int,int,minus_minus(int,hAPP(nat,int,power_power(int,A_1),number_number_of(nat,bit0(bit1(pls))))),hAPP(int,int,times_times(int,hAPP(int,int,times_times(int,number_number_of(int,bit0(bit1(pls)))),A_1)),B))),hAPP(nat,int,power_power(int,B),number_number_of(nat,bit0(bit1(pls))))) = hAPP(nat,int,power_power(int,hAPP(int,int,minus_minus(int,A_1),B)),number_number_of(nat,bit0(bit1(pls)))) ).

fof(fact_580_dvd_Ole__less,axiom,
    ! [X,Y_1] :
      ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),X),Y_1))
    <=> ( ( ~ hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),Y_1),X))
          & hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),X),Y_1)) )
        | Y_1 = X ) ) ).

fof(fact_297_rel__simps_I30_J,axiom,
    ! [K] :
      ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),bit1(K)),min))
    <=> hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),K),min)) ) ).

fof(fact_853_int__less__induct,axiom,
    ! [P_1,I_2,K] :
      ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),I_2),K))
     => ( ( ! [I] :
              ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),I),K))
             => ( hBOOL(hAPP(int,bool,P_1,I))
               => hBOOL(hAPP(int,bool,P_1,hAPP(int,int,minus_minus(int,I),one_one(int)))) ) )
         => hBOOL(hAPP(int,bool,P_1,I_2)) )
       <= hBOOL(hAPP(int,bool,P_1,hAPP(int,int,minus_minus(int,K),one_one(int)))) ) ) ).

fof(arity_Int_Oint___Groups_Ozero,axiom,
    zero(int) ).

fof(fact_186_cube__square,axiom,
    ! [A_1] : hAPP(int,int,times_times(int,A_1),hAPP(nat,int,power_power(int,A_1),number_number_of(nat,bit0(bit1(pls))))) = hAPP(nat,int,power_power(int,A_1),number_number_of(nat,bit1(bit1(pls)))) ).

fof(fact_376_zero__le__mult__iff,axiom,
    ! [X_a] :
      ( ! [A_3,B_2] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),zero_zero(X_a)),hAPP(X_a,X_a,times_times(X_a,A_3),B_2)))
        <=> ( ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),A_3),zero_zero(X_a)))
              & hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),B_2),zero_zero(X_a))) )
            | ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),zero_zero(X_a)),B_2))
              & hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),zero_zero(X_a)),A_3)) ) ) )
     <= linord581940658strict(X_a) ) ).

fof(fact_334_dvd__mult__left,axiom,
    ! [X_a] :
      ( comm_semiring_1(X_a)
     => ! [A_1,B,C] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),dvd_dvd(X_a),hAPP(X_a,X_a,times_times(X_a,A_1),B)),C))
         => hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),dvd_dvd(X_a),A_1),C)) ) ) ).

fof(fact_787_eq__iff__diff__eq__0,axiom,
    ! [X_a] :
      ( ! [A_3,B_2] :
          ( ti(X_a,A_3) = ti(X_a,B_2)
        <=> zero_zero(X_a) = hAPP(X_a,X_a,minus_minus(X_a,A_3),B_2) )
     <= ab_group_add(X_a) ) ).

fof(fact_316_no__zero__divisors,axiom,
    ! [X_a] :
      ( no_zero_divisors(X_a)
     => ! [B,A_1] :
          ( ti(X_a,A_1) != zero_zero(X_a)
         => ( hAPP(X_a,X_a,times_times(X_a,A_1),B) != zero_zero(X_a)
           <= zero_zero(X_a) != ti(X_a,B) ) ) ) ).

fof(arity_RealDef_Oreal___Semiring__Normalization_Ocomm__semiring__1__cancel__crossp,axiom,
    semiri456707255roduct(real) ).

fof(fact_422_mult__right__le__imp__le,axiom,
    ! [X_a] :
      ( ! [A_1,C,B] :
          ( ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),A_1),B))
           <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),zero_zero(X_a)),C)) )
         <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(X_a,X_a,times_times(X_a,A_1),C)),hAPP(X_a,X_a,times_times(X_a,B),C))) )
     <= linord20386208strict(X_a) ) ).

fof(arity_Int_Oint___Groups_Oordered__comm__monoid__add,axiom,
    ordere216010020id_add(int) ).

fof(fact_832_wset__less,axiom,
    ! [B_2,A_3,P_2] :
      ( ( ( hBOOL(hAPP(fun(int,bool),bool,member(int,B_2),wset(A_3,P_2)))
         => hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),B_2),hAPP(int,int,minus_minus(int,P_2),one_one(int)))) )
       <= hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),A_3),hAPP(int,int,minus_minus(int,P_2),one_one(int)))) )
     <= hBOOL(hAPP(int,bool,zprime,P_2)) ) ).

fof(arity_Nat_Onat___Rings_Omult__zero,axiom,
    mult_zero(nat) ).

fof(fact_513_divides__add__revr,axiom,
    ! [B,D_2,A_1] :
      ( ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),D_2),hAPP(nat,nat,plus_plus(nat,A_1),B)))
       => hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),D_2),B)) )
     <= hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),D_2),A_1)) ) ).

fof(fact_926_mod__add__eq,axiom,
    ! [X_a] :
      ( ! [A_1,B,C] : hAPP(X_a,X_a,div_mod(X_a,hAPP(X_a,X_a,plus_plus(X_a,A_1),B)),C) = hAPP(X_a,X_a,div_mod(X_a,hAPP(X_a,X_a,plus_plus(X_a,hAPP(X_a,X_a,div_mod(X_a,A_1),C)),hAPP(X_a,X_a,div_mod(X_a,B),C))),C)
     <= semiring_div(X_a) ) ).

fof(fact_830_wset__subset,axiom,
    ! [B_2,P_2,A_3] :
      ( ( hBOOL(hAPP(fun(int,bool),bool,member(int,B_2),wset(A_3,P_2)))
       <= hBOOL(hAPP(fun(int,bool),bool,member(int,B_2),wset(hAPP(int,int,minus_minus(int,A_3),one_one(int)),P_2))) )
     <= hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),one_one(int)),A_3)) ) ).

fof(fact_93_sum__squares__eq__zero__iff,axiom,
    ! [X_a] :
      ( linord581940658strict(X_a)
     => ! [X,Y_1] :
          ( zero_zero(X_a) = hAPP(X_a,X_a,plus_plus(X_a,hAPP(X_a,X_a,times_times(X_a,X),X)),hAPP(X_a,X_a,times_times(X_a,Y_1),Y_1))
        <=> ( ti(X_a,Y_1) = zero_zero(X_a)
            & zero_zero(X_a) = ti(X_a,X) ) ) ) ).

fof(arity_Nat_Onat___Orderings_Olinorder,axiom,
    linorder(nat) ).

fof(fact_291_rel__simps_I9_J,axiom,
    ! [K] :
      ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),min),K))
    <=> hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),min),bit1(K))) ) ).

fof(fact_988_StandardRes__eq__zcong,axiom,
    ! [Ma,X] :
      ( standardRes(Ma,X) = zero_zero(int)
    <=> hBOOL(hAPP(int,bool,zcong(X,zero_zero(int)),Ma)) ) ).

fof(tsy_v_s_____res,hypothesis,
    s = ti(int,s) ).

fof(help_COMBB_1_1_U,axiom,
    ! [X_a,X_c,X_b,P,Q,R] : hAPP(X_b,X_c,P,hAPP(X_a,X_b,Q,R)) = hAPP(X_a,X_c,combb(X_b,X_c,X_a,P,Q),R) ).

fof(fact_844_aux______4,axiom,
    ! [K_1,A_1,J_1,P_3] :
      ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),number_number_of(int,bit0(bit1(pls)))),P_3))
     => ( ( ~ hBOOL(hAPP(int,bool,zcong(J_1,zero_zero(int)),P_3))
         => ( hBOOL(hAPP(int,bool,zcong(K_1,hAPP(int,int,times_times(int,A_1),multInv(P_3,J_1))),P_3))
           <= hBOOL(hAPP(int,bool,zcong(hAPP(int,int,times_times(int,hAPP(int,int,times_times(int,multInv(P_3,J_1)),J_1)),K_1),hAPP(int,int,times_times(int,multInv(P_3,J_1)),A_1)),P_3)) ) )
       <= hBOOL(hAPP(int,bool,zprime,P_3)) ) ) ).

fof(arity_Int_Oint___Groups_Ocomm__monoid__add,axiom,
    comm_monoid_add(int) ).

fof(fact_275_power__strict__mono,axiom,
    ! [X_a] :
      ( ! [N_1,A_1,B] :
          ( ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),zero_zero(X_a)),A_1))
           => ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),hAPP(nat,X_a,power_power(X_a,A_1),N_1)),hAPP(nat,X_a,power_power(X_a,B),N_1)))
             <= hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),zero_zero(nat)),N_1)) ) )
         <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),A_1),B)) )
     <= linordered_semidom(X_a) ) ).

fof(fact_711_dvd__imp__le,axiom,
    ! [K_1,N_1] :
      ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),K_1),N_1))
     => ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),K_1),N_1))
       <= hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),zero_zero(nat)),N_1)) ) ) ).

fof(tsy_c_IntPrimes_Ozprime_res,axiom,
    ti(fun(int,bool),zprime) = zprime ).

fof(fact_713_mult__le__cancel1,axiom,
    ! [K,Ma,N] :
      ( ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),zero_zero(nat)),K))
       => hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),Ma),N)) )
    <=> hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),hAPP(nat,nat,times_times(nat,K),Ma)),hAPP(nat,nat,times_times(nat,K),N))) ) ).

fof(fact_157_rel__simps_I10_J,axiom,
    ! [K] :
      ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),bit0(K)),pls))
    <=> hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),K),pls)) ) ).

fof(fact_528_realpow__two__sum__zero__iff,axiom,
    ! [X,Y_1] :
      ( hAPP(real,real,plus_plus(real,hAPP(nat,real,power_power(real,X),number_number_of(nat,bit0(bit1(pls))))),hAPP(nat,real,power_power(real,Y_1),number_number_of(nat,bit0(bit1(pls))))) = zero_zero(real)
    <=> ( Y_1 = zero_zero(real)
        & X = zero_zero(real) ) ) ).

fof(fact_648_nat__less__le,axiom,
    ! [Ma,N] :
      ( ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),Ma),N))
        & N != Ma )
    <=> hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),Ma),N)) ) ).

fof(fact_144_semiring__numeral__0__eq__0,axiom,
    ! [X_a] :
      ( number_semiring(X_a)
     => zero_zero(X_a) = number_number_of(X_a,pls) ) ).

fof(fact_891_mult__right_Oadd,axiom,
    ! [X_a] :
      ( real_normed_algebra(X_a)
     => ! [Xa,X_1,Y] : hAPP(X_a,X_a,times_times(X_a,Xa),hAPP(X_a,X_a,plus_plus(X_a,X_1),Y)) = hAPP(X_a,X_a,plus_plus(X_a,hAPP(X_a,X_a,times_times(X_a,Xa),X_1)),hAPP(X_a,X_a,times_times(X_a,Xa),Y)) ) ).

fof(fact_600_le__refl,axiom,
    ! [N_1] : hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),N_1),N_1)) ).

fof(fact_570_dvd__antisym,axiom,
    ! [M,N_1] :
      ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),M),N_1))
     => ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),N_1),M))
       => N_1 = M ) ) ).

fof(fact_95_right__distrib__number__of,axiom,
    ! [X_b] :
      ( ! [V,B,C] : hAPP(X_b,X_b,times_times(X_b,number_number_of(X_b,V)),hAPP(X_b,X_b,plus_plus(X_b,B),C)) = hAPP(X_b,X_b,plus_plus(X_b,hAPP(X_b,X_b,times_times(X_b,number_number_of(X_b,V)),B)),hAPP(X_b,X_b,times_times(X_b,number_number_of(X_b,V)),C))
     <= ( number(X_b)
        & semiring(X_b) ) ) ).

fof(arity_Int_Oint___Rings_Olinordered__ring,axiom,
    linordered_ring(int) ).

fof(fact_135_zadd__strict__right__mono,axiom,
    ! [K_1,I_1,J_1] :
      ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),hAPP(int,int,plus_plus(int,I_1),K_1)),hAPP(int,int,plus_plus(int,J_1),K_1)))
     <= hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),I_1),J_1)) ) ).

fof(arity_RealDef_Oreal___Rings_Oidom,axiom,
    idom(real) ).

fof(fact_748_decr__mult__lemma,axiom,
    ! [K,P_1,D] :
      ( ( ! [X_2] :
            ( hBOOL(hAPP(int,bool,P_1,hAPP(int,int,minus_minus(int,X_2),D)))
           <= hBOOL(hAPP(int,bool,P_1,X_2)) )
       => ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),zero_zero(int)),K))
         => ! [X_2] :
              ( hBOOL(hAPP(int,bool,P_1,X_2))
             => hBOOL(hAPP(int,bool,P_1,hAPP(int,int,minus_minus(int,X_2),hAPP(int,int,times_times(int,K),D)))) ) ) )
     <= hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),zero_zero(int)),D)) ) ).

fof(fact_855_int__gr__induct,axiom,
    ! [P_1,K,I_2] :
      ( ( ( hBOOL(hAPP(int,bool,P_1,I_2))
         <= ! [I] :
              ( ( hBOOL(hAPP(int,bool,P_1,hAPP(int,int,plus_plus(int,I),one_one(int))))
               <= hBOOL(hAPP(int,bool,P_1,I)) )
             <= hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),K),I)) ) )
       <= hBOOL(hAPP(int,bool,P_1,hAPP(int,int,plus_plus(int,K),one_one(int)))) )
     <= hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),K),I_2)) ) ).

fof(fact_777_add__le__imp__le__right,axiom,
    ! [X_a] :
      ( ! [A_1,C,B] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),A_1),B))
         <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(X_a,X_a,plus_plus(X_a,A_1),C)),hAPP(X_a,X_a,plus_plus(X_a,B),C))) )
     <= ordere236663937imp_le(X_a) ) ).

fof(fact_83_add1__zle__eq,axiom,
    ! [W_1,Z_2] :
      ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),hAPP(int,int,plus_plus(int,W_1),one_one(int))),Z_2))
    <=> hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),W_1),Z_2)) ) ).

fof(arity_Nat_Onat___Rings_Olinordered__semiring__strict,axiom,
    linord20386208strict(nat) ).

fof(fact_510_real__sum__squared__expand,axiom,
    ! [X_1,Y] : hAPP(real,real,plus_plus(real,hAPP(real,real,plus_plus(real,hAPP(nat,real,power_power(real,X_1),number_number_of(nat,bit0(bit1(pls))))),hAPP(nat,real,power_power(real,Y),number_number_of(nat,bit0(bit1(pls)))))),hAPP(real,real,times_times(real,hAPP(real,real,times_times(real,number_number_of(real,bit0(bit1(pls)))),X_1)),Y)) = hAPP(nat,real,power_power(real,hAPP(real,real,plus_plus(real,X_1),Y)),number_number_of(nat,bit0(bit1(pls)))) ).

fof(fact_372_mult__nonneg__nonpos2,axiom,
    ! [X_a] :
      ( ! [B,A_1] :
          ( ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(X_a,X_a,times_times(X_a,B),A_1)),zero_zero(X_a)))
           <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),B),zero_zero(X_a))) )
         <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),zero_zero(X_a)),A_1)) )
     <= ordere453448008miring(X_a) ) ).

fof(fact_309_zcong__sym,axiom,
    ! [A_3,B_2,Ma] :
      ( hBOOL(hAPP(int,bool,zcong(A_3,B_2),Ma))
    <=> hBOOL(hAPP(int,bool,zcong(B_2,A_3),Ma)) ) ).

fof(fact_220_comm__semiring__1__class_Onormalizing__semiring__rules_I24_J,axiom,
    ! [X_a] :
      ( ! [A_1,C] : hAPP(X_a,X_a,plus_plus(X_a,A_1),C) = hAPP(X_a,X_a,plus_plus(X_a,C),A_1)
     <= comm_semiring_1(X_a) ) ).

fof(fact_29_zle__trans,axiom,
    ! [K_1,I_1,J_1] :
      ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),I_1),J_1))
     => ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),J_1),K_1))
       => hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),I_1),K_1)) ) ) ).

fof(fact_285_rel__simps_I40_J,axiom,
    pls != min ).

fof(fact_809_add__less__le__mono,axiom,
    ! [X_a] :
      ( ! [C,D_2,A_1,B] :
          ( ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),C),D_2))
           => hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),hAPP(X_a,X_a,plus_plus(X_a,A_1),C)),hAPP(X_a,X_a,plus_plus(X_a,B),D_2))) )
         <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),A_1),B)) )
     <= ordere223160158up_add(X_a) ) ).

fof(fact_876_gcd__lcm__complete__lattice__nat_Obot__unique,axiom,
    ! [A_3] :
      ( A_3 = one_one(nat)
    <=> hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),A_3),one_one(nat))) ) ).

fof(fact_101_power2__eq__imp__eq,axiom,
    ! [X_a] :
      ( linordered_semidom(X_a)
     => ! [X_1,Y] :
          ( hAPP(nat,X_a,power_power(X_a,Y),number_number_of(nat,bit0(bit1(pls)))) = hAPP(nat,X_a,power_power(X_a,X_1),number_number_of(nat,bit0(bit1(pls))))
         => ( ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),zero_zero(X_a)),Y))
             => ti(X_a,X_1) = ti(X_a,Y) )
           <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),zero_zero(X_a)),X_1)) ) ) ) ).

fof(fact_738_nat__eq__add__iff2,axiom,
    ! [U,Ma,N,I_2,J_2] :
      ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),I_2),J_2))
     => ( hAPP(nat,nat,plus_plus(nat,hAPP(nat,nat,times_times(nat,hAPP(nat,nat,minus_minus(nat,J_2),I_2)),U)),N) = Ma
      <=> hAPP(nat,nat,plus_plus(nat,hAPP(nat,nat,times_times(nat,J_2),U)),N) = hAPP(nat,nat,plus_plus(nat,hAPP(nat,nat,times_times(nat,I_2),U)),Ma) ) ) ).

fof(fact_902_zmod__simps_I4_J,axiom,
    ! [X_a] :
      ( ! [A_1,C,B] : hAPP(X_a,X_a,div_mod(X_a,hAPP(X_a,X_a,times_times(X_a,hAPP(X_a,X_a,div_mod(X_a,A_1),C)),B)),C) = hAPP(X_a,X_a,div_mod(X_a,hAPP(X_a,X_a,times_times(X_a,A_1),B)),C)
     <= semiring_div(X_a) ) ).

fof(tsy_c_Residues_OQuadRes_arg1,axiom,
    ! [B_1_1] : quadRes(ti(int,B_1_1)) = quadRes(B_1_1) ).

fof(fact_626_less__eq__nat_Osimps_I1_J,axiom,
    ! [N_1] : hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),zero_zero(nat)),N_1)) ).

fof(fact_281_rel__simps_I47_J,axiom,
    ! [K] :
      ( min = bit1(K)
    <=> ti(int,K) = min ) ).

fof(fact_689_nat__1__eq__mult__iff,axiom,
    ! [Ma,N] :
      ( hAPP(nat,nat,times_times(nat,Ma),N) = one_one(nat)
    <=> ( Ma = one_one(nat)
        & one_one(nat) = N ) ) ).

fof(tsy_c_COMBS_res,axiom,
    ! [X_a,X_c,X_b,B_1_1,B_2_1] : combs(X_a,X_b,X_c,B_1_1,B_2_1) = ti(fun(X_a,X_c),combs(X_a,X_b,X_c,B_1_1,B_2_1)) ).

fof(fact_858_d22set__le__swap,axiom,
    ! [A_3,B_2] :
      ( ~ hBOOL(hAPP(fun(int,bool),bool,member(int,B_2),d22set(A_3)))
     <= hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),A_3),B_2)) ) ).

fof(fact_690_nat__mult__1__right,axiom,
    ! [N_1] : hAPP(nat,nat,times_times(nat,N_1),one_one(nat)) = N_1 ).

fof(help_fconj_3_1_U,axiom,
    ! [P,Q] :
      ( hBOOL(Q)
      | ~ hBOOL(hAPP(bool,bool,hAPP(bool,fun(bool,bool),fconj,P),Q)) ) ).

fof(fact_851_MultInv__prop2,axiom,
    ! [X_1,P_3] :
      ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),number_number_of(int,bit0(bit1(pls)))),P_3))
     => ( hBOOL(hAPP(int,bool,zprime,P_3))
       => ( ~ hBOOL(hAPP(int,bool,zcong(X_1,zero_zero(int)),P_3))
         => hBOOL(hAPP(int,bool,zcong(hAPP(int,int,times_times(int,X_1),multInv(P_3,X_1)),one_one(int)),P_3)) ) ) ) ).

fof(fact_527_divides__div__not,axiom,
    ! [X_1,Q_1,N_1,R_1] :
      ( ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),zero_zero(nat)),R_1))
       => ( ~ hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),N_1),X_1))
         <= hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),R_1),N_1)) ) )
     <= X_1 = hAPP(nat,nat,plus_plus(nat,hAPP(nat,nat,times_times(nat,Q_1),N_1)),R_1) ) ).

fof(fact_103_zero__le__power2,axiom,
    ! [X_a] :
      ( ! [A_1] : hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),zero_zero(X_a)),hAPP(nat,X_a,power_power(X_a,A_1),number_number_of(nat,bit0(bit1(pls))))))
     <= linordered_idom(X_a) ) ).

fof(tsy_c_hAPP_arg1,axiom,
    ! [X_a,X_c,B_1_1,B_2_1] : hAPP(X_a,X_c,ti(fun(X_a,X_c),B_1_1),B_2_1) = hAPP(X_a,X_c,B_1_1,B_2_1) ).

fof(fact_578_dvd_Oless__le__not__le,axiom,
    ! [X,Y_1] :
      ( ( ~ hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),Y_1),X))
        & hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),X),Y_1)) )
    <=> ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),X),Y_1))
        & ~ hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),Y_1),X)) ) ) ).

fof(fact_389_mult__pos__neg,axiom,
    ! [X_a] :
      ( linord20386208strict(X_a)
     => ! [B,A_1] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),zero_zero(X_a)),A_1))
         => ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),hAPP(X_a,X_a,times_times(X_a,A_1),B)),zero_zero(X_a)))
           <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),B),zero_zero(X_a))) ) ) ) ).

fof(fact_435_zero__less__two,axiom,
    ! [X_a] :
      ( linordered_semidom(X_a)
     => hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),zero_zero(X_a)),hAPP(X_a,X_a,plus_plus(X_a,one_one(X_a)),one_one(X_a)))) ) ).

fof(arity_RealDef_Oreal___Groups_Oab__semigroup__add,axiom,
    ab_semigroup_add(real) ).

fof(fact_895_mult__right_Odiff,axiom,
    ! [X_a] :
      ( ! [Xa,X_1,Y] : hAPP(X_a,X_a,times_times(X_a,Xa),hAPP(X_a,X_a,minus_minus(X_a,X_1),Y)) = hAPP(X_a,X_a,minus_minus(X_a,hAPP(X_a,X_a,times_times(X_a,Xa),X_1)),hAPP(X_a,X_a,times_times(X_a,Xa),Y))
     <= real_normed_algebra(X_a) ) ).

fof(tsy_c_Groups_Otimes__class_Otimes_5_arg1,axiom,
    ! [B_1_1,X_a] :
      ( no_zero_divisors(X_a)
     => times_times(X_a,ti(X_a,B_1_1)) = times_times(X_a,B_1_1) ) ).

fof(fact_374_mult__nonneg__nonneg,axiom,
    ! [X_a] :
      ( ! [B,A_1] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),zero_zero(X_a)),A_1))
         => ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),zero_zero(X_a)),B))
           => hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),zero_zero(X_a)),hAPP(X_a,X_a,times_times(X_a,A_1),B))) ) )
     <= ordere453448008miring(X_a) ) ).

fof(fact_176_less__special_I1_J,axiom,
    ! [X_a] :
      ( ! [Y_1] :
          ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),pls),Y_1))
        <=> hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),zero_zero(X_a)),number_number_of(X_a,Y_1))) )
     <= ( number_ring(X_a)
        & linordered_idom(X_a) ) ) ).

fof(fact_554_dvd_Oless__trans,axiom,
    ! [Z_1,X_1,Y] :
      ( ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),X_1),Y))
        & ~ hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),Y),X_1)) )
     => ( ( ~ hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),Z_1),X_1))
          & hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),X_1),Z_1)) )
       <= ( ~ hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),Z_1),Y))
          & hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),Y),Z_1)) ) ) ) ).

fof(fact_161_add__Bit1__Bit0,axiom,
    ! [K_1,L_1] : bit1(hAPP(int,int,plus_plus(int,K_1),L_1)) = hAPP(int,int,plus_plus(int,bit1(K_1)),bit0(L_1)) ).

fof(fact_335_dvd__mult__right,axiom,
    ! [X_a] :
      ( ! [A_1,B,C] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),dvd_dvd(X_a),B),C))
         <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),dvd_dvd(X_a),hAPP(X_a,X_a,times_times(X_a,A_1),B)),C)) )
     <= comm_semiring_1(X_a) ) ).

fof(fact_955_zmod__zdvd__zmod,axiom,
    ! [A_1,B,M] :
      ( ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),dvd_dvd(int),M),B))
       => hAPP(int,int,div_mod(int,A_1),M) = hAPP(int,int,div_mod(int,hAPP(int,int,div_mod(int,A_1),B)),M) )
     <= hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),zero_zero(int)),M)) ) ).

fof(tsy_c_Residues_OLegendre_res,axiom,
    ! [B_1_1,B_2_1] : legendre(B_1_1,B_2_1) = ti(int,legendre(B_1_1,B_2_1)) ).

fof(fact_558_dvd_Oless__imp__triv,axiom,
    ! [P_1,X,Y_1] :
      ( ( ~ hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),Y_1),X))
        & hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),X),Y_1)) )
     => ( hBOOL(P_1)
       <= ( ~ hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),X),Y_1))
          & hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),Y_1),X)) ) ) ) ).

fof(fact_356_zcong__zmult,axiom,
    ! [C,D_2,A_1,B,M] :
      ( ( hBOOL(hAPP(int,bool,zcong(C,D_2),M))
       => hBOOL(hAPP(int,bool,zcong(hAPP(int,int,times_times(int,A_1),C),hAPP(int,int,times_times(int,B),D_2)),M)) )
     <= hBOOL(hAPP(int,bool,zcong(A_1,B),M)) ) ).

fof(fact_268_zdiv__mono2__neg__lemma,axiom,
    ! [B,Q_1,R_1,B_3,Q_4,R_3] :
      ( ( ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),R_1),B))
         => ( ( ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),Q_4),Q_1))
               <= hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),B_3),B)) )
             <= hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),zero_zero(int)),B_3)) )
           <= hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),zero_zero(int)),R_3)) ) )
       <= hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),hAPP(int,int,plus_plus(int,hAPP(int,int,times_times(int,B_3),Q_4)),R_3)),zero_zero(int))) )
     <= hAPP(int,int,plus_plus(int,hAPP(int,int,times_times(int,B),Q_1)),R_1) = hAPP(int,int,plus_plus(int,hAPP(int,int,times_times(int,B_3),Q_4)),R_3) ) ).

fof(fact_625_diff__add__0,axiom,
    ! [N_1,M] : hAPP(nat,nat,minus_minus(nat,N_1),hAPP(nat,nat,plus_plus(nat,N_1),M)) = zero_zero(nat) ).

fof(tsy_c_Groups_Oplus__class_Oplus_1_arg1,axiom,
    ! [B_1_1,X_a] :
      ( monoid_add(X_a)
     => plus_plus(X_a,B_1_1) = plus_plus(X_a,ti(X_a,B_1_1)) ) ).

fof(fact_663_trans__le__add2,axiom,
    ! [M,I_1,J_1] :
      ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),I_1),J_1))
     => hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),I_1),hAPP(nat,nat,plus_plus(nat,M),J_1))) ) ).

fof(fact_375_mult__le__0__iff,axiom,
    ! [X_a] :
      ( linord581940658strict(X_a)
     => ! [A_3,B_2] :
          ( ( ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),zero_zero(X_a)),B_2))
              & hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),A_3),zero_zero(X_a))) )
            | ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),zero_zero(X_a)),A_3))
              & hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),B_2),zero_zero(X_a))) ) )
        <=> hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(X_a,X_a,times_times(X_a,A_3),B_2)),zero_zero(X_a))) ) ) ).

fof(fact_608_nat__mult__commute,axiom,
    ! [M,N_1] : hAPP(nat,nat,times_times(nat,M),N_1) = hAPP(nat,nat,times_times(nat,N_1),M) ).

fof(fact_279__096_B_Bthesis_O_A_I_B_Bs1_O_A_091s1_A_094_A2_A_061_A_N1_093_A_Imod_A4_,axiom,
    ~ ! [S1] : ~ hBOOL(hAPP(int,bool,zcong(hAPP(nat,int,power_power(int,S1),number_number_of(nat,bit0(bit1(pls)))),number_number_of(int,min)),hAPP(int,int,plus_plus(int,hAPP(int,int,times_times(int,number_number_of(int,bit0(bit0(bit1(pls))))),m)),one_one(int)))) ).

fof(fact_694_nat__dvd__not__less,axiom,
    ! [N_1,M] :
      ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),zero_zero(nat)),M))
     => ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),M),N_1))
       => ~ hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),N_1),M)) ) ) ).

fof(fact_586_nat__add__left__cancel,axiom,
    ! [K,Ma,N] :
      ( N = Ma
    <=> hAPP(nat,nat,plus_plus(nat,K),N) = hAPP(nat,nat,plus_plus(nat,K),Ma) ) ).

fof(fact_548_less__not__refl2,axiom,
    ! [N_1,M] :
      ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),N_1),M))
     => M != N_1 ) ).

fof(tsy_c_IntFact_Ozfact_arg1,axiom,
    ! [B_1_1] : zfact(ti(int,B_1_1)) = zfact(B_1_1) ).

fof(fact_293_rel__simps_I6_J,axiom,
    hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),min),pls)) ).

fof(fact_38_zadd__left__mono,axiom,
    ! [K_1,I_1,J_1] :
      ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),hAPP(int,int,plus_plus(int,K_1),I_1)),hAPP(int,int,plus_plus(int,K_1),J_1)))
     <= hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),I_1),J_1)) ) ).

fof(fact_154_less__int__code_I15_J,axiom,
    ! [K1,K2] :
      ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),K1),K2))
    <=> hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),bit1(K1)),bit0(K2))) ) ).

fof(fact_261_power__0__left__number__of,axiom,
    ! [X_a] :
      ( ! [W] :
          ( ( number_number_of(nat,W) != zero_zero(nat)
           => zero_zero(X_a) = hAPP(nat,X_a,power_power(X_a,zero_zero(X_a)),number_number_of(nat,W)) )
          & ( hAPP(nat,X_a,power_power(X_a,zero_zero(X_a)),number_number_of(nat,W)) = one_one(X_a)
           <= number_number_of(nat,W) = zero_zero(nat) ) )
     <= ( power(X_a)
        & semiring_0(X_a) ) ) ).

fof(fact_301_eq__number__of__Pls__Min,axiom,
    number_number_of(int,min) != number_number_of(int,pls) ).

fof(fact_661_nat__add__left__cancel__le,axiom,
    ! [K,Ma,N] :
      ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),hAPP(nat,nat,plus_plus(nat,K),Ma)),hAPP(nat,nat,plus_plus(nat,K),N)))
    <=> hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),Ma),N)) ) ).

fof(fact_373_mult__nonneg__nonpos,axiom,
    ! [X_a] :
      ( ordere453448008miring(X_a)
     => ! [B,A_1] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),zero_zero(X_a)),A_1))
         => ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),B),zero_zero(X_a)))
           => hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(X_a,X_a,times_times(X_a,A_1),B)),zero_zero(X_a))) ) ) ) ).

fof(arity_Int_Oint___Rings_Ono__zero__divisors,axiom,
    no_zero_divisors(int) ).

fof(fact_657_dvd__diffD1,axiom,
    ! [K_1,M,N_1] :
      ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),K_1),hAPP(nat,nat,minus_minus(nat,M),N_1)))
     => ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),K_1),M))
       => ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),N_1),M))
         => hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),K_1),N_1)) ) ) ) ).

fof(arity_RealDef_Oreal___Rings_Osemiring__0,axiom,
    semiring_0(real) ).

fof(fact_972_zmod__minus1,axiom,
    ! [B] :
      ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),zero_zero(int)),B))
     => hAPP(int,int,minus_minus(int,B),one_one(int)) = hAPP(int,int,div_mod(int,number_number_of(int,min)),B) ) ).

fof(fact_550_nat__less__cases,axiom,
    ! [P_1,Ma,N] :
      ( ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),Ma),N))
       => hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),P_1,N),Ma)) )
     => ( ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),P_1,N),Ma))
         <= ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),N),Ma))
           => hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),P_1,N),Ma)) ) )
       <= ( N = Ma
         => hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),P_1,N),Ma)) ) ) ) ).

fof(fact_471_diff__bin__simps_I1_J,axiom,
    ! [K_1] : ti(int,K_1) = hAPP(int,int,minus_minus(int,K_1),pls) ).

fof(fact_559_dvd_Oless__imp__not__eq2,axiom,
    ! [X_1,Y] :
      ( ( ~ hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),Y),X_1))
        & hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),X_1),Y)) )
     => Y != X_1 ) ).

fof(fact_87_le__imp__0__less,axiom,
    ! [Z_1] :
      ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),zero_zero(int)),Z_1))
     => hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),zero_zero(int)),hAPP(int,int,plus_plus(int,one_one(int)),Z_1))) ) ).

fof(tsy_c_Power_Opower__class_Opower_arg1,axiom,
    ! [B_1_1,X_a] :
      ( power(X_a)
     => power_power(X_a,ti(X_a,B_1_1)) = power_power(X_a,B_1_1) ) ).

fof(fact_484_diff__bin__simps_I3_J,axiom,
    ! [L_1] : hAPP(int,int,minus_minus(int,pls),bit0(L_1)) = bit0(hAPP(int,int,minus_minus(int,pls),L_1)) ).

fof(fact_906_mod__mult__left__eq,axiom,
    ! [X_a] :
      ( ! [A_1,B,C] : hAPP(X_a,X_a,div_mod(X_a,hAPP(X_a,X_a,times_times(X_a,hAPP(X_a,X_a,div_mod(X_a,A_1),C)),B)),C) = hAPP(X_a,X_a,div_mod(X_a,hAPP(X_a,X_a,times_times(X_a,A_1),B)),C)
     <= semiring_div(X_a) ) ).

fof(tsy_c_Groups_Ominus__class_Ominus_1_arg1,axiom,
    ! [B_1_1] : minus_minus(nat,B_1_1) = minus_minus(nat,ti(nat,B_1_1)) ).

fof(fact_7_not__sum__power2__lt__zero,axiom,
    ! [X_a] :
      ( ! [X_1,Y] : ~ hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),hAPP(X_a,X_a,plus_plus(X_a,hAPP(nat,X_a,power_power(X_a,X_1),number_number_of(nat,bit0(bit1(pls))))),hAPP(nat,X_a,power_power(X_a,Y),number_number_of(nat,bit0(bit1(pls)))))),zero_zero(X_a)))
     <= linordered_idom(X_a) ) ).

fof(fact_61_nat__1__add__1,axiom,
    hAPP(nat,nat,plus_plus(nat,one_one(nat)),one_one(nat)) = number_number_of(nat,bit0(bit1(pls))) ).

fof(fact_790_diff__eq__diff__less__eq,axiom,
    ! [X_a] :
      ( ! [A_3,B_2,C_1,D] :
          ( ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),A_3),B_2))
          <=> hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),C_1),D)) )
         <= hAPP(X_a,X_a,minus_minus(X_a,C_1),D) = hAPP(X_a,X_a,minus_minus(X_a,A_3),B_2) )
     <= ordered_ab_group_add(X_a) ) ).

fof(fact_957_pos__mod__sign,axiom,
    ! [A_1,B] :
      ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),zero_zero(int)),B))
     => hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),zero_zero(int)),hAPP(int,int,div_mod(int,A_1),B))) ) ).

fof(tsy_c_Product__Type_OPair_arg1,axiom,
    ! [B_1_1,B_2_1] : product_Pair(int,int,B_1_1,B_2_1) = product_Pair(int,int,ti(int,B_1_1),B_2_1) ).

fof(fact_355_zcong__scalar2,axiom,
    ! [K_1,A_1,B,M] :
      ( hBOOL(hAPP(int,bool,zcong(hAPP(int,int,times_times(int,K_1),A_1),hAPP(int,int,times_times(int,K_1),B)),M))
     <= hBOOL(hAPP(int,bool,zcong(A_1,B),M)) ) ).

fof(fact_344_nat__zero__less__power__iff,axiom,
    ! [X,N] :
      ( ( zero_zero(nat) = N
        | hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),zero_zero(nat)),X)) )
    <=> hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),zero_zero(nat)),hAPP(nat,nat,power_power(nat,X),N))) ) ).

fof(fact_910_zcong__zmod,axiom,
    ! [A_3,B_2,Ma] :
      ( hBOOL(hAPP(int,bool,zcong(hAPP(int,int,div_mod(int,A_3),Ma),hAPP(int,int,div_mod(int,B_2),Ma)),Ma))
    <=> hBOOL(hAPP(int,bool,zcong(A_3,B_2),Ma)) ) ).

fof(fact_599_nat__le__linear,axiom,
    ! [M,N_1] :
      ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),M),N_1))
      | hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),N_1),M)) ) ).

fof(fact_440_power__less__power__Suc,axiom,
    ! [X_a] :
      ( ! [N_1,A_1] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),one_one(X_a)),A_1))
         => hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),hAPP(nat,X_a,power_power(X_a,A_1),N_1)),hAPP(X_a,X_a,times_times(X_a,A_1),hAPP(nat,X_a,power_power(X_a,A_1),N_1)))) )
     <= linordered_semidom(X_a) ) ).

fof(fact_420_zprime__zdvd__zmult__better,axiom,
    ! [M,N_1,P_3] :
      ( hBOOL(hAPP(int,bool,zprime,P_3))
     => ( ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),dvd_dvd(int),P_3),M))
          | hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),dvd_dvd(int),P_3),N_1)) )
       <= hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),dvd_dvd(int),P_3),hAPP(int,int,times_times(int,M),N_1))) ) ) ).

fof(fact_481_left__diff__distrib__number__of,axiom,
    ! [X_b] :
      ( ! [A_1,B,V] : hAPP(X_b,X_b,times_times(X_b,hAPP(X_b,X_b,minus_minus(X_b,A_1),B)),number_number_of(X_b,V)) = hAPP(X_b,X_b,minus_minus(X_b,hAPP(X_b,X_b,times_times(X_b,A_1),number_number_of(X_b,V))),hAPP(X_b,X_b,times_times(X_b,B),number_number_of(X_b,V)))
     <= ( number(X_b)
        & ring(X_b) ) ) ).

fof(fact_480_right__diff__distrib__number__of,axiom,
    ! [X_b] :
      ( ! [V,B,C] : hAPP(X_b,X_b,minus_minus(X_b,hAPP(X_b,X_b,times_times(X_b,number_number_of(X_b,V)),B)),hAPP(X_b,X_b,times_times(X_b,number_number_of(X_b,V)),C)) = hAPP(X_b,X_b,times_times(X_b,number_number_of(X_b,V)),hAPP(X_b,X_b,minus_minus(X_b,B),C))
     <= ( ring(X_b)
        & number(X_b) ) ) ).

fof(fact_273_prime__g__5,axiom,
    ! [P_3] :
      ( hBOOL(hAPP(int,bool,zprime,P_3))
     => ( ( number_number_of(int,bit1(bit1(pls))) != ti(int,P_3)
         => hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),number_number_of(int,bit1(bit0(bit1(pls))))),P_3)) )
       <= number_number_of(int,bit0(bit1(pls))) != ti(int,P_3) ) ) ).

fof(arity_Int_Oint___Rings_Oordered__ring,axiom,
    ordered_ring(int) ).

fof(tsy_c_Groups_Otimes__class_Otimes_3_res,axiom,
    ! [B_1_1,X_a] :
      ( semiring(X_a)
     => times_times(X_a,B_1_1) = ti(fun(X_a,X_a),times_times(X_a,B_1_1)) ) ).

fof(fact_872_gcd__lcm__complete__lattice__nat_Oless__top,axiom,
    ! [A_3] :
      ( ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),A_3),zero_zero(nat)))
        & ~ hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),zero_zero(nat)),A_3)) )
    <=> zero_zero(nat) != A_3 ) ).

fof(fact_214_comm__semiring__1__class_Onormalizing__semiring__rules_I14_J,axiom,
    ! [X_a] :
      ( ! [Lx,Ly,Rx,Ry] : hAPP(X_a,X_a,times_times(X_a,hAPP(X_a,X_a,times_times(X_a,Lx),Ly)),hAPP(X_a,X_a,times_times(X_a,Rx),Ry)) = hAPP(X_a,X_a,times_times(X_a,Lx),hAPP(X_a,X_a,times_times(X_a,Ly),hAPP(X_a,X_a,times_times(X_a,Rx),Ry)))
     <= comm_semiring_1(X_a) ) ).

fof(fact_602_Nat_Odiff__diff__eq,axiom,
    ! [N_1,K_1,M] :
      ( ( hAPP(nat,nat,minus_minus(nat,M),N_1) = hAPP(nat,nat,minus_minus(nat,hAPP(nat,nat,minus_minus(nat,M),K_1)),hAPP(nat,nat,minus_minus(nat,N_1),K_1))
       <= hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),K_1),N_1)) )
     <= hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),K_1),M)) ) ).

fof(fact_958_pos__mod__conj,axiom,
    ! [A_1,B] :
      ( ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),zero_zero(int)),hAPP(int,int,div_mod(int,A_1),B)))
        & hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),hAPP(int,int,div_mod(int,A_1),B)),B)) )
     <= hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),zero_zero(int)),B)) ) ).

fof(fact_231_nat__number__of__mult__left,axiom,
    ! [V_1,K_1,V] :
      ( ( hAPP(nat,nat,times_times(nat,number_number_of(nat,V)),hAPP(nat,nat,times_times(nat,number_number_of(nat,V_1)),K_1)) = zero_zero(nat)
       <= hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),V),pls)) )
      & ( ~ hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),V),pls))
       => hAPP(nat,nat,times_times(nat,number_number_of(nat,hAPP(int,int,times_times(int,V),V_1))),K_1) = hAPP(nat,nat,times_times(nat,number_number_of(nat,V)),hAPP(nat,nat,times_times(nat,number_number_of(nat,V_1)),K_1)) ) ) ).

fof(fact_907_mod__mult__right__eq,axiom,
    ! [X_a] :
      ( semiring_div(X_a)
     => ! [A_1,B,C] : hAPP(X_a,X_a,div_mod(X_a,hAPP(X_a,X_a,times_times(X_a,A_1),hAPP(X_a,X_a,div_mod(X_a,B),C))),C) = hAPP(X_a,X_a,div_mod(X_a,hAPP(X_a,X_a,times_times(X_a,A_1),B)),C) ) ).

fof(fact_405_dvd__mult__cancel__left,axiom,
    ! [X_a] :
      ( ! [C_1,A_3,B_2] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),dvd_dvd(X_a),hAPP(X_a,X_a,times_times(X_a,C_1),A_3)),hAPP(X_a,X_a,times_times(X_a,C_1),B_2)))
        <=> ( ti(X_a,C_1) = zero_zero(X_a)
            | hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),dvd_dvd(X_a),A_3),B_2)) ) )
     <= idom(X_a) ) ).

fof(fact_141_mult__2__right,axiom,
    ! [X_a] :
      ( ! [Z_1] : hAPP(X_a,X_a,plus_plus(X_a,Z_1),Z_1) = hAPP(X_a,X_a,times_times(X_a,Z_1),number_number_of(X_a,bit0(bit1(pls))))
     <= number_ring(X_a) ) ).

fof(fact_490_less__add__iff2,axiom,
    ! [X_a] :
      ( ordered_ring(X_a)
     => ! [A_3,E,C_1,B_2,D] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),C_1),hAPP(X_a,X_a,plus_plus(X_a,hAPP(X_a,X_a,times_times(X_a,hAPP(X_a,X_a,minus_minus(X_a,B_2),A_3)),E)),D)))
        <=> hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),hAPP(X_a,X_a,plus_plus(X_a,hAPP(X_a,X_a,times_times(X_a,A_3),E)),C_1)),hAPP(X_a,X_a,plus_plus(X_a,hAPP(X_a,X_a,times_times(X_a,B_2),E)),D))) ) ) ).

fof(arity_Int_Oint___Groups_Oordered__ab__semigroup__add,axiom,
    ordere779506340up_add(int) ).

fof(fact_383_mult__neg__neg,axiom,
    ! [X_a] :
      ( ! [B,A_1] :
          ( ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),zero_zero(X_a)),hAPP(X_a,X_a,times_times(X_a,A_1),B)))
           <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),B),zero_zero(X_a))) )
         <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),A_1),zero_zero(X_a))) )
     <= linord581940658strict(X_a) ) ).

fof(arity_RealDef_Oreal___Groups_Omonoid__add,axiom,
    monoid_add(real) ).

fof(arity_Int_Oint___Rings_Omult__zero,axiom,
    mult_zero(int) ).

fof(fact_670_le__diff__conv,axiom,
    ! [J_2,K,I_2] :
      ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),J_2),hAPP(nat,nat,plus_plus(nat,I_2),K)))
    <=> hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),hAPP(nat,nat,minus_minus(nat,J_2),K)),I_2)) ) ).

fof(fact_576_dvd_Oeq__refl,axiom,
    ! [X_1,Y] :
      ( X_1 = Y
     => hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),X_1),Y)) ) ).

fof(fact_456_power__eq__imp__eq__base,axiom,
    ! [X_a] :
      ( linordered_semidom(X_a)
     => ! [A_1,N_1,B] :
          ( hAPP(nat,X_a,power_power(X_a,A_1),N_1) = hAPP(nat,X_a,power_power(X_a,B),N_1)
         => ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),zero_zero(X_a)),A_1))
           => ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),zero_zero(X_a)),B))
             => ( ti(X_a,B) = ti(X_a,A_1)
               <= hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),zero_zero(nat)),N_1)) ) ) ) ) ) ).

fof(fact_749_incr__mult__lemma,axiom,
    ! [K,P_1,D] :
      ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),zero_zero(int)),D))
     => ( ( ! [X_2] :
              ( hBOOL(hAPP(int,bool,P_1,hAPP(int,int,plus_plus(int,X_2),hAPP(int,int,times_times(int,K),D))))
             <= hBOOL(hAPP(int,bool,P_1,X_2)) )
         <= hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),zero_zero(int)),K)) )
       <= ! [X_2] :
            ( hBOOL(hAPP(int,bool,P_1,hAPP(int,int,plus_plus(int,X_2),D)))
           <= hBOOL(hAPP(int,bool,P_1,X_2)) ) ) ) ).

fof(fact_888_mult_Ozero__right,axiom,
    ! [X_a] :
      ( real_normed_algebra(X_a)
     => ! [A_1] : hAPP(X_a,X_a,times_times(X_a,A_1),zero_zero(X_a)) = zero_zero(X_a) ) ).

fof(fact_384_mult__neg__pos,axiom,
    ! [X_a] :
      ( linord20386208strict(X_a)
     => ! [B,A_1] :
          ( ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),hAPP(X_a,X_a,times_times(X_a,A_1),B)),zero_zero(X_a)))
           <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),zero_zero(X_a)),B)) )
         <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),A_1),zero_zero(X_a))) ) ) ).

fof(fact_770_add__0__right,axiom,
    ! [X_a] :
      ( ! [A_1] : ti(X_a,A_1) = hAPP(X_a,X_a,plus_plus(X_a,A_1),zero_zero(X_a))
     <= monoid_add(X_a) ) ).

fof(arity_Int_Oint___Groups_Olinordered__ab__group__add,axiom,
    linord219039673up_add(int) ).

fof(fact_469_number__of__diff,axiom,
    ! [X_a] :
      ( ! [V,W] : number_number_of(X_a,hAPP(int,int,minus_minus(int,V),W)) = hAPP(X_a,X_a,minus_minus(X_a,number_number_of(X_a,V)),number_number_of(X_a,W))
     <= number_ring(X_a) ) ).

fof(fact_543_less__eq__real__def,axiom,
    ! [X,Y_1] :
      ( hBOOL(hAPP(real,bool,hAPP(real,fun(real,bool),ord_less_eq(real),X),Y_1))
    <=> ( hBOOL(hAPP(real,bool,hAPP(real,fun(real,bool),ord_less(real),X),Y_1))
        | X = Y_1 ) ) ).

fof(arity_Int_Oint___Groups_Ocomm__monoid__mult,axiom,
    comm_monoid_mult(int) ).

fof(fact_52_less__eq__int__code_I14_J,axiom,
    ! [K1,K2] :
      ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),K1),K2))
    <=> hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),bit0(K1)),bit1(K2))) ) ).

fof(fact_538_diff__self__eq__0,axiom,
    ! [M] : zero_zero(nat) = hAPP(nat,nat,minus_minus(nat,M),M) ).

fof(fact_984_mod__if,axiom,
    ! [M,N_1] :
      ( ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),M),N_1))
       => M = hAPP(nat,nat,div_mod(nat,M),N_1) )
      & ( hAPP(nat,nat,div_mod(nat,M),N_1) = hAPP(nat,nat,div_mod(nat,hAPP(nat,nat,minus_minus(nat,M),N_1)),N_1)
       <= ~ hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),M),N_1)) ) ) ).

fof(arity_Nat_Onat___Groups_Oordered__ab__semigroup__add,axiom,
    ordere779506340up_add(nat) ).

fof(fact_453_convex__bound__le,axiom,
    ! [X_a] :
      ( ! [V,U_1,Y,X_1,A_1] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X_1),A_1))
         => ( ( ( ( one_one(X_a) = hAPP(X_a,X_a,plus_plus(X_a,U_1),V)
                 => hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(X_a,X_a,plus_plus(X_a,hAPP(X_a,X_a,times_times(X_a,U_1),X_1)),hAPP(X_a,X_a,times_times(X_a,V),Y))),A_1)) )
               <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),zero_zero(X_a)),V)) )
             <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),zero_zero(X_a)),U_1)) )
           <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),Y),A_1)) ) )
     <= linord1278240602ring_1(X_a) ) ).

fof(tsy_v_s1_____res,axiom,
    ti(int,s1) = s1 ).

fof(fact_168_power2__sum,axiom,
    ! [X_a] :
      ( number_semiring(X_a)
     => ! [X_1,Y] : hAPP(X_a,X_a,plus_plus(X_a,hAPP(X_a,X_a,plus_plus(X_a,hAPP(nat,X_a,power_power(X_a,X_1),number_number_of(nat,bit0(bit1(pls))))),hAPP(nat,X_a,power_power(X_a,Y),number_number_of(nat,bit0(bit1(pls)))))),hAPP(X_a,X_a,times_times(X_a,hAPP(X_a,X_a,times_times(X_a,number_number_of(X_a,bit0(bit1(pls)))),X_1)),Y)) = hAPP(nat,X_a,power_power(X_a,hAPP(X_a,X_a,plus_plus(X_a,X_1),Y)),number_number_of(nat,bit0(bit1(pls)))) ) ).

fof(fact_760_add__left__cancel,axiom,
    ! [X_a] :
      ( cancel_semigroup_add(X_a)
     => ! [A_3,B_2,C_1] :
          ( hAPP(X_a,X_a,plus_plus(X_a,A_3),B_2) = hAPP(X_a,X_a,plus_plus(X_a,A_3),C_1)
        <=> ti(X_a,C_1) = ti(X_a,B_2) ) ) ).

fof(tsy_v_m_res,axiom,
    ti(int,m) = m ).

fof(fact_628_diff__is__0__eq,axiom,
    ! [Ma,N] :
      ( hAPP(nat,nat,minus_minus(nat,Ma),N) = zero_zero(nat)
    <=> hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),Ma),N)) ) ).

fof(arity_Nat_Onat___Groups_Oone,axiom,
    one(nat) ).

fof(conj_0,conjecture,
    hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),hAPP(int,int,plus_plus(int,hAPP(nat,int,power_power(int,s),number_number_of(nat,bit0(bit1(pls))))),one_one(int))),zero_zero(int))) ).

fof(fact_549_less__not__refl3,axiom,
    ! [S,T_3] :
      ( S != T_3
     <= hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),S),T_3)) ) ).

fof(arity_Int_Oint___Rings_Olinordered__semiring,axiom,
    linordered_semiring(int) ).

fof(fact_115_rel__simps_I46_J,axiom,
    ! [K_1] : bit1(K_1) != pls ).

fof(fact_113_pos__zmult__eq__1__iff,axiom,
    ! [N,Ma] :
      ( ( ( ti(int,N) = one_one(int)
          & ti(int,Ma) = one_one(int) )
      <=> one_one(int) = hAPP(int,int,times_times(int,Ma),N) )
     <= hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),zero_zero(int)),Ma)) ) ).

fof(fact_295_bin__less__0__simps_I2_J,axiom,
    hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),min),zero_zero(int))) ).

fof(fact_359_zcong__zpower,axiom,
    ! [Z_1,X_1,Y,M] :
      ( hBOOL(hAPP(int,bool,zcong(X_1,Y),M))
     => hBOOL(hAPP(int,bool,zcong(hAPP(nat,int,power_power(int,X_1),Z_1),hAPP(nat,int,power_power(int,Y),Z_1)),M)) ) ).

fof(fact_350_zcong__1,axiom,
    ! [A_1,B] : hBOOL(hAPP(int,bool,zcong(A_1,B),one_one(int))) ).

fof(fact_541_real__le__eq__diff,axiom,
    ! [X,Y_1] :
      ( hBOOL(hAPP(real,bool,hAPP(real,fun(real,bool),ord_less_eq(real),hAPP(real,real,minus_minus(real,X),Y_1)),zero_zero(real)))
    <=> hBOOL(hAPP(real,bool,hAPP(real,fun(real,bool),ord_less_eq(real),X),Y_1)) ) ).

fof(fact_673_add__diff__assoc,axiom,
    ! [I_1,K_1,J_1] :
      ( hAPP(nat,nat,plus_plus(nat,I_1),hAPP(nat,nat,minus_minus(nat,J_1),K_1)) = hAPP(nat,nat,minus_minus(nat,hAPP(nat,nat,plus_plus(nat,I_1),J_1)),K_1)
     <= hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),K_1),J_1)) ) ).

fof(fact_265_unique__quotient__lemma,axiom,
    ! [B,Q_4,R_3,Q_1,R_1] :
      ( ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),zero_zero(int)),R_3))
       => ( ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),R_1),B))
           => hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),Q_4),Q_1)) )
         <= hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),R_3),B)) ) )
     <= hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),hAPP(int,int,plus_plus(int,hAPP(int,int,times_times(int,B),Q_4)),R_3)),hAPP(int,int,plus_plus(int,hAPP(int,int,times_times(int,B),Q_1)),R_1))) ) ).

fof(fact_709_real__two__squares__add__zero__iff,axiom,
    ! [X,Y_1] :
      ( ( zero_zero(real) = X
        & zero_zero(real) = Y_1 )
    <=> hAPP(real,real,plus_plus(real,hAPP(real,real,times_times(real,X),X)),hAPP(real,real,times_times(real,Y_1),Y_1)) = zero_zero(real) ) ).

fof(fact_669_diff__diff__right,axiom,
    ! [I_1,K_1,J_1] :
      ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),K_1),J_1))
     => hAPP(nat,nat,minus_minus(nat,I_1),hAPP(nat,nat,minus_minus(nat,J_1),K_1)) = hAPP(nat,nat,minus_minus(nat,hAPP(nat,nat,plus_plus(nat,I_1),K_1)),J_1) ) ).

fof(fact_854_int__ge__induct,axiom,
    ! [P_1,K,I_2] :
      ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),K),I_2))
     => ( ( hBOOL(hAPP(int,bool,P_1,I_2))
         <= ! [I] :
              ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),K),I))
             => ( hBOOL(hAPP(int,bool,P_1,hAPP(int,int,plus_plus(int,I),one_one(int))))
               <= hBOOL(hAPP(int,bool,P_1,I)) ) ) )
       <= hBOOL(hAPP(int,bool,P_1,K)) ) ) ).

fof(fact_534_le0,axiom,
    ! [N_1] : hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),zero_zero(nat)),N_1)) ).

fof(fact_740_zprime__factor__exists,axiom,
    ! [A_1] :
      ( ? [P_5] :
          ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),dvd_dvd(int),P_5),A_1))
          & hBOOL(hAPP(int,bool,zprime,P_5)) )
     <= hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),one_one(int)),A_1)) ) ).

fof(fact_132_Bit0__def,axiom,
    ! [K_1] : bit0(K_1) = hAPP(int,int,plus_plus(int,K_1),K_1) ).

fof(fact_533_less__zeroE,axiom,
    ! [N_1] : ~ hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),N_1),zero_zero(nat))) ).

fof(fact_856_mono__nat__linear__lb,axiom,
    ! [Ma,K,F_1] :
      ( ! [M_2,N_2] :
          ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),M_2),N_2))
         => hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),hAPP(nat,nat,F_1,M_2)),hAPP(nat,nat,F_1,N_2))) )
     => hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),hAPP(nat,nat,plus_plus(nat,hAPP(nat,nat,F_1,Ma)),K)),hAPP(nat,nat,F_1,hAPP(nat,nat,plus_plus(nat,Ma),K)))) ) ).

fof(fact_557_dvd_Oord__less__eq__trans,axiom,
    ! [C,A_1,B] :
      ( ( B = C
       => ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),A_1),C))
          & ~ hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),C),A_1)) ) )
     <= ( ~ hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),B),A_1))
        & hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),A_1),B)) ) ) ).

fof(fact_223_comm__semiring__1__class_Onormalizing__semiring__rules_I21_J,axiom,
    ! [X_a] :
      ( comm_semiring_1(X_a)
     => ! [A_1,B,C] : hAPP(X_a,X_a,plus_plus(X_a,hAPP(X_a,X_a,plus_plus(X_a,A_1),B)),C) = hAPP(X_a,X_a,plus_plus(X_a,A_1),hAPP(X_a,X_a,plus_plus(X_a,B),C)) ) ).

fof(tsy_c_WilsonRuss_Oinv_arg2,axiom,
    ! [B_1_1,B_2_1] : inv(B_1_1,B_2_1) = inv(B_1_1,ti(int,B_2_1)) ).

fof(arity_RealDef_Oreal___Rings_Olinordered__comm__semiring__strict,axiom,
    linord893533164strict(real) ).

fof(fact_884_mult_Oprod__diff__prod,axiom,
    ! [X_a] :
      ( real_normed_algebra(X_a)
     => ! [X_1,Y,A_1,B] : hAPP(X_a,X_a,minus_minus(X_a,hAPP(X_a,X_a,times_times(X_a,X_1),Y)),hAPP(X_a,X_a,times_times(X_a,A_1),B)) = hAPP(X_a,X_a,plus_plus(X_a,hAPP(X_a,X_a,plus_plus(X_a,hAPP(X_a,X_a,times_times(X_a,hAPP(X_a,X_a,minus_minus(X_a,X_1),A_1)),hAPP(X_a,X_a,minus_minus(X_a,Y),B))),hAPP(X_a,X_a,times_times(X_a,hAPP(X_a,X_a,minus_minus(X_a,X_1),A_1)),B))),hAPP(X_a,X_a,times_times(X_a,A_1),hAPP(X_a,X_a,minus_minus(X_a,Y),B))) ) ).

fof(tsy_c_Groups_Oplus__class_Oplus_3_res,axiom,
    ! [B_1_1,X_a] :
      ( plus_plus(X_a,B_1_1) = ti(fun(X_a,X_a),plus_plus(X_a,B_1_1))
     <= ab_semigroup_add(X_a) ) ).

fof(tsy_c_hBOOL_arg1,hypothesis,
    ! [B_1_1] :
      ( hBOOL(ti(bool,B_1_1))
    <=> hBOOL(B_1_1) ) ).

fof(fact_315_divisors__zero,axiom,
    ! [X_a] :
      ( no_zero_divisors(X_a)
     => ! [A_1,B] :
          ( ( zero_zero(X_a) = ti(X_a,A_1)
            | zero_zero(X_a) = ti(X_a,B) )
         <= hAPP(X_a,X_a,times_times(X_a,A_1),B) = zero_zero(X_a) ) ) ).

fof(fact_734_nat__diff__add__eq1,axiom,
    ! [U_1,M,N_1,J_1,I_1] :
      ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),J_1),I_1))
     => hAPP(nat,nat,minus_minus(nat,hAPP(nat,nat,plus_plus(nat,hAPP(nat,nat,times_times(nat,I_1),U_1)),M)),hAPP(nat,nat,plus_plus(nat,hAPP(nat,nat,times_times(nat,J_1),U_1)),N_1)) = hAPP(nat,nat,minus_minus(nat,hAPP(nat,nat,plus_plus(nat,hAPP(nat,nat,times_times(nat,hAPP(nat,nat,minus_minus(nat,I_1),J_1)),U_1)),M)),N_1) ) ).

fof(fact_307_dvd__refl,axiom,
    ! [X_a] :
      ( comm_semiring_1(X_a)
     => ! [A_1] : hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),dvd_dvd(X_a),A_1),A_1)) ) ).

fof(fact_897_mult__left_Odiff,axiom,
    ! [X_a] :
      ( ! [X_1,Y,Ya] : hAPP(X_a,X_a,times_times(X_a,hAPP(X_a,X_a,minus_minus(X_a,X_1),Y)),Ya) = hAPP(X_a,X_a,minus_minus(X_a,hAPP(X_a,X_a,times_times(X_a,X_1),Ya)),hAPP(X_a,X_a,times_times(X_a,Y),Ya))
     <= real_normed_algebra(X_a) ) ).

fof(fact_12_one__power2,axiom,
    ! [X_a] :
      ( one_one(X_a) = hAPP(nat,X_a,power_power(X_a,one_one(X_a)),number_number_of(nat,bit0(bit1(pls))))
     <= semiring_1(X_a) ) ).

fof(fact_175_less__special_I3_J,axiom,
    ! [X_a] :
      ( ! [X] :
          ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),X),pls))
        <=> hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),number_number_of(X_a,X)),zero_zero(X_a))) )
     <= ( number_ring(X_a)
        & linordered_idom(X_a) ) ) ).

fof(fact_767_add__0__left,axiom,
    ! [X_a] :
      ( ! [A_1] : hAPP(X_a,X_a,plus_plus(X_a,zero_zero(X_a)),A_1) = ti(X_a,A_1)
     <= monoid_add(X_a) ) ).

fof(fact_764_add__right__imp__eq,axiom,
    ! [X_a] :
      ( ! [B,A_1,C] :
          ( ti(X_a,C) = ti(X_a,B)
         <= hAPP(X_a,X_a,plus_plus(X_a,C),A_1) = hAPP(X_a,X_a,plus_plus(X_a,B),A_1) )
     <= cancel_semigroup_add(X_a) ) ).

fof(fact_385_mult__less__cancel__left__neg,axiom,
    ! [X_a] :
      ( linord581940658strict(X_a)
     => ! [A_3,B_2,C_1] :
          ( ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),hAPP(X_a,X_a,times_times(X_a,C_1),A_3)),hAPP(X_a,X_a,times_times(X_a,C_1),B_2)))
          <=> hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),B_2),A_3)) )
         <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),C_1),zero_zero(X_a))) ) ) ).

fof(fact_724_real__le__trans,axiom,
    ! [K_1,I_1,J_1] :
      ( ( hBOOL(hAPP(real,bool,hAPP(real,fun(real,bool),ord_less_eq(real),I_1),K_1))
       <= hBOOL(hAPP(real,bool,hAPP(real,fun(real,bool),ord_less_eq(real),J_1),K_1)) )
     <= hBOOL(hAPP(real,bool,hAPP(real,fun(real,bool),ord_less_eq(real),I_1),J_1)) ) ).

fof(fact_495_diff__bin__simps_I4_J,axiom,
    ! [L_1] : hAPP(int,int,minus_minus(int,pls),bit1(L_1)) = bit1(hAPP(int,int,minus_minus(int,min),L_1)) ).

fof(fact_338_one__dvd,axiom,
    ! [X_a] :
      ( comm_semiring_1(X_a)
     => ! [A_1] : hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),dvd_dvd(X_a),one_one(X_a)),A_1)) ) ).

fof(fact_48_le__special_I1_J,axiom,
    ! [X_a] :
      ( ! [Y_1] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),zero_zero(X_a)),number_number_of(X_a,Y_1)))
        <=> hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),pls),Y_1)) )
     <= ( number_ring(X_a)
        & linordered_idom(X_a) ) ) ).

fof(fact_0__096t_A_060_A0_096,axiom,
    hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),t),zero_zero(int))) ).

fof(fact_532_dvd_Oorder__refl,axiom,
    ! [X_1] : hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),X_1),X_1)) ).

fof(arity_Int_Oint___Int_Onumber,axiom,
    number(int) ).

fof(fact_447_Int2_Ozcong__zero,axiom,
    ! [M,X_1] :
      ( ( ( ti(int,X_1) = zero_zero(int)
         <= hBOOL(hAPP(int,bool,zcong(X_1,zero_zero(int)),M)) )
       <= hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),X_1),M)) )
     <= hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),zero_zero(int)),X_1)) ) ).

fof(fact_993_split__mod,axiom,
    ! [P_1,N,K] :
      ( hBOOL(hAPP(nat,bool,P_1,hAPP(nat,nat,div_mod(nat,N),K)))
    <=> ( ( ! [I,J] :
              ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),J),K))
             => ( hAPP(nat,nat,plus_plus(nat,hAPP(nat,nat,times_times(nat,K),I)),J) = N
               => hBOOL(hAPP(nat,bool,P_1,J)) ) )
         <= zero_zero(nat) != K )
        & ( hBOOL(hAPP(nat,bool,P_1,N))
         <= zero_zero(nat) = K ) ) ) ).

fof(tsy_c_Residues_OStandardRes_arg1,axiom,
    ! [B_1_1,B_2_1] : standardRes(ti(int,B_1_1),B_2_1) = standardRes(B_1_1,B_2_1) ).

fof(fact_551_less__imp__diff__less,axiom,
    ! [N_1,J_1,K_1] :
      ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),J_1),K_1))
     => hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),hAPP(nat,nat,minus_minus(nat,J_1),N_1)),K_1)) ) ).

fof(fact_321_one__neq__zero,axiom,
    ! [X_a] :
      ( zero_zero(X_a) != one_one(X_a)
     <= zero_neq_one(X_a) ) ).

fof(fact_757_zero__reorient,axiom,
    ! [X_a] :
      ( ! [X] :
          ( ti(X_a,X) = zero_zero(X_a)
        <=> ti(X_a,X) = zero_zero(X_a) )
     <= zero(X_a) ) ).

fof(fact_267_unique__quotient__lemma__neg,axiom,
    ! [B,Q_4,R_3,Q_1,R_1] :
      ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),hAPP(int,int,plus_plus(int,hAPP(int,int,times_times(int,B),Q_4)),R_3)),hAPP(int,int,plus_plus(int,hAPP(int,int,times_times(int,B),Q_1)),R_1)))
     => ( ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),B),R_1))
         => ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),B),R_3))
           => hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),Q_1),Q_4)) ) )
       <= hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),R_1),zero_zero(int))) ) ) ).

fof(fact_476_zcong__zdiff,axiom,
    ! [C,D_2,A_1,B,M] :
      ( ( hBOOL(hAPP(int,bool,zcong(hAPP(int,int,minus_minus(int,A_1),C),hAPP(int,int,minus_minus(int,B),D_2)),M))
       <= hBOOL(hAPP(int,bool,zcong(C,D_2),M)) )
     <= hBOOL(hAPP(int,bool,zcong(A_1,B),M)) ) ).

fof(fact_236_comm__semiring__1__class_Onormalizing__semiring__rules_I5_J,axiom,
    ! [X_a] :
      ( comm_semiring_1(X_a)
     => ! [A_1] : hAPP(X_a,X_a,plus_plus(X_a,zero_zero(X_a)),A_1) = ti(X_a,A_1) ) ).

fof(fact_33_rel__simps_I34_J,axiom,
    ! [K,L] :
      ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),K),L))
    <=> hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),bit1(K)),bit1(L))) ) ).

fof(fact_923_mod__add__cong,axiom,
    ! [X_a] :
      ( ! [B,B_3,A_1,C,A_4] :
          ( ( hAPP(X_a,X_a,div_mod(X_a,B),C) = hAPP(X_a,X_a,div_mod(X_a,B_3),C)
           => hAPP(X_a,X_a,div_mod(X_a,hAPP(X_a,X_a,plus_plus(X_a,A_1),B)),C) = hAPP(X_a,X_a,div_mod(X_a,hAPP(X_a,X_a,plus_plus(X_a,A_4),B_3)),C) )
         <= hAPP(X_a,X_a,div_mod(X_a,A_4),C) = hAPP(X_a,X_a,div_mod(X_a,A_1),C) )
     <= semiring_div(X_a) ) ).

fof(fact_189_self__quotient__aux2,axiom,
    ! [R_1,Q_1,A_1] :
      ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),zero_zero(int)),A_1))
     => ( ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),Q_1),one_one(int)))
         <= hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),zero_zero(int)),R_1)) )
       <= ti(int,A_1) = hAPP(int,int,plus_plus(int,R_1),hAPP(int,int,times_times(int,A_1),Q_1)) ) ) ).

fof(fact_624_add__eq__self__zero,axiom,
    ! [M,N_1] :
      ( N_1 = zero_zero(nat)
     <= M = hAPP(nat,nat,plus_plus(nat,M),N_1) ) ).

fof(fact_969_zmult2__lemma__aux3,axiom,
    ! [Q_1,B,R_1,C] :
      ( ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),zero_zero(int)),R_1))
       => ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),R_1),B))
         => hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),zero_zero(int)),hAPP(int,int,plus_plus(int,hAPP(int,int,times_times(int,B),hAPP(int,int,div_mod(int,Q_1),C))),R_1))) ) )
     <= hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),zero_zero(int)),C)) ) ).

fof(fact_37_zless__le,axiom,
    ! [Z_2,W_1] :
      ( ( ti(int,W_1) != ti(int,Z_2)
        & hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),Z_2),W_1)) )
    <=> hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),Z_2),W_1)) ) ).

fof(fact_552_diff__less__mono2,axiom,
    ! [L_1,M,N_1] :
      ( ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),hAPP(nat,nat,minus_minus(nat,L_1),N_1)),hAPP(nat,nat,minus_minus(nat,L_1),M)))
       <= hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),M),L_1)) )
     <= hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),M),N_1)) ) ).

fof(tsy_c_Int_OBit0_res,hypothesis,
    ! [B_1_1] : ti(int,bit0(B_1_1)) = bit0(B_1_1) ).

fof(fact_582_dvd_Oless__irrefl,axiom,
    ! [X_1] :
      ~ ( ~ hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),X_1),X_1))
        & hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),X_1),X_1)) ) ).

fof(fact_280__096Legendre_A_N1_A_I4_A_K_Am_A_L_A1_J_A_061_A1_096,axiom,
    one_one(int) = legendre(number_number_of(int,min),hAPP(int,int,plus_plus(int,hAPP(int,int,times_times(int,number_number_of(int,bit0(bit0(bit1(pls))))),m)),one_one(int))) ).

fof(fact_880_dvd__pos__nat,axiom,
    ! [M,N_1] :
      ( ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),zero_zero(nat)),M))
       <= hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),dvd_dvd(nat),M),N_1)) )
     <= hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),zero_zero(nat)),N_1)) ) ).

fof(fact_429_mult__strict__mono_H,axiom,
    ! [X_a] :
      ( ! [C,D_2,A_1,B] :
          ( ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),C),D_2))
           => ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),zero_zero(X_a)),A_1))
             => ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),hAPP(X_a,X_a,times_times(X_a,A_1),C)),hAPP(X_a,X_a,times_times(X_a,B),D_2)))
               <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),zero_zero(X_a)),C)) ) ) )
         <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less(X_a),A_1),B)) )
     <= linord20386208strict(X_a) ) ).

fof(fact_978_mod__mult__distrib,axiom,
    ! [M,N_1,K_1] : hAPP(nat,nat,div_mod(nat,hAPP(nat,nat,times_times(nat,M),K_1)),hAPP(nat,nat,times_times(nat,N_1),K_1)) = hAPP(nat,nat,times_times(nat,hAPP(nat,nat,div_mod(nat,M),N_1)),K_1) ).

fof(fact_329_dvd__triv__right,axiom,
    ! [X_a] :
      ( ! [A_1,B] : hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),dvd_dvd(X_a),A_1),hAPP(X_a,X_a,times_times(X_a,B),A_1)))
     <= comm_semiring_1(X_a) ) ).

fof(fact_936_Divides_Otransfer__nat__int__function__closures_I2_J,axiom,
    ! [Y,X_1] :
      ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),zero_zero(int)),X_1))
     => ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),zero_zero(int)),hAPP(int,int,div_mod(int,X_1),Y)))
       <= hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less_eq(int),zero_zero(int)),Y)) ) ) ).

fof(fact_434_mult__right__le__one__le,axiom,
    ! [X_a] :
      ( ! [Y,X_1] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),zero_zero(X_a)),X_1))
         => ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),zero_zero(X_a)),Y))
           => ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),Y),one_one(X_a)))
             => hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(X_a,X_a,times_times(X_a,X_1),Y)),X_1)) ) ) )
     <= linordered_idom(X_a) ) ).

fof(fact_950_mod__diff__eq,axiom,
    ! [X_a] :
      ( ring_div(X_a)
     => ! [A_1,B,C] : hAPP(X_a,X_a,div_mod(X_a,hAPP(X_a,X_a,minus_minus(X_a,hAPP(X_a,X_a,div_mod(X_a,A_1),C)),hAPP(X_a,X_a,div_mod(X_a,B),C))),C) = hAPP(X_a,X_a,div_mod(X_a,hAPP(X_a,X_a,minus_minus(X_a,A_1),B)),C) ) ).

fof(fact_903_mod__mult__mult2,axiom,
    ! [X_a] :
      ( ! [A_1,C,B] : hAPP(X_a,X_a,times_times(X_a,hAPP(X_a,X_a,div_mod(X_a,A_1),B)),C) = hAPP(X_a,X_a,div_mod(X_a,hAPP(X_a,X_a,times_times(X_a,A_1),C)),hAPP(X_a,X_a,times_times(X_a,B),C))
     <= semiring_div(X_a) ) ).

fof(fact_700_mult__less__cancel2,axiom,
    ! [Ma,K,N] :
      ( ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),Ma),N))
        & hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),zero_zero(nat)),K)) )
    <=> hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less(nat),hAPP(nat,nat,times_times(nat,Ma),K)),hAPP(nat,nat,times_times(nat,N),K))) ) ).

fof(fact_477_zdvd__zdiffD,axiom,
    ! [K_1,M,N_1] :
      ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),dvd_dvd(int),K_1),hAPP(int,int,minus_minus(int,M),N_1)))
     => ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),dvd_dvd(int),K_1),M))
       <= hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),dvd_dvd(int),K_1),N_1)) ) ) ).

fof(fact_215_comm__semiring__1__class_Onormalizing__semiring__rules_I16_J,axiom,
    ! [X_a] :
      ( comm_semiring_1(X_a)
     => ! [Lx,Ly,Rx] : hAPP(X_a,X_a,times_times(X_a,hAPP(X_a,X_a,times_times(X_a,Lx),Ly)),Rx) = hAPP(X_a,X_a,times_times(X_a,hAPP(X_a,X_a,times_times(X_a,Lx),Rx)),Ly) ) ).

fof(fact_587_nat__add__right__cancel,axiom,
    ! [Ma,K,N] :
      ( hAPP(nat,nat,plus_plus(nat,N),K) = hAPP(nat,nat,plus_plus(nat,Ma),K)
    <=> N = Ma ) ).

fof(fact_939_neg__mod__bound,axiom,
    ! [A_1,B] :
      ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),B),hAPP(int,int,div_mod(int,A_1),B)))
     <= hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),ord_less(int),B),zero_zero(int))) ) ).

fof(fact_205_zdvd__mult__cancel,axiom,
    ! [K_1,M,N_1] :
      ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),dvd_dvd(int),hAPP(int,int,times_times(int,K_1),M)),hAPP(int,int,times_times(int,K_1),N_1)))
     => ( hBOOL(hAPP(int,bool,hAPP(int,fun(int,bool),dvd_dvd(int),M),N_1))
       <= ti(int,K_1) != zero_zero(int) ) ) ).

fof(fact_605_diff__le__mono,axiom,
    ! [L_1,M,N_1] :
      ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),M),N_1))
     => hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),hAPP(nat,nat,minus_minus(nat,M),L_1)),hAPP(nat,nat,minus_minus(nat,N_1),L_1))) ) ).

fof(fact_736_nat__le__add__iff2,axiom,
    ! [U,Ma,N,I_2,J_2] :
      ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),I_2),J_2))
     => ( hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),hAPP(nat,nat,plus_plus(nat,hAPP(nat,nat,times_times(nat,I_2),U)),Ma)),hAPP(nat,nat,plus_plus(nat,hAPP(nat,nat,times_times(nat,J_2),U)),N)))
      <=> hBOOL(hAPP(nat,bool,hAPP(nat,fun(nat,bool),ord_less_eq(nat),Ma),hAPP(nat,nat,plus_plus(nat,hAPP(nat,nat,times_times(nat,hAPP(nat,nat,minus_minus(nat,J_2),I_2)),U)),N))) ) ) ).

