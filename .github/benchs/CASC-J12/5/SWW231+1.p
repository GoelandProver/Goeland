fof(fact_double__add__less__zero__iff__single__add__less__zero,axiom,
    ! [V_aa_2,T_a] :
      ( class_Groups_Olinordered__ab__group__add(T_a)
     => ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Oplus__class_Oplus(T_a,V_aa_2,V_aa_2),c_Groups_Ozero__class_Ozero(T_a))
      <=> c_Orderings_Oord__class_Oless(T_a,V_aa_2,c_Groups_Ozero__class_Ozero(T_a)) ) ) ).

fof(fact_diff__mult__distrib,axiom,
    ! [V_k,V_n,V_m] : c_Groups_Ominus__class_Ominus(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_m),V_k),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_n),V_k)) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_m,V_n)),V_k) ).

fof(arity_RealDef__Oreal__Groups_Osgn__if,axiom,
    class_Groups_Osgn__if(tc_RealDef_Oreal) ).

fof(fact_complex__of__real__def,axiom,
    ! [V_r] : c_RealVector_Oof__real(tc_Complex_Ocomplex,V_r) = c_Complex_Ocomplex_OComplex(V_r,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)) ).

fof(fact_zadd__left__commute,axiom,
    ! [V_z,V_y,V_x] : c_Groups_Oplus__class_Oplus(tc_Int_Oint,V_x,c_Groups_Oplus__class_Oplus(tc_Int_Oint,V_y,V_z)) = c_Groups_Oplus__class_Oplus(tc_Int_Oint,V_y,c_Groups_Oplus__class_Oplus(tc_Int_Oint,V_x,V_z)) ).

fof(fact_ln__exp,axiom,
    ! [V_x] : c_Transcendental_Oln(c_Transcendental_Oexp(tc_RealDef_Oreal,V_x)) = V_x ).

fof(fact_ln__mult,axiom,
    ! [V_y,V_x] :
      ( ( c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),V_y)
       => c_Groups_Oplus__class_Oplus(tc_RealDef_Oreal,c_Transcendental_Oln(V_x),c_Transcendental_Oln(V_y)) = c_Transcendental_Oln(hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),V_x),V_y)) )
     <= c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),V_x) ) ).

fof(fact_abs__Re__le__cmod,axiom,
    ! [V_x] : c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Oabs__class_Oabs(tc_RealDef_Oreal,c_Complex_ORe(V_x)),c_RealVector_Onorm__class_Onorm(tc_Complex_Ocomplex,V_x)) ).

fof(fact_complex__i__not__one,axiom,
    c_Groups_Oone__class_Oone(tc_Complex_Ocomplex) != c_Complex_Oii ).

fof(arity_RealDef__Oreal__Rings_Ono__zero__divisors,axiom,
    class_Rings_Ono__zero__divisors(tc_RealDef_Oreal) ).

fof(fact_Bseq__iff2,axiom,
    ! [V_X_2,T_a] :
      ( class_RealVector_Oreal__normed__vector(T_a)
     => ( ? [B_k] :
            ( c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),B_k)
            & ? [B_x] :
              ! [B_n] : c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_RealVector_Onorm__class_Onorm(T_a,c_Groups_Oplus__class_Oplus(T_a,hAPP(V_X_2,B_n),c_Groups_Ouminus__class_Ouminus(T_a,B_x))),B_k) )
      <=> c_SEQ_OBseq(T_a,V_X_2) ) ) ).

fof(fact_sin__npi,axiom,
    ! [V_n] : c_Transcendental_Osin(hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),c_RealDef_Oreal(tc_Nat_Onat,V_n)),c_Transcendental_Opi)) = c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal) ).

fof(fact_sin__gt__zero__pi,axiom,
    ! [V_x] :
      ( c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),V_x)
     => ( c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),c_Transcendental_Osin(V_x))
       <= c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,V_x,c_Transcendental_Opi) ) ) ).

fof(fact_le__eq__less__or__eq,axiom,
    ! [V_n_2,V_m_2] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m_2,V_n_2)
    <=> ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_m_2,V_n_2)
        | V_m_2 = V_n_2 ) ) ).

fof(arity_Nat__Onat__Groups_Oordered__ab__semigroup__add,axiom,
    class_Groups_Oordered__ab__semigroup__add(tc_Nat_Onat) ).

fof(fact_less__not__refl3,axiom,
    ! [V_t,V_s] :
      ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_s,V_t)
     => V_t != V_s ) ).

fof(fact_even__less__0__iff,axiom,
    ! [V_aa_2,T_a] :
      ( class_Rings_Olinordered__idom(T_a)
     => ( c_Orderings_Oord__class_Oless(T_a,V_aa_2,c_Groups_Ozero__class_Ozero(T_a))
      <=> c_Orderings_Oord__class_Oless(T_a,c_Groups_Oplus__class_Oplus(T_a,V_aa_2,V_aa_2),c_Groups_Ozero__class_Ozero(T_a)) ) ) ).

fof(arity_Int__Oint__Groups_Oab__group__add,axiom,
    class_Groups_Oab__group__add(tc_Int_Oint) ).

fof(fact_comm__semiring__class_Odistrib,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Groups_Oplus__class_Oplus(T_a,V_a,V_b)),V_c) = c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_c),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b),V_c))
     <= class_Rings_Ocomm__semiring(T_a) ) ).

fof(fact_sgn__times,axiom,
    ! [V_b,V_a,T_a] :
      ( hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Groups_Osgn__class_Osgn(T_a,V_a)),c_Groups_Osgn__class_Osgn(T_a,V_b)) = c_Groups_Osgn__class_Osgn(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b))
     <= class_Rings_Olinordered__idom(T_a) ) ).

fof(fact_natfloor__add__one,axiom,
    ! [V_x] :
      ( c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),V_x)
     => c_Groups_Oplus__class_Oplus(tc_Nat_Onat,c_RComplete_Onatfloor(V_x),c_Groups_Oone__class_Oone(tc_Nat_Onat)) = c_RComplete_Onatfloor(c_Groups_Oplus__class_Oplus(tc_RealDef_Oreal,V_x,c_Groups_Oone__class_Oone(tc_RealDef_Oreal))) ) ).

fof(fact_zero__le__one,axiom,
    ! [T_a] :
      ( class_Rings_Olinordered__semidom(T_a)
     => c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),c_Groups_Oone__class_Oone(T_a)) ) ).

fof(fact_diffs0__imp__equal,axiom,
    ! [V_n,V_m] :
      ( ( V_n = V_m
       <= c_Groups_Ozero__class_Ozero(tc_Nat_Onat) = c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_n,V_m) )
     <= c_Groups_Ozero__class_Ozero(tc_Nat_Onat) = c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_m,V_n) ) ).

fof(fact_abs__le__zero__iff,axiom,
    ! [V_aa_2,T_a] :
      ( class_Groups_Oordered__ab__group__add__abs(T_a)
     => ( c_Groups_Ozero__class_Ozero(T_a) = V_aa_2
      <=> c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Oabs__class_Oabs(T_a,V_aa_2),c_Groups_Ozero__class_Ozero(T_a)) ) ) ).

fof(fact_eq__imp__le,axiom,
    ! [V_n,V_m] :
      ( V_n = V_m
     => c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m,V_n) ) ).

fof(fact_diff__cancel2,axiom,
    ! [V_n,V_k,V_m] : c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_m,V_n) = c_Groups_Ominus__class_Ominus(tc_Nat_Onat,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_m,V_k),c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_n,V_k)) ).

fof(fact_le__square,axiom,
    ! [V_m] : c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_m),V_m)) ).

fof(fact_self__quotient__aux2,axiom,
    ! [V_q,V_r,V_a] :
      ( c_Orderings_Oord__class_Oless(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_a)
     => ( ( c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,V_q,c_Groups_Oone__class_Oone(tc_Int_Oint))
         <= c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_r) )
       <= V_a = c_Groups_Oplus__class_Oplus(tc_Int_Oint,V_r,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_a),V_q)) ) ) ).

fof(fact_mult__left_Ominus,axiom,
    ! [V_y,V_x,T_a] :
      ( hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Groups_Ouminus__class_Ouminus(T_a,V_x)),V_y) = c_Groups_Ouminus__class_Ouminus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_x),V_y))
     <= class_RealVector_Oreal__normed__algebra(T_a) ) ).

fof(fact_real__add__less__0__iff,axiom,
    ! [V_y_2,V_x_2] :
      ( c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_Groups_Oplus__class_Oplus(tc_RealDef_Oreal,V_x_2,V_y_2),c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal))
    <=> c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,V_y_2,c_Groups_Ouminus__class_Ouminus(tc_RealDef_Oreal,V_x_2)) ) ).

fof(fact_minus__add,axiom,
    ! [V_b,V_a,T_a] :
      ( c_Groups_Ouminus__class_Ouminus(T_a,c_Groups_Oplus__class_Oplus(T_a,V_a,V_b)) = c_Groups_Oplus__class_Oplus(T_a,c_Groups_Ouminus__class_Ouminus(T_a,V_b),c_Groups_Ouminus__class_Ouminus(T_a,V_a))
     <= class_Groups_Ogroup__add(T_a) ) ).

fof(fact_real__mult__left__cancel,axiom,
    ! [V_b_2,V_aa_2,V_c_2] :
      ( ( hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),V_c_2),V_b_2) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),V_c_2),V_aa_2)
      <=> V_aa_2 = V_b_2 )
     <= V_c_2 != c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal) ) ).

fof(fact_zless__imp__add1__zle,axiom,
    ! [V_z,V_w] :
      ( c_Orderings_Oord__class_Oless(tc_Int_Oint,V_w,V_z)
     => c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Oplus__class_Oplus(tc_Int_Oint,V_w,c_Groups_Oone__class_Oone(tc_Int_Oint)),V_z) ) ).

fof(fact_power__strict__mono,axiom,
    ! [V_n,V_b,V_a,T_a] :
      ( class_Rings_Olinordered__semidom(T_a)
     => ( ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_a)
         => ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_n)
           => c_Orderings_Oord__class_Oless(T_a,hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_n),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_b),V_n)) ) )
       <= c_Orderings_Oord__class_Oless(T_a,V_a,V_b) ) ) ).

fof(fact_add__diff__inverse,axiom,
    ! [V_n,V_m] :
      ( V_m = c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_n,c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_m,V_n))
     <= ~ c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_m,V_n) ) ).

fof(arity_RealDef__Oreal__Semiring__Normalization_Ocomm__semiring__1__cancel__crossproduct,axiom,
    class_Semiring__Normalization_Ocomm__semiring__1__cancel__crossproduct(tc_RealDef_Oreal) ).

fof(fact_norm__add__less,axiom,
    ! [V_s,V_y,V_r,V_x,T_a] :
      ( class_RealVector_Oreal__normed__vector(T_a)
     => ( c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_RealVector_Onorm__class_Onorm(T_a,V_x),V_r)
       => ( c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_RealVector_Onorm__class_Onorm(T_a,c_Groups_Oplus__class_Oplus(T_a,V_x,V_y)),c_Groups_Oplus__class_Oplus(tc_RealDef_Oreal,V_r,V_s))
         <= c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_RealVector_Onorm__class_Onorm(T_a,V_y),V_s) ) ) ) ).

fof(fact_Im_Obounded,axiom,
    ? [B_K] :
    ! [B_x] : c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_RealVector_Onorm__class_Onorm(tc_RealDef_Oreal,c_Complex_OIm(B_x)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),c_RealVector_Onorm__class_Onorm(tc_Complex_Ocomplex,B_x)),B_K)) ).

fof(arity_RealDef__Oreal__Groups_Ouminus,axiom,
    class_Groups_Ouminus(tc_RealDef_Oreal) ).

fof(arity_Nat__Onat__Semiring__Normalization_Ocomm__semiring__1__cancel__crossproduct,axiom,
    class_Semiring__Normalization_Ocomm__semiring__1__cancel__crossproduct(tc_Nat_Onat) ).

fof(fact_diff__eq__diff__less__eq,axiom,
    ! [V_d_2,V_c_2,V_b_2,V_aa_2,T_a] :
      ( class_Groups_Oordered__ab__group__add(T_a)
     => ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_c_2,V_d_2)
        <=> c_Orderings_Oord__class_Oless__eq(T_a,V_aa_2,V_b_2) )
       <= c_Groups_Ominus__class_Ominus(T_a,V_aa_2,V_b_2) = c_Groups_Ominus__class_Ominus(T_a,V_c_2,V_d_2) ) ) ).

fof(fact_ord__eq__le__trans,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_b,V_c)
         => c_Orderings_Oord__class_Oless__eq(T_a,V_a,V_c) )
       <= V_b = V_a )
     <= class_Orderings_Oord(T_a) ) ).

fof(arity_Int__Oint__Rings_Osemiring,axiom,
    class_Rings_Osemiring(tc_Int_Oint) ).

fof(fact_add__increasing2,axiom,
    ! [V_a,V_b,V_c,T_a] :
      ( ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_c)
       => ( c_Orderings_Oord__class_Oless__eq(T_a,V_b,c_Groups_Oplus__class_Oplus(T_a,V_a,V_c))
         <= c_Orderings_Oord__class_Oless__eq(T_a,V_b,V_a) ) )
     <= class_Groups_Oordered__comm__monoid__add(T_a) ) ).

fof(fact_add__minus__cancel,axiom,
    ! [V_b,V_a,T_a] :
      ( c_Groups_Oplus__class_Oplus(T_a,V_a,c_Groups_Oplus__class_Oplus(T_a,c_Groups_Ouminus__class_Ouminus(T_a,V_a),V_b)) = V_b
     <= class_Groups_Ogroup__add(T_a) ) ).

fof(fact_order__less__le,axiom,
    ! [V_y_2,V_x_2,T_a] :
      ( class_Orderings_Oorder(T_a)
     => ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_x_2,V_y_2)
          & V_x_2 != V_y_2 )
      <=> c_Orderings_Oord__class_Oless(T_a,V_x_2,V_y_2) ) ) ).

fof(fact_equal__neg__zero,axiom,
    ! [V_aa_2,T_a] :
      ( ( c_Groups_Ouminus__class_Ouminus(T_a,V_aa_2) = V_aa_2
      <=> c_Groups_Ozero__class_Ozero(T_a) = V_aa_2 )
     <= class_Groups_Olinordered__ab__group__add(T_a) ) ).

fof(fact_le__diff__iff,axiom,
    ! [V_n_2,V_m_2,V_k_2] :
      ( ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_k_2,V_n_2)
       => ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m_2,V_n_2)
        <=> c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_m_2,V_k_2),c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_n_2,V_k_2)) ) )
     <= c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_k_2,V_m_2) ) ).

fof(fact_nat__eq__add__iff2,axiom,
    ! [V_n_2,V_m_2,V_u_2,V_j_2,V_i_2] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_i_2,V_j_2)
     => ( c_Groups_Oplus__class_Oplus(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_j_2),V_u_2),V_n_2) = c_Groups_Oplus__class_Oplus(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_i_2),V_u_2),V_m_2)
      <=> c_Groups_Oplus__class_Oplus(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_j_2,V_i_2)),V_u_2),V_n_2) = V_m_2 ) ) ).

fof(fact_sin__zero__abs__cos__one,axiom,
    ! [V_x] :
      ( c_Transcendental_Osin(V_x) = c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)
     => c_Groups_Oabs__class_Oabs(tc_RealDef_Oreal,c_Transcendental_Ocos(V_x)) = c_Groups_Oone__class_Oone(tc_RealDef_Oreal) ) ).

fof(fact_sgn__pos,axiom,
    ! [V_a,T_a] :
      ( ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_a)
       => c_Groups_Oone__class_Oone(T_a) = c_Groups_Osgn__class_Osgn(T_a,V_a) )
     <= class_Rings_Olinordered__idom(T_a) ) ).

fof(fact_xt1_I12_J,axiom,
    ! [V_b,V_a,T_a] :
      ( ( ( c_Orderings_Oord__class_Oless(T_a,V_b,V_a)
         <= c_Orderings_Oord__class_Oless__eq(T_a,V_b,V_a) )
       <= V_b != V_a )
     <= class_Orderings_Oorder(T_a) ) ).

fof(fact_mult_Oadd__left,axiom,
    ! [V_b,V_a_H,V_a,T_a] :
      ( hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Groups_Oplus__class_Oplus(T_a,V_a,V_a_H)),V_b) = c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a_H),V_b))
     <= class_RealVector_Oreal__normed__algebra(T_a) ) ).

fof(fact_cos__monotone__0__pi_H,axiom,
    ! [V_x,V_y] :
      ( ( ( c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Transcendental_Ocos(V_x),c_Transcendental_Ocos(V_y))
         <= c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,V_x,c_Transcendental_Opi) )
       <= c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,V_y,V_x) )
     <= c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),V_y) ) ).

fof(fact_sin__periodic__pi,axiom,
    ! [V_x] : c_Groups_Ouminus__class_Ouminus(tc_RealDef_Oreal,c_Transcendental_Osin(V_x)) = c_Transcendental_Osin(c_Groups_Oplus__class_Oplus(tc_RealDef_Oreal,V_x,c_Transcendental_Opi)) ).

fof(fact_abs__not__less__zero,axiom,
    ! [V_a,T_a] :
      ( ~ c_Orderings_Oord__class_Oless(T_a,c_Groups_Oabs__class_Oabs(T_a,V_a),c_Groups_Ozero__class_Ozero(T_a))
     <= class_Groups_Oordered__ab__group__add__abs(T_a) ) ).

fof(fact_q__neg__lemma,axiom,
    ! [V_r_H,V_q_H,V_b_H] :
      ( ( c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_r_H)
       => ( c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,V_q_H,c_Groups_Ozero__class_Ozero(tc_Int_Oint))
         <= c_Orderings_Oord__class_Oless(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_b_H) ) )
     <= c_Orderings_Oord__class_Oless(tc_Int_Oint,c_Groups_Oplus__class_Oplus(tc_Int_Oint,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_b_H),V_q_H),V_r_H),c_Groups_Ozero__class_Ozero(tc_Int_Oint)) ) ).

fof(fact_Re,axiom,
    ! [V_y,V_x] : V_x = c_Complex_ORe(c_Complex_Ocomplex_OComplex(V_x,V_y)) ).

fof(fact_norm__not__less__zero,axiom,
    ! [V_x,T_a] :
      ( ~ c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_RealVector_Onorm__class_Onorm(T_a,V_x),c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal))
     <= class_RealVector_Oreal__normed__vector(T_a) ) ).

fof(arity_Complex__Ocomplex__Rings_Omult__zero,axiom,
    class_Rings_Omult__zero(tc_Complex_Ocomplex) ).

fof(fact_abs__of__neg,axiom,
    ! [V_a,T_a] :
      ( ( c_Orderings_Oord__class_Oless(T_a,V_a,c_Groups_Ozero__class_Ozero(T_a))
       => c_Groups_Oabs__class_Oabs(T_a,V_a) = c_Groups_Ouminus__class_Ouminus(T_a,V_a) )
     <= class_Groups_Oordered__ab__group__add__abs(T_a) ) ).

fof(arity_RealDef__Oreal__Groups_Omonoid__add,axiom,
    class_Groups_Omonoid__add(tc_RealDef_Oreal) ).

fof(fact_minus__mult__left,axiom,
    ! [V_b,V_a,T_a] :
      ( c_Groups_Ouminus__class_Ouminus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b)) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Groups_Ouminus__class_Ouminus(T_a,V_a)),V_b)
     <= class_Rings_Oring(T_a) ) ).

fof(arity_Complex__Ocomplex__Rings_Oring__no__zero__divisors,axiom,
    class_Rings_Oring__no__zero__divisors(tc_Complex_Ocomplex) ).

fof(fact_order__le__imp__less__or__eq,axiom,
    ! [V_y,V_x,T_a] :
      ( class_Orderings_Oorder(T_a)
     => ( c_Orderings_Oord__class_Oless__eq(T_a,V_x,V_y)
       => ( V_x = V_y
          | c_Orderings_Oord__class_Oless(T_a,V_x,V_y) ) ) ) ).

fof(arity_Int__Oint__Rings_Oring__1,axiom,
    class_Rings_Oring__1(tc_Int_Oint) ).

fof(fact_xt1_I3_J,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( ( V_a = V_b
       => ( c_Orderings_Oord__class_Oless__eq(T_a,V_c,V_b)
         => c_Orderings_Oord__class_Oless__eq(T_a,V_c,V_a) ) )
     <= class_Orderings_Oorder(T_a) ) ).

fof(fact_zadd__0,axiom,
    ! [V_z] : c_Groups_Oplus__class_Oplus(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_z) = V_z ).

fof(fact_mult__left__mono__neg,axiom,
    ! [V_c,V_a,V_b,T_a] :
      ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_b,V_a)
       => ( c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_c),V_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_c),V_b))
         <= c_Orderings_Oord__class_Oless__eq(T_a,V_c,c_Groups_Ozero__class_Ozero(T_a)) ) )
     <= class_Rings_Oordered__ring(T_a) ) ).

fof(fact_cos__arg__i__mult__zero__neg,axiom,
    ! [V_y] :
      ( c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal) = c_Transcendental_Ocos(c_Complex_Oarg(c_Complex_Ocomplex_OComplex(c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),V_y)))
     <= c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,V_y,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)) ) ).

fof(fact_ln__gt__zero,axiom,
    ! [V_x] :
      ( c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),c_Transcendental_Oln(V_x))
     <= c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_Groups_Oone__class_Oone(tc_RealDef_Oreal),V_x) ) ).

fof(fact_real__sqrt__ge__one,axiom,
    ! [V_x] :
      ( c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Oone__class_Oone(tc_RealDef_Oreal),V_x)
     => c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Oone__class_Oone(tc_RealDef_Oreal),c_NthRoot_Osqrt(V_x)) ) ).

fof(fact_real__le__antisym,axiom,
    ! [V_w,V_z] :
      ( ( V_w = V_z
       <= c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,V_w,V_z) )
     <= c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,V_z,V_w) ) ).

fof(arity_RealDef__Oreal__Orderings_Oord,axiom,
    class_Orderings_Oord(tc_RealDef_Oreal) ).

fof(fact_mult__1,axiom,
    ! [V_a,T_a] :
      ( class_Groups_Ocomm__monoid__mult(T_a)
     => hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Groups_Oone__class_Oone(T_a)),V_a) = V_a ) ).

fof(fact_add__0,axiom,
    ! [V_a,T_a] :
      ( class_Groups_Ocomm__monoid__add(T_a)
     => c_Groups_Oplus__class_Oplus(T_a,c_Groups_Ozero__class_Ozero(T_a),V_a) = V_a ) ).

fof(fact_mult__strict__left__mono,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( ( ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_c)
         => c_Orderings_Oord__class_Oless(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_c),V_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_c),V_b)) )
       <= c_Orderings_Oord__class_Oless(T_a,V_a,V_b) )
     <= class_Rings_Olinordered__semiring__strict(T_a) ) ).

fof(fact_zle__diff1__eq,axiom,
    ! [V_z_2,V_w_2] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,V_w_2,c_Groups_Ominus__class_Ominus(tc_Int_Oint,V_z_2,c_Groups_Oone__class_Oone(tc_Int_Oint)))
    <=> c_Orderings_Oord__class_Oless(tc_Int_Oint,V_w_2,V_z_2) ) ).

fof(fact_add__less__cancel__left,axiom,
    ! [V_b_2,V_aa_2,V_c_2,T_a] :
      ( class_Groups_Oordered__ab__semigroup__add__imp__le(T_a)
     => ( c_Orderings_Oord__class_Oless(T_a,V_aa_2,V_b_2)
      <=> c_Orderings_Oord__class_Oless(T_a,c_Groups_Oplus__class_Oplus(T_a,V_c_2,V_aa_2),c_Groups_Oplus__class_Oplus(T_a,V_c_2,V_b_2)) ) ) ).

fof(fact_add__le__imp__le__left,axiom,
    ! [V_b,V_a,V_c,T_a] :
      ( ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Oplus__class_Oplus(T_a,V_c,V_a),c_Groups_Oplus__class_Oplus(T_a,V_c,V_b))
       => c_Orderings_Oord__class_Oless__eq(T_a,V_a,V_b) )
     <= class_Groups_Oordered__ab__semigroup__add__imp__le(T_a) ) ).

fof(fact_abs__real__of__nat__cancel,axiom,
    ! [V_x] : c_Groups_Oabs__class_Oabs(tc_RealDef_Oreal,c_RealDef_Oreal(tc_Nat_Onat,V_x)) = c_RealDef_Oreal(tc_Nat_Onat,V_x) ).

fof(fact_real__sqrt__le__iff,axiom,
    ! [V_y_2,V_x_2] :
      ( c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_NthRoot_Osqrt(V_x_2),c_NthRoot_Osqrt(V_y_2))
    <=> c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,V_x_2,V_y_2) ) ).

fof(fact_zabs__less__one__iff,axiom,
    ! [V_z_2] :
      ( c_Orderings_Oord__class_Oless(tc_Int_Oint,c_Groups_Oabs__class_Oabs(tc_Int_Oint,V_z_2),c_Groups_Oone__class_Oone(tc_Int_Oint))
    <=> c_Groups_Ozero__class_Ozero(tc_Int_Oint) = V_z_2 ) ).

fof(arity_Nat__Onat__Groups_Oone,axiom,
    class_Groups_Oone(tc_Nat_Onat) ).

fof(arity_Nat__Onat__Groups_Ominus,axiom,
    class_Groups_Ominus(tc_Nat_Onat) ).

fof(fact_cos__le__one,axiom,
    ! [V_x] : c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Transcendental_Ocos(V_x),c_Groups_Oone__class_Oone(tc_RealDef_Oreal)) ).

fof(fact_equation__minus__iff,axiom,
    ! [V_b_2,V_aa_2,T_a] :
      ( ( V_aa_2 = c_Groups_Ouminus__class_Ouminus(T_a,V_b_2)
      <=> c_Groups_Ouminus__class_Ouminus(T_a,V_aa_2) = V_b_2 )
     <= class_Groups_Ogroup__add(T_a) ) ).

fof(fact_zless__le,axiom,
    ! [V_w_2,V_z_2] :
      ( ( c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,V_z_2,V_w_2)
        & V_z_2 != V_w_2 )
    <=> c_Orderings_Oord__class_Oless(tc_Int_Oint,V_z_2,V_w_2) ) ).

fof(fact_abs__eq__mult,axiom,
    ! [V_b,V_a,T_a] :
      ( class_Rings_Oordered__ring__abs(T_a)
     => ( hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Groups_Oabs__class_Oabs(T_a,V_a)),c_Groups_Oabs__class_Oabs(T_a,V_b)) = c_Groups_Oabs__class_Oabs(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b))
       <= ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_b,c_Groups_Ozero__class_Ozero(T_a))
            | c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_b) )
          & ( c_Orderings_Oord__class_Oless__eq(T_a,V_a,c_Groups_Ozero__class_Ozero(T_a))
            | c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_a) ) ) ) ) ).

fof(fact_Re_Oadd,axiom,
    ! [V_y,V_x] : c_Complex_ORe(c_Groups_Oplus__class_Oplus(tc_Complex_Ocomplex,V_x,V_y)) = c_Groups_Oplus__class_Oplus(tc_RealDef_Oreal,c_Complex_ORe(V_x),c_Complex_ORe(V_y)) ).

fof(arity_Int__Oint__Rings_Olinordered__semiring__1__strict,axiom,
    class_Rings_Olinordered__semiring__1__strict(tc_Int_Oint) ).

fof(fact_sin__diff,axiom,
    ! [V_y,V_x] : c_Transcendental_Osin(c_Groups_Ominus__class_Ominus(tc_RealDef_Oreal,V_x,V_y)) = c_Groups_Ominus__class_Ominus(tc_RealDef_Oreal,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),c_Transcendental_Osin(V_x)),c_Transcendental_Ocos(V_y)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),c_Transcendental_Ocos(V_x)),c_Transcendental_Osin(V_y))) ).

fof(fact_diff__0__eq__0,axiom,
    ! [V_n] : c_Groups_Ominus__class_Ominus(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_n) = c_Groups_Ozero__class_Ozero(tc_Nat_Onat) ).

fof(fact_neg__0__equal__iff__equal,axiom,
    ! [V_aa_2,T_a] :
      ( class_Groups_Ogroup__add(T_a)
     => ( c_Groups_Ozero__class_Ozero(T_a) = c_Groups_Ouminus__class_Ouminus(T_a,V_aa_2)
      <=> c_Groups_Ozero__class_Ozero(T_a) = V_aa_2 ) ) ).

fof(fact_diff__less,axiom,
    ! [V_m,V_n] :
      ( ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_m)
       => c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_m,V_n),V_m) )
     <= c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_n) ) ).

fof(fact_complex__of__real__power,axiom,
    ! [V_n,V_x] : hAPP(hAPP(c_Power_Opower__class_Opower(tc_Complex_Ocomplex),c_RealVector_Oof__real(tc_Complex_Ocomplex,V_x)),V_n) = c_RealVector_Oof__real(tc_Complex_Ocomplex,hAPP(hAPP(c_Power_Opower__class_Opower(tc_RealDef_Oreal),V_x),V_n)) ).

fof(fact_real__0__le__add__iff,axiom,
    ! [V_y_2,V_x_2] :
      ( c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Ouminus__class_Ouminus(tc_RealDef_Oreal,V_x_2),V_y_2)
    <=> c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),c_Groups_Oplus__class_Oplus(tc_RealDef_Oreal,V_x_2,V_y_2)) ) ).

fof(fact_real__mult__right__cancel,axiom,
    ! [V_b_2,V_aa_2,V_c_2] :
      ( ( hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),V_b_2),V_c_2) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),V_aa_2),V_c_2)
      <=> V_aa_2 = V_b_2 )
     <= V_c_2 != c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal) ) ).

fof(fact_exp__eq__one__iff,axiom,
    ! [V_x_2] :
      ( c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal) = V_x_2
    <=> c_Groups_Oone__class_Oone(tc_RealDef_Oreal) = c_Transcendental_Oexp(tc_RealDef_Oreal,V_x_2) ) ).

fof(fact_zminus__zminus,axiom,
    ! [V_z] : V_z = c_Groups_Ouminus__class_Ouminus(tc_Int_Oint,c_Groups_Ouminus__class_Ouminus(tc_Int_Oint,V_z)) ).

fof(arity_Complex__Ocomplex__RealVector_Oreal__algebra__1,axiom,
    class_RealVector_Oreal__algebra__1(tc_Complex_Ocomplex) ).

fof(arity_RealDef__Oreal__Rings_Oring__1,axiom,
    class_Rings_Oring__1(tc_RealDef_Oreal) ).

fof(fact_pos__zmult__eq__1__iff,axiom,
    ! [V_n_2,V_m_2] :
      ( c_Orderings_Oord__class_Oless(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_m_2)
     => ( ( c_Groups_Oone__class_Oone(tc_Int_Oint) = V_n_2
          & V_m_2 = c_Groups_Oone__class_Oone(tc_Int_Oint) )
      <=> c_Groups_Oone__class_Oone(tc_Int_Oint) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_m_2),V_n_2) ) ) ).

fof(fact_real__sqrt__mult__self__sum__ge__zero,axiom,
    ! [V_y,V_x] : c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),c_NthRoot_Osqrt(c_Groups_Oplus__class_Oplus(tc_RealDef_Oreal,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),V_x),V_x),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),V_y),V_y)))) ).

fof(fact_power__0__left,axiom,
    ! [V_n,T_a] :
      ( ( class_Power_Opower(T_a)
        & class_Rings_Osemiring__0(T_a) )
     => ( ( c_Groups_Oone__class_Oone(T_a) = hAPP(hAPP(c_Power_Opower__class_Opower(T_a),c_Groups_Ozero__class_Ozero(T_a)),V_n)
         <= V_n = c_Groups_Ozero__class_Ozero(tc_Nat_Onat) )
        & ( c_Groups_Ozero__class_Ozero(T_a) = hAPP(hAPP(c_Power_Opower__class_Opower(T_a),c_Groups_Ozero__class_Ozero(T_a)),V_n)
         <= V_n != c_Groups_Ozero__class_Ozero(tc_Nat_Onat) ) ) ) ).

fof(fact_le__funE,axiom,
    ! [V_x_2,V_g_2,V_f_2,T_a,T_b] :
      ( class_Orderings_Oord(T_b)
     => ( c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,T_b),V_f_2,V_g_2)
       => c_Orderings_Oord__class_Oless__eq(T_b,hAPP(V_f_2,V_x_2),hAPP(V_g_2,V_x_2)) ) ) ).

fof(fact_real__add__eq__0__iff,axiom,
    ! [V_y_2,V_x_2] :
      ( c_Groups_Oplus__class_Oplus(tc_RealDef_Oreal,V_x_2,V_y_2) = c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)
    <=> V_y_2 = c_Groups_Ouminus__class_Ouminus(tc_RealDef_Oreal,V_x_2) ) ).

fof(fact_add__leE,axiom,
    ! [V_n,V_k,V_m] :
      ( ~ ( ~ c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_k,V_n)
         <= c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m,V_n) )
     <= c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_m,V_k),V_n) ) ).

fof(fact_real__sqrt__zero,axiom,
    c_NthRoot_Osqrt(c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)) = c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal) ).

fof(fact_zle__linear,axiom,
    ! [V_w,V_z] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,V_z,V_w)
      | c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,V_w,V_z) ) ).

fof(fact_cos__arccos__abs,axiom,
    ! [V_y] :
      ( c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Oabs__class_Oabs(tc_RealDef_Oreal,V_y),c_Groups_Oone__class_Oone(tc_RealDef_Oreal))
     => c_Transcendental_Ocos(c_Transcendental_Oarccos(V_y)) = V_y ) ).

fof(arity_Nat__Onat__Orderings_Olinorder,axiom,
    class_Orderings_Olinorder(tc_Nat_Onat) ).

fof(fact_square__eq__1__iff,axiom,
    ! [V_x_2,T_a] :
      ( ( c_Groups_Oone__class_Oone(T_a) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_x_2),V_x_2)
      <=> ( c_Groups_Oone__class_Oone(T_a) = V_x_2
          | c_Groups_Ouminus__class_Ouminus(T_a,c_Groups_Oone__class_Oone(T_a)) = V_x_2 ) )
     <= class_Rings_Oring__1__no__zero__divisors(T_a) ) ).

fof(fact_diff__def,axiom,
    ! [V_b,V_a,T_a] :
      ( c_Groups_Ominus__class_Ominus(T_a,V_a,V_b) = c_Groups_Oplus__class_Oplus(T_a,V_a,c_Groups_Ouminus__class_Ouminus(T_a,V_b))
     <= class_Groups_Ogroup__add(T_a) ) ).

fof(fact_add__pos__pos,axiom,
    ! [V_b,V_a,T_a] :
      ( class_Groups_Oordered__comm__monoid__add(T_a)
     => ( ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_b)
         => c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),c_Groups_Oplus__class_Oplus(T_a,V_a,V_b)) )
       <= c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_a) ) ) ).

fof(fact_mult__left_Oadd,axiom,
    ! [V_ya,V_y,V_x,T_a] :
      ( class_RealVector_Oreal__normed__algebra(T_a)
     => c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_x),V_ya),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_y),V_ya)) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Groups_Oplus__class_Oplus(T_a,V_x,V_y)),V_ya) ) ).

fof(fact_sin__cos__squared__add3,axiom,
    ! [V_x] : c_Groups_Oone__class_Oone(tc_RealDef_Oreal) = c_Groups_Oplus__class_Oplus(tc_RealDef_Oreal,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),c_Transcendental_Ocos(V_x)),c_Transcendental_Ocos(V_x)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),c_Transcendental_Osin(V_x)),c_Transcendental_Osin(V_x))) ).

fof(fact_sgn__1__neg,axiom,
    ! [V_aa_2,T_a] :
      ( ( c_Groups_Osgn__class_Osgn(T_a,V_aa_2) = c_Groups_Ouminus__class_Ouminus(T_a,c_Groups_Oone__class_Oone(T_a))
      <=> c_Orderings_Oord__class_Oless(T_a,V_aa_2,c_Groups_Ozero__class_Ozero(T_a)) )
     <= class_Rings_Olinordered__idom(T_a) ) ).

fof(fact_less__iff__diff__less__0,axiom,
    ! [V_b_2,V_aa_2,T_a] :
      ( ( c_Orderings_Oord__class_Oless(T_a,V_aa_2,V_b_2)
      <=> c_Orderings_Oord__class_Oless(T_a,c_Groups_Ominus__class_Ominus(T_a,V_aa_2,V_b_2),c_Groups_Ozero__class_Ozero(T_a)) )
     <= class_Groups_Oordered__ab__group__add(T_a) ) ).

fof(fact_add__leD1,axiom,
    ! [V_n,V_k,V_m] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m,V_n)
     <= c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_m,V_k),V_n) ) ).

fof(fact_norm__triangle__ineq,axiom,
    ! [V_y,V_x,T_a] :
      ( class_RealVector_Oreal__normed__vector(T_a)
     => c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_RealVector_Onorm__class_Onorm(T_a,c_Groups_Oplus__class_Oplus(T_a,V_x,V_y)),c_Groups_Oplus__class_Oplus(tc_RealDef_Oreal,c_RealVector_Onorm__class_Onorm(T_a,V_x),c_RealVector_Onorm__class_Onorm(T_a,V_y))) ) ).

fof(arity_RealDef__Oreal__Groups_Ocomm__monoid__mult,axiom,
    class_Groups_Ocomm__monoid__mult(tc_RealDef_Oreal) ).

fof(fact_complex__eq__cancel__iff2,axiom,
    ! [V_xa_2,V_y_2,V_x_2] :
      ( c_RealVector_Oof__real(tc_Complex_Ocomplex,V_xa_2) = c_Complex_Ocomplex_OComplex(V_x_2,V_y_2)
    <=> ( V_y_2 = c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)
        & V_xa_2 = V_x_2 ) ) ).

fof(fact_ln__unique,axiom,
    ! [V_x,V_y] :
      ( V_x = c_Transcendental_Oexp(tc_RealDef_Oreal,V_y)
     => V_y = c_Transcendental_Oln(V_x) ) ).

fof(fact_zero__le__mult__iff,axiom,
    ! [V_b_2,V_aa_2,T_a] :
      ( ( ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_aa_2,c_Groups_Ozero__class_Ozero(T_a))
            & c_Orderings_Oord__class_Oless__eq(T_a,V_b_2,c_Groups_Ozero__class_Ozero(T_a)) )
          | ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_b_2)
            & c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_aa_2) ) )
      <=> c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_aa_2),V_b_2)) )
     <= class_Rings_Olinordered__ring__strict(T_a) ) ).

fof(fact_add__0__iff,axiom,
    ! [V_aa_2,V_b_2,T_a] :
      ( ( c_Groups_Oplus__class_Oplus(T_a,V_b_2,V_aa_2) = V_b_2
      <=> c_Groups_Ozero__class_Ozero(T_a) = V_aa_2 )
     <= class_Semiring__Normalization_Ocomm__semiring__1__cancel__crossproduct(T_a) ) ).

fof(fact_less__not__refl,axiom,
    ! [V_n] : ~ c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_n,V_n) ).

fof(fact_xt1_I7_J,axiom,
    ! [V_z,V_x,V_y,T_a] :
      ( ( ( c_Orderings_Oord__class_Oless(T_a,V_z,V_x)
         <= c_Orderings_Oord__class_Oless__eq(T_a,V_z,V_y) )
       <= c_Orderings_Oord__class_Oless(T_a,V_y,V_x) )
     <= class_Orderings_Oorder(T_a) ) ).

fof(fact_linorder__not__le,axiom,
    ! [V_y_2,V_x_2,T_a] :
      ( class_Orderings_Olinorder(T_a)
     => ( c_Orderings_Oord__class_Oless(T_a,V_y_2,V_x_2)
      <=> ~ c_Orderings_Oord__class_Oless__eq(T_a,V_x_2,V_y_2) ) ) ).

fof(fact_comm__semiring__1__class_Onormalizing__semiring__rules_I30_J,axiom,
    ! [V_q,V_y,V_x,T_a] :
      ( class_Rings_Ocomm__semiring__1(T_a)
     => hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_x),V_q)),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_y),V_q)) = hAPP(hAPP(c_Power_Opower__class_Opower(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_x),V_y)),V_q) ) ).

fof(arity_fun__Orderings_Opreorder,axiom,
    ! [T_2,T_1] :
      ( class_Orderings_Opreorder(T_1)
     => class_Orderings_Opreorder(tc_fun(T_2,T_1)) ) ).

fof(fact_diff__cancel,axiom,
    ! [V_n,V_m,V_k] : c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_m,V_n) = c_Groups_Ominus__class_Ominus(tc_Nat_Onat,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_k,V_m),c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_k,V_n)) ).

fof(fact_abs__le__iff,axiom,
    ! [V_b_2,V_aa_2,T_a] :
      ( class_Groups_Oordered__ab__group__add__abs(T_a)
     => ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Oabs__class_Oabs(T_a,V_aa_2),V_b_2)
      <=> ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ouminus__class_Ouminus(T_a,V_aa_2),V_b_2)
          & c_Orderings_Oord__class_Oless__eq(T_a,V_aa_2,V_b_2) ) ) ) ).

fof(fact_real__le__refl,axiom,
    ! [V_w] : c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,V_w,V_w) ).

fof(fact_complex__surj,axiom,
    ! [V_z] : c_Complex_Ocomplex_OComplex(c_Complex_ORe(V_z),c_Complex_OIm(V_z)) = V_z ).

fof(fact_add__diff__assoc2,axiom,
    ! [V_i,V_j,V_k] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_k,V_j)
     => c_Groups_Oplus__class_Oplus(tc_Nat_Onat,c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_j,V_k),V_i) = c_Groups_Ominus__class_Ominus(tc_Nat_Onat,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_j,V_i),V_k) ) ).

fof(arity_Int__Oint__Groups_Ozero,axiom,
    class_Groups_Ozero(tc_Int_Oint) ).

fof(fact_Im__rcis,axiom,
    ! [V_a,V_r] : c_Complex_OIm(c_Complex_Orcis(V_r,V_a)) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),V_r),c_Transcendental_Osin(V_a)) ).

fof(fact_not__one__less__zero,axiom,
    ! [T_a] :
      ( class_Rings_Olinordered__semidom(T_a)
     => ~ c_Orderings_Oord__class_Oless(T_a,c_Groups_Oone__class_Oone(T_a),c_Groups_Ozero__class_Ozero(T_a)) ) ).

fof(arity_Int__Oint__Groups_Ocomm__monoid__add,axiom,
    class_Groups_Ocomm__monoid__add(tc_Int_Oint) ).

fof(fact_realpow__num__eq__if,axiom,
    ! [V_m,V_n,T_a] :
      ( class_Power_Opower(T_a)
     => ( ( hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_m),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_m),c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_n,c_Groups_Oone__class_Oone(tc_Nat_Onat)))) = hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_m),V_n)
         <= c_Groups_Ozero__class_Ozero(tc_Nat_Onat) != V_n )
        & ( c_Groups_Ozero__class_Ozero(tc_Nat_Onat) = V_n
         => hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_m),V_n) = c_Groups_Oone__class_Oone(T_a) ) ) ) ).

fof(fact_Nat__Transfer_Otransfer__nat__int__function__closures_I4_J,axiom,
    ! [V_n,V_x] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_x)
     => c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),hAPP(hAPP(c_Power_Opower__class_Opower(tc_Int_Oint),V_x),V_n)) ) ).

fof(fact_exp__of__real,axiom,
    ! [V_x,T_a] :
      ( ( class_RealVector_Oreal__normed__field(T_a)
        & class_SEQ_Obanach(T_a) )
     => c_Transcendental_Oexp(T_a,c_RealVector_Oof__real(T_a,V_x)) = c_RealVector_Oof__real(T_a,c_Transcendental_Oexp(tc_RealDef_Oreal,V_x)) ) ).

fof(arity_RealDef__Oreal__Groups_Oab__group__add,axiom,
    class_Groups_Oab__group__add(tc_RealDef_Oreal) ).

fof(arity_RealDef__Oreal__Rings_Omult__zero,axiom,
    class_Rings_Omult__zero(tc_RealDef_Oreal) ).

fof(arity_Nat__Onat__Groups_Omonoid__mult,axiom,
    class_Groups_Omonoid__mult(tc_Nat_Onat) ).

fof(arity_Int__Oint__Groups_Osgn__if,axiom,
    class_Groups_Osgn__if(tc_Int_Oint) ).

fof(fact_mult__1__left,axiom,
    ! [V_a,T_a] :
      ( V_a = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Groups_Oone__class_Oone(T_a)),V_a)
     <= class_Groups_Omonoid__mult(T_a) ) ).

fof(fact_split__mult__pos__le,axiom,
    ! [V_b,V_a,T_a] :
      ( class_Rings_Oordered__ring(T_a)
     => ( ( ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_b)
            & c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_a) )
          | ( c_Orderings_Oord__class_Oless__eq(T_a,V_a,c_Groups_Ozero__class_Ozero(T_a))
            & c_Orderings_Oord__class_Oless__eq(T_a,V_b,c_Groups_Ozero__class_Ozero(T_a)) ) )
       => c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b)) ) ) ).

fof(fact_natfloor__mono,axiom,
    ! [V_y,V_x] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,c_RComplete_Onatfloor(V_x),c_RComplete_Onatfloor(V_y))
     <= c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,V_x,V_y) ) ).

fof(fact_less__eq__real__def,axiom,
    ! [V_y_2,V_x_2] :
      ( ( c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,V_x_2,V_y_2)
        | V_x_2 = V_y_2 )
    <=> c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,V_x_2,V_y_2) ) ).

fof(fact_realpow__minus__mult,axiom,
    ! [V_x,V_n,T_a] :
      ( ( hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_x),c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_n,c_Groups_Oone__class_Oone(tc_Nat_Onat)))),V_x) = hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_x),V_n)
       <= c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_n) )
     <= class_Groups_Omonoid__mult(T_a) ) ).

fof(fact_real__sqrt__mult,axiom,
    ! [V_y,V_x] : c_NthRoot_Osqrt(hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),V_x),V_y)) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),c_NthRoot_Osqrt(V_x)),c_NthRoot_Osqrt(V_y)) ).

fof(fact_minus__mult__minus,axiom,
    ! [V_b,V_a,T_a] :
      ( hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Groups_Ouminus__class_Ouminus(T_a,V_a)),c_Groups_Ouminus__class_Ouminus(T_a,V_b))
     <= class_Rings_Oring(T_a) ) ).

fof(fact_xt1_I6_J,axiom,
    ! [V_z,V_x,V_y,T_a] :
      ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_y,V_x)
       => ( c_Orderings_Oord__class_Oless__eq(T_a,V_z,V_y)
         => c_Orderings_Oord__class_Oless__eq(T_a,V_z,V_x) ) )
     <= class_Orderings_Oorder(T_a) ) ).

fof(fact_real__sgn__def,axiom,
    ! [V_x] :
      ( ( c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal) = V_x
       => c_Groups_Osgn__class_Osgn(tc_RealDef_Oreal,V_x) = c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal) )
      & ( V_x != c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)
       => ( ( ~ c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),V_x)
           => c_Groups_Osgn__class_Osgn(tc_RealDef_Oreal,V_x) = c_Groups_Ouminus__class_Ouminus(tc_RealDef_Oreal,c_Groups_Oone__class_Oone(tc_RealDef_Oreal)) )
          & ( c_Groups_Oone__class_Oone(tc_RealDef_Oreal) = c_Groups_Osgn__class_Osgn(tc_RealDef_Oreal,V_x)
           <= c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),V_x) ) ) ) ) ).

fof(fact_real__of__nat__add,axiom,
    ! [V_n,V_m] : c_RealDef_Oreal(tc_Nat_Onat,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_m,V_n)) = c_Groups_Oplus__class_Oplus(tc_RealDef_Oreal,c_RealDef_Oreal(tc_Nat_Onat,V_m),c_RealDef_Oreal(tc_Nat_Onat,V_n)) ).

fof(fact_real__zero__not__eq__one,axiom,
    c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal) != c_Groups_Oone__class_Oone(tc_RealDef_Oreal) ).

fof(fact_one__less__power,axiom,
    ! [V_n,V_a,T_a] :
      ( class_Rings_Olinordered__semidom(T_a)
     => ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Oone__class_Oone(T_a),V_a)
       => ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Oone__class_Oone(T_a),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_n))
         <= c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_n) ) ) ) ).

fof(arity_Complex__Ocomplex__Groups_Ocomm__monoid__add,axiom,
    class_Groups_Ocomm__monoid__add(tc_Complex_Ocomplex) ).

fof(fact_positive__add,axiom,
    ! [V_y,V_x] :
      ( c_RealDef_Opositive(V_x)
     => ( c_RealDef_Opositive(c_Groups_Oplus__class_Oplus(tc_RealDef_Oreal,V_x,V_y))
       <= c_RealDef_Opositive(V_y) ) ) ).

fof(fact_double__eq__0__iff,axiom,
    ! [V_aa_2,T_a] :
      ( ( c_Groups_Ozero__class_Ozero(T_a) = V_aa_2
      <=> c_Groups_Oplus__class_Oplus(T_a,V_aa_2,V_aa_2) = c_Groups_Ozero__class_Ozero(T_a) )
     <= class_Groups_Olinordered__ab__group__add(T_a) ) ).

fof(fact_complex__diff__def,axiom,
    ! [V_y,V_x] : c_Groups_Oplus__class_Oplus(tc_Complex_Ocomplex,V_x,c_Groups_Ouminus__class_Ouminus(tc_Complex_Ocomplex,V_y)) = c_Groups_Ominus__class_Ominus(tc_Complex_Ocomplex,V_x,V_y) ).

fof(fact_nat__mult__1,axiom,
    ! [V_n] : hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),c_Groups_Oone__class_Oone(tc_Nat_Onat)),V_n) = V_n ).

fof(fact_mult_Ominus__left,axiom,
    ! [V_b,V_a,T_a] :
      ( class_RealVector_Oreal__normed__algebra(T_a)
     => hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Groups_Ouminus__class_Ouminus(T_a,V_a)),V_b) = c_Groups_Ouminus__class_Ouminus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b)) ) ).

fof(fact_zero__less__mult__pos,axiom,
    ! [V_b,V_a,T_a] :
      ( class_Rings_Olinordered__semiring__strict(T_a)
     => ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b))
       => ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_b)
         <= c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_a) ) ) ) ).

fof(fact_add__right__mono,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Oplus__class_Oplus(T_a,V_a,V_c),c_Groups_Oplus__class_Oplus(T_a,V_b,V_c))
       <= c_Orderings_Oord__class_Oless__eq(T_a,V_a,V_b) )
     <= class_Groups_Oordered__ab__semigroup__add(T_a) ) ).

fof(fact_diff__eq__diff__eq,axiom,
    ! [V_d_2,V_c_2,V_b_2,V_aa_2,T_a] :
      ( class_Groups_Oab__group__add(T_a)
     => ( ( V_d_2 = V_c_2
        <=> V_b_2 = V_aa_2 )
       <= c_Groups_Ominus__class_Ominus(T_a,V_c_2,V_d_2) = c_Groups_Ominus__class_Ominus(T_a,V_aa_2,V_b_2) ) ) ).

fof(fact_power__increasing__iff,axiom,
    ! [V_y_2,V_x_2,V_b_2,T_a] :
      ( ( ( c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_b_2),V_x_2),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_b_2),V_y_2))
        <=> c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_x_2,V_y_2) )
       <= c_Orderings_Oord__class_Oless(T_a,c_Groups_Oone__class_Oone(T_a),V_b_2) )
     <= class_Rings_Olinordered__semidom(T_a) ) ).

fof(fact_diff__0,axiom,
    ! [V_a,T_a] :
      ( c_Groups_Ominus__class_Ominus(T_a,c_Groups_Ozero__class_Ozero(T_a),V_a) = c_Groups_Ouminus__class_Ouminus(T_a,V_a)
     <= class_Groups_Ogroup__add(T_a) ) ).

fof(fact_zero__le__power,axiom,
    ! [V_n,V_a,T_a] :
      ( class_Rings_Olinordered__semidom(T_a)
     => ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_a)
       => c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_n)) ) ) ).

fof(fact_decr__mult__lemma,axiom,
    ! [V_k_2,V_P_2,V_d_2] :
      ( ( ( ! [B_x] :
              ( hBOOL(hAPP(V_P_2,B_x))
             => hBOOL(hAPP(V_P_2,c_Groups_Ominus__class_Ominus(tc_Int_Oint,B_x,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_k_2),V_d_2)))) )
         <= c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_k_2) )
       <= ! [B_x] :
            ( hBOOL(hAPP(V_P_2,B_x))
           => hBOOL(hAPP(V_P_2,c_Groups_Ominus__class_Ominus(tc_Int_Oint,B_x,V_d_2))) ) )
     <= c_Orderings_Oord__class_Oless(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_d_2) ) ).

fof(fact_nat__add__commute,axiom,
    ! [V_n,V_m] : c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_n,V_m) = c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_m,V_n) ).

fof(arity_Complex__Ocomplex__Groups_Ocancel__ab__semigroup__add,axiom,
    class_Groups_Ocancel__ab__semigroup__add(tc_Complex_Ocomplex) ).

fof(fact_complex__of__real__minus__one,axiom,
    c_RealVector_Oof__real(tc_Complex_Ocomplex,c_Groups_Ouminus__class_Ouminus(tc_RealDef_Oreal,c_Groups_Oone__class_Oone(tc_RealDef_Oreal))) = c_Groups_Ouminus__class_Ouminus(tc_Complex_Ocomplex,c_Groups_Oone__class_Oone(tc_Complex_Ocomplex)) ).

fof(fact_mult__eq__self__implies__10,axiom,
    ! [V_n,V_m] :
      ( V_m = hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_m),V_n)
     => ( V_n = c_Groups_Oone__class_Oone(tc_Nat_Onat)
        | V_m = c_Groups_Ozero__class_Ozero(tc_Nat_Onat) ) ) ).

fof(fact_xt1_I8_J,axiom,
    ! [V_z,V_x,V_y,T_a] :
      ( class_Orderings_Oorder(T_a)
     => ( ( c_Orderings_Oord__class_Oless(T_a,V_z,V_y)
         => c_Orderings_Oord__class_Oless(T_a,V_z,V_x) )
       <= c_Orderings_Oord__class_Oless__eq(T_a,V_y,V_x) ) ) ).

fof(fact_mult__left_Obounded,axiom,
    ! [V_y,T_a] :
      ( class_RealVector_Oreal__normed__algebra(T_a)
     => ? [B_K] :
        ! [B_x] : c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_RealVector_Onorm__class_Onorm(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),B_x),V_y)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),c_RealVector_Onorm__class_Onorm(T_a,B_x)),B_K)) ) ).

fof(fact_norm__zero,axiom,
    ! [T_a] :
      ( c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal) = c_RealVector_Onorm__class_Onorm(T_a,c_Groups_Ozero__class_Ozero(T_a))
     <= class_RealVector_Oreal__normed__vector(T_a) ) ).

fof(fact_add__mult__distrib2,axiom,
    ! [V_n,V_m,V_k] : hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_k),c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_m,V_n)) = c_Groups_Oplus__class_Oplus(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_k),V_m),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_k),V_n)) ).

fof(fact_natceiling__le__eq,axiom,
    ! [V_aa_2,V_x_2] :
      ( c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),V_x_2)
     => ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,c_RComplete_Onatceiling(V_x_2),V_aa_2)
      <=> c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,V_x_2,c_RealDef_Oreal(tc_Nat_Onat,V_aa_2)) ) ) ).

fof(fact_minus__real__def,axiom,
    ! [V_y,V_x] : c_Groups_Oplus__class_Oplus(tc_RealDef_Oreal,V_x,c_Groups_Ouminus__class_Ouminus(tc_RealDef_Oreal,V_y)) = c_Groups_Ominus__class_Ominus(tc_RealDef_Oreal,V_x,V_y) ).

fof(fact_decr__lemma,axiom,
    ! [V_z,V_x,V_d] :
      ( c_Orderings_Oord__class_Oless(tc_Int_Oint,c_Groups_Ominus__class_Ominus(tc_Int_Oint,V_x,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),c_Groups_Oplus__class_Oplus(tc_Int_Oint,c_Groups_Oabs__class_Oabs(tc_Int_Oint,c_Groups_Ominus__class_Ominus(tc_Int_Oint,V_x,V_z)),c_Groups_Oone__class_Oone(tc_Int_Oint))),V_d)),V_z)
     <= c_Orderings_Oord__class_Oless(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_d) ) ).

fof(fact_natfloor__neg,axiom,
    ! [V_x] :
      ( c_RComplete_Onatfloor(V_x) = c_Groups_Ozero__class_Ozero(tc_Nat_Onat)
     <= c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,V_x,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)) ) ).

fof(fact_complex__Re__one,axiom,
    c_Complex_ORe(c_Groups_Oone__class_Oone(tc_Complex_Ocomplex)) = c_Groups_Oone__class_Oone(tc_RealDef_Oreal) ).

fof(fact_order__antisym__conv,axiom,
    ! [V_x_2,V_y_2,T_a] :
      ( class_Orderings_Oorder(T_a)
     => ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_x_2,V_y_2)
        <=> V_x_2 = V_y_2 )
       <= c_Orderings_Oord__class_Oless__eq(T_a,V_y_2,V_x_2) ) ) ).

fof(fact_abs__less__iff,axiom,
    ! [V_b_2,V_aa_2,T_a] :
      ( class_Rings_Olinordered__idom(T_a)
     => ( ( c_Orderings_Oord__class_Oless(T_a,V_aa_2,V_b_2)
          & c_Orderings_Oord__class_Oless(T_a,c_Groups_Ouminus__class_Ouminus(T_a,V_aa_2),V_b_2) )
      <=> c_Orderings_Oord__class_Oless(T_a,c_Groups_Oabs__class_Oabs(T_a,V_aa_2),V_b_2) ) ) ).

fof(fact_sgn__greater,axiom,
    ! [V_aa_2,T_a] :
      ( class_Rings_Olinordered__idom(T_a)
     => ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_aa_2)
      <=> c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),c_Groups_Osgn__class_Osgn(T_a,V_aa_2)) ) ) ).

fof(fact_mult__right_Ominus,axiom,
    ! [V_x,V_xa,T_a] :
      ( class_RealVector_Oreal__normed__algebra(T_a)
     => c_Groups_Ouminus__class_Ouminus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_xa),V_x)) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_xa),c_Groups_Ouminus__class_Ouminus(T_a,V_x)) ) ).

fof(fact_Im_Ozero,axiom,
    c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal) = c_Complex_OIm(c_Groups_Ozero__class_Ozero(tc_Complex_Ocomplex)) ).

fof(fact_less__imp__neq,axiom,
    ! [V_y,V_x,T_a] :
      ( ( c_Orderings_Oord__class_Oless(T_a,V_x,V_y)
       => V_y != V_x )
     <= class_Orderings_Oorder(T_a) ) ).

fof(fact_mult__right_Ononneg__bounded,axiom,
    ! [V_x,T_a] :
      ( ? [B_K] :
          ( ! [B_x] : c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_RealVector_Onorm__class_Onorm(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_x),B_x)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),c_RealVector_Onorm__class_Onorm(T_a,B_x)),B_K))
          & c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),B_K) )
     <= class_RealVector_Oreal__normed__algebra(T_a) ) ).

fof(fact_cis__def,axiom,
    ! [V_a] : c_Complex_Ocomplex_OComplex(c_Transcendental_Ocos(V_a),c_Transcendental_Osin(V_a)) = c_Complex_Ocis(V_a) ).

fof(fact_real__sqrt__lt__0__iff,axiom,
    ! [V_x_2] :
      ( c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,V_x_2,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal))
    <=> c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_NthRoot_Osqrt(V_x_2),c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)) ) ).

fof(fact_ln__gt__zero__imp__gt__one,axiom,
    ! [V_x] :
      ( ( c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_Groups_Oone__class_Oone(tc_RealDef_Oreal),V_x)
       <= c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),V_x) )
     <= c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),c_Transcendental_Oln(V_x)) ) ).

fof(fact_incr__mult__lemma,axiom,
    ! [V_k_2,V_P_2,V_d_2] :
      ( ( ! [B_x] :
            ( hBOOL(hAPP(V_P_2,B_x))
           => hBOOL(hAPP(V_P_2,c_Groups_Oplus__class_Oplus(tc_Int_Oint,B_x,V_d_2))) )
       => ( ! [B_x] :
              ( hBOOL(hAPP(V_P_2,c_Groups_Oplus__class_Oplus(tc_Int_Oint,B_x,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_k_2),V_d_2))))
             <= hBOOL(hAPP(V_P_2,B_x)) )
         <= c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_k_2) ) )
     <= c_Orderings_Oord__class_Oless(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_d_2) ) ).

fof(fact_real__le__linear,axiom,
    ! [V_w,V_z] :
      ( c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,V_w,V_z)
      | c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,V_z,V_w) ) ).

fof(fact_unique__quotient__lemma,axiom,
    ! [V_r,V_q,V_r_H,V_q_H,V_b] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Oplus__class_Oplus(tc_Int_Oint,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_b),V_q_H),V_r_H),c_Groups_Oplus__class_Oplus(tc_Int_Oint,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_b),V_q),V_r))
     => ( c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_r_H)
       => ( c_Orderings_Oord__class_Oless(tc_Int_Oint,V_r_H,V_b)
         => ( c_Orderings_Oord__class_Oless(tc_Int_Oint,V_r,V_b)
           => c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,V_q_H,V_q) ) ) ) ) ).

fof(arity_Int__Oint__Rings_Ocomm__ring__1,axiom,
    class_Rings_Ocomm__ring__1(tc_Int_Oint) ).

fof(fact_mult__neg__pos,axiom,
    ! [V_b,V_a,T_a] :
      ( class_Rings_Olinordered__semiring__strict(T_a)
     => ( c_Orderings_Oord__class_Oless(T_a,V_a,c_Groups_Ozero__class_Ozero(T_a))
       => ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_b)
         => c_Orderings_Oord__class_Oless(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b),c_Groups_Ozero__class_Ozero(T_a)) ) ) ) ).

fof(fact_real__sqrt__abs2,axiom,
    ! [V_x] : c_NthRoot_Osqrt(hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),V_x),V_x)) = c_Groups_Oabs__class_Oabs(tc_RealDef_Oreal,V_x) ).

fof(fact_natceiling__eq,axiom,
    ! [V_x,V_n] :
      ( c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_RealDef_Oreal(tc_Nat_Onat,V_n),V_x)
     => ( c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_n,c_Groups_Oone__class_Oone(tc_Nat_Onat)) = c_RComplete_Onatceiling(V_x)
       <= c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,V_x,c_Groups_Oplus__class_Oplus(tc_RealDef_Oreal,c_RealDef_Oreal(tc_Nat_Onat,V_n),c_Groups_Oone__class_Oone(tc_RealDef_Oreal))) ) ) ).

fof(fact_exp__gt__one,axiom,
    ! [V_x] :
      ( c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),V_x)
     => c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_Groups_Oone__class_Oone(tc_RealDef_Oreal),c_Transcendental_Oexp(tc_RealDef_Oreal,V_x)) ) ).

fof(fact_abs__le__D2,axiom,
    ! [V_b,V_a,T_a] :
      ( class_Groups_Oordered__ab__group__add__abs(T_a)
     => ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Oabs__class_Oabs(T_a,V_a),V_b)
       => c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ouminus__class_Ouminus(T_a,V_a),V_b) ) ) ).

fof(fact_termination__basic__simps_I2_J,axiom,
    ! [V_y,V_z,V_x] :
      ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_x,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_y,V_z))
     <= c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_x,V_z) ) ).

fof(arity_Complex__Ocomplex__Rings_Osemiring,axiom,
    class_Rings_Osemiring(tc_Complex_Ocomplex) ).

fof(fact_le__minus__self__iff,axiom,
    ! [V_aa_2,T_a] :
      ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_aa_2,c_Groups_Ozero__class_Ozero(T_a))
      <=> c_Orderings_Oord__class_Oless__eq(T_a,V_aa_2,c_Groups_Ouminus__class_Ouminus(T_a,V_aa_2)) )
     <= class_Groups_Olinordered__ab__group__add(T_a) ) ).

fof(fact_Nat__Transfer_Otransfer__nat__int__function__closures_I5_J,axiom,
    c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),c_Groups_Ozero__class_Ozero(tc_Int_Oint)) ).

fof(fact_DeMoivre2,axiom,
    ! [V_n,V_a,V_r] : c_Complex_Orcis(hAPP(hAPP(c_Power_Opower__class_Opower(tc_RealDef_Oreal),V_r),V_n),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),c_RealDef_Oreal(tc_Nat_Onat,V_n)),V_a)) = hAPP(hAPP(c_Power_Opower__class_Opower(tc_Complex_Ocomplex),c_Complex_Orcis(V_r,V_a)),V_n) ).

fof(fact_Re_Ozero,axiom,
    c_Complex_ORe(c_Groups_Ozero__class_Ozero(tc_Complex_Ocomplex)) = c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal) ).

fof(fact_Complex__eq__i,axiom,
    ! [V_y_2,V_x_2] :
      ( c_Complex_Oii = c_Complex_Ocomplex_OComplex(V_x_2,V_y_2)
    <=> ( V_x_2 = c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)
        & c_Groups_Oone__class_Oone(tc_RealDef_Oreal) = V_y_2 ) ) ).

fof(arity_RealDef__Oreal__Rings_Oidom,axiom,
    class_Rings_Oidom(tc_RealDef_Oreal) ).

fof(fact_nat__add__right__cancel,axiom,
    ! [V_n_2,V_k_2,V_m_2] :
      ( V_m_2 = V_n_2
    <=> c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_m_2,V_k_2) = c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_n_2,V_k_2) ) ).

fof(fact_i__complex__of__real,axiom,
    ! [V_r] : hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Complex_Ocomplex),c_Complex_Oii),c_RealVector_Oof__real(tc_Complex_Ocomplex,V_r)) = c_Complex_Ocomplex_OComplex(c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),V_r) ).

fof(fact_norm__sgn,axiom,
    ! [V_x,T_a] :
      ( class_RealVector_Oreal__normed__vector(T_a)
     => ( ( c_RealVector_Onorm__class_Onorm(T_a,c_Groups_Osgn__class_Osgn(T_a,V_x)) = c_Groups_Oone__class_Oone(tc_RealDef_Oreal)
         <= V_x != c_Groups_Ozero__class_Ozero(T_a) )
        & ( c_RealVector_Onorm__class_Onorm(T_a,c_Groups_Osgn__class_Osgn(T_a,V_x)) = c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)
         <= V_x = c_Groups_Ozero__class_Ozero(T_a) ) ) ) ).

fof(fact_diff__add__cancel,axiom,
    ! [V_b,V_a,T_a] :
      ( c_Groups_Oplus__class_Oplus(T_a,c_Groups_Ominus__class_Ominus(T_a,V_a,V_b),V_b) = V_a
     <= class_Groups_Ogroup__add(T_a) ) ).

fof(fact_ln__add__one__self__le__self,axiom,
    ! [V_x] :
      ( c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),V_x)
     => c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Transcendental_Oln(c_Groups_Oplus__class_Oplus(tc_RealDef_Oreal,c_Groups_Oone__class_Oone(tc_RealDef_Oreal),V_x)),V_x) ) ).

fof(fact_trans__le__add2,axiom,
    ! [V_m,V_j,V_i] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_i,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_m,V_j))
     <= c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_i,V_j) ) ).

fof(fact_zero__le__double__add__iff__zero__le__single__add,axiom,
    ! [V_aa_2,T_a] :
      ( ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),c_Groups_Oplus__class_Oplus(T_a,V_aa_2,V_aa_2))
      <=> c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_aa_2) )
     <= class_Groups_Olinordered__ab__group__add(T_a) ) ).

fof(arity_fun__Lattices_Oboolean__algebra,axiom,
    ! [T_2,T_1] :
      ( class_Lattices_Oboolean__algebra(tc_fun(T_2,T_1))
     <= class_Lattices_Oboolean__algebra(T_1) ) ).

fof(fact_add__le__mono,axiom,
    ! [V_l,V_k,V_j,V_i] :
      ( ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_k,V_l)
       => c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_i,V_k),c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_j,V_l)) )
     <= c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_i,V_j) ) ).

fof(fact_sin__le__one,axiom,
    ! [V_x] : c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Transcendental_Osin(V_x),c_Groups_Oone__class_Oone(tc_RealDef_Oreal)) ).

fof(fact_norm__triangle__ineq4,axiom,
    ! [V_b,V_a,T_a] :
      ( class_RealVector_Oreal__normed__vector(T_a)
     => c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_RealVector_Onorm__class_Onorm(T_a,c_Groups_Ominus__class_Ominus(T_a,V_a,V_b)),c_Groups_Oplus__class_Oplus(tc_RealDef_Oreal,c_RealVector_Onorm__class_Onorm(T_a,V_a),c_RealVector_Onorm__class_Onorm(T_a,V_b))) ) ).

fof(fact_xt1_I4_J,axiom,
    ! [V_c,V_a,V_b,T_a] :
      ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_b,V_a)
       => ( V_c = V_b
         => c_Orderings_Oord__class_Oless__eq(T_a,V_c,V_a) ) )
     <= class_Orderings_Oorder(T_a) ) ).

fof(fact_comm__semiring__1__class_Onormalizing__semiring__rules_I33_J,axiom,
    ! [V_x,T_a] :
      ( class_Rings_Ocomm__semiring__1(T_a)
     => V_x = hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_x),c_Groups_Oone__class_Oone(tc_Nat_Onat)) ) ).

fof(fact_abs__add__one__not__less__self,axiom,
    ! [V_x] : ~ c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_Groups_Oplus__class_Oplus(tc_RealDef_Oreal,c_Groups_Oabs__class_Oabs(tc_RealDef_Oreal,V_x),c_Groups_Oone__class_Oone(tc_RealDef_Oreal)),V_x) ).

fof(fact_power__inject__exp,axiom,
    ! [V_n_2,V_m_2,V_aa_2,T_a] :
      ( ( ( hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_aa_2),V_m_2) = hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_aa_2),V_n_2)
        <=> V_n_2 = V_m_2 )
       <= c_Orderings_Oord__class_Oless(T_a,c_Groups_Oone__class_Oone(T_a),V_aa_2) )
     <= class_Rings_Olinordered__semidom(T_a) ) ).

fof(fact_natfloor__zero,axiom,
    c_Groups_Ozero__class_Ozero(tc_Nat_Onat) = c_RComplete_Onatfloor(c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)) ).

fof(fact_not__less__iff__gr__or__eq,axiom,
    ! [V_y_2,V_x_2,T_a] :
      ( class_Orderings_Olinorder(T_a)
     => ( ~ c_Orderings_Oord__class_Oless(T_a,V_x_2,V_y_2)
      <=> ( c_Orderings_Oord__class_Oless(T_a,V_y_2,V_x_2)
          | V_y_2 = V_x_2 ) ) ) ).

fof(arity_RealDef__Oreal__Rings_Oring__1__no__zero__divisors,axiom,
    class_Rings_Oring__1__no__zero__divisors(tc_RealDef_Oreal) ).

fof(fact_int__val__lemma,axiom,
    ! [V_k_2,V_f_2,V_n_2] :
      ( ( ( ? [B_i] :
              ( hAPP(V_f_2,B_i) = V_k_2
              & c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,B_i,V_n_2) )
         <= c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,V_k_2,hAPP(V_f_2,V_n_2)) )
       <= c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,hAPP(V_f_2,c_Groups_Ozero__class_Ozero(tc_Nat_Onat)),V_k_2) )
     <= ! [B_i] :
          ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,B_i,V_n_2)
         => c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Oabs__class_Oabs(tc_Int_Oint,c_Groups_Ominus__class_Ominus(tc_Int_Oint,hAPP(V_f_2,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,B_i,c_Groups_Oone__class_Oone(tc_Nat_Onat))),hAPP(V_f_2,B_i))),c_Groups_Oone__class_Oone(tc_Int_Oint)) ) ) ).

fof(fact_ext,axiom,
    ! [V_g_2,V_f_2] :
      ( ! [B_x] : hAPP(V_f_2,B_x) = hAPP(V_g_2,B_x)
     => V_g_2 = V_f_2 ) ).

fof(fact_nat__mult__eq__1__iff,axiom,
    ! [V_n_2,V_m_2] :
      ( ( V_n_2 = c_Groups_Oone__class_Oone(tc_Nat_Onat)
        & V_m_2 = c_Groups_Oone__class_Oone(tc_Nat_Onat) )
    <=> c_Groups_Oone__class_Oone(tc_Nat_Onat) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_m_2),V_n_2) ) ).

fof(fact_comm__semiring__1__class_Onormalizing__semiring__rules_I20_J,axiom,
    ! [V_d,V_c,V_b,V_a,T_a] :
      ( c_Groups_Oplus__class_Oplus(T_a,c_Groups_Oplus__class_Oplus(T_a,V_a,V_b),c_Groups_Oplus__class_Oplus(T_a,V_c,V_d)) = c_Groups_Oplus__class_Oplus(T_a,c_Groups_Oplus__class_Oplus(T_a,V_a,V_c),c_Groups_Oplus__class_Oplus(T_a,V_b,V_d))
     <= class_Rings_Ocomm__semiring__1(T_a) ) ).

fof(fact_add__le__cancel__right,axiom,
    ! [V_b_2,V_c_2,V_aa_2,T_a] :
      ( class_Groups_Oordered__ab__semigroup__add__imp__le(T_a)
     => ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Oplus__class_Oplus(T_a,V_aa_2,V_c_2),c_Groups_Oplus__class_Oplus(T_a,V_b_2,V_c_2))
      <=> c_Orderings_Oord__class_Oless__eq(T_a,V_aa_2,V_b_2) ) ) ).

fof(fact_Nat__Transfer_Otransfer__nat__int__function__closures_I2_J,axiom,
    ! [V_y,V_x] :
      ( ( c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_y)
       => c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_x),V_y)) )
     <= c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_x) ) ).

fof(fact_le__imp__0__less,axiom,
    ! [V_z] :
      ( c_Orderings_Oord__class_Oless(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),c_Groups_Oplus__class_Oplus(tc_Int_Oint,c_Groups_Oone__class_Oone(tc_Int_Oint),V_z))
     <= c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_z) ) ).

fof(fact_abs__of__pos,axiom,
    ! [V_a,T_a] :
      ( ( V_a = c_Groups_Oabs__class_Oabs(T_a,V_a)
       <= c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_a) )
     <= class_Groups_Oordered__ab__group__add__abs(T_a) ) ).

fof(fact_zless__linear,axiom,
    ! [V_y,V_x] :
      ( V_x = V_y
      | c_Orderings_Oord__class_Oless(tc_Int_Oint,V_y,V_x)
      | c_Orderings_Oord__class_Oless(tc_Int_Oint,V_x,V_y) ) ).

fof(fact_zle__add1__eq__le,axiom,
    ! [V_z_2,V_w_2] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,V_w_2,V_z_2)
    <=> c_Orderings_Oord__class_Oless(tc_Int_Oint,V_w_2,c_Groups_Oplus__class_Oplus(tc_Int_Oint,V_z_2,c_Groups_Oone__class_Oone(tc_Int_Oint))) ) ).

fof(fact_complex_Osize_I1_J,axiom,
    ! [V_real2,V_real1] : c_Complex_Ocomplex_Ocomplex__size(c_Complex_Ocomplex_OComplex(V_real1,V_real2)) = c_Groups_Ozero__class_Ozero(tc_Nat_Onat) ).

fof(fact_real__mult__le__cancel__iff2,axiom,
    ! [V_y_2,V_x_2,V_z_2] :
      ( ( c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,V_x_2,V_y_2)
      <=> c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),V_z_2),V_x_2),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),V_z_2),V_y_2)) )
     <= c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),V_z_2) ) ).

fof(fact_cos__monotone__0__pi,axiom,
    ! [V_x,V_y] :
      ( c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),V_y)
     => ( ( c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_Transcendental_Ocos(V_x),c_Transcendental_Ocos(V_y))
         <= c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,V_x,c_Transcendental_Opi) )
       <= c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,V_y,V_x) ) ) ).

fof(arity_RealDef__Oreal__Groups_Oordered__comm__monoid__add,axiom,
    class_Groups_Oordered__comm__monoid__add(tc_RealDef_Oreal) ).

fof(fact_comm__semiring__1__class_Onormalizing__semiring__rules_I25_J,axiom,
    ! [V_d,V_c,V_a,T_a] :
      ( class_Rings_Ocomm__semiring__1(T_a)
     => c_Groups_Oplus__class_Oplus(T_a,V_a,c_Groups_Oplus__class_Oplus(T_a,V_c,V_d)) = c_Groups_Oplus__class_Oplus(T_a,c_Groups_Oplus__class_Oplus(T_a,V_a,V_c),V_d) ) ).

fof(fact_zadd__zless__mono,axiom,
    ! [V_z,V_z_H,V_w,V_w_H] :
      ( ( c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,V_z_H,V_z)
       => c_Orderings_Oord__class_Oless(tc_Int_Oint,c_Groups_Oplus__class_Oplus(tc_Int_Oint,V_w_H,V_z_H),c_Groups_Oplus__class_Oplus(tc_Int_Oint,V_w,V_z)) )
     <= c_Orderings_Oord__class_Oless(tc_Int_Oint,V_w_H,V_w) ) ).

fof(fact_zero__less__zpower__abs__iff,axiom,
    ! [V_n_2,V_x_2] :
      ( c_Orderings_Oord__class_Oless(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),hAPP(hAPP(c_Power_Opower__class_Opower(tc_Int_Oint),c_Groups_Oabs__class_Oabs(tc_Int_Oint,V_x_2)),V_n_2))
    <=> ( V_x_2 != c_Groups_Ozero__class_Ozero(tc_Int_Oint)
        | V_n_2 = c_Groups_Ozero__class_Ozero(tc_Nat_Onat) ) ) ).

fof(fact_mult__0__right,axiom,
    ! [V_m] : hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_m),c_Groups_Ozero__class_Ozero(tc_Nat_Onat)) = c_Groups_Ozero__class_Ozero(tc_Nat_Onat) ).

fof(fact_mult__nonneg__nonpos2,axiom,
    ! [V_b,V_a,T_a] :
      ( ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_a)
       => ( c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b),V_a),c_Groups_Ozero__class_Ozero(T_a))
         <= c_Orderings_Oord__class_Oless__eq(T_a,V_b,c_Groups_Ozero__class_Ozero(T_a)) ) )
     <= class_Rings_Oordered__cancel__semiring(T_a) ) ).

fof(fact_convex__bound__lt,axiom,
    ! [V_v,V_u,V_y,V_a,V_x,T_a] :
      ( class_Rings_Olinordered__semiring__1__strict(T_a)
     => ( c_Orderings_Oord__class_Oless(T_a,V_x,V_a)
       => ( ( ( ( c_Groups_Oplus__class_Oplus(T_a,V_u,V_v) = c_Groups_Oone__class_Oone(T_a)
               => c_Orderings_Oord__class_Oless(T_a,c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_u),V_x),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_v),V_y)),V_a) )
             <= c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_v) )
           <= c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_u) )
         <= c_Orderings_Oord__class_Oless(T_a,V_y,V_a) ) ) ) ).

fof(fact_left__add__mult__distrib,axiom,
    ! [V_k,V_j,V_u,V_i] : c_Groups_Oplus__class_Oplus(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_i),V_u),c_Groups_Oplus__class_Oplus(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_j),V_u),V_k)) = c_Groups_Oplus__class_Oplus(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_i,V_j)),V_u),V_k) ).

fof(arity_RealDef__Oreal__RealVector_Oreal__normed__algebra__1,axiom,
    class_RealVector_Oreal__normed__algebra__1(tc_RealDef_Oreal) ).

fof(arity_RealDef__Oreal__Groups_Ocomm__monoid__add,axiom,
    class_Groups_Ocomm__monoid__add(tc_RealDef_Oreal) ).

fof(arity_RealDef__Oreal__Rings_Olinordered__semiring__strict,axiom,
    class_Rings_Olinordered__semiring__strict(tc_RealDef_Oreal) ).

fof(fact_zero__less__double__add__iff__zero__less__single__add,axiom,
    ! [V_aa_2,T_a] :
      ( class_Groups_Olinordered__ab__group__add(T_a)
     => ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),c_Groups_Oplus__class_Oplus(T_a,V_aa_2,V_aa_2))
      <=> c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_aa_2) ) ) ).

fof(fact_complex__i__mult__minus,axiom,
    ! [V_x] : c_Groups_Ouminus__class_Ouminus(tc_Complex_Ocomplex,V_x) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Complex_Ocomplex),c_Complex_Oii),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Complex_Ocomplex),c_Complex_Oii),V_x)) ).

fof(fact_add__nonneg__pos,axiom,
    ! [V_b,V_a,T_a] :
      ( ( ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),c_Groups_Oplus__class_Oplus(T_a,V_a,V_b))
         <= c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_b) )
       <= c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_a) )
     <= class_Groups_Oordered__comm__monoid__add(T_a) ) ).

fof(fact_mult__1__right,axiom,
    ! [V_a,T_a] :
      ( class_Groups_Omonoid__mult(T_a)
     => hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),c_Groups_Oone__class_Oone(T_a)) = V_a ) ).

fof(fact_rabs__ratiotest__lemma,axiom,
    ! [V_y,V_x,V_c] :
      ( c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,V_c,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal))
     => ( V_x = c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)
       <= c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Oabs__class_Oabs(tc_RealDef_Oreal,V_x),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),V_c),c_Groups_Oabs__class_Oabs(tc_RealDef_Oreal,V_y))) ) ) ).

fof(arity_Int__Oint__Rings_Olinordered__idom,axiom,
    class_Rings_Olinordered__idom(tc_Int_Oint) ).

fof(fact_add__strict__right__mono,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( class_Groups_Oordered__cancel__ab__semigroup__add(T_a)
     => ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Oplus__class_Oplus(T_a,V_a,V_c),c_Groups_Oplus__class_Oplus(T_a,V_b,V_c))
       <= c_Orderings_Oord__class_Oless(T_a,V_a,V_b) ) ) ).

fof(arity_Nat__Onat__Groups_Ocomm__monoid__add,axiom,
    class_Groups_Ocomm__monoid__add(tc_Nat_Onat) ).

fof(fact_pi__ge__zero,axiom,
    c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),c_Transcendental_Opi) ).

fof(fact_diff__add__inverse,axiom,
    ! [V_m,V_n] : c_Groups_Ominus__class_Ominus(tc_Nat_Onat,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_n,V_m),V_n) = V_m ).

fof(fact_le__add__diff,axiom,
    ! [V_m,V_n,V_k] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_k,V_n)
     => c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m,c_Groups_Ominus__class_Ominus(tc_Nat_Onat,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_n,V_m),V_k)) ) ).

fof(fact_le__natfloor__eq__one,axiom,
    ! [V_x_2] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,c_Groups_Oone__class_Oone(tc_Nat_Onat),c_RComplete_Onatfloor(V_x_2))
    <=> c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Oone__class_Oone(tc_RealDef_Oreal),V_x_2) ) ).

fof(fact_real__sgn__pos,axiom,
    ! [V_x] :
      ( c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),V_x)
     => c_Groups_Oone__class_Oone(tc_RealDef_Oreal) = c_Groups_Osgn__class_Osgn(tc_RealDef_Oreal,V_x) ) ).

fof(fact_add__scale__eq__noteq,axiom,
    ! [V_d,V_c,V_b,V_a,V_r,T_a] :
      ( class_Semiring__Normalization_Ocomm__semiring__1__cancel__crossproduct(T_a)
     => ( V_r != c_Groups_Ozero__class_Ozero(T_a)
       => ( ( V_b = V_a
            & V_d != V_c )
         => c_Groups_Oplus__class_Oplus(T_a,V_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_r),V_c)) != c_Groups_Oplus__class_Oplus(T_a,V_b,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_r),V_d)) ) ) ) ).

fof(fact_diff__add__assoc,axiom,
    ! [V_i,V_j,V_k] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_k,V_j)
     => c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_i,c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_j,V_k)) = c_Groups_Ominus__class_Ominus(tc_Nat_Onat,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_i,V_j),V_k) ) ).

fof(fact_le__add2,axiom,
    ! [V_m,V_n] : c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_n,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_m,V_n)) ).

fof(fact_sgn__neg,axiom,
    ! [V_a,T_a] :
      ( class_Rings_Olinordered__idom(T_a)
     => ( c_Groups_Osgn__class_Osgn(T_a,V_a) = c_Groups_Ouminus__class_Ouminus(T_a,c_Groups_Oone__class_Oone(T_a))
       <= c_Orderings_Oord__class_Oless(T_a,V_a,c_Groups_Ozero__class_Ozero(T_a)) ) ) ).

fof(arity_RealDef__Oreal__Groups_Oordered__ab__semigroup__add__imp__le,axiom,
    class_Groups_Oordered__ab__semigroup__add__imp__le(tc_RealDef_Oreal) ).

fof(fact_mult_Opos__bounded,axiom,
    ! [T_a] :
      ( ? [B_K] :
          ( c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),B_K)
          & ! [B_a,B_b] : c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_RealVector_Onorm__class_Onorm(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),B_a),B_b)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),c_RealVector_Onorm__class_Onorm(T_a,B_a)),c_RealVector_Onorm__class_Onorm(T_a,B_b))),B_K)) )
     <= class_RealVector_Oreal__normed__algebra(T_a) ) ).

fof(fact_mult__idem,axiom,
    ! [V_x,T_a] :
      ( V_x = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_x),V_x)
     <= class_Lattices_Oab__semigroup__idem__mult(T_a) ) ).

fof(arity_Int__Oint__Groups_Oab__semigroup__add,axiom,
    class_Groups_Oab__semigroup__add(tc_Int_Oint) ).

fof(arity_RealDef__Oreal__Rings_Osemiring,axiom,
    class_Rings_Osemiring(tc_RealDef_Oreal) ).

fof(fact_sgn0,axiom,
    ! [T_a] :
      ( c_Groups_Osgn__class_Osgn(T_a,c_Groups_Ozero__class_Ozero(T_a)) = c_Groups_Ozero__class_Ozero(T_a)
     <= class_Groups_Osgn__if(T_a) ) ).

fof(fact_complex__zero__def,axiom,
    c_Complex_Ocomplex_OComplex(c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)) = c_Groups_Ozero__class_Ozero(tc_Complex_Ocomplex) ).

fof(arity_Int__Oint__Orderings_Olinorder,axiom,
    class_Orderings_Olinorder(tc_Int_Oint) ).

fof(fact_cos__monotone__minus__pi__0_H,axiom,
    ! [V_x,V_y] :
      ( ( ( c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,V_x,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal))
         => c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Transcendental_Ocos(V_y),c_Transcendental_Ocos(V_x)) )
       <= c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,V_y,V_x) )
     <= c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Ouminus__class_Ouminus(tc_RealDef_Oreal,c_Transcendental_Opi),V_y) ) ).

fof(fact_less__bin__lemma,axiom,
    ! [V_l_2,V_k_2] :
      ( c_Orderings_Oord__class_Oless(tc_Int_Oint,V_k_2,V_l_2)
    <=> c_Orderings_Oord__class_Oless(tc_Int_Oint,c_Groups_Ominus__class_Ominus(tc_Int_Oint,V_k_2,V_l_2),c_Groups_Ozero__class_Ozero(tc_Int_Oint)) ) ).

fof(fact_natceiling__le__eq__one,axiom,
    ! [V_x_2] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,c_RComplete_Onatceiling(V_x_2),c_Groups_Oone__class_Oone(tc_Nat_Onat))
    <=> c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,V_x_2,c_Groups_Oone__class_Oone(tc_RealDef_Oreal)) ) ).

fof(fact_sin__n__Im__cis__pow__n,axiom,
    ! [V_a,V_n] : c_Complex_OIm(hAPP(hAPP(c_Power_Opower__class_Opower(tc_Complex_Ocomplex),c_Complex_Ocis(V_a)),V_n)) = c_Transcendental_Osin(hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),c_RealDef_Oreal(tc_Nat_Onat,V_n)),V_a)) ).

fof(fact_complex__mult,axiom,
    ! [V_d,V_c,V_b,V_a] : c_Complex_Ocomplex_OComplex(c_Groups_Ominus__class_Ominus(tc_RealDef_Oreal,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),V_a),V_c),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),V_b),V_d)),c_Groups_Oplus__class_Oplus(tc_RealDef_Oreal,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),V_a),V_d),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),V_b),V_c))) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Complex_Ocomplex),c_Complex_Ocomplex_OComplex(V_a,V_b)),c_Complex_Ocomplex_OComplex(V_c,V_d)) ).

fof(fact_nat__eq__add__iff1,axiom,
    ! [V_n_2,V_m_2,V_u_2,V_i_2,V_j_2] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_j_2,V_i_2)
     => ( c_Groups_Oplus__class_Oplus(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_i_2),V_u_2),V_m_2) = c_Groups_Oplus__class_Oplus(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_j_2),V_u_2),V_n_2)
      <=> V_n_2 = c_Groups_Oplus__class_Oplus(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_i_2,V_j_2)),V_u_2),V_m_2) ) ) ).

fof(fact_abs__Im__le__cmod,axiom,
    ! [V_x] : c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Oabs__class_Oabs(tc_RealDef_Oreal,c_Complex_OIm(V_x)),c_RealVector_Onorm__class_Onorm(tc_Complex_Ocomplex,V_x)) ).

fof(arity_RealDef__Oreal__Groups_Oordered__ab__semigroup__add,axiom,
    class_Groups_Oordered__ab__semigroup__add(tc_RealDef_Oreal) ).

fof(arity_Int__Oint__Rings_Olinordered__ring__strict,axiom,
    class_Rings_Olinordered__ring__strict(tc_Int_Oint) ).

fof(fact_nat__neq__iff,axiom,
    ! [V_n_2,V_m_2] :
      ( V_n_2 != V_m_2
    <=> ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_n_2,V_m_2)
        | c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_m_2,V_n_2) ) ) ).

fof(fact_comm__semiring__1__class_Onormalizing__semiring__rules_I24_J,axiom,
    ! [V_c,V_a,T_a] :
      ( class_Rings_Ocomm__semiring__1(T_a)
     => c_Groups_Oplus__class_Oplus(T_a,V_a,V_c) = c_Groups_Oplus__class_Oplus(T_a,V_c,V_a) ) ).

fof(fact_mult__right_Opos__bounded,axiom,
    ! [V_x,T_a] :
      ( class_RealVector_Oreal__normed__algebra(T_a)
     => ? [B_K] :
          ( c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),B_K)
          & ! [B_x] : c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_RealVector_Onorm__class_Onorm(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_x),B_x)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),c_RealVector_Onorm__class_Onorm(T_a,B_x)),B_K)) ) ) ).

fof(fact_exp__less__cancel__iff,axiom,
    ! [V_y_2,V_x_2] :
      ( c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_Transcendental_Oexp(tc_RealDef_Oreal,V_x_2),c_Transcendental_Oexp(tc_RealDef_Oreal,V_y_2))
    <=> c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,V_x_2,V_y_2) ) ).

fof(fact_less__imp__diff__less,axiom,
    ! [V_n,V_k,V_j] :
      ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_j,V_n),V_k)
     <= c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_j,V_k) ) ).

fof(arity_RealDef__Oreal__Groups_Ominus,axiom,
    class_Groups_Ominus(tc_RealDef_Oreal) ).

fof(fact_nat__le__add__iff2,axiom,
    ! [V_n_2,V_m_2,V_u_2,V_j_2,V_i_2] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_i_2,V_j_2)
     => ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_i_2),V_u_2),V_m_2),c_Groups_Oplus__class_Oplus(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_j_2),V_u_2),V_n_2))
      <=> c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m_2,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_j_2,V_i_2)),V_u_2),V_n_2)) ) ) ).

fof(fact_trans__less__add1,axiom,
    ! [V_m,V_j,V_i] :
      ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_i,V_j)
     => c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_i,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_j,V_m)) ) ).

fof(fact_abs__if,axiom,
    ! [V_a,T_a] :
      ( ( ( c_Groups_Ouminus__class_Ouminus(T_a,V_a) = c_Groups_Oabs__class_Oabs(T_a,V_a)
         <= c_Orderings_Oord__class_Oless(T_a,V_a,c_Groups_Ozero__class_Ozero(T_a)) )
        & ( ~ c_Orderings_Oord__class_Oless(T_a,V_a,c_Groups_Ozero__class_Ozero(T_a))
         => V_a = c_Groups_Oabs__class_Oabs(T_a,V_a) ) )
     <= class_Groups_Oabs__if(T_a) ) ).

fof(fact_add__eq__0__iff,axiom,
    ! [V_y_2,V_x_2,T_a] :
      ( ( V_y_2 = c_Groups_Ouminus__class_Ouminus(T_a,V_x_2)
      <=> c_Groups_Ozero__class_Ozero(T_a) = c_Groups_Oplus__class_Oplus(T_a,V_x_2,V_y_2) )
     <= class_Groups_Ogroup__add(T_a) ) ).

fof(fact_Re_Ononneg__bounded,axiom,
    ? [B_K] :
      ( ! [B_x] : c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_RealVector_Onorm__class_Onorm(tc_RealDef_Oreal,c_Complex_ORe(B_x)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),c_RealVector_Onorm__class_Onorm(tc_Complex_Ocomplex,B_x)),B_K))
      & c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),B_K) ) ).

fof(fact_cos__one__sin__zero,axiom,
    ! [V_x] :
      ( c_Groups_Oone__class_Oone(tc_RealDef_Oreal) = c_Transcendental_Ocos(V_x)
     => c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal) = c_Transcendental_Osin(V_x) ) ).

fof(fact_Im_Oadd,axiom,
    ! [V_y,V_x] : c_Complex_OIm(c_Groups_Oplus__class_Oplus(tc_Complex_Ocomplex,V_x,V_y)) = c_Groups_Oplus__class_Oplus(tc_RealDef_Oreal,c_Complex_OIm(V_x),c_Complex_OIm(V_y)) ).

fof(fact_rcis__zero__arg,axiom,
    ! [V_r] : c_Complex_Orcis(V_r,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)) = c_RealVector_Oof__real(tc_Complex_Ocomplex,V_r) ).

fof(fact_complex__equality,axiom,
    ! [V_y,V_x] :
      ( c_Complex_ORe(V_y) = c_Complex_ORe(V_x)
     => ( c_Complex_OIm(V_x) = c_Complex_OIm(V_y)
       => V_x = V_y ) ) ).

fof(arity_RealDef__Oreal__Rings_Oordered__semiring,axiom,
    class_Rings_Oordered__semiring(tc_RealDef_Oreal) ).

fof(fact_complex__Im__one,axiom,
    c_Complex_OIm(c_Groups_Oone__class_Oone(tc_Complex_Ocomplex)) = c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal) ).

fof(fact_linorder__antisym__conv3,axiom,
    ! [V_x_2,V_y_2,T_a] :
      ( ( ~ c_Orderings_Oord__class_Oless(T_a,V_y_2,V_x_2)
       => ( ~ c_Orderings_Oord__class_Oless(T_a,V_x_2,V_y_2)
        <=> V_x_2 = V_y_2 ) )
     <= class_Orderings_Olinorder(T_a) ) ).

fof(fact_mult__zero__left,axiom,
    ! [V_a,T_a] :
      ( hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Groups_Ozero__class_Ozero(T_a)),V_a) = c_Groups_Ozero__class_Ozero(T_a)
     <= class_Rings_Omult__zero(T_a) ) ).

fof(fact_zdiv__mono2__lemma,axiom,
    ! [V_r_H,V_q_H,V_b_H,V_r,V_q,V_b] :
      ( ( c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),c_Groups_Oplus__class_Oplus(tc_Int_Oint,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_b_H),V_q_H),V_r_H))
       => ( ( c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_r)
           => ( ( c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,V_b_H,V_b)
               => c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,V_q,V_q_H) )
             <= c_Orderings_Oord__class_Oless(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_b_H) ) )
         <= c_Orderings_Oord__class_Oless(tc_Int_Oint,V_r_H,V_b_H) ) )
     <= c_Groups_Oplus__class_Oplus(tc_Int_Oint,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_b_H),V_q_H),V_r_H) = c_Groups_Oplus__class_Oplus(tc_Int_Oint,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_b),V_q),V_r) ) ).

fof(arity_Complex__Ocomplex__Groups_Ogroup__add,axiom,
    class_Groups_Ogroup__add(tc_Complex_Ocomplex) ).

fof(fact_power__less__imp__less__exp,axiom,
    ! [V_n,V_m,V_a,T_a] :
      ( class_Rings_Olinordered__semidom(T_a)
     => ( ( c_Orderings_Oord__class_Oless(T_a,hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_m),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_n))
         => c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_m,V_n) )
       <= c_Orderings_Oord__class_Oless(T_a,c_Groups_Oone__class_Oone(T_a),V_a) ) ) ).

fof(arity_Int__Oint__Groups_Oabs__if,axiom,
    class_Groups_Oabs__if(tc_Int_Oint) ).

fof(fact_le__mult__natfloor,axiom,
    ! [V_b,V_a] :
      ( c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),V_a)
     => ( c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),V_b)
       => c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),c_RComplete_Onatfloor(V_a)),c_RComplete_Onatfloor(V_b)),c_RComplete_Onatfloor(hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),V_a),V_b))) ) ) ).

fof(fact_le__diff__conv2,axiom,
    ! [V_i_2,V_j_2,V_k_2] :
      ( ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_i_2,V_k_2),V_j_2)
      <=> c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_i_2,c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_j_2,V_k_2)) )
     <= c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_k_2,V_j_2) ) ).

fof(fact_abs__diff__triangle__ineq,axiom,
    ! [V_d,V_c,V_b,V_a,T_a] :
      ( class_Groups_Oordered__ab__group__add__abs(T_a)
     => c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Oabs__class_Oabs(T_a,c_Groups_Ominus__class_Ominus(T_a,c_Groups_Oplus__class_Oplus(T_a,V_a,V_b),c_Groups_Oplus__class_Oplus(T_a,V_c,V_d))),c_Groups_Oplus__class_Oplus(T_a,c_Groups_Oabs__class_Oabs(T_a,c_Groups_Ominus__class_Ominus(T_a,V_a,V_c)),c_Groups_Oabs__class_Oabs(T_a,c_Groups_Ominus__class_Ominus(T_a,V_b,V_d)))) ) ).

fof(fact_termination__basic__simps_I4_J,axiom,
    ! [V_y,V_z,V_x] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_x,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_y,V_z))
     <= c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_x,V_z) ) ).

fof(arity_Nat__Onat__Groups_Ocancel__semigroup__add,axiom,
    class_Groups_Ocancel__semigroup__add(tc_Nat_Onat) ).

fof(fact_sin__periodic__pi2,axiom,
    ! [V_x] : c_Groups_Ouminus__class_Ouminus(tc_RealDef_Oreal,c_Transcendental_Osin(V_x)) = c_Transcendental_Osin(c_Groups_Oplus__class_Oplus(tc_RealDef_Oreal,c_Transcendental_Opi,V_x)) ).

fof(fact_mult__left__idem,axiom,
    ! [V_b,V_a,T_a] :
      ( hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b)) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b)
     <= class_Lattices_Oab__semigroup__idem__mult(T_a) ) ).

fof(fact_neg__0__le__iff__le,axiom,
    ! [V_aa_2,T_a] :
      ( ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),c_Groups_Ouminus__class_Ouminus(T_a,V_aa_2))
      <=> c_Orderings_Oord__class_Oless__eq(T_a,V_aa_2,c_Groups_Ozero__class_Ozero(T_a)) )
     <= class_Groups_Oordered__ab__group__add(T_a) ) ).

fof(fact_nat__add__assoc,axiom,
    ! [V_k,V_n,V_m] : c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_m,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_n,V_k)) = c_Groups_Oplus__class_Oplus(tc_Nat_Onat,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_m,V_n),V_k) ).

fof(fact_mult__is__0,axiom,
    ! [V_n_2,V_m_2] :
      ( ( V_n_2 = c_Groups_Ozero__class_Ozero(tc_Nat_Onat)
        | c_Groups_Ozero__class_Ozero(tc_Nat_Onat) = V_m_2 )
    <=> hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_m_2),V_n_2) = c_Groups_Ozero__class_Ozero(tc_Nat_Onat) ) ).

fof(fact_abs__real__def,axiom,
    ! [V_a] :
      ( ( ~ c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,V_a,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal))
       => V_a = c_Groups_Oabs__class_Oabs(tc_RealDef_Oreal,V_a) )
      & ( c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,V_a,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal))
       => c_Groups_Oabs__class_Oabs(tc_RealDef_Oreal,V_a) = c_Groups_Ouminus__class_Ouminus(tc_RealDef_Oreal,V_a) ) ) ).

fof(fact_no__zero__divisors,axiom,
    ! [V_b,V_a,T_a] :
      ( ( c_Groups_Ozero__class_Ozero(T_a) != V_a
       => ( hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b) != c_Groups_Ozero__class_Ozero(T_a)
         <= c_Groups_Ozero__class_Ozero(T_a) != V_b ) )
     <= class_Rings_Ono__zero__divisors(T_a) ) ).

fof(fact_crossproduct__eq,axiom,
    ! [V_z_2,V_x_2,V_y_2,V_w_2,T_a] :
      ( ( c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_w_2),V_z_2),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_x_2),V_y_2)) = c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_w_2),V_y_2),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_x_2),V_z_2))
      <=> ( V_z_2 = V_y_2
          | V_x_2 = V_w_2 ) )
     <= class_Semiring__Normalization_Ocomm__semiring__1__cancel__crossproduct(T_a) ) ).

fof(fact_Im_Odiff,axiom,
    ! [V_y,V_x] : c_Complex_OIm(c_Groups_Ominus__class_Ominus(tc_Complex_Ocomplex,V_x,V_y)) = c_Groups_Ominus__class_Ominus(tc_RealDef_Oreal,c_Complex_OIm(V_x),c_Complex_OIm(V_y)) ).

fof(fact_neg__equal__iff__equal,axiom,
    ! [V_b_2,V_aa_2,T_a] :
      ( class_Groups_Ogroup__add(T_a)
     => ( V_aa_2 = V_b_2
      <=> c_Groups_Ouminus__class_Ouminus(T_a,V_aa_2) = c_Groups_Ouminus__class_Ouminus(T_a,V_b_2) ) ) ).

fof(fact_abs__one,axiom,
    ! [T_a] :
      ( c_Groups_Oone__class_Oone(T_a) = c_Groups_Oabs__class_Oabs(T_a,c_Groups_Oone__class_Oone(T_a))
     <= class_Rings_Olinordered__idom(T_a) ) ).

fof(fact_tsub__def,axiom,
    ! [V_x,V_y] :
      ( ( c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,V_y,V_x)
       => c_Groups_Ominus__class_Ominus(tc_Int_Oint,V_x,V_y) = c_Nat__Transfer_Otsub(V_x,V_y) )
      & ( ~ c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,V_y,V_x)
       => c_Groups_Ozero__class_Ozero(tc_Int_Oint) = c_Nat__Transfer_Otsub(V_x,V_y) ) ) ).

fof(fact_mult__left_Odiff,axiom,
    ! [V_ya,V_y,V_x,T_a] :
      ( hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Groups_Ominus__class_Ominus(T_a,V_x,V_y)),V_ya) = c_Groups_Ominus__class_Ominus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_x),V_ya),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_y),V_ya))
     <= class_RealVector_Oreal__normed__algebra(T_a) ) ).

fof(fact_norm__triangle__ineq3,axiom,
    ! [V_b,V_a,T_a] :
      ( c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Oabs__class_Oabs(tc_RealDef_Oreal,c_Groups_Ominus__class_Ominus(tc_RealDef_Oreal,c_RealVector_Onorm__class_Onorm(T_a,V_a),c_RealVector_Onorm__class_Onorm(T_a,V_b))),c_RealVector_Onorm__class_Onorm(T_a,c_Groups_Ominus__class_Ominus(T_a,V_a,V_b)))
     <= class_RealVector_Oreal__normed__vector(T_a) ) ).

fof(fact_zmult__commute,axiom,
    ! [V_w,V_z] : hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_z),V_w) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_w),V_z) ).

fof(fact_add__le__less__mono,axiom,
    ! [V_d,V_c,V_b,V_a,T_a] :
      ( class_Groups_Oordered__cancel__ab__semigroup__add(T_a)
     => ( ( c_Orderings_Oord__class_Oless(T_a,V_c,V_d)
         => c_Orderings_Oord__class_Oless(T_a,c_Groups_Oplus__class_Oplus(T_a,V_a,V_c),c_Groups_Oplus__class_Oplus(T_a,V_b,V_d)) )
       <= c_Orderings_Oord__class_Oless__eq(T_a,V_a,V_b) ) ) ).

fof(fact_order__less__irrefl,axiom,
    ! [V_x,T_a] :
      ( class_Orderings_Opreorder(T_a)
     => ~ c_Orderings_Oord__class_Oless(T_a,V_x,V_x) ) ).

fof(arity_RealDef__Oreal__Rings_Olinordered__semiring,axiom,
    class_Rings_Olinordered__semiring(tc_RealDef_Oreal) ).

fof(fact_zmult__1,axiom,
    ! [V_z] : hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),c_Groups_Oone__class_Oone(tc_Int_Oint)),V_z) = V_z ).

fof(arity_Int__Oint__Groups_Ouminus,axiom,
    class_Groups_Ouminus(tc_Int_Oint) ).

fof(fact_nat__le__linear,axiom,
    ! [V_n,V_m] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m,V_n)
      | c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_n,V_m) ) ).

fof(fact_add__nonpos__nonpos,axiom,
    ! [V_b,V_a,T_a] :
      ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_a,c_Groups_Ozero__class_Ozero(T_a))
       => ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Oplus__class_Oplus(T_a,V_a,V_b),c_Groups_Ozero__class_Ozero(T_a))
         <= c_Orderings_Oord__class_Oless__eq(T_a,V_b,c_Groups_Ozero__class_Ozero(T_a)) ) )
     <= class_Groups_Oordered__comm__monoid__add(T_a) ) ).

fof(fact_linorder__le__less__linear,axiom,
    ! [V_y,V_x,T_a] :
      ( class_Orderings_Olinorder(T_a)
     => ( c_Orderings_Oord__class_Oless__eq(T_a,V_x,V_y)
        | c_Orderings_Oord__class_Oless(T_a,V_y,V_x) ) ) ).

fof(fact_real__sqrt__ge__zero,axiom,
    ! [V_x] :
      ( c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),V_x)
     => c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),c_NthRoot_Osqrt(V_x)) ) ).

fof(fact_power__power__power,axiom,
    ! [T_a] :
      ( class_Power_Opower(T_a)
     => c_Power_Opower_Opower(T_a,c_Groups_Oone__class_Oone(T_a),c_Groups_Otimes__class_Otimes(T_a)) = c_Power_Opower__class_Opower(T_a) ) ).

fof(arity_Int__Oint__Rings_Oordered__cancel__semiring,axiom,
    class_Rings_Oordered__cancel__semiring(tc_Int_Oint) ).

fof(fact_BseqI,axiom,
    ! [V_X_2,V_K_2,T_a] :
      ( class_RealVector_Oreal__normed__vector(T_a)
     => ( ( c_SEQ_OBseq(T_a,V_X_2)
         <= ! [B_n] : c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_RealVector_Onorm__class_Onorm(T_a,hAPP(V_X_2,B_n)),V_K_2) )
       <= c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),V_K_2) ) ) ).

fof(fact_exp__not__eq__zero,axiom,
    ! [V_x,T_a] :
      ( ( class_SEQ_Obanach(T_a)
        & class_RealVector_Oreal__normed__field(T_a) )
     => c_Transcendental_Oexp(T_a,V_x) != c_Groups_Ozero__class_Ozero(T_a) ) ).

fof(fact_Nat_Odiff__diff__eq,axiom,
    ! [V_n,V_m,V_k] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_k,V_m)
     => ( c_Groups_Ominus__class_Ominus(tc_Nat_Onat,c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_m,V_k),c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_n,V_k)) = c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_m,V_n)
       <= c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_k,V_n) ) ) ).

fof(fact_zero__le__square,axiom,
    ! [V_a,T_a] :
      ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_a))
     <= class_Rings_Olinordered__ring(T_a) ) ).

fof(fact_mult_Ozero__left,axiom,
    ! [V_b,T_a] :
      ( class_RealVector_Oreal__normed__algebra(T_a)
     => hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Groups_Ozero__class_Ozero(T_a)),V_b) = c_Groups_Ozero__class_Ozero(T_a) ) ).

fof(fact_order__refl,axiom,
    ! [V_x,T_a] :
      ( c_Orderings_Oord__class_Oless__eq(T_a,V_x,V_x)
     <= class_Orderings_Opreorder(T_a) ) ).

fof(fact_ln__gt__zero__iff,axiom,
    ! [V_x_2] :
      ( c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),V_x_2)
     => ( c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_Groups_Oone__class_Oone(tc_RealDef_Oreal),V_x_2)
      <=> c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),c_Transcendental_Oln(V_x_2)) ) ) ).

fof(fact_nat__mult__1__right,axiom,
    ! [V_n] : hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_n),c_Groups_Oone__class_Oone(tc_Nat_Onat)) = V_n ).

fof(fact_termination__basic__simps_I3_J,axiom,
    ! [V_z,V_y,V_x] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_x,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_y,V_z))
     <= c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_x,V_y) ) ).

fof(fact_less__add__one,axiom,
    ! [V_a,T_a] :
      ( class_Rings_Olinordered__semidom(T_a)
     => c_Orderings_Oord__class_Oless(T_a,V_a,c_Groups_Oplus__class_Oplus(T_a,V_a,c_Groups_Oone__class_Oone(T_a))) ) ).

fof(fact_mult__le__cancel__left__pos,axiom,
    ! [V_b_2,V_aa_2,V_c_2,T_a] :
      ( class_Rings_Olinordered__ring__strict(T_a)
     => ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_aa_2,V_b_2)
        <=> c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_c_2),V_aa_2),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_c_2),V_b_2)) )
       <= c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_c_2) ) ) ).

fof(fact_LIMSEQ__inverse__realpow__zero__lemma,axiom,
    ! [V_n,V_x] :
      ( c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),V_x)
     => c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Oplus__class_Oplus(tc_RealDef_Oreal,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),c_RealDef_Oreal(tc_Nat_Onat,V_n)),V_x),c_Groups_Oone__class_Oone(tc_RealDef_Oreal)),hAPP(hAPP(c_Power_Opower__class_Opower(tc_RealDef_Oreal),c_Groups_Oplus__class_Oplus(tc_RealDef_Oreal,V_x,c_Groups_Oone__class_Oone(tc_RealDef_Oreal))),V_n)) ) ).

fof(arity_Complex__Ocomplex__Rings_Ocomm__semiring__1,axiom,
    class_Rings_Ocomm__semiring__1(tc_Complex_Ocomplex) ).

fof(fact_Re__rcis,axiom,
    ! [V_a,V_r] : hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),V_r),c_Transcendental_Ocos(V_a)) = c_Complex_ORe(c_Complex_Orcis(V_r,V_a)) ).

fof(fact_real__le__trans,axiom,
    ! [V_k,V_j,V_i] :
      ( c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,V_i,V_j)
     => ( c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,V_i,V_k)
       <= c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,V_j,V_k) ) ) ).

fof(arity_Int__Oint__Groups_Oordered__cancel__ab__semigroup__add,axiom,
    class_Groups_Oordered__cancel__ab__semigroup__add(tc_Int_Oint) ).

fof(fact_real__mult__le__cancel__iff1,axiom,
    ! [V_y_2,V_x_2,V_z_2] :
      ( ( c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),V_x_2),V_z_2),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),V_y_2),V_z_2))
      <=> c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,V_x_2,V_y_2) )
     <= c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),V_z_2) ) ).

fof(fact_int__0__neq__1,axiom,
    c_Groups_Ozero__class_Ozero(tc_Int_Oint) != c_Groups_Oone__class_Oone(tc_Int_Oint) ).

fof(fact_Im__complex__of__real,axiom,
    ! [V_z] : c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal) = c_Complex_OIm(c_RealVector_Oof__real(tc_Complex_Ocomplex,V_z)) ).

fof(fact_mult__nonneg__nonneg,axiom,
    ! [V_b,V_a,T_a] :
      ( class_Rings_Oordered__cancel__semiring(T_a)
     => ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_a)
       => ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_b)
         => c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b)) ) ) ) ).

fof(fact_le__add__iff1,axiom,
    ! [V_d_2,V_b_2,V_c_2,V_e_2,V_aa_2,T_a] :
      ( class_Rings_Oordered__ring(T_a)
     => ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Groups_Ominus__class_Ominus(T_a,V_aa_2,V_b_2)),V_e_2),V_c_2),V_d_2)
      <=> c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_aa_2),V_e_2),V_c_2),c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b_2),V_e_2),V_d_2)) ) ) ).

fof(fact_double__compl,axiom,
    ! [V_x,T_a] :
      ( c_Groups_Ouminus__class_Ouminus(T_a,c_Groups_Ouminus__class_Ouminus(T_a,V_x)) = V_x
     <= class_Lattices_Oboolean__algebra(T_a) ) ).

fof(fact_abs__cos__le__one,axiom,
    ! [V_x] : c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Oabs__class_Oabs(tc_RealDef_Oreal,c_Transcendental_Ocos(V_x)),c_Groups_Oone__class_Oone(tc_RealDef_Oreal)) ).

fof(fact_abs__mult__less,axiom,
    ! [V_d,V_b,V_c,V_a,T_a] :
      ( class_Rings_Olinordered__idom(T_a)
     => ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Oabs__class_Oabs(T_a,V_a),V_c)
       => ( c_Orderings_Oord__class_Oless(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Groups_Oabs__class_Oabs(T_a,V_a)),c_Groups_Oabs__class_Oabs(T_a,V_b)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_c),V_d))
         <= c_Orderings_Oord__class_Oless(T_a,c_Groups_Oabs__class_Oabs(T_a,V_b),V_d) ) ) ) ).

fof(fact_real__of__nat__less__iff,axiom,
    ! [V_m_2,V_n_2] :
      ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_n_2,V_m_2)
    <=> c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_RealDef_Oreal(tc_Nat_Onat,V_n_2),c_RealDef_Oreal(tc_Nat_Onat,V_m_2)) ) ).

fof(fact_Deriv_Oadd__diff__add,axiom,
    ! [V_d,V_b,V_c,V_a,T_a] :
      ( c_Groups_Oplus__class_Oplus(T_a,c_Groups_Ominus__class_Ominus(T_a,V_a,V_b),c_Groups_Ominus__class_Ominus(T_a,V_c,V_d)) = c_Groups_Ominus__class_Ominus(T_a,c_Groups_Oplus__class_Oplus(T_a,V_a,V_c),c_Groups_Oplus__class_Oplus(T_a,V_b,V_d))
     <= class_Groups_Oab__group__add(T_a) ) ).

fof(fact_diff__self,axiom,
    ! [V_a,T_a] :
      ( c_Groups_Ozero__class_Ozero(T_a) = c_Groups_Ominus__class_Ominus(T_a,V_a,V_a)
     <= class_Groups_Ogroup__add(T_a) ) ).

fof(fact_real__sqrt__not__eq__zero,axiom,
    ! [V_x] :
      ( c_NthRoot_Osqrt(V_x) != c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)
     <= c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),V_x) ) ).

fof(fact_zero__le__natfloor,axiom,
    ! [V_x] : c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),c_RComplete_Onatfloor(V_x)) ).

fof(fact_cis__zero,axiom,
    c_Groups_Oone__class_Oone(tc_Complex_Ocomplex) = c_Complex_Ocis(c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)) ).

fof(arity_Nat__Onat__Rings_Olinordered__comm__semiring__strict,axiom,
    class_Rings_Olinordered__comm__semiring__strict(tc_Nat_Onat) ).

fof(fact_complex__mod__triangle__ineq2,axiom,
    ! [V_a,V_b] : c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Ominus__class_Ominus(tc_RealDef_Oreal,c_RealVector_Onorm__class_Onorm(tc_Complex_Ocomplex,c_Groups_Oplus__class_Oplus(tc_Complex_Ocomplex,V_b,V_a)),c_RealVector_Onorm__class_Onorm(tc_Complex_Ocomplex,V_b)),c_RealVector_Onorm__class_Onorm(tc_Complex_Ocomplex,V_a)) ).

fof(fact_add__less__imp__less__left,axiom,
    ! [V_b,V_a,V_c,T_a] :
      ( class_Groups_Oordered__ab__semigroup__add__imp__le(T_a)
     => ( c_Orderings_Oord__class_Oless(T_a,V_a,V_b)
       <= c_Orderings_Oord__class_Oless(T_a,c_Groups_Oplus__class_Oplus(T_a,V_c,V_a),c_Groups_Oplus__class_Oplus(T_a,V_c,V_b)) ) ) ).

fof(fact_lemmaCauchy,axiom,
    ! [V_X_2,V_M_2,T_a,T_b] :
      ( ( class_Orderings_Oord(T_a)
        & class_RealVector_Oreal__normed__vector(T_b) )
     => ( ! [B_n] :
            ( c_Orderings_Oord__class_Oless__eq(T_a,V_M_2,B_n)
           => c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_RealVector_Onorm__class_Onorm(T_b,hAPP(V_X_2,B_n)),c_Groups_Oplus__class_Oplus(tc_RealDef_Oreal,c_Groups_Oone__class_Oone(tc_RealDef_Oreal),c_RealVector_Onorm__class_Onorm(T_b,hAPP(V_X_2,V_M_2)))) )
       <= ! [B_n] :
            ( c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_RealVector_Onorm__class_Onorm(T_b,c_Groups_Ominus__class_Ominus(T_b,hAPP(V_X_2,V_M_2),hAPP(V_X_2,B_n))),c_Groups_Oone__class_Oone(tc_RealDef_Oreal))
           <= c_Orderings_Oord__class_Oless__eq(T_a,V_M_2,B_n) ) ) ) ).

fof(fact_Bseq__iff3,axiom,
    ! [V_X_2,T_a] :
      ( ( ? [B_k] :
            ( c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),B_k)
            & ? [B_N] :
              ! [B_n] : c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_RealVector_Onorm__class_Onorm(T_a,c_Groups_Oplus__class_Oplus(T_a,hAPP(V_X_2,B_n),c_Groups_Ouminus__class_Ouminus(T_a,hAPP(V_X_2,B_N)))),B_k) )
      <=> c_SEQ_OBseq(T_a,V_X_2) )
     <= class_RealVector_Oreal__normed__vector(T_a) ) ).

fof(arity_Nat__Onat__Groups_Oordered__comm__monoid__add,axiom,
    class_Groups_Oordered__comm__monoid__add(tc_Nat_Onat) ).

fof(arity_Complex__Ocomplex__Groups_Oab__group__add,axiom,
    class_Groups_Oab__group__add(tc_Complex_Ocomplex) ).

fof(fact_zero__less__abs__iff,axiom,
    ! [V_aa_2,T_a] :
      ( class_Groups_Oordered__ab__group__add__abs(T_a)
     => ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),c_Groups_Oabs__class_Oabs(T_a,V_aa_2))
      <=> c_Groups_Ozero__class_Ozero(T_a) != V_aa_2 ) ) ).

fof(arity_RealDef__Oreal__Rings_Oordered__cancel__semiring,axiom,
    class_Rings_Oordered__cancel__semiring(tc_RealDef_Oreal) ).

fof(fact_minus__zero,axiom,
    ! [T_a] :
      ( class_Groups_Ogroup__add(T_a)
     => c_Groups_Ouminus__class_Ouminus(T_a,c_Groups_Ozero__class_Ozero(T_a)) = c_Groups_Ozero__class_Ozero(T_a) ) ).

fof(fact_abs__of__nonpos,axiom,
    ! [V_a,T_a] :
      ( ( c_Groups_Oabs__class_Oabs(T_a,V_a) = c_Groups_Ouminus__class_Ouminus(T_a,V_a)
       <= c_Orderings_Oord__class_Oless__eq(T_a,V_a,c_Groups_Ozero__class_Ozero(T_a)) )
     <= class_Groups_Oordered__ab__group__add__abs(T_a) ) ).

fof(arity_RealDef__Oreal__Groups_Oone,axiom,
    class_Groups_Oone(tc_RealDef_Oreal) ).

fof(fact_Bseq__def,axiom,
    ! [V_X_2,T_a] :
      ( class_RealVector_Oreal__normed__vector(T_a)
     => ( ? [B_K] :
            ( c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),B_K)
            & ! [B_n] : c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_RealVector_Onorm__class_Onorm(T_a,hAPP(V_X_2,B_n)),B_K) )
      <=> c_SEQ_OBseq(T_a,V_X_2) ) ) ).

fof(fact_nat__zero__less__power__iff,axiom,
    ! [V_n_2,V_x_2] :
      ( ( c_Groups_Ozero__class_Ozero(tc_Nat_Onat) = V_n_2
        | c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_x_2) )
    <=> c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),hAPP(hAPP(c_Power_Opower__class_Opower(tc_Nat_Onat),V_x_2),V_n_2)) ) ).

fof(fact_natfloor__add,axiom,
    ! [V_a,V_x] :
      ( c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),V_x)
     => c_RComplete_Onatfloor(c_Groups_Oplus__class_Oplus(tc_RealDef_Oreal,V_x,c_RealDef_Oreal(tc_Nat_Onat,V_a))) = c_Groups_Oplus__class_Oplus(tc_Nat_Onat,c_RComplete_Onatfloor(V_x),V_a) ) ).

fof(fact_less__nat__zero__code,axiom,
    ! [V_n] : ~ c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_n,c_Groups_Ozero__class_Ozero(tc_Nat_Onat)) ).

fof(fact_sgn__zero,axiom,
    ! [T_a] :
      ( c_Groups_Osgn__class_Osgn(T_a,c_Groups_Ozero__class_Ozero(T_a)) = c_Groups_Ozero__class_Ozero(T_a)
     <= class_RealVector_Oreal__normed__vector(T_a) ) ).

fof(fact_exp__ge__zero,axiom,
    ! [V_x] : c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),c_Transcendental_Oexp(tc_RealDef_Oreal,V_x)) ).

fof(fact_le__trans,axiom,
    ! [V_k,V_j,V_i] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_i,V_j)
     => ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_j,V_k)
       => c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_i,V_k) ) ) ).

fof(fact_le__refl,axiom,
    ! [V_n] : c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_n,V_n) ).

fof(arity_RealDef__Oreal__Rings_Ocomm__semiring__1,axiom,
    class_Rings_Ocomm__semiring__1(tc_RealDef_Oreal) ).

fof(fact_natceiling__add__one,axiom,
    ! [V_x] :
      ( c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),V_x)
     => c_Groups_Oplus__class_Oplus(tc_Nat_Onat,c_RComplete_Onatceiling(V_x),c_Groups_Oone__class_Oone(tc_Nat_Onat)) = c_RComplete_Onatceiling(c_Groups_Oplus__class_Oplus(tc_RealDef_Oreal,V_x,c_Groups_Oone__class_Oone(tc_RealDef_Oreal))) ) ).

fof(arity_Complex__Ocomplex__Groups_Oone,axiom,
    class_Groups_Oone(tc_Complex_Ocomplex) ).

fof(fact_mult_Oadd__right,axiom,
    ! [V_b_H,V_b,V_a,T_a] :
      ( class_RealVector_Oreal__normed__algebra(T_a)
     => hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),c_Groups_Oplus__class_Oplus(T_a,V_b,V_b_H)) = c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b_H)) ) ).

fof(fact_abs__idempotent,axiom,
    ! [V_a,T_a] :
      ( class_Groups_Oordered__ab__group__add__abs(T_a)
     => c_Groups_Oabs__class_Oabs(T_a,V_a) = c_Groups_Oabs__class_Oabs(T_a,c_Groups_Oabs__class_Oabs(T_a,V_a)) ) ).

fof(fact_complex__Re__mult,axiom,
    ! [V_y,V_x] : c_Groups_Ominus__class_Ominus(tc_RealDef_Oreal,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),c_Complex_ORe(V_x)),c_Complex_ORe(V_y)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),c_Complex_OIm(V_x)),c_Complex_OIm(V_y))) = c_Complex_ORe(hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Complex_Ocomplex),V_x),V_y)) ).

fof(arity_RealDef__Oreal__Rings_Olinordered__comm__semiring__strict,axiom,
    class_Rings_Olinordered__comm__semiring__strict(tc_RealDef_Oreal) ).

fof(arity_Nat__Onat__Groups_Omonoid__add,axiom,
    class_Groups_Omonoid__add(tc_Nat_Onat) ).

fof(fact_q__pos__lemma,axiom,
    ! [V_r_H,V_q_H,V_b_H] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),c_Groups_Oplus__class_Oplus(tc_Int_Oint,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_b_H),V_q_H),V_r_H))
     => ( c_Orderings_Oord__class_Oless(tc_Int_Oint,V_r_H,V_b_H)
       => ( c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_q_H)
         <= c_Orderings_Oord__class_Oless(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_b_H) ) ) ) ).

fof(arity_Complex__Ocomplex__RealVector_Oreal__normed__vector,axiom,
    class_RealVector_Oreal__normed__vector(tc_Complex_Ocomplex) ).

fof(arity_Nat__Onat__Rings_Oordered__comm__semiring,axiom,
    class_Rings_Oordered__comm__semiring(tc_Nat_Onat) ).

fof(fact_norm__of__real,axiom,
    ! [V_r,T_a] :
      ( class_RealVector_Oreal__normed__algebra__1(T_a)
     => c_RealVector_Onorm__class_Onorm(T_a,c_RealVector_Oof__real(T_a,V_r)) = c_Groups_Oabs__class_Oabs(tc_RealDef_Oreal,V_r) ) ).

fof(arity_HOL__Obool__Orderings_Oord,axiom,
    class_Orderings_Oord(tc_HOL_Obool) ).

fof(arity_Complex__Ocomplex__Groups_Oab__semigroup__add,axiom,
    class_Groups_Oab__semigroup__add(tc_Complex_Ocomplex) ).

fof(fact_comm__semiring__1__class_Onormalizing__semiring__rules_I23_J,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( class_Rings_Ocomm__semiring__1(T_a)
     => c_Groups_Oplus__class_Oplus(T_a,c_Groups_Oplus__class_Oplus(T_a,V_a,V_b),V_c) = c_Groups_Oplus__class_Oplus(T_a,c_Groups_Oplus__class_Oplus(T_a,V_a,V_c),V_b) ) ).

fof(arity_RealDef__Oreal__Groups_Oabs__if,axiom,
    class_Groups_Oabs__if(tc_RealDef_Oreal) ).

fof(arity_Complex__Ocomplex__Rings_Ocomm__semiring,axiom,
    class_Rings_Ocomm__semiring(tc_Complex_Ocomplex) ).

fof(fact_compl__eq__compl__iff,axiom,
    ! [V_y_2,V_x_2,T_a] :
      ( ( V_y_2 = V_x_2
      <=> c_Groups_Ouminus__class_Ouminus(T_a,V_x_2) = c_Groups_Ouminus__class_Ouminus(T_a,V_y_2) )
     <= class_Lattices_Oboolean__algebra(T_a) ) ).

fof(fact_norm__minus__commute,axiom,
    ! [V_b,V_a,T_a] :
      ( c_RealVector_Onorm__class_Onorm(T_a,c_Groups_Ominus__class_Ominus(T_a,V_a,V_b)) = c_RealVector_Onorm__class_Onorm(T_a,c_Groups_Ominus__class_Ominus(T_a,V_b,V_a))
     <= class_RealVector_Oreal__normed__vector(T_a) ) ).

fof(arity_Complex__Ocomplex__Rings_Osemiring__0,axiom,
    class_Rings_Osemiring__0(tc_Complex_Ocomplex) ).

fof(fact_mult__nonpos__nonneg,axiom,
    ! [V_b,V_a,T_a] :
      ( class_Rings_Oordered__cancel__semiring(T_a)
     => ( c_Orderings_Oord__class_Oless__eq(T_a,V_a,c_Groups_Ozero__class_Ozero(T_a))
       => ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_b)
         => c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b),c_Groups_Ozero__class_Ozero(T_a)) ) ) ) ).

fof(fact_comm__semiring__1__class_Onormalizing__semiring__rules_I12_J,axiom,
    ! [V_a,T_a] :
      ( hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),c_Groups_Oone__class_Oone(T_a)) = V_a
     <= class_Rings_Ocomm__semiring__1(T_a) ) ).

fof(fact_mult__right__le__imp__le,axiom,
    ! [V_b,V_c,V_a,T_a] :
      ( ( c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_c),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b),V_c))
       => ( c_Orderings_Oord__class_Oless__eq(T_a,V_a,V_b)
         <= c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_c) ) )
     <= class_Rings_Olinordered__semiring__strict(T_a) ) ).

fof(fact_zadd__zmult__distrib,axiom,
    ! [V_w,V_z2,V_z1] : hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),c_Groups_Oplus__class_Oplus(tc_Int_Oint,V_z1,V_z2)),V_w) = c_Groups_Oplus__class_Oplus(tc_Int_Oint,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_z1),V_w),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_z2),V_w)) ).

fof(fact_zero__neq__one,axiom,
    ! [T_a] :
      ( c_Groups_Oone__class_Oone(T_a) != c_Groups_Ozero__class_Ozero(T_a)
     <= class_Rings_Ozero__neq__one(T_a) ) ).

fof(arity_RealDef__Oreal__SEQ_Obanach,axiom,
    class_SEQ_Obanach(tc_RealDef_Oreal) ).

fof(fact_sum__squares__le__zero__iff,axiom,
    ! [V_y_2,V_x_2,T_a] :
      ( class_Rings_Olinordered__ring__strict(T_a)
     => ( ( c_Groups_Ozero__class_Ozero(T_a) = V_y_2
          & c_Groups_Ozero__class_Ozero(T_a) = V_x_2 )
      <=> c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_x_2),V_x_2),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_y_2),V_y_2)),c_Groups_Ozero__class_Ozero(T_a)) ) ) ).

fof(fact_abs__le__D1,axiom,
    ! [V_b,V_a,T_a] :
      ( class_Groups_Oordered__ab__group__add__abs(T_a)
     => ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Oabs__class_Oabs(T_a,V_a),V_b)
       => c_Orderings_Oord__class_Oless__eq(T_a,V_a,V_b) ) ) ).

fof(arity_Int__Oint__Groups_Oab__semigroup__mult,axiom,
    class_Groups_Oab__semigroup__mult(tc_Int_Oint) ).

fof(arity_Complex__Ocomplex__Rings_Oring,axiom,
    class_Rings_Oring(tc_Complex_Ocomplex) ).

fof(fact_expi__def,axiom,
    ! [V_z] : hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Complex_Ocomplex),c_RealVector_Oof__real(tc_Complex_Ocomplex,c_Transcendental_Oexp(tc_RealDef_Oreal,c_Complex_ORe(V_z)))),c_Complex_Ocis(c_Complex_OIm(V_z))) = c_Complex_Oexpi(V_z) ).

fof(fact_ab__semigroup__mult__class_Omult__ac_I1_J,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b)),V_c) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b),V_c))
     <= class_Groups_Oab__semigroup__mult(T_a) ) ).

fof(arity_Nat__Onat__Rings_Oordered__semiring,axiom,
    class_Rings_Oordered__semiring(tc_Nat_Onat) ).

fof(fact_cmod__unit__one,axiom,
    ! [V_a] : c_RealVector_Onorm__class_Onorm(tc_Complex_Ocomplex,c_Complex_Ocomplex_OComplex(c_Transcendental_Ocos(V_a),c_Transcendental_Osin(V_a))) = c_Groups_Oone__class_Oone(tc_RealDef_Oreal) ).

fof(fact_real__sqrt__le__0__iff,axiom,
    ! [V_x_2] :
      ( c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_NthRoot_Osqrt(V_x_2),c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal))
    <=> c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,V_x_2,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)) ) ).

fof(arity_Int__Oint__Semiring__Normalization_Ocomm__semiring__1__cancel__crossproduct,axiom,
    class_Semiring__Normalization_Ocomm__semiring__1__cancel__crossproduct(tc_Int_Oint) ).

fof(fact_sgn__of__real,axiom,
    ! [V_r,T_a] :
      ( class_RealVector_Oreal__normed__algebra__1(T_a)
     => c_RealVector_Oof__real(T_a,c_Groups_Osgn__class_Osgn(tc_RealDef_Oreal,V_r)) = c_Groups_Osgn__class_Osgn(T_a,c_RealVector_Oof__real(T_a,V_r)) ) ).

fof(fact_cos__zero,axiom,
    c_Transcendental_Ocos(c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)) = c_Groups_Oone__class_Oone(tc_RealDef_Oreal) ).

fof(fact_add__left__mono,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_a,V_b)
       => c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Oplus__class_Oplus(T_a,V_c,V_a),c_Groups_Oplus__class_Oplus(T_a,V_c,V_b)) )
     <= class_Groups_Oordered__ab__semigroup__add(T_a) ) ).

fof(fact_sin__diff2,axiom,
    ! [V_y,V_x] : c_Transcendental_Osin(c_Groups_Ominus__class_Ominus(tc_RealDef_Oreal,V_x,V_y)) = c_Groups_Ominus__class_Ominus(tc_RealDef_Oreal,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),c_Transcendental_Ocos(V_y)),c_Transcendental_Osin(V_x)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),c_Transcendental_Osin(V_y)),c_Transcendental_Ocos(V_x))) ).

fof(fact_not__add__less1,axiom,
    ! [V_j,V_i] : ~ c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_i,V_j),V_i) ).

fof(fact_Re_Opos__bounded,axiom,
    ? [B_K] :
      ( c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),B_K)
      & ! [B_x] : c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_RealVector_Onorm__class_Onorm(tc_RealDef_Oreal,c_Complex_ORe(B_x)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),c_RealVector_Onorm__class_Onorm(tc_Complex_Ocomplex,B_x)),B_K)) ) ).

fof(fact_complex__of__real__i,axiom,
    ! [V_r] : c_Complex_Ocomplex_OComplex(c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),V_r) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Complex_Ocomplex),c_RealVector_Oof__real(tc_Complex_Ocomplex,V_r)),c_Complex_Oii) ).

fof(fact_linorder__neqE,axiom,
    ! [V_y,V_x,T_a] :
      ( class_Orderings_Olinorder(T_a)
     => ( ( ~ c_Orderings_Oord__class_Oless(T_a,V_x,V_y)
         => c_Orderings_Oord__class_Oless(T_a,V_y,V_x) )
       <= V_x != V_y ) ) ).

fof(arity_Int__Oint__Rings_Ocomm__semiring,axiom,
    class_Rings_Ocomm__semiring(tc_Int_Oint) ).

fof(arity_Int__Oint__Rings_Oordered__ring__abs,axiom,
    class_Rings_Oordered__ring__abs(tc_Int_Oint) ).

fof(fact_nat__mult__eq__cancel1,axiom,
    ! [V_n_2,V_m_2,V_k_2] :
      ( ( V_m_2 = V_n_2
      <=> hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_k_2),V_n_2) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_k_2),V_m_2) )
     <= c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_k_2) ) ).

fof(fact_abs__sum__triangle__ineq,axiom,
    ! [V_m,V_l,V_y,V_x] : c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Oabs__class_Oabs(tc_RealDef_Oreal,c_Groups_Oplus__class_Oplus(tc_RealDef_Oreal,c_Groups_Oplus__class_Oplus(tc_RealDef_Oreal,V_x,V_y),c_Groups_Oplus__class_Oplus(tc_RealDef_Oreal,c_Groups_Ouminus__class_Ouminus(tc_RealDef_Oreal,V_l),c_Groups_Ouminus__class_Ouminus(tc_RealDef_Oreal,V_m)))),c_Groups_Oplus__class_Oplus(tc_RealDef_Oreal,c_Groups_Oabs__class_Oabs(tc_RealDef_Oreal,c_Groups_Oplus__class_Oplus(tc_RealDef_Oreal,V_x,c_Groups_Ouminus__class_Ouminus(tc_RealDef_Oreal,V_l))),c_Groups_Oabs__class_Oabs(tc_RealDef_Oreal,c_Groups_Oplus__class_Oplus(tc_RealDef_Oreal,V_y,c_Groups_Ouminus__class_Ouminus(tc_RealDef_Oreal,V_m))))) ).

fof(fact_mult__le__cancel__left__neg,axiom,
    ! [V_b_2,V_aa_2,V_c_2,T_a] :
      ( class_Rings_Olinordered__ring__strict(T_a)
     => ( c_Orderings_Oord__class_Oless(T_a,V_c_2,c_Groups_Ozero__class_Ozero(T_a))
       => ( c_Orderings_Oord__class_Oless__eq(T_a,V_b_2,V_aa_2)
        <=> c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_c_2),V_aa_2),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_c_2),V_b_2)) ) ) ) ).

fof(fact_abs__power__minus,axiom,
    ! [V_n,V_a,T_a] :
      ( c_Groups_Oabs__class_Oabs(T_a,hAPP(hAPP(c_Power_Opower__class_Opower(T_a),c_Groups_Ouminus__class_Ouminus(T_a,V_a)),V_n)) = c_Groups_Oabs__class_Oabs(T_a,hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_n))
     <= class_Rings_Olinordered__idom(T_a) ) ).

fof(fact_zero__less__norm__iff,axiom,
    ! [V_x_2,T_a] :
      ( ( c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),c_RealVector_Onorm__class_Onorm(T_a,V_x_2))
      <=> V_x_2 != c_Groups_Ozero__class_Ozero(T_a) )
     <= class_RealVector_Oreal__normed__vector(T_a) ) ).

fof(fact_ord__le__eq__trans,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( class_Orderings_Oord(T_a)
     => ( c_Orderings_Oord__class_Oless__eq(T_a,V_a,V_b)
       => ( V_b = V_c
         => c_Orderings_Oord__class_Oless__eq(T_a,V_a,V_c) ) ) ) ).

fof(fact_exp__ln__eq,axiom,
    ! [V_x,V_u] :
      ( c_Transcendental_Oln(V_x) = V_u
     <= V_x = c_Transcendental_Oexp(tc_RealDef_Oreal,V_u) ) ).

fof(arity_RealDef__Oreal__Rings_Olinordered__semiring__1__strict,axiom,
    class_Rings_Olinordered__semiring__1__strict(tc_RealDef_Oreal) ).

fof(fact_minus__mult__commute,axiom,
    ! [V_b,V_a,T_a] :
      ( hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),c_Groups_Ouminus__class_Ouminus(T_a,V_b)) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Groups_Ouminus__class_Ouminus(T_a,V_a)),V_b)
     <= class_Rings_Oring(T_a) ) ).

fof(arity_Int__Oint__Rings_Oordered__semiring,axiom,
    class_Rings_Oordered__semiring(tc_Int_Oint) ).

fof(fact_comm__semiring__1__class_Onormalizing__semiring__rules_I14_J,axiom,
    ! [V_ry,V_rx,V_ly,V_lx,T_a] :
      ( hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_lx),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_ly),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_rx),V_ry))) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_lx),V_ly)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_rx),V_ry))
     <= class_Rings_Ocomm__semiring__1(T_a) ) ).

fof(fact_sgn__sgn,axiom,
    ! [V_a,T_a] :
      ( c_Groups_Osgn__class_Osgn(T_a,c_Groups_Osgn__class_Osgn(T_a,V_a)) = c_Groups_Osgn__class_Osgn(T_a,V_a)
     <= class_Rings_Olinordered__idom(T_a) ) ).

fof(arity_Int__Oint__Groups_Oordered__comm__monoid__add,axiom,
    class_Groups_Oordered__comm__monoid__add(tc_Int_Oint) ).

fof(fact_add__strict__mono,axiom,
    ! [V_d,V_c,V_b,V_a,T_a] :
      ( class_Groups_Oordered__cancel__ab__semigroup__add(T_a)
     => ( ( c_Orderings_Oord__class_Oless(T_a,V_c,V_d)
         => c_Orderings_Oord__class_Oless(T_a,c_Groups_Oplus__class_Oplus(T_a,V_a,V_c),c_Groups_Oplus__class_Oplus(T_a,V_b,V_d)) )
       <= c_Orderings_Oord__class_Oless(T_a,V_a,V_b) ) ) ).

fof(fact_xt1_I5_J,axiom,
    ! [V_x,V_y,T_a] :
      ( class_Orderings_Oorder(T_a)
     => ( c_Orderings_Oord__class_Oless__eq(T_a,V_y,V_x)
       => ( V_x = V_y
         <= c_Orderings_Oord__class_Oless__eq(T_a,V_x,V_y) ) ) ) ).

fof(fact_nat__add__left__cancel__le,axiom,
    ! [V_n_2,V_m_2,V_k_2] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m_2,V_n_2)
    <=> c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_k_2,V_m_2),c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_k_2,V_n_2)) ) ).

fof(fact_zadd__0__right,axiom,
    ! [V_z] : V_z = c_Groups_Oplus__class_Oplus(tc_Int_Oint,V_z,c_Groups_Ozero__class_Ozero(tc_Int_Oint)) ).

fof(fact_add__imp__eq,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( ( V_b = V_c
       <= c_Groups_Oplus__class_Oplus(T_a,V_a,V_c) = c_Groups_Oplus__class_Oplus(T_a,V_a,V_b) )
     <= class_Groups_Ocancel__ab__semigroup__add(T_a) ) ).

fof(arity_Int__Oint__Groups_Omonoid__mult,axiom,
    class_Groups_Omonoid__mult(tc_Int_Oint) ).

fof(fact_real__mult__order,axiom,
    ! [V_y,V_x] :
      ( c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),V_x)
     => ( c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),V_x),V_y))
       <= c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),V_y) ) ) ).

fof(fact_complex__mod__rcis,axiom,
    ! [V_a,V_r] : c_Groups_Oabs__class_Oabs(tc_RealDef_Oreal,V_r) = c_RealVector_Onorm__class_Onorm(tc_Complex_Ocomplex,c_Complex_Orcis(V_r,V_a)) ).

fof(fact_zadd__assoc,axiom,
    ! [V_z3,V_z2,V_z1] : c_Groups_Oplus__class_Oplus(tc_Int_Oint,V_z1,c_Groups_Oplus__class_Oplus(tc_Int_Oint,V_z2,V_z3)) = c_Groups_Oplus__class_Oplus(tc_Int_Oint,c_Groups_Oplus__class_Oplus(tc_Int_Oint,V_z1,V_z2),V_z3) ).

fof(fact_real__sqrt__lt__1__iff,axiom,
    ! [V_x_2] :
      ( c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,V_x_2,c_Groups_Oone__class_Oone(tc_RealDef_Oreal))
    <=> c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_NthRoot_Osqrt(V_x_2),c_Groups_Oone__class_Oone(tc_RealDef_Oreal)) ) ).

fof(fact_not__real__of__nat__less__zero,axiom,
    ! [V_n] : ~ c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_RealDef_Oreal(tc_Nat_Onat,V_n),c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)) ).

fof(fact_le__imp__diff__is__add,axiom,
    ! [V_k_2,V_j_2,V_i_2] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_i_2,V_j_2)
     => ( V_k_2 = c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_j_2,V_i_2)
      <=> c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_k_2,V_i_2) = V_j_2 ) ) ).

fof(fact_diff__minus__eq__add,axiom,
    ! [V_b,V_a,T_a] :
      ( class_Groups_Ogroup__add(T_a)
     => c_Groups_Oplus__class_Oplus(T_a,V_a,V_b) = c_Groups_Ominus__class_Ominus(T_a,V_a,c_Groups_Ouminus__class_Ouminus(T_a,V_b)) ) ).

fof(fact_norm__power,axiom,
    ! [V_n,V_x,T_a] :
      ( class_RealVector_Oreal__normed__div__algebra(T_a)
     => hAPP(hAPP(c_Power_Opower__class_Opower(tc_RealDef_Oreal),c_RealVector_Onorm__class_Onorm(T_a,V_x)),V_n) = c_RealVector_Onorm__class_Onorm(T_a,hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_x),V_n)) ) ).

fof(fact_comm__semiring__1__class_Onormalizing__semiring__rules_I10_J,axiom,
    ! [V_a,T_a] :
      ( class_Rings_Ocomm__semiring__1(T_a)
     => c_Groups_Ozero__class_Ozero(T_a) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),c_Groups_Ozero__class_Ozero(T_a)) ) ).

fof(fact_exp__less__one__iff,axiom,
    ! [V_x_2] :
      ( c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,V_x_2,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal))
    <=> c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_Transcendental_Oexp(tc_RealDef_Oreal,V_x_2),c_Groups_Oone__class_Oone(tc_RealDef_Oreal)) ) ).

fof(fact_real__natceiling__ge,axiom,
    ! [V_x] : c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,V_x,c_RealDef_Oreal(tc_Nat_Onat,c_RComplete_Onatceiling(V_x))) ).

fof(fact_sgn__minus,axiom,
    ! [V_x,T_a] :
      ( class_RealVector_Oreal__normed__vector(T_a)
     => c_Groups_Osgn__class_Osgn(T_a,c_Groups_Ouminus__class_Ouminus(T_a,V_x)) = c_Groups_Ouminus__class_Ouminus(T_a,c_Groups_Osgn__class_Osgn(T_a,V_x)) ) ).

fof(fact_zero__less__diff,axiom,
    ! [V_m_2,V_n_2] :
      ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_m_2,V_n_2)
    <=> c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_n_2,V_m_2)) ) ).

fof(fact_real__sqrt__eq__zero__cancel,axiom,
    ! [V_x] :
      ( c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),V_x)
     => ( c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal) = c_NthRoot_Osqrt(V_x)
       => V_x = c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal) ) ) ).

fof(arity_Complex__Ocomplex__Groups_Oab__semigroup__mult,axiom,
    class_Groups_Oab__semigroup__mult(tc_Complex_Ocomplex) ).

fof(fact_mult__left__mono,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( class_Rings_Oordered__semiring(T_a)
     => ( c_Orderings_Oord__class_Oless__eq(T_a,V_a,V_b)
       => ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_c)
         => c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_c),V_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_c),V_b)) ) ) ) ).

fof(fact_le0,axiom,
    ! [V_n] : c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_n) ).

fof(arity_Int__Oint__Rings_Osemiring__0,axiom,
    class_Rings_Osemiring__0(tc_Int_Oint) ).

fof(fact_mult__strict__left__mono__neg,axiom,
    ! [V_c,V_a,V_b,T_a] :
      ( class_Rings_Olinordered__ring__strict(T_a)
     => ( ( c_Orderings_Oord__class_Oless(T_a,V_c,c_Groups_Ozero__class_Ozero(T_a))
         => c_Orderings_Oord__class_Oless(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_c),V_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_c),V_b)) )
       <= c_Orderings_Oord__class_Oless(T_a,V_b,V_a) ) ) ).

fof(fact_natfloor__real__of__nat,axiom,
    ! [V_n] : V_n = c_RComplete_Onatfloor(c_RealDef_Oreal(tc_Nat_Onat,V_n)) ).

fof(fact_of__real__mult,axiom,
    ! [V_y,V_x,T_a] :
      ( c_RealVector_Oof__real(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),V_x),V_y)) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_RealVector_Oof__real(T_a,V_x)),c_RealVector_Oof__real(T_a,V_y))
     <= class_RealVector_Oreal__algebra__1(T_a) ) ).

fof(fact_mult_Ominus__right,axiom,
    ! [V_b,V_a,T_a] :
      ( class_RealVector_Oreal__normed__algebra(T_a)
     => hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),c_Groups_Ouminus__class_Ouminus(T_a,V_b)) = c_Groups_Ouminus__class_Ouminus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b)) ) ).

fof(fact_abs__triangle__ineq2,axiom,
    ! [V_b,V_a,T_a] :
      ( class_Groups_Oordered__ab__group__add__abs(T_a)
     => c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ominus__class_Ominus(T_a,c_Groups_Oabs__class_Oabs(T_a,V_a),c_Groups_Oabs__class_Oabs(T_a,V_b)),c_Groups_Oabs__class_Oabs(T_a,c_Groups_Ominus__class_Ominus(T_a,V_a,V_b))) ) ).

fof(fact_zero__less__mult__pos2,axiom,
    ! [V_a,V_b,T_a] :
      ( class_Rings_Olinordered__semiring__strict(T_a)
     => ( ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_b)
         <= c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_a) )
       <= c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b),V_a)) ) ) ).

fof(fact_mult__le__0__iff,axiom,
    ! [V_b_2,V_aa_2,T_a] :
      ( class_Rings_Olinordered__ring__strict(T_a)
     => ( c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_aa_2),V_b_2),c_Groups_Ozero__class_Ozero(T_a))
      <=> ( ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_b_2)
            & c_Orderings_Oord__class_Oless__eq(T_a,V_aa_2,c_Groups_Ozero__class_Ozero(T_a)) )
          | ( c_Orderings_Oord__class_Oless__eq(T_a,V_b_2,c_Groups_Ozero__class_Ozero(T_a))
            & c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_aa_2) ) ) ) ) ).

fof(arity_Nat__Onat__Rings_Ono__zero__divisors,axiom,
    class_Rings_Ono__zero__divisors(tc_Nat_Onat) ).

fof(fact_gr0I,axiom,
    ! [V_n] :
      ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_n)
     <= c_Groups_Ozero__class_Ozero(tc_Nat_Onat) != V_n ) ).

fof(fact_nat__less__le,axiom,
    ! [V_n_2,V_m_2] :
      ( ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m_2,V_n_2)
        & V_n_2 != V_m_2 )
    <=> c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_m_2,V_n_2) ) ).

fof(fact_real__mult__commute,axiom,
    ! [V_w,V_z] : hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),V_w),V_z) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),V_z),V_w) ).

fof(fact_comm__mult__left__mono,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( ( ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_c)
         => c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_c),V_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_c),V_b)) )
       <= c_Orderings_Oord__class_Oless__eq(T_a,V_a,V_b) )
     <= class_Rings_Oordered__comm__semiring(T_a) ) ).

fof(fact_add__less__mono,axiom,
    ! [V_l,V_k,V_j,V_i] :
      ( ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_k,V_l)
       => c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_i,V_k),c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_j,V_l)) )
     <= c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_i,V_j) ) ).

fof(fact_xt1_I10_J,axiom,
    ! [V_z,V_x,V_y,T_a] :
      ( ( c_Orderings_Oord__class_Oless(T_a,V_y,V_x)
       => ( c_Orderings_Oord__class_Oless(T_a,V_z,V_x)
         <= c_Orderings_Oord__class_Oless(T_a,V_z,V_y) ) )
     <= class_Orderings_Oorder(T_a) ) ).

fof(fact_nat__add__left__cancel,axiom,
    ! [V_n_2,V_m_2,V_k_2] :
      ( c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_k_2,V_n_2) = c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_k_2,V_m_2)
    <=> V_n_2 = V_m_2 ) ).

fof(fact_comm__semiring__1__class_Onormalizing__semiring__rules_I6_J,axiom,
    ! [V_a,T_a] :
      ( V_a = c_Groups_Oplus__class_Oplus(T_a,V_a,c_Groups_Ozero__class_Ozero(T_a))
     <= class_Rings_Ocomm__semiring__1(T_a) ) ).

fof(fact_mult__left_Opos__bounded,axiom,
    ! [V_y,T_a] :
      ( ? [B_K] :
          ( ! [B_x] : c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_RealVector_Onorm__class_Onorm(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),B_x),V_y)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),c_RealVector_Onorm__class_Onorm(T_a,B_x)),B_K))
          & c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),B_K) )
     <= class_RealVector_Oreal__normed__algebra(T_a) ) ).

fof(arity_Complex__Ocomplex__SEQ_Obanach,axiom,
    class_SEQ_Obanach(tc_Complex_Ocomplex) ).

fof(fact_abs__triangle__ineq,axiom,
    ! [V_b,V_a,T_a] :
      ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Oabs__class_Oabs(T_a,c_Groups_Oplus__class_Oplus(T_a,V_a,V_b)),c_Groups_Oplus__class_Oplus(T_a,c_Groups_Oabs__class_Oabs(T_a,V_a),c_Groups_Oabs__class_Oabs(T_a,V_b)))
     <= class_Groups_Oordered__ab__group__add__abs(T_a) ) ).

fof(fact_zmult__zless__mono2,axiom,
    ! [V_k,V_j,V_i] :
      ( c_Orderings_Oord__class_Oless(tc_Int_Oint,V_i,V_j)
     => ( c_Orderings_Oord__class_Oless(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_k)
       => c_Orderings_Oord__class_Oless(tc_Int_Oint,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_k),V_i),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_k),V_j)) ) ) ).

fof(fact_not__add__less2,axiom,
    ! [V_i,V_j] : ~ c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_j,V_i),V_i) ).

fof(fact_add__leD2,axiom,
    ! [V_n,V_k,V_m] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_k,V_n)
     <= c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_m,V_k),V_n) ) ).

fof(fact_natceiling__neg,axiom,
    ! [V_x] :
      ( c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,V_x,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal))
     => c_RComplete_Onatceiling(V_x) = c_Groups_Ozero__class_Ozero(tc_Nat_Onat) ) ).

fof(fact_mult_Oprod__diff__prod,axiom,
    ! [V_b,V_a,V_y,V_x,T_a] :
      ( c_Groups_Ominus__class_Ominus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_x),V_y),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b)) = c_Groups_Oplus__class_Oplus(T_a,c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Groups_Ominus__class_Ominus(T_a,V_x,V_a)),c_Groups_Ominus__class_Ominus(T_a,V_y,V_b)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Groups_Ominus__class_Ominus(T_a,V_x,V_a)),V_b)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),c_Groups_Ominus__class_Ominus(T_a,V_y,V_b)))
     <= class_RealVector_Oreal__normed__algebra(T_a) ) ).

fof(arity_Nat__Onat__Rings_Olinordered__semiring__strict,axiom,
    class_Rings_Olinordered__semiring__strict(tc_Nat_Onat) ).

fof(arity_Int__Oint__Rings_Olinordered__semiring__1,axiom,
    class_Rings_Olinordered__semiring__1(tc_Int_Oint) ).

fof(fact_add__mono,axiom,
    ! [V_d,V_c,V_b,V_a,T_a] :
      ( class_Groups_Oordered__ab__semigroup__add(T_a)
     => ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_c,V_d)
         => c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Oplus__class_Oplus(T_a,V_a,V_c),c_Groups_Oplus__class_Oplus(T_a,V_b,V_d)) )
       <= c_Orderings_Oord__class_Oless__eq(T_a,V_a,V_b) ) ) ).

fof(fact_mult__less__imp__less__left,axiom,
    ! [V_b,V_a,V_c,T_a] :
      ( class_Rings_Olinordered__semiring__strict(T_a)
     => ( c_Orderings_Oord__class_Oless(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_c),V_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_c),V_b))
       => ( c_Orderings_Oord__class_Oless(T_a,V_a,V_b)
         <= c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_c) ) ) ) ).

fof(fact_mult__left__le__imp__le,axiom,
    ! [V_b,V_a,V_c,T_a] :
      ( class_Rings_Olinordered__semiring__strict(T_a)
     => ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_a,V_b)
         <= c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_c) )
       <= c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_c),V_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_c),V_b)) ) ) ).

fof(fact_field__power__not__zero,axiom,
    ! [V_n,V_a,T_a] :
      ( ( V_a != c_Groups_Ozero__class_Ozero(T_a)
       => hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_n) != c_Groups_Ozero__class_Ozero(T_a) )
     <= class_Rings_Oring__1__no__zero__divisors(T_a) ) ).

fof(fact_power__real__of__nat,axiom,
    ! [V_n,V_m] : c_RealDef_Oreal(tc_Nat_Onat,hAPP(hAPP(c_Power_Opower__class_Opower(tc_Nat_Onat),V_m),V_n)) = hAPP(hAPP(c_Power_Opower__class_Opower(tc_RealDef_Oreal),c_RealDef_Oreal(tc_Nat_Onat,V_m)),V_n) ).

fof(fact_mult__nonpos__nonpos,axiom,
    ! [V_b,V_a,T_a] :
      ( ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_b,c_Groups_Ozero__class_Ozero(T_a))
         => c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b)) )
       <= c_Orderings_Oord__class_Oless__eq(T_a,V_a,c_Groups_Ozero__class_Ozero(T_a)) )
     <= class_Rings_Oordered__ring(T_a) ) ).

fof(fact_cos__diff2,axiom,
    ! [V_y,V_x] : c_Groups_Oplus__class_Oplus(tc_RealDef_Oreal,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),c_Transcendental_Ocos(V_y)),c_Transcendental_Ocos(V_x)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),c_Transcendental_Osin(V_y)),c_Transcendental_Osin(V_x))) = c_Transcendental_Ocos(c_Groups_Ominus__class_Ominus(tc_RealDef_Oreal,V_x,V_y)) ).

fof(fact_less__add__iff2,axiom,
    ! [V_d_2,V_b_2,V_c_2,V_e_2,V_aa_2,T_a] :
      ( class_Rings_Oordered__ring(T_a)
     => ( c_Orderings_Oord__class_Oless(T_a,V_c_2,c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Groups_Ominus__class_Ominus(T_a,V_b_2,V_aa_2)),V_e_2),V_d_2))
      <=> c_Orderings_Oord__class_Oless(T_a,c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_aa_2),V_e_2),V_c_2),c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b_2),V_e_2),V_d_2)) ) ) ).

fof(arity_Int__Oint__Rings_Oring,axiom,
    class_Rings_Oring(tc_Int_Oint) ).

fof(fact_mult__exp__exp,axiom,
    ! [V_y,V_x,T_a] :
      ( hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Transcendental_Oexp(T_a,V_x)),c_Transcendental_Oexp(T_a,V_y)) = c_Transcendental_Oexp(T_a,c_Groups_Oplus__class_Oplus(T_a,V_x,V_y))
     <= ( class_SEQ_Obanach(T_a)
        & class_RealVector_Oreal__normed__field(T_a) ) ) ).

fof(fact_Complex__eq__1,axiom,
    ! [V_b_2,V_aa_2] :
      ( c_Complex_Ocomplex_OComplex(V_aa_2,V_b_2) = c_Groups_Oone__class_Oone(tc_Complex_Ocomplex)
    <=> ( c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal) = V_b_2
        & V_aa_2 = c_Groups_Oone__class_Oone(tc_RealDef_Oreal) ) ) ).

fof(fact_linorder__antisym__conv2,axiom,
    ! [V_y_2,V_x_2,T_a] :
      ( ( ( ~ c_Orderings_Oord__class_Oless(T_a,V_x_2,V_y_2)
        <=> V_y_2 = V_x_2 )
       <= c_Orderings_Oord__class_Oless__eq(T_a,V_x_2,V_y_2) )
     <= class_Orderings_Olinorder(T_a) ) ).

fof(fact_order__less__imp__not__less,axiom,
    ! [V_y,V_x,T_a] :
      ( ( ~ c_Orderings_Oord__class_Oless(T_a,V_y,V_x)
       <= c_Orderings_Oord__class_Oless(T_a,V_x,V_y) )
     <= class_Orderings_Opreorder(T_a) ) ).

fof(fact_complex__Re__le__cmod,axiom,
    ! [V_x] : c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Complex_ORe(V_x),c_RealVector_Onorm__class_Onorm(tc_Complex_Ocomplex,V_x)) ).

fof(arity_RealDef__Oreal__Groups_Oordered__ab__group__add,axiom,
    class_Groups_Oordered__ab__group__add(tc_RealDef_Oreal) ).

fof(fact_compl__mono,axiom,
    ! [V_y,V_x,T_a] :
      ( ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ouminus__class_Ouminus(T_a,V_y),c_Groups_Ouminus__class_Ouminus(T_a,V_x))
       <= c_Orderings_Oord__class_Oless__eq(T_a,V_x,V_y) )
     <= class_Lattices_Oboolean__algebra(T_a) ) ).

fof(fact_le__natfloor__eq,axiom,
    ! [V_aa_2,V_x_2] :
      ( c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),V_x_2)
     => ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_aa_2,c_RComplete_Onatfloor(V_x_2))
      <=> c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_RealDef_Oreal(tc_Nat_Onat,V_aa_2),V_x_2) ) ) ).

fof(fact_expand__complex__eq,axiom,
    ! [V_y_2,V_x_2] :
      ( ( c_Complex_ORe(V_x_2) = c_Complex_ORe(V_y_2)
        & c_Complex_OIm(V_x_2) = c_Complex_OIm(V_y_2) )
    <=> V_x_2 = V_y_2 ) ).

fof(fact_comm__semiring__1__class_Onormalizing__semiring__rules_I17_J,axiom,
    ! [V_rx,V_ly,V_lx,T_a] :
      ( hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_lx),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_ly),V_rx)) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_lx),V_ly)),V_rx)
     <= class_Rings_Ocomm__semiring__1(T_a) ) ).

fof(fact_nat__le__add__iff1,axiom,
    ! [V_n_2,V_m_2,V_u_2,V_i_2,V_j_2] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_j_2,V_i_2)
     => ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_i_2,V_j_2)),V_u_2),V_m_2),V_n_2)
      <=> c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_i_2),V_u_2),V_m_2),c_Groups_Oplus__class_Oplus(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_j_2),V_u_2),V_n_2)) ) ) ).

fof(fact_expi__zero,axiom,
    c_Complex_Oexpi(c_Groups_Ozero__class_Ozero(tc_Complex_Ocomplex)) = c_Groups_Oone__class_Oone(tc_Complex_Ocomplex) ).

fof(fact_exp__le__one__iff,axiom,
    ! [V_x_2] :
      ( c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,V_x_2,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal))
    <=> c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Transcendental_Oexp(tc_RealDef_Oreal,V_x_2),c_Groups_Oone__class_Oone(tc_RealDef_Oreal)) ) ).

fof(fact_comm__semiring__1__class_Onormalizing__semiring__rules_I21_J,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( class_Rings_Ocomm__semiring__1(T_a)
     => c_Groups_Oplus__class_Oplus(T_a,V_a,c_Groups_Oplus__class_Oplus(T_a,V_b,V_c)) = c_Groups_Oplus__class_Oplus(T_a,c_Groups_Oplus__class_Oplus(T_a,V_a,V_b),V_c) ) ).

fof(fact_power__add,axiom,
    ! [V_n,V_m,V_a,T_a] :
      ( class_Groups_Omonoid__mult(T_a)
     => hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_m,V_n)) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_m)),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_n)) ) ).

fof(fact_eq__add__iff2,axiom,
    ! [V_d_2,V_b_2,V_c_2,V_e_2,V_aa_2,T_a] :
      ( ( c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b_2),V_e_2),V_d_2) = c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_aa_2),V_e_2),V_c_2)
      <=> V_c_2 = c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Groups_Ominus__class_Ominus(T_a,V_b_2,V_aa_2)),V_e_2),V_d_2) )
     <= class_Rings_Oring(T_a) ) ).

fof(fact_mult__strict__mono_H,axiom,
    ! [V_d,V_c,V_b,V_a,T_a] :
      ( class_Rings_Olinordered__semiring__strict(T_a)
     => ( c_Orderings_Oord__class_Oless(T_a,V_a,V_b)
       => ( c_Orderings_Oord__class_Oless(T_a,V_c,V_d)
         => ( ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_c)
             => c_Orderings_Oord__class_Oless(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_c),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b),V_d)) )
           <= c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_a) ) ) ) ) ).

fof(fact_add__right__cancel,axiom,
    ! [V_c_2,V_aa_2,V_b_2,T_a] :
      ( ( c_Groups_Oplus__class_Oplus(T_a,V_b_2,V_aa_2) = c_Groups_Oplus__class_Oplus(T_a,V_c_2,V_aa_2)
      <=> V_c_2 = V_b_2 )
     <= class_Groups_Ocancel__semigroup__add(T_a) ) ).

fof(fact_power__strict__decreasing,axiom,
    ! [V_a,V_N,V_n,T_a] :
      ( class_Rings_Olinordered__semidom(T_a)
     => ( ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_a)
         => ( c_Orderings_Oord__class_Oless(T_a,V_a,c_Groups_Oone__class_Oone(T_a))
           => c_Orderings_Oord__class_Oless(T_a,hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_N),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_n)) ) )
       <= c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_n,V_N) ) ) ).

fof(fact_cos__arg__i__mult__zero__pos,axiom,
    ! [V_y] :
      ( c_Transcendental_Ocos(c_Complex_Oarg(c_Complex_Ocomplex_OComplex(c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),V_y))) = c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)
     <= c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),V_y) ) ).

fof(fact_abs__add__one__gt__zero,axiom,
    ! [V_x] : c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),c_Groups_Oplus__class_Oplus(tc_RealDef_Oreal,c_Groups_Oone__class_Oone(tc_RealDef_Oreal),c_Groups_Oabs__class_Oabs(tc_RealDef_Oreal,V_x))) ).

fof(arity_Nat__Onat__Rings_Ocomm__semiring,axiom,
    class_Rings_Ocomm__semiring(tc_Nat_Onat) ).

fof(fact_add__nonpos__neg,axiom,
    ! [V_b,V_a,T_a] :
      ( class_Groups_Oordered__comm__monoid__add(T_a)
     => ( ( c_Orderings_Oord__class_Oless(T_a,V_b,c_Groups_Ozero__class_Ozero(T_a))
         => c_Orderings_Oord__class_Oless(T_a,c_Groups_Oplus__class_Oplus(T_a,V_a,V_b),c_Groups_Ozero__class_Ozero(T_a)) )
       <= c_Orderings_Oord__class_Oless__eq(T_a,V_a,c_Groups_Ozero__class_Ozero(T_a)) ) ) ).

fof(fact_less__not__refl2,axiom,
    ! [V_m,V_n] :
      ( V_n != V_m
     <= c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_n,V_m) ) ).

fof(fact_norm__power__ineq,axiom,
    ! [V_n,V_x,T_a] :
      ( c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_RealVector_Onorm__class_Onorm(T_a,hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_x),V_n)),hAPP(hAPP(c_Power_Opower__class_Opower(tc_RealDef_Oreal),c_RealVector_Onorm__class_Onorm(T_a,V_x)),V_n))
     <= class_RealVector_Oreal__normed__algebra__1(T_a) ) ).

fof(fact_mult__eq__0__iff,axiom,
    ! [V_b_2,V_aa_2,T_a] :
      ( class_Rings_Oring__no__zero__divisors(T_a)
     => ( hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_aa_2),V_b_2) = c_Groups_Ozero__class_Ozero(T_a)
      <=> ( V_aa_2 = c_Groups_Ozero__class_Ozero(T_a)
          | V_b_2 = c_Groups_Ozero__class_Ozero(T_a) ) ) ) ).

fof(fact_not__sum__squares__lt__zero,axiom,
    ! [V_y,V_x,T_a] :
      ( class_Rings_Olinordered__ring(T_a)
     => ~ c_Orderings_Oord__class_Oless(T_a,c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_x),V_x),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_y),V_y)),c_Groups_Ozero__class_Ozero(T_a)) ) ).

fof(fact_add__less__cancel__right,axiom,
    ! [V_b_2,V_c_2,V_aa_2,T_a] :
      ( ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Oplus__class_Oplus(T_a,V_aa_2,V_c_2),c_Groups_Oplus__class_Oplus(T_a,V_b_2,V_c_2))
      <=> c_Orderings_Oord__class_Oless(T_a,V_aa_2,V_b_2) )
     <= class_Groups_Oordered__ab__semigroup__add__imp__le(T_a) ) ).

fof(fact_zmult__1__right,axiom,
    ! [V_z] : V_z = hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_z),c_Groups_Oone__class_Oone(tc_Int_Oint)) ).

fof(fact_ln__eq__zero__iff,axiom,
    ! [V_x_2] :
      ( c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),V_x_2)
     => ( V_x_2 = c_Groups_Oone__class_Oone(tc_RealDef_Oreal)
      <=> c_Transcendental_Oln(V_x_2) = c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal) ) ) ).

fof(fact_norm__one,axiom,
    ! [T_a] :
      ( c_RealVector_Onorm__class_Onorm(T_a,c_Groups_Oone__class_Oone(T_a)) = c_Groups_Oone__class_Oone(tc_RealDef_Oreal)
     <= class_RealVector_Oreal__normed__algebra__1(T_a) ) ).

fof(fact_realpow__pos__nth__unique,axiom,
    ! [V_a,V_n] :
      ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_n)
     => ( ? [B_x] :
            ( ! [B_y] :
                ( ( c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),B_y)
                  & hAPP(hAPP(c_Power_Opower__class_Opower(tc_RealDef_Oreal),B_y),V_n) = V_a )
               => B_x = B_y )
            & V_a = hAPP(hAPP(c_Power_Opower__class_Opower(tc_RealDef_Oreal),B_x),V_n)
            & c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),B_x) )
       <= c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),V_a) ) ) ).

fof(fact_real__0__less__add__iff,axiom,
    ! [V_y_2,V_x_2] :
      ( c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_Groups_Ouminus__class_Ouminus(tc_RealDef_Oreal,V_x_2),V_y_2)
    <=> c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),c_Groups_Oplus__class_Oplus(tc_RealDef_Oreal,V_x_2,V_y_2)) ) ).

fof(arity_Int__Oint__Rings_Olinordered__semiring,axiom,
    class_Rings_Olinordered__semiring(tc_Int_Oint) ).

fof(fact_power__strict__increasing__iff,axiom,
    ! [V_y_2,V_x_2,V_b_2,T_a] :
      ( ( ( c_Orderings_Oord__class_Oless(T_a,hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_b_2),V_x_2),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_b_2),V_y_2))
        <=> c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_x_2,V_y_2) )
       <= c_Orderings_Oord__class_Oless(T_a,c_Groups_Oone__class_Oone(T_a),V_b_2) )
     <= class_Rings_Olinordered__semidom(T_a) ) ).

fof(fact_zpower__zadd__distrib,axiom,
    ! [V_z,V_y,V_x] : hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),hAPP(hAPP(c_Power_Opower__class_Opower(tc_Int_Oint),V_x),V_y)),hAPP(hAPP(c_Power_Opower__class_Opower(tc_Int_Oint),V_x),V_z)) = hAPP(hAPP(c_Power_Opower__class_Opower(tc_Int_Oint),V_x),c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_y,V_z)) ).

fof(fact_convex__bound__le,axiom,
    ! [V_v,V_u,V_y,V_a,V_x,T_a] :
      ( ( ( ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_u)
           => ( ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_u),V_x),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_v),V_y)),V_a)
               <= c_Groups_Oplus__class_Oplus(T_a,V_u,V_v) = c_Groups_Oone__class_Oone(T_a) )
             <= c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_v) ) )
         <= c_Orderings_Oord__class_Oless__eq(T_a,V_y,V_a) )
       <= c_Orderings_Oord__class_Oless__eq(T_a,V_x,V_a) )
     <= class_Rings_Olinordered__semiring__1(T_a) ) ).

fof(fact_i__mult__Complex,axiom,
    ! [V_b,V_a] : c_Complex_Ocomplex_OComplex(c_Groups_Ouminus__class_Ouminus(tc_RealDef_Oreal,V_b),V_a) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Complex_Ocomplex),c_Complex_Oii),c_Complex_Ocomplex_OComplex(V_a,V_b)) ).

fof(fact_norm__ratiotest__lemma,axiom,
    ! [V_y,V_x,V_c,T_a] :
      ( class_RealVector_Oreal__normed__vector(T_a)
     => ( c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,V_c,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal))
       => ( c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_RealVector_Onorm__class_Onorm(T_a,V_x),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),V_c),c_RealVector_Onorm__class_Onorm(T_a,V_y)))
         => V_x = c_Groups_Ozero__class_Ozero(T_a) ) ) ) ).

fof(fact_zminus__0,axiom,
    c_Groups_Ouminus__class_Ouminus(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint)) = c_Groups_Ozero__class_Ozero(tc_Int_Oint) ).

fof(arity_RealDef__Oreal__Rings_Oordered__comm__semiring,axiom,
    class_Rings_Oordered__comm__semiring(tc_RealDef_Oreal) ).

fof(arity_Nat__Onat__Orderings_Oord,axiom,
    class_Orderings_Oord(tc_Nat_Onat) ).

fof(fact_mult__less__cancel__left__pos,axiom,
    ! [V_b_2,V_aa_2,V_c_2,T_a] :
      ( class_Rings_Olinordered__ring__strict(T_a)
     => ( ( c_Orderings_Oord__class_Oless(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_c_2),V_aa_2),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_c_2),V_b_2))
        <=> c_Orderings_Oord__class_Oless(T_a,V_aa_2,V_b_2) )
       <= c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_c_2) ) ) ).

fof(fact_power__mult__distrib,axiom,
    ! [V_n,V_b,V_a,T_a] :
      ( class_Groups_Ocomm__monoid__mult(T_a)
     => hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_n)),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_b),V_n)) = hAPP(hAPP(c_Power_Opower__class_Opower(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b)),V_n) ) ).

fof(fact_minus__le__iff,axiom,
    ! [V_b_2,V_aa_2,T_a] :
      ( class_Groups_Oordered__ab__group__add(T_a)
     => ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ouminus__class_Ouminus(T_a,V_b_2),V_aa_2)
      <=> c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ouminus__class_Ouminus(T_a,V_aa_2),V_b_2) ) ) ).

fof(fact_real__add__minus__iff,axiom,
    ! [V_aa_2,V_x_2] :
      ( V_aa_2 = V_x_2
    <=> c_Groups_Oplus__class_Oplus(tc_RealDef_Oreal,V_x_2,c_Groups_Ouminus__class_Ouminus(tc_RealDef_Oreal,V_aa_2)) = c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal) ) ).

fof(fact_xt1_I9_J,axiom,
    ! [V_a,V_b,T_a] :
      ( class_Orderings_Oorder(T_a)
     => ( ~ c_Orderings_Oord__class_Oless(T_a,V_a,V_b)
       <= c_Orderings_Oord__class_Oless(T_a,V_b,V_a) ) ) ).

fof(fact_abs__diff__less__iff,axiom,
    ! [V_ra_2,V_aa_2,V_x_2,T_a] :
      ( ( ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Ominus__class_Ominus(T_a,V_aa_2,V_ra_2),V_x_2)
          & c_Orderings_Oord__class_Oless(T_a,V_x_2,c_Groups_Oplus__class_Oplus(T_a,V_aa_2,V_ra_2)) )
      <=> c_Orderings_Oord__class_Oless(T_a,c_Groups_Oabs__class_Oabs(T_a,c_Groups_Ominus__class_Ominus(T_a,V_x_2,V_aa_2)),V_ra_2) )
     <= class_Rings_Olinordered__idom(T_a) ) ).

fof(fact_neq0__conv,axiom,
    ! [V_n_2] :
      ( c_Groups_Ozero__class_Ozero(tc_Nat_Onat) != V_n_2
    <=> c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_n_2) ) ).

fof(fact_diff__int__def,axiom,
    ! [V_w,V_z] : c_Groups_Ominus__class_Ominus(tc_Int_Oint,V_z,V_w) = c_Groups_Oplus__class_Oplus(tc_Int_Oint,V_z,c_Groups_Ouminus__class_Ouminus(tc_Int_Oint,V_w)) ).

fof(arity_Int__Oint__Orderings_Oord,axiom,
    class_Orderings_Oord(tc_Int_Oint) ).

fof(fact_order__eq__refl,axiom,
    ! [V_y,V_x,T_a] :
      ( class_Orderings_Opreorder(T_a)
     => ( c_Orderings_Oord__class_Oless__eq(T_a,V_x,V_y)
       <= V_y = V_x ) ) ).

fof(fact_minus__diff__eq,axiom,
    ! [V_b,V_a,T_a] :
      ( class_Groups_Oab__group__add(T_a)
     => c_Groups_Ominus__class_Ominus(T_a,V_b,V_a) = c_Groups_Ouminus__class_Ouminus(T_a,c_Groups_Ominus__class_Ominus(T_a,V_a,V_b)) ) ).

fof(arity_Complex__Ocomplex__Groups_Ominus,axiom,
    class_Groups_Ominus(tc_Complex_Ocomplex) ).

fof(fact_add__left__cancel,axiom,
    ! [V_c_2,V_b_2,V_aa_2,T_a] :
      ( ( c_Groups_Oplus__class_Oplus(T_a,V_aa_2,V_c_2) = c_Groups_Oplus__class_Oplus(T_a,V_aa_2,V_b_2)
      <=> V_b_2 = V_c_2 )
     <= class_Groups_Ocancel__semigroup__add(T_a) ) ).

fof(fact_not__one__le__zero,axiom,
    ! [T_a] :
      ( class_Rings_Olinordered__semidom(T_a)
     => ~ c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Oone__class_Oone(T_a),c_Groups_Ozero__class_Ozero(T_a)) ) ).

fof(fact_positive__zero,axiom,
    ~ c_RealDef_Opositive(c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)) ).

fof(fact_mult__right__mono,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( class_Rings_Oordered__semiring(T_a)
     => ( c_Orderings_Oord__class_Oless__eq(T_a,V_a,V_b)
       => ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_c)
         => c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_c),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b),V_c)) ) ) ) ).

fof(fact_ln__less__zero,axiom,
    ! [V_x] :
      ( ( c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,V_x,c_Groups_Oone__class_Oone(tc_RealDef_Oreal))
       => c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_Transcendental_Oln(V_x),c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)) )
     <= c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),V_x) ) ).

fof(fact_real__minus__mult__self__le,axiom,
    ! [V_x,V_u] : c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Ouminus__class_Ouminus(tc_RealDef_Oreal,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),V_u),V_u)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),V_x),V_x)) ).

fof(fact_power__eq__imp__eq__base,axiom,
    ! [V_b,V_n,V_a,T_a] :
      ( ( ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_a)
         => ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_b)
           => ( V_a = V_b
             <= c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_n) ) ) )
       <= hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_b),V_n) = hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_n) )
     <= class_Rings_Olinordered__semidom(T_a) ) ).

fof(fact_less__real__def,axiom,
    ! [V_y_2,V_x_2] :
      ( c_RealDef_Opositive(c_Groups_Ominus__class_Ominus(tc_RealDef_Oreal,V_y_2,V_x_2))
    <=> c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,V_x_2,V_y_2) ) ).

fof(fact_real__add__mult__distrib,axiom,
    ! [V_w,V_z2,V_z1] : c_Groups_Oplus__class_Oplus(tc_RealDef_Oreal,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),V_z1),V_w),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),V_z2),V_w)) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),c_Groups_Oplus__class_Oplus(tc_RealDef_Oreal,V_z1,V_z2)),V_w) ).

fof(fact_unimodular__reduce__norm,axiom,
    ! [V_z] :
      ( c_RealVector_Onorm__class_Onorm(tc_Complex_Ocomplex,V_z) = c_Groups_Oone__class_Oone(tc_RealDef_Oreal)
     => ( c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_RealVector_Onorm__class_Onorm(tc_Complex_Ocomplex,c_Groups_Ominus__class_Ominus(tc_Complex_Ocomplex,V_z,c_Groups_Oone__class_Oone(tc_Complex_Ocomplex))),c_Groups_Oone__class_Oone(tc_RealDef_Oreal))
        | c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_RealVector_Onorm__class_Onorm(tc_Complex_Ocomplex,c_Groups_Ominus__class_Ominus(tc_Complex_Ocomplex,V_z,c_Complex_Oii)),c_Groups_Oone__class_Oone(tc_RealDef_Oreal))
        | c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_RealVector_Onorm__class_Onorm(tc_Complex_Ocomplex,c_Groups_Oplus__class_Oplus(tc_Complex_Ocomplex,V_z,c_Complex_Oii)),c_Groups_Oone__class_Oone(tc_RealDef_Oreal))
        | c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_RealVector_Onorm__class_Onorm(tc_Complex_Ocomplex,c_Groups_Oplus__class_Oplus(tc_Complex_Ocomplex,V_z,c_Groups_Oone__class_Oone(tc_Complex_Ocomplex))),c_Groups_Oone__class_Oone(tc_RealDef_Oreal)) ) ) ).

fof(fact_ln__less__self,axiom,
    ! [V_x] :
      ( c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),V_x)
     => c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_Transcendental_Oln(V_x),V_x) ) ).

fof(fact_abs__le__interval__iff,axiom,
    ! [V_ra_2,V_x_2] :
      ( ( c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,V_x_2,V_ra_2)
        & c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Ouminus__class_Ouminus(tc_RealDef_Oreal,V_ra_2),V_x_2) )
    <=> c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Oabs__class_Oabs(tc_RealDef_Oreal,V_x_2),V_ra_2) ) ).

fof(fact_zero__less__one,axiom,
    ! [T_a] :
      ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),c_Groups_Oone__class_Oone(T_a))
     <= class_Rings_Olinordered__semidom(T_a) ) ).

fof(fact_cos__monotone__minus__pi__0,axiom,
    ! [V_x,V_y] :
      ( ( ( c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_Transcendental_Ocos(V_y),c_Transcendental_Ocos(V_x))
         <= c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,V_x,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)) )
       <= c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,V_y,V_x) )
     <= c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Ouminus__class_Ouminus(tc_RealDef_Oreal,c_Transcendental_Opi),V_y) ) ).

fof(fact_le__Suc__ex__iff,axiom,
    ! [V_l_2,V_k_2] :
      ( ? [B_n] : c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_k_2,B_n) = V_l_2
    <=> c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_k_2,V_l_2) ) ).

fof(fact_pos__add__strict,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( class_Rings_Olinordered__semidom(T_a)
     => ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_a)
       => ( c_Orderings_Oord__class_Oless(T_a,V_b,c_Groups_Oplus__class_Oplus(T_a,V_a,V_c))
         <= c_Orderings_Oord__class_Oless(T_a,V_b,V_c) ) ) ) ).

fof(fact_ln__inj__iff,axiom,
    ! [V_y_2,V_x_2] :
      ( ( c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),V_y_2)
       => ( c_Transcendental_Oln(V_x_2) = c_Transcendental_Oln(V_y_2)
        <=> V_x_2 = V_y_2 ) )
     <= c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),V_x_2) ) ).

fof(fact_norm__mult,axiom,
    ! [V_y,V_x,T_a] :
      ( class_RealVector_Oreal__normed__div__algebra(T_a)
     => hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),c_RealVector_Onorm__class_Onorm(T_a,V_x)),c_RealVector_Onorm__class_Onorm(T_a,V_y)) = c_RealVector_Onorm__class_Onorm(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_x),V_y)) ) ).

fof(fact_nat__less__cases,axiom,
    ! [V_P_2,V_n_2,V_m_2] :
      ( ( ( V_n_2 = V_m_2
         => hBOOL(hAPP(hAPP(V_P_2,V_n_2),V_m_2)) )
       => ( hBOOL(hAPP(hAPP(V_P_2,V_n_2),V_m_2))
         <= ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_n_2,V_m_2)
           => hBOOL(hAPP(hAPP(V_P_2,V_n_2),V_m_2)) ) ) )
     <= ( hBOOL(hAPP(hAPP(V_P_2,V_n_2),V_m_2))
       <= c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_m_2,V_n_2) ) ) ).

fof(fact_i__def,axiom,
    c_Complex_Ocomplex_OComplex(c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),c_Groups_Oone__class_Oone(tc_RealDef_Oreal)) = c_Complex_Oii ).

fof(fact_power__Suc__less,axiom,
    ! [V_n,V_a,T_a] :
      ( class_Rings_Olinordered__semidom(T_a)
     => ( ( c_Orderings_Oord__class_Oless(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_n)),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_n))
         <= c_Orderings_Oord__class_Oless(T_a,V_a,c_Groups_Oone__class_Oone(T_a)) )
       <= c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_a) ) ) ).

fof(fact_ln__le__cancel__iff,axiom,
    ! [V_y_2,V_x_2] :
      ( ( ( c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Transcendental_Oln(V_x_2),c_Transcendental_Oln(V_y_2))
        <=> c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,V_x_2,V_y_2) )
       <= c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),V_y_2) )
     <= c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),V_x_2) ) ).

fof(fact_less__diff__iff,axiom,
    ! [V_n_2,V_m_2,V_k_2] :
      ( ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_k_2,V_n_2)
       => ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_m_2,V_n_2)
        <=> c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_m_2,V_k_2),c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_n_2,V_k_2)) ) )
     <= c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_k_2,V_m_2) ) ).

fof(fact_neg__equal__0__iff__equal,axiom,
    ! [V_aa_2,T_a] :
      ( class_Groups_Ogroup__add(T_a)
     => ( c_Groups_Ouminus__class_Ouminus(T_a,V_aa_2) = c_Groups_Ozero__class_Ozero(T_a)
      <=> V_aa_2 = c_Groups_Ozero__class_Ozero(T_a) ) ) ).

fof(fact_power__eq__0__iff,axiom,
    ! [V_n_2,V_aa_2,T_a] :
      ( ( class_Power_Opower(T_a)
        & class_Rings_Omult__zero(T_a)
        & class_Rings_Ozero__neq__one(T_a)
        & class_Rings_Ono__zero__divisors(T_a) )
     => ( c_Groups_Ozero__class_Ozero(T_a) = hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_aa_2),V_n_2)
      <=> ( c_Groups_Ozero__class_Ozero(T_a) = V_aa_2
          & V_n_2 != c_Groups_Ozero__class_Ozero(tc_Nat_Onat) ) ) ) ).

fof(fact_abs__add__abs,axiom,
    ! [V_b,V_a,T_a] :
      ( c_Groups_Oabs__class_Oabs(T_a,c_Groups_Oplus__class_Oplus(T_a,c_Groups_Oabs__class_Oabs(T_a,V_a),c_Groups_Oabs__class_Oabs(T_a,V_b))) = c_Groups_Oplus__class_Oplus(T_a,c_Groups_Oabs__class_Oabs(T_a,V_a),c_Groups_Oabs__class_Oabs(T_a,V_b))
     <= class_Groups_Oordered__ab__group__add__abs(T_a) ) ).

fof(fact_split__mult__neg__le,axiom,
    ! [V_b,V_a,T_a] :
      ( ( ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_b,c_Groups_Ozero__class_Ozero(T_a))
            & c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_a) )
          | ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_b)
            & c_Orderings_Oord__class_Oless__eq(T_a,V_a,c_Groups_Ozero__class_Ozero(T_a)) ) )
       => c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b),c_Groups_Ozero__class_Ozero(T_a)) )
     <= class_Rings_Oordered__cancel__semiring(T_a) ) ).

fof(arity_RealDef__Oreal__Groups_Ozero,axiom,
    class_Groups_Ozero(tc_RealDef_Oreal) ).

fof(fact_real__sqrt__gt__1__iff,axiom,
    ! [V_y_2] :
      ( c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_Groups_Oone__class_Oone(tc_RealDef_Oreal),V_y_2)
    <=> c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_Groups_Oone__class_Oone(tc_RealDef_Oreal),c_NthRoot_Osqrt(V_y_2)) ) ).

fof(fact_abs__minus__add__cancel,axiom,
    ! [V_y,V_x] : c_Groups_Oabs__class_Oabs(tc_RealDef_Oreal,c_Groups_Oplus__class_Oplus(tc_RealDef_Oreal,V_y,c_Groups_Ouminus__class_Ouminus(tc_RealDef_Oreal,V_x))) = c_Groups_Oabs__class_Oabs(tc_RealDef_Oreal,c_Groups_Oplus__class_Oplus(tc_RealDef_Oreal,V_x,c_Groups_Ouminus__class_Ouminus(tc_RealDef_Oreal,V_y))) ).

fof(arity_Int__Oint__Groups_Oone,axiom,
    class_Groups_Oone(tc_Int_Oint) ).

fof(fact_mult__left__less__imp__less,axiom,
    ! [V_b,V_a,V_c,T_a] :
      ( ( ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_c)
         => c_Orderings_Oord__class_Oless(T_a,V_a,V_b) )
       <= c_Orderings_Oord__class_Oless(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_c),V_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_c),V_b)) )
     <= class_Rings_Olinordered__semiring(T_a) ) ).

fof(fact_double__add__le__zero__iff__single__add__le__zero,axiom,
    ! [V_aa_2,T_a] :
      ( class_Groups_Olinordered__ab__group__add(T_a)
     => ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Oplus__class_Oplus(T_a,V_aa_2,V_aa_2),c_Groups_Ozero__class_Ozero(T_a))
      <=> c_Orderings_Oord__class_Oless__eq(T_a,V_aa_2,c_Groups_Ozero__class_Ozero(T_a)) ) ) ).

fof(fact_complex__one__def,axiom,
    c_Complex_Ocomplex_OComplex(c_Groups_Oone__class_Oone(tc_RealDef_Oreal),c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)) = c_Groups_Oone__class_Oone(tc_Complex_Ocomplex) ).

fof(fact_mult__less__imp__less__right,axiom,
    ! [V_b,V_c,V_a,T_a] :
      ( class_Rings_Olinordered__semiring__strict(T_a)
     => ( ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_c)
         => c_Orderings_Oord__class_Oless(T_a,V_a,V_b) )
       <= c_Orderings_Oord__class_Oless(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_c),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b),V_c)) ) ) ).

fof(fact_le__add1,axiom,
    ! [V_m,V_n] : c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_n,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_n,V_m)) ).

fof(fact_less__zeroE,axiom,
    ! [V_n] : ~ c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_n,c_Groups_Ozero__class_Ozero(tc_Nat_Onat)) ).

fof(fact_add__0__right,axiom,
    ! [V_a,T_a] :
      ( c_Groups_Oplus__class_Oplus(T_a,V_a,c_Groups_Ozero__class_Ozero(T_a)) = V_a
     <= class_Groups_Omonoid__add(T_a) ) ).

fof(fact_zsgn__def,axiom,
    ! [V_i] :
      ( ( V_i != c_Groups_Ozero__class_Ozero(tc_Int_Oint)
       => ( ( c_Orderings_Oord__class_Oless(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_i)
           => c_Groups_Osgn__class_Osgn(tc_Int_Oint,V_i) = c_Groups_Oone__class_Oone(tc_Int_Oint) )
          & ( c_Groups_Ouminus__class_Ouminus(tc_Int_Oint,c_Groups_Oone__class_Oone(tc_Int_Oint)) = c_Groups_Osgn__class_Osgn(tc_Int_Oint,V_i)
           <= ~ c_Orderings_Oord__class_Oless(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_i) ) ) )
      & ( V_i = c_Groups_Ozero__class_Ozero(tc_Int_Oint)
       => c_Groups_Osgn__class_Osgn(tc_Int_Oint,V_i) = c_Groups_Ozero__class_Ozero(tc_Int_Oint) ) ) ).

fof(fact_complex_Osimps_I2_J,axiom,
    ! [V_real2_2,V_real1_2,V_f1_2,T_a] : c_Complex_Ocomplex_Ocomplex__case(T_a,V_f1_2,c_Complex_Ocomplex_OComplex(V_real1_2,V_real2_2)) = hAPP(hAPP(V_f1_2,V_real1_2),V_real2_2) ).

fof(fact_order__less__trans,axiom,
    ! [V_z,V_y,V_x,T_a] :
      ( ( c_Orderings_Oord__class_Oless(T_a,V_x,V_y)
       => ( c_Orderings_Oord__class_Oless(T_a,V_x,V_z)
         <= c_Orderings_Oord__class_Oless(T_a,V_y,V_z) ) )
     <= class_Orderings_Opreorder(T_a) ) ).

fof(fact_order__le__less__trans,axiom,
    ! [V_z,V_y,V_x,T_a] :
      ( class_Orderings_Opreorder(T_a)
     => ( ( c_Orderings_Oord__class_Oless(T_a,V_x,V_z)
         <= c_Orderings_Oord__class_Oless(T_a,V_y,V_z) )
       <= c_Orderings_Oord__class_Oless__eq(T_a,V_x,V_y) ) ) ).

fof(fact_pi__neq__zero,axiom,
    c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal) != c_Transcendental_Opi ).

fof(fact_power__le__imp__le__exp,axiom,
    ! [V_n,V_m,V_a,T_a] :
      ( class_Rings_Olinordered__semidom(T_a)
     => ( ( c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_m),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_n))
         => c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m,V_n) )
       <= c_Orderings_Oord__class_Oless(T_a,c_Groups_Oone__class_Oone(T_a),V_a) ) ) ).

fof(fact_ln__less__zero__iff,axiom,
    ! [V_x_2] :
      ( ( c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_Transcendental_Oln(V_x_2),c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal))
      <=> c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,V_x_2,c_Groups_Oone__class_Oone(tc_RealDef_Oreal)) )
     <= c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),V_x_2) ) ).

fof(arity_Complex__Ocomplex__Groups_Omonoid__add,axiom,
    class_Groups_Omonoid__add(tc_Complex_Ocomplex) ).

fof(fact_mult__sgn__abs,axiom,
    ! [V_x,T_a] :
      ( hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Groups_Osgn__class_Osgn(T_a,V_x)),c_Groups_Oabs__class_Oabs(T_a,V_x)) = V_x
     <= class_Rings_Olinordered__idom(T_a) ) ).

fof(arity_Int__Oint__Groups_Ocomm__monoid__mult,axiom,
    class_Groups_Ocomm__monoid__mult(tc_Int_Oint) ).

fof(fact_mult__less__cancel2,axiom,
    ! [V_n_2,V_k_2,V_m_2] :
      ( ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_m_2,V_n_2)
        & c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_k_2) )
    <=> c_Orderings_Oord__class_Oless(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_m_2),V_k_2),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_n_2),V_k_2)) ) ).

fof(fact_comm__semiring__1__class_Onormalizing__semiring__rules_I5_J,axiom,
    ! [V_a,T_a] :
      ( class_Rings_Ocomm__semiring__1(T_a)
     => V_a = c_Groups_Oplus__class_Oplus(T_a,c_Groups_Ozero__class_Ozero(T_a),V_a) ) ).

fof(fact_reduce__poly__simple,axiom,
    ! [V_n,V_b] :
      ( ( c_Groups_Ozero__class_Ozero(tc_Nat_Onat) != V_n
       => ? [B_z] : c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_RealVector_Onorm__class_Onorm(tc_Complex_Ocomplex,c_Groups_Oplus__class_Oplus(tc_Complex_Ocomplex,c_Groups_Oone__class_Oone(tc_Complex_Ocomplex),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Complex_Ocomplex),V_b),hAPP(hAPP(c_Power_Opower__class_Opower(tc_Complex_Ocomplex),B_z),V_n)))),c_Groups_Oone__class_Oone(tc_RealDef_Oreal)) )
     <= V_b != c_Groups_Ozero__class_Ozero(tc_Complex_Ocomplex) ) ).

fof(fact_real__sqrt__le__1__iff,axiom,
    ! [V_x_2] :
      ( c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,V_x_2,c_Groups_Oone__class_Oone(tc_RealDef_Oreal))
    <=> c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_NthRoot_Osqrt(V_x_2),c_Groups_Oone__class_Oone(tc_RealDef_Oreal)) ) ).

fof(fact_mult__0,axiom,
    ! [V_n] : c_Groups_Ozero__class_Ozero(tc_Nat_Onat) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),c_Groups_Ozero__class_Ozero(tc_Nat_Onat)),V_n) ).

fof(fact_cos__n__Re__cis__pow__n,axiom,
    ! [V_a,V_n] : c_Complex_ORe(hAPP(hAPP(c_Power_Opower__class_Opower(tc_Complex_Ocomplex),c_Complex_Ocis(V_a)),V_n)) = c_Transcendental_Ocos(hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),c_RealDef_Oreal(tc_Nat_Onat,V_n)),V_a)) ).

fof(fact_le__neq__implies__less,axiom,
    ! [V_n,V_m] :
      ( ( V_n != V_m
       => c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_m,V_n) )
     <= c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m,V_n) ) ).

fof(arity_RealDef__Oreal__RealVector_Oreal__normed__algebra,axiom,
    class_RealVector_Oreal__normed__algebra(tc_RealDef_Oreal) ).

fof(arity_HOL__Obool__Lattices_Oboolean__algebra,axiom,
    class_Lattices_Oboolean__algebra(tc_HOL_Obool) ).

fof(fact_neg__le__0__iff__le,axiom,
    ! [V_aa_2,T_a] :
      ( ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_aa_2)
      <=> c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ouminus__class_Ouminus(T_a,V_aa_2),c_Groups_Ozero__class_Ozero(T_a)) )
     <= class_Groups_Oordered__ab__group__add(T_a) ) ).

fof(arity_Int__Oint__Groups_Ocancel__ab__semigroup__add,axiom,
    class_Groups_Ocancel__ab__semigroup__add(tc_Int_Oint) ).

fof(arity_Int__Oint__Rings_Olinordered__semiring__strict,axiom,
    class_Rings_Olinordered__semiring__strict(tc_Int_Oint) ).

fof(fact_add__le__mono1,axiom,
    ! [V_k,V_j,V_i] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_i,V_k),c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_j,V_k))
     <= c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_i,V_j) ) ).

fof(fact_ln__less__cancel__iff,axiom,
    ! [V_y_2,V_x_2] :
      ( ( ( c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_Transcendental_Oln(V_x_2),c_Transcendental_Oln(V_y_2))
        <=> c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,V_x_2,V_y_2) )
       <= c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),V_y_2) )
     <= c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),V_x_2) ) ).

fof(fact_Im__cis,axiom,
    ! [V_a] : c_Complex_OIm(c_Complex_Ocis(V_a)) = c_Transcendental_Osin(V_a) ).

fof(fact_real__sqrt__eq__iff,axiom,
    ! [V_y_2,V_x_2] :
      ( V_y_2 = V_x_2
    <=> c_NthRoot_Osqrt(V_x_2) = c_NthRoot_Osqrt(V_y_2) ) ).

fof(fact_zero__less__power,axiom,
    ! [V_n,V_a,T_a] :
      ( class_Rings_Olinordered__semidom(T_a)
     => ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_n))
       <= c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_a) ) ) ).

fof(fact_zero__le__zpower__abs,axiom,
    ! [V_n,V_x] : c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),hAPP(hAPP(c_Power_Opower__class_Opower(tc_Int_Oint),c_Groups_Oabs__class_Oabs(tc_Int_Oint,V_x)),V_n)) ).

fof(fact_Im_Opos__bounded,axiom,
    ? [B_K] :
      ( ! [B_x] : c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_RealVector_Onorm__class_Onorm(tc_RealDef_Oreal,c_Complex_OIm(B_x)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),c_RealVector_Onorm__class_Onorm(tc_Complex_Ocomplex,B_x)),B_K))
      & c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),B_K) ) ).

fof(fact_mult__less__cancel__left__neg,axiom,
    ! [V_b_2,V_aa_2,V_c_2,T_a] :
      ( ( c_Orderings_Oord__class_Oless(T_a,V_c_2,c_Groups_Ozero__class_Ozero(T_a))
       => ( c_Orderings_Oord__class_Oless(T_a,V_b_2,V_aa_2)
        <=> c_Orderings_Oord__class_Oless(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_c_2),V_aa_2),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_c_2),V_b_2)) ) )
     <= class_Rings_Olinordered__ring__strict(T_a) ) ).

fof(arity_Int__Oint__Groups_Olinordered__ab__group__add,axiom,
    class_Groups_Olinordered__ab__group__add(tc_Int_Oint) ).

fof(fact_plus__nat_Oadd__0,axiom,
    ! [V_n] : c_Groups_Oplus__class_Oplus(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_n) = V_n ).

fof(fact_add__strict__increasing2,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( ( ( c_Orderings_Oord__class_Oless(T_a,V_b,c_Groups_Oplus__class_Oplus(T_a,V_a,V_c))
         <= c_Orderings_Oord__class_Oless(T_a,V_b,V_c) )
       <= c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_a) )
     <= class_Groups_Oordered__comm__monoid__add(T_a) ) ).

fof(fact_linorder__le__cases,axiom,
    ! [V_y,V_x,T_a] :
      ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_y,V_x)
       <= ~ c_Orderings_Oord__class_Oless__eq(T_a,V_x,V_y) )
     <= class_Orderings_Olinorder(T_a) ) ).

fof(fact_comm__mult__strict__left__mono,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( class_Rings_Olinordered__comm__semiring__strict(T_a)
     => ( c_Orderings_Oord__class_Oless(T_a,V_a,V_b)
       => ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_c)
         => c_Orderings_Oord__class_Oless(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_c),V_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_c),V_b)) ) ) ) ).

fof(fact_sin__zero,axiom,
    c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal) = c_Transcendental_Osin(c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)) ).

fof(fact_real__add__le__0__iff,axiom,
    ! [V_y_2,V_x_2] :
      ( c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,V_y_2,c_Groups_Ouminus__class_Ouminus(tc_RealDef_Oreal,V_x_2))
    <=> c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Oplus__class_Oplus(tc_RealDef_Oreal,V_x_2,V_y_2),c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)) ) ).

fof(fact_of__real__diff,axiom,
    ! [V_y,V_x,T_a] :
      ( class_RealVector_Oreal__algebra__1(T_a)
     => c_Groups_Ominus__class_Ominus(T_a,c_RealVector_Oof__real(T_a,V_x),c_RealVector_Oof__real(T_a,V_y)) = c_RealVector_Oof__real(T_a,c_Groups_Ominus__class_Ominus(tc_RealDef_Oreal,V_x,V_y)) ) ).

fof(fact_mult__pos__neg2,axiom,
    ! [V_b,V_a,T_a] :
      ( ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_a)
       => ( c_Orderings_Oord__class_Oless(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b),V_a),c_Groups_Ozero__class_Ozero(T_a))
         <= c_Orderings_Oord__class_Oless(T_a,V_b,c_Groups_Ozero__class_Ozero(T_a)) ) )
     <= class_Rings_Olinordered__semiring__strict(T_a) ) ).

fof(fact_add1__zle__eq,axiom,
    ! [V_z_2,V_w_2] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Oplus__class_Oplus(tc_Int_Oint,V_w_2,c_Groups_Oone__class_Oone(tc_Int_Oint)),V_z_2)
    <=> c_Orderings_Oord__class_Oless(tc_Int_Oint,V_w_2,V_z_2) ) ).

fof(arity_Complex__Ocomplex__RealVector_Oreal__normed__algebra__1,axiom,
    class_RealVector_Oreal__normed__algebra__1(tc_Complex_Ocomplex) ).

fof(fact_right__minus,axiom,
    ! [V_a,T_a] :
      ( class_Groups_Ogroup__add(T_a)
     => c_Groups_Oplus__class_Oplus(T_a,V_a,c_Groups_Ouminus__class_Ouminus(T_a,V_a)) = c_Groups_Ozero__class_Ozero(T_a) ) ).

fof(fact_mult__diff__mult,axiom,
    ! [V_b,V_a,V_y,V_x,T_a] :
      ( c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_x),c_Groups_Ominus__class_Ominus(T_a,V_y,V_b)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Groups_Ominus__class_Ominus(T_a,V_x,V_a)),V_b)) = c_Groups_Ominus__class_Ominus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_x),V_y),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b))
     <= class_Rings_Oring(T_a) ) ).

fof(fact_power__gt1__lemma,axiom,
    ! [V_n,V_a,T_a] :
      ( class_Rings_Olinordered__semidom(T_a)
     => ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Oone__class_Oone(T_a),V_a)
       => c_Orderings_Oord__class_Oless(T_a,c_Groups_Oone__class_Oone(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_n))) ) ) ).

fof(fact_Complex__add__complex__of__real,axiom,
    ! [V_r,V_y,V_x] : c_Groups_Oplus__class_Oplus(tc_Complex_Ocomplex,c_Complex_Ocomplex_OComplex(V_x,V_y),c_RealVector_Oof__real(tc_Complex_Ocomplex,V_r)) = c_Complex_Ocomplex_OComplex(c_Groups_Oplus__class_Oplus(tc_RealDef_Oreal,V_x,V_r),V_y) ).

fof(fact_mult__less__cancel__left__disj,axiom,
    ! [V_b_2,V_aa_2,V_c_2,T_a] :
      ( class_Rings_Olinordered__ring__strict(T_a)
     => ( c_Orderings_Oord__class_Oless(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_c_2),V_aa_2),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_c_2),V_b_2))
      <=> ( ( c_Orderings_Oord__class_Oless(T_a,V_b_2,V_aa_2)
            & c_Orderings_Oord__class_Oless(T_a,V_c_2,c_Groups_Ozero__class_Ozero(T_a)) )
          | ( c_Orderings_Oord__class_Oless(T_a,V_aa_2,V_b_2)
            & c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_c_2) ) ) ) ) ).

fof(fact_diff__0__right,axiom,
    ! [V_a,T_a] :
      ( V_a = c_Groups_Ominus__class_Ominus(T_a,V_a,c_Groups_Ozero__class_Ozero(T_a))
     <= class_Groups_Ogroup__add(T_a) ) ).

fof(fact_expi__add,axiom,
    ! [V_b,V_a] : c_Complex_Oexpi(c_Groups_Oplus__class_Oplus(tc_Complex_Ocomplex,V_a,V_b)) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Complex_Ocomplex),c_Complex_Oexpi(V_a)),c_Complex_Oexpi(V_b)) ).

fof(fact_of__real__1,axiom,
    ! [T_a] :
      ( class_RealVector_Oreal__algebra__1(T_a)
     => c_RealVector_Oof__real(T_a,c_Groups_Oone__class_Oone(tc_RealDef_Oreal)) = c_Groups_Oone__class_Oone(T_a) ) ).

fof(fact_real__of__nat__le__zero__cancel__iff,axiom,
    ! [V_n_2] :
      ( c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_RealDef_Oreal(tc_Nat_Onat,V_n_2),c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal))
    <=> c_Groups_Ozero__class_Ozero(tc_Nat_Onat) = V_n_2 ) ).

fof(fact_arccos__cos,axiom,
    ! [V_x] :
      ( c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),V_x)
     => ( c_Transcendental_Oarccos(c_Transcendental_Ocos(V_x)) = V_x
       <= c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,V_x,c_Transcendental_Opi) ) ) ).

fof(fact_termination__basic__simps_I5_J,axiom,
    ! [V_y,V_x] :
      ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_x,V_y)
     => c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_x,V_y) ) ).

fof(fact_abs__zero,axiom,
    ! [T_a] :
      ( c_Groups_Oabs__class_Oabs(T_a,c_Groups_Ozero__class_Ozero(T_a)) = c_Groups_Ozero__class_Ozero(T_a)
     <= class_Groups_Oordered__ab__group__add__abs(T_a) ) ).

fof(fact_nat__mult__eq__cancel__disj,axiom,
    ! [V_n_2,V_m_2,V_k_2] :
      ( hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_k_2),V_m_2) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_k_2),V_n_2)
    <=> ( c_Groups_Ozero__class_Ozero(tc_Nat_Onat) = V_k_2
        | V_m_2 = V_n_2 ) ) ).

fof(fact_comm__semiring__1__class_Onormalizing__semiring__rules_I8_J,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( class_Rings_Ocomm__semiring__1(T_a)
     => hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Groups_Oplus__class_Oplus(T_a,V_a,V_b)),V_c) = c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_c),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b),V_c)) ) ).

fof(arity_Int__Oint__Groups_Oordered__ab__group__add__abs,axiom,
    class_Groups_Oordered__ab__group__add__abs(tc_Int_Oint) ).

fof(fact_comm__semiring__1__class_Onormalizing__semiring__rules_I9_J,axiom,
    ! [V_a,T_a] :
      ( hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Groups_Ozero__class_Ozero(T_a)),V_a) = c_Groups_Ozero__class_Ozero(T_a)
     <= class_Rings_Ocomm__semiring__1(T_a) ) ).

fof(arity_Nat__Onat__Rings_Osemiring,axiom,
    class_Rings_Osemiring(tc_Nat_Onat) ).

fof(fact_mult__zero__right,axiom,
    ! [V_a,T_a] :
      ( class_Rings_Omult__zero(T_a)
     => c_Groups_Ozero__class_Ozero(T_a) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),c_Groups_Ozero__class_Ozero(T_a)) ) ).

fof(fact_real__of__nat__inject,axiom,
    ! [V_m_2,V_n_2] :
      ( V_n_2 = V_m_2
    <=> c_RealDef_Oreal(tc_Nat_Onat,V_m_2) = c_RealDef_Oreal(tc_Nat_Onat,V_n_2) ) ).

fof(arity_Int__Oint__Rings_Olinordered__comm__semiring__strict,axiom,
    class_Rings_Olinordered__comm__semiring__strict(tc_Int_Oint) ).

fof(fact_mult__mono_H,axiom,
    ! [V_d,V_c,V_b,V_a,T_a] :
      ( class_Rings_Oordered__semiring(T_a)
     => ( c_Orderings_Oord__class_Oless__eq(T_a,V_a,V_b)
       => ( ( ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_c)
             => c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_c),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b),V_d)) )
           <= c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_a) )
         <= c_Orderings_Oord__class_Oless__eq(T_a,V_c,V_d) ) ) ) ).

fof(fact_order__le__neq__trans,axiom,
    ! [V_b,V_a,T_a] :
      ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_a,V_b)
       => ( V_b != V_a
         => c_Orderings_Oord__class_Oless(T_a,V_a,V_b) ) )
     <= class_Orderings_Oorder(T_a) ) ).

fof(fact_BseqD,axiom,
    ! [V_X_2,T_a] :
      ( ( c_SEQ_OBseq(T_a,V_X_2)
       => ? [B_K] :
            ( ! [B_n] : c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_RealVector_Onorm__class_Onorm(T_a,hAPP(V_X_2,B_n)),B_K)
            & c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),B_K) ) )
     <= class_RealVector_Oreal__normed__vector(T_a) ) ).

fof(fact_le__minus__iff,axiom,
    ! [V_b_2,V_aa_2,T_a] :
      ( class_Groups_Oordered__ab__group__add(T_a)
     => ( c_Orderings_Oord__class_Oless__eq(T_a,V_aa_2,c_Groups_Ouminus__class_Ouminus(T_a,V_b_2))
      <=> c_Orderings_Oord__class_Oless__eq(T_a,V_b_2,c_Groups_Ouminus__class_Ouminus(T_a,V_aa_2)) ) ) ).

fof(fact_less__or__eq__imp__le,axiom,
    ! [V_n,V_m] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m,V_n)
     <= ( V_m = V_n
        | c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_m,V_n) ) ) ).

fof(fact_sin__npi2,axiom,
    ! [V_n] : c_Transcendental_Osin(hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),c_Transcendental_Opi),c_RealDef_Oreal(tc_Nat_Onat,V_n))) = c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal) ).

fof(fact_Complex__mult__complex__of__real,axiom,
    ! [V_r,V_y,V_x] : hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Complex_Ocomplex),c_Complex_Ocomplex_OComplex(V_x,V_y)),c_RealVector_Oof__real(tc_Complex_Ocomplex,V_r)) = c_Complex_Ocomplex_OComplex(hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),V_x),V_r),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),V_y),V_r)) ).

fof(fact_power__increasing,axiom,
    ! [V_a,V_N,V_n,T_a] :
      ( class_Rings_Olinordered__semidom(T_a)
     => ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_n,V_N)
       => ( c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_n),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_N))
         <= c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Oone__class_Oone(T_a),V_a) ) ) ) ).

fof(fact_cos__minus,axiom,
    ! [V_x] : c_Transcendental_Ocos(V_x) = c_Transcendental_Ocos(c_Groups_Ouminus__class_Ouminus(tc_RealDef_Oreal,V_x)) ).

fof(fact_le__add__iff2,axiom,
    ! [V_d_2,V_b_2,V_c_2,V_e_2,V_aa_2,T_a] :
      ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_c_2,c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Groups_Ominus__class_Ominus(T_a,V_b_2,V_aa_2)),V_e_2),V_d_2))
      <=> c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_aa_2),V_e_2),V_c_2),c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b_2),V_e_2),V_d_2)) )
     <= class_Rings_Oordered__ring(T_a) ) ).

fof(arity_Complex__Ocomplex__Groups_Ouminus,axiom,
    class_Groups_Ouminus(tc_Complex_Ocomplex) ).

fof(fact_real__add__left__mono,axiom,
    ! [V_z,V_y,V_x] :
      ( c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Oplus__class_Oplus(tc_RealDef_Oreal,V_z,V_x),c_Groups_Oplus__class_Oplus(tc_RealDef_Oreal,V_z,V_y))
     <= c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,V_x,V_y) ) ).

fof(fact_comm__semiring__1__class_Onormalizing__semiring__rules_I22_J,axiom,
    ! [V_d,V_c,V_a,T_a] :
      ( c_Groups_Oplus__class_Oplus(T_a,V_a,c_Groups_Oplus__class_Oplus(T_a,V_c,V_d)) = c_Groups_Oplus__class_Oplus(T_a,V_c,c_Groups_Oplus__class_Oplus(T_a,V_a,V_d))
     <= class_Rings_Ocomm__semiring__1(T_a) ) ).

fof(fact_complex__Im__i,axiom,
    c_Complex_OIm(c_Complex_Oii) = c_Groups_Oone__class_Oone(tc_RealDef_Oreal) ).

fof(arity_RealDef__Oreal__Orderings_Oorder,axiom,
    class_Orderings_Oorder(tc_RealDef_Oreal) ).

fof(fact_mult__le__less__imp__less,axiom,
    ! [V_d,V_c,V_b,V_a,T_a] :
      ( class_Rings_Olinordered__semiring__strict(T_a)
     => ( ( ( ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_c)
             => c_Orderings_Oord__class_Oless(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_c),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b),V_d)) )
           <= c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_a) )
         <= c_Orderings_Oord__class_Oless(T_a,V_c,V_d) )
       <= c_Orderings_Oord__class_Oless__eq(T_a,V_a,V_b) ) ) ).

fof(fact_real__sqrt__one,axiom,
    c_Groups_Oone__class_Oone(tc_RealDef_Oreal) = c_NthRoot_Osqrt(c_Groups_Oone__class_Oone(tc_RealDef_Oreal)) ).

fof(fact_ln__one,axiom,
    c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal) = c_Transcendental_Oln(c_Groups_Oone__class_Oone(tc_RealDef_Oreal)) ).

fof(arity_RealDef__Oreal__Rings_Oordered__ring,axiom,
    class_Rings_Oordered__ring(tc_RealDef_Oreal) ).

fof(fact_of__real__eq__0__iff,axiom,
    ! [V_x_2,T_a] :
      ( ( c_Groups_Ozero__class_Ozero(T_a) = c_RealVector_Oof__real(T_a,V_x_2)
      <=> V_x_2 = c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal) )
     <= class_RealVector_Oreal__algebra__1(T_a) ) ).

fof(fact_ab__left__minus,axiom,
    ! [V_a,T_a] :
      ( class_Groups_Oab__group__add(T_a)
     => c_Groups_Ozero__class_Ozero(T_a) = c_Groups_Oplus__class_Oplus(T_a,c_Groups_Ouminus__class_Ouminus(T_a,V_a),V_a) ) ).

fof(fact_leD,axiom,
    ! [V_x,V_y,T_a] :
      ( class_Orderings_Olinorder(T_a)
     => ( c_Orderings_Oord__class_Oless__eq(T_a,V_y,V_x)
       => ~ c_Orderings_Oord__class_Oless(T_a,V_x,V_y) ) ) ).

fof(arity_Complex__Ocomplex__Groups_Ozero,axiom,
    class_Groups_Ozero(tc_Complex_Ocomplex) ).

fof(fact_sin__add,axiom,
    ! [V_y,V_x] : c_Groups_Oplus__class_Oplus(tc_RealDef_Oreal,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),c_Transcendental_Osin(V_x)),c_Transcendental_Ocos(V_y)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),c_Transcendental_Ocos(V_x)),c_Transcendental_Osin(V_y))) = c_Transcendental_Osin(c_Groups_Oplus__class_Oplus(tc_RealDef_Oreal,V_x,V_y)) ).

fof(fact_rcis__def,axiom,
    ! [V_a,V_r] : c_Complex_Orcis(V_r,V_a) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Complex_Ocomplex),c_RealVector_Oof__real(tc_Complex_Ocomplex,V_r)),c_Complex_Ocis(V_a)) ).

fof(arity_HOL__Obool__Groups_Ouminus,axiom,
    class_Groups_Ouminus(tc_HOL_Obool) ).

fof(fact_zle__refl,axiom,
    ! [V_w] : c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,V_w,V_w) ).

fof(fact_le__diff__conv,axiom,
    ! [V_i_2,V_k_2,V_j_2] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_j_2,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_i_2,V_k_2))
    <=> c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_j_2,V_k_2),V_i_2) ) ).

fof(fact_mult__mono,axiom,
    ! [V_d,V_c,V_b,V_a,T_a] :
      ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_a,V_b)
       => ( ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_b)
           => ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_c)
             => c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_c),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b),V_d)) ) )
         <= c_Orderings_Oord__class_Oless__eq(T_a,V_c,V_d) ) )
     <= class_Rings_Oordered__semiring(T_a) ) ).

fof(fact_cos__arg__i__mult__zero,axiom,
    ! [V_y] :
      ( c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal) != V_y
     => c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal) = c_Transcendental_Ocos(c_Complex_Oarg(c_Complex_Ocomplex_OComplex(c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),V_y))) ) ).

fof(fact_cis__rcis__eq,axiom,
    ! [V_a] : c_Complex_Ocis(V_a) = c_Complex_Orcis(c_Groups_Oone__class_Oone(tc_RealDef_Oreal),V_a) ).

fof(arity_Nat__Onat__Groups_Ocomm__monoid__mult,axiom,
    class_Groups_Ocomm__monoid__mult(tc_Nat_Onat) ).

fof(fact_zdiff__zmult__distrib2,axiom,
    ! [V_z2,V_z1,V_w] : hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_w),c_Groups_Ominus__class_Ominus(tc_Int_Oint,V_z1,V_z2)) = c_Groups_Ominus__class_Ominus(tc_Int_Oint,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_w),V_z1),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_w),V_z2)) ).

fof(arity_Int__Oint__Rings_Ono__zero__divisors,axiom,
    class_Rings_Ono__zero__divisors(tc_Int_Oint) ).

fof(fact_mult__less__cancel__right__disj,axiom,
    ! [V_b_2,V_c_2,V_aa_2,T_a] :
      ( ( ( ( c_Orderings_Oord__class_Oless(T_a,V_c_2,c_Groups_Ozero__class_Ozero(T_a))
            & c_Orderings_Oord__class_Oless(T_a,V_b_2,V_aa_2) )
          | ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_c_2)
            & c_Orderings_Oord__class_Oless(T_a,V_aa_2,V_b_2) ) )
      <=> c_Orderings_Oord__class_Oless(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_aa_2),V_c_2),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b_2),V_c_2)) )
     <= class_Rings_Olinordered__ring__strict(T_a) ) ).

fof(fact_mult__right__mono__neg,axiom,
    ! [V_c,V_a,V_b,T_a] :
      ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_b,V_a)
       => ( c_Orderings_Oord__class_Oless__eq(T_a,V_c,c_Groups_Ozero__class_Ozero(T_a))
         => c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_c),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b),V_c)) ) )
     <= class_Rings_Oordered__ring(T_a) ) ).

fof(fact_add__neg__neg,axiom,
    ! [V_b,V_a,T_a] :
      ( ( c_Orderings_Oord__class_Oless(T_a,V_a,c_Groups_Ozero__class_Ozero(T_a))
       => ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Oplus__class_Oplus(T_a,V_a,V_b),c_Groups_Ozero__class_Ozero(T_a))
         <= c_Orderings_Oord__class_Oless(T_a,V_b,c_Groups_Ozero__class_Ozero(T_a)) ) )
     <= class_Groups_Oordered__comm__monoid__add(T_a) ) ).

fof(fact_sum__squares__eq__zero__iff,axiom,
    ! [V_y_2,V_x_2,T_a] :
      ( class_Rings_Olinordered__ring__strict(T_a)
     => ( c_Groups_Ozero__class_Ozero(T_a) = c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_x_2),V_x_2),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_y_2),V_y_2))
      <=> ( V_y_2 = c_Groups_Ozero__class_Ozero(T_a)
          & V_x_2 = c_Groups_Ozero__class_Ozero(T_a) ) ) ) ).

fof(fact_Complex__mult__i,axiom,
    ! [V_b,V_a] : c_Complex_Ocomplex_OComplex(c_Groups_Ouminus__class_Ouminus(tc_RealDef_Oreal,V_b),V_a) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Complex_Ocomplex),c_Complex_Ocomplex_OComplex(V_a,V_b)),c_Complex_Oii) ).

fof(fact_ex__least__nat__less,axiom,
    ! [V_n_2,V_P_2] :
      ( ( hBOOL(hAPP(V_P_2,V_n_2))
       => ? [B_k] :
            ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,B_k,V_n_2)
            & hBOOL(hAPP(V_P_2,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,B_k,c_Groups_Oone__class_Oone(tc_Nat_Onat))))
            & ! [B_i] :
                ( ~ hBOOL(hAPP(V_P_2,B_i))
               <= c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,B_i,B_k) ) ) )
     <= ~ hBOOL(hAPP(V_P_2,c_Groups_Ozero__class_Ozero(tc_Nat_Onat))) ) ).

fof(fact_mult__less__le__imp__less,axiom,
    ! [V_d,V_c,V_b,V_a,T_a] :
      ( ( c_Orderings_Oord__class_Oless(T_a,V_a,V_b)
       => ( c_Orderings_Oord__class_Oless__eq(T_a,V_c,V_d)
         => ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_a)
           => ( c_Orderings_Oord__class_Oless(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_c),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b),V_d))
             <= c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_c) ) ) ) )
     <= class_Rings_Olinordered__semiring__strict(T_a) ) ).

fof(fact_abs__ge__zero,axiom,
    ! [V_a,T_a] :
      ( class_Groups_Oordered__ab__group__add__abs(T_a)
     => c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),c_Groups_Oabs__class_Oabs(T_a,V_a)) ) ).

fof(fact_real__mult__less__iff1,axiom,
    ! [V_y_2,V_x_2,V_z_2] :
      ( c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),V_z_2)
     => ( c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,V_x_2,V_y_2)
      <=> c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),V_x_2),V_z_2),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),V_y_2),V_z_2)) ) ) ).

fof(fact_mult__right_Oadd,axiom,
    ! [V_y,V_x,V_xa,T_a] :
      ( c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_xa),V_x),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_xa),V_y)) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_xa),c_Groups_Oplus__class_Oplus(T_a,V_x,V_y))
     <= class_RealVector_Oreal__normed__algebra(T_a) ) ).

fof(fact_comm__semiring__1__class_Onormalizing__semiring__rules_I18_J,axiom,
    ! [V_ry,V_rx,V_lx,T_a] :
      ( class_Rings_Ocomm__semiring__1(T_a)
     => hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_lx),V_rx)),V_ry) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_lx),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_rx),V_ry)) ) ).

fof(fact_rcis__zero__mod,axiom,
    ! [V_a] : c_Complex_Orcis(c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),V_a) = c_Groups_Ozero__class_Ozero(tc_Complex_Ocomplex) ).

fof(fact_natceiling__one,axiom,
    c_Groups_Oone__class_Oone(tc_Nat_Onat) = c_RComplete_Onatceiling(c_Groups_Oone__class_Oone(tc_RealDef_Oreal)) ).

fof(fact_add__right__imp__eq,axiom,
    ! [V_c,V_a,V_b,T_a] :
      ( class_Groups_Ocancel__semigroup__add(T_a)
     => ( c_Groups_Oplus__class_Oplus(T_a,V_b,V_a) = c_Groups_Oplus__class_Oplus(T_a,V_c,V_a)
       => V_c = V_b ) ) ).

fof(fact_sgn__0__0,axiom,
    ! [V_aa_2,T_a] :
      ( class_Rings_Olinordered__idom(T_a)
     => ( c_Groups_Osgn__class_Osgn(T_a,V_aa_2) = c_Groups_Ozero__class_Ozero(T_a)
      <=> V_aa_2 = c_Groups_Ozero__class_Ozero(T_a) ) ) ).

fof(fact_minus__equation__iff,axiom,
    ! [V_b_2,V_aa_2,T_a] :
      ( class_Groups_Ogroup__add(T_a)
     => ( V_aa_2 = c_Groups_Ouminus__class_Ouminus(T_a,V_b_2)
      <=> V_b_2 = c_Groups_Ouminus__class_Ouminus(T_a,V_aa_2) ) ) ).

fof(fact_natfloor__subtract,axiom,
    ! [V_x,V_a] :
      ( c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_RealDef_Oreal(tc_Nat_Onat,V_a),V_x)
     => c_RComplete_Onatfloor(c_Groups_Ominus__class_Ominus(tc_RealDef_Oreal,V_x,c_RealDef_Oreal(tc_Nat_Onat,V_a))) = c_Groups_Ominus__class_Ominus(tc_Nat_Onat,c_RComplete_Onatfloor(V_x),V_a) ) ).

fof(fact_not__less0,axiom,
    ! [V_n] : ~ c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_n,c_Groups_Ozero__class_Ozero(tc_Nat_Onat)) ).

fof(fact_mult__right_Obounded,axiom,
    ! [V_x,T_a] :
      ( class_RealVector_Oreal__normed__algebra(T_a)
     => ? [B_K] :
        ! [B_x] : c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_RealVector_Onorm__class_Onorm(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_x),B_x)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),c_RealVector_Onorm__class_Onorm(T_a,B_x)),B_K)) ) ).

fof(fact_less__fun__def,axiom,
    ! [V_g_2,V_f_2,T_a,T_b] :
      ( ( ( c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,T_b),V_f_2,V_g_2)
          & ~ c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,T_b),V_g_2,V_f_2) )
      <=> c_Orderings_Oord__class_Oless(tc_fun(T_a,T_b),V_f_2,V_g_2) )
     <= class_Orderings_Oord(T_b) ) ).

fof(arity_Int__Oint__Groups_Oordered__ab__group__add,axiom,
    class_Groups_Oordered__ab__group__add(tc_Int_Oint) ).

fof(arity_Nat__Onat__Rings_Ocomm__semiring__1,axiom,
    class_Rings_Ocomm__semiring__1(tc_Nat_Onat) ).

fof(fact_abs__of__nonneg,axiom,
    ! [V_a,T_a] :
      ( ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_a)
       => c_Groups_Oabs__class_Oabs(T_a,V_a) = V_a )
     <= class_Groups_Oordered__ab__group__add__abs(T_a) ) ).

fof(fact_combine__common__factor,axiom,
    ! [V_c,V_b,V_e,V_a,T_a] :
      ( class_Rings_Osemiring(T_a)
     => c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_e),c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b),V_e),V_c)) = c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Groups_Oplus__class_Oplus(T_a,V_a,V_b)),V_e),V_c) ) ).

fof(fact_real__sqrt__eq__0__iff,axiom,
    ! [V_x_2] :
      ( V_x_2 = c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)
    <=> c_NthRoot_Osqrt(V_x_2) = c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal) ) ).

fof(fact_nat__add__left__commute,axiom,
    ! [V_z,V_y,V_x] : c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_y,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_x,V_z)) = c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_x,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_y,V_z)) ).

fof(fact_diff__diff__left,axiom,
    ! [V_k,V_j,V_i] : c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_i,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_j,V_k)) = c_Groups_Ominus__class_Ominus(tc_Nat_Onat,c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_i,V_j),V_k) ).

fof(fact_incseq__def,axiom,
    ! [V_X_2,T_a] :
      ( class_Orderings_Oorder(T_a)
     => ( ! [B_m,B_n] :
            ( c_Orderings_Oord__class_Oless__eq(T_a,hAPP(V_X_2,B_m),hAPP(V_X_2,B_n))
           <= c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,B_m,B_n) )
      <=> c_SEQ_Oincseq(T_a,V_X_2) ) ) ).

fof(fact_Limits_Ominus__diff__minus,axiom,
    ! [V_b,V_a,T_a] :
      ( c_Groups_Ominus__class_Ominus(T_a,c_Groups_Ouminus__class_Ouminus(T_a,V_a),c_Groups_Ouminus__class_Ouminus(T_a,V_b)) = c_Groups_Ouminus__class_Ouminus(T_a,c_Groups_Ominus__class_Ominus(T_a,V_a,V_b))
     <= class_Groups_Oab__group__add(T_a) ) ).

fof(arity_RealDef__Oreal__Groups_Omonoid__mult,axiom,
    class_Groups_Omonoid__mult(tc_RealDef_Oreal) ).

fof(fact_power__one__right,axiom,
    ! [V_a,T_a] :
      ( class_Groups_Omonoid__mult(T_a)
     => hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),c_Groups_Oone__class_Oone(tc_Nat_Onat)) = V_a ) ).

fof(fact_real__abs__def,axiom,
    ! [V_r] :
      ( ( ~ c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,V_r,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal))
       => V_r = c_Groups_Oabs__class_Oabs(tc_RealDef_Oreal,V_r) )
      & ( c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,V_r,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal))
       => c_Groups_Ouminus__class_Ouminus(tc_RealDef_Oreal,V_r) = c_Groups_Oabs__class_Oabs(tc_RealDef_Oreal,V_r) ) ) ).

fof(fact_mult__le__mono,axiom,
    ! [V_l,V_k,V_j,V_i] :
      ( ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_k,V_l)
       => c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_i),V_k),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_j),V_l)) )
     <= c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_i,V_j) ) ).

fof(fact_power__strict__increasing,axiom,
    ! [V_a,V_N,V_n,T_a] :
      ( ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_n,V_N)
       => ( c_Orderings_Oord__class_Oless(T_a,hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_n),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_N))
         <= c_Orderings_Oord__class_Oless(T_a,c_Groups_Oone__class_Oone(T_a),V_a) ) )
     <= class_Rings_Olinordered__semidom(T_a) ) ).

fof(fact_int__0__less__1,axiom,
    c_Orderings_Oord__class_Oless(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),c_Groups_Oone__class_Oone(tc_Int_Oint)) ).

fof(fact_norm__triangle__ineq2,axiom,
    ! [V_b,V_a,T_a] :
      ( c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Ominus__class_Ominus(tc_RealDef_Oreal,c_RealVector_Onorm__class_Onorm(T_a,V_a),c_RealVector_Onorm__class_Onorm(T_a,V_b)),c_RealVector_Onorm__class_Onorm(T_a,c_Groups_Ominus__class_Ominus(T_a,V_a,V_b)))
     <= class_RealVector_Oreal__normed__vector(T_a) ) ).

fof(fact_mult__strict__right__mono__neg,axiom,
    ! [V_c,V_a,V_b,T_a] :
      ( class_Rings_Olinordered__ring__strict(T_a)
     => ( c_Orderings_Oord__class_Oless(T_a,V_b,V_a)
       => ( c_Orderings_Oord__class_Oless(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_c),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b),V_c))
         <= c_Orderings_Oord__class_Oless(T_a,V_c,c_Groups_Ozero__class_Ozero(T_a)) ) ) ) ).

fof(fact_neg__equal__zero,axiom,
    ! [V_aa_2,T_a] :
      ( ( V_aa_2 = c_Groups_Ouminus__class_Ouminus(T_a,V_aa_2)
      <=> V_aa_2 = c_Groups_Ozero__class_Ozero(T_a) )
     <= class_Groups_Olinordered__ab__group__add(T_a) ) ).

fof(fact_linorder__cases,axiom,
    ! [V_y,V_x,T_a] :
      ( class_Orderings_Olinorder(T_a)
     => ( ( V_y != V_x
         => c_Orderings_Oord__class_Oless(T_a,V_y,V_x) )
       <= ~ c_Orderings_Oord__class_Oless(T_a,V_x,V_y) ) ) ).

fof(arity_fun__Orderings_Oorder,axiom,
    ! [T_2,T_1] :
      ( class_Orderings_Oorder(T_1)
     => class_Orderings_Oorder(tc_fun(T_2,T_1)) ) ).

fof(fact_rcis__mult,axiom,
    ! [V_b,V_r2,V_a,V_r1] : hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Complex_Ocomplex),c_Complex_Orcis(V_r1,V_a)),c_Complex_Orcis(V_r2,V_b)) = c_Complex_Orcis(hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),V_r1),V_r2),c_Groups_Oplus__class_Oplus(tc_RealDef_Oreal,V_a,V_b)) ).

fof(fact_complex_Oinject,axiom,
    ! [V_real2_H_2,V_real1_H_2,V_real2_2,V_real1_2] :
      ( c_Complex_Ocomplex_OComplex(V_real1_2,V_real2_2) = c_Complex_Ocomplex_OComplex(V_real1_H_2,V_real2_H_2)
    <=> ( V_real1_H_2 = V_real1_2
        & V_real2_2 = V_real2_H_2 ) ) ).

fof(fact_sum__squares__gt__zero__iff,axiom,
    ! [V_y_2,V_x_2,T_a] :
      ( ( ( c_Groups_Ozero__class_Ozero(T_a) != V_x_2
          | V_y_2 != c_Groups_Ozero__class_Ozero(T_a) )
      <=> c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_x_2),V_x_2),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_y_2),V_y_2))) )
     <= class_Rings_Olinordered__ring__strict(T_a) ) ).

fof(fact_mult__right_Ozero,axiom,
    ! [V_x,T_a] :
      ( hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_x),c_Groups_Ozero__class_Ozero(T_a)) = c_Groups_Ozero__class_Ozero(T_a)
     <= class_RealVector_Oreal__normed__algebra(T_a) ) ).

fof(fact_norm__ge__zero,axiom,
    ! [V_x,T_a] :
      ( c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),c_RealVector_Onorm__class_Onorm(T_a,V_x))
     <= class_RealVector_Oreal__normed__vector(T_a) ) ).

fof(fact_complex__minus__def,axiom,
    ! [V_x] : c_Complex_Ocomplex_OComplex(c_Groups_Ouminus__class_Ouminus(tc_RealDef_Oreal,c_Complex_ORe(V_x)),c_Groups_Ouminus__class_Ouminus(tc_RealDef_Oreal,c_Complex_OIm(V_x))) = c_Groups_Ouminus__class_Ouminus(tc_Complex_Ocomplex,V_x) ).

fof(fact_add__neg__nonpos,axiom,
    ! [V_b,V_a,T_a] :
      ( class_Groups_Oordered__comm__monoid__add(T_a)
     => ( c_Orderings_Oord__class_Oless(T_a,V_a,c_Groups_Ozero__class_Ozero(T_a))
       => ( c_Orderings_Oord__class_Oless__eq(T_a,V_b,c_Groups_Ozero__class_Ozero(T_a))
         => c_Orderings_Oord__class_Oless(T_a,c_Groups_Oplus__class_Oplus(T_a,V_a,V_b),c_Groups_Ozero__class_Ozero(T_a)) ) ) ) ).

fof(fact_diff__commute,axiom,
    ! [V_k,V_j,V_i] : c_Groups_Ominus__class_Ominus(tc_Nat_Onat,c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_i,V_j),V_k) = c_Groups_Ominus__class_Ominus(tc_Nat_Onat,c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_i,V_k),V_j) ).

fof(fact_mult_Ocomm__neutral,axiom,
    ! [V_a,T_a] :
      ( class_Groups_Ocomm__monoid__mult(T_a)
     => V_a = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),c_Groups_Oone__class_Oone(T_a)) ) ).

fof(fact_sgn__if,axiom,
    ! [V_x,T_a] :
      ( class_Groups_Osgn__if(T_a)
     => ( ( c_Groups_Osgn__class_Osgn(T_a,V_x) = c_Groups_Ozero__class_Ozero(T_a)
         <= V_x = c_Groups_Ozero__class_Ozero(T_a) )
        & ( ( ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_x)
             => c_Groups_Osgn__class_Osgn(T_a,V_x) = c_Groups_Oone__class_Oone(T_a) )
            & ( c_Groups_Ouminus__class_Ouminus(T_a,c_Groups_Oone__class_Oone(T_a)) = c_Groups_Osgn__class_Osgn(T_a,V_x)
             <= ~ c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_x) ) )
         <= V_x != c_Groups_Ozero__class_Ozero(T_a) ) ) ) ).

fof(fact_add__nonneg__eq__0__iff,axiom,
    ! [V_y_2,V_x_2,T_a] :
      ( ( ( ( ( V_y_2 = c_Groups_Ozero__class_Ozero(T_a)
              & V_x_2 = c_Groups_Ozero__class_Ozero(T_a) )
          <=> c_Groups_Oplus__class_Oplus(T_a,V_x_2,V_y_2) = c_Groups_Ozero__class_Ozero(T_a) )
         <= c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_y_2) )
       <= c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_x_2) )
     <= class_Groups_Oordered__comm__monoid__add(T_a) ) ).

fof(fact_add__le__imp__le__right,axiom,
    ! [V_b,V_c,V_a,T_a] :
      ( ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Oplus__class_Oplus(T_a,V_a,V_c),c_Groups_Oplus__class_Oplus(T_a,V_b,V_c))
       => c_Orderings_Oord__class_Oless__eq(T_a,V_a,V_b) )
     <= class_Groups_Oordered__ab__semigroup__add__imp__le(T_a) ) ).

fof(fact_linorder__linear,axiom,
    ! [V_y,V_x,T_a] :
      ( class_Orderings_Olinorder(T_a)
     => ( c_Orderings_Oord__class_Oless__eq(T_a,V_x,V_y)
        | c_Orderings_Oord__class_Oless__eq(T_a,V_y,V_x) ) ) ).

fof(fact_sgn__one,axiom,
    ! [T_a] :
      ( class_RealVector_Oreal__normed__algebra__1(T_a)
     => c_Groups_Osgn__class_Osgn(T_a,c_Groups_Oone__class_Oone(T_a)) = c_Groups_Oone__class_Oone(T_a) ) ).

fof(arity_Complex__Ocomplex__Rings_Ozero__neq__one,axiom,
    class_Rings_Ozero__neq__one(tc_Complex_Ocomplex) ).

fof(arity_Int__Oint__Groups_Oordered__ab__semigroup__add__imp__le,axiom,
    class_Groups_Oordered__ab__semigroup__add__imp__le(tc_Int_Oint) ).

fof(fact_zmult__zminus,axiom,
    ! [V_w,V_z] : hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),c_Groups_Ouminus__class_Ouminus(tc_Int_Oint,V_z)),V_w) = c_Groups_Ouminus__class_Ouminus(tc_Int_Oint,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_z),V_w)) ).

fof(fact_minus__nat_Odiff__0,axiom,
    ! [V_m] : c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_m,c_Groups_Ozero__class_Ozero(tc_Nat_Onat)) = V_m ).

fof(fact_mult__cancel1,axiom,
    ! [V_n_2,V_m_2,V_k_2] :
      ( ( V_k_2 = c_Groups_Ozero__class_Ozero(tc_Nat_Onat)
        | V_n_2 = V_m_2 )
    <=> hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_k_2),V_m_2) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_k_2),V_n_2) ) ).

fof(arity_Nat__Onat__Rings_Olinordered__semiring,axiom,
    class_Rings_Olinordered__semiring(tc_Nat_Onat) ).

fof(fact_comm__semiring__1__class_Onormalizing__semiring__rules_I16_J,axiom,
    ! [V_rx,V_ly,V_lx,T_a] :
      ( hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_lx),V_rx)),V_ly) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_lx),V_ly)),V_rx)
     <= class_Rings_Ocomm__semiring__1(T_a) ) ).

fof(fact_diff__less__mono,axiom,
    ! [V_c,V_b,V_a] :
      ( ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_a,V_c),c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_b,V_c))
       <= c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_c,V_a) )
     <= c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_a,V_b) ) ).

fof(fact_real__natfloor__add__one__gt,axiom,
    ! [V_x] : c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,V_x,c_Groups_Oplus__class_Oplus(tc_RealDef_Oreal,c_RealDef_Oreal(tc_Nat_Onat,c_RComplete_Onatfloor(V_x)),c_Groups_Oone__class_Oone(tc_RealDef_Oreal))) ).

fof(fact_eq__diff__iff,axiom,
    ! [V_n_2,V_m_2,V_k_2] :
      ( ( ( c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_m_2,V_k_2) = c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_n_2,V_k_2)
        <=> V_n_2 = V_m_2 )
       <= c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_k_2,V_n_2) )
     <= c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_k_2,V_m_2) ) ).

fof(fact_complex_Osize_I2_J,axiom,
    ! [V_real2,V_real1] : c_Nat_Osize__class_Osize(tc_Complex_Ocomplex,c_Complex_Ocomplex_OComplex(V_real1,V_real2)) = c_Groups_Ozero__class_Ozero(tc_Nat_Onat) ).

fof(arity_Nat__Onat__Groups_Oab__semigroup__mult,axiom,
    class_Groups_Oab__semigroup__mult(tc_Nat_Onat) ).

fof(fact_neg__less__nonneg,axiom,
    ! [V_aa_2,T_a] :
      ( ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Ouminus__class_Ouminus(T_a,V_aa_2),V_aa_2)
      <=> c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_aa_2) )
     <= class_Groups_Olinordered__ab__group__add(T_a) ) ).

fof(fact_real__of__nat__power,axiom,
    ! [V_n,V_m] : hAPP(hAPP(c_Power_Opower__class_Opower(tc_RealDef_Oreal),c_RealDef_Oreal(tc_Nat_Onat,V_m)),V_n) = c_RealDef_Oreal(tc_Nat_Onat,hAPP(hAPP(c_Power_Opower__class_Opower(tc_Nat_Onat),V_m),V_n)) ).

fof(fact_sgn__zero__iff,axiom,
    ! [V_x_2,T_a] :
      ( class_RealVector_Oreal__normed__vector(T_a)
     => ( c_Groups_Ozero__class_Ozero(T_a) = c_Groups_Osgn__class_Osgn(T_a,V_x_2)
      <=> c_Groups_Ozero__class_Ozero(T_a) = V_x_2 ) ) ).

fof(arity_RealDef__Oreal__Groups_Ocancel__semigroup__add,axiom,
    class_Groups_Ocancel__semigroup__add(tc_RealDef_Oreal) ).

fof(fact_zless__add1__eq,axiom,
    ! [V_z_2,V_w_2] :
      ( ( c_Orderings_Oord__class_Oless(tc_Int_Oint,V_w_2,V_z_2)
        | V_w_2 = V_z_2 )
    <=> c_Orderings_Oord__class_Oless(tc_Int_Oint,V_w_2,c_Groups_Oplus__class_Oplus(tc_Int_Oint,V_z_2,c_Groups_Oone__class_Oone(tc_Int_Oint))) ) ).

fof(fact_le__add__diff__inverse2,axiom,
    ! [V_m,V_n] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_n,V_m)
     => c_Groups_Oplus__class_Oplus(tc_Nat_Onat,c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_m,V_n),V_n) = V_m ) ).

fof(fact_Nat__Transfer_Otransfer__nat__int__function__closures_I6_J,axiom,
    c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),c_Groups_Oone__class_Oone(tc_Int_Oint)) ).

fof(arity_RealDef__Oreal__Rings_Oring__no__zero__divisors,axiom,
    class_Rings_Oring__no__zero__divisors(tc_RealDef_Oreal) ).

fof(fact_ln__ge__zero,axiom,
    ! [V_x] :
      ( c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),c_Transcendental_Oln(V_x))
     <= c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Oone__class_Oone(tc_RealDef_Oreal),V_x) ) ).

fof(fact_sin__minus,axiom,
    ! [V_x] : c_Transcendental_Osin(c_Groups_Ouminus__class_Ouminus(tc_RealDef_Oreal,V_x)) = c_Groups_Ouminus__class_Ouminus(tc_RealDef_Oreal,c_Transcendental_Osin(V_x)) ).

fof(fact_Nat_Oadd__0__right,axiom,
    ! [V_m] : c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_m,c_Groups_Ozero__class_Ozero(tc_Nat_Onat)) = V_m ).

fof(fact_cos__add,axiom,
    ! [V_y,V_x] : c_Groups_Ominus__class_Ominus(tc_RealDef_Oreal,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),c_Transcendental_Ocos(V_x)),c_Transcendental_Ocos(V_y)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),c_Transcendental_Osin(V_x)),c_Transcendental_Osin(V_y))) = c_Transcendental_Ocos(c_Groups_Oplus__class_Oplus(tc_RealDef_Oreal,V_x,V_y)) ).

fof(fact_Re_Ominus,axiom,
    ! [V_x] : c_Groups_Ouminus__class_Ouminus(tc_RealDef_Oreal,c_Complex_ORe(V_x)) = c_Complex_ORe(c_Groups_Ouminus__class_Ouminus(tc_Complex_Ocomplex,V_x)) ).

fof(fact_not__square__less__zero,axiom,
    ! [V_a,T_a] :
      ( ~ c_Orderings_Oord__class_Oless(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_a),c_Groups_Ozero__class_Ozero(T_a))
     <= class_Rings_Olinordered__ring(T_a) ) ).

fof(fact_zle__antisym,axiom,
    ! [V_w,V_z] :
      ( ( c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,V_w,V_z)
       => V_w = V_z )
     <= c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,V_z,V_w) ) ).

fof(fact_comm__semiring__1__class_Onormalizing__semiring__rules_I1_J,axiom,
    ! [V_b,V_m,V_a,T_a] :
      ( hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Groups_Oplus__class_Oplus(T_a,V_a,V_b)),V_m) = c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_m),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b),V_m))
     <= class_Rings_Ocomm__semiring__1(T_a) ) ).

fof(fact_add__diff__cancel,axiom,
    ! [V_b,V_a,T_a] :
      ( class_Groups_Ogroup__add(T_a)
     => c_Groups_Ominus__class_Ominus(T_a,c_Groups_Oplus__class_Oplus(T_a,V_a,V_b),V_b) = V_a ) ).

fof(arity_RealDef__Oreal__Groups_Oordered__ab__group__add__abs,axiom,
    class_Groups_Oordered__ab__group__add__abs(tc_RealDef_Oreal) ).

fof(fact_complex__mod__triangle__sub,axiom,
    ! [V_z,V_w] : c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_RealVector_Onorm__class_Onorm(tc_Complex_Ocomplex,V_w),c_Groups_Oplus__class_Oplus(tc_RealDef_Oreal,c_RealVector_Onorm__class_Onorm(tc_Complex_Ocomplex,c_Groups_Oplus__class_Oplus(tc_Complex_Ocomplex,V_w,V_z)),c_RealVector_Onorm__class_Onorm(tc_Complex_Ocomplex,V_z))) ).

fof(arity_Nat__Onat__Groups_Oab__semigroup__add,axiom,
    class_Groups_Oab__semigroup__add(tc_Nat_Onat) ).

fof(arity_fun__Groups_Ominus,axiom,
    ! [T_2,T_1] :
      ( class_Groups_Ominus(T_1)
     => class_Groups_Ominus(tc_fun(T_2,T_1)) ) ).

fof(fact_left__minus,axiom,
    ! [V_a,T_a] :
      ( class_Groups_Ogroup__add(T_a)
     => c_Groups_Ozero__class_Ozero(T_a) = c_Groups_Oplus__class_Oplus(T_a,c_Groups_Ouminus__class_Ouminus(T_a,V_a),V_a) ) ).

fof(fact_minus__apply,axiom,
    ! [V_x_2,V_B_2,V_A_2,T_b,T_a] :
      ( class_Groups_Ominus(T_a)
     => c_Groups_Ominus__class_Ominus(T_a,hAPP(V_A_2,V_x_2),hAPP(V_B_2,V_x_2)) = hAPP(c_Groups_Ominus__class_Ominus(tc_fun(T_b,T_a),V_A_2,V_B_2),V_x_2) ) ).

fof(fact_minus__less__iff,axiom,
    ! [V_b_2,V_aa_2,T_a] :
      ( ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Ouminus__class_Ouminus(T_a,V_b_2),V_aa_2)
      <=> c_Orderings_Oord__class_Oless(T_a,c_Groups_Ouminus__class_Ouminus(T_a,V_aa_2),V_b_2) )
     <= class_Groups_Oordered__ab__group__add(T_a) ) ).

fof(fact_zdiv__mono2__neg__lemma,axiom,
    ! [V_r_H,V_q_H,V_b_H,V_r,V_q,V_b] :
      ( ( c_Orderings_Oord__class_Oless(tc_Int_Oint,c_Groups_Oplus__class_Oplus(tc_Int_Oint,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_b_H),V_q_H),V_r_H),c_Groups_Ozero__class_Ozero(tc_Int_Oint))
       => ( c_Orderings_Oord__class_Oless(tc_Int_Oint,V_r,V_b)
         => ( ( c_Orderings_Oord__class_Oless(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_b_H)
             => ( c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,V_b_H,V_b)
               => c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,V_q_H,V_q) ) )
           <= c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_r_H) ) ) )
     <= c_Groups_Oplus__class_Oplus(tc_Int_Oint,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_b),V_q),V_r) = c_Groups_Oplus__class_Oplus(tc_Int_Oint,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_b_H),V_q_H),V_r_H) ) ).

fof(arity_RealDef__Oreal__Rings_Ocomm__semiring,axiom,
    class_Rings_Ocomm__semiring(tc_RealDef_Oreal) ).

fof(fact_comm__ring__1__class_Onormalizing__ring__rules_I2_J,axiom,
    ! [V_y,V_x,T_a] :
      ( c_Groups_Ominus__class_Ominus(T_a,V_x,V_y) = c_Groups_Oplus__class_Oplus(T_a,V_x,c_Groups_Ouminus__class_Ouminus(T_a,V_y))
     <= class_Rings_Ocomm__ring__1(T_a) ) ).

fof(fact_norm__mult__less,axiom,
    ! [V_s,V_y,V_r,V_x,T_a] :
      ( class_RealVector_Oreal__normed__algebra(T_a)
     => ( ( c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_RealVector_Onorm__class_Onorm(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_x),V_y)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),V_r),V_s))
         <= c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_RealVector_Onorm__class_Onorm(T_a,V_y),V_s) )
       <= c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_RealVector_Onorm__class_Onorm(T_a,V_x),V_r) ) ) ).

fof(fact_add__gr__0,axiom,
    ! [V_n_2,V_m_2] :
      ( ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_n_2)
        | c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_m_2) )
    <=> c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_m_2,V_n_2)) ) ).

fof(fact_mult__neg__neg,axiom,
    ! [V_b,V_a,T_a] :
      ( ( c_Orderings_Oord__class_Oless(T_a,V_a,c_Groups_Ozero__class_Ozero(T_a))
       => ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b))
         <= c_Orderings_Oord__class_Oless(T_a,V_b,c_Groups_Ozero__class_Ozero(T_a)) ) )
     <= class_Rings_Olinordered__ring__strict(T_a) ) ).

fof(fact_real__natfloor__le,axiom,
    ! [V_x] :
      ( c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_RealDef_Oreal(tc_Nat_Onat,c_RComplete_Onatfloor(V_x)),V_x)
     <= c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),V_x) ) ).

fof(fact_linorder__neqE__linordered__idom,axiom,
    ! [V_y,V_x,T_a] :
      ( class_Rings_Olinordered__idom(T_a)
     => ( V_x != V_y
       => ( ~ c_Orderings_Oord__class_Oless(T_a,V_x,V_y)
         => c_Orderings_Oord__class_Oless(T_a,V_y,V_x) ) ) ) ).

fof(fact_natceiling__real__of__nat,axiom,
    ! [V_n] : c_RComplete_Onatceiling(c_RealDef_Oreal(tc_Nat_Onat,V_n)) = V_n ).

fof(fact_abs__sgn,axiom,
    ! [V_k,T_a] :
      ( class_Rings_Olinordered__idom(T_a)
     => c_Groups_Oabs__class_Oabs(T_a,V_k) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_k),c_Groups_Osgn__class_Osgn(T_a,V_k)) ) ).

fof(fact_ln__ge__zero__iff,axiom,
    ! [V_x_2] :
      ( ( c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),c_Transcendental_Oln(V_x_2))
      <=> c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Oone__class_Oone(tc_RealDef_Oreal),V_x_2) )
     <= c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),V_x_2) ) ).

fof(fact_complex__i__not__zero,axiom,
    c_Groups_Ozero__class_Ozero(tc_Complex_Ocomplex) != c_Complex_Oii ).

fof(fact_order__neq__le__trans,axiom,
    ! [V_b,V_a,T_a] :
      ( class_Orderings_Oorder(T_a)
     => ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_a,V_b)
         => c_Orderings_Oord__class_Oless(T_a,V_a,V_b) )
       <= V_a != V_b ) ) ).

fof(fact_zero__less__power__nat__eq,axiom,
    ! [V_n_2,V_x_2] :
      ( ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_x_2)
        | V_n_2 = c_Groups_Ozero__class_Ozero(tc_Nat_Onat) )
    <=> c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),hAPP(hAPP(c_Power_Opower__class_Opower(tc_Nat_Onat),V_x_2),V_n_2)) ) ).

fof(fact_diff__self__eq__0,axiom,
    ! [V_m] : c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_m,V_m) = c_Groups_Ozero__class_Ozero(tc_Nat_Onat) ).

fof(arity_RealDef__Oreal__Rings_Olinordered__ring__strict,axiom,
    class_Rings_Olinordered__ring__strict(tc_RealDef_Oreal) ).

fof(fact_neg__less__0__iff__less,axiom,
    ! [V_aa_2,T_a] :
      ( class_Groups_Oordered__ab__group__add(T_a)
     => ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Ouminus__class_Ouminus(T_a,V_aa_2),c_Groups_Ozero__class_Ozero(T_a))
      <=> c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_aa_2) ) ) ).

fof(fact_of__real__minus,axiom,
    ! [V_x,T_a] :
      ( c_RealVector_Oof__real(T_a,c_Groups_Ouminus__class_Ouminus(tc_RealDef_Oreal,V_x)) = c_Groups_Ouminus__class_Ouminus(T_a,c_RealVector_Oof__real(T_a,V_x))
     <= class_RealVector_Oreal__algebra__1(T_a) ) ).

fof(fact_less__1__mult,axiom,
    ! [V_n,V_m,T_a] :
      ( class_Rings_Olinordered__semidom(T_a)
     => ( ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Oone__class_Oone(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_m),V_n))
         <= c_Orderings_Oord__class_Oless(T_a,c_Groups_Oone__class_Oone(T_a),V_n) )
       <= c_Orderings_Oord__class_Oless(T_a,c_Groups_Oone__class_Oone(T_a),V_m) ) ) ).

fof(arity_Complex__Ocomplex__Groups_Ocomm__monoid__mult,axiom,
    class_Groups_Ocomm__monoid__mult(tc_Complex_Ocomplex) ).

fof(fact_cis__mult,axiom,
    ! [V_b,V_a] : c_Complex_Ocis(c_Groups_Oplus__class_Oplus(tc_RealDef_Oreal,V_a,V_b)) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Complex_Ocomplex),c_Complex_Ocis(V_a)),c_Complex_Ocis(V_b)) ).

fof(fact_nat__less__add__iff1,axiom,
    ! [V_n_2,V_m_2,V_u_2,V_i_2,V_j_2] :
      ( ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_i_2,V_j_2)),V_u_2),V_m_2),V_n_2)
      <=> c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_i_2),V_u_2),V_m_2),c_Groups_Oplus__class_Oplus(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_j_2),V_u_2),V_n_2)) )
     <= c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_j_2,V_i_2) ) ).

fof(fact_power__mult,axiom,
    ! [V_n,V_m,V_a,T_a] :
      ( class_Groups_Omonoid__mult(T_a)
     => hAPP(hAPP(c_Power_Opower__class_Opower(T_a),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_m)),V_n) = hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_m),V_n)) ) ).

fof(fact_Re_Odiff,axiom,
    ! [V_y,V_x] : c_Complex_ORe(c_Groups_Ominus__class_Ominus(tc_Complex_Ocomplex,V_x,V_y)) = c_Groups_Ominus__class_Ominus(tc_RealDef_Oreal,c_Complex_ORe(V_x),c_Complex_ORe(V_y)) ).

fof(fact_abs__norm__cancel,axiom,
    ! [V_a,T_a] :
      ( class_RealVector_Oreal__normed__vector(T_a)
     => c_Groups_Oabs__class_Oabs(tc_RealDef_Oreal,c_RealVector_Onorm__class_Onorm(T_a,V_a)) = c_RealVector_Onorm__class_Onorm(T_a,V_a) ) ).

fof(fact_natfloor__eq,axiom,
    ! [V_x,V_n] :
      ( c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_RealDef_Oreal(tc_Nat_Onat,V_n),V_x)
     => ( c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,V_x,c_Groups_Oplus__class_Oplus(tc_RealDef_Oreal,c_RealDef_Oreal(tc_Nat_Onat,V_n),c_Groups_Oone__class_Oone(tc_RealDef_Oreal)))
       => c_RComplete_Onatfloor(V_x) = V_n ) ) ).

fof(fact_one__less__exp__iff,axiom,
    ! [V_x_2] :
      ( c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),V_x_2)
    <=> c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_Groups_Oone__class_Oone(tc_RealDef_Oreal),c_Transcendental_Oexp(tc_RealDef_Oreal,V_x_2)) ) ).

fof(fact_exp__ln__iff,axiom,
    ! [V_x_2] :
      ( c_Transcendental_Oexp(tc_RealDef_Oreal,c_Transcendental_Oln(V_x_2)) = V_x_2
    <=> c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),V_x_2) ) ).

fof(fact_add__less__imp__less__right,axiom,
    ! [V_b,V_c,V_a,T_a] :
      ( ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Oplus__class_Oplus(T_a,V_a,V_c),c_Groups_Oplus__class_Oplus(T_a,V_b,V_c))
       => c_Orderings_Oord__class_Oless(T_a,V_a,V_b) )
     <= class_Groups_Oordered__ab__semigroup__add__imp__le(T_a) ) ).

fof(fact_less__add__iff1,axiom,
    ! [V_d_2,V_b_2,V_c_2,V_e_2,V_aa_2,T_a] :
      ( class_Rings_Oordered__ring(T_a)
     => ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Groups_Ominus__class_Ominus(T_a,V_aa_2,V_b_2)),V_e_2),V_c_2),V_d_2)
      <=> c_Orderings_Oord__class_Oless(T_a,c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_aa_2),V_e_2),V_c_2),c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b_2),V_e_2),V_d_2)) ) ) ).

fof(fact_nat__1__eq__mult__iff,axiom,
    ! [V_n_2,V_m_2] :
      ( ( c_Groups_Oone__class_Oone(tc_Nat_Onat) = V_m_2
        & V_n_2 = c_Groups_Oone__class_Oone(tc_Nat_Onat) )
    <=> c_Groups_Oone__class_Oone(tc_Nat_Onat) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_m_2),V_n_2) ) ).

fof(fact_Im_Ominus,axiom,
    ! [V_x] : c_Complex_OIm(c_Groups_Ouminus__class_Ouminus(tc_Complex_Ocomplex,V_x)) = c_Groups_Ouminus__class_Ouminus(tc_RealDef_Oreal,c_Complex_OIm(V_x)) ).

fof(fact_add__lessD1,axiom,
    ! [V_k,V_j,V_i] :
      ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_i,V_j),V_k)
     => c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_i,V_k) ) ).

fof(fact_cos__diff,axiom,
    ! [V_y,V_x] : c_Groups_Oplus__class_Oplus(tc_RealDef_Oreal,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),c_Transcendental_Ocos(V_x)),c_Transcendental_Ocos(V_y)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),c_Transcendental_Osin(V_x)),c_Transcendental_Osin(V_y))) = c_Transcendental_Ocos(c_Groups_Ominus__class_Ominus(tc_RealDef_Oreal,V_x,V_y)) ).

fof(fact_termination__basic__simps_I1_J,axiom,
    ! [V_z,V_y,V_x] :
      ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_x,V_y)
     => c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_x,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_y,V_z)) ) ).

fof(fact_le__iff__diff__le__0,axiom,
    ! [V_b_2,V_aa_2,T_a] :
      ( ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ominus__class_Ominus(T_a,V_aa_2,V_b_2),c_Groups_Ozero__class_Ozero(T_a))
      <=> c_Orderings_Oord__class_Oless__eq(T_a,V_aa_2,V_b_2) )
     <= class_Groups_Oordered__ab__group__add(T_a) ) ).

fof(fact_natceiling__le,axiom,
    ! [V_a,V_x] :
      ( c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,V_x,c_RealDef_Oreal(tc_Nat_Onat,V_a))
     => c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,c_RComplete_Onatceiling(V_x),V_a) ) ).

fof(arity_HOL__Obool__Orderings_Opreorder,axiom,
    class_Orderings_Opreorder(tc_HOL_Obool) ).

fof(arity_Complex__Ocomplex__Rings_Oring__1,axiom,
    class_Rings_Oring__1(tc_Complex_Ocomplex) ).

fof(fact_order__trans,axiom,
    ! [V_z,V_y,V_x,T_a] :
      ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_x,V_y)
       => ( c_Orderings_Oord__class_Oless__eq(T_a,V_x,V_z)
         <= c_Orderings_Oord__class_Oless__eq(T_a,V_y,V_z) ) )
     <= class_Orderings_Opreorder(T_a) ) ).

fof(fact_uminus__apply,axiom,
    ! [V_x_2,V_A_2,T_b,T_a] :
      ( c_Groups_Ouminus__class_Ouminus(T_a,hAPP(V_A_2,V_x_2)) = hAPP(c_Groups_Ouminus__class_Ouminus(tc_fun(T_b,T_a),V_A_2),V_x_2)
     <= class_Groups_Ouminus(T_a) ) ).

fof(fact_le__antisym,axiom,
    ! [V_n,V_m] :
      ( ( V_n = V_m
       <= c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_n,V_m) )
     <= c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m,V_n) ) ).

fof(fact_real__less__def,axiom,
    ! [V_y_2,V_x_2] :
      ( ( c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,V_x_2,V_y_2)
        & V_y_2 != V_x_2 )
    <=> c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,V_x_2,V_y_2) ) ).

fof(fact_exp__gt__zero,axiom,
    ! [V_x] : c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),c_Transcendental_Oexp(tc_RealDef_Oreal,V_x)) ).

fof(fact_mult__left__le__one__le,axiom,
    ! [V_y,V_x,T_a] :
      ( class_Rings_Olinordered__idom(T_a)
     => ( ( ( c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_y),V_x),V_x)
           <= c_Orderings_Oord__class_Oless__eq(T_a,V_y,c_Groups_Oone__class_Oone(T_a)) )
         <= c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_y) )
       <= c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_x) ) ) ).

fof(fact_comm__semiring__1__class_Onormalizing__semiring__rules_I4_J,axiom,
    ! [V_m,T_a] :
      ( hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Groups_Oplus__class_Oplus(T_a,c_Groups_Oone__class_Oone(T_a),c_Groups_Oone__class_Oone(T_a))),V_m) = c_Groups_Oplus__class_Oplus(T_a,V_m,V_m)
     <= class_Rings_Ocomm__semiring__1(T_a) ) ).

fof(arity_Nat__Onat__Orderings_Oorder,axiom,
    class_Orderings_Oorder(tc_Nat_Onat) ).

fof(arity_Int__Oint__Groups_Ocancel__semigroup__add,axiom,
    class_Groups_Ocancel__semigroup__add(tc_Int_Oint) ).

fof(fact_reals__Archimedean6,axiom,
    ! [V_r] :
      ( ? [B_n] :
          ( c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,V_r,c_RealDef_Oreal(tc_Nat_Onat,B_n))
          & c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_RealDef_Oreal(tc_Nat_Onat,c_Groups_Ominus__class_Ominus(tc_Nat_Onat,B_n,c_Groups_Oone__class_Oone(tc_Nat_Onat))),V_r) )
     <= c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),V_r) ) ).

fof(fact_xt1_I1_J,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( ( ( c_Orderings_Oord__class_Oless(T_a,V_c,V_b)
         => c_Orderings_Oord__class_Oless(T_a,V_c,V_a) )
       <= V_b = V_a )
     <= class_Orderings_Oorder(T_a) ) ).

fof(fact_self__quotient__aux1,axiom,
    ! [V_q,V_r,V_a] :
      ( ( ( c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Oone__class_Oone(tc_Int_Oint),V_q)
         <= c_Orderings_Oord__class_Oless(tc_Int_Oint,V_r,V_a) )
       <= c_Groups_Oplus__class_Oplus(tc_Int_Oint,V_r,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_a),V_q)) = V_a )
     <= c_Orderings_Oord__class_Oless(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_a) ) ).

fof(fact_complex__add__def,axiom,
    ! [V_y,V_x] : c_Complex_Ocomplex_OComplex(c_Groups_Oplus__class_Oplus(tc_RealDef_Oreal,c_Complex_ORe(V_x),c_Complex_ORe(V_y)),c_Groups_Oplus__class_Oplus(tc_RealDef_Oreal,c_Complex_OIm(V_x),c_Complex_OIm(V_y))) = c_Groups_Oplus__class_Oplus(tc_Complex_Ocomplex,V_x,V_y) ).

fof(arity_RealDef__Oreal__Power_Opower,axiom,
    class_Power_Opower(tc_RealDef_Oreal) ).

fof(fact_natceiling__add,axiom,
    ! [V_a,V_x] :
      ( c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),V_x)
     => c_Groups_Oplus__class_Oplus(tc_Nat_Onat,c_RComplete_Onatceiling(V_x),V_a) = c_RComplete_Onatceiling(c_Groups_Oplus__class_Oplus(tc_RealDef_Oreal,V_x,c_RealDef_Oreal(tc_Nat_Onat,V_a))) ) ).

fof(fact_cos__periodic__pi,axiom,
    ! [V_x] : c_Groups_Ouminus__class_Ouminus(tc_RealDef_Oreal,c_Transcendental_Ocos(V_x)) = c_Transcendental_Ocos(c_Groups_Oplus__class_Oplus(tc_RealDef_Oreal,V_x,c_Transcendental_Opi)) ).

fof(fact_power__one,axiom,
    ! [V_n,T_a] :
      ( class_Groups_Omonoid__mult(T_a)
     => hAPP(hAPP(c_Power_Opower__class_Opower(T_a),c_Groups_Oone__class_Oone(T_a)),V_n) = c_Groups_Oone__class_Oone(T_a) ) ).

fof(fact_exp__ln,axiom,
    ! [V_x] :
      ( c_Transcendental_Oexp(tc_RealDef_Oreal,c_Transcendental_Oln(V_x)) = V_x
     <= c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),V_x) ) ).

fof(arity_RealDef__Oreal__Rings_Osemiring__0,axiom,
    class_Rings_Osemiring__0(tc_RealDef_Oreal) ).

fof(fact_le__fun__def,axiom,
    ! [V_g_2,V_f_2,T_a,T_b] :
      ( ( ! [B_x] : c_Orderings_Oord__class_Oless__eq(T_b,hAPP(V_f_2,B_x),hAPP(V_g_2,B_x))
      <=> c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,T_b),V_f_2,V_g_2) )
     <= class_Orderings_Oord(T_b) ) ).

fof(fact_zadd__zminus__inverse2,axiom,
    ! [V_z] : c_Groups_Ozero__class_Ozero(tc_Int_Oint) = c_Groups_Oplus__class_Oplus(tc_Int_Oint,c_Groups_Ouminus__class_Ouminus(tc_Int_Oint,V_z),V_z) ).

fof(fact_of__real_Opos__bounded,axiom,
    ! [T_a] :
      ( ? [B_K] :
          ( c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),B_K)
          & ! [B_x] : c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_RealVector_Onorm__class_Onorm(T_a,c_RealVector_Oof__real(T_a,B_x)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),c_RealVector_Onorm__class_Onorm(tc_RealDef_Oreal,B_x)),B_K)) )
     <= ( class_RealVector_Oreal__normed__vector(T_a)
        & class_RealVector_Oreal__algebra__1(T_a) ) ) ).

fof(fact_nat__0__less__mult__iff,axiom,
    ! [V_n_2,V_m_2] :
      ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_m_2),V_n_2))
    <=> ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_m_2)
        & c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_n_2) ) ) ).

fof(fact_mult__strict__mono,axiom,
    ! [V_d,V_c,V_b,V_a,T_a] :
      ( ( ( c_Orderings_Oord__class_Oless(T_a,V_c,V_d)
         => ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_b)
           => ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_c)
             => c_Orderings_Oord__class_Oless(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_c),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b),V_d)) ) ) )
       <= c_Orderings_Oord__class_Oless(T_a,V_a,V_b) )
     <= class_Rings_Olinordered__semiring__strict(T_a) ) ).

fof(fact_real__sqrt__power,axiom,
    ! [V_k,V_x] : hAPP(hAPP(c_Power_Opower__class_Opower(tc_RealDef_Oreal),c_NthRoot_Osqrt(V_x)),V_k) = c_NthRoot_Osqrt(hAPP(hAPP(c_Power_Opower__class_Opower(tc_RealDef_Oreal),V_x),V_k)) ).

fof(fact_of__real_Odiff,axiom,
    ! [V_y,V_x,T_a] :
      ( c_RealVector_Oof__real(T_a,c_Groups_Ominus__class_Ominus(tc_RealDef_Oreal,V_x,V_y)) = c_Groups_Ominus__class_Ominus(T_a,c_RealVector_Oof__real(T_a,V_x),c_RealVector_Oof__real(T_a,V_y))
     <= ( class_RealVector_Oreal__algebra__1(T_a)
        & class_RealVector_Oreal__normed__vector(T_a) ) ) ).

fof(fact_of__real_Oadd,axiom,
    ! [V_y,V_x,T_a] :
      ( c_RealVector_Oof__real(T_a,c_Groups_Oplus__class_Oplus(tc_RealDef_Oreal,V_x,V_y)) = c_Groups_Oplus__class_Oplus(T_a,c_RealVector_Oof__real(T_a,V_x),c_RealVector_Oof__real(T_a,V_y))
     <= ( class_RealVector_Oreal__normed__vector(T_a)
        & class_RealVector_Oreal__algebra__1(T_a) ) ) ).

fof(arity_Int__Oint__Groups_Ogroup__add,axiom,
    class_Groups_Ogroup__add(tc_Int_Oint) ).

fof(arity_Nat__Onat__Groups_Oordered__cancel__ab__semigroup__add,axiom,
    class_Groups_Oordered__cancel__ab__semigroup__add(tc_Nat_Onat) ).

fof(arity_Complex__Ocomplex__RealVector_Oreal__normed__algebra,axiom,
    class_RealVector_Oreal__normed__algebra(tc_Complex_Ocomplex) ).

fof(fact_add__nonneg__nonneg,axiom,
    ! [V_b,V_a,T_a] :
      ( class_Groups_Oordered__comm__monoid__add(T_a)
     => ( ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_b)
         => c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),c_Groups_Oplus__class_Oplus(T_a,V_a,V_b)) )
       <= c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_a) ) ) ).

fof(fact_diff__le__mono2,axiom,
    ! [V_l,V_n,V_m] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_l,V_n),c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_l,V_m))
     <= c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m,V_n) ) ).

fof(fact_comm__semiring__1__class_Onormalizing__semiring__rules_I31_J,axiom,
    ! [V_q,V_p,V_x,T_a] :
      ( class_Rings_Ocomm__semiring__1(T_a)
     => hAPP(hAPP(c_Power_Opower__class_Opower(T_a),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_x),V_p)),V_q) = hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_x),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_p),V_q)) ) ).

fof(fact_le__funD,axiom,
    ! [V_x_2,V_g_2,V_f_2,T_a,T_b] :
      ( ( c_Orderings_Oord__class_Oless__eq(T_b,hAPP(V_f_2,V_x_2),hAPP(V_g_2,V_x_2))
       <= c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,T_b),V_f_2,V_g_2) )
     <= class_Orderings_Oord(T_b) ) ).

fof(fact_exp__zero,axiom,
    ! [T_a] :
      ( ( class_RealVector_Oreal__normed__field(T_a)
        & class_SEQ_Obanach(T_a) )
     => c_Groups_Oone__class_Oone(T_a) = c_Transcendental_Oexp(T_a,c_Groups_Ozero__class_Ozero(T_a)) ) ).

fof(fact_order__eq__iff,axiom,
    ! [V_y_2,V_x_2,T_a] :
      ( class_Orderings_Oorder(T_a)
     => ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_y_2,V_x_2)
          & c_Orderings_Oord__class_Oless__eq(T_a,V_x_2,V_y_2) )
      <=> V_y_2 = V_x_2 ) ) ).

fof(fact_exp__less__cancel,axiom,
    ! [V_y,V_x] :
      ( c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,V_x,V_y)
     <= c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_Transcendental_Oexp(tc_RealDef_Oreal,V_x),c_Transcendental_Oexp(tc_RealDef_Oreal,V_y)) ) ).

fof(fact_diff__add__assoc2,axiom,
    ! [V_i,V_j,V_k] :
      ( c_Groups_Ominus__class_Ominus(tc_Nat_Onat,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_j,V_i),V_k) = c_Groups_Oplus__class_Oplus(tc_Nat_Onat,c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_j,V_k),V_i)
     <= c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_k,V_j) ) ).

fof(fact_complex__Re__i,axiom,
    c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal) = c_Complex_ORe(c_Complex_Oii) ).

fof(fact_less__eq__nat_Osimps_I1_J,axiom,
    ! [V_n] : c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_n) ).

fof(fact_abs__ge__self,axiom,
    ! [V_a,T_a] :
      ( class_Groups_Oordered__ab__group__add__abs(T_a)
     => c_Orderings_Oord__class_Oless__eq(T_a,V_a,c_Groups_Oabs__class_Oabs(T_a,V_a)) ) ).

fof(arity_RealDef__Oreal__RealVector_Oreal__normed__field,axiom,
    class_RealVector_Oreal__normed__field(tc_RealDef_Oreal) ).

fof(fact_one__le__exp__iff,axiom,
    ! [V_x_2] :
      ( c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),V_x_2)
    <=> c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Oone__class_Oone(tc_RealDef_Oreal),c_Transcendental_Oexp(tc_RealDef_Oreal,V_x_2)) ) ).

fof(fact_complex__Im__mult,axiom,
    ! [V_y,V_x] : c_Groups_Oplus__class_Oplus(tc_RealDef_Oreal,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),c_Complex_ORe(V_x)),c_Complex_OIm(V_y)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),c_Complex_OIm(V_x)),c_Complex_ORe(V_y))) = c_Complex_OIm(hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Complex_Ocomplex),V_x),V_y)) ).

fof(fact_real__sqrt__gt__0__iff,axiom,
    ! [V_y_2] :
      ( c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),V_y_2)
    <=> c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),c_NthRoot_Osqrt(V_y_2)) ) ).

fof(fact_zero__less__two,axiom,
    ! [T_a] :
      ( class_Rings_Olinordered__semidom(T_a)
     => c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),c_Groups_Oplus__class_Oplus(T_a,c_Groups_Oone__class_Oone(T_a),c_Groups_Oone__class_Oone(T_a))) ) ).

fof(fact_natceiling__zero,axiom,
    c_RComplete_Onatceiling(c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)) = c_Groups_Ozero__class_Ozero(tc_Nat_Onat) ).

fof(fact_Im,axiom,
    ! [V_y,V_x] : V_y = c_Complex_OIm(c_Complex_Ocomplex_OComplex(V_x,V_y)) ).

fof(fact_linorder__antisym__conv1,axiom,
    ! [V_y_2,V_x_2,T_a] :
      ( class_Orderings_Olinorder(T_a)
     => ( ~ c_Orderings_Oord__class_Oless(T_a,V_x_2,V_y_2)
       => ( c_Orderings_Oord__class_Oless__eq(T_a,V_x_2,V_y_2)
        <=> V_x_2 = V_y_2 ) ) ) ).

fof(fact_complex__mult__def,axiom,
    ! [V_y,V_x] : c_Complex_Ocomplex_OComplex(c_Groups_Ominus__class_Ominus(tc_RealDef_Oreal,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),c_Complex_ORe(V_x)),c_Complex_ORe(V_y)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),c_Complex_OIm(V_x)),c_Complex_OIm(V_y))),c_Groups_Oplus__class_Oplus(tc_RealDef_Oreal,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),c_Complex_ORe(V_x)),c_Complex_OIm(V_y)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),c_Complex_OIm(V_x)),c_Complex_ORe(V_y)))) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Complex_Ocomplex),V_x),V_y) ).

fof(fact_eq__add__iff1,axiom,
    ! [V_d_2,V_b_2,V_c_2,V_e_2,V_aa_2,T_a] :
      ( class_Rings_Oring(T_a)
     => ( c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Groups_Ominus__class_Ominus(T_a,V_aa_2,V_b_2)),V_e_2),V_c_2) = V_d_2
      <=> c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_aa_2),V_e_2),V_c_2) = c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b_2),V_e_2),V_d_2) ) ) ).

fof(fact_Im_Ononneg__bounded,axiom,
    ? [B_K] :
      ( c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),B_K)
      & ! [B_x] : c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_RealVector_Onorm__class_Onorm(tc_RealDef_Oreal,c_Complex_OIm(B_x)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),c_RealVector_Onorm__class_Onorm(tc_Complex_Ocomplex,B_x)),B_K)) ) ).

fof(fact_add__left__imp__eq,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( ( V_c = V_b
       <= c_Groups_Oplus__class_Oplus(T_a,V_a,V_c) = c_Groups_Oplus__class_Oplus(T_a,V_a,V_b) )
     <= class_Groups_Ocancel__semigroup__add(T_a) ) ).

fof(fact_not__exp__less__zero,axiom,
    ! [V_x] : ~ c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_Transcendental_Oexp(tc_RealDef_Oreal,V_x),c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)) ).

fof(arity_Complex__Ocomplex__Rings_Oidom,axiom,
    class_Rings_Oidom(tc_Complex_Ocomplex) ).

fof(fact_less__diff__conv,axiom,
    ! [V_k_2,V_j_2,V_i_2] :
      ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_i_2,c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_j_2,V_k_2))
    <=> c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_i_2,V_k_2),V_j_2) ) ).

fof(fact_mult__less__cancel1,axiom,
    ! [V_n_2,V_m_2,V_k_2] :
      ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_k_2),V_m_2),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_k_2),V_n_2))
    <=> ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_k_2)
        & c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_m_2,V_n_2) ) ) ).

fof(fact_add_Ocomm__neutral,axiom,
    ! [V_a,T_a] :
      ( V_a = c_Groups_Oplus__class_Oplus(T_a,V_a,c_Groups_Ozero__class_Ozero(T_a))
     <= class_Groups_Ocomm__monoid__add(T_a) ) ).

fof(fact_zadd__commute,axiom,
    ! [V_w,V_z] : c_Groups_Oplus__class_Oplus(tc_Int_Oint,V_w,V_z) = c_Groups_Oplus__class_Oplus(tc_Int_Oint,V_z,V_w) ).

fof(arity_Complex__Ocomplex__Semiring__Normalization_Ocomm__semiring__1__cancel__crossproduct,axiom,
    class_Semiring__Normalization_Ocomm__semiring__1__cancel__crossproduct(tc_Complex_Ocomplex) ).

fof(fact_zadd__zmult__distrib2,axiom,
    ! [V_z2,V_z1,V_w] : c_Groups_Oplus__class_Oplus(tc_Int_Oint,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_w),V_z1),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_w),V_z2)) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_w),c_Groups_Oplus__class_Oplus(tc_Int_Oint,V_z1,V_z2)) ).

fof(fact_minus__mult__right,axiom,
    ! [V_b,V_a,T_a] :
      ( class_Rings_Oring(T_a)
     => c_Groups_Ouminus__class_Ouminus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b)) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),c_Groups_Ouminus__class_Ouminus(T_a,V_b)) ) ).

fof(fact_zabs__def,axiom,
    ! [V_i] :
      ( ( c_Orderings_Oord__class_Oless(tc_Int_Oint,V_i,c_Groups_Ozero__class_Ozero(tc_Int_Oint))
       => c_Groups_Oabs__class_Oabs(tc_Int_Oint,V_i) = c_Groups_Ouminus__class_Ouminus(tc_Int_Oint,V_i) )
      & ( ~ c_Orderings_Oord__class_Oless(tc_Int_Oint,V_i,c_Groups_Ozero__class_Ozero(tc_Int_Oint))
       => V_i = c_Groups_Oabs__class_Oabs(tc_Int_Oint,V_i) ) ) ).

fof(arity_Nat__Onat__Rings_Olinordered__semidom,axiom,
    class_Rings_Olinordered__semidom(tc_Nat_Onat) ).

fof(fact_real__sqrt__ge__0__iff,axiom,
    ! [V_y_2] :
      ( c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),V_y_2)
    <=> c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),c_NthRoot_Osqrt(V_y_2)) ) ).

fof(fact_of__real__add,axiom,
    ! [V_y,V_x,T_a] :
      ( c_RealVector_Oof__real(T_a,c_Groups_Oplus__class_Oplus(tc_RealDef_Oreal,V_x,V_y)) = c_Groups_Oplus__class_Oplus(T_a,c_RealVector_Oof__real(T_a,V_x),c_RealVector_Oof__real(T_a,V_y))
     <= class_RealVector_Oreal__algebra__1(T_a) ) ).

fof(fact_abs__triangle__ineq3,axiom,
    ! [V_b,V_a,T_a] :
      ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Oabs__class_Oabs(T_a,c_Groups_Ominus__class_Ominus(T_a,c_Groups_Oabs__class_Oabs(T_a,V_a),c_Groups_Oabs__class_Oabs(T_a,V_b))),c_Groups_Oabs__class_Oabs(T_a,c_Groups_Ominus__class_Ominus(T_a,V_a,V_b)))
     <= class_Groups_Oordered__ab__group__add__abs(T_a) ) ).

fof(fact_abs__mult,axiom,
    ! [V_b,V_a,T_a] :
      ( class_Rings_Olinordered__idom(T_a)
     => c_Groups_Oabs__class_Oabs(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b)) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Groups_Oabs__class_Oabs(T_a,V_a)),c_Groups_Oabs__class_Oabs(T_a,V_b)) ) ).

fof(arity_RealDef__Oreal__RealVector_Oreal__normed__vector,axiom,
    class_RealVector_Oreal__normed__vector(tc_RealDef_Oreal) ).

fof(fact_nat__less__add__iff2,axiom,
    ! [V_n_2,V_m_2,V_u_2,V_j_2,V_i_2] :
      ( ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_i_2),V_u_2),V_m_2),c_Groups_Oplus__class_Oplus(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_j_2),V_u_2),V_n_2))
      <=> c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_m_2,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_j_2,V_i_2)),V_u_2),V_n_2)) )
     <= c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_i_2,V_j_2) ) ).

fof(fact_real__le__eq__diff,axiom,
    ! [V_y_2,V_x_2] :
      ( c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,V_x_2,V_y_2)
    <=> c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Ominus__class_Ominus(tc_RealDef_Oreal,V_x_2,V_y_2),c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)) ) ).

fof(fact_ln__realpow,axiom,
    ! [V_n,V_x] :
      ( c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),V_x)
     => c_Transcendental_Oln(hAPP(hAPP(c_Power_Opower__class_Opower(tc_RealDef_Oreal),V_x),V_n)) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),c_RealDef_Oreal(tc_Nat_Onat,V_n)),c_Transcendental_Oln(V_x)) ) ).

fof(fact_real__of__nat__1,axiom,
    c_RealDef_Oreal(tc_Nat_Onat,c_Groups_Oone__class_Oone(tc_Nat_Onat)) = c_Groups_Oone__class_Oone(tc_RealDef_Oreal) ).

fof(fact_xt1_I11_J,axiom,
    ! [V_a,V_b,T_a] :
      ( class_Orderings_Oorder(T_a)
     => ( ( c_Orderings_Oord__class_Oless(T_a,V_b,V_a)
         <= V_a != V_b )
       <= c_Orderings_Oord__class_Oless__eq(T_a,V_b,V_a) ) ) ).

fof(fact_abs__eq__0,axiom,
    ! [V_aa_2,T_a] :
      ( ( c_Groups_Oabs__class_Oabs(T_a,V_aa_2) = c_Groups_Ozero__class_Ozero(T_a)
      <=> V_aa_2 = c_Groups_Ozero__class_Ozero(T_a) )
     <= class_Groups_Oordered__ab__group__add__abs(T_a) ) ).

fof(fact_minus__unique,axiom,
    ! [V_b,V_a,T_a] :
      ( class_Groups_Ogroup__add(T_a)
     => ( c_Groups_Ozero__class_Ozero(T_a) = c_Groups_Oplus__class_Oplus(T_a,V_a,V_b)
       => V_b = c_Groups_Ouminus__class_Ouminus(T_a,V_a) ) ) ).

fof(fact_mult__left_Ononneg__bounded,axiom,
    ! [V_y,T_a] :
      ( class_RealVector_Oreal__normed__algebra(T_a)
     => ? [B_K] :
          ( ! [B_x] : c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_RealVector_Onorm__class_Onorm(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),B_x),V_y)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),c_RealVector_Onorm__class_Onorm(T_a,B_x)),B_K))
          & c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),B_K) ) ) ).

fof(fact_arccos__cos2,axiom,
    ! [V_x] :
      ( ( c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Ouminus__class_Ouminus(tc_RealDef_Oreal,c_Transcendental_Opi),V_x)
       => c_Groups_Ouminus__class_Ouminus(tc_RealDef_Oreal,V_x) = c_Transcendental_Oarccos(c_Transcendental_Ocos(V_x)) )
     <= c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,V_x,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)) ) ).

fof(fact_real__of__nat__gt__zero__cancel__iff,axiom,
    ! [V_n_2] :
      ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_n_2)
    <=> c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),c_RealDef_Oreal(tc_Nat_Onat,V_n_2)) ) ).

fof(arity_RealDef__Oreal__Orderings_Opreorder,axiom,
    class_Orderings_Opreorder(tc_RealDef_Oreal) ).

fof(fact_exp__le__cancel__iff,axiom,
    ! [V_y_2,V_x_2] :
      ( c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Transcendental_Oexp(tc_RealDef_Oreal,V_x_2),c_Transcendental_Oexp(tc_RealDef_Oreal,V_y_2))
    <=> c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,V_x_2,V_y_2) ) ).

fof(fact_order__less__le__trans,axiom,
    ! [V_z,V_y,V_x,T_a] :
      ( ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_y,V_z)
         => c_Orderings_Oord__class_Oless(T_a,V_x,V_z) )
       <= c_Orderings_Oord__class_Oless(T_a,V_x,V_y) )
     <= class_Orderings_Opreorder(T_a) ) ).

fof(fact_mult__right__less__imp__less,axiom,
    ! [V_b,V_c,V_a,T_a] :
      ( ( c_Orderings_Oord__class_Oless(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_c),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b),V_c))
       => ( c_Orderings_Oord__class_Oless(T_a,V_a,V_b)
         <= c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_c) ) )
     <= class_Rings_Olinordered__semiring(T_a) ) ).

fof(fact_mult_Odiff__right,axiom,
    ! [V_b_H,V_b,V_a,T_a] :
      ( c_Groups_Ominus__class_Ominus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b_H)) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),c_Groups_Ominus__class_Ominus(T_a,V_b,V_b_H))
     <= class_RealVector_Oreal__normed__algebra(T_a) ) ).

fof(fact_Nat__Transfer_Otransfer__nat__int__function__closures_I1_J,axiom,
    ! [V_y,V_x] :
      ( ( c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_y)
       => c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),c_Groups_Oplus__class_Oplus(tc_Int_Oint,V_x,V_y)) )
     <= c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_x) ) ).

fof(fact_int__one__le__iff__zero__less,axiom,
    ! [V_z_2] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Oone__class_Oone(tc_Int_Oint),V_z_2)
    <=> c_Orderings_Oord__class_Oless(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_z_2) ) ).

fof(fact_realpow__pos__nth,axiom,
    ! [V_a,V_n] :
      ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_n)
     => ( ? [B_r] :
            ( c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),B_r)
            & hAPP(hAPP(c_Power_Opower__class_Opower(tc_RealDef_Oreal),B_r),V_n) = V_a )
       <= c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),V_a) ) ) ).

fof(fact_add__le__cancel__left,axiom,
    ! [V_b_2,V_aa_2,V_c_2,T_a] :
      ( class_Groups_Oordered__ab__semigroup__add__imp__le(T_a)
     => ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Oplus__class_Oplus(T_a,V_c_2,V_aa_2),c_Groups_Oplus__class_Oplus(T_a,V_c_2,V_b_2))
      <=> c_Orderings_Oord__class_Oless__eq(T_a,V_aa_2,V_b_2) ) ) ).

fof(fact_comm__semiring__1__class_Onormalizing__semiring__rules_I13_J,axiom,
    ! [V_ry,V_rx,V_ly,V_lx,T_a] :
      ( class_Rings_Ocomm__semiring__1(T_a)
     => hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_lx),V_ly)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_rx),V_ry)) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_lx),V_rx)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_ly),V_ry)) ) ).

fof(fact_zdiff__zmult__distrib,axiom,
    ! [V_w,V_z2,V_z1] : c_Groups_Ominus__class_Ominus(tc_Int_Oint,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_z1),V_w),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_z2),V_w)) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),c_Groups_Ominus__class_Ominus(tc_Int_Oint,V_z1,V_z2)),V_w) ).

fof(arity_Complex__Ocomplex__Groups_Ocancel__semigroup__add,axiom,
    class_Groups_Ocancel__semigroup__add(tc_Complex_Ocomplex) ).

fof(fact_mult__eq__if,axiom,
    ! [V_n,V_m] :
      ( ( c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_n,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_m,c_Groups_Oone__class_Oone(tc_Nat_Onat))),V_n)) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_m),V_n)
       <= V_m != c_Groups_Ozero__class_Ozero(tc_Nat_Onat) )
      & ( c_Groups_Ozero__class_Ozero(tc_Nat_Onat) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_m),V_n)
       <= c_Groups_Ozero__class_Ozero(tc_Nat_Onat) = V_m ) ) ).

fof(fact_linorder__less__linear,axiom,
    ! [V_y,V_x,T_a] :
      ( ( c_Orderings_Oord__class_Oless(T_a,V_x,V_y)
        | V_y = V_x
        | c_Orderings_Oord__class_Oless(T_a,V_y,V_x) )
     <= class_Orderings_Olinorder(T_a) ) ).

fof(arity_RealDef__Oreal__Groups_Oordered__cancel__ab__semigroup__add,axiom,
    class_Groups_Oordered__cancel__ab__semigroup__add(tc_RealDef_Oreal) ).

fof(fact_exp__less__mono,axiom,
    ! [V_y,V_x] :
      ( c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,V_x,V_y)
     => c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_Transcendental_Oexp(tc_RealDef_Oreal,V_x),c_Transcendental_Oexp(tc_RealDef_Oreal,V_y)) ) ).

fof(fact_right__minus__eq,axiom,
    ! [V_b_2,V_aa_2,T_a] :
      ( ( V_aa_2 = V_b_2
      <=> c_Groups_Ozero__class_Ozero(T_a) = c_Groups_Ominus__class_Ominus(T_a,V_aa_2,V_b_2) )
     <= class_Groups_Ogroup__add(T_a) ) ).

fof(arity_HOL__Obool__Orderings_Oorder,axiom,
    class_Orderings_Oorder(tc_HOL_Obool) ).

fof(fact_pi__not__less__zero,axiom,
    ~ c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_Transcendental_Opi,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)) ).

fof(arity_Complex__Ocomplex__Power_Opower,axiom,
    class_Power_Opower(tc_Complex_Ocomplex) ).

fof(fact_minus__minus,axiom,
    ! [V_a,T_a] :
      ( c_Groups_Ouminus__class_Ouminus(T_a,c_Groups_Ouminus__class_Ouminus(T_a,V_a)) = V_a
     <= class_Groups_Ogroup__add(T_a) ) ).

fof(fact_compl__le__compl__iff,axiom,
    ! [V_y_2,V_x_2,T_a] :
      ( class_Lattices_Oboolean__algebra(T_a)
     => ( c_Orderings_Oord__class_Oless__eq(T_a,V_y_2,V_x_2)
      <=> c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ouminus__class_Ouminus(T_a,V_x_2),c_Groups_Ouminus__class_Ouminus(T_a,V_y_2)) ) ) ).

fof(fact_real__mult__less__mono2,axiom,
    ! [V_y,V_x,V_z] :
      ( ( c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,V_x,V_y)
       => c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),V_z),V_x),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),V_z),V_y)) )
     <= c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),V_z) ) ).

fof(fact_tsub__eq,axiom,
    ! [V_x,V_y] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,V_y,V_x)
     => c_Nat__Transfer_Otsub(V_x,V_y) = c_Groups_Ominus__class_Ominus(tc_Int_Oint,V_x,V_y) ) ).

fof(fact_complex__minus,axiom,
    ! [V_b,V_a] : c_Groups_Ouminus__class_Ouminus(tc_Complex_Ocomplex,c_Complex_Ocomplex_OComplex(V_a,V_b)) = c_Complex_Ocomplex_OComplex(c_Groups_Ouminus__class_Ouminus(tc_RealDef_Oreal,V_a),c_Groups_Ouminus__class_Ouminus(tc_RealDef_Oreal,V_b)) ).

fof(fact_real__of__nat__zero__iff,axiom,
    ! [V_n_2] :
      ( c_RealDef_Oreal(tc_Nat_Onat,V_n_2) = c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)
    <=> V_n_2 = c_Groups_Ozero__class_Ozero(tc_Nat_Onat) ) ).

fof(fact_real__of__nat__mult,axiom,
    ! [V_n,V_m] : c_RealDef_Oreal(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_m),V_n)) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),c_RealDef_Oreal(tc_Nat_Onat,V_m)),c_RealDef_Oreal(tc_Nat_Onat,V_n)) ).

fof(fact_abs__leI,axiom,
    ! [V_b,V_a,T_a] :
      ( class_Groups_Oordered__ab__group__add__abs(T_a)
     => ( ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ouminus__class_Ouminus(T_a,V_a),V_b)
         => c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Oabs__class_Oabs(T_a,V_a),V_b) )
       <= c_Orderings_Oord__class_Oless__eq(T_a,V_a,V_b) ) ) ).

fof(fact_mult__le__cancel1,axiom,
    ! [V_n_2,V_m_2,V_k_2] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_k_2),V_m_2),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_k_2),V_n_2))
    <=> ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_k_2)
       => c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m_2,V_n_2) ) ) ).

fof(arity_RealDef__Oreal__RealVector_Oreal__algebra__1,axiom,
    class_RealVector_Oreal__algebra__1(tc_RealDef_Oreal) ).

fof(fact_Re__complex__of__real,axiom,
    ! [V_z] : c_Complex_ORe(c_RealVector_Oof__real(tc_Complex_Ocomplex,V_z)) = V_z ).

fof(arity_Int__Oint__Rings_Oordered__ring,axiom,
    class_Rings_Oordered__ring(tc_Int_Oint) ).

fof(fact_diff__add__inverse2,axiom,
    ! [V_n,V_m] : V_m = c_Groups_Ominus__class_Ominus(tc_Nat_Onat,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_m,V_n),V_n) ).

fof(fact_diff__diff__right,axiom,
    ! [V_i,V_j,V_k] :
      ( c_Groups_Ominus__class_Ominus(tc_Nat_Onat,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_i,V_k),V_j) = c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_i,c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_j,V_k))
     <= c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_k,V_j) ) ).

fof(fact_complex__of__real__add__Complex,axiom,
    ! [V_y,V_x,V_r] : c_Groups_Oplus__class_Oplus(tc_Complex_Ocomplex,c_RealVector_Oof__real(tc_Complex_Ocomplex,V_r),c_Complex_Ocomplex_OComplex(V_x,V_y)) = c_Complex_Ocomplex_OComplex(c_Groups_Oplus__class_Oplus(tc_RealDef_Oreal,V_r,V_x),V_y) ).

fof(fact_zle__trans,axiom,
    ! [V_k,V_j,V_i] :
      ( ( c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,V_i,V_k)
       <= c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,V_j,V_k) )
     <= c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,V_i,V_j) ) ).

fof(fact_nat__add__left__cancel__less,axiom,
    ! [V_n_2,V_m_2,V_k_2] :
      ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_m_2,V_n_2)
    <=> c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_k_2,V_m_2),c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_k_2,V_n_2)) ) ).

fof(fact_linorder__neqE__nat,axiom,
    ! [V_y,V_x] :
      ( ( ~ c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_x,V_y)
       => c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_y,V_x) )
     <= V_y != V_x ) ).

fof(arity_Int__Oint__Rings_Ozero__neq__one,axiom,
    class_Rings_Ozero__neq__one(tc_Int_Oint) ).

fof(fact_leI,axiom,
    ! [V_y,V_x,T_a] :
      ( class_Orderings_Olinorder(T_a)
     => ( c_Orderings_Oord__class_Oless__eq(T_a,V_y,V_x)
       <= ~ c_Orderings_Oord__class_Oless(T_a,V_x,V_y) ) ) ).

fof(fact_less__natfloor,axiom,
    ! [V_n,V_x] :
      ( c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),V_x)
     => ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_RComplete_Onatfloor(V_x),V_n)
       <= c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,V_x,c_RealDef_Oreal(tc_Nat_Onat,V_n)) ) ) ).

fof(fact_norm__minus__cancel,axiom,
    ! [V_x,T_a] :
      ( c_RealVector_Onorm__class_Onorm(T_a,V_x) = c_RealVector_Onorm__class_Onorm(T_a,c_Groups_Ouminus__class_Ouminus(T_a,V_x))
     <= class_RealVector_Oreal__normed__vector(T_a) ) ).

fof(fact_one__reorient,axiom,
    ! [V_x_2,T_a] :
      ( ( c_Groups_Oone__class_Oone(T_a) = V_x_2
      <=> V_x_2 = c_Groups_Oone__class_Oone(T_a) )
     <= class_Groups_Oone(T_a) ) ).

fof(arity_HOL__Obool__Groups_Ominus,axiom,
    class_Groups_Ominus(tc_HOL_Obool) ).

fof(fact_complex__add,axiom,
    ! [V_d,V_c,V_b,V_a] : c_Groups_Oplus__class_Oplus(tc_Complex_Ocomplex,c_Complex_Ocomplex_OComplex(V_a,V_b),c_Complex_Ocomplex_OComplex(V_c,V_d)) = c_Complex_Ocomplex_OComplex(c_Groups_Oplus__class_Oplus(tc_RealDef_Oreal,V_a,V_c),c_Groups_Oplus__class_Oplus(tc_RealDef_Oreal,V_b,V_d)) ).

fof(fact_diff__le__self,axiom,
    ! [V_n,V_m] : c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_m,V_n),V_m) ).

fof(fact_ln__ge__zero__imp__ge__one,axiom,
    ! [V_x] :
      ( ( c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),V_x)
       => c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Oone__class_Oone(tc_RealDef_Oreal),V_x) )
     <= c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),c_Transcendental_Oln(V_x)) ) ).

fof(fact_diff__le__mono,axiom,
    ! [V_l,V_n,V_m] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_m,V_l),c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_n,V_l))
     <= c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m,V_n) ) ).

fof(arity_Nat__Onat__Rings_Osemiring__0,axiom,
    class_Rings_Osemiring__0(tc_Nat_Onat) ).

fof(fact_le__iff__add,axiom,
    ! [V_n_2,V_m_2] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m_2,V_n_2)
    <=> ? [B_k] : c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_m_2,B_k) = V_n_2 ) ).

fof(arity_Int__Oint__Orderings_Oorder,axiom,
    class_Orderings_Oorder(tc_Int_Oint) ).

fof(fact_mult__cancel2,axiom,
    ! [V_n_2,V_k_2,V_m_2] :
      ( ( V_k_2 = c_Groups_Ozero__class_Ozero(tc_Nat_Onat)
        | V_n_2 = V_m_2 )
    <=> hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_m_2),V_k_2) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_n_2),V_k_2) ) ).

fof(fact_add__diff__assoc,axiom,
    ! [V_i,V_j,V_k] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_k,V_j)
     => c_Groups_Ominus__class_Ominus(tc_Nat_Onat,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_i,V_j),V_k) = c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_i,c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_j,V_k)) ) ).

fof(fact_zadd__strict__right__mono,axiom,
    ! [V_k,V_j,V_i] :
      ( c_Orderings_Oord__class_Oless(tc_Int_Oint,V_i,V_j)
     => c_Orderings_Oord__class_Oless(tc_Int_Oint,c_Groups_Oplus__class_Oplus(tc_Int_Oint,V_i,V_k),c_Groups_Oplus__class_Oplus(tc_Int_Oint,V_j,V_k)) ) ).

fof(fact_exp__add,axiom,
    ! [V_y,V_x,T_a] :
      ( c_Transcendental_Oexp(T_a,c_Groups_Oplus__class_Oplus(T_a,V_x,V_y)) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Transcendental_Oexp(T_a,V_x)),c_Transcendental_Oexp(T_a,V_y))
     <= ( class_SEQ_Obanach(T_a)
        & class_RealVector_Oreal__normed__field(T_a) ) ) ).

fof(fact_mult__less__mono1,axiom,
    ! [V_k,V_j,V_i] :
      ( ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_k)
       => c_Orderings_Oord__class_Oless(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_i),V_k),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_j),V_k)) )
     <= c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_i,V_j) ) ).

fof(fact_sum__squares__ge__zero,axiom,
    ! [V_y,V_x,T_a] :
      ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_x),V_x),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_y),V_y)))
     <= class_Rings_Olinordered__ring(T_a) ) ).

fof(arity_Nat__Onat__Orderings_Opreorder,axiom,
    class_Orderings_Opreorder(tc_Nat_Onat) ).

fof(fact_ge__natfloor__plus__one__imp__gt,axiom,
    ! [V_n,V_z] :
      ( c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,V_z,c_RealDef_Oreal(tc_Nat_Onat,V_n))
     <= c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,c_RComplete_Onatfloor(V_z),c_Groups_Oone__class_Oone(tc_Nat_Onat)),V_n) ) ).

fof(arity_Int__Oint__Rings_Oring__1__no__zero__divisors,axiom,
    class_Rings_Oring__1__no__zero__divisors(tc_Int_Oint) ).

fof(fact_power__decreasing,axiom,
    ! [V_a,V_N,V_n,T_a] :
      ( class_Rings_Olinordered__semidom(T_a)
     => ( ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_a,c_Groups_Oone__class_Oone(T_a))
           => c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_N),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_n)) )
         <= c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_a) )
       <= c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_n,V_N) ) ) ).

fof(fact_i__mult__eq2,axiom,
    hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Complex_Ocomplex),c_Complex_Oii),c_Complex_Oii) = c_Groups_Ouminus__class_Ouminus(tc_Complex_Ocomplex,c_Groups_Oone__class_Oone(tc_Complex_Ocomplex)) ).

fof(fact_real__natfloor__gt__diff__one,axiom,
    ! [V_x] : c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_Groups_Ominus__class_Ominus(tc_RealDef_Oreal,V_x,c_Groups_Oone__class_Oone(tc_RealDef_Oreal)),c_RealDef_Oreal(tc_Nat_Onat,c_RComplete_Onatfloor(V_x))) ).

fof(fact_order__le__less,axiom,
    ! [V_y_2,V_x_2,T_a] :
      ( class_Orderings_Oorder(T_a)
     => ( c_Orderings_Oord__class_Oless__eq(T_a,V_x_2,V_y_2)
      <=> ( V_x_2 = V_y_2
          | c_Orderings_Oord__class_Oless(T_a,V_x_2,V_y_2) ) ) ) ).

fof(arity_Complex__Ocomplex__Rings_Ocomm__ring__1,axiom,
    class_Rings_Ocomm__ring__1(tc_Complex_Ocomplex) ).

fof(fact_natceiling__subtract,axiom,
    ! [V_x,V_a] :
      ( c_RComplete_Onatceiling(c_Groups_Ominus__class_Ominus(tc_RealDef_Oreal,V_x,c_RealDef_Oreal(tc_Nat_Onat,V_a))) = c_Groups_Ominus__class_Ominus(tc_Nat_Onat,c_RComplete_Onatceiling(V_x),V_a)
     <= c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_RealDef_Oreal(tc_Nat_Onat,V_a),V_x) ) ).

fof(fact_diff__mult__distrib2,axiom,
    ! [V_n,V_m,V_k] : c_Groups_Ominus__class_Ominus(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_k),V_m),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_k),V_n)) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_k),c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_m,V_n)) ).

fof(arity_RealDef__Oreal__Rings_Ozero__neq__one,axiom,
    class_Rings_Ozero__neq__one(tc_RealDef_Oreal) ).

fof(fact_abs__mult__self,axiom,
    ! [V_a,T_a] :
      ( class_Rings_Olinordered__idom(T_a)
     => hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_a) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Groups_Oabs__class_Oabs(T_a,V_a)),c_Groups_Oabs__class_Oabs(T_a,V_a)) ) ).

fof(arity_RealDef__Oreal__Rings_Olinordered__semiring__1,axiom,
    class_Rings_Olinordered__semiring__1(tc_RealDef_Oreal) ).

fof(fact_lemma__interval,axiom,
    ! [V_b,V_x,V_a] :
      ( ( ? [B_d] :
            ( c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),B_d)
            & ! [B_y] :
                ( ( c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,V_a,B_y)
                  & c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,B_y,V_b) )
               <= c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_Groups_Oabs__class_Oabs(tc_RealDef_Oreal,c_Groups_Ominus__class_Ominus(tc_RealDef_Oreal,V_x,B_y)),B_d) ) )
       <= c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,V_x,V_b) )
     <= c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,V_a,V_x) ) ).

fof(fact_of__real__power,axiom,
    ! [V_n,V_x,T_a] :
      ( class_RealVector_Oreal__algebra__1(T_a)
     => hAPP(hAPP(c_Power_Opower__class_Opower(T_a),c_RealVector_Oof__real(T_a,V_x)),V_n) = c_RealVector_Oof__real(T_a,hAPP(hAPP(c_Power_Opower__class_Opower(tc_RealDef_Oreal),V_x),V_n)) ) ).

fof(arity_fun__Groups_Ouminus,axiom,
    ! [T_2,T_1] :
      ( class_Groups_Ouminus(T_1)
     => class_Groups_Ouminus(tc_fun(T_2,T_1)) ) ).

fof(fact_mult__le__mono2,axiom,
    ! [V_k,V_j,V_i] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_i,V_j)
     => c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_k),V_i),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_k),V_j)) ) ).

fof(fact_comm__semiring__1__class_Onormalizing__semiring__rules_I3_J,axiom,
    ! [V_a,V_m,T_a] :
      ( c_Groups_Oplus__class_Oplus(T_a,V_m,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_m)) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Groups_Oplus__class_Oplus(T_a,V_a,c_Groups_Oone__class_Oone(T_a))),V_m)
     <= class_Rings_Ocomm__semiring__1(T_a) ) ).

fof(fact_zminus__zadd__distrib,axiom,
    ! [V_w,V_z] : c_Groups_Ouminus__class_Ouminus(tc_Int_Oint,c_Groups_Oplus__class_Oplus(tc_Int_Oint,V_z,V_w)) = c_Groups_Oplus__class_Oplus(tc_Int_Oint,c_Groups_Ouminus__class_Ouminus(tc_Int_Oint,V_z),c_Groups_Ouminus__class_Ouminus(tc_Int_Oint,V_w)) ).

fof(fact_zero__le__power__abs,axiom,
    ! [V_n,V_a,T_a] :
      ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),c_Groups_Oabs__class_Oabs(T_a,V_a)),V_n))
     <= class_Rings_Olinordered__idom(T_a) ) ).

fof(fact_power__minus,axiom,
    ! [V_n,V_a,T_a] :
      ( hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),c_Groups_Ouminus__class_Ouminus(T_a,c_Groups_Oone__class_Oone(T_a))),V_n)),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_n)) = hAPP(hAPP(c_Power_Opower__class_Opower(T_a),c_Groups_Ouminus__class_Ouminus(T_a,V_a)),V_n)
     <= class_Rings_Oring__1(T_a) ) ).

fof(fact_real__of__nat__zero,axiom,
    c_RealDef_Oreal(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat)) = c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal) ).

fof(fact_real__mult__1,axiom,
    ! [V_z] : V_z = hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),c_Groups_Oone__class_Oone(tc_RealDef_Oreal)),V_z) ).

fof(fact_natfloor__one,axiom,
    c_RComplete_Onatfloor(c_Groups_Oone__class_Oone(tc_RealDef_Oreal)) = c_Groups_Oone__class_Oone(tc_Nat_Onat) ).

fof(fact_power__commutes,axiom,
    ! [V_n,V_a,T_a] :
      ( class_Groups_Omonoid__mult(T_a)
     => hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_n)),V_a) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_n)) ) ).

fof(fact_mult__le__cancel2,axiom,
    ! [V_n_2,V_k_2,V_m_2] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_m_2),V_k_2),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_n_2),V_k_2))
    <=> ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_k_2)
       => c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m_2,V_n_2) ) ) ).

fof(fact_real__two__squares__add__zero__iff,axiom,
    ! [V_y_2,V_x_2] :
      ( ( c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal) = V_y_2
        & c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal) = V_x_2 )
    <=> c_Groups_Oplus__class_Oplus(tc_RealDef_Oreal,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),V_x_2),V_x_2),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),V_y_2),V_y_2)) = c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal) ) ).

fof(fact_power__less__imp__less__base,axiom,
    ! [V_b,V_n,V_a,T_a] :
      ( ( c_Orderings_Oord__class_Oless(T_a,hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_n),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_b),V_n))
       => ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_b)
         => c_Orderings_Oord__class_Oless(T_a,V_a,V_b) ) )
     <= class_Rings_Olinordered__semidom(T_a) ) ).

fof(fact_less__add__eq__less,axiom,
    ! [V_n,V_m,V_l,V_k] :
      ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_k,V_l)
     => ( c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_m,V_l) = c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_k,V_n)
       => c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_m,V_n) ) ) ).

fof(fact_zpower__zpower,axiom,
    ! [V_z,V_y,V_x] : hAPP(hAPP(c_Power_Opower__class_Opower(tc_Int_Oint),hAPP(hAPP(c_Power_Opower__class_Opower(tc_Int_Oint),V_x),V_y)),V_z) = hAPP(hAPP(c_Power_Opower__class_Opower(tc_Int_Oint),V_x),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_y),V_z)) ).

fof(fact_diff__diff__cancel,axiom,
    ! [V_n,V_i] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_i,V_n)
     => V_i = c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_n,c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_n,V_i)) ) ).

fof(fact_of__real_Obounded,axiom,
    ! [T_a] :
      ( ? [B_K] :
        ! [B_x] : c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_RealVector_Onorm__class_Onorm(T_a,c_RealVector_Oof__real(T_a,B_x)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),c_RealVector_Onorm__class_Onorm(tc_RealDef_Oreal,B_x)),B_K))
     <= ( class_RealVector_Oreal__algebra__1(T_a)
        & class_RealVector_Oreal__normed__vector(T_a) ) ) ).

fof(arity_Int__Oint__Groups_Omonoid__add,axiom,
    class_Groups_Omonoid__add(tc_Int_Oint) ).

fof(fact_add__less__mono1,axiom,
    ! [V_k,V_j,V_i] :
      ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_i,V_j)
     => c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_i,V_k),c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_j,V_k)) ) ).

fof(fact_complex__diff,axiom,
    ! [V_d,V_c,V_b,V_a] : c_Groups_Ominus__class_Ominus(tc_Complex_Ocomplex,c_Complex_Ocomplex_OComplex(V_a,V_b),c_Complex_Ocomplex_OComplex(V_c,V_d)) = c_Complex_Ocomplex_OComplex(c_Groups_Ominus__class_Ominus(tc_RealDef_Oreal,V_a,V_c),c_Groups_Ominus__class_Ominus(tc_RealDef_Oreal,V_b,V_d)) ).

fof(fact_of__real__0,axiom,
    ! [T_a] :
      ( class_RealVector_Oreal__algebra__1(T_a)
     => c_Groups_Ozero__class_Ozero(T_a) = c_RealVector_Oof__real(T_a,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)) ) ).

fof(fact_eq__neg__iff__add__eq__0,axiom,
    ! [V_b_2,V_aa_2,T_a] :
      ( ( c_Groups_Oplus__class_Oplus(T_a,V_aa_2,V_b_2) = c_Groups_Ozero__class_Ozero(T_a)
      <=> V_aa_2 = c_Groups_Ouminus__class_Ouminus(T_a,V_b_2) )
     <= class_Groups_Ogroup__add(T_a) ) ).

fof(arity_Nat__Onat__Groups_Ocancel__ab__semigroup__add,axiom,
    class_Groups_Ocancel__ab__semigroup__add(tc_Nat_Onat) ).

fof(fact_abs__minus__le__zero,axiom,
    ! [V_a,T_a] :
      ( class_Groups_Oordered__ab__group__add__abs(T_a)
     => c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ouminus__class_Ouminus(T_a,c_Groups_Oabs__class_Oabs(T_a,V_a)),c_Groups_Ozero__class_Ozero(T_a)) ) ).

fof(fact_sgn__real__def,axiom,
    ! [V_a] :
      ( ( V_a != c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)
       => ( ( c_Groups_Osgn__class_Osgn(tc_RealDef_Oreal,V_a) = c_Groups_Oone__class_Oone(tc_RealDef_Oreal)
           <= c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),V_a) )
          & ( c_Groups_Ouminus__class_Ouminus(tc_RealDef_Oreal,c_Groups_Oone__class_Oone(tc_RealDef_Oreal)) = c_Groups_Osgn__class_Osgn(tc_RealDef_Oreal,V_a)
           <= ~ c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),V_a) ) ) )
      & ( V_a = c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)
       => c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal) = c_Groups_Osgn__class_Osgn(tc_RealDef_Oreal,V_a) ) ) ).

fof(fact_comm__semiring__1__class_Onormalizing__semiring__rules_I19_J,axiom,
    ! [V_ry,V_rx,V_lx,T_a] :
      ( class_Rings_Ocomm__semiring__1(T_a)
     => hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_lx),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_rx),V_ry)) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_rx),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_lx),V_ry)) ) ).

fof(arity_Nat__Onat__Groups_Ozero,axiom,
    class_Groups_Ozero(tc_Nat_Onat) ).

fof(fact_real__sqrt__minus,axiom,
    ! [V_x] : c_NthRoot_Osqrt(c_Groups_Ouminus__class_Ouminus(tc_RealDef_Oreal,V_x)) = c_Groups_Ouminus__class_Ouminus(tc_RealDef_Oreal,c_NthRoot_Osqrt(V_x)) ).

fof(fact_norm__le__zero__iff,axiom,
    ! [V_x_2,T_a] :
      ( class_RealVector_Oreal__normed__vector(T_a)
     => ( c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_RealVector_Onorm__class_Onorm(T_a,V_x_2),c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal))
      <=> V_x_2 = c_Groups_Ozero__class_Ozero(T_a) ) ) ).

fof(fact_positive__minus,axiom,
    ! [V_x] :
      ( ~ c_RealDef_Opositive(V_x)
     => ( c_RealDef_Opositive(c_Groups_Ouminus__class_Ouminus(tc_RealDef_Oreal,V_x))
       <= V_x != c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal) ) ) ).

fof(fact_linorder__not__less,axiom,
    ! [V_y_2,V_x_2,T_a] :
      ( class_Orderings_Olinorder(T_a)
     => ( ~ c_Orderings_Oord__class_Oless(T_a,V_x_2,V_y_2)
      <=> c_Orderings_Oord__class_Oless__eq(T_a,V_y_2,V_x_2) ) ) ).

fof(fact_double__zero__sym,axiom,
    ! [V_aa_2,T_a] :
      ( ( V_aa_2 = c_Groups_Ozero__class_Ozero(T_a)
      <=> c_Groups_Oplus__class_Oplus(T_a,V_aa_2,V_aa_2) = c_Groups_Ozero__class_Ozero(T_a) )
     <= class_Groups_Olinordered__ab__group__add(T_a) ) ).

fof(fact_lemma__interval__lt,axiom,
    ! [V_b,V_x,V_a] :
      ( ( c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,V_x,V_b)
       => ? [B_d] :
            ( c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),B_d)
            & ! [B_y] :
                ( ( c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,V_a,B_y)
                  & c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,B_y,V_b) )
               <= c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_Groups_Oabs__class_Oabs(tc_RealDef_Oreal,c_Groups_Ominus__class_Ominus(tc_RealDef_Oreal,V_x,B_y)),B_d) ) ) )
     <= c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,V_a,V_x) ) ).

fof(fact_real__of__nat__diff,axiom,
    ! [V_m,V_n] :
      ( c_Groups_Ominus__class_Ominus(tc_RealDef_Oreal,c_RealDef_Oreal(tc_Nat_Onat,V_m),c_RealDef_Oreal(tc_Nat_Onat,V_n)) = c_RealDef_Oreal(tc_Nat_Onat,c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_m,V_n))
     <= c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_n,V_m) ) ).

fof(fact_minus__add__cancel,axiom,
    ! [V_b,V_a,T_a] :
      ( c_Groups_Oplus__class_Oplus(T_a,c_Groups_Ouminus__class_Ouminus(T_a,V_a),c_Groups_Oplus__class_Oplus(T_a,V_a,V_b)) = V_b
     <= class_Groups_Ogroup__add(T_a) ) ).

fof(fact_divisors__zero,axiom,
    ! [V_b,V_a,T_a] :
      ( class_Rings_Ono__zero__divisors(T_a)
     => ( ( V_b = c_Groups_Ozero__class_Ozero(T_a)
          | c_Groups_Ozero__class_Ozero(T_a) = V_a )
       <= c_Groups_Ozero__class_Ozero(T_a) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b) ) ) ).

fof(arity_RealDef__Oreal__Groups_Oab__semigroup__mult,axiom,
    class_Groups_Oab__semigroup__mult(tc_RealDef_Oreal) ).

fof(fact_nat__diff__split,axiom,
    ! [V_b_2,V_aa_2,V_P_2] :
      ( ( ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_aa_2,V_b_2)
         => hBOOL(hAPP(V_P_2,c_Groups_Ozero__class_Ozero(tc_Nat_Onat))) )
        & ! [B_d] :
            ( c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_b_2,B_d) = V_aa_2
           => hBOOL(hAPP(V_P_2,B_d)) ) )
    <=> hBOOL(hAPP(V_P_2,c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_aa_2,V_b_2))) ) ).

fof(fact_zmult__assoc,axiom,
    ! [V_z3,V_z2,V_z1] : hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_z1),V_z2)),V_z3) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_z1),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_z2),V_z3)) ).

fof(fact_comm__semiring__1__class_Onormalizing__semiring__rules_I34_J,axiom,
    ! [V_z,V_y,V_x,T_a] :
      ( hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_x),c_Groups_Oplus__class_Oplus(T_a,V_y,V_z)) = c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_x),V_y),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_x),V_z))
     <= class_Rings_Ocomm__semiring__1(T_a) ) ).

fof(arity_RealDef__Oreal__Groups_Oab__semigroup__add,axiom,
    class_Groups_Oab__semigroup__add(tc_RealDef_Oreal) ).

fof(fact_nat__diff__split__asm,axiom,
    ! [V_b_2,V_aa_2,V_P_2] :
      ( hBOOL(hAPP(V_P_2,c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_aa_2,V_b_2)))
    <=> ~ ( ? [B_d] :
              ( c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_b_2,B_d) = V_aa_2
              & ~ hBOOL(hAPP(V_P_2,B_d)) )
          | ( ~ hBOOL(hAPP(V_P_2,c_Groups_Ozero__class_Ozero(tc_Nat_Onat)))
            & c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_aa_2,V_b_2) ) ) ) ).

fof(fact_not__leE,axiom,
    ! [V_x,V_y,T_a] :
      ( class_Orderings_Olinorder(T_a)
     => ( ~ c_Orderings_Oord__class_Oless__eq(T_a,V_y,V_x)
       => c_Orderings_Oord__class_Oless(T_a,V_x,V_y) ) ) ).

fof(fact_ord__less__eq__trans,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( ( ( c_Orderings_Oord__class_Oless(T_a,V_a,V_c)
         <= V_c = V_b )
       <= c_Orderings_Oord__class_Oless(T_a,V_a,V_b) )
     <= class_Orderings_Oord(T_a) ) ).

fof(fact_comm__ring__1__class_Onormalizing__ring__rules_I1_J,axiom,
    ! [V_x,T_a] :
      ( hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Groups_Ouminus__class_Ouminus(T_a,c_Groups_Oone__class_Oone(T_a))),V_x) = c_Groups_Ouminus__class_Ouminus(T_a,V_x)
     <= class_Rings_Ocomm__ring__1(T_a) ) ).

fof(arity_fun__Orderings_Oord,axiom,
    ! [T_2,T_1] :
      ( class_Orderings_Oord(T_1)
     => class_Orderings_Oord(tc_fun(T_2,T_1)) ) ).

fof(fact_order__less__imp__not__eq,axiom,
    ! [V_y,V_x,T_a] :
      ( class_Orderings_Oorder(T_a)
     => ( V_x != V_y
       <= c_Orderings_Oord__class_Oless(T_a,V_x,V_y) ) ) ).

fof(fact_nat__mult__commute,axiom,
    ! [V_n,V_m] : hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_m),V_n) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_n),V_m) ).

fof(fact_Complex__eq__0,axiom,
    ! [V_b_2,V_aa_2] :
      ( ( c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal) = V_b_2
        & V_aa_2 = c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal) )
    <=> c_Complex_Ocomplex_OComplex(V_aa_2,V_b_2) = c_Groups_Ozero__class_Ozero(tc_Complex_Ocomplex) ) ).

fof(fact_diff__less__mono2,axiom,
    ! [V_l,V_n,V_m] :
      ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_m,V_n)
     => ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_l,V_n),c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_l,V_m))
       <= c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_m,V_l) ) ) ).

fof(fact_zero__reorient,axiom,
    ! [V_x_2,T_a] :
      ( class_Groups_Ozero(T_a)
     => ( c_Groups_Ozero__class_Ozero(T_a) = V_x_2
      <=> V_x_2 = c_Groups_Ozero__class_Ozero(T_a) ) ) ).

fof(fact_one__le__power,axiom,
    ! [V_n,V_a,T_a] :
      ( class_Rings_Olinordered__semidom(T_a)
     => ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Oone__class_Oone(T_a),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_n))
       <= c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Oone__class_Oone(T_a),V_a) ) ) ).

fof(fact_sgn__1__pos,axiom,
    ! [V_aa_2,T_a] :
      ( class_Rings_Olinordered__idom(T_a)
     => ( c_Groups_Oone__class_Oone(T_a) = c_Groups_Osgn__class_Osgn(T_a,V_aa_2)
      <=> c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_aa_2) ) ) ).

fof(fact_neg__less__iff__less,axiom,
    ! [V_aa_2,V_b_2,T_a] :
      ( class_Groups_Oordered__ab__group__add(T_a)
     => ( c_Orderings_Oord__class_Oless(T_a,V_aa_2,V_b_2)
      <=> c_Orderings_Oord__class_Oless(T_a,c_Groups_Ouminus__class_Ouminus(T_a,V_b_2),c_Groups_Ouminus__class_Ouminus(T_a,V_aa_2)) ) ) ).

fof(fact_xt1_I2_J,axiom,
    ! [V_c,V_a,V_b,T_a] :
      ( class_Orderings_Oorder(T_a)
     => ( ( c_Orderings_Oord__class_Oless(T_a,V_c,V_a)
         <= V_c = V_b )
       <= c_Orderings_Oord__class_Oless(T_a,V_b,V_a) ) ) ).

fof(fact_odd__less__0,axiom,
    ! [V_z_2] :
      ( c_Orderings_Oord__class_Oless(tc_Int_Oint,V_z_2,c_Groups_Ozero__class_Ozero(tc_Int_Oint))
    <=> c_Orderings_Oord__class_Oless(tc_Int_Oint,c_Groups_Oplus__class_Oplus(tc_Int_Oint,c_Groups_Oplus__class_Oplus(tc_Int_Oint,c_Groups_Oone__class_Oone(tc_Int_Oint),V_z_2),V_z_2),c_Groups_Ozero__class_Ozero(tc_Int_Oint)) ) ).

fof(arity_Int__Oint__Rings_Olinordered__ring,axiom,
    class_Rings_Olinordered__ring(tc_Int_Oint) ).

fof(fact_mult__right_Odiff,axiom,
    ! [V_y,V_x,V_xa,T_a] :
      ( c_Groups_Ominus__class_Ominus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_xa),V_x),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_xa),V_y)) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_xa),c_Groups_Ominus__class_Ominus(T_a,V_x,V_y))
     <= class_RealVector_Oreal__normed__algebra(T_a) ) ).

fof(fact_gr__implies__not0,axiom,
    ! [V_n,V_m] :
      ( V_n != c_Groups_Ozero__class_Ozero(tc_Nat_Onat)
     <= c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_m,V_n) ) ).

fof(fact_ab__semigroup__add__class_Oadd__ac_I1_J,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( c_Groups_Oplus__class_Oplus(T_a,V_a,c_Groups_Oplus__class_Oplus(T_a,V_b,V_c)) = c_Groups_Oplus__class_Oplus(T_a,c_Groups_Oplus__class_Oplus(T_a,V_a,V_b),V_c)
     <= class_Groups_Oab__semigroup__add(T_a) ) ).

fof(fact_ab__diff__minus,axiom,
    ! [V_b,V_a,T_a] :
      ( c_Groups_Oplus__class_Oplus(T_a,V_a,c_Groups_Ouminus__class_Ouminus(T_a,V_b)) = c_Groups_Ominus__class_Ominus(T_a,V_a,V_b)
     <= class_Groups_Oab__group__add(T_a) ) ).

fof(fact_minus__add__distrib,axiom,
    ! [V_b,V_a,T_a] :
      ( class_Groups_Oab__group__add(T_a)
     => c_Groups_Oplus__class_Oplus(T_a,c_Groups_Ouminus__class_Ouminus(T_a,V_a),c_Groups_Ouminus__class_Ouminus(T_a,V_b)) = c_Groups_Ouminus__class_Ouminus(T_a,c_Groups_Oplus__class_Oplus(T_a,V_a,V_b)) ) ).

fof(fact_add__less__le__mono,axiom,
    ! [V_d,V_c,V_b,V_a,T_a] :
      ( ( c_Orderings_Oord__class_Oless(T_a,V_a,V_b)
       => ( c_Orderings_Oord__class_Oless__eq(T_a,V_c,V_d)
         => c_Orderings_Oord__class_Oless(T_a,c_Groups_Oplus__class_Oplus(T_a,V_a,V_c),c_Groups_Oplus__class_Oplus(T_a,V_b,V_d)) ) )
     <= class_Groups_Oordered__cancel__ab__semigroup__add(T_a) ) ).

fof(fact_natfloor__power,axiom,
    ! [V_n,V_x] :
      ( c_RealDef_Oreal(tc_Nat_Onat,c_RComplete_Onatfloor(V_x)) = V_x
     => c_RComplete_Onatfloor(hAPP(hAPP(c_Power_Opower__class_Opower(tc_RealDef_Oreal),V_x),V_n)) = hAPP(hAPP(c_Power_Opower__class_Opower(tc_Nat_Onat),c_RComplete_Onatfloor(V_x)),V_n) ) ).

fof(fact_times_Oidem,axiom,
    ! [V_a,T_a] :
      ( hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_a) = V_a
     <= class_Lattices_Oab__semigroup__idem__mult(T_a) ) ).

fof(arity_RealDef__Oreal__Rings_Olinordered__ring,axiom,
    class_Rings_Olinordered__ring(tc_RealDef_Oreal) ).

fof(fact_of__real_Ozero,axiom,
    ! [T_a] :
      ( c_RealVector_Oof__real(T_a,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)) = c_Groups_Ozero__class_Ozero(T_a)
     <= ( class_RealVector_Oreal__algebra__1(T_a)
        & class_RealVector_Oreal__normed__vector(T_a) ) ) ).

fof(fact_nat__diff__add__eq2,axiom,
    ! [V_n,V_m,V_u,V_j,V_i] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_i,V_j)
     => c_Groups_Ominus__class_Ominus(tc_Nat_Onat,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_i),V_u),V_m),c_Groups_Oplus__class_Oplus(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_j),V_u),V_n)) = c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_m,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_j,V_i)),V_u),V_n)) ) ).

fof(fact_trans__le__add1,axiom,
    ! [V_m,V_j,V_i] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_i,V_j)
     => c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_i,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_j,V_m)) ) ).

fof(fact_comm__semiring__1__class_Onormalizing__semiring__rules_I7_J,axiom,
    ! [V_b,V_a,T_a] :
      ( hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b),V_a) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b)
     <= class_Rings_Ocomm__semiring__1(T_a) ) ).

fof(fact_le__imp__neg__le,axiom,
    ! [V_b,V_a,T_a] :
      ( class_Groups_Oordered__ab__group__add(T_a)
     => ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ouminus__class_Ouminus(T_a,V_b),c_Groups_Ouminus__class_Ouminus(T_a,V_a))
       <= c_Orderings_Oord__class_Oless__eq(T_a,V_a,V_b) ) ) ).

fof(arity_RealDef__Oreal__Groups_Olinordered__ab__group__add,axiom,
    class_Groups_Olinordered__ab__group__add(tc_RealDef_Oreal) ).

fof(fact_power_Opower_Opower__0,axiom,
    ! [V_aa_2,V_times_2,V_one_2,T_a] : hAPP(hAPP(c_Power_Opower_Opower(T_a,V_one_2,V_times_2),V_aa_2),c_Groups_Ozero__class_Ozero(tc_Nat_Onat)) = V_one_2 ).

fof(fact_crossproduct__noteq,axiom,
    ! [V_d_2,V_c_2,V_b_2,V_aa_2,T_a] :
      ( ( c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_aa_2),V_c_2),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b_2),V_d_2)) != c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_aa_2),V_d_2),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b_2),V_c_2))
      <=> ( V_d_2 != V_c_2
          & V_b_2 != V_aa_2 ) )
     <= class_Semiring__Normalization_Ocomm__semiring__1__cancel__crossproduct(T_a) ) ).

fof(fact_norm__diff__ineq,axiom,
    ! [V_b,V_a,T_a] :
      ( c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Ominus__class_Ominus(tc_RealDef_Oreal,c_RealVector_Onorm__class_Onorm(T_a,V_a),c_RealVector_Onorm__class_Onorm(T_a,V_b)),c_RealVector_Onorm__class_Onorm(T_a,c_Groups_Oplus__class_Oplus(T_a,V_a,V_b)))
     <= class_RealVector_Oreal__normed__vector(T_a) ) ).

fof(fact_decseq__def,axiom,
    ! [V_X_2,T_a] :
      ( ( c_SEQ_Odecseq(T_a,V_X_2)
      <=> ! [B_m,B_n] :
            ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,B_m,B_n)
           => c_Orderings_Oord__class_Oless__eq(T_a,hAPP(V_X_2,B_n),hAPP(V_X_2,B_m)) ) )
     <= class_Orderings_Oorder(T_a) ) ).

fof(arity_Int__Oint__Groups_Oordered__ab__semigroup__add,axiom,
    class_Groups_Oordered__ab__semigroup__add(tc_Int_Oint) ).

fof(fact_le__real__sqrt__sumsq,axiom,
    ! [V_y,V_x] : c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,V_x,c_NthRoot_Osqrt(c_Groups_Oplus__class_Oplus(tc_RealDef_Oreal,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),V_x),V_x),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),V_y),V_y)))) ).

fof(arity_RealDef__Oreal__Rings_Ocomm__ring__1,axiom,
    class_Rings_Ocomm__ring__1(tc_RealDef_Oreal) ).

fof(fact_ord__eq__less__trans,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( ( ( c_Orderings_Oord__class_Oless(T_a,V_b,V_c)
         => c_Orderings_Oord__class_Oless(T_a,V_a,V_c) )
       <= V_b = V_a )
     <= class_Orderings_Oord(T_a) ) ).

fof(fact_order__less__asym_H,axiom,
    ! [V_b,V_a,T_a] :
      ( ( ~ c_Orderings_Oord__class_Oless(T_a,V_b,V_a)
       <= c_Orderings_Oord__class_Oless(T_a,V_a,V_b) )
     <= class_Orderings_Opreorder(T_a) ) ).

fof(fact_neg__le__iff__le,axiom,
    ! [V_aa_2,V_b_2,T_a] :
      ( class_Groups_Oordered__ab__group__add(T_a)
     => ( c_Orderings_Oord__class_Oless__eq(T_a,V_aa_2,V_b_2)
      <=> c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ouminus__class_Ouminus(T_a,V_b_2),c_Groups_Ouminus__class_Ouminus(T_a,V_aa_2)) ) ) ).

fof(fact_add__0__left,axiom,
    ! [V_a,T_a] :
      ( class_Groups_Omonoid__add(T_a)
     => V_a = c_Groups_Oplus__class_Oplus(T_a,c_Groups_Ozero__class_Ozero(T_a),V_a) ) ).

fof(arity_Complex__Ocomplex__Rings_Oring__1__no__zero__divisors,axiom,
    class_Rings_Oring__1__no__zero__divisors(tc_Complex_Ocomplex) ).

fof(arity_Int__Oint__Rings_Oring__no__zero__divisors,axiom,
    class_Rings_Oring__no__zero__divisors(tc_Int_Oint) ).

fof(fact_norm__mult__ineq,axiom,
    ! [V_y,V_x,T_a] :
      ( class_RealVector_Oreal__normed__algebra(T_a)
     => c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_RealVector_Onorm__class_Onorm(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_x),V_y)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),c_RealVector_Onorm__class_Onorm(T_a,V_x)),c_RealVector_Onorm__class_Onorm(T_a,V_y))) ) ).

fof(arity_Int__Oint__Rings_Olinordered__semidom,axiom,
    class_Rings_Olinordered__semidom(tc_Int_Oint) ).

fof(arity_RealDef__Oreal__Orderings_Olinorder,axiom,
    class_Orderings_Olinorder(tc_RealDef_Oreal) ).

fof(fact_exp__inj__iff,axiom,
    ! [V_y_2,V_x_2] :
      ( c_Transcendental_Oexp(tc_RealDef_Oreal,V_y_2) = c_Transcendental_Oexp(tc_RealDef_Oreal,V_x_2)
    <=> V_x_2 = V_y_2 ) ).

fof(fact_power__eq__if,axiom,
    ! [V_p,V_m] :
      ( ( c_Groups_Ozero__class_Ozero(tc_Nat_Onat) != V_m
       => hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_p),hAPP(hAPP(c_Power_Opower__class_Opower(tc_Nat_Onat),V_p),c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_m,c_Groups_Oone__class_Oone(tc_Nat_Onat)))) = hAPP(hAPP(c_Power_Opower__class_Opower(tc_Nat_Onat),V_p),V_m) )
      & ( hAPP(hAPP(c_Power_Opower__class_Opower(tc_Nat_Onat),V_p),V_m) = c_Groups_Oone__class_Oone(tc_Nat_Onat)
       <= V_m = c_Groups_Ozero__class_Ozero(tc_Nat_Onat) ) ) ).

fof(fact_complex__of__real__mult__Complex,axiom,
    ! [V_y,V_x,V_r] : hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Complex_Ocomplex),c_RealVector_Oof__real(tc_Complex_Ocomplex,V_r)),c_Complex_Ocomplex_OComplex(V_x,V_y)) = c_Complex_Ocomplex_OComplex(hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),V_r),V_x),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),V_r),V_y)) ).

fof(fact_mult_Obounded,axiom,
    ! [T_a] :
      ( ? [B_K] :
        ! [B_a,B_b] : c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_RealVector_Onorm__class_Onorm(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),B_a),B_b)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),c_RealVector_Onorm__class_Onorm(T_a,B_a)),c_RealVector_Onorm__class_Onorm(T_a,B_b))),B_K))
     <= class_RealVector_Oreal__normed__algebra(T_a) ) ).

fof(arity_Complex__Ocomplex__RealVector_Oreal__normed__div__algebra,axiom,
    class_RealVector_Oreal__normed__div__algebra(tc_Complex_Ocomplex) ).

fof(fact_eq__iff__diff__eq__0,axiom,
    ! [V_b_2,V_aa_2,T_a] :
      ( class_Groups_Oab__group__add(T_a)
     => ( c_Groups_Ominus__class_Ominus(T_a,V_aa_2,V_b_2) = c_Groups_Ozero__class_Ozero(T_a)
      <=> V_b_2 = V_aa_2 ) ) ).

fof(fact_abs__minus__cancel,axiom,
    ! [V_a,T_a] :
      ( c_Groups_Oabs__class_Oabs(T_a,V_a) = c_Groups_Oabs__class_Oabs(T_a,c_Groups_Ouminus__class_Ouminus(T_a,V_a))
     <= class_Groups_Oordered__ab__group__add__abs(T_a) ) ).

fof(fact_mult_Odiff__left,axiom,
    ! [V_b,V_a_H,V_a,T_a] :
      ( class_RealVector_Oreal__normed__algebra(T_a)
     => hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Groups_Ominus__class_Ominus(T_a,V_a,V_a_H)),V_b) = c_Groups_Ominus__class_Ominus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a_H),V_b)) ) ).

fof(fact_comm__semiring__1__class_Onormalizing__semiring__rules_I26_J,axiom,
    ! [V_q,V_p,V_x,T_a] :
      ( hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_x),c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_p,V_q)) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_x),V_p)),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_x),V_q))
     <= class_Rings_Ocomm__semiring__1(T_a) ) ).

fof(fact_trans__less__add2,axiom,
    ! [V_m,V_j,V_i] :
      ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_i,V_j)
     => c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_i,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_m,V_j)) ) ).

fof(fact_mult__pos__pos,axiom,
    ! [V_b,V_a,T_a] :
      ( ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_a)
       => ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_b)
         => c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b)) ) )
     <= class_Rings_Olinordered__semiring__strict(T_a) ) ).

fof(fact_of__real__eq__iff,axiom,
    ! [V_y_2,V_x_2,T_a] :
      ( class_RealVector_Oreal__algebra__1(T_a)
     => ( c_RealVector_Oof__real(T_a,V_x_2) = c_RealVector_Oof__real(T_a,V_y_2)
      <=> V_x_2 = V_y_2 ) ) ).

fof(fact_diff__add__0,axiom,
    ! [V_m,V_n] : c_Groups_Ozero__class_Ozero(tc_Nat_Onat) = c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_n,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_n,V_m)) ).

fof(fact_diff__int__def__symmetric,axiom,
    ! [V_w,V_z] : c_Groups_Oplus__class_Oplus(tc_Int_Oint,V_z,c_Groups_Ouminus__class_Ouminus(tc_Int_Oint,V_w)) = c_Groups_Ominus__class_Ominus(tc_Int_Oint,V_z,V_w) ).

fof(fact_add__increasing,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( class_Groups_Oordered__comm__monoid__add(T_a)
     => ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_b,V_c)
         => c_Orderings_Oord__class_Oless__eq(T_a,V_b,c_Groups_Oplus__class_Oplus(T_a,V_a,V_c)) )
       <= c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_a) ) ) ).

fof(fact_real__norm__def,axiom,
    ! [V_r] : c_RealVector_Onorm__class_Onorm(tc_RealDef_Oreal,V_r) = c_Groups_Oabs__class_Oabs(tc_RealDef_Oreal,V_r) ).

fof(fact_mult__right__le__one__le,axiom,
    ! [V_y,V_x,T_a] :
      ( ( ( ( c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_x),V_y),V_x)
           <= c_Orderings_Oord__class_Oless__eq(T_a,V_y,c_Groups_Oone__class_Oone(T_a)) )
         <= c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_y) )
       <= c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_x) )
     <= class_Rings_Olinordered__idom(T_a) ) ).

fof(fact_power__mono,axiom,
    ! [V_n,V_b,V_a,T_a] :
      ( class_Rings_Olinordered__semidom(T_a)
     => ( ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_a)
         => c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_n),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_b),V_n)) )
       <= c_Orderings_Oord__class_Oless__eq(T_a,V_a,V_b) ) ) ).

fof(fact_nat0__intermed__int__val,axiom,
    ! [V_k_2,V_f_2,V_n_2] :
      ( ( ( ? [B_i] :
              ( V_k_2 = hAPP(V_f_2,B_i)
              & c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,B_i,V_n_2) )
         <= c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,V_k_2,hAPP(V_f_2,V_n_2)) )
       <= c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,hAPP(V_f_2,c_Groups_Ozero__class_Ozero(tc_Nat_Onat)),V_k_2) )
     <= ! [B_i] :
          ( c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Oabs__class_Oabs(tc_Int_Oint,c_Groups_Ominus__class_Ominus(tc_Int_Oint,hAPP(V_f_2,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,B_i,c_Groups_Oone__class_Oone(tc_Nat_Onat))),hAPP(V_f_2,B_i))),c_Groups_Oone__class_Oone(tc_Int_Oint))
         <= c_Orderings_Oord__class_Oless(tc_Nat_Onat,B_i,V_n_2) ) ) ).

fof(arity_RealDef__Oreal__Groups_Ocancel__ab__semigroup__add,axiom,
    class_Groups_Ocancel__ab__semigroup__add(tc_RealDef_Oreal) ).

fof(fact_add__is__0,axiom,
    ! [V_n_2,V_m_2] :
      ( ( V_n_2 = c_Groups_Ozero__class_Ozero(tc_Nat_Onat)
        & c_Groups_Ozero__class_Ozero(tc_Nat_Onat) = V_m_2 )
    <=> c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_m_2,V_n_2) = c_Groups_Ozero__class_Ozero(tc_Nat_Onat) ) ).

fof(fact_add__pos__nonneg,axiom,
    ! [V_b,V_a,T_a] :
      ( class_Groups_Oordered__comm__monoid__add(T_a)
     => ( ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_b)
         => c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),c_Groups_Oplus__class_Oplus(T_a,V_a,V_b)) )
       <= c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_a) ) ) ).

fof(fact_order__less__asym,axiom,
    ! [V_y,V_x,T_a] :
      ( class_Orderings_Opreorder(T_a)
     => ( c_Orderings_Oord__class_Oless(T_a,V_x,V_y)
       => ~ c_Orderings_Oord__class_Oless(T_a,V_y,V_x) ) ) ).

fof(fact_Nat__Transfer_Otransfer__nat__int__function__closures_I3_J,axiom,
    ! [V_y,V_x] :
      ( ( c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),c_Nat__Transfer_Otsub(V_x,V_y))
       <= c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_y) )
     <= c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_x) ) ).

fof(arity_Int__Oint__Rings_Oordered__comm__semiring,axiom,
    class_Rings_Oordered__comm__semiring(tc_Int_Oint) ).

fof(fact_norm__eq__zero,axiom,
    ! [V_x_2,T_a] :
      ( class_RealVector_Oreal__normed__vector(T_a)
     => ( c_Groups_Ozero__class_Ozero(T_a) = V_x_2
      <=> c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal) = c_RealVector_Onorm__class_Onorm(T_a,V_x_2) ) ) ).

fof(arity_Int__Oint__Orderings_Opreorder,axiom,
    class_Orderings_Opreorder(tc_Int_Oint) ).

fof(fact_comm__semiring__1__class_Onormalizing__semiring__rules_I15_J,axiom,
    ! [V_ry,V_rx,V_ly,V_lx,T_a] :
      ( class_Rings_Ocomm__semiring__1(T_a)
     => hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_rx),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_lx),V_ly)),V_ry)) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_lx),V_ly)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_rx),V_ry)) ) ).

fof(fact_of__real_Ononneg__bounded,axiom,
    ! [T_a] :
      ( ? [B_K] :
          ( c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),B_K)
          & ! [B_x] : c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_RealVector_Onorm__class_Onorm(T_a,c_RealVector_Oof__real(T_a,B_x)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),c_RealVector_Onorm__class_Onorm(tc_RealDef_Oreal,B_x)),B_K)) )
     <= ( class_RealVector_Oreal__normed__vector(T_a)
        & class_RealVector_Oreal__algebra__1(T_a) ) ) ).

fof(arity_Int__Oint__Groups_Ominus,axiom,
    class_Groups_Ominus(tc_Int_Oint) ).

fof(arity_Nat__Onat__Rings_Omult__zero,axiom,
    class_Rings_Omult__zero(tc_Nat_Onat) ).

fof(fact_not__real__square__gt__zero,axiom,
    ! [V_x_2] :
      ( ~ c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),V_x_2),V_x_2))
    <=> V_x_2 = c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal) ) ).

fof(fact_le__cube,axiom,
    ! [V_m] : c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_m),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_m),V_m))) ).

fof(fact_less__le__not__le,axiom,
    ! [V_y_2,V_x_2,T_a] :
      ( class_Orderings_Opreorder(T_a)
     => ( ( ~ c_Orderings_Oord__class_Oless__eq(T_a,V_y_2,V_x_2)
          & c_Orderings_Oord__class_Oless__eq(T_a,V_x_2,V_y_2) )
      <=> c_Orderings_Oord__class_Oless(T_a,V_x_2,V_y_2) ) ) ).

fof(fact_complex__mod__minus__le__complex__mod,axiom,
    ! [V_x] : c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Ouminus__class_Ouminus(tc_RealDef_Oreal,c_RealVector_Onorm__class_Onorm(tc_Complex_Ocomplex,V_x)),c_RealVector_Onorm__class_Onorm(tc_Complex_Ocomplex,V_x)) ).

fof(fact_diff__eq__diff__less,axiom,
    ! [V_d_2,V_c_2,V_b_2,V_aa_2,T_a] :
      ( ( ( c_Orderings_Oord__class_Oless(T_a,V_aa_2,V_b_2)
        <=> c_Orderings_Oord__class_Oless(T_a,V_c_2,V_d_2) )
       <= c_Groups_Ominus__class_Ominus(T_a,V_aa_2,V_b_2) = c_Groups_Ominus__class_Ominus(T_a,V_c_2,V_d_2) )
     <= class_Groups_Oordered__ab__group__add(T_a) ) ).

fof(fact_real__of__nat__le__iff,axiom,
    ! [V_m_2,V_n_2] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_n_2,V_m_2)
    <=> c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_RealDef_Oreal(tc_Nat_Onat,V_n_2),c_RealDef_Oreal(tc_Nat_Onat,V_m_2)) ) ).

fof(fact_diff__is__0__eq_H,axiom,
    ! [V_n,V_m] :
      ( c_Groups_Ozero__class_Ozero(tc_Nat_Onat) = c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_m,V_n)
     <= c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m,V_n) ) ).

fof(fact_real__sqrt__ge__1__iff,axiom,
    ! [V_y_2] :
      ( c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Oone__class_Oone(tc_RealDef_Oreal),V_y_2)
    <=> c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Oone__class_Oone(tc_RealDef_Oreal),c_NthRoot_Osqrt(V_y_2)) ) ).

fof(fact_comm__semiring__1__class_Onormalizing__semiring__rules_I32_J,axiom,
    ! [V_x,T_a] :
      ( class_Rings_Ocomm__semiring__1(T_a)
     => hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_x),c_Groups_Ozero__class_Ozero(tc_Nat_Onat)) = c_Groups_Oone__class_Oone(T_a) ) ).

fof(fact_sin__ge__zero,axiom,
    ! [V_x] :
      ( c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),V_x)
     => ( c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,V_x,c_Transcendental_Opi)
       => c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),c_Transcendental_Osin(V_x)) ) ) ).

fof(fact_abs__zmult__eq__1,axiom,
    ! [V_n,V_m] :
      ( c_Groups_Oone__class_Oone(tc_Int_Oint) = c_Groups_Oabs__class_Oabs(tc_Int_Oint,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_m),V_n))
     => c_Groups_Oabs__class_Oabs(tc_Int_Oint,V_m) = c_Groups_Oone__class_Oone(tc_Int_Oint) ) ).

fof(fact_add__strict__left__mono,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( ( c_Orderings_Oord__class_Oless(T_a,V_a,V_b)
       => c_Orderings_Oord__class_Oless(T_a,c_Groups_Oplus__class_Oplus(T_a,V_c,V_a),c_Groups_Oplus__class_Oplus(T_a,V_c,V_b)) )
     <= class_Groups_Oordered__cancel__ab__semigroup__add(T_a) ) ).

fof(fact_real__diff__def,axiom,
    ! [V_s,V_r] : c_Groups_Oplus__class_Oplus(tc_RealDef_Oreal,V_r,c_Groups_Ouminus__class_Ouminus(tc_RealDef_Oreal,V_s)) = c_Groups_Ominus__class_Ominus(tc_RealDef_Oreal,V_r,V_s) ).

fof(fact_order__less__imp__le,axiom,
    ! [V_y,V_x,T_a] :
      ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_x,V_y)
       <= c_Orderings_Oord__class_Oless(T_a,V_x,V_y) )
     <= class_Orderings_Opreorder(T_a) ) ).

fof(conj_0,conjecture,
    c_Complex_Orcis(c_Groups_Ouminus__class_Ouminus(tc_RealDef_Oreal,c_Groups_Oabs__class_Oabs(tc_RealDef_Oreal,v_r)),v_a) = c_Complex_Orcis(hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),c_NthRoot_Osqrt(c_Groups_Oabs__class_Oabs(tc_RealDef_Oreal,v_r))),c_NthRoot_Osqrt(c_Groups_Oabs__class_Oabs(tc_RealDef_Oreal,v_r))),c_Groups_Oplus__class_Oplus(tc_RealDef_Oreal,c_Transcendental_Opi,v_a)) ).

fof(arity_Complex__Ocomplex__Groups_Omonoid__mult,axiom,
    class_Groups_Omonoid__mult(tc_Complex_Ocomplex) ).

fof(fact_order__less__not__sym,axiom,
    ! [V_y,V_x,T_a] :
      ( ( c_Orderings_Oord__class_Oless(T_a,V_x,V_y)
       => ~ c_Orderings_Oord__class_Oless(T_a,V_y,V_x) )
     <= class_Orderings_Opreorder(T_a) ) ).

fof(fact_real__sqrt__less__iff,axiom,
    ! [V_y_2,V_x_2] :
      ( c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,V_x_2,V_y_2)
    <=> c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_NthRoot_Osqrt(V_x_2),c_NthRoot_Osqrt(V_y_2)) ) ).

fof(arity_RealDef__Oreal__RealVector_Oreal__normed__div__algebra,axiom,
    class_RealVector_Oreal__normed__div__algebra(tc_RealDef_Oreal) ).

fof(fact_metric__bound__lemma,axiom,
    ! [V_y,V_x] : c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_RealVector_Onorm__class_Onorm(tc_Complex_Ocomplex,c_Groups_Ominus__class_Ominus(tc_Complex_Ocomplex,V_x,V_y)),c_Groups_Oplus__class_Oplus(tc_RealDef_Oreal,c_Groups_Oabs__class_Oabs(tc_RealDef_Oreal,c_Groups_Ominus__class_Ominus(tc_RealDef_Oreal,c_Complex_ORe(V_x),c_Complex_ORe(V_y))),c_Groups_Oabs__class_Oabs(tc_RealDef_Oreal,c_Groups_Ominus__class_Ominus(tc_RealDef_Oreal,c_Complex_OIm(V_x),c_Complex_OIm(V_y))))) ).

fof(fact_mult__less__mono2,axiom,
    ! [V_k,V_j,V_i] :
      ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_i,V_j)
     => ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_k)
       => c_Orderings_Oord__class_Oless(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_k),V_i),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_k),V_j)) ) ) ).

fof(fact_Re__cis,axiom,
    ! [V_a] : c_Transcendental_Ocos(V_a) = c_Complex_ORe(c_Complex_Ocis(V_a)) ).

fof(fact_less__imp__le__nat,axiom,
    ! [V_n,V_m] :
      ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_m,V_n)
     => c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m,V_n) ) ).

fof(fact_nat__diff__add__eq1,axiom,
    ! [V_n,V_m,V_u,V_i,V_j] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_j,V_i)
     => c_Groups_Ominus__class_Ominus(tc_Nat_Onat,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_i,V_j)),V_u),V_m),V_n) = c_Groups_Ominus__class_Ominus(tc_Nat_Onat,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_i),V_u),V_m),c_Groups_Oplus__class_Oplus(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_j),V_u),V_n)) ) ).

fof(arity_RealDef__Oreal__Rings_Oordered__ring__abs,axiom,
    class_Rings_Oordered__ring__abs(tc_RealDef_Oreal) ).

fof(fact_mult__pos__neg,axiom,
    ! [V_b,V_a,T_a] :
      ( ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_a)
       => ( c_Orderings_Oord__class_Oless(T_a,V_b,c_Groups_Ozero__class_Ozero(T_a))
         => c_Orderings_Oord__class_Oless(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b),c_Groups_Ozero__class_Ozero(T_a)) ) )
     <= class_Rings_Olinordered__semiring__strict(T_a) ) ).

fof(fact_square__eq__iff,axiom,
    ! [V_b_2,V_aa_2,T_a] :
      ( class_Rings_Oidom(T_a)
     => ( hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_aa_2),V_aa_2) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b_2),V_b_2)
      <=> ( V_aa_2 = c_Groups_Ouminus__class_Ouminus(T_a,V_b_2)
          | V_b_2 = V_aa_2 ) ) ) ).

fof(fact_real__mult__assoc,axiom,
    ! [V_z3,V_z2,V_z1] : hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),V_z1),V_z2)),V_z3) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),V_z1),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),V_z2),V_z3)) ).

fof(fact_nat__mult__assoc,axiom,
    ! [V_k,V_n,V_m] : hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_m),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_n),V_k)) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_m),V_n)),V_k) ).

fof(fact_less__minus__self__iff,axiom,
    ! [V_aa_2,T_a] :
      ( class_Rings_Olinordered__idom(T_a)
     => ( c_Orderings_Oord__class_Oless(T_a,V_aa_2,c_Groups_Ouminus__class_Ouminus(T_a,V_aa_2))
      <=> c_Orderings_Oord__class_Oless(T_a,V_aa_2,c_Groups_Ozero__class_Ozero(T_a)) ) ) ).

fof(fact_sin__pi,axiom,
    c_Transcendental_Osin(c_Transcendental_Opi) = c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal) ).

fof(arity_Complex__Ocomplex__Rings_Ono__zero__divisors,axiom,
    class_Rings_Ono__zero__divisors(tc_Complex_Ocomplex) ).

fof(fact_order__less__imp__not__eq2,axiom,
    ! [V_y,V_x,T_a] :
      ( class_Orderings_Oorder(T_a)
     => ( c_Orderings_Oord__class_Oless(T_a,V_x,V_y)
       => V_y != V_x ) ) ).

fof(fact_natceiling__mono,axiom,
    ! [V_y,V_x] :
      ( c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,V_x,V_y)
     => c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,c_RComplete_Onatceiling(V_x),c_RComplete_Onatceiling(V_y)) ) ).

fof(fact_mult__nonneg__nonpos,axiom,
    ! [V_b,V_a,T_a] :
      ( ( ( c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b),c_Groups_Ozero__class_Ozero(T_a))
         <= c_Orderings_Oord__class_Oless__eq(T_a,V_b,c_Groups_Ozero__class_Ozero(T_a)) )
       <= c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_a) )
     <= class_Rings_Oordered__cancel__semiring(T_a) ) ).

fof(fact_positive__mult,axiom,
    ! [V_y,V_x] :
      ( ( c_RealDef_Opositive(V_y)
       => c_RealDef_Opositive(hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),V_x),V_y)) )
     <= c_RealDef_Opositive(V_x) ) ).

fof(fact_abs__mult__pos,axiom,
    ! [V_y,V_x,T_a] :
      ( ( hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Groups_Oabs__class_Oabs(T_a,V_y)),V_x) = c_Groups_Oabs__class_Oabs(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_y),V_x))
       <= c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_x) )
     <= class_Rings_Olinordered__idom(T_a) ) ).

fof(fact_abs__minus__commute,axiom,
    ! [V_b,V_a,T_a] :
      ( c_Groups_Oabs__class_Oabs(T_a,c_Groups_Ominus__class_Ominus(T_a,V_a,V_b)) = c_Groups_Oabs__class_Oabs(T_a,c_Groups_Ominus__class_Ominus(T_a,V_b,V_a))
     <= class_Groups_Oordered__ab__group__add__abs(T_a) ) ).

fof(fact_nat__le__real__less,axiom,
    ! [V_m_2,V_n_2] :
      ( c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_RealDef_Oreal(tc_Nat_Onat,V_n_2),c_Groups_Oplus__class_Oplus(tc_RealDef_Oreal,c_RealDef_Oreal(tc_Nat_Onat,V_m_2),c_Groups_Oone__class_Oone(tc_RealDef_Oreal)))
    <=> c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_n_2,V_m_2) ) ).

fof(arity_Nat__Onat__Rings_Ozero__neq__one,axiom,
    class_Rings_Ozero__neq__one(tc_Nat_Onat) ).

fof(fact_incr__lemma,axiom,
    ! [V_x,V_z,V_d] :
      ( c_Orderings_Oord__class_Oless(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_d)
     => c_Orderings_Oord__class_Oless(tc_Int_Oint,V_z,c_Groups_Oplus__class_Oplus(tc_Int_Oint,V_x,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),c_Groups_Oplus__class_Oplus(tc_Int_Oint,c_Groups_Oabs__class_Oabs(tc_Int_Oint,c_Groups_Ominus__class_Ominus(tc_Int_Oint,V_x,V_z)),c_Groups_Oone__class_Oone(tc_Int_Oint))),V_d))) ) ).

fof(fact_complex_Orecs,axiom,
    ! [V_real2_2,V_real1_2,V_f1_2,T_a] : hAPP(hAPP(V_f1_2,V_real1_2),V_real2_2) = c_Complex_Ocomplex_Ocomplex__rec(T_a,V_f1_2,c_Complex_Ocomplex_OComplex(V_real1_2,V_real2_2)) ).

fof(arity_RealDef__Oreal__Rings_Oring,axiom,
    class_Rings_Oring(tc_RealDef_Oreal) ).

fof(fact_less__irrefl__nat,axiom,
    ! [V_n] : ~ c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_n,V_n) ).

fof(arity_Nat__Onat__Groups_Oordered__ab__semigroup__add__imp__le,axiom,
    class_Groups_Oordered__ab__semigroup__add__imp__le(tc_Nat_Onat) ).

fof(arity_RealDef__Oreal__Groups_Ogroup__add,axiom,
    class_Groups_Ogroup__add(tc_RealDef_Oreal) ).

fof(fact_nat__mult__le__cancel1,axiom,
    ! [V_n_2,V_m_2,V_k_2] :
      ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_k_2)
     => ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_k_2),V_m_2),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_k_2),V_n_2))
      <=> c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m_2,V_n_2) ) ) ).

fof(arity_RealDef__Oreal__Rings_Olinordered__semidom,axiom,
    class_Rings_Olinordered__semidom(tc_RealDef_Oreal) ).

fof(fact_diff__is__0__eq,axiom,
    ! [V_n_2,V_m_2] :
      ( c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_m_2,V_n_2) = c_Groups_Ozero__class_Ozero(tc_Nat_Onat)
    <=> c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m_2,V_n_2) ) ).

fof(fact_mult__le__mono1,axiom,
    ! [V_k,V_j,V_i] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_i),V_k),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_j),V_k))
     <= c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_i,V_j) ) ).

fof(arity_Int__Oint__Rings_Omult__zero,axiom,
    class_Rings_Omult__zero(tc_Int_Oint) ).

fof(fact_linorder__neq__iff,axiom,
    ! [V_y_2,V_x_2,T_a] :
      ( ( V_y_2 != V_x_2
      <=> ( c_Orderings_Oord__class_Oless(T_a,V_y_2,V_x_2)
          | c_Orderings_Oord__class_Oless(T_a,V_x_2,V_y_2) ) )
     <= class_Orderings_Olinorder(T_a) ) ).

fof(fact_real__sqrt__less__mono,axiom,
    ! [V_y,V_x] :
      ( c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_NthRoot_Osqrt(V_x),c_NthRoot_Osqrt(V_y))
     <= c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,V_x,V_y) ) ).

fof(fact_DeMoivre,axiom,
    ! [V_n,V_a] : c_Complex_Ocis(hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),c_RealDef_Oreal(tc_Nat_Onat,V_n)),V_a)) = hAPP(hAPP(c_Power_Opower__class_Opower(tc_Complex_Ocomplex),c_Complex_Ocis(V_a)),V_n) ).

fof(fact_one__neq__zero,axiom,
    ! [T_a] :
      ( c_Groups_Ozero__class_Ozero(T_a) != c_Groups_Oone__class_Oone(T_a)
     <= class_Rings_Ozero__neq__one(T_a) ) ).

fof(fact_not__exp__le__zero,axiom,
    ! [V_x] : ~ c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Transcendental_Oexp(tc_RealDef_Oreal,V_x),c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)) ).

fof(fact_add__strict__increasing,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( ( ( c_Orderings_Oord__class_Oless(T_a,V_b,c_Groups_Oplus__class_Oplus(T_a,V_a,V_c))
         <= c_Orderings_Oord__class_Oless__eq(T_a,V_b,V_c) )
       <= c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_a) )
     <= class_Groups_Oordered__comm__monoid__add(T_a) ) ).

fof(fact_real__sqrt__le__mono,axiom,
    ! [V_y,V_x] :
      ( c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_NthRoot_Osqrt(V_x),c_NthRoot_Osqrt(V_y))
     <= c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,V_x,V_y) ) ).

fof(fact_real__sqrt__gt__zero,axiom,
    ! [V_x] :
      ( c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),c_NthRoot_Osqrt(V_x))
     <= c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),V_x) ) ).

fof(fact_comm__semiring__1__class_Onormalizing__semiring__rules_I2_J,axiom,
    ! [V_m,V_a,T_a] :
      ( class_Rings_Ocomm__semiring__1(T_a)
     => c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_m),V_m) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Groups_Oplus__class_Oplus(T_a,V_a,c_Groups_Oone__class_Oone(T_a))),V_m) ) ).

fof(fact_power__less__power__Suc,axiom,
    ! [V_n,V_a,T_a] :
      ( ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Oone__class_Oone(T_a),V_a)
       => c_Orderings_Oord__class_Oless(T_a,hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_n),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_n))) )
     <= class_Rings_Olinordered__semidom(T_a) ) ).

fof(fact_minus__le__self__iff,axiom,
    ! [V_aa_2,T_a] :
      ( class_Groups_Olinordered__ab__group__add(T_a)
     => ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_aa_2)
      <=> c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ouminus__class_Ouminus(T_a,V_aa_2),V_aa_2) ) ) ).

fof(fact_unique__quotient__lemma__neg,axiom,
    ! [V_r,V_q,V_r_H,V_q_H,V_b] :
      ( ( ( c_Orderings_Oord__class_Oless(tc_Int_Oint,V_b,V_r)
         => ( c_Orderings_Oord__class_Oless(tc_Int_Oint,V_b,V_r_H)
           => c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,V_q,V_q_H) ) )
       <= c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,V_r,c_Groups_Ozero__class_Ozero(tc_Int_Oint)) )
     <= c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Oplus__class_Oplus(tc_Int_Oint,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_b),V_q_H),V_r_H),c_Groups_Oplus__class_Oplus(tc_Int_Oint,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_b),V_q),V_r)) ) ).

fof(arity_Complex__Ocomplex__RealVector_Oreal__normed__field,axiom,
    class_RealVector_Oreal__normed__field(tc_Complex_Ocomplex) ).

fof(fact_add__mult__distrib,axiom,
    ! [V_k,V_n,V_m] : c_Groups_Oplus__class_Oplus(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_m),V_k),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_n),V_k)) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_m,V_n)),V_k) ).

fof(fact_neg__0__less__iff__less,axiom,
    ! [V_aa_2,T_a] :
      ( ( c_Orderings_Oord__class_Oless(T_a,V_aa_2,c_Groups_Ozero__class_Ozero(T_a))
      <=> c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),c_Groups_Ouminus__class_Ouminus(T_a,V_aa_2)) )
     <= class_Groups_Oordered__ab__group__add(T_a) ) ).

fof(fact_nat__power__less__imp__less,axiom,
    ! [V_n,V_m,V_i] :
      ( ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_m,V_n)
       <= c_Orderings_Oord__class_Oless(tc_Nat_Onat,hAPP(hAPP(c_Power_Opower__class_Opower(tc_Nat_Onat),V_i),V_m),hAPP(hAPP(c_Power_Opower__class_Opower(tc_Nat_Onat),V_i),V_n)) )
     <= c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_i) ) ).

fof(fact_le__natfloor,axiom,
    ! [V_a,V_x] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_x,c_RComplete_Onatfloor(V_a))
     <= c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_RealDef_Oreal(tc_Nat_Onat,V_x),V_a) ) ).

fof(fact_abs__triangle__ineq2__sym,axiom,
    ! [V_b,V_a,T_a] :
      ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ominus__class_Ominus(T_a,c_Groups_Oabs__class_Oabs(T_a,V_a),c_Groups_Oabs__class_Oabs(T_a,V_b)),c_Groups_Oabs__class_Oabs(T_a,c_Groups_Ominus__class_Ominus(T_a,V_b,V_a)))
     <= class_Groups_Oordered__ab__group__add__abs(T_a) ) ).

fof(fact_power__0,axiom,
    ! [V_a,T_a] :
      ( class_Power_Opower(T_a)
     => hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),c_Groups_Ozero__class_Ozero(tc_Nat_Onat)) = c_Groups_Oone__class_Oone(T_a) ) ).

fof(fact_mult_Ozero__right,axiom,
    ! [V_a,T_a] :
      ( class_RealVector_Oreal__normed__algebra(T_a)
     => c_Groups_Ozero__class_Ozero(T_a) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),c_Groups_Ozero__class_Ozero(T_a)) ) ).

fof(fact_norm__diff__triangle__ineq,axiom,
    ! [V_d,V_c,V_b,V_a,T_a] :
      ( c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_RealVector_Onorm__class_Onorm(T_a,c_Groups_Ominus__class_Ominus(T_a,c_Groups_Oplus__class_Oplus(T_a,V_a,V_b),c_Groups_Oplus__class_Oplus(T_a,V_c,V_d))),c_Groups_Oplus__class_Oplus(tc_RealDef_Oreal,c_RealVector_Onorm__class_Onorm(T_a,c_Groups_Ominus__class_Ominus(T_a,V_a,V_c)),c_RealVector_Onorm__class_Onorm(T_a,c_Groups_Ominus__class_Ominus(T_a,V_b,V_d))))
     <= class_RealVector_Oreal__normed__vector(T_a) ) ).

fof(arity_Nat__Onat__Power_Opower,axiom,
    class_Power_Opower(tc_Nat_Onat) ).

fof(fact_real__of__nat__ge__zero,axiom,
    ! [V_n] : c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),c_RealDef_Oreal(tc_Nat_Onat,V_n)) ).

fof(fact_order__antisym,axiom,
    ! [V_y,V_x,T_a] :
      ( class_Orderings_Oorder(T_a)
     => ( c_Orderings_Oord__class_Oless__eq(T_a,V_x,V_y)
       => ( V_x = V_y
         <= c_Orderings_Oord__class_Oless__eq(T_a,V_y,V_x) ) ) ) ).

fof(fact_sgn__less,axiom,
    ! [V_aa_2,T_a] :
      ( class_Rings_Olinordered__idom(T_a)
     => ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Osgn__class_Osgn(T_a,V_aa_2),c_Groups_Ozero__class_Ozero(T_a))
      <=> c_Orderings_Oord__class_Oless(T_a,V_aa_2,c_Groups_Ozero__class_Ozero(T_a)) ) ) ).

fof(fact_real__sqrt__eq__1__iff,axiom,
    ! [V_x_2] :
      ( c_Groups_Oone__class_Oone(tc_RealDef_Oreal) = V_x_2
    <=> c_Groups_Oone__class_Oone(tc_RealDef_Oreal) = c_NthRoot_Osqrt(V_x_2) ) ).

fof(fact_zadd__left__mono,axiom,
    ! [V_k,V_j,V_i] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,V_i,V_j)
     => c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Oplus__class_Oplus(tc_Int_Oint,V_k,V_i),c_Groups_Oplus__class_Oplus(tc_Int_Oint,V_k,V_j)) ) ).

fof(arity_Int__Oint__Power_Opower,axiom,
    class_Power_Opower(tc_Int_Oint) ).

fof(fact_mult__strict__right__mono,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( ( c_Orderings_Oord__class_Oless(T_a,V_a,V_b)
       => ( c_Orderings_Oord__class_Oless(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_c),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b),V_c))
         <= c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_c) ) )
     <= class_Rings_Olinordered__semiring__strict(T_a) ) ).

fof(fact_sgn__mult,axiom,
    ! [V_y,V_x,T_a] :
      ( class_RealVector_Oreal__normed__div__algebra(T_a)
     => c_Groups_Osgn__class_Osgn(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_x),V_y)) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Groups_Osgn__class_Osgn(T_a,V_x)),c_Groups_Osgn__class_Osgn(T_a,V_y)) ) ).

fof(fact_abs__triangle__ineq4,axiom,
    ! [V_b,V_a,T_a] :
      ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Oabs__class_Oabs(T_a,c_Groups_Ominus__class_Ominus(T_a,V_a,V_b)),c_Groups_Oplus__class_Oplus(T_a,c_Groups_Oabs__class_Oabs(T_a,V_a),c_Groups_Oabs__class_Oabs(T_a,V_b)))
     <= class_Groups_Oordered__ab__group__add__abs(T_a) ) ).

fof(fact_cmod__complex__polar,axiom,
    ! [V_a,V_r] : c_RealVector_Onorm__class_Onorm(tc_Complex_Ocomplex,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Complex_Ocomplex),c_RealVector_Oof__real(tc_Complex_Ocomplex,V_r)),c_Complex_Ocomplex_OComplex(c_Transcendental_Ocos(V_a),c_Transcendental_Osin(V_a)))) = c_Groups_Oabs__class_Oabs(tc_RealDef_Oreal,V_r) ).

fof(arity_Nat__Onat__Rings_Oordered__cancel__semiring,axiom,
    class_Rings_Oordered__cancel__semiring(tc_Nat_Onat) ).

fof(fact_mult_Ononneg__bounded,axiom,
    ! [T_a] :
      ( ? [B_K] :
          ( ! [B_a,B_b] : c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_RealVector_Onorm__class_Onorm(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),B_a),B_b)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),c_RealVector_Onorm__class_Onorm(T_a,B_a)),c_RealVector_Onorm__class_Onorm(T_a,B_b))),B_K))
          & c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),B_K) )
     <= class_RealVector_Oreal__normed__algebra(T_a) ) ).

fof(fact_le__add__diff__inverse,axiom,
    ! [V_m,V_n] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_n,V_m)
     => c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_n,c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_m,V_n)) = V_m ) ).

fof(fact_real__squared__diff__one__factored,axiom,
    ! [V_x,T_a] :
      ( c_Groups_Ominus__class_Ominus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_x),V_x),c_Groups_Oone__class_Oone(T_a)) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Groups_Oplus__class_Oplus(T_a,V_x,c_Groups_Oone__class_Oone(T_a))),c_Groups_Ominus__class_Ominus(T_a,V_x,c_Groups_Oone__class_Oone(T_a)))
     <= class_Rings_Oring__1(T_a) ) ).

fof(fact_nat__mult__less__cancel1,axiom,
    ! [V_n_2,V_m_2,V_k_2] :
      ( ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_m_2,V_n_2)
      <=> c_Orderings_Oord__class_Oless(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_k_2),V_m_2),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_k_2),V_n_2)) )
     <= c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_k_2) ) ).

fof(fact_power__abs,axiom,
    ! [V_n,V_a,T_a] :
      ( class_Rings_Olinordered__idom(T_a)
     => hAPP(hAPP(c_Power_Opower__class_Opower(T_a),c_Groups_Oabs__class_Oabs(T_a,V_a)),V_n) = c_Groups_Oabs__class_Oabs(T_a,hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_n)) ) ).

fof(fact_zero__le__natceiling,axiom,
    ! [V_x] : c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),c_RComplete_Onatceiling(V_x)) ).

fof(fact_odd__nonzero,axiom,
    ! [V_z] : c_Groups_Oplus__class_Oplus(tc_Int_Oint,c_Groups_Oplus__class_Oplus(tc_Int_Oint,c_Groups_Oone__class_Oone(tc_Int_Oint),V_z),V_z) != c_Groups_Ozero__class_Ozero(tc_Int_Oint) ).

fof(arity_Int__Oint__Rings_Ocomm__semiring__1,axiom,
    class_Rings_Ocomm__semiring__1(tc_Int_Oint) ).

fof(fact_of__real_Ominus,axiom,
    ! [V_x,T_a] :
      ( c_RealVector_Oof__real(T_a,c_Groups_Ouminus__class_Ouminus(tc_RealDef_Oreal,V_x)) = c_Groups_Ouminus__class_Ouminus(T_a,c_RealVector_Oof__real(T_a,V_x))
     <= ( class_RealVector_Oreal__algebra__1(T_a)
        & class_RealVector_Oreal__normed__vector(T_a) ) ) ).

fof(fact_add__eq__self__zero,axiom,
    ! [V_n,V_m] :
      ( c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_m,V_n) = V_m
     => V_n = c_Groups_Ozero__class_Ozero(tc_Nat_Onat) ) ).

fof(fact_abs__exp__cancel,axiom,
    ! [V_x] : c_Groups_Oabs__class_Oabs(tc_RealDef_Oreal,c_Transcendental_Oexp(tc_RealDef_Oreal,V_x)) = c_Transcendental_Oexp(tc_RealDef_Oreal,V_x) ).

fof(fact_mult__left_Ozero,axiom,
    ! [V_y,T_a] :
      ( class_RealVector_Oreal__normed__algebra(T_a)
     => hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Groups_Ozero__class_Ozero(T_a)),V_y) = c_Groups_Ozero__class_Ozero(T_a) ) ).

fof(fact_comm__semiring__1__class_Onormalizing__semiring__rules_I11_J,axiom,
    ! [V_a,T_a] :
      ( class_Rings_Ocomm__semiring__1(T_a)
     => hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Groups_Oone__class_Oone(T_a)),V_a) = V_a ) ).

fof(fact_le__0__eq,axiom,
    ! [V_n_2] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_n_2,c_Groups_Ozero__class_Ozero(tc_Nat_Onat))
    <=> c_Groups_Ozero__class_Ozero(tc_Nat_Onat) = V_n_2 ) ).

fof(fact_nat__less__real__le,axiom,
    ! [V_m_2,V_n_2] :
      ( c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Oplus__class_Oplus(tc_RealDef_Oreal,c_RealDef_Oreal(tc_Nat_Onat,V_n_2),c_Groups_Oone__class_Oone(tc_RealDef_Oreal)),c_RealDef_Oreal(tc_Nat_Onat,V_m_2))
    <=> c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_n_2,V_m_2) ) ).

fof(arity_Int__Oint__Rings_Oidom,axiom,
    class_Rings_Oidom(tc_Int_Oint) ).

fof(fact_less__minus__iff,axiom,
    ! [V_b_2,V_aa_2,T_a] :
      ( ( c_Orderings_Oord__class_Oless(T_a,V_b_2,c_Groups_Ouminus__class_Ouminus(T_a,V_aa_2))
      <=> c_Orderings_Oord__class_Oless(T_a,V_aa_2,c_Groups_Ouminus__class_Ouminus(T_a,V_b_2)) )
     <= class_Groups_Oordered__ab__group__add(T_a) ) ).

fof(fact_pi__gt__zero,axiom,
    c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),c_Transcendental_Opi) ).

fof(fact_abs__sin__le__one,axiom,
    ! [V_x] : c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Oabs__class_Oabs(tc_RealDef_Oreal,c_Transcendental_Osin(V_x)),c_Groups_Oone__class_Oone(tc_RealDef_Oreal)) ).

fof(arity_RealDef__Oreal__Rings_Olinordered__idom,axiom,
    class_Rings_Olinordered__idom(tc_RealDef_Oreal) ).

fof(fact_abs__ge__minus__self,axiom,
    ! [V_a,T_a] :
      ( class_Groups_Oordered__ab__group__add__abs(T_a)
     => c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ouminus__class_Ouminus(T_a,V_a),c_Groups_Oabs__class_Oabs(T_a,V_a)) ) ).

