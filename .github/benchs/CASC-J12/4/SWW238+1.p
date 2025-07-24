fof(arity_Polynomial__Opoly__Groups_Oordered__ab__group__add,axiom,
    ! [T_1] :
      ( class_Groups_Oordered__ab__group__add(tc_Polynomial_Opoly(T_1))
     <= class_Rings_Olinordered__idom(T_1) ) ).

fof(fact_power__increasing__iff,axiom,
    ! [V_y_2,V_x_2,V_b_2,T_a] :
      ( ( ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_x_2,V_y_2)
        <=> c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_b_2),V_x_2),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_b_2),V_y_2)) )
       <= c_Orderings_Oord__class_Oless(T_a,c_Groups_Oone__class_Oone(T_a),V_b_2) )
     <= class_Rings_Olinordered__semidom(T_a) ) ).

fof(fact_mod__pos__pos__trivial,axiom,
    ! [V_b,V_a] :
      ( ( c_Orderings_Oord__class_Oless(tc_Int_Oint,V_a,V_b)
       => c_Divides_Odiv__class_Omod(tc_Int_Oint,V_a,V_b) = V_a )
     <= c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_a) ) ).

fof(fact_le__mult__natfloor,axiom,
    ! [V_b,V_a] :
      ( c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),V_a)
     => ( c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),V_b)
       => c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),c_RComplete_Onatfloor(V_a)),c_RComplete_Onatfloor(V_b)),c_RComplete_Onatfloor(hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),V_a),V_b))) ) ) ).

fof(fact_comm__semiring__1__class_Onormalizing__semiring__rules_I31_J,axiom,
    ! [V_q,V_p,V_x,T_a] :
      ( hAPP(hAPP(c_Power_Opower__class_Opower(T_a),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_x),V_p)),V_q) = hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_x),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_p),V_q))
     <= class_Rings_Ocomm__semiring__1(T_a) ) ).

fof(arity_RealDef__Oreal__Power_Opower,axiom,
    class_Power_Opower(tc_RealDef_Oreal) ).

fof(arity_Polynomial__Opoly__Rings_Omult__zero,axiom,
    ! [T_1] :
      ( class_Rings_Omult__zero(tc_Polynomial_Opoly(T_1))
     <= class_Rings_Ocomm__semiring__0(T_1) ) ).

fof(fact_le__imp__0__less,axiom,
    ! [V_z] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_z)
     => c_Orderings_Oord__class_Oless(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),c_Groups_Oplus__class_Oplus(tc_Int_Oint,c_Groups_Oone__class_Oone(tc_Int_Oint),V_z)) ) ).

fof(fact_nat__mult__le__cancel1,axiom,
    ! [V_n_2,V_m_2,V_k_2] :
      ( ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_k_2),V_m_2),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_k_2),V_n_2))
      <=> c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m_2,V_n_2) )
     <= c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_k_2) ) ).

fof(fact_neg__mod__conj,axiom,
    ! [V_a,V_b] :
      ( ( c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Divides_Odiv__class_Omod(tc_Int_Oint,V_a,V_b),c_Groups_Ozero__class_Ozero(tc_Int_Oint))
        & c_Orderings_Oord__class_Oless(tc_Int_Oint,V_b,c_Divides_Odiv__class_Omod(tc_Int_Oint,V_a,V_b)) )
     <= c_Orderings_Oord__class_Oless(tc_Int_Oint,V_b,c_Groups_Ozero__class_Ozero(tc_Int_Oint)) ) ).

fof(fact_comm__mult__strict__left__mono,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( class_Rings_Olinordered__comm__semiring__strict(T_a)
     => ( c_Orderings_Oord__class_Oless(T_a,V_a,V_b)
       => ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_c)
         => c_Orderings_Oord__class_Oless(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_c),V_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_c),V_b)) ) ) ) ).

fof(fact_mult__right_Ozero,axiom,
    ! [V_x,T_a] :
      ( class_RealVector_Oreal__normed__algebra(T_a)
     => hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_x),c_Groups_Ozero__class_Ozero(T_a)) = c_Groups_Ozero__class_Ozero(T_a) ) ).

fof(fact_norm__power,axiom,
    ! [V_n,V_x,T_a] :
      ( c_RealVector_Onorm__class_Onorm(T_a,hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_x),V_n)) = hAPP(hAPP(c_Power_Opower__class_Opower(tc_RealDef_Oreal),c_RealVector_Onorm__class_Onorm(T_a,V_x)),V_n)
     <= class_RealVector_Oreal__normed__div__algebra(T_a) ) ).

fof(arity_Complex__Ocomplex__Groups_Oone,axiom,
    class_Groups_Oone(tc_Complex_Ocomplex) ).

fof(fact_real__root__gt__1__iff,axiom,
    ! [V_y_2,V_n_2] :
      ( ( c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_Groups_Oone__class_Oone(tc_RealDef_Oreal),c_NthRoot_Oroot(V_n_2,V_y_2))
      <=> c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_Groups_Oone__class_Oone(tc_RealDef_Oreal),V_y_2) )
     <= c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_n_2) ) ).

fof(arity_RealDef__Oreal__Groups_Oordered__ab__group__add__abs,axiom,
    class_Groups_Oordered__ab__group__add__abs(tc_RealDef_Oreal) ).

fof(fact_abs__dvd__iff,axiom,
    ! [V_k_2,V_m_2,T_a] :
      ( class_Rings_Olinordered__idom(T_a)
     => ( c_Rings_Odvd__class_Odvd(T_a,c_Groups_Oabs__class_Oabs(T_a,V_m_2),V_k_2)
      <=> c_Rings_Odvd__class_Odvd(T_a,V_m_2,V_k_2) ) ) ).

fof(fact_zless__add1__eq,axiom,
    ! [V_za_2,V_w_2] :
      ( c_Orderings_Oord__class_Oless(tc_Int_Oint,V_w_2,c_Groups_Oplus__class_Oplus(tc_Int_Oint,V_za_2,c_Groups_Oone__class_Oone(tc_Int_Oint)))
    <=> ( c_Orderings_Oord__class_Oless(tc_Int_Oint,V_w_2,V_za_2)
        | V_w_2 = V_za_2 ) ) ).

fof(fact_nat__mult__assoc,axiom,
    ! [V_k,V_n,V_m] : hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_m),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_n),V_k)) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_m),V_n)),V_k) ).

fof(arity_Polynomial__Opoly__Groups_Oordered__comm__monoid__add,axiom,
    ! [T_1] :
      ( class_Rings_Olinordered__idom(T_1)
     => class_Groups_Oordered__comm__monoid__add(tc_Polynomial_Opoly(T_1)) ) ).

fof(fact_add__less__cancel__left,axiom,
    ! [V_b_2,V_ab_2,V_ca_2,T_a] :
      ( ( c_Orderings_Oord__class_Oless(T_a,V_ab_2,V_b_2)
      <=> c_Orderings_Oord__class_Oless(T_a,c_Groups_Oplus__class_Oplus(T_a,V_ca_2,V_ab_2),c_Groups_Oplus__class_Oplus(T_a,V_ca_2,V_b_2)) )
     <= class_Groups_Oordered__ab__semigroup__add__imp__le(T_a) ) ).

fof(fact_dvd__div__eq__mult,axiom,
    ! [V_ca_2,V_b_2,V_ab_2,T_a] :
      ( ( ( c_Rings_Odvd__class_Odvd(T_a,V_ab_2,V_b_2)
         => ( V_ca_2 = c_Divides_Odiv__class_Odiv(T_a,V_b_2,V_ab_2)
          <=> V_b_2 = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_ca_2),V_ab_2) ) )
       <= V_ab_2 != c_Groups_Ozero__class_Ozero(T_a) )
     <= class_Divides_Osemiring__div(T_a) ) ).

fof(fact_add__strict__right__mono,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Oplus__class_Oplus(T_a,V_a,V_c),c_Groups_Oplus__class_Oplus(T_a,V_b,V_c))
       <= c_Orderings_Oord__class_Oless(T_a,V_a,V_b) )
     <= class_Groups_Oordered__cancel__ab__semigroup__add(T_a) ) ).

fof(fact_power__increasing,axiom,
    ! [V_a,V_N,V_n,T_a] :
      ( class_Rings_Olinordered__semidom(T_a)
     => ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_n,V_N)
       => ( c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_n),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_N))
         <= c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Oone__class_Oone(T_a),V_a) ) ) ) ).

fof(fact_frac__less,axiom,
    ! [V_z,V_w,V_y,V_x,T_a] :
      ( class_Fields_Olinordered__field(T_a)
     => ( ( c_Orderings_Oord__class_Oless(T_a,V_x,V_y)
         => ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_w)
           => ( c_Orderings_Oord__class_Oless(T_a,c_Rings_Oinverse__class_Odivide(T_a,V_x,V_z),c_Rings_Oinverse__class_Odivide(T_a,V_y,V_w))
             <= c_Orderings_Oord__class_Oless__eq(T_a,V_w,V_z) ) ) )
       <= c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_x) ) ) ).

fof(fact_order__root,axiom,
    ! [V_ab_2,V_pa_2,T_a] :
      ( ( c_Groups_Ozero__class_Ozero(T_a) = hAPP(c_Polynomial_Opoly(T_a,V_pa_2),V_ab_2)
      <=> ( c_Groups_Ozero__class_Ozero(tc_Nat_Onat) != c_Polynomial_Oorder(T_a,V_ab_2,V_pa_2)
          | c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a)) = V_pa_2 ) )
     <= class_Rings_Oidom(T_a) ) ).

fof(arity_Polynomial__Opoly__Rings_Oring,axiom,
    ! [T_1] :
      ( class_Rings_Ocomm__ring(T_1)
     => class_Rings_Oring(tc_Polynomial_Opoly(T_1)) ) ).

fof(fact_abs__not__less__zero,axiom,
    ! [V_a,T_a] :
      ( ~ c_Orderings_Oord__class_Oless(T_a,c_Groups_Oabs__class_Oabs(T_a,V_a),c_Groups_Ozero__class_Ozero(T_a))
     <= class_Groups_Oordered__ab__group__add__abs(T_a) ) ).

fof(fact_real__root__abs,axiom,
    ! [V_x,V_n] :
      ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_n)
     => c_NthRoot_Oroot(V_n,c_Groups_Oabs__class_Oabs(tc_RealDef_Oreal,V_x)) = c_Groups_Oabs__class_Oabs(tc_RealDef_Oreal,c_NthRoot_Oroot(V_n,V_x)) ) ).

fof(fact_power__le__imp__le__exp,axiom,
    ! [V_n,V_m,V_a,T_a] :
      ( ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Oone__class_Oone(T_a),V_a)
       => ( c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_m),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_n))
         => c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m,V_n) ) )
     <= class_Rings_Olinordered__semidom(T_a) ) ).

fof(fact_field__le__epsilon,axiom,
    ! [V_y,V_x,T_a] :
      ( ( ! [B_e] :
            ( c_Orderings_Oord__class_Oless__eq(T_a,V_x,c_Groups_Oplus__class_Oplus(T_a,V_y,B_e))
           <= c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),B_e) )
       => c_Orderings_Oord__class_Oless__eq(T_a,V_x,V_y) )
     <= class_Fields_Olinordered__field(T_a) ) ).

fof(arity_Polynomial__Opoly__Orderings_Opreorder,axiom,
    ! [T_1] :
      ( class_Rings_Olinordered__idom(T_1)
     => class_Orderings_Opreorder(tc_Polynomial_Opoly(T_1)) ) ).

fof(fact_nat__mult__1__right,axiom,
    ! [V_n] : hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_n),c_Groups_Oone__class_Oone(tc_Nat_Onat)) = V_n ).

fof(arity_Polynomial__Opoly__Groups_Ozero,axiom,
    ! [T_1] :
      ( class_Groups_Ozero(tc_Polynomial_Opoly(T_1))
     <= class_Groups_Ozero(T_1) ) ).

fof(fact_natceiling__add__one,axiom,
    ! [V_x] :
      ( c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),V_x)
     => c_Groups_Oplus__class_Oplus(tc_Nat_Onat,c_RComplete_Onatceiling(V_x),c_Groups_Oone__class_Oone(tc_Nat_Onat)) = c_RComplete_Onatceiling(c_Groups_Oplus__class_Oplus(tc_RealDef_Oreal,V_x,c_Groups_Oone__class_Oone(tc_RealDef_Oreal))) ) ).

fof(fact_zdiv__mono2__neg,axiom,
    ! [V_b,V_b_H,V_a] :
      ( ( c_Orderings_Oord__class_Oless(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_b_H)
       => ( c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,V_b_H,V_b)
         => c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Divides_Odiv__class_Odiv(tc_Int_Oint,V_a,V_b_H),c_Divides_Odiv__class_Odiv(tc_Int_Oint,V_a,V_b)) ) )
     <= c_Orderings_Oord__class_Oless(tc_Int_Oint,V_a,c_Groups_Ozero__class_Ozero(tc_Int_Oint)) ) ).

fof(fact_zdiv__self,axiom,
    ! [V_a] :
      ( V_a != c_Groups_Ozero__class_Ozero(tc_Int_Oint)
     => c_Divides_Odiv__class_Odiv(tc_Int_Oint,V_a,V_a) = c_Groups_Oone__class_Oone(tc_Int_Oint) ) ).

fof(fact_pos__add__strict,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( ( ( c_Orderings_Oord__class_Oless(T_a,V_b,V_c)
         => c_Orderings_Oord__class_Oless(T_a,V_b,c_Groups_Oplus__class_Oplus(T_a,V_a,V_c)) )
       <= c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_a) )
     <= class_Rings_Olinordered__semidom(T_a) ) ).

fof(fact_real__mult__left__cancel,axiom,
    ! [V_b_2,V_ab_2,V_ca_2] :
      ( ( V_b_2 = V_ab_2
      <=> hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),V_ca_2),V_ab_2) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),V_ca_2),V_b_2) )
     <= V_ca_2 != c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal) ) ).

fof(fact_order__trans,axiom,
    ! [V_z,V_y,V_x,T_a] :
      ( ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_x,V_z)
         <= c_Orderings_Oord__class_Oless__eq(T_a,V_y,V_z) )
       <= c_Orderings_Oord__class_Oless__eq(T_a,V_x,V_y) )
     <= class_Orderings_Opreorder(T_a) ) ).

fof(fact_xt1_I4_J,axiom,
    ! [V_c,V_a,V_b,T_a] :
      ( ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_c,V_a)
         <= V_b = V_c )
       <= c_Orderings_Oord__class_Oless__eq(T_a,V_b,V_a) )
     <= class_Orderings_Oorder(T_a) ) ).

fof(arity_RealDef__Oreal__Rings_Ocomm__semiring__0,axiom,
    class_Rings_Ocomm__semiring__0(tc_RealDef_Oreal) ).

fof(fact_zadd__zless__mono,axiom,
    ! [V_z,V_z_H,V_w,V_w_H] :
      ( ( c_Orderings_Oord__class_Oless(tc_Int_Oint,c_Groups_Oplus__class_Oplus(tc_Int_Oint,V_w_H,V_z_H),c_Groups_Oplus__class_Oplus(tc_Int_Oint,V_w,V_z))
       <= c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,V_z_H,V_z) )
     <= c_Orderings_Oord__class_Oless(tc_Int_Oint,V_w_H,V_w) ) ).

fof(arity_Polynomial__Opoly__Groups_Omonoid__add,axiom,
    ! [T_1] :
      ( class_Groups_Ocomm__monoid__add(T_1)
     => class_Groups_Omonoid__add(tc_Polynomial_Opoly(T_1)) ) ).

fof(fact_dvd__0__right,axiom,
    ! [V_a,T_a] :
      ( c_Rings_Odvd__class_Odvd(T_a,V_a,c_Groups_Ozero__class_Ozero(T_a))
     <= class_Rings_Ocomm__semiring__1(T_a) ) ).

fof(fact_less__nat__zero__code,axiom,
    ! [V_n] : ~ c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_n,c_Groups_Ozero__class_Ozero(tc_Nat_Onat)) ).

fof(fact_zadd__0__right,axiom,
    ! [V_z] : c_Groups_Oplus__class_Oplus(tc_Int_Oint,V_z,c_Groups_Ozero__class_Ozero(tc_Int_Oint)) = V_z ).

fof(fact_div__mult__self1__is__id,axiom,
    ! [V_a,V_b,T_a] :
      ( ( V_a = c_Divides_Odiv__class_Odiv(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b),V_a),V_b)
       <= V_b != c_Groups_Ozero__class_Ozero(T_a) )
     <= class_Divides_Osemiring__div(T_a) ) ).

fof(fact_dvd__diff,axiom,
    ! [V_z,V_y,V_x,T_a] :
      ( class_Rings_Ocomm__ring__1(T_a)
     => ( ( c_Rings_Odvd__class_Odvd(T_a,V_x,c_Groups_Ominus__class_Ominus(T_a,V_y,V_z))
         <= c_Rings_Odvd__class_Odvd(T_a,V_x,V_z) )
       <= c_Rings_Odvd__class_Odvd(T_a,V_x,V_y) ) ) ).

fof(arity_RealDef__Oreal__Orderings_Oorder,axiom,
    class_Orderings_Oorder(tc_RealDef_Oreal) ).

fof(fact_zero__neq__one,axiom,
    ! [T_a] :
      ( c_Groups_Oone__class_Oone(T_a) != c_Groups_Ozero__class_Ozero(T_a)
     <= class_Rings_Ozero__neq__one(T_a) ) ).

fof(fact_nat__mult__1,axiom,
    ! [V_n] : hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),c_Groups_Oone__class_Oone(tc_Nat_Onat)),V_n) = V_n ).

fof(fact_divisors__zero,axiom,
    ! [V_b,V_a,T_a] :
      ( ( ( c_Groups_Ozero__class_Ozero(T_a) = V_b
          | c_Groups_Ozero__class_Ozero(T_a) = V_a )
       <= c_Groups_Ozero__class_Ozero(T_a) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b) )
     <= class_Rings_Ono__zero__divisors(T_a) ) ).

fof(fact_abs__triangle__ineq4,axiom,
    ! [V_b,V_a,T_a] :
      ( class_Groups_Oordered__ab__group__add__abs(T_a)
     => c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Oabs__class_Oabs(T_a,c_Groups_Ominus__class_Ominus(T_a,V_a,V_b)),c_Groups_Oplus__class_Oplus(T_a,c_Groups_Oabs__class_Oabs(T_a,V_a),c_Groups_Oabs__class_Oabs(T_a,V_b))) ) ).

fof(fact_real__natceiling__ge,axiom,
    ! [V_x] : c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,V_x,c_RealDef_Oreal(tc_Nat_Onat,c_RComplete_Onatceiling(V_x))) ).

fof(arity_Int__Oint__Groups_Oordered__ab__group__add__abs,axiom,
    class_Groups_Oordered__ab__group__add__abs(tc_Int_Oint) ).

fof(fact_divide__neg__neg,axiom,
    ! [V_y,V_x,T_a] :
      ( ( ( c_Orderings_Oord__class_Oless(T_a,V_y,c_Groups_Ozero__class_Ozero(T_a))
         => c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),c_Rings_Oinverse__class_Odivide(T_a,V_x,V_y)) )
       <= c_Orderings_Oord__class_Oless(T_a,V_x,c_Groups_Ozero__class_Ozero(T_a)) )
     <= class_Fields_Olinordered__field(T_a) ) ).

fof(fact_comm__semiring__1__class_Onormalizing__semiring__rules_I7_J,axiom,
    ! [V_b,V_a,T_a] :
      ( class_Rings_Ocomm__semiring__1(T_a)
     => hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b),V_a) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b) ) ).

fof(arity_Nat__Onat__Groups_Oordered__ab__semigroup__add__imp__le,axiom,
    class_Groups_Oordered__ab__semigroup__add__imp__le(tc_Nat_Onat) ).

fof(arity_Int__Oint__Groups_Oab__semigroup__mult,axiom,
    class_Groups_Oab__semigroup__mult(tc_Int_Oint) ).

fof(fact_leD,axiom,
    ! [V_x,V_y,T_a] :
      ( class_Orderings_Olinorder(T_a)
     => ( c_Orderings_Oord__class_Oless__eq(T_a,V_y,V_x)
       => ~ c_Orderings_Oord__class_Oless(T_a,V_x,V_y) ) ) ).

fof(fact_ord__eq__le__trans,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_a,V_c)
         <= c_Orderings_Oord__class_Oless__eq(T_a,V_b,V_c) )
       <= V_a = V_b )
     <= class_Orderings_Oord(T_a) ) ).

fof(fact_dvd__mod__imp__dvd,axiom,
    ! [V_n,V_m,V_k,T_a] :
      ( ( c_Rings_Odvd__class_Odvd(T_a,V_k,c_Divides_Odiv__class_Omod(T_a,V_m,V_n))
       => ( c_Rings_Odvd__class_Odvd(T_a,V_k,V_m)
         <= c_Rings_Odvd__class_Odvd(T_a,V_k,V_n) ) )
     <= class_Divides_Osemiring__div(T_a) ) ).

fof(fact_comm__semiring__1__class_Onormalizing__semiring__rules_I14_J,axiom,
    ! [V_ry,V_rx,V_ly,V_lx,T_a] :
      ( class_Rings_Ocomm__semiring__1(T_a)
     => hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_lx),V_ly)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_rx),V_ry)) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_lx),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_ly),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_rx),V_ry))) ) ).

fof(fact_nat__le__linear,axiom,
    ! [V_n,V_m] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m,V_n)
      | c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_n,V_m) ) ).

fof(fact_pcompose__pCons,axiom,
    ! [V_q,V_p,V_a,T_a] :
      ( c_Groups_Oplus__class_Oplus(tc_Polynomial_Opoly(T_a),c_Polynomial_OpCons(T_a,V_a,c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a))),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Polynomial_Opoly(T_a)),V_q),c_Polynomial_Opcompose(T_a,V_p,V_q))) = c_Polynomial_Opcompose(T_a,c_Polynomial_OpCons(T_a,V_a,V_p),V_q)
     <= class_Rings_Ocomm__semiring__0(T_a) ) ).

fof(fact_dvd__mult__right,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( ( c_Rings_Odvd__class_Odvd(T_a,V_b,V_c)
       <= c_Rings_Odvd__class_Odvd(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b),V_c) )
     <= class_Rings_Ocomm__semiring__1(T_a) ) ).

fof(fact_zabs__less__one__iff,axiom,
    ! [V_za_2] :
      ( c_Orderings_Oord__class_Oless(tc_Int_Oint,c_Groups_Oabs__class_Oabs(tc_Int_Oint,V_za_2),c_Groups_Oone__class_Oone(tc_Int_Oint))
    <=> V_za_2 = c_Groups_Ozero__class_Ozero(tc_Int_Oint) ) ).

fof(fact_dvd_Oord__eq__le__trans,axiom,
    ! [V_c,V_b,V_a] :
      ( ( c_Rings_Odvd__class_Odvd(tc_Nat_Onat,V_b,V_c)
       => c_Rings_Odvd__class_Odvd(tc_Nat_Onat,V_a,V_c) )
     <= V_a = V_b ) ).

fof(fact_natfloor__one,axiom,
    c_Groups_Oone__class_Oone(tc_Nat_Onat) = c_RComplete_Onatfloor(c_Groups_Oone__class_Oone(tc_RealDef_Oreal)) ).

fof(arity_Int__Oint__Orderings_Opreorder,axiom,
    class_Orderings_Opreorder(tc_Int_Oint) ).

fof(fact_mod__mult__mult2,axiom,
    ! [V_b,V_c,V_a,T_a] :
      ( class_Divides_Osemiring__div(T_a)
     => hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Divides_Odiv__class_Omod(T_a,V_a,V_b)),V_c) = c_Divides_Odiv__class_Omod(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_c),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b),V_c)) ) ).

fof(fact_nat__add__left__cancel__less,axiom,
    ! [V_n_2,V_m_2,V_k_2] :
      ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_m_2,V_n_2)
    <=> c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_k_2,V_m_2),c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_k_2,V_n_2)) ) ).

fof(fact_linorder__neqE__nat,axiom,
    ! [V_y,V_x] :
      ( V_y != V_x
     => ( ~ c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_x,V_y)
       => c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_y,V_x) ) ) ).

fof(arity_Complex__Ocomplex__Rings_Ocomm__ring,axiom,
    class_Rings_Ocomm__ring(tc_Complex_Ocomplex) ).

fof(fact_mod__add__right__eq,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( class_Divides_Osemiring__div(T_a)
     => c_Divides_Odiv__class_Omod(T_a,c_Groups_Oplus__class_Oplus(T_a,V_a,V_b),V_c) = c_Divides_Odiv__class_Omod(T_a,c_Groups_Oplus__class_Oplus(T_a,V_a,c_Divides_Odiv__class_Omod(T_a,V_b,V_c)),V_c) ) ).

fof(fact_power__decreasing,axiom,
    ! [V_a,V_N,V_n,T_a] :
      ( class_Rings_Olinordered__semidom(T_a)
     => ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_n,V_N)
       => ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_a)
         => ( c_Orderings_Oord__class_Oless__eq(T_a,V_a,c_Groups_Oone__class_Oone(T_a))
           => c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_N),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_n)) ) ) ) ) ).

fof(fact_mult__1__right,axiom,
    ! [V_a,T_a] :
      ( class_Groups_Omonoid__mult(T_a)
     => V_a = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),c_Groups_Oone__class_Oone(T_a)) ) ).

fof(fact_add__imp__eq,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( class_Groups_Ocancel__ab__semigroup__add(T_a)
     => ( c_Groups_Oplus__class_Oplus(T_a,V_a,V_c) = c_Groups_Oplus__class_Oplus(T_a,V_a,V_b)
       => V_c = V_b ) ) ).

fof(help_c__fequal__2,axiom,
    ! [V_y_2,V_x_2] :
      ( V_y_2 != V_x_2
      | hBOOL(c_fequal(V_x_2,V_y_2)) ) ).

fof(fact_zless__linear,axiom,
    ! [V_y,V_x] :
      ( c_Orderings_Oord__class_Oless(tc_Int_Oint,V_x,V_y)
      | V_x = V_y
      | c_Orderings_Oord__class_Oless(tc_Int_Oint,V_y,V_x) ) ).

fof(fact_xt1_I2_J,axiom,
    ! [V_c,V_a,V_b,T_a] :
      ( ( c_Orderings_Oord__class_Oless(T_a,V_b,V_a)
       => ( V_c = V_b
         => c_Orderings_Oord__class_Oless(T_a,V_c,V_a) ) )
     <= class_Orderings_Oorder(T_a) ) ).

fof(fact_comm__semiring__1__class_Onormalizing__semiring__rules_I23_J,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( class_Rings_Ocomm__semiring__1(T_a)
     => c_Groups_Oplus__class_Oplus(T_a,c_Groups_Oplus__class_Oplus(T_a,V_a,V_b),V_c) = c_Groups_Oplus__class_Oplus(T_a,c_Groups_Oplus__class_Oplus(T_a,V_a,V_c),V_b) ) ).

fof(fact_abs__triangle__ineq2__sym,axiom,
    ! [V_b,V_a,T_a] :
      ( class_Groups_Oordered__ab__group__add__abs(T_a)
     => c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ominus__class_Ominus(T_a,c_Groups_Oabs__class_Oabs(T_a,V_a),c_Groups_Oabs__class_Oabs(T_a,V_b)),c_Groups_Oabs__class_Oabs(T_a,c_Groups_Ominus__class_Ominus(T_a,V_b,V_a))) ) ).

fof(fact_c0,axiom,
    c_Groups_Ozero__class_Ozero(tc_Complex_Ocomplex) != v_c____ ).

fof(fact_divide_Odiff,axiom,
    ! [V_ya,V_y,V_x,T_a] :
      ( class_RealVector_Oreal__normed__field(T_a)
     => c_Groups_Ominus__class_Ominus(T_a,c_Rings_Oinverse__class_Odivide(T_a,V_x,V_ya),c_Rings_Oinverse__class_Odivide(T_a,V_y,V_ya)) = c_Rings_Oinverse__class_Odivide(T_a,c_Groups_Ominus__class_Ominus(T_a,V_x,V_y),V_ya) ) ).

fof(fact_zmod__self,axiom,
    ! [V_a] : c_Divides_Odiv__class_Omod(tc_Int_Oint,V_a,V_a) = c_Groups_Ozero__class_Ozero(tc_Int_Oint) ).

fof(fact_complex__mod__triangle__sub,axiom,
    ! [V_z,V_w] : c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_RealVector_Onorm__class_Onorm(tc_Complex_Ocomplex,V_w),c_Groups_Oplus__class_Oplus(tc_RealDef_Oreal,c_RealVector_Onorm__class_Onorm(tc_Complex_Ocomplex,c_Groups_Oplus__class_Oplus(tc_Complex_Ocomplex,V_w,V_z)),c_RealVector_Onorm__class_Onorm(tc_Complex_Ocomplex,V_z))) ).

fof(fact_mult__strict__left__mono__neg,axiom,
    ! [V_c,V_a,V_b,T_a] :
      ( class_Rings_Olinordered__ring__strict(T_a)
     => ( ( c_Orderings_Oord__class_Oless(T_a,V_c,c_Groups_Ozero__class_Ozero(T_a))
         => c_Orderings_Oord__class_Oless(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_c),V_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_c),V_b)) )
       <= c_Orderings_Oord__class_Oless(T_a,V_b,V_a) ) ) ).

fof(arity_RealDef__Oreal__RealVector_Oreal__normed__field,axiom,
    class_RealVector_Oreal__normed__field(tc_RealDef_Oreal) ).

fof(fact_divide__eq__eq,axiom,
    ! [V_ab_2,V_ca_2,V_b_2,T_a] :
      ( class_Fields_Ofield__inverse__zero(T_a)
     => ( ( ( c_Groups_Ozero__class_Ozero(T_a) = V_ab_2
           <= c_Groups_Ozero__class_Ozero(T_a) = V_ca_2 )
          & ( hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_ab_2),V_ca_2) = V_b_2
           <= c_Groups_Ozero__class_Ozero(T_a) != V_ca_2 ) )
      <=> V_ab_2 = c_Rings_Oinverse__class_Odivide(T_a,V_b_2,V_ca_2) ) ) ).

fof(fact_zless__imp__add1__zle,axiom,
    ! [V_z,V_w] :
      ( c_Orderings_Oord__class_Oless(tc_Int_Oint,V_w,V_z)
     => c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Oplus__class_Oplus(tc_Int_Oint,V_w,c_Groups_Oone__class_Oone(tc_Int_Oint)),V_z) ) ).

fof(fact_power_Opower_Opower__0,axiom,
    ! [V_ab_2,V_times_2,V_one_2,T_a] : V_one_2 = hAPP(hAPP(c_Power_Opower_Opower(T_a,V_one_2,V_times_2),V_ab_2),c_Groups_Ozero__class_Ozero(tc_Nat_Onat)) ).

fof(arity_Nat__Onat__Groups_Oone,axiom,
    class_Groups_Oone(tc_Nat_Onat) ).

fof(arity_Complex__Ocomplex__Fields_Ofield__inverse__zero,axiom,
    class_Fields_Ofield__inverse__zero(tc_Complex_Ocomplex) ).

fof(arity_Complex__Ocomplex__Power_Opower,axiom,
    class_Power_Opower(tc_Complex_Ocomplex) ).

fof(fact_poly__diff,axiom,
    ! [V_x,V_q,V_p,T_a] :
      ( class_Rings_Ocomm__ring(T_a)
     => c_Groups_Ominus__class_Ominus(T_a,hAPP(c_Polynomial_Opoly(T_a,V_p),V_x),hAPP(c_Polynomial_Opoly(T_a,V_q),V_x)) = hAPP(c_Polynomial_Opoly(T_a,c_Groups_Ominus__class_Ominus(tc_Polynomial_Opoly(T_a),V_p,V_q)),V_x) ) ).

fof(fact_mult__left_Oadd,axiom,
    ! [V_ya,V_y,V_x,T_a] :
      ( hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Groups_Oplus__class_Oplus(T_a,V_x,V_y)),V_ya) = c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_x),V_ya),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_y),V_ya))
     <= class_RealVector_Oreal__normed__algebra(T_a) ) ).

fof(fact_nat__add__right__cancel,axiom,
    ! [V_n_2,V_k_2,V_m_2] :
      ( V_n_2 = V_m_2
    <=> c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_m_2,V_k_2) = c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_n_2,V_k_2) ) ).

fof(fact_le0,axiom,
    ! [V_n] : c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_n) ).

fof(fact_comm__semiring__1__class_Onormalizing__semiring__rules_I32_J,axiom,
    ! [V_x,T_a] :
      ( c_Groups_Oone__class_Oone(T_a) = hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_x),c_Groups_Ozero__class_Ozero(tc_Nat_Onat))
     <= class_Rings_Ocomm__semiring__1(T_a) ) ).

fof(fact_comm__semiring__1__class_Onormalizing__semiring__rules_I2_J,axiom,
    ! [V_m,V_a,T_a] :
      ( hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Groups_Oplus__class_Oplus(T_a,V_a,c_Groups_Oone__class_Oone(T_a))),V_m) = c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_m),V_m)
     <= class_Rings_Ocomm__semiring__1(T_a) ) ).

fof(fact_h,axiom,
    c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Rings_Oinverse__class_Odivide(tc_RealDef_Oreal,c_Groups_Oplus__class_Oplus(tc_RealDef_Oreal,c_Groups_Oabs__class_Oabs(tc_RealDef_Oreal,v_da____),c_RealVector_Onorm__class_Onorm(tc_Complex_Ocomplex,v_aa____)),c_RealVector_Onorm__class_Onorm(tc_Complex_Ocomplex,v_c____)),c_RealVector_Onorm__class_Onorm(tc_Complex_Ocomplex,v_z____)) ).

fof(fact_q__neg__lemma,axiom,
    ! [V_r_H,V_q_H,V_b_H] :
      ( ( ( c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,V_q_H,c_Groups_Ozero__class_Ozero(tc_Int_Oint))
         <= c_Orderings_Oord__class_Oless(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_b_H) )
       <= c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_r_H) )
     <= c_Orderings_Oord__class_Oless(tc_Int_Oint,c_Groups_Oplus__class_Oplus(tc_Int_Oint,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_b_H),V_q_H),V_r_H),c_Groups_Ozero__class_Ozero(tc_Int_Oint)) ) ).

fof(fact_zmult2__lemma__aux1,axiom,
    ! [V_q,V_r,V_b,V_c] :
      ( ( ( c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,V_r,c_Groups_Ozero__class_Ozero(tc_Int_Oint))
         => c_Orderings_Oord__class_Oless(tc_Int_Oint,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_b),V_c),c_Groups_Oplus__class_Oplus(tc_Int_Oint,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_b),c_Divides_Odiv__class_Omod(tc_Int_Oint,V_q,V_c)),V_r)) )
       <= c_Orderings_Oord__class_Oless(tc_Int_Oint,V_b,V_r) )
     <= c_Orderings_Oord__class_Oless(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_c) ) ).

fof(fact_nonzero__eq__divide__eq,axiom,
    ! [V_b_2,V_ab_2,V_ca_2,T_a] :
      ( class_Rings_Odivision__ring(T_a)
     => ( ( V_ab_2 = c_Rings_Oinverse__class_Odivide(T_a,V_b_2,V_ca_2)
        <=> hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_ab_2),V_ca_2) = V_b_2 )
       <= c_Groups_Ozero__class_Ozero(T_a) != V_ca_2 ) ) ).

fof(fact_divmod__int__rel__mod__eq,axiom,
    ! [V_y,V_q_1,V_b_1,V_a_1] :
      ( ( ( c_Groups_Ozero__class_Ozero(tc_Int_Oint) != V_b_1
         => V_y = c_Divides_Odiv__class_Omod(tc_Int_Oint,V_a_1,V_b_1) )
       <= ( ( ( c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,V_y,c_Groups_Ozero__class_Ozero(tc_Int_Oint))
              & c_Orderings_Oord__class_Oless(tc_Int_Oint,V_b_1,V_y) )
           <= ~ c_Orderings_Oord__class_Oless(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_b_1) )
          & ( ( c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_y)
              & c_Orderings_Oord__class_Oless(tc_Int_Oint,V_y,V_b_1) )
           <= c_Orderings_Oord__class_Oless(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_b_1) ) ) )
     <= c_Groups_Oplus__class_Oplus(tc_Int_Oint,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_b_1),V_q_1),V_y) = V_a_1 ) ).

fof(fact_mult__strict__mono_H,axiom,
    ! [V_d,V_c,V_b,V_a,T_a] :
      ( ( ( c_Orderings_Oord__class_Oless(T_a,V_c,V_d)
         => ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_a)
           => ( c_Orderings_Oord__class_Oless(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_c),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b),V_d))
             <= c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_c) ) ) )
       <= c_Orderings_Oord__class_Oless(T_a,V_a,V_b) )
     <= class_Rings_Olinordered__semiring__strict(T_a) ) ).

fof(arity_RealDef__Oreal__Groups_Oordered__ab__semigroup__add__imp__le,axiom,
    class_Groups_Oordered__ab__semigroup__add__imp__le(tc_RealDef_Oreal) ).

fof(arity_RealDef__Oreal__Int_Oring__char__0,axiom,
    class_Int_Oring__char__0(tc_RealDef_Oreal) ).

fof(fact_comm__semiring__1__class_Onormalizing__semiring__rules_I19_J,axiom,
    ! [V_ry,V_rx,V_lx,T_a] :
      ( class_Rings_Ocomm__semiring__1(T_a)
     => hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_rx),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_lx),V_ry)) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_lx),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_rx),V_ry)) ) ).

fof(fact_add__increasing2,axiom,
    ! [V_a,V_b,V_c,T_a] :
      ( ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_b,V_a)
         => c_Orderings_Oord__class_Oless__eq(T_a,V_b,c_Groups_Oplus__class_Oplus(T_a,V_a,V_c)) )
       <= c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_c) )
     <= class_Groups_Oordered__comm__monoid__add(T_a) ) ).

fof(fact_zadd__commute,axiom,
    ! [V_w,V_z] : c_Groups_Oplus__class_Oplus(tc_Int_Oint,V_w,V_z) = c_Groups_Oplus__class_Oplus(tc_Int_Oint,V_z,V_w) ).

fof(fact_mult__right__le__imp__le,axiom,
    ! [V_b,V_c,V_a,T_a] :
      ( ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_a,V_b)
         <= c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_c) )
       <= c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_c),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b),V_c)) )
     <= class_Rings_Olinordered__semiring__strict(T_a) ) ).

fof(fact_add__frac__num,axiom,
    ! [V_z,V_x,V_y,T_a] :
      ( class_Fields_Ofield__inverse__zero(T_a)
     => ( c_Rings_Oinverse__class_Odivide(T_a,c_Groups_Oplus__class_Oplus(T_a,V_x,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_z),V_y)),V_y) = c_Groups_Oplus__class_Oplus(T_a,c_Rings_Oinverse__class_Odivide(T_a,V_x,V_y),V_z)
       <= V_y != c_Groups_Ozero__class_Ozero(T_a) ) ) ).

fof(fact_real__root__ge__zero,axiom,
    ! [V_x,V_n] :
      ( ( c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),V_x)
       => c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),c_NthRoot_Oroot(V_n,V_x)) )
     <= c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_n) ) ).

fof(arity_Int__Oint__Groups_Oordered__cancel__ab__semigroup__add,axiom,
    class_Groups_Oordered__cancel__ab__semigroup__add(tc_Int_Oint) ).

fof(fact_real__of__nat__le__zero__cancel__iff,axiom,
    ! [V_n_2] :
      ( c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_RealDef_Oreal(tc_Nat_Onat,V_n_2),c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal))
    <=> c_Groups_Ozero__class_Ozero(tc_Nat_Onat) = V_n_2 ) ).

fof(fact_divide_Opos__bounded,axiom,
    ! [V_y,T_a] :
      ( class_RealVector_Oreal__normed__field(T_a)
     => ? [B_K] :
          ( c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),B_K)
          & ! [B_x] : c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_RealVector_Onorm__class_Onorm(T_a,c_Rings_Oinverse__class_Odivide(T_a,B_x,V_y)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),c_RealVector_Onorm__class_Onorm(T_a,B_x)),B_K)) ) ) ).

fof(arity_Nat__Onat__Orderings_Opreorder,axiom,
    class_Orderings_Opreorder(tc_Nat_Onat) ).

fof(arity_Nat__Onat__Rings_Olinordered__comm__semiring__strict,axiom,
    class_Rings_Olinordered__comm__semiring__strict(tc_Nat_Onat) ).

fof(fact_no__zero__divisors,axiom,
    ! [V_b,V_a,T_a] :
      ( ( ( c_Groups_Ozero__class_Ozero(T_a) != hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b)
         <= c_Groups_Ozero__class_Ozero(T_a) != V_b )
       <= V_a != c_Groups_Ozero__class_Ozero(T_a) )
     <= class_Rings_Ono__zero__divisors(T_a) ) ).

fof(fact_zdvd__reduce,axiom,
    ! [V_m_2,V_n_2,V_k_2] :
      ( c_Rings_Odvd__class_Odvd(tc_Int_Oint,V_k_2,c_Groups_Oplus__class_Oplus(tc_Int_Oint,V_n_2,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_k_2),V_m_2)))
    <=> c_Rings_Odvd__class_Odvd(tc_Int_Oint,V_k_2,V_n_2) ) ).

fof(fact_div__neg__neg__trivial,axiom,
    ! [V_b,V_a] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,V_a,c_Groups_Ozero__class_Ozero(tc_Int_Oint))
     => ( c_Groups_Ozero__class_Ozero(tc_Int_Oint) = c_Divides_Odiv__class_Odiv(tc_Int_Oint,V_a,V_b)
       <= c_Orderings_Oord__class_Oless(tc_Int_Oint,V_b,V_a) ) ) ).

fof(fact_power__0__left,axiom,
    ! [V_n,T_a] :
      ( ( class_Power_Opower(T_a)
        & class_Rings_Osemiring__0(T_a) )
     => ( ( V_n = c_Groups_Ozero__class_Ozero(tc_Nat_Onat)
         => hAPP(hAPP(c_Power_Opower__class_Opower(T_a),c_Groups_Ozero__class_Ozero(T_a)),V_n) = c_Groups_Oone__class_Oone(T_a) )
        & ( V_n != c_Groups_Ozero__class_Ozero(tc_Nat_Onat)
         => c_Groups_Ozero__class_Ozero(T_a) = hAPP(hAPP(c_Power_Opower__class_Opower(T_a),c_Groups_Ozero__class_Ozero(T_a)),V_n) ) ) ) ).

fof(fact_Nat__Transfer_Otransfer__nat__int__function__closures_I2_J,axiom,
    ! [V_y,V_x] :
      ( ( c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_x),V_y))
       <= c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_y) )
     <= c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_x) ) ).

fof(arity_Polynomial__Opoly__Groups_Ocomm__monoid__add,axiom,
    ! [T_1] :
      ( class_Groups_Ocomm__monoid__add(T_1)
     => class_Groups_Ocomm__monoid__add(tc_Polynomial_Opoly(T_1)) ) ).

fof(arity_RealDef__Oreal__Groups_Ocancel__semigroup__add,axiom,
    class_Groups_Ocancel__semigroup__add(tc_RealDef_Oreal) ).

fof(fact_le__natfloor,axiom,
    ! [V_a,V_x] :
      ( c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_RealDef_Oreal(tc_Nat_Onat,V_x),V_a)
     => c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_x,c_RComplete_Onatfloor(V_a)) ) ).

fof(fact_dvd_Oord__less__eq__trans,axiom,
    ! [V_c,V_b,V_a] :
      ( ( V_b = V_c
       => ( c_Rings_Odvd__class_Odvd(tc_Nat_Onat,V_a,V_c)
          & ~ c_Rings_Odvd__class_Odvd(tc_Nat_Onat,V_c,V_a) ) )
     <= ( c_Rings_Odvd__class_Odvd(tc_Nat_Onat,V_a,V_b)
        & ~ c_Rings_Odvd__class_Odvd(tc_Nat_Onat,V_b,V_a) ) ) ).

fof(arity_Int__Oint__Groups_Ocomm__monoid__mult,axiom,
    class_Groups_Ocomm__monoid__mult(tc_Int_Oint) ).

fof(fact_termination__basic__simps_I4_J,axiom,
    ! [V_y,V_z,V_x] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_x,V_z)
     => c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_x,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_y,V_z)) ) ).

fof(arity_Int__Oint__Rings_Ocomm__semiring,axiom,
    class_Rings_Ocomm__semiring(tc_Int_Oint) ).

fof(fact_nat__dvd__not__less,axiom,
    ! [V_n,V_m] :
      ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_m)
     => ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_m,V_n)
       => ~ c_Rings_Odvd__class_Odvd(tc_Nat_Onat,V_n,V_m) ) ) ).

fof(fact_mult__right_Oadd,axiom,
    ! [V_y,V_x,V_xa,T_a] :
      ( class_RealVector_Oreal__normed__algebra(T_a)
     => hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_xa),c_Groups_Oplus__class_Oplus(T_a,V_x,V_y)) = c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_xa),V_x),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_xa),V_y)) ) ).

fof(fact_psize__eq__0__iff,axiom,
    ! [V_pa_2,T_a] :
      ( class_Groups_Ozero(T_a)
     => ( c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a)) = V_pa_2
      <=> c_Groups_Ozero__class_Ozero(tc_Nat_Onat) = c_Fundamental__Theorem__Algebra__Mirabelle_Opsize(T_a,V_pa_2) ) ) ).

fof(fact_div__less__dividend,axiom,
    ! [V_m,V_n] :
      ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Oone__class_Oone(tc_Nat_Onat),V_n)
     => ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Divides_Odiv__class_Odiv(tc_Nat_Onat,V_m,V_n),V_m)
       <= c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_m) ) ) ).

fof(fact_mult__0,axiom,
    ! [V_n] : c_Groups_Ozero__class_Ozero(tc_Nat_Onat) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),c_Groups_Ozero__class_Ozero(tc_Nat_Onat)),V_n) ).

fof(fact_divide_Ononneg__bounded,axiom,
    ! [V_y,T_a] :
      ( class_RealVector_Oreal__normed__field(T_a)
     => ? [B_K] :
          ( c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),B_K)
          & ! [B_x] : c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_RealVector_Onorm__class_Onorm(T_a,c_Rings_Oinverse__class_Odivide(T_a,B_x,V_y)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),c_RealVector_Onorm__class_Onorm(T_a,B_x)),B_K)) ) ) ).

fof(fact_add__eq__self__zero,axiom,
    ! [V_n,V_m] :
      ( V_n = c_Groups_Ozero__class_Ozero(tc_Nat_Onat)
     <= V_m = c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_m,V_n) ) ).

fof(arity_Complex__Ocomplex__Groups_Ogroup__add,axiom,
    class_Groups_Ogroup__add(tc_Complex_Ocomplex) ).

fof(fact_zdiv__zmod__equality,axiom,
    ! [V_k,V_a,V_b] : c_Groups_Oplus__class_Oplus(tc_Int_Oint,c_Groups_Oplus__class_Oplus(tc_Int_Oint,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_b),c_Divides_Odiv__class_Odiv(tc_Int_Oint,V_a,V_b)),c_Divides_Odiv__class_Omod(tc_Int_Oint,V_a,V_b)),V_k) = c_Groups_Oplus__class_Oplus(tc_Int_Oint,V_a,V_k) ).

fof(fact_zero__less__norm__iff,axiom,
    ! [V_x_2,T_a] :
      ( class_RealVector_Oreal__normed__vector(T_a)
     => ( c_Groups_Ozero__class_Ozero(T_a) != V_x_2
      <=> c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),c_RealVector_Onorm__class_Onorm(T_a,V_x_2)) ) ) ).

fof(arity_RealDef__Oreal__Rings_Oring__1,axiom,
    class_Rings_Oring__1(tc_RealDef_Oreal) ).

fof(arity_Complex__Ocomplex__Rings_Odvd,axiom,
    class_Rings_Odvd(tc_Complex_Ocomplex) ).

fof(fact_divide__add__eq__iff,axiom,
    ! [V_y,V_x,V_z,T_a] :
      ( ( c_Groups_Oplus__class_Oplus(T_a,c_Rings_Oinverse__class_Odivide(T_a,V_x,V_z),V_y) = c_Rings_Oinverse__class_Odivide(T_a,c_Groups_Oplus__class_Oplus(T_a,V_x,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_z),V_y)),V_z)
       <= c_Groups_Ozero__class_Ozero(T_a) != V_z )
     <= class_Fields_Ofield(T_a) ) ).

fof(fact_mod__mult__self3,axiom,
    ! [V_m,V_n,V_k] : c_Divides_Odiv__class_Omod(tc_Nat_Onat,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_k),V_n),V_m),V_n) = c_Divides_Odiv__class_Omod(tc_Nat_Onat,V_m,V_n) ).

fof(fact_dvd__mult__div__cancel,axiom,
    ! [V_b,V_a,T_a] :
      ( class_Divides_Osemiring__div(T_a)
     => ( V_b = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),c_Divides_Odiv__class_Odiv(T_a,V_b,V_a))
       <= c_Rings_Odvd__class_Odvd(T_a,V_a,V_b) ) ) ).

fof(fact_mult__pos__neg2,axiom,
    ! [V_b,V_a,T_a] :
      ( class_Rings_Olinordered__semiring__strict(T_a)
     => ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_a)
       => ( c_Orderings_Oord__class_Oless(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b),V_a),c_Groups_Ozero__class_Ozero(T_a))
         <= c_Orderings_Oord__class_Oless(T_a,V_b,c_Groups_Ozero__class_Ozero(T_a)) ) ) ) ).

fof(fact_real__root__mult__lemma,axiom,
    ! [V_y,V_x,V_n] :
      ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_n)
     => ( ( c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),V_y)
         => c_NthRoot_Oroot(V_n,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),V_x),V_y)) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),c_NthRoot_Oroot(V_n,V_x)),c_NthRoot_Oroot(V_n,V_y)) )
       <= c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),V_x) ) ) ).

fof(fact_real__of__nat__gt__zero__cancel__iff,axiom,
    ! [V_n_2] :
      ( c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),c_RealDef_Oreal(tc_Nat_Onat,V_n_2))
    <=> c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_n_2) ) ).

fof(fact_nat__mult__less__cancel1,axiom,
    ! [V_n_2,V_m_2,V_k_2] :
      ( ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_k_2),V_m_2),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_k_2),V_n_2))
      <=> c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_m_2,V_n_2) )
     <= c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_k_2) ) ).

fof(fact_norm__ge__zero,axiom,
    ! [V_x,T_a] :
      ( class_RealVector_Oreal__normed__vector(T_a)
     => c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),c_RealVector_Onorm__class_Onorm(T_a,V_x)) ) ).

fof(fact_ab__semigroup__mult__class_Omult__ac_I1_J,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( class_Groups_Oab__semigroup__mult(T_a)
     => hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b)),V_c) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b),V_c)) ) ).

fof(fact_mod__diff__left__eq,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( class_Divides_Oring__div(T_a)
     => c_Divides_Odiv__class_Omod(T_a,c_Groups_Ominus__class_Ominus(T_a,V_a,V_b),V_c) = c_Divides_Odiv__class_Omod(T_a,c_Groups_Ominus__class_Ominus(T_a,c_Divides_Odiv__class_Omod(T_a,V_a,V_c),V_b),V_c) ) ).

fof(fact_power__mult,axiom,
    ! [V_n,V_m,V_a,T_a] :
      ( hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_m),V_n)) = hAPP(hAPP(c_Power_Opower__class_Opower(T_a),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_m)),V_n)
     <= class_Groups_Omonoid__mult(T_a) ) ).

fof(fact_zdiff__zmod__left,axiom,
    ! [V_y,V_m,V_x] : c_Divides_Odiv__class_Omod(tc_Int_Oint,c_Groups_Ominus__class_Ominus(tc_Int_Oint,c_Divides_Odiv__class_Omod(tc_Int_Oint,V_x,V_m),V_y),V_m) = c_Divides_Odiv__class_Omod(tc_Int_Oint,c_Groups_Ominus__class_Ominus(tc_Int_Oint,V_x,V_y),V_m) ).

fof(fact_order__less__trans,axiom,
    ! [V_z,V_y,V_x,T_a] :
      ( ( ( c_Orderings_Oord__class_Oless(T_a,V_x,V_z)
         <= c_Orderings_Oord__class_Oless(T_a,V_y,V_z) )
       <= c_Orderings_Oord__class_Oless(T_a,V_x,V_y) )
     <= class_Orderings_Opreorder(T_a) ) ).

fof(arity_Polynomial__Opoly__Rings_Ocomm__ring,axiom,
    ! [T_1] :
      ( class_Rings_Ocomm__ring(T_1)
     => class_Rings_Ocomm__ring(tc_Polynomial_Opoly(T_1)) ) ).

fof(fact_power__inject__exp,axiom,
    ! [V_n_2,V_m_2,V_ab_2,T_a] :
      ( ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Oone__class_Oone(T_a),V_ab_2)
       => ( hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_ab_2),V_n_2) = hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_ab_2),V_m_2)
        <=> V_m_2 = V_n_2 ) )
     <= class_Rings_Olinordered__semidom(T_a) ) ).

fof(fact_add__left__imp__eq,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( class_Groups_Ocancel__semigroup__add(T_a)
     => ( c_Groups_Oplus__class_Oplus(T_a,V_a,V_b) = c_Groups_Oplus__class_Oplus(T_a,V_a,V_c)
       => V_b = V_c ) ) ).

fof(arity_Complex__Ocomplex__RealVector_Oreal__field,axiom,
    class_RealVector_Oreal__field(tc_Complex_Ocomplex) ).

fof(fact_poly__zero,axiom,
    ! [V_pa_2,T_a] :
      ( ( c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a)) = V_pa_2
      <=> c_Polynomial_Opoly(T_a,V_pa_2) = c_Polynomial_Opoly(T_a,c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a))) )
     <= ( class_Rings_Oidom(T_a)
        & class_Int_Oring__char__0(T_a) ) ) ).

fof(fact_mult__cancel2,axiom,
    ! [V_n_2,V_k_2,V_m_2] :
      ( ( V_n_2 = V_m_2
        | c_Groups_Ozero__class_Ozero(tc_Nat_Onat) = V_k_2 )
    <=> hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_m_2),V_k_2) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_n_2),V_k_2) ) ).

fof(arity_Nat__Onat__Rings_Olinordered__semidom,axiom,
    class_Rings_Olinordered__semidom(tc_Nat_Onat) ).

fof(fact_mod__div__equality2,axiom,
    ! [V_a,V_b,T_a] :
      ( class_Divides_Osemiring__div(T_a)
     => V_a = c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b),c_Divides_Odiv__class_Odiv(T_a,V_a,V_b)),c_Divides_Odiv__class_Omod(T_a,V_a,V_b)) ) ).

fof(fact_norm__power__ineq,axiom,
    ! [V_n,V_x,T_a] :
      ( c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_RealVector_Onorm__class_Onorm(T_a,hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_x),V_n)),hAPP(hAPP(c_Power_Opower__class_Opower(tc_RealDef_Oreal),c_RealVector_Onorm__class_Onorm(T_a,V_x)),V_n))
     <= class_RealVector_Oreal__normed__algebra__1(T_a) ) ).

fof(fact_dvd__add,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( ( c_Rings_Odvd__class_Odvd(T_a,V_a,V_b)
       => ( c_Rings_Odvd__class_Odvd(T_a,V_a,c_Groups_Oplus__class_Oplus(T_a,V_b,V_c))
         <= c_Rings_Odvd__class_Odvd(T_a,V_a,V_c) ) )
     <= class_Rings_Ocomm__semiring__1(T_a) ) ).

fof(fact_power__one,axiom,
    ! [V_n,T_a] :
      ( class_Groups_Omonoid__mult(T_a)
     => c_Groups_Oone__class_Oone(T_a) = hAPP(hAPP(c_Power_Opower__class_Opower(T_a),c_Groups_Oone__class_Oone(T_a)),V_n) ) ).

fof(fact_abs__diff__less__iff,axiom,
    ! [V_r_2,V_ab_2,V_x_2,T_a] :
      ( ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Oabs__class_Oabs(T_a,c_Groups_Ominus__class_Ominus(T_a,V_x_2,V_ab_2)),V_r_2)
      <=> ( c_Orderings_Oord__class_Oless(T_a,V_x_2,c_Groups_Oplus__class_Oplus(T_a,V_ab_2,V_r_2))
          & c_Orderings_Oord__class_Oless(T_a,c_Groups_Ominus__class_Ominus(T_a,V_ab_2,V_r_2),V_x_2) ) )
     <= class_Rings_Olinordered__idom(T_a) ) ).

fof(fact_double__zero__sym,axiom,
    ! [V_ab_2,T_a] :
      ( class_Groups_Olinordered__ab__group__add(T_a)
     => ( V_ab_2 = c_Groups_Ozero__class_Ozero(T_a)
      <=> c_Groups_Oplus__class_Oplus(T_a,V_ab_2,V_ab_2) = c_Groups_Ozero__class_Ozero(T_a) ) ) ).

fof(arity_Complex__Ocomplex__Groups_Oab__group__add,axiom,
    class_Groups_Oab__group__add(tc_Complex_Ocomplex) ).

fof(fact_real__squared__diff__one__factored,axiom,
    ! [V_x,T_a] :
      ( class_Rings_Oring__1(T_a)
     => c_Groups_Ominus__class_Ominus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_x),V_x),c_Groups_Oone__class_Oone(T_a)) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Groups_Oplus__class_Oplus(T_a,V_x,c_Groups_Oone__class_Oone(T_a))),c_Groups_Ominus__class_Ominus(T_a,V_x,c_Groups_Oone__class_Oone(T_a))) ) ).

fof(fact_power__power__power,axiom,
    ! [T_a] :
      ( class_Power_Opower(T_a)
     => c_Power_Opower__class_Opower(T_a) = c_Power_Opower_Opower(T_a,c_Groups_Oone__class_Oone(T_a),c_Groups_Otimes__class_Otimes(T_a)) ) ).

fof(arity_Int__Oint__Rings_Osemiring__0,axiom,
    class_Rings_Osemiring__0(tc_Int_Oint) ).

fof(fact_real__divide__square__eq,axiom,
    ! [V_a,V_r] : c_Rings_Oinverse__class_Odivide(tc_RealDef_Oreal,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),V_r),V_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),V_r),V_r)) = c_Rings_Oinverse__class_Odivide(tc_RealDef_Oreal,V_a,V_r) ).

fof(fact_zmult2__lemma__aux2,axiom,
    ! [V_q,V_r,V_b,V_c] :
      ( ( c_Orderings_Oord__class_Oless(tc_Int_Oint,V_b,V_r)
       => ( c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Oplus__class_Oplus(tc_Int_Oint,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_b),c_Divides_Odiv__class_Omod(tc_Int_Oint,V_q,V_c)),V_r),c_Groups_Ozero__class_Ozero(tc_Int_Oint))
         <= c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,V_r,c_Groups_Ozero__class_Ozero(tc_Int_Oint)) ) )
     <= c_Orderings_Oord__class_Oless(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_c) ) ).

fof(fact_zero__less__double__add__iff__zero__less__single__add,axiom,
    ! [V_ab_2,T_a] :
      ( ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),c_Groups_Oplus__class_Oplus(T_a,V_ab_2,V_ab_2))
      <=> c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_ab_2) )
     <= class_Groups_Olinordered__ab__group__add(T_a) ) ).

fof(fact_BseqI,axiom,
    ! [V_X_2,V_K_2,T_a] :
      ( ( c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),V_K_2)
       => ( ! [B_n] : c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_RealVector_Onorm__class_Onorm(T_a,hAPP(V_X_2,B_n)),V_K_2)
         => c_SEQ_OBseq(T_a,V_X_2) ) )
     <= class_RealVector_Oreal__normed__vector(T_a) ) ).

fof(fact_real__of__nat__zero__iff,axiom,
    ! [V_n_2] :
      ( c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal) = c_RealDef_Oreal(tc_Nat_Onat,V_n_2)
    <=> V_n_2 = c_Groups_Ozero__class_Ozero(tc_Nat_Onat) ) ).

fof(arity_RealDef__Oreal__Rings_Oordered__ring__abs,axiom,
    class_Rings_Oordered__ring__abs(tc_RealDef_Oreal) ).

fof(arity_Polynomial__Opoly__Int_Oring__char__0,axiom,
    ! [T_1] :
      ( class_Rings_Olinordered__idom(T_1)
     => class_Int_Oring__char__0(tc_Polynomial_Opoly(T_1)) ) ).

fof(fact_nat__add__left__cancel,axiom,
    ! [V_n_2,V_m_2,V_k_2] :
      ( c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_k_2,V_n_2) = c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_k_2,V_m_2)
    <=> V_n_2 = V_m_2 ) ).

fof(arity_Int__Oint__Rings_Oordered__ring__abs,axiom,
    class_Rings_Oordered__ring__abs(tc_Int_Oint) ).

fof(fact_pos__imp__zdiv__neg__iff,axiom,
    ! [V_ab_2,V_b_2] :
      ( c_Orderings_Oord__class_Oless(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_b_2)
     => ( c_Orderings_Oord__class_Oless(tc_Int_Oint,V_ab_2,c_Groups_Ozero__class_Ozero(tc_Int_Oint))
      <=> c_Orderings_Oord__class_Oless(tc_Int_Oint,c_Divides_Odiv__class_Odiv(tc_Int_Oint,V_ab_2,V_b_2),c_Groups_Ozero__class_Ozero(tc_Int_Oint)) ) ) ).

fof(fact_mult__le__cancel2,axiom,
    ! [V_n_2,V_k_2,V_m_2] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_m_2),V_k_2),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_n_2),V_k_2))
    <=> ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m_2,V_n_2)
       <= c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_k_2) ) ) ).

fof(fact_not__real__of__nat__less__zero,axiom,
    ! [V_n] : ~ c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_RealDef_Oreal(tc_Nat_Onat,V_n),c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)) ).

fof(arity_Polynomial__Opoly__Semiring__Normalization_Ocomm__semiring__1__cancel__crossproduct,axiom,
    ! [T_1] :
      ( class_Semiring__Normalization_Ocomm__semiring__1__cancel__crossproduct(tc_Polynomial_Opoly(T_1))
     <= class_Rings_Oidom(T_1) ) ).

fof(fact_termination__basic__simps_I5_J,axiom,
    ! [V_y,V_x] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_x,V_y)
     <= c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_x,V_y) ) ).

fof(fact_linorder__le__less__linear,axiom,
    ! [V_y,V_x,T_a] :
      ( ( c_Orderings_Oord__class_Oless(T_a,V_y,V_x)
        | c_Orderings_Oord__class_Oless__eq(T_a,V_x,V_y) )
     <= class_Orderings_Olinorder(T_a) ) ).

fof(arity_Complex__Ocomplex__Groups_Oab__semigroup__mult,axiom,
    class_Groups_Oab__semigroup__mult(tc_Complex_Ocomplex) ).

fof(arity_RealDef__Oreal__Rings_Oordered__comm__semiring,axiom,
    class_Rings_Oordered__comm__semiring(tc_RealDef_Oreal) ).

fof(fact_zle__antisym,axiom,
    ! [V_w,V_z] :
      ( ( V_w = V_z
       <= c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,V_w,V_z) )
     <= c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,V_z,V_w) ) ).

fof(fact_add__strict__increasing2,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( ( ( c_Orderings_Oord__class_Oless(T_a,V_b,V_c)
         => c_Orderings_Oord__class_Oless(T_a,V_b,c_Groups_Oplus__class_Oplus(T_a,V_a,V_c)) )
       <= c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_a) )
     <= class_Groups_Oordered__comm__monoid__add(T_a) ) ).

fof(fact_abs__diff__triangle__ineq,axiom,
    ! [V_d,V_c,V_b,V_a,T_a] :
      ( class_Groups_Oordered__ab__group__add__abs(T_a)
     => c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Oabs__class_Oabs(T_a,c_Groups_Ominus__class_Ominus(T_a,c_Groups_Oplus__class_Oplus(T_a,V_a,V_b),c_Groups_Oplus__class_Oplus(T_a,V_c,V_d))),c_Groups_Oplus__class_Oplus(T_a,c_Groups_Oabs__class_Oabs(T_a,c_Groups_Ominus__class_Ominus(T_a,V_a,V_c)),c_Groups_Oabs__class_Oabs(T_a,c_Groups_Ominus__class_Ominus(T_a,V_b,V_d)))) ) ).

fof(arity_RealDef__Oreal__Groups_Oordered__comm__monoid__add,axiom,
    class_Groups_Oordered__comm__monoid__add(tc_RealDef_Oreal) ).

fof(fact_div__nonpos__pos__le0,axiom,
    ! [V_b,V_a] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,V_a,c_Groups_Ozero__class_Ozero(tc_Int_Oint))
     => ( c_Orderings_Oord__class_Oless(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_b)
       => c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Divides_Odiv__class_Odiv(tc_Int_Oint,V_a,V_b),c_Groups_Ozero__class_Ozero(tc_Int_Oint)) ) ) ).

fof(fact_abs__ge__zero,axiom,
    ! [V_a,T_a] :
      ( class_Groups_Oordered__ab__group__add__abs(T_a)
     => c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),c_Groups_Oabs__class_Oabs(T_a,V_a)) ) ).

fof(fact_comm__semiring__class_Odistrib,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( class_Rings_Ocomm__semiring(T_a)
     => c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_c),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b),V_c)) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Groups_Oplus__class_Oplus(T_a,V_a,V_b)),V_c) ) ).

fof(fact_divide__right__mono,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( class_Fields_Olinordered__field__inverse__zero(T_a)
     => ( ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_c)
         => c_Orderings_Oord__class_Oless__eq(T_a,c_Rings_Oinverse__class_Odivide(T_a,V_a,V_c),c_Rings_Oinverse__class_Odivide(T_a,V_b,V_c)) )
       <= c_Orderings_Oord__class_Oless__eq(T_a,V_a,V_b) ) ) ).

fof(fact_zdvd1__eq,axiom,
    ! [V_x_2] :
      ( c_Rings_Odvd__class_Odvd(tc_Int_Oint,V_x_2,c_Groups_Oone__class_Oone(tc_Int_Oint))
    <=> c_Groups_Oone__class_Oone(tc_Int_Oint) = c_Groups_Oabs__class_Oabs(tc_Int_Oint,V_x_2) ) ).

fof(fact_dvd_Oless__asym,axiom,
    ! [V_y,V_x] :
      ( ( ~ c_Rings_Odvd__class_Odvd(tc_Nat_Onat,V_y,V_x)
        & c_Rings_Odvd__class_Odvd(tc_Nat_Onat,V_x,V_y) )
     => ~ ( ~ c_Rings_Odvd__class_Odvd(tc_Nat_Onat,V_x,V_y)
          & c_Rings_Odvd__class_Odvd(tc_Nat_Onat,V_y,V_x) ) ) ).

fof(fact_zdvd__not__zless,axiom,
    ! [V_n,V_m] :
      ( c_Orderings_Oord__class_Oless(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_m)
     => ( c_Orderings_Oord__class_Oless(tc_Int_Oint,V_m,V_n)
       => ~ c_Rings_Odvd__class_Odvd(tc_Int_Oint,V_n,V_m) ) ) ).

fof(fact_real__root__strict__decreasing,axiom,
    ! [V_x,V_N,V_n] :
      ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_n)
     => ( ( c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_Groups_Oone__class_Oone(tc_RealDef_Oreal),V_x)
         => c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_NthRoot_Oroot(V_N,V_x),c_NthRoot_Oroot(V_n,V_x)) )
       <= c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_n,V_N) ) ) ).

fof(fact_plus__nat_Oadd__0,axiom,
    ! [V_n] : V_n = c_Groups_Oplus__class_Oplus(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_n) ).

fof(fact_natfloor__power,axiom,
    ! [V_n,V_x] :
      ( c_RComplete_Onatfloor(hAPP(hAPP(c_Power_Opower__class_Opower(tc_RealDef_Oreal),V_x),V_n)) = hAPP(hAPP(c_Power_Opower__class_Opower(tc_Nat_Onat),c_RComplete_Onatfloor(V_x)),V_n)
     <= c_RealDef_Oreal(tc_Nat_Onat,c_RComplete_Onatfloor(V_x)) = V_x ) ).

fof(fact_le__iff__add,axiom,
    ! [V_n_2,V_m_2] :
      ( ? [B_k] : c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_m_2,B_k) = V_n_2
    <=> c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m_2,V_n_2) ) ).

fof(fact_mod__add__left__eq,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( class_Divides_Osemiring__div(T_a)
     => c_Divides_Odiv__class_Omod(T_a,c_Groups_Oplus__class_Oplus(T_a,V_a,V_b),V_c) = c_Divides_Odiv__class_Omod(T_a,c_Groups_Oplus__class_Oplus(T_a,c_Divides_Odiv__class_Omod(T_a,V_a,V_c),V_b),V_c) ) ).

fof(arity_RealDef__Oreal__Rings_Ono__zero__divisors,axiom,
    class_Rings_Ono__zero__divisors(tc_RealDef_Oreal) ).

fof(fact_div__mult2__eq,axiom,
    ! [V_c,V_b,V_a] : c_Divides_Odiv__class_Odiv(tc_Nat_Onat,V_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_b),V_c)) = c_Divides_Odiv__class_Odiv(tc_Nat_Onat,c_Divides_Odiv__class_Odiv(tc_Nat_Onat,V_a,V_b),V_c) ).

fof(fact_mod__add__self2,axiom,
    ! [V_b,V_a,T_a] :
      ( c_Divides_Odiv__class_Omod(T_a,c_Groups_Oplus__class_Oplus(T_a,V_a,V_b),V_b) = c_Divides_Odiv__class_Omod(T_a,V_a,V_b)
     <= class_Divides_Osemiring__div(T_a) ) ).

fof(fact_one__le__power,axiom,
    ! [V_n,V_a,T_a] :
      ( ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Oone__class_Oone(T_a),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_n))
       <= c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Oone__class_Oone(T_a),V_a) )
     <= class_Rings_Olinordered__semidom(T_a) ) ).

fof(fact_int__one__le__iff__zero__less,axiom,
    ! [V_za_2] :
      ( c_Orderings_Oord__class_Oless(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_za_2)
    <=> c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Oone__class_Oone(tc_Int_Oint),V_za_2) ) ).

fof(fact_diff__pCons,axiom,
    ! [V_q,V_b,V_p,V_a,T_a] :
      ( c_Groups_Ominus__class_Ominus(tc_Polynomial_Opoly(T_a),c_Polynomial_OpCons(T_a,V_a,V_p),c_Polynomial_OpCons(T_a,V_b,V_q)) = c_Polynomial_OpCons(T_a,c_Groups_Ominus__class_Ominus(T_a,V_a,V_b),c_Groups_Ominus__class_Ominus(tc_Polynomial_Opoly(T_a),V_p,V_q))
     <= class_Groups_Oab__group__add(T_a) ) ).

fof(fact_abs__le__D1,axiom,
    ! [V_b,V_a,T_a] :
      ( class_Groups_Oordered__ab__group__add__abs(T_a)
     => ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Oabs__class_Oabs(T_a,V_a),V_b)
       => c_Orderings_Oord__class_Oless__eq(T_a,V_a,V_b) ) ) ).

fof(fact_gr0I,axiom,
    ! [V_n] :
      ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_n)
     <= c_Groups_Ozero__class_Ozero(tc_Nat_Onat) != V_n ) ).

fof(arity_RealDef__Oreal__Groups_Oordered__ab__group__add,axiom,
    class_Groups_Oordered__ab__group__add(tc_RealDef_Oreal) ).

fof(fact_linorder__neq__iff,axiom,
    ! [V_y_2,V_x_2,T_a] :
      ( class_Orderings_Olinorder(T_a)
     => ( ( c_Orderings_Oord__class_Oless(T_a,V_x_2,V_y_2)
          | c_Orderings_Oord__class_Oless(T_a,V_y_2,V_x_2) )
      <=> V_y_2 != V_x_2 ) ) ).

fof(fact_one__dvd,axiom,
    ! [V_a,T_a] :
      ( c_Rings_Odvd__class_Odvd(T_a,c_Groups_Oone__class_Oone(T_a),V_a)
     <= class_Rings_Ocomm__semiring__1(T_a) ) ).

fof(fact_nat__mult__eq__cancel__disj,axiom,
    ! [V_n_2,V_m_2,V_k_2] :
      ( ( V_k_2 = c_Groups_Ozero__class_Ozero(tc_Nat_Onat)
        | V_n_2 = V_m_2 )
    <=> hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_k_2),V_m_2) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_k_2),V_n_2) ) ).

fof(fact_order__less__asym,axiom,
    ! [V_y,V_x,T_a] :
      ( class_Orderings_Opreorder(T_a)
     => ( c_Orderings_Oord__class_Oless(T_a,V_x,V_y)
       => ~ c_Orderings_Oord__class_Oless(T_a,V_y,V_x) ) ) ).

fof(fact_real__root__eq__1__iff,axiom,
    ! [V_x_2,V_n_2] :
      ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_n_2)
     => ( V_x_2 = c_Groups_Oone__class_Oone(tc_RealDef_Oreal)
      <=> c_Groups_Oone__class_Oone(tc_RealDef_Oreal) = c_NthRoot_Oroot(V_n_2,V_x_2) ) ) ).

fof(arity_Polynomial__Opoly__Groups_Oordered__cancel__ab__semigroup__add,axiom,
    ! [T_1] :
      ( class_Groups_Oordered__cancel__ab__semigroup__add(tc_Polynomial_Opoly(T_1))
     <= class_Rings_Olinordered__idom(T_1) ) ).

fof(fact_add__lessD1,axiom,
    ! [V_k,V_j,V_i] :
      ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_i,V_k)
     <= c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_i,V_j),V_k) ) ).

fof(fact_inf__period_I3_J,axiom,
    ! [V_t_2,V_D_2,V_db_2,T_a] :
      ( ( c_Rings_Odvd__class_Odvd(T_a,V_db_2,V_D_2)
       => ! [B_x,B_k] :
            ( c_Rings_Odvd__class_Odvd(T_a,V_db_2,c_Groups_Oplus__class_Oplus(T_a,c_Groups_Ominus__class_Ominus(T_a,B_x,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),B_k),V_D_2)),V_t_2))
          <=> c_Rings_Odvd__class_Odvd(T_a,V_db_2,c_Groups_Oplus__class_Oplus(T_a,B_x,V_t_2)) ) )
     <= ( class_Rings_Ocomm__ring(T_a)
        & class_Rings_Odvd(T_a) ) ) ).

fof(fact_divide__strict__right__mono,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( ( ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_c)
         => c_Orderings_Oord__class_Oless(T_a,c_Rings_Oinverse__class_Odivide(T_a,V_a,V_c),c_Rings_Oinverse__class_Odivide(T_a,V_b,V_c)) )
       <= c_Orderings_Oord__class_Oless(T_a,V_a,V_b) )
     <= class_Fields_Olinordered__field(T_a) ) ).

fof(fact_zero__less__one,axiom,
    ! [T_a] :
      ( class_Rings_Olinordered__semidom(T_a)
     => c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),c_Groups_Oone__class_Oone(T_a)) ) ).

fof(fact_xt1_I9_J,axiom,
    ! [V_a,V_b,T_a] :
      ( ( c_Orderings_Oord__class_Oless(T_a,V_b,V_a)
       => ~ c_Orderings_Oord__class_Oless(T_a,V_a,V_b) )
     <= class_Orderings_Oorder(T_a) ) ).

fof(arity_Nat__Onat__Groups_Ocomm__monoid__add,axiom,
    class_Groups_Ocomm__monoid__add(tc_Nat_Onat) ).

fof(arity_Int__Oint__Orderings_Oorder,axiom,
    class_Orderings_Oorder(tc_Int_Oint) ).

fof(fact_zdiv__mono2__neg__lemma,axiom,
    ! [V_r_H,V_q_H,V_b_H,V_r,V_q,V_b] :
      ( c_Groups_Oplus__class_Oplus(tc_Int_Oint,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_b_H),V_q_H),V_r_H) = c_Groups_Oplus__class_Oplus(tc_Int_Oint,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_b),V_q),V_r)
     => ( c_Orderings_Oord__class_Oless(tc_Int_Oint,c_Groups_Oplus__class_Oplus(tc_Int_Oint,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_b_H),V_q_H),V_r_H),c_Groups_Ozero__class_Ozero(tc_Int_Oint))
       => ( c_Orderings_Oord__class_Oless(tc_Int_Oint,V_r,V_b)
         => ( c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_r_H)
           => ( ( c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,V_b_H,V_b)
               => c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,V_q_H,V_q) )
             <= c_Orderings_Oord__class_Oless(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_b_H) ) ) ) ) ) ).

fof(fact_zero__le__square,axiom,
    ! [V_a,T_a] :
      ( class_Rings_Olinordered__ring(T_a)
     => c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_a)) ) ).

fof(fact_diff__0__right,axiom,
    ! [V_a,T_a] :
      ( class_Groups_Ogroup__add(T_a)
     => c_Groups_Ominus__class_Ominus(T_a,V_a,c_Groups_Ozero__class_Ozero(T_a)) = V_a ) ).

fof(arity_Polynomial__Opoly__Rings_Oring__1__no__zero__divisors,axiom,
    ! [T_1] :
      ( class_Rings_Oring__1__no__zero__divisors(tc_Polynomial_Opoly(T_1))
     <= class_Rings_Oidom(T_1) ) ).

fof(fact_xt1_I11_J,axiom,
    ! [V_a,V_b,T_a] :
      ( ( ( c_Orderings_Oord__class_Oless(T_a,V_b,V_a)
         <= V_b != V_a )
       <= c_Orderings_Oord__class_Oless__eq(T_a,V_b,V_a) )
     <= class_Orderings_Oorder(T_a) ) ).

fof(arity_Polynomial__Opoly__Rings_Olinordered__comm__semiring__strict,axiom,
    ! [T_1] :
      ( class_Rings_Olinordered__idom(T_1)
     => class_Rings_Olinordered__comm__semiring__strict(tc_Polynomial_Opoly(T_1)) ) ).

fof(fact_zdiv__zero,axiom,
    ! [V_b] : c_Groups_Ozero__class_Ozero(tc_Int_Oint) = c_Divides_Odiv__class_Odiv(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_b) ).

fof(fact_sum__squares__ge__zero,axiom,
    ! [V_y,V_x,T_a] :
      ( class_Rings_Olinordered__ring(T_a)
     => c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_x),V_x),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_y),V_y))) ) ).

fof(fact_Nat__Transfer_Otransfer__nat__int__function__closures_I1_J,axiom,
    ! [V_y,V_x] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_x)
     => ( c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_y)
       => c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),c_Groups_Oplus__class_Oplus(tc_Int_Oint,V_x,V_y)) ) ) ).

fof(arity_Polynomial__Opoly__Rings_Ozero__neq__one,axiom,
    ! [T_1] :
      ( class_Rings_Ozero__neq__one(tc_Polynomial_Opoly(T_1))
     <= class_Rings_Ocomm__semiring__1(T_1) ) ).

fof(fact_natceiling__eq,axiom,
    ! [V_x,V_n] :
      ( ( c_RComplete_Onatceiling(V_x) = c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_n,c_Groups_Oone__class_Oone(tc_Nat_Onat))
       <= c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,V_x,c_Groups_Oplus__class_Oplus(tc_RealDef_Oreal,c_RealDef_Oreal(tc_Nat_Onat,V_n),c_Groups_Oone__class_Oone(tc_RealDef_Oreal))) )
     <= c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_RealDef_Oreal(tc_Nat_Onat,V_n),V_x) ) ).

fof(fact_norm__not__less__zero,axiom,
    ! [V_x,T_a] :
      ( class_RealVector_Oreal__normed__vector(T_a)
     => ~ c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_RealVector_Onorm__class_Onorm(T_a,V_x),c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)) ) ).

fof(fact_add__increasing,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_a)
       => ( c_Orderings_Oord__class_Oless__eq(T_a,V_b,V_c)
         => c_Orderings_Oord__class_Oless__eq(T_a,V_b,c_Groups_Oplus__class_Oplus(T_a,V_a,V_c)) ) )
     <= class_Groups_Oordered__comm__monoid__add(T_a) ) ).

fof(fact_nat__mod__eq__lemma,axiom,
    ! [V_y,V_n,V_x] :
      ( ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_y,V_x)
       => ? [B_q] : c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_y,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_n),B_q)) = V_x )
     <= c_Divides_Odiv__class_Omod(tc_Nat_Onat,V_x,V_n) = c_Divides_Odiv__class_Omod(tc_Nat_Onat,V_y,V_n) ) ).

fof(fact_real__of__nat__less__iff,axiom,
    ! [V_m_2,V_n_2] :
      ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_n_2,V_m_2)
    <=> c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_RealDef_Oreal(tc_Nat_Onat,V_n_2),c_RealDef_Oreal(tc_Nat_Onat,V_m_2)) ) ).

fof(fact_zero__less__power__nat__eq,axiom,
    ! [V_n_2,V_x_2] :
      ( ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_x_2)
        | c_Groups_Ozero__class_Ozero(tc_Nat_Onat) = V_n_2 )
    <=> c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),hAPP(hAPP(c_Power_Opower__class_Opower(tc_Nat_Onat),V_x_2),V_n_2)) ) ).

fof(fact_add__diff__cancel,axiom,
    ! [V_b,V_a,T_a] :
      ( c_Groups_Ominus__class_Ominus(T_a,c_Groups_Oplus__class_Oplus(T_a,V_a,V_b),V_b) = V_a
     <= class_Groups_Ogroup__add(T_a) ) ).

fof(fact_real__mult__right__cancel,axiom,
    ! [V_b_2,V_ab_2,V_ca_2] :
      ( ( V_b_2 = V_ab_2
      <=> hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),V_ab_2),V_ca_2) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),V_b_2),V_ca_2) )
     <= c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal) != V_ca_2 ) ).

fof(fact_norm__zero,axiom,
    ! [T_a] :
      ( class_RealVector_Oreal__normed__vector(T_a)
     => c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal) = c_RealVector_Onorm__class_Onorm(T_a,c_Groups_Ozero__class_Ozero(T_a)) ) ).

fof(fact_div__nonneg__neg__le0,axiom,
    ! [V_b,V_a] :
      ( ( c_Orderings_Oord__class_Oless(tc_Int_Oint,V_b,c_Groups_Ozero__class_Ozero(tc_Int_Oint))
       => c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Divides_Odiv__class_Odiv(tc_Int_Oint,V_a,V_b),c_Groups_Ozero__class_Ozero(tc_Int_Oint)) )
     <= c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_a) ) ).

fof(fact_mod__div__trivial,axiom,
    ! [V_b,V_a,T_a] :
      ( class_Divides_Osemiring__div(T_a)
     => c_Divides_Odiv__class_Odiv(T_a,c_Divides_Odiv__class_Omod(T_a,V_a,V_b),V_b) = c_Groups_Ozero__class_Ozero(T_a) ) ).

fof(fact_pcompose__0,axiom,
    ! [V_q,T_a] :
      ( class_Rings_Ocomm__semiring__0(T_a)
     => c_Polynomial_Opcompose(T_a,c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a)),V_q) = c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a)) ) ).

fof(fact_mult__poly__add__left,axiom,
    ! [V_r,V_q,V_p,T_a] :
      ( class_Rings_Ocomm__semiring__0(T_a)
     => hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Polynomial_Opoly(T_a)),c_Groups_Oplus__class_Oplus(tc_Polynomial_Opoly(T_a),V_p,V_q)),V_r) = c_Groups_Oplus__class_Oplus(tc_Polynomial_Opoly(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Polynomial_Opoly(T_a)),V_p),V_r),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Polynomial_Opoly(T_a)),V_q),V_r)) ) ).

fof(fact_ord__less__eq__trans,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( class_Orderings_Oord(T_a)
     => ( c_Orderings_Oord__class_Oless(T_a,V_a,V_b)
       => ( c_Orderings_Oord__class_Oless(T_a,V_a,V_c)
         <= V_b = V_c ) ) ) ).

fof(fact_mod__by__0,axiom,
    ! [V_a,T_a] :
      ( c_Divides_Odiv__class_Omod(T_a,V_a,c_Groups_Ozero__class_Ozero(T_a)) = V_a
     <= class_Divides_Osemiring__div(T_a) ) ).

fof(fact_divide__left__mono,axiom,
    ! [V_c,V_a,V_b,T_a] :
      ( class_Fields_Olinordered__field(T_a)
     => ( c_Orderings_Oord__class_Oless__eq(T_a,V_b,V_a)
       => ( ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b))
           => c_Orderings_Oord__class_Oless__eq(T_a,c_Rings_Oinverse__class_Odivide(T_a,V_c,V_a),c_Rings_Oinverse__class_Odivide(T_a,V_c,V_b)) )
         <= c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_c) ) ) ) ).

fof(arity_Complex__Ocomplex__Rings_Ocomm__semiring__1,axiom,
    class_Rings_Ocomm__semiring__1(tc_Complex_Ocomplex) ).

fof(fact_zdvd__mono,axiom,
    ! [V_t_2,V_m_2,V_k_2] :
      ( ( c_Rings_Odvd__class_Odvd(tc_Int_Oint,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_k_2),V_m_2),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_k_2),V_t_2))
      <=> c_Rings_Odvd__class_Odvd(tc_Int_Oint,V_m_2,V_t_2) )
     <= V_k_2 != c_Groups_Ozero__class_Ozero(tc_Int_Oint) ) ).

fof(fact_div__mult__self2,axiom,
    ! [V_c,V_a,V_b,T_a] :
      ( ( c_Groups_Oplus__class_Oplus(T_a,V_c,c_Divides_Odiv__class_Odiv(T_a,V_a,V_b)) = c_Divides_Odiv__class_Odiv(T_a,c_Groups_Oplus__class_Oplus(T_a,V_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b),V_c)),V_b)
       <= c_Groups_Ozero__class_Ozero(T_a) != V_b )
     <= class_Divides_Osemiring__div(T_a) ) ).

fof(fact_xt1_I3_J,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( ( V_a = V_b
       => ( c_Orderings_Oord__class_Oless__eq(T_a,V_c,V_b)
         => c_Orderings_Oord__class_Oless__eq(T_a,V_c,V_a) ) )
     <= class_Orderings_Oorder(T_a) ) ).

fof(fact_poly__rec_Osimps,axiom,
    ! [V_pa_2,V_ab_2,V_f_2,V_za_2,T_a,T_b] :
      ( class_Groups_Ozero(T_b)
     => hAPP(hAPP(hAPP(V_f_2,V_ab_2),V_pa_2),c_If(T_a,c_fequal(V_pa_2,c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_b))),V_za_2,c_Polynomial_Opoly__rec(T_a,T_b,V_za_2,V_f_2,V_pa_2))) = c_Polynomial_Opoly__rec(T_a,T_b,V_za_2,V_f_2,c_Polynomial_OpCons(T_b,V_ab_2,V_pa_2)) ) ).

fof(fact_field__le__mult__one__interval,axiom,
    ! [V_y,V_x,T_a] :
      ( class_Fields_Olinordered__field__inverse__zero(T_a)
     => ( ! [B_z] :
            ( ( c_Orderings_Oord__class_Oless(T_a,B_z,c_Groups_Oone__class_Oone(T_a))
             => c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),B_z),V_x),V_y) )
           <= c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),B_z) )
       => c_Orderings_Oord__class_Oless__eq(T_a,V_x,V_y) ) ) ).

fof(fact_power__Suc__less,axiom,
    ! [V_n,V_a,T_a] :
      ( class_Rings_Olinordered__semidom(T_a)
     => ( ( c_Orderings_Oord__class_Oless(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_n)),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_n))
         <= c_Orderings_Oord__class_Oless(T_a,V_a,c_Groups_Oone__class_Oone(T_a)) )
       <= c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_a) ) ) ).

fof(fact_add__strict__mono,axiom,
    ! [V_d,V_c,V_b,V_a,T_a] :
      ( class_Groups_Oordered__cancel__ab__semigroup__add(T_a)
     => ( ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Oplus__class_Oplus(T_a,V_a,V_c),c_Groups_Oplus__class_Oplus(T_a,V_b,V_d))
         <= c_Orderings_Oord__class_Oless(T_a,V_c,V_d) )
       <= c_Orderings_Oord__class_Oless(T_a,V_a,V_b) ) ) ).

fof(fact_zle__linear,axiom,
    ! [V_w,V_z] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,V_z,V_w)
      | c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,V_w,V_z) ) ).

fof(arity_RealDef__Oreal__Rings_Oordered__ring,axiom,
    class_Rings_Oordered__ring(tc_RealDef_Oreal) ).

fof(fact_norm__ratiotest__lemma,axiom,
    ! [V_y,V_x,V_c,T_a] :
      ( ( ( c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_RealVector_Onorm__class_Onorm(T_a,V_x),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),V_c),c_RealVector_Onorm__class_Onorm(T_a,V_y)))
         => c_Groups_Ozero__class_Ozero(T_a) = V_x )
       <= c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,V_c,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)) )
     <= class_RealVector_Oreal__normed__vector(T_a) ) ).

fof(fact_not__square__less__zero,axiom,
    ! [V_a,T_a] :
      ( ~ c_Orderings_Oord__class_Oless(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_a),c_Groups_Ozero__class_Ozero(T_a))
     <= class_Rings_Olinordered__ring(T_a) ) ).

fof(fact_mult__right_Odiff,axiom,
    ! [V_y,V_x,V_xa,T_a] :
      ( c_Groups_Ominus__class_Ominus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_xa),V_x),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_xa),V_y)) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_xa),c_Groups_Ominus__class_Ominus(T_a,V_x,V_y))
     <= class_RealVector_Oreal__normed__algebra(T_a) ) ).

fof(fact_linorder__less__linear,axiom,
    ! [V_y,V_x,T_a] :
      ( class_Orderings_Olinorder(T_a)
     => ( c_Orderings_Oord__class_Oless(T_a,V_y,V_x)
        | V_y = V_x
        | c_Orderings_Oord__class_Oless(T_a,V_x,V_y) ) ) ).

fof(arity_RealDef__Oreal__Rings_Ocomm__ring__1,axiom,
    class_Rings_Ocomm__ring__1(tc_RealDef_Oreal) ).

fof(fact_divide__self__if,axiom,
    ! [V_a,T_a] :
      ( class_Rings_Odivision__ring__inverse__zero(T_a)
     => ( ( c_Rings_Oinverse__class_Odivide(T_a,V_a,V_a) = c_Groups_Ozero__class_Ozero(T_a)
         <= V_a = c_Groups_Ozero__class_Ozero(T_a) )
        & ( c_Rings_Oinverse__class_Odivide(T_a,V_a,V_a) = c_Groups_Oone__class_Oone(T_a)
         <= V_a != c_Groups_Ozero__class_Ozero(T_a) ) ) ) ).

fof(fact_power__commutes,axiom,
    ! [V_n,V_a,T_a] :
      ( class_Groups_Omonoid__mult(T_a)
     => hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_n)),V_a) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_n)) ) ).

fof(fact_le__Suc__ex__iff,axiom,
    ! [V_l_2,V_k_2] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_k_2,V_l_2)
    <=> ? [B_n] : c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_k_2,B_n) = V_l_2 ) ).

fof(fact_power__0,axiom,
    ! [V_a,T_a] :
      ( class_Power_Opower(T_a)
     => hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),c_Groups_Ozero__class_Ozero(tc_Nat_Onat)) = c_Groups_Oone__class_Oone(T_a) ) ).

fof(fact_mult__less__cancel2,axiom,
    ! [V_n_2,V_k_2,V_m_2] :
      ( ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_m_2,V_n_2)
        & c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_k_2) )
    <=> c_Orderings_Oord__class_Oless(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_m_2),V_k_2),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_n_2),V_k_2)) ) ).

fof(fact_comm__semiring__1__class_Onormalizing__semiring__rules_I30_J,axiom,
    ! [V_q,V_y,V_x,T_a] :
      ( class_Rings_Ocomm__semiring__1(T_a)
     => hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_x),V_q)),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_y),V_q)) = hAPP(hAPP(c_Power_Opower__class_Opower(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_x),V_y)),V_q) ) ).

fof(fact_comm__semiring__1__class_Onormalizing__semiring__rules_I26_J,axiom,
    ! [V_q,V_p,V_x,T_a] :
      ( hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_x),c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_p,V_q)) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_x),V_p)),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_x),V_q))
     <= class_Rings_Ocomm__semiring__1(T_a) ) ).

fof(fact_mult__less__cancel__left__neg,axiom,
    ! [V_b_2,V_ab_2,V_ca_2,T_a] :
      ( ( ( c_Orderings_Oord__class_Oless(T_a,V_b_2,V_ab_2)
        <=> c_Orderings_Oord__class_Oless(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_ca_2),V_ab_2),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_ca_2),V_b_2)) )
       <= c_Orderings_Oord__class_Oless(T_a,V_ca_2,c_Groups_Ozero__class_Ozero(T_a)) )
     <= class_Rings_Olinordered__ring__strict(T_a) ) ).

fof(fact_mult__divide__mult__cancel__right,axiom,
    ! [V_b,V_a,V_c,T_a] :
      ( class_Fields_Ofield__inverse__zero(T_a)
     => ( c_Groups_Ozero__class_Ozero(T_a) != V_c
       => c_Rings_Oinverse__class_Odivide(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_c),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b),V_c)) = c_Rings_Oinverse__class_Odivide(T_a,V_a,V_b) ) ) ).

fof(arity_Int__Oint__Rings_Oordered__semiring,axiom,
    class_Rings_Oordered__semiring(tc_Int_Oint) ).

fof(fact_mult__less__le__imp__less,axiom,
    ! [V_d,V_c,V_b,V_a,T_a] :
      ( class_Rings_Olinordered__semiring__strict(T_a)
     => ( ( ( ( c_Orderings_Oord__class_Oless(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_c),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b),V_d))
             <= c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_c) )
           <= c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_a) )
         <= c_Orderings_Oord__class_Oless__eq(T_a,V_c,V_d) )
       <= c_Orderings_Oord__class_Oless(T_a,V_a,V_b) ) ) ).

fof(fact_poly__mult,axiom,
    ! [V_x,V_q,V_p,T_a] :
      ( hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),hAPP(c_Polynomial_Opoly(T_a,V_p),V_x)),hAPP(c_Polynomial_Opoly(T_a,V_q),V_x)) = hAPP(c_Polynomial_Opoly(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Polynomial_Opoly(T_a)),V_p),V_q)),V_x)
     <= class_Rings_Ocomm__semiring__0(T_a) ) ).

fof(fact_dvdI,axiom,
    ! [V_k,V_b,V_a,T_a] :
      ( class_Rings_Odvd(T_a)
     => ( V_a = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b),V_k)
       => c_Rings_Odvd__class_Odvd(T_a,V_b,V_a) ) ) ).

fof(fact_divide__nonneg__neg,axiom,
    ! [V_y,V_x,T_a] :
      ( class_Fields_Olinordered__field(T_a)
     => ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_x)
       => ( c_Orderings_Oord__class_Oless(T_a,V_y,c_Groups_Ozero__class_Ozero(T_a))
         => c_Orderings_Oord__class_Oless__eq(T_a,c_Rings_Oinverse__class_Odivide(T_a,V_x,V_y),c_Groups_Ozero__class_Ozero(T_a)) ) ) ) ).

fof(arity_Nat__Onat__Rings_Ozero__neq__one,axiom,
    class_Rings_Ozero__neq__one(tc_Nat_Onat) ).

fof(fact_divide__nonneg__pos,axiom,
    ! [V_y,V_x,T_a] :
      ( ( ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_y)
         => c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),c_Rings_Oinverse__class_Odivide(T_a,V_x,V_y)) )
       <= c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_x) )
     <= class_Fields_Olinordered__field(T_a) ) ).

fof(fact_comm__semiring__1__class_Onormalizing__semiring__rules_I17_J,axiom,
    ! [V_rx,V_ly,V_lx,T_a] :
      ( hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_lx),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_ly),V_rx)) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_lx),V_ly)),V_rx)
     <= class_Rings_Ocomm__semiring__1(T_a) ) ).

fof(fact_zmod__zdiv__equality,axiom,
    ! [V_b,V_a] : V_a = c_Groups_Oplus__class_Oplus(tc_Int_Oint,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_b),c_Divides_Odiv__class_Odiv(tc_Int_Oint,V_a,V_b)),c_Divides_Odiv__class_Omod(tc_Int_Oint,V_a,V_b)) ).

fof(arity_Polynomial__Opoly__Rings_Olinordered__semiring__strict,axiom,
    ! [T_1] :
      ( class_Rings_Olinordered__idom(T_1)
     => class_Rings_Olinordered__semiring__strict(tc_Polynomial_Opoly(T_1)) ) ).

fof(fact_dvd_Oless__trans,axiom,
    ! [V_z,V_y,V_x] :
      ( ( c_Rings_Odvd__class_Odvd(tc_Nat_Onat,V_x,V_y)
        & ~ c_Rings_Odvd__class_Odvd(tc_Nat_Onat,V_y,V_x) )
     => ( ( ~ c_Rings_Odvd__class_Odvd(tc_Nat_Onat,V_z,V_y)
          & c_Rings_Odvd__class_Odvd(tc_Nat_Onat,V_y,V_z) )
       => ( ~ c_Rings_Odvd__class_Odvd(tc_Nat_Onat,V_z,V_x)
          & c_Rings_Odvd__class_Odvd(tc_Nat_Onat,V_x,V_z) ) ) ) ).

fof(fact_mult__nonpos__nonpos,axiom,
    ! [V_b,V_a,T_a] :
      ( ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_b,c_Groups_Ozero__class_Ozero(T_a))
         => c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b)) )
       <= c_Orderings_Oord__class_Oless__eq(T_a,V_a,c_Groups_Ozero__class_Ozero(T_a)) )
     <= class_Rings_Oordered__ring(T_a) ) ).

fof(fact_mod__add__cong,axiom,
    ! [V_b_H,V_b,V_a_H,V_c,V_a,T_a] :
      ( ( ( c_Divides_Odiv__class_Omod(T_a,c_Groups_Oplus__class_Oplus(T_a,V_a,V_b),V_c) = c_Divides_Odiv__class_Omod(T_a,c_Groups_Oplus__class_Oplus(T_a,V_a_H,V_b_H),V_c)
         <= c_Divides_Odiv__class_Omod(T_a,V_b_H,V_c) = c_Divides_Odiv__class_Omod(T_a,V_b,V_c) )
       <= c_Divides_Odiv__class_Omod(T_a,V_a,V_c) = c_Divides_Odiv__class_Omod(T_a,V_a_H,V_c) )
     <= class_Divides_Osemiring__div(T_a) ) ).

fof(arity_Nat__Onat__Rings_Osemiring__0,axiom,
    class_Rings_Osemiring__0(tc_Nat_Onat) ).

fof(fact_div__self,axiom,
    ! [V_a,T_a] :
      ( ( c_Groups_Oone__class_Oone(T_a) = c_Divides_Odiv__class_Odiv(T_a,V_a,V_a)
       <= V_a != c_Groups_Ozero__class_Ozero(T_a) )
     <= class_Divides_Osemiring__div(T_a) ) ).

fof(fact_div__dvd__div,axiom,
    ! [V_ca_2,V_b_2,V_ab_2,T_a] :
      ( class_Divides_Osemiring__div(T_a)
     => ( c_Rings_Odvd__class_Odvd(T_a,V_ab_2,V_b_2)
       => ( ( c_Rings_Odvd__class_Odvd(T_a,V_b_2,V_ca_2)
          <=> c_Rings_Odvd__class_Odvd(T_a,c_Divides_Odiv__class_Odiv(T_a,V_b_2,V_ab_2),c_Divides_Odiv__class_Odiv(T_a,V_ca_2,V_ab_2)) )
         <= c_Rings_Odvd__class_Odvd(T_a,V_ab_2,V_ca_2) ) ) ) ).

fof(fact_diff__eq__diff__eq,axiom,
    ! [V_db_2,V_ca_2,V_b_2,V_ab_2,T_a] :
      ( ( ( V_ab_2 = V_b_2
        <=> V_ca_2 = V_db_2 )
       <= c_Groups_Ominus__class_Ominus(T_a,V_ca_2,V_db_2) = c_Groups_Ominus__class_Ominus(T_a,V_ab_2,V_b_2) )
     <= class_Groups_Oab__group__add(T_a) ) ).

fof(fact_div__add__self2,axiom,
    ! [V_a,V_b,T_a] :
      ( ( c_Divides_Odiv__class_Odiv(T_a,c_Groups_Oplus__class_Oplus(T_a,V_a,V_b),V_b) = c_Groups_Oplus__class_Oplus(T_a,c_Divides_Odiv__class_Odiv(T_a,V_a,V_b),c_Groups_Oone__class_Oone(T_a))
       <= c_Groups_Ozero__class_Ozero(T_a) != V_b )
     <= class_Divides_Osemiring__div(T_a) ) ).

fof(fact_add__less__imp__less__left,axiom,
    ! [V_b,V_a,V_c,T_a] :
      ( class_Groups_Oordered__ab__semigroup__add__imp__le(T_a)
     => ( c_Orderings_Oord__class_Oless(T_a,V_a,V_b)
       <= c_Orderings_Oord__class_Oless(T_a,c_Groups_Oplus__class_Oplus(T_a,V_c,V_a),c_Groups_Oplus__class_Oplus(T_a,V_c,V_b)) ) ) ).

fof(fact_sum__squares__gt__zero__iff,axiom,
    ! [V_y_2,V_x_2,T_a] :
      ( ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_x_2),V_x_2),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_y_2),V_y_2)))
      <=> ( c_Groups_Ozero__class_Ozero(T_a) != V_x_2
          | c_Groups_Ozero__class_Ozero(T_a) != V_y_2 ) )
     <= class_Rings_Olinordered__ring__strict(T_a) ) ).

fof(arity_Nat__Onat__Groups_Ocancel__semigroup__add,axiom,
    class_Groups_Ocancel__semigroup__add(tc_Nat_Onat) ).

fof(fact_pos__imp__zdiv__nonneg__iff,axiom,
    ! [V_ab_2,V_b_2] :
      ( c_Orderings_Oord__class_Oless(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_b_2)
     => ( c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),c_Divides_Odiv__class_Odiv(tc_Int_Oint,V_ab_2,V_b_2))
      <=> c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_ab_2) ) ) ).

fof(fact_zdiv__zadd1__eq,axiom,
    ! [V_c,V_b,V_a] : c_Groups_Oplus__class_Oplus(tc_Int_Oint,c_Groups_Oplus__class_Oplus(tc_Int_Oint,c_Divides_Odiv__class_Odiv(tc_Int_Oint,V_a,V_c),c_Divides_Odiv__class_Odiv(tc_Int_Oint,V_b,V_c)),c_Divides_Odiv__class_Odiv(tc_Int_Oint,c_Groups_Oplus__class_Oplus(tc_Int_Oint,c_Divides_Odiv__class_Omod(tc_Int_Oint,V_a,V_c),c_Divides_Odiv__class_Omod(tc_Int_Oint,V_b,V_c)),V_c)) = c_Divides_Odiv__class_Odiv(tc_Int_Oint,c_Groups_Oplus__class_Oplus(tc_Int_Oint,V_a,V_b),V_c) ).

fof(fact_double__add__le__zero__iff__single__add__le__zero,axiom,
    ! [V_ab_2,T_a] :
      ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_ab_2,c_Groups_Ozero__class_Ozero(T_a))
      <=> c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Oplus__class_Oplus(T_a,V_ab_2,V_ab_2),c_Groups_Ozero__class_Ozero(T_a)) )
     <= class_Groups_Olinordered__ab__group__add(T_a) ) ).

fof(arity_RealDef__Oreal__Fields_Ofield__inverse__zero,axiom,
    class_Fields_Ofield__inverse__zero(tc_RealDef_Oreal) ).

fof(fact_zero__le__zpower__abs,axiom,
    ! [V_n,V_x] : c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),hAPP(hAPP(c_Power_Opower__class_Opower(tc_Int_Oint),c_Groups_Oabs__class_Oabs(tc_Int_Oint,V_x)),V_n)) ).

fof(fact_abs__of__nonneg,axiom,
    ! [V_a,T_a] :
      ( class_Groups_Oordered__ab__group__add__abs(T_a)
     => ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_a)
       => c_Groups_Oabs__class_Oabs(T_a,V_a) = V_a ) ) ).

fof(arity_Polynomial__Opoly__Rings_Ocomm__ring__1,axiom,
    ! [T_1] :
      ( class_Rings_Ocomm__ring__1(tc_Polynomial_Opoly(T_1))
     <= class_Rings_Ocomm__ring__1(T_1) ) ).

fof(fact_power__add,axiom,
    ! [V_n,V_m,V_a,T_a] :
      ( hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_m)),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_n)) = hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_m,V_n))
     <= class_Groups_Omonoid__mult(T_a) ) ).

fof(arity_Int__Oint__Rings_Oring,axiom,
    class_Rings_Oring(tc_Int_Oint) ).

fof(fact_dvd_Oantisym,axiom,
    ! [V_y,V_x] :
      ( ( V_x = V_y
       <= c_Rings_Odvd__class_Odvd(tc_Nat_Onat,V_y,V_x) )
     <= c_Rings_Odvd__class_Odvd(tc_Nat_Onat,V_x,V_y) ) ).

fof(fact_zero__less__abs__iff,axiom,
    ! [V_ab_2,T_a] :
      ( class_Groups_Oordered__ab__group__add__abs(T_a)
     => ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),c_Groups_Oabs__class_Oabs(T_a,V_ab_2))
      <=> c_Groups_Ozero__class_Ozero(T_a) != V_ab_2 ) ) ).

fof(fact_divide__nonpos__neg,axiom,
    ! [V_y,V_x,T_a] :
      ( ( ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),c_Rings_Oinverse__class_Odivide(T_a,V_x,V_y))
         <= c_Orderings_Oord__class_Oless(T_a,V_y,c_Groups_Ozero__class_Ozero(T_a)) )
       <= c_Orderings_Oord__class_Oless__eq(T_a,V_x,c_Groups_Ozero__class_Ozero(T_a)) )
     <= class_Fields_Olinordered__field(T_a) ) ).

fof(arity_Int__Oint__Rings_Oring__1,axiom,
    class_Rings_Oring__1(tc_Int_Oint) ).

fof(fact_le__natfloor__eq,axiom,
    ! [V_ab_2,V_x_2] :
      ( ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_ab_2,c_RComplete_Onatfloor(V_x_2))
      <=> c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_RealDef_Oreal(tc_Nat_Onat,V_ab_2),V_x_2) )
     <= c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),V_x_2) ) ).

fof(fact_mult__eq__0__iff,axiom,
    ! [V_b_2,V_ab_2,T_a] :
      ( class_Rings_Oring__no__zero__divisors(T_a)
     => ( ( V_b_2 = c_Groups_Ozero__class_Ozero(T_a)
          | V_ab_2 = c_Groups_Ozero__class_Ozero(T_a) )
      <=> c_Groups_Ozero__class_Ozero(T_a) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_ab_2),V_b_2) ) ) ).

fof(fact_Divides_Otransfer__nat__int__function__closures_I2_J,axiom,
    ! [V_y,V_x] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_x)
     => ( c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_y)
       => c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),c_Divides_Odiv__class_Omod(tc_Int_Oint,V_x,V_y)) ) ) ).

fof(fact_mod__add__self1,axiom,
    ! [V_a,V_b,T_a] :
      ( class_Divides_Osemiring__div(T_a)
     => c_Divides_Odiv__class_Omod(T_a,V_a,V_b) = c_Divides_Odiv__class_Omod(T_a,c_Groups_Oplus__class_Oplus(T_a,V_b,V_a),V_b) ) ).

fof(fact_comm__semiring__1__class_Onormalizing__semiring__rules_I20_J,axiom,
    ! [V_d,V_c,V_b,V_a,T_a] :
      ( class_Rings_Ocomm__semiring__1(T_a)
     => c_Groups_Oplus__class_Oplus(T_a,c_Groups_Oplus__class_Oplus(T_a,V_a,V_b),c_Groups_Oplus__class_Oplus(T_a,V_c,V_d)) = c_Groups_Oplus__class_Oplus(T_a,c_Groups_Oplus__class_Oplus(T_a,V_a,V_c),c_Groups_Oplus__class_Oplus(T_a,V_b,V_d)) ) ).

fof(fact_dvd_Oantisym__conv,axiom,
    ! [V_x_2,V_y_2] :
      ( c_Rings_Odvd__class_Odvd(tc_Nat_Onat,V_y_2,V_x_2)
     => ( V_x_2 = V_y_2
      <=> c_Rings_Odvd__class_Odvd(tc_Nat_Onat,V_x_2,V_y_2) ) ) ).

fof(fact_add__leE,axiom,
    ! [V_n,V_k,V_m] :
      ( ~ ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m,V_n)
         => ~ c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_k,V_n) )
     <= c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_m,V_k),V_n) ) ).

fof(fact_mult__left__less__imp__less,axiom,
    ! [V_b,V_a,V_c,T_a] :
      ( class_Rings_Olinordered__semiring(T_a)
     => ( ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_c)
         => c_Orderings_Oord__class_Oless(T_a,V_a,V_b) )
       <= c_Orderings_Oord__class_Oless(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_c),V_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_c),V_b)) ) ) ).

fof(fact_mult_Oprod__diff__prod,axiom,
    ! [V_b,V_a,V_y,V_x,T_a] :
      ( c_Groups_Ominus__class_Ominus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_x),V_y),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b)) = c_Groups_Oplus__class_Oplus(T_a,c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Groups_Ominus__class_Ominus(T_a,V_x,V_a)),c_Groups_Ominus__class_Ominus(T_a,V_y,V_b)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Groups_Ominus__class_Ominus(T_a,V_x,V_a)),V_b)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),c_Groups_Ominus__class_Ominus(T_a,V_y,V_b)))
     <= class_RealVector_Oreal__normed__algebra(T_a) ) ).

fof(fact_mult__left__mono__neg,axiom,
    ! [V_c,V_a,V_b,T_a] :
      ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_b,V_a)
       => ( c_Orderings_Oord__class_Oless__eq(T_a,V_c,c_Groups_Ozero__class_Ozero(T_a))
         => c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_c),V_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_c),V_b)) ) )
     <= class_Rings_Oordered__ring(T_a) ) ).

fof(arity_Nat__Onat__Rings_Omult__zero,axiom,
    class_Rings_Omult__zero(tc_Nat_Onat) ).

fof(fact_pCons_Oprems,axiom,
    c_Polynomial_OpCons(tc_Complex_Ocomplex,v_c____,v_cs____) != c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(tc_Complex_Ocomplex)) ).

fof(fact_mult__le__mono,axiom,
    ! [V_l,V_k,V_j,V_i] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_i,V_j)
     => ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_i),V_k),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_j),V_l))
       <= c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_k,V_l) ) ) ).

fof(arity_Nat__Onat__Groups_Oab__semigroup__add,axiom,
    class_Groups_Oab__semigroup__add(tc_Nat_Onat) ).

fof(arity_Int__Oint__Rings_Oordered__comm__semiring,axiom,
    class_Rings_Oordered__comm__semiring(tc_Int_Oint) ).

fof(fact_dvd__div__div__eq__mult,axiom,
    ! [V_db_2,V_b_2,V_ca_2,V_ab_2,T_a] :
      ( class_Divides_Osemiring__div(T_a)
     => ( c_Groups_Ozero__class_Ozero(T_a) != V_ab_2
       => ( ( c_Rings_Odvd__class_Odvd(T_a,V_ab_2,V_b_2)
           => ( c_Rings_Odvd__class_Odvd(T_a,V_ca_2,V_db_2)
             => ( c_Divides_Odiv__class_Odiv(T_a,V_b_2,V_ab_2) = c_Divides_Odiv__class_Odiv(T_a,V_db_2,V_ca_2)
              <=> hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b_2),V_ca_2) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_ab_2),V_db_2) ) ) )
         <= V_ca_2 != c_Groups_Ozero__class_Ozero(T_a) ) ) ) ).

fof(fact_order__eq__iff,axiom,
    ! [V_y_2,V_x_2,T_a] :
      ( ( V_y_2 = V_x_2
      <=> ( c_Orderings_Oord__class_Oless__eq(T_a,V_y_2,V_x_2)
          & c_Orderings_Oord__class_Oless__eq(T_a,V_x_2,V_y_2) ) )
     <= class_Orderings_Oorder(T_a) ) ).

fof(arity_RealDef__Oreal__Groups_Ogroup__add,axiom,
    class_Groups_Ogroup__add(tc_RealDef_Oreal) ).

fof(fact_mod__mult__self1__is__0,axiom,
    ! [V_a,V_b,T_a] :
      ( class_Divides_Osemiring__div(T_a)
     => c_Groups_Ozero__class_Ozero(T_a) = c_Divides_Odiv__class_Omod(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b),V_a),V_b) ) ).

fof(arity_Nat__Onat__Divides_Osemiring__div,axiom,
    class_Divides_Osemiring__div(tc_Nat_Onat) ).

fof(arity_Int__Oint__Rings_Oordered__cancel__semiring,axiom,
    class_Rings_Oordered__cancel__semiring(tc_Int_Oint) ).

fof(fact_divide_Obounded,axiom,
    ! [V_y,T_a] :
      ( class_RealVector_Oreal__normed__field(T_a)
     => ? [B_K] :
        ! [B_x] : c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_RealVector_Onorm__class_Onorm(T_a,c_Rings_Oinverse__class_Odivide(T_a,B_x,V_y)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),c_RealVector_Onorm__class_Onorm(T_a,B_x)),B_K)) ) ).

fof(fact_less__natfloor,axiom,
    ! [V_n,V_x] :
      ( c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),V_x)
     => ( c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,V_x,c_RealDef_Oreal(tc_Nat_Onat,V_n))
       => c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_RComplete_Onatfloor(V_x),V_n) ) ) ).

fof(fact_mult__poly__0__right,axiom,
    ! [V_p,T_a] :
      ( class_Rings_Ocomm__semiring__0(T_a)
     => c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a)) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Polynomial_Opoly(T_a)),V_p),c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a))) ) ).

fof(fact_div__le__mono2,axiom,
    ! [V_k,V_n,V_m] :
      ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_m)
     => ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m,V_n)
       => c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,c_Divides_Odiv__class_Odiv(tc_Nat_Onat,V_k,V_n),c_Divides_Odiv__class_Odiv(tc_Nat_Onat,V_k,V_m)) ) ) ).

fof(fact_inf__period_I4_J,axiom,
    ! [V_t_2,V_D_2,V_db_2,T_a] :
      ( ( class_Rings_Ocomm__ring(T_a)
        & class_Rings_Odvd(T_a) )
     => ( c_Rings_Odvd__class_Odvd(T_a,V_db_2,V_D_2)
       => ! [B_x,B_k] :
            ( c_Rings_Odvd__class_Odvd(T_a,V_db_2,c_Groups_Oplus__class_Oplus(T_a,c_Groups_Ominus__class_Ominus(T_a,B_x,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),B_k),V_D_2)),V_t_2))
          <=> c_Rings_Odvd__class_Odvd(T_a,V_db_2,c_Groups_Oplus__class_Oplus(T_a,B_x,V_t_2)) ) ) ) ).

fof(fact_xt1_I10_J,axiom,
    ! [V_z,V_x,V_y,T_a] :
      ( class_Orderings_Oorder(T_a)
     => ( c_Orderings_Oord__class_Oless(T_a,V_y,V_x)
       => ( c_Orderings_Oord__class_Oless(T_a,V_z,V_y)
         => c_Orderings_Oord__class_Oless(T_a,V_z,V_x) ) ) ) ).

fof(fact_mult__less__mono1,axiom,
    ! [V_k,V_j,V_i] :
      ( ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_k)
       => c_Orderings_Oord__class_Oless(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_i),V_k),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_j),V_k)) )
     <= c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_i,V_j) ) ).

fof(fact_neq0__conv,axiom,
    ! [V_n_2] :
      ( V_n_2 != c_Groups_Ozero__class_Ozero(tc_Nat_Onat)
    <=> c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_n_2) ) ).

fof(fact_convex__bound__lt,axiom,
    ! [V_v,V_u,V_y,V_a,V_x,T_a] :
      ( class_Rings_Olinordered__semiring__1__strict(T_a)
     => ( ( ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_u)
           => ( ( c_Groups_Oplus__class_Oplus(T_a,V_u,V_v) = c_Groups_Oone__class_Oone(T_a)
               => c_Orderings_Oord__class_Oless(T_a,c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_u),V_x),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_v),V_y)),V_a) )
             <= c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_v) ) )
         <= c_Orderings_Oord__class_Oless(T_a,V_y,V_a) )
       <= c_Orderings_Oord__class_Oless(T_a,V_x,V_a) ) ) ).

fof(fact_diff__divide__distrib,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( c_Groups_Ominus__class_Ominus(T_a,c_Rings_Oinverse__class_Odivide(T_a,V_a,V_c),c_Rings_Oinverse__class_Odivide(T_a,V_b,V_c)) = c_Rings_Oinverse__class_Odivide(T_a,c_Groups_Ominus__class_Ominus(T_a,V_a,V_b),V_c)
     <= class_Rings_Odivision__ring(T_a) ) ).

fof(fact_zdvd__zdiffD,axiom,
    ! [V_n,V_m,V_k] :
      ( c_Rings_Odvd__class_Odvd(tc_Int_Oint,V_k,c_Groups_Ominus__class_Ominus(tc_Int_Oint,V_m,V_n))
     => ( c_Rings_Odvd__class_Odvd(tc_Int_Oint,V_k,V_n)
       => c_Rings_Odvd__class_Odvd(tc_Int_Oint,V_k,V_m) ) ) ).

fof(fact_add__right__imp__eq,axiom,
    ! [V_c,V_a,V_b,T_a] :
      ( class_Groups_Ocancel__semigroup__add(T_a)
     => ( V_c = V_b
       <= c_Groups_Oplus__class_Oplus(T_a,V_b,V_a) = c_Groups_Oplus__class_Oplus(T_a,V_c,V_a) ) ) ).

fof(fact_mult_Oadd__right,axiom,
    ! [V_b_H,V_b,V_a,T_a] :
      ( class_RealVector_Oreal__normed__algebra(T_a)
     => c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b_H)) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),c_Groups_Oplus__class_Oplus(T_a,V_b,V_b_H)) ) ).

fof(arity_Polynomial__Opoly__Divides_Osemiring__div,axiom,
    ! [T_1] :
      ( class_Fields_Ofield(T_1)
     => class_Divides_Osemiring__div(tc_Polynomial_Opoly(T_1)) ) ).

fof(arity_RealDef__Oreal__Rings_Oordered__semiring,axiom,
    class_Rings_Oordered__semiring(tc_RealDef_Oreal) ).

fof(fact_divide_Ozero,axiom,
    ! [V_y,T_a] :
      ( class_RealVector_Oreal__normed__field(T_a)
     => c_Groups_Ozero__class_Ozero(T_a) = c_Rings_Oinverse__class_Odivide(T_a,c_Groups_Ozero__class_Ozero(T_a),V_y) ) ).

fof(fact_pos__mod__bound,axiom,
    ! [V_a,V_b] :
      ( c_Orderings_Oord__class_Oless(tc_Int_Oint,c_Divides_Odiv__class_Omod(tc_Int_Oint,V_a,V_b),V_b)
     <= c_Orderings_Oord__class_Oless(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_b) ) ).

fof(fact_abs__eq__mult,axiom,
    ! [V_b,V_a,T_a] :
      ( ( ( ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_b)
            | c_Orderings_Oord__class_Oless__eq(T_a,V_b,c_Groups_Ozero__class_Ozero(T_a)) )
          & ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_a)
            | c_Orderings_Oord__class_Oless__eq(T_a,V_a,c_Groups_Ozero__class_Ozero(T_a)) ) )
       => c_Groups_Oabs__class_Oabs(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b)) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Groups_Oabs__class_Oabs(T_a,V_a)),c_Groups_Oabs__class_Oabs(T_a,V_b)) )
     <= class_Rings_Oordered__ring__abs(T_a) ) ).

fof(arity_RealDef__Oreal__RealVector_Oreal__normed__div__algebra,axiom,
    class_RealVector_Oreal__normed__div__algebra(tc_RealDef_Oreal) ).

fof(arity_Polynomial__Opoly__Groups_Oordered__ab__semigroup__add__imp__le,axiom,
    ! [T_1] :
      ( class_Groups_Oordered__ab__semigroup__add__imp__le(tc_Polynomial_Opoly(T_1))
     <= class_Rings_Olinordered__idom(T_1) ) ).

fof(fact_norm__divide,axiom,
    ! [V_b,V_a,T_a] :
      ( c_Rings_Oinverse__class_Odivide(tc_RealDef_Oreal,c_RealVector_Onorm__class_Onorm(T_a,V_a),c_RealVector_Onorm__class_Onorm(T_a,V_b)) = c_RealVector_Onorm__class_Onorm(T_a,c_Rings_Oinverse__class_Odivide(T_a,V_a,V_b))
     <= ( class_Fields_Ofield__inverse__zero(T_a)
        & class_RealVector_Oreal__normed__field(T_a) ) ) ).

fof(arity_RealDef__Oreal__Rings_Oordered__cancel__semiring,axiom,
    class_Rings_Oordered__cancel__semiring(tc_RealDef_Oreal) ).

fof(arity_RealDef__Oreal__Rings_Olinordered__semiring__strict,axiom,
    class_Rings_Olinordered__semiring__strict(tc_RealDef_Oreal) ).

fof(arity_Polynomial__Opoly__Orderings_Oord,axiom,
    ! [T_1] :
      ( class_Rings_Olinordered__idom(T_1)
     => class_Orderings_Oord(tc_Polynomial_Opoly(T_1)) ) ).

fof(fact_diff__self,axiom,
    ! [V_a,T_a] :
      ( class_Groups_Ogroup__add(T_a)
     => c_Groups_Ozero__class_Ozero(T_a) = c_Groups_Ominus__class_Ominus(T_a,V_a,V_a) ) ).

fof(fact_natfloor__zero,axiom,
    c_RComplete_Onatfloor(c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)) = c_Groups_Ozero__class_Ozero(tc_Nat_Onat) ).

fof(fact_mult_Opos__bounded,axiom,
    ! [T_a] :
      ( class_RealVector_Oreal__normed__algebra(T_a)
     => ? [B_K] :
          ( ! [B_a,B_b] : c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_RealVector_Onorm__class_Onorm(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),B_a),B_b)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),c_RealVector_Onorm__class_Onorm(T_a,B_a)),c_RealVector_Onorm__class_Onorm(T_a,B_b))),B_K))
          & c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),B_K) ) ) ).

fof(arity_Polynomial__Opoly__Rings_Oordered__ring__abs,axiom,
    ! [T_1] :
      ( class_Rings_Olinordered__idom(T_1)
     => class_Rings_Oordered__ring__abs(tc_Polynomial_Opoly(T_1)) ) ).

fof(fact_zadd__zmult__distrib,axiom,
    ! [V_w,V_z2,V_z1] : hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),c_Groups_Oplus__class_Oplus(tc_Int_Oint,V_z1,V_z2)),V_w) = c_Groups_Oplus__class_Oplus(tc_Int_Oint,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_z1),V_w),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_z2),V_w)) ).

fof(fact_zero__less__mult__pos2,axiom,
    ! [V_a,V_b,T_a] :
      ( class_Rings_Olinordered__semiring__strict(T_a)
     => ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b),V_a))
       => ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_b)
         <= c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_a) ) ) ) ).

fof(arity_Nat__Onat__Groups_Oordered__ab__semigroup__add,axiom,
    class_Groups_Oordered__ab__semigroup__add(tc_Nat_Onat) ).

fof(arity_Nat__Onat__Rings_Osemiring,axiom,
    class_Rings_Osemiring(tc_Nat_Onat) ).

fof(arity_Polynomial__Opoly__Rings_Olinordered__ring,axiom,
    ! [T_1] :
      ( class_Rings_Olinordered__ring(tc_Polynomial_Opoly(T_1))
     <= class_Rings_Olinordered__idom(T_1) ) ).

fof(fact_ge__natfloor__plus__one__imp__gt,axiom,
    ! [V_n,V_z] :
      ( c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,V_z,c_RealDef_Oreal(tc_Nat_Onat,V_n))
     <= c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,c_RComplete_Onatfloor(V_z),c_Groups_Oone__class_Oone(tc_Nat_Onat)),V_n) ) ).

fof(fact_dvd__mult__cancel1,axiom,
    ! [V_n_2,V_m_2] :
      ( ( c_Rings_Odvd__class_Odvd(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_m_2),V_n_2),V_m_2)
      <=> c_Groups_Oone__class_Oone(tc_Nat_Onat) = V_n_2 )
     <= c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_m_2) ) ).

fof(fact_div__neg__pos__less0,axiom,
    ! [V_b,V_a] :
      ( c_Orderings_Oord__class_Oless(tc_Int_Oint,V_a,c_Groups_Ozero__class_Ozero(tc_Int_Oint))
     => ( c_Orderings_Oord__class_Oless(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_b)
       => c_Orderings_Oord__class_Oless(tc_Int_Oint,c_Divides_Odiv__class_Odiv(tc_Int_Oint,V_a,V_b),c_Groups_Ozero__class_Ozero(tc_Int_Oint)) ) ) ).

fof(fact_comm__semiring__1__class_Onormalizing__semiring__rules_I5_J,axiom,
    ! [V_a,T_a] :
      ( class_Rings_Ocomm__semiring__1(T_a)
     => c_Groups_Oplus__class_Oplus(T_a,c_Groups_Ozero__class_Ozero(T_a),V_a) = V_a ) ).

fof(arity_Nat__Onat__Groups_Oab__semigroup__mult,axiom,
    class_Groups_Oab__semigroup__mult(tc_Nat_Onat) ).

fof(fact_BseqI2_H,axiom,
    ! [V_K_2,V_X_2,V_N_2,T_a] :
      ( ( c_SEQ_OBseq(T_a,V_X_2)
       <= ! [B_n] :
            ( c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_RealVector_Onorm__class_Onorm(T_a,hAPP(V_X_2,B_n)),V_K_2)
           <= c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_N_2,B_n) ) )
     <= class_RealVector_Oreal__normed__vector(T_a) ) ).

fof(arity_Polynomial__Opoly__Rings_Oidom,axiom,
    ! [T_1] :
      ( class_Rings_Oidom(tc_Polynomial_Opoly(T_1))
     <= class_Rings_Oidom(T_1) ) ).

fof(fact_dvd__abs__iff,axiom,
    ! [V_k_2,V_m_2,T_a] :
      ( ( c_Rings_Odvd__class_Odvd(T_a,V_m_2,V_k_2)
      <=> c_Rings_Odvd__class_Odvd(T_a,V_m_2,c_Groups_Oabs__class_Oabs(T_a,V_k_2)) )
     <= class_Rings_Olinordered__idom(T_a) ) ).

fof(arity_Int__Oint__Rings_Olinordered__semiring__1,axiom,
    class_Rings_Olinordered__semiring__1(tc_Int_Oint) ).

fof(fact_mult__less__cancel__left__disj,axiom,
    ! [V_b_2,V_ab_2,V_ca_2,T_a] :
      ( class_Rings_Olinordered__ring__strict(T_a)
     => ( c_Orderings_Oord__class_Oless(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_ca_2),V_ab_2),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_ca_2),V_b_2))
      <=> ( ( c_Orderings_Oord__class_Oless(T_a,V_ca_2,c_Groups_Ozero__class_Ozero(T_a))
            & c_Orderings_Oord__class_Oless(T_a,V_b_2,V_ab_2) )
          | ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_ca_2)
            & c_Orderings_Oord__class_Oless(T_a,V_ab_2,V_b_2) ) ) ) ) ).

fof(fact_nat__mult__dvd__cancel1,axiom,
    ! [V_n_2,V_m_2,V_k_2] :
      ( ( c_Rings_Odvd__class_Odvd(tc_Nat_Onat,V_m_2,V_n_2)
      <=> c_Rings_Odvd__class_Odvd(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_k_2),V_m_2),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_k_2),V_n_2)) )
     <= c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_k_2) ) ).

fof(arity_RealDef__Oreal__Fields_Olinordered__field__inverse__zero,axiom,
    class_Fields_Olinordered__field__inverse__zero(tc_RealDef_Oreal) ).

fof(fact_split__neg__lemma,axiom,
    ! [V_n_2,V_P_2,V_k_2] :
      ( c_Orderings_Oord__class_Oless(tc_Int_Oint,V_k_2,c_Groups_Ozero__class_Ozero(tc_Int_Oint))
     => ( ! [B_i,B_j] :
            ( ( c_Orderings_Oord__class_Oless(tc_Int_Oint,V_k_2,B_j)
              & V_n_2 = c_Groups_Oplus__class_Oplus(tc_Int_Oint,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_k_2),B_i),B_j)
              & c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,B_j,c_Groups_Ozero__class_Ozero(tc_Int_Oint)) )
           => hBOOL(hAPP(hAPP(V_P_2,B_i),B_j)) )
      <=> hBOOL(hAPP(hAPP(V_P_2,c_Divides_Odiv__class_Odiv(tc_Int_Oint,V_n_2,V_k_2)),c_Divides_Odiv__class_Omod(tc_Int_Oint,V_n_2,V_k_2))) ) ) ).

fof(fact_power__one__right,axiom,
    ! [V_a,T_a] :
      ( class_Groups_Omonoid__mult(T_a)
     => V_a = hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),c_Groups_Oone__class_Oone(tc_Nat_Onat)) ) ).

fof(fact_comm__semiring__1__class_Onormalizing__semiring__rules_I22_J,axiom,
    ! [V_d,V_c,V_a,T_a] :
      ( c_Groups_Oplus__class_Oplus(T_a,V_c,c_Groups_Oplus__class_Oplus(T_a,V_a,V_d)) = c_Groups_Oplus__class_Oplus(T_a,V_a,c_Groups_Oplus__class_Oplus(T_a,V_c,V_d))
     <= class_Rings_Ocomm__semiring__1(T_a) ) ).

fof(arity_fun__Orderings_Oorder,axiom,
    ! [T_2,T_1] :
      ( class_Orderings_Oorder(tc_fun(T_2,T_1))
     <= class_Orderings_Oorder(T_1) ) ).

fof(fact_termination__basic__simps_I2_J,axiom,
    ! [V_y,V_z,V_x] :
      ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_x,V_z)
     => c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_x,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_y,V_z)) ) ).

fof(fact_nat__1__eq__mult__iff,axiom,
    ! [V_n_2,V_m_2] :
      ( ( V_n_2 = c_Groups_Oone__class_Oone(tc_Nat_Onat)
        & V_m_2 = c_Groups_Oone__class_Oone(tc_Nat_Onat) )
    <=> hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_m_2),V_n_2) = c_Groups_Oone__class_Oone(tc_Nat_Onat) ) ).

fof(fact_real__of__nat__div4,axiom,
    ! [V_x,V_n] : c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_RealDef_Oreal(tc_Nat_Onat,c_Divides_Odiv__class_Odiv(tc_Nat_Onat,V_n,V_x)),c_Rings_Oinverse__class_Odivide(tc_RealDef_Oreal,c_RealDef_Oreal(tc_Nat_Onat,V_n),c_RealDef_Oreal(tc_Nat_Onat,V_x))) ).

fof(arity_Int__Oint__Rings_Ozero__neq__one,axiom,
    class_Rings_Ozero__neq__one(tc_Int_Oint) ).

fof(fact_poly__pCons,axiom,
    ! [V_x,V_p,V_a,T_a] :
      ( c_Groups_Oplus__class_Oplus(T_a,V_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_x),hAPP(c_Polynomial_Opoly(T_a,V_p),V_x))) = hAPP(c_Polynomial_Opoly(T_a,c_Polynomial_OpCons(T_a,V_a,V_p)),V_x)
     <= class_Rings_Ocomm__semiring__0(T_a) ) ).

fof(fact_zmult__1__right,axiom,
    ! [V_z] : hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_z),c_Groups_Oone__class_Oone(tc_Int_Oint)) = V_z ).

fof(fact_mod__pos__neg__trivial,axiom,
    ! [V_b,V_a] :
      ( ( c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Oplus__class_Oplus(tc_Int_Oint,V_a,V_b),c_Groups_Ozero__class_Ozero(tc_Int_Oint))
       => c_Divides_Odiv__class_Omod(tc_Int_Oint,V_a,V_b) = c_Groups_Oplus__class_Oplus(tc_Int_Oint,V_a,V_b) )
     <= c_Orderings_Oord__class_Oless(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_a) ) ).

fof(arity_Nat__Onat__Rings_Ocomm__semiring__0,axiom,
    class_Rings_Ocomm__semiring__0(tc_Nat_Onat) ).

fof(fact_power__strict__mono,axiom,
    ! [V_n,V_b,V_a,T_a] :
      ( ( c_Orderings_Oord__class_Oless(T_a,V_a,V_b)
       => ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_a)
         => ( c_Orderings_Oord__class_Oless(T_a,hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_n),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_b),V_n))
           <= c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_n) ) ) )
     <= class_Rings_Olinordered__semidom(T_a) ) ).

fof(fact_comm__semiring__1__class_Onormalizing__semiring__rules_I34_J,axiom,
    ! [V_z,V_y,V_x,T_a] :
      ( class_Rings_Ocomm__semiring__1(T_a)
     => hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_x),c_Groups_Oplus__class_Oplus(T_a,V_y,V_z)) = c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_x),V_y),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_x),V_z)) ) ).

fof(fact_nat__le__real__less,axiom,
    ! [V_m_2,V_n_2] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_n_2,V_m_2)
    <=> c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_RealDef_Oreal(tc_Nat_Onat,V_n_2),c_Groups_Oplus__class_Oplus(tc_RealDef_Oreal,c_RealDef_Oreal(tc_Nat_Onat,V_m_2),c_Groups_Oone__class_Oone(tc_RealDef_Oreal))) ) ).

fof(fact_zdvd__zmod,axiom,
    ! [V_n,V_m,V_f] :
      ( c_Rings_Odvd__class_Odvd(tc_Int_Oint,V_f,V_m)
     => ( c_Rings_Odvd__class_Odvd(tc_Int_Oint,V_f,V_n)
       => c_Rings_Odvd__class_Odvd(tc_Int_Oint,V_f,c_Divides_Odiv__class_Omod(tc_Int_Oint,V_m,V_n)) ) ) ).

fof(fact_zpower__zadd__distrib,axiom,
    ! [V_z,V_y,V_x] : hAPP(hAPP(c_Power_Opower__class_Opower(tc_Int_Oint),V_x),c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_y,V_z)) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),hAPP(hAPP(c_Power_Opower__class_Opower(tc_Int_Oint),V_x),V_y)),hAPP(hAPP(c_Power_Opower__class_Opower(tc_Int_Oint),V_x),V_z)) ).

fof(fact_mult__strict__mono,axiom,
    ! [V_d,V_c,V_b,V_a,T_a] :
      ( class_Rings_Olinordered__semiring__strict(T_a)
     => ( ( ( ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_c)
             => c_Orderings_Oord__class_Oless(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_c),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b),V_d)) )
           <= c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_b) )
         <= c_Orderings_Oord__class_Oless(T_a,V_c,V_d) )
       <= c_Orderings_Oord__class_Oless(T_a,V_a,V_b) ) ) ).

fof(fact_order__less__imp__not__less,axiom,
    ! [V_y,V_x,T_a] :
      ( class_Orderings_Opreorder(T_a)
     => ( ~ c_Orderings_Oord__class_Oless(T_a,V_y,V_x)
       <= c_Orderings_Oord__class_Oless(T_a,V_x,V_y) ) ) ).

fof(fact_convex__bound__le,axiom,
    ! [V_v,V_u,V_y,V_a,V_x,T_a] :
      ( class_Rings_Olinordered__semiring__1(T_a)
     => ( ( ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_u)
           => ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_v)
             => ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_u),V_x),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_v),V_y)),V_a)
               <= c_Groups_Oone__class_Oone(T_a) = c_Groups_Oplus__class_Oplus(T_a,V_u,V_v) ) ) )
         <= c_Orderings_Oord__class_Oless__eq(T_a,V_y,V_a) )
       <= c_Orderings_Oord__class_Oless__eq(T_a,V_x,V_a) ) ) ).

fof(arity_RealDef__Oreal__Rings_Ocomm__semiring__1,axiom,
    class_Rings_Ocomm__semiring__1(tc_RealDef_Oreal) ).

fof(fact_crossproduct__noteq,axiom,
    ! [V_db_2,V_ca_2,V_b_2,V_ab_2,T_a] :
      ( ( ( V_ca_2 != V_db_2
          & V_ab_2 != V_b_2 )
      <=> c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_ab_2),V_ca_2),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b_2),V_db_2)) != c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_ab_2),V_db_2),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b_2),V_ca_2)) )
     <= class_Semiring__Normalization_Ocomm__semiring__1__cancel__crossproduct(T_a) ) ).

fof(fact_le__0__eq,axiom,
    ! [V_n_2] :
      ( V_n_2 = c_Groups_Ozero__class_Ozero(tc_Nat_Onat)
    <=> c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_n_2,c_Groups_Ozero__class_Ozero(tc_Nat_Onat)) ) ).

fof(fact_div__mod__equality,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( class_Divides_Osemiring__div(T_a)
     => c_Groups_Oplus__class_Oplus(T_a,V_a,V_c) = c_Groups_Oplus__class_Oplus(T_a,c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Divides_Odiv__class_Odiv(T_a,V_a,V_b)),V_b),c_Divides_Odiv__class_Omod(T_a,V_a,V_b)),V_c) ) ).

fof(fact_zle__diff1__eq,axiom,
    ! [V_za_2,V_w_2] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,V_w_2,c_Groups_Ominus__class_Ominus(tc_Int_Oint,V_za_2,c_Groups_Oone__class_Oone(tc_Int_Oint)))
    <=> c_Orderings_Oord__class_Oless(tc_Int_Oint,V_w_2,V_za_2) ) ).

fof(fact_diff__divide__eq__iff,axiom,
    ! [V_y,V_x,V_z,T_a] :
      ( class_Fields_Ofield(T_a)
     => ( c_Groups_Ominus__class_Ominus(T_a,V_x,c_Rings_Oinverse__class_Odivide(T_a,V_y,V_z)) = c_Rings_Oinverse__class_Odivide(T_a,c_Groups_Ominus__class_Ominus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_z),V_x),V_y),V_z)
       <= V_z != c_Groups_Ozero__class_Ozero(T_a) ) ) ).

fof(arity_Nat__Onat__Power_Opower,axiom,
    class_Power_Opower(tc_Nat_Onat) ).

fof(arity_RealDef__Oreal__Groups_Ocancel__ab__semigroup__add,axiom,
    class_Groups_Ocancel__ab__semigroup__add(tc_RealDef_Oreal) ).

fof(fact_nat__mult__eq__1__iff,axiom,
    ! [V_n_2,V_m_2] :
      ( hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_m_2),V_n_2) = c_Groups_Oone__class_Oone(tc_Nat_Onat)
    <=> ( V_n_2 = c_Groups_Oone__class_Oone(tc_Nat_Onat)
        & c_Groups_Oone__class_Oone(tc_Nat_Onat) = V_m_2 ) ) ).

fof(fact_zdvd__mult__div__cancel,axiom,
    ! [V_m,V_n] :
      ( c_Rings_Odvd__class_Odvd(tc_Int_Oint,V_n,V_m)
     => V_m = hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_n),c_Divides_Odiv__class_Odiv(tc_Int_Oint,V_m,V_n)) ) ).

fof(fact_less__bin__lemma,axiom,
    ! [V_l_2,V_k_2] :
      ( c_Orderings_Oord__class_Oless(tc_Int_Oint,V_k_2,V_l_2)
    <=> c_Orderings_Oord__class_Oless(tc_Int_Oint,c_Groups_Ominus__class_Ominus(tc_Int_Oint,V_k_2,V_l_2),c_Groups_Ozero__class_Ozero(tc_Int_Oint)) ) ).

fof(fact_order__le__neq__trans,axiom,
    ! [V_b,V_a,T_a] :
      ( class_Orderings_Oorder(T_a)
     => ( ( c_Orderings_Oord__class_Oless(T_a,V_a,V_b)
         <= V_b != V_a )
       <= c_Orderings_Oord__class_Oless__eq(T_a,V_a,V_b) ) ) ).

fof(arity_Polynomial__Opoly__Orderings_Olinorder,axiom,
    ! [T_1] :
      ( class_Rings_Olinordered__idom(T_1)
     => class_Orderings_Olinorder(tc_Polynomial_Opoly(T_1)) ) ).

fof(fact_abs__add__one__not__less__self,axiom,
    ! [V_x] : ~ c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_Groups_Oplus__class_Oplus(tc_RealDef_Oreal,c_Groups_Oabs__class_Oabs(tc_RealDef_Oreal,V_x),c_Groups_Oone__class_Oone(tc_RealDef_Oreal)),V_x) ).

fof(arity_Complex__Ocomplex__Rings_Ozero__neq__one,axiom,
    class_Rings_Ozero__neq__one(tc_Complex_Ocomplex) ).

fof(fact_zmult2__lemma__aux4,axiom,
    ! [V_q,V_b,V_r,V_c] :
      ( c_Orderings_Oord__class_Oless(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_c)
     => ( ( c_Orderings_Oord__class_Oless(tc_Int_Oint,V_r,V_b)
         => c_Orderings_Oord__class_Oless(tc_Int_Oint,c_Groups_Oplus__class_Oplus(tc_Int_Oint,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_b),c_Divides_Odiv__class_Omod(tc_Int_Oint,V_q,V_c)),V_r),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_b),V_c)) )
       <= c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_r) ) ) ).

fof(fact_natfloor__mono,axiom,
    ! [V_y,V_x] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,c_RComplete_Onatfloor(V_x),c_RComplete_Onatfloor(V_y))
     <= c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,V_x,V_y) ) ).

fof(arity_Nat__Onat__Groups_Ocomm__monoid__mult,axiom,
    class_Groups_Ocomm__monoid__mult(tc_Nat_Onat) ).

fof(fact_power__abs,axiom,
    ! [V_n,V_a,T_a] :
      ( hAPP(hAPP(c_Power_Opower__class_Opower(T_a),c_Groups_Oabs__class_Oabs(T_a,V_a)),V_n) = c_Groups_Oabs__class_Oabs(T_a,hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_n))
     <= class_Rings_Olinordered__idom(T_a) ) ).

fof(fact_dvd_Ole__neq__trans,axiom,
    ! [V_b,V_a] :
      ( ( V_b != V_a
       => ( ~ c_Rings_Odvd__class_Odvd(tc_Nat_Onat,V_b,V_a)
          & c_Rings_Odvd__class_Odvd(tc_Nat_Onat,V_a,V_b) ) )
     <= c_Rings_Odvd__class_Odvd(tc_Nat_Onat,V_a,V_b) ) ).

fof(fact_unique__quotient__lemma,axiom,
    ! [V_r,V_q,V_r_H,V_q_H,V_b] :
      ( ( ( ( c_Orderings_Oord__class_Oless(tc_Int_Oint,V_r,V_b)
           => c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,V_q_H,V_q) )
         <= c_Orderings_Oord__class_Oless(tc_Int_Oint,V_r_H,V_b) )
       <= c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_r_H) )
     <= c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Oplus__class_Oplus(tc_Int_Oint,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_b),V_q_H),V_r_H),c_Groups_Oplus__class_Oplus(tc_Int_Oint,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_b),V_q),V_r)) ) ).

fof(arity_Complex__Ocomplex__Groups_Ocancel__comm__monoid__add,axiom,
    class_Groups_Ocancel__comm__monoid__add(tc_Complex_Ocomplex) ).

fof(fact_pow__divides__pow__nat,axiom,
    ! [V_b,V_n,V_a] :
      ( c_Rings_Odvd__class_Odvd(tc_Nat_Onat,hAPP(hAPP(c_Power_Opower__class_Opower(tc_Nat_Onat),V_a),V_n),hAPP(hAPP(c_Power_Opower__class_Opower(tc_Nat_Onat),V_b),V_n))
     => ( c_Rings_Odvd__class_Odvd(tc_Nat_Onat,V_a,V_b)
       <= c_Groups_Ozero__class_Ozero(tc_Nat_Onat) != V_n ) ) ).

fof(fact_real__of__nat__1,axiom,
    c_Groups_Oone__class_Oone(tc_RealDef_Oreal) = c_RealDef_Oreal(tc_Nat_Onat,c_Groups_Oone__class_Oone(tc_Nat_Onat)) ).

fof(fact_Bseq__def,axiom,
    ! [V_X_2,T_a] :
      ( class_RealVector_Oreal__normed__vector(T_a)
     => ( ? [B_K] :
            ( c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),B_K)
            & ! [B_n] : c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_RealVector_Onorm__class_Onorm(T_a,hAPP(V_X_2,B_n)),B_K) )
      <=> c_SEQ_OBseq(T_a,V_X_2) ) ) ).

fof(fact_less__add__iff1,axiom,
    ! [V_db_2,V_b_2,V_ca_2,V_e_2,V_ab_2,T_a] :
      ( ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Groups_Ominus__class_Ominus(T_a,V_ab_2,V_b_2)),V_e_2),V_ca_2),V_db_2)
      <=> c_Orderings_Oord__class_Oless(T_a,c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_ab_2),V_e_2),V_ca_2),c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b_2),V_e_2),V_db_2)) )
     <= class_Rings_Oordered__ring(T_a) ) ).

fof(arity_Int__Oint__Rings_Olinordered__semiring__strict,axiom,
    class_Rings_Olinordered__semiring__strict(tc_Int_Oint) ).

fof(arity_Int__Oint__Rings_Olinordered__semiring__1__strict,axiom,
    class_Rings_Olinordered__semiring__1__strict(tc_Int_Oint) ).

fof(fact_order__antisym__conv,axiom,
    ! [V_x_2,V_y_2,T_a] :
      ( ( ( V_y_2 = V_x_2
        <=> c_Orderings_Oord__class_Oless__eq(T_a,V_x_2,V_y_2) )
       <= c_Orderings_Oord__class_Oless__eq(T_a,V_y_2,V_x_2) )
     <= class_Orderings_Oorder(T_a) ) ).

fof(fact_mult_Ocomm__neutral,axiom,
    ! [V_a,T_a] :
      ( class_Groups_Ocomm__monoid__mult(T_a)
     => V_a = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),c_Groups_Oone__class_Oone(T_a)) ) ).

fof(fact_zdiv__zmod__equality2,axiom,
    ! [V_k,V_b,V_a] : c_Groups_Oplus__class_Oplus(tc_Int_Oint,V_a,V_k) = c_Groups_Oplus__class_Oplus(tc_Int_Oint,c_Groups_Oplus__class_Oplus(tc_Int_Oint,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),c_Divides_Odiv__class_Odiv(tc_Int_Oint,V_a,V_b)),V_b),c_Divides_Odiv__class_Omod(tc_Int_Oint,V_a,V_b)),V_k) ).

fof(arity_RealDef__Oreal__Groups_Oab__group__add,axiom,
    class_Groups_Oab__group__add(tc_RealDef_Oreal) ).

fof(arity_Int__Oint__Rings_Omult__zero,axiom,
    class_Rings_Omult__zero(tc_Int_Oint) ).

fof(fact_mult__1,axiom,
    ! [V_a,T_a] :
      ( V_a = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Groups_Oone__class_Oone(T_a)),V_a)
     <= class_Groups_Ocomm__monoid__mult(T_a) ) ).

fof(fact_one__poly__def,axiom,
    ! [T_a] :
      ( c_Groups_Oone__class_Oone(tc_Polynomial_Opoly(T_a)) = c_Polynomial_OpCons(T_a,c_Groups_Oone__class_Oone(T_a),c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a)))
     <= class_Rings_Ocomm__semiring__1(T_a) ) ).

fof(fact_divide__right__mono__neg,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( class_Fields_Olinordered__field__inverse__zero(T_a)
     => ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_c,c_Groups_Ozero__class_Ozero(T_a))
         => c_Orderings_Oord__class_Oless__eq(T_a,c_Rings_Oinverse__class_Odivide(T_a,V_b,V_c),c_Rings_Oinverse__class_Odivide(T_a,V_a,V_c)) )
       <= c_Orderings_Oord__class_Oless__eq(T_a,V_a,V_b) ) ) ).

fof(arity_Complex__Ocomplex__Groups_Ocomm__monoid__mult,axiom,
    class_Groups_Ocomm__monoid__mult(tc_Complex_Ocomplex) ).

fof(fact_zmod__simps_I3_J,axiom,
    ! [V_c,V_b,V_a] : c_Divides_Odiv__class_Omod(tc_Int_Oint,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_a),V_b),V_c) = c_Divides_Odiv__class_Omod(tc_Int_Oint,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_a),c_Divides_Odiv__class_Omod(tc_Int_Oint,V_b,V_c)),V_c) ).

fof(arity_Polynomial__Opoly__Rings_Ocomm__semiring__0,axiom,
    ! [T_1] :
      ( class_Rings_Ocomm__semiring__0(T_1)
     => class_Rings_Ocomm__semiring__0(tc_Polynomial_Opoly(T_1)) ) ).

fof(arity_Int__Oint__Groups_Oab__group__add,axiom,
    class_Groups_Oab__group__add(tc_Int_Oint) ).

fof(fact_norm__mult__ineq,axiom,
    ! [V_y,V_x,T_a] :
      ( class_RealVector_Oreal__normed__algebra(T_a)
     => c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_RealVector_Onorm__class_Onorm(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_x),V_y)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),c_RealVector_Onorm__class_Onorm(T_a,V_x)),c_RealVector_Onorm__class_Onorm(T_a,V_y))) ) ).

fof(fact_real__mult__commute,axiom,
    ! [V_w,V_z] : hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),V_w),V_z) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),V_z),V_w) ).

fof(fact_comm__semiring__1__class_Onormalizing__semiring__rules_I3_J,axiom,
    ! [V_a,V_m,T_a] :
      ( c_Groups_Oplus__class_Oplus(T_a,V_m,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_m)) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Groups_Oplus__class_Oplus(T_a,V_a,c_Groups_Oone__class_Oone(T_a))),V_m)
     <= class_Rings_Ocomm__semiring__1(T_a) ) ).

fof(arity_Int__Oint__Rings_Olinordered__idom,axiom,
    class_Rings_Olinordered__idom(tc_Int_Oint) ).

fof(fact_real__natfloor__le,axiom,
    ! [V_x] :
      ( c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),V_x)
     => c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_RealDef_Oreal(tc_Nat_Onat,c_RComplete_Onatfloor(V_x)),V_x) ) ).

fof(fact_real__root__pos__unique,axiom,
    ! [V_x,V_y,V_n] :
      ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_n)
     => ( ( V_x = hAPP(hAPP(c_Power_Opower__class_Opower(tc_RealDef_Oreal),V_y),V_n)
         => V_y = c_NthRoot_Oroot(V_n,V_x) )
       <= c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),V_y) ) ) ).

fof(fact_le__add__iff1,axiom,
    ! [V_db_2,V_b_2,V_ca_2,V_e_2,V_ab_2,T_a] :
      ( class_Rings_Oordered__ring(T_a)
     => ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_ab_2),V_e_2),V_ca_2),c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b_2),V_e_2),V_db_2))
      <=> c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Groups_Ominus__class_Ominus(T_a,V_ab_2,V_b_2)),V_e_2),V_ca_2),V_db_2) ) ) ).

fof(fact_add__leD2,axiom,
    ! [V_n,V_k,V_m] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_m,V_k),V_n)
     => c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_k,V_n) ) ).

fof(arity_Complex__Ocomplex__Rings_Oidom,axiom,
    class_Rings_Oidom(tc_Complex_Ocomplex) ).

fof(fact_mult__le__less__imp__less,axiom,
    ! [V_d,V_c,V_b,V_a,T_a] :
      ( ( ( c_Orderings_Oord__class_Oless(T_a,V_c,V_d)
         => ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_a)
           => ( c_Orderings_Oord__class_Oless(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_c),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b),V_d))
             <= c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_c) ) ) )
       <= c_Orderings_Oord__class_Oless__eq(T_a,V_a,V_b) )
     <= class_Rings_Olinordered__semiring__strict(T_a) ) ).

fof(fact_add__nonneg__nonneg,axiom,
    ! [V_b,V_a,T_a] :
      ( class_Groups_Oordered__comm__monoid__add(T_a)
     => ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_a)
       => ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),c_Groups_Oplus__class_Oplus(T_a,V_a,V_b))
         <= c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_b) ) ) ) ).

fof(fact_BseqD,axiom,
    ! [V_X_2,T_a] :
      ( ( ? [B_K] :
            ( c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),B_K)
            & ! [B_n] : c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_RealVector_Onorm__class_Onorm(T_a,hAPP(V_X_2,B_n)),B_K) )
       <= c_SEQ_OBseq(T_a,V_X_2) )
     <= class_RealVector_Oreal__normed__vector(T_a) ) ).

fof(fact_less__eq__real__def,axiom,
    ! [V_y_2,V_x_2] :
      ( ( c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,V_x_2,V_y_2)
        | V_x_2 = V_y_2 )
    <=> c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,V_x_2,V_y_2) ) ).

fof(fact_less__add__one,axiom,
    ! [V_a,T_a] :
      ( c_Orderings_Oord__class_Oless(T_a,V_a,c_Groups_Oplus__class_Oplus(T_a,V_a,c_Groups_Oone__class_Oone(T_a)))
     <= class_Rings_Olinordered__semidom(T_a) ) ).

fof(fact_one__reorient,axiom,
    ! [V_x_2,T_a] :
      ( class_Groups_Oone(T_a)
     => ( V_x_2 = c_Groups_Oone__class_Oone(T_a)
      <=> c_Groups_Oone__class_Oone(T_a) = V_x_2 ) ) ).

fof(fact_abs__one,axiom,
    ! [T_a] :
      ( c_Groups_Oone__class_Oone(T_a) = c_Groups_Oabs__class_Oabs(T_a,c_Groups_Oone__class_Oone(T_a))
     <= class_Rings_Olinordered__idom(T_a) ) ).

fof(fact_add__neg__nonpos,axiom,
    ! [V_b,V_a,T_a] :
      ( ( c_Orderings_Oord__class_Oless(T_a,V_a,c_Groups_Ozero__class_Ozero(T_a))
       => ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Oplus__class_Oplus(T_a,V_a,V_b),c_Groups_Ozero__class_Ozero(T_a))
         <= c_Orderings_Oord__class_Oless__eq(T_a,V_b,c_Groups_Ozero__class_Ozero(T_a)) ) )
     <= class_Groups_Oordered__comm__monoid__add(T_a) ) ).

fof(arity_RealDef__Oreal__Rings_Olinordered__comm__semiring__strict,axiom,
    class_Rings_Olinordered__comm__semiring__strict(tc_RealDef_Oreal) ).

fof(fact_poly__div__mult__right,axiom,
    ! [V_z,V_y,V_x,T_a] :
      ( class_Fields_Ofield(T_a)
     => c_Divides_Odiv__class_Odiv(tc_Polynomial_Opoly(T_a),V_x,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Polynomial_Opoly(T_a)),V_y),V_z)) = c_Divides_Odiv__class_Odiv(tc_Polynomial_Opoly(T_a),c_Divides_Odiv__class_Odiv(tc_Polynomial_Opoly(T_a),V_x,V_y),V_z) ) ).

fof(fact_zero__le__double__add__iff__zero__le__single__add,axiom,
    ! [V_ab_2,T_a] :
      ( ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),c_Groups_Oplus__class_Oplus(T_a,V_ab_2,V_ab_2))
      <=> c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_ab_2) )
     <= class_Groups_Olinordered__ab__group__add(T_a) ) ).

fof(fact_mult__less__imp__less__right,axiom,
    ! [V_b,V_c,V_a,T_a] :
      ( ( ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_c)
         => c_Orderings_Oord__class_Oless(T_a,V_a,V_b) )
       <= c_Orderings_Oord__class_Oless(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_c),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b),V_c)) )
     <= class_Rings_Olinordered__semiring__strict(T_a) ) ).

fof(fact_natceiling__one,axiom,
    c_Groups_Oone__class_Oone(tc_Nat_Onat) = c_RComplete_Onatceiling(c_Groups_Oone__class_Oone(tc_RealDef_Oreal)) ).

fof(fact_add__leD1,axiom,
    ! [V_n,V_k,V_m] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m,V_n)
     <= c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_m,V_k),V_n) ) ).

fof(fact_zle__add1__eq__le,axiom,
    ! [V_za_2,V_w_2] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,V_w_2,V_za_2)
    <=> c_Orderings_Oord__class_Oless(tc_Int_Oint,V_w_2,c_Groups_Oplus__class_Oplus(tc_Int_Oint,V_za_2,c_Groups_Oone__class_Oone(tc_Int_Oint))) ) ).

fof(fact_mod__lemma,axiom,
    ! [V_q,V_b,V_r,V_c] :
      ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_c)
     => ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_r,V_b)
       => c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_b),c_Divides_Odiv__class_Omod(tc_Nat_Onat,V_q,V_c)),V_r),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_b),V_c)) ) ) ).

fof(fact_add__frac__eq,axiom,
    ! [V_w,V_x,V_z,V_y,T_a] :
      ( ( ( V_z != c_Groups_Ozero__class_Ozero(T_a)
         => c_Groups_Oplus__class_Oplus(T_a,c_Rings_Oinverse__class_Odivide(T_a,V_x,V_y),c_Rings_Oinverse__class_Odivide(T_a,V_w,V_z)) = c_Rings_Oinverse__class_Odivide(T_a,c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_x),V_z),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_w),V_y)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_y),V_z)) )
       <= V_y != c_Groups_Ozero__class_Ozero(T_a) )
     <= class_Fields_Ofield(T_a) ) ).

fof(arity_Int__Oint__Divides_Oring__div,axiom,
    class_Divides_Oring__div(tc_Int_Oint) ).

fof(fact_mult_Odiff__left,axiom,
    ! [V_b,V_a_H,V_a,T_a] :
      ( hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Groups_Ominus__class_Ominus(T_a,V_a,V_a_H)),V_b) = c_Groups_Ominus__class_Ominus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a_H),V_b))
     <= class_RealVector_Oreal__normed__algebra(T_a) ) ).

fof(fact_add__less__cancel__right,axiom,
    ! [V_b_2,V_ca_2,V_ab_2,T_a] :
      ( ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Oplus__class_Oplus(T_a,V_ab_2,V_ca_2),c_Groups_Oplus__class_Oplus(T_a,V_b_2,V_ca_2))
      <=> c_Orderings_Oord__class_Oless(T_a,V_ab_2,V_b_2) )
     <= class_Groups_Oordered__ab__semigroup__add__imp__le(T_a) ) ).

fof(fact_add__less__le__mono,axiom,
    ! [V_d,V_c,V_b,V_a,T_a] :
      ( class_Groups_Oordered__cancel__ab__semigroup__add(T_a)
     => ( ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Oplus__class_Oplus(T_a,V_a,V_c),c_Groups_Oplus__class_Oplus(T_a,V_b,V_d))
         <= c_Orderings_Oord__class_Oless__eq(T_a,V_c,V_d) )
       <= c_Orderings_Oord__class_Oless(T_a,V_a,V_b) ) ) ).

fof(fact_zmult2__lemma__aux3,axiom,
    ! [V_q,V_b,V_r,V_c] :
      ( c_Orderings_Oord__class_Oless(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_c)
     => ( c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_r)
       => ( c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),c_Groups_Oplus__class_Oplus(tc_Int_Oint,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_b),c_Divides_Odiv__class_Omod(tc_Int_Oint,V_q,V_c)),V_r))
         <= c_Orderings_Oord__class_Oless(tc_Int_Oint,V_r,V_b) ) ) ) ).

fof(fact_div__le__dividend,axiom,
    ! [V_n,V_m] : c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,c_Divides_Odiv__class_Odiv(tc_Nat_Onat,V_m,V_n),V_m) ).

fof(fact_le__antisym,axiom,
    ! [V_n,V_m] :
      ( ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_n,V_m)
       => V_n = V_m )
     <= c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m,V_n) ) ).

fof(fact_poly__0,axiom,
    ! [V_x,T_a] :
      ( class_Rings_Ocomm__semiring__0(T_a)
     => c_Groups_Ozero__class_Ozero(T_a) = hAPP(c_Polynomial_Opoly(T_a,c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a))),V_x) ) ).

fof(arity_RealDef__Oreal__Rings_Odivision__ring__inverse__zero,axiom,
    class_Rings_Odivision__ring__inverse__zero(tc_RealDef_Oreal) ).

fof(arity_Int__Oint__Rings_Ocomm__ring__1,axiom,
    class_Rings_Ocomm__ring__1(tc_Int_Oint) ).

fof(fact_trans__less__add1,axiom,
    ! [V_m,V_j,V_i] :
      ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_i,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_j,V_m))
     <= c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_i,V_j) ) ).

fof(fact_abs__zero,axiom,
    ! [T_a] :
      ( class_Groups_Oordered__ab__group__add__abs(T_a)
     => c_Groups_Oabs__class_Oabs(T_a,c_Groups_Ozero__class_Ozero(T_a)) = c_Groups_Ozero__class_Ozero(T_a) ) ).

fof(fact_neg__divide__less__eq,axiom,
    ! [V_ab_2,V_b_2,V_ca_2,T_a] :
      ( class_Fields_Olinordered__field(T_a)
     => ( c_Orderings_Oord__class_Oless(T_a,V_ca_2,c_Groups_Ozero__class_Ozero(T_a))
       => ( c_Orderings_Oord__class_Oless(T_a,c_Rings_Oinverse__class_Odivide(T_a,V_b_2,V_ca_2),V_ab_2)
        <=> c_Orderings_Oord__class_Oless(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_ab_2),V_ca_2),V_b_2) ) ) ) ).

fof(fact_add__le__imp__le__left,axiom,
    ! [V_b,V_a,V_c,T_a] :
      ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_a,V_b)
       <= c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Oplus__class_Oplus(T_a,V_c,V_a),c_Groups_Oplus__class_Oplus(T_a,V_c,V_b)) )
     <= class_Groups_Oordered__ab__semigroup__add__imp__le(T_a) ) ).

fof(fact_zero__le__natfloor,axiom,
    ! [V_x] : c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),c_RComplete_Onatfloor(V_x)) ).

fof(fact_mult__less__mono2,axiom,
    ! [V_k,V_j,V_i] :
      ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_i,V_j)
     => ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_k)
       => c_Orderings_Oord__class_Oless(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_k),V_i),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_k),V_j)) ) ) ).

fof(fact_power__eq__0__iff,axiom,
    ! [V_n_2,V_ab_2,T_a] :
      ( ( class_Power_Opower(T_a)
        & class_Rings_Ono__zero__divisors(T_a)
        & class_Rings_Ozero__neq__one(T_a)
        & class_Rings_Omult__zero(T_a) )
     => ( hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_ab_2),V_n_2) = c_Groups_Ozero__class_Ozero(T_a)
      <=> ( V_n_2 != c_Groups_Ozero__class_Ozero(tc_Nat_Onat)
          & V_ab_2 = c_Groups_Ozero__class_Ozero(T_a) ) ) ) ).

fof(fact_divide_Oadd,axiom,
    ! [V_ya,V_y,V_x,T_a] :
      ( c_Rings_Oinverse__class_Odivide(T_a,c_Groups_Oplus__class_Oplus(T_a,V_x,V_y),V_ya) = c_Groups_Oplus__class_Oplus(T_a,c_Rings_Oinverse__class_Odivide(T_a,V_x,V_ya),c_Rings_Oinverse__class_Odivide(T_a,V_y,V_ya))
     <= class_RealVector_Oreal__normed__field(T_a) ) ).

fof(fact_divide__zero__left,axiom,
    ! [V_a,T_a] :
      ( c_Groups_Ozero__class_Ozero(T_a) = c_Rings_Oinverse__class_Odivide(T_a,c_Groups_Ozero__class_Ozero(T_a),V_a)
     <= class_Rings_Odivision__ring(T_a) ) ).

fof(arity_Polynomial__Opoly__Groups_Ocomm__monoid__mult,axiom,
    ! [T_1] :
      ( class_Groups_Ocomm__monoid__mult(tc_Polynomial_Opoly(T_1))
     <= class_Rings_Ocomm__semiring__1(T_1) ) ).

fof(arity_RealDef__Oreal__Rings_Olinordered__ring__strict,axiom,
    class_Rings_Olinordered__ring__strict(tc_RealDef_Oreal) ).

fof(arity_Nat__Onat__Orderings_Oorder,axiom,
    class_Orderings_Oorder(tc_Nat_Onat) ).

fof(fact_incr__lemma,axiom,
    ! [V_x,V_z,V_d] :
      ( c_Orderings_Oord__class_Oless(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_d)
     => c_Orderings_Oord__class_Oless(tc_Int_Oint,V_z,c_Groups_Oplus__class_Oplus(tc_Int_Oint,V_x,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),c_Groups_Oplus__class_Oplus(tc_Int_Oint,c_Groups_Oabs__class_Oabs(tc_Int_Oint,c_Groups_Ominus__class_Ominus(tc_Int_Oint,V_x,V_z)),c_Groups_Oone__class_Oone(tc_Int_Oint))),V_d))) ) ).

fof(fact_lemmaCauchy,axiom,
    ! [V_X_2,V_M_2,T_a,T_b] :
      ( ( ! [B_n] :
            ( c_Orderings_Oord__class_Oless__eq(T_a,V_M_2,B_n)
           => c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_RealVector_Onorm__class_Onorm(T_b,c_Groups_Ominus__class_Ominus(T_b,hAPP(V_X_2,V_M_2),hAPP(V_X_2,B_n))),c_Groups_Oone__class_Oone(tc_RealDef_Oreal)) )
       => ! [B_n] :
            ( c_Orderings_Oord__class_Oless__eq(T_a,V_M_2,B_n)
           => c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_RealVector_Onorm__class_Onorm(T_b,hAPP(V_X_2,B_n)),c_Groups_Oplus__class_Oplus(tc_RealDef_Oreal,c_Groups_Oone__class_Oone(tc_RealDef_Oreal),c_RealVector_Onorm__class_Onorm(T_b,hAPP(V_X_2,V_M_2)))) ) )
     <= ( class_Orderings_Oord(T_a)
        & class_RealVector_Oreal__normed__vector(T_b) ) ) ).

fof(fact_mult__left_Ononneg__bounded,axiom,
    ! [V_y,T_a] :
      ( ? [B_K] :
          ( ! [B_x] : c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_RealVector_Onorm__class_Onorm(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),B_x),V_y)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),c_RealVector_Onorm__class_Onorm(T_a,B_x)),B_K))
          & c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),B_K) )
     <= class_RealVector_Oreal__normed__algebra(T_a) ) ).

fof(fact_abs__triangle__ineq,axiom,
    ! [V_b,V_a,T_a] :
      ( class_Groups_Oordered__ab__group__add__abs(T_a)
     => c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Oabs__class_Oabs(T_a,c_Groups_Oplus__class_Oplus(T_a,V_a,V_b)),c_Groups_Oplus__class_Oplus(T_a,c_Groups_Oabs__class_Oabs(T_a,V_a),c_Groups_Oabs__class_Oabs(T_a,V_b))) ) ).

fof(fact_real__of__nat__power,axiom,
    ! [V_n,V_m] : hAPP(hAPP(c_Power_Opower__class_Opower(tc_RealDef_Oreal),c_RealDef_Oreal(tc_Nat_Onat,V_m)),V_n) = c_RealDef_Oreal(tc_Nat_Onat,hAPP(hAPP(c_Power_Opower__class_Opower(tc_Nat_Onat),V_m),V_n)) ).

fof(fact_power__one__over,axiom,
    ! [V_n,V_a,T_a] :
      ( class_Fields_Ofield__inverse__zero(T_a)
     => c_Rings_Oinverse__class_Odivide(T_a,c_Groups_Oone__class_Oone(T_a),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_n)) = hAPP(hAPP(c_Power_Opower__class_Opower(T_a),c_Rings_Oinverse__class_Odivide(T_a,c_Groups_Oone__class_Oone(T_a),V_a)),V_n) ) ).

fof(fact_real__root__less__mono,axiom,
    ! [V_y,V_x,V_n] :
      ( ( c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_NthRoot_Oroot(V_n,V_x),c_NthRoot_Oroot(V_n,V_y))
       <= c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,V_x,V_y) )
     <= c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_n) ) ).

fof(fact_add__nonpos__neg,axiom,
    ! [V_b,V_a,T_a] :
      ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_a,c_Groups_Ozero__class_Ozero(T_a))
       => ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Oplus__class_Oplus(T_a,V_a,V_b),c_Groups_Ozero__class_Ozero(T_a))
         <= c_Orderings_Oord__class_Oless(T_a,V_b,c_Groups_Ozero__class_Ozero(T_a)) ) )
     <= class_Groups_Oordered__comm__monoid__add(T_a) ) ).

fof(fact_dvd__mult__left,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( ( c_Rings_Odvd__class_Odvd(T_a,V_a,V_c)
       <= c_Rings_Odvd__class_Odvd(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b),V_c) )
     <= class_Rings_Ocomm__semiring__1(T_a) ) ).

fof(fact_le__add1,axiom,
    ! [V_m,V_n] : c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_n,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_n,V_m)) ).

fof(fact_frac__less2,axiom,
    ! [V_z,V_w,V_y,V_x,T_a] :
      ( ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_x)
       => ( ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_w)
           => ( c_Orderings_Oord__class_Oless(T_a,V_w,V_z)
             => c_Orderings_Oord__class_Oless(T_a,c_Rings_Oinverse__class_Odivide(T_a,V_x,V_z),c_Rings_Oinverse__class_Odivide(T_a,V_y,V_w)) ) )
         <= c_Orderings_Oord__class_Oless__eq(T_a,V_x,V_y) ) )
     <= class_Fields_Olinordered__field(T_a) ) ).

fof(fact_real__mult__le__cancel__iff1,axiom,
    ! [V_y_2,V_x_2,V_za_2] :
      ( c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),V_za_2)
     => ( c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,V_x_2,V_y_2)
      <=> c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),V_x_2),V_za_2),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),V_y_2),V_za_2)) ) ) ).

fof(fact_split__mult__pos__le,axiom,
    ! [V_b,V_a,T_a] :
      ( class_Rings_Oordered__ring(T_a)
     => ( ( ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_b)
            & c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_a) )
          | ( c_Orderings_Oord__class_Oless__eq(T_a,V_b,c_Groups_Ozero__class_Ozero(T_a))
            & c_Orderings_Oord__class_Oless__eq(T_a,V_a,c_Groups_Ozero__class_Ozero(T_a)) ) )
       => c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b)) ) ) ).

fof(arity_RealDef__Oreal__RealVector_Oreal__field,axiom,
    class_RealVector_Oreal__field(tc_RealDef_Oreal) ).

fof(fact_cs0_H,axiom,
    v_cs____ = c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(tc_Complex_Ocomplex)) ).

fof(fact_dvd__mod__iff,axiom,
    ! [V_m_2,V_n_2,V_k_2,T_a] :
      ( class_Divides_Osemiring__div(T_a)
     => ( c_Rings_Odvd__class_Odvd(T_a,V_k_2,V_n_2)
       => ( c_Rings_Odvd__class_Odvd(T_a,V_k_2,V_m_2)
        <=> c_Rings_Odvd__class_Odvd(T_a,V_k_2,c_Divides_Odiv__class_Omod(T_a,V_m_2,V_n_2)) ) ) ) ).

fof(fact_not__leE,axiom,
    ! [V_x,V_y,T_a] :
      ( ( c_Orderings_Oord__class_Oless(T_a,V_x,V_y)
       <= ~ c_Orderings_Oord__class_Oless__eq(T_a,V_y,V_x) )
     <= class_Orderings_Olinorder(T_a) ) ).

fof(fact_natfloor__eq,axiom,
    ! [V_x,V_n] :
      ( ( V_n = c_RComplete_Onatfloor(V_x)
       <= c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,V_x,c_Groups_Oplus__class_Oplus(tc_RealDef_Oreal,c_RealDef_Oreal(tc_Nat_Onat,V_n),c_Groups_Oone__class_Oone(tc_RealDef_Oreal))) )
     <= c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_RealDef_Oreal(tc_Nat_Onat,V_n),V_x) ) ).

fof(fact_power__strict__increasing__iff,axiom,
    ! [V_y_2,V_x_2,V_b_2,T_a] :
      ( ( ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_x_2,V_y_2)
        <=> c_Orderings_Oord__class_Oless(T_a,hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_b_2),V_x_2),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_b_2),V_y_2)) )
       <= c_Orderings_Oord__class_Oless(T_a,c_Groups_Oone__class_Oone(T_a),V_b_2) )
     <= class_Rings_Olinordered__semidom(T_a) ) ).

fof(fact_nat__add__left__commute,axiom,
    ! [V_z,V_y,V_x] : c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_x,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_y,V_z)) = c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_y,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_x,V_z)) ).

fof(fact_split__pos__lemma,axiom,
    ! [V_n_2,V_P_2,V_k_2] :
      ( ( hBOOL(hAPP(hAPP(V_P_2,c_Divides_Odiv__class_Odiv(tc_Int_Oint,V_n_2,V_k_2)),c_Divides_Odiv__class_Omod(tc_Int_Oint,V_n_2,V_k_2)))
      <=> ! [B_i,B_j] :
            ( ( c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),B_j)
              & V_n_2 = c_Groups_Oplus__class_Oplus(tc_Int_Oint,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_k_2),B_i),B_j)
              & c_Orderings_Oord__class_Oless(tc_Int_Oint,B_j,V_k_2) )
           => hBOOL(hAPP(hAPP(V_P_2,B_i),B_j)) ) )
     <= c_Orderings_Oord__class_Oless(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_k_2) ) ).

fof(arity_Nat__Onat__Rings_Oordered__comm__semiring,axiom,
    class_Rings_Oordered__comm__semiring(tc_Nat_Onat) ).

fof(arity_Int__Oint__Divides_Osemiring__div,axiom,
    class_Divides_Osemiring__div(tc_Int_Oint) ).

fof(fact_zero__le__divide__iff,axiom,
    ! [V_b_2,V_ab_2,T_a] :
      ( ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),c_Rings_Oinverse__class_Odivide(T_a,V_ab_2,V_b_2))
      <=> ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_ab_2,c_Groups_Ozero__class_Ozero(T_a))
            & c_Orderings_Oord__class_Oless__eq(T_a,V_b_2,c_Groups_Ozero__class_Ozero(T_a)) )
          | ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_ab_2)
            & c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_b_2) ) ) )
     <= class_Fields_Olinordered__field__inverse__zero(T_a) ) ).

fof(fact_add__nonpos__nonpos,axiom,
    ! [V_b,V_a,T_a] :
      ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_a,c_Groups_Ozero__class_Ozero(T_a))
       => ( c_Orderings_Oord__class_Oless__eq(T_a,V_b,c_Groups_Ozero__class_Ozero(T_a))
         => c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Oplus__class_Oplus(T_a,V_a,V_b),c_Groups_Ozero__class_Ozero(T_a)) ) )
     <= class_Groups_Oordered__comm__monoid__add(T_a) ) ).

fof(fact_less__add__eq__less,axiom,
    ! [V_n,V_m,V_l,V_k] :
      ( ( c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_k,V_n) = c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_m,V_l)
       => c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_m,V_n) )
     <= c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_k,V_l) ) ).

fof(fact_abs__divide,axiom,
    ! [V_b,V_a,T_a] :
      ( class_Fields_Olinordered__field__inverse__zero(T_a)
     => c_Rings_Oinverse__class_Odivide(T_a,c_Groups_Oabs__class_Oabs(T_a,V_a),c_Groups_Oabs__class_Oabs(T_a,V_b)) = c_Groups_Oabs__class_Oabs(T_a,c_Rings_Oinverse__class_Odivide(T_a,V_a,V_b)) ) ).

fof(arity_Nat__Onat__Groups_Omonoid__mult,axiom,
    class_Groups_Omonoid__mult(tc_Nat_Onat) ).

fof(arity_Polynomial__Opoly__Rings_Oordered__ring,axiom,
    ! [T_1] :
      ( class_Rings_Oordered__ring(tc_Polynomial_Opoly(T_1))
     <= class_Rings_Olinordered__idom(T_1) ) ).

fof(arity_RealDef__Oreal__Groups_Oordered__ab__semigroup__add,axiom,
    class_Groups_Oordered__ab__semigroup__add(tc_RealDef_Oreal) ).

fof(fact_dvd_Oless__imp__not__less,axiom,
    ! [V_y,V_x] :
      ( ( ~ c_Rings_Odvd__class_Odvd(tc_Nat_Onat,V_y,V_x)
        & c_Rings_Odvd__class_Odvd(tc_Nat_Onat,V_x,V_y) )
     => ~ ( ~ c_Rings_Odvd__class_Odvd(tc_Nat_Onat,V_x,V_y)
          & c_Rings_Odvd__class_Odvd(tc_Nat_Onat,V_y,V_x) ) ) ).

fof(fact_le__add2,axiom,
    ! [V_m,V_n] : c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_n,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_m,V_n)) ).

fof(fact_dvd_Ole__less__trans,axiom,
    ! [V_z,V_y,V_x] :
      ( c_Rings_Odvd__class_Odvd(tc_Nat_Onat,V_x,V_y)
     => ( ( c_Rings_Odvd__class_Odvd(tc_Nat_Onat,V_x,V_z)
          & ~ c_Rings_Odvd__class_Odvd(tc_Nat_Onat,V_z,V_x) )
       <= ( ~ c_Rings_Odvd__class_Odvd(tc_Nat_Onat,V_z,V_y)
          & c_Rings_Odvd__class_Odvd(tc_Nat_Onat,V_y,V_z) ) ) ) ).

fof(arity_Complex__Ocomplex__Rings_Oring__no__zero__divisors,axiom,
    class_Rings_Oring__no__zero__divisors(tc_Complex_Ocomplex) ).

fof(arity_Int__Oint__Rings_Olinordered__semidom,axiom,
    class_Rings_Olinordered__semidom(tc_Int_Oint) ).

fof(fact_zmod__eq__0__iff,axiom,
    ! [V_db_2,V_m_2] :
      ( c_Groups_Ozero__class_Ozero(tc_Int_Oint) = c_Divides_Odiv__class_Omod(tc_Int_Oint,V_m_2,V_db_2)
    <=> ? [B_q] : V_m_2 = hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_db_2),B_q) ) ).

fof(fact_mult__zero__left,axiom,
    ! [V_a,T_a] :
      ( hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Groups_Ozero__class_Ozero(T_a)),V_a) = c_Groups_Ozero__class_Ozero(T_a)
     <= class_Rings_Omult__zero(T_a) ) ).

fof(fact_mod__less__divisor,axiom,
    ! [V_m,V_n] :
      ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Divides_Odiv__class_Omod(tc_Nat_Onat,V_m,V_n),V_n)
     <= c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_n) ) ).

fof(fact_real__root__ge__1__iff,axiom,
    ! [V_y_2,V_n_2] :
      ( ( c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Oone__class_Oone(tc_RealDef_Oreal),c_NthRoot_Oroot(V_n_2,V_y_2))
      <=> c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Oone__class_Oone(tc_RealDef_Oreal),V_y_2) )
     <= c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_n_2) ) ).

fof(fact_mod__add__eq,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( class_Divides_Osemiring__div(T_a)
     => c_Divides_Odiv__class_Omod(T_a,c_Groups_Oplus__class_Oplus(T_a,c_Divides_Odiv__class_Omod(T_a,V_a,V_c),c_Divides_Odiv__class_Omod(T_a,V_b,V_c)),V_c) = c_Divides_Odiv__class_Omod(T_a,c_Groups_Oplus__class_Oplus(T_a,V_a,V_b),V_c) ) ).

fof(arity_Polynomial__Opoly__Rings_Olinordered__semiring__1__strict,axiom,
    ! [T_1] :
      ( class_Rings_Olinordered__semiring__1__strict(tc_Polynomial_Opoly(T_1))
     <= class_Rings_Olinordered__idom(T_1) ) ).

fof(arity_RealDef__Oreal__Groups_Oab__semigroup__add,axiom,
    class_Groups_Oab__semigroup__add(tc_RealDef_Oreal) ).

fof(fact_mult__less__cancel__right__disj,axiom,
    ! [V_b_2,V_ca_2,V_ab_2,T_a] :
      ( ( ( ( c_Orderings_Oord__class_Oless(T_a,V_b_2,V_ab_2)
            & c_Orderings_Oord__class_Oless(T_a,V_ca_2,c_Groups_Ozero__class_Ozero(T_a)) )
          | ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_ca_2)
            & c_Orderings_Oord__class_Oless(T_a,V_ab_2,V_b_2) ) )
      <=> c_Orderings_Oord__class_Oless(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_ab_2),V_ca_2),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b_2),V_ca_2)) )
     <= class_Rings_Olinordered__ring__strict(T_a) ) ).

fof(fact_assms,axiom,
    c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(tc_Complex_Ocomplex)) != v_p ).

fof(fact_div__by__1,axiom,
    ! [V_a,T_a] :
      ( c_Divides_Odiv__class_Odiv(T_a,V_a,c_Groups_Oone__class_Oone(T_a)) = V_a
     <= class_Divides_Osemiring__div(T_a) ) ).

fof(fact_mod__mult__self1,axiom,
    ! [V_b,V_c,V_a,T_a] :
      ( class_Divides_Osemiring__div(T_a)
     => c_Divides_Odiv__class_Omod(T_a,c_Groups_Oplus__class_Oplus(T_a,V_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_c),V_b)),V_b) = c_Divides_Odiv__class_Omod(T_a,V_a,V_b) ) ).

fof(fact_mult__diff__mult,axiom,
    ! [V_b,V_a,V_y,V_x,T_a] :
      ( class_Rings_Oring(T_a)
     => c_Groups_Ominus__class_Ominus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_x),V_y),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b)) = c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_x),c_Groups_Ominus__class_Ominus(T_a,V_y,V_b)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Groups_Ominus__class_Ominus(T_a,V_x,V_a)),V_b)) ) ).

fof(fact_gt__half__sum,axiom,
    ! [V_b,V_a,T_a] :
      ( class_Fields_Olinordered__field(T_a)
     => ( c_Orderings_Oord__class_Oless(T_a,c_Rings_Oinverse__class_Odivide(T_a,c_Groups_Oplus__class_Oplus(T_a,V_a,V_b),c_Groups_Oplus__class_Oplus(T_a,c_Groups_Oone__class_Oone(T_a),c_Groups_Oone__class_Oone(T_a))),V_b)
       <= c_Orderings_Oord__class_Oless(T_a,V_a,V_b) ) ) ).

fof(fact_less__zeroE,axiom,
    ! [V_n] : ~ c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_n,c_Groups_Ozero__class_Ozero(tc_Nat_Onat)) ).

fof(fact_add__strict__left__mono,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Oplus__class_Oplus(T_a,V_c,V_a),c_Groups_Oplus__class_Oplus(T_a,V_c,V_b))
       <= c_Orderings_Oord__class_Oless(T_a,V_a,V_b) )
     <= class_Groups_Oordered__cancel__ab__semigroup__add(T_a) ) ).

fof(fact_mult__right__mono,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_a,V_b)
       => ( c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_c),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b),V_c))
         <= c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_c) ) )
     <= class_Rings_Oordered__semiring(T_a) ) ).

fof(fact_linorder__antisym__conv2,axiom,
    ! [V_y_2,V_x_2,T_a] :
      ( ( ( V_y_2 = V_x_2
        <=> ~ c_Orderings_Oord__class_Oless(T_a,V_x_2,V_y_2) )
       <= c_Orderings_Oord__class_Oless__eq(T_a,V_x_2,V_y_2) )
     <= class_Orderings_Olinorder(T_a) ) ).

fof(fact_ex__least__nat__less,axiom,
    ! [V_n_2,V_P_2] :
      ( ( hBOOL(hAPP(V_P_2,V_n_2))
       => ? [B_k] :
            ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,B_k,V_n_2)
            & ! [B_i] :
                ( ~ hBOOL(hAPP(V_P_2,B_i))
               <= c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,B_i,B_k) )
            & hBOOL(hAPP(V_P_2,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,B_k,c_Groups_Oone__class_Oone(tc_Nat_Onat)))) ) )
     <= ~ hBOOL(hAPP(V_P_2,c_Groups_Ozero__class_Ozero(tc_Nat_Onat))) ) ).

fof(fact_abs__mult,axiom,
    ! [V_b,V_a,T_a] :
      ( class_Rings_Olinordered__idom(T_a)
     => c_Groups_Oabs__class_Oabs(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b)) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Groups_Oabs__class_Oabs(T_a,V_a)),c_Groups_Oabs__class_Oabs(T_a,V_b)) ) ).

fof(fact_real__root__gt__0__iff,axiom,
    ! [V_y_2,V_n_2] :
      ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_n_2)
     => ( c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),c_NthRoot_Oroot(V_n_2,V_y_2))
      <=> c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),V_y_2) ) ) ).

fof(fact_nat__dvd__1__iff__1,axiom,
    ! [V_m_2] :
      ( c_Groups_Oone__class_Oone(tc_Nat_Onat) = V_m_2
    <=> c_Rings_Odvd__class_Odvd(tc_Nat_Onat,V_m_2,c_Groups_Oone__class_Oone(tc_Nat_Onat)) ) ).

fof(fact_mult__right_Ononneg__bounded,axiom,
    ! [V_x,T_a] :
      ( class_RealVector_Oreal__normed__algebra(T_a)
     => ? [B_K] :
          ( ! [B_x] : c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_RealVector_Onorm__class_Onorm(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_x),B_x)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),c_RealVector_Onorm__class_Onorm(T_a,B_x)),B_K))
          & c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),B_K) ) ) ).

fof(fact_divide__zero,axiom,
    ! [V_a,T_a] :
      ( class_Rings_Odivision__ring__inverse__zero(T_a)
     => c_Groups_Ozero__class_Ozero(T_a) = c_Rings_Oinverse__class_Odivide(T_a,V_a,c_Groups_Ozero__class_Ozero(T_a)) ) ).

fof(fact_mult__left_Obounded,axiom,
    ! [V_y,T_a] :
      ( ? [B_K] :
        ! [B_x] : c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_RealVector_Onorm__class_Onorm(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),B_x),V_y)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),c_RealVector_Onorm__class_Onorm(T_a,B_x)),B_K))
     <= class_RealVector_Oreal__normed__algebra(T_a) ) ).

fof(fact_real__of__nat__le__iff,axiom,
    ! [V_m_2,V_n_2] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_n_2,V_m_2)
    <=> c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_RealDef_Oreal(tc_Nat_Onat,V_n_2),c_RealDef_Oreal(tc_Nat_Onat,V_m_2)) ) ).

fof(arity_RealDef__Oreal__Orderings_Opreorder,axiom,
    class_Orderings_Opreorder(tc_RealDef_Oreal) ).

fof(fact_comm__semiring__1__class_Onormalizing__semiring__rules_I13_J,axiom,
    ! [V_ry,V_rx,V_ly,V_lx,T_a] :
      ( class_Rings_Ocomm__semiring__1(T_a)
     => hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_lx),V_ly)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_rx),V_ry)) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_lx),V_rx)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_ly),V_ry)) ) ).

fof(fact_eq__divide__eq,axiom,
    ! [V_ca_2,V_b_2,V_ab_2,T_a] :
      ( class_Fields_Ofield__inverse__zero(T_a)
     => ( c_Rings_Oinverse__class_Odivide(T_a,V_b_2,V_ca_2) = V_ab_2
      <=> ( ( c_Groups_Ozero__class_Ozero(T_a) = V_ab_2
           <= V_ca_2 = c_Groups_Ozero__class_Ozero(T_a) )
          & ( hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_ab_2),V_ca_2) = V_b_2
           <= c_Groups_Ozero__class_Ozero(T_a) != V_ca_2 ) ) ) ) ).

fof(fact_pow__divides__eq__int,axiom,
    ! [V_b_2,V_ab_2,V_n_2] :
      ( c_Groups_Ozero__class_Ozero(tc_Nat_Onat) != V_n_2
     => ( c_Rings_Odvd__class_Odvd(tc_Int_Oint,hAPP(hAPP(c_Power_Opower__class_Opower(tc_Int_Oint),V_ab_2),V_n_2),hAPP(hAPP(c_Power_Opower__class_Opower(tc_Int_Oint),V_b_2),V_n_2))
      <=> c_Rings_Odvd__class_Odvd(tc_Int_Oint,V_ab_2,V_b_2) ) ) ).

fof(arity_Polynomial__Opoly__Rings_Oordered__comm__semiring,axiom,
    ! [T_1] :
      ( class_Rings_Oordered__comm__semiring(tc_Polynomial_Opoly(T_1))
     <= class_Rings_Olinordered__idom(T_1) ) ).

fof(fact_dvd_Oeq__iff,axiom,
    ! [V_y_2,V_x_2] :
      ( ( c_Rings_Odvd__class_Odvd(tc_Nat_Onat,V_x_2,V_y_2)
        & c_Rings_Odvd__class_Odvd(tc_Nat_Onat,V_y_2,V_x_2) )
    <=> V_x_2 = V_y_2 ) ).

fof(fact_divide__pos__neg,axiom,
    ! [V_y,V_x,T_a] :
      ( ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_x)
       => ( c_Orderings_Oord__class_Oless(T_a,V_y,c_Groups_Ozero__class_Ozero(T_a))
         => c_Orderings_Oord__class_Oless(T_a,c_Rings_Oinverse__class_Odivide(T_a,V_x,V_y),c_Groups_Ozero__class_Ozero(T_a)) ) )
     <= class_Fields_Olinordered__field(T_a) ) ).

fof(fact_add__scale__eq__noteq,axiom,
    ! [V_d,V_c,V_b,V_a,V_r,T_a] :
      ( ( V_r != c_Groups_Ozero__class_Ozero(T_a)
       => ( ( V_b = V_a
            & V_d != V_c )
         => c_Groups_Oplus__class_Oplus(T_a,V_b,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_r),V_d)) != c_Groups_Oplus__class_Oplus(T_a,V_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_r),V_c)) ) )
     <= class_Semiring__Normalization_Ocomm__semiring__1__cancel__crossproduct(T_a) ) ).

fof(fact_dvd_Ole__less,axiom,
    ! [V_y_2,V_x_2] :
      ( c_Rings_Odvd__class_Odvd(tc_Nat_Onat,V_x_2,V_y_2)
    <=> ( V_x_2 = V_y_2
        | ( ~ c_Rings_Odvd__class_Odvd(tc_Nat_Onat,V_y_2,V_x_2)
          & c_Rings_Odvd__class_Odvd(tc_Nat_Onat,V_x_2,V_y_2) ) ) ) ).

fof(fact_poly__power,axiom,
    ! [V_x,V_n,V_p,T_a] :
      ( hAPP(hAPP(c_Power_Opower__class_Opower(T_a),hAPP(c_Polynomial_Opoly(T_a,V_p),V_x)),V_n) = hAPP(c_Polynomial_Opoly(T_a,hAPP(hAPP(c_Power_Opower__class_Opower(tc_Polynomial_Opoly(T_a)),V_p),V_n)),V_x)
     <= class_Rings_Ocomm__semiring__1(T_a) ) ).

fof(fact_natfloor__div__nat,axiom,
    ! [V_y,V_x] :
      ( c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Oone__class_Oone(tc_RealDef_Oreal),V_x)
     => ( c_Divides_Odiv__class_Odiv(tc_Nat_Onat,c_RComplete_Onatfloor(V_x),V_y) = c_RComplete_Onatfloor(c_Rings_Oinverse__class_Odivide(tc_RealDef_Oreal,V_x,c_RealDef_Oreal(tc_Nat_Onat,V_y)))
       <= c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_y) ) ) ).

fof(fact_add__neg__neg,axiom,
    ! [V_b,V_a,T_a] :
      ( class_Groups_Oordered__comm__monoid__add(T_a)
     => ( ( c_Orderings_Oord__class_Oless(T_a,V_b,c_Groups_Ozero__class_Ozero(T_a))
         => c_Orderings_Oord__class_Oless(T_a,c_Groups_Oplus__class_Oplus(T_a,V_a,V_b),c_Groups_Ozero__class_Ozero(T_a)) )
       <= c_Orderings_Oord__class_Oless(T_a,V_a,c_Groups_Ozero__class_Ozero(T_a)) ) ) ).

fof(fact_real__root__le__0__iff,axiom,
    ! [V_x_2,V_n_2] :
      ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_n_2)
     => ( c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,V_x_2,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal))
      <=> c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_NthRoot_Oroot(V_n_2,V_x_2),c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)) ) ) ).

fof(arity_RealDef__Oreal__Rings_Ocomm__semiring,axiom,
    class_Rings_Ocomm__semiring(tc_RealDef_Oreal) ).

fof(fact_divide__diff__eq__iff,axiom,
    ! [V_y,V_x,V_z,T_a] :
      ( ( c_Rings_Oinverse__class_Odivide(T_a,c_Groups_Ominus__class_Ominus(T_a,V_x,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_z),V_y)),V_z) = c_Groups_Ominus__class_Ominus(T_a,c_Rings_Oinverse__class_Odivide(T_a,V_x,V_z),V_y)
       <= V_z != c_Groups_Ozero__class_Ozero(T_a) )
     <= class_Fields_Ofield(T_a) ) ).

fof(arity_Nat__Onat__Rings_Olinordered__semiring__strict,axiom,
    class_Rings_Olinordered__semiring__strict(tc_Nat_Onat) ).

fof(fact_dvd__mult,axiom,
    ! [V_b,V_c,V_a,T_a] :
      ( class_Rings_Ocomm__semiring__1(T_a)
     => ( c_Rings_Odvd__class_Odvd(T_a,V_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b),V_c))
       <= c_Rings_Odvd__class_Odvd(T_a,V_a,V_c) ) ) ).

fof(fact_rabs__ratiotest__lemma,axiom,
    ! [V_y,V_x,V_c] :
      ( c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,V_c,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal))
     => ( c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal) = V_x
       <= c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Oabs__class_Oabs(tc_RealDef_Oreal,V_x),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),V_c),c_Groups_Oabs__class_Oabs(tc_RealDef_Oreal,V_y))) ) ) ).

fof(fact_Nat__Transfer_Otransfer__nat__int__function__closures_I6_J,axiom,
    c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),c_Groups_Oone__class_Oone(tc_Int_Oint)) ).

fof(fact_realpow__pos__nth__unique,axiom,
    ! [V_a,V_n] :
      ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_n)
     => ( c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),V_a)
       => ? [B_x] :
            ( c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),B_x)
            & ! [B_y] :
                ( B_y = B_x
               <= ( hAPP(hAPP(c_Power_Opower__class_Opower(tc_RealDef_Oreal),B_y),V_n) = V_a
                  & c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),B_y) ) )
            & hAPP(hAPP(c_Power_Opower__class_Opower(tc_RealDef_Oreal),B_x),V_n) = V_a ) ) ) ).

fof(fact_abs__norm__cancel,axiom,
    ! [V_a,T_a] :
      ( c_Groups_Oabs__class_Oabs(tc_RealDef_Oreal,c_RealVector_Onorm__class_Onorm(T_a,V_a)) = c_RealVector_Onorm__class_Onorm(T_a,V_a)
     <= class_RealVector_Oreal__normed__vector(T_a) ) ).

fof(fact_DERIV__mult__lemma,axiom,
    ! [V_h,V_d,V_c,V_b,V_a,T_a] :
      ( c_Rings_Oinverse__class_Odivide(T_a,c_Groups_Ominus__class_Ominus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_c),V_d)),V_h) = c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),c_Rings_Oinverse__class_Odivide(T_a,c_Groups_Ominus__class_Ominus(T_a,V_b,V_d),V_h)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Rings_Oinverse__class_Odivide(T_a,c_Groups_Ominus__class_Ominus(T_a,V_a,V_c),V_h)),V_d))
     <= class_RealVector_Oreal__field(T_a) ) ).

fof(arity_Polynomial__Opoly__Groups_Omonoid__mult,axiom,
    ! [T_1] :
      ( class_Rings_Ocomm__semiring__1(T_1)
     => class_Groups_Omonoid__mult(tc_Polynomial_Opoly(T_1)) ) ).

fof(fact_unity__coeff__ex,axiom,
    ! [V_l_2,V_P_2,T_a] :
      ( ( class_Rings_Odvd(T_a)
        & class_Rings_Osemiring__0(T_a) )
     => ( ? [B_x] : hBOOL(hAPP(V_P_2,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_l_2),B_x)))
      <=> ? [B_x] :
            ( c_Rings_Odvd__class_Odvd(T_a,V_l_2,c_Groups_Oplus__class_Oplus(T_a,B_x,c_Groups_Ozero__class_Ozero(T_a)))
            & hBOOL(hAPP(V_P_2,B_x)) ) ) ) ).

fof(fact_zdvd__antisym__abs,axiom,
    ! [V_b,V_a] :
      ( ( c_Groups_Oabs__class_Oabs(tc_Int_Oint,V_b) = c_Groups_Oabs__class_Oabs(tc_Int_Oint,V_a)
       <= c_Rings_Odvd__class_Odvd(tc_Int_Oint,V_b,V_a) )
     <= c_Rings_Odvd__class_Odvd(tc_Int_Oint,V_a,V_b) ) ).

fof(fact_real__root__pow__pos,axiom,
    ! [V_x,V_n] :
      ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_n)
     => ( V_x = hAPP(hAPP(c_Power_Opower__class_Opower(tc_RealDef_Oreal),c_NthRoot_Oroot(V_n,V_x)),V_n)
       <= c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),V_x) ) ) ).

fof(fact_dvd_Oorder__refl,axiom,
    ! [V_x] : c_Rings_Odvd__class_Odvd(tc_Nat_Onat,V_x,V_x) ).

fof(fact_norm__mult__less,axiom,
    ! [V_s,V_y,V_r,V_x,T_a] :
      ( ( c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_RealVector_Onorm__class_Onorm(T_a,V_x),V_r)
       => ( c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_RealVector_Onorm__class_Onorm(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_x),V_y)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),V_r),V_s))
         <= c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_RealVector_Onorm__class_Onorm(T_a,V_y),V_s) ) )
     <= class_RealVector_Oreal__normed__algebra(T_a) ) ).

fof(arity_Nat__Onat__Rings_Oordered__semiring,axiom,
    class_Rings_Oordered__semiring(tc_Nat_Onat) ).

fof(fact_add__le__mono,axiom,
    ! [V_l,V_k,V_j,V_i] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_i,V_j)
     => ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_i,V_k),c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_j,V_l))
       <= c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_k,V_l) ) ) ).

fof(fact_poly__eq__iff,axiom,
    ! [V_q_2,V_pa_2,T_a] :
      ( ( class_Int_Oring__char__0(T_a)
        & class_Rings_Oidom(T_a) )
     => ( c_Polynomial_Opoly(T_a,V_q_2) = c_Polynomial_Opoly(T_a,V_pa_2)
      <=> V_pa_2 = V_q_2 ) ) ).

fof(arity_Complex__Ocomplex__Int_Oring__char__0,axiom,
    class_Int_Oring__char__0(tc_Complex_Ocomplex) ).

fof(fact_abs__mult__self,axiom,
    ! [V_a,T_a] :
      ( class_Rings_Olinordered__idom(T_a)
     => hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Groups_Oabs__class_Oabs(T_a,V_a)),c_Groups_Oabs__class_Oabs(T_a,V_a)) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_a) ) ).

fof(arity_Nat__Onat__Groups_Omonoid__add,axiom,
    class_Groups_Omonoid__add(tc_Nat_Onat) ).

fof(fact_ord__eq__less__trans,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( ( V_b = V_a
       => ( c_Orderings_Oord__class_Oless(T_a,V_b,V_c)
         => c_Orderings_Oord__class_Oless(T_a,V_a,V_c) ) )
     <= class_Orderings_Oord(T_a) ) ).

fof(fact_nat__mult__div__cancel__disj,axiom,
    ! [V_n,V_m,V_k] :
      ( ( c_Groups_Ozero__class_Ozero(tc_Nat_Onat) != V_k
       => c_Divides_Odiv__class_Odiv(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_k),V_m),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_k),V_n)) = c_Divides_Odiv__class_Odiv(tc_Nat_Onat,V_m,V_n) )
      & ( V_k = c_Groups_Ozero__class_Ozero(tc_Nat_Onat)
       => c_Divides_Odiv__class_Odiv(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_k),V_m),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_k),V_n)) = c_Groups_Ozero__class_Ozero(tc_Nat_Onat) ) ) ).

fof(arity_Int__Oint__Orderings_Oord,axiom,
    class_Orderings_Oord(tc_Int_Oint) ).

fof(fact_power__le__dvd,axiom,
    ! [V_m,V_b,V_n,V_a,T_a] :
      ( ( c_Rings_Odvd__class_Odvd(T_a,hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_n),V_b)
       => ( c_Rings_Odvd__class_Odvd(T_a,hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_m),V_b)
         <= c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m,V_n) ) )
     <= class_Rings_Ocomm__semiring__1(T_a) ) ).

fof(arity_Complex__Ocomplex__Rings_Odivision__ring__inverse__zero,axiom,
    class_Rings_Odivision__ring__inverse__zero(tc_Complex_Ocomplex) ).

fof(fact_dvd__triv__right,axiom,
    ! [V_b,V_a,T_a] :
      ( class_Rings_Ocomm__semiring__1(T_a)
     => c_Rings_Odvd__class_Odvd(T_a,V_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b),V_a)) ) ).

fof(fact_abs__div,axiom,
    ! [V_x,V_y] :
      ( c_Rings_Odvd__class_Odvd(tc_Int_Oint,V_y,V_x)
     => c_Groups_Oabs__class_Oabs(tc_Int_Oint,c_Divides_Odiv__class_Odiv(tc_Int_Oint,V_x,V_y)) = c_Divides_Odiv__class_Odiv(tc_Int_Oint,c_Groups_Oabs__class_Oabs(tc_Int_Oint,V_x),c_Groups_Oabs__class_Oabs(tc_Int_Oint,V_y)) ) ).

fof(fact_mod__self,axiom,
    ! [V_a,T_a] :
      ( class_Divides_Osemiring__div(T_a)
     => c_Groups_Ozero__class_Ozero(T_a) = c_Divides_Odiv__class_Omod(T_a,V_a,V_a) ) ).

fof(fact_comm__semiring__1__class_Onormalizing__semiring__rules_I24_J,axiom,
    ! [V_c,V_a,T_a] :
      ( class_Rings_Ocomm__semiring__1(T_a)
     => c_Groups_Oplus__class_Oplus(T_a,V_c,V_a) = c_Groups_Oplus__class_Oplus(T_a,V_a,V_c) ) ).

fof(fact_le__natfloor__eq__one,axiom,
    ! [V_x_2] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,c_Groups_Oone__class_Oone(tc_Nat_Onat),c_RComplete_Onatfloor(V_x_2))
    <=> c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Oone__class_Oone(tc_RealDef_Oreal),V_x_2) ) ).

fof(fact_div__0,axiom,
    ! [V_a,T_a] :
      ( class_Divides_Osemiring__div(T_a)
     => c_Groups_Ozero__class_Ozero(T_a) = c_Divides_Odiv__class_Odiv(T_a,c_Groups_Ozero__class_Ozero(T_a),V_a) ) ).

fof(fact_less__imp__neq,axiom,
    ! [V_y,V_x,T_a] :
      ( class_Orderings_Oorder(T_a)
     => ( c_Orderings_Oord__class_Oless(T_a,V_x,V_y)
       => V_x != V_y ) ) ).

fof(arity_Polynomial__Opoly__Groups_Oab__semigroup__add,axiom,
    ! [T_1] :
      ( class_Groups_Oab__semigroup__add(tc_Polynomial_Opoly(T_1))
     <= class_Groups_Ocomm__monoid__add(T_1) ) ).

fof(fact_dvd__eq__mod__eq__0,axiom,
    ! [V_b_2,V_ab_2,T_a] :
      ( ( c_Rings_Odvd__class_Odvd(T_a,V_ab_2,V_b_2)
      <=> c_Groups_Ozero__class_Ozero(T_a) = c_Divides_Odiv__class_Omod(T_a,V_b_2,V_ab_2) )
     <= class_Divides_Osemiring__div(T_a) ) ).

fof(fact_mult__le__mono2,axiom,
    ! [V_k,V_j,V_i] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_i,V_j)
     => c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_k),V_i),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_k),V_j)) ) ).

fof(fact_pos__less__divide__eq,axiom,
    ! [V_b_2,V_ab_2,V_ca_2,T_a] :
      ( class_Fields_Olinordered__field(T_a)
     => ( ( c_Orderings_Oord__class_Oless(T_a,V_ab_2,c_Rings_Oinverse__class_Odivide(T_a,V_b_2,V_ca_2))
        <=> c_Orderings_Oord__class_Oless(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_ab_2),V_ca_2),V_b_2) )
       <= c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_ca_2) ) ) ).

fof(fact_add__le__cancel__right,axiom,
    ! [V_b_2,V_ca_2,V_ab_2,T_a] :
      ( ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Oplus__class_Oplus(T_a,V_ab_2,V_ca_2),c_Groups_Oplus__class_Oplus(T_a,V_b_2,V_ca_2))
      <=> c_Orderings_Oord__class_Oless__eq(T_a,V_ab_2,V_b_2) )
     <= class_Groups_Oordered__ab__semigroup__add__imp__le(T_a) ) ).

fof(fact_comm__semiring__1__class_Onormalizing__semiring__rules_I1_J,axiom,
    ! [V_b,V_m,V_a,T_a] :
      ( c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_m),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b),V_m)) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Groups_Oplus__class_Oplus(T_a,V_a,V_b)),V_m)
     <= class_Rings_Ocomm__semiring__1(T_a) ) ).

fof(fact_not__add__less1,axiom,
    ! [V_j,V_i] : ~ c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_i,V_j),V_i) ).

fof(fact_dvd_Oorder__trans,axiom,
    ! [V_z,V_y,V_x] :
      ( c_Rings_Odvd__class_Odvd(tc_Nat_Onat,V_x,V_y)
     => ( c_Rings_Odvd__class_Odvd(tc_Nat_Onat,V_y,V_z)
       => c_Rings_Odvd__class_Odvd(tc_Nat_Onat,V_x,V_z) ) ) ).

fof(fact_real__of__nat__add,axiom,
    ! [V_n,V_m] : c_RealDef_Oreal(tc_Nat_Onat,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_m,V_n)) = c_Groups_Oplus__class_Oplus(tc_RealDef_Oreal,c_RealDef_Oreal(tc_Nat_Onat,V_m),c_RealDef_Oreal(tc_Nat_Onat,V_n)) ).

fof(fact_mult__imp__div__pos__le,axiom,
    ! [V_z,V_x,V_y,T_a] :
      ( ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_y)
       => ( c_Orderings_Oord__class_Oless__eq(T_a,c_Rings_Oinverse__class_Odivide(T_a,V_x,V_y),V_z)
         <= c_Orderings_Oord__class_Oless__eq(T_a,V_x,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_z),V_y)) ) )
     <= class_Fields_Olinordered__field(T_a) ) ).

fof(fact_incr__mult__lemma,axiom,
    ! [V_k_2,V_P_2,V_db_2] :
      ( ( ! [B_x] :
            ( hBOOL(hAPP(V_P_2,c_Groups_Oplus__class_Oplus(tc_Int_Oint,B_x,V_db_2)))
           <= hBOOL(hAPP(V_P_2,B_x)) )
       => ( c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_k_2)
         => ! [B_x] :
              ( hBOOL(hAPP(V_P_2,B_x))
             => hBOOL(hAPP(V_P_2,c_Groups_Oplus__class_Oplus(tc_Int_Oint,B_x,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_k_2),V_db_2)))) ) ) )
     <= c_Orderings_Oord__class_Oless(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_db_2) ) ).

fof(arity_RealDef__Oreal__Rings_Oring__no__zero__divisors,axiom,
    class_Rings_Oring__no__zero__divisors(tc_RealDef_Oreal) ).

fof(fact_mult__le__cancel__left__pos,axiom,
    ! [V_b_2,V_ab_2,V_ca_2,T_a] :
      ( ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_ca_2)
       => ( c_Orderings_Oord__class_Oless__eq(T_a,V_ab_2,V_b_2)
        <=> c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_ca_2),V_ab_2),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_ca_2),V_b_2)) ) )
     <= class_Rings_Olinordered__ring__strict(T_a) ) ).

fof(fact_pos__divide__less__eq,axiom,
    ! [V_ab_2,V_b_2,V_ca_2,T_a] :
      ( ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_ca_2)
       => ( c_Orderings_Oord__class_Oless(T_a,c_Rings_Oinverse__class_Odivide(T_a,V_b_2,V_ca_2),V_ab_2)
        <=> c_Orderings_Oord__class_Oless(T_a,V_b_2,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_ab_2),V_ca_2)) ) )
     <= class_Fields_Olinordered__field(T_a) ) ).

fof(fact_div__mult__self1,axiom,
    ! [V_c,V_a,V_b,T_a] :
      ( class_Divides_Osemiring__div(T_a)
     => ( c_Groups_Ozero__class_Ozero(T_a) != V_b
       => c_Divides_Odiv__class_Odiv(T_a,c_Groups_Oplus__class_Oplus(T_a,V_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_c),V_b)),V_b) = c_Groups_Oplus__class_Oplus(T_a,V_c,c_Divides_Odiv__class_Odiv(T_a,V_a,V_b)) ) ) ).

fof(fact_dvd__refl,axiom,
    ! [V_a,T_a] :
      ( class_Rings_Ocomm__semiring__1(T_a)
     => c_Rings_Odvd__class_Odvd(T_a,V_a,V_a) ) ).

fof(fact_mult__mono,axiom,
    ! [V_d,V_c,V_b,V_a,T_a] :
      ( class_Rings_Oordered__semiring(T_a)
     => ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_c,V_d)
         => ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_b)
           => ( c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_c),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b),V_d))
             <= c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_c) ) ) )
       <= c_Orderings_Oord__class_Oless__eq(T_a,V_a,V_b) ) ) ).

fof(arity_RealDef__Oreal__Groups_Ocancel__comm__monoid__add,axiom,
    class_Groups_Ocancel__comm__monoid__add(tc_RealDef_Oreal) ).

fof(fact__096cmod_A_Iz_A_K_Ac_J_A_060_061_Acmod_A_Iz_A_K_Ac_A_L_Aa_J_A_L_Acmod_Aa_096,axiom,
    c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_RealVector_Onorm__class_Onorm(tc_Complex_Ocomplex,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Complex_Ocomplex),v_z____),v_c____)),c_Groups_Oplus__class_Oplus(tc_RealDef_Oreal,c_RealVector_Onorm__class_Onorm(tc_Complex_Ocomplex,c_Groups_Oplus__class_Oplus(tc_Complex_Ocomplex,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Complex_Ocomplex),v_z____),v_c____),v_aa____)),c_RealVector_Onorm__class_Onorm(tc_Complex_Ocomplex,v_aa____))) ).

fof(fact_mod__diff__cong,axiom,
    ! [V_b_H,V_b,V_a_H,V_c,V_a,T_a] :
      ( class_Divides_Oring__div(T_a)
     => ( c_Divides_Odiv__class_Omod(T_a,V_a,V_c) = c_Divides_Odiv__class_Omod(T_a,V_a_H,V_c)
       => ( c_Divides_Odiv__class_Omod(T_a,c_Groups_Ominus__class_Ominus(T_a,V_a,V_b),V_c) = c_Divides_Odiv__class_Omod(T_a,c_Groups_Ominus__class_Ominus(T_a,V_a_H,V_b_H),V_c)
         <= c_Divides_Odiv__class_Omod(T_a,V_b,V_c) = c_Divides_Odiv__class_Omod(T_a,V_b_H,V_c) ) ) ) ).

fof(fact_div__power,axiom,
    ! [V_n,V_x,V_y,T_a] :
      ( ( hAPP(hAPP(c_Power_Opower__class_Opower(T_a),c_Divides_Odiv__class_Odiv(T_a,V_x,V_y)),V_n) = c_Divides_Odiv__class_Odiv(T_a,hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_x),V_n),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_y),V_n))
       <= c_Rings_Odvd__class_Odvd(T_a,V_y,V_x) )
     <= class_Divides_Osemiring__div(T_a) ) ).

fof(fact_real__less__def,axiom,
    ! [V_y_2,V_x_2] :
      ( ( c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,V_x_2,V_y_2)
        & V_y_2 != V_x_2 )
    <=> c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,V_x_2,V_y_2) ) ).

fof(fact_linorder__neqE,axiom,
    ! [V_y,V_x,T_a] :
      ( ( V_y != V_x
       => ( c_Orderings_Oord__class_Oless(T_a,V_y,V_x)
         <= ~ c_Orderings_Oord__class_Oless(T_a,V_x,V_y) ) )
     <= class_Orderings_Olinorder(T_a) ) ).

fof(fact_dvd__mult2,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( ( c_Rings_Odvd__class_Odvd(T_a,V_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b),V_c))
       <= c_Rings_Odvd__class_Odvd(T_a,V_a,V_b) )
     <= class_Rings_Ocomm__semiring__1(T_a) ) ).

fof(arity_RealDef__Oreal__Rings_Odvd,axiom,
    class_Rings_Odvd(tc_RealDef_Oreal) ).

fof(fact_abs__mult__less,axiom,
    ! [V_d,V_b,V_c,V_a,T_a] :
      ( ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Oabs__class_Oabs(T_a,V_a),V_c)
       => ( c_Orderings_Oord__class_Oless(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Groups_Oabs__class_Oabs(T_a,V_a)),c_Groups_Oabs__class_Oabs(T_a,V_b)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_c),V_d))
         <= c_Orderings_Oord__class_Oless(T_a,c_Groups_Oabs__class_Oabs(T_a,V_b),V_d) ) )
     <= class_Rings_Olinordered__idom(T_a) ) ).

fof(fact_div__add__self1,axiom,
    ! [V_a,V_b,T_a] :
      ( class_Divides_Osemiring__div(T_a)
     => ( c_Divides_Odiv__class_Odiv(T_a,c_Groups_Oplus__class_Oplus(T_a,V_b,V_a),V_b) = c_Groups_Oplus__class_Oplus(T_a,c_Divides_Odiv__class_Odiv(T_a,V_a,V_b),c_Groups_Oone__class_Oone(T_a))
       <= V_b != c_Groups_Ozero__class_Ozero(T_a) ) ) ).

fof(fact_zdvd__mult__cancel,axiom,
    ! [V_n,V_m,V_k] :
      ( ( c_Rings_Odvd__class_Odvd(tc_Int_Oint,V_m,V_n)
       <= c_Groups_Ozero__class_Ozero(tc_Int_Oint) != V_k )
     <= c_Rings_Odvd__class_Odvd(tc_Int_Oint,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_k),V_m),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_k),V_n)) ) ).

fof(arity_Int__Oint__Rings_Olinordered__semiring,axiom,
    class_Rings_Olinordered__semiring(tc_Int_Oint) ).

fof(fact_natceiling__real__of__nat,axiom,
    ! [V_n] : V_n = c_RComplete_Onatceiling(c_RealDef_Oreal(tc_Nat_Onat,V_n)) ).

fof(arity_Polynomial__Opoly__Groups_Ocancel__ab__semigroup__add,axiom,
    ! [T_1] :
      ( class_Groups_Ocancel__comm__monoid__add(T_1)
     => class_Groups_Ocancel__ab__semigroup__add(tc_Polynomial_Opoly(T_1)) ) ).

fof(fact_natfloor__real__of__nat,axiom,
    ! [V_n] : V_n = c_RComplete_Onatfloor(c_RealDef_Oreal(tc_Nat_Onat,V_n)) ).

fof(fact_add__divide__distrib,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( class_Rings_Odivision__ring(T_a)
     => c_Rings_Oinverse__class_Odivide(T_a,c_Groups_Oplus__class_Oplus(T_a,V_a,V_b),V_c) = c_Groups_Oplus__class_Oplus(T_a,c_Rings_Oinverse__class_Odivide(T_a,V_a,V_c),c_Rings_Oinverse__class_Odivide(T_a,V_b,V_c)) ) ).

fof(fact_eq__iff__diff__eq__0,axiom,
    ! [V_b_2,V_ab_2,T_a] :
      ( class_Groups_Oab__group__add(T_a)
     => ( c_Groups_Ozero__class_Ozero(T_a) = c_Groups_Ominus__class_Ominus(T_a,V_ab_2,V_b_2)
      <=> V_ab_2 = V_b_2 ) ) ).

fof(fact_zmod__simps_I2_J,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( class_Divides_Osemiring__div(T_a)
     => c_Divides_Odiv__class_Omod(T_a,c_Groups_Oplus__class_Oplus(T_a,V_a,V_b),V_c) = c_Divides_Odiv__class_Omod(T_a,c_Groups_Oplus__class_Oplus(T_a,V_a,c_Divides_Odiv__class_Omod(T_a,V_b,V_c)),V_c) ) ).

fof(fact_real__le__refl,axiom,
    ! [V_w] : c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,V_w,V_w) ).

fof(arity_Int__Oint__Groups_Oordered__comm__monoid__add,axiom,
    class_Groups_Oordered__comm__monoid__add(tc_Int_Oint) ).

fof(fact_le__neq__implies__less,axiom,
    ! [V_n,V_m] :
      ( ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_m,V_n)
       <= V_n != V_m )
     <= c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m,V_n) ) ).

fof(fact_mult__strict__right__mono__neg,axiom,
    ! [V_c,V_a,V_b,T_a] :
      ( class_Rings_Olinordered__ring__strict(T_a)
     => ( c_Orderings_Oord__class_Oless(T_a,V_b,V_a)
       => ( c_Orderings_Oord__class_Oless(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_c),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b),V_c))
         <= c_Orderings_Oord__class_Oless(T_a,V_c,c_Groups_Ozero__class_Ozero(T_a)) ) ) ) ).

fof(fact_eq__imp__le,axiom,
    ! [V_n,V_m] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m,V_n)
     <= V_n = V_m ) ).

fof(fact_div__less,axiom,
    ! [V_n,V_m] :
      ( c_Groups_Ozero__class_Ozero(tc_Nat_Onat) = c_Divides_Odiv__class_Odiv(tc_Nat_Onat,V_m,V_n)
     <= c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_m,V_n) ) ).

fof(fact_le__trans,axiom,
    ! [V_k,V_j,V_i] :
      ( ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_i,V_k)
       <= c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_j,V_k) )
     <= c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_i,V_j) ) ).

fof(fact_real__of__nat__zero,axiom,
    c_RealDef_Oreal(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat)) = c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal) ).

fof(fact_le__imp__power__dvd,axiom,
    ! [V_a,V_n,V_m,T_a] :
      ( class_Rings_Ocomm__semiring__1(T_a)
     => ( c_Rings_Odvd__class_Odvd(T_a,hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_m),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_n))
       <= c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m,V_n) ) ) ).

fof(fact_nat__add__left__cancel__le,axiom,
    ! [V_n_2,V_m_2,V_k_2] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m_2,V_n_2)
    <=> c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_k_2,V_m_2),c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_k_2,V_n_2)) ) ).

fof(fact_add__mono,axiom,
    ! [V_d,V_c,V_b,V_a,T_a] :
      ( class_Groups_Oordered__ab__semigroup__add(T_a)
     => ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_c,V_d)
         => c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Oplus__class_Oplus(T_a,V_a,V_c),c_Groups_Oplus__class_Oplus(T_a,V_b,V_d)) )
       <= c_Orderings_Oord__class_Oless__eq(T_a,V_a,V_b) ) ) ).

fof(fact_dvd_Oless__imp__neq,axiom,
    ! [V_y,V_x] :
      ( ( ~ c_Rings_Odvd__class_Odvd(tc_Nat_Onat,V_y,V_x)
        & c_Rings_Odvd__class_Odvd(tc_Nat_Onat,V_x,V_y) )
     => V_x != V_y ) ).

fof(fact_dvd__imp__mod__0,axiom,
    ! [V_b,V_a,T_a] :
      ( ( c_Rings_Odvd__class_Odvd(T_a,V_a,V_b)
       => c_Divides_Odiv__class_Omod(T_a,V_b,V_a) = c_Groups_Ozero__class_Ozero(T_a) )
     <= class_Divides_Osemiring__div(T_a) ) ).

fof(fact_neg__less__divide__eq,axiom,
    ! [V_b_2,V_ab_2,V_ca_2,T_a] :
      ( class_Fields_Olinordered__field(T_a)
     => ( c_Orderings_Oord__class_Oless(T_a,V_ca_2,c_Groups_Ozero__class_Ozero(T_a))
       => ( c_Orderings_Oord__class_Oless(T_a,V_ab_2,c_Rings_Oinverse__class_Odivide(T_a,V_b_2,V_ca_2))
        <=> c_Orderings_Oord__class_Oless(T_a,V_b_2,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_ab_2),V_ca_2)) ) ) ) ).

fof(fact_less__half__sum,axiom,
    ! [V_b,V_a,T_a] :
      ( ( c_Orderings_Oord__class_Oless(T_a,V_a,c_Rings_Oinverse__class_Odivide(T_a,c_Groups_Oplus__class_Oplus(T_a,V_a,V_b),c_Groups_Oplus__class_Oplus(T_a,c_Groups_Oone__class_Oone(T_a),c_Groups_Oone__class_Oone(T_a))))
       <= c_Orderings_Oord__class_Oless(T_a,V_a,V_b) )
     <= class_Fields_Olinordered__field(T_a) ) ).

fof(fact_mult__right__mono__neg,axiom,
    ! [V_c,V_a,V_b,T_a] :
      ( class_Rings_Oordered__ring(T_a)
     => ( c_Orderings_Oord__class_Oless__eq(T_a,V_b,V_a)
       => ( c_Orderings_Oord__class_Oless__eq(T_a,V_c,c_Groups_Ozero__class_Ozero(T_a))
         => c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_c),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b),V_c)) ) ) ) ).

fof(fact_dvd__mult__cancel__left,axiom,
    ! [V_b_2,V_ab_2,V_ca_2,T_a] :
      ( ( ( c_Rings_Odvd__class_Odvd(T_a,V_ab_2,V_b_2)
          | c_Groups_Ozero__class_Ozero(T_a) = V_ca_2 )
      <=> c_Rings_Odvd__class_Odvd(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_ca_2),V_ab_2),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_ca_2),V_b_2)) )
     <= class_Rings_Oidom(T_a) ) ).

fof(fact_gcd__lcm__complete__lattice__nat_Otop__greatest,axiom,
    ! [V_x] : c_Rings_Odvd__class_Odvd(tc_Nat_Onat,V_x,c_Groups_Ozero__class_Ozero(tc_Nat_Onat)) ).

fof(fact_gr__implies__not0,axiom,
    ! [V_n,V_m] :
      ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_m,V_n)
     => c_Groups_Ozero__class_Ozero(tc_Nat_Onat) != V_n ) ).

fof(arity_Complex__Ocomplex__Groups_Ozero,axiom,
    class_Groups_Ozero(tc_Complex_Ocomplex) ).

fof(arity_Complex__Ocomplex__Groups_Ocomm__monoid__add,axiom,
    class_Groups_Ocomm__monoid__add(tc_Complex_Ocomplex) ).

fof(fact_nat__less__real__le,axiom,
    ! [V_m_2,V_n_2] :
      ( c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Oplus__class_Oplus(tc_RealDef_Oreal,c_RealDef_Oreal(tc_Nat_Onat,V_n_2),c_Groups_Oone__class_Oone(tc_RealDef_Oreal)),c_RealDef_Oreal(tc_Nat_Onat,V_m_2))
    <=> c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_n_2,V_m_2) ) ).

fof(fact_divide__strict__right__mono__neg,axiom,
    ! [V_c,V_a,V_b,T_a] :
      ( class_Fields_Olinordered__field(T_a)
     => ( ( c_Orderings_Oord__class_Oless(T_a,V_c,c_Groups_Ozero__class_Ozero(T_a))
         => c_Orderings_Oord__class_Oless(T_a,c_Rings_Oinverse__class_Odivide(T_a,V_a,V_c),c_Rings_Oinverse__class_Odivide(T_a,V_b,V_c)) )
       <= c_Orderings_Oord__class_Oless(T_a,V_b,V_a) ) ) ).

fof(arity_Polynomial__Opoly__Rings_Ocomm__semiring__1,axiom,
    ! [T_1] :
      ( class_Rings_Ocomm__semiring__1(T_1)
     => class_Rings_Ocomm__semiring__1(tc_Polynomial_Opoly(T_1)) ) ).

fof(fact_divide__1,axiom,
    ! [V_a,T_a] :
      ( class_Rings_Odivision__ring(T_a)
     => V_a = c_Rings_Oinverse__class_Odivide(T_a,V_a,c_Groups_Oone__class_Oone(T_a)) ) ).

fof(fact_zle__refl,axiom,
    ! [V_w] : c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,V_w,V_w) ).

fof(fact_dvd__mult__cancel2,axiom,
    ! [V_n_2,V_m_2] :
      ( ( c_Groups_Oone__class_Oone(tc_Nat_Onat) = V_n_2
      <=> c_Rings_Odvd__class_Odvd(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_n_2),V_m_2),V_m_2) )
     <= c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_m_2) ) ).

fof(fact_nat__0__less__mult__iff,axiom,
    ! [V_n_2,V_m_2] :
      ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_m_2),V_n_2))
    <=> ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_m_2)
        & c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_n_2) ) ) ).

fof(fact_order__less__le__trans,axiom,
    ! [V_z,V_y,V_x,T_a] :
      ( class_Orderings_Opreorder(T_a)
     => ( c_Orderings_Oord__class_Oless(T_a,V_x,V_y)
       => ( c_Orderings_Oord__class_Oless__eq(T_a,V_y,V_z)
         => c_Orderings_Oord__class_Oless(T_a,V_x,V_z) ) ) ) ).

fof(arity_RealDef__Oreal__RealVector_Oreal__normed__vector,axiom,
    class_RealVector_Oreal__normed__vector(tc_RealDef_Oreal) ).

fof(fact_Nat_Oadd__0__right,axiom,
    ! [V_m] : c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_m,c_Groups_Ozero__class_Ozero(tc_Nat_Onat)) = V_m ).

fof(arity_RealDef__Oreal__Rings_Ozero__neq__one,axiom,
    class_Rings_Ozero__neq__one(tc_RealDef_Oreal) ).

fof(fact_mult__right__le__one__le,axiom,
    ! [V_y,V_x,T_a] :
      ( ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_x)
       => ( ( c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_x),V_y),V_x)
           <= c_Orderings_Oord__class_Oless__eq(T_a,V_y,c_Groups_Oone__class_Oone(T_a)) )
         <= c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_y) ) )
     <= class_Rings_Olinordered__idom(T_a) ) ).

fof(fact_less__not__refl2,axiom,
    ! [V_m,V_n] :
      ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_n,V_m)
     => V_m != V_n ) ).

fof(fact_neg__le__divide__eq,axiom,
    ! [V_b_2,V_ab_2,V_ca_2,T_a] :
      ( class_Fields_Olinordered__field(T_a)
     => ( c_Orderings_Oord__class_Oless(T_a,V_ca_2,c_Groups_Ozero__class_Ozero(T_a))
       => ( c_Orderings_Oord__class_Oless__eq(T_a,V_ab_2,c_Rings_Oinverse__class_Odivide(T_a,V_b_2,V_ca_2))
        <=> c_Orderings_Oord__class_Oless__eq(T_a,V_b_2,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_ab_2),V_ca_2)) ) ) ) ).

fof(fact_divide__nonpos__pos,axiom,
    ! [V_y,V_x,T_a] :
      ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_x,c_Groups_Ozero__class_Ozero(T_a))
       => ( c_Orderings_Oord__class_Oless__eq(T_a,c_Rings_Oinverse__class_Odivide(T_a,V_x,V_y),c_Groups_Ozero__class_Ozero(T_a))
         <= c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_y) ) )
     <= class_Fields_Olinordered__field(T_a) ) ).

fof(arity_Polynomial__Opoly__Rings_Olinordered__semidom,axiom,
    ! [T_1] :
      ( class_Rings_Olinordered__semidom(tc_Polynomial_Opoly(T_1))
     <= class_Rings_Olinordered__idom(T_1) ) ).

fof(fact_zmod__simps_I1_J,axiom,
    ! [V_b,V_c,V_a,T_a] :
      ( class_Divides_Osemiring__div(T_a)
     => c_Divides_Odiv__class_Omod(T_a,c_Groups_Oplus__class_Oplus(T_a,V_a,V_b),V_c) = c_Divides_Odiv__class_Omod(T_a,c_Groups_Oplus__class_Oplus(T_a,c_Divides_Odiv__class_Omod(T_a,V_a,V_c),V_b),V_c) ) ).

fof(fact_less__1__mult,axiom,
    ! [V_n,V_m,T_a] :
      ( ( ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Oone__class_Oone(T_a),V_n)
         => c_Orderings_Oord__class_Oless(T_a,c_Groups_Oone__class_Oone(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_m),V_n)) )
       <= c_Orderings_Oord__class_Oless(T_a,c_Groups_Oone__class_Oone(T_a),V_m) )
     <= class_Rings_Olinordered__semidom(T_a) ) ).

fof(fact_norm__triangle__ineq4,axiom,
    ! [V_b,V_a,T_a] :
      ( class_RealVector_Oreal__normed__vector(T_a)
     => c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_RealVector_Onorm__class_Onorm(T_a,c_Groups_Ominus__class_Ominus(T_a,V_a,V_b)),c_Groups_Oplus__class_Oplus(tc_RealDef_Oreal,c_RealVector_Onorm__class_Onorm(T_a,V_a),c_RealVector_Onorm__class_Onorm(T_a,V_b))) ) ).

fof(arity_Int__Oint__Groups_Ocancel__semigroup__add,axiom,
    class_Groups_Ocancel__semigroup__add(tc_Int_Oint) ).

fof(arity_Polynomial__Opoly__Groups_Ocancel__semigroup__add,axiom,
    ! [T_1] :
      ( class_Groups_Ocancel__semigroup__add(tc_Polynomial_Opoly(T_1))
     <= class_Groups_Ocancel__comm__monoid__add(T_1) ) ).

fof(fact_real__le__trans,axiom,
    ! [V_k,V_j,V_i] :
      ( ( c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,V_j,V_k)
       => c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,V_i,V_k) )
     <= c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,V_i,V_j) ) ).

fof(fact_real__root__commute,axiom,
    ! [V_x,V_n,V_m] :
      ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_m)
     => ( c_NthRoot_Oroot(V_m,c_NthRoot_Oroot(V_n,V_x)) = c_NthRoot_Oroot(V_n,c_NthRoot_Oroot(V_m,V_x))
       <= c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_n) ) ) ).

fof(fact_dvd__div__mult,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( class_Divides_Osemiring__div(T_a)
     => ( hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Divides_Odiv__class_Odiv(T_a,V_b,V_a)),V_c) = c_Divides_Odiv__class_Odiv(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b),V_c),V_a)
       <= c_Rings_Odvd__class_Odvd(T_a,V_a,V_b) ) ) ).

fof(fact_power__mono,axiom,
    ! [V_n,V_b,V_a,T_a] :
      ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_a,V_b)
       => ( c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_n),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_b),V_n))
         <= c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_a) ) )
     <= class_Rings_Olinordered__semidom(T_a) ) ).

fof(fact_split__zdiv,axiom,
    ! [V_k_2,V_n_2,V_P_2] :
      ( ( ( hBOOL(hAPP(V_P_2,c_Groups_Ozero__class_Ozero(tc_Int_Oint)))
         <= V_k_2 = c_Groups_Ozero__class_Ozero(tc_Int_Oint) )
        & ( c_Orderings_Oord__class_Oless(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_k_2)
         => ! [B_i] :
              ( hBOOL(hAPP(V_P_2,B_i))
             <= ? [B_j] :
                  ( c_Orderings_Oord__class_Oless(tc_Int_Oint,B_j,V_k_2)
                  & c_Groups_Oplus__class_Oplus(tc_Int_Oint,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_k_2),B_i),B_j) = V_n_2
                  & c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),B_j) ) ) )
        & ( ! [B_i] :
              ( hBOOL(hAPP(V_P_2,B_i))
             <= ? [B_j] :
                  ( c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,B_j,c_Groups_Ozero__class_Ozero(tc_Int_Oint))
                  & c_Groups_Oplus__class_Oplus(tc_Int_Oint,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_k_2),B_i),B_j) = V_n_2
                  & c_Orderings_Oord__class_Oless(tc_Int_Oint,V_k_2,B_j) ) )
         <= c_Orderings_Oord__class_Oless(tc_Int_Oint,V_k_2,c_Groups_Ozero__class_Ozero(tc_Int_Oint)) ) )
    <=> hBOOL(hAPP(V_P_2,c_Divides_Odiv__class_Odiv(tc_Int_Oint,V_n_2,V_k_2))) ) ).

fof(arity_Complex__Ocomplex__Rings_Oring__1,axiom,
    class_Rings_Oring__1(tc_Complex_Ocomplex) ).

fof(fact_natfloor__add__one,axiom,
    ! [V_x] :
      ( c_RComplete_Onatfloor(c_Groups_Oplus__class_Oplus(tc_RealDef_Oreal,V_x,c_Groups_Oone__class_Oone(tc_RealDef_Oreal))) = c_Groups_Oplus__class_Oplus(tc_Nat_Onat,c_RComplete_Onatfloor(V_x),c_Groups_Oone__class_Oone(tc_Nat_Onat))
     <= c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),V_x) ) ).

fof(fact_add__strict__increasing,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( class_Groups_Oordered__comm__monoid__add(T_a)
     => ( ( c_Orderings_Oord__class_Oless(T_a,V_b,c_Groups_Oplus__class_Oplus(T_a,V_a,V_c))
         <= c_Orderings_Oord__class_Oless__eq(T_a,V_b,V_c) )
       <= c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_a) ) ) ).

fof(fact_power__less__power__Suc,axiom,
    ! [V_n,V_a,T_a] :
      ( class_Rings_Olinordered__semidom(T_a)
     => ( c_Orderings_Oord__class_Oless(T_a,hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_n),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_n)))
       <= c_Orderings_Oord__class_Oless(T_a,c_Groups_Oone__class_Oone(T_a),V_a) ) ) ).

fof(fact_xt1_I6_J,axiom,
    ! [V_z,V_x,V_y,T_a] :
      ( class_Orderings_Oorder(T_a)
     => ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_z,V_x)
         <= c_Orderings_Oord__class_Oless__eq(T_a,V_z,V_y) )
       <= c_Orderings_Oord__class_Oless__eq(T_a,V_y,V_x) ) ) ).

fof(fact_neg__divide__le__eq,axiom,
    ! [V_ab_2,V_b_2,V_ca_2,T_a] :
      ( ( c_Orderings_Oord__class_Oless(T_a,V_ca_2,c_Groups_Ozero__class_Ozero(T_a))
       => ( c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_ab_2),V_ca_2),V_b_2)
        <=> c_Orderings_Oord__class_Oless__eq(T_a,c_Rings_Oinverse__class_Odivide(T_a,V_b_2,V_ca_2),V_ab_2) ) )
     <= class_Fields_Olinordered__field(T_a) ) ).

fof(arity_Int__Oint__Rings_Ocomm__semiring__1,axiom,
    class_Rings_Ocomm__semiring__1(tc_Int_Oint) ).

fof(fact_abs__minus__commute,axiom,
    ! [V_b,V_a,T_a] :
      ( class_Groups_Oordered__ab__group__add__abs(T_a)
     => c_Groups_Oabs__class_Oabs(T_a,c_Groups_Ominus__class_Ominus(T_a,V_a,V_b)) = c_Groups_Oabs__class_Oabs(T_a,c_Groups_Ominus__class_Ominus(T_a,V_b,V_a)) ) ).

fof(fact_real__le__antisym,axiom,
    ! [V_w,V_z] :
      ( ( V_z = V_w
       <= c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,V_w,V_z) )
     <= c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,V_z,V_w) ) ).

fof(fact_dvd__mult__cancel,axiom,
    ! [V_n,V_m,V_k] :
      ( ( c_Rings_Odvd__class_Odvd(tc_Nat_Onat,V_m,V_n)
       <= c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_k) )
     <= c_Rings_Odvd__class_Odvd(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_k),V_m),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_k),V_n)) ) ).

fof(fact_zdvd__antisym__nonneg,axiom,
    ! [V_n,V_m] :
      ( ( c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_n)
       => ( ( V_m = V_n
           <= c_Rings_Odvd__class_Odvd(tc_Int_Oint,V_n,V_m) )
         <= c_Rings_Odvd__class_Odvd(tc_Int_Oint,V_m,V_n) ) )
     <= c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_m) ) ).

fof(fact_self__quotient__aux1,axiom,
    ! [V_q,V_r,V_a] :
      ( ( V_a = c_Groups_Oplus__class_Oplus(tc_Int_Oint,V_r,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_a),V_q))
       => ( c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Oone__class_Oone(tc_Int_Oint),V_q)
         <= c_Orderings_Oord__class_Oless(tc_Int_Oint,V_r,V_a) ) )
     <= c_Orderings_Oord__class_Oless(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_a) ) ).

fof(fact_norm__triangle__ineq3,axiom,
    ! [V_b,V_a,T_a] :
      ( class_RealVector_Oreal__normed__vector(T_a)
     => c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Oabs__class_Oabs(tc_RealDef_Oreal,c_Groups_Ominus__class_Ominus(tc_RealDef_Oreal,c_RealVector_Onorm__class_Onorm(T_a,V_a),c_RealVector_Onorm__class_Onorm(T_a,V_b))),c_RealVector_Onorm__class_Onorm(T_a,c_Groups_Ominus__class_Ominus(T_a,V_a,V_b))) ) ).

fof(fact_real__of__nat__mult,axiom,
    ! [V_n,V_m] : c_RealDef_Oreal(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_m),V_n)) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),c_RealDef_Oreal(tc_Nat_Onat,V_m)),c_RealDef_Oreal(tc_Nat_Onat,V_n)) ).

fof(fact_divide__strict__left__mono__neg,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( class_Fields_Olinordered__field(T_a)
     => ( ( ( c_Orderings_Oord__class_Oless(T_a,c_Rings_Oinverse__class_Odivide(T_a,V_c,V_a),c_Rings_Oinverse__class_Odivide(T_a,V_c,V_b))
           <= c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b)) )
         <= c_Orderings_Oord__class_Oless(T_a,V_c,c_Groups_Ozero__class_Ozero(T_a)) )
       <= c_Orderings_Oord__class_Oless(T_a,V_a,V_b) ) ) ).

fof(arity_RealDef__Oreal__RealVector_Oreal__normed__algebra,axiom,
    class_RealVector_Oreal__normed__algebra(tc_RealDef_Oreal) ).

fof(fact_linorder__le__cases,axiom,
    ! [V_y,V_x,T_a] :
      ( class_Orderings_Olinorder(T_a)
     => ( ~ c_Orderings_Oord__class_Oless__eq(T_a,V_x,V_y)
       => c_Orderings_Oord__class_Oless__eq(T_a,V_y,V_x) ) ) ).

fof(arity_Nat__Onat__Rings_Oordered__cancel__semiring,axiom,
    class_Rings_Oordered__cancel__semiring(tc_Nat_Onat) ).

fof(arity_Complex__Ocomplex__Fields_Ofield,axiom,
    class_Fields_Ofield(tc_Complex_Ocomplex) ).

fof(fact_nonzero__abs__divide,axiom,
    ! [V_a,V_b,T_a] :
      ( ( c_Rings_Oinverse__class_Odivide(T_a,c_Groups_Oabs__class_Oabs(T_a,V_a),c_Groups_Oabs__class_Oabs(T_a,V_b)) = c_Groups_Oabs__class_Oabs(T_a,c_Rings_Oinverse__class_Odivide(T_a,V_a,V_b))
       <= V_b != c_Groups_Ozero__class_Ozero(T_a) )
     <= class_Fields_Olinordered__field(T_a) ) ).

fof(fact_mult__right_Obounded,axiom,
    ! [V_x,T_a] :
      ( class_RealVector_Oreal__normed__algebra(T_a)
     => ? [B_K] :
        ! [B_x] : c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_RealVector_Onorm__class_Onorm(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_x),B_x)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),c_RealVector_Onorm__class_Onorm(T_a,B_x)),B_K)) ) ).

fof(fact_zmod__le__nonneg__dividend,axiom,
    ! [V_k,V_m] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_m)
     => c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Divides_Odiv__class_Omod(tc_Int_Oint,V_m,V_k),V_m) ) ).

fof(fact_zmod__zdiv__trivial,axiom,
    ! [V_b,V_a] : c_Divides_Odiv__class_Odiv(tc_Int_Oint,c_Divides_Odiv__class_Omod(tc_Int_Oint,V_a,V_b),V_b) = c_Groups_Ozero__class_Ozero(tc_Int_Oint) ).

fof(fact_abs__ge__self,axiom,
    ! [V_a,T_a] :
      ( c_Orderings_Oord__class_Oless__eq(T_a,V_a,c_Groups_Oabs__class_Oabs(T_a,V_a))
     <= class_Groups_Oordered__ab__group__add__abs(T_a) ) ).

fof(arity_Int__Oint__Groups_Olinordered__ab__group__add,axiom,
    class_Groups_Olinordered__ab__group__add(tc_Int_Oint) ).

fof(fact_ath,axiom,
    ! [V_ma,V_mazh,V_mzh] :
      ( c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,V_mzh,c_Groups_Oplus__class_Oplus(tc_RealDef_Oreal,V_mazh,V_ma))
     => ( c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Oplus__class_Oplus(tc_RealDef_Oreal,c_Groups_Oabs__class_Oabs(tc_RealDef_Oreal,v_da____),V_ma),V_mzh)
       => c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,v_da____,V_mazh) ) ) ).

fof(fact_abs__mult__pos,axiom,
    ! [V_y,V_x,T_a] :
      ( ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_x)
       => hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Groups_Oabs__class_Oabs(T_a,V_y)),V_x) = c_Groups_Oabs__class_Oabs(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_y),V_x)) )
     <= class_Rings_Olinordered__idom(T_a) ) ).

fof(fact_nat__zero__less__power__iff,axiom,
    ! [V_n_2,V_x_2] :
      ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),hAPP(hAPP(c_Power_Opower__class_Opower(tc_Nat_Onat),V_x_2),V_n_2))
    <=> ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_x_2)
        | c_Groups_Ozero__class_Ozero(tc_Nat_Onat) = V_n_2 ) ) ).

fof(fact_dvd__if__abs__eq,axiom,
    ! [V_k,V_l,T_a] :
      ( ( c_Groups_Oabs__class_Oabs(T_a,V_l) = c_Groups_Oabs__class_Oabs(T_a,V_k)
       => c_Rings_Odvd__class_Odvd(T_a,V_l,V_k) )
     <= class_Rings_Olinordered__idom(T_a) ) ).

fof(fact_natceiling__le__eq,axiom,
    ! [V_ab_2,V_x_2] :
      ( c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),V_x_2)
     => ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,c_RComplete_Onatceiling(V_x_2),V_ab_2)
      <=> c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,V_x_2,c_RealDef_Oreal(tc_Nat_Onat,V_ab_2)) ) ) ).

fof(fact_zadd__left__commute,axiom,
    ! [V_z,V_y,V_x] : c_Groups_Oplus__class_Oplus(tc_Int_Oint,V_x,c_Groups_Oplus__class_Oplus(tc_Int_Oint,V_y,V_z)) = c_Groups_Oplus__class_Oplus(tc_Int_Oint,V_y,c_Groups_Oplus__class_Oplus(tc_Int_Oint,V_x,V_z)) ).

fof(fact_termination__basic__simps_I3_J,axiom,
    ! [V_z,V_y,V_x] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_x,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_y,V_z))
     <= c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_x,V_y) ) ).

fof(fact_power__gt1__lemma,axiom,
    ! [V_n,V_a,T_a] :
      ( class_Rings_Olinordered__semidom(T_a)
     => ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Oone__class_Oone(T_a),V_a)
       => c_Orderings_Oord__class_Oless(T_a,c_Groups_Oone__class_Oone(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_n))) ) ) ).

fof(fact_zle__trans,axiom,
    ! [V_k,V_j,V_i] :
      ( ( c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,V_i,V_k)
       <= c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,V_j,V_k) )
     <= c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,V_i,V_j) ) ).

fof(arity_Complex__Ocomplex__Groups_Omonoid__add,axiom,
    class_Groups_Omonoid__add(tc_Complex_Ocomplex) ).

fof(fact_mult__right__less__imp__less,axiom,
    ! [V_b,V_c,V_a,T_a] :
      ( ( ( c_Orderings_Oord__class_Oless(T_a,V_a,V_b)
         <= c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_c) )
       <= c_Orderings_Oord__class_Oless(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_c),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b),V_c)) )
     <= class_Rings_Olinordered__semiring(T_a) ) ).

fof(fact_abs__triangle__ineq3,axiom,
    ! [V_b,V_a,T_a] :
      ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Oabs__class_Oabs(T_a,c_Groups_Ominus__class_Ominus(T_a,c_Groups_Oabs__class_Oabs(T_a,V_a),c_Groups_Oabs__class_Oabs(T_a,V_b))),c_Groups_Oabs__class_Oabs(T_a,c_Groups_Ominus__class_Ominus(T_a,V_a,V_b)))
     <= class_Groups_Oordered__ab__group__add__abs(T_a) ) ).

fof(fact_int__div__less__self,axiom,
    ! [V_k,V_x] :
      ( c_Orderings_Oord__class_Oless(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_x)
     => ( c_Orderings_Oord__class_Oless(tc_Int_Oint,c_Groups_Oone__class_Oone(tc_Int_Oint),V_k)
       => c_Orderings_Oord__class_Oless(tc_Int_Oint,c_Divides_Odiv__class_Odiv(tc_Int_Oint,V_x,V_k),V_x) ) ) ).

fof(arity_Int__Oint__Groups_Oone,axiom,
    class_Groups_Oone(tc_Int_Oint) ).

fof(fact_split__mod,axiom,
    ! [V_k_2,V_n_2,V_P_2] :
      ( hBOOL(hAPP(V_P_2,c_Divides_Odiv__class_Omod(tc_Nat_Onat,V_n_2,V_k_2)))
    <=> ( ( ! [B_i,B_j] :
              ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,B_j,V_k_2)
             => ( hBOOL(hAPP(V_P_2,B_j))
               <= c_Groups_Oplus__class_Oplus(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_k_2),B_i),B_j) = V_n_2 ) )
         <= c_Groups_Ozero__class_Ozero(tc_Nat_Onat) != V_k_2 )
        & ( hBOOL(hAPP(V_P_2,V_n_2))
         <= c_Groups_Ozero__class_Ozero(tc_Nat_Onat) = V_k_2 ) ) ) ).

fof(fact_natceiling__le,axiom,
    ! [V_a,V_x] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,c_RComplete_Onatceiling(V_x),V_a)
     <= c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,V_x,c_RealDef_Oreal(tc_Nat_Onat,V_a)) ) ).

fof(fact_add__mult__distrib2,axiom,
    ! [V_n,V_m,V_k] : hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_k),c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_m,V_n)) = c_Groups_Oplus__class_Oplus(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_k),V_m),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_k),V_n)) ).

fof(fact_real__root__pos__mult__exp,axiom,
    ! [V_x,V_n,V_m] :
      ( ( ( c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),V_x)
         => c_NthRoot_Oroot(V_m,c_NthRoot_Oroot(V_n,V_x)) = c_NthRoot_Oroot(hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_m),V_n),V_x) )
       <= c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_n) )
     <= c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_m) ) ).

fof(fact_mult_Odiff__right,axiom,
    ! [V_b_H,V_b,V_a,T_a] :
      ( class_RealVector_Oreal__normed__algebra(T_a)
     => hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),c_Groups_Ominus__class_Ominus(T_a,V_b,V_b_H)) = c_Groups_Ominus__class_Ominus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b_H)) ) ).

fof(fact_comm__semiring__1__class_Onormalizing__semiring__rules_I6_J,axiom,
    ! [V_a,T_a] :
      ( class_Rings_Ocomm__semiring__1(T_a)
     => V_a = c_Groups_Oplus__class_Oplus(T_a,V_a,c_Groups_Ozero__class_Ozero(T_a)) ) ).

fof(fact_LIMSEQ__inverse__realpow__zero__lemma,axiom,
    ! [V_n,V_x] :
      ( c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),V_x)
     => c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Oplus__class_Oplus(tc_RealDef_Oreal,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),c_RealDef_Oreal(tc_Nat_Onat,V_n)),V_x),c_Groups_Oone__class_Oone(tc_RealDef_Oreal)),hAPP(hAPP(c_Power_Opower__class_Opower(tc_RealDef_Oreal),c_Groups_Oplus__class_Oplus(tc_RealDef_Oreal,V_x,c_Groups_Oone__class_Oone(tc_RealDef_Oreal))),V_n)) ) ).

fof(fact_diff__add__cancel,axiom,
    ! [V_b,V_a,T_a] :
      ( class_Groups_Ogroup__add(T_a)
     => V_a = c_Groups_Oplus__class_Oplus(T_a,c_Groups_Ominus__class_Ominus(T_a,V_a,V_b),V_b) ) ).

fof(fact_divide__neg__pos,axiom,
    ! [V_y,V_x,T_a] :
      ( class_Fields_Olinordered__field(T_a)
     => ( c_Orderings_Oord__class_Oless(T_a,V_x,c_Groups_Ozero__class_Ozero(T_a))
       => ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_y)
         => c_Orderings_Oord__class_Oless(T_a,c_Rings_Oinverse__class_Odivide(T_a,V_x,V_y),c_Groups_Ozero__class_Ozero(T_a)) ) ) ) ).

fof(arity_Polynomial__Opoly__Divides_Oring__div,axiom,
    ! [T_1] :
      ( class_Divides_Oring__div(tc_Polynomial_Opoly(T_1))
     <= class_Fields_Ofield(T_1) ) ).

fof(arity_Int__Oint__Rings_Osemiring,axiom,
    class_Rings_Osemiring(tc_Int_Oint) ).

fof(arity_Polynomial__Opoly__Groups_Oone,axiom,
    ! [T_1] :
      ( class_Groups_Oone(tc_Polynomial_Opoly(T_1))
     <= class_Rings_Ocomm__semiring__1(T_1) ) ).

fof(fact_zero__less__mult__pos,axiom,
    ! [V_b,V_a,T_a] :
      ( ( ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_b)
         <= c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_a) )
       <= c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b)) )
     <= class_Rings_Olinordered__semiring__strict(T_a) ) ).

fof(arity_Int__Oint__Rings_Oidom,axiom,
    class_Rings_Oidom(tc_Int_Oint) ).

fof(fact_nat__mult__eq__cancel1,axiom,
    ! [V_n_2,V_m_2,V_k_2] :
      ( ( hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_k_2),V_m_2) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_k_2),V_n_2)
      <=> V_m_2 = V_n_2 )
     <= c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_k_2) ) ).

fof(fact_abs__eq__0,axiom,
    ! [V_ab_2,T_a] :
      ( class_Groups_Oordered__ab__group__add__abs(T_a)
     => ( c_Groups_Ozero__class_Ozero(T_a) = V_ab_2
      <=> c_Groups_Ozero__class_Ozero(T_a) = c_Groups_Oabs__class_Oabs(T_a,V_ab_2) ) ) ).

fof(fact_dvd__triv__left,axiom,
    ! [V_b,V_a,T_a] :
      ( class_Rings_Ocomm__semiring__1(T_a)
     => c_Rings_Odvd__class_Odvd(T_a,V_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b)) ) ).

fof(fact_zmod__zero,axiom,
    ! [V_b] : c_Groups_Ozero__class_Ozero(tc_Int_Oint) = c_Divides_Odiv__class_Omod(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_b) ).

fof(fact_pCons__eq__iff,axiom,
    ! [V_q_2,V_b_2,V_pa_2,V_ab_2,T_a] :
      ( ( c_Polynomial_OpCons(T_a,V_ab_2,V_pa_2) = c_Polynomial_OpCons(T_a,V_b_2,V_q_2)
      <=> ( V_b_2 = V_ab_2
          & V_pa_2 = V_q_2 ) )
     <= class_Groups_Ozero(T_a) ) ).

fof(arity_Polynomial__Opoly__Rings_Oordered__cancel__semiring,axiom,
    ! [T_1] :
      ( class_Rings_Olinordered__idom(T_1)
     => class_Rings_Oordered__cancel__semiring(tc_Polynomial_Opoly(T_1)) ) ).

fof(fact_dvd__imp__le__int,axiom,
    ! [V_d,V_i] :
      ( ( c_Rings_Odvd__class_Odvd(tc_Int_Oint,V_d,V_i)
       => c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Oabs__class_Oabs(tc_Int_Oint,V_d),c_Groups_Oabs__class_Oabs(tc_Int_Oint,V_i)) )
     <= V_i != c_Groups_Ozero__class_Ozero(tc_Int_Oint) ) ).

fof(fact_add__less__mono1,axiom,
    ! [V_k,V_j,V_i] :
      ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_i,V_k),c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_j,V_k))
     <= c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_i,V_j) ) ).

fof(fact_zmult__zless__mono2,axiom,
    ! [V_k,V_j,V_i] :
      ( ( c_Orderings_Oord__class_Oless(tc_Int_Oint,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_k),V_i),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_k),V_j))
       <= c_Orderings_Oord__class_Oless(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_k) )
     <= c_Orderings_Oord__class_Oless(tc_Int_Oint,V_i,V_j) ) ).

fof(fact_divide__le__eq,axiom,
    ! [V_ab_2,V_ca_2,V_b_2,T_a] :
      ( class_Fields_Olinordered__field__inverse__zero(T_a)
     => ( c_Orderings_Oord__class_Oless__eq(T_a,c_Rings_Oinverse__class_Odivide(T_a,V_b_2,V_ca_2),V_ab_2)
      <=> ( ( ( ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_ab_2)
               <= ~ c_Orderings_Oord__class_Oless(T_a,V_ca_2,c_Groups_Ozero__class_Ozero(T_a)) )
              & ( c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_ab_2),V_ca_2),V_b_2)
               <= c_Orderings_Oord__class_Oless(T_a,V_ca_2,c_Groups_Ozero__class_Ozero(T_a)) ) )
           <= ~ c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_ca_2) )
          & ( c_Orderings_Oord__class_Oless__eq(T_a,V_b_2,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_ab_2),V_ca_2))
           <= c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_ca_2) ) ) ) ) ).

fof(fact_mult__le__cancel1,axiom,
    ! [V_n_2,V_m_2,V_k_2] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_k_2),V_m_2),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_k_2),V_n_2))
    <=> ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m_2,V_n_2)
       <= c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_k_2) ) ) ).

fof(arity_Complex__Ocomplex__Rings_Ocomm__semiring__0,axiom,
    class_Rings_Ocomm__semiring__0(tc_Complex_Ocomplex) ).

fof(fact_mod__less,axiom,
    ! [V_n,V_m] :
      ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_m,V_n)
     => V_m = c_Divides_Odiv__class_Omod(tc_Nat_Onat,V_m,V_n) ) ).

fof(fact_zmult__div__cancel,axiom,
    ! [V_m,V_n] : c_Groups_Ominus__class_Ominus(tc_Int_Oint,V_m,c_Divides_Odiv__class_Omod(tc_Int_Oint,V_m,V_n)) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_n),c_Divides_Odiv__class_Odiv(tc_Int_Oint,V_m,V_n)) ).

fof(fact_add1__zle__eq,axiom,
    ! [V_za_2,V_w_2] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Oplus__class_Oplus(tc_Int_Oint,V_w_2,c_Groups_Oone__class_Oone(tc_Int_Oint)),V_za_2)
    <=> c_Orderings_Oord__class_Oless(tc_Int_Oint,V_w_2,V_za_2) ) ).

fof(fact_mult_Ozero__left,axiom,
    ! [V_b,T_a] :
      ( c_Groups_Ozero__class_Ozero(T_a) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Groups_Ozero__class_Ozero(T_a)),V_b)
     <= class_RealVector_Oreal__normed__algebra(T_a) ) ).

fof(fact_div__mult__div__if__dvd,axiom,
    ! [V_w,V_z,V_x,V_y,T_a] :
      ( class_Divides_Osemiring__div(T_a)
     => ( ( c_Rings_Odvd__class_Odvd(T_a,V_z,V_w)
         => c_Divides_Odiv__class_Odiv(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_x),V_w),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_y),V_z)) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Divides_Odiv__class_Odiv(T_a,V_x,V_y)),c_Divides_Odiv__class_Odiv(T_a,V_w,V_z)) )
       <= c_Rings_Odvd__class_Odvd(T_a,V_y,V_x) ) ) ).

fof(arity_RealDef__Oreal__Rings_Omult__zero,axiom,
    class_Rings_Omult__zero(tc_RealDef_Oreal) ).

fof(fact_real__root__eq__0__iff,axiom,
    ! [V_x_2,V_n_2] :
      ( ( c_NthRoot_Oroot(V_n_2,V_x_2) = c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)
      <=> c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal) = V_x_2 )
     <= c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_n_2) ) ).

fof(arity_Int__Oint__Groups_Ocomm__monoid__add,axiom,
    class_Groups_Ocomm__monoid__add(tc_Int_Oint) ).

fof(fact_order__le__imp__less__or__eq,axiom,
    ! [V_y,V_x,T_a] :
      ( ( ( c_Orderings_Oord__class_Oless(T_a,V_x,V_y)
          | V_x = V_y )
       <= c_Orderings_Oord__class_Oless__eq(T_a,V_x,V_y) )
     <= class_Orderings_Oorder(T_a) ) ).

fof(arity_Int__Oint__Groups_Ocancel__ab__semigroup__add,axiom,
    class_Groups_Ocancel__ab__semigroup__add(tc_Int_Oint) ).

fof(fact_mult__imp__le__div__pos,axiom,
    ! [V_x,V_z,V_y,T_a] :
      ( class_Fields_Olinordered__field(T_a)
     => ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_z,c_Rings_Oinverse__class_Odivide(T_a,V_x,V_y))
         <= c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_z),V_y),V_x) )
       <= c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_y) ) ) ).

fof(fact_power__mult__distrib,axiom,
    ! [V_n,V_b,V_a,T_a] :
      ( class_Groups_Ocomm__monoid__mult(T_a)
     => hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_n)),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_b),V_n)) = hAPP(hAPP(c_Power_Opower__class_Opower(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b)),V_n) ) ).

fof(fact_real__root__eq__iff,axiom,
    ! [V_y_2,V_x_2,V_n_2] :
      ( ( V_x_2 = V_y_2
      <=> c_NthRoot_Oroot(V_n_2,V_x_2) = c_NthRoot_Oroot(V_n_2,V_y_2) )
     <= c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_n_2) ) ).

fof(fact_order__refl,axiom,
    ! [V_x,T_a] :
      ( class_Orderings_Opreorder(T_a)
     => c_Orderings_Oord__class_Oless__eq(T_a,V_x,V_x) ) ).

fof(fact_zero__less__two,axiom,
    ! [T_a] :
      ( class_Rings_Olinordered__semidom(T_a)
     => c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),c_Groups_Oplus__class_Oplus(T_a,c_Groups_Oone__class_Oone(T_a),c_Groups_Oone__class_Oone(T_a))) ) ).

fof(fact_add__0__left,axiom,
    ! [V_a,T_a] :
      ( class_Groups_Omonoid__add(T_a)
     => c_Groups_Oplus__class_Oplus(T_a,c_Groups_Ozero__class_Ozero(T_a),V_a) = V_a ) ).

fof(fact_order__less__imp__not__eq,axiom,
    ! [V_y,V_x,T_a] :
      ( ( c_Orderings_Oord__class_Oless(T_a,V_x,V_y)
       => V_y != V_x )
     <= class_Orderings_Oorder(T_a) ) ).

fof(fact_frac__eq__eq,axiom,
    ! [V_w_2,V_x_2,V_za_2,V_y_2,T_a] :
      ( ( c_Groups_Ozero__class_Ozero(T_a) != V_y_2
       => ( c_Groups_Ozero__class_Ozero(T_a) != V_za_2
         => ( hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_x_2),V_za_2) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_w_2),V_y_2)
          <=> c_Rings_Oinverse__class_Odivide(T_a,V_x_2,V_y_2) = c_Rings_Oinverse__class_Odivide(T_a,V_w_2,V_za_2) ) ) )
     <= class_Fields_Ofield(T_a) ) ).

fof(fact_xt1_I8_J,axiom,
    ! [V_z,V_x,V_y,T_a] :
      ( class_Orderings_Oorder(T_a)
     => ( c_Orderings_Oord__class_Oless__eq(T_a,V_y,V_x)
       => ( c_Orderings_Oord__class_Oless(T_a,V_z,V_x)
         <= c_Orderings_Oord__class_Oless(T_a,V_z,V_y) ) ) ) ).

fof(fact_less__or__eq__imp__le,axiom,
    ! [V_n,V_m] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m,V_n)
     <= ( V_n = V_m
        | c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_m,V_n) ) ) ).

fof(fact_mult__neg__neg,axiom,
    ! [V_b,V_a,T_a] :
      ( class_Rings_Olinordered__ring__strict(T_a)
     => ( c_Orderings_Oord__class_Oless(T_a,V_a,c_Groups_Ozero__class_Ozero(T_a))
       => ( c_Orderings_Oord__class_Oless(T_a,V_b,c_Groups_Ozero__class_Ozero(T_a))
         => c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b)) ) ) ) ).

fof(fact_dvd__trans,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( ( ( c_Rings_Odvd__class_Odvd(T_a,V_a,V_c)
         <= c_Rings_Odvd__class_Odvd(T_a,V_b,V_c) )
       <= c_Rings_Odvd__class_Odvd(T_a,V_a,V_b) )
     <= class_Rings_Ocomm__semiring__1(T_a) ) ).

fof(fact_mult__le__mono1,axiom,
    ! [V_k,V_j,V_i] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_i),V_k),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_j),V_k))
     <= c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_i,V_j) ) ).

fof(arity_Polynomial__Opoly__Rings_Olinordered__idom,axiom,
    ! [T_1] :
      ( class_Rings_Olinordered__idom(tc_Polynomial_Opoly(T_1))
     <= class_Rings_Olinordered__idom(T_1) ) ).

fof(fact_real__le__linear,axiom,
    ! [V_w,V_z] :
      ( c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,V_z,V_w)
      | c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,V_w,V_z) ) ).

fof(fact_mult__nonpos__nonneg,axiom,
    ! [V_b,V_a,T_a] :
      ( class_Rings_Oordered__cancel__semiring(T_a)
     => ( ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_b)
         => c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b),c_Groups_Ozero__class_Ozero(T_a)) )
       <= c_Orderings_Oord__class_Oless__eq(T_a,V_a,c_Groups_Ozero__class_Ozero(T_a)) ) ) ).

fof(fact_trans__le__add1,axiom,
    ! [V_m,V_j,V_i] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_i,V_j)
     => c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_i,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_j,V_m)) ) ).

fof(arity_HOL__Obool__Orderings_Opreorder,axiom,
    class_Orderings_Opreorder(tc_HOL_Obool) ).

fof(fact_zmult__commute,axiom,
    ! [V_w,V_z] : hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_w),V_z) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_z),V_w) ).

fof(arity_Complex__Ocomplex__Groups_Ocancel__semigroup__add,axiom,
    class_Groups_Ocancel__semigroup__add(tc_Complex_Ocomplex) ).

fof(arity_Nat__Onat__Orderings_Olinorder,axiom,
    class_Orderings_Olinorder(tc_Nat_Onat) ).

fof(arity_RealDef__Oreal__Groups_Oordered__cancel__ab__semigroup__add,axiom,
    class_Groups_Oordered__cancel__ab__semigroup__add(tc_RealDef_Oreal) ).

fof(fact_abs__zmult__eq__1,axiom,
    ! [V_n,V_m] :
      ( c_Groups_Oone__class_Oone(tc_Int_Oint) = c_Groups_Oabs__class_Oabs(tc_Int_Oint,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_m),V_n))
     => c_Groups_Oabs__class_Oabs(tc_Int_Oint,V_m) = c_Groups_Oone__class_Oone(tc_Int_Oint) ) ).

fof(fact_less__eq__nat_Osimps_I1_J,axiom,
    ! [V_n] : c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_n) ).

fof(fact_comm__semiring__1__class_Onormalizing__semiring__rules_I10_J,axiom,
    ! [V_a,T_a] :
      ( c_Groups_Ozero__class_Ozero(T_a) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),c_Groups_Ozero__class_Ozero(T_a))
     <= class_Rings_Ocomm__semiring__1(T_a) ) ).

fof(fact_add_Ocomm__neutral,axiom,
    ! [V_a,T_a] :
      ( V_a = c_Groups_Oplus__class_Oplus(T_a,V_a,c_Groups_Ozero__class_Ozero(T_a))
     <= class_Groups_Ocomm__monoid__add(T_a) ) ).

fof(arity_RealDef__Oreal__Rings_Olinordered__idom,axiom,
    class_Rings_Olinordered__idom(tc_RealDef_Oreal) ).

fof(fact_zdvd__imp__le,axiom,
    ! [V_n,V_z] :
      ( ( c_Orderings_Oord__class_Oless(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_n)
       => c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,V_z,V_n) )
     <= c_Rings_Odvd__class_Odvd(tc_Int_Oint,V_z,V_n) ) ).

fof(arity_RealDef__Oreal__Rings_Oring,axiom,
    class_Rings_Oring(tc_RealDef_Oreal) ).

fof(fact_mult__nonneg__nonpos2,axiom,
    ! [V_b,V_a,T_a] :
      ( class_Rings_Oordered__cancel__semiring(T_a)
     => ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_b,c_Groups_Ozero__class_Ozero(T_a))
         => c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b),V_a),c_Groups_Ozero__class_Ozero(T_a)) )
       <= c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_a) ) ) ).

fof(fact_natceiling__neg,axiom,
    ! [V_x] :
      ( c_RComplete_Onatceiling(V_x) = c_Groups_Ozero__class_Ozero(tc_Nat_Onat)
     <= c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,V_x,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)) ) ).

fof(fact_pCons_Ohyps,axiom,
    ! [V_a,V_d] :
      ( v_cs____ != c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(tc_Complex_Ocomplex))
     => ? [B_r] :
        ! [B_z] :
          ( c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,V_d,c_RealVector_Onorm__class_Onorm(tc_Complex_Ocomplex,hAPP(c_Polynomial_Opoly(tc_Complex_Ocomplex,c_Polynomial_OpCons(tc_Complex_Ocomplex,V_a,v_cs____)),B_z)))
         <= c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,B_r,c_RealVector_Onorm__class_Onorm(tc_Complex_Ocomplex,B_z)) ) ) ).

fof(fact_mult_Ozero__right,axiom,
    ! [V_a,T_a] :
      ( class_RealVector_Oreal__normed__algebra(T_a)
     => hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),c_Groups_Ozero__class_Ozero(T_a)) = c_Groups_Ozero__class_Ozero(T_a) ) ).

fof(arity_RealDef__Oreal__Rings_Olinordered__semiring__1,axiom,
    class_Rings_Olinordered__semiring__1(tc_RealDef_Oreal) ).

fof(fact_order__less__le,axiom,
    ! [V_y_2,V_x_2,T_a] :
      ( class_Orderings_Oorder(T_a)
     => ( ( V_y_2 != V_x_2
          & c_Orderings_Oord__class_Oless__eq(T_a,V_x_2,V_y_2) )
      <=> c_Orderings_Oord__class_Oless(T_a,V_x_2,V_y_2) ) ) ).

fof(fact_realpow__pos__nth,axiom,
    ! [V_a,V_n] :
      ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_n)
     => ( c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),V_a)
       => ? [B_r] :
            ( hAPP(hAPP(c_Power_Opower__class_Opower(tc_RealDef_Oreal),B_r),V_n) = V_a
            & c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),B_r) ) ) ) ).

fof(arity_RealDef__Oreal__Fields_Olinordered__field,axiom,
    class_Fields_Olinordered__field(tc_RealDef_Oreal) ).

fof(fact_mult__strict__left__mono,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( class_Rings_Olinordered__semiring__strict(T_a)
     => ( ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_c)
         => c_Orderings_Oord__class_Oless(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_c),V_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_c),V_b)) )
       <= c_Orderings_Oord__class_Oless(T_a,V_a,V_b) ) ) ).

fof(fact_order__less__asym_H,axiom,
    ! [V_b,V_a,T_a] :
      ( class_Orderings_Opreorder(T_a)
     => ( c_Orderings_Oord__class_Oless(T_a,V_a,V_b)
       => ~ c_Orderings_Oord__class_Oless(T_a,V_b,V_a) ) ) ).

fof(fact_less__irrefl__nat,axiom,
    ! [V_n] : ~ c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_n,V_n) ).

fof(arity_Complex__Ocomplex__Rings_Osemiring__0,axiom,
    class_Rings_Osemiring__0(tc_Complex_Ocomplex) ).

fof(fact_poly__bound__exists,axiom,
    ! [V_p,V_r] :
    ? [B_m] :
      ( c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),B_m)
      & ! [B_z] :
          ( c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_RealVector_Onorm__class_Onorm(tc_Complex_Ocomplex,B_z),V_r)
         => c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_RealVector_Onorm__class_Onorm(tc_Complex_Ocomplex,hAPP(c_Polynomial_Opoly(tc_Complex_Ocomplex,V_p),B_z)),B_m) ) ) ).

fof(arity_Complex__Ocomplex__RealVector_Oreal__normed__vector,axiom,
    class_RealVector_Oreal__normed__vector(tc_Complex_Ocomplex) ).

fof(arity_Nat__Onat__Groups_Ocancel__comm__monoid__add,axiom,
    class_Groups_Ocancel__comm__monoid__add(tc_Nat_Onat) ).

fof(fact_cs0,axiom,
    c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(tc_Complex_Ocomplex)) = v_cs____ ).

fof(fact_poly__pcompose,axiom,
    ! [V_x,V_q,V_p,T_a] :
      ( hAPP(c_Polynomial_Opoly(T_a,V_p),hAPP(c_Polynomial_Opoly(T_a,V_q),V_x)) = hAPP(c_Polynomial_Opoly(T_a,c_Polynomial_Opcompose(T_a,V_p,V_q)),V_x)
     <= class_Rings_Ocomm__semiring__0(T_a) ) ).

fof(fact_real__zero__not__eq__one,axiom,
    c_Groups_Oone__class_Oone(tc_RealDef_Oreal) != c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal) ).

fof(arity_Nat__Onat__Rings_Odvd,axiom,
    class_Rings_Odvd(tc_Nat_Onat) ).

fof(fact_nat__power__less__imp__less,axiom,
    ! [V_n,V_m,V_i] :
      ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_i)
     => ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_m,V_n)
       <= c_Orderings_Oord__class_Oless(tc_Nat_Onat,hAPP(hAPP(c_Power_Opower__class_Opower(tc_Nat_Onat),V_i),V_m),hAPP(hAPP(c_Power_Opower__class_Opower(tc_Nat_Onat),V_i),V_n)) ) ) ).

fof(arity_Polynomial__Opoly__Rings_Oring__1,axiom,
    ! [T_1] :
      ( class_Rings_Oring__1(tc_Polynomial_Opoly(T_1))
     <= class_Rings_Ocomm__ring__1(T_1) ) ).

fof(fact_real__mult__assoc,axiom,
    ! [V_z3,V_z2,V_z1] : hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),V_z1),V_z2)),V_z3) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),V_z1),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),V_z2),V_z3)) ).

fof(fact_add__pos__nonneg,axiom,
    ! [V_b,V_a,T_a] :
      ( ( ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),c_Groups_Oplus__class_Oplus(T_a,V_a,V_b))
         <= c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_b) )
       <= c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_a) )
     <= class_Groups_Oordered__comm__monoid__add(T_a) ) ).

fof(fact_le__cube,axiom,
    ! [V_m] : c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_m),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_m),V_m))) ).

fof(fact_comm__semiring__1__class_Onormalizing__semiring__rules_I18_J,axiom,
    ! [V_ry,V_rx,V_lx,T_a] :
      ( hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_lx),V_rx)),V_ry) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_lx),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_rx),V_ry))
     <= class_Rings_Ocomm__semiring__1(T_a) ) ).

fof(fact_pos__mod__conj,axiom,
    ! [V_a,V_b] :
      ( ( c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),c_Divides_Odiv__class_Omod(tc_Int_Oint,V_a,V_b))
        & c_Orderings_Oord__class_Oless(tc_Int_Oint,c_Divides_Odiv__class_Omod(tc_Int_Oint,V_a,V_b),V_b) )
     <= c_Orderings_Oord__class_Oless(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_b) ) ).

fof(fact_eq__add__iff1,axiom,
    ! [V_db_2,V_b_2,V_ca_2,V_e_2,V_ab_2,T_a] :
      ( class_Rings_Oring(T_a)
     => ( V_db_2 = c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Groups_Ominus__class_Ominus(T_a,V_ab_2,V_b_2)),V_e_2),V_ca_2)
      <=> c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b_2),V_e_2),V_db_2) = c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_ab_2),V_e_2),V_ca_2) ) ) ).

fof(fact_div__mult1__eq,axiom,
    ! [V_c,V_b,V_a] : c_Groups_Oplus__class_Oplus(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_a),c_Divides_Odiv__class_Odiv(tc_Nat_Onat,V_b,V_c)),c_Divides_Odiv__class_Odiv(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_a),c_Divides_Odiv__class_Omod(tc_Nat_Onat,V_b,V_c)),V_c)) = c_Divides_Odiv__class_Odiv(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_a),V_b),V_c) ).

fof(fact_real__add__mult__distrib,axiom,
    ! [V_w,V_z2,V_z1] : c_Groups_Oplus__class_Oplus(tc_RealDef_Oreal,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),V_z1),V_w),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),V_z2),V_w)) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),c_Groups_Oplus__class_Oplus(tc_RealDef_Oreal,V_z1,V_z2)),V_w) ).

fof(fact_power__dvd__imp__le,axiom,
    ! [V_n,V_m,V_i] :
      ( ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m,V_n)
       <= c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Oone__class_Oone(tc_Nat_Onat),V_i) )
     <= c_Rings_Odvd__class_Odvd(tc_Nat_Onat,hAPP(hAPP(c_Power_Opower__class_Opower(tc_Nat_Onat),V_i),V_m),hAPP(hAPP(c_Power_Opower__class_Opower(tc_Nat_Onat),V_i),V_n)) ) ).

fof(arity_Polynomial__Opoly__Groups_Olinordered__ab__group__add,axiom,
    ! [T_1] :
      ( class_Rings_Olinordered__idom(T_1)
     => class_Groups_Olinordered__ab__group__add(tc_Polynomial_Opoly(T_1)) ) ).

fof(fact_incseq__def,axiom,
    ! [V_X_2,T_a] :
      ( class_Orderings_Oorder(T_a)
     => ( c_SEQ_Oincseq(T_a,V_X_2)
      <=> ! [B_m,B_n] :
            ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,B_m,B_n)
           => c_Orderings_Oord__class_Oless__eq(T_a,hAPP(V_X_2,B_m),hAPP(V_X_2,B_n)) ) ) ) ).

fof(fact_mult__left__le__one__le,axiom,
    ! [V_y,V_x,T_a] :
      ( class_Rings_Olinordered__idom(T_a)
     => ( ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_y,c_Groups_Oone__class_Oone(T_a))
           => c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_y),V_x),V_x) )
         <= c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_y) )
       <= c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_x) ) ) ).

fof(fact_pos__poly__mult,axiom,
    ! [V_q,V_p,T_a] :
      ( class_Rings_Olinordered__idom(T_a)
     => ( c_Polynomial_Opos__poly(T_a,V_p)
       => ( c_Polynomial_Opos__poly(T_a,V_q)
         => c_Polynomial_Opos__poly(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Polynomial_Opoly(T_a)),V_p),V_q)) ) ) ) ).

fof(fact_one__less__power,axiom,
    ! [V_n,V_a,T_a] :
      ( class_Rings_Olinordered__semidom(T_a)
     => ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Oone__class_Oone(T_a),V_a)
       => ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Oone__class_Oone(T_a),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_n))
         <= c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_n) ) ) ) ).

fof(fact_times__divide__times__eq,axiom,
    ! [V_w,V_z,V_y,V_x,T_a] :
      ( class_Fields_Ofield__inverse__zero(T_a)
     => hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Rings_Oinverse__class_Odivide(T_a,V_x,V_y)),c_Rings_Oinverse__class_Odivide(T_a,V_z,V_w)) = c_Rings_Oinverse__class_Odivide(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_x),V_z),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_y),V_w)) ) ).

fof(fact_real__root__le__iff,axiom,
    ! [V_y_2,V_x_2,V_n_2] :
      ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_n_2)
     => ( c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,V_x_2,V_y_2)
      <=> c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_NthRoot_Oroot(V_n_2,V_x_2),c_NthRoot_Oroot(V_n_2,V_y_2)) ) ) ).

fof(fact_natceiling__add,axiom,
    ! [V_a,V_x] :
      ( c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),V_x)
     => c_RComplete_Onatceiling(c_Groups_Oplus__class_Oplus(tc_RealDef_Oreal,V_x,c_RealDef_Oreal(tc_Nat_Onat,V_a))) = c_Groups_Oplus__class_Oplus(tc_Nat_Onat,c_RComplete_Onatceiling(V_x),V_a) ) ).

fof(fact_real__norm__def,axiom,
    ! [V_r] : c_Groups_Oabs__class_Oabs(tc_RealDef_Oreal,V_r) = c_RealVector_Onorm__class_Onorm(tc_RealDef_Oreal,V_r) ).

fof(fact_linorder__linear,axiom,
    ! [V_y,V_x,T_a] :
      ( class_Orderings_Olinorder(T_a)
     => ( c_Orderings_Oord__class_Oless__eq(T_a,V_x,V_y)
        | c_Orderings_Oord__class_Oless__eq(T_a,V_y,V_x) ) ) ).

fof(fact_real__of__nat__inject,axiom,
    ! [V_m_2,V_n_2] :
      ( V_m_2 = V_n_2
    <=> c_RealDef_Oreal(tc_Nat_Onat,V_n_2) = c_RealDef_Oreal(tc_Nat_Onat,V_m_2) ) ).

fof(fact_add__less__imp__less__right,axiom,
    ! [V_b,V_c,V_a,T_a] :
      ( class_Groups_Oordered__ab__semigroup__add__imp__le(T_a)
     => ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Oplus__class_Oplus(T_a,V_a,V_c),c_Groups_Oplus__class_Oplus(T_a,V_b,V_c))
       => c_Orderings_Oord__class_Oless(T_a,V_a,V_b) ) ) ).

fof(arity_Complex__Ocomplex__Rings_Ono__zero__divisors,axiom,
    class_Rings_Ono__zero__divisors(tc_Complex_Ocomplex) ).

fof(arity_Complex__Ocomplex__Rings_Oring__1__no__zero__divisors,axiom,
    class_Rings_Oring__1__no__zero__divisors(tc_Complex_Ocomplex) ).

fof(fact_mod__diff__eq,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( class_Divides_Oring__div(T_a)
     => c_Divides_Odiv__class_Omod(T_a,c_Groups_Ominus__class_Ominus(T_a,V_a,V_b),V_c) = c_Divides_Odiv__class_Omod(T_a,c_Groups_Ominus__class_Ominus(T_a,c_Divides_Odiv__class_Omod(T_a,V_a,V_c),c_Divides_Odiv__class_Omod(T_a,V_b,V_c)),V_c) ) ).

fof(fact_add__poly__code_I2_J,axiom,
    ! [V_p,T_a] :
      ( class_Groups_Ocomm__monoid__add(T_a)
     => V_p = c_Groups_Oplus__class_Oplus(tc_Polynomial_Opoly(T_a),V_p,c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a))) ) ).

fof(arity_Polynomial__Opoly__Groups_Ogroup__add,axiom,
    ! [T_1] :
      ( class_Groups_Oab__group__add(T_1)
     => class_Groups_Ogroup__add(tc_Polynomial_Opoly(T_1)) ) ).

fof(fact_termination__basic__simps_I1_J,axiom,
    ! [V_z,V_y,V_x] :
      ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_x,V_y)
     => c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_x,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_y,V_z)) ) ).

fof(fact_zadd__0,axiom,
    ! [V_z] : V_z = c_Groups_Oplus__class_Oplus(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_z) ).

fof(arity_Int__Oint__Semiring__Normalization_Ocomm__semiring__1__cancel__crossproduct,axiom,
    class_Semiring__Normalization_Ocomm__semiring__1__cancel__crossproduct(tc_Int_Oint) ).

fof(fact_zdiv__mono2,axiom,
    ! [V_b,V_b_H,V_a] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_a)
     => ( ( c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,V_b_H,V_b)
         => c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Divides_Odiv__class_Odiv(tc_Int_Oint,V_a,V_b),c_Divides_Odiv__class_Odiv(tc_Int_Oint,V_a,V_b_H)) )
       <= c_Orderings_Oord__class_Oless(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_b_H) ) ) ).

fof(fact_neg__mod__sign,axiom,
    ! [V_a,V_b] :
      ( c_Orderings_Oord__class_Oless(tc_Int_Oint,V_b,c_Groups_Ozero__class_Ozero(tc_Int_Oint))
     => c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Divides_Odiv__class_Omod(tc_Int_Oint,V_a,V_b),c_Groups_Ozero__class_Ozero(tc_Int_Oint)) ) ).

fof(fact_decr__lemma,axiom,
    ! [V_z,V_x,V_d] :
      ( c_Orderings_Oord__class_Oless(tc_Int_Oint,c_Groups_Ominus__class_Ominus(tc_Int_Oint,V_x,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),c_Groups_Oplus__class_Oplus(tc_Int_Oint,c_Groups_Oabs__class_Oabs(tc_Int_Oint,c_Groups_Ominus__class_Ominus(tc_Int_Oint,V_x,V_z)),c_Groups_Oone__class_Oone(tc_Int_Oint))),V_d)),V_z)
     <= c_Orderings_Oord__class_Oless(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_d) ) ).

fof(fact_div__mult__self1__is__m,axiom,
    ! [V_m,V_n] :
      ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_n)
     => c_Divides_Odiv__class_Odiv(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_n),V_m),V_n) = V_m ) ).

fof(fact_dvd_Oless__le__trans,axiom,
    ! [V_z,V_y,V_x] :
      ( ( ( c_Rings_Odvd__class_Odvd(tc_Nat_Onat,V_x,V_z)
          & ~ c_Rings_Odvd__class_Odvd(tc_Nat_Onat,V_z,V_x) )
       <= c_Rings_Odvd__class_Odvd(tc_Nat_Onat,V_y,V_z) )
     <= ( ~ c_Rings_Odvd__class_Odvd(tc_Nat_Onat,V_y,V_x)
        & c_Rings_Odvd__class_Odvd(tc_Nat_Onat,V_x,V_y) ) ) ).

fof(fact_mult__imp__less__div__pos,axiom,
    ! [V_x,V_z,V_y,T_a] :
      ( ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_y)
       => ( c_Orderings_Oord__class_Oless(T_a,V_z,c_Rings_Oinverse__class_Odivide(T_a,V_x,V_y))
         <= c_Orderings_Oord__class_Oless(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_z),V_y),V_x) ) )
     <= class_Fields_Olinordered__field(T_a) ) ).

fof(fact_zdiv__mono2__lemma,axiom,
    ! [V_r_H,V_q_H,V_b_H,V_r,V_q,V_b] :
      ( c_Groups_Oplus__class_Oplus(tc_Int_Oint,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_b_H),V_q_H),V_r_H) = c_Groups_Oplus__class_Oplus(tc_Int_Oint,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_b),V_q),V_r)
     => ( c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),c_Groups_Oplus__class_Oplus(tc_Int_Oint,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_b_H),V_q_H),V_r_H))
       => ( ( ( c_Orderings_Oord__class_Oless(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_b_H)
             => ( c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,V_q,V_q_H)
               <= c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,V_b_H,V_b) ) )
           <= c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_r) )
         <= c_Orderings_Oord__class_Oless(tc_Int_Oint,V_r_H,V_b_H) ) ) ) ).

fof(fact_le__eq__less__or__eq,axiom,
    ! [V_n_2,V_m_2] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m_2,V_n_2)
    <=> ( V_m_2 = V_n_2
        | c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_m_2,V_n_2) ) ) ).

fof(fact_abs__add__one__gt__zero,axiom,
    ! [V_x] : c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),c_Groups_Oplus__class_Oplus(tc_RealDef_Oreal,c_Groups_Oone__class_Oone(tc_RealDef_Oreal),c_Groups_Oabs__class_Oabs(tc_RealDef_Oreal,V_x))) ).

fof(fact_mod__mult__right__eq,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( c_Divides_Odiv__class_Omod(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b),V_c) = c_Divides_Odiv__class_Omod(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),c_Divides_Odiv__class_Omod(T_a,V_b,V_c)),V_c)
     <= class_Divides_Osemiring__div(T_a) ) ).

fof(fact_zdiff__zmod__right,axiom,
    ! [V_m,V_y,V_x] : c_Divides_Odiv__class_Omod(tc_Int_Oint,c_Groups_Ominus__class_Ominus(tc_Int_Oint,V_x,V_y),V_m) = c_Divides_Odiv__class_Omod(tc_Int_Oint,c_Groups_Ominus__class_Ominus(tc_Int_Oint,V_x,c_Divides_Odiv__class_Omod(tc_Int_Oint,V_y,V_m)),V_m) ).

fof(fact_not__sum__squares__lt__zero,axiom,
    ! [V_y,V_x,T_a] :
      ( ~ c_Orderings_Oord__class_Oless(T_a,c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_x),V_x),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_y),V_y)),c_Groups_Ozero__class_Ozero(T_a))
     <= class_Rings_Olinordered__ring(T_a) ) ).

fof(fact_xt1_I5_J,axiom,
    ! [V_x,V_y,T_a] :
      ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_y,V_x)
       => ( V_y = V_x
         <= c_Orderings_Oord__class_Oless__eq(T_a,V_x,V_y) ) )
     <= class_Orderings_Oorder(T_a) ) ).

fof(fact_comm__semiring__1__class_Onormalizing__semiring__rules_I12_J,axiom,
    ! [V_a,T_a] :
      ( class_Rings_Ocomm__semiring__1(T_a)
     => hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),c_Groups_Oone__class_Oone(T_a)) = V_a ) ).

fof(fact_trans__le__add2,axiom,
    ! [V_m,V_j,V_i] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_i,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_m,V_j))
     <= c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_i,V_j) ) ).

fof(fact_add__left__cancel,axiom,
    ! [V_ca_2,V_b_2,V_ab_2,T_a] :
      ( ( c_Groups_Oplus__class_Oplus(T_a,V_ab_2,V_b_2) = c_Groups_Oplus__class_Oplus(T_a,V_ab_2,V_ca_2)
      <=> V_b_2 = V_ca_2 )
     <= class_Groups_Ocancel__semigroup__add(T_a) ) ).

fof(fact_zdiv__zmult2__eq,axiom,
    ! [V_b,V_a,V_c] :
      ( c_Divides_Odiv__class_Odiv(tc_Int_Oint,c_Divides_Odiv__class_Odiv(tc_Int_Oint,V_a,V_b),V_c) = c_Divides_Odiv__class_Odiv(tc_Int_Oint,V_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_b),V_c))
     <= c_Orderings_Oord__class_Oless(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_c) ) ).

fof(fact_less__imp__le__nat,axiom,
    ! [V_n,V_m] :
      ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_m,V_n)
     => c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m,V_n) ) ).

fof(fact_xt1_I1_J,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( ( V_a = V_b
       => ( c_Orderings_Oord__class_Oless(T_a,V_c,V_a)
         <= c_Orderings_Oord__class_Oless(T_a,V_c,V_b) ) )
     <= class_Orderings_Oorder(T_a) ) ).

fof(fact_linorder__not__less,axiom,
    ! [V_y_2,V_x_2,T_a] :
      ( class_Orderings_Olinorder(T_a)
     => ( ~ c_Orderings_Oord__class_Oless(T_a,V_x_2,V_y_2)
      <=> c_Orderings_Oord__class_Oless__eq(T_a,V_y_2,V_x_2) ) ) ).

fof(arity_Polynomial__Opoly__Power_Opower,axiom,
    ! [T_1] :
      ( class_Rings_Ocomm__semiring__1(T_1)
     => class_Power_Opower(tc_Polynomial_Opoly(T_1)) ) ).

fof(arity_Polynomial__Opoly__Rings_Oring__no__zero__divisors,axiom,
    ! [T_1] :
      ( class_Rings_Oring__no__zero__divisors(tc_Polynomial_Opoly(T_1))
     <= class_Rings_Oidom(T_1) ) ).

fof(arity_Complex__Ocomplex__Rings_Ocomm__ring__1,axiom,
    class_Rings_Ocomm__ring__1(tc_Complex_Ocomplex) ).

fof(fact_zdiv__mono1,axiom,
    ! [V_b,V_a_H,V_a] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,V_a,V_a_H)
     => ( c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Divides_Odiv__class_Odiv(tc_Int_Oint,V_a,V_b),c_Divides_Odiv__class_Odiv(tc_Int_Oint,V_a_H,V_b))
       <= c_Orderings_Oord__class_Oless(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_b) ) ) ).

fof(fact_mult__divide__mult__cancel__left,axiom,
    ! [V_b,V_a,V_c,T_a] :
      ( class_Fields_Ofield__inverse__zero(T_a)
     => ( c_Groups_Ozero__class_Ozero(T_a) != V_c
       => c_Rings_Oinverse__class_Odivide(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_c),V_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_c),V_b)) = c_Rings_Oinverse__class_Odivide(T_a,V_a,V_b) ) ) ).

fof(fact_less__le__not__le,axiom,
    ! [V_y_2,V_x_2,T_a] :
      ( ( ( ~ c_Orderings_Oord__class_Oless__eq(T_a,V_y_2,V_x_2)
          & c_Orderings_Oord__class_Oless__eq(T_a,V_x_2,V_y_2) )
      <=> c_Orderings_Oord__class_Oless(T_a,V_x_2,V_y_2) )
     <= class_Orderings_Opreorder(T_a) ) ).

fof(fact_dvd__div__mult__self,axiom,
    ! [V_b,V_a,T_a] :
      ( ( hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Divides_Odiv__class_Odiv(T_a,V_b,V_a)),V_a) = V_b
       <= c_Rings_Odvd__class_Odvd(T_a,V_a,V_b) )
     <= class_Divides_Osemiring__div(T_a) ) ).

fof(fact_zpower__zpower,axiom,
    ! [V_z,V_y,V_x] : hAPP(hAPP(c_Power_Opower__class_Opower(tc_Int_Oint),V_x),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_y),V_z)) = hAPP(hAPP(c_Power_Opower__class_Opower(tc_Int_Oint),hAPP(hAPP(c_Power_Opower__class_Opower(tc_Int_Oint),V_x),V_y)),V_z) ).

fof(fact_real__root__less__iff,axiom,
    ! [V_y_2,V_x_2,V_n_2] :
      ( ( c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,V_x_2,V_y_2)
      <=> c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_NthRoot_Oroot(V_n_2,V_x_2),c_NthRoot_Oroot(V_n_2,V_y_2)) )
     <= c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_n_2) ) ).

fof(fact_real__root__pow__pos2,axiom,
    ! [V_x,V_n] :
      ( ( hAPP(hAPP(c_Power_Opower__class_Opower(tc_RealDef_Oreal),c_NthRoot_Oroot(V_n,V_x)),V_n) = V_x
       <= c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),V_x) )
     <= c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_n) ) ).

fof(fact_sum__squares__le__zero__iff,axiom,
    ! [V_y_2,V_x_2,T_a] :
      ( ( ( V_x_2 = c_Groups_Ozero__class_Ozero(T_a)
          & V_y_2 = c_Groups_Ozero__class_Ozero(T_a) )
      <=> c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_x_2),V_x_2),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_y_2),V_y_2)),c_Groups_Ozero__class_Ozero(T_a)) )
     <= class_Rings_Olinordered__ring__strict(T_a) ) ).

fof(fact_mult__pos__neg,axiom,
    ! [V_b,V_a,T_a] :
      ( ( ( c_Orderings_Oord__class_Oless(T_a,V_b,c_Groups_Ozero__class_Ozero(T_a))
         => c_Orderings_Oord__class_Oless(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b),c_Groups_Ozero__class_Ozero(T_a)) )
       <= c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_a) )
     <= class_Rings_Olinordered__semiring__strict(T_a) ) ).

fof(fact_times__divide__eq__right,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( c_Rings_Oinverse__class_Odivide(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b),V_c) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),c_Rings_Oinverse__class_Odivide(T_a,V_b,V_c))
     <= class_Rings_Odivision__ring(T_a) ) ).

fof(fact_power__less__imp__less__exp,axiom,
    ! [V_n,V_m,V_a,T_a] :
      ( ( ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_m,V_n)
         <= c_Orderings_Oord__class_Oless(T_a,hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_m),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_n)) )
       <= c_Orderings_Oord__class_Oless(T_a,c_Groups_Oone__class_Oone(T_a),V_a) )
     <= class_Rings_Olinordered__semidom(T_a) ) ).

fof(fact_real__root__one,axiom,
    ! [V_n] :
      ( c_NthRoot_Oroot(V_n,c_Groups_Oone__class_Oone(tc_RealDef_Oreal)) = c_Groups_Oone__class_Oone(tc_RealDef_Oreal)
     <= c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_n) ) ).

fof(arity_Int__Oint__Rings_Oordered__ring,axiom,
    class_Rings_Oordered__ring(tc_Int_Oint) ).

fof(fact_real__mult__less__mono2,axiom,
    ! [V_y,V_x,V_z] :
      ( c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),V_z)
     => ( c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,V_x,V_y)
       => c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),V_z),V_x),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),V_z),V_y)) ) ) ).

fof(fact_zadd__strict__right__mono,axiom,
    ! [V_k,V_j,V_i] :
      ( c_Orderings_Oord__class_Oless(tc_Int_Oint,c_Groups_Oplus__class_Oplus(tc_Int_Oint,V_i,V_k),c_Groups_Oplus__class_Oplus(tc_Int_Oint,V_j,V_k))
     <= c_Orderings_Oord__class_Oless(tc_Int_Oint,V_i,V_j) ) ).

fof(fact_linorder__neqE__linordered__idom,axiom,
    ! [V_y,V_x,T_a] :
      ( ( ( c_Orderings_Oord__class_Oless(T_a,V_y,V_x)
         <= ~ c_Orderings_Oord__class_Oless(T_a,V_x,V_y) )
       <= V_x != V_y )
     <= class_Rings_Olinordered__idom(T_a) ) ).

fof(fact_real__root__mult,axiom,
    ! [V_y,V_x,V_n] :
      ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_n)
     => hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),c_NthRoot_Oroot(V_n,V_x)),c_NthRoot_Oroot(V_n,V_y)) = c_NthRoot_Oroot(V_n,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),V_x),V_y)) ) ).

fof(fact_odd__nonzero,axiom,
    ! [V_z] : c_Groups_Oplus__class_Oplus(tc_Int_Oint,c_Groups_Oplus__class_Oplus(tc_Int_Oint,c_Groups_Oone__class_Oone(tc_Int_Oint),V_z),V_z) != c_Groups_Ozero__class_Ozero(tc_Int_Oint) ).

fof(fact_abs__idempotent,axiom,
    ! [V_a,T_a] :
      ( c_Groups_Oabs__class_Oabs(T_a,c_Groups_Oabs__class_Oabs(T_a,V_a)) = c_Groups_Oabs__class_Oabs(T_a,V_a)
     <= class_Groups_Oordered__ab__group__add__abs(T_a) ) ).

fof(fact_zadd__zmult__distrib2,axiom,
    ! [V_z2,V_z1,V_w] : c_Groups_Oplus__class_Oplus(tc_Int_Oint,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_w),V_z1),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_w),V_z2)) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_w),c_Groups_Oplus__class_Oplus(tc_Int_Oint,V_z1,V_z2)) ).

fof(arity_Nat__Onat__Groups_Oordered__comm__monoid__add,axiom,
    class_Groups_Oordered__comm__monoid__add(tc_Nat_Onat) ).

fof(fact_div__add1__eq,axiom,
    ! [V_c,V_b,V_a] : c_Groups_Oplus__class_Oplus(tc_Nat_Onat,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,c_Divides_Odiv__class_Odiv(tc_Nat_Onat,V_a,V_c),c_Divides_Odiv__class_Odiv(tc_Nat_Onat,V_b,V_c)),c_Divides_Odiv__class_Odiv(tc_Nat_Onat,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,c_Divides_Odiv__class_Omod(tc_Nat_Onat,V_a,V_c),c_Divides_Odiv__class_Omod(tc_Nat_Onat,V_b,V_c)),V_c)) = c_Divides_Odiv__class_Odiv(tc_Nat_Onat,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_a,V_b),V_c) ).

fof(fact_dvd_Oneq__le__trans,axiom,
    ! [V_b,V_a] :
      ( ( ( ~ c_Rings_Odvd__class_Odvd(tc_Nat_Onat,V_b,V_a)
          & c_Rings_Odvd__class_Odvd(tc_Nat_Onat,V_a,V_b) )
       <= c_Rings_Odvd__class_Odvd(tc_Nat_Onat,V_a,V_b) )
     <= V_b != V_a ) ).

fof(fact_nonzero__norm__divide,axiom,
    ! [V_a,V_b,T_a] :
      ( class_RealVector_Oreal__normed__field(T_a)
     => ( c_Groups_Ozero__class_Ozero(T_a) != V_b
       => c_Rings_Oinverse__class_Odivide(tc_RealDef_Oreal,c_RealVector_Onorm__class_Onorm(T_a,V_a),c_RealVector_Onorm__class_Onorm(T_a,V_b)) = c_RealVector_Onorm__class_Onorm(T_a,c_Rings_Oinverse__class_Odivide(T_a,V_a,V_b)) ) ) ).

fof(fact_not__real__square__gt__zero,axiom,
    ! [V_x_2] :
      ( V_x_2 = c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)
    <=> ~ c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),V_x_2),V_x_2)) ) ).

fof(arity_Int__Oint__Rings_Olinordered__ring__strict,axiom,
    class_Rings_Olinordered__ring__strict(tc_Int_Oint) ).

fof(fact_div__add,axiom,
    ! [V_y,V_x,V_z,T_a] :
      ( ( ( c_Groups_Oplus__class_Oplus(T_a,c_Divides_Odiv__class_Odiv(T_a,V_x,V_z),c_Divides_Odiv__class_Odiv(T_a,V_y,V_z)) = c_Divides_Odiv__class_Odiv(T_a,c_Groups_Oplus__class_Oplus(T_a,V_x,V_y),V_z)
         <= c_Rings_Odvd__class_Odvd(T_a,V_z,V_y) )
       <= c_Rings_Odvd__class_Odvd(T_a,V_z,V_x) )
     <= class_Divides_Osemiring__div(T_a) ) ).

fof(fact_comm__semiring__1__class_Onormalizing__semiring__rules_I4_J,axiom,
    ! [V_m,T_a] :
      ( c_Groups_Oplus__class_Oplus(T_a,V_m,V_m) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Groups_Oplus__class_Oplus(T_a,c_Groups_Oone__class_Oone(T_a),c_Groups_Oone__class_Oone(T_a))),V_m)
     <= class_Rings_Ocomm__semiring__1(T_a) ) ).

fof(fact_abs__of__pos,axiom,
    ! [V_a,T_a] :
      ( class_Groups_Oordered__ab__group__add__abs(T_a)
     => ( c_Groups_Oabs__class_Oabs(T_a,V_a) = V_a
       <= c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_a) ) ) ).

fof(arity_Int__Oint__Rings_Ocomm__ring,axiom,
    class_Rings_Ocomm__ring(tc_Int_Oint) ).

fof(fact_pow__divides__eq__nat,axiom,
    ! [V_b_2,V_ab_2,V_n_2] :
      ( ( c_Rings_Odvd__class_Odvd(tc_Nat_Onat,V_ab_2,V_b_2)
      <=> c_Rings_Odvd__class_Odvd(tc_Nat_Onat,hAPP(hAPP(c_Power_Opower__class_Opower(tc_Nat_Onat),V_ab_2),V_n_2),hAPP(hAPP(c_Power_Opower__class_Opower(tc_Nat_Onat),V_b_2),V_n_2)) )
     <= V_n_2 != c_Groups_Ozero__class_Ozero(tc_Nat_Onat) ) ).

fof(fact_divide__strict__left__mono,axiom,
    ! [V_c,V_a,V_b,T_a] :
      ( ( ( ( c_Orderings_Oord__class_Oless(T_a,c_Rings_Oinverse__class_Odivide(T_a,V_c,V_a),c_Rings_Oinverse__class_Odivide(T_a,V_c,V_b))
           <= c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b)) )
         <= c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_c) )
       <= c_Orderings_Oord__class_Oless(T_a,V_b,V_a) )
     <= class_Fields_Olinordered__field(T_a) ) ).

fof(fact_div__by__0,axiom,
    ! [V_a,T_a] :
      ( c_Groups_Ozero__class_Ozero(T_a) = c_Divides_Odiv__class_Odiv(T_a,V_a,c_Groups_Ozero__class_Ozero(T_a))
     <= class_Divides_Osemiring__div(T_a) ) ).

fof(fact_mod__mult__left__eq,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( c_Divides_Odiv__class_Omod(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b),V_c) = c_Divides_Odiv__class_Omod(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Divides_Odiv__class_Omod(T_a,V_a,V_c)),V_b),V_c)
     <= class_Divides_Osemiring__div(T_a) ) ).

fof(arity_Nat__Onat__Rings_Ono__zero__divisors,axiom,
    class_Rings_Ono__zero__divisors(tc_Nat_Onat) ).

fof(fact_zero__le__power__abs,axiom,
    ! [V_n,V_a,T_a] :
      ( class_Rings_Olinordered__idom(T_a)
     => c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),c_Groups_Oabs__class_Oabs(T_a,V_a)),V_n)) ) ).

fof(fact_order__less__not__sym,axiom,
    ! [V_y,V_x,T_a] :
      ( class_Orderings_Opreorder(T_a)
     => ( ~ c_Orderings_Oord__class_Oless(T_a,V_y,V_x)
       <= c_Orderings_Oord__class_Oless(T_a,V_x,V_y) ) ) ).

fof(arity_fun__Orderings_Oord,axiom,
    ! [T_2,T_1] :
      ( class_Orderings_Oord(T_1)
     => class_Orderings_Oord(tc_fun(T_2,T_1)) ) ).

fof(fact_add__poly__code_I1_J,axiom,
    ! [V_q,T_a] :
      ( V_q = c_Groups_Oplus__class_Oplus(tc_Polynomial_Opoly(T_a),c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a)),V_q)
     <= class_Groups_Ocomm__monoid__add(T_a) ) ).

fof(fact_add__0__iff,axiom,
    ! [V_ab_2,V_b_2,T_a] :
      ( ( c_Groups_Ozero__class_Ozero(T_a) = V_ab_2
      <=> c_Groups_Oplus__class_Oplus(T_a,V_b_2,V_ab_2) = V_b_2 )
     <= class_Semiring__Normalization_Ocomm__semiring__1__cancel__crossproduct(T_a) ) ).

fof(arity_Nat__Onat__Rings_Ocomm__semiring,axiom,
    class_Rings_Ocomm__semiring(tc_Nat_Onat) ).

fof(fact_real__root__power,axiom,
    ! [V_k,V_x,V_n] :
      ( hAPP(hAPP(c_Power_Opower__class_Opower(tc_RealDef_Oreal),c_NthRoot_Oroot(V_n,V_x)),V_k) = c_NthRoot_Oroot(V_n,hAPP(hAPP(c_Power_Opower__class_Opower(tc_RealDef_Oreal),V_x),V_k))
     <= c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_n) ) ).

fof(arity_Int__Oint__Groups_Ogroup__add,axiom,
    class_Groups_Ogroup__add(tc_Int_Oint) ).

fof(fact_le__divide__eq,axiom,
    ! [V_ca_2,V_b_2,V_ab_2,T_a] :
      ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_ab_2,c_Rings_Oinverse__class_Odivide(T_a,V_b_2,V_ca_2))
      <=> ( ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_ca_2)
           => c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_ab_2),V_ca_2),V_b_2) )
          & ( ( ( ~ c_Orderings_Oord__class_Oless(T_a,V_ca_2,c_Groups_Ozero__class_Ozero(T_a))
               => c_Orderings_Oord__class_Oless__eq(T_a,V_ab_2,c_Groups_Ozero__class_Ozero(T_a)) )
              & ( c_Orderings_Oord__class_Oless(T_a,V_ca_2,c_Groups_Ozero__class_Ozero(T_a))
               => c_Orderings_Oord__class_Oless__eq(T_a,V_b_2,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_ab_2),V_ca_2)) ) )
           <= ~ c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_ca_2) ) ) )
     <= class_Fields_Olinordered__field__inverse__zero(T_a) ) ).

fof(fact_real__root__gt__zero,axiom,
    ! [V_x,V_n] :
      ( ( c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),V_x)
       => c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),c_NthRoot_Oroot(V_n,V_x)) )
     <= c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_n) ) ).

fof(fact_pow__divides__pow__int,axiom,
    ! [V_b,V_n,V_a] :
      ( c_Rings_Odvd__class_Odvd(tc_Int_Oint,hAPP(hAPP(c_Power_Opower__class_Opower(tc_Int_Oint),V_a),V_n),hAPP(hAPP(c_Power_Opower__class_Opower(tc_Int_Oint),V_b),V_n))
     => ( c_Rings_Odvd__class_Odvd(tc_Int_Oint,V_a,V_b)
       <= c_Groups_Ozero__class_Ozero(tc_Nat_Onat) != V_n ) ) ).

fof(fact_Divides_Otransfer__nat__int__function__closures_I1_J,axiom,
    ! [V_y,V_x] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_x)
     => ( c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_y)
       => c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),c_Divides_Odiv__class_Odiv(tc_Int_Oint,V_x,V_y)) ) ) ).

fof(fact_dvd_Oless__imp__le,axiom,
    ! [V_y,V_x] :
      ( c_Rings_Odvd__class_Odvd(tc_Nat_Onat,V_x,V_y)
     <= ( c_Rings_Odvd__class_Odvd(tc_Nat_Onat,V_x,V_y)
        & ~ c_Rings_Odvd__class_Odvd(tc_Nat_Onat,V_y,V_x) ) ) ).

fof(fact_real__mult__order,axiom,
    ! [V_y,V_x] :
      ( ( c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),V_x),V_y))
       <= c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),V_y) )
     <= c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),V_x) ) ).

fof(arity_RealDef__Oreal__Rings_Ocomm__ring,axiom,
    class_Rings_Ocomm__ring(tc_RealDef_Oreal) ).

fof(fact_norm__mult,axiom,
    ! [V_y,V_x,T_a] :
      ( class_RealVector_Oreal__normed__div__algebra(T_a)
     => c_RealVector_Onorm__class_Onorm(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_x),V_y)) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),c_RealVector_Onorm__class_Onorm(T_a,V_x)),c_RealVector_Onorm__class_Onorm(T_a,V_y)) ) ).

fof(fact_real__root__pos__pos,axiom,
    ! [V_x_1,V_n_1] :
      ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_n_1)
     => ( c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),c_NthRoot_Oroot(V_n_1,V_x_1))
       <= c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),V_x_1) ) ) ).

fof(fact_not__one__less__zero,axiom,
    ! [T_a] :
      ( ~ c_Orderings_Oord__class_Oless(T_a,c_Groups_Oone__class_Oone(T_a),c_Groups_Ozero__class_Ozero(T_a))
     <= class_Rings_Olinordered__semidom(T_a) ) ).

fof(fact_real__root__le__1__iff,axiom,
    ! [V_x_2,V_n_2] :
      ( ( c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_NthRoot_Oroot(V_n_2,V_x_2),c_Groups_Oone__class_Oone(tc_RealDef_Oreal))
      <=> c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,V_x_2,c_Groups_Oone__class_Oone(tc_RealDef_Oreal)) )
     <= c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_n_2) ) ).

fof(fact_norm__add__less,axiom,
    ! [V_s,V_y,V_r,V_x,T_a] :
      ( class_RealVector_Oreal__normed__vector(T_a)
     => ( c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_RealVector_Onorm__class_Onorm(T_a,V_x),V_r)
       => ( c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_RealVector_Onorm__class_Onorm(T_a,c_Groups_Oplus__class_Oplus(T_a,V_x,V_y)),c_Groups_Oplus__class_Oplus(tc_RealDef_Oreal,V_r,V_s))
         <= c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_RealVector_Onorm__class_Onorm(T_a,V_y),V_s) ) ) ) ).

fof(fact_add__nonneg__pos,axiom,
    ! [V_b,V_a,T_a] :
      ( class_Groups_Oordered__comm__monoid__add(T_a)
     => ( ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_b)
         => c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),c_Groups_Oplus__class_Oplus(T_a,V_a,V_b)) )
       <= c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_a) ) ) ).

fof(arity_Polynomial__Opoly__Rings_Olinordered__semiring,axiom,
    ! [T_1] :
      ( class_Rings_Olinordered__idom(T_1)
     => class_Rings_Olinordered__semiring(tc_Polynomial_Opoly(T_1)) ) ).

fof(fact_mod__diff__right__eq,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( c_Divides_Odiv__class_Omod(T_a,c_Groups_Ominus__class_Ominus(T_a,V_a,c_Divides_Odiv__class_Omod(T_a,V_b,V_c)),V_c) = c_Divides_Odiv__class_Omod(T_a,c_Groups_Ominus__class_Ominus(T_a,V_a,V_b),V_c)
     <= class_Divides_Oring__div(T_a) ) ).

fof(fact_not__add__less2,axiom,
    ! [V_i,V_j] : ~ c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_j,V_i),V_i) ).

fof(fact_zdvd__period,axiom,
    ! [V_ca_2,V_t_2,V_x_2,V_db_2,V_ab_2] :
      ( ( c_Rings_Odvd__class_Odvd(tc_Int_Oint,V_ab_2,c_Groups_Oplus__class_Oplus(tc_Int_Oint,c_Groups_Oplus__class_Oplus(tc_Int_Oint,V_x_2,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_ca_2),V_db_2)),V_t_2))
      <=> c_Rings_Odvd__class_Odvd(tc_Int_Oint,V_ab_2,c_Groups_Oplus__class_Oplus(tc_Int_Oint,V_x_2,V_t_2)) )
     <= c_Rings_Odvd__class_Odvd(tc_Int_Oint,V_ab_2,V_db_2) ) ).

fof(fact_zmult__1,axiom,
    ! [V_z] : V_z = hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),c_Groups_Oone__class_Oone(tc_Int_Oint)),V_z) ).

fof(fact_mult__0__right,axiom,
    ! [V_m] : c_Groups_Ozero__class_Ozero(tc_Nat_Onat) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_m),c_Groups_Ozero__class_Ozero(tc_Nat_Onat)) ).

fof(fact_real__mult__1,axiom,
    ! [V_z] : hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),c_Groups_Oone__class_Oone(tc_RealDef_Oreal)),V_z) = V_z ).

fof(fact_comm__semiring__1__class_Onormalizing__semiring__rules_I25_J,axiom,
    ! [V_d,V_c,V_a,T_a] :
      ( class_Rings_Ocomm__semiring__1(T_a)
     => c_Groups_Oplus__class_Oplus(T_a,c_Groups_Oplus__class_Oplus(T_a,V_a,V_c),V_d) = c_Groups_Oplus__class_Oplus(T_a,V_a,c_Groups_Oplus__class_Oplus(T_a,V_c,V_d)) ) ).

fof(fact_neg__imp__zdiv__nonneg__iff,axiom,
    ! [V_ab_2,V_b_2] :
      ( ( c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,V_ab_2,c_Groups_Ozero__class_Ozero(tc_Int_Oint))
      <=> c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),c_Divides_Odiv__class_Odiv(tc_Int_Oint,V_ab_2,V_b_2)) )
     <= c_Orderings_Oord__class_Oless(tc_Int_Oint,V_b_2,c_Groups_Ozero__class_Ozero(tc_Int_Oint)) ) ).

fof(fact_dvd_Oless__asym_H,axiom,
    ! [V_b,V_a] :
      ( ~ ( c_Rings_Odvd__class_Odvd(tc_Nat_Onat,V_b,V_a)
          & ~ c_Rings_Odvd__class_Odvd(tc_Nat_Onat,V_a,V_b) )
     <= ( c_Rings_Odvd__class_Odvd(tc_Nat_Onat,V_a,V_b)
        & ~ c_Rings_Odvd__class_Odvd(tc_Nat_Onat,V_b,V_a) ) ) ).

fof(fact_real__of__nat__div,axiom,
    ! [V_n,V_d] :
      ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_d)
     => ( c_Rings_Oinverse__class_Odivide(tc_RealDef_Oreal,c_RealDef_Oreal(tc_Nat_Onat,V_n),c_RealDef_Oreal(tc_Nat_Onat,V_d)) = c_RealDef_Oreal(tc_Nat_Onat,c_Divides_Odiv__class_Odiv(tc_Nat_Onat,V_n,V_d))
       <= c_Rings_Odvd__class_Odvd(tc_Nat_Onat,V_d,V_n) ) ) ).

fof(arity_HOL__Obool__Orderings_Oord,axiom,
    class_Orderings_Oord(tc_HOL_Obool) ).

fof(fact_real__two__squares__add__zero__iff,axiom,
    ! [V_y_2,V_x_2] :
      ( ( c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal) = V_y_2
        & c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal) = V_x_2 )
    <=> c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal) = c_Groups_Oplus__class_Oplus(tc_RealDef_Oreal,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),V_x_2),V_x_2),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),V_y_2),V_y_2)) ) ).

fof(fact_nat__mult__commute,axiom,
    ! [V_n,V_m] : hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_m),V_n) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_n),V_m) ).

fof(fact_mult__neg__pos,axiom,
    ! [V_b,V_a,T_a] :
      ( class_Rings_Olinordered__semiring__strict(T_a)
     => ( c_Orderings_Oord__class_Oless(T_a,V_a,c_Groups_Ozero__class_Ozero(T_a))
       => ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_b)
         => c_Orderings_Oord__class_Oless(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b),c_Groups_Ozero__class_Ozero(T_a)) ) ) ) ).

fof(arity_Nat__Onat__Groups_Ozero,axiom,
    class_Groups_Ozero(tc_Nat_Onat) ).

fof(fact_poly__rec__pCons,axiom,
    ! [V_pa_2,V_ab_2,T_a,V_za_2,V_f_2,T_b] :
      ( ( c_Polynomial_Opoly__rec(T_a,T_b,V_za_2,V_f_2,c_Polynomial_OpCons(T_b,V_ab_2,V_pa_2)) = hAPP(hAPP(hAPP(V_f_2,V_ab_2),V_pa_2),c_Polynomial_Opoly__rec(T_a,T_b,V_za_2,V_f_2,V_pa_2))
       <= hAPP(hAPP(hAPP(V_f_2,c_Groups_Ozero__class_Ozero(T_b)),c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_b))),V_za_2) = V_za_2 )
     <= class_Groups_Ozero(T_b) ) ).

fof(fact_one__neq__zero,axiom,
    ! [T_a] :
      ( class_Rings_Ozero__neq__one(T_a)
     => c_Groups_Oone__class_Oone(T_a) != c_Groups_Ozero__class_Ozero(T_a) ) ).

fof(fact_pos__le__divide__eq,axiom,
    ! [V_b_2,V_ab_2,V_ca_2,T_a] :
      ( ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_ab_2,c_Rings_Oinverse__class_Odivide(T_a,V_b_2,V_ca_2))
        <=> c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_ab_2),V_ca_2),V_b_2) )
       <= c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_ca_2) )
     <= class_Fields_Olinordered__field(T_a) ) ).

fof(fact_zadd__assoc,axiom,
    ! [V_z3,V_z2,V_z1] : c_Groups_Oplus__class_Oplus(tc_Int_Oint,c_Groups_Oplus__class_Oplus(tc_Int_Oint,V_z1,V_z2),V_z3) = c_Groups_Oplus__class_Oplus(tc_Int_Oint,V_z1,c_Groups_Oplus__class_Oplus(tc_Int_Oint,V_z2,V_z3)) ).

fof(fact_linorder__antisym__conv1,axiom,
    ! [V_y_2,V_x_2,T_a] :
      ( class_Orderings_Olinorder(T_a)
     => ( ( V_x_2 = V_y_2
        <=> c_Orderings_Oord__class_Oless__eq(T_a,V_x_2,V_y_2) )
       <= ~ c_Orderings_Oord__class_Oless(T_a,V_x_2,V_y_2) ) ) ).

fof(fact_mult__left__le__imp__le,axiom,
    ! [V_b,V_a,V_c,T_a] :
      ( class_Rings_Olinordered__semiring__strict(T_a)
     => ( c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_c),V_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_c),V_b))
       => ( c_Orderings_Oord__class_Oless__eq(T_a,V_a,V_b)
         <= c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_c) ) ) ) ).

fof(arity_RealDef__Oreal__Rings_Olinordered__semiring,axiom,
    class_Rings_Olinordered__semiring(tc_RealDef_Oreal) ).

fof(conj_0,conjecture,
    c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_RealVector_Onorm__class_Onorm(tc_Complex_Ocomplex,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Complex_Ocomplex),v_z____),v_c____)),c_Groups_Oplus__class_Oplus(tc_RealDef_Oreal,c_RealVector_Onorm__class_Onorm(tc_Complex_Ocomplex,c_Groups_Oplus__class_Oplus(tc_Complex_Ocomplex,v_aa____,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Complex_Ocomplex),v_z____),v_c____))),c_RealVector_Onorm__class_Onorm(tc_Complex_Ocomplex,v_aa____))) ).

fof(arity_Complex__Ocomplex__Rings_Odivision__ring,axiom,
    class_Rings_Odivision__ring(tc_Complex_Ocomplex) ).

fof(fact_not__one__le__zero,axiom,
    ! [T_a] :
      ( ~ c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Oone__class_Oone(T_a),c_Groups_Ozero__class_Ozero(T_a))
     <= class_Rings_Olinordered__semidom(T_a) ) ).

fof(fact_mod__mult__self2__is__0,axiom,
    ! [V_b,V_a,T_a] :
      ( class_Divides_Osemiring__div(T_a)
     => c_Divides_Odiv__class_Omod(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b),V_b) = c_Groups_Ozero__class_Ozero(T_a) ) ).

fof(fact_zero__less__divide__iff,axiom,
    ! [V_b_2,V_ab_2,T_a] :
      ( class_Fields_Olinordered__field__inverse__zero(T_a)
     => ( ( ( c_Orderings_Oord__class_Oless(T_a,V_ab_2,c_Groups_Ozero__class_Ozero(T_a))
            & c_Orderings_Oord__class_Oless(T_a,V_b_2,c_Groups_Ozero__class_Ozero(T_a)) )
          | ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_ab_2)
            & c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_b_2) ) )
      <=> c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),c_Rings_Oinverse__class_Odivide(T_a,V_ab_2,V_b_2)) ) ) ).

fof(fact_dvd__power,axiom,
    ! [V_x,V_n,T_a] :
      ( ( ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_n)
          | c_Groups_Oone__class_Oone(T_a) = V_x )
       => c_Rings_Odvd__class_Odvd(T_a,V_x,hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_x),V_n)) )
     <= class_Rings_Ocomm__semiring__1(T_a) ) ).

fof(fact_comm__mult__left__mono,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( class_Rings_Oordered__comm__semiring(T_a)
     => ( c_Orderings_Oord__class_Oless__eq(T_a,V_a,V_b)
       => ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_c)
         => c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_c),V_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_c),V_b)) ) ) ) ).

fof(fact_mult__less__imp__less__left,axiom,
    ! [V_b,V_a,V_c,T_a] :
      ( ( ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_c)
         => c_Orderings_Oord__class_Oless(T_a,V_a,V_b) )
       <= c_Orderings_Oord__class_Oless(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_c),V_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_c),V_b)) )
     <= class_Rings_Olinordered__semiring__strict(T_a) ) ).

fof(arity_Int__Oint__Groups_Oab__semigroup__add,axiom,
    class_Groups_Oab__semigroup__add(tc_Int_Oint) ).

fof(fact_linorder__not__le,axiom,
    ! [V_y_2,V_x_2,T_a] :
      ( ( ~ c_Orderings_Oord__class_Oless__eq(T_a,V_x_2,V_y_2)
      <=> c_Orderings_Oord__class_Oless(T_a,V_y_2,V_x_2) )
     <= class_Orderings_Olinorder(T_a) ) ).

fof(arity_Polynomial__Opoly__Groups_Oab__semigroup__mult,axiom,
    ! [T_1] :
      ( class_Groups_Oab__semigroup__mult(tc_Polynomial_Opoly(T_1))
     <= class_Rings_Ocomm__semiring__0(T_1) ) ).

fof(fact_le__iff__diff__le__0,axiom,
    ! [V_b_2,V_ab_2,T_a] :
      ( class_Groups_Oordered__ab__group__add(T_a)
     => ( c_Orderings_Oord__class_Oless__eq(T_a,V_ab_2,V_b_2)
      <=> c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ominus__class_Ominus(T_a,V_ab_2,V_b_2),c_Groups_Ozero__class_Ozero(T_a)) ) ) ).

fof(fact_DIVISION__BY__ZERO,axiom,
    ! [V_a] :
      ( c_Groups_Ozero__class_Ozero(tc_Int_Oint) = c_Divides_Odiv__class_Odiv(tc_Int_Oint,V_a,c_Groups_Ozero__class_Ozero(tc_Int_Oint))
      & c_Divides_Odiv__class_Omod(tc_Int_Oint,V_a,c_Groups_Ozero__class_Ozero(tc_Int_Oint)) = V_a ) ).

fof(fact_mod__by__1,axiom,
    ! [V_a,T_a] :
      ( c_Divides_Odiv__class_Omod(T_a,V_a,c_Groups_Oone__class_Oone(T_a)) = c_Groups_Ozero__class_Ozero(T_a)
     <= class_Divides_Osemiring__div(T_a) ) ).

fof(fact_real__root__decreasing,axiom,
    ! [V_x,V_N,V_n] :
      ( ( ( c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_NthRoot_Oroot(V_N,V_x),c_NthRoot_Oroot(V_n,V_x))
         <= c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Oone__class_Oone(tc_RealDef_Oreal),V_x) )
       <= c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_n,V_N) )
     <= c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_n) ) ).

fof(fact_real__root__zero,axiom,
    ! [V_n] : c_NthRoot_Oroot(V_n,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)) = c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal) ).

fof(fact_mod__mod__trivial,axiom,
    ! [V_b,V_a,T_a] :
      ( c_Divides_Odiv__class_Omod(T_a,V_a,V_b) = c_Divides_Odiv__class_Omod(T_a,c_Divides_Odiv__class_Omod(T_a,V_a,V_b),V_b)
     <= class_Divides_Osemiring__div(T_a) ) ).

fof(fact_diff__eq__diff__less,axiom,
    ! [V_db_2,V_ca_2,V_b_2,V_ab_2,T_a] :
      ( ( ( c_Orderings_Oord__class_Oless(T_a,V_ca_2,V_db_2)
        <=> c_Orderings_Oord__class_Oless(T_a,V_ab_2,V_b_2) )
       <= c_Groups_Ominus__class_Ominus(T_a,V_ab_2,V_b_2) = c_Groups_Ominus__class_Ominus(T_a,V_ca_2,V_db_2) )
     <= class_Groups_Oordered__ab__group__add(T_a) ) ).

fof(arity_Int__Oint__Groups_Oordered__ab__semigroup__add,axiom,
    class_Groups_Oordered__ab__semigroup__add(tc_Int_Oint) ).

fof(arity_HOL__Obool__Orderings_Oorder,axiom,
    class_Orderings_Oorder(tc_HOL_Obool) ).

fof(arity_Int__Oint__Rings_Oring__1__no__zero__divisors,axiom,
    class_Rings_Oring__1__no__zero__divisors(tc_Int_Oint) ).

fof(fact_add__less__mono,axiom,
    ! [V_l,V_k,V_j,V_i] :
      ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_i,V_j)
     => ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_i,V_k),c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_j,V_l))
       <= c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_k,V_l) ) ) ).

fof(arity_RealDef__Oreal__Semiring__Normalization_Ocomm__semiring__1__cancel__crossproduct,axiom,
    class_Semiring__Normalization_Ocomm__semiring__1__cancel__crossproduct(tc_RealDef_Oreal) ).

fof(fact_zero__le__mult__iff,axiom,
    ! [V_b_2,V_ab_2,T_a] :
      ( ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_ab_2),V_b_2))
      <=> ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_b_2,c_Groups_Ozero__class_Ozero(T_a))
            & c_Orderings_Oord__class_Oless__eq(T_a,V_ab_2,c_Groups_Ozero__class_Ozero(T_a)) )
          | ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_ab_2)
            & c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_b_2) ) ) )
     <= class_Rings_Olinordered__ring__strict(T_a) ) ).

fof(arity_Int__Oint__Groups_Oordered__ab__group__add,axiom,
    class_Groups_Oordered__ab__group__add(tc_Int_Oint) ).

fof(arity_Complex__Ocomplex__Rings_Oring,axiom,
    class_Rings_Oring(tc_Complex_Ocomplex) ).

fof(arity_Polynomial__Opoly__Groups_Oab__group__add,axiom,
    ! [T_1] :
      ( class_Groups_Oab__group__add(tc_Polynomial_Opoly(T_1))
     <= class_Groups_Oab__group__add(T_1) ) ).

fof(fact_mod__0,axiom,
    ! [V_a,T_a] :
      ( class_Divides_Osemiring__div(T_a)
     => c_Groups_Ozero__class_Ozero(T_a) = c_Divides_Odiv__class_Omod(T_a,c_Groups_Ozero__class_Ozero(T_a),V_a) ) ).

fof(fact_dvd__imp__le,axiom,
    ! [V_n,V_k] :
      ( ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_n)
       => c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_k,V_n) )
     <= c_Rings_Odvd__class_Odvd(tc_Nat_Onat,V_k,V_n) ) ).

fof(fact_real__root__strict__increasing,axiom,
    ! [V_x,V_N,V_n] :
      ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_n)
     => ( ( c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),V_x)
         => ( c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_NthRoot_Oroot(V_n,V_x),c_NthRoot_Oroot(V_N,V_x))
           <= c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,V_x,c_Groups_Oone__class_Oone(tc_RealDef_Oreal)) ) )
       <= c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_n,V_N) ) ) ).

fof(fact_zero__less__zpower__abs__iff,axiom,
    ! [V_n_2,V_x_2] :
      ( c_Orderings_Oord__class_Oless(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),hAPP(hAPP(c_Power_Opower__class_Opower(tc_Int_Oint),c_Groups_Oabs__class_Oabs(tc_Int_Oint,V_x_2)),V_n_2))
    <=> ( c_Groups_Ozero__class_Ozero(tc_Int_Oint) != V_x_2
        | V_n_2 = c_Groups_Ozero__class_Ozero(tc_Nat_Onat) ) ) ).

fof(fact_zmod__zmult2__eq,axiom,
    ! [V_b,V_a,V_c] :
      ( c_Groups_Oplus__class_Oplus(tc_Int_Oint,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_b),c_Divides_Odiv__class_Omod(tc_Int_Oint,c_Divides_Odiv__class_Odiv(tc_Int_Oint,V_a,V_b),V_c)),c_Divides_Odiv__class_Omod(tc_Int_Oint,V_a,V_b)) = c_Divides_Odiv__class_Omod(tc_Int_Oint,V_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_b),V_c))
     <= c_Orderings_Oord__class_Oless(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_c) ) ).

fof(arity_Polynomial__Opoly__Rings_Odvd,axiom,
    ! [T_1] :
      ( class_Rings_Odvd(tc_Polynomial_Opoly(T_1))
     <= class_Rings_Ocomm__semiring__1(T_1) ) ).

fof(arity_Int__Oint__Rings_Ono__zero__divisors,axiom,
    class_Rings_Ono__zero__divisors(tc_Int_Oint) ).

fof(fact_nonzero__divide__eq__eq,axiom,
    ! [V_ab_2,V_b_2,V_ca_2,T_a] :
      ( ( ( V_ab_2 = c_Rings_Oinverse__class_Odivide(T_a,V_b_2,V_ca_2)
        <=> V_b_2 = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_ab_2),V_ca_2) )
       <= V_ca_2 != c_Groups_Ozero__class_Ozero(T_a) )
     <= class_Rings_Odivision__ring(T_a) ) ).

fof(fact_mult__le__0__iff,axiom,
    ! [V_b_2,V_ab_2,T_a] :
      ( class_Rings_Olinordered__ring__strict(T_a)
     => ( ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_ab_2,c_Groups_Ozero__class_Ozero(T_a))
            & c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_b_2) )
          | ( c_Orderings_Oord__class_Oless__eq(T_a,V_b_2,c_Groups_Ozero__class_Ozero(T_a))
            & c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_ab_2) ) )
      <=> c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_ab_2),V_b_2),c_Groups_Ozero__class_Ozero(T_a)) ) ) ).

fof(fact_real__root__divide,axiom,
    ! [V_y,V_x,V_n] :
      ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_n)
     => c_NthRoot_Oroot(V_n,c_Rings_Oinverse__class_Odivide(tc_RealDef_Oreal,V_x,V_y)) = c_Rings_Oinverse__class_Odivide(tc_RealDef_Oreal,c_NthRoot_Oroot(V_n,V_x),c_NthRoot_Oroot(V_n,V_y)) ) ).

fof(fact_mult__pos__pos,axiom,
    ! [V_b,V_a,T_a] :
      ( class_Rings_Olinordered__semiring__strict(T_a)
     => ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_a)
       => ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b))
         <= c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_b) ) ) ) ).

fof(fact_dvd__mod,axiom,
    ! [V_n,V_m,V_k,T_a] :
      ( class_Divides_Osemiring__div(T_a)
     => ( c_Rings_Odvd__class_Odvd(T_a,V_k,V_m)
       => ( c_Rings_Odvd__class_Odvd(T_a,V_k,V_n)
         => c_Rings_Odvd__class_Odvd(T_a,V_k,c_Divides_Odiv__class_Omod(T_a,V_m,V_n)) ) ) ) ).

fof(fact_split__mult__neg__le,axiom,
    ! [V_b,V_a,T_a] :
      ( class_Rings_Oordered__cancel__semiring(T_a)
     => ( c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b),c_Groups_Ozero__class_Ozero(T_a))
       <= ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_b,c_Groups_Ozero__class_Ozero(T_a))
            & c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_a) )
          | ( c_Orderings_Oord__class_Oless__eq(T_a,V_a,c_Groups_Ozero__class_Ozero(T_a))
            & c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_b) ) ) ) ) ).

fof(fact_mod__less__eq__dividend,axiom,
    ! [V_n,V_m] : c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,c_Divides_Odiv__class_Omod(tc_Nat_Onat,V_m,V_n),V_m) ).

fof(fact_linorder__cases,axiom,
    ! [V_y,V_x,T_a] :
      ( class_Orderings_Olinorder(T_a)
     => ( ~ c_Orderings_Oord__class_Oless(T_a,V_x,V_y)
       => ( c_Orderings_Oord__class_Oless(T_a,V_y,V_x)
         <= V_x != V_y ) ) ) ).

fof(fact_natfloor__neg,axiom,
    ! [V_x] :
      ( c_RComplete_Onatfloor(V_x) = c_Groups_Ozero__class_Ozero(tc_Nat_Onat)
     <= c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,V_x,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)) ) ).

fof(arity_Nat__Onat__Groups_Oordered__cancel__ab__semigroup__add,axiom,
    class_Groups_Oordered__cancel__ab__semigroup__add(tc_Nat_Onat) ).

fof(fact_div__mult__mult2,axiom,
    ! [V_b,V_a,V_c,T_a] :
      ( ( c_Groups_Ozero__class_Ozero(T_a) != V_c
       => c_Divides_Odiv__class_Odiv(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_c),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b),V_c)) = c_Divides_Odiv__class_Odiv(T_a,V_a,V_b) )
     <= class_Divides_Osemiring__div(T_a) ) ).

fof(fact_real__mult__le__cancel__iff2,axiom,
    ! [V_y_2,V_x_2,V_za_2] :
      ( ( c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),V_za_2),V_x_2),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),V_za_2),V_y_2))
      <=> c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,V_x_2,V_y_2) )
     <= c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),V_za_2) ) ).

fof(fact_le__refl,axiom,
    ! [V_n] : c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_n,V_n) ).

fof(fact_zmult__assoc,axiom,
    ! [V_z3,V_z2,V_z1] : hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_z1),V_z2)),V_z3) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_z1),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_z2),V_z3)) ).

fof(fact_real__root__less__mono__lemma,axiom,
    ! [V_y,V_x,V_n] :
      ( ( ( c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_NthRoot_Oroot(V_n,V_x),c_NthRoot_Oroot(V_n,V_y))
         <= c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,V_x,V_y) )
       <= c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),V_x) )
     <= c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_n) ) ).

fof(fact_norm__eq__zero,axiom,
    ! [V_x_2,T_a] :
      ( ( c_RealVector_Onorm__class_Onorm(T_a,V_x_2) = c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)
      <=> V_x_2 = c_Groups_Ozero__class_Ozero(T_a) )
     <= class_RealVector_Oreal__normed__vector(T_a) ) ).

fof(fact_dvd__antisym,axiom,
    ! [V_n,V_m] :
      ( ( c_Rings_Odvd__class_Odvd(tc_Nat_Onat,V_n,V_m)
       => V_n = V_m )
     <= c_Rings_Odvd__class_Odvd(tc_Nat_Onat,V_m,V_n) ) ).

fof(arity_Int__Oint__Rings_Ocomm__semiring__0,axiom,
    class_Rings_Ocomm__semiring__0(tc_Int_Oint) ).

fof(fact_add__le__mono1,axiom,
    ! [V_k,V_j,V_i] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_i,V_k),c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_j,V_k))
     <= c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_i,V_j) ) ).

fof(arity_RealDef__Oreal__Groups_Ozero,axiom,
    class_Groups_Ozero(tc_RealDef_Oreal) ).

fof(fact_power__strict__decreasing,axiom,
    ! [V_a,V_N,V_n,T_a] :
      ( class_Rings_Olinordered__semidom(T_a)
     => ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_n,V_N)
       => ( ( c_Orderings_Oord__class_Oless(T_a,V_a,c_Groups_Oone__class_Oone(T_a))
           => c_Orderings_Oord__class_Oless(T_a,hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_N),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_n)) )
         <= c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_a) ) ) ) ).

fof(fact_natfloor__add,axiom,
    ! [V_a,V_x] :
      ( c_RComplete_Onatfloor(c_Groups_Oplus__class_Oplus(tc_RealDef_Oreal,V_x,c_RealDef_Oreal(tc_Nat_Onat,V_a))) = c_Groups_Oplus__class_Oplus(tc_Nat_Onat,c_RComplete_Onatfloor(V_x),V_a)
     <= c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),V_x) ) ).

fof(fact_dvd_Oless__not__sym,axiom,
    ! [V_y,V_x] :
      ( ( c_Rings_Odvd__class_Odvd(tc_Nat_Onat,V_x,V_y)
        & ~ c_Rings_Odvd__class_Odvd(tc_Nat_Onat,V_y,V_x) )
     => ~ ( c_Rings_Odvd__class_Odvd(tc_Nat_Onat,V_y,V_x)
          & ~ c_Rings_Odvd__class_Odvd(tc_Nat_Onat,V_x,V_y) ) ) ).

fof(fact_mod__div__equality,axiom,
    ! [V_b,V_a,T_a] :
      ( class_Divides_Osemiring__div(T_a)
     => c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Divides_Odiv__class_Odiv(T_a,V_a,V_b)),V_b),c_Divides_Odiv__class_Omod(T_a,V_a,V_b)) = V_a ) ).

fof(fact_self__quotient__aux2,axiom,
    ! [V_q,V_r,V_a] :
      ( ( ( c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,V_q,c_Groups_Oone__class_Oone(tc_Int_Oint))
         <= c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_r) )
       <= V_a = c_Groups_Oplus__class_Oplus(tc_Int_Oint,V_r,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_a),V_q)) )
     <= c_Orderings_Oord__class_Oless(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_a) ) ).

fof(fact_real__mult__less__iff1,axiom,
    ! [V_y_2,V_x_2,V_za_2] :
      ( c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),V_za_2)
     => ( c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,V_x_2,V_y_2)
      <=> c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),V_x_2),V_za_2),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),V_y_2),V_za_2)) ) ) ).

fof(fact_double__eq__0__iff,axiom,
    ! [V_ab_2,T_a] :
      ( ( c_Groups_Ozero__class_Ozero(T_a) = c_Groups_Oplus__class_Oplus(T_a,V_ab_2,V_ab_2)
      <=> V_ab_2 = c_Groups_Ozero__class_Ozero(T_a) )
     <= class_Groups_Olinordered__ab__group__add(T_a) ) ).

fof(arity_Nat__Onat__Rings_Olinordered__semiring,axiom,
    class_Rings_Olinordered__semiring(tc_Nat_Onat) ).

fof(arity_Int__Oint__Int_Oring__char__0,axiom,
    class_Int_Oring__char__0(tc_Int_Oint) ).

fof(fact_mult__nonneg__nonneg,axiom,
    ! [V_b,V_a,T_a] :
      ( ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_a)
       => ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_b)
         => c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b)) ) )
     <= class_Rings_Oordered__cancel__semiring(T_a) ) ).

fof(arity_Complex__Ocomplex__Groups_Oab__semigroup__add,axiom,
    class_Groups_Oab__semigroup__add(tc_Complex_Ocomplex) ).

fof(fact_comm__semiring__1__class_Onormalizing__semiring__rules_I16_J,axiom,
    ! [V_rx,V_ly,V_lx,T_a] :
      ( class_Rings_Ocomm__semiring__1(T_a)
     => hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_lx),V_ly)),V_rx) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_lx),V_rx)),V_ly) ) ).

fof(arity_Complex__Ocomplex__Groups_Omonoid__mult,axiom,
    class_Groups_Omonoid__mult(tc_Complex_Ocomplex) ).

fof(fact_abs__triangle__ineq2,axiom,
    ! [V_b,V_a,T_a] :
      ( class_Groups_Oordered__ab__group__add__abs(T_a)
     => c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ominus__class_Ominus(T_a,c_Groups_Oabs__class_Oabs(T_a,V_a),c_Groups_Oabs__class_Oabs(T_a,V_b)),c_Groups_Oabs__class_Oabs(T_a,c_Groups_Ominus__class_Ominus(T_a,V_a,V_b))) ) ).

fof(fact_dvd__power__le,axiom,
    ! [V_m,V_n,V_y,V_x,T_a] :
      ( ( c_Rings_Odvd__class_Odvd(T_a,V_x,V_y)
       => ( c_Rings_Odvd__class_Odvd(T_a,hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_x),V_n),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_y),V_m))
         <= c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_n,V_m) ) )
     <= class_Rings_Ocomm__semiring__1(T_a) ) ).

fof(fact_poly__rec__0,axiom,
    ! [T_a,V_za_2,V_f_2,T_b] :
      ( class_Groups_Ozero(T_b)
     => ( c_Polynomial_Opoly__rec(T_a,T_b,V_za_2,V_f_2,c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_b))) = V_za_2
       <= hAPP(hAPP(hAPP(V_f_2,c_Groups_Ozero__class_Ozero(T_b)),c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_b))),V_za_2) = V_za_2 ) ) ).

fof(fact_divide__pos__pos,axiom,
    ! [V_y,V_x,T_a] :
      ( class_Fields_Olinordered__field(T_a)
     => ( ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),c_Rings_Oinverse__class_Odivide(T_a,V_x,V_y))
         <= c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_y) )
       <= c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_x) ) ) ).

fof(fact_order__eq__refl,axiom,
    ! [V_y,V_x,T_a] :
      ( class_Orderings_Opreorder(T_a)
     => ( c_Orderings_Oord__class_Oless__eq(T_a,V_x,V_y)
       <= V_y = V_x ) ) ).

fof(fact_less__add__iff2,axiom,
    ! [V_db_2,V_b_2,V_ca_2,V_e_2,V_ab_2,T_a] :
      ( ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_ab_2),V_e_2),V_ca_2),c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b_2),V_e_2),V_db_2))
      <=> c_Orderings_Oord__class_Oless(T_a,V_ca_2,c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Groups_Ominus__class_Ominus(T_a,V_b_2,V_ab_2)),V_e_2),V_db_2)) )
     <= class_Rings_Oordered__ring(T_a) ) ).

fof(fact_mod__mult__cong,axiom,
    ! [V_b_H,V_b,V_a_H,V_c,V_a,T_a] :
      ( class_Divides_Osemiring__div(T_a)
     => ( ( c_Divides_Odiv__class_Omod(T_a,V_b_H,V_c) = c_Divides_Odiv__class_Omod(T_a,V_b,V_c)
         => c_Divides_Odiv__class_Omod(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b),V_c) = c_Divides_Odiv__class_Omod(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a_H),V_b_H),V_c) )
       <= c_Divides_Odiv__class_Omod(T_a,V_a_H,V_c) = c_Divides_Odiv__class_Omod(T_a,V_a,V_c) ) ) ).

fof(fact_comm__semiring__1__class_Onormalizing__semiring__rules_I21_J,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( c_Groups_Oplus__class_Oplus(T_a,V_a,c_Groups_Oplus__class_Oplus(T_a,V_b,V_c)) = c_Groups_Oplus__class_Oplus(T_a,c_Groups_Oplus__class_Oplus(T_a,V_a,V_b),V_c)
     <= class_Rings_Ocomm__semiring__1(T_a) ) ).

fof(fact_div__mult__mult1__if,axiom,
    ! [V_b,V_a,V_c,T_a] :
      ( class_Divides_Osemiring__div(T_a)
     => ( ( c_Divides_Odiv__class_Odiv(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_c),V_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_c),V_b)) = c_Groups_Ozero__class_Ozero(T_a)
         <= V_c = c_Groups_Ozero__class_Ozero(T_a) )
        & ( c_Divides_Odiv__class_Odiv(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_c),V_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_c),V_b)) = c_Divides_Odiv__class_Odiv(T_a,V_a,V_b)
         <= V_c != c_Groups_Ozero__class_Ozero(T_a) ) ) ) ).

fof(fact_mult_Obounded,axiom,
    ! [T_a] :
      ( class_RealVector_Oreal__normed__algebra(T_a)
     => ? [B_K] :
        ! [B_a,B_b] : c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_RealVector_Onorm__class_Onorm(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),B_a),B_b)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),c_RealVector_Onorm__class_Onorm(T_a,B_a)),c_RealVector_Onorm__class_Onorm(T_a,B_b))),B_K)) ) ).

fof(fact_not__less0,axiom,
    ! [V_n] : ~ c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_n,c_Groups_Ozero__class_Ozero(tc_Nat_Onat)) ).

fof(fact_mod__mult2__eq,axiom,
    ! [V_c,V_b,V_a] : c_Divides_Odiv__class_Omod(tc_Nat_Onat,V_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_b),V_c)) = c_Groups_Oplus__class_Oplus(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_b),c_Divides_Odiv__class_Omod(tc_Nat_Onat,c_Divides_Odiv__class_Odiv(tc_Nat_Onat,V_a,V_b),V_c)),c_Divides_Odiv__class_Omod(tc_Nat_Onat,V_a,V_b)) ).

fof(fact_div__mult__self2__is__id,axiom,
    ! [V_a,V_b,T_a] :
      ( ( c_Divides_Odiv__class_Odiv(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b),V_b) = V_a
       <= V_b != c_Groups_Ozero__class_Ozero(T_a) )
     <= class_Divides_Osemiring__div(T_a) ) ).

fof(fact_abs__le__zero__iff,axiom,
    ! [V_ab_2,T_a] :
      ( class_Groups_Oordered__ab__group__add__abs(T_a)
     => ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Oabs__class_Oabs(T_a,V_ab_2),c_Groups_Ozero__class_Ozero(T_a))
      <=> c_Groups_Ozero__class_Ozero(T_a) = V_ab_2 ) ) ).

fof(fact_divide__less__0__iff,axiom,
    ! [V_b_2,V_ab_2,T_a] :
      ( ( ( ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_b_2)
            & c_Orderings_Oord__class_Oless(T_a,V_ab_2,c_Groups_Ozero__class_Ozero(T_a)) )
          | ( c_Orderings_Oord__class_Oless(T_a,V_b_2,c_Groups_Ozero__class_Ozero(T_a))
            & c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_ab_2) ) )
      <=> c_Orderings_Oord__class_Oless(T_a,c_Rings_Oinverse__class_Odivide(T_a,V_ab_2,V_b_2),c_Groups_Ozero__class_Ozero(T_a)) )
     <= class_Fields_Olinordered__field__inverse__zero(T_a) ) ).

fof(fact_comm__semiring__1__class_Onormalizing__semiring__rules_I11_J,axiom,
    ! [V_a,T_a] :
      ( class_Rings_Ocomm__semiring__1(T_a)
     => hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Groups_Oone__class_Oone(T_a)),V_a) = V_a ) ).

fof(arity_RealDef__Oreal__Rings_Oidom,axiom,
    class_Rings_Oidom(tc_RealDef_Oreal) ).

fof(fact_add__right__mono,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( class_Groups_Oordered__ab__semigroup__add(T_a)
     => ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Oplus__class_Oplus(T_a,V_a,V_c),c_Groups_Oplus__class_Oplus(T_a,V_b,V_c))
       <= c_Orderings_Oord__class_Oless__eq(T_a,V_a,V_b) ) ) ).

fof(fact_nat__mult__dvd__cancel__disj,axiom,
    ! [V_n_2,V_m_2,V_k_2] :
      ( c_Rings_Odvd__class_Odvd(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_k_2),V_m_2),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_k_2),V_n_2))
    <=> ( V_k_2 = c_Groups_Ozero__class_Ozero(tc_Nat_Onat)
        | c_Rings_Odvd__class_Odvd(tc_Nat_Onat,V_m_2,V_n_2) ) ) ).

fof(arity_RealDef__Oreal__Groups_Oone,axiom,
    class_Groups_Oone(tc_RealDef_Oreal) ).

fof(fact_le__square,axiom,
    ! [V_m] : c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_m),V_m)) ).

fof(fact_mod__le__divisor,axiom,
    ! [V_m,V_n] :
      ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_n)
     => c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,c_Divides_Odiv__class_Omod(tc_Nat_Onat,V_m,V_n),V_n) ) ).

fof(arity_Int__Oint__Rings_Olinordered__comm__semiring__strict,axiom,
    class_Rings_Olinordered__comm__semiring__strict(tc_Int_Oint) ).

fof(fact_odd__less__0,axiom,
    ! [V_za_2] :
      ( c_Orderings_Oord__class_Oless(tc_Int_Oint,V_za_2,c_Groups_Ozero__class_Ozero(tc_Int_Oint))
    <=> c_Orderings_Oord__class_Oless(tc_Int_Oint,c_Groups_Oplus__class_Oplus(tc_Int_Oint,c_Groups_Oplus__class_Oplus(tc_Int_Oint,c_Groups_Oone__class_Oone(tc_Int_Oint),V_za_2),V_za_2),c_Groups_Ozero__class_Ozero(tc_Int_Oint)) ) ).

fof(fact_frac__le,axiom,
    ! [V_z,V_w,V_y,V_x,T_a] :
      ( class_Fields_Olinordered__field(T_a)
     => ( ( ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_w)
           => ( c_Orderings_Oord__class_Oless__eq(T_a,V_w,V_z)
             => c_Orderings_Oord__class_Oless__eq(T_a,c_Rings_Oinverse__class_Odivide(T_a,V_x,V_z),c_Rings_Oinverse__class_Odivide(T_a,V_y,V_w)) ) )
         <= c_Orderings_Oord__class_Oless__eq(T_a,V_x,V_y) )
       <= c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_x) ) ) ).

fof(arity_Polynomial__Opoly__Groups_Oordered__ab__group__add__abs,axiom,
    ! [T_1] :
      ( class_Rings_Olinordered__idom(T_1)
     => class_Groups_Oordered__ab__group__add__abs(tc_Polynomial_Opoly(T_1)) ) ).

fof(fact_mult__strict__right__mono,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( ( ( c_Orderings_Oord__class_Oless(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_c),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b),V_c))
         <= c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_c) )
       <= c_Orderings_Oord__class_Oless(T_a,V_a,V_b) )
     <= class_Rings_Olinordered__semiring__strict(T_a) ) ).

fof(arity_RealDef__Oreal__Rings_Olinordered__semidom,axiom,
    class_Rings_Olinordered__semidom(tc_RealDef_Oreal) ).

fof(fact_zdiff__zmult__distrib2,axiom,
    ! [V_z2,V_z1,V_w] : hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_w),c_Groups_Ominus__class_Ominus(tc_Int_Oint,V_z1,V_z2)) = c_Groups_Ominus__class_Ominus(tc_Int_Oint,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_w),V_z1),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_w),V_z2)) ).

fof(fact_comm__semiring__1__class_Onormalizing__semiring__rules_I8_J,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_c),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b),V_c)) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Groups_Oplus__class_Oplus(T_a,V_a,V_b)),V_c)
     <= class_Rings_Ocomm__semiring__1(T_a) ) ).

fof(fact_dvd__reduce,axiom,
    ! [V_n_2,V_k_2] :
      ( c_Rings_Odvd__class_Odvd(tc_Nat_Onat,V_k_2,V_n_2)
    <=> c_Rings_Odvd__class_Odvd(tc_Nat_Onat,V_k_2,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_n_2,V_k_2)) ) ).

fof(fact_poly__1,axiom,
    ! [V_x,T_a] :
      ( class_Rings_Ocomm__semiring__1(T_a)
     => hAPP(c_Polynomial_Opoly(T_a,c_Groups_Oone__class_Oone(tc_Polynomial_Opoly(T_a))),V_x) = c_Groups_Oone__class_Oone(T_a) ) ).

fof(arity_Complex__Ocomplex__RealVector_Oreal__normed__div__algebra,axiom,
    class_RealVector_Oreal__normed__div__algebra(tc_Complex_Ocomplex) ).

fof(arity_Complex__Ocomplex__RealVector_Oreal__normed__algebra__1,axiom,
    class_RealVector_Oreal__normed__algebra__1(tc_Complex_Ocomplex) ).

fof(fact_zmod__zmult1__eq,axiom,
    ! [V_c,V_b,V_a] : c_Divides_Odiv__class_Omod(tc_Int_Oint,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_a),c_Divides_Odiv__class_Omod(tc_Int_Oint,V_b,V_c)),V_c) = c_Divides_Odiv__class_Omod(tc_Int_Oint,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_a),V_b),V_c) ).

fof(fact_div__le__mono,axiom,
    ! [V_k,V_n,V_m] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m,V_n)
     => c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,c_Divides_Odiv__class_Odiv(tc_Nat_Onat,V_m,V_k),c_Divides_Odiv__class_Odiv(tc_Nat_Onat,V_n,V_k)) ) ).

fof(fact_linorder__antisym__conv3,axiom,
    ! [V_x_2,V_y_2,T_a] :
      ( ( ( ~ c_Orderings_Oord__class_Oless(T_a,V_x_2,V_y_2)
        <=> V_y_2 = V_x_2 )
       <= ~ c_Orderings_Oord__class_Oless(T_a,V_y_2,V_x_2) )
     <= class_Orderings_Olinorder(T_a) ) ).

fof(fact_add__0,axiom,
    ! [V_a,T_a] :
      ( c_Groups_Oplus__class_Oplus(T_a,c_Groups_Ozero__class_Ozero(T_a),V_a) = V_a
     <= class_Groups_Ocomm__monoid__add(T_a) ) ).

fof(fact_abs__add__abs,axiom,
    ! [V_b,V_a,T_a] :
      ( c_Groups_Oplus__class_Oplus(T_a,c_Groups_Oabs__class_Oabs(T_a,V_a),c_Groups_Oabs__class_Oabs(T_a,V_b)) = c_Groups_Oabs__class_Oabs(T_a,c_Groups_Oplus__class_Oplus(T_a,c_Groups_Oabs__class_Oabs(T_a,V_a),c_Groups_Oabs__class_Oabs(T_a,V_b)))
     <= class_Groups_Oordered__ab__group__add__abs(T_a) ) ).

fof(fact_real__root__lt__1__iff,axiom,
    ! [V_x_2,V_n_2] :
      ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_n_2)
     => ( c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,V_x_2,c_Groups_Oone__class_Oone(tc_RealDef_Oreal))
      <=> c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_NthRoot_Oroot(V_n_2,V_x_2),c_Groups_Oone__class_Oone(tc_RealDef_Oreal)) ) ) ).

fof(arity_Complex__Ocomplex__Rings_Ocomm__semiring,axiom,
    class_Rings_Ocomm__semiring(tc_Complex_Ocomplex) ).

fof(fact_add__le__cancel__left,axiom,
    ! [V_b_2,V_ab_2,V_ca_2,T_a] :
      ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_ab_2,V_b_2)
      <=> c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Oplus__class_Oplus(T_a,V_ca_2,V_ab_2),c_Groups_Oplus__class_Oplus(T_a,V_ca_2,V_b_2)) )
     <= class_Groups_Oordered__ab__semigroup__add__imp__le(T_a) ) ).

fof(fact_right__inverse__eq,axiom,
    ! [V_ab_2,V_b_2,T_a] :
      ( class_Rings_Odivision__ring(T_a)
     => ( ( c_Rings_Oinverse__class_Odivide(T_a,V_ab_2,V_b_2) = c_Groups_Oone__class_Oone(T_a)
        <=> V_b_2 = V_ab_2 )
       <= V_b_2 != c_Groups_Ozero__class_Ozero(T_a) ) ) ).

fof(fact_diff__frac__eq,axiom,
    ! [V_w,V_x,V_z,V_y,T_a] :
      ( class_Fields_Ofield(T_a)
     => ( ( V_z != c_Groups_Ozero__class_Ozero(T_a)
         => c_Groups_Ominus__class_Ominus(T_a,c_Rings_Oinverse__class_Odivide(T_a,V_x,V_y),c_Rings_Oinverse__class_Odivide(T_a,V_w,V_z)) = c_Rings_Oinverse__class_Odivide(T_a,c_Groups_Ominus__class_Ominus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_x),V_z),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_w),V_y)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_y),V_z)) )
       <= c_Groups_Ozero__class_Ozero(T_a) != V_y ) ) ).

fof(fact_zpower__zmod,axiom,
    ! [V_y,V_m,V_x] : c_Divides_Odiv__class_Omod(tc_Int_Oint,hAPP(hAPP(c_Power_Opower__class_Opower(tc_Int_Oint),V_x),V_y),V_m) = c_Divides_Odiv__class_Omod(tc_Int_Oint,hAPP(hAPP(c_Power_Opower__class_Opower(tc_Int_Oint),c_Divides_Odiv__class_Omod(tc_Int_Oint,V_x,V_m)),V_y),V_m) ).

fof(arity_Polynomial__Opoly__Rings_Osemiring__0,axiom,
    ! [T_1] :
      ( class_Rings_Ocomm__semiring__0(T_1)
     => class_Rings_Osemiring__0(tc_Polynomial_Opoly(T_1)) ) ).

fof(fact_less__divide__eq,axiom,
    ! [V_ca_2,V_b_2,V_ab_2,T_a] :
      ( class_Fields_Olinordered__field__inverse__zero(T_a)
     => ( c_Orderings_Oord__class_Oless(T_a,V_ab_2,c_Rings_Oinverse__class_Odivide(T_a,V_b_2,V_ca_2))
      <=> ( ( c_Orderings_Oord__class_Oless(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_ab_2),V_ca_2),V_b_2)
           <= c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_ca_2) )
          & ( ( ( c_Orderings_Oord__class_Oless(T_a,V_b_2,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_ab_2),V_ca_2))
               <= c_Orderings_Oord__class_Oless(T_a,V_ca_2,c_Groups_Ozero__class_Ozero(T_a)) )
              & ( c_Orderings_Oord__class_Oless(T_a,V_ab_2,c_Groups_Ozero__class_Ozero(T_a))
               <= ~ c_Orderings_Oord__class_Oless(T_a,V_ca_2,c_Groups_Ozero__class_Ozero(T_a)) ) )
           <= ~ c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_ca_2) ) ) ) ) ).

fof(fact_le__funE,axiom,
    ! [V_x_2,V_g_2,V_f_2,T_a,T_b] :
      ( class_Orderings_Oord(T_b)
     => ( c_Orderings_Oord__class_Oless__eq(T_b,hAPP(V_f_2,V_x_2),hAPP(V_g_2,V_x_2))
       <= c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,T_b),V_f_2,V_g_2) ) ) ).

fof(fact_dvd_Oless__le,axiom,
    ! [V_y_2,V_x_2] :
      ( ( ~ c_Rings_Odvd__class_Odvd(tc_Nat_Onat,V_y_2,V_x_2)
        & c_Rings_Odvd__class_Odvd(tc_Nat_Onat,V_x_2,V_y_2) )
    <=> ( V_y_2 != V_x_2
        & c_Rings_Odvd__class_Odvd(tc_Nat_Onat,V_x_2,V_y_2) ) ) ).

fof(fact_divide__le__0__iff,axiom,
    ! [V_b_2,V_ab_2,T_a] :
      ( ( ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_ab_2,c_Groups_Ozero__class_Ozero(T_a))
            & c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_b_2) )
          | ( c_Orderings_Oord__class_Oless__eq(T_a,V_b_2,c_Groups_Ozero__class_Ozero(T_a))
            & c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_ab_2) ) )
      <=> c_Orderings_Oord__class_Oless__eq(T_a,c_Rings_Oinverse__class_Odivide(T_a,V_ab_2,V_b_2),c_Groups_Ozero__class_Ozero(T_a)) )
     <= class_Fields_Olinordered__field__inverse__zero(T_a) ) ).

fof(fact_nonneg1__imp__zdiv__pos__iff,axiom,
    ! [V_b_2,V_ab_2] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_ab_2)
     => ( ( c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,V_b_2,V_ab_2)
          & c_Orderings_Oord__class_Oless(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_b_2) )
      <=> c_Orderings_Oord__class_Oless(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),c_Divides_Odiv__class_Odiv(tc_Int_Oint,V_ab_2,V_b_2)) ) ) ).

fof(fact_mult__left_Odiff,axiom,
    ! [V_ya,V_y,V_x,T_a] :
      ( class_RealVector_Oreal__normed__algebra(T_a)
     => c_Groups_Ominus__class_Ominus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_x),V_ya),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_y),V_ya)) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Groups_Ominus__class_Ominus(T_a,V_x,V_y)),V_ya) ) ).

fof(fact_mult__right_Opos__bounded,axiom,
    ! [V_x,T_a] :
      ( ? [B_K] :
          ( c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),B_K)
          & ! [B_x] : c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_RealVector_Onorm__class_Onorm(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_x),B_x)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),c_RealVector_Onorm__class_Onorm(T_a,B_x)),B_K)) )
     <= class_RealVector_Oreal__normed__algebra(T_a) ) ).

fof(fact_poly__mod__mult__right,axiom,
    ! [V_z,V_y,V_x,T_a] :
      ( c_Divides_Odiv__class_Omod(tc_Polynomial_Opoly(T_a),V_x,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Polynomial_Opoly(T_a)),V_y),V_z)) = c_Groups_Oplus__class_Oplus(tc_Polynomial_Opoly(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Polynomial_Opoly(T_a)),V_y),c_Divides_Odiv__class_Omod(tc_Polynomial_Opoly(T_a),c_Divides_Odiv__class_Odiv(tc_Polynomial_Opoly(T_a),V_x,V_y),V_z)),c_Divides_Odiv__class_Omod(tc_Polynomial_Opoly(T_a),V_x,V_y))
     <= class_Fields_Ofield(T_a) ) ).

fof(fact_zdiv__zmult1__eq,axiom,
    ! [V_c,V_b,V_a] : c_Groups_Oplus__class_Oplus(tc_Int_Oint,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_a),c_Divides_Odiv__class_Odiv(tc_Int_Oint,V_b,V_c)),c_Divides_Odiv__class_Odiv(tc_Int_Oint,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_a),c_Divides_Odiv__class_Omod(tc_Int_Oint,V_b,V_c)),V_c)) = c_Divides_Odiv__class_Odiv(tc_Int_Oint,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_a),V_b),V_c) ).

fof(fact_mult__poly__0__left,axiom,
    ! [V_q,T_a] :
      ( class_Rings_Ocomm__semiring__0(T_a)
     => c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a)) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Polynomial_Opoly(T_a)),c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a))),V_q) ) ).

fof(fact_comm__semiring__1__class_Onormalizing__semiring__rules_I33_J,axiom,
    ! [V_x,T_a] :
      ( class_Rings_Ocomm__semiring__1(T_a)
     => hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_x),c_Groups_Oone__class_Oone(tc_Nat_Onat)) = V_x ) ).

fof(fact_zdiff__zmult__distrib,axiom,
    ! [V_w,V_z2,V_z1] : c_Groups_Ominus__class_Ominus(tc_Int_Oint,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_z1),V_w),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_z2),V_w)) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),c_Groups_Ominus__class_Ominus(tc_Int_Oint,V_z1,V_z2)),V_w) ).

fof(fact_zdiv__eq__0__iff,axiom,
    ! [V_k_2,V_i_2] :
      ( ( ( c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,V_i_2,c_Groups_Ozero__class_Ozero(tc_Int_Oint))
          & c_Orderings_Oord__class_Oless(tc_Int_Oint,V_k_2,V_i_2) )
        | ( c_Orderings_Oord__class_Oless(tc_Int_Oint,V_i_2,V_k_2)
          & c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_i_2) )
        | c_Groups_Ozero__class_Ozero(tc_Int_Oint) = V_k_2 )
    <=> c_Divides_Odiv__class_Odiv(tc_Int_Oint,V_i_2,V_k_2) = c_Groups_Ozero__class_Ozero(tc_Int_Oint) ) ).

fof(fact_pCons__0__0,axiom,
    ! [T_a] :
      ( class_Groups_Ozero(T_a)
     => c_Polynomial_OpCons(T_a,c_Groups_Ozero__class_Ozero(T_a),c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a))) = c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a)) ) ).

fof(fact_even__less__0__iff,axiom,
    ! [V_ab_2,T_a] :
      ( class_Rings_Olinordered__idom(T_a)
     => ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Oplus__class_Oplus(T_a,V_ab_2,V_ab_2),c_Groups_Ozero__class_Ozero(T_a))
      <=> c_Orderings_Oord__class_Oless(T_a,V_ab_2,c_Groups_Ozero__class_Ozero(T_a)) ) ) ).

fof(fact_mod__eq__0__iff,axiom,
    ! [V_db_2,V_m_2] :
      ( ? [B_q] : hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_db_2),B_q) = V_m_2
    <=> c_Groups_Ozero__class_Ozero(tc_Nat_Onat) = c_Divides_Odiv__class_Omod(tc_Nat_Onat,V_m_2,V_db_2) ) ).

fof(fact_div__pos__pos__trivial,axiom,
    ! [V_b,V_a] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_a)
     => ( c_Orderings_Oord__class_Oless(tc_Int_Oint,V_a,V_b)
       => c_Divides_Odiv__class_Odiv(tc_Int_Oint,V_a,V_b) = c_Groups_Ozero__class_Ozero(tc_Int_Oint) ) ) ).

fof(fact_reduce__poly__simple,axiom,
    ! [V_n,V_b] :
      ( c_Groups_Ozero__class_Ozero(tc_Complex_Ocomplex) != V_b
     => ( ? [B_z] : c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_RealVector_Onorm__class_Onorm(tc_Complex_Ocomplex,c_Groups_Oplus__class_Oplus(tc_Complex_Ocomplex,c_Groups_Oone__class_Oone(tc_Complex_Ocomplex),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Complex_Ocomplex),V_b),hAPP(hAPP(c_Power_Opower__class_Opower(tc_Complex_Ocomplex),B_z),V_n)))),c_Groups_Oone__class_Oone(tc_RealDef_Oreal))
       <= V_n != c_Groups_Ozero__class_Ozero(tc_Nat_Onat) ) ) ).

fof(fact_int__0__less__1,axiom,
    c_Orderings_Oord__class_Oless(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),c_Groups_Oone__class_Oone(tc_Int_Oint)) ).

fof(fact_mod__mult__distrib2,axiom,
    ! [V_n,V_m,V_k] : c_Divides_Odiv__class_Omod(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_k),V_m),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_k),V_n)) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_k),c_Divides_Odiv__class_Omod(tc_Nat_Onat,V_m,V_n)) ).

fof(fact_calculation,axiom,
    ( v_cs____ != c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(tc_Complex_Ocomplex))
   => ? [B_r] :
      ! [B_z] :
        ( c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,B_r,c_RealVector_Onorm__class_Onorm(tc_Complex_Ocomplex,B_z))
       => c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,v_da____,c_RealVector_Onorm__class_Onorm(tc_Complex_Ocomplex,hAPP(c_Polynomial_Opoly(tc_Complex_Ocomplex,c_Polynomial_OpCons(tc_Complex_Ocomplex,v_aa____,c_Polynomial_OpCons(tc_Complex_Ocomplex,v_c____,v_cs____))),B_z))) ) ) ).

fof(fact_norm__triangle__ineq,axiom,
    ! [V_y,V_x,T_a] :
      ( c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_RealVector_Onorm__class_Onorm(T_a,c_Groups_Oplus__class_Oplus(T_a,V_x,V_y)),c_Groups_Oplus__class_Oplus(tc_RealDef_Oreal,c_RealVector_Onorm__class_Onorm(T_a,V_x),c_RealVector_Onorm__class_Onorm(T_a,V_y)))
     <= class_RealVector_Oreal__normed__vector(T_a) ) ).

fof(fact_dvd__0__left,axiom,
    ! [V_a,T_a] :
      ( ( c_Rings_Odvd__class_Odvd(T_a,c_Groups_Ozero__class_Ozero(T_a),V_a)
       => V_a = c_Groups_Ozero__class_Ozero(T_a) )
     <= class_Rings_Ocomm__semiring__1(T_a) ) ).

fof(arity_Complex__Ocomplex__Rings_Osemiring,axiom,
    class_Rings_Osemiring(tc_Complex_Ocomplex) ).

fof(fact_dvd__pos__nat,axiom,
    ! [V_m,V_n] :
      ( ( c_Rings_Odvd__class_Odvd(tc_Nat_Onat,V_m,V_n)
       => c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_m) )
     <= c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_n) ) ).

fof(fact_zdvd__zmod__imp__zdvd,axiom,
    ! [V_n,V_m,V_k] :
      ( c_Rings_Odvd__class_Odvd(tc_Int_Oint,V_k,c_Divides_Odiv__class_Omod(tc_Int_Oint,V_m,V_n))
     => ( c_Rings_Odvd__class_Odvd(tc_Int_Oint,V_k,V_m)
       <= c_Rings_Odvd__class_Odvd(tc_Int_Oint,V_k,V_n) ) ) ).

fof(fact_add__right__cancel,axiom,
    ! [V_ca_2,V_ab_2,V_b_2,T_a] :
      ( class_Groups_Ocancel__semigroup__add(T_a)
     => ( V_ca_2 = V_b_2
      <=> c_Groups_Oplus__class_Oplus(T_a,V_ca_2,V_ab_2) = c_Groups_Oplus__class_Oplus(T_a,V_b_2,V_ab_2) ) ) ).

fof(fact_real__add__left__mono,axiom,
    ! [V_z,V_y,V_x] :
      ( c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,V_x,V_y)
     => c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Oplus__class_Oplus(tc_RealDef_Oreal,V_z,V_x),c_Groups_Oplus__class_Oplus(tc_RealDef_Oreal,V_z,V_y)) ) ).

fof(fact_real__root__ge__0__iff,axiom,
    ! [V_y_2,V_n_2] :
      ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_n_2)
     => ( c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),c_NthRoot_Oroot(V_n_2,V_y_2))
      <=> c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),V_y_2) ) ) ).

fof(arity_Complex__Ocomplex__Semiring__Normalization_Ocomm__semiring__1__cancel__crossproduct,axiom,
    class_Semiring__Normalization_Ocomm__semiring__1__cancel__crossproduct(tc_Complex_Ocomplex) ).

fof(fact_dvd_Oless__imp__not__eq,axiom,
    ! [V_y,V_x] :
      ( V_x != V_y
     <= ( ~ c_Rings_Odvd__class_Odvd(tc_Nat_Onat,V_y,V_x)
        & c_Rings_Odvd__class_Odvd(tc_Nat_Onat,V_x,V_y) ) ) ).

fof(arity_RealDef__Oreal__Groups_Omonoid__add,axiom,
    class_Groups_Omonoid__add(tc_RealDef_Oreal) ).

fof(fact_power__real__of__nat,axiom,
    ! [V_n,V_m] : hAPP(hAPP(c_Power_Opower__class_Opower(tc_RealDef_Oreal),c_RealDef_Oreal(tc_Nat_Onat,V_m)),V_n) = c_RealDef_Oreal(tc_Nat_Onat,hAPP(hAPP(c_Power_Opower__class_Opower(tc_Nat_Onat),V_m),V_n)) ).

fof(fact_dvd_Oord__eq__less__trans,axiom,
    ! [V_c,V_b,V_a] :
      ( V_a = V_b
     => ( ( ~ c_Rings_Odvd__class_Odvd(tc_Nat_Onat,V_c,V_b)
          & c_Rings_Odvd__class_Odvd(tc_Nat_Onat,V_b,V_c) )
       => ( c_Rings_Odvd__class_Odvd(tc_Nat_Onat,V_a,V_c)
          & ~ c_Rings_Odvd__class_Odvd(tc_Nat_Onat,V_c,V_a) ) ) ) ).

fof(fact_add__le__less__mono,axiom,
    ! [V_d,V_c,V_b,V_a,T_a] :
      ( class_Groups_Oordered__cancel__ab__semigroup__add(T_a)
     => ( ( c_Orderings_Oord__class_Oless(T_a,V_c,V_d)
         => c_Orderings_Oord__class_Oless(T_a,c_Groups_Oplus__class_Oplus(T_a,V_a,V_c),c_Groups_Oplus__class_Oplus(T_a,V_b,V_d)) )
       <= c_Orderings_Oord__class_Oless__eq(T_a,V_a,V_b) ) ) ).

fof(fact_left__add__mult__distrib,axiom,
    ! [V_k,V_j,V_u,V_i] : c_Groups_Oplus__class_Oplus(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_i,V_j)),V_u),V_k) = c_Groups_Oplus__class_Oplus(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_i),V_u),c_Groups_Oplus__class_Oplus(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_j),V_u),V_k)) ).

fof(fact_split__div,axiom,
    ! [V_k_2,V_n_2,V_P_2] :
      ( hBOOL(hAPP(V_P_2,c_Divides_Odiv__class_Odiv(tc_Nat_Onat,V_n_2,V_k_2)))
    <=> ( ( ! [B_i,B_j] :
              ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,B_j,V_k_2)
             => ( hBOOL(hAPP(V_P_2,B_i))
               <= V_n_2 = c_Groups_Oplus__class_Oplus(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_k_2),B_i),B_j) ) )
         <= V_k_2 != c_Groups_Ozero__class_Ozero(tc_Nat_Onat) )
        & ( hBOOL(hAPP(V_P_2,c_Groups_Ozero__class_Ozero(tc_Nat_Onat)))
         <= c_Groups_Ozero__class_Ozero(tc_Nat_Onat) = V_k_2 ) ) ) ).

fof(fact_leI,axiom,
    ! [V_y,V_x,T_a] :
      ( ( ~ c_Orderings_Oord__class_Oless(T_a,V_x,V_y)
       => c_Orderings_Oord__class_Oless__eq(T_a,V_y,V_x) )
     <= class_Orderings_Olinorder(T_a) ) ).

fof(fact_add__nonneg__eq__0__iff,axiom,
    ! [V_y_2,V_x_2,T_a] :
      ( ( ( ( c_Groups_Ozero__class_Ozero(T_a) = c_Groups_Oplus__class_Oplus(T_a,V_x_2,V_y_2)
          <=> ( c_Groups_Ozero__class_Ozero(T_a) = V_y_2
              & c_Groups_Ozero__class_Ozero(T_a) = V_x_2 ) )
         <= c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_y_2) )
       <= c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_x_2) )
     <= class_Groups_Oordered__comm__monoid__add(T_a) ) ).

fof(arity_RealDef__Oreal__Groups_Omonoid__mult,axiom,
    class_Groups_Omonoid__mult(tc_RealDef_Oreal) ).

fof(fact_norm__minus__commute,axiom,
    ! [V_b,V_a,T_a] :
      ( class_RealVector_Oreal__normed__vector(T_a)
     => c_RealVector_Onorm__class_Onorm(T_a,c_Groups_Ominus__class_Ominus(T_a,V_b,V_a)) = c_RealVector_Onorm__class_Onorm(T_a,c_Groups_Ominus__class_Ominus(T_a,V_a,V_b)) ) ).

fof(arity_RealDef__Oreal__Fields_Ofield,axiom,
    class_Fields_Ofield(tc_RealDef_Oreal) ).

fof(arity_Complex__Ocomplex__RealVector_Oreal__normed__algebra,axiom,
    class_RealVector_Oreal__normed__algebra(tc_Complex_Ocomplex) ).

fof(arity_Int__Oint__Groups_Ocancel__comm__monoid__add,axiom,
    class_Groups_Ocancel__comm__monoid__add(tc_Int_Oint) ).

fof(fact_dvd_Oord__le__eq__trans,axiom,
    ! [V_c,V_b,V_a] :
      ( ( c_Rings_Odvd__class_Odvd(tc_Nat_Onat,V_a,V_c)
       <= V_c = V_b )
     <= c_Rings_Odvd__class_Odvd(tc_Nat_Onat,V_a,V_b) ) ).

fof(arity_Nat__Onat__Groups_Ocancel__ab__semigroup__add,axiom,
    class_Groups_Ocancel__ab__semigroup__add(tc_Nat_Onat) ).

fof(arity_RealDef__Oreal__Groups_Oab__semigroup__mult,axiom,
    class_Groups_Oab__semigroup__mult(tc_RealDef_Oreal) ).

fof(fact_real__natfloor__add__one__gt,axiom,
    ! [V_x] : c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,V_x,c_Groups_Oplus__class_Oplus(tc_RealDef_Oreal,c_RealDef_Oreal(tc_Nat_Onat,c_RComplete_Onatfloor(V_x)),c_Groups_Oone__class_Oone(tc_RealDef_Oreal))) ).

fof(fact_pos__divide__le__eq,axiom,
    ! [V_ab_2,V_b_2,V_ca_2,T_a] :
      ( ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_b_2,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_ab_2),V_ca_2))
        <=> c_Orderings_Oord__class_Oless__eq(T_a,c_Rings_Oinverse__class_Odivide(T_a,V_b_2,V_ca_2),V_ab_2) )
       <= c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_ca_2) )
     <= class_Fields_Olinordered__field(T_a) ) ).

fof(arity_RealDef__Oreal__Rings_Olinordered__ring,axiom,
    class_Rings_Olinordered__ring(tc_RealDef_Oreal) ).

fof(fact_mult__1__left,axiom,
    ! [V_a,T_a] :
      ( class_Groups_Omonoid__mult(T_a)
     => V_a = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Groups_Oone__class_Oone(T_a)),V_a) ) ).

fof(fact_real__root__mult__exp,axiom,
    ! [V_x,V_n,V_m] :
      ( ( c_NthRoot_Oroot(hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_m),V_n),V_x) = c_NthRoot_Oroot(V_m,c_NthRoot_Oroot(V_n,V_x))
       <= c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_n) )
     <= c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_m) ) ).

fof(fact_dvd__mult__cancel__right,axiom,
    ! [V_b_2,V_ca_2,V_ab_2,T_a] :
      ( class_Rings_Oidom(T_a)
     => ( ( c_Rings_Odvd__class_Odvd(T_a,V_ab_2,V_b_2)
          | c_Groups_Ozero__class_Ozero(T_a) = V_ca_2 )
      <=> c_Rings_Odvd__class_Odvd(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_ab_2),V_ca_2),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b_2),V_ca_2)) ) ) ).

fof(arity_RealDef__Oreal__Orderings_Olinorder,axiom,
    class_Orderings_Olinorder(tc_RealDef_Oreal) ).

fof(fact_zdiv__mono1__neg,axiom,
    ! [V_b,V_a_H,V_a] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,V_a,V_a_H)
     => ( c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Divides_Odiv__class_Odiv(tc_Int_Oint,V_a_H,V_b),c_Divides_Odiv__class_Odiv(tc_Int_Oint,V_a,V_b))
       <= c_Orderings_Oord__class_Oless(tc_Int_Oint,V_b,c_Groups_Ozero__class_Ozero(tc_Int_Oint)) ) ) ).

fof(fact_mod__mult__distrib,axiom,
    ! [V_k,V_n,V_m] : c_Divides_Odiv__class_Omod(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_m),V_k),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_n),V_k)) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),c_Divides_Odiv__class_Omod(tc_Nat_Onat,V_m,V_n)),V_k) ).

fof(arity_RealDef__Oreal__Groups_Ocomm__monoid__add,axiom,
    class_Groups_Ocomm__monoid__add(tc_RealDef_Oreal) ).

fof(arity_fun__Orderings_Opreorder,axiom,
    ! [T_2,T_1] :
      ( class_Orderings_Opreorder(tc_fun(T_2,T_1))
     <= class_Orderings_Opreorder(T_1) ) ).

fof(arity_Polynomial__Opoly__Groups_Oordered__ab__semigroup__add,axiom,
    ! [T_1] :
      ( class_Rings_Olinordered__idom(T_1)
     => class_Groups_Oordered__ab__semigroup__add(tc_Polynomial_Opoly(T_1)) ) ).

fof(fact_add__0__right,axiom,
    ! [V_a,T_a] :
      ( class_Groups_Omonoid__add(T_a)
     => V_a = c_Groups_Oplus__class_Oplus(T_a,V_a,c_Groups_Ozero__class_Ozero(T_a)) ) ).

fof(fact_power__strict__increasing,axiom,
    ! [V_a,V_N,V_n,T_a] :
      ( ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_n,V_N)
       => ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Oone__class_Oone(T_a),V_a)
         => c_Orderings_Oord__class_Oless(T_a,hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_n),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_N)) ) )
     <= class_Rings_Olinordered__semidom(T_a) ) ).

fof(fact_mult__is__0,axiom,
    ! [V_n_2,V_m_2] :
      ( hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_m_2),V_n_2) = c_Groups_Ozero__class_Ozero(tc_Nat_Onat)
    <=> ( V_n_2 = c_Groups_Ozero__class_Ozero(tc_Nat_Onat)
        | c_Groups_Ozero__class_Ozero(tc_Nat_Onat) = V_m_2 ) ) ).

fof(fact_comm__semiring__1__class_Onormalizing__semiring__rules_I9_J,axiom,
    ! [V_a,T_a] :
      ( class_Rings_Ocomm__semiring__1(T_a)
     => hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Groups_Ozero__class_Ozero(T_a)),V_a) = c_Groups_Ozero__class_Ozero(T_a) ) ).

fof(fact_mult_Oadd__left,axiom,
    ! [V_b,V_a_H,V_a,T_a] :
      ( hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Groups_Oplus__class_Oplus(T_a,V_a,V_a_H)),V_b) = c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a_H),V_b))
     <= class_RealVector_Oreal__normed__algebra(T_a) ) ).

fof(fact_mult__dvd__mono,axiom,
    ! [V_d,V_c,V_b,V_a,T_a] :
      ( ( ( c_Rings_Odvd__class_Odvd(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_c),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b),V_d))
         <= c_Rings_Odvd__class_Odvd(T_a,V_c,V_d) )
       <= c_Rings_Odvd__class_Odvd(T_a,V_a,V_b) )
     <= class_Rings_Ocomm__semiring__1(T_a) ) ).

fof(fact_div__mult__self__is__m,axiom,
    ! [V_m,V_n] :
      ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_n)
     => c_Divides_Odiv__class_Odiv(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_m),V_n),V_n) = V_m ) ).

fof(arity_Int__Oint__Power_Opower,axiom,
    class_Power_Opower(tc_Int_Oint) ).

fof(fact_le__fun__def,axiom,
    ! [V_g_2,V_f_2,T_a,T_b] :
      ( ( ! [B_x] : c_Orderings_Oord__class_Oless__eq(T_b,hAPP(V_f_2,B_x),hAPP(V_g_2,B_x))
      <=> c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,T_b),V_f_2,V_g_2) )
     <= class_Orderings_Oord(T_b) ) ).

fof(fact_field__power__not__zero,axiom,
    ! [V_n,V_a,T_a] :
      ( ( c_Groups_Ozero__class_Ozero(T_a) != V_a
       => hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_n) != c_Groups_Ozero__class_Ozero(T_a) )
     <= class_Rings_Oring__1__no__zero__divisors(T_a) ) ).

fof(help_c__fequal__1,axiom,
    ! [V_y_2,V_x_2] :
      ( ~ hBOOL(c_fequal(V_x_2,V_y_2))
      | V_x_2 = V_y_2 ) ).

fof(fact_nat__add__assoc,axiom,
    ! [V_k,V_n,V_m] : c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_m,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_n,V_k)) = c_Groups_Oplus__class_Oplus(tc_Nat_Onat,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_m,V_n),V_k) ).

fof(fact_mult_Ononneg__bounded,axiom,
    ! [T_a] :
      ( ? [B_K] :
          ( ! [B_a,B_b] : c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_RealVector_Onorm__class_Onorm(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),B_a),B_b)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),c_RealVector_Onorm__class_Onorm(T_a,B_a)),c_RealVector_Onorm__class_Onorm(T_a,B_b))),B_K))
          & c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),B_K) )
     <= class_RealVector_Oreal__normed__algebra(T_a) ) ).

fof(fact_ext,axiom,
    ! [V_g_2,V_f_2] :
      ( ! [B_x] : hAPP(V_f_2,B_x) = hAPP(V_g_2,B_x)
     => V_f_2 = V_g_2 ) ).

fof(fact_natceiling__le__eq__one,axiom,
    ! [V_x_2] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,c_RComplete_Onatceiling(V_x_2),c_Groups_Oone__class_Oone(tc_Nat_Onat))
    <=> c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,V_x_2,c_Groups_Oone__class_Oone(tc_RealDef_Oreal)) ) ).

fof(fact_zmod__zdiv__equality_H,axiom,
    ! [V_n,V_m] : c_Divides_Odiv__class_Omod(tc_Int_Oint,V_m,V_n) = c_Groups_Ominus__class_Ominus(tc_Int_Oint,V_m,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),c_Divides_Odiv__class_Odiv(tc_Int_Oint,V_m,V_n)),V_n)) ).

fof(fact_sum__squares__eq__zero__iff,axiom,
    ! [V_y_2,V_x_2,T_a] :
      ( class_Rings_Olinordered__ring__strict(T_a)
     => ( ( V_x_2 = c_Groups_Ozero__class_Ozero(T_a)
          & c_Groups_Ozero__class_Ozero(T_a) = V_y_2 )
      <=> c_Groups_Ozero__class_Ozero(T_a) = c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_x_2),V_x_2),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_y_2),V_y_2)) ) ) ).

fof(fact_pos__poly__pCons,axiom,
    ! [V_pa_2,V_ab_2,T_a] :
      ( class_Rings_Olinordered__idom(T_a)
     => ( c_Polynomial_Opos__poly(T_a,c_Polynomial_OpCons(T_a,V_ab_2,V_pa_2))
      <=> ( c_Polynomial_Opos__poly(T_a,V_pa_2)
          | ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_ab_2)
            & V_pa_2 = c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a)) ) ) ) ) ).

fof(arity_Int__Oint__Rings_Olinordered__ring,axiom,
    class_Rings_Olinordered__ring(tc_Int_Oint) ).

fof(fact_zadd__left__mono,axiom,
    ! [V_k,V_j,V_i] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Oplus__class_Oplus(tc_Int_Oint,V_k,V_i),c_Groups_Oplus__class_Oplus(tc_Int_Oint,V_k,V_j))
     <= c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,V_i,V_j) ) ).

fof(fact_less__iff__diff__less__0,axiom,
    ! [V_b_2,V_ab_2,T_a] :
      ( class_Groups_Oordered__ab__group__add(T_a)
     => ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Ominus__class_Ominus(T_a,V_ab_2,V_b_2),c_Groups_Ozero__class_Ozero(T_a))
      <=> c_Orderings_Oord__class_Oless(T_a,V_ab_2,V_b_2) ) ) ).

fof(fact_mult__less__cancel1,axiom,
    ! [V_n_2,V_m_2,V_k_2] :
      ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_k_2),V_m_2),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_k_2),V_n_2))
    <=> ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_m_2,V_n_2)
        & c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_k_2) ) ) ).

fof(fact_zero__reorient,axiom,
    ! [V_x_2,T_a] :
      ( class_Groups_Ozero(T_a)
     => ( c_Groups_Ozero__class_Ozero(T_a) = V_x_2
      <=> c_Groups_Ozero__class_Ozero(T_a) = V_x_2 ) ) ).

fof(fact_zmod__eq__dvd__iff,axiom,
    ! [V_y_2,V_n_2,V_x_2] :
      ( c_Divides_Odiv__class_Omod(tc_Int_Oint,V_x_2,V_n_2) = c_Divides_Odiv__class_Omod(tc_Int_Oint,V_y_2,V_n_2)
    <=> c_Rings_Odvd__class_Odvd(tc_Int_Oint,V_n_2,c_Groups_Ominus__class_Ominus(tc_Int_Oint,V_x_2,V_y_2)) ) ).

fof(fact_norm__triangle__ineq2,axiom,
    ! [V_b,V_a,T_a] :
      ( class_RealVector_Oreal__normed__vector(T_a)
     => c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Ominus__class_Ominus(tc_RealDef_Oreal,c_RealVector_Onorm__class_Onorm(T_a,V_a),c_RealVector_Onorm__class_Onorm(T_a,V_b)),c_RealVector_Onorm__class_Onorm(T_a,c_Groups_Ominus__class_Ominus(T_a,V_a,V_b))) ) ).

fof(fact_mod__neg__neg__trivial,axiom,
    ! [V_b,V_a] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,V_a,c_Groups_Ozero__class_Ozero(tc_Int_Oint))
     => ( V_a = c_Divides_Odiv__class_Omod(tc_Int_Oint,V_a,V_b)
       <= c_Orderings_Oord__class_Oless(tc_Int_Oint,V_b,V_a) ) ) ).

fof(arity_Nat__Onat__Orderings_Oord,axiom,
    class_Orderings_Oord(tc_Nat_Onat) ).

fof(arity_RealDef__Oreal__Rings_Oring__1__no__zero__divisors,axiom,
    class_Rings_Oring__1__no__zero__divisors(tc_RealDef_Oreal) ).

fof(fact_nat__less__cases,axiom,
    ! [V_P_2,V_n_2,V_m_2] :
      ( ( ( ( hBOOL(hAPP(hAPP(V_P_2,V_n_2),V_m_2))
           <= c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_n_2,V_m_2) )
         => hBOOL(hAPP(hAPP(V_P_2,V_n_2),V_m_2)) )
       <= ( V_m_2 = V_n_2
         => hBOOL(hAPP(hAPP(V_P_2,V_n_2),V_m_2)) ) )
     <= ( hBOOL(hAPP(hAPP(V_P_2,V_n_2),V_m_2))
       <= c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_m_2,V_n_2) ) ) ).

fof(fact_power__less__imp__less__base,axiom,
    ! [V_b,V_n,V_a,T_a] :
      ( class_Rings_Olinordered__semidom(T_a)
     => ( ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_b)
         => c_Orderings_Oord__class_Oless(T_a,V_a,V_b) )
       <= c_Orderings_Oord__class_Oless(T_a,hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_n),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_b),V_n)) ) ) ).

fof(fact_mult__mono_H,axiom,
    ! [V_d,V_c,V_b,V_a,T_a] :
      ( class_Rings_Oordered__semiring(T_a)
     => ( c_Orderings_Oord__class_Oless__eq(T_a,V_a,V_b)
       => ( ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_a)
           => ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_c)
             => c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_c),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b),V_d)) ) )
         <= c_Orderings_Oord__class_Oless__eq(T_a,V_c,V_d) ) ) ) ).

fof(fact_dvd_Ole__imp__less__or__eq,axiom,
    ! [V_y,V_x] :
      ( c_Rings_Odvd__class_Odvd(tc_Nat_Onat,V_x,V_y)
     => ( V_y = V_x
        | ( ~ c_Rings_Odvd__class_Odvd(tc_Nat_Onat,V_y,V_x)
          & c_Rings_Odvd__class_Odvd(tc_Nat_Onat,V_x,V_y) ) ) ) ).

fof(fact_eq__divide__imp,axiom,
    ! [V_b,V_a,V_c,T_a] :
      ( class_Rings_Odivision__ring(T_a)
     => ( ( V_b = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_c)
         => V_a = c_Rings_Oinverse__class_Odivide(T_a,V_b,V_c) )
       <= c_Groups_Ozero__class_Ozero(T_a) != V_c ) ) ).

fof(fact_order__le__less__trans,axiom,
    ! [V_z,V_y,V_x,T_a] :
      ( ( ( c_Orderings_Oord__class_Oless(T_a,V_y,V_z)
         => c_Orderings_Oord__class_Oless(T_a,V_x,V_z) )
       <= c_Orderings_Oord__class_Oless__eq(T_a,V_x,V_y) )
     <= class_Orderings_Opreorder(T_a) ) ).

fof(fact_right__minus__eq,axiom,
    ! [V_b_2,V_ab_2,T_a] :
      ( ( V_ab_2 = V_b_2
      <=> c_Groups_Ozero__class_Ozero(T_a) = c_Groups_Ominus__class_Ominus(T_a,V_ab_2,V_b_2) )
     <= class_Groups_Ogroup__add(T_a) ) ).

fof(fact_norm__diff__triangle__ineq,axiom,
    ! [V_d,V_c,V_b,V_a,T_a] :
      ( class_RealVector_Oreal__normed__vector(T_a)
     => c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_RealVector_Onorm__class_Onorm(T_a,c_Groups_Ominus__class_Ominus(T_a,c_Groups_Oplus__class_Oplus(T_a,V_a,V_b),c_Groups_Oplus__class_Oplus(T_a,V_c,V_d))),c_Groups_Oplus__class_Oplus(tc_RealDef_Oreal,c_RealVector_Onorm__class_Onorm(T_a,c_Groups_Ominus__class_Ominus(T_a,V_a,V_c)),c_RealVector_Onorm__class_Onorm(T_a,c_Groups_Ominus__class_Ominus(T_a,V_b,V_d)))) ) ).

fof(arity_RealDef__Oreal__Rings_Olinordered__semiring__1__strict,axiom,
    class_Rings_Olinordered__semiring__1__strict(tc_RealDef_Oreal) ).

fof(arity_Polynomial__Opoly__Rings_Olinordered__semiring__1,axiom,
    ! [T_1] :
      ( class_Rings_Olinordered__semiring__1(tc_Polynomial_Opoly(T_1))
     <= class_Rings_Olinordered__idom(T_1) ) ).

fof(fact_mod__mult__self2,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( c_Divides_Odiv__class_Omod(T_a,c_Groups_Oplus__class_Oplus(T_a,V_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b),V_c)),V_b) = c_Divides_Odiv__class_Omod(T_a,V_a,V_b)
     <= class_Divides_Osemiring__div(T_a) ) ).

fof(fact_mult__imp__div__pos__less,axiom,
    ! [V_z,V_x,V_y,T_a] :
      ( ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_y)
       => ( c_Orderings_Oord__class_Oless(T_a,V_x,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_z),V_y))
         => c_Orderings_Oord__class_Oless(T_a,c_Rings_Oinverse__class_Odivide(T_a,V_x,V_y),V_z) ) )
     <= class_Fields_Olinordered__field(T_a) ) ).

fof(fact_power__eq__imp__eq__base,axiom,
    ! [V_b,V_n,V_a,T_a] :
      ( class_Rings_Olinordered__semidom(T_a)
     => ( ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_a)
         => ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_b)
           => ( V_a = V_b
             <= c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_n) ) ) )
       <= hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_n) = hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_b),V_n) ) ) ).

fof(arity_Int__Oint__Rings_Oring__no__zero__divisors,axiom,
    class_Rings_Oring__no__zero__divisors(tc_Int_Oint) ).

fof(fact_semiring__div__class_Omod__div__equality_H,axiom,
    ! [V_b,V_a,T_a] :
      ( class_Divides_Osemiring__div(T_a)
     => V_a = c_Groups_Oplus__class_Oplus(T_a,c_Divides_Odiv__class_Omod(T_a,V_a,V_b),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Divides_Odiv__class_Odiv(T_a,V_a,V_b)),V_b)) ) ).

fof(fact_norm__le__zero__iff,axiom,
    ! [V_x_2,T_a] :
      ( ( c_Groups_Ozero__class_Ozero(T_a) = V_x_2
      <=> c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_RealVector_Onorm__class_Onorm(T_a,V_x_2),c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)) )
     <= class_RealVector_Oreal__normed__vector(T_a) ) ).

fof(arity_RealDef__Oreal__Rings_Odivision__ring,axiom,
    class_Rings_Odivision__ring(tc_RealDef_Oreal) ).

fof(arity_Int__Oint__Groups_Ozero,axiom,
    class_Groups_Ozero(tc_Int_Oint) ).

fof(arity_RealDef__Oreal__Groups_Ocomm__monoid__mult,axiom,
    class_Groups_Ocomm__monoid__mult(tc_RealDef_Oreal) ).

fof(arity_Int__Oint__Groups_Omonoid__add,axiom,
    class_Groups_Omonoid__add(tc_Int_Oint) ).

fof(fact_pos__imp__zdiv__pos__iff,axiom,
    ! [V_i_2,V_k_2] :
      ( ( c_Orderings_Oord__class_Oless(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),c_Divides_Odiv__class_Odiv(tc_Int_Oint,V_i_2,V_k_2))
      <=> c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,V_k_2,V_i_2) )
     <= c_Orderings_Oord__class_Oless(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_k_2) ) ).

fof(arity_RealDef__Oreal__RealVector_Oreal__normed__algebra__1,axiom,
    class_RealVector_Oreal__normed__algebra__1(tc_RealDef_Oreal) ).

fof(fact_zmod__simps_I4_J,axiom,
    ! [V_b,V_c,V_a,T_a] :
      ( c_Divides_Odiv__class_Omod(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b),V_c) = c_Divides_Odiv__class_Omod(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Divides_Odiv__class_Omod(T_a,V_a,V_c)),V_b),V_c)
     <= class_Divides_Osemiring__div(T_a) ) ).

fof(fact_pos__poly__add,axiom,
    ! [V_q,V_p,T_a] :
      ( class_Rings_Olinordered__idom(T_a)
     => ( ( c_Polynomial_Opos__poly(T_a,V_q)
         => c_Polynomial_Opos__poly(T_a,c_Groups_Oplus__class_Oplus(tc_Polynomial_Opoly(T_a),V_p,V_q)) )
       <= c_Polynomial_Opos__poly(T_a,V_p) ) ) ).

fof(fact_not__less__iff__gr__or__eq,axiom,
    ! [V_y_2,V_x_2,T_a] :
      ( class_Orderings_Olinorder(T_a)
     => ( ~ c_Orderings_Oord__class_Oless(T_a,V_x_2,V_y_2)
      <=> ( V_y_2 = V_x_2
          | c_Orderings_Oord__class_Oless(T_a,V_y_2,V_x_2) ) ) ) ).

fof(fact_mod__mult__eq,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( c_Divides_Odiv__class_Omod(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b),V_c) = c_Divides_Odiv__class_Omod(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Divides_Odiv__class_Omod(T_a,V_a,V_c)),c_Divides_Odiv__class_Omod(T_a,V_b,V_c)),V_c)
     <= class_Divides_Osemiring__div(T_a) ) ).

fof(fact_add__is__0,axiom,
    ! [V_n_2,V_m_2] :
      ( c_Groups_Ozero__class_Ozero(tc_Nat_Onat) = c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_m_2,V_n_2)
    <=> ( V_n_2 = c_Groups_Ozero__class_Ozero(tc_Nat_Onat)
        & V_m_2 = c_Groups_Ozero__class_Ozero(tc_Nat_Onat) ) ) ).

fof(fact_real__0__le__divide__iff,axiom,
    ! [V_y_2,V_x_2] :
      ( c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),c_Rings_Oinverse__class_Odivide(tc_RealDef_Oreal,V_x_2,V_y_2))
    <=> ( ( c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,V_y_2,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal))
          | c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),V_x_2) )
        & ( c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),V_y_2)
          | c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,V_x_2,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)) ) ) ) ).

fof(fact_zless__le,axiom,
    ! [V_w_2,V_za_2] :
      ( ( V_w_2 != V_za_2
        & c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,V_za_2,V_w_2) )
    <=> c_Orderings_Oord__class_Oless(tc_Int_Oint,V_za_2,V_w_2) ) ).

fof(fact_add__num__frac,axiom,
    ! [V_x,V_z,V_y,T_a] :
      ( class_Fields_Ofield__inverse__zero(T_a)
     => ( c_Groups_Oplus__class_Oplus(T_a,V_z,c_Rings_Oinverse__class_Odivide(T_a,V_x,V_y)) = c_Rings_Oinverse__class_Odivide(T_a,c_Groups_Oplus__class_Oplus(T_a,V_x,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_z),V_y)),V_y)
       <= c_Groups_Ozero__class_Ozero(T_a) != V_y ) ) ).

fof(fact_combine__common__factor,axiom,
    ! [V_c,V_b,V_e,V_a,T_a] :
      ( c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_e),c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b),V_e),V_c)) = c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Groups_Oplus__class_Oplus(T_a,V_a,V_b)),V_e),V_c)
     <= class_Rings_Osemiring(T_a) ) ).

fof(arity_Polynomial__Opoly__Rings_Olinordered__ring__strict,axiom,
    ! [T_1] :
      ( class_Rings_Olinordered__idom(T_1)
     => class_Rings_Olinordered__ring__strict(tc_Polynomial_Opoly(T_1)) ) ).

fof(fact_order__less__irrefl,axiom,
    ! [V_x,T_a] :
      ( ~ c_Orderings_Oord__class_Oless(T_a,V_x,V_x)
     <= class_Orderings_Opreorder(T_a) ) ).

fof(fact_mult__left_Ozero,axiom,
    ! [V_y,T_a] :
      ( hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Groups_Ozero__class_Ozero(T_a)),V_y) = c_Groups_Ozero__class_Ozero(T_a)
     <= class_RealVector_Oreal__normed__algebra(T_a) ) ).

fof(fact_add__pCons,axiom,
    ! [V_q,V_b,V_p,V_a,T_a] :
      ( class_Groups_Ocomm__monoid__add(T_a)
     => c_Polynomial_OpCons(T_a,c_Groups_Oplus__class_Oplus(T_a,V_a,V_b),c_Groups_Oplus__class_Oplus(tc_Polynomial_Opoly(T_a),V_p,V_q)) = c_Groups_Oplus__class_Oplus(tc_Polynomial_Opoly(T_a),c_Polynomial_OpCons(T_a,V_a,V_p),c_Polynomial_OpCons(T_a,V_b,V_q)) ) ).

fof(fact_add__mult__distrib,axiom,
    ! [V_k,V_n,V_m] : c_Groups_Oplus__class_Oplus(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_m),V_k),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_n),V_k)) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_m,V_n)),V_k) ).

fof(fact_le__funD,axiom,
    ! [V_x_2,V_g_2,V_f_2,T_a,T_b] :
      ( ( c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,T_b),V_f_2,V_g_2)
       => c_Orderings_Oord__class_Oless__eq(T_b,hAPP(V_f_2,V_x_2),hAPP(V_g_2,V_x_2)) )
     <= class_Orderings_Oord(T_b) ) ).

fof(arity_Polynomial__Opoly__Orderings_Oorder,axiom,
    ! [T_1] :
      ( class_Rings_Olinordered__idom(T_1)
     => class_Orderings_Oorder(tc_Polynomial_Opoly(T_1)) ) ).

fof(fact_gcd__lcm__complete__lattice__nat_Obot__least,axiom,
    ! [V_x] : c_Rings_Odvd__class_Odvd(tc_Nat_Onat,c_Groups_Oone__class_Oone(tc_Nat_Onat),V_x) ).

fof(fact_not__pos__poly__0,axiom,
    ! [T_a] :
      ( class_Rings_Olinordered__idom(T_a)
     => ~ c_Polynomial_Opos__poly(T_a,c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a))) ) ).

fof(fact_div__mult__swap,axiom,
    ! [V_a,V_b,V_c,T_a] :
      ( ( c_Divides_Odiv__class_Odiv(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b),V_c) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),c_Divides_Odiv__class_Odiv(T_a,V_b,V_c))
       <= c_Rings_Odvd__class_Odvd(T_a,V_c,V_b) )
     <= class_Divides_Osemiring__div(T_a) ) ).

fof(fact_real__root__increasing,axiom,
    ! [V_x,V_N,V_n] :
      ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_n)
     => ( ( ( c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_NthRoot_Oroot(V_n,V_x),c_NthRoot_Oroot(V_N,V_x))
           <= c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,V_x,c_Groups_Oone__class_Oone(tc_RealDef_Oreal)) )
         <= c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),V_x) )
       <= c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_n,V_N) ) ) ).

fof(fact_order__le__less,axiom,
    ! [V_y_2,V_x_2,T_a] :
      ( class_Orderings_Oorder(T_a)
     => ( ( c_Orderings_Oord__class_Oless(T_a,V_x_2,V_y_2)
          | V_x_2 = V_y_2 )
      <=> c_Orderings_Oord__class_Oless__eq(T_a,V_x_2,V_y_2) ) ) ).

fof(arity_Polynomial__Opoly__Rings_Oordered__semiring,axiom,
    ! [T_1] :
      ( class_Rings_Olinordered__idom(T_1)
     => class_Rings_Oordered__semiring(tc_Polynomial_Opoly(T_1)) ) ).

fof(fact_natceiling__zero,axiom,
    c_RComplete_Onatceiling(c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)) = c_Groups_Ozero__class_Ozero(tc_Nat_Onat) ).

fof(fact_ord__le__eq__trans,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( class_Orderings_Oord(T_a)
     => ( c_Orderings_Oord__class_Oless__eq(T_a,V_a,V_b)
       => ( c_Orderings_Oord__class_Oless__eq(T_a,V_a,V_c)
         <= V_c = V_b ) ) ) ).

fof(fact_mult__nonneg__nonpos,axiom,
    ! [V_b,V_a,T_a] :
      ( ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_a)
       => ( c_Orderings_Oord__class_Oless__eq(T_a,V_b,c_Groups_Ozero__class_Ozero(T_a))
         => c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b),c_Groups_Ozero__class_Ozero(T_a)) ) )
     <= class_Rings_Oordered__cancel__semiring(T_a) ) ).

fof(arity_RealDef__Oreal__Rings_Osemiring__0,axiom,
    class_Rings_Osemiring__0(tc_RealDef_Oreal) ).

fof(fact_add__divide__eq__iff,axiom,
    ! [V_y,V_x,V_z,T_a] :
      ( class_Fields_Ofield(T_a)
     => ( V_z != c_Groups_Ozero__class_Ozero(T_a)
       => c_Groups_Oplus__class_Oplus(T_a,V_x,c_Rings_Oinverse__class_Odivide(T_a,V_y,V_z)) = c_Rings_Oinverse__class_Odivide(T_a,c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_z),V_x),V_y),V_z) ) ) ).

fof(fact_double__add__less__zero__iff__single__add__less__zero,axiom,
    ! [V_ab_2,T_a] :
      ( class_Groups_Olinordered__ab__group__add(T_a)
     => ( c_Orderings_Oord__class_Oless(T_a,V_ab_2,c_Groups_Ozero__class_Ozero(T_a))
      <=> c_Orderings_Oord__class_Oless(T_a,c_Groups_Oplus__class_Oplus(T_a,V_ab_2,V_ab_2),c_Groups_Ozero__class_Ozero(T_a)) ) ) ).

fof(fact_norm__one,axiom,
    ! [T_a] :
      ( class_RealVector_Oreal__normed__algebra__1(T_a)
     => c_Groups_Oone__class_Oone(tc_RealDef_Oreal) = c_RealVector_Onorm__class_Onorm(T_a,c_Groups_Oone__class_Oone(T_a)) ) ).

fof(arity_Int__Oint__Groups_Omonoid__mult,axiom,
    class_Groups_Omonoid__mult(tc_Int_Oint) ).

fof(arity_Polynomial__Opoly__Rings_Osemiring,axiom,
    ! [T_1] :
      ( class_Rings_Osemiring(tc_Polynomial_Opoly(T_1))
     <= class_Rings_Ocomm__semiring__0(T_1) ) ).

fof(fact_pos__mod__sign,axiom,
    ! [V_a,V_b] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),c_Divides_Odiv__class_Omod(tc_Int_Oint,V_a,V_b))
     <= c_Orderings_Oord__class_Oless(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_b) ) ).

fof(arity_Int__Oint__Groups_Oordered__ab__semigroup__add__imp__le,axiom,
    class_Groups_Oordered__ab__semigroup__add__imp__le(tc_Int_Oint) ).

fof(fact_nonzero__power__divide,axiom,
    ! [V_n,V_a,V_b,T_a] :
      ( class_Fields_Ofield(T_a)
     => ( V_b != c_Groups_Ozero__class_Ozero(T_a)
       => hAPP(hAPP(c_Power_Opower__class_Opower(T_a),c_Rings_Oinverse__class_Odivide(T_a,V_a,V_b)),V_n) = c_Rings_Oinverse__class_Odivide(T_a,hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_n),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_b),V_n)) ) ) ).

fof(fact_add__gr__0,axiom,
    ! [V_n_2,V_m_2] :
      ( ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_n_2)
        | c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_m_2) )
    <=> c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_m_2,V_n_2)) ) ).

fof(fact_trans__less__add2,axiom,
    ! [V_m,V_j,V_i] :
      ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_i,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_m,V_j))
     <= c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_i,V_j) ) ).

fof(fact_decseq__def,axiom,
    ! [V_X_2,T_a] :
      ( ( ! [B_m,B_n] :
            ( c_Orderings_Oord__class_Oless__eq(T_a,hAPP(V_X_2,B_n),hAPP(V_X_2,B_m))
           <= c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,B_m,B_n) )
      <=> c_SEQ_Odecseq(T_a,V_X_2) )
     <= class_Orderings_Oorder(T_a) ) ).

fof(fact__0960_A_060_Acmod_Ac_096,axiom,
    c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),c_RealVector_Onorm__class_Onorm(tc_Complex_Ocomplex,v_c____)) ).

fof(fact_divide__eq__imp,axiom,
    ! [V_a,V_b,V_c,T_a] :
      ( ( V_c != c_Groups_Ozero__class_Ozero(T_a)
       => ( hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_c) = V_b
         => V_a = c_Rings_Oinverse__class_Odivide(T_a,V_b,V_c) ) )
     <= class_Rings_Odivision__ring(T_a) ) ).

fof(fact_real__of__nat__div__aux,axiom,
    ! [V_x,V_d] :
      ( c_Groups_Oplus__class_Oplus(tc_RealDef_Oreal,c_RealDef_Oreal(tc_Nat_Onat,c_Divides_Odiv__class_Odiv(tc_Nat_Onat,V_x,V_d)),c_Rings_Oinverse__class_Odivide(tc_RealDef_Oreal,c_RealDef_Oreal(tc_Nat_Onat,c_Divides_Odiv__class_Omod(tc_Nat_Onat,V_x,V_d)),c_RealDef_Oreal(tc_Nat_Onat,V_d))) = c_Rings_Oinverse__class_Odivide(tc_RealDef_Oreal,c_RealDef_Oreal(tc_Nat_Onat,V_x),c_RealDef_Oreal(tc_Nat_Onat,V_d))
     <= c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_d) ) ).

fof(fact_abs__real__of__nat__cancel,axiom,
    ! [V_x] : c_RealDef_Oreal(tc_Nat_Onat,V_x) = c_Groups_Oabs__class_Oabs(tc_RealDef_Oreal,c_RealDef_Oreal(tc_Nat_Onat,V_x)) ).

fof(arity_Polynomial__Opoly__Groups_Ocancel__comm__monoid__add,axiom,
    ! [T_1] :
      ( class_Groups_Ocancel__comm__monoid__add(tc_Polynomial_Opoly(T_1))
     <= class_Groups_Ocancel__comm__monoid__add(T_1) ) ).

fof(fact_dvd_Oless__imp__not__eq2,axiom,
    ! [V_y,V_x] :
      ( V_x != V_y
     <= ( c_Rings_Odvd__class_Odvd(tc_Nat_Onat,V_x,V_y)
        & ~ c_Rings_Odvd__class_Odvd(tc_Nat_Onat,V_y,V_x) ) ) ).

fof(fact_divide__less__eq,axiom,
    ! [V_ab_2,V_ca_2,V_b_2,T_a] :
      ( class_Fields_Olinordered__field__inverse__zero(T_a)
     => ( ( ( ( ( c_Orderings_Oord__class_Oless(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_ab_2),V_ca_2),V_b_2)
               <= c_Orderings_Oord__class_Oless(T_a,V_ca_2,c_Groups_Ozero__class_Ozero(T_a)) )
              & ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_ab_2)
               <= ~ c_Orderings_Oord__class_Oless(T_a,V_ca_2,c_Groups_Ozero__class_Ozero(T_a)) ) )
           <= ~ c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_ca_2) )
          & ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_ca_2)
           => c_Orderings_Oord__class_Oless(T_a,V_b_2,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_ab_2),V_ca_2)) ) )
      <=> c_Orderings_Oord__class_Oless(T_a,c_Rings_Oinverse__class_Odivide(T_a,V_b_2,V_ca_2),V_ab_2) ) ) ).

fof(fact_real__root__lt__0__iff,axiom,
    ! [V_x_2,V_n_2] :
      ( ( c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,V_x_2,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal))
      <=> c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_NthRoot_Oroot(V_n_2,V_x_2),c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal)) )
     <= c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_n_2) ) ).

fof(fact_poly__add,axiom,
    ! [V_x,V_q,V_p,T_a] :
      ( c_Groups_Oplus__class_Oplus(T_a,hAPP(c_Polynomial_Opoly(T_a,V_p),V_x),hAPP(c_Polynomial_Opoly(T_a,V_q),V_x)) = hAPP(c_Polynomial_Opoly(T_a,c_Groups_Oplus__class_Oplus(tc_Polynomial_Opoly(T_a),V_p,V_q)),V_x)
     <= class_Rings_Ocomm__semiring__0(T_a) ) ).

fof(arity_RealDef__Oreal__Groups_Olinordered__ab__group__add,axiom,
    class_Groups_Olinordered__ab__group__add(tc_RealDef_Oreal) ).

fof(fact_q__pos__lemma,axiom,
    ! [V_r_H,V_q_H,V_b_H] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),c_Groups_Oplus__class_Oplus(tc_Int_Oint,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_b_H),V_q_H),V_r_H))
     => ( c_Orderings_Oord__class_Oless(tc_Int_Oint,V_r_H,V_b_H)
       => ( c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_q_H)
         <= c_Orderings_Oord__class_Oless(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_b_H) ) ) ) ).

fof(arity_Polynomial__Opoly__Rings_Ocomm__semiring,axiom,
    ! [T_1] :
      ( class_Rings_Ocomm__semiring__0(T_1)
     => class_Rings_Ocomm__semiring(tc_Polynomial_Opoly(T_1)) ) ).

fof(fact_mult__eq__self__implies__10,axiom,
    ! [V_n,V_m] :
      ( ( c_Groups_Ozero__class_Ozero(tc_Nat_Onat) = V_m
        | V_n = c_Groups_Oone__class_Oone(tc_Nat_Onat) )
     <= V_m = hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_m),V_n) ) ).

fof(fact_add__pos__pos,axiom,
    ! [V_b,V_a,T_a] :
      ( class_Groups_Oordered__comm__monoid__add(T_a)
     => ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_a)
       => ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),c_Groups_Oplus__class_Oplus(T_a,V_a,V_b))
         <= c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_b) ) ) ) ).

fof(fact_mod__mult__mult1,axiom,
    ! [V_b,V_a,V_c,T_a] :
      ( c_Divides_Odiv__class_Omod(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_c),V_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_c),V_b)) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_c),c_Divides_Odiv__class_Omod(T_a,V_a,V_b))
     <= class_Divides_Osemiring__div(T_a) ) ).

fof(fact_mult__less__cancel__left__pos,axiom,
    ! [V_b_2,V_ab_2,V_ca_2,T_a] :
      ( ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_ca_2)
       => ( c_Orderings_Oord__class_Oless(T_a,V_ab_2,V_b_2)
        <=> c_Orderings_Oord__class_Oless(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_ca_2),V_ab_2),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_ca_2),V_b_2)) ) )
     <= class_Rings_Olinordered__ring__strict(T_a) ) ).

fof(arity_Complex__Ocomplex__Rings_Omult__zero,axiom,
    class_Rings_Omult__zero(tc_Complex_Ocomplex) ).

fof(fact_int__0__neq__1,axiom,
    c_Groups_Oone__class_Oone(tc_Int_Oint) != c_Groups_Ozero__class_Ozero(tc_Int_Oint) ).

fof(fact_unique__quotient__lemma__neg,axiom,
    ! [V_r,V_q,V_r_H,V_q_H,V_b] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Oplus__class_Oplus(tc_Int_Oint,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_b),V_q_H),V_r_H),c_Groups_Oplus__class_Oplus(tc_Int_Oint,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_b),V_q),V_r))
     => ( c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,V_r,c_Groups_Ozero__class_Ozero(tc_Int_Oint))
       => ( c_Orderings_Oord__class_Oless(tc_Int_Oint,V_b,V_r)
         => ( c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,V_q,V_q_H)
           <= c_Orderings_Oord__class_Oless(tc_Int_Oint,V_b,V_r_H) ) ) ) ) ).

fof(fact_mod__mod__cancel,axiom,
    ! [V_a,V_b,V_c,T_a] :
      ( ( c_Divides_Odiv__class_Omod(T_a,c_Divides_Odiv__class_Omod(T_a,V_a,V_b),V_c) = c_Divides_Odiv__class_Omod(T_a,V_a,V_c)
       <= c_Rings_Odvd__class_Odvd(T_a,V_c,V_b) )
     <= class_Divides_Osemiring__div(T_a) ) ).

fof(arity_RealDef__Oreal__Rings_Osemiring,axiom,
    class_Rings_Osemiring(tc_RealDef_Oreal) ).

fof(fact_eq__add__iff2,axiom,
    ! [V_db_2,V_b_2,V_ca_2,V_e_2,V_ab_2,T_a] :
      ( ( V_ca_2 = c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Groups_Ominus__class_Ominus(T_a,V_b_2,V_ab_2)),V_e_2),V_db_2)
      <=> c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_ab_2),V_e_2),V_ca_2) = c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b_2),V_e_2),V_db_2) )
     <= class_Rings_Oring(T_a) ) ).

fof(fact_neg__mod__bound,axiom,
    ! [V_a,V_b] :
      ( c_Orderings_Oord__class_Oless(tc_Int_Oint,V_b,c_Divides_Odiv__class_Omod(tc_Int_Oint,V_a,V_b))
     <= c_Orderings_Oord__class_Oless(tc_Int_Oint,V_b,c_Groups_Ozero__class_Ozero(tc_Int_Oint)) ) ).

fof(fact_order__antisym,axiom,
    ! [V_y,V_x,T_a] :
      ( ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_y,V_x)
         => V_x = V_y )
       <= c_Orderings_Oord__class_Oless__eq(T_a,V_x,V_y) )
     <= class_Orderings_Oorder(T_a) ) ).

fof(fact_real__root__le__mono,axiom,
    ! [V_y,V_x,V_n] :
      ( ( c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_NthRoot_Oroot(V_n,V_x),c_NthRoot_Oroot(V_n,V_y))
       <= c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,V_x,V_y) )
     <= c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_n) ) ).

fof(fact_div__mult__mult1,axiom,
    ! [V_b,V_a,V_c,T_a] :
      ( class_Divides_Osemiring__div(T_a)
     => ( c_Divides_Odiv__class_Odiv(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_c),V_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_c),V_b)) = c_Divides_Odiv__class_Odiv(T_a,V_a,V_b)
       <= c_Groups_Ozero__class_Ozero(T_a) != V_c ) ) ).

fof(fact_real__root__pos2,axiom,
    ! [V_x,V_n] :
      ( ( V_x = c_NthRoot_Oroot(V_n,hAPP(hAPP(c_Power_Opower__class_Opower(tc_RealDef_Oreal),V_x),V_n))
       <= c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),V_x) )
     <= c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_n) ) ).

fof(fact_divmod__int__rel__div__eq,axiom,
    ! [V_r_1,V_y,V_b_1,V_a_1] :
      ( V_a_1 = c_Groups_Oplus__class_Oplus(tc_Int_Oint,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_b_1),V_y),V_r_1)
     => ( ( ( ( c_Orderings_Oord__class_Oless(tc_Int_Oint,V_b_1,V_r_1)
              & c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,V_r_1,c_Groups_Ozero__class_Ozero(tc_Int_Oint)) )
           <= ~ c_Orderings_Oord__class_Oless(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_b_1) )
          & ( c_Orderings_Oord__class_Oless(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_b_1)
           => ( c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_r_1)
              & c_Orderings_Oord__class_Oless(tc_Int_Oint,V_r_1,V_b_1) ) ) )
       => ( c_Groups_Ozero__class_Ozero(tc_Int_Oint) != V_b_1
         => V_y = c_Divides_Odiv__class_Odiv(tc_Int_Oint,V_a_1,V_b_1) ) ) ) ).

fof(fact_ab__semigroup__add__class_Oadd__ac_I1_J,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( c_Groups_Oplus__class_Oplus(T_a,V_a,c_Groups_Oplus__class_Oplus(T_a,V_b,V_c)) = c_Groups_Oplus__class_Oplus(T_a,c_Groups_Oplus__class_Oplus(T_a,V_a,V_b),V_c)
     <= class_Groups_Oab__semigroup__add(T_a) ) ).

fof(arity_Polynomial__Opoly__Rings_Ono__zero__divisors,axiom,
    ! [T_1] :
      ( class_Rings_Oidom(T_1)
     => class_Rings_Ono__zero__divisors(tc_Polynomial_Opoly(T_1)) ) ).

fof(arity_RealDef__Oreal__Orderings_Oord,axiom,
    class_Orderings_Oord(tc_RealDef_Oreal) ).

fof(fact_Nat__Transfer_Otransfer__nat__int__function__closures_I4_J,axiom,
    ! [V_n,V_x] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),hAPP(hAPP(c_Power_Opower__class_Opower(tc_Int_Oint),V_x),V_n))
     <= c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_x) ) ).

fof(arity_Nat__Onat__Rings_Ocomm__semiring__1,axiom,
    class_Rings_Ocomm__semiring__1(tc_Nat_Onat) ).

fof(fact_natceiling__mono,axiom,
    ! [V_y,V_x] :
      ( c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,V_x,V_y)
     => c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,c_RComplete_Onatceiling(V_x),c_RComplete_Onatceiling(V_y)) ) ).

fof(fact_add__left__mono,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( class_Groups_Oordered__ab__semigroup__add(T_a)
     => ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Oplus__class_Oplus(T_a,V_c,V_a),c_Groups_Oplus__class_Oplus(T_a,V_c,V_b))
       <= c_Orderings_Oord__class_Oless__eq(T_a,V_a,V_b) ) ) ).

fof(fact_divide__left__mono__neg,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( class_Fields_Olinordered__field__inverse__zero(T_a)
     => ( c_Orderings_Oord__class_Oless__eq(T_a,V_a,V_b)
       => ( c_Orderings_Oord__class_Oless__eq(T_a,V_c,c_Groups_Ozero__class_Ozero(T_a))
         => ( c_Orderings_Oord__class_Oless__eq(T_a,c_Rings_Oinverse__class_Odivide(T_a,V_c,V_a),c_Rings_Oinverse__class_Odivide(T_a,V_c,V_b))
           <= c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b)) ) ) ) ) ).

fof(fact_crossproduct__eq,axiom,
    ! [V_za_2,V_x_2,V_y_2,V_w_2,T_a] :
      ( ( c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_w_2),V_za_2),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_x_2),V_y_2)) = c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_w_2),V_y_2),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_x_2),V_za_2))
      <=> ( V_za_2 = V_y_2
          | V_x_2 = V_w_2 ) )
     <= class_Semiring__Normalization_Ocomm__semiring__1__cancel__crossproduct(T_a) ) ).

fof(fact_zero__le__power,axiom,
    ! [V_n,V_a,T_a] :
      ( ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_a)
       => c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_n)) )
     <= class_Rings_Olinordered__semidom(T_a) ) ).

fof(fact_le__add__iff2,axiom,
    ! [V_db_2,V_b_2,V_ca_2,V_e_2,V_ab_2,T_a] :
      ( class_Rings_Oordered__ring(T_a)
     => ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_ab_2),V_e_2),V_ca_2),c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b_2),V_e_2),V_db_2))
      <=> c_Orderings_Oord__class_Oless__eq(T_a,V_ca_2,c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Groups_Ominus__class_Ominus(T_a,V_b_2,V_ab_2)),V_e_2),V_db_2)) ) ) ).

fof(fact_div__mod__equality2,axiom,
    ! [V_c,V_a,V_b,T_a] :
      ( c_Groups_Oplus__class_Oplus(T_a,V_a,V_c) = c_Groups_Oplus__class_Oplus(T_a,c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b),c_Divides_Odiv__class_Odiv(T_a,V_a,V_b)),c_Divides_Odiv__class_Omod(T_a,V_a,V_b)),V_c)
     <= class_Divides_Osemiring__div(T_a) ) ).

fof(fact_mult__left__mono,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( class_Rings_Oordered__semiring(T_a)
     => ( ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_c)
         => c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_c),V_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_c),V_b)) )
       <= c_Orderings_Oord__class_Oless__eq(T_a,V_a,V_b) ) ) ).

fof(arity_Complex__Ocomplex__RealVector_Oreal__normed__field,axiom,
    class_RealVector_Oreal__normed__field(tc_Complex_Ocomplex) ).

fof(fact_xt1_I12_J,axiom,
    ! [V_b,V_a,T_a] :
      ( class_Orderings_Oorder(T_a)
     => ( V_a != V_b
       => ( c_Orderings_Oord__class_Oless__eq(T_a,V_b,V_a)
         => c_Orderings_Oord__class_Oless(T_a,V_b,V_a) ) ) ) ).

fof(fact_mult__zero__right,axiom,
    ! [V_a,T_a] :
      ( class_Rings_Omult__zero(T_a)
     => hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),c_Groups_Ozero__class_Ozero(T_a)) = c_Groups_Ozero__class_Ozero(T_a) ) ).

fof(fact_order__less__imp__le,axiom,
    ! [V_y,V_x,T_a] :
      ( class_Orderings_Opreorder(T_a)
     => ( c_Orderings_Oord__class_Oless__eq(T_a,V_x,V_y)
       <= c_Orderings_Oord__class_Oless(T_a,V_x,V_y) ) ) ).

fof(arity_Int__Oint__Rings_Odvd,axiom,
    class_Rings_Odvd(tc_Int_Oint) ).

fof(fact_add__le__imp__le__right,axiom,
    ! [V_b,V_c,V_a,T_a] :
      ( class_Groups_Oordered__ab__semigroup__add__imp__le(T_a)
     => ( c_Orderings_Oord__class_Oless__eq(T_a,V_a,V_b)
       <= c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Oplus__class_Oplus(T_a,V_a,V_c),c_Groups_Oplus__class_Oplus(T_a,V_b,V_c)) ) ) ).

fof(fact_nat__neq__iff,axiom,
    ! [V_n_2,V_m_2] :
      ( ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_m_2,V_n_2)
        | c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_n_2,V_m_2) )
    <=> V_m_2 != V_n_2 ) ).

fof(fact_power__divide,axiom,
    ! [V_n,V_b,V_a,T_a] :
      ( class_Fields_Ofield__inverse__zero(T_a)
     => hAPP(hAPP(c_Power_Opower__class_Opower(T_a),c_Rings_Oinverse__class_Odivide(T_a,V_a,V_b)),V_n) = c_Rings_Oinverse__class_Odivide(T_a,hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_n),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_b),V_n)) ) ).

fof(fact_zero__le__natceiling,axiom,
    ! [V_x] : c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),c_RComplete_Onatceiling(V_x)) ).

fof(fact_less__not__refl,axiom,
    ! [V_n] : ~ c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_n,V_n) ).

fof(fact_divide__self,axiom,
    ! [V_a,T_a] :
      ( class_Rings_Odivision__ring(T_a)
     => ( c_Groups_Oone__class_Oone(T_a) = c_Rings_Oinverse__class_Odivide(T_a,V_a,V_a)
       <= c_Groups_Ozero__class_Ozero(T_a) != V_a ) ) ).

fof(fact_less__fun__def,axiom,
    ! [V_g_2,V_f_2,T_a,T_b] :
      ( ( c_Orderings_Oord__class_Oless(tc_fun(T_a,T_b),V_f_2,V_g_2)
      <=> ( c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,T_b),V_f_2,V_g_2)
          & ~ c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,T_b),V_g_2,V_f_2) ) )
     <= class_Orderings_Oord(T_b) ) ).

fof(fact_order__less__imp__not__eq2,axiom,
    ! [V_y,V_x,T_a] :
      ( class_Orderings_Oorder(T_a)
     => ( V_y != V_x
       <= c_Orderings_Oord__class_Oless(T_a,V_x,V_y) ) ) ).

fof(fact_mult__left_Opos__bounded,axiom,
    ! [V_y,T_a] :
      ( ? [B_K] :
          ( ! [B_x] : c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_RealVector_Onorm__class_Onorm(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),B_x),V_y)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_RealDef_Oreal),c_RealVector_Onorm__class_Onorm(T_a,B_x)),B_K))
          & c_Orderings_Oord__class_Oless(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),B_K) )
     <= class_RealVector_Oreal__normed__algebra(T_a) ) ).

fof(fact_pCons__eq__0__iff,axiom,
    ! [V_pa_2,V_ab_2,T_a] :
      ( class_Groups_Ozero(T_a)
     => ( ( V_pa_2 = c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a))
          & c_Groups_Ozero__class_Ozero(T_a) = V_ab_2 )
      <=> c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a)) = c_Polynomial_OpCons(T_a,V_ab_2,V_pa_2) ) ) ).

fof(fact_comm__semiring__1__class_Onormalizing__semiring__rules_I15_J,axiom,
    ! [V_ry,V_rx,V_ly,V_lx,T_a] :
      ( hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_lx),V_ly)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_rx),V_ry)) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_rx),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_lx),V_ly)),V_ry))
     <= class_Rings_Ocomm__semiring__1(T_a) ) ).

fof(fact_pos__zmult__eq__1__iff,axiom,
    ! [V_n_2,V_m_2] :
      ( ( ( c_Groups_Oone__class_Oone(tc_Int_Oint) = V_n_2
          & V_m_2 = c_Groups_Oone__class_Oone(tc_Int_Oint) )
      <=> c_Groups_Oone__class_Oone(tc_Int_Oint) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_m_2),V_n_2) )
     <= c_Orderings_Oord__class_Oless(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_m_2) ) ).

fof(fact_diff__eq__diff__less__eq,axiom,
    ! [V_db_2,V_ca_2,V_b_2,V_ab_2,T_a] :
      ( ( c_Groups_Ominus__class_Ominus(T_a,V_ca_2,V_db_2) = c_Groups_Ominus__class_Ominus(T_a,V_ab_2,V_b_2)
       => ( c_Orderings_Oord__class_Oless__eq(T_a,V_ca_2,V_db_2)
        <=> c_Orderings_Oord__class_Oless__eq(T_a,V_ab_2,V_b_2) ) )
     <= class_Groups_Oordered__ab__group__add(T_a) ) ).

fof(fact_dvd__power__same,axiom,
    ! [V_n,V_y,V_x,T_a] :
      ( ( c_Rings_Odvd__class_Odvd(T_a,hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_x),V_n),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_y),V_n))
       <= c_Rings_Odvd__class_Odvd(T_a,V_x,V_y) )
     <= class_Rings_Ocomm__semiring__1(T_a) ) ).

fof(fact_split__zmod,axiom,
    ! [V_k_2,V_n_2,V_P_2] :
      ( ( ( ! [B_i,B_j] :
              ( hBOOL(hAPP(V_P_2,B_j))
             <= ( c_Orderings_Oord__class_Oless(tc_Int_Oint,V_k_2,B_j)
                & c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,B_j,c_Groups_Ozero__class_Ozero(tc_Int_Oint))
                & V_n_2 = c_Groups_Oplus__class_Oplus(tc_Int_Oint,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_k_2),B_i),B_j) ) )
         <= c_Orderings_Oord__class_Oless(tc_Int_Oint,V_k_2,c_Groups_Ozero__class_Ozero(tc_Int_Oint)) )
        & ( ! [B_i,B_j] :
              ( ( c_Orderings_Oord__class_Oless(tc_Int_Oint,B_j,V_k_2)
                & c_Groups_Oplus__class_Oplus(tc_Int_Oint,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_k_2),B_i),B_j) = V_n_2
                & c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),B_j) )
             => hBOOL(hAPP(V_P_2,B_j)) )
         <= c_Orderings_Oord__class_Oless(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_k_2) )
        & ( hBOOL(hAPP(V_P_2,V_n_2))
         <= V_k_2 = c_Groups_Ozero__class_Ozero(tc_Int_Oint) ) )
    <=> hBOOL(hAPP(V_P_2,c_Divides_Odiv__class_Omod(tc_Int_Oint,V_n_2,V_k_2))) ) ).

fof(fact_neg__imp__zdiv__neg__iff,axiom,
    ! [V_ab_2,V_b_2] :
      ( c_Orderings_Oord__class_Oless(tc_Int_Oint,V_b_2,c_Groups_Ozero__class_Ozero(tc_Int_Oint))
     => ( c_Orderings_Oord__class_Oless(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_ab_2)
      <=> c_Orderings_Oord__class_Oless(tc_Int_Oint,c_Divides_Odiv__class_Odiv(tc_Int_Oint,V_ab_2,V_b_2),c_Groups_Ozero__class_Ozero(tc_Int_Oint)) ) ) ).

fof(fact_zdvd__mult__cancel1,axiom,
    ! [V_n_2,V_m_2] :
      ( ( c_Groups_Oabs__class_Oabs(tc_Int_Oint,V_n_2) = c_Groups_Oone__class_Oone(tc_Int_Oint)
      <=> c_Rings_Odvd__class_Odvd(tc_Int_Oint,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_m_2),V_n_2),V_m_2) )
     <= c_Groups_Ozero__class_Ozero(tc_Int_Oint) != V_m_2 ) ).

fof(fact_dvd_Oeq__refl,axiom,
    ! [V_y,V_x] :
      ( V_y = V_x
     => c_Rings_Odvd__class_Odvd(tc_Nat_Onat,V_x,V_y) ) ).

fof(fact_less__not__refl3,axiom,
    ! [V_t,V_s] :
      ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_s,V_t)
     => V_s != V_t ) ).

fof(fact_nat__mult__div__cancel1,axiom,
    ! [V_n,V_m,V_k] :
      ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_k)
     => c_Divides_Odiv__class_Odiv(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_k),V_m),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_k),V_n)) = c_Divides_Odiv__class_Odiv(tc_Nat_Onat,V_m,V_n) ) ).

fof(arity_Nat__Onat__Semiring__Normalization_Ocomm__semiring__1__cancel__crossproduct,axiom,
    class_Semiring__Normalization_Ocomm__semiring__1__cancel__crossproduct(tc_Nat_Onat) ).

fof(fact_mult__le__cancel__left__neg,axiom,
    ! [V_b_2,V_ab_2,V_ca_2,T_a] :
      ( ( ( c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_ca_2),V_ab_2),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_ca_2),V_b_2))
        <=> c_Orderings_Oord__class_Oless__eq(T_a,V_b_2,V_ab_2) )
       <= c_Orderings_Oord__class_Oless(T_a,V_ca_2,c_Groups_Ozero__class_Ozero(T_a)) )
     <= class_Rings_Olinordered__ring__strict(T_a) ) ).

fof(fact_th0,axiom,
    c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Oplus__class_Oplus(tc_RealDef_Oreal,c_Groups_Oabs__class_Oabs(tc_RealDef_Oreal,v_da____),c_RealVector_Onorm__class_Onorm(tc_Complex_Ocomplex,v_aa____)),c_RealVector_Onorm__class_Onorm(tc_Complex_Ocomplex,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Complex_Ocomplex),v_z____),v_c____))) ).

fof(fact_abs__div__pos,axiom,
    ! [V_x,V_y,T_a] :
      ( class_Fields_Olinordered__field__inverse__zero(T_a)
     => ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_y)
       => c_Groups_Oabs__class_Oabs(T_a,c_Rings_Oinverse__class_Odivide(T_a,V_x,V_y)) = c_Rings_Oinverse__class_Odivide(T_a,c_Groups_Oabs__class_Oabs(T_a,V_x),V_y) ) ) ).

fof(fact_nat__less__le,axiom,
    ! [V_n_2,V_m_2] :
      ( ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m_2,V_n_2)
        & V_m_2 != V_n_2 )
    <=> c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_m_2,V_n_2) ) ).

fof(fact_Nat__Transfer_Otransfer__nat__int__function__closures_I5_J,axiom,
    c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),c_Groups_Ozero__class_Ozero(tc_Int_Oint)) ).

fof(fact_nat__add__commute,axiom,
    ! [V_n,V_m] : c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_n,V_m) = c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_m,V_n) ).

fof(fact_zero__le__one,axiom,
    ! [T_a] :
      ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),c_Groups_Oone__class_Oone(T_a))
     <= class_Rings_Olinordered__semidom(T_a) ) ).

fof(fact_xt1_I7_J,axiom,
    ! [V_z,V_x,V_y,T_a] :
      ( ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_z,V_y)
         => c_Orderings_Oord__class_Oless(T_a,V_z,V_x) )
       <= c_Orderings_Oord__class_Oless(T_a,V_y,V_x) )
     <= class_Orderings_Oorder(T_a) ) ).

fof(arity_Complex__Ocomplex__Groups_Ocancel__ab__semigroup__add,axiom,
    class_Groups_Ocancel__ab__semigroup__add(tc_Complex_Ocomplex) ).

fof(fact_order__neq__le__trans,axiom,
    ! [V_b,V_a,T_a] :
      ( ( ( c_Orderings_Oord__class_Oless(T_a,V_a,V_b)
         <= c_Orderings_Oord__class_Oless__eq(T_a,V_a,V_b) )
       <= V_b != V_a )
     <= class_Orderings_Oorder(T_a) ) ).

fof(arity_Int__Oint__Orderings_Olinorder,axiom,
    class_Orderings_Olinorder(tc_Int_Oint) ).

fof(fact_mult__cancel1,axiom,
    ! [V_n_2,V_m_2,V_k_2] :
      ( hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_k_2),V_m_2) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_k_2),V_n_2)
    <=> ( c_Groups_Ozero__class_Ozero(tc_Nat_Onat) = V_k_2
        | V_m_2 = V_n_2 ) ) ).

fof(fact_zero__less__power,axiom,
    ! [V_n,V_a,T_a] :
      ( class_Rings_Olinordered__semidom(T_a)
     => ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_a)
       => c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_n)) ) ) ).

fof(fact_real__of__nat__ge__zero,axiom,
    ! [V_n] : c_Orderings_Oord__class_Oless__eq(tc_RealDef_Oreal,c_Groups_Ozero__class_Ozero(tc_RealDef_Oreal),c_RealDef_Oreal(tc_Nat_Onat,V_n)) ).

