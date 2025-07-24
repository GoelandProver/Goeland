fof(arity_Polynomial__Opoly__Rings_Olinordered__semidom,axiom,
    ! [T_1] :
      ( class_Rings_Olinordered__semidom(tc_Polynomial_Opoly(T_1))
     <= class_Rings_Olinordered__idom(T_1) ) ).

fof(fact_zmod__self,axiom,
    ! [V_a] : c_Divides_Odiv__class_Omod(tc_Int_Oint,V_a,V_a) = c_Groups_Ozero__class_Ozero(tc_Int_Oint) ).

fof(fact_mult__left__le__imp__le,axiom,
    ! [V_b,V_a,V_c,T_a] :
      ( ( ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),c_Groups_Ozero__class_Ozero(T_a)),V_c))
         => hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,V_a),V_b)) )
       <= hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_c),V_a)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_c),V_b))) )
     <= class_Rings_Olinordered__semiring__strict(T_a) ) ).

fof(arity_Nat__Onat__Rings_Oordered__comm__semiring,axiom,
    class_Rings_Oordered__comm__semiring(tc_Nat_Onat) ).

fof(fact_zmod__simps_I1_J,axiom,
    ! [V_b,V_c,V_a,T_a] :
      ( c_Divides_Odiv__class_Omod(T_a,hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),c_Divides_Odiv__class_Omod(T_a,V_a,V_c)),V_b),V_c) = c_Divides_Odiv__class_Omod(T_a,hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),V_a),V_b),V_c)
     <= class_Divides_Osemiring__div(T_a) ) ).

fof(fact_q_I1_J,axiom,
    c_Fundamental__Theorem__Algebra__Mirabelle_Opsize(tc_Complex_Ocomplex,v_q____) = c_Fundamental__Theorem__Algebra__Mirabelle_Opsize(tc_Complex_Ocomplex,v_pa____) ).

fof(fact_mod__mult__self2,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( c_Divides_Odiv__class_Omod(T_a,V_a,V_b) = c_Divides_Odiv__class_Omod(T_a,hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),V_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b),V_c)),V_b)
     <= class_Divides_Osemiring__div(T_a) ) ).

fof(fact_inverse__inverse__eq,axiom,
    ! [V_a,T_a] :
      ( class_Rings_Odivision__ring__inverse__zero(T_a)
     => c_Rings_Oinverse__class_Oinverse(T_a,c_Rings_Oinverse__class_Oinverse(T_a,V_a)) = V_a ) ).

fof(fact_zmult__1__right,axiom,
    ! [V_z] : hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_z),c_Groups_Oone__class_Oone(tc_Int_Oint)) = V_z ).

fof(fact_norm__zero,axiom,
    ! [T_a] :
      ( c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal) = c_RealVector_Onorm__class_Onorm(T_a,c_Groups_Ozero__class_Ozero(T_a))
     <= class_RealVector_Oreal__normed__vector(T_a) ) ).

fof(fact_mod__diff__cong,axiom,
    ! [V_b_H,V_b,V_a_H,V_c,V_a,T_a] :
      ( ( ( c_Divides_Odiv__class_Omod(T_a,V_b,V_c) = c_Divides_Odiv__class_Omod(T_a,V_b_H,V_c)
         => c_Divides_Odiv__class_Omod(T_a,hAPP(hAPP(c_Groups_Ominus__class_Ominus(T_a),V_a),V_b),V_c) = c_Divides_Odiv__class_Omod(T_a,hAPP(hAPP(c_Groups_Ominus__class_Ominus(T_a),V_a_H),V_b_H),V_c) )
       <= c_Divides_Odiv__class_Omod(T_a,V_a_H,V_c) = c_Divides_Odiv__class_Omod(T_a,V_a,V_c) )
     <= class_Divides_Oring__div(T_a) ) ).

fof(fact_add__less__le__mono,axiom,
    ! [V_d,V_c,V_b,V_a,T_a] :
      ( ( ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,V_c),V_d))
         => hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),V_a),V_c)),hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),V_b),V_d))) )
       <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_a),V_b)) )
     <= class_Groups_Oordered__cancel__ab__semigroup__add(T_a) ) ).

fof(fact_ord__eq__le__trans,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( class_Orderings_Oord(T_a)
     => ( V_a = V_b
       => ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,V_b),V_c))
         => hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,V_a),V_c)) ) ) ) ).

fof(fact_Least__le,axiom,
    ! [V_k_2,V_P_2,T_a] :
      ( ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,c_Orderings_Oord__class_OLeast(T_a,V_P_2)),V_k_2))
       <= hBOOL(hAPP(V_P_2,V_k_2)) )
     <= class_Orderings_Owellorder(T_a) ) ).

fof(arity_HOL__Obool__Orderings_Oorder,axiom,
    class_Orderings_Oorder(tc_HOL_Obool) ).

fof(arity_Int__Oint__Rings_Ocomm__semiring__1,axiom,
    class_Rings_Ocomm__semiring__1(tc_Int_Oint) ).

fof(fact_le__diff__conv,axiom,
    ! [V_i_2,V_k_2,V_j_2] :
      ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_j_2),hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Nat_Onat),V_i_2),V_k_2)))
    <=> hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,hAPP(hAPP(c_Groups_Ominus__class_Ominus(tc_Nat_Onat),V_j_2),V_k_2)),V_i_2)) ) ).

fof(fact_mult__left_Ozero,axiom,
    ! [V_y,T_a] :
      ( hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Groups_Ozero__class_Ozero(T_a)),V_y) = c_Groups_Ozero__class_Ozero(T_a)
     <= class_RealVector_Oreal__normed__algebra(T_a) ) ).

fof(arity_Polynomial__Opoly__Rings_Olinordered__comm__semiring__strict,axiom,
    ! [T_1] :
      ( class_Rings_Olinordered__comm__semiring__strict(tc_Polynomial_Opoly(T_1))
     <= class_Rings_Olinordered__idom(T_1) ) ).

fof(fact__096_B_Bthesis_O_A_I_B_Bc_O_AALL_Aw_O_Acmod_A_Ipoly_Ap_Ac_J_A_060_061_Acmod_A_Ipoly_Ap_Aw_J_A_061_061_062_Athesis_J_A_061_061_062_Athesis_096,axiom,
    ~ ! [B_c] :
        ~ ! [B_w] : hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_RealVector_Onorm__class_Onorm(tc_Complex_Ocomplex,hAPP(c_Polynomial_Opoly(tc_Complex_Ocomplex,v_pa____),B_c))),c_RealVector_Onorm__class_Onorm(tc_Complex_Ocomplex,hAPP(c_Polynomial_Opoly(tc_Complex_Ocomplex,v_pa____),B_w)))) ).

fof(fact_norm__triangle__ineq,axiom,
    ! [V_y,V_x,T_a] :
      ( class_RealVector_Oreal__normed__vector(T_a)
     => hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_RealVector_Onorm__class_Onorm(T_a,hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),V_x),V_y))),hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_RealDef_Oreal),c_RealVector_Onorm__class_Onorm(T_a,V_x)),c_RealVector_Onorm__class_Onorm(T_a,V_y)))) ) ).

fof(arity_RealDef__Oreal__Groups_Olinordered__ab__group__add,axiom,
    class_Groups_Olinordered__ab__group__add(tc_RealDef_Oreal) ).

fof(arity_RealDef__Oreal__Groups_Ozero,axiom,
    class_Groups_Ozero(tc_RealDef_Oreal) ).

fof(arity_Nat__Onat__Groups_Oordered__ab__semigroup__add__imp__le,axiom,
    class_Groups_Oordered__ab__semigroup__add__imp__le(tc_Nat_Onat) ).

fof(fact_power__0__Suc,axiom,
    ! [V_n,T_a] :
      ( c_Groups_Ozero__class_Ozero(T_a) = hAPP(hAPP(c_Power_Opower__class_Opower(T_a),c_Groups_Ozero__class_Ozero(T_a)),hAPP(c_Nat_OSuc,V_n))
     <= ( class_Power_Opower(T_a)
        & class_Rings_Osemiring__0(T_a) ) ) ).

fof(arity_Complex__Ocomplex__Groups_Oab__semigroup__mult,axiom,
    class_Groups_Oab__semigroup__mult(tc_Complex_Ocomplex) ).

fof(fact_order__le__neq__trans,axiom,
    ! [V_b,V_a,T_a] :
      ( class_Orderings_Oorder(T_a)
     => ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,V_a),V_b))
       => ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_a),V_b))
         <= V_a != V_b ) ) ) ).

fof(fact_poly__1,axiom,
    ! [V_x,T_a] :
      ( class_Rings_Ocomm__semiring__1(T_a)
     => c_Groups_Oone__class_Oone(T_a) = hAPP(c_Polynomial_Opoly(T_a,c_Groups_Oone__class_Oone(tc_Polynomial_Opoly(T_a))),V_x) ) ).

fof(fact_degree__add__eq__left,axiom,
    ! [V_p,V_q,T_a] :
      ( class_Groups_Ocomm__monoid__add(T_a)
     => ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),c_Polynomial_Odegree(T_a,V_q)),c_Polynomial_Odegree(T_a,V_p)))
       => c_Polynomial_Odegree(T_a,V_p) = c_Polynomial_Odegree(T_a,hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Polynomial_Opoly(T_a)),V_p),V_q)) ) ) ).

fof(fact_Suc__eq__plus1__left,axiom,
    ! [V_n] : hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Nat_Onat),c_Groups_Oone__class_Oone(tc_Nat_Onat)),V_n) = hAPP(c_Nat_OSuc,V_n) ).

fof(arity_Complex__Ocomplex__Rings_Oring__1,axiom,
    class_Rings_Oring__1(tc_Complex_Ocomplex) ).

fof(fact_zmult__assoc,axiom,
    ! [V_z3,V_z2,V_z1] : hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_z1),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_z2),V_z3)) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_z1),V_z2)),V_z3) ).

fof(arity_RealDef__Oreal__Rings_Olinordered__idom,axiom,
    class_Rings_Olinordered__idom(tc_RealDef_Oreal) ).

fof(arity_RealDef__Oreal__Groups_Ocancel__ab__semigroup__add,axiom,
    class_Groups_Ocancel__ab__semigroup__add(tc_RealDef_Oreal) ).

fof(fact_order__less__asym_H,axiom,
    ! [V_b,V_a,T_a] :
      ( ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_a),V_b))
       => ~ hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_b),V_a)) )
     <= class_Orderings_Opreorder(T_a) ) ).

fof(fact_leD,axiom,
    ! [V_x,V_y,T_a] :
      ( ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,V_y),V_x))
       => ~ hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_x),V_y)) )
     <= class_Orderings_Olinorder(T_a) ) ).

fof(fact_Bseq__realpow,axiom,
    ! [V_x_2] :
      ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)),V_x_2))
     => ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,V_x_2),c_Groups_Oone__class_Oone(tc_RealDef_Oreal)))
       => c_SEQ_OBseq(tc_RealDef_Oreal,hAPP(c_Power_Opower__class_Opower(tc_RealDef_Oreal),V_x_2)) ) ) ).

fof(fact_mod__mult__mult1,axiom,
    ! [V_b,V_a,V_c,T_a] :
      ( class_Divides_Osemiring__div(T_a)
     => hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_c),c_Divides_Odiv__class_Omod(T_a,V_a,V_b)) = c_Divides_Odiv__class_Omod(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_c),V_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_c),V_b)) ) ).

fof(arity_Int__Oint__Rings_Oordered__ring,axiom,
    class_Rings_Oordered__ring(tc_Int_Oint) ).

fof(fact_add__is__0,axiom,
    ! [V_n_2,V_m_2] :
      ( ( c_Groups_Ozero__class_Ozero(tc_Nat_Onat) = V_n_2
        & V_m_2 = c_Groups_Ozero__class_Ozero(tc_Nat_Onat) )
    <=> hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Nat_Onat),V_m_2),V_n_2) = c_Groups_Ozero__class_Ozero(tc_Nat_Onat) ) ).

fof(fact_zero__less__one,axiom,
    ! [T_a] :
      ( class_Rings_Olinordered__semidom(T_a)
     => hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),c_Groups_Ozero__class_Ozero(T_a)),c_Groups_Oone__class_Oone(T_a))) ) ).

fof(arity_Int__Oint__Int_Oring__char__0,axiom,
    class_Int_Oring__char__0(tc_Int_Oint) ).

fof(fact_diff__mult__distrib,axiom,
    ! [V_k,V_n,V_m] : hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),hAPP(hAPP(c_Groups_Ominus__class_Ominus(tc_Nat_Onat),V_m),V_n)),V_k) = hAPP(hAPP(c_Groups_Ominus__class_Ominus(tc_Nat_Onat),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_m),V_k)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_n),V_k)) ).

fof(fact_inverse__negative__imp__negative,axiom,
    ! [V_a,T_a] :
      ( class_Fields_Olinordered__field(T_a)
     => ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),c_Rings_Oinverse__class_Oinverse(T_a,V_a)),c_Groups_Ozero__class_Ozero(T_a)))
       => ( V_a != c_Groups_Ozero__class_Ozero(T_a)
         => hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_a),c_Groups_Ozero__class_Ozero(T_a))) ) ) ) ).

fof(fact_coeff__smult,axiom,
    ! [V_n,V_p,V_a,T_a] :
      ( class_Rings_Ocomm__semiring__0(T_a)
     => hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),hAPP(c_Polynomial_Ocoeff(T_a,V_p),V_n)) = hAPP(c_Polynomial_Ocoeff(T_a,c_Polynomial_Osmult(T_a,V_a,V_p)),V_n) ) ).

fof(fact_real__le__refl,axiom,
    ! [V_w] : hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,V_w),V_w)) ).

fof(fact_ln__add__one__self__le__self,axiom,
    ! [V_x] :
      ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Transcendental_Oln(hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_RealDef_Oreal),c_Groups_Oone__class_Oone(tc_RealDef_Oreal)),V_x))),V_x))
     <= hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)),V_x)) ) ).

fof(fact_nat__add__left__cancel__less,axiom,
    ! [V_n_2,V_m_2,V_k_2] :
      ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),V_m_2),V_n_2))
    <=> hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Nat_Onat),V_k_2),V_m_2)),hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Nat_Onat),V_k_2),V_n_2))) ) ).

fof(arity_Int__Oint__Rings_Osemiring__0,axiom,
    class_Rings_Osemiring__0(tc_Int_Oint) ).

fof(fact_add__strict__increasing,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( class_Groups_Oordered__comm__monoid__add(T_a)
     => ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),c_Groups_Ozero__class_Ozero(T_a)),V_a))
       => ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_b),hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),V_a),V_c)))
         <= hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,V_b),V_c)) ) ) ) ).

fof(arity_RealDef__Oreal__Groups_Omonoid__add,axiom,
    class_Groups_Omonoid__add(tc_RealDef_Oreal) ).

fof(arity_Nat__Onat__Groups_Ocancel__semigroup__add,axiom,
    class_Groups_Ocancel__semigroup__add(tc_Nat_Onat) ).

fof(fact_pdivmod__rel__unique__mod,axiom,
    ! [V_r2,V_q2,V_r1,V_q1,V_y,V_x,T_a] :
      ( class_Fields_Ofield(T_a)
     => ( c_Polynomial_Opdivmod__rel(T_a,V_x,V_y,V_q1,V_r1)
       => ( c_Polynomial_Opdivmod__rel(T_a,V_x,V_y,V_q2,V_r2)
         => V_r1 = V_r2 ) ) ) ).

fof(fact_coeff__inverse,axiom,
    ! [V_x_2,T_a] :
      ( class_Groups_Ozero(T_a)
     => V_x_2 = c_Polynomial_OAbs__poly(T_a,c_Polynomial_Ocoeff(T_a,V_x_2)) ) ).

fof(fact_Suc__leD,axiom,
    ! [V_n,V_m] :
      ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m),V_n))
     <= hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,hAPP(c_Nat_OSuc,V_m)),V_n)) ) ).

fof(fact_crossproduct__eq,axiom,
    ! [V_z_2,V_x_2,V_y_2,V_w_2,T_a] :
      ( class_Semiring__Normalization_Ocomm__semiring__1__cancel__crossproduct(T_a)
     => ( ( V_x_2 = V_w_2
          | V_z_2 = V_y_2 )
      <=> hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_w_2),V_y_2)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_x_2),V_z_2)) = hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_w_2),V_z_2)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_x_2),V_y_2)) ) ) ).

fof(fact_mult__cancel1,axiom,
    ! [V_n_2,V_m_2,V_k_2] :
      ( hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_k_2),V_m_2) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_k_2),V_n_2)
    <=> ( V_n_2 = V_m_2
        | c_Groups_Ozero__class_Ozero(tc_Nat_Onat) = V_k_2 ) ) ).

fof(fact_unique__quotient__lemma,axiom,
    ! [V_r,V_q,V_r_H,V_q_H,V_b] :
      ( ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint)),V_r_H))
       => ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Int_Oint),V_r_H),V_b))
         => ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,V_q_H),V_q))
           <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Int_Oint),V_r),V_b)) ) ) )
     <= hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Int_Oint),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_b),V_q_H)),V_r_H)),hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Int_Oint),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_b),V_q)),V_r))) ) ).

fof(fact_mult_Ononneg__bounded,axiom,
    ! [T_a] :
      ( class_RealVector_Oreal__normed__algebra(T_a)
     => ? [B_K] :
          ( ! [B_a,B_b] : hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_RealVector_Onorm__class_Onorm(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),B_a),B_b))),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),c_RealVector_Onorm__class_Onorm(T_a,B_a)),c_RealVector_Onorm__class_Onorm(T_a,B_b))),B_K)))
          & hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)),B_K)) ) ) ).

fof(fact_mult__is__0,axiom,
    ! [V_n_2,V_m_2] :
      ( hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_m_2),V_n_2) = c_Groups_Ozero__class_Ozero(tc_Nat_Onat)
    <=> ( c_Groups_Ozero__class_Ozero(tc_Nat_Onat) = V_m_2
        | c_Groups_Ozero__class_Ozero(tc_Nat_Onat) = V_n_2 ) ) ).

fof(fact_less__or__eq__imp__le,axiom,
    ! [V_n,V_m] :
      ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m),V_n))
     <= ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),V_m),V_n))
        | V_n = V_m ) ) ).

fof(fact_mult__strict__mono_H,axiom,
    ! [V_d,V_c,V_b,V_a,T_a] :
      ( class_Rings_Olinordered__semiring__strict(T_a)
     => ( ( ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a)),V_a))
           => ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a)),V_c))
             => hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_c)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b),V_d))) ) )
         <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_c),V_d)) )
       <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_a),V_b)) ) ) ).

fof(fact_lemma__NBseq__def,axiom,
    ! [V_X_2,T_b] :
      ( class_RealVector_Oreal__normed__vector(T_b)
     => ( ? [B_N] :
          ! [B_n] : hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_RealVector_Onorm__class_Onorm(T_b,hAPP(V_X_2,B_n))),c_RealDef_Oreal(tc_Nat_Onat,hAPP(c_Nat_OSuc,B_N))))
      <=> ? [B_K] :
            ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_RealDef_Oreal),c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)),B_K))
            & ! [B_n] : hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_RealVector_Onorm__class_Onorm(T_b,hAPP(V_X_2,B_n))),B_K)) ) ) ) ).

fof(arity_Polynomial__Opoly__Rings_Oordered__semiring,axiom,
    ! [T_1] :
      ( class_Rings_Oordered__semiring(tc_Polynomial_Opoly(T_1))
     <= class_Rings_Olinordered__idom(T_1) ) ).

fof(arity_Polynomial__Opoly__Groups_Olinordered__ab__group__add,axiom,
    ! [T_1] :
      ( class_Groups_Olinordered__ab__group__add(tc_Polynomial_Opoly(T_1))
     <= class_Rings_Olinordered__idom(T_1) ) ).

fof(fact_inverse__less__imp__less,axiom,
    ! [V_b,V_a,T_a] :
      ( class_Fields_Olinordered__field(T_a)
     => ( ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_b),V_a))
         <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),c_Groups_Ozero__class_Ozero(T_a)),V_a)) )
       <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),c_Rings_Oinverse__class_Oinverse(T_a,V_a)),c_Rings_Oinverse__class_Oinverse(T_a,V_b))) ) ) ).

fof(arity_Complex__Ocomplex__Groups_Oab__group__add,axiom,
    class_Groups_Oab__group__add(tc_Complex_Ocomplex) ).

fof(arity_Int__Oint__Rings_Olinordered__semiring__1,axiom,
    class_Rings_Olinordered__semiring__1(tc_Int_Oint) ).

fof(fact_real__of__nat__add,axiom,
    ! [V_n,V_m] : c_RealDef_Oreal(tc_Nat_Onat,hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Nat_Onat),V_m),V_n)) = hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_RealDef_Oreal),c_RealDef_Oreal(tc_Nat_Onat,V_m)),c_RealDef_Oreal(tc_Nat_Onat,V_n)) ).

fof(arity_Int__Oint__Groups_Ocancel__semigroup__add,axiom,
    class_Groups_Ocancel__semigroup__add(tc_Int_Oint) ).

fof(fact_div__smult__left,axiom,
    ! [V_y,V_x,V_a,T_a] :
      ( class_Fields_Ofield(T_a)
     => c_Polynomial_Osmult(T_a,V_a,c_Divides_Odiv__class_Odiv(tc_Polynomial_Opoly(T_a),V_x,V_y)) = c_Divides_Odiv__class_Odiv(tc_Polynomial_Opoly(T_a),c_Polynomial_Osmult(T_a,V_a,V_x),V_y) ) ).

fof(fact_mult__le__less__imp__less,axiom,
    ! [V_d,V_c,V_b,V_a,T_a] :
      ( class_Rings_Olinordered__semiring__strict(T_a)
     => ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,V_a),V_b))
       => ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_c),V_d))
         => ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),c_Groups_Ozero__class_Ozero(T_a)),V_a))
           => ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a)),V_c))
             => hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_c)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b),V_d))) ) ) ) ) ) ).

fof(arity_Nat__Onat__Rings_Ocomm__semiring__0,axiom,
    class_Rings_Ocomm__semiring__0(tc_Nat_Onat) ).

fof(fact_mod__by__0,axiom,
    ! [V_a,T_a] :
      ( V_a = c_Divides_Odiv__class_Omod(T_a,V_a,c_Groups_Ozero__class_Ozero(T_a))
     <= class_Divides_Osemiring__div(T_a) ) ).

fof(fact_constant__def,axiom,
    ! [V_f_2,T_b,T_a] :
      ( ! [B_x,B_y] : hAPP(V_f_2,B_x) = hAPP(V_f_2,B_y)
    <=> c_Fundamental__Theorem__Algebra__Mirabelle_Oconstant(T_a,T_b,V_f_2) ) ).

fof(fact_leading__coeff__0__iff,axiom,
    ! [V_pb_2,T_a] :
      ( class_Groups_Ozero(T_a)
     => ( V_pb_2 = c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a))
      <=> hAPP(c_Polynomial_Ocoeff(T_a,V_pb_2),c_Polynomial_Odegree(T_a,V_pb_2)) = c_Groups_Ozero__class_Ozero(T_a) ) ) ).

fof(arity_Complex__Ocomplex__Rings_Ocomm__ring,axiom,
    class_Rings_Ocomm__ring(tc_Complex_Ocomplex) ).

fof(fact_add__neg__neg,axiom,
    ! [V_b,V_a,T_a] :
      ( class_Groups_Oordered__comm__monoid__add(T_a)
     => ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_a),c_Groups_Ozero__class_Ozero(T_a)))
       => ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_b),c_Groups_Ozero__class_Ozero(T_a)))
         => hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),V_a),V_b)),c_Groups_Ozero__class_Ozero(T_a))) ) ) ) ).

fof(fact_divmod__int__rel__mod__eq,axiom,
    ! [V_y,V_q_1,V_b_1,V_a_1] :
      ( V_a_1 = hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Int_Oint),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_b_1),V_q_1)),V_y)
     => ( ( ( ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,V_y),c_Groups_Ozero__class_Ozero(tc_Int_Oint)))
              & hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Int_Oint),V_b_1),V_y)) )
           <= ~ hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Int_Oint),c_Groups_Ozero__class_Ozero(tc_Int_Oint)),V_b_1)) )
          & ( ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Int_Oint),V_y),V_b_1))
              & hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint)),V_y)) )
           <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Int_Oint),c_Groups_Ozero__class_Ozero(tc_Int_Oint)),V_b_1)) ) )
       => ( c_Groups_Ozero__class_Ozero(tc_Int_Oint) != V_b_1
         => V_y = c_Divides_Odiv__class_Omod(tc_Int_Oint,V_a_1,V_b_1) ) ) ) ).

fof(fact_ex__least__nat__less,axiom,
    ! [V_n_2,V_P_2] :
      ( ~ hBOOL(hAPP(V_P_2,c_Groups_Ozero__class_Ozero(tc_Nat_Onat)))
     => ( hBOOL(hAPP(V_P_2,V_n_2))
       => ? [B_k] :
            ( ! [B_i] :
                ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,B_i),B_k))
               => ~ hBOOL(hAPP(V_P_2,B_i)) )
            & hBOOL(hAPP(V_P_2,hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Nat_Onat),B_k),c_Groups_Oone__class_Oone(tc_Nat_Onat))))
            & hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),B_k),V_n_2)) ) ) ) ).

fof(fact_mod__add__left__eq,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( c_Divides_Odiv__class_Omod(T_a,hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),V_a),V_b),V_c) = c_Divides_Odiv__class_Omod(T_a,hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),c_Divides_Odiv__class_Omod(T_a,V_a,V_c)),V_b),V_c)
     <= class_Divides_Osemiring__div(T_a) ) ).

fof(fact_nat__add__left__cancel,axiom,
    ! [V_n_2,V_m_2,V_k_2] :
      ( hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Nat_Onat),V_k_2),V_m_2) = hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Nat_Onat),V_k_2),V_n_2)
    <=> V_m_2 = V_n_2 ) ).

fof(fact_linorder__neqE__linordered__idom,axiom,
    ! [V_y,V_x,T_a] :
      ( class_Rings_Olinordered__idom(T_a)
     => ( ( ~ hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_x),V_y))
         => hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_y),V_x)) )
       <= V_y != V_x ) ) ).

fof(fact_div__mult__self__is__m,axiom,
    ! [V_m,V_n] :
      ( V_m = c_Divides_Odiv__class_Odiv(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_m),V_n),V_n)
     <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),c_Groups_Ozero__class_Ozero(tc_Nat_Onat)),V_n)) ) ).

fof(fact_add__diff__assoc,axiom,
    ! [V_i,V_j,V_k] :
      ( hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Nat_Onat),V_i),hAPP(hAPP(c_Groups_Ominus__class_Ominus(tc_Nat_Onat),V_j),V_k)) = hAPP(hAPP(c_Groups_Ominus__class_Ominus(tc_Nat_Onat),hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Nat_Onat),V_i),V_j)),V_k)
     <= hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_k),V_j)) ) ).

fof(fact_zero__less__mult__pos,axiom,
    ! [V_b,V_a,T_a] :
      ( class_Rings_Olinordered__semiring__strict(T_a)
     => ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),c_Groups_Ozero__class_Ozero(T_a)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b)))
       => ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),c_Groups_Ozero__class_Ozero(T_a)),V_b))
         <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),c_Groups_Ozero__class_Ozero(T_a)),V_a)) ) ) ) ).

fof(fact_norm__inverse,axiom,
    ! [V_a,T_a] :
      ( c_Rings_Oinverse__class_Oinverse(tc_RealDef_Oreal,c_RealVector_Onorm__class_Onorm(T_a,V_a)) = c_RealVector_Onorm__class_Onorm(T_a,c_Rings_Oinverse__class_Oinverse(T_a,V_a))
     <= ( class_Rings_Odivision__ring__inverse__zero(T_a)
        & class_RealVector_Oreal__normed__div__algebra(T_a) ) ) ).

fof(fact_n__not__Suc__n,axiom,
    ! [V_n] : V_n != hAPP(c_Nat_OSuc,V_n) ).

fof(fact_mod__mult__cong,axiom,
    ! [V_b_H,V_b,V_a_H,V_c,V_a,T_a] :
      ( class_Divides_Osemiring__div(T_a)
     => ( c_Divides_Odiv__class_Omod(T_a,V_a,V_c) = c_Divides_Odiv__class_Omod(T_a,V_a_H,V_c)
       => ( c_Divides_Odiv__class_Omod(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a_H),V_b_H),V_c) = c_Divides_Odiv__class_Omod(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b),V_c)
         <= c_Divides_Odiv__class_Omod(T_a,V_b,V_c) = c_Divides_Odiv__class_Omod(T_a,V_b_H,V_c) ) ) ) ).

fof(fact_mod__mult__left__eq,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( class_Divides_Osemiring__div(T_a)
     => c_Divides_Odiv__class_Omod(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Divides_Odiv__class_Omod(T_a,V_a,V_c)),V_b),V_c) = c_Divides_Odiv__class_Omod(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b),V_c) ) ).

fof(fact_mod__mult__self4,axiom,
    ! [V_m,V_n,V_k] : c_Divides_Odiv__class_Omod(tc_Nat_Onat,hAPP(c_Nat_OSuc,V_m),V_n) = c_Divides_Odiv__class_Omod(tc_Nat_Onat,hAPP(c_Nat_OSuc,hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Nat_Onat),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_k),V_n)),V_m)),V_n) ).

fof(fact_mult__right_Ozero,axiom,
    ! [V_x,T_a] :
      ( class_RealVector_Oreal__normed__algebra(T_a)
     => hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_x),c_Groups_Ozero__class_Ozero(T_a)) = c_Groups_Ozero__class_Ozero(T_a) ) ).

fof(fact_div__mod__equality_H,axiom,
    ! [V_n,V_m] : hAPP(hAPP(c_Groups_Ominus__class_Ominus(tc_Nat_Onat),V_m),c_Divides_Odiv__class_Omod(tc_Nat_Onat,V_m,V_n)) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),c_Divides_Odiv__class_Odiv(tc_Nat_Onat,V_m,V_n)),V_n) ).

fof(fact_less__fun__def,axiom,
    ! [V_g_2,V_f_2,T_a,T_b] :
      ( ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_fun(T_a,T_b)),V_f_2),V_g_2))
      <=> ( ~ hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,T_b),V_g_2),V_f_2))
          & hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,T_b),V_f_2),V_g_2)) ) )
     <= class_Orderings_Oord(T_b) ) ).

fof(fact_mod__less__eq__dividend,axiom,
    ! [V_n,V_m] : hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,c_Divides_Odiv__class_Omod(tc_Nat_Onat,V_m,V_n)),V_m)) ).

fof(fact_natceiling__le__eq,axiom,
    ! [V_a_2,V_x_2] :
      ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)),V_x_2))
     => ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,V_x_2),c_RealDef_Oreal(tc_Nat_Onat,V_a_2)))
      <=> hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,c_RComplete_Onatceiling(V_x_2)),V_a_2)) ) ) ).

fof(fact_poly__diff,axiom,
    ! [V_x,V_q,V_p,T_a] :
      ( hAPP(c_Polynomial_Opoly(T_a,hAPP(hAPP(c_Groups_Ominus__class_Ominus(tc_Polynomial_Opoly(T_a)),V_p),V_q)),V_x) = hAPP(hAPP(c_Groups_Ominus__class_Ominus(T_a),hAPP(c_Polynomial_Opoly(T_a,V_p),V_x)),hAPP(c_Polynomial_Opoly(T_a,V_q),V_x))
     <= class_Rings_Ocomm__ring(T_a) ) ).

fof(fact_real__mult__le__cancel__iff2,axiom,
    ! [V_y_2,V_x_2,V_z_2] :
      ( ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),V_z_2),V_x_2)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),V_z_2),V_y_2)))
      <=> hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,V_x_2),V_y_2)) )
     <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_RealDef_Oreal),c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)),V_z_2)) ) ).

fof(fact_mult__left__le__one__le,axiom,
    ! [V_y,V_x,T_a] :
      ( ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a)),V_x))
       => ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a)),V_y))
         => ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,V_y),c_Groups_Oone__class_Oone(T_a)))
           => hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_y),V_x)),V_x)) ) ) )
     <= class_Rings_Olinordered__idom(T_a) ) ).

fof(arity_Nat__Onat__Rings_Ocomm__semiring__1,axiom,
    class_Rings_Ocomm__semiring__1(tc_Nat_Onat) ).

fof(fact_add__leD1,axiom,
    ! [V_n,V_k,V_m] :
      ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Nat_Onat),V_m),V_k)),V_n))
     => hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m),V_n)) ) ).

fof(fact_order__trans,axiom,
    ! [V_z,V_y,V_x,T_a] :
      ( ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,V_x),V_y))
       => ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,V_y),V_z))
         => hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,V_x),V_z)) ) )
     <= class_Orderings_Opreorder(T_a) ) ).

fof(arity_Complex__Ocomplex__Rings_Ocomm__semiring__0,axiom,
    class_Rings_Ocomm__semiring__0(tc_Complex_Ocomplex) ).

fof(fact_ln__one,axiom,
    c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal) = c_Transcendental_Oln(c_Groups_Oone__class_Oone(tc_RealDef_Oreal)) ).

fof(arity_Polynomial__Opoly__Groups_Oab__group__add,axiom,
    ! [T_1] :
      ( class_Groups_Oab__group__add(tc_Polynomial_Opoly(T_1))
     <= class_Groups_Oab__group__add(T_1) ) ).

fof(fact_real__mult__order,axiom,
    ! [V_y,V_x] :
      ( ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_RealDef_Oreal),c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)),V_y))
       => hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_RealDef_Oreal),c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),V_x),V_y))) )
     <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_RealDef_Oreal),c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)),V_x)) ) ).

fof(fact_not__less__less__Suc__eq,axiom,
    ! [V_m_2,V_n_2] :
      ( ( V_n_2 = V_m_2
      <=> hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),V_n_2),hAPP(c_Nat_OSuc,V_m_2))) )
     <= ~ hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),V_n_2),V_m_2)) ) ).

fof(fact_inverse__eq__iff__eq,axiom,
    ! [V_b_2,V_a_2,T_a] :
      ( class_Rings_Odivision__ring__inverse__zero(T_a)
     => ( V_a_2 = V_b_2
      <=> c_Rings_Oinverse__class_Oinverse(T_a,V_a_2) = c_Rings_Oinverse__class_Oinverse(T_a,V_b_2) ) ) ).

fof(arity_Int__Oint__Orderings_Olinorder,axiom,
    class_Orderings_Olinorder(tc_Int_Oint) ).

fof(fact_add__le__cancel__right,axiom,
    ! [V_b_2,V_ca_2,V_a_2,T_a] :
      ( ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),V_a_2),V_ca_2)),hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),V_b_2),V_ca_2)))
      <=> hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,V_a_2),V_b_2)) )
     <= class_Groups_Oordered__ab__semigroup__add__imp__le(T_a) ) ).

fof(fact_inverse__less__1__iff,axiom,
    ! [V_x_2,T_a] :
      ( class_Fields_Olinordered__field__inverse__zero(T_a)
     => ( ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),c_Groups_Oone__class_Oone(T_a)),V_x_2))
          | hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,V_x_2),c_Groups_Ozero__class_Ozero(T_a))) )
      <=> hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),c_Rings_Oinverse__class_Oinverse(T_a,V_x_2)),c_Groups_Oone__class_Oone(T_a))) ) ) ).

fof(fact_natfloor__neg,axiom,
    ! [V_x] :
      ( c_Groups_Ozero__class_Ozero(tc_Nat_Onat) = c_RComplete_Onatfloor(V_x)
     <= hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,V_x),c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal))) ) ).

fof(fact_mult__cancel2,axiom,
    ! [V_n_2,V_k_2,V_m_2] :
      ( hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_m_2),V_k_2) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_n_2),V_k_2)
    <=> ( V_n_2 = V_m_2
        | V_k_2 = c_Groups_Ozero__class_Ozero(tc_Nat_Onat) ) ) ).

fof(fact_div__mult__mult1__if,axiom,
    ! [V_b,V_a,V_c,T_a] :
      ( ( ( V_c = c_Groups_Ozero__class_Ozero(T_a)
         => c_Divides_Odiv__class_Odiv(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_c),V_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_c),V_b)) = c_Groups_Ozero__class_Ozero(T_a) )
        & ( c_Divides_Odiv__class_Odiv(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_c),V_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_c),V_b)) = c_Divides_Odiv__class_Odiv(T_a,V_a,V_b)
         <= c_Groups_Ozero__class_Ozero(T_a) != V_c ) )
     <= class_Divides_Osemiring__div(T_a) ) ).

fof(fact_power__Suc__less,axiom,
    ! [V_n,V_a,T_a] :
      ( ( ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_a),c_Groups_Oone__class_Oone(T_a)))
         => hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_n))),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_n))) )
       <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),c_Groups_Ozero__class_Ozero(T_a)),V_a)) )
     <= class_Rings_Olinordered__semidom(T_a) ) ).

fof(arity_Int__Oint__Groups_Omonoid__add,axiom,
    class_Groups_Omonoid__add(tc_Int_Oint) ).

fof(fact_add__strict__right__mono,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_a),V_b))
       => hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),V_a),V_c)),hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),V_b),V_c))) )
     <= class_Groups_Oordered__cancel__ab__semigroup__add(T_a) ) ).

fof(fact_zdiv__mono1__neg,axiom,
    ! [V_b,V_a_H,V_a] :
      ( ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Int_Oint),V_b),c_Groups_Ozero__class_Ozero(tc_Int_Oint)))
       => hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Divides_Odiv__class_Odiv(tc_Int_Oint,V_a_H,V_b)),c_Divides_Odiv__class_Odiv(tc_Int_Oint,V_a,V_b))) )
     <= hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,V_a),V_a_H)) ) ).

fof(fact_poly__pcompose,axiom,
    ! [V_x,V_q,V_p,T_a] :
      ( hAPP(c_Polynomial_Opoly(T_a,c_Polynomial_Opcompose(T_a,V_p,V_q)),V_x) = hAPP(c_Polynomial_Opoly(T_a,V_p),hAPP(c_Polynomial_Opoly(T_a,V_q),V_x))
     <= class_Rings_Ocomm__semiring__0(T_a) ) ).

fof(fact_add__less__cancel__right,axiom,
    ! [V_b_2,V_ca_2,V_a_2,T_a] :
      ( class_Groups_Oordered__ab__semigroup__add__imp__le(T_a)
     => ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_a_2),V_b_2))
      <=> hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),V_a_2),V_ca_2)),hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),V_b_2),V_ca_2))) ) ) ).

fof(fact_nat__mult__eq__1__iff,axiom,
    ! [V_n_2,V_m_2] :
      ( c_Groups_Oone__class_Oone(tc_Nat_Onat) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_m_2),V_n_2)
    <=> ( c_Groups_Oone__class_Oone(tc_Nat_Onat) = V_n_2
        & V_m_2 = c_Groups_Oone__class_Oone(tc_Nat_Onat) ) ) ).

fof(fact_mod__mult__self1__is__0,axiom,
    ! [V_a,V_b,T_a] :
      ( class_Divides_Osemiring__div(T_a)
     => c_Divides_Odiv__class_Omod(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b),V_a),V_b) = c_Groups_Ozero__class_Ozero(T_a) ) ).

fof(fact_split__mod,axiom,
    ! [V_k_2,V_n_2,V_P_2] :
      ( ( ( hBOOL(hAPP(V_P_2,V_n_2))
         <= V_k_2 = c_Groups_Ozero__class_Ozero(tc_Nat_Onat) )
        & ( V_k_2 != c_Groups_Ozero__class_Ozero(tc_Nat_Onat)
         => ! [B_i,B_j] :
              ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),B_j),V_k_2))
             => ( hBOOL(hAPP(V_P_2,B_j))
               <= V_n_2 = hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Nat_Onat),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_k_2),B_i)),B_j) ) ) ) )
    <=> hBOOL(hAPP(V_P_2,c_Divides_Odiv__class_Omod(tc_Nat_Onat,V_n_2,V_k_2))) ) ).

fof(fact_le__funE,axiom,
    ! [V_x_2,V_g_2,V_f_2,T_a,T_b] :
      ( ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,T_b),V_f_2),V_g_2))
       => hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_b,hAPP(V_f_2,V_x_2)),hAPP(V_g_2,V_x_2))) )
     <= class_Orderings_Oord(T_b) ) ).

fof(fact_nat__mult__div__cancel__disj,axiom,
    ! [V_n,V_m,V_k] :
      ( ( c_Divides_Odiv__class_Odiv(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_k),V_m),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_k),V_n)) = c_Groups_Ozero__class_Ozero(tc_Nat_Onat)
       <= c_Groups_Ozero__class_Ozero(tc_Nat_Onat) = V_k )
      & ( c_Divides_Odiv__class_Odiv(tc_Nat_Onat,V_m,V_n) = c_Divides_Odiv__class_Odiv(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_k),V_m),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_k),V_n))
       <= V_k != c_Groups_Ozero__class_Ozero(tc_Nat_Onat) ) ) ).

fof(fact_mult__le__mono1,axiom,
    ! [V_k,V_j,V_i] :
      ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_i),V_j))
     => hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_i),V_k)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_j),V_k))) ) ).

fof(fact_mult__eq__1__iff,axiom,
    ! [V_n_2,V_m_2] :
      ( hAPP(c_Nat_OSuc,c_Groups_Ozero__class_Ozero(tc_Nat_Onat)) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_m_2),V_n_2)
    <=> ( V_m_2 = hAPP(c_Nat_OSuc,c_Groups_Ozero__class_Ozero(tc_Nat_Onat))
        & hAPP(c_Nat_OSuc,c_Groups_Ozero__class_Ozero(tc_Nat_Onat)) = V_n_2 ) ) ).

fof(fact_ln__ge__zero__iff,axiom,
    ! [V_x_2] :
      ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_RealDef_Oreal),c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)),V_x_2))
     => ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)),c_Transcendental_Oln(V_x_2)))
      <=> hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Oone__class_Oone(tc_RealDef_Oreal)),V_x_2)) ) ) ).

fof(fact_coeff__inject,axiom,
    ! [V_y_2,V_x_2,T_a] :
      ( class_Groups_Ozero(T_a)
     => ( V_y_2 = V_x_2
      <=> c_Polynomial_Ocoeff(T_a,V_y_2) = c_Polynomial_Ocoeff(T_a,V_x_2) ) ) ).

fof(fact_real__of__nat__ge__zero,axiom,
    ! [V_n] : hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)),c_RealDef_Oreal(tc_Nat_Onat,V_n))) ).

fof(fact_le__natfloor,axiom,
    ! [V_a,V_x] :
      ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_x),c_RComplete_Onatfloor(V_a)))
     <= hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_RealDef_Oreal(tc_Nat_Onat,V_x)),V_a)) ) ).

fof(fact_power__Suc,axiom,
    ! [V_n,V_a,T_a] :
      ( hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_n)) = hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),hAPP(c_Nat_OSuc,V_n))
     <= class_Power_Opower(T_a) ) ).

fof(fact_ln__eq__zero__iff,axiom,
    ! [V_x_2] :
      ( ( V_x_2 = c_Groups_Oone__class_Oone(tc_RealDef_Oreal)
      <=> c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal) = c_Transcendental_Oln(V_x_2) )
     <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_RealDef_Oreal),c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)),V_x_2)) ) ).

fof(arity_RealDef__Oreal__Rings_Olinordered__semidom,axiom,
    class_Rings_Olinordered__semidom(tc_RealDef_Oreal) ).

fof(fact_div__if,axiom,
    ! [V_m,V_n] :
      ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),c_Groups_Ozero__class_Ozero(tc_Nat_Onat)),V_n))
     => ( ( c_Divides_Odiv__class_Odiv(tc_Nat_Onat,V_m,V_n) = c_Groups_Ozero__class_Ozero(tc_Nat_Onat)
         <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),V_m),V_n)) )
        & ( hAPP(c_Nat_OSuc,c_Divides_Odiv__class_Odiv(tc_Nat_Onat,hAPP(hAPP(c_Groups_Ominus__class_Ominus(tc_Nat_Onat),V_m),V_n),V_n)) = c_Divides_Odiv__class_Odiv(tc_Nat_Onat,V_m,V_n)
         <= ~ hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),V_m),V_n)) ) ) ) ).

fof(fact_split__pos__lemma,axiom,
    ! [V_n_2,V_P_2,V_k_2] :
      ( ( ! [B_i,B_j] :
            ( ( hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Int_Oint),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_k_2),B_i)),B_j) = V_n_2
              & hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Int_Oint),B_j),V_k_2))
              & hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint)),B_j)) )
           => hBOOL(hAPP(hAPP(V_P_2,B_i),B_j)) )
      <=> hBOOL(hAPP(hAPP(V_P_2,c_Divides_Odiv__class_Odiv(tc_Int_Oint,V_n_2,V_k_2)),c_Divides_Odiv__class_Omod(tc_Int_Oint,V_n_2,V_k_2))) )
     <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Int_Oint),c_Groups_Ozero__class_Ozero(tc_Int_Oint)),V_k_2)) ) ).

fof(fact_mult__1,axiom,
    ! [V_a,T_a] :
      ( class_Groups_Ocomm__monoid__mult(T_a)
     => hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Groups_Oone__class_Oone(T_a)),V_a) = V_a ) ).

fof(fact_le__add__diff,axiom,
    ! [V_m,V_n,V_k] :
      ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m),hAPP(hAPP(c_Groups_Ominus__class_Ominus(tc_Nat_Onat),hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Nat_Onat),V_n),V_m)),V_k)))
     <= hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_k),V_n)) ) ).

fof(fact_split__neg__lemma,axiom,
    ! [V_n_2,V_P_2,V_k_2] :
      ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Int_Oint),V_k_2),c_Groups_Ozero__class_Ozero(tc_Int_Oint)))
     => ( hBOOL(hAPP(hAPP(V_P_2,c_Divides_Odiv__class_Odiv(tc_Int_Oint,V_n_2,V_k_2)),c_Divides_Odiv__class_Omod(tc_Int_Oint,V_n_2,V_k_2)))
      <=> ! [B_i,B_j] :
            ( ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,B_j),c_Groups_Ozero__class_Ozero(tc_Int_Oint)))
              & hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Int_Oint),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_k_2),B_i)),B_j) = V_n_2
              & hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Int_Oint),V_k_2),B_j)) )
           => hBOOL(hAPP(hAPP(V_P_2,B_i),B_j)) ) ) ) ).

fof(fact_le__mult__natfloor,axiom,
    ! [V_b,V_a] :
      ( ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),c_RComplete_Onatfloor(V_a)),c_RComplete_Onatfloor(V_b))),c_RComplete_Onatfloor(hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),V_a),V_b))))
       <= hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)),V_b)) )
     <= hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)),V_a)) ) ).

fof(fact_nat__mult__commute,axiom,
    ! [V_n,V_m] : hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_m),V_n) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_n),V_m) ).

fof(fact_mod__1,axiom,
    ! [V_m] : c_Groups_Ozero__class_Ozero(tc_Nat_Onat) = c_Divides_Odiv__class_Omod(tc_Nat_Onat,V_m,hAPP(c_Nat_OSuc,c_Groups_Ozero__class_Ozero(tc_Nat_Onat))) ).

fof(fact_less__eq__Suc__le,axiom,
    ! [V_m_2,V_n_2] :
      ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,hAPP(c_Nat_OSuc,V_n_2)),V_m_2))
    <=> hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),V_n_2),V_m_2)) ) ).

fof(fact_le__degree,axiom,
    ! [V_n,V_p,T_a] :
      ( ( hAPP(c_Polynomial_Ocoeff(T_a,V_p),V_n) != c_Groups_Ozero__class_Ozero(T_a)
       => hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_n),c_Polynomial_Odegree(T_a,V_p))) )
     <= class_Groups_Ozero(T_a) ) ).

fof(fact_n__less__m__mult__n,axiom,
    ! [V_m,V_n] :
      ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),hAPP(c_Nat_OSuc,c_Groups_Ozero__class_Ozero(tc_Nat_Onat))),V_n))
     => ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),V_n),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_m),V_n)))
       <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),hAPP(c_Nat_OSuc,c_Groups_Ozero__class_Ozero(tc_Nat_Onat))),V_m)) ) ) ).

fof(fact_natceiling__mono,axiom,
    ! [V_y,V_x] :
      ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,c_RComplete_Onatceiling(V_x)),c_RComplete_Onatceiling(V_y)))
     <= hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,V_x),V_y)) ) ).

fof(fact_comm__semiring__1__class_Onormalizing__semiring__rules_I20_J,axiom,
    ! [V_d,V_c,V_b,V_a,T_a] :
      ( hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),V_a),V_b)),hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),V_c),V_d)) = hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),V_a),V_c)),hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),V_b),V_d))
     <= class_Rings_Ocomm__semiring__1(T_a) ) ).

fof(help_c__fimplies__2,axiom,
    ! [V_P_2,V_Q_2] :
      ( ~ hBOOL(V_Q_2)
      | hBOOL(hAPP(hAPP(c_fimplies,V_P_2),V_Q_2)) ) ).

fof(fact_realpow__pos__nth2,axiom,
    ! [V_n,V_a] :
      ( ? [B_r] :
          ( hAPP(hAPP(c_Power_Opower__class_Opower(tc_RealDef_Oreal),B_r),hAPP(c_Nat_OSuc,V_n)) = V_a
          & hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_RealDef_Oreal),c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)),B_r)) )
     <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_RealDef_Oreal),c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)),V_a)) ) ).

fof(fact_mult__nonneg__nonpos,axiom,
    ! [V_b,V_a,T_a] :
      ( class_Rings_Oordered__cancel__semiring(T_a)
     => ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a)),V_a))
       => ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b)),c_Groups_Ozero__class_Ozero(T_a)))
         <= hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,V_b),c_Groups_Ozero__class_Ozero(T_a))) ) ) ) ).

fof(arity_Int__Oint__Rings_Oordered__cancel__semiring,axiom,
    class_Rings_Oordered__cancel__semiring(tc_Int_Oint) ).

fof(fact_diff__less,axiom,
    ! [V_m,V_n] :
      ( ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),c_Groups_Ozero__class_Ozero(tc_Nat_Onat)),V_m))
       => hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),hAPP(hAPP(c_Groups_Ominus__class_Ominus(tc_Nat_Onat),V_m),V_n)),V_m)) )
     <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),c_Groups_Ozero__class_Ozero(tc_Nat_Onat)),V_n)) ) ).

fof(fact_add__nonneg__eq__0__iff,axiom,
    ! [V_y_2,V_x_2,T_a] :
      ( ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a)),V_x_2))
       => ( ( hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),V_x_2),V_y_2) = c_Groups_Ozero__class_Ozero(T_a)
          <=> ( V_x_2 = c_Groups_Ozero__class_Ozero(T_a)
              & V_y_2 = c_Groups_Ozero__class_Ozero(T_a) ) )
         <= hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a)),V_y_2)) ) )
     <= class_Groups_Oordered__comm__monoid__add(T_a) ) ).

fof(arity_RealDef__Oreal__Rings_Ocomm__semiring__0,axiom,
    class_Rings_Ocomm__semiring__0(tc_RealDef_Oreal) ).

fof(fact_zdiv__mono2,axiom,
    ! [V_b,V_b_H,V_a] :
      ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint)),V_a))
     => ( ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,V_b_H),V_b))
         => hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Divides_Odiv__class_Odiv(tc_Int_Oint,V_a,V_b)),c_Divides_Odiv__class_Odiv(tc_Int_Oint,V_a,V_b_H))) )
       <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Int_Oint),c_Groups_Ozero__class_Ozero(tc_Int_Oint)),V_b_H)) ) ) ).

fof(arity_RealDef__Oreal__Groups_Oone,axiom,
    class_Groups_Oone(tc_RealDef_Oreal) ).

fof(fact_real__mult__inverse__cancel2,axiom,
    ! [V_u,V_y,V_x1,V_x] :
      ( ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_RealDef_Oreal),c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)),V_x1))
       => ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_RealDef_Oreal),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),V_x1),V_y)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),V_x),V_u)))
         => hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_RealDef_Oreal),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),V_y),c_Rings_Oinverse__class_Oinverse(tc_RealDef_Oreal,V_x))),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),V_u),c_Rings_Oinverse__class_Oinverse(tc_RealDef_Oreal,V_x1)))) ) )
     <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_RealDef_Oreal),c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)),V_x)) ) ).

fof(fact_add__nonneg__pos,axiom,
    ! [V_b,V_a,T_a] :
      ( class_Groups_Oordered__comm__monoid__add(T_a)
     => ( ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),c_Groups_Ozero__class_Ozero(T_a)),V_b))
         => hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),c_Groups_Ozero__class_Ozero(T_a)),hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),V_a),V_b))) )
       <= hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a)),V_a)) ) ) ).

fof(fact_diff__Suc__Suc,axiom,
    ! [V_n,V_m] : hAPP(hAPP(c_Groups_Ominus__class_Ominus(tc_Nat_Onat),V_m),V_n) = hAPP(hAPP(c_Groups_Ominus__class_Ominus(tc_Nat_Onat),hAPP(c_Nat_OSuc,V_m)),hAPP(c_Nat_OSuc,V_n)) ).

fof(arity_RealDef__Oreal__Rings_Olinordered__semiring__strict,axiom,
    class_Rings_Olinordered__semiring__strict(tc_RealDef_Oreal) ).

fof(fact_monom__def,axiom,
    ! [V_m_2,V_a_2,T_a] :
      ( class_Groups_Ozero(T_a)
     => c_Polynomial_OAbs__poly(T_a,c_COMBC(tc_Nat_Onat,T_a,T_a,c_COMBC(tc_Nat_Onat,T_a,tc_fun(T_a,T_a),hAPP(c_COMBB(tc_HOL_Obool,tc_fun(T_a,tc_fun(T_a,T_a)),tc_Nat_Onat,c_If(T_a)),hAPP(c_fequal,V_m_2)),V_a_2),c_Groups_Ozero__class_Ozero(T_a))) = c_Polynomial_Omonom(T_a,V_a_2,V_m_2) ) ).

fof(fact_comm__semiring__1__class_Onormalizing__semiring__rules_I1_J,axiom,
    ! [V_b,V_m,V_a,T_a] :
      ( class_Rings_Ocomm__semiring__1(T_a)
     => hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),V_a),V_b)),V_m) = hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_m)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b),V_m)) ) ).

fof(fact_natfloor__add,axiom,
    ! [V_a,V_x] :
      ( c_RComplete_Onatfloor(hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_RealDef_Oreal),V_x),c_RealDef_Oreal(tc_Nat_Onat,V_a))) = hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Nat_Onat),c_RComplete_Onatfloor(V_x)),V_a)
     <= hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)),V_x)) ) ).

fof(fact_incseq__imp__monoseq,axiom,
    ! [V_X_2,T_a] :
      ( class_Orderings_Oorder(T_a)
     => ( c_SEQ_Omonoseq(T_a,V_X_2)
       <= c_SEQ_Oincseq(T_a,V_X_2) ) ) ).

fof(fact_natfloor__one,axiom,
    c_Groups_Oone__class_Oone(tc_Nat_Onat) = c_RComplete_Onatfloor(c_Groups_Oone__class_Oone(tc_RealDef_Oreal)) ).

fof(fact_add__neg__nonpos,axiom,
    ! [V_b,V_a,T_a] :
      ( ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_a),c_Groups_Ozero__class_Ozero(T_a)))
       => ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,V_b),c_Groups_Ozero__class_Ozero(T_a)))
         => hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),V_a),V_b)),c_Groups_Ozero__class_Ozero(T_a))) ) )
     <= class_Groups_Oordered__comm__monoid__add(T_a) ) ).

fof(arity_Nat__Onat__Rings_Osemiring__0,axiom,
    class_Rings_Osemiring__0(tc_Nat_Onat) ).

fof(fact_div__less__dividend,axiom,
    ! [V_m,V_n] :
      ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),c_Groups_Oone__class_Oone(tc_Nat_Onat)),V_n))
     => ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),c_Divides_Odiv__class_Odiv(tc_Nat_Onat,V_m,V_n)),V_m))
       <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),c_Groups_Ozero__class_Ozero(tc_Nat_Onat)),V_m)) ) ) ).

fof(help_c__COMBS__1,axiom,
    ! [V_R_2,V_Q_2,V_P_2,T_a,T_c,T_b] : hAPP(hAPP(hAPP(c_COMBS(T_b,T_c,T_a),V_P_2),V_Q_2),V_R_2) = hAPP(hAPP(V_P_2,V_R_2),hAPP(V_Q_2,V_R_2)) ).

fof(arity_Nat__Onat__Orderings_Oorder,axiom,
    class_Orderings_Oorder(tc_Nat_Onat) ).

fof(arity_Polynomial__Opoly__Groups_Oordered__cancel__ab__semigroup__add,axiom,
    ! [T_1] :
      ( class_Rings_Olinordered__idom(T_1)
     => class_Groups_Oordered__cancel__ab__semigroup__add(tc_Polynomial_Opoly(T_1)) ) ).

fof(fact_diff__commute,axiom,
    ! [V_k,V_j,V_i] : hAPP(hAPP(c_Groups_Ominus__class_Ominus(tc_Nat_Onat),hAPP(hAPP(c_Groups_Ominus__class_Ominus(tc_Nat_Onat),V_i),V_j)),V_k) = hAPP(hAPP(c_Groups_Ominus__class_Ominus(tc_Nat_Onat),hAPP(hAPP(c_Groups_Ominus__class_Ominus(tc_Nat_Onat),V_i),V_k)),V_j) ).

fof(fact_inverse__1,axiom,
    ! [T_a] :
      ( c_Rings_Oinverse__class_Oinverse(T_a,c_Groups_Oone__class_Oone(T_a)) = c_Groups_Oone__class_Oone(T_a)
     <= class_Rings_Odivision__ring(T_a) ) ).

fof(fact_zdiv__zmult1__eq,axiom,
    ! [V_c,V_b,V_a] : c_Divides_Odiv__class_Odiv(tc_Int_Oint,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_a),V_b),V_c) = hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Int_Oint),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_a),c_Divides_Odiv__class_Odiv(tc_Int_Oint,V_b,V_c))),c_Divides_Odiv__class_Odiv(tc_Int_Oint,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_a),c_Divides_Odiv__class_Omod(tc_Int_Oint,V_b,V_c)),V_c)) ).

fof(fact_mult__mono_H,axiom,
    ! [V_d,V_c,V_b,V_a,T_a] :
      ( class_Rings_Oordered__semiring(T_a)
     => ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,V_a),V_b))
       => ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,V_c),V_d))
         => ( ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_c)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b),V_d)))
             <= hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a)),V_c)) )
           <= hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a)),V_a)) ) ) ) ) ).

fof(fact_comm__semiring__1__class_Onormalizing__semiring__rules_I27_J,axiom,
    ! [V_q,V_x,T_a] :
      ( hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_x),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_x),V_q)) = hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_x),hAPP(c_Nat_OSuc,V_q))
     <= class_Rings_Ocomm__semiring__1(T_a) ) ).

fof(fact_real__less__def,axiom,
    ! [V_y_2,V_x_2] :
      ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_RealDef_Oreal),V_x_2),V_y_2))
    <=> ( V_x_2 != V_y_2
        & hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,V_x_2),V_y_2)) ) ) ).

fof(arity_Nat__Onat__Rings_Osemiring,axiom,
    class_Rings_Osemiring(tc_Nat_Onat) ).

fof(fact_power__Suc__less__one,axiom,
    ! [V_n,V_a,T_a] :
      ( class_Rings_Olinordered__semidom(T_a)
     => ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),c_Groups_Ozero__class_Ozero(T_a)),V_a))
       => ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_a),c_Groups_Oone__class_Oone(T_a)))
         => hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),hAPP(c_Nat_OSuc,V_n))),c_Groups_Oone__class_Oone(T_a))) ) ) ) ).

fof(fact_mod__div__equality,axiom,
    ! [V_b,V_a,T_a] :
      ( class_Divides_Osemiring__div(T_a)
     => V_a = hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Divides_Odiv__class_Odiv(T_a,V_a,V_b)),V_b)),c_Divides_Odiv__class_Omod(T_a,V_a,V_b)) ) ).

fof(fact_split__mult__neg__le,axiom,
    ! [V_b,V_a,T_a] :
      ( class_Rings_Oordered__cancel__semiring(T_a)
     => ( ( ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a)),V_a))
            & hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,V_b),c_Groups_Ozero__class_Ozero(T_a))) )
          | ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a)),V_b))
            & hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,V_a),c_Groups_Ozero__class_Ozero(T_a))) ) )
       => hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b)),c_Groups_Ozero__class_Ozero(T_a))) ) ) ).

fof(arity_RealDef__Oreal__Rings_Ozero__neq__one,axiom,
    class_Rings_Ozero__neq__one(tc_RealDef_Oreal) ).

fof(arity_Polynomial__Opoly__Groups_Omonoid__add,axiom,
    ! [T_1] :
      ( class_Groups_Ocomm__monoid__add(T_1)
     => class_Groups_Omonoid__add(tc_Polynomial_Opoly(T_1)) ) ).

fof(arity_RealDef__Oreal__RealVector_Oreal__normed__algebra__1,axiom,
    class_RealVector_Oreal__normed__algebra__1(tc_RealDef_Oreal) ).

fof(fact_coeff__diff,axiom,
    ! [V_n,V_q,V_p,T_a] :
      ( hAPP(c_Polynomial_Ocoeff(T_a,hAPP(hAPP(c_Groups_Ominus__class_Ominus(tc_Polynomial_Opoly(T_a)),V_p),V_q)),V_n) = hAPP(hAPP(c_Groups_Ominus__class_Ominus(T_a),hAPP(c_Polynomial_Ocoeff(T_a,V_p),V_n)),hAPP(c_Polynomial_Ocoeff(T_a,V_q),V_n))
     <= class_Groups_Oab__group__add(T_a) ) ).

fof(fact_real__le__antisym,axiom,
    ! [V_w,V_z] :
      ( ( V_w = V_z
       <= hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,V_w),V_z)) )
     <= hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,V_z),V_w)) ) ).

fof(arity_Polynomial__Opoly__Rings_Ocomm__semiring__0,axiom,
    ! [T_1] :
      ( class_Rings_Ocomm__semiring__0(tc_Polynomial_Opoly(T_1))
     <= class_Rings_Ocomm__semiring__0(T_1) ) ).

fof(fact_expand__poly__eq,axiom,
    ! [V_qa_2,V_pb_2,T_a] :
      ( class_Groups_Ozero(T_a)
     => ( ! [B_n] : hAPP(c_Polynomial_Ocoeff(T_a,V_pb_2),B_n) = hAPP(c_Polynomial_Ocoeff(T_a,V_qa_2),B_n)
      <=> V_qa_2 = V_pb_2 ) ) ).

fof(fact_plus__poly__def,axiom,
    ! [V_qa_2,V_pb_2,T_a] :
      ( class_Groups_Ocomm__monoid__add(T_a)
     => c_Polynomial_OAbs__poly(T_a,hAPP(hAPP(c_COMBS(tc_Nat_Onat,T_a,T_a),hAPP(c_COMBB(T_a,tc_fun(T_a,T_a),tc_Nat_Onat,c_Groups_Oplus__class_Oplus(T_a)),c_Polynomial_Ocoeff(T_a,V_pb_2))),c_Polynomial_Ocoeff(T_a,V_qa_2))) = hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Polynomial_Opoly(T_a)),V_pb_2),V_qa_2) ) ).

fof(fact_power__strict__decreasing,axiom,
    ! [V_a,V_N,V_n,T_a] :
      ( class_Rings_Olinordered__semidom(T_a)
     => ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),V_n),V_N))
       => ( ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_a),c_Groups_Oone__class_Oone(T_a)))
           => hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_N)),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_n))) )
         <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),c_Groups_Ozero__class_Ozero(T_a)),V_a)) ) ) ) ).

fof(fact_not__less__Least,axiom,
    ! [V_P_2,V_k_2,T_a] :
      ( ( ~ hBOOL(hAPP(V_P_2,V_k_2))
       <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_k_2),c_Orderings_Oord__class_OLeast(T_a,V_P_2))) )
     <= class_Orderings_Owellorder(T_a) ) ).

fof(fact_xt1_I2_J,axiom,
    ! [V_c,V_a,V_b,T_a] :
      ( class_Orderings_Oorder(T_a)
     => ( ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_c),V_a))
         <= V_b = V_c )
       <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_b),V_a)) ) ) ).

fof(arity_Int__Oint__Groups_Ocomm__monoid__mult,axiom,
    class_Groups_Ocomm__monoid__mult(tc_Int_Oint) ).

fof(fact_neg__imp__zdiv__neg__iff,axiom,
    ! [V_a_2,V_b_2] :
      ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Int_Oint),V_b_2),c_Groups_Ozero__class_Ozero(tc_Int_Oint)))
     => ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Int_Oint),c_Groups_Ozero__class_Ozero(tc_Int_Oint)),V_a_2))
      <=> hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Int_Oint),c_Divides_Odiv__class_Odiv(tc_Int_Oint,V_a_2,V_b_2)),c_Groups_Ozero__class_Ozero(tc_Int_Oint))) ) ) ).

fof(fact_mult__le__cancel__left__pos,axiom,
    ! [V_b_2,V_a_2,V_ca_2,T_a] :
      ( ( ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,V_a_2),V_b_2))
        <=> hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_ca_2),V_a_2)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_ca_2),V_b_2))) )
       <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),c_Groups_Ozero__class_Ozero(T_a)),V_ca_2)) )
     <= class_Rings_Olinordered__ring__strict(T_a) ) ).

fof(fact_ln__ge__zero__imp__ge__one,axiom,
    ! [V_x] :
      ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)),c_Transcendental_Oln(V_x)))
     => ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Oone__class_Oone(tc_RealDef_Oreal)),V_x))
       <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_RealDef_Oreal),c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)),V_x)) ) ) ).

fof(fact_not__less__eq__eq,axiom,
    ! [V_n_2,V_m_2] :
      ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,hAPP(c_Nat_OSuc,V_n_2)),V_m_2))
    <=> ~ hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m_2),V_n_2)) ) ).

fof(fact_nat__less__le,axiom,
    ! [V_n_2,V_m_2] :
      ( ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m_2),V_n_2))
        & V_n_2 != V_m_2 )
    <=> hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),V_m_2),V_n_2)) ) ).

fof(fact_real__of__nat__mult,axiom,
    ! [V_n,V_m] : c_RealDef_Oreal(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_m),V_n)) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),c_RealDef_Oreal(tc_Nat_Onat,V_m)),c_RealDef_Oreal(tc_Nat_Onat,V_n)) ).

fof(fact_not__add__less1,axiom,
    ! [V_j,V_i] : ~ hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Nat_Onat),V_i),V_j)),V_i)) ).

fof(fact_mult__le__cancel2,axiom,
    ! [V_n_2,V_k_2,V_m_2] :
      ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_m_2),V_k_2)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_n_2),V_k_2)))
    <=> ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m_2),V_n_2))
       <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),c_Groups_Ozero__class_Ozero(tc_Nat_Onat)),V_k_2)) ) ) ).

fof(fact_mult__eq__0__iff,axiom,
    ! [V_b_2,V_a_2,T_a] :
      ( class_Rings_Oring__no__zero__divisors(T_a)
     => ( ( V_b_2 = c_Groups_Ozero__class_Ozero(T_a)
          | c_Groups_Ozero__class_Ozero(T_a) = V_a_2 )
      <=> hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a_2),V_b_2) = c_Groups_Ozero__class_Ozero(T_a) ) ) ).

fof(fact_comm__semiring__1__class_Onormalizing__semiring__rules_I16_J,axiom,
    ! [V_rx,V_ly,V_lx,T_a] :
      ( hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_lx),V_rx)),V_ly) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_lx),V_ly)),V_rx)
     <= class_Rings_Ocomm__semiring__1(T_a) ) ).

fof(fact_gr0I,axiom,
    ! [V_n] :
      ( c_Groups_Ozero__class_Ozero(tc_Nat_Onat) != V_n
     => hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),c_Groups_Ozero__class_Ozero(tc_Nat_Onat)),V_n)) ) ).

fof(fact_zdiv__mono2__neg__lemma,axiom,
    ! [V_r_H,V_q_H,V_b_H,V_r,V_q,V_b] :
      ( hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Int_Oint),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_b_H),V_q_H)),V_r_H) = hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Int_Oint),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_b),V_q)),V_r)
     => ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Int_Oint),hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Int_Oint),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_b_H),V_q_H)),V_r_H)),c_Groups_Ozero__class_Ozero(tc_Int_Oint)))
       => ( ( ( ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,V_b_H),V_b))
               => hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,V_q_H),V_q)) )
             <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Int_Oint),c_Groups_Ozero__class_Ozero(tc_Int_Oint)),V_b_H)) )
           <= hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint)),V_r_H)) )
         <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Int_Oint),V_r),V_b)) ) ) ) ).

fof(fact_mult__right_Opos__bounded,axiom,
    ! [V_x,T_a] :
      ( class_RealVector_Oreal__normed__algebra(T_a)
     => ? [B_K] :
          ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_RealDef_Oreal),c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)),B_K))
          & ! [B_x] : hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_RealVector_Onorm__class_Onorm(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_x),B_x))),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),c_RealVector_Onorm__class_Onorm(T_a,B_x)),B_K))) ) ) ).

fof(fact_Nat_Oadd__0__right,axiom,
    ! [V_m] : V_m = hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Nat_Onat),V_m),c_Groups_Ozero__class_Ozero(tc_Nat_Onat)) ).

fof(fact_psize__def,axiom,
    ! [V_p,T_a] :
      ( class_Groups_Ozero(T_a)
     => ( ( V_p = c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a))
         => c_Fundamental__Theorem__Algebra__Mirabelle_Opsize(T_a,V_p) = c_Groups_Ozero__class_Ozero(tc_Nat_Onat) )
        & ( hAPP(c_Nat_OSuc,c_Polynomial_Odegree(T_a,V_p)) = c_Fundamental__Theorem__Algebra__Mirabelle_Opsize(T_a,V_p)
         <= V_p != c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a)) ) ) ) ).

fof(arity_Int__Oint__Rings_Oordered__semiring,axiom,
    class_Rings_Oordered__semiring(tc_Int_Oint) ).

fof(fact_add__le__imp__le__left,axiom,
    ! [V_b,V_a,V_c,T_a] :
      ( class_Groups_Oordered__ab__semigroup__add__imp__le(T_a)
     => ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,V_a),V_b))
       <= hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),V_c),V_a)),hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),V_c),V_b))) ) ) ).

fof(arity_RealDef__Oreal__Rings_Ocomm__ring__1,axiom,
    class_Rings_Ocomm__ring__1(tc_RealDef_Oreal) ).

fof(arity_RealDef__Oreal__Rings_Olinordered__comm__semiring__strict,axiom,
    class_Rings_Olinordered__comm__semiring__strict(tc_RealDef_Oreal) ).

fof(fact_inverse__zero,axiom,
    ! [T_a] :
      ( c_Groups_Ozero__class_Ozero(T_a) = c_Rings_Oinverse__class_Oinverse(T_a,c_Groups_Ozero__class_Ozero(T_a))
     <= class_Rings_Odivision__ring__inverse__zero(T_a) ) ).

fof(fact_nat__le__real__less,axiom,
    ! [V_m_2,V_n_2] :
      ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_RealDef_Oreal),c_RealDef_Oreal(tc_Nat_Onat,V_n_2)),hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_RealDef_Oreal),c_RealDef_Oreal(tc_Nat_Onat,V_m_2)),c_Groups_Oone__class_Oone(tc_RealDef_Oreal))))
    <=> hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_n_2),V_m_2)) ) ).

fof(arity_Int__Oint__Groups_Oab__semigroup__add,axiom,
    class_Groups_Oab__semigroup__add(tc_Int_Oint) ).

fof(fact_comm__semiring__1__class_Onormalizing__semiring__rules_I18_J,axiom,
    ! [V_ry,V_rx,V_lx,T_a] :
      ( class_Rings_Ocomm__semiring__1(T_a)
     => hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_lx),V_rx)),V_ry) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_lx),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_rx),V_ry)) ) ).

fof(fact_zero__le__natceiling,axiom,
    ! [V_x] : hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat)),c_RComplete_Onatceiling(V_x))) ).

fof(arity_Complex__Ocomplex__Groups_Omonoid__mult,axiom,
    class_Groups_Omonoid__mult(tc_Complex_Ocomplex) ).

fof(fact_degree__monom__le,axiom,
    ! [V_n,V_a,T_a] :
      ( class_Groups_Ozero(T_a)
     => hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,c_Polynomial_Odegree(T_a,c_Polynomial_Omonom(T_a,V_a,V_n))),V_n)) ) ).

fof(fact_div__add__self2,axiom,
    ! [V_a,V_b,T_a] :
      ( ( c_Divides_Odiv__class_Odiv(T_a,hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),V_a),V_b),V_b) = hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),c_Divides_Odiv__class_Odiv(T_a,V_a,V_b)),c_Groups_Oone__class_Oone(T_a))
       <= c_Groups_Ozero__class_Ozero(T_a) != V_b )
     <= class_Divides_Osemiring__div(T_a) ) ).

fof(fact_comm__semiring__1__class_Onormalizing__semiring__rules_I10_J,axiom,
    ! [V_a,T_a] :
      ( class_Rings_Ocomm__semiring__1(T_a)
     => hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),c_Groups_Ozero__class_Ozero(T_a)) = c_Groups_Ozero__class_Ozero(T_a) ) ).

fof(fact_one__less__mult,axiom,
    ! [V_m,V_n] :
      ( ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),hAPP(c_Nat_OSuc,c_Groups_Ozero__class_Ozero(tc_Nat_Onat))),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_m),V_n)))
       <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),hAPP(c_Nat_OSuc,c_Groups_Ozero__class_Ozero(tc_Nat_Onat))),V_m)) )
     <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),hAPP(c_Nat_OSuc,c_Groups_Ozero__class_Ozero(tc_Nat_Onat))),V_n)) ) ).

fof(fact_div__mult__self1,axiom,
    ! [V_c,V_a,V_b,T_a] :
      ( class_Divides_Osemiring__div(T_a)
     => ( hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),V_c),c_Divides_Odiv__class_Odiv(T_a,V_a,V_b)) = c_Divides_Odiv__class_Odiv(T_a,hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),V_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_c),V_b)),V_b)
       <= V_b != c_Groups_Ozero__class_Ozero(T_a) ) ) ).

fof(fact_Suc__diff__le,axiom,
    ! [V_m,V_n] :
      ( hAPP(c_Nat_OSuc,hAPP(hAPP(c_Groups_Ominus__class_Ominus(tc_Nat_Onat),V_m),V_n)) = hAPP(hAPP(c_Groups_Ominus__class_Ominus(tc_Nat_Onat),hAPP(c_Nat_OSuc,V_m)),V_n)
     <= hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_n),V_m)) ) ).

fof(fact_pdivmod__rel__unique,axiom,
    ! [V_r2,V_q2,V_r1,V_q1,V_y,V_x,T_a] :
      ( ( ( ( V_r2 = V_r1
            & V_q2 = V_q1 )
         <= c_Polynomial_Opdivmod__rel(T_a,V_x,V_y,V_q2,V_r2) )
       <= c_Polynomial_Opdivmod__rel(T_a,V_x,V_y,V_q1,V_r1) )
     <= class_Fields_Ofield(T_a) ) ).

fof(fact_ext,axiom,
    ! [V_g_2,V_f_2] :
      ( V_f_2 = V_g_2
     <= ! [B_x] : hAPP(V_f_2,B_x) = hAPP(V_g_2,B_x) ) ).

fof(arity_Polynomial__Opoly__Groups_Ozero,axiom,
    ! [T_1] :
      ( class_Groups_Ozero(tc_Polynomial_Opoly(T_1))
     <= class_Groups_Ozero(T_1) ) ).

fof(fact_less__not__refl3,axiom,
    ! [V_t,V_s] :
      ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),V_s),V_t))
     => V_s != V_t ) ).

fof(fact_real__natfloor__le,axiom,
    ! [V_x] :
      ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_RealDef_Oreal(tc_Nat_Onat,c_RComplete_Onatfloor(V_x))),V_x))
     <= hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)),V_x)) ) ).

fof(arity_Int__Oint__Orderings_Opreorder,axiom,
    class_Orderings_Opreorder(tc_Int_Oint) ).

fof(fact_Bseq__def,axiom,
    ! [V_X_2,T_a] :
      ( ( c_SEQ_OBseq(T_a,V_X_2)
      <=> ? [B_K] :
            ( ! [B_n] : hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_RealVector_Onorm__class_Onorm(T_a,hAPP(V_X_2,B_n))),B_K))
            & hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_RealDef_Oreal),c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)),B_K)) ) )
     <= class_RealVector_Oreal__normed__vector(T_a) ) ).

fof(fact_less__1__mult,axiom,
    ! [V_n,V_m,T_a] :
      ( ( ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),c_Groups_Oone__class_Oone(T_a)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_m),V_n)))
         <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),c_Groups_Oone__class_Oone(T_a)),V_n)) )
       <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),c_Groups_Oone__class_Oone(T_a)),V_m)) )
     <= class_Rings_Olinordered__semidom(T_a) ) ).

fof(fact_nat__add__left__commute,axiom,
    ! [V_z,V_y,V_x] : hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Nat_Onat),V_x),hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Nat_Onat),V_y),V_z)) = hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Nat_Onat),V_y),hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Nat_Onat),V_x),V_z)) ).

fof(arity_RealDef__Oreal__Groups_Ocancel__comm__monoid__add,axiom,
    class_Groups_Ocancel__comm__monoid__add(tc_RealDef_Oreal) ).

fof(fact_mod__mult__right__eq,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( c_Divides_Odiv__class_Omod(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b),V_c) = c_Divides_Odiv__class_Omod(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),c_Divides_Odiv__class_Omod(T_a,V_b,V_c)),V_c)
     <= class_Divides_Osemiring__div(T_a) ) ).

fof(fact_add__Suc__right,axiom,
    ! [V_n,V_m] : hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Nat_Onat),V_m),hAPP(c_Nat_OSuc,V_n)) = hAPP(c_Nat_OSuc,hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Nat_Onat),V_m),V_n)) ).

fof(arity_Polynomial__Opoly__Groups_Ocomm__monoid__mult,axiom,
    ! [T_1] :
      ( class_Rings_Ocomm__semiring__1(T_1)
     => class_Groups_Ocomm__monoid__mult(tc_Polynomial_Opoly(T_1)) ) ).

fof(arity_Polynomial__Opoly__Rings_Osemiring__0,axiom,
    ! [T_1] :
      ( class_Rings_Ocomm__semiring__0(T_1)
     => class_Rings_Osemiring__0(tc_Polynomial_Opoly(T_1)) ) ).

fof(fact_power__mult__distrib,axiom,
    ! [V_n,V_b,V_a,T_a] :
      ( hAPP(hAPP(c_Power_Opower__class_Opower(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b)),V_n) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_n)),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_b),V_n))
     <= class_Groups_Ocomm__monoid__mult(T_a) ) ).

fof(fact_not__real__of__nat__less__zero,axiom,
    ! [V_n] : ~ hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_RealDef_Oreal),c_RealDef_Oreal(tc_Nat_Onat,V_n)),c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal))) ).

fof(fact_mult__less__imp__less__left,axiom,
    ! [V_b,V_a,V_c,T_a] :
      ( class_Rings_Olinordered__semiring__strict(T_a)
     => ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_c),V_a)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_c),V_b)))
       => ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_a),V_b))
         <= hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a)),V_c)) ) ) ) ).

fof(fact_qr,axiom,
    ! [B_z] : hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Complex_Ocomplex),hAPP(c_Polynomial_Opoly(tc_Complex_Ocomplex,c_Polynomial_Osmult(tc_Complex_Ocomplex,c_Rings_Oinverse__class_Oinverse(tc_Complex_Ocomplex,hAPP(c_Polynomial_Opoly(tc_Complex_Ocomplex,v_q____),c_Groups_Ozero__class_Ozero(tc_Complex_Ocomplex))),v_q____)),B_z)),hAPP(c_Polynomial_Opoly(tc_Complex_Ocomplex,v_q____),c_Groups_Ozero__class_Ozero(tc_Complex_Ocomplex))) = hAPP(c_Polynomial_Opoly(tc_Complex_Ocomplex,v_q____),B_z) ).

fof(arity_Complex__Ocomplex__Power_Opower,axiom,
    class_Power_Opower(tc_Complex_Ocomplex) ).

fof(fact_realpow__pos__nth__unique,axiom,
    ! [V_a,V_n] :
      ( ( ? [B_x] :
            ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_RealDef_Oreal),c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)),B_x))
            & ! [B_y] :
                ( B_y = B_x
               <= ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_RealDef_Oreal),c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)),B_y))
                  & hAPP(hAPP(c_Power_Opower__class_Opower(tc_RealDef_Oreal),B_y),V_n) = V_a ) )
            & V_a = hAPP(hAPP(c_Power_Opower__class_Opower(tc_RealDef_Oreal),B_x),V_n) )
       <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_RealDef_Oreal),c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)),V_a)) )
     <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),c_Groups_Ozero__class_Ozero(tc_Nat_Onat)),V_n)) ) ).

fof(fact_natfloor__add__one,axiom,
    ! [V_x] :
      ( c_RComplete_Onatfloor(hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_RealDef_Oreal),V_x),c_Groups_Oone__class_Oone(tc_RealDef_Oreal))) = hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Nat_Onat),c_RComplete_Onatfloor(V_x)),c_Groups_Oone__class_Oone(tc_Nat_Onat))
     <= hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)),V_x)) ) ).

fof(fact_Bseq__iff1a,axiom,
    ! [V_X_2,T_a] :
      ( ( ? [B_N] :
          ! [B_n] : hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_RealDef_Oreal),c_RealVector_Onorm__class_Onorm(T_a,hAPP(V_X_2,B_n))),c_RealDef_Oreal(tc_Nat_Onat,hAPP(c_Nat_OSuc,B_N))))
      <=> c_SEQ_OBseq(T_a,V_X_2) )
     <= class_RealVector_Oreal__normed__vector(T_a) ) ).

fof(fact_natfloor__mono,axiom,
    ! [V_y,V_x] :
      ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,V_x),V_y))
     => hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,c_RComplete_Onatfloor(V_x)),c_RComplete_Onatfloor(V_y))) ) ).

fof(fact_mult__less__cancel__left__neg,axiom,
    ! [V_b_2,V_a_2,V_ca_2,T_a] :
      ( ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_ca_2),c_Groups_Ozero__class_Ozero(T_a)))
       => ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_b_2),V_a_2))
        <=> hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_ca_2),V_a_2)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_ca_2),V_b_2))) ) )
     <= class_Rings_Olinordered__ring__strict(T_a) ) ).

fof(fact_INVERSE__ZERO,axiom,
    c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal) = c_Rings_Oinverse__class_Oinverse(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)) ).

fof(fact_Suc__not__Zero,axiom,
    ! [V_m] : hAPP(c_Nat_OSuc,V_m) != c_Groups_Ozero__class_Ozero(tc_Nat_Onat) ).

fof(arity_Nat__Onat__Groups_Ocomm__monoid__add,axiom,
    class_Groups_Ocomm__monoid__add(tc_Nat_Onat) ).

fof(fact_linorder__le__cases,axiom,
    ! [V_y,V_x,T_a] :
      ( ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,V_y),V_x))
       <= ~ hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,V_x),V_y)) )
     <= class_Orderings_Olinorder(T_a) ) ).

fof(fact_div__neg__pos__less0,axiom,
    ! [V_b,V_a] :
      ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Int_Oint),V_a),c_Groups_Ozero__class_Ozero(tc_Int_Oint)))
     => ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Int_Oint),c_Divides_Odiv__class_Odiv(tc_Int_Oint,V_a,V_b)),c_Groups_Ozero__class_Ozero(tc_Int_Oint)))
       <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Int_Oint),c_Groups_Ozero__class_Ozero(tc_Int_Oint)),V_b)) ) ) ).

fof(fact_coeff__mult__degree__sum,axiom,
    ! [V_q,V_p,T_a] :
      ( class_Rings_Ocomm__semiring__0(T_a)
     => hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),hAPP(c_Polynomial_Ocoeff(T_a,V_p),c_Polynomial_Odegree(T_a,V_p))),hAPP(c_Polynomial_Ocoeff(T_a,V_q),c_Polynomial_Odegree(T_a,V_q))) = hAPP(c_Polynomial_Ocoeff(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Polynomial_Opoly(T_a)),V_p),V_q)),hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Nat_Onat),c_Polynomial_Odegree(T_a,V_p)),c_Polynomial_Odegree(T_a,V_q))) ) ).

fof(fact_Suc__le__eq,axiom,
    ! [V_n_2,V_m_2] :
      ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,hAPP(c_Nat_OSuc,V_m_2)),V_n_2))
    <=> hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),V_m_2),V_n_2)) ) ).

fof(fact_pos__add__strict,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( ( ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_b),V_c))
         => hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_b),hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),V_a),V_c))) )
       <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),c_Groups_Ozero__class_Ozero(T_a)),V_a)) )
     <= class_Rings_Olinordered__semidom(T_a) ) ).

fof(fact_le__0__eq,axiom,
    ! [V_n_2] :
      ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_n_2),c_Groups_Ozero__class_Ozero(tc_Nat_Onat)))
    <=> c_Groups_Ozero__class_Ozero(tc_Nat_Onat) = V_n_2 ) ).

fof(fact_poly__gcd__monic,axiom,
    ! [V_y,V_x,T_a] :
      ( ( ( c_Groups_Oone__class_Oone(T_a) = hAPP(c_Polynomial_Ocoeff(T_a,c_Polynomial_Opoly__gcd(T_a,V_x,V_y)),c_Polynomial_Odegree(T_a,c_Polynomial_Opoly__gcd(T_a,V_x,V_y)))
         <= ~ ( V_x = c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a))
              & c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a)) = V_y ) )
        & ( ( c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a)) = V_y
            & V_x = c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a)) )
         => c_Groups_Ozero__class_Ozero(T_a) = hAPP(c_Polynomial_Ocoeff(T_a,c_Polynomial_Opoly__gcd(T_a,V_x,V_y)),c_Polynomial_Odegree(T_a,c_Polynomial_Opoly__gcd(T_a,V_x,V_y))) ) )
     <= class_Fields_Ofield(T_a) ) ).

fof(arity_HOL__Obool__Orderings_Oord,axiom,
    class_Orderings_Oord(tc_HOL_Obool) ).

fof(fact_xt1_I3_J,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( ( V_a = V_b
       => ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,V_c),V_b))
         => hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,V_c),V_a)) ) )
     <= class_Orderings_Oorder(T_a) ) ).

fof(fact_trans__less__add2,axiom,
    ! [V_m,V_j,V_i] :
      ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),V_i),hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Nat_Onat),V_m),V_j)))
     <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),V_i),V_j)) ) ).

fof(fact_ln__realpow,axiom,
    ! [V_n,V_x] :
      ( hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),c_RealDef_Oreal(tc_Nat_Onat,V_n)),c_Transcendental_Oln(V_x)) = c_Transcendental_Oln(hAPP(hAPP(c_Power_Opower__class_Opower(tc_RealDef_Oreal),V_x),V_n))
     <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_RealDef_Oreal),c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)),V_x)) ) ).

fof(fact_less__add__Suc1,axiom,
    ! [V_m,V_i] : hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),V_i),hAPP(c_Nat_OSuc,hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Nat_Onat),V_i),V_m)))) ).

fof(arity_Complex__Ocomplex__Fields_Ofield__inverse__zero,axiom,
    class_Fields_Ofield__inverse__zero(tc_Complex_Ocomplex) ).

fof(arity_Nat__Onat__Orderings_Owellorder,axiom,
    class_Orderings_Owellorder(tc_Nat_Onat) ).

fof(fact_power__gt1,axiom,
    ! [V_n,V_a,T_a] :
      ( ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),c_Groups_Oone__class_Oone(T_a)),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),hAPP(c_Nat_OSuc,V_n))))
       <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),c_Groups_Oone__class_Oone(T_a)),V_a)) )
     <= class_Rings_Olinordered__semidom(T_a) ) ).

fof(arity_Nat__Onat__Rings_Olinordered__semiring__strict,axiom,
    class_Rings_Olinordered__semiring__strict(tc_Nat_Onat) ).

fof(fact_mod__diff__left__eq,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( c_Divides_Odiv__class_Omod(T_a,hAPP(hAPP(c_Groups_Ominus__class_Ominus(T_a),V_a),V_b),V_c) = c_Divides_Odiv__class_Omod(T_a,hAPP(hAPP(c_Groups_Ominus__class_Ominus(T_a),c_Divides_Odiv__class_Omod(T_a,V_a,V_c)),V_b),V_c)
     <= class_Divides_Oring__div(T_a) ) ).

fof(arity_Int__Oint__Rings_Oring__1__no__zero__divisors,axiom,
    class_Rings_Oring__1__no__zero__divisors(tc_Int_Oint) ).

fof(fact_add__left__cancel,axiom,
    ! [V_ca_2,V_b_2,V_a_2,T_a] :
      ( ( V_b_2 = V_ca_2
      <=> hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),V_a_2),V_b_2) = hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),V_a_2),V_ca_2) )
     <= class_Groups_Ocancel__semigroup__add(T_a) ) ).

fof(fact_linorder__cases,axiom,
    ! [V_y,V_x,T_a] :
      ( class_Orderings_Olinorder(T_a)
     => ( ~ hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_x),V_y))
       => ( V_x != V_y
         => hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_y),V_x)) ) ) ) ).

fof(fact_mult__nonpos__nonneg,axiom,
    ! [V_b,V_a,T_a] :
      ( ( ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b)),c_Groups_Ozero__class_Ozero(T_a)))
         <= hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a)),V_b)) )
       <= hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,V_a),c_Groups_Ozero__class_Ozero(T_a))) )
     <= class_Rings_Oordered__cancel__semiring(T_a) ) ).

fof(arity_Complex__Ocomplex__Groups_Ozero,axiom,
    class_Groups_Ozero(tc_Complex_Ocomplex) ).

fof(fact_inverse__zero__imp__zero,axiom,
    ! [V_a,T_a] :
      ( ( c_Rings_Oinverse__class_Oinverse(T_a,V_a) = c_Groups_Ozero__class_Ozero(T_a)
       => c_Groups_Ozero__class_Ozero(T_a) = V_a )
     <= class_Rings_Odivision__ring(T_a) ) ).

fof(fact_not__one__le__zero,axiom,
    ! [T_a] :
      ( ~ hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Oone__class_Oone(T_a)),c_Groups_Ozero__class_Ozero(T_a)))
     <= class_Rings_Olinordered__semidom(T_a) ) ).

fof(fact_mod__neg__neg__trivial,axiom,
    ! [V_b,V_a] :
      ( ( V_a = c_Divides_Odiv__class_Omod(tc_Int_Oint,V_a,V_b)
       <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Int_Oint),V_b),V_a)) )
     <= hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,V_a),c_Groups_Ozero__class_Ozero(tc_Int_Oint))) ) ).

fof(fact_poly__eq__iff,axiom,
    ! [V_qa_2,V_pb_2,T_a] :
      ( ( class_Int_Oring__char__0(T_a)
        & class_Rings_Oidom(T_a) )
     => ( V_qa_2 = V_pb_2
      <=> c_Polynomial_Opoly(T_a,V_qa_2) = c_Polynomial_Opoly(T_a,V_pb_2) ) ) ).

fof(fact_right__inverse,axiom,
    ! [V_a,T_a] :
      ( ( hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),c_Rings_Oinverse__class_Oinverse(T_a,V_a)) = c_Groups_Oone__class_Oone(T_a)
       <= V_a != c_Groups_Ozero__class_Ozero(T_a) )
     <= class_Rings_Odivision__ring(T_a) ) ).

fof(fact_less__add__eq__less,axiom,
    ! [V_n,V_m,V_l,V_k] :
      ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),V_k),V_l))
     => ( hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Nat_Onat),V_k),V_n) = hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Nat_Onat),V_m),V_l)
       => hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),V_m),V_n)) ) ) ).

fof(fact_degree__add__less,axiom,
    ! [V_q,V_n,V_p,T_a] :
      ( class_Groups_Ocomm__monoid__add(T_a)
     => ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),c_Polynomial_Odegree(T_a,V_p)),V_n))
       => ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),c_Polynomial_Odegree(T_a,V_q)),V_n))
         => hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),c_Polynomial_Odegree(T_a,hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Polynomial_Opoly(T_a)),V_p),V_q))),V_n)) ) ) ) ).

fof(arity_RealDef__Oreal__Fields_Olinordered__field__inverse__zero,axiom,
    class_Fields_Olinordered__field__inverse__zero(tc_RealDef_Oreal) ).

fof(arity_Polynomial__Opoly__Power_Opower,axiom,
    ! [T_1] :
      ( class_Power_Opower(tc_Polynomial_Opoly(T_1))
     <= class_Rings_Ocomm__semiring__1(T_1) ) ).

fof(arity_Int__Oint__Rings_Ono__zero__divisors,axiom,
    class_Rings_Ono__zero__divisors(tc_Int_Oint) ).

fof(fact_diff__is__0__eq_H,axiom,
    ! [V_n,V_m] :
      ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m),V_n))
     => hAPP(hAPP(c_Groups_Ominus__class_Ominus(tc_Nat_Onat),V_m),V_n) = c_Groups_Ozero__class_Ozero(tc_Nat_Onat) ) ).

fof(fact_Nat__Transfer_Otransfer__nat__int__function__closures_I5_J,axiom,
    hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint)),c_Groups_Ozero__class_Ozero(tc_Int_Oint))) ).

fof(fact_le__add1,axiom,
    ! [V_m,V_n] : hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_n),hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Nat_Onat),V_n),V_m))) ).

fof(fact_comm__mult__strict__left__mono,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( ( ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_c),V_a)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_c),V_b)))
         <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),c_Groups_Ozero__class_Ozero(T_a)),V_c)) )
       <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_a),V_b)) )
     <= class_Rings_Olinordered__comm__semiring__strict(T_a) ) ).

fof(fact_int__power__div__base,axiom,
    ! [V_k,V_m] :
      ( ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Int_Oint),c_Groups_Ozero__class_Ozero(tc_Int_Oint)),V_k))
       => c_Divides_Odiv__class_Odiv(tc_Int_Oint,hAPP(hAPP(c_Power_Opower__class_Opower(tc_Int_Oint),V_k),V_m),V_k) = hAPP(hAPP(c_Power_Opower__class_Opower(tc_Int_Oint),V_k),hAPP(hAPP(c_Groups_Ominus__class_Ominus(tc_Nat_Onat),V_m),hAPP(c_Nat_OSuc,c_Groups_Ozero__class_Ozero(tc_Nat_Onat)))) )
     <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),c_Groups_Ozero__class_Ozero(tc_Nat_Onat)),V_m)) ) ).

fof(fact_smult__1__left,axiom,
    ! [V_p,T_a] :
      ( class_Rings_Ocomm__semiring__1(T_a)
     => V_p = c_Polynomial_Osmult(T_a,c_Groups_Oone__class_Oone(T_a),V_p) ) ).

fof(arity_Nat__Onat__Semiring__Normalization_Ocomm__semiring__1__cancel__crossproduct,axiom,
    class_Semiring__Normalization_Ocomm__semiring__1__cancel__crossproduct(tc_Nat_Onat) ).

fof(fact_pdivmod__rel__0__iff,axiom,
    ! [V_r_2,V_qa_2,V_y_2,T_a] :
      ( class_Fields_Ofield(T_a)
     => ( c_Polynomial_Opdivmod__rel(T_a,c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a)),V_y_2,V_qa_2,V_r_2)
      <=> ( c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a)) = V_qa_2
          & c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a)) = V_r_2 ) ) ) ).

fof(arity_Polynomial__Opoly__Rings_Oring__no__zero__divisors,axiom,
    ! [T_1] :
      ( class_Rings_Oidom(T_1)
     => class_Rings_Oring__no__zero__divisors(tc_Polynomial_Opoly(T_1)) ) ).

fof(arity_Complex__Ocomplex__Groups_Omonoid__add,axiom,
    class_Groups_Omonoid__add(tc_Complex_Ocomplex) ).

fof(fact_degree__add__eq__right,axiom,
    ! [V_q,V_p,T_a] :
      ( ( c_Polynomial_Odegree(T_a,V_q) = c_Polynomial_Odegree(T_a,hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Polynomial_Opoly(T_a)),V_p),V_q))
       <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),c_Polynomial_Odegree(T_a,V_p)),c_Polynomial_Odegree(T_a,V_q))) )
     <= class_Groups_Ocomm__monoid__add(T_a) ) ).

fof(fact_mod__less__divisor,axiom,
    ! [V_m,V_n] :
      ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),c_Groups_Ozero__class_Ozero(tc_Nat_Onat)),V_n))
     => hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),c_Divides_Odiv__class_Omod(tc_Nat_Onat,V_m,V_n)),V_n)) ) ).

fof(fact_complex__mod__triangle__sub,axiom,
    ! [V_z,V_w] : hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_RealVector_Onorm__class_Onorm(tc_Complex_Ocomplex,V_w)),hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_RealDef_Oreal),c_RealVector_Onorm__class_Onorm(tc_Complex_Ocomplex,hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Complex_Ocomplex),V_w),V_z))),c_RealVector_Onorm__class_Onorm(tc_Complex_Ocomplex,V_z)))) ).

fof(fact_one__less__inverse,axiom,
    ! [V_a,T_a] :
      ( ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),c_Groups_Ozero__class_Ozero(T_a)),V_a))
       => ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),c_Groups_Oone__class_Oone(T_a)),c_Rings_Oinverse__class_Oinverse(T_a,V_a)))
         <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_a),c_Groups_Oone__class_Oone(T_a))) ) )
     <= class_Fields_Olinordered__field(T_a) ) ).

fof(fact_minus__poly__def,axiom,
    ! [V_qa_2,V_pb_2,T_a] :
      ( c_Polynomial_OAbs__poly(T_a,hAPP(hAPP(c_COMBS(tc_Nat_Onat,T_a,T_a),hAPP(c_COMBB(T_a,tc_fun(T_a,T_a),tc_Nat_Onat,c_Groups_Ominus__class_Ominus(T_a)),c_Polynomial_Ocoeff(T_a,V_pb_2))),c_Polynomial_Ocoeff(T_a,V_qa_2))) = hAPP(hAPP(c_Groups_Ominus__class_Ominus(tc_Polynomial_Opoly(T_a)),V_pb_2),V_qa_2)
     <= class_Groups_Oab__group__add(T_a) ) ).

fof(arity_Int__Oint__Rings_Oordered__comm__semiring,axiom,
    class_Rings_Oordered__comm__semiring(tc_Int_Oint) ).

fof(fact_mult__poly__0__left,axiom,
    ! [V_q,T_a] :
      ( c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a)) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Polynomial_Opoly(T_a)),c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a))),V_q)
     <= class_Rings_Ocomm__semiring__0(T_a) ) ).

fof(fact_poly__gcd_Osimps_I2_J,axiom,
    ! [V_x,V_y,T_a] :
      ( class_Fields_Ofield(T_a)
     => ( c_Polynomial_Opoly__gcd(T_a,V_x,V_y) = c_Polynomial_Opoly__gcd(T_a,V_y,c_Divides_Odiv__class_Omod(tc_Polynomial_Opoly(T_a),V_x,V_y))
       <= c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a)) != V_y ) ) ).

fof(arity_Polynomial__Opoly__Groups_Oone,axiom,
    ! [T_1] :
      ( class_Rings_Ocomm__semiring__1(T_1)
     => class_Groups_Oone(tc_Polynomial_Opoly(T_1)) ) ).

fof(fact_le__imp__0__less,axiom,
    ! [V_z] :
      ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint)),V_z))
     => hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Int_Oint),c_Groups_Ozero__class_Ozero(tc_Int_Oint)),hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Int_Oint),c_Groups_Oone__class_Oone(tc_Int_Oint)),V_z))) ) ).

fof(fact_div__mod__equality2,axiom,
    ! [V_c,V_a,V_b,T_a] :
      ( hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),V_a),V_c) = hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b),c_Divides_Odiv__class_Odiv(T_a,V_a,V_b))),c_Divides_Odiv__class_Omod(T_a,V_a,V_b))),V_c)
     <= class_Divides_Osemiring__div(T_a) ) ).

fof(fact_mult_Opos__bounded,axiom,
    ! [T_a] :
      ( ? [B_K] :
          ( ! [B_a,B_b] : hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_RealVector_Onorm__class_Onorm(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),B_a),B_b))),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),c_RealVector_Onorm__class_Onorm(T_a,B_a)),c_RealVector_Onorm__class_Onorm(T_a,B_b))),B_K)))
          & hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_RealDef_Oreal),c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)),B_K)) )
     <= class_RealVector_Oreal__normed__algebra(T_a) ) ).

fof(fact_less__add__Suc2,axiom,
    ! [V_m,V_i] : hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),V_i),hAPP(c_Nat_OSuc,hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Nat_Onat),V_m),V_i)))) ).

fof(fact_less__le__not__le,axiom,
    ! [V_y_2,V_x_2,T_a] :
      ( ( ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,V_x_2),V_y_2))
          & ~ hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,V_y_2),V_x_2)) )
      <=> hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_x_2),V_y_2)) )
     <= class_Orderings_Opreorder(T_a) ) ).

fof(fact_div__mult__self2,axiom,
    ! [V_c,V_a,V_b,T_a] :
      ( class_Divides_Osemiring__div(T_a)
     => ( V_b != c_Groups_Ozero__class_Ozero(T_a)
       => c_Divides_Odiv__class_Odiv(T_a,hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),V_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b),V_c)),V_b) = hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),V_c),c_Divides_Odiv__class_Odiv(T_a,V_a,V_b)) ) ) ).

fof(fact_not__less__eq,axiom,
    ! [V_n_2,V_m_2] :
      ( ~ hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),V_m_2),V_n_2))
    <=> hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),V_n_2),hAPP(c_Nat_OSuc,V_m_2))) ) ).

fof(fact_norm__mult__ineq,axiom,
    ! [V_y,V_x,T_a] :
      ( class_RealVector_Oreal__normed__algebra(T_a)
     => hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_RealVector_Onorm__class_Onorm(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_x),V_y))),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),c_RealVector_Onorm__class_Onorm(T_a,V_x)),c_RealVector_Onorm__class_Onorm(T_a,V_y)))) ) ).

fof(fact_inverse__positive__imp__positive,axiom,
    ! [V_a,T_a] :
      ( class_Fields_Olinordered__field(T_a)
     => ( ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),c_Groups_Ozero__class_Ozero(T_a)),V_a))
         <= c_Groups_Ozero__class_Ozero(T_a) != V_a )
       <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),c_Groups_Ozero__class_Ozero(T_a)),c_Rings_Oinverse__class_Oinverse(T_a,V_a))) ) ) ).

fof(arity_Polynomial__Opoly__Rings_Olinordered__semiring__strict,axiom,
    ! [T_1] :
      ( class_Rings_Olinordered__semiring__strict(tc_Polynomial_Opoly(T_1))
     <= class_Rings_Olinordered__idom(T_1) ) ).

fof(fact_zero__less__two,axiom,
    ! [T_a] :
      ( class_Rings_Olinordered__semidom(T_a)
     => hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),c_Groups_Ozero__class_Ozero(T_a)),hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),c_Groups_Oone__class_Oone(T_a)),c_Groups_Oone__class_Oone(T_a)))) ) ).

fof(fact_monom__eq__0,axiom,
    ! [V_n,T_a] :
      ( c_Polynomial_Omonom(T_a,c_Groups_Ozero__class_Ozero(T_a),V_n) = c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a))
     <= class_Groups_Ozero(T_a) ) ).

fof(fact_zadd__left__mono,axiom,
    ! [V_k,V_j,V_i] :
      ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Int_Oint),V_k),V_i)),hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Int_Oint),V_k),V_j)))
     <= hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,V_i),V_j)) ) ).

fof(fact_zdiv__mono2__neg,axiom,
    ! [V_b,V_b_H,V_a] :
      ( ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Int_Oint),c_Groups_Ozero__class_Ozero(tc_Int_Oint)),V_b_H))
       => ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,V_b_H),V_b))
         => hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Divides_Odiv__class_Odiv(tc_Int_Oint,V_a,V_b_H)),c_Divides_Odiv__class_Odiv(tc_Int_Oint,V_a,V_b))) ) )
     <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Int_Oint),V_a),c_Groups_Ozero__class_Ozero(tc_Int_Oint))) ) ).

fof(arity_Nat__Onat__Groups_Oordered__comm__monoid__add,axiom,
    class_Groups_Oordered__comm__monoid__add(tc_Nat_Onat) ).

fof(fact_power__one__right,axiom,
    ! [V_a,T_a] :
      ( class_Groups_Omonoid__mult(T_a)
     => V_a = hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),c_Groups_Oone__class_Oone(tc_Nat_Onat)) ) ).

fof(fact_Divides_Omod__div__equality_H,axiom,
    ! [V_n,V_m] : c_Divides_Odiv__class_Omod(tc_Nat_Onat,V_m,V_n) = hAPP(hAPP(c_Groups_Ominus__class_Ominus(tc_Nat_Onat),V_m),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),c_Divides_Odiv__class_Odiv(tc_Nat_Onat,V_m,V_n)),V_n)) ).

fof(fact_combine__common__factor,axiom,
    ! [V_c,V_b,V_e,V_a,T_a] :
      ( hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_e)),hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b),V_e)),V_c)) = hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),V_a),V_b)),V_e)),V_c)
     <= class_Rings_Osemiring(T_a) ) ).

fof(fact_Nat__Transfer_Otransfer__nat__int__function__closures_I2_J,axiom,
    ! [V_y,V_x] :
      ( ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint)),V_y))
       => hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_x),V_y))) )
     <= hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint)),V_x)) ) ).

fof(fact_ln__inj__iff,axiom,
    ! [V_y_2,V_x_2] :
      ( ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_RealDef_Oreal),c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)),V_y_2))
       => ( V_x_2 = V_y_2
        <=> c_Transcendental_Oln(V_x_2) = c_Transcendental_Oln(V_y_2) ) )
     <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_RealDef_Oreal),c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)),V_x_2)) ) ).

fof(fact_mod__by__1,axiom,
    ! [V_a,T_a] :
      ( c_Divides_Odiv__class_Omod(T_a,V_a,c_Groups_Oone__class_Oone(T_a)) = c_Groups_Ozero__class_Ozero(T_a)
     <= class_Divides_Osemiring__div(T_a) ) ).

fof(arity_Nat__Onat__Orderings_Opreorder,axiom,
    class_Orderings_Opreorder(tc_Nat_Onat) ).

fof(fact_realpow__pos__nth,axiom,
    ! [V_a,V_n] :
      ( ( ? [B_r] :
            ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_RealDef_Oreal),c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)),B_r))
            & V_a = hAPP(hAPP(c_Power_Opower__class_Opower(tc_RealDef_Oreal),B_r),V_n) )
       <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_RealDef_Oreal),c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)),V_a)) )
     <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),c_Groups_Ozero__class_Ozero(tc_Nat_Onat)),V_n)) ) ).

fof(fact_pos__mod__sign,axiom,
    ! [V_a,V_b] :
      ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Int_Oint),c_Groups_Ozero__class_Ozero(tc_Int_Oint)),V_b))
     => hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint)),c_Divides_Odiv__class_Omod(tc_Int_Oint,V_a,V_b))) ) ).

fof(arity_Nat__Onat__Power_Opower,axiom,
    class_Power_Opower(tc_Nat_Onat) ).

fof(arity_RealDef__Oreal__Rings_Olinordered__semiring,axiom,
    class_Rings_Olinordered__semiring(tc_RealDef_Oreal) ).

fof(fact_poly__add,axiom,
    ! [V_x,V_q,V_p,T_a] :
      ( class_Rings_Ocomm__semiring__0(T_a)
     => hAPP(c_Polynomial_Opoly(T_a,hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Polynomial_Opoly(T_a)),V_p),V_q)),V_x) = hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),hAPP(c_Polynomial_Opoly(T_a,V_p),V_x)),hAPP(c_Polynomial_Opoly(T_a,V_q),V_x)) ) ).

fof(fact_add__less__cancel__left,axiom,
    ! [V_b_2,V_a_2,V_ca_2,T_a] :
      ( ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_a_2),V_b_2))
      <=> hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),V_ca_2),V_a_2)),hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),V_ca_2),V_b_2))) )
     <= class_Groups_Oordered__ab__semigroup__add__imp__le(T_a) ) ).

fof(fact_poly__gcd_Oleft__commute,axiom,
    ! [V_c,V_a,V_b,T_a] :
      ( c_Polynomial_Opoly__gcd(T_a,V_b,c_Polynomial_Opoly__gcd(T_a,V_a,V_c)) = c_Polynomial_Opoly__gcd(T_a,V_a,c_Polynomial_Opoly__gcd(T_a,V_b,V_c))
     <= class_Fields_Ofield(T_a) ) ).

fof(fact_order__less__le,axiom,
    ! [V_y_2,V_x_2,T_a] :
      ( ( ( V_y_2 != V_x_2
          & hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,V_x_2),V_y_2)) )
      <=> hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_x_2),V_y_2)) )
     <= class_Orderings_Oorder(T_a) ) ).

fof(fact_div__1,axiom,
    ! [V_m] : V_m = c_Divides_Odiv__class_Odiv(tc_Nat_Onat,V_m,hAPP(c_Nat_OSuc,c_Groups_Ozero__class_Ozero(tc_Nat_Onat))) ).

fof(fact_smult__0__right,axiom,
    ! [V_a,T_a] :
      ( c_Polynomial_Osmult(T_a,V_a,c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a))) = c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a))
     <= class_Rings_Ocomm__semiring__0(T_a) ) ).

fof(fact_diff__add__0,axiom,
    ! [V_m,V_n] : hAPP(hAPP(c_Groups_Ominus__class_Ominus(tc_Nat_Onat),V_n),hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Nat_Onat),V_n),V_m)) = c_Groups_Ozero__class_Ozero(tc_Nat_Onat) ).

fof(fact_Nat__Transfer_Otransfer__nat__int__function__closures_I1_J,axiom,
    ! [V_y,V_x] :
      ( ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint)),V_y))
       => hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint)),hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Int_Oint),V_x),V_y))) )
     <= hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint)),V_x)) ) ).

fof(fact_double__add__less__zero__iff__single__add__less__zero,axiom,
    ! [V_a_2,T_a] :
      ( ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_a_2),c_Groups_Ozero__class_Ozero(T_a)))
      <=> hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),V_a_2),V_a_2)),c_Groups_Ozero__class_Ozero(T_a))) )
     <= class_Groups_Olinordered__ab__group__add(T_a) ) ).

fof(fact_order__less__imp__not__eq2,axiom,
    ! [V_y,V_x,T_a] :
      ( ( V_y != V_x
       <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_x),V_y)) )
     <= class_Orderings_Oorder(T_a) ) ).

fof(fact_xt1_I8_J,axiom,
    ! [V_z,V_x,V_y,T_a] :
      ( class_Orderings_Oorder(T_a)
     => ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,V_y),V_x))
       => ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_z),V_x))
         <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_z),V_y)) ) ) ) ).

fof(fact_div__add__self1,axiom,
    ! [V_a,V_b,T_a] :
      ( ( hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),c_Divides_Odiv__class_Odiv(T_a,V_a,V_b)),c_Groups_Oone__class_Oone(T_a)) = c_Divides_Odiv__class_Odiv(T_a,hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),V_b),V_a),V_b)
       <= c_Groups_Ozero__class_Ozero(T_a) != V_b )
     <= class_Divides_Osemiring__div(T_a) ) ).

fof(fact_zmult2__lemma__aux4,axiom,
    ! [V_q,V_b,V_r,V_c] :
      ( ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint)),V_r))
       => ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Int_Oint),V_r),V_b))
         => hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Int_Oint),hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Int_Oint),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_b),c_Divides_Odiv__class_Omod(tc_Int_Oint,V_q,V_c))),V_r)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_b),V_c))) ) )
     <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Int_Oint),c_Groups_Ozero__class_Ozero(tc_Int_Oint)),V_c)) ) ).

fof(fact_le__SucE,axiom,
    ! [V_n,V_m] :
      ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m),hAPP(c_Nat_OSuc,V_n)))
     => ( ~ hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m),V_n))
       => hAPP(c_Nat_OSuc,V_n) = V_m ) ) ).

fof(fact_real__natceiling__ge,axiom,
    ! [V_x] : hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,V_x),c_RealDef_Oreal(tc_Nat_Onat,c_RComplete_Onatceiling(V_x)))) ).

fof(fact_ab__semigroup__mult__class_Omult__ac_I1_J,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( class_Groups_Oab__semigroup__mult(T_a)
     => hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b)),V_c) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b),V_c)) ) ).

fof(fact_div__mult__self1__is__m,axiom,
    ! [V_m,V_n] :
      ( c_Divides_Odiv__class_Odiv(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_n),V_m),V_n) = V_m
     <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),c_Groups_Ozero__class_Ozero(tc_Nat_Onat)),V_n)) ) ).

fof(arity_Complex__Ocomplex__Groups_Ocancel__ab__semigroup__add,axiom,
    class_Groups_Ocancel__ab__semigroup__add(tc_Complex_Ocomplex) ).

fof(fact_mod__mult__distrib,axiom,
    ! [V_k,V_n,V_m] : c_Divides_Odiv__class_Omod(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_m),V_k),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_n),V_k)) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),c_Divides_Odiv__class_Omod(tc_Nat_Onat,V_m,V_n)),V_k) ).

fof(fact_zless__imp__add1__zle,axiom,
    ! [V_z,V_w] :
      ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Int_Oint),V_w),c_Groups_Oone__class_Oone(tc_Int_Oint))),V_z))
     <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Int_Oint),V_w),V_z)) ) ).

fof(fact_mult__left_Ononneg__bounded,axiom,
    ! [V_y,T_a] :
      ( ? [B_K] :
          ( ! [B_x] : hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_RealVector_Onorm__class_Onorm(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),B_x),V_y))),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),c_RealVector_Onorm__class_Onorm(T_a,B_x)),B_K)))
          & hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)),B_K)) )
     <= class_RealVector_Oreal__normed__algebra(T_a) ) ).

fof(arity_Complex__Ocomplex__Groups_Ocomm__monoid__mult,axiom,
    class_Groups_Ocomm__monoid__mult(tc_Complex_Ocomplex) ).

fof(fact_monom__eq__0__iff,axiom,
    ! [V_n_2,V_a_2,T_a] :
      ( ( V_a_2 = c_Groups_Ozero__class_Ozero(T_a)
      <=> c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a)) = c_Polynomial_Omonom(T_a,V_a_2,V_n_2) )
     <= class_Groups_Ozero(T_a) ) ).

fof(fact_xt1_I5_J,axiom,
    ! [V_x,V_y,T_a] :
      ( ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,V_y),V_x))
       => ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,V_x),V_y))
         => V_y = V_x ) )
     <= class_Orderings_Oorder(T_a) ) ).

fof(fact_mult__1__right,axiom,
    ! [V_a,T_a] :
      ( V_a = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),c_Groups_Oone__class_Oone(T_a))
     <= class_Groups_Omonoid__mult(T_a) ) ).

fof(fact_degree__1,axiom,
    ! [T_a] :
      ( c_Groups_Ozero__class_Ozero(tc_Nat_Onat) = c_Polynomial_Odegree(T_a,c_Groups_Oone__class_Oone(tc_Polynomial_Opoly(T_a)))
     <= class_Rings_Ocomm__semiring__1(T_a) ) ).

fof(fact_inverse__eq__imp__eq,axiom,
    ! [V_b,V_a,T_a] :
      ( class_Rings_Odivision__ring__inverse__zero(T_a)
     => ( c_Rings_Oinverse__class_Oinverse(T_a,V_b) = c_Rings_Oinverse__class_Oinverse(T_a,V_a)
       => V_a = V_b ) ) ).

fof(fact_Suc__lessD,axiom,
    ! [V_n,V_m] :
      ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),hAPP(c_Nat_OSuc,V_m)),V_n))
     => hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),V_m),V_n)) ) ).

fof(arity_Polynomial__Opoly__Groups_Oab__semigroup__mult,axiom,
    ! [T_1] :
      ( class_Groups_Oab__semigroup__mult(tc_Polynomial_Opoly(T_1))
     <= class_Rings_Ocomm__semiring__0(T_1) ) ).

fof(fact_left__inverse,axiom,
    ! [V_a,T_a] :
      ( ( V_a != c_Groups_Ozero__class_Ozero(T_a)
       => c_Groups_Oone__class_Oone(T_a) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Rings_Oinverse__class_Oinverse(T_a,V_a)),V_a) )
     <= class_Rings_Odivision__ring(T_a) ) ).

fof(help_c__COMBK__1,axiom,
    ! [V_Q,V_P,T_b,T_a] : hAPP(c_COMBK(T_a,T_b,V_P),V_Q) = V_P ).

fof(fact_not__add__less2,axiom,
    ! [V_i,V_j] : ~ hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Nat_Onat),V_j),V_i)),V_i)) ).

fof(fact_LIMSEQ__inverse__realpow__zero__lemma,axiom,
    ! [V_n,V_x] :
      ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)),V_x))
     => hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_RealDef_Oreal),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),c_RealDef_Oreal(tc_Nat_Onat,V_n)),V_x)),c_Groups_Oone__class_Oone(tc_RealDef_Oreal))),hAPP(hAPP(c_Power_Opower__class_Opower(tc_RealDef_Oreal),hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_RealDef_Oreal),V_x),c_Groups_Oone__class_Oone(tc_RealDef_Oreal))),V_n))) ) ).

fof(fact_less__Suc__eq__0__disj,axiom,
    ! [V_n_2,V_m_2] :
      ( ( ? [B_j] :
            ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),B_j),V_n_2))
            & V_m_2 = hAPP(c_Nat_OSuc,B_j) )
        | c_Groups_Ozero__class_Ozero(tc_Nat_Onat) = V_m_2 )
    <=> hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),V_m_2),hAPP(c_Nat_OSuc,V_n_2))) ) ).

fof(fact_field__inverse,axiom,
    ! [V_a,T_a] :
      ( class_Fields_Ofield(T_a)
     => ( V_a != c_Groups_Ozero__class_Ozero(T_a)
       => hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Rings_Oinverse__class_Oinverse(T_a,V_a)),V_a) = c_Groups_Oone__class_Oone(T_a) ) ) ).

fof(fact_diff__mult__distrib2,axiom,
    ! [V_n,V_m,V_k] : hAPP(hAPP(c_Groups_Ominus__class_Ominus(tc_Nat_Onat),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_k),V_m)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_k),V_n)) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_k),hAPP(hAPP(c_Groups_Ominus__class_Ominus(tc_Nat_Onat),V_m),V_n)) ).

fof(fact_less__eq__real__def,axiom,
    ! [V_y_2,V_x_2] :
      ( ( V_y_2 = V_x_2
        | hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_RealDef_Oreal),V_x_2),V_y_2)) )
    <=> hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,V_x_2),V_y_2)) ) ).

fof(fact_poly__gcd_Ocommute,axiom,
    ! [V_b,V_a,T_a] :
      ( c_Polynomial_Opoly__gcd(T_a,V_a,V_b) = c_Polynomial_Opoly__gcd(T_a,V_b,V_a)
     <= class_Fields_Ofield(T_a) ) ).

fof(fact_comm__semiring__1__class_Onormalizing__semiring__rules_I14_J,axiom,
    ! [V_ry,V_rx,V_ly,V_lx,T_a] :
      ( hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_lx),V_ly)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_rx),V_ry)) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_lx),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_ly),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_rx),V_ry)))
     <= class_Rings_Ocomm__semiring__1(T_a) ) ).

fof(fact_ln__mult,axiom,
    ! [V_y,V_x] :
      ( ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_RealDef_Oreal),c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)),V_y))
       => c_Transcendental_Oln(hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),V_x),V_y)) = hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_RealDef_Oreal),c_Transcendental_Oln(V_x)),c_Transcendental_Oln(V_y)) )
     <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_RealDef_Oreal),c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)),V_x)) ) ).

fof(fact_less__irrefl__nat,axiom,
    ! [V_n] : ~ hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),V_n),V_n)) ).

fof(fact_Zero__neq__Suc,axiom,
    ! [V_m] : c_Groups_Ozero__class_Ozero(tc_Nat_Onat) != hAPP(c_Nat_OSuc,V_m) ).

fof(arity_RealDef__Oreal__Groups_Oab__semigroup__add,axiom,
    class_Groups_Oab__semigroup__add(tc_RealDef_Oreal) ).

fof(fact_div__less,axiom,
    ! [V_n,V_m] :
      ( c_Divides_Odiv__class_Odiv(tc_Nat_Onat,V_m,V_n) = c_Groups_Ozero__class_Ozero(tc_Nat_Onat)
     <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),V_m),V_n)) ) ).

fof(arity_Int__Oint__Groups_Oordered__ab__group__add,axiom,
    class_Groups_Oordered__ab__group__add(tc_Int_Oint) ).

fof(fact_comm__semiring__1__class_Onormalizing__semiring__rules_I6_J,axiom,
    ! [V_a,T_a] :
      ( hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),V_a),c_Groups_Ozero__class_Ozero(T_a)) = V_a
     <= class_Rings_Ocomm__semiring__1(T_a) ) ).

fof(fact_le__iff__diff__le__0,axiom,
    ! [V_b_2,V_a_2,T_a] :
      ( class_Groups_Oordered__ab__group__add(T_a)
     => ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,V_a_2),V_b_2))
      <=> hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Groups_Ominus__class_Ominus(T_a),V_a_2),V_b_2)),c_Groups_Ozero__class_Ozero(T_a))) ) ) ).

fof(fact_norm__not__less__zero,axiom,
    ! [V_x,T_a] :
      ( ~ hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_RealDef_Oreal),c_RealVector_Onorm__class_Onorm(T_a,V_x)),c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)))
     <= class_RealVector_Oreal__normed__vector(T_a) ) ).

fof(arity_Polynomial__Opoly__Semiring__Normalization_Ocomm__semiring__1__cancel__crossproduct,axiom,
    ! [T_1] :
      ( class_Semiring__Normalization_Ocomm__semiring__1__cancel__crossproduct(tc_Polynomial_Opoly(T_1))
     <= class_Rings_Oidom(T_1) ) ).

fof(fact_mult__1__left,axiom,
    ! [V_a,T_a] :
      ( hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Groups_Oone__class_Oone(T_a)),V_a) = V_a
     <= class_Groups_Omonoid__mult(T_a) ) ).

fof(fact_ord__less__eq__trans,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( ( ( V_b = V_c
         => hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_a),V_c)) )
       <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_a),V_b)) )
     <= class_Orderings_Oord(T_a) ) ).

fof(fact_mod__Suc,axiom,
    ! [V_n,V_m] :
      ( ( c_Groups_Ozero__class_Ozero(tc_Nat_Onat) = c_Divides_Odiv__class_Omod(tc_Nat_Onat,hAPP(c_Nat_OSuc,V_m),V_n)
       <= V_n = hAPP(c_Nat_OSuc,c_Divides_Odiv__class_Omod(tc_Nat_Onat,V_m,V_n)) )
      & ( V_n != hAPP(c_Nat_OSuc,c_Divides_Odiv__class_Omod(tc_Nat_Onat,V_m,V_n))
       => c_Divides_Odiv__class_Omod(tc_Nat_Onat,hAPP(c_Nat_OSuc,V_m),V_n) = hAPP(c_Nat_OSuc,c_Divides_Odiv__class_Omod(tc_Nat_Onat,V_m,V_n)) ) ) ).

fof(fact_real__mult__assoc,axiom,
    ! [V_z3,V_z2,V_z1] : hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),V_z1),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),V_z2),V_z3)) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),V_z1),V_z2)),V_z3) ).

fof(arity_RealDef__Oreal__Groups_Ocomm__monoid__mult,axiom,
    class_Groups_Ocomm__monoid__mult(tc_RealDef_Oreal) ).

fof(arity_Complex__Ocomplex__Groups_Oab__semigroup__add,axiom,
    class_Groups_Oab__semigroup__add(tc_Complex_Ocomplex) ).

fof(fact_not__one__less__zero,axiom,
    ! [T_a] :
      ( ~ hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),c_Groups_Oone__class_Oone(T_a)),c_Groups_Ozero__class_Ozero(T_a)))
     <= class_Rings_Olinordered__semidom(T_a) ) ).

fof(fact_mod__mult__self2__is__0,axiom,
    ! [V_b,V_a,T_a] :
      ( class_Divides_Osemiring__div(T_a)
     => c_Divides_Odiv__class_Omod(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b),V_b) = c_Groups_Ozero__class_Ozero(T_a) ) ).

fof(fact_one__le__mult__iff,axiom,
    ! [V_n_2,V_m_2] :
      ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,hAPP(c_Nat_OSuc,c_Groups_Ozero__class_Ozero(tc_Nat_Onat))),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_m_2),V_n_2)))
    <=> ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,hAPP(c_Nat_OSuc,c_Groups_Ozero__class_Ozero(tc_Nat_Onat))),V_m_2))
        & hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,hAPP(c_Nat_OSuc,c_Groups_Ozero__class_Ozero(tc_Nat_Onat))),V_n_2)) ) ) ).

fof(fact_inverse__nonpositive__iff__nonpositive,axiom,
    ! [V_a_2,T_a] :
      ( class_Fields_Olinordered__field__inverse__zero(T_a)
     => ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,c_Rings_Oinverse__class_Oinverse(T_a,V_a_2)),c_Groups_Ozero__class_Ozero(T_a)))
      <=> hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,V_a_2),c_Groups_Ozero__class_Ozero(T_a))) ) ) ).

fof(fact_mult_Ozero__left,axiom,
    ! [V_b,T_a] :
      ( c_Groups_Ozero__class_Ozero(T_a) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Groups_Ozero__class_Ozero(T_a)),V_b)
     <= class_RealVector_Oreal__normed__algebra(T_a) ) ).

fof(fact_add__strict__mono,axiom,
    ! [V_d,V_c,V_b,V_a,T_a] :
      ( ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_a),V_b))
       => ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_c),V_d))
         => hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),V_a),V_c)),hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),V_b),V_d))) ) )
     <= class_Groups_Oordered__cancel__ab__semigroup__add(T_a) ) ).

fof(fact_div__le__mono2,axiom,
    ! [V_k,V_n,V_m] :
      ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),c_Groups_Ozero__class_Ozero(tc_Nat_Onat)),V_m))
     => ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m),V_n))
       => hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,c_Divides_Odiv__class_Odiv(tc_Nat_Onat,V_k,V_n)),c_Divides_Odiv__class_Odiv(tc_Nat_Onat,V_k,V_m))) ) ) ).

fof(fact_mult__pos__neg2,axiom,
    ! [V_b,V_a,T_a] :
      ( ( ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b),V_a)),c_Groups_Ozero__class_Ozero(T_a)))
         <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_b),c_Groups_Ozero__class_Ozero(T_a))) )
       <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),c_Groups_Ozero__class_Ozero(T_a)),V_a)) )
     <= class_Rings_Olinordered__semiring__strict(T_a) ) ).

fof(arity_RealDef__Oreal__Rings_Oring__1,axiom,
    class_Rings_Oring__1(tc_RealDef_Oreal) ).

fof(fact_linorder__linear,axiom,
    ! [V_y,V_x,T_a] :
      ( ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,V_y),V_x))
        | hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,V_x),V_y)) )
     <= class_Orderings_Olinorder(T_a) ) ).

fof(fact_poly__zero,axiom,
    ! [V_pb_2,T_a] :
      ( ( class_Int_Oring__char__0(T_a)
        & class_Rings_Oidom(T_a) )
     => ( V_pb_2 = c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a))
      <=> c_Polynomial_Opoly(T_a,c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a))) = c_Polynomial_Opoly(T_a,V_pb_2) ) ) ).

fof(fact_add__poly__code_I2_J,axiom,
    ! [V_p,T_a] :
      ( V_p = hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Polynomial_Opoly(T_a)),V_p),c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a)))
     <= class_Groups_Ocomm__monoid__add(T_a) ) ).

fof(fact_natceiling__add,axiom,
    ! [V_a,V_x] :
      ( hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Nat_Onat),c_RComplete_Onatceiling(V_x)),V_a) = c_RComplete_Onatceiling(hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_RealDef_Oreal),V_x),c_RealDef_Oreal(tc_Nat_Onat,V_a)))
     <= hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)),V_x)) ) ).

fof(fact_order__less__not__sym,axiom,
    ! [V_y,V_x,T_a] :
      ( class_Orderings_Opreorder(T_a)
     => ( ~ hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_y),V_x))
       <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_x),V_y)) ) ) ).

fof(fact_order__eq__refl,axiom,
    ! [V_y,V_x,T_a] :
      ( class_Orderings_Opreorder(T_a)
     => ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,V_x),V_y))
       <= V_y = V_x ) ) ).

fof(fact_plus__nat_Oadd__0,axiom,
    ! [V_n] : V_n = hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Nat_Onat),c_Groups_Ozero__class_Ozero(tc_Nat_Onat)),V_n) ).

fof(fact_zero__neq__one,axiom,
    ! [T_a] :
      ( class_Rings_Ozero__neq__one(T_a)
     => c_Groups_Oone__class_Oone(T_a) != c_Groups_Ozero__class_Ozero(T_a) ) ).

fof(fact_diff__eq__diff__eq,axiom,
    ! [V_d_2,V_ca_2,V_b_2,V_a_2,T_a] :
      ( class_Groups_Oab__group__add(T_a)
     => ( ( V_d_2 = V_ca_2
        <=> V_b_2 = V_a_2 )
       <= hAPP(hAPP(c_Groups_Ominus__class_Ominus(T_a),V_a_2),V_b_2) = hAPP(hAPP(c_Groups_Ominus__class_Ominus(T_a),V_ca_2),V_d_2) ) ) ).

fof(fact_le__less__Suc__eq,axiom,
    ! [V_n_2,V_m_2] :
      ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m_2),V_n_2))
     => ( V_n_2 = V_m_2
      <=> hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),V_n_2),hAPP(c_Nat_OSuc,V_m_2))) ) ) ).

fof(fact_nonzero__inverse__mult__distrib,axiom,
    ! [V_b,V_a,T_a] :
      ( class_Rings_Odivision__ring(T_a)
     => ( V_a != c_Groups_Ozero__class_Ozero(T_a)
       => ( c_Rings_Oinverse__class_Oinverse(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b)) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Rings_Oinverse__class_Oinverse(T_a,V_b)),c_Rings_Oinverse__class_Oinverse(T_a,V_a))
         <= c_Groups_Ozero__class_Ozero(T_a) != V_b ) ) ) ).

fof(fact_natceiling__one,axiom,
    c_Groups_Oone__class_Oone(tc_Nat_Onat) = c_RComplete_Onatceiling(c_Groups_Oone__class_Oone(tc_RealDef_Oreal)) ).

fof(fact_le__diff__conv2,axiom,
    ! [V_i_2,V_j_2,V_k_2] :
      ( ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_i_2),hAPP(hAPP(c_Groups_Ominus__class_Ominus(tc_Nat_Onat),V_j_2),V_k_2)))
      <=> hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Nat_Onat),V_i_2),V_k_2)),V_j_2)) )
     <= hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_k_2),V_j_2)) ) ).

fof(fact_semiring__div__class_Omod__div__equality_H,axiom,
    ! [V_b,V_a,T_a] :
      ( V_a = hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),c_Divides_Odiv__class_Omod(T_a,V_a,V_b)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Divides_Odiv__class_Odiv(T_a,V_a,V_b)),V_b))
     <= class_Divides_Osemiring__div(T_a) ) ).

fof(fact_diff__add__assoc,axiom,
    ! [V_i,V_j,V_k] :
      ( hAPP(hAPP(c_Groups_Ominus__class_Ominus(tc_Nat_Onat),hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Nat_Onat),V_i),V_j)),V_k) = hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Nat_Onat),V_i),hAPP(hAPP(c_Groups_Ominus__class_Ominus(tc_Nat_Onat),V_j),V_k))
     <= hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_k),V_j)) ) ).

fof(arity_Polynomial__Opoly__Orderings_Olinorder,axiom,
    ! [T_1] :
      ( class_Orderings_Olinorder(tc_Polynomial_Opoly(T_1))
     <= class_Rings_Olinordered__idom(T_1) ) ).

fof(fact_zdiv__mono2__lemma,axiom,
    ! [V_r_H,V_q_H,V_b_H,V_r,V_q,V_b] :
      ( hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Int_Oint),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_b),V_q)),V_r) = hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Int_Oint),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_b_H),V_q_H)),V_r_H)
     => ( ( ( ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Int_Oint),c_Groups_Ozero__class_Ozero(tc_Int_Oint)),V_b_H))
             => ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,V_q),V_q_H))
               <= hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,V_b_H),V_b)) ) )
           <= hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint)),V_r)) )
         <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Int_Oint),V_r_H),V_b_H)) )
       <= hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint)),hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Int_Oint),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_b_H),V_q_H)),V_r_H))) ) ) ).

fof(fact_mult__zero__right,axiom,
    ! [V_a,T_a] :
      ( hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),c_Groups_Ozero__class_Ozero(T_a)) = c_Groups_Ozero__class_Ozero(T_a)
     <= class_Rings_Omult__zero(T_a) ) ).

fof(fact_Nat__Transfer_Otransfer__nat__int__function__closures_I6_J,axiom,
    hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint)),c_Groups_Oone__class_Oone(tc_Int_Oint))) ).

fof(fact_add__monom,axiom,
    ! [V_b,V_n,V_a,T_a] :
      ( c_Polynomial_Omonom(T_a,hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),V_a),V_b),V_n) = hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Polynomial_Opoly(T_a)),c_Polynomial_Omonom(T_a,V_a,V_n)),c_Polynomial_Omonom(T_a,V_b,V_n))
     <= class_Groups_Ocomm__monoid__add(T_a) ) ).

fof(fact_mult__strict__mono,axiom,
    ! [V_d,V_c,V_b,V_a,T_a] :
      ( class_Rings_Olinordered__semiring__strict(T_a)
     => ( ( ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),c_Groups_Ozero__class_Ozero(T_a)),V_b))
           => ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a)),V_c))
             => hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_c)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b),V_d))) ) )
         <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_c),V_d)) )
       <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_a),V_b)) ) ) ).

fof(arity_RealDef__Oreal__Groups_Oordered__ab__semigroup__add__imp__le,axiom,
    class_Groups_Oordered__ab__semigroup__add__imp__le(tc_RealDef_Oreal) ).

fof(fact_add__less__mono1,axiom,
    ! [V_k,V_j,V_i] :
      ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),V_i),V_j))
     => hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Nat_Onat),V_i),V_k)),hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Nat_Onat),V_j),V_k))) ) ).

fof(fact_double__zero__sym,axiom,
    ! [V_a_2,T_a] :
      ( class_Groups_Olinordered__ab__group__add(T_a)
     => ( hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),V_a_2),V_a_2) = c_Groups_Ozero__class_Ozero(T_a)
      <=> c_Groups_Ozero__class_Ozero(T_a) = V_a_2 ) ) ).

fof(arity_Polynomial__Opoly__Rings_Olinordered__ring,axiom,
    ! [T_1] :
      ( class_Rings_Olinordered__ring(tc_Polynomial_Opoly(T_1))
     <= class_Rings_Olinordered__idom(T_1) ) ).

fof(fact_nat__add__commute,axiom,
    ! [V_n,V_m] : hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Nat_Onat),V_m),V_n) = hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Nat_Onat),V_n),V_m) ).

fof(fact_real__of__nat__1,axiom,
    c_Groups_Oone__class_Oone(tc_RealDef_Oreal) = c_RealDef_Oreal(tc_Nat_Onat,c_Groups_Oone__class_Oone(tc_Nat_Onat)) ).

fof(fact_monom__eq__iff,axiom,
    ! [V_b_2,V_n_2,V_a_2,T_a] :
      ( class_Groups_Ozero(T_a)
     => ( V_b_2 = V_a_2
      <=> c_Polynomial_Omonom(T_a,V_b_2,V_n_2) = c_Polynomial_Omonom(T_a,V_a_2,V_n_2) ) ) ).

fof(fact_order__less__trans,axiom,
    ! [V_z,V_y,V_x,T_a] :
      ( ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_x),V_y))
       => ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_y),V_z))
         => hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_x),V_z)) ) )
     <= class_Orderings_Opreorder(T_a) ) ).

fof(fact_comm__semiring__1__class_Onormalizing__semiring__rules_I24_J,axiom,
    ! [V_c,V_a,T_a] :
      ( hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),V_a),V_c) = hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),V_c),V_a)
     <= class_Rings_Ocomm__semiring__1(T_a) ) ).

fof(fact_real__natfloor__add__one__gt,axiom,
    ! [V_x] : hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_RealDef_Oreal),V_x),hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_RealDef_Oreal),c_RealDef_Oreal(tc_Nat_Onat,c_RComplete_Onatfloor(V_x))),c_Groups_Oone__class_Oone(tc_RealDef_Oreal)))) ).

fof(fact_Suc__mono,axiom,
    ! [V_n,V_m] :
      ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),hAPP(c_Nat_OSuc,V_m)),hAPP(c_Nat_OSuc,V_n)))
     <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),V_m),V_n)) ) ).

fof(fact_pdivmod__rel,axiom,
    ! [V_y,V_x,T_a] :
      ( c_Polynomial_Opdivmod__rel(T_a,V_x,V_y,c_Divides_Odiv__class_Odiv(tc_Polynomial_Opoly(T_a),V_x,V_y),c_Divides_Odiv__class_Omod(tc_Polynomial_Opoly(T_a),V_x,V_y))
     <= class_Fields_Ofield(T_a) ) ).

fof(arity_Int__Oint__Rings_Ocomm__ring__1,axiom,
    class_Rings_Ocomm__ring__1(tc_Int_Oint) ).

fof(arity_Complex__Ocomplex__Rings_Oidom,axiom,
    class_Rings_Oidom(tc_Complex_Ocomplex) ).

fof(fact_le__add2,axiom,
    ! [V_m,V_n] : hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_n),hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Nat_Onat),V_m),V_n))) ).

fof(arity_Int__Oint__Rings_Ozero__neq__one,axiom,
    class_Rings_Ozero__neq__one(tc_Int_Oint) ).

fof(arity_Complex__Ocomplex__RealVector_Oreal__normed__algebra__1,axiom,
    class_RealVector_Oreal__normed__algebra__1(tc_Complex_Ocomplex) ).

fof(fact_add__le__mono,axiom,
    ! [V_l,V_k,V_j,V_i] :
      ( ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_k),V_l))
       => hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Nat_Onat),V_i),V_k)),hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Nat_Onat),V_j),V_l))) )
     <= hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_i),V_j)) ) ).

fof(fact_pdivmod__rel__def,axiom,
    ! [V_r_2,V_qa_2,V_y_2,V_x_2,T_a] :
      ( ( ( hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Polynomial_Opoly(T_a)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Polynomial_Opoly(T_a)),V_qa_2),V_y_2)),V_r_2) = V_x_2
          & ( V_y_2 = c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a))
           => V_qa_2 = c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a)) )
          & ( ( c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a)) = V_r_2
              | hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),c_Polynomial_Odegree(T_a,V_r_2)),c_Polynomial_Odegree(T_a,V_y_2))) )
           <= V_y_2 != c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a)) ) )
      <=> c_Polynomial_Opdivmod__rel(T_a,V_x_2,V_y_2,V_qa_2,V_r_2) )
     <= class_Fields_Ofield(T_a) ) ).

fof(fact_order__le__less,axiom,
    ! [V_y_2,V_x_2,T_a] :
      ( class_Orderings_Oorder(T_a)
     => ( ( V_y_2 = V_x_2
          | hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_x_2),V_y_2)) )
      <=> hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,V_x_2),V_y_2)) ) ) ).

fof(fact_mod__pos__neg__trivial,axiom,
    ! [V_b,V_a] :
      ( ( hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Int_Oint),V_a),V_b) = c_Divides_Odiv__class_Omod(tc_Int_Oint,V_a,V_b)
       <= hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Int_Oint),V_a),V_b)),c_Groups_Ozero__class_Ozero(tc_Int_Oint))) )
     <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Int_Oint),c_Groups_Ozero__class_Ozero(tc_Int_Oint)),V_a)) ) ).

fof(fact_less__add__iff2,axiom,
    ! [V_d_2,V_b_2,V_ca_2,V_e_2,V_a_2,T_a] :
      ( class_Rings_Oordered__ring(T_a)
     => ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_ca_2),hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),hAPP(hAPP(c_Groups_Ominus__class_Ominus(T_a),V_b_2),V_a_2)),V_e_2)),V_d_2)))
      <=> hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a_2),V_e_2)),V_ca_2)),hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b_2),V_e_2)),V_d_2))) ) ) ).

fof(fact_sum__squares__gt__zero__iff,axiom,
    ! [V_y_2,V_x_2,T_a] :
      ( ( ( V_x_2 != c_Groups_Ozero__class_Ozero(T_a)
          | c_Groups_Ozero__class_Ozero(T_a) != V_y_2 )
      <=> hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),c_Groups_Ozero__class_Ozero(T_a)),hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_x_2),V_x_2)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_y_2),V_y_2)))) )
     <= class_Rings_Olinordered__ring__strict(T_a) ) ).

fof(fact_inverse__add,axiom,
    ! [V_b,V_a,T_a] :
      ( ( c_Groups_Ozero__class_Ozero(T_a) != V_a
       => ( hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),c_Rings_Oinverse__class_Oinverse(T_a,V_a)),c_Rings_Oinverse__class_Oinverse(T_a,V_b)) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),V_a),V_b)),c_Rings_Oinverse__class_Oinverse(T_a,V_a))),c_Rings_Oinverse__class_Oinverse(T_a,V_b))
         <= c_Groups_Ozero__class_Ozero(T_a) != V_b ) )
     <= class_Fields_Ofield(T_a) ) ).

fof(fact_real__mult__le__cancel__iff1,axiom,
    ! [V_y_2,V_x_2,V_z_2] :
      ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_RealDef_Oreal),c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)),V_z_2))
     => ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),V_x_2),V_z_2)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),V_y_2),V_z_2)))
      <=> hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,V_x_2),V_y_2)) ) ) ).

fof(fact_power__gt1__lemma,axiom,
    ! [V_n,V_a,T_a] :
      ( class_Rings_Olinordered__semidom(T_a)
     => ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),c_Groups_Oone__class_Oone(T_a)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_n))))
       <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),c_Groups_Oone__class_Oone(T_a)),V_a)) ) ) ).

fof(fact_zmult__zless__mono2,axiom,
    ! [V_k,V_j,V_i] :
      ( ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Int_Oint),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_k),V_i)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_k),V_j)))
       <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Int_Oint),c_Groups_Ozero__class_Ozero(tc_Int_Oint)),V_k)) )
     <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Int_Oint),V_i),V_j)) ) ).

fof(fact_a00,axiom,
    c_Groups_Ozero__class_Ozero(tc_Complex_Ocomplex) != hAPP(c_Polynomial_Opoly(tc_Complex_Ocomplex,v_q____),c_Groups_Ozero__class_Ozero(tc_Complex_Ocomplex)) ).

fof(fact_Bseq__iff,axiom,
    ! [V_X_2,T_a] :
      ( class_RealVector_Oreal__normed__vector(T_a)
     => ( ? [B_N] :
          ! [B_n] : hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_RealVector_Onorm__class_Onorm(T_a,hAPP(V_X_2,B_n))),c_RealDef_Oreal(tc_Nat_Onat,hAPP(c_Nat_OSuc,B_N))))
      <=> c_SEQ_OBseq(T_a,V_X_2) ) ) ).

fof(fact_nat_Osimps_I2_J,axiom,
    ! [V_nat_H] : hAPP(c_Nat_OSuc,V_nat_H) != c_Groups_Ozero__class_Ozero(tc_Nat_Onat) ).

fof(fact_inverse__le__imp__le__neg,axiom,
    ! [V_b,V_a,T_a] :
      ( class_Fields_Olinordered__field(T_a)
     => ( ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_b),c_Groups_Ozero__class_Ozero(T_a)))
         => hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,V_b),V_a)) )
       <= hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,c_Rings_Oinverse__class_Oinverse(T_a,V_a)),c_Rings_Oinverse__class_Oinverse(T_a,V_b))) ) ) ).

fof(fact_double__add__le__zero__iff__single__add__le__zero,axiom,
    ! [V_a_2,T_a] :
      ( class_Groups_Olinordered__ab__group__add(T_a)
     => ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),V_a_2),V_a_2)),c_Groups_Ozero__class_Ozero(T_a)))
      <=> hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,V_a_2),c_Groups_Ozero__class_Ozero(T_a))) ) ) ).

fof(arity_HOL__Obool__Orderings_Opreorder,axiom,
    class_Orderings_Opreorder(tc_HOL_Obool) ).

fof(fact_nat_Osimps_I3_J,axiom,
    ! [V_nat_H_1] : hAPP(c_Nat_OSuc,V_nat_H_1) != c_Groups_Ozero__class_Ozero(tc_Nat_Onat) ).

fof(fact_comm__semiring__1__class_Onormalizing__semiring__rules_I4_J,axiom,
    ! [V_m,T_a] :
      ( hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),c_Groups_Oone__class_Oone(T_a)),c_Groups_Oone__class_Oone(T_a))),V_m) = hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),V_m),V_m)
     <= class_Rings_Ocomm__semiring__1(T_a) ) ).

fof(fact_real__mult__commute,axiom,
    ! [V_w,V_z] : hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),V_w),V_z) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),V_z),V_w) ).

fof(fact_synthetic__div__eq__0__iff,axiom,
    ! [V_ca_2,V_pb_2,T_a] :
      ( ( c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a)) = c_Polynomial_Osynthetic__div(T_a,V_pb_2,V_ca_2)
      <=> c_Groups_Ozero__class_Ozero(tc_Nat_Onat) = c_Polynomial_Odegree(T_a,V_pb_2) )
     <= class_Rings_Ocomm__semiring__0(T_a) ) ).

fof(fact_not__square__less__zero,axiom,
    ! [V_a,T_a] :
      ( ~ hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_a)),c_Groups_Ozero__class_Ozero(T_a)))
     <= class_Rings_Olinordered__ring(T_a) ) ).

fof(fact_n__less__n__mult__m,axiom,
    ! [V_m,V_n] :
      ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),hAPP(c_Nat_OSuc,c_Groups_Ozero__class_Ozero(tc_Nat_Onat))),V_n))
     => ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),V_n),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_n),V_m)))
       <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),hAPP(c_Nat_OSuc,c_Groups_Ozero__class_Ozero(tc_Nat_Onat))),V_m)) ) ) ).

fof(fact_nat__le__linear,axiom,
    ! [V_n,V_m] :
      ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m),V_n))
      | hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_n),V_m)) ) ).

fof(fact_add__0__iff,axiom,
    ! [V_a_2,V_b_2,T_a] :
      ( class_Semiring__Normalization_Ocomm__semiring__1__cancel__crossproduct(T_a)
     => ( hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),V_b_2),V_a_2) = V_b_2
      <=> c_Groups_Ozero__class_Ozero(T_a) = V_a_2 ) ) ).

fof(arity_Int__Oint__Rings_Oring__1,axiom,
    class_Rings_Oring__1(tc_Int_Oint) ).

fof(fact_add__mult__distrib,axiom,
    ! [V_k,V_n,V_m] : hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Nat_Onat),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_m),V_k)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_n),V_k)) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Nat_Onat),V_m),V_n)),V_k) ).

fof(arity_RealDef__Oreal__Groups_Oordered__comm__monoid__add,axiom,
    class_Groups_Oordered__comm__monoid__add(tc_RealDef_Oreal) ).

fof(fact_comm__semiring__1__class_Onormalizing__semiring__rules_I31_J,axiom,
    ! [V_q,V_p,V_x,T_a] :
      ( hAPP(hAPP(c_Power_Opower__class_Opower(T_a),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_x),V_p)),V_q) = hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_x),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_p),V_q))
     <= class_Rings_Ocomm__semiring__1(T_a) ) ).

fof(fact_zero__less__power,axiom,
    ! [V_n,V_a,T_a] :
      ( class_Rings_Olinordered__semidom(T_a)
     => ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),c_Groups_Ozero__class_Ozero(T_a)),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_n)))
       <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),c_Groups_Ozero__class_Ozero(T_a)),V_a)) ) ) ).

fof(fact_order__neq__le__trans,axiom,
    ! [V_b,V_a,T_a] :
      ( class_Orderings_Oorder(T_a)
     => ( ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_a),V_b))
         <= hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,V_a),V_b)) )
       <= V_a != V_b ) ) ).

fof(fact_diff__monom,axiom,
    ! [V_b,V_n,V_a,T_a] :
      ( class_Groups_Oab__group__add(T_a)
     => hAPP(hAPP(c_Groups_Ominus__class_Ominus(tc_Polynomial_Opoly(T_a)),c_Polynomial_Omonom(T_a,V_a,V_n)),c_Polynomial_Omonom(T_a,V_b,V_n)) = c_Polynomial_Omonom(T_a,hAPP(hAPP(c_Groups_Ominus__class_Ominus(T_a),V_a),V_b),V_n) ) ).

fof(fact_positive__imp__inverse__positive,axiom,
    ! [V_a,T_a] :
      ( class_Fields_Olinordered__field(T_a)
     => ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),c_Groups_Ozero__class_Ozero(T_a)),V_a))
       => hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),c_Groups_Ozero__class_Ozero(T_a)),c_Rings_Oinverse__class_Oinverse(T_a,V_a))) ) ) ).

fof(fact_real__of__nat__le__zero__cancel__iff,axiom,
    ! [V_n_2] :
      ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_RealDef_Oreal(tc_Nat_Onat,V_n_2)),c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)))
    <=> V_n_2 = c_Groups_Ozero__class_Ozero(tc_Nat_Onat) ) ).

fof(fact_lessI,axiom,
    ! [V_n] : hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),V_n),hAPP(c_Nat_OSuc,V_n))) ).

fof(fact_mult__right__le__imp__le,axiom,
    ! [V_b,V_c,V_a,T_a] :
      ( ( ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),c_Groups_Ozero__class_Ozero(T_a)),V_c))
         => hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,V_a),V_b)) )
       <= hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_c)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b),V_c))) )
     <= class_Rings_Olinordered__semiring__strict(T_a) ) ).

fof(arity_RealDef__Oreal__Groups_Oab__semigroup__mult,axiom,
    class_Groups_Oab__semigroup__mult(tc_RealDef_Oreal) ).

fof(fact_mod__pos__pos__trivial,axiom,
    ! [V_b,V_a] :
      ( ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Int_Oint),V_a),V_b))
       => V_a = c_Divides_Odiv__class_Omod(tc_Int_Oint,V_a,V_b) )
     <= hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint)),V_a)) ) ).

fof(fact_reals__Archimedean,axiom,
    ! [V_x] :
      ( ? [B_n] : hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_RealDef_Oreal),c_Rings_Oinverse__class_Oinverse(tc_RealDef_Oreal,c_RealDef_Oreal(tc_Nat_Onat,hAPP(c_Nat_OSuc,B_n)))),V_x))
     <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_RealDef_Oreal),c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)),V_x)) ) ).

fof(fact_zadd__assoc,axiom,
    ! [V_z3,V_z2,V_z1] : hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Int_Oint),V_z1),hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Int_Oint),V_z2),V_z3)) = hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Int_Oint),hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Int_Oint),V_z1),V_z2)),V_z3) ).

fof(fact_Least__Suc2,axiom,
    ! [V_m_2,V_Q_2,V_n_2,V_P_2] :
      ( hBOOL(hAPP(V_P_2,V_n_2))
     => ( ( ~ hBOOL(hAPP(V_P_2,c_Groups_Ozero__class_Ozero(tc_Nat_Onat)))
         => ( c_Orderings_Oord__class_OLeast(tc_Nat_Onat,V_P_2) = hAPP(c_Nat_OSuc,c_Orderings_Oord__class_OLeast(tc_Nat_Onat,V_Q_2))
           <= ! [B_k] :
                ( hBOOL(hAPP(V_P_2,hAPP(c_Nat_OSuc,B_k)))
              <=> hBOOL(hAPP(V_Q_2,B_k)) ) ) )
       <= hBOOL(hAPP(V_Q_2,V_m_2)) ) ) ).

fof(fact_not__real__square__gt__zero,axiom,
    ! [V_x_2] :
      ( V_x_2 = c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)
    <=> ~ hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_RealDef_Oreal),c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),V_x_2),V_x_2))) ) ).

fof(fact_power__le__imp__le__base,axiom,
    ! [V_b,V_n,V_a,T_a] :
      ( class_Rings_Olinordered__semidom(T_a)
     => ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),hAPP(c_Nat_OSuc,V_n))),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_b),hAPP(c_Nat_OSuc,V_n))))
       => ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a)),V_b))
         => hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,V_a),V_b)) ) ) ) ).

fof(fact_comm__semiring__1__class_Onormalizing__semiring__rules_I28_J,axiom,
    ! [V_q,V_x,T_a] :
      ( class_Rings_Ocomm__semiring__1(T_a)
     => hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_x),hAPP(c_Nat_OSuc,V_q)) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_x),V_q)),V_x) ) ).

fof(fact_mult__strict__right__mono,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( class_Rings_Olinordered__semiring__strict(T_a)
     => ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_a),V_b))
       => ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_c)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b),V_c)))
         <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),c_Groups_Ozero__class_Ozero(T_a)),V_c)) ) ) ) ).

fof(fact__096constant_A_Ipoly_Aq_J_A_061_061_062_AFalse_096,axiom,
    ~ c_Fundamental__Theorem__Algebra__Mirabelle_Oconstant(tc_Complex_Ocomplex,tc_Complex_Ocomplex,c_Polynomial_Opoly(tc_Complex_Ocomplex,v_q____)) ).

fof(fact_termination__basic__simps_I5_J,axiom,
    ! [V_y,V_x] :
      ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_x),V_y))
     <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),V_x),V_y)) ) ).

fof(fact_split__zmod,axiom,
    ! [V_k_2,V_n_2,V_P_2] :
      ( hBOOL(hAPP(V_P_2,c_Divides_Odiv__class_Omod(tc_Int_Oint,V_n_2,V_k_2)))
    <=> ( ( V_k_2 = c_Groups_Ozero__class_Ozero(tc_Int_Oint)
         => hBOOL(hAPP(V_P_2,V_n_2)) )
        & ( ! [B_i,B_j] :
              ( hBOOL(hAPP(V_P_2,B_j))
             <= ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint)),B_j))
                & hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Int_Oint),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_k_2),B_i)),B_j) = V_n_2
                & hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Int_Oint),B_j),V_k_2)) ) )
         <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Int_Oint),c_Groups_Ozero__class_Ozero(tc_Int_Oint)),V_k_2)) )
        & ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Int_Oint),V_k_2),c_Groups_Ozero__class_Ozero(tc_Int_Oint)))
         => ! [B_i,B_j] :
              ( hBOOL(hAPP(V_P_2,B_j))
             <= ( hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Int_Oint),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_k_2),B_i)),B_j) = V_n_2
                & hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,B_j),c_Groups_Ozero__class_Ozero(tc_Int_Oint)))
                & hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Int_Oint),V_k_2),B_j)) ) ) ) ) ) ).

fof(fact_less__eq__nat_Osimps_I1_J,axiom,
    ! [V_n] : hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat)),V_n)) ).

fof(arity_RealDef__Oreal__Fields_Olinordered__field,axiom,
    class_Fields_Olinordered__field(tc_RealDef_Oreal) ).

fof(fact_le__div__geq,axiom,
    ! [V_m,V_n] :
      ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),c_Groups_Ozero__class_Ozero(tc_Nat_Onat)),V_n))
     => ( hAPP(c_Nat_OSuc,c_Divides_Odiv__class_Odiv(tc_Nat_Onat,hAPP(hAPP(c_Groups_Ominus__class_Ominus(tc_Nat_Onat),V_m),V_n),V_n)) = c_Divides_Odiv__class_Odiv(tc_Nat_Onat,V_m,V_n)
       <= hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_n),V_m)) ) ) ).

fof(fact_sum__squares__ge__zero,axiom,
    ! [V_y,V_x,T_a] :
      ( class_Rings_Olinordered__ring(T_a)
     => hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a)),hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_x),V_x)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_y),V_y)))) ) ).

fof(fact_real__of__nat__Suc,axiom,
    ! [V_n] : hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_RealDef_Oreal),c_RealDef_Oreal(tc_Nat_Onat,V_n)),c_Groups_Oone__class_Oone(tc_RealDef_Oreal)) = c_RealDef_Oreal(tc_Nat_Onat,hAPP(c_Nat_OSuc,V_n)) ).

fof(fact_less__nat__zero__code,axiom,
    ! [V_n] : ~ hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),V_n),c_Groups_Ozero__class_Ozero(tc_Nat_Onat))) ).

fof(fact_power__add,axiom,
    ! [V_n,V_m,V_a,T_a] :
      ( class_Groups_Omonoid__mult(T_a)
     => hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Nat_Onat),V_m),V_n)) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_m)),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_n)) ) ).

fof(arity_Nat__Onat__Groups_Ocancel__comm__monoid__add,axiom,
    class_Groups_Ocancel__comm__monoid__add(tc_Nat_Onat) ).

fof(fact_less__not__refl2,axiom,
    ! [V_m,V_n] :
      ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),V_n),V_m))
     => V_n != V_m ) ).

fof(arity_Int__Oint__Groups_Omonoid__mult,axiom,
    class_Groups_Omonoid__mult(tc_Int_Oint) ).

fof(fact_nat__mult__1,axiom,
    ! [V_n] : hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),c_Groups_Oone__class_Oone(tc_Nat_Onat)),V_n) = V_n ).

fof(fact_add__le__cancel__left,axiom,
    ! [V_b_2,V_a_2,V_ca_2,T_a] :
      ( ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,V_a_2),V_b_2))
      <=> hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),V_ca_2),V_a_2)),hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),V_ca_2),V_b_2))) )
     <= class_Groups_Oordered__ab__semigroup__add__imp__le(T_a) ) ).

fof(fact_nat__mult__1__right,axiom,
    ! [V_n] : V_n = hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_n),c_Groups_Oone__class_Oone(tc_Nat_Onat)) ).

fof(fact_mult__less__cancel__left__disj,axiom,
    ! [V_b_2,V_a_2,V_ca_2,T_a] :
      ( ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_ca_2),V_a_2)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_ca_2),V_b_2)))
      <=> ( ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_b_2),V_a_2))
            & hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_ca_2),c_Groups_Ozero__class_Ozero(T_a))) )
          | ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_a_2),V_b_2))
            & hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),c_Groups_Ozero__class_Ozero(T_a)),V_ca_2)) ) ) )
     <= class_Rings_Olinordered__ring__strict(T_a) ) ).

fof(fact_linorder__antisym__conv1,axiom,
    ! [V_y_2,V_x_2,T_a] :
      ( class_Orderings_Olinorder(T_a)
     => ( ( V_x_2 = V_y_2
        <=> hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,V_x_2),V_y_2)) )
       <= ~ hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_x_2),V_y_2)) ) ) ).

fof(fact_pos__mod__conj,axiom,
    ! [V_a,V_b] :
      ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Int_Oint),c_Groups_Ozero__class_Ozero(tc_Int_Oint)),V_b))
     => ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint)),c_Divides_Odiv__class_Omod(tc_Int_Oint,V_a,V_b)))
        & hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Int_Oint),c_Divides_Odiv__class_Omod(tc_Int_Oint,V_a,V_b)),V_b)) ) ) ).

fof(fact_zdiv__zmod__equality,axiom,
    ! [V_k,V_a,V_b] : hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Int_Oint),V_a),V_k) = hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Int_Oint),hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Int_Oint),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_b),c_Divides_Odiv__class_Odiv(tc_Int_Oint,V_a,V_b))),c_Divides_Odiv__class_Omod(tc_Int_Oint,V_a,V_b))),V_k) ).

fof(fact_add__right__mono,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),V_a),V_c)),hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),V_b),V_c)))
       <= hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,V_a),V_b)) )
     <= class_Groups_Oordered__ab__semigroup__add(T_a) ) ).

fof(fact_mod__poly__less,axiom,
    ! [V_y,V_x,T_a] :
      ( ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),c_Polynomial_Odegree(T_a,V_x)),c_Polynomial_Odegree(T_a,V_y)))
       => V_x = c_Divides_Odiv__class_Omod(tc_Polynomial_Opoly(T_a),V_x,V_y) )
     <= class_Fields_Ofield(T_a) ) ).

fof(fact_zero__less__mult__pos2,axiom,
    ! [V_a,V_b,T_a] :
      ( class_Rings_Olinordered__semiring__strict(T_a)
     => ( ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),c_Groups_Ozero__class_Ozero(T_a)),V_b))
         <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),c_Groups_Ozero__class_Ozero(T_a)),V_a)) )
       <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),c_Groups_Ozero__class_Ozero(T_a)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b),V_a))) ) ) ).

fof(fact_le__Suc__eq,axiom,
    ! [V_n_2,V_m_2] :
      ( ( hAPP(c_Nat_OSuc,V_n_2) = V_m_2
        | hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m_2),V_n_2)) )
    <=> hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m_2),hAPP(c_Nat_OSuc,V_n_2))) ) ).

fof(fact_div__mult2__eq,axiom,
    ! [V_c,V_b,V_a] : c_Divides_Odiv__class_Odiv(tc_Nat_Onat,c_Divides_Odiv__class_Odiv(tc_Nat_Onat,V_a,V_b),V_c) = c_Divides_Odiv__class_Odiv(tc_Nat_Onat,V_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_b),V_c)) ).

fof(arity_RealDef__Oreal__Rings_Olinordered__semiring__1__strict,axiom,
    class_Rings_Olinordered__semiring__1__strict(tc_RealDef_Oreal) ).

fof(fact_div__le__dividend,axiom,
    ! [V_n,V_m] : hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,c_Divides_Odiv__class_Odiv(tc_Nat_Onat,V_m,V_n)),V_m)) ).

fof(fact_field__le__mult__one__interval,axiom,
    ! [V_y,V_x,T_a] :
      ( class_Fields_Olinordered__field__inverse__zero(T_a)
     => ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,V_x),V_y))
       <= ! [B_z] :
            ( ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),B_z),V_x)),V_y))
             <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),B_z),c_Groups_Oone__class_Oone(T_a))) )
           <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),c_Groups_Ozero__class_Ozero(T_a)),B_z)) ) ) ) ).

fof(fact_mod__0,axiom,
    ! [V_a,T_a] :
      ( class_Divides_Osemiring__div(T_a)
     => c_Divides_Odiv__class_Omod(T_a,c_Groups_Ozero__class_Ozero(T_a),V_a) = c_Groups_Ozero__class_Ozero(T_a) ) ).

fof(fact_power_Opower_Opower__0,axiom,
    ! [V_a_2,V_times_2,V_one_2,T_a] : V_one_2 = hAPP(hAPP(c_Power_Opower_Opower(T_a,V_one_2,V_times_2),V_a_2),c_Groups_Ozero__class_Ozero(tc_Nat_Onat)) ).

fof(arity_Polynomial__Opoly__Int_Oring__char__0,axiom,
    ! [T_1] :
      ( class_Int_Oring__char__0(tc_Polynomial_Opoly(T_1))
     <= class_Rings_Olinordered__idom(T_1) ) ).

fof(fact_add__0__right,axiom,
    ! [V_a,T_a] :
      ( class_Groups_Omonoid__add(T_a)
     => V_a = hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),V_a),c_Groups_Ozero__class_Ozero(T_a)) ) ).

fof(fact_natceiling__eq,axiom,
    ! [V_x,V_n] :
      ( ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,V_x),hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_RealDef_Oreal),c_RealDef_Oreal(tc_Nat_Onat,V_n)),c_Groups_Oone__class_Oone(tc_RealDef_Oreal))))
       => hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Nat_Onat),V_n),c_Groups_Oone__class_Oone(tc_Nat_Onat)) = c_RComplete_Onatceiling(V_x) )
     <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_RealDef_Oreal),c_RealDef_Oreal(tc_Nat_Onat,V_n)),V_x)) ) ).

fof(arity_Int__Oint__Rings_Omult__zero,axiom,
    class_Rings_Omult__zero(tc_Int_Oint) ).

fof(fact_crossproduct__noteq,axiom,
    ! [V_d_2,V_ca_2,V_b_2,V_a_2,T_a] :
      ( class_Semiring__Normalization_Ocomm__semiring__1__cancel__crossproduct(T_a)
     => ( hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a_2),V_d_2)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b_2),V_ca_2)) != hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a_2),V_ca_2)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b_2),V_d_2))
      <=> ( V_d_2 != V_ca_2
          & V_a_2 != V_b_2 ) ) ) ).

fof(fact_diff__diff__right,axiom,
    ! [V_i,V_j,V_k] :
      ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_k),V_j))
     => hAPP(hAPP(c_Groups_Ominus__class_Ominus(tc_Nat_Onat),V_i),hAPP(hAPP(c_Groups_Ominus__class_Ominus(tc_Nat_Onat),V_j),V_k)) = hAPP(hAPP(c_Groups_Ominus__class_Ominus(tc_Nat_Onat),hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Nat_Onat),V_i),V_k)),V_j) ) ).

fof(fact_coeff__0,axiom,
    ! [V_n,T_a] :
      ( class_Groups_Ozero(T_a)
     => c_Groups_Ozero__class_Ozero(T_a) = hAPP(c_Polynomial_Ocoeff(T_a,c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a))),V_n) ) ).

fof(fact_comm__semiring__1__class_Onormalizing__semiring__rules_I25_J,axiom,
    ! [V_d,V_c,V_a,T_a] :
      ( class_Rings_Ocomm__semiring__1(T_a)
     => hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),V_a),V_c)),V_d) = hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),V_a),hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),V_c),V_d)) ) ).

fof(fact_zle__trans,axiom,
    ! [V_k,V_j,V_i] :
      ( ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,V_i),V_k))
       <= hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,V_j),V_k)) )
     <= hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,V_i),V_j)) ) ).

fof(fact_nat__one__le__power,axiom,
    ! [V_n,V_i] :
      ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,hAPP(c_Nat_OSuc,c_Groups_Ozero__class_Ozero(tc_Nat_Onat))),hAPP(hAPP(c_Power_Opower__class_Opower(tc_Nat_Onat),V_i),V_n)))
     <= hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,hAPP(c_Nat_OSuc,c_Groups_Ozero__class_Ozero(tc_Nat_Onat))),V_i)) ) ).

fof(fact_nonzero__power__inverse,axiom,
    ! [V_n,V_a,T_a] :
      ( class_Rings_Odivision__ring(T_a)
     => ( c_Groups_Ozero__class_Ozero(T_a) != V_a
       => hAPP(hAPP(c_Power_Opower__class_Opower(T_a),c_Rings_Oinverse__class_Oinverse(T_a,V_a)),V_n) = c_Rings_Oinverse__class_Oinverse(T_a,hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_n)) ) ) ).

fof(fact_gr0__conv__Suc,axiom,
    ! [V_n_2] :
      ( ? [B_m] : V_n_2 = hAPP(c_Nat_OSuc,B_m)
    <=> hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),c_Groups_Ozero__class_Ozero(tc_Nat_Onat)),V_n_2)) ) ).

fof(fact_pdivmod__rel__mult,axiom,
    ! [V_r_H,V_q_H,V_z,V_r,V_q,V_y,V_x,T_a] :
      ( class_Fields_Ofield(T_a)
     => ( c_Polynomial_Opdivmod__rel(T_a,V_x,V_y,V_q,V_r)
       => ( c_Polynomial_Opdivmod__rel(T_a,V_q,V_z,V_q_H,V_r_H)
         => c_Polynomial_Opdivmod__rel(T_a,V_x,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Polynomial_Opoly(T_a)),V_y),V_z),V_q_H,hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Polynomial_Opoly(T_a)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Polynomial_Opoly(T_a)),V_y),V_r_H)),V_r)) ) ) ) ).

fof(fact_mult__poly__add__left,axiom,
    ! [V_r,V_q,V_p,T_a] :
      ( hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Polynomial_Opoly(T_a)),hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Polynomial_Opoly(T_a)),V_p),V_q)),V_r) = hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Polynomial_Opoly(T_a)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Polynomial_Opoly(T_a)),V_p),V_r)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Polynomial_Opoly(T_a)),V_q),V_r))
     <= class_Rings_Ocomm__semiring__0(T_a) ) ).

fof(fact_not__less__iff__gr__or__eq,axiom,
    ! [V_y_2,V_x_2,T_a] :
      ( class_Orderings_Olinorder(T_a)
     => ( ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_y_2),V_x_2))
          | V_y_2 = V_x_2 )
      <=> ~ hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_x_2),V_y_2)) ) ) ).

fof(arity_RealDef__Oreal__RealVector_Oreal__normed__algebra,axiom,
    class_RealVector_Oreal__normed__algebra(tc_RealDef_Oreal) ).

fof(arity_Int__Oint__Rings_Ocomm__semiring__0,axiom,
    class_Rings_Ocomm__semiring__0(tc_Int_Oint) ).

fof(fact_Suc__n__not__le__n,axiom,
    ! [V_n] : ~ hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,hAPP(c_Nat_OSuc,V_n)),V_n)) ).

fof(arity_Int__Oint__Power_Opower,axiom,
    class_Power_Opower(tc_Int_Oint) ).

fof(fact_inverse__nonnegative__iff__nonnegative,axiom,
    ! [V_a_2,T_a] :
      ( ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a)),V_a_2))
      <=> hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a)),c_Rings_Oinverse__class_Oinverse(T_a,V_a_2))) )
     <= class_Fields_Olinordered__field__inverse__zero(T_a) ) ).

fof(arity_Polynomial__Opoly__Groups_Oordered__ab__group__add,axiom,
    ! [T_1] :
      ( class_Groups_Oordered__ab__group__add(tc_Polynomial_Opoly(T_1))
     <= class_Rings_Olinordered__idom(T_1) ) ).

fof(fact_power__decreasing,axiom,
    ! [V_a,V_N,V_n,T_a] :
      ( class_Rings_Olinordered__semidom(T_a)
     => ( ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a)),V_a))
         => ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,V_a),c_Groups_Oone__class_Oone(T_a)))
           => hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_N)),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_n))) ) )
       <= hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_n),V_N)) ) ) ).

fof(fact_power__le__imp__le__exp,axiom,
    ! [V_n,V_m,V_a,T_a] :
      ( ( ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m),V_n))
         <= hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_m)),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_n))) )
       <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),c_Groups_Oone__class_Oone(T_a)),V_a)) )
     <= class_Rings_Olinordered__semidom(T_a) ) ).

fof(fact_DIVISION__BY__ZERO,axiom,
    ! [V_a] :
      ( V_a = c_Divides_Odiv__class_Omod(tc_Int_Oint,V_a,c_Groups_Ozero__class_Ozero(tc_Int_Oint))
      & c_Groups_Ozero__class_Ozero(tc_Int_Oint) = c_Divides_Odiv__class_Odiv(tc_Int_Oint,V_a,c_Groups_Ozero__class_Ozero(tc_Int_Oint)) ) ).

fof(fact_add__is__1,axiom,
    ! [V_n_2,V_m_2] :
      ( hAPP(c_Nat_OSuc,c_Groups_Ozero__class_Ozero(tc_Nat_Onat)) = hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Nat_Onat),V_m_2),V_n_2)
    <=> ( ( c_Groups_Ozero__class_Ozero(tc_Nat_Onat) = V_m_2
          & V_n_2 = hAPP(c_Nat_OSuc,c_Groups_Ozero__class_Ozero(tc_Nat_Onat)) )
        | ( V_m_2 = hAPP(c_Nat_OSuc,c_Groups_Ozero__class_Ozero(tc_Nat_Onat))
          & V_n_2 = c_Groups_Ozero__class_Ozero(tc_Nat_Onat) ) ) ) ).

fof(fact_divmod__int__rel__div__eq,axiom,
    ! [V_r_1,V_y,V_b_1,V_a_1] :
      ( ( ( c_Divides_Odiv__class_Odiv(tc_Int_Oint,V_a_1,V_b_1) = V_y
         <= c_Groups_Ozero__class_Ozero(tc_Int_Oint) != V_b_1 )
       <= ( ( ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,V_r_1),c_Groups_Ozero__class_Ozero(tc_Int_Oint)))
              & hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Int_Oint),V_b_1),V_r_1)) )
           <= ~ hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Int_Oint),c_Groups_Ozero__class_Ozero(tc_Int_Oint)),V_b_1)) )
          & ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Int_Oint),c_Groups_Ozero__class_Ozero(tc_Int_Oint)),V_b_1))
           => ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Int_Oint),V_r_1),V_b_1))
              & hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint)),V_r_1)) ) ) ) )
     <= hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Int_Oint),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_b_1),V_y)),V_r_1) = V_a_1 ) ).

fof(fact_less__imp__le__nat,axiom,
    ! [V_n,V_m] :
      ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m),V_n))
     <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),V_m),V_n)) ) ).

fof(arity_Polynomial__Opoly__Rings_Oidom,axiom,
    ! [T_1] :
      ( class_Rings_Oidom(tc_Polynomial_Opoly(T_1))
     <= class_Rings_Oidom(T_1) ) ).

fof(fact_left__add__mult__distrib,axiom,
    ! [V_k,V_j,V_u,V_i] : hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Nat_Onat),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_i),V_u)),hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Nat_Onat),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_j),V_u)),V_k)) = hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Nat_Onat),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Nat_Onat),V_i),V_j)),V_u)),V_k) ).

fof(fact_trans__less__add1,axiom,
    ! [V_m,V_j,V_i] :
      ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),V_i),V_j))
     => hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),V_i),hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Nat_Onat),V_j),V_m))) ) ).

fof(fact_le__trans,axiom,
    ! [V_k,V_j,V_i] :
      ( ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_j),V_k))
       => hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_i),V_k)) )
     <= hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_i),V_j)) ) ).

fof(fact_zdiv__zmod__equality2,axiom,
    ! [V_k,V_b,V_a] : hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Int_Oint),V_a),V_k) = hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Int_Oint),hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Int_Oint),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),c_Divides_Odiv__class_Odiv(tc_Int_Oint,V_a,V_b)),V_b)),c_Divides_Odiv__class_Omod(tc_Int_Oint,V_a,V_b))),V_k) ).

fof(arity_Int__Oint__Rings_Olinordered__comm__semiring__strict,axiom,
    class_Rings_Olinordered__comm__semiring__strict(tc_Int_Oint) ).

fof(fact_mod__mult__self3,axiom,
    ! [V_m,V_n,V_k] : c_Divides_Odiv__class_Omod(tc_Nat_Onat,V_m,V_n) = c_Divides_Odiv__class_Omod(tc_Nat_Onat,hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Nat_Onat),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_k),V_n)),V_m),V_n) ).

fof(fact_mult_Ocomm__neutral,axiom,
    ! [V_a,T_a] :
      ( class_Groups_Ocomm__monoid__mult(T_a)
     => hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),c_Groups_Oone__class_Oone(T_a)) = V_a ) ).

fof(fact_norm__power__ineq,axiom,
    ! [V_n,V_x,T_a] :
      ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_RealVector_Onorm__class_Onorm(T_a,hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_x),V_n))),hAPP(hAPP(c_Power_Opower__class_Opower(tc_RealDef_Oreal),c_RealVector_Onorm__class_Onorm(T_a,V_x)),V_n)))
     <= class_RealVector_Oreal__normed__algebra__1(T_a) ) ).

fof(fact_smult__add__right,axiom,
    ! [V_q,V_p,V_a,T_a] :
      ( hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Polynomial_Opoly(T_a)),c_Polynomial_Osmult(T_a,V_a,V_p)),c_Polynomial_Osmult(T_a,V_a,V_q)) = c_Polynomial_Osmult(T_a,V_a,hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Polynomial_Opoly(T_a)),V_p),V_q))
     <= class_Rings_Ocomm__semiring__0(T_a) ) ).

fof(fact_convex__bound__le,axiom,
    ! [V_v,V_u,V_y,V_a,V_x,T_a] :
      ( class_Rings_Olinordered__semiring__1(T_a)
     => ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,V_x),V_a))
       => ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,V_y),V_a))
         => ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a)),V_u))
           => ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a)),V_v))
             => ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_u),V_x)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_v),V_y))),V_a))
               <= c_Groups_Oone__class_Oone(T_a) = hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),V_u),V_v) ) ) ) ) ) ) ).

fof(fact_add__poly__code_I1_J,axiom,
    ! [V_q,T_a] :
      ( V_q = hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Polynomial_Opoly(T_a)),c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a))),V_q)
     <= class_Groups_Ocomm__monoid__add(T_a) ) ).

fof(fact_power__less__power__Suc,axiom,
    ! [V_n,V_a,T_a] :
      ( class_Rings_Olinordered__semidom(T_a)
     => ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),c_Groups_Oone__class_Oone(T_a)),V_a))
       => hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_n)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_n)))) ) ) ).

fof(fact_zle__linear,axiom,
    ! [V_w,V_z] :
      ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,V_z),V_w))
      | hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,V_w),V_z)) ) ).

fof(fact_int__0__less__1,axiom,
    hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Int_Oint),c_Groups_Ozero__class_Ozero(tc_Int_Oint)),c_Groups_Oone__class_Oone(tc_Int_Oint))) ).

fof(arity_Int__Oint__Rings_Olinordered__semidom,axiom,
    class_Rings_Olinordered__semidom(tc_Int_Oint) ).

fof(fact_comm__semiring__1__class_Onormalizing__semiring__rules_I8_J,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_c)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b),V_c)) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),V_a),V_b)),V_c)
     <= class_Rings_Ocomm__semiring__1(T_a) ) ).

fof(fact_add__scale__eq__noteq,axiom,
    ! [V_d,V_c,V_b,V_a,V_r,T_a] :
      ( class_Semiring__Normalization_Ocomm__semiring__1__cancel__crossproduct(T_a)
     => ( V_r != c_Groups_Ozero__class_Ozero(T_a)
       => ( ( V_b = V_a
            & V_c != V_d )
         => hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),V_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_r),V_c)) != hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),V_b),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_r),V_d)) ) ) ) ).

fof(fact_comm__semiring__1__class_Onormalizing__semiring__rules_I3_J,axiom,
    ! [V_a,V_m,T_a] :
      ( hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),V_m),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_m)) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),V_a),c_Groups_Oone__class_Oone(T_a))),V_m)
     <= class_Rings_Ocomm__semiring__1(T_a) ) ).

fof(fact_not__pos__poly__0,axiom,
    ! [T_a] :
      ( ~ c_Polynomial_Opos__poly(T_a,c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a)))
     <= class_Rings_Olinordered__idom(T_a) ) ).

fof(arity_Polynomial__Opoly__Orderings_Opreorder,axiom,
    ! [T_1] :
      ( class_Orderings_Opreorder(tc_Polynomial_Opoly(T_1))
     <= class_Rings_Olinordered__idom(T_1) ) ).

fof(fact_zadd__zmult__distrib2,axiom,
    ! [V_z2,V_z1,V_w] : hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Int_Oint),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_w),V_z1)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_w),V_z2)) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_w),hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Int_Oint),V_z1),V_z2)) ).

fof(fact_add1__zle__eq,axiom,
    ! [V_z_2,V_w_2] :
      ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Int_Oint),V_w_2),c_Groups_Oone__class_Oone(tc_Int_Oint))),V_z_2))
    <=> hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Int_Oint),V_w_2),V_z_2)) ) ).

fof(arity_RealDef__Oreal__Rings_Omult__zero,axiom,
    class_Rings_Omult__zero(tc_RealDef_Oreal) ).

fof(fact_linorder__not__le,axiom,
    ! [V_y_2,V_x_2,T_a] :
      ( ( ~ hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,V_x_2),V_y_2))
      <=> hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_y_2),V_x_2)) )
     <= class_Orderings_Olinorder(T_a) ) ).

fof(fact_power__Suc__0,axiom,
    ! [V_n] : hAPP(c_Nat_OSuc,c_Groups_Ozero__class_Ozero(tc_Nat_Onat)) = hAPP(hAPP(c_Power_Opower__class_Opower(tc_Nat_Onat),hAPP(c_Nat_OSuc,c_Groups_Ozero__class_Ozero(tc_Nat_Onat))),V_n) ).

fof(fact_poly__gcd__0__0,axiom,
    ! [T_a] :
      ( class_Fields_Ofield(T_a)
     => c_Polynomial_Opoly__gcd(T_a,c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a)),c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a))) = c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a)) ) ).

fof(fact_ord__le__eq__trans,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,V_a),V_b))
       => ( V_c = V_b
         => hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,V_a),V_c)) ) )
     <= class_Orderings_Oord(T_a) ) ).

fof(fact_poly__gcd_Oassoc,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( c_Polynomial_Opoly__gcd(T_a,c_Polynomial_Opoly__gcd(T_a,V_a,V_b),V_c) = c_Polynomial_Opoly__gcd(T_a,V_a,c_Polynomial_Opoly__gcd(T_a,V_b,V_c))
     <= class_Fields_Ofield(T_a) ) ).

fof(fact_add__diff__assoc2,axiom,
    ! [V_i,V_j,V_k] :
      ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_k),V_j))
     => hAPP(hAPP(c_Groups_Ominus__class_Ominus(tc_Nat_Onat),hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Nat_Onat),V_j),V_i)),V_k) = hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Nat_Onat),hAPP(hAPP(c_Groups_Ominus__class_Ominus(tc_Nat_Onat),V_j),V_k)),V_i) ) ).

fof(fact_inverse__unique,axiom,
    ! [V_b,V_a,T_a] :
      ( ( V_b = c_Rings_Oinverse__class_Oinverse(T_a,V_a)
       <= c_Groups_Oone__class_Oone(T_a) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b) )
     <= class_Rings_Odivision__ring(T_a) ) ).

fof(arity_Polynomial__Opoly__Rings_Ocomm__semiring__1,axiom,
    ! [T_1] :
      ( class_Rings_Ocomm__semiring__1(T_1)
     => class_Rings_Ocomm__semiring__1(tc_Polynomial_Opoly(T_1)) ) ).

fof(arity_Int__Oint__Groups_Oab__semigroup__mult,axiom,
    class_Groups_Oab__semigroup__mult(tc_Int_Oint) ).

fof(fact_zero__less__power__nat__eq,axiom,
    ! [V_n_2,V_x_2] :
      ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),c_Groups_Ozero__class_Ozero(tc_Nat_Onat)),hAPP(hAPP(c_Power_Opower__class_Opower(tc_Nat_Onat),V_x_2),V_n_2)))
    <=> ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),c_Groups_Ozero__class_Ozero(tc_Nat_Onat)),V_x_2))
        | V_n_2 = c_Groups_Ozero__class_Ozero(tc_Nat_Onat) ) ) ).

fof(fact_zmod__simps_I3_J,axiom,
    ! [V_c,V_b,V_a] : c_Divides_Odiv__class_Omod(tc_Int_Oint,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_a),c_Divides_Odiv__class_Omod(tc_Int_Oint,V_b,V_c)),V_c) = c_Divides_Odiv__class_Omod(tc_Int_Oint,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_a),V_b),V_c) ).

fof(arity_Int__Oint__Divides_Oring__div,axiom,
    class_Divides_Oring__div(tc_Int_Oint) ).

fof(fact_natceiling__zero,axiom,
    c_Groups_Ozero__class_Ozero(tc_Nat_Onat) = c_RComplete_Onatceiling(c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)) ).

fof(fact_power__inject__exp,axiom,
    ! [V_n_2,V_m_2,V_a_2,T_a] :
      ( class_Rings_Olinordered__semidom(T_a)
     => ( ( V_m_2 = V_n_2
        <=> hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a_2),V_m_2) = hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a_2),V_n_2) )
       <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),c_Groups_Oone__class_Oone(T_a)),V_a_2)) ) ) ).

fof(fact_one__le__power,axiom,
    ! [V_n,V_a,T_a] :
      ( class_Rings_Olinordered__semidom(T_a)
     => ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Oone__class_Oone(T_a)),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_n)))
       <= hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Oone__class_Oone(T_a)),V_a)) ) ) ).

fof(fact_xt1_I12_J,axiom,
    ! [V_b,V_a,T_a] :
      ( ( ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_b),V_a))
         <= hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,V_b),V_a)) )
       <= V_a != V_b )
     <= class_Orderings_Oorder(T_a) ) ).

fof(fact_zdiv__self,axiom,
    ! [V_a] :
      ( c_Groups_Ozero__class_Ozero(tc_Int_Oint) != V_a
     => c_Divides_Odiv__class_Odiv(tc_Int_Oint,V_a,V_a) = c_Groups_Oone__class_Oone(tc_Int_Oint) ) ).

fof(fact_add__le__imp__le__right,axiom,
    ! [V_b,V_c,V_a,T_a] :
      ( class_Groups_Oordered__ab__semigroup__add__imp__le(T_a)
     => ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,V_a),V_b))
       <= hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),V_a),V_c)),hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),V_b),V_c))) ) ) ).

fof(arity_RealDef__Oreal__RealVector_Oreal__normed__div__algebra,axiom,
    class_RealVector_Oreal__normed__div__algebra(tc_RealDef_Oreal) ).

fof(fact_pos__imp__zdiv__nonneg__iff,axiom,
    ! [V_a_2,V_b_2] :
      ( ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint)),c_Divides_Odiv__class_Odiv(tc_Int_Oint,V_a_2,V_b_2)))
      <=> hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint)),V_a_2)) )
     <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Int_Oint),c_Groups_Ozero__class_Ozero(tc_Int_Oint)),V_b_2)) ) ).

fof(fact_sum__squares__eq__zero__iff,axiom,
    ! [V_y_2,V_x_2,T_a] :
      ( ( hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_x_2),V_x_2)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_y_2),V_y_2)) = c_Groups_Ozero__class_Ozero(T_a)
      <=> ( c_Groups_Ozero__class_Ozero(T_a) = V_y_2
          & c_Groups_Ozero__class_Ozero(T_a) = V_x_2 ) )
     <= class_Rings_Olinordered__ring__strict(T_a) ) ).

fof(fact_norm__mult__less,axiom,
    ! [V_s,V_y,V_r,V_x,T_a] :
      ( ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_RealDef_Oreal),c_RealVector_Onorm__class_Onorm(T_a,V_x)),V_r))
       => ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_RealDef_Oreal),c_RealVector_Onorm__class_Onorm(T_a,V_y)),V_s))
         => hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_RealDef_Oreal),c_RealVector_Onorm__class_Onorm(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_x),V_y))),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),V_r),V_s))) ) )
     <= class_RealVector_Oreal__normed__algebra(T_a) ) ).

fof(arity_RealDef__Oreal__Rings_Oordered__comm__semiring,axiom,
    class_Rings_Oordered__comm__semiring(tc_RealDef_Oreal) ).

fof(fact_one__is__add,axiom,
    ! [V_n_2,V_m_2] :
      ( hAPP(c_Nat_OSuc,c_Groups_Ozero__class_Ozero(tc_Nat_Onat)) = hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Nat_Onat),V_m_2),V_n_2)
    <=> ( ( V_n_2 = hAPP(c_Nat_OSuc,c_Groups_Ozero__class_Ozero(tc_Nat_Onat))
          & V_m_2 = c_Groups_Ozero__class_Ozero(tc_Nat_Onat) )
        | ( V_n_2 = c_Groups_Ozero__class_Ozero(tc_Nat_Onat)
          & V_m_2 = hAPP(c_Nat_OSuc,c_Groups_Ozero__class_Ozero(tc_Nat_Onat)) ) ) ) ).

fof(fact_mult_Odiff__left,axiom,
    ! [V_b,V_a_H,V_a,T_a] :
      ( class_RealVector_Oreal__normed__algebra(T_a)
     => hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),hAPP(hAPP(c_Groups_Ominus__class_Ominus(T_a),V_a),V_a_H)),V_b) = hAPP(hAPP(c_Groups_Ominus__class_Ominus(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a_H),V_b)) ) ).

fof(fact_mult__div__cancel,axiom,
    ! [V_m,V_n] : hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_n),c_Divides_Odiv__class_Odiv(tc_Nat_Onat,V_m,V_n)) = hAPP(hAPP(c_Groups_Ominus__class_Ominus(tc_Nat_Onat),V_m),c_Divides_Odiv__class_Omod(tc_Nat_Onat,V_m,V_n)) ).

fof(fact_leI,axiom,
    ! [V_y,V_x,T_a] :
      ( ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,V_y),V_x))
       <= ~ hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_x),V_y)) )
     <= class_Orderings_Olinorder(T_a) ) ).

fof(fact_mult__Suc,axiom,
    ! [V_n,V_m] : hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Nat_Onat),V_n),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_m),V_n)) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),hAPP(c_Nat_OSuc,V_m)),V_n) ).

fof(fact_less_Oprems,axiom,
    ~ c_Fundamental__Theorem__Algebra__Mirabelle_Oconstant(tc_Complex_Ocomplex,tc_Complex_Ocomplex,c_Polynomial_Opoly(tc_Complex_Ocomplex,v_pa____)) ).

fof(fact_natceiling__neg,axiom,
    ! [V_x] :
      ( c_Groups_Ozero__class_Ozero(tc_Nat_Onat) = c_RComplete_Onatceiling(V_x)
     <= hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,V_x),c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal))) ) ).

fof(arity_Polynomial__Opoly__Rings_Omult__zero,axiom,
    ! [T_1] :
      ( class_Rings_Ocomm__semiring__0(T_1)
     => class_Rings_Omult__zero(tc_Polynomial_Opoly(T_1)) ) ).

fof(fact_le__iff__add,axiom,
    ! [V_n_2,V_m_2] :
      ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m_2),V_n_2))
    <=> ? [B_k] : V_n_2 = hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Nat_Onat),V_m_2),B_k) ) ).

fof(fact_mult__less__cancel2,axiom,
    ! [V_n_2,V_k_2,V_m_2] :
      ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_m_2),V_k_2)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_n_2),V_k_2)))
    <=> ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),c_Groups_Ozero__class_Ozero(tc_Nat_Onat)),V_k_2))
        & hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),V_m_2),V_n_2)) ) ) ).

fof(arity_Nat__Onat__Groups_Oab__semigroup__add,axiom,
    class_Groups_Oab__semigroup__add(tc_Nat_Onat) ).

fof(fact_mult__left_Oadd,axiom,
    ! [V_ya,V_y,V_x,T_a] :
      ( hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),V_x),V_y)),V_ya) = hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_x),V_ya)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_y),V_ya))
     <= class_RealVector_Oreal__normed__algebra(T_a) ) ).

fof(fact_pqc0,axiom,
    hAPP(c_Polynomial_Opoly(tc_Complex_Ocomplex,v_q____),c_Groups_Ozero__class_Ozero(tc_Complex_Ocomplex)) = hAPP(c_Polynomial_Opoly(tc_Complex_Ocomplex,v_pa____),v_c____) ).

fof(fact_mult__left__mono,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( class_Rings_Oordered__semiring(T_a)
     => ( ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_c),V_a)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_c),V_b)))
         <= hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a)),V_c)) )
       <= hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,V_a),V_b)) ) ) ).

fof(help_c__fimplies__1,axiom,
    ! [V_Q_2,V_P_2] :
      ( hBOOL(V_P_2)
      | hBOOL(hAPP(hAPP(c_fimplies,V_P_2),V_Q_2)) ) ).

fof(fact_q__neg__lemma,axiom,
    ! [V_r_H,V_q_H,V_b_H] :
      ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Int_Oint),hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Int_Oint),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_b_H),V_q_H)),V_r_H)),c_Groups_Ozero__class_Ozero(tc_Int_Oint)))
     => ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint)),V_r_H))
       => ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Int_Oint),c_Groups_Ozero__class_Ozero(tc_Int_Oint)),V_b_H))
         => hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,V_q_H),c_Groups_Ozero__class_Ozero(tc_Int_Oint))) ) ) ) ).

fof(fact_linorder__less__linear,axiom,
    ! [V_y,V_x,T_a] :
      ( ( V_x = V_y
        | hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_y),V_x))
        | hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_x),V_y)) )
     <= class_Orderings_Olinorder(T_a) ) ).

fof(fact_order__less__imp__not__eq,axiom,
    ! [V_y,V_x,T_a] :
      ( class_Orderings_Oorder(T_a)
     => ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_x),V_y))
       => V_x != V_y ) ) ).

fof(arity_Int__Oint__Orderings_Oorder,axiom,
    class_Orderings_Oorder(tc_Int_Oint) ).

fof(fact_Suc__mult__less__cancel1,axiom,
    ! [V_n_2,V_m_2,V_k_2] :
      ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),V_m_2),V_n_2))
    <=> hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),hAPP(c_Nat_OSuc,V_k_2)),V_m_2)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),hAPP(c_Nat_OSuc,V_k_2)),V_n_2))) ) ).

fof(fact_nat__power__eq__Suc__0__iff,axiom,
    ! [V_m_2,V_x_2] :
      ( hAPP(hAPP(c_Power_Opower__class_Opower(tc_Nat_Onat),V_x_2),V_m_2) = hAPP(c_Nat_OSuc,c_Groups_Ozero__class_Ozero(tc_Nat_Onat))
    <=> ( V_m_2 = c_Groups_Ozero__class_Ozero(tc_Nat_Onat)
        | hAPP(c_Nat_OSuc,c_Groups_Ozero__class_Ozero(tc_Nat_Onat)) = V_x_2 ) ) ).

fof(fact_real__mult__left__cancel,axiom,
    ! [V_b_2,V_a_2,V_ca_2] :
      ( ( V_b_2 = V_a_2
      <=> hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),V_ca_2),V_b_2) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),V_ca_2),V_a_2) )
     <= c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal) != V_ca_2 ) ).

fof(arity_RealDef__Oreal__Orderings_Oorder,axiom,
    class_Orderings_Oorder(tc_RealDef_Oreal) ).

fof(fact_real__of__nat__le__iff,axiom,
    ! [V_m_2,V_n_2] :
      ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_n_2),V_m_2))
    <=> hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_RealDef_Oreal(tc_Nat_Onat,V_n_2)),c_RealDef_Oreal(tc_Nat_Onat,V_m_2))) ) ).

fof(arity_Nat__Onat__Groups_Omonoid__add,axiom,
    class_Groups_Omonoid__add(tc_Nat_Onat) ).

fof(fact_poly__div__mult__right,axiom,
    ! [V_z,V_y,V_x,T_a] :
      ( c_Divides_Odiv__class_Odiv(tc_Polynomial_Opoly(T_a),c_Divides_Odiv__class_Odiv(tc_Polynomial_Opoly(T_a),V_x,V_y),V_z) = c_Divides_Odiv__class_Odiv(tc_Polynomial_Opoly(T_a),V_x,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Polynomial_Opoly(T_a)),V_y),V_z))
     <= class_Fields_Ofield(T_a) ) ).

fof(arity_Int__Oint__Rings_Ocomm__semiring,axiom,
    class_Rings_Ocomm__semiring(tc_Int_Oint) ).

fof(fact_real__le__trans,axiom,
    ! [V_k,V_j,V_i] :
      ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,V_i),V_j))
     => ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,V_i),V_k))
       <= hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,V_j),V_k)) ) ) ).

fof(fact_pdivmod__rel__smult__left,axiom,
    ! [V_a,V_r,V_q,V_y,V_x,T_a] :
      ( ( c_Polynomial_Opdivmod__rel(T_a,c_Polynomial_Osmult(T_a,V_a,V_x),V_y,c_Polynomial_Osmult(T_a,V_a,V_q),c_Polynomial_Osmult(T_a,V_a,V_r))
       <= c_Polynomial_Opdivmod__rel(T_a,V_x,V_y,V_q,V_r) )
     <= class_Fields_Ofield(T_a) ) ).

fof(fact_mult__left_Obounded,axiom,
    ! [V_y,T_a] :
      ( ? [B_K] :
        ! [B_x] : hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_RealVector_Onorm__class_Onorm(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),B_x),V_y))),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),c_RealVector_Onorm__class_Onorm(T_a,B_x)),B_K)))
     <= class_RealVector_Oreal__normed__algebra(T_a) ) ).

fof(fact_BseqI,axiom,
    ! [V_X_2,V_K_2,T_a] :
      ( ( ( c_SEQ_OBseq(T_a,V_X_2)
         <= ! [B_n] : hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_RealVector_Onorm__class_Onorm(T_a,hAPP(V_X_2,B_n))),V_K_2)) )
       <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_RealDef_Oreal),c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)),V_K_2)) )
     <= class_RealVector_Oreal__normed__vector(T_a) ) ).

fof(fact_real__mult__inverse__left,axiom,
    ! [V_x] :
      ( c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal) != V_x
     => c_Groups_Oone__class_Oone(tc_RealDef_Oreal) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),c_Rings_Oinverse__class_Oinverse(tc_RealDef_Oreal,V_x)),V_x) ) ).

fof(fact_less__not__refl,axiom,
    ! [V_n] : ~ hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),V_n),V_n)) ).

fof(fact_mult__le__cancel__left__neg,axiom,
    ! [V_b_2,V_a_2,V_ca_2,T_a] :
      ( ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_ca_2),c_Groups_Ozero__class_Ozero(T_a)))
       => ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,V_b_2),V_a_2))
        <=> hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_ca_2),V_a_2)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_ca_2),V_b_2))) ) )
     <= class_Rings_Olinordered__ring__strict(T_a) ) ).

fof(fact_comm__mult__left__mono,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( ( ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a)),V_c))
         => hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_c),V_a)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_c),V_b))) )
       <= hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,V_a),V_b)) )
     <= class_Rings_Oordered__comm__semiring(T_a) ) ).

fof(fact_nat__neq__iff,axiom,
    ! [V_n_2,V_m_2] :
      ( V_n_2 != V_m_2
    <=> ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),V_n_2),V_m_2))
        | hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),V_m_2),V_n_2)) ) ) ).

fof(fact_zless__linear,axiom,
    ! [V_y,V_x] :
      ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Int_Oint),V_x),V_y))
      | hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Int_Oint),V_y),V_x))
      | V_x = V_y ) ).

fof(arity_Complex__Ocomplex__Rings_Ono__zero__divisors,axiom,
    class_Rings_Ono__zero__divisors(tc_Complex_Ocomplex) ).

fof(fact_degree__smult__le,axiom,
    ! [V_p,V_a,T_a] :
      ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,c_Polynomial_Odegree(T_a,c_Polynomial_Osmult(T_a,V_a,V_p))),c_Polynomial_Odegree(T_a,V_p)))
     <= class_Rings_Ocomm__semiring__0(T_a) ) ).

fof(fact_inverse__less__imp__less__neg,axiom,
    ! [V_b,V_a,T_a] :
      ( class_Fields_Olinordered__field(T_a)
     => ( ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_b),c_Groups_Ozero__class_Ozero(T_a)))
         => hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_b),V_a)) )
       <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),c_Rings_Oinverse__class_Oinverse(T_a,V_a)),c_Rings_Oinverse__class_Oinverse(T_a,V_b))) ) ) ).

fof(arity_Int__Oint__Rings_Olinordered__semiring__1__strict,axiom,
    class_Rings_Olinordered__semiring__1__strict(tc_Int_Oint) ).

fof(help_c__fimplies__3,axiom,
    ! [V_Q_2,V_P_2] :
      ( ~ hBOOL(V_P_2)
      | hBOOL(V_Q_2)
      | ~ hBOOL(hAPP(hAPP(c_fimplies,V_P_2),V_Q_2)) ) ).

fof(fact_Suc__less__eq,axiom,
    ! [V_n_2,V_m_2] :
      ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),V_m_2),V_n_2))
    <=> hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),hAPP(c_Nat_OSuc,V_m_2)),hAPP(c_Nat_OSuc,V_n_2))) ) ).

fof(fact_diff__less__Suc,axiom,
    ! [V_n,V_m] : hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),hAPP(hAPP(c_Groups_Ominus__class_Ominus(tc_Nat_Onat),V_m),V_n)),hAPP(c_Nat_OSuc,V_m))) ).

fof(fact_mod__diff__eq,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( class_Divides_Oring__div(T_a)
     => c_Divides_Odiv__class_Omod(T_a,hAPP(hAPP(c_Groups_Ominus__class_Ominus(T_a),c_Divides_Odiv__class_Omod(T_a,V_a,V_c)),c_Divides_Odiv__class_Omod(T_a,V_b,V_c)),V_c) = c_Divides_Odiv__class_Omod(T_a,hAPP(hAPP(c_Groups_Ominus__class_Ominus(T_a),V_a),V_b),V_c) ) ).

fof(fact_zdiv__mono1,axiom,
    ! [V_b,V_a_H,V_a] :
      ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,V_a),V_a_H))
     => ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Divides_Odiv__class_Odiv(tc_Int_Oint,V_a,V_b)),c_Divides_Odiv__class_Odiv(tc_Int_Oint,V_a_H,V_b)))
       <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Int_Oint),c_Groups_Ozero__class_Ozero(tc_Int_Oint)),V_b)) ) ) ).

fof(fact_add__le__less__mono,axiom,
    ! [V_d,V_c,V_b,V_a,T_a] :
      ( class_Groups_Oordered__cancel__ab__semigroup__add(T_a)
     => ( ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),V_a),V_c)),hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),V_b),V_d)))
         <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_c),V_d)) )
       <= hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,V_a),V_b)) ) ) ).

fof(fact_zadd__left__commute,axiom,
    ! [V_z,V_y,V_x] : hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Int_Oint),V_x),hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Int_Oint),V_y),V_z)) = hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Int_Oint),V_y),hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Int_Oint),V_x),V_z)) ).

fof(arity_Int__Oint__Rings_Oring__no__zero__divisors,axiom,
    class_Rings_Oring__no__zero__divisors(tc_Int_Oint) ).

fof(fact_ln__less__cancel__iff,axiom,
    ! [V_y_2,V_x_2] :
      ( ( ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_RealDef_Oreal),c_Transcendental_Oln(V_x_2)),c_Transcendental_Oln(V_y_2)))
        <=> hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_RealDef_Oreal),V_x_2),V_y_2)) )
       <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_RealDef_Oreal),c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)),V_y_2)) )
     <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_RealDef_Oreal),c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)),V_x_2)) ) ).

fof(fact_mult__0,axiom,
    ! [V_n] : hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),c_Groups_Ozero__class_Ozero(tc_Nat_Onat)),V_n) = c_Groups_Ozero__class_Ozero(tc_Nat_Onat) ).

fof(fact_mod__add__cong,axiom,
    ! [V_b_H,V_b,V_a_H,V_c,V_a,T_a] :
      ( ( ( c_Divides_Odiv__class_Omod(T_a,hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),V_a_H),V_b_H),V_c) = c_Divides_Odiv__class_Omod(T_a,hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),V_a),V_b),V_c)
         <= c_Divides_Odiv__class_Omod(T_a,V_b,V_c) = c_Divides_Odiv__class_Omod(T_a,V_b_H,V_c) )
       <= c_Divides_Odiv__class_Omod(T_a,V_a_H,V_c) = c_Divides_Odiv__class_Omod(T_a,V_a,V_c) )
     <= class_Divides_Osemiring__div(T_a) ) ).

fof(fact_degree__pcompose__le,axiom,
    ! [V_q,V_p,T_a] :
      ( class_Rings_Ocomm__semiring__0(T_a)
     => hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,c_Polynomial_Odegree(T_a,c_Polynomial_Opcompose(T_a,V_p,V_q))),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),c_Polynomial_Odegree(T_a,V_p)),c_Polynomial_Odegree(T_a,V_q)))) ) ).

fof(fact_mod__add__right__eq,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( c_Divides_Odiv__class_Omod(T_a,hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),V_a),V_b),V_c) = c_Divides_Odiv__class_Omod(T_a,hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),V_a),c_Divides_Odiv__class_Omod(T_a,V_b,V_c)),V_c)
     <= class_Divides_Osemiring__div(T_a) ) ).

fof(arity_Polynomial__Opoly__Rings_Oring__1,axiom,
    ! [T_1] :
      ( class_Rings_Ocomm__ring__1(T_1)
     => class_Rings_Oring__1(tc_Polynomial_Opoly(T_1)) ) ).

fof(fact_real__of__nat__inject,axiom,
    ! [V_m_2,V_n_2] :
      ( c_RealDef_Oreal(tc_Nat_Onat,V_n_2) = c_RealDef_Oreal(tc_Nat_Onat,V_m_2)
    <=> V_m_2 = V_n_2 ) ).

fof(fact_double__eq__0__iff,axiom,
    ! [V_a_2,T_a] :
      ( class_Groups_Olinordered__ab__group__add(T_a)
     => ( hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),V_a_2),V_a_2) = c_Groups_Ozero__class_Ozero(T_a)
      <=> V_a_2 = c_Groups_Ozero__class_Ozero(T_a) ) ) ).

fof(arity_Nat__Onat__Rings_Oordered__cancel__semiring,axiom,
    class_Rings_Oordered__cancel__semiring(tc_Nat_Onat) ).

fof(arity_Int__Oint__Rings_Olinordered__semiring,axiom,
    class_Rings_Olinordered__semiring(tc_Int_Oint) ).

fof(fact_poly__gcd__code,axiom,
    ! [V_x,V_y,T_a] :
      ( class_Fields_Ofield(T_a)
     => ( ( V_y != c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a))
         => c_Polynomial_Opoly__gcd(T_a,V_y,c_Divides_Odiv__class_Omod(tc_Polynomial_Opoly(T_a),V_x,V_y)) = c_Polynomial_Opoly__gcd(T_a,V_x,V_y) )
        & ( c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a)) = V_y
         => c_Polynomial_Opoly__gcd(T_a,V_x,V_y) = c_Polynomial_Osmult(T_a,c_Rings_Oinverse__class_Oinverse(T_a,hAPP(c_Polynomial_Ocoeff(T_a,V_x),c_Polynomial_Odegree(T_a,V_x))),V_x) ) ) ) ).

fof(fact_ge__natfloor__plus__one__imp__gt,axiom,
    ! [V_n,V_z] :
      ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Nat_Onat),c_RComplete_Onatfloor(V_z)),c_Groups_Oone__class_Oone(tc_Nat_Onat))),V_n))
     => hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_RealDef_Oreal),V_z),c_RealDef_Oreal(tc_Nat_Onat,V_n))) ) ).

fof(fact_mult__pos__neg,axiom,
    ! [V_b,V_a,T_a] :
      ( class_Rings_Olinordered__semiring__strict(T_a)
     => ( ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_b),c_Groups_Ozero__class_Ozero(T_a)))
         => hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b)),c_Groups_Ozero__class_Ozero(T_a))) )
       <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),c_Groups_Ozero__class_Ozero(T_a)),V_a)) ) ) ).

fof(fact_Nat__Transfer_Otransfer__nat__int__function__closures_I4_J,axiom,
    ! [V_n,V_x] :
      ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint)),hAPP(hAPP(c_Power_Opower__class_Opower(tc_Int_Oint),V_x),V_n)))
     <= hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint)),V_x)) ) ).

fof(fact_comm__semiring__1__class_Onormalizing__semiring__rules_I23_J,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),V_a),V_c)),V_b) = hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),V_a),V_b)),V_c)
     <= class_Rings_Ocomm__semiring__1(T_a) ) ).

fof(fact_mod__less,axiom,
    ! [V_n,V_m] :
      ( V_m = c_Divides_Odiv__class_Omod(tc_Nat_Onat,V_m,V_n)
     <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),V_m),V_n)) ) ).

fof(fact_mod__poly__eq,axiom,
    ! [V_r,V_q,V_y,V_x,T_a] :
      ( class_Fields_Ofield(T_a)
     => ( c_Polynomial_Opdivmod__rel(T_a,V_x,V_y,V_q,V_r)
       => c_Divides_Odiv__class_Omod(tc_Polynomial_Opoly(T_a),V_x,V_y) = V_r ) ) ).

fof(fact_le__funD,axiom,
    ! [V_x_2,V_g_2,V_f_2,T_a,T_b] :
      ( ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,T_b),V_f_2),V_g_2))
       => hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_b,hAPP(V_f_2,V_x_2)),hAPP(V_g_2,V_x_2))) )
     <= class_Orderings_Oord(T_b) ) ).

fof(fact_le__eq__less__or__eq,axiom,
    ! [V_n_2,V_m_2] :
      ( ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),V_m_2),V_n_2))
        | V_n_2 = V_m_2 )
    <=> hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m_2),V_n_2)) ) ).

fof(fact_Suc__le__lessD,axiom,
    ! [V_n,V_m] :
      ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,hAPP(c_Nat_OSuc,V_m)),V_n))
     => hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),V_m),V_n)) ) ).

fof(arity_Nat__Onat__Rings_Omult__zero,axiom,
    class_Rings_Omult__zero(tc_Nat_Onat) ).

fof(fact_nat__mult__eq__cancel__disj,axiom,
    ! [V_n_2,V_m_2,V_k_2] :
      ( hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_k_2),V_m_2) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_k_2),V_n_2)
    <=> ( V_m_2 = V_n_2
        | c_Groups_Ozero__class_Ozero(tc_Nat_Onat) = V_k_2 ) ) ).

fof(fact_linorder__antisym__conv2,axiom,
    ! [V_y_2,V_x_2,T_a] :
      ( class_Orderings_Olinorder(T_a)
     => ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,V_x_2),V_y_2))
       => ( V_x_2 = V_y_2
        <=> ~ hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_x_2),V_y_2)) ) ) ) ).

fof(arity_Int__Oint__Groups_Oordered__ab__semigroup__add__imp__le,axiom,
    class_Groups_Oordered__ab__semigroup__add__imp__le(tc_Int_Oint) ).

fof(fact_psize__eq__0__iff,axiom,
    ! [V_pb_2,T_a] :
      ( ( V_pb_2 = c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a))
      <=> c_Fundamental__Theorem__Algebra__Mirabelle_Opsize(T_a,V_pb_2) = c_Groups_Ozero__class_Ozero(tc_Nat_Onat) )
     <= class_Groups_Ozero(T_a) ) ).

fof(fact_mult__less__imp__less__right,axiom,
    ! [V_b,V_c,V_a,T_a] :
      ( class_Rings_Olinordered__semiring__strict(T_a)
     => ( ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_a),V_b))
         <= hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a)),V_c)) )
       <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_c)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b),V_c))) ) ) ).

fof(fact_le__add__diff__inverse,axiom,
    ! [V_m,V_n] :
      ( V_m = hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Nat_Onat),V_n),hAPP(hAPP(c_Groups_Ominus__class_Ominus(tc_Nat_Onat),V_m),V_n))
     <= hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_n),V_m)) ) ).

fof(fact_diff__is__0__eq,axiom,
    ! [V_n_2,V_m_2] :
      ( c_Groups_Ozero__class_Ozero(tc_Nat_Onat) = hAPP(hAPP(c_Groups_Ominus__class_Ominus(tc_Nat_Onat),V_m_2),V_n_2)
    <=> hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m_2),V_n_2)) ) ).

fof(arity_RealDef__Oreal__Fields_Ofield__inverse__zero,axiom,
    class_Fields_Ofield__inverse__zero(tc_RealDef_Oreal) ).

fof(fact_div__add1__eq,axiom,
    ! [V_c,V_b,V_a] : c_Divides_Odiv__class_Odiv(tc_Nat_Onat,hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Nat_Onat),V_a),V_b),V_c) = hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Nat_Onat),hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Nat_Onat),c_Divides_Odiv__class_Odiv(tc_Nat_Onat,V_a,V_c)),c_Divides_Odiv__class_Odiv(tc_Nat_Onat,V_b,V_c))),c_Divides_Odiv__class_Odiv(tc_Nat_Onat,hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Nat_Onat),c_Divides_Odiv__class_Omod(tc_Nat_Onat,V_a,V_c)),c_Divides_Odiv__class_Omod(tc_Nat_Onat,V_b,V_c)),V_c)) ).

fof(fact_nat__add__left__cancel__le,axiom,
    ! [V_n_2,V_m_2,V_k_2] :
      ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Nat_Onat),V_k_2),V_m_2)),hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Nat_Onat),V_k_2),V_n_2)))
    <=> hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m_2),V_n_2)) ) ).

fof(arity_Polynomial__Opoly__Rings_Olinordered__semiring,axiom,
    ! [T_1] :
      ( class_Rings_Olinordered__idom(T_1)
     => class_Rings_Olinordered__semiring(tc_Polynomial_Opoly(T_1)) ) ).

fof(fact_mult_Odiff__right,axiom,
    ! [V_b_H,V_b,V_a,T_a] :
      ( class_RealVector_Oreal__normed__algebra(T_a)
     => hAPP(hAPP(c_Groups_Ominus__class_Ominus(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b_H)) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),hAPP(hAPP(c_Groups_Ominus__class_Ominus(T_a),V_b),V_b_H)) ) ).

fof(fact_mod__if,axiom,
    ! [V_n,V_m] :
      ( ( ~ hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),V_m),V_n))
       => c_Divides_Odiv__class_Omod(tc_Nat_Onat,hAPP(hAPP(c_Groups_Ominus__class_Ominus(tc_Nat_Onat),V_m),V_n),V_n) = c_Divides_Odiv__class_Omod(tc_Nat_Onat,V_m,V_n) )
      & ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),V_m),V_n))
       => c_Divides_Odiv__class_Omod(tc_Nat_Onat,V_m,V_n) = V_m ) ) ).

fof(help_c__COMBC__1,axiom,
    ! [V_R_2,V_Q_2,V_P_2,T_a,T_c,T_b] : hAPP(hAPP(V_P_2,V_R_2),V_Q_2) = hAPP(c_COMBC(T_b,T_c,T_a,V_P_2,V_Q_2),V_R_2) ).

fof(fact_inverse__negative__iff__negative,axiom,
    ! [V_a_2,T_a] :
      ( class_Fields_Olinordered__field__inverse__zero(T_a)
     => ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_a_2),c_Groups_Ozero__class_Ozero(T_a)))
      <=> hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),c_Rings_Oinverse__class_Oinverse(T_a,V_a_2)),c_Groups_Ozero__class_Ozero(T_a))) ) ) ).

fof(arity_RealDef__Oreal__Orderings_Oord,axiom,
    class_Orderings_Oord(tc_RealDef_Oreal) ).

fof(help_c__COMBB__1,axiom,
    ! [V_R_2,V_Q_2,V_P_2,T_c,T_a,T_b] : hAPP(hAPP(c_COMBB(T_b,T_a,T_c,V_P_2),V_Q_2),V_R_2) = hAPP(V_P_2,hAPP(V_Q_2,V_R_2)) ).

fof(arity_fun__Orderings_Oorder,axiom,
    ! [T_2,T_1] :
      ( class_Orderings_Oorder(T_1)
     => class_Orderings_Oorder(tc_fun(T_2,T_1)) ) ).

fof(fact_smult__0__left,axiom,
    ! [V_p,T_a] :
      ( class_Rings_Ocomm__semiring__0(T_a)
     => c_Polynomial_Osmult(T_a,c_Groups_Ozero__class_Ozero(T_a),V_p) = c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a)) ) ).

fof(fact_zero__le__mult__iff,axiom,
    ! [V_b_2,V_a_2,T_a] :
      ( ( ( ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a)),V_b_2))
            & hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a)),V_a_2)) )
          | ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,V_a_2),c_Groups_Ozero__class_Ozero(T_a)))
            & hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,V_b_2),c_Groups_Ozero__class_Ozero(T_a))) ) )
      <=> hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a_2),V_b_2))) )
     <= class_Rings_Olinordered__ring__strict(T_a) ) ).

fof(fact_mod__self,axiom,
    ! [V_a,T_a] :
      ( class_Divides_Osemiring__div(T_a)
     => c_Groups_Ozero__class_Ozero(T_a) = c_Divides_Odiv__class_Omod(T_a,V_a,V_a) ) ).

fof(fact_order__refl,axiom,
    ! [V_x,T_a] :
      ( class_Orderings_Opreorder(T_a)
     => hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,V_x),V_x)) ) ).

fof(fact_zmod__le__nonneg__dividend,axiom,
    ! [V_k,V_m] :
      ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Divides_Odiv__class_Omod(tc_Int_Oint,V_m,V_k)),V_m))
     <= hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint)),V_m)) ) ).

fof(fact_mult_Oadd__right,axiom,
    ! [V_b_H,V_b,V_a,T_a] :
      ( hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),V_b),V_b_H)) = hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b_H))
     <= class_RealVector_Oreal__normed__algebra(T_a) ) ).

fof(fact_less__Suc0,axiom,
    ! [V_n_2] :
      ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),V_n_2),hAPP(c_Nat_OSuc,c_Groups_Ozero__class_Ozero(tc_Nat_Onat))))
    <=> V_n_2 = c_Groups_Ozero__class_Ozero(tc_Nat_Onat) ) ).

fof(fact_mult__pos__pos,axiom,
    ! [V_b,V_a,T_a] :
      ( class_Rings_Olinordered__semiring__strict(T_a)
     => ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),c_Groups_Ozero__class_Ozero(T_a)),V_a))
       => ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),c_Groups_Ozero__class_Ozero(T_a)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b)))
         <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),c_Groups_Ozero__class_Ozero(T_a)),V_b)) ) ) ) ).

fof(fact_coeff__1,axiom,
    ! [V_n,T_a] :
      ( class_Rings_Ocomm__semiring__1(T_a)
     => ( ( c_Groups_Ozero__class_Ozero(tc_Nat_Onat) != V_n
         => c_Groups_Ozero__class_Ozero(T_a) = hAPP(c_Polynomial_Ocoeff(T_a,c_Groups_Oone__class_Oone(tc_Polynomial_Opoly(T_a))),V_n) )
        & ( c_Groups_Oone__class_Oone(T_a) = hAPP(c_Polynomial_Ocoeff(T_a,c_Groups_Oone__class_Oone(tc_Polynomial_Opoly(T_a))),V_n)
         <= c_Groups_Ozero__class_Ozero(tc_Nat_Onat) = V_n ) ) ) ).

fof(fact_termination__basic__simps_I1_J,axiom,
    ! [V_z,V_y,V_x] :
      ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),V_x),V_y))
     => hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),V_x),hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Nat_Onat),V_y),V_z))) ) ).

fof(fact_degree__mult__le,axiom,
    ! [V_q,V_p,T_a] :
      ( class_Rings_Ocomm__semiring__0(T_a)
     => hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,c_Polynomial_Odegree(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Polynomial_Opoly(T_a)),V_p),V_q))),hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Nat_Onat),c_Polynomial_Odegree(T_a,V_p)),c_Polynomial_Odegree(T_a,V_q)))) ) ).

fof(fact_mult__neg__pos,axiom,
    ! [V_b,V_a,T_a] :
      ( class_Rings_Olinordered__semiring__strict(T_a)
     => ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_a),c_Groups_Ozero__class_Ozero(T_a)))
       => ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b)),c_Groups_Ozero__class_Ozero(T_a)))
         <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),c_Groups_Ozero__class_Ozero(T_a)),V_b)) ) ) ) ).

fof(arity_Nat__Onat__Groups_Ocancel__ab__semigroup__add,axiom,
    class_Groups_Ocancel__ab__semigroup__add(tc_Nat_Onat) ).

fof(fact_xt1_I10_J,axiom,
    ! [V_z,V_x,V_y,T_a] :
      ( ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_y),V_x))
       => ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_z),V_x))
         <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_z),V_y)) ) )
     <= class_Orderings_Oorder(T_a) ) ).

fof(fact_Divides_Otransfer__nat__int__function__closures_I2_J,axiom,
    ! [V_y,V_x] :
      ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint)),V_x))
     => ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint)),V_y))
       => hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint)),c_Divides_Odiv__class_Omod(tc_Int_Oint,V_x,V_y))) ) ) ).

fof(fact_mult__0__right,axiom,
    ! [V_m] : c_Groups_Ozero__class_Ozero(tc_Nat_Onat) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_m),c_Groups_Ozero__class_Ozero(tc_Nat_Onat)) ).

fof(fact_mult__left_Odiff,axiom,
    ! [V_ya,V_y,V_x,T_a] :
      ( hAPP(hAPP(c_Groups_Ominus__class_Ominus(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_x),V_ya)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_y),V_ya)) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),hAPP(hAPP(c_Groups_Ominus__class_Ominus(T_a),V_x),V_y)),V_ya)
     <= class_RealVector_Oreal__normed__algebra(T_a) ) ).

fof(fact_xt1_I7_J,axiom,
    ! [V_z,V_x,V_y,T_a] :
      ( class_Orderings_Oorder(T_a)
     => ( ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_z),V_x))
         <= hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,V_z),V_y)) )
       <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_y),V_x)) ) ) ).

fof(fact_realpow__Suc__le__self,axiom,
    ! [V_n,V_r,T_a] :
      ( class_Rings_Olinordered__semidom(T_a)
     => ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a)),V_r))
       => ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,V_r),c_Groups_Oone__class_Oone(T_a)))
         => hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_r),hAPP(c_Nat_OSuc,V_n))),V_r)) ) ) ) ).

fof(fact_mult__less__mono1,axiom,
    ! [V_k,V_j,V_i] :
      ( ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),c_Groups_Ozero__class_Ozero(tc_Nat_Onat)),V_k))
       => hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_i),V_k)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_j),V_k))) )
     <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),V_i),V_j)) ) ).

fof(fact_add__left__imp__eq,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( class_Groups_Ocancel__semigroup__add(T_a)
     => ( hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),V_a),V_c) = hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),V_a),V_b)
       => V_b = V_c ) ) ).

fof(fact_power__one,axiom,
    ! [V_n,T_a] :
      ( c_Groups_Oone__class_Oone(T_a) = hAPP(hAPP(c_Power_Opower__class_Opower(T_a),c_Groups_Oone__class_Oone(T_a)),V_n)
     <= class_Groups_Omonoid__mult(T_a) ) ).

fof(fact_zless__le,axiom,
    ! [V_w_2,V_z_2] :
      ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Int_Oint),V_z_2),V_w_2))
    <=> ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,V_z_2),V_w_2))
        & V_z_2 != V_w_2 ) ) ).

fof(fact_mult__less__le__imp__less,axiom,
    ! [V_d,V_c,V_b,V_a,T_a] :
      ( class_Rings_Olinordered__semiring__strict(T_a)
     => ( ( ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a)),V_a))
           => ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),c_Groups_Ozero__class_Ozero(T_a)),V_c))
             => hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_c)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b),V_d))) ) )
         <= hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,V_c),V_d)) )
       <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_a),V_b)) ) ) ).

fof(fact_ln__less__self,axiom,
    ! [V_x] :
      ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_RealDef_Oreal),c_Transcendental_Oln(V_x)),V_x))
     <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_RealDef_Oreal),c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)),V_x)) ) ).

fof(fact_le__neq__implies__less,axiom,
    ! [V_n,V_m] :
      ( ( V_n != V_m
       => hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),V_m),V_n)) )
     <= hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m),V_n)) ) ).

fof(fact_division__ring__inverse__add,axiom,
    ! [V_b,V_a,T_a] :
      ( ( ( V_b != c_Groups_Ozero__class_Ozero(T_a)
         => hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),c_Rings_Oinverse__class_Oinverse(T_a,V_a)),c_Rings_Oinverse__class_Oinverse(T_a,V_b)) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Rings_Oinverse__class_Oinverse(T_a,V_a)),hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),V_a),V_b))),c_Rings_Oinverse__class_Oinverse(T_a,V_b)) )
       <= c_Groups_Ozero__class_Ozero(T_a) != V_a )
     <= class_Rings_Odivision__ring(T_a) ) ).

fof(fact_add__le__mono1,axiom,
    ! [V_k,V_j,V_i] :
      ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Nat_Onat),V_i),V_k)),hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Nat_Onat),V_j),V_k)))
     <= hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_i),V_j)) ) ).

fof(arity_Nat__Onat__Groups_Omonoid__mult,axiom,
    class_Groups_Omonoid__mult(tc_Nat_Onat) ).

fof(fact_mult__right__less__imp__less,axiom,
    ! [V_b,V_c,V_a,T_a] :
      ( ( ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a)),V_c))
         => hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_a),V_b)) )
       <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_c)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b),V_c))) )
     <= class_Rings_Olinordered__semiring(T_a) ) ).

fof(fact_reals__Archimedean6a,axiom,
    ! [V_r] :
      ( ? [B_n] :
          ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_RealDef_Oreal(tc_Nat_Onat,B_n)),V_r))
          & hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_RealDef_Oreal),V_r),c_RealDef_Oreal(tc_Nat_Onat,hAPP(c_Nat_OSuc,B_n)))) )
     <= hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)),V_r)) ) ).

fof(fact_LeastI__ex,axiom,
    ! [V_P_2,T_a] :
      ( ( ? [B_x1] : hBOOL(hAPP(V_P_2,B_x1))
       => hBOOL(hAPP(V_P_2,c_Orderings_Oord__class_OLeast(T_a,V_P_2))) )
     <= class_Orderings_Owellorder(T_a) ) ).

fof(fact_BseqI2_H,axiom,
    ! [V_K_2,V_X_2,V_N_2,T_a] :
      ( class_RealVector_Oreal__normed__vector(T_a)
     => ( ! [B_n] :
            ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_N_2),B_n))
           => hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_RealVector_Onorm__class_Onorm(T_a,hAPP(V_X_2,B_n))),V_K_2)) )
       => c_SEQ_OBseq(T_a,V_X_2) ) ) ).

fof(fact_pos__poly__def,axiom,
    ! [V_pb_2,T_a] :
      ( ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),c_Groups_Ozero__class_Ozero(T_a)),hAPP(c_Polynomial_Ocoeff(T_a,V_pb_2),c_Polynomial_Odegree(T_a,V_pb_2))))
      <=> c_Polynomial_Opos__poly(T_a,V_pb_2) )
     <= class_Rings_Olinordered__idom(T_a) ) ).

fof(fact_mult__monom,axiom,
    ! [V_n,V_b,V_m,V_a,T_a] :
      ( hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Polynomial_Opoly(T_a)),c_Polynomial_Omonom(T_a,V_a,V_m)),c_Polynomial_Omonom(T_a,V_b,V_n)) = c_Polynomial_Omonom(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b),hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Nat_Onat),V_m),V_n))
     <= class_Rings_Ocomm__semiring__0(T_a) ) ).

fof(fact_less__SucE,axiom,
    ! [V_n,V_m] :
      ( ( ~ hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),V_m),V_n))
       => V_n = V_m )
     <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),V_m),hAPP(c_Nat_OSuc,V_n))) ) ).

fof(arity_Polynomial__Opoly__Groups_Oab__semigroup__add,axiom,
    ! [T_1] :
      ( class_Groups_Ocomm__monoid__add(T_1)
     => class_Groups_Oab__semigroup__add(tc_Polynomial_Opoly(T_1)) ) ).

fof(fact_mult__right_Odiff,axiom,
    ! [V_y,V_x,V_xa,T_a] :
      ( hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_xa),hAPP(hAPP(c_Groups_Ominus__class_Ominus(T_a),V_x),V_y)) = hAPP(hAPP(c_Groups_Ominus__class_Ominus(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_xa),V_x)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_xa),V_y))
     <= class_RealVector_Oreal__normed__algebra(T_a) ) ).

fof(fact_mult__strict__left__mono,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( ( ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),c_Groups_Ozero__class_Ozero(T_a)),V_c))
         => hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_c),V_a)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_c),V_b))) )
       <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_a),V_b)) )
     <= class_Rings_Olinordered__semiring__strict(T_a) ) ).

fof(fact_Divides_Otransfer__nat__int__function__closures_I1_J,axiom,
    ! [V_y,V_x] :
      ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint)),V_x))
     => ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint)),c_Divides_Odiv__class_Odiv(tc_Int_Oint,V_x,V_y)))
       <= hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint)),V_y)) ) ) ).

fof(fact_comm__semiring__1__class_Onormalizing__semiring__rules_I2_J,axiom,
    ! [V_m,V_a,T_a] :
      ( hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),V_a),c_Groups_Oone__class_Oone(T_a))),V_m) = hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_m)),V_m)
     <= class_Rings_Ocomm__semiring__1(T_a) ) ).

fof(fact_add__0__left,axiom,
    ! [V_a,T_a] :
      ( hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),c_Groups_Ozero__class_Ozero(T_a)),V_a) = V_a
     <= class_Groups_Omonoid__add(T_a) ) ).

fof(fact_zero__poly__def,axiom,
    ! [T_a] :
      ( c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a)) = c_Polynomial_OAbs__poly(T_a,c_COMBK(T_a,tc_Nat_Onat,c_Groups_Ozero__class_Ozero(T_a)))
     <= class_Groups_Ozero(T_a) ) ).

fof(arity_Complex__Ocomplex__Rings_Ocomm__semiring__1,axiom,
    class_Rings_Ocomm__semiring__1(tc_Complex_Ocomplex) ).

fof(arity_Nat__Onat__Rings_Ozero__neq__one,axiom,
    class_Rings_Ozero__neq__one(tc_Nat_Onat) ).

fof(fact_power__increasing__iff,axiom,
    ! [V_y_2,V_x_2,V_b_2,T_a] :
      ( class_Rings_Olinordered__semidom(T_a)
     => ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),c_Groups_Oone__class_Oone(T_a)),V_b_2))
       => ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_x_2),V_y_2))
        <=> hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_b_2),V_x_2)),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_b_2),V_y_2))) ) ) ) ).

fof(arity_Polynomial__Opoly__Divides_Osemiring__div,axiom,
    ! [T_1] :
      ( class_Divides_Osemiring__div(tc_Polynomial_Opoly(T_1))
     <= class_Fields_Ofield(T_1) ) ).

fof(fact_less__trans__Suc,axiom,
    ! [V_k,V_j,V_i] :
      ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),V_i),V_j))
     => ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),hAPP(c_Nat_OSuc,V_i)),V_k))
       <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),V_j),V_k)) ) ) ).

fof(fact_split__zdiv,axiom,
    ! [V_k_2,V_n_2,V_P_2] :
      ( ( ( ! [B_i] :
              ( ? [B_j] :
                  ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,B_j),c_Groups_Ozero__class_Ozero(tc_Int_Oint)))
                  & V_n_2 = hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Int_Oint),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_k_2),B_i)),B_j)
                  & hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Int_Oint),V_k_2),B_j)) )
             => hBOOL(hAPP(V_P_2,B_i)) )
         <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Int_Oint),V_k_2),c_Groups_Ozero__class_Ozero(tc_Int_Oint))) )
        & ( ! [B_i] :
              ( hBOOL(hAPP(V_P_2,B_i))
             <= ? [B_j] :
                  ( V_n_2 = hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Int_Oint),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_k_2),B_i)),B_j)
                  & hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Int_Oint),B_j),V_k_2))
                  & hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint)),B_j)) ) )
         <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Int_Oint),c_Groups_Ozero__class_Ozero(tc_Int_Oint)),V_k_2)) )
        & ( hBOOL(hAPP(V_P_2,c_Groups_Ozero__class_Ozero(tc_Int_Oint)))
         <= c_Groups_Ozero__class_Ozero(tc_Int_Oint) = V_k_2 ) )
    <=> hBOOL(hAPP(V_P_2,c_Divides_Odiv__class_Odiv(tc_Int_Oint,V_n_2,V_k_2))) ) ).

fof(arity_Polynomial__Opoly__Rings_Olinordered__semiring__1,axiom,
    ! [T_1] :
      ( class_Rings_Olinordered__idom(T_1)
     => class_Rings_Olinordered__semiring__1(tc_Polynomial_Opoly(T_1)) ) ).

fof(fact_order__le__less__trans,axiom,
    ! [V_z,V_y,V_x,T_a] :
      ( class_Orderings_Opreorder(T_a)
     => ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,V_x),V_y))
       => ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_x),V_z))
         <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_y),V_z)) ) ) ) ).

fof(fact_poly__gcd__1__right,axiom,
    ! [V_x,T_a] :
      ( c_Polynomial_Opoly__gcd(T_a,V_x,c_Groups_Oone__class_Oone(tc_Polynomial_Opoly(T_a))) = c_Groups_Oone__class_Oone(tc_Polynomial_Opoly(T_a))
     <= class_Fields_Ofield(T_a) ) ).

fof(fact_nat__mult__less__cancel1,axiom,
    ! [V_n_2,V_m_2,V_k_2] :
      ( ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_k_2),V_m_2)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_k_2),V_n_2)))
      <=> hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),V_m_2),V_n_2)) )
     <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),c_Groups_Ozero__class_Ozero(tc_Nat_Onat)),V_k_2)) ) ).

fof(fact_zle__add1__eq__le,axiom,
    ! [V_z_2,V_w_2] :
      ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,V_w_2),V_z_2))
    <=> hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Int_Oint),V_w_2),hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Int_Oint),V_z_2),c_Groups_Oone__class_Oone(tc_Int_Oint)))) ) ).

fof(fact_nonzero__inverse__eq__imp__eq,axiom,
    ! [V_b,V_a,T_a] :
      ( ( ( ( c_Groups_Ozero__class_Ozero(T_a) != V_b
           => V_b = V_a )
         <= V_a != c_Groups_Ozero__class_Ozero(T_a) )
       <= c_Rings_Oinverse__class_Oinverse(T_a,V_b) = c_Rings_Oinverse__class_Oinverse(T_a,V_a) )
     <= class_Rings_Odivision__ring(T_a) ) ).

fof(fact_even__less__0__iff,axiom,
    ! [V_a_2,T_a] :
      ( ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),V_a_2),V_a_2)),c_Groups_Ozero__class_Ozero(T_a)))
      <=> hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_a_2),c_Groups_Ozero__class_Ozero(T_a))) )
     <= class_Rings_Olinordered__idom(T_a) ) ).

fof(fact_unique__quotient__lemma__neg,axiom,
    ! [V_r,V_q,V_r_H,V_q_H,V_b] :
      ( ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,V_r),c_Groups_Ozero__class_Ozero(tc_Int_Oint)))
       => ( ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Int_Oint),V_b),V_r_H))
           => hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,V_q),V_q_H)) )
         <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Int_Oint),V_b),V_r)) ) )
     <= hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Int_Oint),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_b),V_q_H)),V_r_H)),hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Int_Oint),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_b),V_q)),V_r))) ) ).

fof(fact_power_Opower_Opower__Suc,axiom,
    ! [V_n_2,V_a_2,V_times_2,V_one_2,T_a] : hAPP(hAPP(c_Power_Opower_Opower(T_a,V_one_2,V_times_2),V_a_2),hAPP(c_Nat_OSuc,V_n_2)) = hAPP(hAPP(V_times_2,V_a_2),hAPP(hAPP(c_Power_Opower_Opower(T_a,V_one_2,V_times_2),V_a_2),V_n_2)) ).

fof(fact_pc0,axiom,
    c_Groups_Ozero__class_Ozero(tc_Complex_Ocomplex) != hAPP(c_Polynomial_Opoly(tc_Complex_Ocomplex,v_pa____),v_c____) ).

fof(fact_inverse__positive__iff__positive,axiom,
    ! [V_a_2,T_a] :
      ( class_Fields_Olinordered__field__inverse__zero(T_a)
     => ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),c_Groups_Ozero__class_Ozero(T_a)),c_Rings_Oinverse__class_Oinverse(T_a,V_a_2)))
      <=> hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),c_Groups_Ozero__class_Ozero(T_a)),V_a_2)) ) ) ).

fof(fact_comm__semiring__class_Odistrib,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( class_Rings_Ocomm__semiring(T_a)
     => hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),V_a),V_b)),V_c) = hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_c)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b),V_c)) ) ).

fof(fact_add_Ocomm__neutral,axiom,
    ! [V_a,T_a] :
      ( V_a = hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),V_a),c_Groups_Ozero__class_Ozero(T_a))
     <= class_Groups_Ocomm__monoid__add(T_a) ) ).

fof(fact_zmult2__lemma__aux3,axiom,
    ! [V_q,V_b,V_r,V_c] :
      ( ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint)),V_r))
       => ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Int_Oint),V_r),V_b))
         => hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint)),hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Int_Oint),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_b),c_Divides_Odiv__class_Omod(tc_Int_Oint,V_q,V_c))),V_r))) ) )
     <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Int_Oint),c_Groups_Ozero__class_Ozero(tc_Int_Oint)),V_c)) ) ).

fof(fact_Suc__le__mono,axiom,
    ! [V_m_2,V_n_2] :
      ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_n_2),V_m_2))
    <=> hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,hAPP(c_Nat_OSuc,V_n_2)),hAPP(c_Nat_OSuc,V_m_2))) ) ).

fof(fact_norm__power,axiom,
    ! [V_n,V_x,T_a] :
      ( class_RealVector_Oreal__normed__div__algebra(T_a)
     => hAPP(hAPP(c_Power_Opower__class_Opower(tc_RealDef_Oreal),c_RealVector_Onorm__class_Onorm(T_a,V_x)),V_n) = c_RealVector_Onorm__class_Onorm(T_a,hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_x),V_n)) ) ).

fof(fact_less__iff__Suc__add,axiom,
    ! [V_n_2,V_m_2] :
      ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),V_m_2),V_n_2))
    <=> ? [B_k] : hAPP(c_Nat_OSuc,hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Nat_Onat),V_m_2),B_k)) = V_n_2 ) ).

fof(fact_termination__basic__simps_I4_J,axiom,
    ! [V_y,V_z,V_x] :
      ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_x),hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Nat_Onat),V_y),V_z)))
     <= hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_x),V_z)) ) ).

fof(fact_real__mult__1,axiom,
    ! [V_z] : V_z = hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),c_Groups_Oone__class_Oone(tc_RealDef_Oreal)),V_z) ).

fof(arity_Polynomial__Opoly__Groups_Ocancel__comm__monoid__add,axiom,
    ! [T_1] :
      ( class_Groups_Ocancel__comm__monoid__add(tc_Polynomial_Opoly(T_1))
     <= class_Groups_Ocancel__comm__monoid__add(T_1) ) ).

fof(fact_mod__Suc__eq__Suc__mod,axiom,
    ! [V_n,V_m] : c_Divides_Odiv__class_Omod(tc_Nat_Onat,hAPP(c_Nat_OSuc,c_Divides_Odiv__class_Omod(tc_Nat_Onat,V_m,V_n)),V_n) = c_Divides_Odiv__class_Omod(tc_Nat_Onat,hAPP(c_Nat_OSuc,V_m),V_n) ).

fof(fact_zmod__zmult1__eq,axiom,
    ! [V_c,V_b,V_a] : c_Divides_Odiv__class_Omod(tc_Int_Oint,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_a),V_b),V_c) = c_Divides_Odiv__class_Omod(tc_Int_Oint,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_a),c_Divides_Odiv__class_Omod(tc_Int_Oint,V_b,V_c)),V_c) ).

fof(fact_real__of__nat__power,axiom,
    ! [V_n,V_m] : hAPP(hAPP(c_Power_Opower__class_Opower(tc_RealDef_Oreal),c_RealDef_Oreal(tc_Nat_Onat,V_m)),V_n) = c_RealDef_Oreal(tc_Nat_Onat,hAPP(hAPP(c_Power_Opower__class_Opower(tc_Nat_Onat),V_m),V_n)) ).

fof(fact__096EX_Aq_O_Apsize_Aq_A_061_Apsize_Ap_A_G_A_IALL_Ax_O_Apoly_Aq_Ax_A_061_Apoly_Ap_A_Ic_A_L_Ax_J_J_096,axiom,
    ? [B_q] :
      ( c_Fundamental__Theorem__Algebra__Mirabelle_Opsize(tc_Complex_Ocomplex,B_q) = c_Fundamental__Theorem__Algebra__Mirabelle_Opsize(tc_Complex_Ocomplex,v_pa____)
      & ! [B_x] : hAPP(c_Polynomial_Opoly(tc_Complex_Ocomplex,B_q),B_x) = hAPP(c_Polynomial_Opoly(tc_Complex_Ocomplex,v_pa____),hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Complex_Ocomplex),v_c____),B_x)) ) ).

fof(fact_nat__mult__div__cancel1,axiom,
    ! [V_n,V_m,V_k] :
      ( c_Divides_Odiv__class_Odiv(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_k),V_m),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_k),V_n)) = c_Divides_Odiv__class_Odiv(tc_Nat_Onat,V_m,V_n)
     <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),c_Groups_Ozero__class_Ozero(tc_Nat_Onat)),V_k)) ) ).

fof(fact_ln__le__cancel__iff,axiom,
    ! [V_y_2,V_x_2] :
      ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_RealDef_Oreal),c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)),V_x_2))
     => ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_RealDef_Oreal),c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)),V_y_2))
       => ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Transcendental_Oln(V_x_2)),c_Transcendental_Oln(V_y_2)))
        <=> hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,V_x_2),V_y_2)) ) ) ) ).

fof(fact_less__imp__inverse__less__neg,axiom,
    ! [V_b,V_a,T_a] :
      ( ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_a),V_b))
       => ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),c_Rings_Oinverse__class_Oinverse(T_a,V_b)),c_Rings_Oinverse__class_Oinverse(T_a,V_a)))
         <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_b),c_Groups_Ozero__class_Ozero(T_a))) ) )
     <= class_Fields_Olinordered__field(T_a) ) ).

fof(fact_zero__le__one,axiom,
    ! [T_a] :
      ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a)),c_Groups_Oone__class_Oone(T_a)))
     <= class_Rings_Olinordered__semidom(T_a) ) ).

fof(arity_Polynomial__Opoly__Rings_Ocomm__semiring,axiom,
    ! [T_1] :
      ( class_Rings_Ocomm__semiring__0(T_1)
     => class_Rings_Ocomm__semiring(tc_Polynomial_Opoly(T_1)) ) ).

fof(arity_Int__Oint__Orderings_Oord,axiom,
    class_Orderings_Oord(tc_Int_Oint) ).

fof(fact_smult__def,axiom,
    ! [V_pb_2,V_a_2,T_a] :
      ( c_Polynomial_OAbs__poly(T_a,hAPP(c_COMBB(T_a,T_a,tc_Nat_Onat,hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a_2)),c_Polynomial_Ocoeff(T_a,V_pb_2))) = c_Polynomial_Osmult(T_a,V_a_2,V_pb_2)
     <= class_Rings_Ocomm__semiring__0(T_a) ) ).

fof(fact_power__eq__0__iff,axiom,
    ! [V_n_2,V_a_2,T_a] :
      ( ( class_Power_Opower(T_a)
        & class_Rings_Omult__zero(T_a)
        & class_Rings_Ozero__neq__one(T_a)
        & class_Rings_Ono__zero__divisors(T_a) )
     => ( ( c_Groups_Ozero__class_Ozero(tc_Nat_Onat) != V_n_2
          & c_Groups_Ozero__class_Ozero(T_a) = V_a_2 )
      <=> hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a_2),V_n_2) = c_Groups_Ozero__class_Ozero(T_a) ) ) ).

fof(fact_order__le__imp__less__or__eq,axiom,
    ! [V_y,V_x,T_a] :
      ( class_Orderings_Oorder(T_a)
     => ( ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_x),V_y))
          | V_y = V_x )
       <= hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,V_x),V_y)) ) ) ).

fof(fact_Zero__not__Suc,axiom,
    ! [V_m] : hAPP(c_Nat_OSuc,V_m) != c_Groups_Ozero__class_Ozero(tc_Nat_Onat) ).

fof(fact_mult__left__less__imp__less,axiom,
    ! [V_b,V_a,V_c,T_a] :
      ( ( ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a)),V_c))
         => hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_a),V_b)) )
       <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_c),V_a)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_c),V_b))) )
     <= class_Rings_Olinordered__semiring(T_a) ) ).

fof(fact_pcompose__0,axiom,
    ! [V_q,T_a] :
      ( c_Polynomial_Opcompose(T_a,c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a)),V_q) = c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a))
     <= class_Rings_Ocomm__semiring__0(T_a) ) ).

fof(arity_Complex__Ocomplex__Rings_Osemiring,axiom,
    class_Rings_Osemiring(tc_Complex_Ocomplex) ).

fof(fact_order__antisym__conv,axiom,
    ! [V_x_2,V_y_2,T_a] :
      ( class_Orderings_Oorder(T_a)
     => ( ( V_x_2 = V_y_2
        <=> hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,V_x_2),V_y_2)) )
       <= hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,V_y_2),V_x_2)) ) ) ).

fof(fact_div__neg__neg__trivial,axiom,
    ! [V_b,V_a] :
      ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,V_a),c_Groups_Ozero__class_Ozero(tc_Int_Oint)))
     => ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Int_Oint),V_b),V_a))
       => c_Groups_Ozero__class_Ozero(tc_Int_Oint) = c_Divides_Odiv__class_Odiv(tc_Int_Oint,V_a,V_b) ) ) ).

fof(fact_real__le__linear,axiom,
    ! [V_w,V_z] :
      ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,V_z),V_w))
      | hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,V_w),V_z)) ) ).

fof(fact_sum__squares__le__zero__iff,axiom,
    ! [V_y_2,V_x_2,T_a] :
      ( ( ( V_y_2 = c_Groups_Ozero__class_Ozero(T_a)
          & V_x_2 = c_Groups_Ozero__class_Ozero(T_a) )
      <=> hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_x_2),V_x_2)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_y_2),V_y_2))),c_Groups_Ozero__class_Ozero(T_a))) )
     <= class_Rings_Olinordered__ring__strict(T_a) ) ).

fof(arity_RealDef__Oreal__Rings_Olinordered__ring,axiom,
    class_Rings_Olinordered__ring(tc_RealDef_Oreal) ).

fof(fact_poly__gcd__zero__iff,axiom,
    ! [V_y_2,V_x_2,T_a] :
      ( class_Fields_Ofield(T_a)
     => ( c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a)) = c_Polynomial_Opoly__gcd(T_a,V_x_2,V_y_2)
      <=> ( c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a)) = V_x_2
          & c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a)) = V_y_2 ) ) ) ).

fof(arity_fun__Orderings_Opreorder,axiom,
    ! [T_2,T_1] :
      ( class_Orderings_Opreorder(tc_fun(T_2,T_1))
     <= class_Orderings_Opreorder(T_1) ) ).

fof(conj_0,conjecture,
    ( ( ( ( c_Groups_Ozero__class_Ozero(tc_Nat_Onat) = hAPP(c_Nat_OSuc,c_Orderings_Oord__class_OLeast(tc_Nat_Onat,hAPP(c_COMBB(tc_fun(tc_Nat_Onat,tc_HOL_Obool),tc_HOL_Obool,tc_Nat_Onat,c_HOL_OAll(tc_Nat_Onat)),c_COMBC(tc_Nat_Onat,tc_fun(tc_Nat_Onat,tc_HOL_Obool),tc_fun(tc_Nat_Onat,tc_HOL_Obool),hAPP(c_COMBB(tc_fun(tc_Nat_Onat,tc_fun(tc_HOL_Obool,tc_HOL_Obool)),tc_fun(tc_fun(tc_Nat_Onat,tc_HOL_Obool),tc_fun(tc_Nat_Onat,tc_HOL_Obool)),tc_Nat_Onat,c_COMBS(tc_Nat_Onat,tc_HOL_Obool,tc_HOL_Obool)),hAPP(c_COMBB(tc_fun(tc_Nat_Onat,tc_HOL_Obool),tc_fun(tc_Nat_Onat,tc_fun(tc_HOL_Obool,tc_HOL_Obool)),tc_Nat_Onat,c_COMBB(tc_HOL_Obool,tc_fun(tc_HOL_Obool,tc_HOL_Obool),tc_Nat_Onat,c_fimplies)),c_Orderings_Oord__class_Oless(tc_Nat_Onat))),c_COMBC(tc_Nat_Onat,tc_Complex_Ocomplex,tc_HOL_Obool,hAPP(c_COMBB(tc_Complex_Ocomplex,tc_fun(tc_Complex_Ocomplex,tc_HOL_Obool),tc_Nat_Onat,c_fequal),c_Polynomial_Ocoeff(tc_Complex_Ocomplex,c_Polynomial_Osmult(tc_Complex_Ocomplex,c_Rings_Oinverse__class_Oinverse(tc_Complex_Ocomplex,hAPP(c_Polynomial_Opoly(tc_Complex_Ocomplex,v_q____),c_Groups_Ozero__class_Ozero(tc_Complex_Ocomplex))),v_q____))),c_Groups_Ozero__class_Ozero(tc_Complex_Ocomplex))))))
         <= v_q____ = c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(tc_Complex_Ocomplex)) )
        & ( hAPP(c_Nat_OSuc,c_Orderings_Oord__class_OLeast(tc_Nat_Onat,hAPP(c_COMBB(tc_fun(tc_Nat_Onat,tc_HOL_Obool),tc_HOL_Obool,tc_Nat_Onat,c_HOL_OAll(tc_Nat_Onat)),c_COMBC(tc_Nat_Onat,tc_fun(tc_Nat_Onat,tc_HOL_Obool),tc_fun(tc_Nat_Onat,tc_HOL_Obool),hAPP(c_COMBB(tc_fun(tc_Nat_Onat,tc_fun(tc_HOL_Obool,tc_HOL_Obool)),tc_fun(tc_fun(tc_Nat_Onat,tc_HOL_Obool),tc_fun(tc_Nat_Onat,tc_HOL_Obool)),tc_Nat_Onat,c_COMBS(tc_Nat_Onat,tc_HOL_Obool,tc_HOL_Obool)),hAPP(c_COMBB(tc_fun(tc_Nat_Onat,tc_HOL_Obool),tc_fun(tc_Nat_Onat,tc_fun(tc_HOL_Obool,tc_HOL_Obool)),tc_Nat_Onat,c_COMBB(tc_HOL_Obool,tc_fun(tc_HOL_Obool,tc_HOL_Obool),tc_Nat_Onat,c_fimplies)),c_Orderings_Oord__class_Oless(tc_Nat_Onat))),c_COMBC(tc_Nat_Onat,tc_Complex_Ocomplex,tc_HOL_Obool,hAPP(c_COMBB(tc_Complex_Ocomplex,tc_fun(tc_Complex_Ocomplex,tc_HOL_Obool),tc_Nat_Onat,c_fequal),c_Polynomial_Ocoeff(tc_Complex_Ocomplex,c_Polynomial_Osmult(tc_Complex_Ocomplex,c_Rings_Oinverse__class_Oinverse(tc_Complex_Ocomplex,hAPP(c_Polynomial_Opoly(tc_Complex_Ocomplex,v_q____),c_Groups_Ozero__class_Ozero(tc_Complex_Ocomplex))),v_q____))),c_Groups_Ozero__class_Ozero(tc_Complex_Ocomplex)))))) = hAPP(c_Nat_OSuc,c_Orderings_Oord__class_OLeast(tc_Nat_Onat,hAPP(c_COMBB(tc_fun(tc_Nat_Onat,tc_HOL_Obool),tc_HOL_Obool,tc_Nat_Onat,c_HOL_OAll(tc_Nat_Onat)),c_COMBC(tc_Nat_Onat,tc_fun(tc_Nat_Onat,tc_HOL_Obool),tc_fun(tc_Nat_Onat,tc_HOL_Obool),hAPP(c_COMBB(tc_fun(tc_Nat_Onat,tc_fun(tc_HOL_Obool,tc_HOL_Obool)),tc_fun(tc_fun(tc_Nat_Onat,tc_HOL_Obool),tc_fun(tc_Nat_Onat,tc_HOL_Obool)),tc_Nat_Onat,c_COMBS(tc_Nat_Onat,tc_HOL_Obool,tc_HOL_Obool)),hAPP(c_COMBB(tc_fun(tc_Nat_Onat,tc_HOL_Obool),tc_fun(tc_Nat_Onat,tc_fun(tc_HOL_Obool,tc_HOL_Obool)),tc_Nat_Onat,c_COMBB(tc_HOL_Obool,tc_fun(tc_HOL_Obool,tc_HOL_Obool),tc_Nat_Onat,c_fimplies)),c_Orderings_Oord__class_Oless(tc_Nat_Onat))),c_COMBC(tc_Nat_Onat,tc_Complex_Ocomplex,tc_HOL_Obool,hAPP(c_COMBB(tc_Complex_Ocomplex,tc_fun(tc_Complex_Ocomplex,tc_HOL_Obool),tc_Nat_Onat,c_fequal),c_Polynomial_Ocoeff(tc_Complex_Ocomplex,v_q____)),c_Groups_Ozero__class_Ozero(tc_Complex_Ocomplex))))))
         <= v_q____ != c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(tc_Complex_Ocomplex)) ) )
     <= c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(tc_Complex_Ocomplex)) != c_Polynomial_Osmult(tc_Complex_Ocomplex,c_Rings_Oinverse__class_Oinverse(tc_Complex_Ocomplex,hAPP(c_Polynomial_Opoly(tc_Complex_Ocomplex,v_q____),c_Groups_Ozero__class_Ozero(tc_Complex_Ocomplex))),v_q____) )
    & ( c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(tc_Complex_Ocomplex)) = c_Polynomial_Osmult(tc_Complex_Ocomplex,c_Rings_Oinverse__class_Oinverse(tc_Complex_Ocomplex,hAPP(c_Polynomial_Opoly(tc_Complex_Ocomplex,v_q____),c_Groups_Ozero__class_Ozero(tc_Complex_Ocomplex))),v_q____)
     => ( v_q____ != c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(tc_Complex_Ocomplex))
       => hAPP(c_Nat_OSuc,c_Orderings_Oord__class_OLeast(tc_Nat_Onat,hAPP(c_COMBB(tc_fun(tc_Nat_Onat,tc_HOL_Obool),tc_HOL_Obool,tc_Nat_Onat,c_HOL_OAll(tc_Nat_Onat)),c_COMBC(tc_Nat_Onat,tc_fun(tc_Nat_Onat,tc_HOL_Obool),tc_fun(tc_Nat_Onat,tc_HOL_Obool),hAPP(c_COMBB(tc_fun(tc_Nat_Onat,tc_fun(tc_HOL_Obool,tc_HOL_Obool)),tc_fun(tc_fun(tc_Nat_Onat,tc_HOL_Obool),tc_fun(tc_Nat_Onat,tc_HOL_Obool)),tc_Nat_Onat,c_COMBS(tc_Nat_Onat,tc_HOL_Obool,tc_HOL_Obool)),hAPP(c_COMBB(tc_fun(tc_Nat_Onat,tc_HOL_Obool),tc_fun(tc_Nat_Onat,tc_fun(tc_HOL_Obool,tc_HOL_Obool)),tc_Nat_Onat,c_COMBB(tc_HOL_Obool,tc_fun(tc_HOL_Obool,tc_HOL_Obool),tc_Nat_Onat,c_fimplies)),c_Orderings_Oord__class_Oless(tc_Nat_Onat))),c_COMBC(tc_Nat_Onat,tc_Complex_Ocomplex,tc_HOL_Obool,hAPP(c_COMBB(tc_Complex_Ocomplex,tc_fun(tc_Complex_Ocomplex,tc_HOL_Obool),tc_Nat_Onat,c_fequal),c_Polynomial_Ocoeff(tc_Complex_Ocomplex,v_q____)),c_Groups_Ozero__class_Ozero(tc_Complex_Ocomplex)))))) = c_Groups_Ozero__class_Ozero(tc_Nat_Onat) ) ) ) ).

fof(fact_ln__less__zero__iff,axiom,
    ! [V_x_2] :
      ( ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_RealDef_Oreal),V_x_2),c_Groups_Oone__class_Oone(tc_RealDef_Oreal)))
      <=> hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_RealDef_Oreal),c_Transcendental_Oln(V_x_2)),c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal))) )
     <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_RealDef_Oreal),c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)),V_x_2)) ) ).

fof(arity_Polynomial__Opoly__Divides_Oring__div,axiom,
    ! [T_1] :
      ( class_Divides_Oring__div(tc_Polynomial_Opoly(T_1))
     <= class_Fields_Ofield(T_1) ) ).

fof(fact_poly__gcd_Osimps_I1_J,axiom,
    ! [V_x,T_a] :
      ( c_Polynomial_Opoly__gcd(T_a,V_x,c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a))) = c_Polynomial_Osmult(T_a,c_Rings_Oinverse__class_Oinverse(T_a,hAPP(c_Polynomial_Ocoeff(T_a,V_x),c_Polynomial_Odegree(T_a,V_x))),V_x)
     <= class_Fields_Ofield(T_a) ) ).

fof(fact_degree__mod__less,axiom,
    ! [V_x,V_y,T_a] :
      ( ( c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a)) != V_y
       => ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),c_Polynomial_Odegree(T_a,c_Divides_Odiv__class_Omod(tc_Polynomial_Opoly(T_a),V_x,V_y))),c_Polynomial_Odegree(T_a,V_y)))
          | c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a)) = c_Divides_Odiv__class_Omod(tc_Polynomial_Opoly(T_a),V_x,V_y) ) )
     <= class_Fields_Ofield(T_a) ) ).

fof(fact_linorder__neqE__nat,axiom,
    ! [V_y,V_x] :
      ( ( ~ hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),V_x),V_y))
       => hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),V_y),V_x)) )
     <= V_x != V_y ) ).

fof(fact_div__self,axiom,
    ! [V_a,T_a] :
      ( class_Divides_Osemiring__div(T_a)
     => ( c_Divides_Odiv__class_Odiv(T_a,V_a,V_a) = c_Groups_Oone__class_Oone(T_a)
       <= c_Groups_Ozero__class_Ozero(T_a) != V_a ) ) ).

fof(fact_add__pos__nonneg,axiom,
    ! [V_b,V_a,T_a] :
      ( class_Groups_Oordered__comm__monoid__add(T_a)
     => ( ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a)),V_b))
         => hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),c_Groups_Ozero__class_Ozero(T_a)),hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),V_a),V_b))) )
       <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),c_Groups_Ozero__class_Ozero(T_a)),V_a)) ) ) ).

fof(fact_comm__semiring__1__class_Onormalizing__semiring__rules_I7_J,axiom,
    ! [V_b,V_a,T_a] :
      ( class_Rings_Ocomm__semiring__1(T_a)
     => hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b),V_a) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b) ) ).

fof(fact_le__refl,axiom,
    ! [V_n] : hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_n),V_n)) ).

fof(fact_zmod__simps_I2_J,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( c_Divides_Odiv__class_Omod(T_a,hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),V_a),V_b),V_c) = c_Divides_Odiv__class_Omod(T_a,hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),V_a),c_Divides_Odiv__class_Omod(T_a,V_b,V_c)),V_c)
     <= class_Divides_Osemiring__div(T_a) ) ).

fof(fact_mod__div__trivial,axiom,
    ! [V_b,V_a,T_a] :
      ( c_Groups_Ozero__class_Ozero(T_a) = c_Divides_Odiv__class_Odiv(T_a,c_Divides_Odiv__class_Omod(T_a,V_a,V_b),V_b)
     <= class_Divides_Osemiring__div(T_a) ) ).

fof(fact_zero__reorient,axiom,
    ! [V_x_2,T_a] :
      ( ( V_x_2 = c_Groups_Ozero__class_Ozero(T_a)
      <=> c_Groups_Ozero__class_Ozero(T_a) = V_x_2 )
     <= class_Groups_Ozero(T_a) ) ).

fof(arity_Complex__Ocomplex__RealVector_Oreal__normed__div__algebra,axiom,
    class_RealVector_Oreal__normed__div__algebra(tc_Complex_Ocomplex) ).

fof(fact_comm__semiring__1__class_Onormalizing__semiring__rules_I9_J,axiom,
    ! [V_a,T_a] :
      ( c_Groups_Ozero__class_Ozero(T_a) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Groups_Ozero__class_Ozero(T_a)),V_a)
     <= class_Rings_Ocomm__semiring__1(T_a) ) ).

fof(fact_mod__div__equality2,axiom,
    ! [V_a,V_b,T_a] :
      ( class_Divides_Osemiring__div(T_a)
     => V_a = hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b),c_Divides_Odiv__class_Odiv(T_a,V_a,V_b))),c_Divides_Odiv__class_Omod(T_a,V_a,V_b)) ) ).

fof(fact_mult__le__0__iff,axiom,
    ! [V_b_2,V_a_2,T_a] :
      ( ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a_2),V_b_2)),c_Groups_Ozero__class_Ozero(T_a)))
      <=> ( ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,V_a_2),c_Groups_Ozero__class_Ozero(T_a)))
            & hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a)),V_b_2)) )
          | ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,V_b_2),c_Groups_Ozero__class_Ozero(T_a)))
            & hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a)),V_a_2)) ) ) )
     <= class_Rings_Olinordered__ring__strict(T_a) ) ).

fof(fact_nat__power__less__imp__less,axiom,
    ! [V_n,V_m,V_i] :
      ( ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),hAPP(hAPP(c_Power_Opower__class_Opower(tc_Nat_Onat),V_i),V_m)),hAPP(hAPP(c_Power_Opower__class_Opower(tc_Nat_Onat),V_i),V_n)))
       => hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),V_m),V_n)) )
     <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),c_Groups_Ozero__class_Ozero(tc_Nat_Onat)),V_i)) ) ).

fof(arity_RealDef__Oreal__Orderings_Olinorder,axiom,
    class_Orderings_Olinorder(tc_RealDef_Oreal) ).

fof(fact_less__add__iff1,axiom,
    ! [V_d_2,V_b_2,V_ca_2,V_e_2,V_a_2,T_a] :
      ( class_Rings_Oordered__ring(T_a)
     => ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a_2),V_e_2)),V_ca_2)),hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b_2),V_e_2)),V_d_2)))
      <=> hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),hAPP(hAPP(c_Groups_Ominus__class_Ominus(T_a),V_a_2),V_b_2)),V_e_2)),V_ca_2)),V_d_2)) ) ) ).

fof(fact_le__add__iff1,axiom,
    ! [V_d_2,V_b_2,V_ca_2,V_e_2,V_a_2,T_a] :
      ( ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),hAPP(hAPP(c_Groups_Ominus__class_Ominus(T_a),V_a_2),V_b_2)),V_e_2)),V_ca_2)),V_d_2))
      <=> hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a_2),V_e_2)),V_ca_2)),hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b_2),V_e_2)),V_d_2))) )
     <= class_Rings_Oordered__ring(T_a) ) ).

fof(arity_Polynomial__Opoly__Rings_Oordered__ring,axiom,
    ! [T_1] :
      ( class_Rings_Olinordered__idom(T_1)
     => class_Rings_Oordered__ring(tc_Polynomial_Opoly(T_1)) ) ).

fof(fact_zdiv__zadd1__eq,axiom,
    ! [V_c,V_b,V_a] : c_Divides_Odiv__class_Odiv(tc_Int_Oint,hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Int_Oint),V_a),V_b),V_c) = hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Int_Oint),hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Int_Oint),c_Divides_Odiv__class_Odiv(tc_Int_Oint,V_a,V_c)),c_Divides_Odiv__class_Odiv(tc_Int_Oint,V_b,V_c))),c_Divides_Odiv__class_Odiv(tc_Int_Oint,hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Int_Oint),c_Divides_Odiv__class_Omod(tc_Int_Oint,V_a,V_c)),c_Divides_Odiv__class_Omod(tc_Int_Oint,V_b,V_c)),V_c)) ).

fof(fact_zmod__simps_I4_J,axiom,
    ! [V_b,V_c,V_a,T_a] :
      ( c_Divides_Odiv__class_Omod(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b),V_c) = c_Divides_Odiv__class_Omod(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Divides_Odiv__class_Omod(T_a,V_a,V_c)),V_b),V_c)
     <= class_Divides_Osemiring__div(T_a) ) ).

fof(arity_Nat__Onat__Groups_Oordered__cancel__ab__semigroup__add,axiom,
    class_Groups_Oordered__cancel__ab__semigroup__add(tc_Nat_Onat) ).

fof(fact_monoseq__Suc,axiom,
    ! [V_X_2,T_a] :
      ( class_Orderings_Oorder(T_a)
     => ( ( ! [B_n] : hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,hAPP(V_X_2,hAPP(c_Nat_OSuc,B_n))),hAPP(V_X_2,B_n)))
          | ! [B_n] : hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,hAPP(V_X_2,B_n)),hAPP(V_X_2,hAPP(c_Nat_OSuc,B_n)))) )
      <=> c_SEQ_Omonoseq(T_a,V_X_2) ) ) ).

fof(fact_add__less__imp__less__left,axiom,
    ! [V_b,V_a,V_c,T_a] :
      ( class_Groups_Oordered__ab__semigroup__add__imp__le(T_a)
     => ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_a),V_b))
       <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),V_c),V_a)),hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),V_c),V_b))) ) ) ).

fof(fact_power__mult,axiom,
    ! [V_n,V_m,V_a,T_a] :
      ( hAPP(hAPP(c_Power_Opower__class_Opower(T_a),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_m)),V_n) = hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_m),V_n))
     <= class_Groups_Omonoid__mult(T_a) ) ).

fof(fact_add__diff__inverse,axiom,
    ! [V_n,V_m] :
      ( hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Nat_Onat),V_n),hAPP(hAPP(c_Groups_Ominus__class_Ominus(tc_Nat_Onat),V_m),V_n)) = V_m
     <= ~ hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),V_m),V_n)) ) ).

fof(arity_Int__Oint__Groups_Ozero,axiom,
    class_Groups_Ozero(tc_Int_Oint) ).

fof(fact_reduce__poly__simple,axiom,
    ! [V_n,V_b] :
      ( ( ? [B_z] : hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_RealDef_Oreal),c_RealVector_Onorm__class_Onorm(tc_Complex_Ocomplex,hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Complex_Ocomplex),c_Groups_Oone__class_Oone(tc_Complex_Ocomplex)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Complex_Ocomplex),V_b),hAPP(hAPP(c_Power_Opower__class_Opower(tc_Complex_Ocomplex),B_z),V_n))))),c_Groups_Oone__class_Oone(tc_RealDef_Oreal)))
       <= c_Groups_Ozero__class_Ozero(tc_Nat_Onat) != V_n )
     <= c_Groups_Ozero__class_Ozero(tc_Complex_Ocomplex) != V_b ) ).

fof(fact_poly__smult,axiom,
    ! [V_x,V_p,V_a,T_a] :
      ( class_Rings_Ocomm__semiring__0(T_a)
     => hAPP(c_Polynomial_Opoly(T_a,c_Polynomial_Osmult(T_a,V_a,V_p)),V_x) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),hAPP(c_Polynomial_Opoly(T_a,V_p),V_x)) ) ).

fof(fact_div__nonneg__neg__le0,axiom,
    ! [V_b,V_a] :
      ( ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Divides_Odiv__class_Odiv(tc_Int_Oint,V_a,V_b)),c_Groups_Ozero__class_Ozero(tc_Int_Oint)))
       <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Int_Oint),V_b),c_Groups_Ozero__class_Ozero(tc_Int_Oint))) )
     <= hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint)),V_a)) ) ).

fof(fact_trans__le__add1,axiom,
    ! [V_m,V_j,V_i] :
      ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_i),V_j))
     => hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_i),hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Nat_Onat),V_j),V_m))) ) ).

fof(fact_One__nat__def,axiom,
    hAPP(c_Nat_OSuc,c_Groups_Ozero__class_Ozero(tc_Nat_Onat)) = c_Groups_Oone__class_Oone(tc_Nat_Onat) ).

fof(fact_Bseq__inverse__lemma,axiom,
    ! [V_x,V_r,T_a] :
      ( ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,V_r),c_RealVector_Onorm__class_Onorm(T_a,V_x)))
       => ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_RealDef_Oreal),c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)),V_r))
         => hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_RealVector_Onorm__class_Onorm(T_a,c_Rings_Oinverse__class_Oinverse(T_a,V_x))),c_Rings_Oinverse__class_Oinverse(tc_RealDef_Oreal,V_r))) ) )
     <= class_RealVector_Oreal__normed__div__algebra(T_a) ) ).

fof(fact_linorder__antisym__conv3,axiom,
    ! [V_x_2,V_y_2,T_a] :
      ( class_Orderings_Olinorder(T_a)
     => ( ( ~ hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_x_2),V_y_2))
        <=> V_y_2 = V_x_2 )
       <= ~ hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_y_2),V_x_2)) ) ) ).

fof(fact_ln__less__zero,axiom,
    ! [V_x] :
      ( ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_RealDef_Oreal),c_Transcendental_Oln(V_x)),c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)))
       <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_RealDef_Oreal),V_x),c_Groups_Oone__class_Oone(tc_RealDef_Oreal))) )
     <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_RealDef_Oreal),c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)),V_x)) ) ).

fof(fact_le__imp__less__Suc,axiom,
    ! [V_n,V_m] :
      ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m),V_n))
     => hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),V_m),hAPP(c_Nat_OSuc,V_n))) ) ).

fof(fact_add__leE,axiom,
    ! [V_n,V_k,V_m] :
      ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Nat_Onat),V_m),V_k)),V_n))
     => ~ ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m),V_n))
         => ~ hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_k),V_n)) ) ) ).

fof(fact_less__add__one,axiom,
    ! [V_a,T_a] :
      ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_a),hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),V_a),c_Groups_Oone__class_Oone(T_a))))
     <= class_Rings_Olinordered__semidom(T_a) ) ).

fof(fact_int__div__less__self,axiom,
    ! [V_k,V_x] :
      ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Int_Oint),c_Groups_Ozero__class_Ozero(tc_Int_Oint)),V_x))
     => ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Int_Oint),c_Divides_Odiv__class_Odiv(tc_Int_Oint,V_x,V_k)),V_x))
       <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Int_Oint),c_Groups_Oone__class_Oone(tc_Int_Oint)),V_k)) ) ) ).

fof(fact_ln__ge__zero,axiom,
    ! [V_x] :
      ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)),c_Transcendental_Oln(V_x)))
     <= hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Oone__class_Oone(tc_RealDef_Oreal)),V_x)) ) ).

fof(fact_xt1_I4_J,axiom,
    ! [V_c,V_a,V_b,T_a] :
      ( class_Orderings_Oorder(T_a)
     => ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,V_b),V_a))
       => ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,V_c),V_a))
         <= V_b = V_c ) ) ) ).

fof(arity_Int__Oint__Groups_Ocomm__monoid__add,axiom,
    class_Groups_Ocomm__monoid__add(tc_Int_Oint) ).

fof(fact_nat__add__right__cancel,axiom,
    ! [V_n_2,V_k_2,V_m_2] :
      ( V_n_2 = V_m_2
    <=> hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Nat_Onat),V_n_2),V_k_2) = hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Nat_Onat),V_m_2),V_k_2) ) ).

fof(fact_add__mult__distrib2,axiom,
    ! [V_n,V_m,V_k] : hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_k),hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Nat_Onat),V_m),V_n)) = hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Nat_Onat),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_k),V_m)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_k),V_n)) ).

fof(fact_mult__le__cancel1,axiom,
    ! [V_n_2,V_m_2,V_k_2] :
      ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_k_2),V_m_2)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_k_2),V_n_2)))
    <=> ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),c_Groups_Ozero__class_Ozero(tc_Nat_Onat)),V_k_2))
       => hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m_2),V_n_2)) ) ) ).

fof(fact_natceiling__le__eq__one,axiom,
    ! [V_x_2] :
      ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,c_RComplete_Onatceiling(V_x_2)),c_Groups_Oone__class_Oone(tc_Nat_Onat)))
    <=> hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,V_x_2),c_Groups_Oone__class_Oone(tc_RealDef_Oreal))) ) ).

fof(arity_Int__Oint__Semiring__Normalization_Ocomm__semiring__1__cancel__crossproduct,axiom,
    class_Semiring__Normalization_Ocomm__semiring__1__cancel__crossproduct(tc_Int_Oint) ).

fof(fact_comm__semiring__1__class_Onormalizing__semiring__rules_I17_J,axiom,
    ! [V_rx,V_ly,V_lx,T_a] :
      ( hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_lx),V_ly)),V_rx) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_lx),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_ly),V_rx))
     <= class_Rings_Ocomm__semiring__1(T_a) ) ).

fof(fact_norm__one,axiom,
    ! [T_a] :
      ( c_RealVector_Onorm__class_Onorm(T_a,c_Groups_Oone__class_Oone(T_a)) = c_Groups_Oone__class_Oone(tc_RealDef_Oreal)
     <= class_RealVector_Oreal__normed__algebra__1(T_a) ) ).

fof(fact_linorder__le__less__linear,axiom,
    ! [V_y,V_x,T_a] :
      ( class_Orderings_Olinorder(T_a)
     => ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_y),V_x))
        | hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,V_x),V_y)) ) ) ).

fof(fact_comm__semiring__1__class_Onormalizing__semiring__rules_I11_J,axiom,
    ! [V_a,T_a] :
      ( hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Groups_Oone__class_Oone(T_a)),V_a) = V_a
     <= class_Rings_Ocomm__semiring__1(T_a) ) ).

fof(fact_nat__mult__assoc,axiom,
    ! [V_k,V_n,V_m] : hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_m),V_n)),V_k) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_m),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_n),V_k)) ).

fof(fact_smult__smult,axiom,
    ! [V_p,V_b,V_a,T_a] :
      ( c_Polynomial_Osmult(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b),V_p) = c_Polynomial_Osmult(T_a,V_a,c_Polynomial_Osmult(T_a,V_b,V_p))
     <= class_Rings_Ocomm__semiring__0(T_a) ) ).

fof(arity_RealDef__Oreal__Rings_Odivision__ring__inverse__zero,axiom,
    class_Rings_Odivision__ring__inverse__zero(tc_RealDef_Oreal) ).

fof(fact_mult__left_Opos__bounded,axiom,
    ! [V_y,T_a] :
      ( class_RealVector_Oreal__normed__algebra(T_a)
     => ? [B_K] :
          ( ! [B_x] : hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_RealVector_Onorm__class_Onorm(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),B_x),V_y))),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),c_RealVector_Onorm__class_Onorm(T_a,B_x)),B_K)))
          & hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_RealDef_Oreal),c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)),B_K)) ) ) ).

fof(fact_one__le__inverse,axiom,
    ! [V_a,T_a] :
      ( ( ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,V_a),c_Groups_Oone__class_Oone(T_a)))
         => hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Oone__class_Oone(T_a)),c_Rings_Oinverse__class_Oinverse(T_a,V_a))) )
       <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),c_Groups_Ozero__class_Ozero(T_a)),V_a)) )
     <= class_Fields_Olinordered__field(T_a) ) ).

fof(fact_reals__Archimedean3,axiom,
    ! [V_x] :
      ( ! [B_y] :
        ? [B_n] : hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_RealDef_Oreal),B_y),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),c_RealDef_Oreal(tc_Nat_Onat,B_n)),V_x)))
     <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_RealDef_Oreal),c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)),V_x)) ) ).

fof(fact_real__mult__less__mono2,axiom,
    ! [V_y,V_x,V_z] :
      ( ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_RealDef_Oreal),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),V_z),V_x)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),V_z),V_y)))
       <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_RealDef_Oreal),V_x),V_y)) )
     <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_RealDef_Oreal),c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)),V_z)) ) ).

fof(arity_Complex__Ocomplex__Rings_Oring__no__zero__divisors,axiom,
    class_Rings_Oring__no__zero__divisors(tc_Complex_Ocomplex) ).

fof(fact_inverse__le__imp__le,axiom,
    ! [V_b,V_a,T_a] :
      ( ( ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),c_Groups_Ozero__class_Ozero(T_a)),V_a))
         => hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,V_b),V_a)) )
       <= hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,c_Rings_Oinverse__class_Oinverse(T_a,V_a)),c_Rings_Oinverse__class_Oinverse(T_a,V_b))) )
     <= class_Fields_Olinordered__field(T_a) ) ).

fof(fact_order__antisym,axiom,
    ! [V_y,V_x,T_a] :
      ( class_Orderings_Oorder(T_a)
     => ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,V_x),V_y))
       => ( V_x = V_y
         <= hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,V_y),V_x)) ) ) ) ).

fof(arity_Int__Oint__Groups_Olinordered__ab__group__add,axiom,
    class_Groups_Olinordered__ab__group__add(tc_Int_Oint) ).

fof(fact_neg__mod__bound,axiom,
    ! [V_a,V_b] :
      ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Int_Oint),V_b),c_Groups_Ozero__class_Ozero(tc_Int_Oint)))
     => hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Int_Oint),V_b),c_Divides_Odiv__class_Omod(tc_Int_Oint,V_a,V_b))) ) ).

fof(fact_mult__left__mono__neg,axiom,
    ! [V_c,V_a,V_b,T_a] :
      ( class_Rings_Oordered__ring(T_a)
     => ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,V_b),V_a))
       => ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,V_c),c_Groups_Ozero__class_Ozero(T_a)))
         => hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_c),V_a)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_c),V_b))) ) ) ) ).

fof(fact_neg__mod__conj,axiom,
    ! [V_a,V_b] :
      ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Int_Oint),V_b),c_Groups_Ozero__class_Ozero(tc_Int_Oint)))
     => ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Divides_Odiv__class_Omod(tc_Int_Oint,V_a,V_b)),c_Groups_Ozero__class_Ozero(tc_Int_Oint)))
        & hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Int_Oint),V_b),c_Divides_Odiv__class_Omod(tc_Int_Oint,V_a,V_b))) ) ) ).

fof(fact_mult__smult__left,axiom,
    ! [V_q,V_p,V_a,T_a] :
      ( class_Rings_Ocomm__semiring__0(T_a)
     => hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Polynomial_Opoly(T_a)),c_Polynomial_Osmult(T_a,V_a,V_p)),V_q) = c_Polynomial_Osmult(T_a,V_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Polynomial_Opoly(T_a)),V_p),V_q)) ) ).

fof(fact_power__strict__increasing__iff,axiom,
    ! [V_y_2,V_x_2,V_b_2,T_a] :
      ( ( ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),V_x_2),V_y_2))
        <=> hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_b_2),V_x_2)),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_b_2),V_y_2))) )
       <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),c_Groups_Oone__class_Oone(T_a)),V_b_2)) )
     <= class_Rings_Olinordered__semidom(T_a) ) ).

fof(fact_mod__smult__right,axiom,
    ! [V_y,V_x,V_a,T_a] :
      ( class_Fields_Ofield(T_a)
     => ( c_Divides_Odiv__class_Omod(tc_Polynomial_Opoly(T_a),V_x,c_Polynomial_Osmult(T_a,V_a,V_y)) = c_Divides_Odiv__class_Omod(tc_Polynomial_Opoly(T_a),V_x,V_y)
       <= c_Groups_Ozero__class_Ozero(T_a) != V_a ) ) ).

fof(fact_order__root,axiom,
    ! [V_a_2,V_pb_2,T_a] :
      ( class_Rings_Oidom(T_a)
     => ( hAPP(c_Polynomial_Opoly(T_a,V_pb_2),V_a_2) = c_Groups_Ozero__class_Ozero(T_a)
      <=> ( c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a)) = V_pb_2
          | c_Groups_Ozero__class_Ozero(tc_Nat_Onat) != c_Polynomial_Oorder(T_a,V_a_2,V_pb_2) ) ) ) ).

fof(arity_RealDef__Oreal__Semiring__Normalization_Ocomm__semiring__1__cancel__crossproduct,axiom,
    class_Semiring__Normalization_Ocomm__semiring__1__cancel__crossproduct(tc_RealDef_Oreal) ).

fof(fact_Bseq__offset,axiom,
    ! [V_k_2,V_X_2,T_a] :
      ( ( c_SEQ_OBseq(T_a,V_X_2)
       <= c_SEQ_OBseq(T_a,hAPP(c_COMBB(tc_Nat_Onat,T_a,tc_Nat_Onat,V_X_2),c_COMBC(tc_Nat_Onat,tc_Nat_Onat,tc_Nat_Onat,c_Groups_Oplus__class_Oplus(tc_Nat_Onat),V_k_2))) )
     <= class_RealVector_Oreal__normed__vector(T_a) ) ).

fof(fact_nat__0__less__mult__iff,axiom,
    ! [V_n_2,V_m_2] :
      ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),c_Groups_Ozero__class_Ozero(tc_Nat_Onat)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_m_2),V_n_2)))
    <=> ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),c_Groups_Ozero__class_Ozero(tc_Nat_Onat)),V_n_2))
        & hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),c_Groups_Ozero__class_Ozero(tc_Nat_Onat)),V_m_2)) ) ) ).

fof(fact_mult__neg__neg,axiom,
    ! [V_b,V_a,T_a] :
      ( class_Rings_Olinordered__ring__strict(T_a)
     => ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_a),c_Groups_Ozero__class_Ozero(T_a)))
       => ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_b),c_Groups_Ozero__class_Ozero(T_a)))
         => hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),c_Groups_Ozero__class_Ozero(T_a)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b))) ) ) ) ).

fof(fact_degree__power__le,axiom,
    ! [V_n,V_p,T_a] :
      ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,c_Polynomial_Odegree(T_a,hAPP(hAPP(c_Power_Opower__class_Opower(tc_Polynomial_Opoly(T_a)),V_p),V_n))),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),c_Polynomial_Odegree(T_a,V_p)),V_n)))
     <= class_Rings_Ocomm__semiring__1(T_a) ) ).

fof(fact_zadd__commute,axiom,
    ! [V_w,V_z] : hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Int_Oint),V_z),V_w) = hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Int_Oint),V_w),V_z) ).

fof(arity_Int__Oint__Rings_Olinordered__ring,axiom,
    class_Rings_Olinordered__ring(tc_Int_Oint) ).

fof(fact_comm__semiring__1__class_Onormalizing__semiring__rules_I34_J,axiom,
    ! [V_z,V_y,V_x,T_a] :
      ( class_Rings_Ocomm__semiring__1(T_a)
     => hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_x),hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),V_y),V_z)) = hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_x),V_y)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_x),V_z)) ) ).

fof(fact_linorder__neq__iff,axiom,
    ! [V_y_2,V_x_2,T_a] :
      ( class_Orderings_Olinorder(T_a)
     => ( V_x_2 != V_y_2
      <=> ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_y_2),V_x_2))
          | hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_x_2),V_y_2)) ) ) ) ).

fof(arity_Polynomial__Opoly__Rings_Oordered__comm__semiring,axiom,
    ! [T_1] :
      ( class_Rings_Oordered__comm__semiring(tc_Polynomial_Opoly(T_1))
     <= class_Rings_Olinordered__idom(T_1) ) ).

fof(fact_smult__add__left,axiom,
    ! [V_p,V_b,V_a,T_a] :
      ( c_Polynomial_Osmult(T_a,hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),V_a),V_b),V_p) = hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Polynomial_Opoly(T_a)),c_Polynomial_Osmult(T_a,V_a,V_p)),c_Polynomial_Osmult(T_a,V_b,V_p))
     <= class_Rings_Ocomm__semiring__0(T_a) ) ).

fof(arity_Polynomial__Opoly__Rings_Olinordered__idom,axiom,
    ! [T_1] :
      ( class_Rings_Olinordered__idom(tc_Polynomial_Opoly(T_1))
     <= class_Rings_Olinordered__idom(T_1) ) ).

fof(fact_decseq__def,axiom,
    ! [V_X_2,T_a] :
      ( class_Orderings_Oorder(T_a)
     => ( c_SEQ_Odecseq(T_a,V_X_2)
      <=> ! [B_m,B_n] :
            ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,B_m),B_n))
           => hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,hAPP(V_X_2,B_n)),hAPP(V_X_2,B_m))) ) ) ) ).

fof(fact_mod__mod__trivial,axiom,
    ! [V_b,V_a,T_a] :
      ( c_Divides_Odiv__class_Omod(T_a,c_Divides_Odiv__class_Omod(T_a,V_a,V_b),V_b) = c_Divides_Odiv__class_Omod(T_a,V_a,V_b)
     <= class_Divides_Osemiring__div(T_a) ) ).

fof(fact_less_Ohyps,axiom,
    ! [V_pb_2] :
      ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),c_Fundamental__Theorem__Algebra__Mirabelle_Opsize(tc_Complex_Ocomplex,V_pb_2)),c_Fundamental__Theorem__Algebra__Mirabelle_Opsize(tc_Complex_Ocomplex,v_pa____)))
     => ( ~ c_Fundamental__Theorem__Algebra__Mirabelle_Oconstant(tc_Complex_Ocomplex,tc_Complex_Ocomplex,c_Polynomial_Opoly(tc_Complex_Ocomplex,V_pb_2))
       => ? [B_z] : c_Groups_Ozero__class_Ozero(tc_Complex_Ocomplex) = hAPP(c_Polynomial_Opoly(tc_Complex_Ocomplex,V_pb_2),B_z) ) ) ).

fof(fact_monoseq__realpow,axiom,
    ! [V_x_2] :
      ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)),V_x_2))
     => ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,V_x_2),c_Groups_Oone__class_Oone(tc_RealDef_Oreal)))
       => c_SEQ_Omonoseq(tc_RealDef_Oreal,hAPP(c_Power_Opower__class_Opower(tc_RealDef_Oreal),V_x_2)) ) ) ).

fof(arity_Polynomial__Opoly__Rings_Ocomm__ring,axiom,
    ! [T_1] :
      ( class_Rings_Ocomm__ring(tc_Polynomial_Opoly(T_1))
     <= class_Rings_Ocomm__ring(T_1) ) ).

fof(fact_Suc__neq__Zero,axiom,
    ! [V_m] : hAPP(c_Nat_OSuc,V_m) != c_Groups_Ozero__class_Ozero(tc_Nat_Onat) ).

fof(fact_mult__less__cancel1,axiom,
    ! [V_n_2,V_m_2,V_k_2] :
      ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_k_2),V_m_2)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_k_2),V_n_2)))
    <=> ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),c_Groups_Ozero__class_Ozero(tc_Nat_Onat)),V_k_2))
        & hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),V_m_2),V_n_2)) ) ) ).

fof(arity_Int__Oint__Divides_Osemiring__div,axiom,
    class_Divides_Osemiring__div(tc_Int_Oint) ).

fof(fact_division__ring__inverse__diff,axiom,
    ! [V_b,V_a,T_a] :
      ( class_Rings_Odivision__ring(T_a)
     => ( c_Groups_Ozero__class_Ozero(T_a) != V_a
       => ( V_b != c_Groups_Ozero__class_Ozero(T_a)
         => hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Rings_Oinverse__class_Oinverse(T_a,V_a)),hAPP(hAPP(c_Groups_Ominus__class_Ominus(T_a),V_b),V_a))),c_Rings_Oinverse__class_Oinverse(T_a,V_b)) = hAPP(hAPP(c_Groups_Ominus__class_Ominus(T_a),c_Rings_Oinverse__class_Oinverse(T_a,V_a)),c_Rings_Oinverse__class_Oinverse(T_a,V_b)) ) ) ) ).

fof(arity_RealDef__Oreal__Power_Opower,axiom,
    class_Power_Opower(tc_RealDef_Oreal) ).

fof(arity_RealDef__Oreal__Rings_Oring__1__no__zero__divisors,axiom,
    class_Rings_Oring__1__no__zero__divisors(tc_RealDef_Oreal) ).

fof(fact_div__geq,axiom,
    ! [V_m,V_n] :
      ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),c_Groups_Ozero__class_Ozero(tc_Nat_Onat)),V_n))
     => ( c_Divides_Odiv__class_Odiv(tc_Nat_Onat,V_m,V_n) = hAPP(c_Nat_OSuc,c_Divides_Odiv__class_Odiv(tc_Nat_Onat,hAPP(hAPP(c_Groups_Ominus__class_Ominus(tc_Nat_Onat),V_m),V_n),V_n))
       <= ~ hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),V_m),V_n)) ) ) ).

fof(fact_natceiling__le,axiom,
    ! [V_a,V_x] :
      ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,c_RComplete_Onatceiling(V_x)),V_a))
     <= hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,V_x),c_RealDef_Oreal(tc_Nat_Onat,V_a))) ) ).

fof(arity_Int__Oint__Rings_Olinordered__idom,axiom,
    class_Rings_Olinordered__idom(tc_Int_Oint) ).

fof(fact_le__add__diff__inverse2,axiom,
    ! [V_m,V_n] :
      ( hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Nat_Onat),hAPP(hAPP(c_Groups_Ominus__class_Ominus(tc_Nat_Onat),V_m),V_n)),V_n) = V_m
     <= hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_n),V_m)) ) ).

fof(fact_nat_Oinject,axiom,
    ! [V_nat_H_2,V_nat_2] :
      ( V_nat_H_2 = V_nat_2
    <=> hAPP(c_Nat_OSuc,V_nat_H_2) = hAPP(c_Nat_OSuc,V_nat_2) ) ).

fof(fact_div__mod__equality,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( class_Divides_Osemiring__div(T_a)
     => hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Divides_Odiv__class_Odiv(T_a,V_a,V_b)),V_b)),c_Divides_Odiv__class_Omod(T_a,V_a,V_b))),V_c) = hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),V_a),V_c) ) ).

fof(fact_convex__bound__lt,axiom,
    ! [V_v,V_u,V_y,V_a,V_x,T_a] :
      ( class_Rings_Olinordered__semiring__1__strict(T_a)
     => ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_x),V_a))
       => ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_y),V_a))
         => ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a)),V_u))
           => ( ( c_Groups_Oone__class_Oone(T_a) = hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),V_u),V_v)
               => hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_u),V_x)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_v),V_y))),V_a)) )
             <= hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a)),V_v)) ) ) ) ) ) ).

fof(arity_Nat__Onat__Rings_Olinordered__semidom,axiom,
    class_Rings_Olinordered__semidom(tc_Nat_Onat) ).

fof(fact_zmult__commute,axiom,
    ! [V_w,V_z] : hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_z),V_w) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_w),V_z) ).

fof(fact_less__diff__conv,axiom,
    ! [V_k_2,V_j_2,V_i_2] :
      ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),V_i_2),hAPP(hAPP(c_Groups_Ominus__class_Ominus(tc_Nat_Onat),V_j_2),V_k_2)))
    <=> hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Nat_Onat),V_i_2),V_k_2)),V_j_2)) ) ).

fof(arity_RealDef__Oreal__Int_Oring__char__0,axiom,
    class_Int_Oring__char__0(tc_RealDef_Oreal) ).

fof(fact_comm__semiring__1__class_Onormalizing__semiring__rules_I26_J,axiom,
    ! [V_q,V_p,V_x,T_a] :
      ( hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_x),hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Nat_Onat),V_p),V_q)) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_x),V_p)),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_x),V_q))
     <= class_Rings_Ocomm__semiring__1(T_a) ) ).

fof(fact_order__less__irrefl,axiom,
    ! [V_x,T_a] :
      ( class_Orderings_Opreorder(T_a)
     => ~ hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_x),V_x)) ) ).

fof(fact_zmult2__lemma__aux1,axiom,
    ! [V_q,V_r,V_b,V_c] :
      ( ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Int_Oint),V_b),V_r))
       => ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Int_Oint),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_b),V_c)),hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Int_Oint),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_b),c_Divides_Odiv__class_Omod(tc_Int_Oint,V_q,V_c))),V_r)))
         <= hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,V_r),c_Groups_Ozero__class_Ozero(tc_Int_Oint))) ) )
     <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Int_Oint),c_Groups_Ozero__class_Ozero(tc_Int_Oint)),V_c)) ) ).

fof(fact_less__SucI,axiom,
    ! [V_n,V_m] :
      ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),V_m),hAPP(c_Nat_OSuc,V_n)))
     <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),V_m),V_n)) ) ).

fof(fact_poly__0,axiom,
    ! [V_x,T_a] :
      ( c_Groups_Ozero__class_Ozero(T_a) = hAPP(c_Polynomial_Opoly(T_a,c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a))),V_x)
     <= class_Rings_Ocomm__semiring__0(T_a) ) ).

fof(arity_RealDef__Oreal__Rings_Olinordered__semiring__1,axiom,
    class_Rings_Olinordered__semiring__1(tc_RealDef_Oreal) ).

fof(fact_le__imp__diff__is__add,axiom,
    ! [V_k_2,V_j_2,V_i_2] :
      ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_i_2),V_j_2))
     => ( V_k_2 = hAPP(hAPP(c_Groups_Ominus__class_Ominus(tc_Nat_Onat),V_j_2),V_i_2)
      <=> hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Nat_Onat),V_k_2),V_i_2) = V_j_2 ) ) ).

fof(fact_Suc__eq__plus1,axiom,
    ! [V_n] : hAPP(c_Nat_OSuc,V_n) = hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Nat_Onat),V_n),c_Groups_Oone__class_Oone(tc_Nat_Onat)) ).

fof(fact_c,axiom,
    ! [B_w] : hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_RealVector_Onorm__class_Onorm(tc_Complex_Ocomplex,hAPP(c_Polynomial_Opoly(tc_Complex_Ocomplex,v_pa____),v_c____))),c_RealVector_Onorm__class_Onorm(tc_Complex_Ocomplex,hAPP(c_Polynomial_Opoly(tc_Complex_Ocomplex,v_pa____),B_w)))) ).

fof(arity_Polynomial__Opoly__Groups_Oordered__comm__monoid__add,axiom,
    ! [T_1] :
      ( class_Groups_Oordered__comm__monoid__add(tc_Polynomial_Opoly(T_1))
     <= class_Rings_Olinordered__idom(T_1) ) ).

fof(fact_comm__semiring__1__class_Onormalizing__semiring__rules_I21_J,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),V_a),V_b)),V_c) = hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),V_a),hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),V_b),V_c))
     <= class_Rings_Ocomm__semiring__1(T_a) ) ).

fof(fact_zle__refl,axiom,
    ! [V_w] : hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,V_w),V_w)) ).

fof(fact_zadd__0__right,axiom,
    ! [V_z] : hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Int_Oint),V_z),c_Groups_Ozero__class_Ozero(tc_Int_Oint)) = V_z ).

fof(fact_zadd__zmult__distrib,axiom,
    ! [V_w,V_z2,V_z1] : hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Int_Oint),V_z1),V_z2)),V_w) = hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Int_Oint),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_z1),V_w)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_z2),V_w)) ).

fof(arity_Complex__Ocomplex__Rings_Ozero__neq__one,axiom,
    class_Rings_Ozero__neq__one(tc_Complex_Ocomplex) ).

fof(fact_degree__le,axiom,
    ! [V_p,V_n,T_a] :
      ( class_Groups_Ozero(T_a)
     => ( ! [B_i] :
            ( hAPP(c_Polynomial_Ocoeff(T_a,V_p),B_i) = c_Groups_Ozero__class_Ozero(T_a)
           <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),V_n),B_i)) )
       => hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,c_Polynomial_Odegree(T_a,V_p)),V_n)) ) ) ).

fof(fact_decseq__imp__monoseq,axiom,
    ! [V_X_2,T_a] :
      ( ( c_SEQ_Omonoseq(T_a,V_X_2)
       <= c_SEQ_Odecseq(T_a,V_X_2) )
     <= class_Orderings_Oorder(T_a) ) ).

fof(fact_poly__monom,axiom,
    ! [V_x,V_n,V_a,T_a] :
      ( hAPP(c_Polynomial_Opoly(T_a,c_Polynomial_Omonom(T_a,V_a,V_n)),V_x) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_x),V_n))
     <= class_Rings_Ocomm__semiring__1(T_a) ) ).

fof(fact_less__eq__Suc__le__raw,axiom,
    ! [V_n_2] : c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,hAPP(c_Nat_OSuc,V_n_2)) = hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),V_n_2) ).

fof(fact_mult__le__mono,axiom,
    ! [V_l,V_k,V_j,V_i] :
      ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_i),V_j))
     => ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_k),V_l))
       => hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_i),V_k)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_j),V_l))) ) ) ).

fof(fact_pdivmod__rel__unique__div,axiom,
    ! [V_r2,V_q2,V_r1,V_q1,V_y,V_x,T_a] :
      ( ( ( V_q2 = V_q1
         <= c_Polynomial_Opdivmod__rel(T_a,V_x,V_y,V_q2,V_r2) )
       <= c_Polynomial_Opdivmod__rel(T_a,V_x,V_y,V_q1,V_r1) )
     <= class_Fields_Ofield(T_a) ) ).

fof(fact_not__less0,axiom,
    ! [V_n] : ~ hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),V_n),c_Groups_Ozero__class_Ozero(tc_Nat_Onat))) ).

fof(arity_Int__Oint__Rings_Olinordered__ring__strict,axiom,
    class_Rings_Olinordered__ring__strict(tc_Int_Oint) ).

fof(arity_RealDef__Oreal__Fields_Ofield,axiom,
    class_Fields_Ofield(tc_RealDef_Oreal) ).

fof(fact_mod__geq,axiom,
    ! [V_n,V_m] :
      ( c_Divides_Odiv__class_Omod(tc_Nat_Onat,V_m,V_n) = c_Divides_Odiv__class_Omod(tc_Nat_Onat,hAPP(hAPP(c_Groups_Ominus__class_Ominus(tc_Nat_Onat),V_m),V_n),V_n)
     <= ~ hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),V_m),V_n)) ) ).

fof(arity_Polynomial__Opoly__Rings_Oring__1__no__zero__divisors,axiom,
    ! [T_1] :
      ( class_Rings_Oring__1__no__zero__divisors(tc_Polynomial_Opoly(T_1))
     <= class_Rings_Oidom(T_1) ) ).

fof(fact_Suc__less__SucD,axiom,
    ! [V_n,V_m] :
      ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),V_m),V_n))
     <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),hAPP(c_Nat_OSuc,V_m)),hAPP(c_Nat_OSuc,V_n))) ) ).

fof(fact_Least__Suc,axiom,
    ! [V_n_2,V_P_2] :
      ( ( ~ hBOOL(hAPP(V_P_2,c_Groups_Ozero__class_Ozero(tc_Nat_Onat)))
       => c_Orderings_Oord__class_OLeast(tc_Nat_Onat,V_P_2) = hAPP(c_Nat_OSuc,c_Orderings_Oord__class_OLeast(tc_Nat_Onat,hAPP(c_COMBB(tc_Nat_Onat,tc_HOL_Obool,tc_Nat_Onat,V_P_2),c_Nat_OSuc))) )
     <= hBOOL(hAPP(V_P_2,V_n_2)) ) ).

fof(arity_Nat__Onat__Rings_Ono__zero__divisors,axiom,
    class_Rings_Ono__zero__divisors(tc_Nat_Onat) ).

fof(fact_termination__basic__simps_I2_J,axiom,
    ! [V_y,V_z,V_x] :
      ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),V_x),V_z))
     => hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),V_x),hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Nat_Onat),V_y),V_z))) ) ).

fof(fact_zle__antisym,axiom,
    ! [V_w,V_z] :
      ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,V_z),V_w))
     => ( V_z = V_w
       <= hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,V_w),V_z)) ) ) ).

fof(fact_synthetic__div__0,axiom,
    ! [V_c,T_a] :
      ( class_Rings_Ocomm__semiring__0(T_a)
     => c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a)) = c_Polynomial_Osynthetic__div(T_a,c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a)),V_c) ) ).

fof(fact_power__increasing,axiom,
    ! [V_a,V_N,V_n,T_a] :
      ( class_Rings_Olinordered__semidom(T_a)
     => ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_n),V_N))
       => ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_n)),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_N)))
         <= hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Oone__class_Oone(T_a)),V_a)) ) ) ) ).

fof(fact_add__lessD1,axiom,
    ! [V_k,V_j,V_i] :
      ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),V_i),V_k))
     <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Nat_Onat),V_i),V_j)),V_k)) ) ).

fof(arity_Int__Oint__Groups_Oordered__comm__monoid__add,axiom,
    class_Groups_Oordered__comm__monoid__add(tc_Int_Oint) ).

fof(arity_RealDef__Oreal__Rings_Ocomm__ring,axiom,
    class_Rings_Ocomm__ring(tc_RealDef_Oreal) ).

fof(fact_power__inject__base,axiom,
    ! [V_b,V_n,V_a,T_a] :
      ( ( hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_b),hAPP(c_Nat_OSuc,V_n)) = hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),hAPP(c_Nat_OSuc,V_n))
       => ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a)),V_a))
         => ( V_a = V_b
           <= hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a)),V_b)) ) ) )
     <= class_Rings_Olinordered__semidom(T_a) ) ).

fof(arity_Nat__Onat__Groups_Ocomm__monoid__mult,axiom,
    class_Groups_Ocomm__monoid__mult(tc_Nat_Onat) ).

fof(fact_qnc,axiom,
    ~ c_Fundamental__Theorem__Algebra__Mirabelle_Oconstant(tc_Complex_Ocomplex,tc_Complex_Ocomplex,c_Polynomial_Opoly(tc_Complex_Ocomplex,v_q____)) ).

fof(fact_nat__zero__less__power__iff,axiom,
    ! [V_n_2,V_x_2] :
      ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),c_Groups_Ozero__class_Ozero(tc_Nat_Onat)),hAPP(hAPP(c_Power_Opower__class_Opower(tc_Nat_Onat),V_x_2),V_n_2)))
    <=> ( V_n_2 = c_Groups_Ozero__class_Ozero(tc_Nat_Onat)
        | hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),c_Groups_Ozero__class_Ozero(tc_Nat_Onat)),V_x_2)) ) ) ).

fof(fact_comm__semiring__1__class_Onormalizing__semiring__rules_I15_J,axiom,
    ! [V_ry,V_rx,V_ly,V_lx,T_a] :
      ( hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_lx),V_ly)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_rx),V_ry)) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_rx),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_lx),V_ly)),V_ry))
     <= class_Rings_Ocomm__semiring__1(T_a) ) ).

fof(fact_zadd__strict__right__mono,axiom,
    ! [V_k,V_j,V_i] :
      ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Int_Oint),hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Int_Oint),V_i),V_k)),hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Int_Oint),V_j),V_k)))
     <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Int_Oint),V_i),V_j)) ) ).

fof(fact_zero__less__Suc,axiom,
    ! [V_n] : hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),c_Groups_Ozero__class_Ozero(tc_Nat_Onat)),hAPP(c_Nat_OSuc,V_n))) ).

fof(fact_calculation,axiom,
    ( c_Groups_Ozero__class_Ozero(tc_Complex_Ocomplex) = hAPP(c_Polynomial_Opoly(tc_Complex_Ocomplex,v_pa____),v_c____)
   => ? [B_z] : hAPP(c_Polynomial_Opoly(tc_Complex_Ocomplex,v_pa____),B_z) = c_Groups_Ozero__class_Ozero(tc_Complex_Ocomplex) ) ).

fof(fact_order__less__imp__not__less,axiom,
    ! [V_y,V_x,T_a] :
      ( ( ~ hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_y),V_x))
       <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_x),V_y)) )
     <= class_Orderings_Opreorder(T_a) ) ).

fof(arity_Complex__Ocomplex__Groups_Oone,axiom,
    class_Groups_Oone(tc_Complex_Ocomplex) ).

fof(arity_Complex__Ocomplex__Rings_Odivision__ring__inverse__zero,axiom,
    class_Rings_Odivision__ring__inverse__zero(tc_Complex_Ocomplex) ).

fof(fact_less__Suc__eq,axiom,
    ! [V_n_2,V_m_2] :
      ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),V_m_2),hAPP(c_Nat_OSuc,V_n_2)))
    <=> ( V_n_2 = V_m_2
        | hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),V_m_2),V_n_2)) ) ) ).

fof(arity_Complex__Ocomplex__Rings_Ocomm__semiring,axiom,
    class_Rings_Ocomm__semiring(tc_Complex_Ocomplex) ).

fof(fact_zero__less__diff,axiom,
    ! [V_m_2,V_n_2] :
      ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),c_Groups_Ozero__class_Ozero(tc_Nat_Onat)),hAPP(hAPP(c_Groups_Ominus__class_Ominus(tc_Nat_Onat),V_n_2),V_m_2)))
    <=> hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),V_m_2),V_n_2)) ) ).

fof(arity_RealDef__Oreal__Rings_Ono__zero__divisors,axiom,
    class_Rings_Ono__zero__divisors(tc_RealDef_Oreal) ).

fof(fact_comm__semiring__1__class_Onormalizing__semiring__rules_I5_J,axiom,
    ! [V_a,T_a] :
      ( class_Rings_Ocomm__semiring__1(T_a)
     => V_a = hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),c_Groups_Ozero__class_Ozero(T_a)),V_a) ) ).

fof(fact_one__less__inverse__iff,axiom,
    ! [V_x_2,T_a] :
      ( class_Fields_Olinordered__field__inverse__zero(T_a)
     => ( ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),c_Groups_Ozero__class_Ozero(T_a)),V_x_2))
          & hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_x_2),c_Groups_Oone__class_Oone(T_a))) )
      <=> hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),c_Groups_Oone__class_Oone(T_a)),c_Rings_Oinverse__class_Oinverse(T_a,V_x_2))) ) ) ).

fof(fact_zadd__0,axiom,
    ! [V_z] : hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Int_Oint),c_Groups_Ozero__class_Ozero(tc_Int_Oint)),V_z) = V_z ).

fof(fact_xt1_I1_J,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( class_Orderings_Oorder(T_a)
     => ( V_a = V_b
       => ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_c),V_b))
         => hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_c),V_a)) ) ) ) ).

fof(arity_Int__Oint__Rings_Osemiring,axiom,
    class_Rings_Osemiring(tc_Int_Oint) ).

fof(arity_Polynomial__Opoly__Groups_Oordered__ab__semigroup__add__imp__le,axiom,
    ! [T_1] :
      ( class_Groups_Oordered__ab__semigroup__add__imp__le(tc_Polynomial_Opoly(T_1))
     <= class_Rings_Olinordered__idom(T_1) ) ).

fof(arity_Polynomial__Opoly__Groups_Omonoid__mult,axiom,
    ! [T_1] :
      ( class_Rings_Ocomm__semiring__1(T_1)
     => class_Groups_Omonoid__mult(tc_Polynomial_Opoly(T_1)) ) ).

fof(fact_nat__lt__two__imp__zero__or__one,axiom,
    ! [V_x] :
      ( ( c_Groups_Ozero__class_Ozero(tc_Nat_Onat) = V_x
        | hAPP(c_Nat_OSuc,c_Groups_Ozero__class_Ozero(tc_Nat_Onat)) = V_x )
     <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),V_x),hAPP(c_Nat_OSuc,hAPP(c_Nat_OSuc,c_Groups_Ozero__class_Ozero(tc_Nat_Onat))))) ) ).

fof(fact_Bseq__ignore__initial__segment,axiom,
    ! [V_k_2,V_X_2,T_a] :
      ( class_RealVector_Oreal__normed__vector(T_a)
     => ( c_SEQ_OBseq(T_a,hAPP(c_COMBB(tc_Nat_Onat,T_a,tc_Nat_Onat,V_X_2),c_COMBC(tc_Nat_Onat,tc_Nat_Onat,tc_Nat_Onat,c_Groups_Oplus__class_Oplus(tc_Nat_Onat),V_k_2)))
       <= c_SEQ_OBseq(T_a,V_X_2) ) ) ).

fof(fact_div__by__1,axiom,
    ! [V_a,T_a] :
      ( V_a = c_Divides_Odiv__class_Odiv(T_a,V_a,c_Groups_Oone__class_Oone(T_a))
     <= class_Divides_Osemiring__div(T_a) ) ).

fof(fact_Suc__lessI,axiom,
    ! [V_n,V_m] :
      ( ( V_n != hAPP(c_Nat_OSuc,V_m)
       => hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),hAPP(c_Nat_OSuc,V_m)),V_n)) )
     <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),V_m),V_n)) ) ).

fof(fact_mult__less__mono2,axiom,
    ! [V_k,V_j,V_i] :
      ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),V_i),V_j))
     => ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_k),V_i)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_k),V_j)))
       <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),c_Groups_Ozero__class_Ozero(tc_Nat_Onat)),V_k)) ) ) ).

fof(arity_fun__Orderings_Oord,axiom,
    ! [T_2,T_1] :
      ( class_Orderings_Oord(T_1)
     => class_Orderings_Oord(tc_fun(T_2,T_1)) ) ).

fof(fact_not__sum__squares__lt__zero,axiom,
    ! [V_y,V_x,T_a] :
      ( ~ hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_x),V_x)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_y),V_y))),c_Groups_Ozero__class_Ozero(T_a)))
     <= class_Rings_Olinordered__ring(T_a) ) ).

fof(fact_real__of__nat__gt__zero__cancel__iff,axiom,
    ! [V_n_2] :
      ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_RealDef_Oreal),c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)),c_RealDef_Oreal(tc_Nat_Onat,V_n_2)))
    <=> hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),c_Groups_Ozero__class_Ozero(tc_Nat_Onat)),V_n_2)) ) ).

fof(fact_BseqD,axiom,
    ! [V_X_2,T_a] :
      ( class_RealVector_Oreal__normed__vector(T_a)
     => ( ? [B_K] :
            ( ! [B_n] : hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_RealVector_Onorm__class_Onorm(T_a,hAPP(V_X_2,B_n))),B_K))
            & hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_RealDef_Oreal),c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)),B_K)) )
       <= c_SEQ_OBseq(T_a,V_X_2) ) ) ).

fof(arity_Polynomial__Opoly__Groups_Ocancel__ab__semigroup__add,axiom,
    ! [T_1] :
      ( class_Groups_Ocancel__ab__semigroup__add(tc_Polynomial_Opoly(T_1))
     <= class_Groups_Ocancel__comm__monoid__add(T_1) ) ).

fof(fact_natceiling__real__of__nat,axiom,
    ! [V_n] : V_n = c_RComplete_Onatceiling(c_RealDef_Oreal(tc_Nat_Onat,V_n)) ).

fof(fact_pos__zmult__eq__1__iff,axiom,
    ! [V_n_2,V_m_2] :
      ( ( ( V_m_2 = c_Groups_Oone__class_Oone(tc_Int_Oint)
          & c_Groups_Oone__class_Oone(tc_Int_Oint) = V_n_2 )
      <=> hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_m_2),V_n_2) = c_Groups_Oone__class_Oone(tc_Int_Oint) )
     <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Int_Oint),c_Groups_Ozero__class_Ozero(tc_Int_Oint)),V_m_2)) ) ).

fof(fact_le__SucI,axiom,
    ! [V_n,V_m] :
      ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m),V_n))
     => hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m),hAPP(c_Nat_OSuc,V_n))) ) ).

fof(fact_add__less__mono,axiom,
    ! [V_l,V_k,V_j,V_i] :
      ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),V_i),V_j))
     => ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Nat_Onat),V_i),V_k)),hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Nat_Onat),V_j),V_l)))
       <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),V_k),V_l)) ) ) ).

fof(fact_le__antisym,axiom,
    ! [V_n,V_m] :
      ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m),V_n))
     => ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_n),V_m))
       => V_n = V_m ) ) ).

fof(arity_RealDef__Oreal__Rings_Olinordered__ring__strict,axiom,
    class_Rings_Olinordered__ring__strict(tc_RealDef_Oreal) ).

fof(fact_less__Suc__eq__le,axiom,
    ! [V_n_2,V_m_2] :
      ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m_2),V_n_2))
    <=> hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),V_m_2),hAPP(c_Nat_OSuc,V_n_2))) ) ).

fof(arity_RealDef__Oreal__Groups_Oordered__ab__group__add,axiom,
    class_Groups_Oordered__ab__group__add(tc_RealDef_Oreal) ).

fof(fact_less__zeroE,axiom,
    ! [V_n] : ~ hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),V_n),c_Groups_Ozero__class_Ozero(tc_Nat_Onat))) ).

fof(fact_mod__add__self2,axiom,
    ! [V_b,V_a,T_a] :
      ( c_Divides_Odiv__class_Omod(T_a,V_a,V_b) = c_Divides_Odiv__class_Omod(T_a,hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),V_a),V_b),V_b)
     <= class_Divides_Osemiring__div(T_a) ) ).

fof(fact_le__natfloor__eq,axiom,
    ! [V_a_2,V_x_2] :
      ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)),V_x_2))
     => ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_RealDef_Oreal(tc_Nat_Onat,V_a_2)),V_x_2))
      <=> hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_a_2),c_RComplete_Onatfloor(V_x_2))) ) ) ).

fof(fact_Suc__inject,axiom,
    ! [V_y,V_x] :
      ( V_x = V_y
     <= hAPP(c_Nat_OSuc,V_y) = hAPP(c_Nat_OSuc,V_x) ) ).

fof(fact_mult__nonpos__nonpos,axiom,
    ! [V_b,V_a,T_a] :
      ( ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,V_a),c_Groups_Ozero__class_Ozero(T_a)))
       => ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,V_b),c_Groups_Ozero__class_Ozero(T_a)))
         => hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b))) ) )
     <= class_Rings_Oordered__ring(T_a) ) ).

fof(fact_less__iff__diff__less__0,axiom,
    ! [V_b_2,V_a_2,T_a] :
      ( ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_a_2),V_b_2))
      <=> hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),hAPP(hAPP(c_Groups_Ominus__class_Ominus(T_a),V_a_2),V_b_2)),c_Groups_Ozero__class_Ozero(T_a))) )
     <= class_Groups_Oordered__ab__group__add(T_a) ) ).

fof(fact_zdiv__zmult2__eq,axiom,
    ! [V_b,V_a,V_c] :
      ( c_Divides_Odiv__class_Odiv(tc_Int_Oint,c_Divides_Odiv__class_Odiv(tc_Int_Oint,V_a,V_b),V_c) = c_Divides_Odiv__class_Odiv(tc_Int_Oint,V_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_b),V_c))
     <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Int_Oint),c_Groups_Ozero__class_Ozero(tc_Int_Oint)),V_c)) ) ).

fof(fact_zadd__zless__mono,axiom,
    ! [V_z,V_z_H,V_w,V_w_H] :
      ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Int_Oint),V_w_H),V_w))
     => ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,V_z_H),V_z))
       => hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Int_Oint),hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Int_Oint),V_w_H),V_z_H)),hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Int_Oint),V_w),V_z))) ) ) ).

fof(fact_pos__imp__zdiv__neg__iff,axiom,
    ! [V_a_2,V_b_2] :
      ( ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Int_Oint),c_Divides_Odiv__class_Odiv(tc_Int_Oint,V_a_2,V_b_2)),c_Groups_Ozero__class_Ozero(tc_Int_Oint)))
      <=> hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Int_Oint),V_a_2),c_Groups_Ozero__class_Ozero(tc_Int_Oint))) )
     <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Int_Oint),c_Groups_Ozero__class_Ozero(tc_Int_Oint)),V_b_2)) ) ).

fof(fact_int__one__le__iff__zero__less,axiom,
    ! [V_z_2] :
      ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Oone__class_Oone(tc_Int_Oint)),V_z_2))
    <=> hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Int_Oint),c_Groups_Ozero__class_Ozero(tc_Int_Oint)),V_z_2)) ) ).

fof(fact_coeff__monom,axiom,
    ! [V_a,V_n,V_m,T_a] :
      ( ( ( hAPP(c_Polynomial_Ocoeff(T_a,c_Polynomial_Omonom(T_a,V_a,V_m)),V_n) = c_Groups_Ozero__class_Ozero(T_a)
         <= V_m != V_n )
        & ( V_a = hAPP(c_Polynomial_Ocoeff(T_a,c_Polynomial_Omonom(T_a,V_a,V_m)),V_n)
         <= V_n = V_m ) )
     <= class_Groups_Ozero(T_a) ) ).

fof(fact_poly__replicate__append,axiom,
    ! [V_x,V_p,V_n,T_a] :
      ( hAPP(c_Polynomial_Opoly(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Polynomial_Opoly(T_a)),c_Polynomial_Omonom(T_a,c_Groups_Oone__class_Oone(T_a),V_n)),V_p)),V_x) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_x),V_n)),hAPP(c_Polynomial_Opoly(T_a,V_p),V_x))
     <= class_Rings_Ocomm__ring__1(T_a) ) ).

fof(arity_RealDef__Oreal__Rings_Oidom,axiom,
    class_Rings_Oidom(tc_RealDef_Oreal) ).

fof(fact_Suc__diff__diff,axiom,
    ! [V_k,V_n,V_m] : hAPP(hAPP(c_Groups_Ominus__class_Ominus(tc_Nat_Onat),hAPP(hAPP(c_Groups_Ominus__class_Ominus(tc_Nat_Onat),V_m),V_n)),V_k) = hAPP(hAPP(c_Groups_Ominus__class_Ominus(tc_Nat_Onat),hAPP(hAPP(c_Groups_Ominus__class_Ominus(tc_Nat_Onat),hAPP(c_Nat_OSuc,V_m)),V_n)),hAPP(c_Nat_OSuc,V_k)) ).

fof(arity_Nat__Onat__Orderings_Olinorder,axiom,
    class_Orderings_Olinorder(tc_Nat_Onat) ).

fof(arity_Complex__Ocomplex__RealVector_Oreal__normed__algebra,axiom,
    class_RealVector_Oreal__normed__algebra(tc_Complex_Ocomplex) ).

fof(fact_div__mult__mult2,axiom,
    ! [V_b,V_a,V_c,T_a] :
      ( ( V_c != c_Groups_Ozero__class_Ozero(T_a)
       => c_Divides_Odiv__class_Odiv(T_a,V_a,V_b) = c_Divides_Odiv__class_Odiv(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_c),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b),V_c)) )
     <= class_Divides_Osemiring__div(T_a) ) ).

fof(fact_natfloor__power,axiom,
    ! [V_n,V_x] :
      ( c_RealDef_Oreal(tc_Nat_Onat,c_RComplete_Onatfloor(V_x)) = V_x
     => hAPP(hAPP(c_Power_Opower__class_Opower(tc_Nat_Onat),c_RComplete_Onatfloor(V_x)),V_n) = c_RComplete_Onatfloor(hAPP(hAPP(c_Power_Opower__class_Opower(tc_RealDef_Oreal),V_x),V_n)) ) ).

fof(arity_Polynomial__Opoly__Rings_Ocomm__ring__1,axiom,
    ! [T_1] :
      ( class_Rings_Ocomm__ring__1(T_1)
     => class_Rings_Ocomm__ring__1(tc_Polynomial_Opoly(T_1)) ) ).

fof(arity_RealDef__Oreal__Rings_Ocomm__semiring,axiom,
    class_Rings_Ocomm__semiring(tc_RealDef_Oreal) ).

fof(fact_nat__1__eq__mult__iff,axiom,
    ! [V_n_2,V_m_2] :
      ( ( V_n_2 = c_Groups_Oone__class_Oone(tc_Nat_Onat)
        & V_m_2 = c_Groups_Oone__class_Oone(tc_Nat_Onat) )
    <=> hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_m_2),V_n_2) = c_Groups_Oone__class_Oone(tc_Nat_Onat) ) ).

fof(fact_mod__eq__0__iff,axiom,
    ! [V_d_2,V_m_2] :
      ( ? [B_q] : hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_d_2),B_q) = V_m_2
    <=> c_Groups_Ozero__class_Ozero(tc_Nat_Onat) = c_Divides_Odiv__class_Omod(tc_Nat_Onat,V_m_2,V_d_2) ) ).

fof(fact_odd__less__0,axiom,
    ! [V_z_2] :
      ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Int_Oint),V_z_2),c_Groups_Ozero__class_Ozero(tc_Int_Oint)))
    <=> hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Int_Oint),hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Int_Oint),hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Int_Oint),c_Groups_Oone__class_Oone(tc_Int_Oint)),V_z_2)),V_z_2)),c_Groups_Ozero__class_Ozero(tc_Int_Oint))) ) ).

fof(arity_Polynomial__Opoly__Orderings_Oorder,axiom,
    ! [T_1] :
      ( class_Orderings_Oorder(tc_Polynomial_Opoly(T_1))
     <= class_Rings_Olinordered__idom(T_1) ) ).

fof(fact_order__less__asym,axiom,
    ! [V_y,V_x,T_a] :
      ( class_Orderings_Opreorder(T_a)
     => ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_x),V_y))
       => ~ hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_y),V_x)) ) ) ).

fof(fact_less__antisym,axiom,
    ! [V_m,V_n] :
      ( ( V_m = V_n
       <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),V_n),hAPP(c_Nat_OSuc,V_m))) )
     <= ~ hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),V_n),V_m)) ) ).

fof(arity_RealDef__Oreal__Groups_Oab__group__add,axiom,
    class_Groups_Oab__group__add(tc_RealDef_Oreal) ).

fof(fact_power__0,axiom,
    ! [V_a,T_a] :
      ( class_Power_Opower(T_a)
     => hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),c_Groups_Ozero__class_Ozero(tc_Nat_Onat)) = c_Groups_Oone__class_Oone(T_a) ) ).

fof(arity_RealDef__Oreal__Groups_Omonoid__mult,axiom,
    class_Groups_Omonoid__mult(tc_RealDef_Oreal) ).

fof(fact_nat__less__real__le,axiom,
    ! [V_m_2,V_n_2] :
      ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),V_n_2),V_m_2))
    <=> hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_RealDef_Oreal),c_RealDef_Oreal(tc_Nat_Onat,V_n_2)),c_Groups_Oone__class_Oone(tc_RealDef_Oreal))),c_RealDef_Oreal(tc_Nat_Onat,V_m_2))) ) ).

fof(fact_le0,axiom,
    ! [V_n] : hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat)),V_n)) ).

fof(fact_mult__zero__left,axiom,
    ! [V_a,T_a] :
      ( c_Groups_Ozero__class_Ozero(T_a) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Groups_Ozero__class_Ozero(T_a)),V_a)
     <= class_Rings_Omult__zero(T_a) ) ).

fof(arity_RealDef__Oreal__Rings_Oordered__semiring,axiom,
    class_Rings_Oordered__semiring(tc_RealDef_Oreal) ).

fof(fact_linorder__not__less,axiom,
    ! [V_y_2,V_x_2,T_a] :
      ( ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,V_y_2),V_x_2))
      <=> ~ hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_x_2),V_y_2)) )
     <= class_Orderings_Olinorder(T_a) ) ).

fof(fact_add__strict__left__mono,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_a),V_b))
       => hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),V_c),V_a)),hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),V_c),V_b))) )
     <= class_Groups_Oordered__cancel__ab__semigroup__add(T_a) ) ).

fof(fact_poly__offset,axiom,
    ! [V_a,V_p] :
    ? [B_q] :
      ( c_Fundamental__Theorem__Algebra__Mirabelle_Opsize(tc_Complex_Ocomplex,B_q) = c_Fundamental__Theorem__Algebra__Mirabelle_Opsize(tc_Complex_Ocomplex,V_p)
      & ! [B_x] : hAPP(c_Polynomial_Opoly(tc_Complex_Ocomplex,B_q),B_x) = hAPP(c_Polynomial_Opoly(tc_Complex_Ocomplex,V_p),hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Complex_Ocomplex),V_a),B_x)) ) ).

fof(arity_Nat__Onat__Rings_Olinordered__semiring,axiom,
    class_Rings_Olinordered__semiring(tc_Nat_Onat) ).

fof(fact_zmod__zdiv__equality,axiom,
    ! [V_b,V_a] : hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Int_Oint),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_b),c_Divides_Odiv__class_Odiv(tc_Int_Oint,V_a,V_b))),c_Divides_Odiv__class_Omod(tc_Int_Oint,V_a,V_b)) = V_a ).

fof(fact_comm__semiring__1__class_Onormalizing__semiring__rules_I13_J,axiom,
    ! [V_ry,V_rx,V_ly,V_lx,T_a] :
      ( class_Rings_Ocomm__semiring__1(T_a)
     => hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_lx),V_ly)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_rx),V_ry)) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_lx),V_rx)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_ly),V_ry)) ) ).

fof(fact_pdivmod__rel__0,axiom,
    ! [V_y,T_a] :
      ( class_Fields_Ofield(T_a)
     => c_Polynomial_Opdivmod__rel(T_a,c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a)),V_y,c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a)),c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a))) ) ).

fof(fact_mod__mult__mult2,axiom,
    ! [V_b,V_c,V_a,T_a] :
      ( class_Divides_Osemiring__div(T_a)
     => hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Divides_Odiv__class_Omod(T_a,V_a,V_b)),V_c) = c_Divides_Odiv__class_Omod(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_c),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b),V_c)) ) ).

fof(fact_mult__nonneg__nonpos2,axiom,
    ! [V_b,V_a,T_a] :
      ( ( ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,V_b),c_Groups_Ozero__class_Ozero(T_a)))
         => hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b),V_a)),c_Groups_Ozero__class_Ozero(T_a))) )
       <= hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a)),V_a)) )
     <= class_Rings_Oordered__cancel__semiring(T_a) ) ).

fof(fact_Suc__mult__le__cancel1,axiom,
    ! [V_n_2,V_m_2,V_k_2] :
      ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m_2),V_n_2))
    <=> hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),hAPP(c_Nat_OSuc,V_k_2)),V_m_2)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),hAPP(c_Nat_OSuc,V_k_2)),V_n_2))) ) ).

fof(fact_add__increasing2,axiom,
    ! [V_a,V_b,V_c,T_a] :
      ( ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a)),V_c))
       => ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,V_b),V_a))
         => hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,V_b),hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),V_a),V_c))) ) )
     <= class_Groups_Oordered__comm__monoid__add(T_a) ) ).

fof(fact_add__mono,axiom,
    ! [V_d,V_c,V_b,V_a,T_a] :
      ( ( ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),V_a),V_c)),hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),V_b),V_d)))
         <= hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,V_c),V_d)) )
       <= hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,V_a),V_b)) )
     <= class_Groups_Oordered__ab__semigroup__add(T_a) ) ).

fof(arity_Complex__Ocomplex__Rings_Oring__1__no__zero__divisors,axiom,
    class_Rings_Oring__1__no__zero__divisors(tc_Complex_Ocomplex) ).

fof(fact_mod__add__self1,axiom,
    ! [V_a,V_b,T_a] :
      ( class_Divides_Osemiring__div(T_a)
     => c_Divides_Odiv__class_Omod(T_a,hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),V_b),V_a),V_b) = c_Divides_Odiv__class_Omod(T_a,V_a,V_b) ) ).

fof(fact_Suc__times__mod__eq,axiom,
    ! [V_m,V_k] :
      ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),c_Groups_Oone__class_Oone(tc_Nat_Onat)),V_k))
     => c_Divides_Odiv__class_Omod(tc_Nat_Onat,hAPP(c_Nat_OSuc,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_k),V_m)),V_k) = c_Groups_Oone__class_Oone(tc_Nat_Onat) ) ).

fof(fact_add__strict__increasing2,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( class_Groups_Oordered__comm__monoid__add(T_a)
     => ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a)),V_a))
       => ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_b),V_c))
         => hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_b),hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),V_a),V_c))) ) ) ) ).

fof(fact_mod__smult__left,axiom,
    ! [V_y,V_x,V_a,T_a] :
      ( c_Polynomial_Osmult(T_a,V_a,c_Divides_Odiv__class_Omod(tc_Polynomial_Opoly(T_a),V_x,V_y)) = c_Divides_Odiv__class_Omod(tc_Polynomial_Opoly(T_a),c_Polynomial_Osmult(T_a,V_a,V_x),V_y)
     <= class_Fields_Ofield(T_a) ) ).

fof(fact_mult__eq__self__implies__10,axiom,
    ! [V_n,V_m] :
      ( hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_m),V_n) = V_m
     => ( V_m = c_Groups_Ozero__class_Ozero(tc_Nat_Onat)
        | c_Groups_Oone__class_Oone(tc_Nat_Onat) = V_n ) ) ).

fof(fact_comm__semiring__1__class_Onormalizing__semiring__rules_I33_J,axiom,
    ! [V_x,T_a] :
      ( class_Rings_Ocomm__semiring__1(T_a)
     => V_x = hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_x),c_Groups_Oone__class_Oone(tc_Nat_Onat)) ) ).

fof(fact_pdivmod__rel__by__0,axiom,
    ! [V_x,T_a] :
      ( class_Fields_Ofield(T_a)
     => c_Polynomial_Opdivmod__rel(T_a,V_x,c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a)),c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a)),V_x) ) ).

fof(fact_nat__less__cases,axiom,
    ! [V_P_2,V_n_2,V_m_2] :
      ( ( ( hBOOL(hAPP(hAPP(V_P_2,V_n_2),V_m_2))
         <= V_m_2 = V_n_2 )
       => ( ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),V_n_2),V_m_2))
           => hBOOL(hAPP(hAPP(V_P_2,V_n_2),V_m_2)) )
         => hBOOL(hAPP(hAPP(V_P_2,V_n_2),V_m_2)) ) )
     <= ( hBOOL(hAPP(hAPP(V_P_2,V_n_2),V_m_2))
       <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),V_m_2),V_n_2)) ) ) ).

fof(fact_field__power__not__zero,axiom,
    ! [V_n,V_a,T_a] :
      ( ( V_a != c_Groups_Ozero__class_Ozero(T_a)
       => hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_n) != c_Groups_Ozero__class_Ozero(T_a) )
     <= class_Rings_Oring__1__no__zero__divisors(T_a) ) ).

fof(fact_poly__bound__exists,axiom,
    ! [V_p,V_r] :
    ? [B_m] :
      ( ! [B_z] :
          ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_RealVector_Onorm__class_Onorm(tc_Complex_Ocomplex,B_z)),V_r))
         => hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_RealVector_Onorm__class_Onorm(tc_Complex_Ocomplex,hAPP(c_Polynomial_Opoly(tc_Complex_Ocomplex,V_p),B_z))),B_m)) )
      & hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_RealDef_Oreal),c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)),B_m)) ) ).

fof(fact_add__less__imp__less__right,axiom,
    ! [V_b,V_c,V_a,T_a] :
      ( class_Groups_Oordered__ab__semigroup__add__imp__le(T_a)
     => ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),V_a),V_c)),hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),V_b),V_c)))
       => hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_a),V_b)) ) ) ).

fof(fact_mult__le__mono2,axiom,
    ! [V_k,V_j,V_i] :
      ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_k),V_i)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_k),V_j)))
     <= hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_i),V_j)) ) ).

fof(fact_degree__def,axiom,
    ! [V_pb_2,T_a] :
      ( class_Groups_Ozero(T_a)
     => c_Polynomial_Odegree(T_a,V_pb_2) = c_Orderings_Oord__class_OLeast(tc_Nat_Onat,hAPP(c_COMBB(tc_fun(tc_Nat_Onat,tc_HOL_Obool),tc_HOL_Obool,tc_Nat_Onat,c_HOL_OAll(tc_Nat_Onat)),c_COMBC(tc_Nat_Onat,tc_fun(tc_Nat_Onat,tc_HOL_Obool),tc_fun(tc_Nat_Onat,tc_HOL_Obool),hAPP(c_COMBB(tc_fun(tc_Nat_Onat,tc_fun(tc_HOL_Obool,tc_HOL_Obool)),tc_fun(tc_fun(tc_Nat_Onat,tc_HOL_Obool),tc_fun(tc_Nat_Onat,tc_HOL_Obool)),tc_Nat_Onat,c_COMBS(tc_Nat_Onat,tc_HOL_Obool,tc_HOL_Obool)),hAPP(c_COMBB(tc_fun(tc_Nat_Onat,tc_HOL_Obool),tc_fun(tc_Nat_Onat,tc_fun(tc_HOL_Obool,tc_HOL_Obool)),tc_Nat_Onat,c_COMBB(tc_HOL_Obool,tc_fun(tc_HOL_Obool,tc_HOL_Obool),tc_Nat_Onat,c_fimplies)),c_Orderings_Oord__class_Oless(tc_Nat_Onat))),c_COMBC(tc_Nat_Onat,T_a,tc_HOL_Obool,hAPP(c_COMBB(T_a,tc_fun(T_a,tc_HOL_Obool),tc_Nat_Onat,c_fequal),c_Polynomial_Ocoeff(T_a,V_pb_2)),c_Groups_Ozero__class_Ozero(T_a))))) ) ).

fof(arity_Polynomial__Opoly__Rings_Ono__zero__divisors,axiom,
    ! [T_1] :
      ( class_Rings_Oidom(T_1)
     => class_Rings_Ono__zero__divisors(tc_Polynomial_Opoly(T_1)) ) ).

fof(fact_mult_Oadd__left,axiom,
    ! [V_b,V_a_H,V_a,T_a] :
      ( class_RealVector_Oreal__normed__algebra(T_a)
     => hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),V_a),V_a_H)),V_b) = hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a_H),V_b)) ) ).

fof(fact_self__quotient__aux1,axiom,
    ! [V_q,V_r,V_a] :
      ( ( ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Int_Oint),V_r),V_a))
         => hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Oone__class_Oone(tc_Int_Oint)),V_q)) )
       <= hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Int_Oint),V_r),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_a),V_q)) = V_a )
     <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Int_Oint),c_Groups_Ozero__class_Ozero(tc_Int_Oint)),V_a)) ) ).

fof(fact_mult__right__le__one__le,axiom,
    ! [V_y,V_x,T_a] :
      ( ( ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a)),V_y))
         => ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,V_y),c_Groups_Oone__class_Oone(T_a)))
           => hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_x),V_y)),V_x)) ) )
       <= hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a)),V_x)) )
     <= class_Rings_Olinordered__idom(T_a) ) ).

fof(fact_pos__poly__mult,axiom,
    ! [V_q,V_p,T_a] :
      ( ( ( c_Polynomial_Opos__poly(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Polynomial_Opoly(T_a)),V_p),V_q))
         <= c_Polynomial_Opos__poly(T_a,V_q) )
       <= c_Polynomial_Opos__poly(T_a,V_p) )
     <= class_Rings_Olinordered__idom(T_a) ) ).

fof(fact_zdiv__eq__0__iff,axiom,
    ! [V_k_2,V_i_2] :
      ( c_Groups_Ozero__class_Ozero(tc_Int_Oint) = c_Divides_Odiv__class_Odiv(tc_Int_Oint,V_i_2,V_k_2)
    <=> ( V_k_2 = c_Groups_Ozero__class_Ozero(tc_Int_Oint)
        | ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,V_i_2),c_Groups_Ozero__class_Ozero(tc_Int_Oint)))
          & hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Int_Oint),V_k_2),V_i_2)) )
        | ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Int_Oint),V_i_2),V_k_2))
          & hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint)),V_i_2)) ) ) ) ).

fof(arity_Polynomial__Opoly__Groups_Ocancel__semigroup__add,axiom,
    ! [T_1] :
      ( class_Groups_Ocancel__semigroup__add(tc_Polynomial_Opoly(T_1))
     <= class_Groups_Ocancel__comm__monoid__add(T_1) ) ).

fof(fact_le__natfloor__eq__one,axiom,
    ! [V_x_2] :
      ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,c_Groups_Oone__class_Oone(tc_Nat_Onat)),c_RComplete_Onatfloor(V_x_2)))
    <=> hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Oone__class_Oone(tc_RealDef_Oreal)),V_x_2)) ) ).

fof(fact_less__natfloor,axiom,
    ! [V_n,V_x] :
      ( ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),c_RComplete_Onatfloor(V_x)),V_n))
       <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_RealDef_Oreal),V_x),c_RealDef_Oreal(tc_Nat_Onat,V_n))) )
     <= hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)),V_x)) ) ).

fof(fact_mult__right__mono__neg,axiom,
    ! [V_c,V_a,V_b,T_a] :
      ( ( ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_c)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b),V_c)))
         <= hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,V_c),c_Groups_Ozero__class_Ozero(T_a))) )
       <= hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,V_b),V_a)) )
     <= class_Rings_Oordered__ring(T_a) ) ).

fof(fact_le__fun__def,axiom,
    ! [V_g_2,V_f_2,T_a,T_b] :
      ( ( ! [B_x] : hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_b,hAPP(V_f_2,B_x)),hAPP(V_g_2,B_x)))
      <=> hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,T_b),V_f_2),V_g_2)) )
     <= class_Orderings_Oord(T_b) ) ).

fof(arity_Complex__Ocomplex__Groups_Ocancel__comm__monoid__add,axiom,
    class_Groups_Ocancel__comm__monoid__add(tc_Complex_Ocomplex) ).

fof(arity_RealDef__Oreal__Rings_Ocomm__semiring__1,axiom,
    class_Rings_Ocomm__semiring__1(tc_RealDef_Oreal) ).

fof(fact_real__squared__diff__one__factored,axiom,
    ! [V_x,T_a] :
      ( hAPP(hAPP(c_Groups_Ominus__class_Ominus(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_x),V_x)),c_Groups_Oone__class_Oone(T_a)) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),V_x),c_Groups_Oone__class_Oone(T_a))),hAPP(hAPP(c_Groups_Ominus__class_Ominus(T_a),V_x),c_Groups_Oone__class_Oone(T_a)))
     <= class_Rings_Oring__1(T_a) ) ).

fof(fact_lemma__NBseq__def2,axiom,
    ! [V_X_2,T_b] :
      ( class_RealVector_Oreal__normed__vector(T_b)
     => ( ? [B_K] :
            ( ! [B_n] : hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_RealVector_Onorm__class_Onorm(T_b,hAPP(V_X_2,B_n))),B_K))
            & hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_RealDef_Oreal),c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)),B_K)) )
      <=> ? [B_N] :
          ! [B_n] : hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_RealDef_Oreal),c_RealVector_Onorm__class_Onorm(T_b,hAPP(V_X_2,B_n))),c_RealDef_Oreal(tc_Nat_Onat,hAPP(c_Nat_OSuc,B_N)))) ) ) ).

fof(arity_Complex__Ocomplex__Rings_Ocomm__ring__1,axiom,
    class_Rings_Ocomm__ring__1(tc_Complex_Ocomplex) ).

fof(fact_zpower__zmod,axiom,
    ! [V_y,V_m,V_x] : c_Divides_Odiv__class_Omod(tc_Int_Oint,hAPP(hAPP(c_Power_Opower__class_Opower(tc_Int_Oint),V_x),V_y),V_m) = c_Divides_Odiv__class_Omod(tc_Int_Oint,hAPP(hAPP(c_Power_Opower__class_Opower(tc_Int_Oint),c_Divides_Odiv__class_Omod(tc_Int_Oint,V_x,V_m)),V_y),V_m) ).

fof(arity_Complex__Ocomplex__Groups_Ocomm__monoid__add,axiom,
    class_Groups_Ocomm__monoid__add(tc_Complex_Ocomplex) ).

fof(arity_RealDef__Oreal__Orderings_Opreorder,axiom,
    class_Orderings_Opreorder(tc_RealDef_Oreal) ).

fof(fact_div__mult__self1__is__id,axiom,
    ! [V_a,V_b,T_a] :
      ( class_Divides_Osemiring__div(T_a)
     => ( V_b != c_Groups_Ozero__class_Ozero(T_a)
       => V_a = c_Divides_Odiv__class_Odiv(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b),V_a),V_b) ) ) ).

fof(fact_q__pos__lemma,axiom,
    ! [V_r_H,V_q_H,V_b_H] :
      ( ( ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Int_Oint),c_Groups_Ozero__class_Ozero(tc_Int_Oint)),V_b_H))
         => hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint)),V_q_H)) )
       <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Int_Oint),V_r_H),V_b_H)) )
     <= hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint)),hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Int_Oint),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_b_H),V_q_H)),V_r_H))) ) ).

fof(arity_Complex__Ocomplex__Rings_Osemiring__0,axiom,
    class_Rings_Osemiring__0(tc_Complex_Ocomplex) ).

fof(fact_mod__add__eq,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( class_Divides_Osemiring__div(T_a)
     => c_Divides_Odiv__class_Omod(T_a,hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),c_Divides_Odiv__class_Omod(T_a,V_a,V_c)),c_Divides_Odiv__class_Omod(T_a,V_b,V_c)),V_c) = c_Divides_Odiv__class_Omod(T_a,hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),V_a),V_b),V_c) ) ).

fof(fact_natceiling__add__one,axiom,
    ! [V_x] :
      ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)),V_x))
     => hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Nat_Onat),c_RComplete_Onatceiling(V_x)),c_Groups_Oone__class_Oone(tc_Nat_Onat)) = c_RComplete_Onatceiling(hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_RealDef_Oreal),V_x),c_Groups_Oone__class_Oone(tc_RealDef_Oreal))) ) ).

fof(fact_ord__eq__less__trans,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( class_Orderings_Oord(T_a)
     => ( ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_a),V_c))
         <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_b),V_c)) )
       <= V_b = V_a ) ) ).

fof(help_c__fequal__2,axiom,
    ! [V_y_2,V_x_2] :
      ( V_y_2 != V_x_2
      | hBOOL(hAPP(hAPP(c_fequal,V_x_2),V_y_2)) ) ).

fof(fact_nonzero__imp__inverse__nonzero,axiom,
    ! [V_a,T_a] :
      ( class_Rings_Odivision__ring(T_a)
     => ( V_a != c_Groups_Ozero__class_Ozero(T_a)
       => c_Rings_Oinverse__class_Oinverse(T_a,V_a) != c_Groups_Ozero__class_Ozero(T_a) ) ) ).

fof(fact_mult__right__mono,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( ( ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_c)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b),V_c)))
         <= hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a)),V_c)) )
       <= hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,V_a),V_b)) )
     <= class_Rings_Oordered__semiring(T_a) ) ).

fof(arity_Int__Oint__Groups_Ocancel__ab__semigroup__add,axiom,
    class_Groups_Ocancel__ab__semigroup__add(tc_Int_Oint) ).

fof(arity_RealDef__Oreal__Rings_Oordered__ring,axiom,
    class_Rings_Oordered__ring(tc_RealDef_Oreal) ).

fof(fact_inverse__nonzero__iff__nonzero,axiom,
    ! [V_a_2,T_a] :
      ( ( c_Rings_Oinverse__class_Oinverse(T_a,V_a_2) = c_Groups_Ozero__class_Ozero(T_a)
      <=> c_Groups_Ozero__class_Ozero(T_a) = V_a_2 )
     <= class_Rings_Odivision__ring__inverse__zero(T_a) ) ).

fof(fact_real__of__nat__less__iff,axiom,
    ! [V_m_2,V_n_2] :
      ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_RealDef_Oreal),c_RealDef_Oreal(tc_Nat_Onat,V_n_2)),c_RealDef_Oreal(tc_Nat_Onat,V_m_2)))
    <=> hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),V_n_2),V_m_2)) ) ).

fof(arity_Int__Oint__Rings_Ocomm__ring,axiom,
    class_Rings_Ocomm__ring(tc_Int_Oint) ).

fof(fact_le__imp__inverse__le,axiom,
    ! [V_b,V_a,T_a] :
      ( class_Fields_Olinordered__field(T_a)
     => ( ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),c_Groups_Ozero__class_Ozero(T_a)),V_a))
         => hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,c_Rings_Oinverse__class_Oinverse(T_a,V_b)),c_Rings_Oinverse__class_Oinverse(T_a,V_a))) )
       <= hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,V_a),V_b)) ) ) ).

fof(fact_degree__monom__eq,axiom,
    ! [V_n,V_a,T_a] :
      ( class_Groups_Ozero(T_a)
     => ( V_a != c_Groups_Ozero__class_Ozero(T_a)
       => V_n = c_Polynomial_Odegree(T_a,c_Polynomial_Omonom(T_a,V_a,V_n)) ) ) ).

fof(fact_real__add__left__mono,axiom,
    ! [V_z,V_y,V_x] :
      ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,V_x),V_y))
     => hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_RealDef_Oreal),V_z),V_x)),hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_RealDef_Oreal),V_z),V_y))) ) ).

fof(fact_zmod__zdiv__trivial,axiom,
    ! [V_b,V_a] : c_Divides_Odiv__class_Odiv(tc_Int_Oint,c_Divides_Odiv__class_Omod(tc_Int_Oint,V_a,V_b),V_b) = c_Groups_Ozero__class_Ozero(tc_Int_Oint) ).

fof(arity_Int__Oint__Groups_Oordered__cancel__ab__semigroup__add,axiom,
    class_Groups_Oordered__cancel__ab__semigroup__add(tc_Int_Oint) ).

fof(fact_diff__less__mono,axiom,
    ! [V_c,V_b,V_a] :
      ( ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_c),V_a))
       => hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),hAPP(hAPP(c_Groups_Ominus__class_Ominus(tc_Nat_Onat),V_a),V_c)),hAPP(hAPP(c_Groups_Ominus__class_Ominus(tc_Nat_Onat),V_b),V_c))) )
     <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),V_a),V_b)) ) ).

fof(fact_nonzero__norm__inverse,axiom,
    ! [V_a,T_a] :
      ( class_RealVector_Oreal__normed__div__algebra(T_a)
     => ( c_Groups_Ozero__class_Ozero(T_a) != V_a
       => c_RealVector_Onorm__class_Onorm(T_a,c_Rings_Oinverse__class_Oinverse(T_a,V_a)) = c_Rings_Oinverse__class_Oinverse(tc_RealDef_Oreal,c_RealVector_Onorm__class_Onorm(T_a,V_a)) ) ) ).

fof(arity_Complex__Ocomplex__RealVector_Oreal__normed__vector,axiom,
    class_RealVector_Oreal__normed__vector(tc_Complex_Ocomplex) ).

fof(fact_mult__smult__right,axiom,
    ! [V_q,V_a,V_p,T_a] :
      ( class_Rings_Ocomm__semiring__0(T_a)
     => c_Polynomial_Osmult(T_a,V_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Polynomial_Opoly(T_a)),V_p),V_q)) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Polynomial_Opoly(T_a)),V_p),c_Polynomial_Osmult(T_a,V_a,V_q)) ) ).

fof(fact_add__eq__self__zero,axiom,
    ! [V_n,V_m] :
      ( c_Groups_Ozero__class_Ozero(tc_Nat_Onat) = V_n
     <= V_m = hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Nat_Onat),V_m),V_n) ) ).

fof(arity_RealDef__Oreal__Groups_Ocomm__monoid__add,axiom,
    class_Groups_Ocomm__monoid__add(tc_RealDef_Oreal) ).

fof(arity_Complex__Ocomplex__Rings_Omult__zero,axiom,
    class_Rings_Omult__zero(tc_Complex_Ocomplex) ).

fof(fact_degree__add__le,axiom,
    ! [V_q,V_n,V_p,T_a] :
      ( ( ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,c_Polynomial_Odegree(T_a,hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Polynomial_Opoly(T_a)),V_p),V_q))),V_n))
         <= hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,c_Polynomial_Odegree(T_a,V_q)),V_n)) )
       <= hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,c_Polynomial_Odegree(T_a,V_p)),V_n)) )
     <= class_Groups_Ocomm__monoid__add(T_a) ) ).

fof(fact_add__increasing,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( class_Groups_Oordered__comm__monoid__add(T_a)
     => ( ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,V_b),V_c))
         => hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,V_b),hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),V_a),V_c))) )
       <= hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a)),V_a)) ) ) ).

fof(fact_nonneg1__imp__zdiv__pos__iff,axiom,
    ! [V_b_2,V_a_2] :
      ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint)),V_a_2))
     => ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Int_Oint),c_Groups_Ozero__class_Ozero(tc_Int_Oint)),c_Divides_Odiv__class_Odiv(tc_Int_Oint,V_a_2,V_b_2)))
      <=> ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,V_b_2),V_a_2))
          & hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Int_Oint),c_Groups_Ozero__class_Ozero(tc_Int_Oint)),V_b_2)) ) ) ) ).

fof(arity_Polynomial__Opoly__Rings_Ozero__neq__one,axiom,
    ! [T_1] :
      ( class_Rings_Ozero__neq__one(tc_Polynomial_Opoly(T_1))
     <= class_Rings_Ocomm__semiring__1(T_1) ) ).

fof(arity_Polynomial__Opoly__Orderings_Oord,axiom,
    ! [T_1] :
      ( class_Rings_Olinordered__idom(T_1)
     => class_Orderings_Oord(tc_Polynomial_Opoly(T_1)) ) ).

fof(fact_inverse__eq__1__iff,axiom,
    ! [V_x_2,T_a] :
      ( class_Fields_Ofield__inverse__zero(T_a)
     => ( c_Rings_Oinverse__class_Oinverse(T_a,V_x_2) = c_Groups_Oone__class_Oone(T_a)
      <=> V_x_2 = c_Groups_Oone__class_Oone(T_a) ) ) ).

fof(fact_xt1_I6_J,axiom,
    ! [V_z,V_x,V_y,T_a] :
      ( ( ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,V_z),V_x))
         <= hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,V_z),V_y)) )
       <= hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,V_y),V_x)) )
     <= class_Orderings_Oorder(T_a) ) ).

fof(fact_one__neq__zero,axiom,
    ! [T_a] :
      ( c_Groups_Oone__class_Oone(T_a) != c_Groups_Ozero__class_Ozero(T_a)
     <= class_Rings_Ozero__neq__one(T_a) ) ).

fof(fact_nonzero__inverse__inverse__eq,axiom,
    ! [V_a,T_a] :
      ( ( c_Groups_Ozero__class_Ozero(T_a) != V_a
       => V_a = c_Rings_Oinverse__class_Oinverse(T_a,c_Rings_Oinverse__class_Oinverse(T_a,V_a)) )
     <= class_Rings_Odivision__ring(T_a) ) ).

fof(arity_Int__Oint__Rings_Oidom,axiom,
    class_Rings_Oidom(tc_Int_Oint) ).

fof(fact_zmult2__lemma__aux2,axiom,
    ! [V_q,V_r,V_b,V_c] :
      ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Int_Oint),c_Groups_Ozero__class_Ozero(tc_Int_Oint)),V_c))
     => ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Int_Oint),V_b),V_r))
       => ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Int_Oint),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_b),c_Divides_Odiv__class_Omod(tc_Int_Oint,V_q,V_c))),V_r)),c_Groups_Ozero__class_Ozero(tc_Int_Oint)))
         <= hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,V_r),c_Groups_Ozero__class_Ozero(tc_Int_Oint))) ) ) ) ).

fof(fact_cq0,axiom,
    ! [B_w] : hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_RealVector_Onorm__class_Onorm(tc_Complex_Ocomplex,hAPP(c_Polynomial_Opoly(tc_Complex_Ocomplex,v_q____),c_Groups_Ozero__class_Ozero(tc_Complex_Ocomplex)))),c_RealVector_Onorm__class_Onorm(tc_Complex_Ocomplex,hAPP(c_Polynomial_Opoly(tc_Complex_Ocomplex,v_pa____),B_w)))) ).

fof(arity_Int__Oint__Groups_Oone,axiom,
    class_Groups_Oone(tc_Int_Oint) ).

fof(fact_linorder__neqE,axiom,
    ! [V_y,V_x,T_a] :
      ( ( ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_y),V_x))
         <= ~ hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_x),V_y)) )
       <= V_x != V_y )
     <= class_Orderings_Olinorder(T_a) ) ).

fof(fact_one__less__power,axiom,
    ! [V_n,V_a,T_a] :
      ( class_Rings_Olinordered__semidom(T_a)
     => ( ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),c_Groups_Ozero__class_Ozero(tc_Nat_Onat)),V_n))
         => hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),c_Groups_Oone__class_Oone(T_a)),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_n))) )
       <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),c_Groups_Oone__class_Oone(T_a)),V_a)) ) ) ).

fof(arity_Polynomial__Opoly__Groups_Oordered__ab__semigroup__add,axiom,
    ! [T_1] :
      ( class_Rings_Olinordered__idom(T_1)
     => class_Groups_Oordered__ab__semigroup__add(tc_Polynomial_Opoly(T_1)) ) ).

fof(fact_poly__power,axiom,
    ! [V_x,V_n,V_p,T_a] :
      ( class_Rings_Ocomm__semiring__1(T_a)
     => hAPP(c_Polynomial_Opoly(T_a,hAPP(hAPP(c_Power_Opower__class_Opower(tc_Polynomial_Opoly(T_a)),V_p),V_n)),V_x) = hAPP(hAPP(c_Power_Opower__class_Opower(T_a),hAPP(c_Polynomial_Opoly(T_a,V_p),V_x)),V_n) ) ).

fof(fact_zpower__zpower,axiom,
    ! [V_z,V_y,V_x] : hAPP(hAPP(c_Power_Opower__class_Opower(tc_Int_Oint),hAPP(hAPP(c_Power_Opower__class_Opower(tc_Int_Oint),V_x),V_y)),V_z) = hAPP(hAPP(c_Power_Opower__class_Opower(tc_Int_Oint),V_x),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_y),V_z)) ).

fof(fact_smult__eq__0__iff,axiom,
    ! [V_pb_2,V_a_2,T_a] :
      ( class_Rings_Oidom(T_a)
     => ( c_Polynomial_Osmult(T_a,V_a_2,V_pb_2) = c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a))
      <=> ( c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a)) = V_pb_2
          | V_a_2 = c_Groups_Ozero__class_Ozero(T_a) ) ) ) ).

fof(fact_le__add__iff2,axiom,
    ! [V_d_2,V_b_2,V_ca_2,V_e_2,V_a_2,T_a] :
      ( ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,V_ca_2),hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),hAPP(hAPP(c_Groups_Ominus__class_Ominus(T_a),V_b_2),V_a_2)),V_e_2)),V_d_2)))
      <=> hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a_2),V_e_2)),V_ca_2)),hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b_2),V_e_2)),V_d_2))) )
     <= class_Rings_Oordered__ring(T_a) ) ).

fof(fact_smult__monom,axiom,
    ! [V_n,V_b,V_a,T_a] :
      ( class_Rings_Ocomm__semiring__0(T_a)
     => c_Polynomial_Omonom(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b),V_n) = c_Polynomial_Osmult(T_a,V_a,c_Polynomial_Omonom(T_a,V_b,V_n)) ) ).

fof(fact_norm__ge__zero,axiom,
    ! [V_x,T_a] :
      ( class_RealVector_Oreal__normed__vector(T_a)
     => hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)),c_RealVector_Onorm__class_Onorm(T_a,V_x))) ) ).

fof(arity_Nat__Onat__Groups_Oordered__ab__semigroup__add,axiom,
    class_Groups_Oordered__ab__semigroup__add(tc_Nat_Onat) ).

fof(fact_poly__gcd__1__left,axiom,
    ! [V_y,T_a] :
      ( c_Groups_Oone__class_Oone(tc_Polynomial_Opoly(T_a)) = c_Polynomial_Opoly__gcd(T_a,c_Groups_Oone__class_Oone(tc_Polynomial_Opoly(T_a)),V_y)
     <= class_Fields_Ofield(T_a) ) ).

fof(fact_less__imp__neq,axiom,
    ! [V_y,V_x,T_a] :
      ( ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_x),V_y))
       => V_y != V_x )
     <= class_Orderings_Oorder(T_a) ) ).

fof(arity_RealDef__Oreal__Rings_Osemiring__0,axiom,
    class_Rings_Osemiring__0(tc_RealDef_Oreal) ).

fof(fact_norm__ratiotest__lemma,axiom,
    ! [V_y,V_x,V_c,T_a] :
      ( class_RealVector_Oreal__normed__vector(T_a)
     => ( ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_RealVector_Onorm__class_Onorm(T_a,V_x)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),V_c),c_RealVector_Onorm__class_Onorm(T_a,V_y))))
         => V_x = c_Groups_Ozero__class_Ozero(T_a) )
       <= hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,V_c),c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal))) ) ) ).

fof(fact_div__mult__mult1,axiom,
    ! [V_b,V_a,V_c,T_a] :
      ( ( c_Divides_Odiv__class_Odiv(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_c),V_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_c),V_b)) = c_Divides_Odiv__class_Odiv(T_a,V_a,V_b)
       <= V_c != c_Groups_Ozero__class_Ozero(T_a) )
     <= class_Divides_Osemiring__div(T_a) ) ).

fof(fact_inverse__mult__distrib,axiom,
    ! [V_b,V_a,T_a] :
      ( class_Fields_Ofield__inverse__zero(T_a)
     => c_Rings_Oinverse__class_Oinverse(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b)) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Rings_Oinverse__class_Oinverse(T_a,V_a)),c_Rings_Oinverse__class_Oinverse(T_a,V_b)) ) ).

fof(fact_comm__semiring__1__class_Onormalizing__semiring__rules_I32_J,axiom,
    ! [V_x,T_a] :
      ( class_Rings_Ocomm__semiring__1(T_a)
     => c_Groups_Oone__class_Oone(T_a) = hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_x),c_Groups_Ozero__class_Ozero(tc_Nat_Onat)) ) ).

fof(fact_mod__induct__0,axiom,
    ! [V_i_2,V_P_2,V_pb_2] :
      ( ( ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),V_i_2),V_pb_2))
         => hBOOL(hAPP(V_P_2,c_Groups_Ozero__class_Ozero(tc_Nat_Onat))) )
       <= hBOOL(hAPP(V_P_2,V_i_2)) )
     <= ! [B_i] :
          ( ( hBOOL(hAPP(V_P_2,B_i))
           => hBOOL(hAPP(V_P_2,c_Divides_Odiv__class_Omod(tc_Nat_Onat,hAPP(c_Nat_OSuc,B_i),V_pb_2))) )
         <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),B_i),V_pb_2)) ) ) ).

fof(fact_add__nonpos__neg,axiom,
    ! [V_b,V_a,T_a] :
      ( ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,V_a),c_Groups_Ozero__class_Ozero(T_a)))
       => ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_b),c_Groups_Ozero__class_Ozero(T_a)))
         => hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),V_a),V_b)),c_Groups_Ozero__class_Ozero(T_a))) ) )
     <= class_Groups_Oordered__comm__monoid__add(T_a) ) ).

fof(fact_mult__right_Oadd,axiom,
    ! [V_y,V_x,V_xa,T_a] :
      ( hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_xa),hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),V_x),V_y)) = hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_xa),V_x)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_xa),V_y))
     <= class_RealVector_Oreal__normed__algebra(T_a) ) ).

fof(fact_ln__gt__zero__imp__gt__one,axiom,
    ! [V_x] :
      ( ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_RealDef_Oreal),c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)),V_x))
       => hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_RealDef_Oreal),c_Groups_Oone__class_Oone(tc_RealDef_Oreal)),V_x)) )
     <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_RealDef_Oreal),c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)),c_Transcendental_Oln(V_x))) ) ).

fof(arity_Nat__Onat__Rings_Olinordered__comm__semiring__strict,axiom,
    class_Rings_Olinordered__comm__semiring__strict(tc_Nat_Onat) ).

fof(fact_Suc__leI,axiom,
    ! [V_n,V_m] :
      ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),V_m),V_n))
     => hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,hAPP(c_Nat_OSuc,V_m)),V_n)) ) ).

fof(arity_Nat__Onat__Orderings_Oord,axiom,
    class_Orderings_Oord(tc_Nat_Onat) ).

fof(fact_less__imp__inverse__less,axiom,
    ! [V_b,V_a,T_a] :
      ( ( ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),c_Groups_Ozero__class_Ozero(T_a)),V_a))
         => hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),c_Rings_Oinverse__class_Oinverse(T_a,V_b)),c_Rings_Oinverse__class_Oinverse(T_a,V_a))) )
       <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_a),V_b)) )
     <= class_Fields_Olinordered__field(T_a) ) ).

fof(fact_norm__le__zero__iff,axiom,
    ! [V_x_2,T_a] :
      ( ( c_Groups_Ozero__class_Ozero(T_a) = V_x_2
      <=> hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_RealVector_Onorm__class_Onorm(T_a,V_x_2)),c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal))) )
     <= class_RealVector_Oreal__normed__vector(T_a) ) ).

fof(fact_mult__nonneg__nonneg,axiom,
    ! [V_b,V_a,T_a] :
      ( class_Rings_Oordered__cancel__semiring(T_a)
     => ( ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b)))
         <= hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a)),V_b)) )
       <= hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a)),V_a)) ) ) ).

fof(fact_real__mult__right__cancel,axiom,
    ! [V_b_2,V_a_2,V_ca_2] :
      ( c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal) != V_ca_2
     => ( V_b_2 = V_a_2
      <=> hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),V_b_2),V_ca_2) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),V_a_2),V_ca_2) ) ) ).

fof(fact_comm__semiring__1__class_Onormalizing__semiring__rules_I35_J,axiom,
    ! [V_q,V_x,T_a] :
      ( hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_x),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_x),V_q)) = hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_x),hAPP(c_Nat_OSuc,V_q))
     <= class_Rings_Ocomm__semiring__1(T_a) ) ).

fof(fact_add__Suc__shift,axiom,
    ! [V_n,V_m] : hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Nat_Onat),V_m),hAPP(c_Nat_OSuc,V_n)) = hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Nat_Onat),hAPP(c_Nat_OSuc,V_m)),V_n) ).

fof(fact_div__by__0,axiom,
    ! [V_a,T_a] :
      ( class_Divides_Osemiring__div(T_a)
     => c_Divides_Odiv__class_Odiv(T_a,V_a,c_Groups_Ozero__class_Ozero(T_a)) = c_Groups_Ozero__class_Ozero(T_a) ) ).

fof(fact_real__two__squares__add__zero__iff,axiom,
    ! [V_y_2,V_x_2] :
      ( hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_RealDef_Oreal),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),V_x_2),V_x_2)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),V_y_2),V_y_2)) = c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)
    <=> ( c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal) = V_y_2
        & V_x_2 = c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal) ) ) ).

fof(fact_natfloor__real__of__nat,axiom,
    ! [V_n] : V_n = c_RComplete_Onatfloor(c_RealDef_Oreal(tc_Nat_Onat,V_n)) ).

fof(arity_RealDef__Oreal__RealVector_Oreal__normed__vector,axiom,
    class_RealVector_Oreal__normed__vector(tc_RealDef_Oreal) ).

fof(arity_Int__Oint__Groups_Oordered__ab__semigroup__add,axiom,
    class_Groups_Oordered__ab__semigroup__add(tc_Int_Oint) ).

fof(fact_less__degree__imp,axiom,
    ! [V_p,V_n,T_a] :
      ( ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),V_n),c_Polynomial_Odegree(T_a,V_p)))
       => ? [B_i] :
            ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),V_n),B_i))
            & c_Groups_Ozero__class_Ozero(T_a) != hAPP(c_Polynomial_Ocoeff(T_a,V_p),B_i) ) )
     <= class_Groups_Ozero(T_a) ) ).

fof(arity_RealDef__Oreal__Groups_Oordered__ab__semigroup__add,axiom,
    class_Groups_Oordered__ab__semigroup__add(tc_RealDef_Oreal) ).

fof(fact_div__poly__eq,axiom,
    ! [V_r,V_q,V_y,V_x,T_a] :
      ( class_Fields_Ofield(T_a)
     => ( c_Polynomial_Opdivmod__rel(T_a,V_x,V_y,V_q,V_r)
       => c_Divides_Odiv__class_Odiv(tc_Polynomial_Opoly(T_a),V_x,V_y) = V_q ) ) ).

fof(fact_add__0,axiom,
    ! [V_a,T_a] :
      ( class_Groups_Ocomm__monoid__add(T_a)
     => V_a = hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),c_Groups_Ozero__class_Ozero(T_a)),V_a) ) ).

fof(arity_RealDef__Oreal__Rings_Osemiring,axiom,
    class_Rings_Osemiring(tc_RealDef_Oreal) ).

fof(fact_pos__poly__add,axiom,
    ! [V_q,V_p,T_a] :
      ( ( c_Polynomial_Opos__poly(T_a,V_p)
       => ( c_Polynomial_Opos__poly(T_a,hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Polynomial_Opoly(T_a)),V_p),V_q))
         <= c_Polynomial_Opos__poly(T_a,V_q) ) )
     <= class_Rings_Olinordered__idom(T_a) ) ).

fof(fact_power__strict__increasing,axiom,
    ! [V_a,V_N,V_n,T_a] :
      ( ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),V_n),V_N))
       => ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_n)),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_N)))
         <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),c_Groups_Oone__class_Oone(T_a)),V_a)) ) )
     <= class_Rings_Olinordered__semidom(T_a) ) ).

fof(fact_power__Suc2,axiom,
    ! [V_n,V_a,T_a] :
      ( hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),hAPP(c_Nat_OSuc,V_n)) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_n)),V_a)
     <= class_Groups_Omonoid__mult(T_a) ) ).

fof(fact_pos__mod__bound,axiom,
    ! [V_a,V_b] :
      ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Int_Oint),c_Groups_Ozero__class_Ozero(tc_Int_Oint)),V_b))
     => hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Int_Oint),c_Divides_Odiv__class_Omod(tc_Int_Oint,V_a,V_b)),V_b)) ) ).

fof(arity_Complex__Ocomplex__Fields_Ofield,axiom,
    class_Fields_Ofield(tc_Complex_Ocomplex) ).

fof(fact_power__inverse,axiom,
    ! [V_n,V_a,T_a] :
      ( class_Rings_Odivision__ring__inverse__zero(T_a)
     => hAPP(hAPP(c_Power_Opower__class_Opower(T_a),c_Rings_Oinverse__class_Oinverse(T_a,V_a)),V_n) = c_Rings_Oinverse__class_Oinverse(T_a,hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_n)) ) ).

fof(fact_neq0__conv,axiom,
    ! [V_n_2] :
      ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),c_Groups_Ozero__class_Ozero(tc_Nat_Onat)),V_n_2))
    <=> V_n_2 != c_Groups_Ozero__class_Ozero(tc_Nat_Onat) ) ).

fof(fact_gr__implies__not0,axiom,
    ! [V_n,V_m] :
      ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),V_m),V_n))
     => c_Groups_Ozero__class_Ozero(tc_Nat_Onat) != V_n ) ).

fof(fact_real__zero__not__eq__one,axiom,
    c_Groups_Oone__class_Oone(tc_RealDef_Oreal) != c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal) ).

fof(fact_comm__semiring__1__class_Onormalizing__semiring__rules_I12_J,axiom,
    ! [V_a,T_a] :
      ( class_Rings_Ocomm__semiring__1(T_a)
     => hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),c_Groups_Oone__class_Oone(T_a)) = V_a ) ).

fof(fact_negative__imp__inverse__negative,axiom,
    ! [V_a,T_a] :
      ( ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_a),c_Groups_Ozero__class_Ozero(T_a)))
       => hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),c_Rings_Oinverse__class_Oinverse(T_a,V_a)),c_Groups_Ozero__class_Ozero(T_a))) )
     <= class_Fields_Olinordered__field(T_a) ) ).

fof(arity_Nat__Onat__Groups_Ozero,axiom,
    class_Groups_Ozero(tc_Nat_Onat) ).

fof(fact_add__leD2,axiom,
    ! [V_n,V_k,V_m] :
      ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_k),V_n))
     <= hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Nat_Onat),V_m),V_k)),V_n)) ) ).

fof(fact_divisors__zero,axiom,
    ! [V_b,V_a,T_a] :
      ( ( c_Groups_Ozero__class_Ozero(T_a) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b)
       => ( c_Groups_Ozero__class_Ozero(T_a) = V_b
          | V_a = c_Groups_Ozero__class_Ozero(T_a) ) )
     <= class_Rings_Ono__zero__divisors(T_a) ) ).

fof(arity_Complex__Ocomplex__Semiring__Normalization_Ocomm__semiring__1__cancel__crossproduct,axiom,
    class_Semiring__Normalization_Ocomm__semiring__1__cancel__crossproduct(tc_Complex_Ocomplex) ).

fof(fact_LeastI,axiom,
    ! [V_k_2,V_P_2,T_a] :
      ( class_Orderings_Owellorder(T_a)
     => ( hBOOL(hAPP(V_P_2,V_k_2))
       => hBOOL(hAPP(V_P_2,c_Orderings_Oord__class_OLeast(T_a,V_P_2))) ) ) ).

fof(arity_Int__Oint__Groups_Ocancel__comm__monoid__add,axiom,
    class_Groups_Ocancel__comm__monoid__add(tc_Int_Oint) ).

fof(fact_one__reorient,axiom,
    ! [V_x_2,T_a] :
      ( ( V_x_2 = c_Groups_Oone__class_Oone(T_a)
      <=> c_Groups_Oone__class_Oone(T_a) = V_x_2 )
     <= class_Groups_Oone(T_a) ) ).

fof(fact_mod__le__divisor,axiom,
    ! [V_m,V_n] :
      ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,c_Divides_Odiv__class_Omod(tc_Nat_Onat,V_m,V_n)),V_n))
     <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),c_Groups_Ozero__class_Ozero(tc_Nat_Onat)),V_n)) ) ).

fof(fact_less__diff__iff,axiom,
    ! [V_n_2,V_m_2,V_k_2] :
      ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_k_2),V_m_2))
     => ( ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),hAPP(hAPP(c_Groups_Ominus__class_Ominus(tc_Nat_Onat),V_m_2),V_k_2)),hAPP(hAPP(c_Groups_Ominus__class_Ominus(tc_Nat_Onat),V_n_2),V_k_2)))
        <=> hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),V_m_2),V_n_2)) )
       <= hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_k_2),V_n_2)) ) ) ).

fof(fact_coeff__add,axiom,
    ! [V_n,V_q,V_p,T_a] :
      ( class_Groups_Ocomm__monoid__add(T_a)
     => hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),hAPP(c_Polynomial_Ocoeff(T_a,V_p),V_n)),hAPP(c_Polynomial_Ocoeff(T_a,V_q),V_n)) = hAPP(c_Polynomial_Ocoeff(T_a,hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Polynomial_Opoly(T_a)),V_p),V_q)),V_n) ) ).

fof(fact_zmod__zmult2__eq,axiom,
    ! [V_b,V_a,V_c] :
      ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Int_Oint),c_Groups_Ozero__class_Ozero(tc_Int_Oint)),V_c))
     => hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Int_Oint),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_b),c_Divides_Odiv__class_Omod(tc_Int_Oint,c_Divides_Odiv__class_Odiv(tc_Int_Oint,V_a,V_b),V_c))),c_Divides_Odiv__class_Omod(tc_Int_Oint,V_a,V_b)) = c_Divides_Odiv__class_Omod(tc_Int_Oint,V_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_b),V_c)) ) ).

fof(fact_zero__le__double__add__iff__zero__le__single__add,axiom,
    ! [V_a_2,T_a] :
      ( ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a)),hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),V_a_2),V_a_2)))
      <=> hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a)),V_a_2)) )
     <= class_Groups_Olinordered__ab__group__add(T_a) ) ).

fof(arity_Complex__Ocomplex__Rings_Odivision__ring,axiom,
    class_Rings_Odivision__ring(tc_Complex_Ocomplex) ).

fof(fact_Suc__mult__cancel1,axiom,
    ! [V_n_2,V_m_2,V_k_2] :
      ( V_m_2 = V_n_2
    <=> hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),hAPP(c_Nat_OSuc,V_k_2)),V_n_2) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),hAPP(c_Nat_OSuc,V_k_2)),V_m_2) ) ).

fof(fact_power__mono,axiom,
    ! [V_n,V_b,V_a,T_a] :
      ( ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,V_a),V_b))
       => ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a)),V_a))
         => hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_n)),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_b),V_n))) ) )
     <= class_Rings_Olinordered__semidom(T_a) ) ).

fof(fact_pdivmod__rel__smult__right,axiom,
    ! [V_r,V_q,V_y,V_x,V_a,T_a] :
      ( ( V_a != c_Groups_Ozero__class_Ozero(T_a)
       => ( c_Polynomial_Opdivmod__rel(T_a,V_x,c_Polynomial_Osmult(T_a,V_a,V_y),c_Polynomial_Osmult(T_a,c_Rings_Oinverse__class_Oinverse(T_a,V_a),V_q),V_r)
         <= c_Polynomial_Opdivmod__rel(T_a,V_x,V_y,V_q,V_r) ) )
     <= class_Fields_Ofield(T_a) ) ).

fof(fact_mult__mono,axiom,
    ! [V_d,V_c,V_b,V_a,T_a] :
      ( ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,V_a),V_b))
       => ( ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a)),V_b))
           => ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a)),V_c))
             => hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_c)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b),V_d))) ) )
         <= hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,V_c),V_d)) ) )
     <= class_Rings_Oordered__semiring(T_a) ) ).

fof(arity_Nat__Onat__Rings_Oordered__semiring,axiom,
    class_Rings_Oordered__semiring(tc_Nat_Onat) ).

fof(fact_div__pos__pos__trivial,axiom,
    ! [V_b,V_a] :
      ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint)),V_a))
     => ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Int_Oint),V_a),V_b))
       => c_Groups_Ozero__class_Ozero(tc_Int_Oint) = c_Divides_Odiv__class_Odiv(tc_Int_Oint,V_a,V_b) ) ) ).

fof(arity_RealDef__Oreal__Groups_Ocancel__semigroup__add,axiom,
    class_Groups_Ocancel__semigroup__add(tc_RealDef_Oreal) ).

fof(fact_nat__mult__le__cancel1,axiom,
    ! [V_n_2,V_m_2,V_k_2] :
      ( ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m_2),V_n_2))
      <=> hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_k_2),V_m_2)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_k_2),V_n_2))) )
     <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),c_Groups_Ozero__class_Ozero(tc_Nat_Onat)),V_k_2)) ) ).

fof(fact_Suc__n__not__n,axiom,
    ! [V_n] : V_n != hAPP(c_Nat_OSuc,V_n) ).

fof(fact_ab__semigroup__add__class_Oadd__ac_I1_J,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( class_Groups_Oab__semigroup__add(T_a)
     => hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),V_a),V_b)),V_c) = hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),V_a),hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),V_b),V_c)) ) ).

fof(fact_power__real__of__nat,axiom,
    ! [V_n,V_m] : hAPP(hAPP(c_Power_Opower__class_Opower(tc_RealDef_Oreal),c_RealDef_Oreal(tc_Nat_Onat,V_m)),V_n) = c_RealDef_Oreal(tc_Nat_Onat,hAPP(hAPP(c_Power_Opower__class_Opower(tc_Nat_Onat),V_m),V_n)) ).

fof(arity_RealDef__Oreal__Rings_Odivision__ring,axiom,
    class_Rings_Odivision__ring(tc_RealDef_Oreal) ).

fof(fact_nat__mod__eq__lemma,axiom,
    ! [V_y,V_n,V_x] :
      ( ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_y),V_x))
       => ? [B_q] : hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Nat_Onat),V_y),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_n),B_q)) = V_x )
     <= c_Divides_Odiv__class_Omod(tc_Nat_Onat,V_x,V_n) = c_Divides_Odiv__class_Omod(tc_Nat_Onat,V_y,V_n) ) ).

fof(fact_div__0,axiom,
    ! [V_a,T_a] :
      ( c_Groups_Ozero__class_Ozero(T_a) = c_Divides_Odiv__class_Odiv(T_a,c_Groups_Ozero__class_Ozero(T_a),V_a)
     <= class_Divides_Osemiring__div(T_a) ) ).

fof(fact_ln__gt__zero,axiom,
    ! [V_x] :
      ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_RealDef_Oreal),c_Groups_Oone__class_Oone(tc_RealDef_Oreal)),V_x))
     => hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_RealDef_Oreal),c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)),c_Transcendental_Oln(V_x))) ) ).

fof(fact_norm__add__less,axiom,
    ! [V_s,V_y,V_r,V_x,T_a] :
      ( ( ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_RealDef_Oreal),c_RealVector_Onorm__class_Onorm(T_a,hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),V_x),V_y))),hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_RealDef_Oreal),V_r),V_s)))
         <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_RealDef_Oreal),c_RealVector_Onorm__class_Onorm(T_a,V_y)),V_s)) )
       <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_RealDef_Oreal),c_RealVector_Onorm__class_Onorm(T_a,V_x)),V_r)) )
     <= class_RealVector_Oreal__normed__vector(T_a) ) ).

fof(arity_Polynomial__Opoly__Rings_Oordered__cancel__semiring,axiom,
    ! [T_1] :
      ( class_Rings_Oordered__cancel__semiring(tc_Polynomial_Opoly(T_1))
     <= class_Rings_Olinordered__idom(T_1) ) ).

fof(fact_mod__mult__eq,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( c_Divides_Odiv__class_Omod(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Divides_Odiv__class_Omod(T_a,V_a,V_c)),c_Divides_Odiv__class_Omod(T_a,V_b,V_c)),V_c) = c_Divides_Odiv__class_Omod(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b),V_c)
     <= class_Divides_Osemiring__div(T_a) ) ).

fof(fact_real__add__mult__distrib,axiom,
    ! [V_w,V_z2,V_z1] : hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_RealDef_Oreal),V_z1),V_z2)),V_w) = hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_RealDef_Oreal),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),V_z1),V_w)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),V_z2),V_w)) ).

fof(fact_zmod__zero,axiom,
    ! [V_b] : c_Divides_Odiv__class_Omod(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_b) = c_Groups_Ozero__class_Ozero(tc_Int_Oint) ).

fof(fact_comm__semiring__1__class_Onormalizing__semiring__rules_I22_J,axiom,
    ! [V_d,V_c,V_a,T_a] :
      ( hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),V_c),hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),V_a),V_d)) = hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),V_a),hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),V_c),V_d))
     <= class_Rings_Ocomm__semiring__1(T_a) ) ).

fof(fact_zero__le__power,axiom,
    ! [V_n,V_a,T_a] :
      ( ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a)),V_a))
       => hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a)),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_n))) )
     <= class_Rings_Olinordered__semidom(T_a) ) ).

fof(fact_xt1_I11_J,axiom,
    ! [V_a,V_b,T_a] :
      ( ( ( V_a != V_b
         => hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_b),V_a)) )
       <= hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,V_b),V_a)) )
     <= class_Orderings_Oorder(T_a) ) ).

fof(fact_zmod__eq__0__iff,axiom,
    ! [V_d_2,V_m_2] :
      ( c_Divides_Odiv__class_Omod(tc_Int_Oint,V_m_2,V_d_2) = c_Groups_Ozero__class_Ozero(tc_Int_Oint)
    <=> ? [B_q] : hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_d_2),B_q) = V_m_2 ) ).

fof(fact_smult__diff__left,axiom,
    ! [V_p,V_b,V_a,T_a] :
      ( class_Rings_Ocomm__ring(T_a)
     => c_Polynomial_Osmult(T_a,hAPP(hAPP(c_Groups_Ominus__class_Ominus(T_a),V_a),V_b),V_p) = hAPP(hAPP(c_Groups_Ominus__class_Ominus(tc_Polynomial_Opoly(T_a)),c_Polynomial_Osmult(T_a,V_a,V_p)),c_Polynomial_Osmult(T_a,V_b,V_p)) ) ).

fof(fact_mult__Suc__right,axiom,
    ! [V_n,V_m] : hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_m),hAPP(c_Nat_OSuc,V_n)) = hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Nat_Onat),V_m),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_m),V_n)) ).

fof(fact_order__less__imp__le,axiom,
    ! [V_y,V_x,T_a] :
      ( class_Orderings_Opreorder(T_a)
     => ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_x),V_y))
       => hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,V_x),V_y)) ) ) ).

fof(fact_power__power__power,axiom,
    ! [T_a] :
      ( c_Power_Opower_Opower(T_a,c_Groups_Oone__class_Oone(T_a),c_Groups_Otimes__class_Otimes(T_a)) = c_Power_Opower__class_Opower(T_a)
     <= class_Power_Opower(T_a) ) ).

fof(fact_add__left__mono,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( class_Groups_Oordered__ab__semigroup__add(T_a)
     => ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,V_a),V_b))
       => hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),V_c),V_a)),hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),V_c),V_b))) ) ) ).

fof(fact_degree__smult__eq,axiom,
    ! [V_p,V_a,T_a] :
      ( ( ( c_Groups_Ozero__class_Ozero(T_a) != V_a
         => c_Polynomial_Odegree(T_a,c_Polynomial_Osmult(T_a,V_a,V_p)) = c_Polynomial_Odegree(T_a,V_p) )
        & ( c_Groups_Ozero__class_Ozero(tc_Nat_Onat) = c_Polynomial_Odegree(T_a,c_Polynomial_Osmult(T_a,V_a,V_p))
         <= V_a = c_Groups_Ozero__class_Ozero(T_a) ) )
     <= class_Rings_Oidom(T_a) ) ).

fof(fact_zdiv__zero,axiom,
    ! [V_b] : c_Groups_Ozero__class_Ozero(tc_Int_Oint) = c_Divides_Odiv__class_Odiv(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_b) ).

fof(fact_mult__less__cancel__right__disj,axiom,
    ! [V_b_2,V_ca_2,V_a_2,T_a] :
      ( class_Rings_Olinordered__ring__strict(T_a)
     => ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a_2),V_ca_2)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b_2),V_ca_2)))
      <=> ( ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_ca_2),c_Groups_Ozero__class_Ozero(T_a)))
            & hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_b_2),V_a_2)) )
          | ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_a_2),V_b_2))
            & hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),c_Groups_Ozero__class_Ozero(T_a)),V_ca_2)) ) ) ) ) ).

fof(fact_xt1_I9_J,axiom,
    ! [V_a,V_b,T_a] :
      ( ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_b),V_a))
       => ~ hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_a),V_b)) )
     <= class_Orderings_Oorder(T_a) ) ).

fof(fact_mod__mult__distrib2,axiom,
    ! [V_n,V_m,V_k] : c_Divides_Odiv__class_Omod(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_k),V_m),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_k),V_n)) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_k),c_Divides_Odiv__class_Omod(tc_Nat_Onat,V_m,V_n)) ).

fof(fact_power__eq__imp__eq__base,axiom,
    ! [V_b,V_n,V_a,T_a] :
      ( class_Rings_Olinordered__semidom(T_a)
     => ( ( ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a)),V_b))
           => ( V_a = V_b
             <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),c_Groups_Ozero__class_Ozero(tc_Nat_Onat)),V_n)) ) )
         <= hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a)),V_a)) )
       <= hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_b),V_n) = hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_n) ) ) ).

fof(fact_neg__imp__zdiv__nonneg__iff,axiom,
    ! [V_a_2,V_b_2] :
      ( ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,V_a_2),c_Groups_Ozero__class_Ozero(tc_Int_Oint)))
      <=> hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint)),c_Divides_Odiv__class_Odiv(tc_Int_Oint,V_a_2,V_b_2))) )
     <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Int_Oint),V_b_2),c_Groups_Ozero__class_Ozero(tc_Int_Oint))) ) ).

fof(fact_comm__semiring__1__class_Onormalizing__semiring__rules_I30_J,axiom,
    ! [V_q,V_y,V_x,T_a] :
      ( class_Rings_Ocomm__semiring__1(T_a)
     => hAPP(hAPP(c_Power_Opower__class_Opower(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_x),V_y)),V_q) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_x),V_q)),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_y),V_q)) ) ).

fof(fact_real__of__nat__zero__iff,axiom,
    ! [V_n_2] :
      ( c_Groups_Ozero__class_Ozero(tc_Nat_Onat) = V_n_2
    <=> c_RealDef_Oreal(tc_Nat_Onat,V_n_2) = c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal) ) ).

fof(fact_zmult__1,axiom,
    ! [V_z] : V_z = hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),c_Groups_Oone__class_Oone(tc_Int_Oint)),V_z) ).

fof(fact_pdivmod__rel__by__0__iff,axiom,
    ! [V_r_2,V_qa_2,V_x_2,T_a] :
      ( class_Fields_Ofield(T_a)
     => ( ( V_qa_2 = c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a))
          & V_r_2 = V_x_2 )
      <=> c_Polynomial_Opdivmod__rel(T_a,V_x_2,c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a)),V_qa_2,V_r_2) ) ) ).

fof(fact_zless__add1__eq,axiom,
    ! [V_z_2,V_w_2] :
      ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Int_Oint),V_w_2),hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Int_Oint),V_z_2),c_Groups_Oone__class_Oone(tc_Int_Oint))))
    <=> ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Int_Oint),V_w_2),V_z_2))
        | V_z_2 = V_w_2 ) ) ).

fof(fact__096_B_Bthesis_O_A_I_B_Bq_O_A_091_124_Apsize_Aq_A_061_Apsize_Ap_059_AALL_Ax_O_Apoly_Aq_Ax_A_061_Apoly_Ap_A_Ic_A_L_Ax_J_A_124_093_A_061_061_062_Athesis_J_A_061_061_062_Athesis_096,axiom,
    ~ ! [B_q] :
        ( ~ ! [B_x] : hAPP(c_Polynomial_Opoly(tc_Complex_Ocomplex,B_q),B_x) = hAPP(c_Polynomial_Opoly(tc_Complex_Ocomplex,v_pa____),hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Complex_Ocomplex),v_c____),B_x))
       <= c_Fundamental__Theorem__Algebra__Mirabelle_Opsize(tc_Complex_Ocomplex,B_q) = c_Fundamental__Theorem__Algebra__Mirabelle_Opsize(tc_Complex_Ocomplex,v_pa____) ) ).

fof(fact_add__right__imp__eq,axiom,
    ! [V_c,V_a,V_b,T_a] :
      ( class_Groups_Ocancel__semigroup__add(T_a)
     => ( V_c = V_b
       <= hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),V_c),V_a) = hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),V_b),V_a) ) ) ).

fof(fact_add__right__cancel,axiom,
    ! [V_ca_2,V_a_2,V_b_2,T_a] :
      ( ( hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),V_b_2),V_a_2) = hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),V_ca_2),V_a_2)
      <=> V_ca_2 = V_b_2 )
     <= class_Groups_Ocancel__semigroup__add(T_a) ) ).

fof(arity_Polynomial__Opoly__Rings_Olinordered__ring__strict,axiom,
    ! [T_1] :
      ( class_Rings_Olinordered__ring__strict(tc_Polynomial_Opoly(T_1))
     <= class_Rings_Olinordered__idom(T_1) ) ).

fof(arity_Polynomial__Opoly__Rings_Olinordered__semiring__1__strict,axiom,
    ! [T_1] :
      ( class_Rings_Olinordered__semiring__1__strict(tc_Polynomial_Opoly(T_1))
     <= class_Rings_Olinordered__idom(T_1) ) ).

fof(fact_power__strict__mono,axiom,
    ! [V_n,V_b,V_a,T_a] :
      ( class_Rings_Olinordered__semidom(T_a)
     => ( ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a)),V_a))
         => ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_n)),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_b),V_n)))
           <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),c_Groups_Ozero__class_Ozero(tc_Nat_Onat)),V_n)) ) )
       <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_a),V_b)) ) ) ).

fof(fact_nat__mult__eq__cancel1,axiom,
    ! [V_n_2,V_m_2,V_k_2] :
      ( ( V_n_2 = V_m_2
      <=> hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_k_2),V_m_2) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_k_2),V_n_2) )
     <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),c_Groups_Ozero__class_Ozero(tc_Nat_Onat)),V_k_2)) ) ).

fof(fact_mult__strict__left__mono__neg,axiom,
    ! [V_c,V_a,V_b,T_a] :
      ( class_Rings_Olinordered__ring__strict(T_a)
     => ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_b),V_a))
       => ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_c),c_Groups_Ozero__class_Ozero(T_a)))
         => hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_c),V_a)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_c),V_b))) ) ) ) ).

fof(fact_split__mult__pos__le,axiom,
    ! [V_b,V_a,T_a] :
      ( class_Rings_Oordered__ring(T_a)
     => ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b)))
       <= ( ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,V_a),c_Groups_Ozero__class_Ozero(T_a)))
            & hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,V_b),c_Groups_Ozero__class_Ozero(T_a))) )
          | ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a)),V_a))
            & hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a)),V_b)) ) ) ) ) ).

fof(help_c__fequal__1,axiom,
    ! [V_y_2,V_x_2] :
      ( V_y_2 = V_x_2
      | ~ hBOOL(hAPP(hAPP(c_fequal,V_x_2),V_y_2)) ) ).

fof(fact_zero__le__natfloor,axiom,
    ! [V_x] : hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat)),c_RComplete_Onatfloor(V_x))) ).

fof(fact_add__nonneg__nonneg,axiom,
    ! [V_b,V_a,T_a] :
      ( class_Groups_Oordered__comm__monoid__add(T_a)
     => ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a)),V_a))
       => ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a)),V_b))
         => hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a)),hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),V_a),V_b))) ) ) ) ).

fof(fact_order__less__le__trans,axiom,
    ! [V_z,V_y,V_x,T_a] :
      ( ( ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_x),V_z))
         <= hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,V_y),V_z)) )
       <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_x),V_y)) )
     <= class_Orderings_Opreorder(T_a) ) ).

fof(fact_div__le__mono,axiom,
    ! [V_k,V_n,V_m] :
      ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,c_Divides_Odiv__class_Odiv(tc_Nat_Onat,V_m,V_k)),c_Divides_Odiv__class_Odiv(tc_Nat_Onat,V_n,V_k)))
     <= hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m),V_n)) ) ).

fof(fact_le__mod__geq,axiom,
    ! [V_m,V_n] :
      ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_n),V_m))
     => c_Divides_Odiv__class_Omod(tc_Nat_Onat,hAPP(hAPP(c_Groups_Ominus__class_Ominus(tc_Nat_Onat),V_m),V_n),V_n) = c_Divides_Odiv__class_Omod(tc_Nat_Onat,V_m,V_n) ) ).

fof(fact_nat__add__assoc,axiom,
    ! [V_k,V_n,V_m] : hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Nat_Onat),hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Nat_Onat),V_m),V_n)),V_k) = hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Nat_Onat),V_m),hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Nat_Onat),V_n),V_k)) ).

fof(fact_div__nonpos__pos__le0,axiom,
    ! [V_b,V_a] :
      ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,V_a),c_Groups_Ozero__class_Ozero(tc_Int_Oint)))
     => ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Int_Oint),c_Groups_Ozero__class_Ozero(tc_Int_Oint)),V_b))
       => hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Divides_Odiv__class_Odiv(tc_Int_Oint,V_a,V_b)),c_Groups_Ozero__class_Ozero(tc_Int_Oint))) ) ) ).

fof(fact_add__pos__pos,axiom,
    ! [V_b,V_a,T_a] :
      ( class_Groups_Oordered__comm__monoid__add(T_a)
     => ( ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),c_Groups_Ozero__class_Ozero(T_a)),hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),V_a),V_b)))
         <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),c_Groups_Ozero__class_Ozero(T_a)),V_b)) )
       <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),c_Groups_Ozero__class_Ozero(T_a)),V_a)) ) ) ).

fof(arity_Nat__Onat__Divides_Osemiring__div,axiom,
    class_Divides_Osemiring__div(tc_Nat_Onat) ).

fof(arity_RealDef__Oreal__Groups_Oordered__cancel__ab__semigroup__add,axiom,
    class_Groups_Oordered__cancel__ab__semigroup__add(tc_RealDef_Oreal) ).

fof(fact_one__le__inverse__iff,axiom,
    ! [V_x_2,T_a] :
      ( class_Fields_Olinordered__field__inverse__zero(T_a)
     => ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Oone__class_Oone(T_a)),c_Rings_Oinverse__class_Oinverse(T_a,V_x_2)))
      <=> ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),c_Groups_Ozero__class_Ozero(T_a)),V_x_2))
          & hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,V_x_2),c_Groups_Oone__class_Oone(T_a))) ) ) ) ).

fof(fact_diff__add__assoc2,axiom,
    ! [V_i,V_j,V_k] :
      ( hAPP(hAPP(c_Groups_Ominus__class_Ominus(tc_Nat_Onat),hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Nat_Onat),V_j),V_i)),V_k) = hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Nat_Onat),hAPP(hAPP(c_Groups_Ominus__class_Ominus(tc_Nat_Onat),V_j),V_k)),V_i)
     <= hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_k),V_j)) ) ).

fof(arity_Int__Oint__Groups_Oab__group__add,axiom,
    class_Groups_Oab__group__add(tc_Int_Oint) ).

fof(fact_termination__basic__simps_I3_J,axiom,
    ! [V_z,V_y,V_x] :
      ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_x),V_y))
     => hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_x),hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Nat_Onat),V_y),V_z))) ) ).

fof(fact_eq__imp__le,axiom,
    ! [V_n,V_m] :
      ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m),V_n))
     <= V_m = V_n ) ).

fof(fact_natfloor__eq,axiom,
    ! [V_x,V_n] :
      ( ( c_RComplete_Onatfloor(V_x) = V_n
       <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_RealDef_Oreal),V_x),hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_RealDef_Oreal),c_RealDef_Oreal(tc_Nat_Onat,V_n)),c_Groups_Oone__class_Oone(tc_RealDef_Oreal)))) )
     <= hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_RealDef_Oreal(tc_Nat_Onat,V_n)),V_x)) ) ).

fof(fact_degree__mult__eq,axiom,
    ! [V_q,V_p,T_a] :
      ( class_Rings_Oidom(T_a)
     => ( ( V_q != c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a))
         => hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Nat_Onat),c_Polynomial_Odegree(T_a,V_p)),c_Polynomial_Odegree(T_a,V_q)) = c_Polynomial_Odegree(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Polynomial_Opoly(T_a)),V_p),V_q)) )
       <= c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a)) != V_p ) ) ).

fof(fact_power__less__imp__less__base,axiom,
    ! [V_b,V_n,V_a,T_a] :
      ( ( ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a)),V_b))
         => hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_a),V_b)) )
       <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_n)),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_b),V_n))) )
     <= class_Rings_Olinordered__semidom(T_a) ) ).

fof(fact_order__degree,axiom,
    ! [V_a,V_p,T_a] :
      ( ( c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a)) != V_p
       => hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,c_Polynomial_Oorder(T_a,V_a,V_p)),c_Polynomial_Odegree(T_a,V_p))) )
     <= class_Rings_Oidom(T_a) ) ).

fof(arity_Nat__Onat__Groups_Oone,axiom,
    class_Groups_Oone(tc_Nat_Onat) ).

fof(fact_assms,axiom,
    ~ c_Fundamental__Theorem__Algebra__Mirabelle_Oconstant(tc_Complex_Ocomplex,tc_Complex_Ocomplex,c_Polynomial_Opoly(tc_Complex_Ocomplex,v_p)) ).

fof(fact_le__square,axiom,
    ! [V_m] : hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_m),V_m))) ).

fof(fact_no__zero__divisors,axiom,
    ! [V_b,V_a,T_a] :
      ( class_Rings_Ono__zero__divisors(T_a)
     => ( ( c_Groups_Ozero__class_Ozero(T_a) != hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b)
         <= c_Groups_Ozero__class_Ozero(T_a) != V_b )
       <= V_a != c_Groups_Ozero__class_Ozero(T_a) ) ) ).

fof(fact_add__gr__0,axiom,
    ! [V_n_2,V_m_2] :
      ( ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),c_Groups_Ozero__class_Ozero(tc_Nat_Onat)),V_m_2))
        | hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),c_Groups_Ozero__class_Ozero(tc_Nat_Onat)),V_n_2)) )
    <=> hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),c_Groups_Ozero__class_Ozero(tc_Nat_Onat)),hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Nat_Onat),V_m_2),V_n_2))) ) ).

fof(fact_add__imp__eq,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( ( V_b = V_c
       <= hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),V_a),V_c) = hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),V_a),V_b) )
     <= class_Groups_Ocancel__ab__semigroup__add(T_a) ) ).

fof(arity_Nat__Onat__Rings_Ocomm__semiring,axiom,
    class_Rings_Ocomm__semiring(tc_Nat_Onat) ).

fof(fact_div__mult__self2__is__id,axiom,
    ! [V_a,V_b,T_a] :
      ( class_Divides_Osemiring__div(T_a)
     => ( V_a = c_Divides_Odiv__class_Odiv(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b),V_b)
       <= c_Groups_Ozero__class_Ozero(T_a) != V_b ) ) ).

fof(fact_mult__less__cancel__left__pos,axiom,
    ! [V_b_2,V_a_2,V_ca_2,T_a] :
      ( class_Rings_Olinordered__ring__strict(T_a)
     => ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),c_Groups_Ozero__class_Ozero(T_a)),V_ca_2))
       => ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_a_2),V_b_2))
        <=> hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_ca_2),V_a_2)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_ca_2),V_b_2))) ) ) ) ).

fof(fact_mult_Ozero__right,axiom,
    ! [V_a,T_a] :
      ( class_RealVector_Oreal__normed__algebra(T_a)
     => hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),c_Groups_Ozero__class_Ozero(T_a)) = c_Groups_Ozero__class_Ozero(T_a) ) ).

fof(fact_zpower__zadd__distrib,axiom,
    ! [V_z,V_y,V_x] : hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),hAPP(hAPP(c_Power_Opower__class_Opower(tc_Int_Oint),V_x),V_y)),hAPP(hAPP(c_Power_Opower__class_Opower(tc_Int_Oint),V_x),V_z)) = hAPP(hAPP(c_Power_Opower__class_Opower(tc_Int_Oint),V_x),hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Nat_Onat),V_y),V_z)) ).

fof(fact_zero__less__double__add__iff__zero__less__single__add,axiom,
    ! [V_a_2,T_a] :
      ( ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),c_Groups_Ozero__class_Ozero(T_a)),V_a_2))
      <=> hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),c_Groups_Ozero__class_Ozero(T_a)),hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),V_a_2),V_a_2))) )
     <= class_Groups_Olinordered__ab__group__add(T_a) ) ).

fof(fact_mult__poly__0__right,axiom,
    ! [V_p,T_a] :
      ( c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a)) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Polynomial_Opoly(T_a)),V_p),c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a)))
     <= class_Rings_Ocomm__semiring__0(T_a) ) ).

fof(arity_Int__Oint__Rings_Olinordered__semiring__strict,axiom,
    class_Rings_Olinordered__semiring__strict(tc_Int_Oint) ).

fof(fact_zero__less__norm__iff,axiom,
    ! [V_x_2,T_a] :
      ( ( V_x_2 != c_Groups_Ozero__class_Ozero(T_a)
      <=> hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_RealDef_Oreal),c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)),c_RealVector_Onorm__class_Onorm(T_a,V_x_2))) )
     <= class_RealVector_Oreal__normed__vector(T_a) ) ).

fof(fact_real__mult__less__iff1,axiom,
    ! [V_y_2,V_x_2,V_z_2] :
      ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_RealDef_Oreal),c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)),V_z_2))
     => ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_RealDef_Oreal),V_x_2),V_y_2))
      <=> hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_RealDef_Oreal),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),V_x_2),V_z_2)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),V_y_2),V_z_2))) ) ) ).

fof(fact_mult__strict__right__mono__neg,axiom,
    ! [V_c,V_a,V_b,T_a] :
      ( ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_b),V_a))
       => ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_c)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b),V_c)))
         <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_c),c_Groups_Ozero__class_Ozero(T_a))) ) )
     <= class_Rings_Olinordered__ring__strict(T_a) ) ).

fof(fact_comm__semiring__1__class_Onormalizing__semiring__rules_I19_J,axiom,
    ! [V_ry,V_rx,V_lx,T_a] :
      ( hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_lx),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_rx),V_ry)) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_rx),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_lx),V_ry))
     <= class_Rings_Ocomm__semiring__1(T_a) ) ).

fof(fact_inverse__le__1__iff,axiom,
    ! [V_x_2,T_a] :
      ( class_Fields_Olinordered__field__inverse__zero(T_a)
     => ( ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Oone__class_Oone(T_a)),V_x_2))
          | hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,V_x_2),c_Groups_Ozero__class_Ozero(T_a))) )
      <=> hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,c_Rings_Oinverse__class_Oinverse(T_a,V_x_2)),c_Groups_Oone__class_Oone(T_a))) ) ) ).

fof(fact_mod__lemma,axiom,
    ! [V_q,V_b,V_r,V_c] :
      ( ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),V_r),V_b))
       => hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Nat_Onat),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_b),c_Divides_Odiv__class_Omod(tc_Nat_Onat,V_q,V_c))),V_r)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_b),V_c))) )
     <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),c_Groups_Ozero__class_Ozero(tc_Nat_Onat)),V_c)) ) ).

fof(fact_real__of__nat__one,axiom,
    c_Groups_Oone__class_Oone(tc_RealDef_Oreal) = c_RealDef_Oreal(tc_Nat_Onat,hAPP(c_Nat_OSuc,c_Groups_Ozero__class_Ozero(tc_Nat_Onat))) ).

fof(fact_norm__mult,axiom,
    ! [V_y,V_x,T_a] :
      ( hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),c_RealVector_Onorm__class_Onorm(T_a,V_x)),c_RealVector_Onorm__class_Onorm(T_a,V_y)) = c_RealVector_Onorm__class_Onorm(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_x),V_y))
     <= class_RealVector_Oreal__normed__div__algebra(T_a) ) ).

fof(fact_neg__mod__sign,axiom,
    ! [V_a,V_b] :
      ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Divides_Odiv__class_Omod(tc_Int_Oint,V_a,V_b)),c_Groups_Ozero__class_Ozero(tc_Int_Oint)))
     <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Int_Oint),V_b),c_Groups_Ozero__class_Ozero(tc_Int_Oint))) ) ).

fof(fact_reals__Archimedean4,axiom,
    ! [V_x,V_y] :
      ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_RealDef_Oreal),c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)),V_y))
     => ( ? [B_n] :
            ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_RealDef_Oreal),V_x),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),c_RealDef_Oreal(tc_Nat_Onat,hAPP(c_Nat_OSuc,B_n))),V_y)))
            & hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),c_RealDef_Oreal(tc_Nat_Onat,B_n)),V_y)),V_x)) )
       <= hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)),V_x)) ) ) ).

fof(arity_Complex__Ocomplex__Int_Oring__char__0,axiom,
    class_Int_Oring__char__0(tc_Complex_Ocomplex) ).

fof(fact_real__of__nat__zero,axiom,
    c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal) = c_RealDef_Oreal(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat)) ).

fof(fact_power__commutes,axiom,
    ! [V_n,V_a,T_a] :
      ( hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_n)) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_n)),V_a)
     <= class_Groups_Omonoid__mult(T_a) ) ).

fof(fact_order__eq__iff,axiom,
    ! [V_y_2,V_x_2,T_a] :
      ( ( V_x_2 = V_y_2
      <=> ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,V_y_2),V_x_2))
          & hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,V_x_2),V_y_2)) ) )
     <= class_Orderings_Oorder(T_a) ) ).

fof(fact_coeff__eq__0,axiom,
    ! [V_n,V_p,T_a] :
      ( class_Groups_Ozero(T_a)
     => ( hAPP(c_Polynomial_Ocoeff(T_a,V_p),V_n) = c_Groups_Ozero__class_Ozero(T_a)
       <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),c_Polynomial_Odegree(T_a,V_p)),V_n)) ) ) ).

fof(fact_mod__mult__self1,axiom,
    ! [V_b,V_c,V_a,T_a] :
      ( class_Divides_Osemiring__div(T_a)
     => c_Divides_Odiv__class_Omod(T_a,V_a,V_b) = c_Divides_Odiv__class_Omod(T_a,hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),V_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_c),V_b)),V_b) ) ).

fof(fact_field__inverse__zero,axiom,
    ! [T_a] :
      ( c_Groups_Ozero__class_Ozero(T_a) = c_Rings_Oinverse__class_Oinverse(T_a,c_Groups_Ozero__class_Ozero(T_a))
     <= class_Fields_Ofield__inverse__zero(T_a) ) ).

fof(fact_le__Suc__ex__iff,axiom,
    ! [V_l_2,V_k_2] :
      ( ? [B_n] : V_l_2 = hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Nat_Onat),V_k_2),B_n)
    <=> hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_k_2),V_l_2)) ) ).

fof(fact_norm__minus__commute,axiom,
    ! [V_b,V_a,T_a] :
      ( class_RealVector_Oreal__normed__vector(T_a)
     => c_RealVector_Onorm__class_Onorm(T_a,hAPP(hAPP(c_Groups_Ominus__class_Ominus(T_a),V_a),V_b)) = c_RealVector_Onorm__class_Onorm(T_a,hAPP(hAPP(c_Groups_Ominus__class_Ominus(T_a),V_b),V_a)) ) ).

fof(fact_norm__eq__zero,axiom,
    ! [V_x_2,T_a] :
      ( class_RealVector_Oreal__normed__vector(T_a)
     => ( V_x_2 = c_Groups_Ozero__class_Ozero(T_a)
      <=> c_RealVector_Onorm__class_Onorm(T_a,V_x_2) = c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal) ) ) ).

fof(fact_le__cube,axiom,
    ! [V_m] : hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_m),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_m),V_m)))) ).

fof(arity_Complex__Ocomplex__Groups_Ocancel__semigroup__add,axiom,
    class_Groups_Ocancel__semigroup__add(tc_Complex_Ocomplex) ).

fof(fact_real__mult__inverse__cancel,axiom,
    ! [V_u,V_y,V_x1,V_x] :
      ( ( ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_RealDef_Oreal),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),V_x1),V_y)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),V_x),V_u)))
         => hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_RealDef_Oreal),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),c_Rings_Oinverse__class_Oinverse(tc_RealDef_Oreal,V_x)),V_y)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),c_Rings_Oinverse__class_Oinverse(tc_RealDef_Oreal,V_x1)),V_u))) )
       <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_RealDef_Oreal),c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)),V_x1)) )
     <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_RealDef_Oreal),c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)),V_x)) ) ).

fof(fact_real__of__nat__Suc__gt__zero,axiom,
    ! [V_n] : hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_RealDef_Oreal),c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)),c_RealDef_Oreal(tc_Nat_Onat,hAPP(c_Nat_OSuc,V_n)))) ).

fof(fact_le__imp__inverse__le__neg,axiom,
    ! [V_b,V_a,T_a] :
      ( class_Fields_Olinordered__field(T_a)
     => ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,V_a),V_b))
       => ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_b),c_Groups_Ozero__class_Ozero(T_a)))
         => hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,c_Rings_Oinverse__class_Oinverse(T_a,V_b)),c_Rings_Oinverse__class_Oinverse(T_a,V_a))) ) ) ) ).

fof(fact_int__0__neq__1,axiom,
    c_Groups_Oone__class_Oone(tc_Int_Oint) != c_Groups_Ozero__class_Ozero(tc_Int_Oint) ).

fof(arity_Polynomial__Opoly__Rings_Osemiring,axiom,
    ! [T_1] :
      ( class_Rings_Osemiring(tc_Polynomial_Opoly(T_1))
     <= class_Rings_Ocomm__semiring__0(T_1) ) ).

fof(fact_odd__nonzero,axiom,
    ! [V_z] : c_Groups_Ozero__class_Ozero(tc_Int_Oint) != hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Int_Oint),hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Int_Oint),c_Groups_Oone__class_Oone(tc_Int_Oint)),V_z)),V_z) ).

fof(arity_RealDef__Oreal__Rings_Oordered__cancel__semiring,axiom,
    class_Rings_Oordered__cancel__semiring(tc_RealDef_Oreal) ).

fof(fact_zero__le__square,axiom,
    ! [V_a,T_a] :
      ( class_Rings_Olinordered__ring(T_a)
     => hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_a))) ) ).

fof(arity_RealDef__Oreal__Rings_Oring__no__zero__divisors,axiom,
    class_Rings_Oring__no__zero__divisors(tc_RealDef_Oreal) ).

fof(fact_pos__imp__zdiv__pos__iff,axiom,
    ! [V_i_2,V_k_2] :
      ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Int_Oint),c_Groups_Ozero__class_Ozero(tc_Int_Oint)),V_k_2))
     => ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,V_k_2),V_i_2))
      <=> hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Int_Oint),c_Groups_Ozero__class_Ozero(tc_Int_Oint)),c_Divides_Odiv__class_Odiv(tc_Int_Oint,V_i_2,V_k_2))) ) ) ).

fof(fact_monoseq__def,axiom,
    ! [V_X_2,T_a] :
      ( class_Orderings_Oorder(T_a)
     => ( c_SEQ_Omonoseq(T_a,V_X_2)
      <=> ( ! [B_m,B_n] :
              ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,B_m),B_n))
             => hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,hAPP(V_X_2,B_m)),hAPP(V_X_2,B_n))) )
          | ! [B_m,B_n] :
              ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,B_m),B_n))
             => hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,hAPP(V_X_2,B_n)),hAPP(V_X_2,B_m))) ) ) ) ) ).

fof(fact_power__less__imp__less__exp,axiom,
    ! [V_n,V_m,V_a,T_a] :
      ( class_Rings_Olinordered__semidom(T_a)
     => ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),c_Groups_Oone__class_Oone(T_a)),V_a))
       => ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),V_m),V_n))
         <= hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_m)),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_n))) ) ) ) ).

fof(fact_mult__right_Ononneg__bounded,axiom,
    ! [V_x,T_a] :
      ( ? [B_K] :
          ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)),B_K))
          & ! [B_x] : hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_RealVector_Onorm__class_Onorm(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_x),B_x))),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),c_RealVector_Onorm__class_Onorm(T_a,B_x)),B_K))) )
     <= class_RealVector_Oreal__normed__algebra(T_a) ) ).

fof(fact_mod__diff__right__eq,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( class_Divides_Oring__div(T_a)
     => c_Divides_Odiv__class_Omod(T_a,hAPP(hAPP(c_Groups_Ominus__class_Ominus(T_a),V_a),c_Divides_Odiv__class_Omod(T_a,V_b,V_c)),V_c) = c_Divides_Odiv__class_Omod(T_a,hAPP(hAPP(c_Groups_Ominus__class_Ominus(T_a),V_a),V_b),V_c) ) ).

fof(fact_degree__0,axiom,
    ! [T_a] :
      ( class_Groups_Ozero(T_a)
     => c_Polynomial_Odegree(T_a,c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a))) = c_Groups_Ozero__class_Ozero(tc_Nat_Onat) ) ).

fof(fact_add__nonpos__nonpos,axiom,
    ! [V_b,V_a,T_a] :
      ( class_Groups_Oordered__comm__monoid__add(T_a)
     => ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,V_a),c_Groups_Ozero__class_Ozero(T_a)))
       => ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,V_b),c_Groups_Ozero__class_Ozero(T_a)))
         => hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Groups_Oplus__class_Oplus(T_a),V_a),V_b)),c_Groups_Ozero__class_Ozero(T_a))) ) ) ) ).

fof(fact_natfloor__zero,axiom,
    c_RComplete_Onatfloor(c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)) = c_Groups_Ozero__class_Ozero(tc_Nat_Onat) ).

fof(fact_power__0__left,axiom,
    ! [V_n,T_a] :
      ( ( class_Power_Opower(T_a)
        & class_Rings_Osemiring__0(T_a) )
     => ( ( V_n != c_Groups_Ozero__class_Ozero(tc_Nat_Onat)
         => c_Groups_Ozero__class_Ozero(T_a) = hAPP(hAPP(c_Power_Opower__class_Opower(T_a),c_Groups_Ozero__class_Ozero(T_a)),V_n) )
        & ( c_Groups_Oone__class_Oone(T_a) = hAPP(hAPP(c_Power_Opower__class_Opower(T_a),c_Groups_Ozero__class_Ozero(T_a)),V_n)
         <= V_n = c_Groups_Ozero__class_Ozero(tc_Nat_Onat) ) ) ) ).

fof(arity_Nat__Onat__Groups_Oab__semigroup__mult,axiom,
    class_Groups_Oab__semigroup__mult(tc_Nat_Onat) ).

fof(arity_Polynomial__Opoly__Groups_Ocomm__monoid__add,axiom,
    ! [T_1] :
      ( class_Groups_Ocomm__monoid__add(tc_Polynomial_Opoly(T_1))
     <= class_Groups_Ocomm__monoid__add(T_1) ) ).

fof(fact_self__quotient__aux2,axiom,
    ! [V_q,V_r,V_a] :
      ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Int_Oint),c_Groups_Ozero__class_Ozero(tc_Int_Oint)),V_a))
     => ( ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,V_q),c_Groups_Oone__class_Oone(tc_Int_Oint)))
         <= hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint)),V_r)) )
       <= V_a = hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Int_Oint),V_r),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_a),V_q)) ) ) ).

fof(fact_leading__coeff__neq__0,axiom,
    ! [V_p,T_a] :
      ( class_Groups_Ozero(T_a)
     => ( c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a)) != V_p
       => c_Groups_Ozero__class_Ozero(T_a) != hAPP(c_Polynomial_Ocoeff(T_a,V_p),c_Polynomial_Odegree(T_a,V_p)) ) ) ).

fof(fact_poly__mult,axiom,
    ! [V_x,V_q,V_p,T_a] :
      ( class_Rings_Ocomm__semiring__0(T_a)
     => hAPP(c_Polynomial_Opoly(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Polynomial_Opoly(T_a)),V_p),V_q)),V_x) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),hAPP(c_Polynomial_Opoly(T_a,V_p),V_x)),hAPP(c_Polynomial_Opoly(T_a,V_q),V_x)) ) ).

fof(fact_incseq__def,axiom,
    ! [V_X_2,T_a] :
      ( ( c_SEQ_Oincseq(T_a,V_X_2)
      <=> ! [B_m,B_n] :
            ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,B_m),B_n))
           => hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,hAPP(V_X_2,B_m)),hAPP(V_X_2,B_n))) ) )
     <= class_Orderings_Oorder(T_a) ) ).

fof(fact_ln__gt__zero__iff,axiom,
    ! [V_x_2] :
      ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_RealDef_Oreal),c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)),V_x_2))
     => ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_RealDef_Oreal),c_Groups_Oone__class_Oone(tc_RealDef_Oreal)),V_x_2))
      <=> hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_RealDef_Oreal),c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)),c_Transcendental_Oln(V_x_2))) ) ) ).

fof(fact_not__leE,axiom,
    ! [V_x,V_y,T_a] :
      ( ( hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(T_a),V_x),V_y))
       <= ~ hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(T_a,V_y),V_x)) )
     <= class_Orderings_Olinorder(T_a) ) ).

fof(fact_add__Suc,axiom,
    ! [V_n,V_m] : hAPP(c_Nat_OSuc,hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Nat_Onat),V_m),V_n)) = hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Nat_Onat),hAPP(c_Nat_OSuc,V_m)),V_n) ).

fof(fact_q_I2_J,axiom,
    ! [B_x] : hAPP(c_Polynomial_Opoly(tc_Complex_Ocomplex,v_pa____),hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Complex_Ocomplex),v_c____),B_x)) = hAPP(c_Polynomial_Opoly(tc_Complex_Ocomplex,v_q____),B_x) ).

fof(fact_trans__le__add2,axiom,
    ! [V_m,V_j,V_i] :
      ( hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_i),hAPP(hAPP(c_Groups_Oplus__class_Oplus(tc_Nat_Onat),V_m),V_j)))
     <= hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_i),V_j)) ) ).

fof(fact_eq__zero__or__degree__less,axiom,
    ! [V_n,V_p,T_a] :
      ( class_Groups_Ozero(T_a)
     => ( ( c_Groups_Ozero__class_Ozero(T_a) = hAPP(c_Polynomial_Ocoeff(T_a,V_p),V_n)
         => ( c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a)) = V_p
            | hBOOL(hAPP(hAPP(c_Orderings_Oord__class_Oless(tc_Nat_Onat),c_Polynomial_Odegree(T_a,V_p)),V_n)) ) )
       <= hBOOL(hAPP(c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,c_Polynomial_Odegree(T_a,V_p)),V_n)) ) ) ).

