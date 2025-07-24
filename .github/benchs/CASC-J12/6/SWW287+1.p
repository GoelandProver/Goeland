fof(fact_monom__eq__0,axiom,
    ! [V_n,T_a] :
      ( class_Groups_Ozero(T_a)
     => c_Polynomial_Omonom(T_a,c_Groups_Ozero__class_Ozero(T_a),V_n) = c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a)) ) ).

fof(fact_mult__left__le__one__le,axiom,
    ! [V_y,V_x,T_a] :
      ( ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_x)
       => ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_y)
         => ( c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_y),V_x),V_x)
           <= c_Orderings_Oord__class_Oless__eq(T_a,V_y,c_Groups_Oone__class_Oone(T_a)) ) ) )
     <= class_Rings_Olinordered__idom(T_a) ) ).

fof(fact_less__zeroE,axiom,
    ! [V_n] : ~ c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_n,c_Groups_Ozero__class_Ozero(tc_Nat_Onat)) ).

fof(fact_divide__1,axiom,
    ! [V_a,T_a] :
      ( V_a = c_Rings_Oinverse__class_Odivide(T_a,V_a,c_Groups_Oone__class_Oone(T_a))
     <= class_Rings_Odivision__ring(T_a) ) ).

fof(fact_ab__semigroup__mult__class_Omult__ac_I1_J,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b)),V_c) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b),V_c))
     <= class_Groups_Oab__semigroup__mult(T_a) ) ).

fof(arity_Polynomial__Opoly__Rings_Ocomm__semiring,axiom,
    ! [T_1] :
      ( class_Rings_Ocomm__semiring(tc_Polynomial_Opoly(T_1))
     <= class_Rings_Ocomm__semiring__0(T_1) ) ).

fof(fact_mult__dvd__mono,axiom,
    ! [V_d,V_c,V_b,V_a,T_a] :
      ( class_Rings_Ocomm__semiring__1(T_a)
     => ( ( hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(T_a),V_c),V_d))
         => hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_c)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b),V_d))) )
       <= hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(T_a),V_a),V_b)) ) ) ).

fof(fact_mod__self,axiom,
    ! [V_a,T_a] :
      ( class_Divides_Osemiring__div(T_a)
     => c_Groups_Ozero__class_Ozero(T_a) = c_Divides_Odiv__class_Omod(T_a,V_a,V_a) ) ).

fof(fact_minus__monom,axiom,
    ! [V_n,V_a,T_a] :
      ( c_Groups_Ouminus__class_Ouminus(tc_Polynomial_Opoly(T_a),c_Polynomial_Omonom(T_a,V_a,V_n)) = c_Polynomial_Omonom(T_a,c_Groups_Ouminus__class_Ouminus(T_a,V_a),V_n)
     <= class_Groups_Oab__group__add(T_a) ) ).

fof(fact_zdvd__mono,axiom,
    ! [V_t_2,V_m_2,V_k_2] :
      ( ( hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Int_Oint),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_k_2),V_m_2)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_k_2),V_t_2)))
      <=> hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Int_Oint),V_m_2),V_t_2)) )
     <= c_Groups_Ozero__class_Ozero(tc_Int_Oint) != V_k_2 ) ).

fof(fact_nat__add__left__commute,axiom,
    ! [V_z,V_y,V_x] : c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_y,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_x,V_z)) = c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_x,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_y,V_z)) ).

fof(fact_zdiv__mono2__neg__lemma,axiom,
    ! [V_r_H,V_q_H,V_b_H,V_r,V_q,V_b] :
      ( c_Groups_Oplus__class_Oplus(tc_Int_Oint,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_b_H),V_q_H),V_r_H) = c_Groups_Oplus__class_Oplus(tc_Int_Oint,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_b),V_q),V_r)
     => ( ( ( c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_r_H)
           => ( ( c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,V_b_H,V_b)
               => c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,V_q_H,V_q) )
             <= c_Orderings_Oord__class_Oless(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_b_H) ) )
         <= c_Orderings_Oord__class_Oless(tc_Int_Oint,V_r,V_b) )
       <= c_Orderings_Oord__class_Oless(tc_Int_Oint,c_Groups_Oplus__class_Oplus(tc_Int_Oint,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_b_H),V_q_H),V_r_H),c_Groups_Ozero__class_Ozero(tc_Int_Oint)) ) ) ).

fof(fact_less__eq__nat_Osimps_I1_J,axiom,
    ! [V_n] : c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_n) ).

fof(arity_Complex__Ocomplex__Rings_Oring__1__no__zero__divisors,axiom,
    class_Rings_Oring__1__no__zero__divisors(tc_Complex_Ocomplex) ).

fof(fact_realpow__two__disj,axiom,
    ! [V_y_2,V_x_2,T_a] :
      ( class_Rings_Oidom(T_a)
     => ( ( V_y_2 = V_x_2
          | V_x_2 = c_Groups_Ouminus__class_Ouminus(T_a,V_y_2) )
      <=> hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_y_2),c_Nat_OSuc(c_Nat_OSuc(c_Groups_Ozero__class_Ozero(tc_Nat_Onat)))) = hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_x_2),c_Nat_OSuc(c_Nat_OSuc(c_Groups_Ozero__class_Ozero(tc_Nat_Onat)))) ) ) ).

fof(fact_le__Suc__eq,axiom,
    ! [V_na_2,V_m_2] :
      ( ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m_2,V_na_2)
        | V_m_2 = c_Nat_OSuc(V_na_2) )
    <=> c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m_2,c_Nat_OSuc(V_na_2)) ) ).

fof(fact_add__le__mono1,axiom,
    ! [V_k,V_j,V_i] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_i,V_k),c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_j,V_k))
     <= c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_i,V_j) ) ).

fof(fact_mult__strict__left__mono__neg,axiom,
    ! [V_c,V_a,V_b,T_a] :
      ( ( ( c_Orderings_Oord__class_Oless(T_a,V_c,c_Groups_Ozero__class_Ozero(T_a))
         => c_Orderings_Oord__class_Oless(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_c),V_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_c),V_b)) )
       <= c_Orderings_Oord__class_Oless(T_a,V_b,V_a) )
     <= class_Rings_Olinordered__ring__strict(T_a) ) ).

fof(arity_Nat__Onat__Groups_Oordered__ab__semigroup__add,axiom,
    class_Groups_Oordered__ab__semigroup__add(tc_Nat_Onat) ).

fof(fact_xt1_I4_J,axiom,
    ! [V_c,V_a,V_b,T_a] :
      ( class_Orderings_Oorder(T_a)
     => ( ( V_c = V_b
         => c_Orderings_Oord__class_Oless__eq(T_a,V_c,V_a) )
       <= c_Orderings_Oord__class_Oless__eq(T_a,V_b,V_a) ) ) ).

fof(fact_Suc__mult__cancel1,axiom,
    ! [V_na_2,V_m_2,V_k_2] :
      ( V_m_2 = V_na_2
    <=> hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),c_Nat_OSuc(V_k_2)),V_m_2) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),c_Nat_OSuc(V_k_2)),V_na_2) ) ).

fof(fact_diff__cancel2,axiom,
    ! [V_n,V_k,V_m] : c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_m,V_n) = c_Groups_Ominus__class_Ominus(tc_Nat_Onat,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_m,V_k),c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_n,V_k)) ).

fof(fact_pdivmod__rel__0,axiom,
    ! [V_y,T_a] :
      ( c_Polynomial_Opdivmod__rel(T_a,c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a)),V_y,c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a)),c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a)))
     <= class_Fields_Ofield(T_a) ) ).

fof(fact_less__SucE,axiom,
    ! [V_n,V_m] :
      ( ( ~ c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_m,V_n)
       => V_m = V_n )
     <= c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_m,c_Nat_OSuc(V_n)) ) ).

fof(arity_Nat__Onat__Groups_Omonoid__add,axiom,
    class_Groups_Omonoid__add(tc_Nat_Onat) ).

fof(fact_add__less__le__mono,axiom,
    ! [V_d,V_c,V_b,V_a,T_a] :
      ( ( c_Orderings_Oord__class_Oless(T_a,V_a,V_b)
       => ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Oplus__class_Oplus(T_a,V_a,V_c),c_Groups_Oplus__class_Oplus(T_a,V_b,V_d))
         <= c_Orderings_Oord__class_Oless__eq(T_a,V_c,V_d) ) )
     <= class_Groups_Oordered__cancel__ab__semigroup__add(T_a) ) ).

fof(fact_le__Suc__ex__iff,axiom,
    ! [V_l_2,V_k_2] :
      ( ? [B_n] : V_l_2 = c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_k_2,B_n)
    <=> c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_k_2,V_l_2) ) ).

fof(fact_diff__less__Suc,axiom,
    ! [V_n,V_m] : c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_m,V_n),c_Nat_OSuc(V_m)) ).

fof(arity_Polynomial__Opoly__Groups_Oordered__ab__semigroup__add__imp__le,axiom,
    ! [T_1] :
      ( class_Groups_Oordered__ab__semigroup__add__imp__le(tc_Polynomial_Opoly(T_1))
     <= class_Rings_Olinordered__idom(T_1) ) ).

fof(fact_smult__add__left,axiom,
    ! [V_p,V_b,V_a,T_a] :
      ( class_Rings_Ocomm__semiring__0(T_a)
     => c_Polynomial_Osmult(T_a,c_Groups_Oplus__class_Oplus(T_a,V_a,V_b),V_p) = c_Groups_Oplus__class_Oplus(tc_Polynomial_Opoly(T_a),c_Polynomial_Osmult(T_a,V_a,V_p),c_Polynomial_Osmult(T_a,V_b,V_p)) ) ).

fof(fact_right__minus,axiom,
    ! [V_a,T_a] :
      ( class_Groups_Ogroup__add(T_a)
     => c_Groups_Ozero__class_Ozero(T_a) = c_Groups_Oplus__class_Oplus(T_a,V_a,c_Groups_Ouminus__class_Ouminus(T_a,V_a)) ) ).

fof(fact_comm__ring__1__class_Onormalizing__ring__rules_I1_J,axiom,
    ! [V_x,T_a] :
      ( hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Groups_Ouminus__class_Ouminus(T_a,c_Groups_Oone__class_Oone(T_a))),V_x) = c_Groups_Ouminus__class_Ouminus(T_a,V_x)
     <= class_Rings_Ocomm__ring__1(T_a) ) ).

fof(arity_Polynomial__Opoly__Groups_Oordered__cancel__ab__semigroup__add,axiom,
    ! [T_1] :
      ( class_Rings_Olinordered__idom(T_1)
     => class_Groups_Oordered__cancel__ab__semigroup__add(tc_Polynomial_Opoly(T_1)) ) ).

fof(fact_convex__bound__le,axiom,
    ! [V_v,V_u,V_y,V_a,V_x,T_a] :
      ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_x,V_a)
       => ( c_Orderings_Oord__class_Oless__eq(T_a,V_y,V_a)
         => ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_u)
           => ( ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_u),V_x),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_v),V_y)),V_a)
               <= c_Groups_Oplus__class_Oplus(T_a,V_u,V_v) = c_Groups_Oone__class_Oone(T_a) )
             <= c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_v) ) ) ) )
     <= class_Rings_Olinordered__semiring__1(T_a) ) ).

fof(fact_le__refl,axiom,
    ! [V_n] : c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_n,V_n) ).

fof(arity_Polynomial__Opoly__Rings_Oring__1__no__zero__divisors,axiom,
    ! [T_1] :
      ( class_Rings_Oidom(T_1)
     => class_Rings_Oring__1__no__zero__divisors(tc_Polynomial_Opoly(T_1)) ) ).

fof(fact_mult__less__cancel1,axiom,
    ! [V_na_2,V_m_2,V_k_2] :
      ( ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_k_2)
        & c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_m_2,V_na_2) )
    <=> c_Orderings_Oord__class_Oless(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_k_2),V_m_2),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_k_2),V_na_2)) ) ).

fof(fact_zdvd__period,axiom,
    ! [V_c_2,V_t_2,V_x_2,V_d_2,V_a_2] :
      ( hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Int_Oint),V_a_2),V_d_2))
     => ( hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Int_Oint),V_a_2),c_Groups_Oplus__class_Oplus(tc_Int_Oint,V_x_2,V_t_2)))
      <=> hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Int_Oint),V_a_2),c_Groups_Oplus__class_Oplus(tc_Int_Oint,c_Groups_Oplus__class_Oplus(tc_Int_Oint,V_x_2,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_c_2),V_d_2)),V_t_2))) ) ) ).

fof(fact_dvd__mult__right,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( ( hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(T_a),V_b),V_c))
       <= hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b)),V_c)) )
     <= class_Rings_Ocomm__semiring__1(T_a) ) ).

fof(arity_Nat__Onat__Rings_Osemiring,axiom,
    class_Rings_Osemiring(tc_Nat_Onat) ).

fof(fact_dvd__refl,axiom,
    ! [V_a,T_a] :
      ( hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(T_a),V_a),V_a))
     <= class_Rings_Ocomm__semiring__1(T_a) ) ).

fof(fact_le__imp__neg__le,axiom,
    ! [V_b,V_a,T_a] :
      ( ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ouminus__class_Ouminus(T_a,V_b),c_Groups_Ouminus__class_Ouminus(T_a,V_a))
       <= c_Orderings_Oord__class_Oless__eq(T_a,V_a,V_b) )
     <= class_Groups_Oordered__ab__group__add(T_a) ) ).

fof(fact_pcompose__0,axiom,
    ! [V_q,T_a] :
      ( class_Rings_Ocomm__semiring__0(T_a)
     => c_Polynomial_Opcompose(T_a,c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a)),V_q) = c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a)) ) ).

fof(fact_less__1__mult,axiom,
    ! [V_n,V_m,T_a] :
      ( ( ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Oone__class_Oone(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_m),V_n))
         <= c_Orderings_Oord__class_Oless(T_a,c_Groups_Oone__class_Oone(T_a),V_n) )
       <= c_Orderings_Oord__class_Oless(T_a,c_Groups_Oone__class_Oone(T_a),V_m) )
     <= class_Rings_Olinordered__semidom(T_a) ) ).

fof(arity_Polynomial__Opoly__Groups_Oab__semigroup__mult,axiom,
    ! [T_1] :
      ( class_Rings_Ocomm__semiring__0(T_1)
     => class_Groups_Oab__semigroup__mult(tc_Polynomial_Opoly(T_1)) ) ).

fof(fact_times_Oidem,axiom,
    ! [V_a,T_a] :
      ( hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_a) = V_a
     <= class_Lattices_Oab__semigroup__idem__mult(T_a) ) ).

fof(fact_divide__strict__right__mono,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( ( ( c_Orderings_Oord__class_Oless(T_a,c_Rings_Oinverse__class_Odivide(T_a,V_a,V_c),c_Rings_Oinverse__class_Odivide(T_a,V_b,V_c))
         <= c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_c) )
       <= c_Orderings_Oord__class_Oless(T_a,V_a,V_b) )
     <= class_Fields_Olinordered__field(T_a) ) ).

fof(arity_Polynomial__Opoly__Rings_Ozero__neq__one,axiom,
    ! [T_1] :
      ( class_Rings_Ocomm__semiring__1(T_1)
     => class_Rings_Ozero__neq__one(tc_Polynomial_Opoly(T_1)) ) ).

fof(fact_one__dvd,axiom,
    ! [V_a,T_a] :
      ( hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(T_a),c_Groups_Oone__class_Oone(T_a)),V_a))
     <= class_Rings_Ocomm__semiring__1(T_a) ) ).

fof(fact_left__minus,axiom,
    ! [V_a,T_a] :
      ( class_Groups_Ogroup__add(T_a)
     => c_Groups_Ozero__class_Ozero(T_a) = c_Groups_Oplus__class_Oplus(T_a,c_Groups_Ouminus__class_Ouminus(T_a,V_a),V_a) ) ).

fof(fact_le__imp__less__Suc,axiom,
    ! [V_n,V_m] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m,V_n)
     => c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_m,c_Nat_OSuc(V_n)) ) ).

fof(fact_power__increasing__iff,axiom,
    ! [V_y_2,V_x_2,V_b_2,T_a] :
      ( class_Rings_Olinordered__semidom(T_a)
     => ( ( c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_b_2),V_x_2),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_b_2),V_y_2))
        <=> c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_x_2,V_y_2) )
       <= c_Orderings_Oord__class_Oless(T_a,c_Groups_Oone__class_Oone(T_a),V_b_2) ) ) ).

fof(fact_one__le__power,axiom,
    ! [V_n,V_a,T_a] :
      ( class_Rings_Olinordered__semidom(T_a)
     => ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Oone__class_Oone(T_a),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_n))
       <= c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Oone__class_Oone(T_a),V_a) ) ) ).

fof(fact_Nat__Transfer_Otransfer__nat__int__function__closures_I4_J,axiom,
    ! [V_n,V_x] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_x)
     => c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),hAPP(hAPP(c_Power_Opower__class_Opower(tc_Int_Oint),V_x),V_n)) ) ).

fof(arity_Polynomial__Opoly__Rings_Oordered__semiring,axiom,
    ! [T_1] :
      ( class_Rings_Oordered__semiring(tc_Polynomial_Opoly(T_1))
     <= class_Rings_Olinordered__idom(T_1) ) ).

fof(fact_add__less__cancel__left,axiom,
    ! [V_b_2,V_a_2,V_c_2,T_a] :
      ( class_Groups_Oordered__ab__semigroup__add__imp__le(T_a)
     => ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Oplus__class_Oplus(T_a,V_c_2,V_a_2),c_Groups_Oplus__class_Oplus(T_a,V_c_2,V_b_2))
      <=> c_Orderings_Oord__class_Oless(T_a,V_a_2,V_b_2) ) ) ).

fof(fact_mult_Odiff__right,axiom,
    ! [V_b_H,V_b,V_a,T_a] :
      ( c_Groups_Ominus__class_Ominus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b_H)) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),c_Groups_Ominus__class_Ominus(T_a,V_b,V_b_H))
     <= class_RealVector_Oreal__normed__algebra(T_a) ) ).

fof(fact_add__0__left,axiom,
    ! [V_a,T_a] :
      ( class_Groups_Omonoid__add(T_a)
     => V_a = c_Groups_Oplus__class_Oplus(T_a,c_Groups_Ozero__class_Ozero(T_a),V_a) ) ).

fof(fact_not__sum__squares__lt__zero,axiom,
    ! [V_y,V_x,T_a] :
      ( class_Rings_Olinordered__ring(T_a)
     => ~ c_Orderings_Oord__class_Oless(T_a,c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_x),V_x),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_y),V_y)),c_Groups_Ozero__class_Ozero(T_a)) ) ).

fof(fact_add__eq__if,axiom,
    ! [V_n,V_m] :
      ( ( V_n = c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_m,V_n)
       <= V_m = c_Groups_Ozero__class_Ozero(tc_Nat_Onat) )
      & ( V_m != c_Groups_Ozero__class_Ozero(tc_Nat_Onat)
       => c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_m,V_n) = c_Nat_OSuc(c_Groups_Oplus__class_Oplus(tc_Nat_Onat,c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_m,c_Groups_Oone__class_Oone(tc_Nat_Onat)),V_n)) ) ) ).

fof(arity_Complex__Ocomplex__Rings_Ono__zero__divisors,axiom,
    class_Rings_Ono__zero__divisors(tc_Complex_Ocomplex) ).

fof(arity_Complex__Ocomplex__RealVector_Oreal__field,axiom,
    class_RealVector_Oreal__field(tc_Complex_Ocomplex) ).

fof(fact_offset__poly__eq__0__lemma,axiom,
    ! [V_a,V_p,V_c,T_a] :
      ( class_Rings_Ocomm__semiring__0(T_a)
     => ( c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a)) = V_p
       <= c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a)) = c_Groups_Oplus__class_Oplus(tc_Polynomial_Opoly(T_a),c_Polynomial_Osmult(T_a,V_c,V_p),c_Polynomial_OpCons(T_a,V_a,V_p)) ) ) ).

fof(arity_Int__Oint__Groups_Ominus,axiom,
    class_Groups_Ominus(tc_Int_Oint) ).

fof(fact_uminus__apply,axiom,
    ! [V_x_2,V_A_2,T_b,T_a] :
      ( class_Groups_Ouminus(T_a)
     => hAPP(c_Groups_Ouminus__class_Ouminus(tc_fun(T_b,T_a),V_A_2),V_x_2) = c_Groups_Ouminus__class_Ouminus(T_a,hAPP(V_A_2,V_x_2)) ) ).

fof(fact_minus__nat_Odiff__0,axiom,
    ! [V_m] : V_m = c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_m,c_Groups_Ozero__class_Ozero(tc_Nat_Onat)) ).

fof(fact_nat__mult__le__cancel1,axiom,
    ! [V_na_2,V_m_2,V_k_2] :
      ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_k_2)
     => ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m_2,V_na_2)
      <=> c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_k_2),V_m_2),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_k_2),V_na_2)) ) ) ).

fof(fact_le__add1,axiom,
    ! [V_m,V_n] : c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_n,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_n,V_m)) ).

fof(fact_less__iff__diff__less__0,axiom,
    ! [V_b_2,V_a_2,T_a] :
      ( ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Ominus__class_Ominus(T_a,V_a_2,V_b_2),c_Groups_Ozero__class_Ozero(T_a))
      <=> c_Orderings_Oord__class_Oless(T_a,V_a_2,V_b_2) )
     <= class_Groups_Oordered__ab__group__add(T_a) ) ).

fof(arity_Polynomial__Opoly__Groups_Ominus,axiom,
    ! [T_1] :
      ( class_Groups_Ominus(tc_Polynomial_Opoly(T_1))
     <= class_Groups_Oab__group__add(T_1) ) ).

fof(fact_neg__0__less__iff__less,axiom,
    ! [V_a_2,T_a] :
      ( class_Groups_Oordered__ab__group__add(T_a)
     => ( c_Orderings_Oord__class_Oless(T_a,V_a_2,c_Groups_Ozero__class_Ozero(T_a))
      <=> c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),c_Groups_Ouminus__class_Ouminus(T_a,V_a_2)) ) ) ).

fof(fact_nat_Osimps_I3_J,axiom,
    ! [V_nat_H_1] : c_Nat_OSuc(V_nat_H_1) != c_Groups_Ozero__class_Ozero(tc_Nat_Onat) ).

fof(fact_dvd__trans,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( class_Rings_Ocomm__semiring__1(T_a)
     => ( ( hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(T_a),V_a),V_c))
         <= hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(T_a),V_b),V_c)) )
       <= hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(T_a),V_a),V_b)) ) ) ).

fof(fact_dvd_Ole__imp__less__or__eq,axiom,
    ! [V_y,V_x] :
      ( hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Nat_Onat),V_x),V_y))
     => ( V_x = V_y
        | ( ~ hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Nat_Onat),V_y),V_x))
          & hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Nat_Onat),V_x),V_y)) ) ) ) ).

fof(fact_monom__Suc,axiom,
    ! [V_n,V_a,T_a] :
      ( c_Polynomial_OpCons(T_a,c_Groups_Ozero__class_Ozero(T_a),c_Polynomial_Omonom(T_a,V_a,V_n)) = c_Polynomial_Omonom(T_a,V_a,c_Nat_OSuc(V_n))
     <= class_Groups_Ozero(T_a) ) ).

fof(fact_Suc__mult__less__cancel1,axiom,
    ! [V_na_2,V_m_2,V_k_2] :
      ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_m_2,V_na_2)
    <=> c_Orderings_Oord__class_Oless(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),c_Nat_OSuc(V_k_2)),V_m_2),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),c_Nat_OSuc(V_k_2)),V_na_2)) ) ).

fof(fact_power__less__power__Suc,axiom,
    ! [V_n,V_a,T_a] :
      ( class_Rings_Olinordered__semidom(T_a)
     => ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Oone__class_Oone(T_a),V_a)
       => c_Orderings_Oord__class_Oless(T_a,hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_n),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_n))) ) ) ).

fof(fact_neg__0__equal__iff__equal,axiom,
    ! [V_a_2,T_a] :
      ( ( c_Groups_Ouminus__class_Ouminus(T_a,V_a_2) = c_Groups_Ozero__class_Ozero(T_a)
      <=> c_Groups_Ozero__class_Ozero(T_a) = V_a_2 )
     <= class_Groups_Ogroup__add(T_a) ) ).

fof(fact_mult__left__mono,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( ( ( c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_c),V_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_c),V_b))
         <= c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_c) )
       <= c_Orderings_Oord__class_Oless__eq(T_a,V_a,V_b) )
     <= class_Rings_Oordered__semiring(T_a) ) ).

fof(fact_add1__zle__eq,axiom,
    ! [V_z_2,V_w_2] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Oplus__class_Oplus(tc_Int_Oint,V_w_2,c_Groups_Oone__class_Oone(tc_Int_Oint)),V_z_2)
    <=> c_Orderings_Oord__class_Oless(tc_Int_Oint,V_w_2,V_z_2) ) ).

fof(fact_less__half__sum,axiom,
    ! [V_b,V_a,T_a] :
      ( ( c_Orderings_Oord__class_Oless(T_a,V_a,c_Rings_Oinverse__class_Odivide(T_a,c_Groups_Oplus__class_Oplus(T_a,V_a,V_b),c_Groups_Oplus__class_Oplus(T_a,c_Groups_Oone__class_Oone(T_a),c_Groups_Oone__class_Oone(T_a))))
       <= c_Orderings_Oord__class_Oless(T_a,V_a,V_b) )
     <= class_Fields_Olinordered__field(T_a) ) ).

fof(arity_Nat__Onat__Rings_Oordered__cancel__semiring,axiom,
    class_Rings_Oordered__cancel__semiring(tc_Nat_Onat) ).

fof(fact_add__0,axiom,
    ! [V_a,T_a] :
      ( class_Groups_Ocomm__monoid__add(T_a)
     => V_a = c_Groups_Oplus__class_Oplus(T_a,c_Groups_Ozero__class_Ozero(T_a),V_a) ) ).

fof(fact_zero__less__double__add__iff__zero__less__single__add,axiom,
    ! [V_a_2,T_a] :
      ( ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_a_2)
      <=> c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),c_Groups_Oplus__class_Oplus(T_a,V_a_2,V_a_2)) )
     <= class_Groups_Olinordered__ab__group__add(T_a) ) ).

fof(fact_dvd_Oless__imp__not__eq2,axiom,
    ! [V_y,V_x] :
      ( ( hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Nat_Onat),V_x),V_y))
        & ~ hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Nat_Onat),V_y),V_x)) )
     => V_x != V_y ) ).

fof(fact_mult__neg__neg,axiom,
    ! [V_b,V_a,T_a] :
      ( class_Rings_Olinordered__ring__strict(T_a)
     => ( ( c_Orderings_Oord__class_Oless(T_a,V_b,c_Groups_Ozero__class_Ozero(T_a))
         => c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b)) )
       <= c_Orderings_Oord__class_Oless(T_a,V_a,c_Groups_Ozero__class_Ozero(T_a)) ) ) ).

fof(fact_diff__Suc__diff__eq1,axiom,
    ! [V_m,V_j,V_k] :
      ( c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_m,c_Nat_OSuc(c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_j,V_k))) = c_Groups_Ominus__class_Ominus(tc_Nat_Onat,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_m,V_k),c_Nat_OSuc(V_j))
     <= c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_k,V_j) ) ).

fof(fact_less__minus__iff,axiom,
    ! [V_b_2,V_a_2,T_a] :
      ( class_Groups_Oordered__ab__group__add(T_a)
     => ( c_Orderings_Oord__class_Oless(T_a,V_b_2,c_Groups_Ouminus__class_Ouminus(T_a,V_a_2))
      <=> c_Orderings_Oord__class_Oless(T_a,V_a_2,c_Groups_Ouminus__class_Ouminus(T_a,V_b_2)) ) ) ).

fof(fact_dvd__smult__iff,axiom,
    ! [V_qa_2,V_pa_2,V_a_2,T_a] :
      ( ( ( hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Polynomial_Opoly(T_a)),V_pa_2),c_Polynomial_Osmult(T_a,V_a_2,V_qa_2)))
        <=> hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Polynomial_Opoly(T_a)),V_pa_2),V_qa_2)) )
       <= V_a_2 != c_Groups_Ozero__class_Ozero(T_a) )
     <= class_Fields_Ofield(T_a) ) ).

fof(fact_comm__mult__strict__left__mono,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( class_Rings_Olinordered__comm__semiring__strict(T_a)
     => ( ( c_Orderings_Oord__class_Oless(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_c),V_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_c),V_b))
         <= c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_c) )
       <= c_Orderings_Oord__class_Oless(T_a,V_a,V_b) ) ) ).

fof(fact_xt1_I10_J,axiom,
    ! [V_z,V_x,V_y,T_a] :
      ( class_Orderings_Oorder(T_a)
     => ( c_Orderings_Oord__class_Oless(T_a,V_y,V_x)
       => ( c_Orderings_Oord__class_Oless(T_a,V_z,V_y)
         => c_Orderings_Oord__class_Oless(T_a,V_z,V_x) ) ) ) ).

fof(fact_degree__linear__power,axiom,
    ! [V_n,V_a,T_a] :
      ( V_n = c_Polynomial_Odegree(T_a,hAPP(hAPP(c_Power_Opower__class_Opower(tc_Polynomial_Opoly(T_a)),c_Polynomial_OpCons(T_a,V_a,c_Polynomial_OpCons(T_a,c_Groups_Oone__class_Oone(T_a),c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a))))),V_n))
     <= class_Rings_Ocomm__semiring__1(T_a) ) ).

fof(fact_synthetic__div__eq__0__iff,axiom,
    ! [V_c_2,V_pa_2,T_a] :
      ( ( c_Polynomial_Odegree(T_a,V_pa_2) = c_Groups_Ozero__class_Ozero(tc_Nat_Onat)
      <=> c_Polynomial_Osynthetic__div(T_a,V_pa_2,V_c_2) = c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a)) )
     <= class_Rings_Ocomm__semiring__0(T_a) ) ).

fof(fact_degree__add__less,axiom,
    ! [V_q,V_n,V_p,T_a] :
      ( class_Groups_Ocomm__monoid__add(T_a)
     => ( ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Polynomial_Odegree(T_a,c_Groups_Oplus__class_Oplus(tc_Polynomial_Opoly(T_a),V_p,V_q)),V_n)
         <= c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Polynomial_Odegree(T_a,V_q),V_n) )
       <= c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Polynomial_Odegree(T_a,V_p),V_n) ) ) ).

fof(arity_Polynomial__Opoly__Groups_Ogroup__add,axiom,
    ! [T_1] :
      ( class_Groups_Ogroup__add(tc_Polynomial_Opoly(T_1))
     <= class_Groups_Oab__group__add(T_1) ) ).

fof(fact_divide__zero__left,axiom,
    ! [V_a,T_a] :
      ( class_Rings_Odivision__ring(T_a)
     => c_Rings_Oinverse__class_Odivide(T_a,c_Groups_Ozero__class_Ozero(T_a),V_a) = c_Groups_Ozero__class_Ozero(T_a) ) ).

fof(fact_ord__le__eq__trans,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_a,V_b)
       => ( V_b = V_c
         => c_Orderings_Oord__class_Oless__eq(T_a,V_a,V_c) ) )
     <= class_Orderings_Oord(T_a) ) ).

fof(fact_inf__period_I4_J,axiom,
    ! [V_t_2,V_D_2,V_d_2,T_a] :
      ( ( class_Rings_Ocomm__ring(T_a)
        & class_Rings_Odvd(T_a) )
     => ( hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(T_a),V_d_2),V_D_2))
       => ! [B_x,B_k] :
            ( hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(T_a),V_d_2),c_Groups_Oplus__class_Oplus(T_a,B_x,V_t_2)))
          <=> hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(T_a),V_d_2),c_Groups_Oplus__class_Oplus(T_a,c_Groups_Ominus__class_Ominus(T_a,B_x,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),B_k),V_D_2)),V_t_2))) ) ) ) ).

fof(fact_order__1,axiom,
    ! [V_p,V_a,T_a] :
      ( hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Polynomial_Opoly(T_a)),hAPP(hAPP(c_Power_Opower__class_Opower(tc_Polynomial_Opoly(T_a)),c_Polynomial_OpCons(T_a,c_Groups_Ouminus__class_Ouminus(T_a,V_a),c_Polynomial_OpCons(T_a,c_Groups_Oone__class_Oone(T_a),c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a))))),c_Polynomial_Oorder(T_a,V_a,V_p))),V_p))
     <= class_Rings_Oidom(T_a) ) ).

fof(fact_degree__monom__eq,axiom,
    ! [V_n,V_a,T_a] :
      ( ( V_a != c_Groups_Ozero__class_Ozero(T_a)
       => c_Polynomial_Odegree(T_a,c_Polynomial_Omonom(T_a,V_a,V_n)) = V_n )
     <= class_Groups_Ozero(T_a) ) ).

fof(fact_degree__pcompose__le,axiom,
    ! [V_q,V_p,T_a] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,c_Polynomial_Odegree(T_a,c_Polynomial_Opcompose(T_a,V_p,V_q)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),c_Polynomial_Odegree(T_a,V_p)),c_Polynomial_Odegree(T_a,V_q)))
     <= class_Rings_Ocomm__semiring__0(T_a) ) ).

fof(fact_less__Suc__eq__0__disj,axiom,
    ! [V_na_2,V_m_2] :
      ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_m_2,c_Nat_OSuc(V_na_2))
    <=> ( V_m_2 = c_Groups_Ozero__class_Ozero(tc_Nat_Onat)
        | ? [B_j] :
            ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,B_j,V_na_2)
            & c_Nat_OSuc(B_j) = V_m_2 ) ) ) ).

fof(fact_unique__quotient__lemma,axiom,
    ! [V_r,V_q,V_r_H,V_q_H,V_b] :
      ( ( c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_r_H)
       => ( ( c_Orderings_Oord__class_Oless(tc_Int_Oint,V_r,V_b)
           => c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,V_q_H,V_q) )
         <= c_Orderings_Oord__class_Oless(tc_Int_Oint,V_r_H,V_b) ) )
     <= c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Oplus__class_Oplus(tc_Int_Oint,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_b),V_q_H),V_r_H),c_Groups_Oplus__class_Oplus(tc_Int_Oint,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_b),V_q),V_r)) ) ).

fof(arity_Nat__Onat__Orderings_Olinorder,axiom,
    class_Orderings_Olinorder(tc_Nat_Onat) ).

fof(fact_coeff__1,axiom,
    ! [V_n,T_a] :
      ( ( ( c_Groups_Ozero__class_Ozero(tc_Nat_Onat) = V_n
         => c_Groups_Oone__class_Oone(T_a) = hAPP(c_Polynomial_Ocoeff(T_a,c_Groups_Oone__class_Oone(tc_Polynomial_Opoly(T_a))),V_n) )
        & ( c_Groups_Ozero__class_Ozero(T_a) = hAPP(c_Polynomial_Ocoeff(T_a,c_Groups_Oone__class_Oone(tc_Polynomial_Opoly(T_a))),V_n)
         <= V_n != c_Groups_Ozero__class_Ozero(tc_Nat_Onat) ) )
     <= class_Rings_Ocomm__semiring__1(T_a) ) ).

fof(fact_power__0__left,axiom,
    ! [V_n,T_a] :
      ( ( ( c_Groups_Ozero__class_Ozero(tc_Nat_Onat) != V_n
         => hAPP(hAPP(c_Power_Opower__class_Opower(T_a),c_Groups_Ozero__class_Ozero(T_a)),V_n) = c_Groups_Ozero__class_Ozero(T_a) )
        & ( V_n = c_Groups_Ozero__class_Ozero(tc_Nat_Onat)
         => hAPP(hAPP(c_Power_Opower__class_Opower(T_a),c_Groups_Ozero__class_Ozero(T_a)),V_n) = c_Groups_Oone__class_Oone(T_a) ) )
     <= ( class_Rings_Osemiring__0(T_a)
        & class_Power_Opower(T_a) ) ) ).

fof(fact_smult__dvd__iff,axiom,
    ! [V_qa_2,V_pa_2,V_a_2,T_a] :
      ( ( ( ( V_a_2 = c_Groups_Ozero__class_Ozero(T_a)
           => c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a)) = V_qa_2 )
          & ( V_a_2 != c_Groups_Ozero__class_Ozero(T_a)
           => hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Polynomial_Opoly(T_a)),V_pa_2),V_qa_2)) ) )
      <=> hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Polynomial_Opoly(T_a)),c_Polynomial_Osmult(T_a,V_a_2,V_pa_2)),V_qa_2)) )
     <= class_Fields_Ofield(T_a) ) ).

fof(fact_nat_Oinject,axiom,
    ! [V_nat_H_2,V_nat_2] :
      ( V_nat_H_2 = V_nat_2
    <=> c_Nat_OSuc(V_nat_2) = c_Nat_OSuc(V_nat_H_2) ) ).

fof(fact_le__funE,axiom,
    ! [V_x_2,V_g_2,V_f_2,T_a,T_b] :
      ( ( c_Orderings_Oord__class_Oless__eq(T_b,hAPP(V_f_2,V_x_2),hAPP(V_g_2,V_x_2))
       <= c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,T_b),V_f_2,V_g_2) )
     <= class_Orderings_Oord(T_b) ) ).

fof(fact_dvd__mult__cancel1,axiom,
    ! [V_na_2,V_m_2] :
      ( ( hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Nat_Onat),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_m_2),V_na_2)),V_m_2))
      <=> V_na_2 = c_Groups_Oone__class_Oone(tc_Nat_Onat) )
     <= c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_m_2) ) ).

fof(fact_dvd__triv__left,axiom,
    ! [V_b,V_a,T_a] :
      ( hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(T_a),V_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b)))
     <= class_Rings_Ocomm__semiring__1(T_a) ) ).

fof(fact_gr0__conv__Suc,axiom,
    ! [V_na_2] :
      ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_na_2)
    <=> ? [B_m] : V_na_2 = c_Nat_OSuc(B_m) ) ).

fof(fact_mult__nonpos__nonpos,axiom,
    ! [V_b,V_a,T_a] :
      ( class_Rings_Oordered__ring(T_a)
     => ( c_Orderings_Oord__class_Oless__eq(T_a,V_a,c_Groups_Ozero__class_Ozero(T_a))
       => ( c_Orderings_Oord__class_Oless__eq(T_a,V_b,c_Groups_Ozero__class_Ozero(T_a))
         => c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b)) ) ) ) ).

fof(arity_fun__Lattices_Oboolean__algebra,axiom,
    ! [T_2,T_1] :
      ( class_Lattices_Oboolean__algebra(T_1)
     => class_Lattices_Oboolean__algebra(tc_fun(T_2,T_1)) ) ).

fof(fact_diff__0,axiom,
    ! [V_a,T_a] :
      ( class_Groups_Ogroup__add(T_a)
     => c_Groups_Ouminus__class_Ouminus(T_a,V_a) = c_Groups_Ominus__class_Ominus(T_a,c_Groups_Ozero__class_Ozero(T_a),V_a) ) ).

fof(arity_Complex__Ocomplex__Groups_Oab__semigroup__add,axiom,
    class_Groups_Oab__semigroup__add(tc_Complex_Ocomplex) ).

fof(arity_Int__Oint__Rings_Oordered__comm__semiring,axiom,
    class_Rings_Oordered__comm__semiring(tc_Int_Oint) ).

fof(fact_less__add__eq__less,axiom,
    ! [V_n,V_m,V_l,V_k] :
      ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_k,V_l)
     => ( c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_m,V_l) = c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_k,V_n)
       => c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_m,V_n) ) ) ).

fof(fact_not__pos__poly__0,axiom,
    ! [T_a] :
      ( ~ c_Polynomial_Opos__poly(T_a,c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a)))
     <= class_Rings_Olinordered__idom(T_a) ) ).

fof(fact_times__divide__eq__right,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( class_Rings_Odivision__ring(T_a)
     => c_Rings_Oinverse__class_Odivide(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b),V_c) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),c_Rings_Oinverse__class_Odivide(T_a,V_b,V_c)) ) ).

fof(fact_nat__neq__iff,axiom,
    ! [V_na_2,V_m_2] :
      ( V_na_2 != V_m_2
    <=> ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_m_2,V_na_2)
        | c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_na_2,V_m_2) ) ) ).

fof(fact_nat__eq__add__iff2,axiom,
    ! [V_na_2,V_m_2,V_u_2,V_j_2,V_i_2] :
      ( ( c_Groups_Oplus__class_Oplus(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_j_2),V_u_2),V_na_2) = c_Groups_Oplus__class_Oplus(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_i_2),V_u_2),V_m_2)
      <=> V_m_2 = c_Groups_Oplus__class_Oplus(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_j_2,V_i_2)),V_u_2),V_na_2) )
     <= c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_i_2,V_j_2) ) ).

fof(fact_divide__diff__eq__iff,axiom,
    ! [V_y,V_x,V_z,T_a] :
      ( class_Fields_Ofield(T_a)
     => ( c_Groups_Ozero__class_Ozero(T_a) != V_z
       => c_Groups_Ominus__class_Ominus(T_a,c_Rings_Oinverse__class_Odivide(T_a,V_x,V_z),V_y) = c_Rings_Oinverse__class_Odivide(T_a,c_Groups_Ominus__class_Ominus(T_a,V_x,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_z),V_y)),V_z) ) ) ).

fof(fact_nat__0__less__mult__iff,axiom,
    ! [V_na_2,V_m_2] :
      ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_m_2),V_na_2))
    <=> ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_na_2)
        & c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_m_2) ) ) ).

fof(fact_realpow__minus__mult,axiom,
    ! [V_x,V_n,T_a] :
      ( ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_n)
       => hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_x),V_n) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_x),c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_n,c_Groups_Oone__class_Oone(tc_Nat_Onat)))),V_x) )
     <= class_Groups_Omonoid__mult(T_a) ) ).

fof(fact_real__squared__diff__one__factored,axiom,
    ! [V_x,T_a] :
      ( class_Rings_Oring__1(T_a)
     => c_Groups_Ominus__class_Ominus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_x),V_x),c_Groups_Oone__class_Oone(T_a)) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Groups_Oplus__class_Oplus(T_a,V_x,c_Groups_Oone__class_Oone(T_a))),c_Groups_Ominus__class_Ominus(T_a,V_x,c_Groups_Oone__class_Oone(T_a))) ) ).

fof(fact_Zero__neq__Suc,axiom,
    ! [V_m] : c_Nat_OSuc(V_m) != c_Groups_Ozero__class_Ozero(tc_Nat_Onat) ).

fof(fact_Suc__eq__plus1__left,axiom,
    ! [V_n] : c_Nat_OSuc(V_n) = c_Groups_Oplus__class_Oplus(tc_Nat_Onat,c_Groups_Oone__class_Oone(tc_Nat_Onat),V_n) ).

fof(fact_less__add__iff2,axiom,
    ! [V_d_2,V_b_2,V_c_2,V_e_2,V_a_2,T_a] :
      ( ( c_Orderings_Oord__class_Oless(T_a,V_c_2,c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Groups_Ominus__class_Ominus(T_a,V_b_2,V_a_2)),V_e_2),V_d_2))
      <=> c_Orderings_Oord__class_Oless(T_a,c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a_2),V_e_2),V_c_2),c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b_2),V_e_2),V_d_2)) )
     <= class_Rings_Oordered__ring(T_a) ) ).

fof(fact_nat__mult__less__cancel1,axiom,
    ! [V_na_2,V_m_2,V_k_2] :
      ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_k_2)
     => ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_k_2),V_m_2),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_k_2),V_na_2))
      <=> c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_m_2,V_na_2) ) ) ).

fof(arity_Nat__Onat__Groups_Ocancel__ab__semigroup__add,axiom,
    class_Groups_Ocancel__ab__semigroup__add(tc_Nat_Onat) ).

fof(fact_neg__le__0__iff__le,axiom,
    ! [V_a_2,T_a] :
      ( ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_a_2)
      <=> c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ouminus__class_Ouminus(T_a,V_a_2),c_Groups_Ozero__class_Ozero(T_a)) )
     <= class_Groups_Oordered__ab__group__add(T_a) ) ).

fof(fact_comm__semiring__1__class_Onormalizing__semiring__rules_I19_J,axiom,
    ! [V_ry,V_rx,V_lx,T_a] :
      ( class_Rings_Ocomm__semiring__1(T_a)
     => hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_lx),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_rx),V_ry)) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_rx),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_lx),V_ry)) ) ).

fof(arity_Polynomial__Opoly__Rings_Osemiring__0,axiom,
    ! [T_1] :
      ( class_Rings_Ocomm__semiring__0(T_1)
     => class_Rings_Osemiring__0(tc_Polynomial_Opoly(T_1)) ) ).

fof(arity_Int__Oint__Semiring__Normalization_Ocomm__semiring__1__cancel__crossproduct,axiom,
    class_Semiring__Normalization_Ocomm__semiring__1__cancel__crossproduct(tc_Int_Oint) ).

fof(fact_poly__dvd__antisym,axiom,
    ! [V_q,V_p,T_a] :
      ( ( hAPP(c_Polynomial_Ocoeff(T_a,V_q),c_Polynomial_Odegree(T_a,V_q)) = hAPP(c_Polynomial_Ocoeff(T_a,V_p),c_Polynomial_Odegree(T_a,V_p))
       => ( ( V_p = V_q
           <= hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Polynomial_Opoly(T_a)),V_q),V_p)) )
         <= hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Polynomial_Opoly(T_a)),V_p),V_q)) ) )
     <= class_Rings_Oidom(T_a) ) ).

fof(fact_add__monom,axiom,
    ! [V_b,V_n,V_a,T_a] :
      ( class_Groups_Ocomm__monoid__add(T_a)
     => c_Polynomial_Omonom(T_a,c_Groups_Oplus__class_Oplus(T_a,V_a,V_b),V_n) = c_Groups_Oplus__class_Oplus(tc_Polynomial_Opoly(T_a),c_Polynomial_Omonom(T_a,V_a,V_n),c_Polynomial_Omonom(T_a,V_b,V_n)) ) ).

fof(fact_divide__nonneg__neg,axiom,
    ! [V_y,V_x,T_a] :
      ( class_Fields_Olinordered__field(T_a)
     => ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_x)
       => ( c_Orderings_Oord__class_Oless(T_a,V_y,c_Groups_Ozero__class_Ozero(T_a))
         => c_Orderings_Oord__class_Oless__eq(T_a,c_Rings_Oinverse__class_Odivide(T_a,V_x,V_y),c_Groups_Ozero__class_Ozero(T_a)) ) ) ) ).

fof(fact_Nat__Transfer_Otransfer__nat__int__function__closures_I6_J,axiom,
    c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),c_Groups_Oone__class_Oone(tc_Int_Oint)) ).

fof(fact_order__less__le__trans,axiom,
    ! [V_z,V_y,V_x,T_a] :
      ( ( c_Orderings_Oord__class_Oless(T_a,V_x,V_y)
       => ( c_Orderings_Oord__class_Oless__eq(T_a,V_y,V_z)
         => c_Orderings_Oord__class_Oless(T_a,V_x,V_z) ) )
     <= class_Orderings_Opreorder(T_a) ) ).

fof(fact_minus__diff__eq,axiom,
    ! [V_b,V_a,T_a] :
      ( c_Groups_Ouminus__class_Ouminus(T_a,c_Groups_Ominus__class_Ominus(T_a,V_a,V_b)) = c_Groups_Ominus__class_Ominus(T_a,V_b,V_a)
     <= class_Groups_Oab__group__add(T_a) ) ).

fof(fact_no__zero__divisors,axiom,
    ! [V_b,V_a,T_a] :
      ( class_Rings_Ono__zero__divisors(T_a)
     => ( ( c_Groups_Ozero__class_Ozero(T_a) != V_b
         => c_Groups_Ozero__class_Ozero(T_a) != hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b) )
       <= c_Groups_Ozero__class_Ozero(T_a) != V_a ) ) ).

fof(fact_Suc__lessD,axiom,
    ! [V_n,V_m] :
      ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_m,V_n)
     <= c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Nat_OSuc(V_m),V_n) ) ).

fof(fact_add__gr__0,axiom,
    ! [V_na_2,V_m_2] :
      ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_m_2,V_na_2))
    <=> ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_m_2)
        | c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_na_2) ) ) ).

fof(fact_mult__1,axiom,
    ! [V_a,T_a] :
      ( class_Groups_Ocomm__monoid__mult(T_a)
     => V_a = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Groups_Oone__class_Oone(T_a)),V_a) ) ).

fof(fact_nat__mult__assoc,axiom,
    ! [V_k,V_n,V_m] : hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_m),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_n),V_k)) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_m),V_n)),V_k) ).

fof(fact_comm__semiring__1__class_Onormalizing__semiring__rules_I22_J,axiom,
    ! [V_d,V_c,V_a,T_a] :
      ( class_Rings_Ocomm__semiring__1(T_a)
     => c_Groups_Oplus__class_Oplus(T_a,V_c,c_Groups_Oplus__class_Oplus(T_a,V_a,V_d)) = c_Groups_Oplus__class_Oplus(T_a,V_a,c_Groups_Oplus__class_Oplus(T_a,V_c,V_d)) ) ).

fof(fact_nat__add__assoc,axiom,
    ! [V_k,V_n,V_m] : c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_m,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_n,V_k)) = c_Groups_Oplus__class_Oplus(tc_Nat_Onat,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_m,V_n),V_k) ).

fof(arity_Int__Oint__Int_Oring__char__0,axiom,
    class_Int_Oring__char__0(tc_Int_Oint) ).

fof(fact_pos__poly__pCons,axiom,
    ! [V_pa_2,V_a_2,T_a] :
      ( class_Rings_Olinordered__idom(T_a)
     => ( ( ( V_pa_2 = c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a))
            & c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_a_2) )
          | c_Polynomial_Opos__poly(T_a,V_pa_2) )
      <=> c_Polynomial_Opos__poly(T_a,c_Polynomial_OpCons(T_a,V_a_2,V_pa_2)) ) ) ).

fof(fact_linorder__le__cases,axiom,
    ! [V_y,V_x,T_a] :
      ( class_Orderings_Olinorder(T_a)
     => ( ~ c_Orderings_Oord__class_Oless__eq(T_a,V_x,V_y)
       => c_Orderings_Oord__class_Oless__eq(T_a,V_y,V_x) ) ) ).

fof(arity_HOL__Obool__Lattices_Oboolean__algebra,axiom,
    class_Lattices_Oboolean__algebra(tc_HOL_Obool) ).

fof(arity_Nat__Onat__Groups_Ominus,axiom,
    class_Groups_Ominus(tc_Nat_Onat) ).

fof(arity_Int__Oint__Rings_Osemiring,axiom,
    class_Rings_Osemiring(tc_Int_Oint) ).

fof(fact_poly__rec__0,axiom,
    ! [T_a,V_z_2,V_f_2,T_b] :
      ( class_Groups_Ozero(T_b)
     => ( hAPP(hAPP(hAPP(V_f_2,c_Groups_Ozero__class_Ozero(T_b)),c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_b))),V_z_2) = V_z_2
       => c_Polynomial_Opoly__rec(T_a,T_b,V_z_2,V_f_2,c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_b))) = V_z_2 ) ) ).

fof(fact_add__diff__assoc2,axiom,
    ! [V_i,V_j,V_k] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_k,V_j)
     => c_Groups_Oplus__class_Oplus(tc_Nat_Onat,c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_j,V_k),V_i) = c_Groups_Ominus__class_Ominus(tc_Nat_Onat,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_j,V_i),V_k) ) ).

fof(arity_Int__Oint__Power_Opower,axiom,
    class_Power_Opower(tc_Int_Oint) ).

fof(fact_add__divide__distrib,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( c_Groups_Oplus__class_Oplus(T_a,c_Rings_Oinverse__class_Odivide(T_a,V_a,V_c),c_Rings_Oinverse__class_Odivide(T_a,V_b,V_c)) = c_Rings_Oinverse__class_Odivide(T_a,c_Groups_Oplus__class_Oplus(T_a,V_a,V_b),V_c)
     <= class_Rings_Odivision__ring(T_a) ) ).

fof(fact_divide__right__mono,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( class_Fields_Olinordered__field__inverse__zero(T_a)
     => ( ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_c)
         => c_Orderings_Oord__class_Oless__eq(T_a,c_Rings_Oinverse__class_Odivide(T_a,V_a,V_c),c_Rings_Oinverse__class_Odivide(T_a,V_b,V_c)) )
       <= c_Orderings_Oord__class_Oless__eq(T_a,V_a,V_b) ) ) ).

fof(fact_Suc__lessI,axiom,
    ! [V_n,V_m] :
      ( ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Nat_OSuc(V_m),V_n)
       <= V_n != c_Nat_OSuc(V_m) )
     <= c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_m,V_n) ) ).

fof(arity_Nat__Onat__Groups_Ozero,axiom,
    class_Groups_Ozero(tc_Nat_Onat) ).

fof(fact_eq__add__iff2,axiom,
    ! [V_d_2,V_b_2,V_c_2,V_e_2,V_a_2,T_a] :
      ( class_Rings_Oring(T_a)
     => ( c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b_2),V_e_2),V_d_2) = c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a_2),V_e_2),V_c_2)
      <=> V_c_2 = c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Groups_Ominus__class_Ominus(T_a,V_b_2,V_a_2)),V_e_2),V_d_2) ) ) ).

fof(fact_order__less__asym,axiom,
    ! [V_y,V_x,T_a] :
      ( class_Orderings_Opreorder(T_a)
     => ( ~ c_Orderings_Oord__class_Oless(T_a,V_y,V_x)
       <= c_Orderings_Oord__class_Oless(T_a,V_x,V_y) ) ) ).

fof(fact_diff__eq__diff__eq,axiom,
    ! [V_d_2,V_c_2,V_b_2,V_a_2,T_a] :
      ( class_Groups_Oab__group__add(T_a)
     => ( c_Groups_Ominus__class_Ominus(T_a,V_c_2,V_d_2) = c_Groups_Ominus__class_Ominus(T_a,V_a_2,V_b_2)
       => ( V_c_2 = V_d_2
        <=> V_a_2 = V_b_2 ) ) ) ).

fof(fact_ord__eq__less__trans,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( class_Orderings_Oord(T_a)
     => ( V_a = V_b
       => ( c_Orderings_Oord__class_Oless(T_a,V_a,V_c)
         <= c_Orderings_Oord__class_Oless(T_a,V_b,V_c) ) ) ) ).

fof(fact_power__one__right,axiom,
    ! [V_a,T_a] :
      ( class_Groups_Omonoid__mult(T_a)
     => V_a = hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),c_Groups_Oone__class_Oone(tc_Nat_Onat)) ) ).

fof(fact_not__one__less__zero,axiom,
    ! [T_a] :
      ( class_Rings_Olinordered__semidom(T_a)
     => ~ c_Orderings_Oord__class_Oless(T_a,c_Groups_Oone__class_Oone(T_a),c_Groups_Ozero__class_Ozero(T_a)) ) ).

fof(arity_Int__Oint__Rings_Ocomm__semiring__1,axiom,
    class_Rings_Ocomm__semiring__1(tc_Int_Oint) ).

fof(fact_nat__dvd__1__iff__1,axiom,
    ! [V_m_2] :
      ( hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Nat_Onat),V_m_2),c_Groups_Oone__class_Oone(tc_Nat_Onat)))
    <=> c_Groups_Oone__class_Oone(tc_Nat_Onat) = V_m_2 ) ).

fof(fact_zminus__0,axiom,
    c_Groups_Ouminus__class_Ouminus(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint)) = c_Groups_Ozero__class_Ozero(tc_Int_Oint) ).

fof(fact_zdvd__not__zless,axiom,
    ! [V_n,V_m] :
      ( ( ~ hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Int_Oint),V_n),V_m))
       <= c_Orderings_Oord__class_Oless(tc_Int_Oint,V_m,V_n) )
     <= c_Orderings_Oord__class_Oless(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_m) ) ).

fof(fact_eq__neg__iff__add__eq__0,axiom,
    ! [V_b_2,V_a_2,T_a] :
      ( class_Groups_Ogroup__add(T_a)
     => ( c_Groups_Ouminus__class_Ouminus(T_a,V_b_2) = V_a_2
      <=> c_Groups_Ozero__class_Ozero(T_a) = c_Groups_Oplus__class_Oplus(T_a,V_a_2,V_b_2) ) ) ).

fof(fact_add__strict__left__mono,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Oplus__class_Oplus(T_a,V_c,V_a),c_Groups_Oplus__class_Oplus(T_a,V_c,V_b))
       <= c_Orderings_Oord__class_Oless(T_a,V_a,V_b) )
     <= class_Groups_Oordered__cancel__ab__semigroup__add(T_a) ) ).

fof(fact_leI,axiom,
    ! [V_y,V_x,T_a] :
      ( class_Orderings_Olinorder(T_a)
     => ( c_Orderings_Oord__class_Oless__eq(T_a,V_y,V_x)
       <= ~ c_Orderings_Oord__class_Oless(T_a,V_x,V_y) ) ) ).

fof(fact_dp,axiom,
    c_Groups_Ozero__class_Ozero(tc_Nat_Onat) != c_Polynomial_Odegree(tc_Complex_Ocomplex,v_p) ).

fof(fact_diff__self,axiom,
    ! [V_a,T_a] :
      ( class_Groups_Ogroup__add(T_a)
     => c_Groups_Ozero__class_Ozero(T_a) = c_Groups_Ominus__class_Ominus(T_a,V_a,V_a) ) ).

fof(fact_le__SucI,axiom,
    ! [V_n,V_m] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m,V_n)
     => c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m,c_Nat_OSuc(V_n)) ) ).

fof(fact_psize__eq__0__iff,axiom,
    ! [V_pa_2,T_a] :
      ( ( c_Groups_Ozero__class_Ozero(tc_Nat_Onat) = c_Fundamental__Theorem__Algebra__Mirabelle_Opsize(T_a,V_pa_2)
      <=> V_pa_2 = c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a)) )
     <= class_Groups_Ozero(T_a) ) ).

fof(fact_coeff__eq__0,axiom,
    ! [V_n,V_p,T_a] :
      ( ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Polynomial_Odegree(T_a,V_p),V_n)
       => c_Groups_Ozero__class_Ozero(T_a) = hAPP(c_Polynomial_Ocoeff(T_a,V_p),V_n) )
     <= class_Groups_Ozero(T_a) ) ).

fof(fact_frac__less,axiom,
    ! [V_z,V_w,V_y,V_x,T_a] :
      ( class_Fields_Olinordered__field(T_a)
     => ( ( ( ( c_Orderings_Oord__class_Oless(T_a,c_Rings_Oinverse__class_Odivide(T_a,V_x,V_z),c_Rings_Oinverse__class_Odivide(T_a,V_y,V_w))
             <= c_Orderings_Oord__class_Oless__eq(T_a,V_w,V_z) )
           <= c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_w) )
         <= c_Orderings_Oord__class_Oless(T_a,V_x,V_y) )
       <= c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_x) ) ) ).

fof(fact_power__mono,axiom,
    ! [V_n,V_b,V_a,T_a] :
      ( ( ( c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_n),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_b),V_n))
         <= c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_a) )
       <= c_Orderings_Oord__class_Oless__eq(T_a,V_a,V_b) )
     <= class_Rings_Olinordered__semidom(T_a) ) ).

fof(fact_diff__le__mono2,axiom,
    ! [V_l,V_n,V_m] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_l,V_n),c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_l,V_m))
     <= c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m,V_n) ) ).

fof(fact_offset__poly__eq__0__iff,axiom,
    ! [V_h_2,V_pa_2,T_a] :
      ( ( c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a)) = V_pa_2
      <=> c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a)) = c_Fundamental__Theorem__Algebra__Mirabelle_Ooffset__poly(T_a,V_pa_2,V_h_2) )
     <= class_Rings_Ocomm__semiring__0(T_a) ) ).

fof(fact_power__one,axiom,
    ! [V_n,T_a] :
      ( hAPP(hAPP(c_Power_Opower__class_Opower(T_a),c_Groups_Oone__class_Oone(T_a)),V_n) = c_Groups_Oone__class_Oone(T_a)
     <= class_Groups_Omonoid__mult(T_a) ) ).

fof(fact_nat__1__eq__mult__iff,axiom,
    ! [V_na_2,V_m_2] :
      ( hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_m_2),V_na_2) = c_Groups_Oone__class_Oone(tc_Nat_Onat)
    <=> ( c_Groups_Oone__class_Oone(tc_Nat_Onat) = V_m_2
        & c_Groups_Oone__class_Oone(tc_Nat_Onat) = V_na_2 ) ) ).

fof(fact_mult__0,axiom,
    ! [V_n] : hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),c_Groups_Ozero__class_Ozero(tc_Nat_Onat)),V_n) = c_Groups_Ozero__class_Ozero(tc_Nat_Onat) ).

fof(fact_dvd__reduce,axiom,
    ! [V_na_2,V_k_2] :
      ( hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Nat_Onat),V_k_2),c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_na_2,V_k_2)))
    <=> hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Nat_Onat),V_k_2),V_na_2)) ) ).

fof(fact_degree__smult__le,axiom,
    ! [V_p,V_a,T_a] :
      ( class_Rings_Ocomm__semiring__0(T_a)
     => c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,c_Polynomial_Odegree(T_a,c_Polynomial_Osmult(T_a,V_a,V_p)),c_Polynomial_Odegree(T_a,V_p)) ) ).

fof(fact_comm__mult__left__mono,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( class_Rings_Oordered__comm__semiring(T_a)
     => ( ( c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_c),V_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_c),V_b))
         <= c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_c) )
       <= c_Orderings_Oord__class_Oless__eq(T_a,V_a,V_b) ) ) ).

fof(fact_ab__semigroup__add__class_Oadd__ac_I1_J,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( c_Groups_Oplus__class_Oplus(T_a,V_a,c_Groups_Oplus__class_Oplus(T_a,V_b,V_c)) = c_Groups_Oplus__class_Oplus(T_a,c_Groups_Oplus__class_Oplus(T_a,V_a,V_b),V_c)
     <= class_Groups_Oab__semigroup__add(T_a) ) ).

fof(fact_field__power__not__zero,axiom,
    ! [V_n,V_a,T_a] :
      ( class_Rings_Oring__1__no__zero__divisors(T_a)
     => ( c_Groups_Ozero__class_Ozero(T_a) != V_a
       => hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_n) != c_Groups_Ozero__class_Ozero(T_a) ) ) ).

fof(fact_frac__less2,axiom,
    ! [V_z,V_w,V_y,V_x,T_a] :
      ( ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_x)
       => ( ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_w)
           => ( c_Orderings_Oord__class_Oless(T_a,c_Rings_Oinverse__class_Odivide(T_a,V_x,V_z),c_Rings_Oinverse__class_Odivide(T_a,V_y,V_w))
             <= c_Orderings_Oord__class_Oless(T_a,V_w,V_z) ) )
         <= c_Orderings_Oord__class_Oless__eq(T_a,V_x,V_y) ) )
     <= class_Fields_Olinordered__field(T_a) ) ).

fof(fact_mult__less__mono2,axiom,
    ! [V_k,V_j,V_i] :
      ( ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_k)
       => c_Orderings_Oord__class_Oless(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_k),V_i),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_k),V_j)) )
     <= c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_i,V_j) ) ).

fof(arity_Complex__Ocomplex__Rings_Ocomm__ring__1,axiom,
    class_Rings_Ocomm__ring__1(tc_Complex_Ocomplex) ).

fof(fact_diff__eq__diff__less__eq,axiom,
    ! [V_d_2,V_c_2,V_b_2,V_a_2,T_a] :
      ( class_Groups_Oordered__ab__group__add(T_a)
     => ( c_Groups_Ominus__class_Ominus(T_a,V_c_2,V_d_2) = c_Groups_Ominus__class_Ominus(T_a,V_a_2,V_b_2)
       => ( c_Orderings_Oord__class_Oless__eq(T_a,V_a_2,V_b_2)
        <=> c_Orderings_Oord__class_Oless__eq(T_a,V_c_2,V_d_2) ) ) ) ).

fof(arity_Complex__Ocomplex__Rings_Ocomm__ring,axiom,
    class_Rings_Ocomm__ring(tc_Complex_Ocomplex) ).

fof(fact_DERIV__mult__lemma,axiom,
    ! [V_h,V_d,V_c,V_b,V_a,T_a] :
      ( c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),c_Rings_Oinverse__class_Odivide(T_a,c_Groups_Ominus__class_Ominus(T_a,V_b,V_d),V_h)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Rings_Oinverse__class_Odivide(T_a,c_Groups_Ominus__class_Ominus(T_a,V_a,V_c),V_h)),V_d)) = c_Rings_Oinverse__class_Odivide(T_a,c_Groups_Ominus__class_Ominus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_c),V_d)),V_h)
     <= class_RealVector_Oreal__field(T_a) ) ).

fof(fact_dvd__mult2,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( class_Rings_Ocomm__semiring__1(T_a)
     => ( hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(T_a),V_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b),V_c)))
       <= hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(T_a),V_a),V_b)) ) ) ).

fof(fact_pdivmod__rel__unique__mod,axiom,
    ! [V_r2,V_q2,V_r1,V_q1,V_y,V_x,T_a] :
      ( class_Fields_Ofield(T_a)
     => ( c_Polynomial_Opdivmod__rel(T_a,V_x,V_y,V_q1,V_r1)
       => ( c_Polynomial_Opdivmod__rel(T_a,V_x,V_y,V_q2,V_r2)
         => V_r1 = V_r2 ) ) ) ).

fof(fact_gr0I,axiom,
    ! [V_n] :
      ( c_Groups_Ozero__class_Ozero(tc_Nat_Onat) != V_n
     => c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_n) ) ).

fof(fact_mult__cancel2,axiom,
    ! [V_na_2,V_k_2,V_m_2] :
      ( ( V_k_2 = c_Groups_Ozero__class_Ozero(tc_Nat_Onat)
        | V_m_2 = V_na_2 )
    <=> hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_na_2),V_k_2) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_m_2),V_k_2) ) ).

fof(fact_le__degree,axiom,
    ! [V_n,V_p,T_a] :
      ( ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_n,c_Polynomial_Odegree(T_a,V_p))
       <= c_Groups_Ozero__class_Ozero(T_a) != hAPP(c_Polynomial_Ocoeff(T_a,V_p),V_n) )
     <= class_Groups_Ozero(T_a) ) ).

fof(fact_diff__eq__diff__less,axiom,
    ! [V_d_2,V_c_2,V_b_2,V_a_2,T_a] :
      ( ( ( c_Orderings_Oord__class_Oless(T_a,V_c_2,V_d_2)
        <=> c_Orderings_Oord__class_Oless(T_a,V_a_2,V_b_2) )
       <= c_Groups_Ominus__class_Ominus(T_a,V_c_2,V_d_2) = c_Groups_Ominus__class_Ominus(T_a,V_a_2,V_b_2) )
     <= class_Groups_Oordered__ab__group__add(T_a) ) ).

fof(fact_Suc__less__eq,axiom,
    ! [V_na_2,V_m_2] :
      ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_m_2,V_na_2)
    <=> c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Nat_OSuc(V_m_2),c_Nat_OSuc(V_na_2)) ) ).

fof(arity_Polynomial__Opoly__Rings_Odvd,axiom,
    ! [T_1] :
      ( class_Rings_Odvd(tc_Polynomial_Opoly(T_1))
     <= class_Rings_Ocomm__semiring__1(T_1) ) ).

fof(fact_mult__poly__add__left,axiom,
    ! [V_r,V_q,V_p,T_a] :
      ( c_Groups_Oplus__class_Oplus(tc_Polynomial_Opoly(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Polynomial_Opoly(T_a)),V_p),V_r),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Polynomial_Opoly(T_a)),V_q),V_r)) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Polynomial_Opoly(T_a)),c_Groups_Oplus__class_Oplus(tc_Polynomial_Opoly(T_a),V_p,V_q)),V_r)
     <= class_Rings_Ocomm__semiring__0(T_a) ) ).

fof(fact_double__zero__sym,axiom,
    ! [V_a_2,T_a] :
      ( ( V_a_2 = c_Groups_Ozero__class_Ozero(T_a)
      <=> c_Groups_Ozero__class_Ozero(T_a) = c_Groups_Oplus__class_Oplus(T_a,V_a_2,V_a_2) )
     <= class_Groups_Olinordered__ab__group__add(T_a) ) ).

fof(fact_Suc__diff__le,axiom,
    ! [V_m,V_n] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_n,V_m)
     => c_Groups_Ominus__class_Ominus(tc_Nat_Onat,c_Nat_OSuc(V_m),V_n) = c_Nat_OSuc(c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_m,V_n)) ) ).

fof(fact_odd__nonzero,axiom,
    ! [V_z] : c_Groups_Oplus__class_Oplus(tc_Int_Oint,c_Groups_Oplus__class_Oplus(tc_Int_Oint,c_Groups_Oone__class_Oone(tc_Int_Oint),V_z),V_z) != c_Groups_Ozero__class_Ozero(tc_Int_Oint) ).

fof(fact_order__degree,axiom,
    ! [V_a,V_p,T_a] :
      ( class_Rings_Oidom(T_a)
     => ( c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a)) != V_p
       => c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,c_Polynomial_Oorder(T_a,V_a,V_p),c_Polynomial_Odegree(T_a,V_p)) ) ) ).

fof(fact_mult__0__right,axiom,
    ! [V_m] : hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_m),c_Groups_Ozero__class_Ozero(tc_Nat_Onat)) = c_Groups_Ozero__class_Ozero(tc_Nat_Onat) ).

fof(fact_degree__add__eq__left,axiom,
    ! [V_p,V_q,T_a] :
      ( ( c_Polynomial_Odegree(T_a,V_p) = c_Polynomial_Odegree(T_a,c_Groups_Oplus__class_Oplus(tc_Polynomial_Opoly(T_a),V_p,V_q))
       <= c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Polynomial_Odegree(T_a,V_q),c_Polynomial_Odegree(T_a,V_p)) )
     <= class_Groups_Ocomm__monoid__add(T_a) ) ).

fof(arity_Complex__Ocomplex__Fields_Ofield__inverse__zero,axiom,
    class_Fields_Ofield__inverse__zero(tc_Complex_Ocomplex) ).

fof(fact_nat__le__add__iff2,axiom,
    ! [V_na_2,V_m_2,V_u_2,V_j_2,V_i_2] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_i_2,V_j_2)
     => ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m_2,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_j_2,V_i_2)),V_u_2),V_na_2))
      <=> c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_i_2),V_u_2),V_m_2),c_Groups_Oplus__class_Oplus(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_j_2),V_u_2),V_na_2)) ) ) ).

fof(fact_add__strict__right__mono,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Oplus__class_Oplus(T_a,V_a,V_c),c_Groups_Oplus__class_Oplus(T_a,V_b,V_c))
       <= c_Orderings_Oord__class_Oless(T_a,V_a,V_b) )
     <= class_Groups_Oordered__cancel__ab__semigroup__add(T_a) ) ).

fof(arity_Nat__Onat__Rings_Ono__zero__divisors,axiom,
    class_Rings_Ono__zero__divisors(tc_Nat_Onat) ).

fof(fact_degree__minus,axiom,
    ! [V_p,T_a] :
      ( class_Groups_Oab__group__add(T_a)
     => c_Polynomial_Odegree(T_a,V_p) = c_Polynomial_Odegree(T_a,c_Groups_Ouminus__class_Ouminus(tc_Polynomial_Opoly(T_a),V_p)) ) ).

fof(fact_mult__pCons__left,axiom,
    ! [V_q,V_p,V_a,T_a] :
      ( class_Rings_Ocomm__semiring__0(T_a)
     => hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Polynomial_Opoly(T_a)),c_Polynomial_OpCons(T_a,V_a,V_p)),V_q) = c_Groups_Oplus__class_Oplus(tc_Polynomial_Opoly(T_a),c_Polynomial_Osmult(T_a,V_a,V_q),c_Polynomial_OpCons(T_a,c_Groups_Ozero__class_Ozero(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Polynomial_Opoly(T_a)),V_p),V_q))) ) ).

fof(fact_dvd_Oless__imp__not__eq,axiom,
    ! [V_y,V_x] :
      ( ( hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Nat_Onat),V_x),V_y))
        & ~ hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Nat_Onat),V_y),V_x)) )
     => V_x != V_y ) ).

fof(fact_coeff__pCons__Suc,axiom,
    ! [V_n,V_p,V_a,T_a] :
      ( hAPP(c_Polynomial_Ocoeff(T_a,V_p),V_n) = hAPP(c_Polynomial_Ocoeff(T_a,c_Polynomial_OpCons(T_a,V_a,V_p)),c_Nat_OSuc(V_n))
     <= class_Groups_Ozero(T_a) ) ).

fof(fact_comm__semiring__1__class_Onormalizing__semiring__rules_I26_J,axiom,
    ! [V_q,V_p,V_x,T_a] :
      ( class_Rings_Ocomm__semiring__1(T_a)
     => hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_x),c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_p,V_q)) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_x),V_p)),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_x),V_q)) ) ).

fof(fact_add__increasing,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( class_Groups_Oordered__comm__monoid__add(T_a)
     => ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_a)
       => ( c_Orderings_Oord__class_Oless__eq(T_a,V_b,V_c)
         => c_Orderings_Oord__class_Oless__eq(T_a,V_b,c_Groups_Oplus__class_Oplus(T_a,V_a,V_c)) ) ) ) ).

fof(fact_nat__less__add__iff2,axiom,
    ! [V_na_2,V_m_2,V_u_2,V_j_2,V_i_2] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_i_2,V_j_2)
     => ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_i_2),V_u_2),V_m_2),c_Groups_Oplus__class_Oplus(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_j_2),V_u_2),V_na_2))
      <=> c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_m_2,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_j_2,V_i_2)),V_u_2),V_na_2)) ) ) ).

fof(fact_dvd__0__right,axiom,
    ! [V_a,T_a] :
      ( hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(T_a),V_a),c_Groups_Ozero__class_Ozero(T_a)))
     <= class_Rings_Ocomm__semiring__1(T_a) ) ).

fof(fact_smult__0__right,axiom,
    ! [V_a,T_a] :
      ( class_Rings_Ocomm__semiring__0(T_a)
     => c_Polynomial_Osmult(T_a,V_a,c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a))) = c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a)) ) ).

fof(fact_dvd__antisym,axiom,
    ! [V_n,V_m] :
      ( ( hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Nat_Onat),V_n),V_m))
       => V_n = V_m )
     <= hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Nat_Onat),V_m),V_n)) ) ).

fof(fact_eq__diff__iff,axiom,
    ! [V_na_2,V_m_2,V_k_2] :
      ( ( ( c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_m_2,V_k_2) = c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_na_2,V_k_2)
        <=> V_m_2 = V_na_2 )
       <= c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_k_2,V_na_2) )
     <= c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_k_2,V_m_2) ) ).

fof(fact_minus__mult__left,axiom,
    ! [V_b,V_a,T_a] :
      ( hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Groups_Ouminus__class_Ouminus(T_a,V_a)),V_b) = c_Groups_Ouminus__class_Ouminus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b))
     <= class_Rings_Oring(T_a) ) ).

fof(fact_linorder__antisym__conv3,axiom,
    ! [V_x_2,V_y_2,T_a] :
      ( class_Orderings_Olinorder(T_a)
     => ( ~ c_Orderings_Oord__class_Oless(T_a,V_y_2,V_x_2)
       => ( V_x_2 = V_y_2
        <=> ~ c_Orderings_Oord__class_Oless(T_a,V_x_2,V_y_2) ) ) ) ).

fof(fact_mult_Ocomm__neutral,axiom,
    ! [V_a,T_a] :
      ( V_a = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),c_Groups_Oone__class_Oone(T_a))
     <= class_Groups_Ocomm__monoid__mult(T_a) ) ).

fof(fact_leading__coeff__0__iff,axiom,
    ! [V_pa_2,T_a] :
      ( ( c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a)) = V_pa_2
      <=> hAPP(c_Polynomial_Ocoeff(T_a,V_pa_2),c_Polynomial_Odegree(T_a,V_pa_2)) = c_Groups_Ozero__class_Ozero(T_a) )
     <= class_Groups_Ozero(T_a) ) ).

fof(fact_order__le__less,axiom,
    ! [V_y_2,V_x_2,T_a] :
      ( ( ( c_Orderings_Oord__class_Oless(T_a,V_x_2,V_y_2)
          | V_y_2 = V_x_2 )
      <=> c_Orderings_Oord__class_Oless__eq(T_a,V_x_2,V_y_2) )
     <= class_Orderings_Oorder(T_a) ) ).

fof(fact_n__not__Suc__n,axiom,
    ! [V_n] : V_n != c_Nat_OSuc(V_n) ).

fof(fact_neg__equal__zero,axiom,
    ! [V_a_2,T_a] :
      ( ( c_Groups_Ouminus__class_Ouminus(T_a,V_a_2) = V_a_2
      <=> V_a_2 = c_Groups_Ozero__class_Ozero(T_a) )
     <= class_Groups_Olinordered__ab__group__add(T_a) ) ).

fof(fact_add__frac__num,axiom,
    ! [V_z,V_x,V_y,T_a] :
      ( class_Fields_Ofield__inverse__zero(T_a)
     => ( c_Rings_Oinverse__class_Odivide(T_a,c_Groups_Oplus__class_Oplus(T_a,V_x,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_z),V_y)),V_y) = c_Groups_Oplus__class_Oplus(T_a,c_Rings_Oinverse__class_Odivide(T_a,V_x,V_y),V_z)
       <= V_y != c_Groups_Ozero__class_Ozero(T_a) ) ) ).

fof(fact_comm__semiring__1__class_Onormalizing__semiring__rules_I8_J,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Groups_Oplus__class_Oplus(T_a,V_a,V_b)),V_c) = c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_c),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b),V_c))
     <= class_Rings_Ocomm__semiring__1(T_a) ) ).

fof(fact_ab__diff__minus,axiom,
    ! [V_b,V_a,T_a] :
      ( class_Groups_Oab__group__add(T_a)
     => c_Groups_Ominus__class_Ominus(T_a,V_a,V_b) = c_Groups_Oplus__class_Oplus(T_a,V_a,c_Groups_Ouminus__class_Ouminus(T_a,V_b)) ) ).

fof(fact_poly__zero,axiom,
    ! [V_pa_2,T_a] :
      ( ( c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a)) = V_pa_2
      <=> c_Polynomial_Opoly(T_a,c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a))) = c_Polynomial_Opoly(T_a,V_pa_2) )
     <= ( class_Int_Oring__char__0(T_a)
        & class_Rings_Oidom(T_a) ) ) ).

fof(fact_synthetic__div__unique,axiom,
    ! [V_r,V_q,V_c,V_p,T_a] :
      ( class_Rings_Ocomm__semiring__0(T_a)
     => ( c_Groups_Oplus__class_Oplus(tc_Polynomial_Opoly(T_a),V_p,c_Polynomial_Osmult(T_a,V_c,V_q)) = c_Polynomial_OpCons(T_a,V_r,V_q)
       => ( hAPP(c_Polynomial_Opoly(T_a,V_p),V_c) = V_r
          & V_q = c_Polynomial_Osynthetic__div(T_a,V_p,V_c) ) ) ) ).

fof(fact_poly__0,axiom,
    ! [V_x,T_a] :
      ( c_Groups_Ozero__class_Ozero(T_a) = hAPP(c_Polynomial_Opoly(T_a,c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a))),V_x)
     <= class_Rings_Ocomm__semiring__0(T_a) ) ).

fof(fact_inf__period_I3_J,axiom,
    ! [V_t_2,V_D_2,V_d_2,T_a] :
      ( ( ! [B_x,B_k] :
            ( hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(T_a),V_d_2),c_Groups_Oplus__class_Oplus(T_a,B_x,V_t_2)))
          <=> hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(T_a),V_d_2),c_Groups_Oplus__class_Oplus(T_a,c_Groups_Ominus__class_Ominus(T_a,B_x,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),B_k),V_D_2)),V_t_2))) )
       <= hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(T_a),V_d_2),V_D_2)) )
     <= ( class_Rings_Ocomm__ring(T_a)
        & class_Rings_Odvd(T_a) ) ) ).

fof(fact_zmult__commute,axiom,
    ! [V_w,V_z] : hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_z),V_w) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_w),V_z) ).

fof(fact_less__SucI,axiom,
    ! [V_n,V_m] :
      ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_m,V_n)
     => c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_m,c_Nat_OSuc(V_n)) ) ).

fof(conj_0,conjecture,
    ( ( hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Polynomial_Opoly(tc_Complex_Ocomplex)),v_p),hAPP(hAPP(c_Power_Opower__class_Opower(tc_Polynomial_Opoly(tc_Complex_Ocomplex)),v_q),c_Polynomial_Odegree(tc_Complex_Ocomplex,v_p))))
      | ( v_q = c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(tc_Complex_Ocomplex))
        & c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(tc_Complex_Ocomplex)) = v_p ) )
  <=> ! [B_x] :
        ( c_Groups_Ozero__class_Ozero(tc_Complex_Ocomplex) = hAPP(c_Polynomial_Opoly(tc_Complex_Ocomplex,v_p),B_x)
       => hAPP(c_Polynomial_Opoly(tc_Complex_Ocomplex,v_q),B_x) = c_Groups_Ozero__class_Ozero(tc_Complex_Ocomplex) ) ) ).

fof(arity_Int__Oint__Groups_Oordered__ab__group__add,axiom,
    class_Groups_Oordered__ab__group__add(tc_Int_Oint) ).

fof(fact_monom__eq__0__iff,axiom,
    ! [V_na_2,V_a_2,T_a] :
      ( ( c_Groups_Ozero__class_Ozero(T_a) = V_a_2
      <=> c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a)) = c_Polynomial_Omonom(T_a,V_a_2,V_na_2) )
     <= class_Groups_Ozero(T_a) ) ).

fof(arity_Complex__Ocomplex__Groups_Ominus,axiom,
    class_Groups_Ominus(tc_Complex_Ocomplex) ).

fof(fact_poly__pcompose,axiom,
    ! [V_x,V_q,V_p,T_a] :
      ( hAPP(c_Polynomial_Opoly(T_a,V_p),hAPP(c_Polynomial_Opoly(T_a,V_q),V_x)) = hAPP(c_Polynomial_Opoly(T_a,c_Polynomial_Opcompose(T_a,V_p,V_q)),V_x)
     <= class_Rings_Ocomm__semiring__0(T_a) ) ).

fof(fact_le__antisym,axiom,
    ! [V_n,V_m] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m,V_n)
     => ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_n,V_m)
       => V_n = V_m ) ) ).

fof(arity_fun__Orderings_Opreorder,axiom,
    ! [T_2,T_1] :
      ( class_Orderings_Opreorder(tc_fun(T_2,T_1))
     <= class_Orderings_Opreorder(T_1) ) ).

fof(fact_le__cube,axiom,
    ! [V_m] : c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_m),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_m),V_m))) ).

fof(fact_linorder__neqE__nat,axiom,
    ! [V_y,V_x] :
      ( ( ~ c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_x,V_y)
       => c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_y,V_x) )
     <= V_y != V_x ) ).

fof(fact_leading__coeff__neq__0,axiom,
    ! [V_p,T_a] :
      ( ( c_Groups_Ozero__class_Ozero(T_a) != hAPP(c_Polynomial_Ocoeff(T_a,V_p),c_Polynomial_Odegree(T_a,V_p))
       <= V_p != c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a)) )
     <= class_Groups_Ozero(T_a) ) ).

fof(arity_Polynomial__Opoly__Groups_Oab__group__add,axiom,
    ! [T_1] :
      ( class_Groups_Oab__group__add(tc_Polynomial_Opoly(T_1))
     <= class_Groups_Oab__group__add(T_1) ) ).

fof(fact_linorder__le__less__linear,axiom,
    ! [V_y,V_x,T_a] :
      ( ( c_Orderings_Oord__class_Oless(T_a,V_y,V_x)
        | c_Orderings_Oord__class_Oless__eq(T_a,V_x,V_y) )
     <= class_Orderings_Olinorder(T_a) ) ).

fof(arity_Complex__Ocomplex__Rings_Oring__1,axiom,
    class_Rings_Oring__1(tc_Complex_Ocomplex) ).

fof(fact_equation__minus__iff,axiom,
    ! [V_b_2,V_a_2,T_a] :
      ( class_Groups_Ogroup__add(T_a)
     => ( c_Groups_Ouminus__class_Ouminus(T_a,V_a_2) = V_b_2
      <=> V_a_2 = c_Groups_Ouminus__class_Ouminus(T_a,V_b_2) ) ) ).

fof(fact_pos__le__divide__eq,axiom,
    ! [V_b_2,V_a_2,V_c_2,T_a] :
      ( ( ( c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a_2),V_c_2),V_b_2)
        <=> c_Orderings_Oord__class_Oless__eq(T_a,V_a_2,c_Rings_Oinverse__class_Odivide(T_a,V_b_2,V_c_2)) )
       <= c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_c_2) )
     <= class_Fields_Olinordered__field(T_a) ) ).

fof(fact_zadd__left__commute,axiom,
    ! [V_z,V_y,V_x] : c_Groups_Oplus__class_Oplus(tc_Int_Oint,V_x,c_Groups_Oplus__class_Oplus(tc_Int_Oint,V_y,V_z)) = c_Groups_Oplus__class_Oplus(tc_Int_Oint,V_y,c_Groups_Oplus__class_Oplus(tc_Int_Oint,V_x,V_z)) ).

fof(fact_linorder__antisym__conv2,axiom,
    ! [V_y_2,V_x_2,T_a] :
      ( class_Orderings_Olinorder(T_a)
     => ( ( V_y_2 = V_x_2
        <=> ~ c_Orderings_Oord__class_Oless(T_a,V_x_2,V_y_2) )
       <= c_Orderings_Oord__class_Oless__eq(T_a,V_x_2,V_y_2) ) ) ).

fof(arity_Complex__Ocomplex__Int_Oring__char__0,axiom,
    class_Int_Oring__char__0(tc_Complex_Ocomplex) ).

fof(fact_le__minus__iff,axiom,
    ! [V_b_2,V_a_2,T_a] :
      ( class_Groups_Oordered__ab__group__add(T_a)
     => ( c_Orderings_Oord__class_Oless__eq(T_a,V_a_2,c_Groups_Ouminus__class_Ouminus(T_a,V_b_2))
      <=> c_Orderings_Oord__class_Oless__eq(T_a,V_b_2,c_Groups_Ouminus__class_Ouminus(T_a,V_a_2)) ) ) ).

fof(fact_comm__semiring__1__class_Onormalizing__semiring__rules_I18_J,axiom,
    ! [V_ry,V_rx,V_lx,T_a] :
      ( hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_lx),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_rx),V_ry)) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_lx),V_rx)),V_ry)
     <= class_Rings_Ocomm__semiring__1(T_a) ) ).

fof(fact_order__less__le,axiom,
    ! [V_y_2,V_x_2,T_a] :
      ( class_Orderings_Oorder(T_a)
     => ( ( V_y_2 != V_x_2
          & c_Orderings_Oord__class_Oless__eq(T_a,V_x_2,V_y_2) )
      <=> c_Orderings_Oord__class_Oless(T_a,V_x_2,V_y_2) ) ) ).

fof(fact_divide__zero,axiom,
    ! [V_a,T_a] :
      ( class_Rings_Odivision__ring__inverse__zero(T_a)
     => c_Rings_Oinverse__class_Odivide(T_a,V_a,c_Groups_Ozero__class_Ozero(T_a)) = c_Groups_Ozero__class_Ozero(T_a) ) ).

fof(arity_Polynomial__Opoly__Orderings_Olinorder,axiom,
    ! [T_1] :
      ( class_Rings_Olinordered__idom(T_1)
     => class_Orderings_Olinorder(tc_Polynomial_Opoly(T_1)) ) ).

fof(fact_one__neq__zero,axiom,
    ! [T_a] :
      ( class_Rings_Ozero__neq__one(T_a)
     => c_Groups_Oone__class_Oone(T_a) != c_Groups_Ozero__class_Ozero(T_a) ) ).

fof(fact_divide__eq__eq,axiom,
    ! [V_a_2,V_c_2,V_b_2,T_a] :
      ( ( V_a_2 = c_Rings_Oinverse__class_Odivide(T_a,V_b_2,V_c_2)
      <=> ( ( c_Groups_Ozero__class_Ozero(T_a) != V_c_2
           => V_b_2 = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a_2),V_c_2) )
          & ( c_Groups_Ozero__class_Ozero(T_a) = V_a_2
           <= V_c_2 = c_Groups_Ozero__class_Ozero(T_a) ) ) )
     <= class_Fields_Ofield__inverse__zero(T_a) ) ).

fof(fact_comm__semiring__1__class_Onormalizing__semiring__rules_I24_J,axiom,
    ! [V_c,V_a,T_a] :
      ( c_Groups_Oplus__class_Oplus(T_a,V_c,V_a) = c_Groups_Oplus__class_Oplus(T_a,V_a,V_c)
     <= class_Rings_Ocomm__semiring__1(T_a) ) ).

fof(arity_Polynomial__Opoly__Rings_Ono__zero__divisors,axiom,
    ! [T_1] :
      ( class_Rings_Oidom(T_1)
     => class_Rings_Ono__zero__divisors(tc_Polynomial_Opoly(T_1)) ) ).

fof(arity_HOL__Obool__Orderings_Oorder,axiom,
    class_Orderings_Oorder(tc_HOL_Obool) ).

fof(arity_Nat__Onat__Rings_Olinordered__semiring__strict,axiom,
    class_Rings_Olinordered__semiring__strict(tc_Nat_Onat) ).

fof(fact_add_Ocomm__neutral,axiom,
    ! [V_a,T_a] :
      ( class_Groups_Ocomm__monoid__add(T_a)
     => V_a = c_Groups_Oplus__class_Oplus(T_a,V_a,c_Groups_Ozero__class_Ozero(T_a)) ) ).

fof(fact_mod__by__0,axiom,
    ! [V_a,T_a] :
      ( class_Divides_Osemiring__div(T_a)
     => V_a = c_Divides_Odiv__class_Omod(T_a,V_a,c_Groups_Ozero__class_Ozero(T_a)) ) ).

fof(fact_diff__Suc__1,axiom,
    ! [V_n] : V_n = c_Groups_Ominus__class_Ominus(tc_Nat_Onat,c_Nat_OSuc(V_n),c_Groups_Oone__class_Oone(tc_Nat_Onat)) ).

fof(fact_mult__1__right,axiom,
    ! [V_a,T_a] :
      ( V_a = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),c_Groups_Oone__class_Oone(T_a))
     <= class_Groups_Omonoid__mult(T_a) ) ).

fof(fact_dvd__imp__degree__le,axiom,
    ! [V_q,V_p,T_a] :
      ( class_Rings_Oidom(T_a)
     => ( hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Polynomial_Opoly(T_a)),V_p),V_q))
       => ( c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a)) != V_q
         => c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,c_Polynomial_Odegree(T_a,V_p),c_Polynomial_Odegree(T_a,V_q)) ) ) ) ).

fof(fact_nat__diff__split__asm,axiom,
    ! [V_b_2,V_a_2,V_P_2] :
      ( ~ ( ? [B_d] :
              ( V_a_2 = c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_b_2,B_d)
              & ~ hBOOL(hAPP(V_P_2,B_d)) )
          | ( ~ hBOOL(hAPP(V_P_2,c_Groups_Ozero__class_Ozero(tc_Nat_Onat)))
            & c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_a_2,V_b_2) ) )
    <=> hBOOL(hAPP(V_P_2,c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_a_2,V_b_2))) ) ).

fof(arity_Nat__Onat__Rings_Ocomm__semiring,axiom,
    class_Rings_Ocomm__semiring(tc_Nat_Onat) ).

fof(arity_Polynomial__Opoly__Groups_Oordered__ab__group__add,axiom,
    ! [T_1] :
      ( class_Rings_Olinordered__idom(T_1)
     => class_Groups_Oordered__ab__group__add(tc_Polynomial_Opoly(T_1)) ) ).

fof(fact_comm__semiring__1__class_Onormalizing__semiring__rules_I5_J,axiom,
    ! [V_a,T_a] :
      ( class_Rings_Ocomm__semiring__1(T_a)
     => c_Groups_Oplus__class_Oplus(T_a,c_Groups_Ozero__class_Ozero(T_a),V_a) = V_a ) ).

fof(arity_Polynomial__Opoly__Rings_Ocomm__semiring__0,axiom,
    ! [T_1] :
      ( class_Rings_Ocomm__semiring__0(tc_Polynomial_Opoly(T_1))
     <= class_Rings_Ocomm__semiring__0(T_1) ) ).

fof(fact_mult__nonneg__nonpos2,axiom,
    ! [V_b,V_a,T_a] :
      ( class_Rings_Oordered__cancel__semiring(T_a)
     => ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_b,c_Groups_Ozero__class_Ozero(T_a))
         => c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b),V_a),c_Groups_Ozero__class_Ozero(T_a)) )
       <= c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_a) ) ) ).

fof(fact_minus__mult__right,axiom,
    ! [V_b,V_a,T_a] :
      ( class_Rings_Oring(T_a)
     => hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),c_Groups_Ouminus__class_Ouminus(T_a,V_b)) = c_Groups_Ouminus__class_Ouminus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b)) ) ).

fof(fact_eq__imp__le,axiom,
    ! [V_n,V_m] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m,V_n)
     <= V_m = V_n ) ).

fof(fact_zero__neq__one,axiom,
    ! [T_a] :
      ( c_Groups_Oone__class_Oone(T_a) != c_Groups_Ozero__class_Ozero(T_a)
     <= class_Rings_Ozero__neq__one(T_a) ) ).

fof(fact_xt1_I8_J,axiom,
    ! [V_z,V_x,V_y,T_a] :
      ( ( ( c_Orderings_Oord__class_Oless(T_a,V_z,V_y)
         => c_Orderings_Oord__class_Oless(T_a,V_z,V_x) )
       <= c_Orderings_Oord__class_Oless__eq(T_a,V_y,V_x) )
     <= class_Orderings_Oorder(T_a) ) ).

fof(fact_monom__eq__iff,axiom,
    ! [V_b_2,V_na_2,V_a_2,T_a] :
      ( class_Groups_Ozero(T_a)
     => ( V_a_2 = V_b_2
      <=> c_Polynomial_Omonom(T_a,V_b_2,V_na_2) = c_Polynomial_Omonom(T_a,V_a_2,V_na_2) ) ) ).

fof(arity_Complex__Ocomplex__Rings_Odivision__ring,axiom,
    class_Rings_Odivision__ring(tc_Complex_Ocomplex) ).

fof(fact_eq__iff__diff__eq__0,axiom,
    ! [V_b_2,V_a_2,T_a] :
      ( ( c_Groups_Ominus__class_Ominus(T_a,V_a_2,V_b_2) = c_Groups_Ozero__class_Ozero(T_a)
      <=> V_b_2 = V_a_2 )
     <= class_Groups_Oab__group__add(T_a) ) ).

fof(fact_mult__right__mono__neg,axiom,
    ! [V_c,V_a,V_b,T_a] :
      ( class_Rings_Oordered__ring(T_a)
     => ( ( c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_c),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b),V_c))
         <= c_Orderings_Oord__class_Oless__eq(T_a,V_c,c_Groups_Ozero__class_Ozero(T_a)) )
       <= c_Orderings_Oord__class_Oless__eq(T_a,V_b,V_a) ) ) ).

fof(arity_Int__Oint__Groups_Omonoid__add,axiom,
    class_Groups_Omonoid__add(tc_Int_Oint) ).

fof(fact_lemma__realpow__diff,axiom,
    ! [V_y,V_n,V_p,T_a] :
      ( ( hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_y),c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_n,V_p))),V_y) = hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_y),c_Groups_Ominus__class_Ominus(tc_Nat_Onat,c_Nat_OSuc(V_n),V_p))
       <= c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_p,V_n) )
     <= class_Groups_Omonoid__mult(T_a) ) ).

fof(arity_Polynomial__Opoly__Orderings_Oorder,axiom,
    ! [T_1] :
      ( class_Rings_Olinordered__idom(T_1)
     => class_Orderings_Oorder(tc_Polynomial_Opoly(T_1)) ) ).

fof(fact_dvd_Oord__eq__less__trans,axiom,
    ! [V_c,V_b,V_a] :
      ( ( ( ~ hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Nat_Onat),V_c),V_a))
          & hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Nat_Onat),V_a),V_c)) )
       <= ( ~ hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Nat_Onat),V_c),V_b))
          & hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Nat_Onat),V_b),V_c)) ) )
     <= V_a = V_b ) ).

fof(fact_minus__le__iff,axiom,
    ! [V_b_2,V_a_2,T_a] :
      ( ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ouminus__class_Ouminus(T_a,V_a_2),V_b_2)
      <=> c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ouminus__class_Ouminus(T_a,V_b_2),V_a_2) )
     <= class_Groups_Oordered__ab__group__add(T_a) ) ).

fof(arity_Int__Oint__Rings_Oring__1,axiom,
    class_Rings_Oring__1(tc_Int_Oint) ).

fof(fact_expand__poly__eq,axiom,
    ! [V_qa_2,V_pa_2,T_a] :
      ( ( ! [B_n] : hAPP(c_Polynomial_Ocoeff(T_a,V_pa_2),B_n) = hAPP(c_Polynomial_Ocoeff(T_a,V_qa_2),B_n)
      <=> V_pa_2 = V_qa_2 )
     <= class_Groups_Ozero(T_a) ) ).

fof(help_c__fequal__1,axiom,
    ! [V_y_2,V_x_2] :
      ( V_y_2 = V_x_2
      | ~ hBOOL(c_fequal(V_x_2,V_y_2)) ) ).

fof(fact_diff__minus__eq__add,axiom,
    ! [V_b,V_a,T_a] :
      ( class_Groups_Ogroup__add(T_a)
     => c_Groups_Ominus__class_Ominus(T_a,V_a,c_Groups_Ouminus__class_Ouminus(T_a,V_b)) = c_Groups_Oplus__class_Oplus(T_a,V_a,V_b) ) ).

fof(fact_dvd_Oless__imp__le,axiom,
    ! [V_y,V_x] :
      ( hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Nat_Onat),V_x),V_y))
     <= ( hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Nat_Onat),V_x),V_y))
        & ~ hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Nat_Onat),V_y),V_x)) ) ) ).

fof(fact_even__less__0__iff,axiom,
    ! [V_a_2,T_a] :
      ( ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Oplus__class_Oplus(T_a,V_a_2,V_a_2),c_Groups_Ozero__class_Ozero(T_a))
      <=> c_Orderings_Oord__class_Oless(T_a,V_a_2,c_Groups_Ozero__class_Ozero(T_a)) )
     <= class_Rings_Olinordered__idom(T_a) ) ).

fof(fact_dvd__mult__cancel,axiom,
    ! [V_n,V_m,V_k] :
      ( ( hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Nat_Onat),V_m),V_n))
       <= c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_k) )
     <= hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Nat_Onat),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_k),V_m)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_k),V_n))) ) ).

fof(fact_neg__less__0__iff__less,axiom,
    ! [V_a_2,T_a] :
      ( class_Groups_Oordered__ab__group__add(T_a)
     => ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Ouminus__class_Ouminus(T_a,V_a_2),c_Groups_Ozero__class_Ozero(T_a))
      <=> c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_a_2) ) ) ).

fof(arity_Polynomial__Opoly__Rings_Oordered__ring,axiom,
    ! [T_1] :
      ( class_Rings_Olinordered__idom(T_1)
     => class_Rings_Oordered__ring(tc_Polynomial_Opoly(T_1)) ) ).

fof(fact_add__strict__increasing,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( class_Groups_Oordered__comm__monoid__add(T_a)
     => ( ( c_Orderings_Oord__class_Oless(T_a,V_b,c_Groups_Oplus__class_Oplus(T_a,V_a,V_c))
         <= c_Orderings_Oord__class_Oless__eq(T_a,V_b,V_c) )
       <= c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_a) ) ) ).

fof(arity_Polynomial__Opoly__Orderings_Opreorder,axiom,
    ! [T_1] :
      ( class_Rings_Olinordered__idom(T_1)
     => class_Orderings_Opreorder(tc_Polynomial_Opoly(T_1)) ) ).

fof(fact_le__add__diff__inverse,axiom,
    ! [V_m,V_n] :
      ( c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_n,c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_m,V_n)) = V_m
     <= c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_n,V_m) ) ).

fof(fact_diff__mult__distrib,axiom,
    ! [V_k,V_n,V_m] : c_Groups_Ominus__class_Ominus(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_m),V_k),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_n),V_k)) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_m,V_n)),V_k) ).

fof(fact_add__neg__neg,axiom,
    ! [V_b,V_a,T_a] :
      ( class_Groups_Oordered__comm__monoid__add(T_a)
     => ( ( c_Orderings_Oord__class_Oless(T_a,V_b,c_Groups_Ozero__class_Ozero(T_a))
         => c_Orderings_Oord__class_Oless(T_a,c_Groups_Oplus__class_Oplus(T_a,V_a,V_b),c_Groups_Ozero__class_Ozero(T_a)) )
       <= c_Orderings_Oord__class_Oless(T_a,V_a,c_Groups_Ozero__class_Ozero(T_a)) ) ) ).

fof(fact_le__neq__implies__less,axiom,
    ! [V_n,V_m] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m,V_n)
     => ( V_m != V_n
       => c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_m,V_n) ) ) ).

fof(fact_nat__one__le__power,axiom,
    ! [V_n,V_i] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,c_Nat_OSuc(c_Groups_Ozero__class_Ozero(tc_Nat_Onat)),hAPP(hAPP(c_Power_Opower__class_Opower(tc_Nat_Onat),V_i),V_n))
     <= c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,c_Nat_OSuc(c_Groups_Ozero__class_Ozero(tc_Nat_Onat)),V_i) ) ).

fof(fact_poly__eq__iff,axiom,
    ! [V_qa_2,V_pa_2,T_a] :
      ( ( c_Polynomial_Opoly(T_a,V_pa_2) = c_Polynomial_Opoly(T_a,V_qa_2)
      <=> V_qa_2 = V_pa_2 )
     <= ( class_Rings_Oidom(T_a)
        & class_Int_Oring__char__0(T_a) ) ) ).

fof(fact_degree__smult__eq,axiom,
    ! [V_p,V_a,T_a] :
      ( class_Rings_Oidom(T_a)
     => ( ( c_Polynomial_Odegree(T_a,V_p) = c_Polynomial_Odegree(T_a,c_Polynomial_Osmult(T_a,V_a,V_p))
         <= V_a != c_Groups_Ozero__class_Ozero(T_a) )
        & ( c_Polynomial_Odegree(T_a,c_Polynomial_Osmult(T_a,V_a,V_p)) = c_Groups_Ozero__class_Ozero(tc_Nat_Onat)
         <= V_a = c_Groups_Ozero__class_Ozero(T_a) ) ) ) ).

fof(fact_self__quotient__aux2,axiom,
    ! [V_q,V_r,V_a] :
      ( c_Orderings_Oord__class_Oless(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_a)
     => ( V_a = c_Groups_Oplus__class_Oplus(tc_Int_Oint,V_r,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_a),V_q))
       => ( c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,V_q,c_Groups_Oone__class_Oone(tc_Int_Oint))
         <= c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_r) ) ) ) ).

fof(fact_frac__le,axiom,
    ! [V_z,V_w,V_y,V_x,T_a] :
      ( class_Fields_Olinordered__field(T_a)
     => ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_x,V_y)
         => ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_w,V_z)
             => c_Orderings_Oord__class_Oless__eq(T_a,c_Rings_Oinverse__class_Odivide(T_a,V_x,V_z),c_Rings_Oinverse__class_Odivide(T_a,V_y,V_w)) )
           <= c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_w) ) )
       <= c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_x) ) ) ).

fof(arity_Polynomial__Opoly__Groups_Olinordered__ab__group__add,axiom,
    ! [T_1] :
      ( class_Groups_Olinordered__ab__group__add(tc_Polynomial_Opoly(T_1))
     <= class_Rings_Olinordered__idom(T_1) ) ).

fof(fact_poly__1,axiom,
    ! [V_x,T_a] :
      ( class_Rings_Ocomm__semiring__1(T_a)
     => hAPP(c_Polynomial_Opoly(T_a,c_Groups_Oone__class_Oone(tc_Polynomial_Opoly(T_a))),V_x) = c_Groups_Oone__class_Oone(T_a) ) ).

fof(fact_dvd__diffD1,axiom,
    ! [V_n,V_m,V_k] :
      ( hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Nat_Onat),V_k),c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_m,V_n)))
     => ( hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Nat_Onat),V_k),V_m))
       => ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_n,V_m)
         => hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Nat_Onat),V_k),V_n)) ) ) ) ).

fof(fact_int__0__neq__1,axiom,
    c_Groups_Oone__class_Oone(tc_Int_Oint) != c_Groups_Ozero__class_Ozero(tc_Int_Oint) ).

fof(fact_Suc__pred,axiom,
    ! [V_n] :
      ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_n)
     => c_Nat_OSuc(c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_n,c_Nat_OSuc(c_Groups_Ozero__class_Ozero(tc_Nat_Onat)))) = V_n ) ).

fof(fact_add__less__imp__less__left,axiom,
    ! [V_b,V_a,V_c,T_a] :
      ( class_Groups_Oordered__ab__semigroup__add__imp__le(T_a)
     => ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Oplus__class_Oplus(T_a,V_c,V_a),c_Groups_Oplus__class_Oplus(T_a,V_c,V_b))
       => c_Orderings_Oord__class_Oless(T_a,V_a,V_b) ) ) ).

fof(arity_Nat__Onat__Groups_Oordered__cancel__ab__semigroup__add,axiom,
    class_Groups_Oordered__cancel__ab__semigroup__add(tc_Nat_Onat) ).

fof(fact_divide__strict__left__mono__neg,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( ( ( c_Orderings_Oord__class_Oless(T_a,V_c,c_Groups_Ozero__class_Ozero(T_a))
         => ( c_Orderings_Oord__class_Oless(T_a,c_Rings_Oinverse__class_Odivide(T_a,V_c,V_a),c_Rings_Oinverse__class_Odivide(T_a,V_c,V_b))
           <= c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b)) ) )
       <= c_Orderings_Oord__class_Oless(T_a,V_a,V_b) )
     <= class_Fields_Olinordered__field(T_a) ) ).

fof(fact_not__add__less2,axiom,
    ! [V_i,V_j] : ~ c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_j,V_i),V_i) ).

fof(fact_mult__right_Ozero,axiom,
    ! [V_x,T_a] :
      ( class_RealVector_Oreal__normed__algebra(T_a)
     => c_Groups_Ozero__class_Ozero(T_a) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_x),c_Groups_Ozero__class_Ozero(T_a)) ) ).

fof(arity_Nat__Onat__Semiring__Normalization_Ocomm__semiring__1__cancel__crossproduct,axiom,
    class_Semiring__Normalization_Ocomm__semiring__1__cancel__crossproduct(tc_Nat_Onat) ).

fof(fact_n__less__n__mult__m,axiom,
    ! [V_m,V_n] :
      ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Nat_OSuc(c_Groups_Ozero__class_Ozero(tc_Nat_Onat)),V_n)
     => ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_n,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_n),V_m))
       <= c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Nat_OSuc(c_Groups_Ozero__class_Ozero(tc_Nat_Onat)),V_m) ) ) ).

fof(fact_pdivmod__rel__by__0__iff,axiom,
    ! [V_r_2,V_qa_2,V_x_2,T_a] :
      ( class_Fields_Ofield(T_a)
     => ( ( V_r_2 = V_x_2
          & c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a)) = V_qa_2 )
      <=> c_Polynomial_Opdivmod__rel(T_a,V_x_2,c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a)),V_qa_2,V_r_2) ) ) ).

fof(fact_less__eq__poly__def,axiom,
    ! [V_y_2,V_x_2,T_a] :
      ( ( c_Orderings_Oord__class_Oless__eq(tc_Polynomial_Opoly(T_a),V_x_2,V_y_2)
      <=> ( c_Polynomial_Opos__poly(T_a,c_Groups_Ominus__class_Ominus(tc_Polynomial_Opoly(T_a),V_y_2,V_x_2))
          | V_y_2 = V_x_2 ) )
     <= class_Rings_Olinordered__idom(T_a) ) ).

fof(arity_Int__Oint__Orderings_Oorder,axiom,
    class_Orderings_Oorder(tc_Int_Oint) ).

fof(fact_comm__semiring__1__class_Onormalizing__semiring__rules_I6_J,axiom,
    ! [V_a,T_a] :
      ( V_a = c_Groups_Oplus__class_Oplus(T_a,V_a,c_Groups_Ozero__class_Ozero(T_a))
     <= class_Rings_Ocomm__semiring__1(T_a) ) ).

fof(fact_mult__less__cancel2,axiom,
    ! [V_na_2,V_k_2,V_m_2] :
      ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_m_2),V_k_2),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_na_2),V_k_2))
    <=> ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_m_2,V_na_2)
        & c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_k_2) ) ) ).

fof(fact_Suc__mult__le__cancel1,axiom,
    ! [V_na_2,V_m_2,V_k_2] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m_2,V_na_2)
    <=> c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),c_Nat_OSuc(V_k_2)),V_m_2),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),c_Nat_OSuc(V_k_2)),V_na_2)) ) ).

fof(fact_le__add2,axiom,
    ! [V_m,V_n] : c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_n,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_m,V_n)) ).

fof(arity_Polynomial__Opoly__Orderings_Oord,axiom,
    ! [T_1] :
      ( class_Orderings_Oord(tc_Polynomial_Opoly(T_1))
     <= class_Rings_Olinordered__idom(T_1) ) ).

fof(arity_Polynomial__Opoly__Groups_Ocomm__monoid__add,axiom,
    ! [T_1] :
      ( class_Groups_Ocomm__monoid__add(tc_Polynomial_Opoly(T_1))
     <= class_Groups_Ocomm__monoid__add(T_1) ) ).

fof(arity_Int__Oint__Orderings_Opreorder,axiom,
    class_Orderings_Opreorder(tc_Int_Oint) ).

fof(fact_divide_Ozero,axiom,
    ! [V_y,T_a] :
      ( class_RealVector_Oreal__normed__field(T_a)
     => c_Groups_Ozero__class_Ozero(T_a) = c_Rings_Oinverse__class_Odivide(T_a,c_Groups_Ozero__class_Ozero(T_a),V_y) ) ).

fof(fact_diff__cancel,axiom,
    ! [V_n,V_m,V_k] : c_Groups_Ominus__class_Ominus(tc_Nat_Onat,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_k,V_m),c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_k,V_n)) = c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_m,V_n) ).

fof(fact_mult__le__mono2,axiom,
    ! [V_k,V_j,V_i] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_k),V_i),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_k),V_j))
     <= c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_i,V_j) ) ).

fof(fact_power__Suc__0,axiom,
    ! [V_n] : hAPP(hAPP(c_Power_Opower__class_Opower(tc_Nat_Onat),c_Nat_OSuc(c_Groups_Ozero__class_Ozero(tc_Nat_Onat))),V_n) = c_Nat_OSuc(c_Groups_Ozero__class_Ozero(tc_Nat_Onat)) ).

fof(fact_add__lessD1,axiom,
    ! [V_k,V_j,V_i] :
      ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_i,V_j),V_k)
     => c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_i,V_k) ) ).

fof(fact_not__add__less1,axiom,
    ! [V_j,V_i] : ~ c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_i,V_j),V_i) ).

fof(fact_zero__less__divide__iff,axiom,
    ! [V_b_2,V_a_2,T_a] :
      ( class_Fields_Olinordered__field__inverse__zero(T_a)
     => ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),c_Rings_Oinverse__class_Odivide(T_a,V_a_2,V_b_2))
      <=> ( ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_b_2)
            & c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_a_2) )
          | ( c_Orderings_Oord__class_Oless(T_a,V_b_2,c_Groups_Ozero__class_Ozero(T_a))
            & c_Orderings_Oord__class_Oless(T_a,V_a_2,c_Groups_Ozero__class_Ozero(T_a)) ) ) ) ) ).

fof(fact_mult__less__cancel__left__pos,axiom,
    ! [V_b_2,V_a_2,V_c_2,T_a] :
      ( ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_c_2)
       => ( c_Orderings_Oord__class_Oless(T_a,V_a_2,V_b_2)
        <=> c_Orderings_Oord__class_Oless(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_c_2),V_a_2),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_c_2),V_b_2)) ) )
     <= class_Rings_Olinordered__ring__strict(T_a) ) ).

fof(fact_le__add__iff2,axiom,
    ! [V_d_2,V_b_2,V_c_2,V_e_2,V_a_2,T_a] :
      ( ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a_2),V_e_2),V_c_2),c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b_2),V_e_2),V_d_2))
      <=> c_Orderings_Oord__class_Oless__eq(T_a,V_c_2,c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Groups_Ominus__class_Ominus(T_a,V_b_2,V_a_2)),V_e_2),V_d_2)) )
     <= class_Rings_Oordered__ring(T_a) ) ).

fof(fact_less__add__one,axiom,
    ! [V_a,T_a] :
      ( c_Orderings_Oord__class_Oless(T_a,V_a,c_Groups_Oplus__class_Oplus(T_a,V_a,c_Groups_Oone__class_Oone(T_a)))
     <= class_Rings_Olinordered__semidom(T_a) ) ).

fof(fact_xt1_I1_J,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( class_Orderings_Oorder(T_a)
     => ( ( c_Orderings_Oord__class_Oless(T_a,V_c,V_b)
         => c_Orderings_Oord__class_Oless(T_a,V_c,V_a) )
       <= V_b = V_a ) ) ).

fof(fact_synthetic__div__correct_H,axiom,
    ! [V_p,V_c,T_a] :
      ( class_Rings_Ocomm__ring__1(T_a)
     => V_p = c_Groups_Oplus__class_Oplus(tc_Polynomial_Opoly(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Polynomial_Opoly(T_a)),c_Polynomial_OpCons(T_a,c_Groups_Ouminus__class_Ouminus(T_a,V_c),c_Polynomial_OpCons(T_a,c_Groups_Oone__class_Oone(T_a),c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a))))),c_Polynomial_Osynthetic__div(T_a,V_p,V_c)),c_Polynomial_OpCons(T_a,hAPP(c_Polynomial_Opoly(T_a,V_p),V_c),c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a)))) ) ).

fof(fact_mult__le__mono,axiom,
    ! [V_l,V_k,V_j,V_i] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_i,V_j)
     => ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_i),V_k),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_j),V_l))
       <= c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_k,V_l) ) ) ).

fof(arity_Int__Oint__Groups_Oab__semigroup__add,axiom,
    class_Groups_Oab__semigroup__add(tc_Int_Oint) ).

fof(fact_less__Suc0,axiom,
    ! [V_na_2] :
      ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_na_2,c_Nat_OSuc(c_Groups_Ozero__class_Ozero(tc_Nat_Onat)))
    <=> c_Groups_Ozero__class_Ozero(tc_Nat_Onat) = V_na_2 ) ).

fof(fact_order__eq__iff,axiom,
    ! [V_y_2,V_x_2,T_a] :
      ( class_Orderings_Oorder(T_a)
     => ( V_y_2 = V_x_2
      <=> ( c_Orderings_Oord__class_Oless__eq(T_a,V_y_2,V_x_2)
          & c_Orderings_Oord__class_Oless__eq(T_a,V_x_2,V_y_2) ) ) ) ).

fof(fact_order__less__imp__le,axiom,
    ! [V_y,V_x,T_a] :
      ( class_Orderings_Opreorder(T_a)
     => ( c_Orderings_Oord__class_Oless(T_a,V_x,V_y)
       => c_Orderings_Oord__class_Oless__eq(T_a,V_x,V_y) ) ) ).

fof(fact_nat__add__left__cancel,axiom,
    ! [V_na_2,V_m_2,V_k_2] :
      ( c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_k_2,V_m_2) = c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_k_2,V_na_2)
    <=> V_m_2 = V_na_2 ) ).

fof(fact_add__is__1,axiom,
    ! [V_na_2,V_m_2] :
      ( c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_m_2,V_na_2) = c_Nat_OSuc(c_Groups_Ozero__class_Ozero(tc_Nat_Onat))
    <=> ( ( c_Nat_OSuc(c_Groups_Ozero__class_Ozero(tc_Nat_Onat)) = V_m_2
          & c_Groups_Ozero__class_Ozero(tc_Nat_Onat) = V_na_2 )
        | ( V_m_2 = c_Groups_Ozero__class_Ozero(tc_Nat_Onat)
          & c_Nat_OSuc(c_Groups_Ozero__class_Ozero(tc_Nat_Onat)) = V_na_2 ) ) ) ).

fof(fact_nullstellensatz__lemma,axiom,
    ! [V_n,V_q,V_p] :
      ( ! [B_x] :
          ( hAPP(c_Polynomial_Opoly(tc_Complex_Ocomplex,V_q),B_x) = c_Groups_Ozero__class_Ozero(tc_Complex_Ocomplex)
         <= hAPP(c_Polynomial_Opoly(tc_Complex_Ocomplex,V_p),B_x) = c_Groups_Ozero__class_Ozero(tc_Complex_Ocomplex) )
     => ( ( hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Polynomial_Opoly(tc_Complex_Ocomplex)),V_p),hAPP(hAPP(c_Power_Opower__class_Opower(tc_Polynomial_Opoly(tc_Complex_Ocomplex)),V_q),V_n)))
         <= V_n != c_Groups_Ozero__class_Ozero(tc_Nat_Onat) )
       <= V_n = c_Polynomial_Odegree(tc_Complex_Ocomplex,V_p) ) ) ).

fof(fact_dvd_OmonoD,axiom,
    ! [V_y_2,V_x_2,V_f_2,T_a] :
      ( class_Orderings_Oorder(T_a)
     => ( ( c_Orderings_Oord__class_Oless__eq(T_a,hAPP(V_f_2,V_x_2),hAPP(V_f_2,V_y_2))
         <= hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Nat_Onat),V_x_2),V_y_2)) )
       <= c_Orderings_Oorder_Omono(tc_Nat_Onat,T_a,c_Rings_Odvd__class_Odvd(tc_Nat_Onat),V_f_2) ) ) ).

fof(fact_power__mult__distrib,axiom,
    ! [V_n,V_b,V_a,T_a] :
      ( hAPP(hAPP(c_Power_Opower__class_Opower(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b)),V_n) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_n)),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_b),V_n))
     <= class_Groups_Ocomm__monoid__mult(T_a) ) ).

fof(fact_diff__int__def,axiom,
    ! [V_w,V_z] : c_Groups_Oplus__class_Oplus(tc_Int_Oint,V_z,c_Groups_Ouminus__class_Ouminus(tc_Int_Oint,V_w)) = c_Groups_Ominus__class_Ominus(tc_Int_Oint,V_z,V_w) ).

fof(fact_mult_Oprod__diff__prod,axiom,
    ! [V_b,V_a,V_y,V_x,T_a] :
      ( c_Groups_Oplus__class_Oplus(T_a,c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Groups_Ominus__class_Ominus(T_a,V_x,V_a)),c_Groups_Ominus__class_Ominus(T_a,V_y,V_b)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Groups_Ominus__class_Ominus(T_a,V_x,V_a)),V_b)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),c_Groups_Ominus__class_Ominus(T_a,V_y,V_b))) = c_Groups_Ominus__class_Ominus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_x),V_y),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b))
     <= class_RealVector_Oreal__normed__algebra(T_a) ) ).

fof(fact_add__Suc__right,axiom,
    ! [V_n,V_m] : c_Nat_OSuc(c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_m,V_n)) = c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_m,c_Nat_OSuc(V_n)) ).

fof(fact_power__mult,axiom,
    ! [V_n,V_m,V_a,T_a] :
      ( hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_m),V_n)) = hAPP(hAPP(c_Power_Opower__class_Opower(T_a),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_m)),V_n)
     <= class_Groups_Omonoid__mult(T_a) ) ).

fof(fact_Suc__less__SucD,axiom,
    ! [V_n,V_m] :
      ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_m,V_n)
     <= c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Nat_OSuc(V_m),c_Nat_OSuc(V_n)) ) ).

fof(fact_poly__offset__poly,axiom,
    ! [V_x,V_h,V_p,T_a] :
      ( hAPP(c_Polynomial_Opoly(T_a,c_Fundamental__Theorem__Algebra__Mirabelle_Ooffset__poly(T_a,V_p,V_h)),V_x) = hAPP(c_Polynomial_Opoly(T_a,V_p),c_Groups_Oplus__class_Oplus(T_a,V_h,V_x))
     <= class_Rings_Ocomm__semiring__0(T_a) ) ).

fof(fact_divide__nonneg__pos,axiom,
    ! [V_y,V_x,T_a] :
      ( class_Fields_Olinordered__field(T_a)
     => ( ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),c_Rings_Oinverse__class_Odivide(T_a,V_x,V_y))
         <= c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_y) )
       <= c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_x) ) ) ).

fof(fact_zless__le,axiom,
    ! [V_w_2,V_z_2] :
      ( ( V_z_2 != V_w_2
        & c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,V_z_2,V_w_2) )
    <=> c_Orderings_Oord__class_Oless(tc_Int_Oint,V_z_2,V_w_2) ) ).

fof(fact_less__fun__def,axiom,
    ! [V_g_2,V_f_2,T_a,T_b] :
      ( ( c_Orderings_Oord__class_Oless(tc_fun(T_a,T_b),V_f_2,V_g_2)
      <=> ( c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,T_b),V_f_2,V_g_2)
          & ~ c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,T_b),V_g_2,V_f_2) ) )
     <= class_Orderings_Oord(T_b) ) ).

fof(arity_Polynomial__Opoly__Groups_Oordered__comm__monoid__add,axiom,
    ! [T_1] :
      ( class_Rings_Olinordered__idom(T_1)
     => class_Groups_Oordered__comm__monoid__add(tc_Polynomial_Opoly(T_1)) ) ).

fof(arity_Polynomial__Opoly__Power_Opower,axiom,
    ! [T_1] :
      ( class_Rings_Ocomm__semiring__1(T_1)
     => class_Power_Opower(tc_Polynomial_Opoly(T_1)) ) ).

fof(fact_mult__eq__if,axiom,
    ! [V_n,V_m] :
      ( ( V_m != c_Groups_Ozero__class_Ozero(tc_Nat_Onat)
       => hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_m),V_n) = c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_n,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_m,c_Groups_Oone__class_Oone(tc_Nat_Onat))),V_n)) )
      & ( c_Groups_Ozero__class_Ozero(tc_Nat_Onat) = V_m
       => c_Groups_Ozero__class_Ozero(tc_Nat_Onat) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_m),V_n) ) ) ).

fof(fact_power__strict__decreasing,axiom,
    ! [V_a,V_N,V_n,T_a] :
      ( ( ( ( c_Orderings_Oord__class_Oless(T_a,hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_N),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_n))
           <= c_Orderings_Oord__class_Oless(T_a,V_a,c_Groups_Oone__class_Oone(T_a)) )
         <= c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_a) )
       <= c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_n,V_N) )
     <= class_Rings_Olinordered__semidom(T_a) ) ).

fof(fact_divide_Ominus,axiom,
    ! [V_y,V_x,T_a] :
      ( c_Rings_Oinverse__class_Odivide(T_a,c_Groups_Ouminus__class_Ouminus(T_a,V_x),V_y) = c_Groups_Ouminus__class_Ouminus(T_a,c_Rings_Oinverse__class_Odivide(T_a,V_x,V_y))
     <= class_RealVector_Oreal__normed__field(T_a) ) ).

fof(fact_mult__le__0__iff,axiom,
    ! [V_b_2,V_a_2,T_a] :
      ( ( c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a_2),V_b_2),c_Groups_Ozero__class_Ozero(T_a))
      <=> ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_a_2,c_Groups_Ozero__class_Ozero(T_a))
            & c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_b_2) )
          | ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_a_2)
            & c_Orderings_Oord__class_Oless__eq(T_a,V_b_2,c_Groups_Ozero__class_Ozero(T_a)) ) ) )
     <= class_Rings_Olinordered__ring__strict(T_a) ) ).

fof(fact_nonzero__divide__eq__eq,axiom,
    ! [V_a_2,V_b_2,V_c_2,T_a] :
      ( ( c_Groups_Ozero__class_Ozero(T_a) != V_c_2
       => ( V_a_2 = c_Rings_Oinverse__class_Odivide(T_a,V_b_2,V_c_2)
        <=> hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a_2),V_c_2) = V_b_2 ) )
     <= class_Rings_Odivision__ring(T_a) ) ).

fof(fact_less__le__not__le,axiom,
    ! [V_y_2,V_x_2,T_a] :
      ( ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_x_2,V_y_2)
          & ~ c_Orderings_Oord__class_Oless__eq(T_a,V_y_2,V_x_2) )
      <=> c_Orderings_Oord__class_Oless(T_a,V_x_2,V_y_2) )
     <= class_Orderings_Opreorder(T_a) ) ).

fof(arity_Complex__Ocomplex__Groups_Oab__group__add,axiom,
    class_Groups_Oab__group__add(tc_Complex_Ocomplex) ).

fof(fact_dvd_Oneq__le__trans,axiom,
    ! [V_b,V_a] :
      ( V_a != V_b
     => ( ( ~ hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Nat_Onat),V_b),V_a))
          & hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Nat_Onat),V_a),V_b)) )
       <= hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Nat_Onat),V_a),V_b)) ) ) ).

fof(fact_gt__half__sum,axiom,
    ! [V_b,V_a,T_a] :
      ( class_Fields_Olinordered__field(T_a)
     => ( c_Orderings_Oord__class_Oless(T_a,V_a,V_b)
       => c_Orderings_Oord__class_Oless(T_a,c_Rings_Oinverse__class_Odivide(T_a,c_Groups_Oplus__class_Oplus(T_a,V_a,V_b),c_Groups_Oplus__class_Oplus(T_a,c_Groups_Oone__class_Oone(T_a),c_Groups_Oone__class_Oone(T_a))),V_b) ) ) ).

fof(fact_mult__less__cancel__left__disj,axiom,
    ! [V_b_2,V_a_2,V_c_2,T_a] :
      ( ( ( ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_c_2)
            & c_Orderings_Oord__class_Oless(T_a,V_a_2,V_b_2) )
          | ( c_Orderings_Oord__class_Oless(T_a,V_c_2,c_Groups_Ozero__class_Ozero(T_a))
            & c_Orderings_Oord__class_Oless(T_a,V_b_2,V_a_2) ) )
      <=> c_Orderings_Oord__class_Oless(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_c_2),V_a_2),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_c_2),V_b_2)) )
     <= class_Rings_Olinordered__ring__strict(T_a) ) ).

fof(fact_neg__0__le__iff__le,axiom,
    ! [V_a_2,T_a] :
      ( class_Groups_Oordered__ab__group__add(T_a)
     => ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),c_Groups_Ouminus__class_Ouminus(T_a,V_a_2))
      <=> c_Orderings_Oord__class_Oless__eq(T_a,V_a_2,c_Groups_Ozero__class_Ozero(T_a)) ) ) ).

fof(fact_mult__zero__right,axiom,
    ! [V_a,T_a] :
      ( hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),c_Groups_Ozero__class_Ozero(T_a)) = c_Groups_Ozero__class_Ozero(T_a)
     <= class_Rings_Omult__zero(T_a) ) ).

fof(fact_dvd_Oorder__refl,axiom,
    ! [V_x] : hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Nat_Onat),V_x),V_x)) ).

fof(fact_equal__neg__zero,axiom,
    ! [V_a_2,T_a] :
      ( class_Groups_Olinordered__ab__group__add(T_a)
     => ( c_Groups_Ozero__class_Ozero(T_a) = V_a_2
      <=> V_a_2 = c_Groups_Ouminus__class_Ouminus(T_a,V_a_2) ) ) ).

fof(fact_comm__semiring__1__class_Onormalizing__semiring__rules_I4_J,axiom,
    ! [V_m,T_a] :
      ( c_Groups_Oplus__class_Oplus(T_a,V_m,V_m) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Groups_Oplus__class_Oplus(T_a,c_Groups_Oone__class_Oone(T_a),c_Groups_Oone__class_Oone(T_a))),V_m)
     <= class_Rings_Ocomm__semiring__1(T_a) ) ).

fof(fact_nat__dvd__not__less,axiom,
    ! [V_n,V_m] :
      ( ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_m,V_n)
       => ~ hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Nat_Onat),V_n),V_m)) )
     <= c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_m) ) ).

fof(fact_pCons__0__0,axiom,
    ! [T_a] :
      ( c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a)) = c_Polynomial_OpCons(T_a,c_Groups_Ozero__class_Ozero(T_a),c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a)))
     <= class_Groups_Ozero(T_a) ) ).

fof(fact_Suc__le__mono,axiom,
    ! [V_m_2,V_na_2] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,c_Nat_OSuc(V_na_2),c_Nat_OSuc(V_m_2))
    <=> c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_na_2,V_m_2) ) ).

fof(fact_le__SucE,axiom,
    ! [V_n,V_m] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m,c_Nat_OSuc(V_n))
     => ( ~ c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m,V_n)
       => c_Nat_OSuc(V_n) = V_m ) ) ).

fof(fact_less__imp__diff__less,axiom,
    ! [V_n,V_k,V_j] :
      ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_j,V_k)
     => c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_j,V_n),V_k) ) ).

fof(fact_xt1_I7_J,axiom,
    ! [V_z,V_x,V_y,T_a] :
      ( ( c_Orderings_Oord__class_Oless(T_a,V_y,V_x)
       => ( c_Orderings_Oord__class_Oless(T_a,V_z,V_x)
         <= c_Orderings_Oord__class_Oless__eq(T_a,V_z,V_y) ) )
     <= class_Orderings_Oorder(T_a) ) ).

fof(fact_le__add__iff1,axiom,
    ! [V_d_2,V_b_2,V_c_2,V_e_2,V_a_2,T_a] :
      ( class_Rings_Oordered__ring(T_a)
     => ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a_2),V_e_2),V_c_2),c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b_2),V_e_2),V_d_2))
      <=> c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Groups_Ominus__class_Ominus(T_a,V_a_2,V_b_2)),V_e_2),V_c_2),V_d_2) ) ) ).

fof(fact_ex__least__nat__less,axiom,
    ! [V_na_2,V_P_2] :
      ( ~ hBOOL(hAPP(V_P_2,c_Groups_Ozero__class_Ozero(tc_Nat_Onat)))
     => ( ? [B_k] :
            ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,B_k,V_na_2)
            & ! [B_i] :
                ( ~ hBOOL(hAPP(V_P_2,B_i))
               <= c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,B_i,B_k) )
            & hBOOL(hAPP(V_P_2,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,B_k,c_Groups_Oone__class_Oone(tc_Nat_Onat)))) )
       <= hBOOL(hAPP(V_P_2,V_na_2)) ) ) ).

fof(arity_Polynomial__Opoly__Rings_Olinordered__ring,axiom,
    ! [T_1] :
      ( class_Rings_Olinordered__ring(tc_Polynomial_Opoly(T_1))
     <= class_Rings_Olinordered__idom(T_1) ) ).

fof(fact_diff__Suc__diff__eq2,axiom,
    ! [V_m,V_j,V_k] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_k,V_j)
     => c_Groups_Ominus__class_Ominus(tc_Nat_Onat,c_Nat_OSuc(c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_j,V_k)),V_m) = c_Groups_Ominus__class_Ominus(tc_Nat_Onat,c_Nat_OSuc(V_j),c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_k,V_m)) ) ).

fof(fact_diff__Suc__Suc,axiom,
    ! [V_n,V_m] : c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_m,V_n) = c_Groups_Ominus__class_Ominus(tc_Nat_Onat,c_Nat_OSuc(V_m),c_Nat_OSuc(V_n)) ).

fof(fact_nat__le__linear,axiom,
    ! [V_n,V_m] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_n,V_m)
      | c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m,V_n) ) ).

fof(fact_mult__less__imp__less__left,axiom,
    ! [V_b,V_a,V_c,T_a] :
      ( class_Rings_Olinordered__semiring__strict(T_a)
     => ( c_Orderings_Oord__class_Oless(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_c),V_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_c),V_b))
       => ( c_Orderings_Oord__class_Oless(T_a,V_a,V_b)
         <= c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_c) ) ) ) ).

fof(fact_not__less__iff__gr__or__eq,axiom,
    ! [V_y_2,V_x_2,T_a] :
      ( class_Orderings_Olinorder(T_a)
     => ( ( c_Orderings_Oord__class_Oless(T_a,V_y_2,V_x_2)
          | V_y_2 = V_x_2 )
      <=> ~ c_Orderings_Oord__class_Oless(T_a,V_x_2,V_y_2) ) ) ).

fof(fact_nat__add__right__cancel,axiom,
    ! [V_na_2,V_k_2,V_m_2] :
      ( V_m_2 = V_na_2
    <=> c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_m_2,V_k_2) = c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_na_2,V_k_2) ) ).

fof(fact_divide_Odiff,axiom,
    ! [V_ya,V_y,V_x,T_a] :
      ( class_RealVector_Oreal__normed__field(T_a)
     => c_Groups_Ominus__class_Ominus(T_a,c_Rings_Oinverse__class_Odivide(T_a,V_x,V_ya),c_Rings_Oinverse__class_Odivide(T_a,V_y,V_ya)) = c_Rings_Oinverse__class_Odivide(T_a,c_Groups_Ominus__class_Ominus(T_a,V_x,V_y),V_ya) ) ).

fof(fact_Suc__le__eq,axiom,
    ! [V_na_2,V_m_2] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,c_Nat_OSuc(V_m_2),V_na_2)
    <=> c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_m_2,V_na_2) ) ).

fof(fact_diff__is__0__eq_H,axiom,
    ! [V_n,V_m] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m,V_n)
     => c_Groups_Ozero__class_Ozero(tc_Nat_Onat) = c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_m,V_n) ) ).

fof(arity_Nat__Onat__Rings_Ocomm__semiring__1,axiom,
    class_Rings_Ocomm__semiring__1(tc_Nat_Onat) ).

fof(fact_add__le__mono,axiom,
    ! [V_l,V_k,V_j,V_i] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_i,V_j)
     => ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_i,V_k),c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_j,V_l))
       <= c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_k,V_l) ) ) ).

fof(fact_divide__nonpos__pos,axiom,
    ! [V_y,V_x,T_a] :
      ( class_Fields_Olinordered__field(T_a)
     => ( c_Orderings_Oord__class_Oless__eq(T_a,V_x,c_Groups_Ozero__class_Ozero(T_a))
       => ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_y)
         => c_Orderings_Oord__class_Oless__eq(T_a,c_Rings_Oinverse__class_Odivide(T_a,V_x,V_y),c_Groups_Ozero__class_Ozero(T_a)) ) ) ) ).

fof(arity_Int__Oint__Rings_Olinordered__semiring__1__strict,axiom,
    class_Rings_Olinordered__semiring__1__strict(tc_Int_Oint) ).

fof(fact_mult__nonpos__nonneg,axiom,
    ! [V_b,V_a,T_a] :
      ( class_Rings_Oordered__cancel__semiring(T_a)
     => ( c_Orderings_Oord__class_Oless__eq(T_a,V_a,c_Groups_Ozero__class_Ozero(T_a))
       => ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_b)
         => c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b),c_Groups_Ozero__class_Ozero(T_a)) ) ) ) ).

fof(arity_Polynomial__Opoly__Semiring__Normalization_Ocomm__semiring__1__cancel__crossproduct,axiom,
    ! [T_1] :
      ( class_Semiring__Normalization_Ocomm__semiring__1__cancel__crossproduct(tc_Polynomial_Opoly(T_1))
     <= class_Rings_Oidom(T_1) ) ).

fof(arity_Complex__Ocomplex__Rings_Odivision__ring__inverse__zero,axiom,
    class_Rings_Odivision__ring__inverse__zero(tc_Complex_Ocomplex) ).

fof(fact_linorder__neqE,axiom,
    ! [V_y,V_x,T_a] :
      ( class_Orderings_Olinorder(T_a)
     => ( V_y != V_x
       => ( c_Orderings_Oord__class_Oless(T_a,V_y,V_x)
         <= ~ c_Orderings_Oord__class_Oless(T_a,V_x,V_y) ) ) ) ).

fof(fact_le__imp__diff__is__add,axiom,
    ! [V_k_2,V_j_2,V_i_2] :
      ( ( V_j_2 = c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_k_2,V_i_2)
      <=> V_k_2 = c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_j_2,V_i_2) )
     <= c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_i_2,V_j_2) ) ).

fof(fact_nat__mult__commute,axiom,
    ! [V_n,V_m] : hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_m),V_n) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_n),V_m) ).

fof(fact_synthetic__div__0,axiom,
    ! [V_c,T_a] :
      ( class_Rings_Ocomm__semiring__0(T_a)
     => c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a)) = c_Polynomial_Osynthetic__div(T_a,c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a)),V_c) ) ).

fof(fact_power__gt1,axiom,
    ! [V_n,V_a,T_a] :
      ( class_Rings_Olinordered__semidom(T_a)
     => ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Oone__class_Oone(T_a),V_a)
       => c_Orderings_Oord__class_Oless(T_a,c_Groups_Oone__class_Oone(T_a),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),c_Nat_OSuc(V_n))) ) ) ).

fof(fact_zadd__assoc,axiom,
    ! [V_z3,V_z2,V_z1] : c_Groups_Oplus__class_Oplus(tc_Int_Oint,c_Groups_Oplus__class_Oplus(tc_Int_Oint,V_z1,V_z2),V_z3) = c_Groups_Oplus__class_Oplus(tc_Int_Oint,V_z1,c_Groups_Oplus__class_Oplus(tc_Int_Oint,V_z2,V_z3)) ).

fof(fact_dvd_Oantisym,axiom,
    ! [V_y,V_x] :
      ( hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Nat_Onat),V_x),V_y))
     => ( V_y = V_x
       <= hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Nat_Onat),V_y),V_x)) ) ) ).

fof(fact_dvd_Oord__eq__le__trans,axiom,
    ! [V_c,V_b,V_a] :
      ( V_a = V_b
     => ( hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Nat_Onat),V_a),V_c))
       <= hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Nat_Onat),V_b),V_c)) ) ) ).

fof(fact_minus__less__iff,axiom,
    ! [V_b_2,V_a_2,T_a] :
      ( class_Groups_Oordered__ab__group__add(T_a)
     => ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Ouminus__class_Ouminus(T_a,V_a_2),V_b_2)
      <=> c_Orderings_Oord__class_Oless(T_a,c_Groups_Ouminus__class_Ouminus(T_a,V_b_2),V_a_2) ) ) ).

fof(arity_Int__Oint__Rings_Olinordered__ring__strict,axiom,
    class_Rings_Olinordered__ring__strict(tc_Int_Oint) ).

fof(arity_Polynomial__Opoly__Rings_Oordered__comm__semiring,axiom,
    ! [T_1] :
      ( class_Rings_Oordered__comm__semiring(tc_Polynomial_Opoly(T_1))
     <= class_Rings_Olinordered__idom(T_1) ) ).

fof(fact_divide__neg__neg,axiom,
    ! [V_y,V_x,T_a] :
      ( class_Fields_Olinordered__field(T_a)
     => ( c_Orderings_Oord__class_Oless(T_a,V_x,c_Groups_Ozero__class_Ozero(T_a))
       => ( c_Orderings_Oord__class_Oless(T_a,V_y,c_Groups_Ozero__class_Ozero(T_a))
         => c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),c_Rings_Oinverse__class_Odivide(T_a,V_x,V_y)) ) ) ) ).

fof(fact_comm__semiring__1__class_Onormalizing__semiring__rules_I28_J,axiom,
    ! [V_q,V_x,T_a] :
      ( hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_x),c_Nat_OSuc(V_q)) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_x),V_q)),V_x)
     <= class_Rings_Ocomm__semiring__1(T_a) ) ).

fof(arity_fun__Groups_Ominus,axiom,
    ! [T_2,T_1] :
      ( class_Groups_Ominus(T_1)
     => class_Groups_Ominus(tc_fun(T_2,T_1)) ) ).

fof(arity_Polynomial__Opoly__Groups_Omonoid__mult,axiom,
    ! [T_1] :
      ( class_Groups_Omonoid__mult(tc_Polynomial_Opoly(T_1))
     <= class_Rings_Ocomm__semiring__1(T_1) ) ).

fof(fact_add__neg__nonpos,axiom,
    ! [V_b,V_a,T_a] :
      ( class_Groups_Oordered__comm__monoid__add(T_a)
     => ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_b,c_Groups_Ozero__class_Ozero(T_a))
         => c_Orderings_Oord__class_Oless(T_a,c_Groups_Oplus__class_Oplus(T_a,V_a,V_b),c_Groups_Ozero__class_Ozero(T_a)) )
       <= c_Orderings_Oord__class_Oless(T_a,V_a,c_Groups_Ozero__class_Ozero(T_a)) ) ) ).

fof(fact_offset__poly__single,axiom,
    ! [V_h,V_a,T_a] :
      ( c_Fundamental__Theorem__Algebra__Mirabelle_Ooffset__poly(T_a,c_Polynomial_OpCons(T_a,V_a,c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a))),V_h) = c_Polynomial_OpCons(T_a,V_a,c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a)))
     <= class_Rings_Ocomm__semiring__0(T_a) ) ).

fof(fact_power__strict__increasing__iff,axiom,
    ! [V_y_2,V_x_2,V_b_2,T_a] :
      ( class_Rings_Olinordered__semidom(T_a)
     => ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Oone__class_Oone(T_a),V_b_2)
       => ( c_Orderings_Oord__class_Oless(T_a,hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_b_2),V_x_2),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_b_2),V_y_2))
        <=> c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_x_2,V_y_2) ) ) ) ).

fof(fact_add__diff__assoc,axiom,
    ! [V_i,V_j,V_k] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_k,V_j)
     => c_Groups_Ominus__class_Ominus(tc_Nat_Onat,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_i,V_j),V_k) = c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_i,c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_j,V_k)) ) ).

fof(arity_Int__Oint__Rings_Osemiring__0,axiom,
    class_Rings_Osemiring__0(tc_Int_Oint) ).

fof(fact_add__eq__0__iff,axiom,
    ! [V_y_2,V_x_2,T_a] :
      ( class_Groups_Ogroup__add(T_a)
     => ( c_Groups_Ouminus__class_Ouminus(T_a,V_x_2) = V_y_2
      <=> c_Groups_Oplus__class_Oplus(T_a,V_x_2,V_y_2) = c_Groups_Ozero__class_Ozero(T_a) ) ) ).

fof(fact_add__Suc__shift,axiom,
    ! [V_n,V_m] : c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_m,c_Nat_OSuc(V_n)) = c_Groups_Oplus__class_Oplus(tc_Nat_Onat,c_Nat_OSuc(V_m),V_n) ).

fof(arity_Polynomial__Opoly__Groups_Ouminus,axiom,
    ! [T_1] :
      ( class_Groups_Oab__group__add(T_1)
     => class_Groups_Ouminus(tc_Polynomial_Opoly(T_1)) ) ).

fof(fact_nat__power__less__imp__less,axiom,
    ! [V_n,V_m,V_i] :
      ( ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_m,V_n)
       <= c_Orderings_Oord__class_Oless(tc_Nat_Onat,hAPP(hAPP(c_Power_Opower__class_Opower(tc_Nat_Onat),V_i),V_m),hAPP(hAPP(c_Power_Opower__class_Opower(tc_Nat_Onat),V_i),V_n)) )
     <= c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_i) ) ).

fof(fact_offset__poly__0,axiom,
    ! [V_h,T_a] :
      ( c_Fundamental__Theorem__Algebra__Mirabelle_Ooffset__poly(T_a,c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a)),V_h) = c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a))
     <= class_Rings_Ocomm__semiring__0(T_a) ) ).

fof(fact_pdivmod__rel__by__0,axiom,
    ! [V_x,T_a] :
      ( class_Fields_Ofield(T_a)
     => c_Polynomial_Opdivmod__rel(T_a,V_x,c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a)),c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a)),V_x) ) ).

fof(fact_right__minus__eq,axiom,
    ! [V_b_2,V_a_2,T_a] :
      ( ( V_b_2 = V_a_2
      <=> c_Groups_Ominus__class_Ominus(T_a,V_a_2,V_b_2) = c_Groups_Ozero__class_Ozero(T_a) )
     <= class_Groups_Ogroup__add(T_a) ) ).

fof(arity_Polynomial__Opoly__Rings_Olinordered__semiring__1,axiom,
    ! [T_1] :
      ( class_Rings_Olinordered__semiring__1(tc_Polynomial_Opoly(T_1))
     <= class_Rings_Olinordered__idom(T_1) ) ).

fof(fact_smult__diff__right,axiom,
    ! [V_q,V_p,V_a,T_a] :
      ( class_Rings_Ocomm__ring(T_a)
     => c_Groups_Ominus__class_Ominus(tc_Polynomial_Opoly(T_a),c_Polynomial_Osmult(T_a,V_a,V_p),c_Polynomial_Osmult(T_a,V_a,V_q)) = c_Polynomial_Osmult(T_a,V_a,c_Groups_Ominus__class_Ominus(tc_Polynomial_Opoly(T_a),V_p,V_q)) ) ).

fof(fact_zero__le__divide__iff,axiom,
    ! [V_b_2,V_a_2,T_a] :
      ( ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),c_Rings_Oinverse__class_Odivide(T_a,V_a_2,V_b_2))
      <=> ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_b_2,c_Groups_Ozero__class_Ozero(T_a))
            & c_Orderings_Oord__class_Oless__eq(T_a,V_a_2,c_Groups_Ozero__class_Ozero(T_a)) )
          | ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_a_2)
            & c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_b_2) ) ) )
     <= class_Fields_Olinordered__field__inverse__zero(T_a) ) ).

fof(fact_add__left__mono,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_a,V_b)
       => c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Oplus__class_Oplus(T_a,V_c,V_a),c_Groups_Oplus__class_Oplus(T_a,V_c,V_b)) )
     <= class_Groups_Oordered__ab__semigroup__add(T_a) ) ).

fof(fact_mult__pos__neg,axiom,
    ! [V_b,V_a,T_a] :
      ( ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_a)
       => ( c_Orderings_Oord__class_Oless(T_a,V_b,c_Groups_Ozero__class_Ozero(T_a))
         => c_Orderings_Oord__class_Oless(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b),c_Groups_Ozero__class_Ozero(T_a)) ) )
     <= class_Rings_Olinordered__semiring__strict(T_a) ) ).

fof(fact_add__mult__distrib,axiom,
    ! [V_k,V_n,V_m] : c_Groups_Oplus__class_Oplus(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_m),V_k),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_n),V_k)) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_m,V_n)),V_k) ).

fof(fact_zero__less__diff,axiom,
    ! [V_m_2,V_na_2] :
      ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_m_2,V_na_2)
    <=> c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_na_2,V_m_2)) ) ).

fof(fact_xt1_I2_J,axiom,
    ! [V_c,V_a,V_b,T_a] :
      ( ( c_Orderings_Oord__class_Oless(T_a,V_b,V_a)
       => ( c_Orderings_Oord__class_Oless(T_a,V_c,V_a)
         <= V_b = V_c ) )
     <= class_Orderings_Oorder(T_a) ) ).

fof(arity_Polynomial__Opoly__Rings_Olinordered__semiring__1__strict,axiom,
    ! [T_1] :
      ( class_Rings_Olinordered__semiring__1__strict(tc_Polynomial_Opoly(T_1))
     <= class_Rings_Olinordered__idom(T_1) ) ).

fof(fact_add__is__0,axiom,
    ! [V_na_2,V_m_2] :
      ( ( c_Groups_Ozero__class_Ozero(tc_Nat_Onat) = V_na_2
        & c_Groups_Ozero__class_Ozero(tc_Nat_Onat) = V_m_2 )
    <=> c_Groups_Ozero__class_Ozero(tc_Nat_Onat) = c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_m_2,V_na_2) ) ).

fof(fact_zadd__0,axiom,
    ! [V_z] : c_Groups_Oplus__class_Oplus(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_z) = V_z ).

fof(fact_trans__le__add2,axiom,
    ! [V_m,V_j,V_i] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_i,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_m,V_j))
     <= c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_i,V_j) ) ).

fof(fact_add__right__cancel,axiom,
    ! [V_c_2,V_a_2,V_b_2,T_a] :
      ( ( c_Groups_Oplus__class_Oplus(T_a,V_b_2,V_a_2) = c_Groups_Oplus__class_Oplus(T_a,V_c_2,V_a_2)
      <=> V_c_2 = V_b_2 )
     <= class_Groups_Ocancel__semigroup__add(T_a) ) ).

fof(fact_zero__less__Suc,axiom,
    ! [V_n] : c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),c_Nat_OSuc(V_n)) ).

fof(fact_zero__reorient,axiom,
    ! [V_x_2,T_a] :
      ( ( V_x_2 = c_Groups_Ozero__class_Ozero(T_a)
      <=> c_Groups_Ozero__class_Ozero(T_a) = V_x_2 )
     <= class_Groups_Ozero(T_a) ) ).

fof(fact_divide__less__0__iff,axiom,
    ! [V_b_2,V_a_2,T_a] :
      ( class_Fields_Olinordered__field__inverse__zero(T_a)
     => ( c_Orderings_Oord__class_Oless(T_a,c_Rings_Oinverse__class_Odivide(T_a,V_a_2,V_b_2),c_Groups_Ozero__class_Ozero(T_a))
      <=> ( ( c_Orderings_Oord__class_Oless(T_a,V_a_2,c_Groups_Ozero__class_Ozero(T_a))
            & c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_b_2) )
          | ( c_Orderings_Oord__class_Oless(T_a,V_b_2,c_Groups_Ozero__class_Ozero(T_a))
            & c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_a_2) ) ) ) ) ).

fof(fact_poly__smult,axiom,
    ! [V_x,V_p,V_a,T_a] :
      ( hAPP(c_Polynomial_Opoly(T_a,c_Polynomial_Osmult(T_a,V_a,V_p)),V_x) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),hAPP(c_Polynomial_Opoly(T_a,V_p),V_x))
     <= class_Rings_Ocomm__semiring__0(T_a) ) ).

fof(fact_comm__semiring__1__class_Onormalizing__semiring__rules_I35_J,axiom,
    ! [V_q,V_x,T_a] :
      ( class_Rings_Ocomm__semiring__1(T_a)
     => hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_x),c_Nat_OSuc(V_q)) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_x),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_x),V_q)) ) ).

fof(fact_termination__basic__simps_I5_J,axiom,
    ! [V_y,V_x] :
      ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_x,V_y)
     => c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_x,V_y) ) ).

fof(arity_Complex__Ocomplex__Groups_Oab__semigroup__mult,axiom,
    class_Groups_Oab__semigroup__mult(tc_Complex_Ocomplex) ).

fof(fact_coeff__monom,axiom,
    ! [V_a,V_n,V_m,T_a] :
      ( class_Groups_Ozero(T_a)
     => ( ( V_n != V_m
         => c_Groups_Ozero__class_Ozero(T_a) = hAPP(c_Polynomial_Ocoeff(T_a,c_Polynomial_Omonom(T_a,V_a,V_m)),V_n) )
        & ( hAPP(c_Polynomial_Ocoeff(T_a,c_Polynomial_Omonom(T_a,V_a,V_m)),V_n) = V_a
         <= V_n = V_m ) ) ) ).

fof(fact_left__add__mult__distrib,axiom,
    ! [V_k,V_j,V_u,V_i] : c_Groups_Oplus__class_Oplus(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_i,V_j)),V_u),V_k) = c_Groups_Oplus__class_Oplus(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_i),V_u),c_Groups_Oplus__class_Oplus(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_j),V_u),V_k)) ).

fof(fact_divide__pos__pos,axiom,
    ! [V_y,V_x,T_a] :
      ( ( ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_y)
         => c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),c_Rings_Oinverse__class_Odivide(T_a,V_x,V_y)) )
       <= c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_x) )
     <= class_Fields_Olinordered__field(T_a) ) ).

fof(fact_diff__mult__distrib2,axiom,
    ! [V_n,V_m,V_k] : c_Groups_Ominus__class_Ominus(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_k),V_m),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_k),V_n)) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_k),c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_m,V_n)) ).

fof(fact_comm__semiring__1__class_Onormalizing__semiring__rules_I13_J,axiom,
    ! [V_ry,V_rx,V_ly,V_lx,T_a] :
      ( class_Rings_Ocomm__semiring__1(T_a)
     => hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_lx),V_rx)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_ly),V_ry)) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_lx),V_ly)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_rx),V_ry)) ) ).

fof(fact_dvd_Oless__le__trans,axiom,
    ! [V_z,V_y,V_x] :
      ( ( ( hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Nat_Onat),V_x),V_z))
          & ~ hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Nat_Onat),V_z),V_x)) )
       <= hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Nat_Onat),V_y),V_z)) )
     <= ( ~ hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Nat_Onat),V_y),V_x))
        & hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Nat_Onat),V_x),V_y)) ) ) ).

fof(fact_mult__right__le__one__le,axiom,
    ! [V_y,V_x,T_a] :
      ( class_Rings_Olinordered__idom(T_a)
     => ( ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_y)
         => ( c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_x),V_y),V_x)
           <= c_Orderings_Oord__class_Oless__eq(T_a,V_y,c_Groups_Oone__class_Oone(T_a)) ) )
       <= c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_x) ) ) ).

fof(fact_not__leE,axiom,
    ! [V_x,V_y,T_a] :
      ( ( c_Orderings_Oord__class_Oless(T_a,V_x,V_y)
       <= ~ c_Orderings_Oord__class_Oless__eq(T_a,V_y,V_x) )
     <= class_Orderings_Olinorder(T_a) ) ).

fof(fact_less__add__iff1,axiom,
    ! [V_d_2,V_b_2,V_c_2,V_e_2,V_a_2,T_a] :
      ( class_Rings_Oordered__ring(T_a)
     => ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a_2),V_e_2),V_c_2),c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b_2),V_e_2),V_d_2))
      <=> c_Orderings_Oord__class_Oless(T_a,c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Groups_Ominus__class_Ominus(T_a,V_a_2,V_b_2)),V_e_2),V_c_2),V_d_2) ) ) ).

fof(fact_linorder__neq__iff,axiom,
    ! [V_y_2,V_x_2,T_a] :
      ( class_Orderings_Olinorder(T_a)
     => ( V_x_2 != V_y_2
      <=> ( c_Orderings_Oord__class_Oless(T_a,V_y_2,V_x_2)
          | c_Orderings_Oord__class_Oless(T_a,V_x_2,V_y_2) ) ) ) ).

fof(fact_mult_Oadd__left,axiom,
    ! [V_b,V_a_H,V_a,T_a] :
      ( class_RealVector_Oreal__normed__algebra(T_a)
     => hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Groups_Oplus__class_Oplus(T_a,V_a,V_a_H)),V_b) = c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a_H),V_b)) ) ).

fof(fact_add__pos__nonneg,axiom,
    ! [V_b,V_a,T_a] :
      ( ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_a)
       => ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),c_Groups_Oplus__class_Oplus(T_a,V_a,V_b))
         <= c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_b) ) )
     <= class_Groups_Oordered__comm__monoid__add(T_a) ) ).

fof(fact_le__0__eq,axiom,
    ! [V_na_2] :
      ( V_na_2 = c_Groups_Ozero__class_Ozero(tc_Nat_Onat)
    <=> c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_na_2,c_Groups_Ozero__class_Ozero(tc_Nat_Onat)) ) ).

fof(fact_less__not__refl,axiom,
    ! [V_n] : ~ c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_n,V_n) ).

fof(fact_mult__left_Oadd,axiom,
    ! [V_ya,V_y,V_x,T_a] :
      ( c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_x),V_ya),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_y),V_ya)) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Groups_Oplus__class_Oplus(T_a,V_x,V_y)),V_ya)
     <= class_RealVector_Oreal__normed__algebra(T_a) ) ).

fof(fact_zless__add1__eq,axiom,
    ! [V_z_2,V_w_2] :
      ( ( c_Orderings_Oord__class_Oless(tc_Int_Oint,V_w_2,V_z_2)
        | V_z_2 = V_w_2 )
    <=> c_Orderings_Oord__class_Oless(tc_Int_Oint,V_w_2,c_Groups_Oplus__class_Oplus(tc_Int_Oint,V_z_2,c_Groups_Oone__class_Oone(tc_Int_Oint))) ) ).

fof(fact_diff__add__assoc2,axiom,
    ! [V_i,V_j,V_k] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_k,V_j)
     => c_Groups_Ominus__class_Ominus(tc_Nat_Onat,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_j,V_i),V_k) = c_Groups_Oplus__class_Oplus(tc_Nat_Onat,c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_j,V_k),V_i) ) ).

fof(fact_times__divide__times__eq,axiom,
    ! [V_w,V_z,V_y,V_x,T_a] :
      ( c_Rings_Oinverse__class_Odivide(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_x),V_z),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_y),V_w)) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Rings_Oinverse__class_Odivide(T_a,V_x,V_y)),c_Rings_Oinverse__class_Odivide(T_a,V_z,V_w))
     <= class_Fields_Ofield__inverse__zero(T_a) ) ).

fof(fact_dvd_Ole__less,axiom,
    ! [V_y_2,V_x_2] :
      ( hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Nat_Onat),V_x_2),V_y_2))
    <=> ( V_x_2 = V_y_2
        | ( hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Nat_Onat),V_x_2),V_y_2))
          & ~ hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Nat_Onat),V_y_2),V_x_2)) ) ) ) ).

fof(arity_Complex__Ocomplex__Rings_Oidom,axiom,
    class_Rings_Oidom(tc_Complex_Ocomplex) ).

fof(fact_gcd__lcm__complete__lattice__nat_Otop__greatest,axiom,
    ! [V_x] : hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Nat_Onat),V_x),c_Groups_Ozero__class_Ozero(tc_Nat_Onat))) ).

fof(fact_pdivmod__rel__def,axiom,
    ! [V_r_2,V_qa_2,V_y_2,V_x_2,T_a] :
      ( class_Fields_Ofield(T_a)
     => ( c_Polynomial_Opdivmod__rel(T_a,V_x_2,V_y_2,V_qa_2,V_r_2)
      <=> ( V_x_2 = c_Groups_Oplus__class_Oplus(tc_Polynomial_Opoly(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Polynomial_Opoly(T_a)),V_qa_2),V_y_2),V_r_2)
          & ( c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a)) != V_y_2
           => ( V_r_2 = c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a))
              | c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Polynomial_Odegree(T_a,V_r_2),c_Polynomial_Odegree(T_a,V_y_2)) ) )
          & ( V_y_2 = c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a))
           => V_qa_2 = c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a)) ) ) ) ) ).

fof(fact_degree__offset__poly,axiom,
    ! [V_h,V_p,T_a] :
      ( class_Rings_Ocomm__semiring__0(T_a)
     => c_Polynomial_Odegree(T_a,c_Fundamental__Theorem__Algebra__Mirabelle_Ooffset__poly(T_a,V_p,V_h)) = c_Polynomial_Odegree(T_a,V_p) ) ).

fof(fact_dvd__mod__imp__dvd,axiom,
    ! [V_n,V_m,V_k,T_a] :
      ( class_Divides_Osemiring__div(T_a)
     => ( ( hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(T_a),V_k),V_n))
         => hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(T_a),V_k),V_m)) )
       <= hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(T_a),V_k),c_Divides_Odiv__class_Omod(T_a,V_m,V_n))) ) ) ).

fof(fact_double__compl,axiom,
    ! [V_x,T_a] :
      ( class_Lattices_Oboolean__algebra(T_a)
     => V_x = c_Groups_Ouminus__class_Ouminus(T_a,c_Groups_Ouminus__class_Ouminus(T_a,V_x)) ) ).

fof(arity_Int__Oint__Groups_Omonoid__mult,axiom,
    class_Groups_Omonoid__mult(tc_Int_Oint) ).

fof(fact_less__diff__iff,axiom,
    ! [V_na_2,V_m_2,V_k_2] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_k_2,V_m_2)
     => ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_k_2,V_na_2)
       => ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_m_2,V_na_2)
        <=> c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_m_2,V_k_2),c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_na_2,V_k_2)) ) ) ) ).

fof(fact_mult__le__cancel2,axiom,
    ! [V_na_2,V_k_2,V_m_2] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_m_2),V_k_2),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_na_2),V_k_2))
    <=> ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_k_2)
       => c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m_2,V_na_2) ) ) ).

fof(fact_Nat__Transfer_Otransfer__nat__int__function__closures_I1_J,axiom,
    ! [V_y,V_x] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_x)
     => ( c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_y)
       => c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),c_Groups_Oplus__class_Oplus(tc_Int_Oint,V_x,V_y)) ) ) ).

fof(fact_compl__mono,axiom,
    ! [V_y,V_x,T_a] :
      ( ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ouminus__class_Ouminus(T_a,V_y),c_Groups_Ouminus__class_Ouminus(T_a,V_x))
       <= c_Orderings_Oord__class_Oless__eq(T_a,V_x,V_y) )
     <= class_Lattices_Oboolean__algebra(T_a) ) ).

fof(fact_dvd__mult,axiom,
    ! [V_b,V_c,V_a,T_a] :
      ( class_Rings_Ocomm__semiring__1(T_a)
     => ( hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(T_a),V_a),V_c))
       => hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(T_a),V_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b),V_c))) ) ) ).

fof(fact_add__leD2,axiom,
    ! [V_n,V_k,V_m] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_k,V_n)
     <= c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_m,V_k),V_n) ) ).

fof(fact_dvd_Oless__imp__neq,axiom,
    ! [V_y,V_x] :
      ( V_x != V_y
     <= ( ~ hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Nat_Onat),V_y),V_x))
        & hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Nat_Onat),V_x),V_y)) ) ) ).

fof(fact_zadd__0__right,axiom,
    ! [V_z] : V_z = c_Groups_Oplus__class_Oplus(tc_Int_Oint,V_z,c_Groups_Ozero__class_Ozero(tc_Int_Oint)) ).

fof(fact_diff__def,axiom,
    ! [V_b,V_a,T_a] :
      ( c_Groups_Ominus__class_Ominus(T_a,V_a,V_b) = c_Groups_Oplus__class_Oplus(T_a,V_a,c_Groups_Ouminus__class_Ouminus(T_a,V_b))
     <= class_Groups_Ogroup__add(T_a) ) ).

fof(fact_add__nonpos__neg,axiom,
    ! [V_b,V_a,T_a] :
      ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_a,c_Groups_Ozero__class_Ozero(T_a))
       => ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Oplus__class_Oplus(T_a,V_a,V_b),c_Groups_Ozero__class_Ozero(T_a))
         <= c_Orderings_Oord__class_Oless(T_a,V_b,c_Groups_Ozero__class_Ozero(T_a)) ) )
     <= class_Groups_Oordered__comm__monoid__add(T_a) ) ).

fof(fact__096_B_Bx_O_A_091_124_Ap_Advd_Aq_A_094_ASuc_An_059_Apoly_Ap_Ax_A_061_A0_059_Apoly_Aq_Ax_A_126_061_A0_A_124_093_A_061_061_062_AFalse_096,axiom,
    ! [V_x_3] :
      ( ( hAPP(c_Polynomial_Opoly(tc_Complex_Ocomplex,v_q),V_x_3) = c_Groups_Ozero__class_Ozero(tc_Complex_Ocomplex)
       <= c_Groups_Ozero__class_Ozero(tc_Complex_Ocomplex) = hAPP(c_Polynomial_Opoly(tc_Complex_Ocomplex,v_p),V_x_3) )
     <= hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Polynomial_Opoly(tc_Complex_Ocomplex)),v_p),hAPP(hAPP(c_Power_Opower__class_Opower(tc_Polynomial_Opoly(tc_Complex_Ocomplex)),v_q),c_Nat_OSuc(v_n____)))) ) ).

fof(fact_order__less__irrefl,axiom,
    ! [V_x,T_a] :
      ( class_Orderings_Opreorder(T_a)
     => ~ c_Orderings_Oord__class_Oless(T_a,V_x,V_x) ) ).

fof(fact_coeff__0,axiom,
    ! [V_n,T_a] :
      ( class_Groups_Ozero(T_a)
     => c_Groups_Ozero__class_Ozero(T_a) = hAPP(c_Polynomial_Ocoeff(T_a,c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a))),V_n) ) ).

fof(arity_Polynomial__Opoly__Rings_Olinordered__ring__strict,axiom,
    ! [T_1] :
      ( class_Rings_Olinordered__idom(T_1)
     => class_Rings_Olinordered__ring__strict(tc_Polynomial_Opoly(T_1)) ) ).

fof(fact_linorder__less__linear,axiom,
    ! [V_y,V_x,T_a] :
      ( class_Orderings_Olinorder(T_a)
     => ( c_Orderings_Oord__class_Oless(T_a,V_x,V_y)
        | V_x = V_y
        | c_Orderings_Oord__class_Oless(T_a,V_y,V_x) ) ) ).

fof(fact_add__less__imp__less__right,axiom,
    ! [V_b,V_c,V_a,T_a] :
      ( class_Groups_Oordered__ab__semigroup__add__imp__le(T_a)
     => ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Oplus__class_Oplus(T_a,V_a,V_c),c_Groups_Oplus__class_Oplus(T_a,V_b,V_c))
       => c_Orderings_Oord__class_Oless(T_a,V_a,V_b) ) ) ).

fof(fact_add__pos__pos,axiom,
    ! [V_b,V_a,T_a] :
      ( class_Groups_Oordered__comm__monoid__add(T_a)
     => ( ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_b)
         => c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),c_Groups_Oplus__class_Oplus(T_a,V_a,V_b)) )
       <= c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_a) ) ) ).

fof(fact_zero__less__power,axiom,
    ! [V_n,V_a,T_a] :
      ( class_Rings_Olinordered__semidom(T_a)
     => ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_n))
       <= c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_a) ) ) ).

fof(arity_Int__Oint__Rings_Odvd,axiom,
    class_Rings_Odvd(tc_Int_Oint) ).

fof(arity_Complex__Ocomplex__Rings_Osemiring__0,axiom,
    class_Rings_Osemiring__0(tc_Complex_Ocomplex) ).

fof(fact_zero__le__one,axiom,
    ! [T_a] :
      ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),c_Groups_Oone__class_Oone(T_a))
     <= class_Rings_Olinordered__semidom(T_a) ) ).

fof(fact_add__poly__code_I2_J,axiom,
    ! [V_p,T_a] :
      ( c_Groups_Oplus__class_Oplus(tc_Polynomial_Opoly(T_a),V_p,c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a))) = V_p
     <= class_Groups_Ocomm__monoid__add(T_a) ) ).

fof(arity_Complex__Ocomplex__Rings_Ocomm__semiring__0,axiom,
    class_Rings_Ocomm__semiring__0(tc_Complex_Ocomplex) ).

fof(fact_one__is__add,axiom,
    ! [V_na_2,V_m_2] :
      ( c_Nat_OSuc(c_Groups_Ozero__class_Ozero(tc_Nat_Onat)) = c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_m_2,V_na_2)
    <=> ( ( V_na_2 = c_Groups_Ozero__class_Ozero(tc_Nat_Onat)
          & V_m_2 = c_Nat_OSuc(c_Groups_Ozero__class_Ozero(tc_Nat_Onat)) )
        | ( V_m_2 = c_Groups_Ozero__class_Ozero(tc_Nat_Onat)
          & c_Nat_OSuc(c_Groups_Ozero__class_Ozero(tc_Nat_Onat)) = V_na_2 ) ) ) ).

fof(arity_HOL__Obool__Groups_Ominus,axiom,
    class_Groups_Ominus(tc_HOL_Obool) ).

fof(fact_leD,axiom,
    ! [V_x,V_y,T_a] :
      ( ( ~ c_Orderings_Oord__class_Oless(T_a,V_x,V_y)
       <= c_Orderings_Oord__class_Oless__eq(T_a,V_y,V_x) )
     <= class_Orderings_Olinorder(T_a) ) ).

fof(arity_fun__Orderings_Oord,axiom,
    ! [T_2,T_1] :
      ( class_Orderings_Oord(tc_fun(T_2,T_1))
     <= class_Orderings_Oord(T_1) ) ).

fof(fact_add__nonneg__eq__0__iff,axiom,
    ! [V_y_2,V_x_2,T_a] :
      ( class_Groups_Oordered__comm__monoid__add(T_a)
     => ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_x_2)
       => ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_y_2)
         => ( c_Groups_Oplus__class_Oplus(T_a,V_x_2,V_y_2) = c_Groups_Ozero__class_Ozero(T_a)
          <=> ( c_Groups_Ozero__class_Ozero(T_a) = V_x_2
              & V_y_2 = c_Groups_Ozero__class_Ozero(T_a) ) ) ) ) ) ).

fof(arity_Complex__Ocomplex__Rings_Odvd,axiom,
    class_Rings_Odvd(tc_Complex_Ocomplex) ).

fof(fact_mult_Ominus__right,axiom,
    ! [V_b,V_a,T_a] :
      ( class_RealVector_Oreal__normed__algebra(T_a)
     => hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),c_Groups_Ouminus__class_Ouminus(T_a,V_b)) = c_Groups_Ouminus__class_Ouminus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b)) ) ).

fof(arity_Polynomial__Opoly__Rings_Ocomm__ring,axiom,
    ! [T_1] :
      ( class_Rings_Ocomm__ring(T_1)
     => class_Rings_Ocomm__ring(tc_Polynomial_Opoly(T_1)) ) ).

fof(fact_power__eq__0__iff,axiom,
    ! [V_na_2,V_a_2,T_a] :
      ( ( class_Rings_Ono__zero__divisors(T_a)
        & class_Rings_Ozero__neq__one(T_a)
        & class_Rings_Omult__zero(T_a)
        & class_Power_Opower(T_a) )
     => ( hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a_2),V_na_2) = c_Groups_Ozero__class_Ozero(T_a)
      <=> ( c_Groups_Ozero__class_Ozero(T_a) = V_a_2
          & V_na_2 != c_Groups_Ozero__class_Ozero(tc_Nat_Onat) ) ) ) ).

fof(fact_mult__left__less__imp__less,axiom,
    ! [V_b,V_a,V_c,T_a] :
      ( ( c_Orderings_Oord__class_Oless(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_c),V_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_c),V_b))
       => ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_c)
         => c_Orderings_Oord__class_Oless(T_a,V_a,V_b) ) )
     <= class_Rings_Olinordered__semiring(T_a) ) ).

fof(arity_Int__Oint__Rings_Olinordered__semidom,axiom,
    class_Rings_Olinordered__semidom(tc_Int_Oint) ).

fof(fact_mult__monom,axiom,
    ! [V_n,V_b,V_m,V_a,T_a] :
      ( class_Rings_Ocomm__semiring__0(T_a)
     => c_Polynomial_Omonom(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b),c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_m,V_n)) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Polynomial_Opoly(T_a)),c_Polynomial_Omonom(T_a,V_a,V_m)),c_Polynomial_Omonom(T_a,V_b,V_n)) ) ).

fof(fact_degree__0,axiom,
    ! [T_a] :
      ( c_Groups_Ozero__class_Ozero(tc_Nat_Onat) = c_Polynomial_Odegree(T_a,c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a)))
     <= class_Groups_Ozero(T_a) ) ).

fof(fact_dvd_Oless__not__sym,axiom,
    ! [V_y,V_x] :
      ( ( hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Nat_Onat),V_x),V_y))
        & ~ hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Nat_Onat),V_y),V_x)) )
     => ~ ( hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Nat_Onat),V_y),V_x))
          & ~ hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Nat_Onat),V_x),V_y)) ) ) ).

fof(fact_zmult__1__right,axiom,
    ! [V_z] : hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_z),c_Groups_Oone__class_Oone(tc_Int_Oint)) = V_z ).

fof(fact_dvd_Oord__le__eq__trans,axiom,
    ! [V_c,V_b,V_a] :
      ( hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Nat_Onat),V_a),V_b))
     => ( V_b = V_c
       => hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Nat_Onat),V_a),V_c)) ) ) ).

fof(fact_mult__eq__0__iff,axiom,
    ! [V_b_2,V_a_2,T_a] :
      ( ( hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a_2),V_b_2) = c_Groups_Ozero__class_Ozero(T_a)
      <=> ( V_a_2 = c_Groups_Ozero__class_Ozero(T_a)
          | c_Groups_Ozero__class_Ozero(T_a) = V_b_2 ) )
     <= class_Rings_Oring__no__zero__divisors(T_a) ) ).

fof(arity_Int__Oint__Groups_Ozero,axiom,
    class_Groups_Ozero(tc_Int_Oint) ).

fof(fact_Suc__leD,axiom,
    ! [V_n,V_m] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,c_Nat_OSuc(V_m),V_n)
     => c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m,V_n) ) ).

fof(fact_Suc__eq__plus1,axiom,
    ! [V_n] : c_Nat_OSuc(V_n) = c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_n,c_Groups_Oone__class_Oone(tc_Nat_Onat)) ).

fof(fact_comm__semiring__1__class_Onormalizing__semiring__rules_I17_J,axiom,
    ! [V_rx,V_ly,V_lx,T_a] :
      ( class_Rings_Ocomm__semiring__1(T_a)
     => hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_lx),V_ly)),V_rx) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_lx),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_ly),V_rx)) ) ).

fof(fact_dvd__eq__mod__eq__0,axiom,
    ! [V_b_2,V_a_2,T_a] :
      ( ( hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(T_a),V_a_2),V_b_2))
      <=> c_Groups_Ozero__class_Ozero(T_a) = c_Divides_Odiv__class_Omod(T_a,V_b_2,V_a_2) )
     <= class_Divides_Osemiring__div(T_a) ) ).

fof(fact_frac__eq__eq,axiom,
    ! [V_w_2,V_x_2,V_z_2,V_y_2,T_a] :
      ( ( c_Groups_Ozero__class_Ozero(T_a) != V_y_2
       => ( V_z_2 != c_Groups_Ozero__class_Ozero(T_a)
         => ( c_Rings_Oinverse__class_Odivide(T_a,V_x_2,V_y_2) = c_Rings_Oinverse__class_Odivide(T_a,V_w_2,V_z_2)
          <=> hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_w_2),V_y_2) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_x_2),V_z_2) ) ) )
     <= class_Fields_Ofield(T_a) ) ).

fof(fact_linorder__not__le,axiom,
    ! [V_y_2,V_x_2,T_a] :
      ( ( ~ c_Orderings_Oord__class_Oless__eq(T_a,V_x_2,V_y_2)
      <=> c_Orderings_Oord__class_Oless(T_a,V_y_2,V_x_2) )
     <= class_Orderings_Olinorder(T_a) ) ).

fof(fact_power__increasing,axiom,
    ! [V_a,V_N,V_n,T_a] :
      ( ( ( c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_n),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_N))
         <= c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Oone__class_Oone(T_a),V_a) )
       <= c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_n,V_N) )
     <= class_Rings_Olinordered__semidom(T_a) ) ).

fof(fact_mod__smult__right,axiom,
    ! [V_y,V_x,V_a,T_a] :
      ( ( c_Divides_Odiv__class_Omod(tc_Polynomial_Opoly(T_a),V_x,V_y) = c_Divides_Odiv__class_Omod(tc_Polynomial_Opoly(T_a),V_x,c_Polynomial_Osmult(T_a,V_a,V_y))
       <= c_Groups_Ozero__class_Ozero(T_a) != V_a )
     <= class_Fields_Ofield(T_a) ) ).

fof(fact_less__Suc__eq,axiom,
    ! [V_na_2,V_m_2] :
      ( ( V_na_2 = V_m_2
        | c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_m_2,V_na_2) )
    <=> c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_m_2,c_Nat_OSuc(V_na_2)) ) ).

fof(arity_Complex__Ocomplex__Rings_Osemiring,axiom,
    class_Rings_Osemiring(tc_Complex_Ocomplex) ).

fof(fact_dvd__imp__mod__0,axiom,
    ! [V_b,V_a,T_a] :
      ( ( c_Divides_Odiv__class_Omod(T_a,V_b,V_a) = c_Groups_Ozero__class_Ozero(T_a)
       <= hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(T_a),V_a),V_b)) )
     <= class_Divides_Osemiring__div(T_a) ) ).

fof(fact_zpower__zadd__distrib,axiom,
    ! [V_z,V_y,V_x] : hAPP(hAPP(c_Power_Opower__class_Opower(tc_Int_Oint),V_x),c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_y,V_z)) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),hAPP(hAPP(c_Power_Opower__class_Opower(tc_Int_Oint),V_x),V_y)),hAPP(hAPP(c_Power_Opower__class_Opower(tc_Int_Oint),V_x),V_z)) ).

fof(fact_mult__le__cancel__left__pos,axiom,
    ! [V_b_2,V_a_2,V_c_2,T_a] :
      ( class_Rings_Olinordered__ring__strict(T_a)
     => ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_c_2)
       => ( c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_c_2),V_a_2),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_c_2),V_b_2))
        <=> c_Orderings_Oord__class_Oless__eq(T_a,V_a_2,V_b_2) ) ) ) ).

fof(fact_divide__left__mono,axiom,
    ! [V_c,V_a,V_b,T_a] :
      ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_b,V_a)
       => ( ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b))
           => c_Orderings_Oord__class_Oless__eq(T_a,c_Rings_Oinverse__class_Odivide(T_a,V_c,V_a),c_Rings_Oinverse__class_Odivide(T_a,V_c,V_b)) )
         <= c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_c) ) )
     <= class_Fields_Olinordered__field(T_a) ) ).

fof(fact_add__le__imp__le__left,axiom,
    ! [V_b,V_a,V_c,T_a] :
      ( class_Groups_Oordered__ab__semigroup__add__imp__le(T_a)
     => ( c_Orderings_Oord__class_Oless__eq(T_a,V_a,V_b)
       <= c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Oplus__class_Oplus(T_a,V_c,V_a),c_Groups_Oplus__class_Oplus(T_a,V_c,V_b)) ) ) ).

fof(fact_synthetic__div__pCons,axiom,
    ! [V_c,V_p,V_a,T_a] :
      ( class_Rings_Ocomm__semiring__0(T_a)
     => c_Polynomial_OpCons(T_a,hAPP(c_Polynomial_Opoly(T_a,V_p),V_c),c_Polynomial_Osynthetic__div(T_a,V_p,V_c)) = c_Polynomial_Osynthetic__div(T_a,c_Polynomial_OpCons(T_a,V_a,V_p),V_c) ) ).

fof(fact_smult__1__left,axiom,
    ! [V_p,T_a] :
      ( class_Rings_Ocomm__semiring__1(T_a)
     => c_Polynomial_Osmult(T_a,c_Groups_Oone__class_Oone(T_a),V_p) = V_p ) ).

fof(fact_linorder__cases,axiom,
    ! [V_y,V_x,T_a] :
      ( class_Orderings_Olinorder(T_a)
     => ( ~ c_Orderings_Oord__class_Oless(T_a,V_x,V_y)
       => ( V_y != V_x
         => c_Orderings_Oord__class_Oless(T_a,V_y,V_x) ) ) ) ).

fof(fact_comm__semiring__1__class_Onormalizing__semiring__rules_I32_J,axiom,
    ! [V_x,T_a] :
      ( c_Groups_Oone__class_Oone(T_a) = hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_x),c_Groups_Ozero__class_Ozero(tc_Nat_Onat))
     <= class_Rings_Ocomm__semiring__1(T_a) ) ).

fof(fact_less__antisym,axiom,
    ! [V_m,V_n] :
      ( ~ c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_n,V_m)
     => ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_n,c_Nat_OSuc(V_m))
       => V_m = V_n ) ) ).

fof(fact_odd__less__0,axiom,
    ! [V_z_2] :
      ( c_Orderings_Oord__class_Oless(tc_Int_Oint,V_z_2,c_Groups_Ozero__class_Ozero(tc_Int_Oint))
    <=> c_Orderings_Oord__class_Oless(tc_Int_Oint,c_Groups_Oplus__class_Oplus(tc_Int_Oint,c_Groups_Oplus__class_Oplus(tc_Int_Oint,c_Groups_Oone__class_Oone(tc_Int_Oint),V_z_2),V_z_2),c_Groups_Ozero__class_Ozero(tc_Int_Oint)) ) ).

fof(fact_mult__smult__left,axiom,
    ! [V_q,V_p,V_a,T_a] :
      ( class_Rings_Ocomm__semiring__0(T_a)
     => hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Polynomial_Opoly(T_a)),c_Polynomial_Osmult(T_a,V_a,V_p)),V_q) = c_Polynomial_Osmult(T_a,V_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Polynomial_Opoly(T_a)),V_p),V_q)) ) ).

fof(arity_Nat__Onat__Rings_Odvd,axiom,
    class_Rings_Odvd(tc_Nat_Onat) ).

fof(fact_diff__poly__code_I2_J,axiom,
    ! [V_p,T_a] :
      ( V_p = c_Groups_Ominus__class_Ominus(tc_Polynomial_Opoly(T_a),V_p,c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a)))
     <= class_Groups_Oab__group__add(T_a) ) ).

fof(fact_add__poly__code_I1_J,axiom,
    ! [V_q,T_a] :
      ( class_Groups_Ocomm__monoid__add(T_a)
     => c_Groups_Oplus__class_Oplus(tc_Polynomial_Opoly(T_a),c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a)),V_q) = V_q ) ).

fof(fact_smult__diff__left,axiom,
    ! [V_p,V_b,V_a,T_a] :
      ( class_Rings_Ocomm__ring(T_a)
     => c_Groups_Ominus__class_Ominus(tc_Polynomial_Opoly(T_a),c_Polynomial_Osmult(T_a,V_a,V_p),c_Polynomial_Osmult(T_a,V_b,V_p)) = c_Polynomial_Osmult(T_a,c_Groups_Ominus__class_Ominus(T_a,V_a,V_b),V_p) ) ).

fof(arity_Nat__Onat__Rings_Ocomm__semiring__0,axiom,
    class_Rings_Ocomm__semiring__0(tc_Nat_Onat) ).

fof(fact_dvd_Oorder__trans,axiom,
    ! [V_z,V_y,V_x] :
      ( ( hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Nat_Onat),V_y),V_z))
       => hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Nat_Onat),V_x),V_z)) )
     <= hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Nat_Onat),V_x),V_y)) ) ).

fof(fact_ord__less__eq__trans,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( class_Orderings_Oord(T_a)
     => ( c_Orderings_Oord__class_Oless(T_a,V_a,V_b)
       => ( V_b = V_c
         => c_Orderings_Oord__class_Oless(T_a,V_a,V_c) ) ) ) ).

fof(fact_add__strict__increasing2,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( class_Groups_Oordered__comm__monoid__add(T_a)
     => ( ( c_Orderings_Oord__class_Oless(T_a,V_b,V_c)
         => c_Orderings_Oord__class_Oless(T_a,V_b,c_Groups_Oplus__class_Oplus(T_a,V_a,V_c)) )
       <= c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_a) ) ) ).

fof(arity_Polynomial__Opoly__Groups_Oordered__ab__semigroup__add,axiom,
    ! [T_1] :
      ( class_Groups_Oordered__ab__semigroup__add(tc_Polynomial_Opoly(T_1))
     <= class_Rings_Olinordered__idom(T_1) ) ).

fof(arity_Int__Oint__Rings_Ocomm__ring,axiom,
    class_Rings_Ocomm__ring(tc_Int_Oint) ).

fof(arity_Int__Oint__Groups_Ocancel__semigroup__add,axiom,
    class_Groups_Ocancel__semigroup__add(tc_Int_Oint) ).

fof(fact_zadd__zmult__distrib2,axiom,
    ! [V_z2,V_z1,V_w] : hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_w),c_Groups_Oplus__class_Oplus(tc_Int_Oint,V_z1,V_z2)) = c_Groups_Oplus__class_Oplus(tc_Int_Oint,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_w),V_z1),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_w),V_z2)) ).

fof(fact_nat__mult__eq__cancel1,axiom,
    ! [V_na_2,V_m_2,V_k_2] :
      ( ( V_na_2 = V_m_2
      <=> hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_k_2),V_na_2) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_k_2),V_m_2) )
     <= c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_k_2) ) ).

fof(fact_compl__le__compl__iff,axiom,
    ! [V_y_2,V_x_2,T_a] :
      ( ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ouminus__class_Ouminus(T_a,V_x_2),c_Groups_Ouminus__class_Ouminus(T_a,V_y_2))
      <=> c_Orderings_Oord__class_Oless__eq(T_a,V_y_2,V_x_2) )
     <= class_Lattices_Oboolean__algebra(T_a) ) ).

fof(fact_diff__frac__eq,axiom,
    ! [V_w,V_x,V_z,V_y,T_a] :
      ( ( V_y != c_Groups_Ozero__class_Ozero(T_a)
       => ( c_Groups_Ozero__class_Ozero(T_a) != V_z
         => c_Rings_Oinverse__class_Odivide(T_a,c_Groups_Ominus__class_Ominus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_x),V_z),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_w),V_y)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_y),V_z)) = c_Groups_Ominus__class_Ominus(T_a,c_Rings_Oinverse__class_Odivide(T_a,V_x,V_y),c_Rings_Oinverse__class_Odivide(T_a,V_w,V_z)) ) )
     <= class_Fields_Ofield(T_a) ) ).

fof(fact_nat__less__cases,axiom,
    ! [V_P_2,V_na_2,V_m_2] :
      ( ( ( V_m_2 = V_na_2
         => hBOOL(hAPP(hAPP(V_P_2,V_na_2),V_m_2)) )
       => ( ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_na_2,V_m_2)
           => hBOOL(hAPP(hAPP(V_P_2,V_na_2),V_m_2)) )
         => hBOOL(hAPP(hAPP(V_P_2,V_na_2),V_m_2)) ) )
     <= ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_m_2,V_na_2)
       => hBOOL(hAPP(hAPP(V_P_2,V_na_2),V_m_2)) ) ) ).

fof(fact_add__leE,axiom,
    ! [V_n,V_k,V_m] :
      ( ~ ( ~ c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_k,V_n)
         <= c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m,V_n) )
     <= c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_m,V_k),V_n) ) ).

fof(arity_Polynomial__Opoly__Int_Oring__char__0,axiom,
    ! [T_1] :
      ( class_Rings_Olinordered__idom(T_1)
     => class_Int_Oring__char__0(tc_Polynomial_Opoly(T_1)) ) ).

fof(fact_ab__left__minus,axiom,
    ! [V_a,T_a] :
      ( c_Groups_Ozero__class_Ozero(T_a) = c_Groups_Oplus__class_Oplus(T_a,c_Groups_Ouminus__class_Ouminus(T_a,V_a),V_a)
     <= class_Groups_Oab__group__add(T_a) ) ).

fof(fact_trans__less__add1,axiom,
    ! [V_m,V_j,V_i] :
      ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_i,V_j)
     => c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_i,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_j,V_m)) ) ).

fof(fact_nat__mult__eq__cancel__disj,axiom,
    ! [V_na_2,V_m_2,V_k_2] :
      ( ( c_Groups_Ozero__class_Ozero(tc_Nat_Onat) = V_k_2
        | V_m_2 = V_na_2 )
    <=> hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_k_2),V_m_2) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_k_2),V_na_2) ) ).

fof(fact_add__minus__cancel,axiom,
    ! [V_b,V_a,T_a] :
      ( c_Groups_Oplus__class_Oplus(T_a,V_a,c_Groups_Oplus__class_Oplus(T_a,c_Groups_Ouminus__class_Ouminus(T_a,V_a),V_b)) = V_b
     <= class_Groups_Ogroup__add(T_a) ) ).

fof(arity_Int__Oint__Rings_Ocomm__semiring__0,axiom,
    class_Rings_Ocomm__semiring__0(tc_Int_Oint) ).

fof(fact_power__commutes,axiom,
    ! [V_n,V_a,T_a] :
      ( hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_n)),V_a) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_n))
     <= class_Groups_Omonoid__mult(T_a) ) ).

fof(fact_comm__semiring__1__class_Onormalizing__semiring__rules_I20_J,axiom,
    ! [V_d,V_c,V_b,V_a,T_a] :
      ( class_Rings_Ocomm__semiring__1(T_a)
     => c_Groups_Oplus__class_Oplus(T_a,c_Groups_Oplus__class_Oplus(T_a,V_a,V_b),c_Groups_Oplus__class_Oplus(T_a,V_c,V_d)) = c_Groups_Oplus__class_Oplus(T_a,c_Groups_Oplus__class_Oplus(T_a,V_a,V_c),c_Groups_Oplus__class_Oplus(T_a,V_b,V_d)) ) ).

fof(fact_smult__monom,axiom,
    ! [V_n,V_b,V_a,T_a] :
      ( class_Rings_Ocomm__semiring__0(T_a)
     => c_Polynomial_Osmult(T_a,V_a,c_Polynomial_Omonom(T_a,V_b,V_n)) = c_Polynomial_Omonom(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b),V_n) ) ).

fof(fact_pos__poly__def,axiom,
    ! [V_pa_2,T_a] :
      ( class_Rings_Olinordered__idom(T_a)
     => ( c_Polynomial_Opos__poly(T_a,V_pa_2)
      <=> c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),hAPP(c_Polynomial_Ocoeff(T_a,V_pa_2),c_Polynomial_Odegree(T_a,V_pa_2))) ) ) ).

fof(fact_synthetic__div__unique__lemma,axiom,
    ! [V_a,V_p,V_c,T_a] :
      ( ( V_p = c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a))
       <= c_Polynomial_OpCons(T_a,V_a,V_p) = c_Polynomial_Osmult(T_a,V_c,V_p) )
     <= class_Rings_Ocomm__semiring__0(T_a) ) ).

fof(fact_zle__trans,axiom,
    ! [V_k,V_j,V_i] :
      ( ( c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,V_j,V_k)
       => c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,V_i,V_k) )
     <= c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,V_i,V_j) ) ).

fof(arity_Polynomial__Opoly__Groups_Ozero,axiom,
    ! [T_1] :
      ( class_Groups_Ozero(tc_Polynomial_Opoly(T_1))
     <= class_Groups_Ozero(T_1) ) ).

fof(fact_zle__refl,axiom,
    ! [V_w] : c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,V_w,V_w) ).

fof(fact_poly__eq__0__iff__dvd,axiom,
    ! [V_c_2,V_pa_2,T_a] :
      ( class_Rings_Oidom(T_a)
     => ( hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Polynomial_Opoly(T_a)),c_Polynomial_OpCons(T_a,c_Groups_Ouminus__class_Ouminus(T_a,V_c_2),c_Polynomial_OpCons(T_a,c_Groups_Oone__class_Oone(T_a),c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a))))),V_pa_2))
      <=> hAPP(c_Polynomial_Opoly(T_a,V_pa_2),V_c_2) = c_Groups_Ozero__class_Ozero(T_a) ) ) ).

fof(fact_comm__semiring__1__class_Onormalizing__semiring__rules_I21_J,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( class_Rings_Ocomm__semiring__1(T_a)
     => c_Groups_Oplus__class_Oplus(T_a,V_a,c_Groups_Oplus__class_Oplus(T_a,V_b,V_c)) = c_Groups_Oplus__class_Oplus(T_a,c_Groups_Oplus__class_Oplus(T_a,V_a,V_b),V_c) ) ).

fof(fact_dvd_Oless__asym,axiom,
    ! [V_y,V_x] :
      ( ( hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Nat_Onat),V_x),V_y))
        & ~ hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Nat_Onat),V_y),V_x)) )
     => ~ ( ~ hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Nat_Onat),V_x),V_y))
          & hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Nat_Onat),V_y),V_x)) ) ) ).

fof(fact_mult__1__left,axiom,
    ! [V_a,T_a] :
      ( V_a = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Groups_Oone__class_Oone(T_a)),V_a)
     <= class_Groups_Omonoid__mult(T_a) ) ).

fof(fact_mult__less__cancel__left__neg,axiom,
    ! [V_b_2,V_a_2,V_c_2,T_a] :
      ( ( ( c_Orderings_Oord__class_Oless(T_a,V_b_2,V_a_2)
        <=> c_Orderings_Oord__class_Oless(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_c_2),V_a_2),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_c_2),V_b_2)) )
       <= c_Orderings_Oord__class_Oless(T_a,V_c_2,c_Groups_Ozero__class_Ozero(T_a)) )
     <= class_Rings_Olinordered__ring__strict(T_a) ) ).

fof(fact_mult__imp__less__div__pos,axiom,
    ! [V_x,V_z,V_y,T_a] :
      ( ( ( c_Orderings_Oord__class_Oless(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_z),V_y),V_x)
         => c_Orderings_Oord__class_Oless(T_a,V_z,c_Rings_Oinverse__class_Odivide(T_a,V_x,V_y)) )
       <= c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_y) )
     <= class_Fields_Olinordered__field(T_a) ) ).

fof(fact_add__right__mono,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( class_Groups_Oordered__ab__semigroup__add(T_a)
     => ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Oplus__class_Oplus(T_a,V_a,V_c),c_Groups_Oplus__class_Oplus(T_a,V_b,V_c))
       <= c_Orderings_Oord__class_Oless__eq(T_a,V_a,V_b) ) ) ).

fof(fact_comm__ring__1__class_Onormalizing__ring__rules_I2_J,axiom,
    ! [V_y,V_x,T_a] :
      ( c_Groups_Oplus__class_Oplus(T_a,V_x,c_Groups_Ouminus__class_Ouminus(T_a,V_y)) = c_Groups_Ominus__class_Ominus(T_a,V_x,V_y)
     <= class_Rings_Ocomm__ring__1(T_a) ) ).

fof(arity_Polynomial__Opoly__Groups_Omonoid__add,axiom,
    ! [T_1] :
      ( class_Groups_Ocomm__monoid__add(T_1)
     => class_Groups_Omonoid__add(tc_Polynomial_Opoly(T_1)) ) ).

fof(fact_less__add__Suc1,axiom,
    ! [V_m,V_i] : c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_i,c_Nat_OSuc(c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_i,V_m))) ).

fof(fact_pCons__eq__iff,axiom,
    ! [V_qa_2,V_b_2,V_pa_2,V_a_2,T_a] :
      ( ( ( V_pa_2 = V_qa_2
          & V_b_2 = V_a_2 )
      <=> c_Polynomial_OpCons(T_a,V_a_2,V_pa_2) = c_Polynomial_OpCons(T_a,V_b_2,V_qa_2) )
     <= class_Groups_Ozero(T_a) ) ).

fof(fact_convex__bound__lt,axiom,
    ! [V_v,V_u,V_y,V_a,V_x,T_a] :
      ( class_Rings_Olinordered__semiring__1__strict(T_a)
     => ( c_Orderings_Oord__class_Oless(T_a,V_x,V_a)
       => ( c_Orderings_Oord__class_Oless(T_a,V_y,V_a)
         => ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_u)
           => ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_v)
             => ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_u),V_x),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_v),V_y)),V_a)
               <= c_Groups_Oplus__class_Oplus(T_a,V_u,V_v) = c_Groups_Oone__class_Oone(T_a) ) ) ) ) ) ) ).

fof(fact_power__eq__imp__eq__base,axiom,
    ! [V_b,V_n,V_a,T_a] :
      ( ( hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_b),V_n) = hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_n)
       => ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_a)
         => ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_b)
           => ( V_a = V_b
             <= c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_n) ) ) ) )
     <= class_Rings_Olinordered__semidom(T_a) ) ).

fof(fact_order__le__less__trans,axiom,
    ! [V_z,V_y,V_x,T_a] :
      ( ( ( c_Orderings_Oord__class_Oless(T_a,V_y,V_z)
         => c_Orderings_Oord__class_Oless(T_a,V_x,V_z) )
       <= c_Orderings_Oord__class_Oless__eq(T_a,V_x,V_y) )
     <= class_Orderings_Opreorder(T_a) ) ).

fof(fact_degree__pCons__le,axiom,
    ! [V_p,V_a,T_a] :
      ( class_Groups_Ozero(T_a)
     => c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,c_Polynomial_Odegree(T_a,c_Polynomial_OpCons(T_a,V_a,V_p)),c_Nat_OSuc(c_Polynomial_Odegree(T_a,V_p))) ) ).

fof(fact_q__neg__lemma,axiom,
    ! [V_r_H,V_q_H,V_b_H] :
      ( ( c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_r_H)
       => ( c_Orderings_Oord__class_Oless(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_b_H)
         => c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,V_q_H,c_Groups_Ozero__class_Ozero(tc_Int_Oint)) ) )
     <= c_Orderings_Oord__class_Oless(tc_Int_Oint,c_Groups_Oplus__class_Oplus(tc_Int_Oint,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_b_H),V_q_H),V_r_H),c_Groups_Ozero__class_Ozero(tc_Int_Oint)) ) ).

fof(fact_not__less__less__Suc__eq,axiom,
    ! [V_m_2,V_na_2] :
      ( ( V_na_2 = V_m_2
      <=> c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_na_2,c_Nat_OSuc(V_m_2)) )
     <= ~ c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_na_2,V_m_2) ) ).

fof(fact_minus__apply,axiom,
    ! [V_x_2,V_B_2,V_A_2,T_b,T_a] :
      ( hAPP(c_Groups_Ominus__class_Ominus(tc_fun(T_b,T_a),V_A_2,V_B_2),V_x_2) = c_Groups_Ominus__class_Ominus(T_a,hAPP(V_A_2,V_x_2),hAPP(V_B_2,V_x_2))
     <= class_Groups_Ominus(T_a) ) ).

fof(fact_ord__eq__le__trans,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( class_Orderings_Oord(T_a)
     => ( V_a = V_b
       => ( c_Orderings_Oord__class_Oless__eq(T_a,V_a,V_c)
         <= c_Orderings_Oord__class_Oless__eq(T_a,V_b,V_c) ) ) ) ).

fof(fact_zero__less__two,axiom,
    ! [T_a] :
      ( class_Rings_Olinordered__semidom(T_a)
     => c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),c_Groups_Oplus__class_Oplus(T_a,c_Groups_Oone__class_Oone(T_a),c_Groups_Oone__class_Oone(T_a))) ) ).

fof(fact_order__less__asym_H,axiom,
    ! [V_b,V_a,T_a] :
      ( ( ~ c_Orderings_Oord__class_Oless(T_a,V_b,V_a)
       <= c_Orderings_Oord__class_Oless(T_a,V_a,V_b) )
     <= class_Orderings_Opreorder(T_a) ) ).

fof(fact_mult__right__less__imp__less,axiom,
    ! [V_b,V_c,V_a,T_a] :
      ( ( ( c_Orderings_Oord__class_Oless(T_a,V_a,V_b)
         <= c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_c) )
       <= c_Orderings_Oord__class_Oless(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_c),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b),V_c)) )
     <= class_Rings_Olinordered__semiring(T_a) ) ).

fof(fact_poly__mod__minus__right,axiom,
    ! [V_y,V_x,T_a] :
      ( c_Divides_Odiv__class_Omod(tc_Polynomial_Opoly(T_a),V_x,V_y) = c_Divides_Odiv__class_Omod(tc_Polynomial_Opoly(T_a),V_x,c_Groups_Ouminus__class_Ouminus(tc_Polynomial_Opoly(T_a),V_y))
     <= class_Fields_Ofield(T_a) ) ).

fof(fact_diff__diff__cancel,axiom,
    ! [V_n,V_i] :
      ( V_i = c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_n,c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_n,V_i))
     <= c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_i,V_n) ) ).

fof(fact_square__eq__1__iff,axiom,
    ! [V_x_2,T_a] :
      ( class_Rings_Oring__1__no__zero__divisors(T_a)
     => ( ( c_Groups_Oone__class_Oone(T_a) = V_x_2
          | V_x_2 = c_Groups_Ouminus__class_Ouminus(T_a,c_Groups_Oone__class_Oone(T_a)) )
      <=> hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_x_2),V_x_2) = c_Groups_Oone__class_Oone(T_a) ) ) ).

fof(fact_trans__less__add2,axiom,
    ! [V_m,V_j,V_i] :
      ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_i,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_m,V_j))
     <= c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_i,V_j) ) ).

fof(fact_poly__minus,axiom,
    ! [V_x,V_p,T_a] :
      ( class_Rings_Ocomm__ring(T_a)
     => hAPP(c_Polynomial_Opoly(T_a,c_Groups_Ouminus__class_Ouminus(tc_Polynomial_Opoly(T_a),V_p)),V_x) = c_Groups_Ouminus__class_Ouminus(T_a,hAPP(c_Polynomial_Opoly(T_a,V_p),V_x)) ) ).

fof(fact_dvd__triv__right,axiom,
    ! [V_b,V_a,T_a] :
      ( hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(T_a),V_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b),V_a)))
     <= class_Rings_Ocomm__semiring__1(T_a) ) ).

fof(fact_minus__poly__code_I2_J,axiom,
    ! [V_p,V_a,T_b] :
      ( class_Groups_Oab__group__add(T_b)
     => c_Groups_Ouminus__class_Ouminus(tc_Polynomial_Opoly(T_b),c_Polynomial_OpCons(T_b,V_a,V_p)) = c_Polynomial_OpCons(T_b,c_Groups_Ouminus__class_Ouminus(T_b,V_a),c_Groups_Ouminus__class_Ouminus(tc_Polynomial_Opoly(T_b),V_p)) ) ).

fof(arity_Int__Oint__Groups_Ouminus,axiom,
    class_Groups_Ouminus(tc_Int_Oint) ).

fof(fact_sum__squares__gt__zero__iff,axiom,
    ! [V_y_2,V_x_2,T_a] :
      ( ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_x_2),V_x_2),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_y_2),V_y_2)))
      <=> ( c_Groups_Ozero__class_Ozero(T_a) != V_y_2
          | c_Groups_Ozero__class_Ozero(T_a) != V_x_2 ) )
     <= class_Rings_Olinordered__ring__strict(T_a) ) ).

fof(fact_mod__mod__trivial,axiom,
    ! [V_b,V_a,T_a] :
      ( c_Divides_Odiv__class_Omod(T_a,V_a,V_b) = c_Divides_Odiv__class_Omod(T_a,c_Divides_Odiv__class_Omod(T_a,V_a,V_b),V_b)
     <= class_Divides_Osemiring__div(T_a) ) ).

fof(fact_int__0__less__1,axiom,
    c_Orderings_Oord__class_Oless(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),c_Groups_Oone__class_Oone(tc_Int_Oint)) ).

fof(fact_comm__semiring__1__class_Onormalizing__semiring__rules_I2_J,axiom,
    ! [V_m,V_a,T_a] :
      ( hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Groups_Oplus__class_Oplus(T_a,V_a,c_Groups_Oone__class_Oone(T_a))),V_m) = c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_m),V_m)
     <= class_Rings_Ocomm__semiring__1(T_a) ) ).

fof(fact_degree__1,axiom,
    ! [T_a] :
      ( class_Rings_Ocomm__semiring__1(T_a)
     => c_Groups_Ozero__class_Ozero(tc_Nat_Onat) = c_Polynomial_Odegree(T_a,c_Groups_Oone__class_Oone(tc_Polynomial_Opoly(T_a))) ) ).

fof(fact_poly__add,axiom,
    ! [V_x,V_q,V_p,T_a] :
      ( class_Rings_Ocomm__semiring__0(T_a)
     => c_Groups_Oplus__class_Oplus(T_a,hAPP(c_Polynomial_Opoly(T_a,V_p),V_x),hAPP(c_Polynomial_Opoly(T_a,V_q),V_x)) = hAPP(c_Polynomial_Opoly(T_a,c_Groups_Oplus__class_Oplus(tc_Polynomial_Opoly(T_a),V_p,V_q)),V_x) ) ).

fof(fact_smult__add__right,axiom,
    ! [V_q,V_p,V_a,T_a] :
      ( class_Rings_Ocomm__semiring__0(T_a)
     => c_Groups_Oplus__class_Oplus(tc_Polynomial_Opoly(T_a),c_Polynomial_Osmult(T_a,V_a,V_p),c_Polynomial_Osmult(T_a,V_a,V_q)) = c_Polynomial_Osmult(T_a,V_a,c_Groups_Oplus__class_Oplus(tc_Polynomial_Opoly(T_a),V_p,V_q)) ) ).

fof(fact_poly__monom,axiom,
    ! [V_x,V_n,V_a,T_a] :
      ( hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_x),V_n)) = hAPP(c_Polynomial_Opoly(T_a,c_Polynomial_Omonom(T_a,V_a,V_n)),V_x)
     <= class_Rings_Ocomm__semiring__1(T_a) ) ).

fof(fact_mult__less__le__imp__less,axiom,
    ! [V_d,V_c,V_b,V_a,T_a] :
      ( ( ( ( ( c_Orderings_Oord__class_Oless(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_c),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b),V_d))
             <= c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_c) )
           <= c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_a) )
         <= c_Orderings_Oord__class_Oless__eq(T_a,V_c,V_d) )
       <= c_Orderings_Oord__class_Oless(T_a,V_a,V_b) )
     <= class_Rings_Olinordered__semiring__strict(T_a) ) ).

fof(fact_zle__add1__eq__le,axiom,
    ! [V_z_2,V_w_2] :
      ( c_Orderings_Oord__class_Oless(tc_Int_Oint,V_w_2,c_Groups_Oplus__class_Oplus(tc_Int_Oint,V_z_2,c_Groups_Oone__class_Oone(tc_Int_Oint)))
    <=> c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,V_w_2,V_z_2) ) ).

fof(fact_zero__less__mult__pos,axiom,
    ! [V_b,V_a,T_a] :
      ( ( ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_a)
         => c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_b) )
       <= c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b)) )
     <= class_Rings_Olinordered__semiring__strict(T_a) ) ).

fof(fact_less__poly__def,axiom,
    ! [V_y_2,V_x_2,T_a] :
      ( ( c_Orderings_Oord__class_Oless(tc_Polynomial_Opoly(T_a),V_x_2,V_y_2)
      <=> c_Polynomial_Opos__poly(T_a,c_Groups_Ominus__class_Ominus(tc_Polynomial_Opoly(T_a),V_y_2,V_x_2)) )
     <= class_Rings_Olinordered__idom(T_a) ) ).

fof(fact_mult__strict__right__mono__neg,axiom,
    ! [V_c,V_a,V_b,T_a] :
      ( ( c_Orderings_Oord__class_Oless(T_a,V_b,V_a)
       => ( c_Orderings_Oord__class_Oless(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_c),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b),V_c))
         <= c_Orderings_Oord__class_Oless(T_a,V_c,c_Groups_Ozero__class_Ozero(T_a)) ) )
     <= class_Rings_Olinordered__ring__strict(T_a) ) ).

fof(fact_nat__eq__add__iff1,axiom,
    ! [V_na_2,V_m_2,V_u_2,V_i_2,V_j_2] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_j_2,V_i_2)
     => ( c_Groups_Oplus__class_Oplus(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_i_2),V_u_2),V_m_2) = c_Groups_Oplus__class_Oplus(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_j_2),V_u_2),V_na_2)
      <=> V_na_2 = c_Groups_Oplus__class_Oplus(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_i_2,V_j_2)),V_u_2),V_m_2) ) ) ).

fof(arity_HOL__Obool__Groups_Ouminus,axiom,
    class_Groups_Ouminus(tc_HOL_Obool) ).

fof(arity_Complex__Ocomplex__RealVector_Oreal__normed__algebra,axiom,
    class_RealVector_Oreal__normed__algebra(tc_Complex_Ocomplex) ).

fof(fact_Nat__Transfer_Otransfer__nat__int__function__closures_I5_J,axiom,
    c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),c_Groups_Ozero__class_Ozero(tc_Int_Oint)) ).

fof(fact_order__antisym__conv,axiom,
    ! [V_x_2,V_y_2,T_a] :
      ( class_Orderings_Oorder(T_a)
     => ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_x_2,V_y_2)
        <=> V_x_2 = V_y_2 )
       <= c_Orderings_Oord__class_Oless__eq(T_a,V_y_2,V_x_2) ) ) ).

fof(fact_n,axiom,
    c_Nat_OSuc(v_n____) = c_Polynomial_Odegree(tc_Complex_Ocomplex,v_p) ).

fof(arity_Int__Oint__Rings_Oordered__cancel__semiring,axiom,
    class_Rings_Oordered__cancel__semiring(tc_Int_Oint) ).

fof(arity_Complex__Ocomplex__Groups_Ocancel__comm__monoid__add,axiom,
    class_Groups_Ocancel__comm__monoid__add(tc_Complex_Ocomplex) ).

fof(fact_coeff__inject,axiom,
    ! [V_y_2,V_x_2,T_a] :
      ( ( c_Polynomial_Ocoeff(T_a,V_y_2) = c_Polynomial_Ocoeff(T_a,V_x_2)
      <=> V_x_2 = V_y_2 )
     <= class_Groups_Ozero(T_a) ) ).

fof(fact_uminus__dvd__conv_I2_J,axiom,
    ! [V_t_2,V_d_2] :
      ( hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Int_Oint),V_d_2),V_t_2))
    <=> hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Int_Oint),V_d_2),c_Groups_Ouminus__class_Ouminus(tc_Int_Oint,V_t_2))) ) ).

fof(fact_mult_Ominus__left,axiom,
    ! [V_b,V_a,T_a] :
      ( c_Groups_Ouminus__class_Ouminus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b)) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Groups_Ouminus__class_Ouminus(T_a,V_a)),V_b)
     <= class_RealVector_Oreal__normed__algebra(T_a) ) ).

fof(arity_Int__Oint__Groups_Ocomm__monoid__mult,axiom,
    class_Groups_Ocomm__monoid__mult(tc_Int_Oint) ).

fof(arity_Nat__Onat__Rings_Oordered__semiring,axiom,
    class_Rings_Oordered__semiring(tc_Nat_Onat) ).

fof(fact_zadd__strict__right__mono,axiom,
    ! [V_k,V_j,V_i] :
      ( c_Orderings_Oord__class_Oless(tc_Int_Oint,c_Groups_Oplus__class_Oplus(tc_Int_Oint,V_i,V_k),c_Groups_Oplus__class_Oplus(tc_Int_Oint,V_j,V_k))
     <= c_Orderings_Oord__class_Oless(tc_Int_Oint,V_i,V_j) ) ).

fof(fact_nat__zero__less__power__iff,axiom,
    ! [V_na_2,V_x_2] :
      ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),hAPP(hAPP(c_Power_Opower__class_Opower(tc_Nat_Onat),V_x_2),V_na_2))
    <=> ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_x_2)
        | V_na_2 = c_Groups_Ozero__class_Ozero(tc_Nat_Onat) ) ) ).

fof(fact_mult__right_Odiff,axiom,
    ! [V_y,V_x,V_xa,T_a] :
      ( c_Groups_Ominus__class_Ominus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_xa),V_x),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_xa),V_y)) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_xa),c_Groups_Ominus__class_Ominus(T_a,V_x,V_y))
     <= class_RealVector_Oreal__normed__algebra(T_a) ) ).

fof(help_c__fequal__2,axiom,
    ! [V_y_2,V_x_2] :
      ( hBOOL(c_fequal(V_x_2,V_y_2))
      | V_x_2 != V_y_2 ) ).

fof(fact_power__Suc__less__one,axiom,
    ! [V_n,V_a,T_a] :
      ( ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_a)
       => ( c_Orderings_Oord__class_Oless(T_a,V_a,c_Groups_Oone__class_Oone(T_a))
         => c_Orderings_Oord__class_Oless(T_a,hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),c_Nat_OSuc(V_n)),c_Groups_Oone__class_Oone(T_a)) ) )
     <= class_Rings_Olinordered__semidom(T_a) ) ).

fof(fact_zero__less__mult__pos2,axiom,
    ! [V_a,V_b,T_a] :
      ( ( ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_b)
         <= c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_a) )
       <= c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b),V_a)) )
     <= class_Rings_Olinordered__semiring__strict(T_a) ) ).

fof(fact_smult__dvd__cancel,axiom,
    ! [V_q,V_p,V_a,T_a] :
      ( ( hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Polynomial_Opoly(T_a)),V_p),V_q))
       <= hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Polynomial_Opoly(T_a)),c_Polynomial_Osmult(T_a,V_a,V_p)),V_q)) )
     <= class_Rings_Ocomm__semiring__1(T_a) ) ).

fof(fact_Suc__n__not__le__n,axiom,
    ! [V_n] : ~ c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,c_Nat_OSuc(V_n),V_n) ).

fof(fact_less__minus__self__iff,axiom,
    ! [V_a_2,T_a] :
      ( ( c_Orderings_Oord__class_Oless(T_a,V_a_2,c_Groups_Ozero__class_Ozero(T_a))
      <=> c_Orderings_Oord__class_Oless(T_a,V_a_2,c_Groups_Ouminus__class_Ouminus(T_a,V_a_2)) )
     <= class_Rings_Olinordered__idom(T_a) ) ).

fof(fact_nonzero__eq__divide__eq,axiom,
    ! [V_b_2,V_a_2,V_c_2,T_a] :
      ( ( ( V_b_2 = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a_2),V_c_2)
        <=> c_Rings_Oinverse__class_Odivide(T_a,V_b_2,V_c_2) = V_a_2 )
       <= V_c_2 != c_Groups_Ozero__class_Ozero(T_a) )
     <= class_Rings_Odivision__ring(T_a) ) ).

fof(fact_dvd__imp__le,axiom,
    ! [V_n,V_k] :
      ( hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Nat_Onat),V_k),V_n))
     => ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_n)
       => c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_k,V_n) ) ) ).

fof(fact_gr__implies__not0,axiom,
    ! [V_n,V_m] :
      ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_m,V_n)
     => c_Groups_Ozero__class_Ozero(tc_Nat_Onat) != V_n ) ).

fof(fact_diff__add__cancel,axiom,
    ! [V_b,V_a,T_a] :
      ( class_Groups_Ogroup__add(T_a)
     => c_Groups_Oplus__class_Oplus(T_a,c_Groups_Ominus__class_Ominus(T_a,V_a,V_b),V_b) = V_a ) ).

fof(fact_dvd__1__left,axiom,
    ! [V_k] : hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Nat_Onat),c_Nat_OSuc(c_Groups_Ozero__class_Ozero(tc_Nat_Onat))),V_k)) ).

fof(fact_power__eq__if,axiom,
    ! [V_p,V_m] :
      ( ( c_Groups_Oone__class_Oone(tc_Nat_Onat) = hAPP(hAPP(c_Power_Opower__class_Opower(tc_Nat_Onat),V_p),V_m)
       <= c_Groups_Ozero__class_Ozero(tc_Nat_Onat) = V_m )
      & ( c_Groups_Ozero__class_Ozero(tc_Nat_Onat) != V_m
       => hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_p),hAPP(hAPP(c_Power_Opower__class_Opower(tc_Nat_Onat),V_p),c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_m,c_Groups_Oone__class_Oone(tc_Nat_Onat)))) = hAPP(hAPP(c_Power_Opower__class_Opower(tc_Nat_Onat),V_p),V_m) ) ) ).

fof(fact_le__square,axiom,
    ! [V_m] : c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_m),V_m)) ).

fof(fact_xt1_I12_J,axiom,
    ! [V_b,V_a,T_a] :
      ( class_Orderings_Oorder(T_a)
     => ( V_a != V_b
       => ( c_Orderings_Oord__class_Oless__eq(T_a,V_b,V_a)
         => c_Orderings_Oord__class_Oless(T_a,V_b,V_a) ) ) ) ).

fof(fact_diff__is__0__eq,axiom,
    ! [V_na_2,V_m_2] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m_2,V_na_2)
    <=> c_Groups_Ozero__class_Ozero(tc_Nat_Onat) = c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_m_2,V_na_2) ) ).

fof(fact_power__inject__exp,axiom,
    ! [V_na_2,V_m_2,V_a_2,T_a] :
      ( class_Rings_Olinordered__semidom(T_a)
     => ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Oone__class_Oone(T_a),V_a_2)
       => ( hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a_2),V_na_2) = hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a_2),V_m_2)
        <=> V_na_2 = V_m_2 ) ) ) ).

fof(fact_dvd__diff__nat,axiom,
    ! [V_n,V_m,V_k] :
      ( hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Nat_Onat),V_k),V_m))
     => ( hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Nat_Onat),V_k),V_n))
       => hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Nat_Onat),V_k),c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_m,V_n))) ) ) ).

fof(arity_Complex__Ocomplex__Groups_Ocomm__monoid__add,axiom,
    class_Groups_Ocomm__monoid__add(tc_Complex_Ocomplex) ).

fof(fact_mult__imp__div__pos__le,axiom,
    ! [V_z,V_x,V_y,T_a] :
      ( class_Fields_Olinordered__field(T_a)
     => ( ( c_Orderings_Oord__class_Oless__eq(T_a,c_Rings_Oinverse__class_Odivide(T_a,V_x,V_y),V_z)
         <= c_Orderings_Oord__class_Oless__eq(T_a,V_x,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_z),V_y)) )
       <= c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_y) ) ) ).

fof(fact_less__trans__Suc,axiom,
    ! [V_k,V_j,V_i] :
      ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_i,V_j)
     => ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Nat_OSuc(V_i),V_k)
       <= c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_j,V_k) ) ) ).

fof(fact_coeff__linear__power,axiom,
    ! [V_n,V_a,T_a] :
      ( hAPP(c_Polynomial_Ocoeff(T_a,hAPP(hAPP(c_Power_Opower__class_Opower(tc_Polynomial_Opoly(T_a)),c_Polynomial_OpCons(T_a,V_a,c_Polynomial_OpCons(T_a,c_Groups_Oone__class_Oone(T_a),c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a))))),V_n)),V_n) = c_Groups_Oone__class_Oone(T_a)
     <= class_Rings_Ocomm__semiring__1(T_a) ) ).

fof(fact_mult__mono_H,axiom,
    ! [V_d,V_c,V_b,V_a,T_a] :
      ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_a,V_b)
       => ( ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_a)
           => ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_c)
             => c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_c),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b),V_d)) ) )
         <= c_Orderings_Oord__class_Oless__eq(T_a,V_c,V_d) ) )
     <= class_Rings_Oordered__semiring(T_a) ) ).

fof(fact_mult__left_Ozero,axiom,
    ! [V_y,T_a] :
      ( hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Groups_Ozero__class_Ozero(T_a)),V_y) = c_Groups_Ozero__class_Ozero(T_a)
     <= class_RealVector_Oreal__normed__algebra(T_a) ) ).

fof(arity_Complex__Ocomplex__Groups_Omonoid__add,axiom,
    class_Groups_Omonoid__add(tc_Complex_Ocomplex) ).

fof(fact_le__fun__def,axiom,
    ! [V_g_2,V_f_2,T_a,T_b] :
      ( ( c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,T_b),V_f_2,V_g_2)
      <=> ! [B_x] : c_Orderings_Oord__class_Oless__eq(T_b,hAPP(V_f_2,B_x),hAPP(V_g_2,B_x)) )
     <= class_Orderings_Oord(T_b) ) ).

fof(fact_mult__is__0,axiom,
    ! [V_na_2,V_m_2] :
      ( hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_m_2),V_na_2) = c_Groups_Ozero__class_Ozero(tc_Nat_Onat)
    <=> ( V_m_2 = c_Groups_Ozero__class_Ozero(tc_Nat_Onat)
        | c_Groups_Ozero__class_Ozero(tc_Nat_Onat) = V_na_2 ) ) ).

fof(fact_add__Suc,axiom,
    ! [V_n,V_m] : c_Nat_OSuc(c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_m,V_n)) = c_Groups_Oplus__class_Oplus(tc_Nat_Onat,c_Nat_OSuc(V_m),V_n) ).

fof(arity_Int__Oint__Rings_Ocomm__semiring,axiom,
    class_Rings_Ocomm__semiring(tc_Int_Oint) ).

fof(fact_dvd__mult__cancel__right,axiom,
    ! [V_b_2,V_c_2,V_a_2,T_a] :
      ( class_Rings_Oidom(T_a)
     => ( hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a_2),V_c_2)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b_2),V_c_2)))
      <=> ( c_Groups_Ozero__class_Ozero(T_a) = V_c_2
          | hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(T_a),V_a_2),V_b_2)) ) ) ) ).

fof(fact_pcompose__pCons,axiom,
    ! [V_q,V_p,V_a,T_a] :
      ( c_Polynomial_Opcompose(T_a,c_Polynomial_OpCons(T_a,V_a,V_p),V_q) = c_Groups_Oplus__class_Oplus(tc_Polynomial_Opoly(T_a),c_Polynomial_OpCons(T_a,V_a,c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a))),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Polynomial_Opoly(T_a)),V_q),c_Polynomial_Opcompose(T_a,V_p,V_q)))
     <= class_Rings_Ocomm__semiring__0(T_a) ) ).

fof(fact_Suc__neq__Zero,axiom,
    ! [V_m] : c_Nat_OSuc(V_m) != c_Groups_Ozero__class_Ozero(tc_Nat_Onat) ).

fof(arity_Int__Oint__Rings_Oordered__semiring,axiom,
    class_Rings_Oordered__semiring(tc_Int_Oint) ).

fof(fact_power__0__Suc,axiom,
    ! [V_n,T_a] :
      ( ( class_Power_Opower(T_a)
        & class_Rings_Osemiring__0(T_a) )
     => c_Groups_Ozero__class_Ozero(T_a) = hAPP(hAPP(c_Power_Opower__class_Opower(T_a),c_Groups_Ozero__class_Ozero(T_a)),c_Nat_OSuc(V_n)) ) ).

fof(fact_less__or__eq__imp__le,axiom,
    ! [V_n,V_m] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m,V_n)
     <= ( V_m = V_n
        | c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_m,V_n) ) ) ).

fof(fact_dvd__minus__iff,axiom,
    ! [V_y_2,V_x_2,T_a] :
      ( class_Rings_Ocomm__ring__1(T_a)
     => ( hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(T_a),V_x_2),c_Groups_Ouminus__class_Ouminus(T_a,V_y_2)))
      <=> hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(T_a),V_x_2),V_y_2)) ) ) ).

fof(fact_comm__semiring__class_Odistrib,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( class_Rings_Ocomm__semiring(T_a)
     => hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Groups_Oplus__class_Oplus(T_a,V_a,V_b)),V_c) = c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_c),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b),V_c)) ) ).

fof(fact_uminus__dvd__conv_I1_J,axiom,
    ! [V_t_2,V_d_2] :
      ( hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Int_Oint),V_d_2),V_t_2))
    <=> hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Int_Oint),c_Groups_Ouminus__class_Ouminus(tc_Int_Oint,V_d_2)),V_t_2)) ) ).

fof(arity_Int__Oint__Groups_Ogroup__add,axiom,
    class_Groups_Ogroup__add(tc_Int_Oint) ).

fof(fact_dvd__smult__cancel,axiom,
    ! [V_q,V_a,V_p,T_a] :
      ( ( hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Polynomial_Opoly(T_a)),V_p),c_Polynomial_Osmult(T_a,V_a,V_q)))
       => ( hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Polynomial_Opoly(T_a)),V_p),V_q))
         <= c_Groups_Ozero__class_Ozero(T_a) != V_a ) )
     <= class_Fields_Ofield(T_a) ) ).

fof(fact_zpower__zpower,axiom,
    ! [V_z,V_y,V_x] : hAPP(hAPP(c_Power_Opower__class_Opower(tc_Int_Oint),hAPP(hAPP(c_Power_Opower__class_Opower(tc_Int_Oint),V_x),V_y)),V_z) = hAPP(hAPP(c_Power_Opower__class_Opower(tc_Int_Oint),V_x),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_y),V_z)) ).

fof(fact_One__nat__def,axiom,
    c_Groups_Oone__class_Oone(tc_Nat_Onat) = c_Nat_OSuc(c_Groups_Ozero__class_Ozero(tc_Nat_Onat)) ).

fof(fact_mult__poly__0__right,axiom,
    ! [V_p,T_a] :
      ( class_Rings_Ocomm__semiring__0(T_a)
     => hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Polynomial_Opoly(T_a)),V_p),c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a))) = c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a)) ) ).

fof(arity_Nat__Onat__Groups_Oab__semigroup__mult,axiom,
    class_Groups_Oab__semigroup__mult(tc_Nat_Onat) ).

fof(fact_comm__semiring__1__class_Onormalizing__semiring__rules_I7_J,axiom,
    ! [V_b,V_a,T_a] :
      ( class_Rings_Ocomm__semiring__1(T_a)
     => hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b),V_a) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b) ) ).

fof(fact_Nat_Odiff__diff__eq,axiom,
    ! [V_n,V_m,V_k] :
      ( ( c_Groups_Ominus__class_Ominus(tc_Nat_Onat,c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_m,V_k),c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_n,V_k)) = c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_m,V_n)
       <= c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_k,V_n) )
     <= c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_k,V_m) ) ).

fof(fact_divide__left__mono__neg,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( class_Fields_Olinordered__field__inverse__zero(T_a)
     => ( c_Orderings_Oord__class_Oless__eq(T_a,V_a,V_b)
       => ( ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b))
           => c_Orderings_Oord__class_Oless__eq(T_a,c_Rings_Oinverse__class_Odivide(T_a,V_c,V_a),c_Rings_Oinverse__class_Odivide(T_a,V_c,V_b)) )
         <= c_Orderings_Oord__class_Oless__eq(T_a,V_c,c_Groups_Ozero__class_Ozero(T_a)) ) ) ) ).

fof(fact_smult__smult,axiom,
    ! [V_p,V_b,V_a,T_a] :
      ( c_Polynomial_Osmult(T_a,V_a,c_Polynomial_Osmult(T_a,V_b,V_p)) = c_Polynomial_Osmult(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b),V_p)
     <= class_Rings_Ocomm__semiring__0(T_a) ) ).

fof(arity_Polynomial__Opoly__Rings_Osemiring,axiom,
    ! [T_1] :
      ( class_Rings_Osemiring(tc_Polynomial_Opoly(T_1))
     <= class_Rings_Ocomm__semiring__0(T_1) ) ).

fof(fact_zmult__assoc,axiom,
    ! [V_z3,V_z2,V_z1] : hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_z1),V_z2)),V_z3) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_z1),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_z2),V_z3)) ).

fof(fact_add__0__iff,axiom,
    ! [V_a_2,V_b_2,T_a] :
      ( class_Semiring__Normalization_Ocomm__semiring__1__cancel__crossproduct(T_a)
     => ( V_b_2 = c_Groups_Oplus__class_Oplus(T_a,V_b_2,V_a_2)
      <=> c_Groups_Ozero__class_Ozero(T_a) = V_a_2 ) ) ).

fof(fact_order__less__imp__not__eq2,axiom,
    ! [V_y,V_x,T_a] :
      ( class_Orderings_Oorder(T_a)
     => ( V_y != V_x
       <= c_Orderings_Oord__class_Oless(T_a,V_x,V_y) ) ) ).

fof(fact_pos__less__divide__eq,axiom,
    ! [V_b_2,V_a_2,V_c_2,T_a] :
      ( class_Fields_Olinordered__field(T_a)
     => ( ( c_Orderings_Oord__class_Oless(T_a,V_a_2,c_Rings_Oinverse__class_Odivide(T_a,V_b_2,V_c_2))
        <=> c_Orderings_Oord__class_Oless(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a_2),V_c_2),V_b_2) )
       <= c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_c_2) ) ) ).

fof(arity_Complex__Ocomplex__Groups_Ocancel__semigroup__add,axiom,
    class_Groups_Ocancel__semigroup__add(tc_Complex_Ocomplex) ).

fof(fact_power__Suc,axiom,
    ! [V_n,V_a,T_a] :
      ( class_Power_Opower(T_a)
     => hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_n)) = hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),c_Nat_OSuc(V_n)) ) ).

fof(arity_Complex__Ocomplex__Semiring__Normalization_Ocomm__semiring__1__cancel__crossproduct,axiom,
    class_Semiring__Normalization_Ocomm__semiring__1__cancel__crossproduct(tc_Complex_Ocomplex) ).

fof(fact_less__diff__conv,axiom,
    ! [V_k_2,V_j_2,V_i_2] :
      ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_i_2,c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_j_2,V_k_2))
    <=> c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_i_2,V_k_2),V_j_2) ) ).

fof(fact_minus__poly__code_I1_J,axiom,
    ! [T_a] :
      ( c_Groups_Ouminus__class_Ouminus(tc_Polynomial_Opoly(T_a),c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a))) = c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a))
     <= class_Groups_Oab__group__add(T_a) ) ).

fof(fact_pow__divides__eq__nat,axiom,
    ! [V_b_2,V_a_2,V_na_2] :
      ( ( hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Nat_Onat),hAPP(hAPP(c_Power_Opower__class_Opower(tc_Nat_Onat),V_a_2),V_na_2)),hAPP(hAPP(c_Power_Opower__class_Opower(tc_Nat_Onat),V_b_2),V_na_2)))
      <=> hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Nat_Onat),V_a_2),V_b_2)) )
     <= c_Groups_Ozero__class_Ozero(tc_Nat_Onat) != V_na_2 ) ).

fof(fact_realpow__Suc__le__self,axiom,
    ! [V_n,V_r,T_a] :
      ( class_Rings_Olinordered__semidom(T_a)
     => ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_r)
       => ( c_Orderings_Oord__class_Oless__eq(T_a,V_r,c_Groups_Oone__class_Oone(T_a))
         => c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_r),c_Nat_OSuc(V_n)),V_r) ) ) ) ).

fof(fact_nat__le__add__iff1,axiom,
    ! [V_na_2,V_m_2,V_u_2,V_i_2,V_j_2] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_j_2,V_i_2)
     => ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_i_2,V_j_2)),V_u_2),V_m_2),V_na_2)
      <=> c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_i_2),V_u_2),V_m_2),c_Groups_Oplus__class_Oplus(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_j_2),V_u_2),V_na_2)) ) ) ).

fof(arity_HOL__Obool__Orderings_Oord,axiom,
    class_Orderings_Oord(tc_HOL_Obool) ).

fof(fact_coeff__smult,axiom,
    ! [V_n,V_p,V_a,T_a] :
      ( hAPP(c_Polynomial_Ocoeff(T_a,c_Polynomial_Osmult(T_a,V_a,V_p)),V_n) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),hAPP(c_Polynomial_Ocoeff(T_a,V_p),V_n))
     <= class_Rings_Ocomm__semiring__0(T_a) ) ).

fof(fact_nonzero__minus__divide__right,axiom,
    ! [V_a,V_b,T_a] :
      ( ( c_Groups_Ouminus__class_Ouminus(T_a,c_Rings_Oinverse__class_Odivide(T_a,V_a,V_b)) = c_Rings_Oinverse__class_Odivide(T_a,V_a,c_Groups_Ouminus__class_Ouminus(T_a,V_b))
       <= V_b != c_Groups_Ozero__class_Ozero(T_a) )
     <= class_Rings_Odivision__ring(T_a) ) ).

fof(fact_diff__Suc__eq__diff__pred,axiom,
    ! [V_n,V_m] : c_Groups_Ominus__class_Ominus(tc_Nat_Onat,c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_m,c_Groups_Oone__class_Oone(tc_Nat_Onat)),V_n) = c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_m,c_Nat_OSuc(V_n)) ).

fof(fact_minus__equation__iff,axiom,
    ! [V_b_2,V_a_2,T_a] :
      ( class_Groups_Ogroup__add(T_a)
     => ( V_b_2 = c_Groups_Ouminus__class_Ouminus(T_a,V_a_2)
      <=> V_a_2 = c_Groups_Ouminus__class_Ouminus(T_a,V_b_2) ) ) ).

fof(arity_Int__Oint__Groups_Oab__semigroup__mult,axiom,
    class_Groups_Oab__semigroup__mult(tc_Int_Oint) ).

fof(fact_power_Opower_Opower__Suc,axiom,
    ! [V_na_2,V_a_2,V_times_2,V_one_2,T_a] : hAPP(hAPP(V_times_2,V_a_2),hAPP(hAPP(c_Power_Opower_Opower(T_a,V_one_2,V_times_2),V_a_2),V_na_2)) = hAPP(hAPP(c_Power_Opower_Opower(T_a,V_one_2,V_times_2),V_a_2),c_Nat_OSuc(V_na_2)) ).

fof(fact_nat__mult__dvd__cancel1,axiom,
    ! [V_na_2,V_m_2,V_k_2] :
      ( ( hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Nat_Onat),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_k_2),V_m_2)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_k_2),V_na_2)))
      <=> hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Nat_Onat),V_m_2),V_na_2)) )
     <= c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_k_2) ) ).

fof(fact_le__diff__conv,axiom,
    ! [V_i_2,V_k_2,V_j_2] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_j_2,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_i_2,V_k_2))
    <=> c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_j_2,V_k_2),V_i_2) ) ).

fof(fact_mult__zero__left,axiom,
    ! [V_a,T_a] :
      ( class_Rings_Omult__zero(T_a)
     => hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Groups_Ozero__class_Ozero(T_a)),V_a) = c_Groups_Ozero__class_Ozero(T_a) ) ).

fof(fact_le__eq__less__or__eq,axiom,
    ! [V_na_2,V_m_2] :
      ( ( V_m_2 = V_na_2
        | c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_m_2,V_na_2) )
    <=> c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m_2,V_na_2) ) ).

fof(fact_diff__0__right,axiom,
    ! [V_a,T_a] :
      ( c_Groups_Ominus__class_Ominus(T_a,V_a,c_Groups_Ozero__class_Ozero(T_a)) = V_a
     <= class_Groups_Ogroup__add(T_a) ) ).

fof(fact_Zero__not__Suc,axiom,
    ! [V_m] : c_Groups_Ozero__class_Ozero(tc_Nat_Onat) != c_Nat_OSuc(V_m) ).

fof(arity_Nat__Onat__Rings_Olinordered__comm__semiring__strict,axiom,
    class_Rings_Olinordered__comm__semiring__strict(tc_Nat_Onat) ).

fof(fact_zero__less__power__nat__eq,axiom,
    ! [V_na_2,V_x_2] :
      ( ( c_Groups_Ozero__class_Ozero(tc_Nat_Onat) = V_na_2
        | c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_x_2) )
    <=> c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),hAPP(hAPP(c_Power_Opower__class_Opower(tc_Nat_Onat),V_x_2),V_na_2)) ) ).

fof(fact_pow__divides__pow__int,axiom,
    ! [V_b,V_n,V_a] :
      ( ( c_Groups_Ozero__class_Ozero(tc_Nat_Onat) != V_n
       => hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Int_Oint),V_a),V_b)) )
     <= hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Int_Oint),hAPP(hAPP(c_Power_Opower__class_Opower(tc_Int_Oint),V_a),V_n)),hAPP(hAPP(c_Power_Opower__class_Opower(tc_Int_Oint),V_b),V_n))) ) ).

fof(fact_xt1_I6_J,axiom,
    ! [V_z,V_x,V_y,T_a] :
      ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_y,V_x)
       => ( c_Orderings_Oord__class_Oless__eq(T_a,V_z,V_x)
         <= c_Orderings_Oord__class_Oless__eq(T_a,V_z,V_y) ) )
     <= class_Orderings_Oorder(T_a) ) ).

fof(fact_power__one__over,axiom,
    ! [V_n,V_a,T_a] :
      ( class_Fields_Ofield__inverse__zero(T_a)
     => c_Rings_Oinverse__class_Odivide(T_a,c_Groups_Oone__class_Oone(T_a),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_n)) = hAPP(hAPP(c_Power_Opower__class_Opower(T_a),c_Rings_Oinverse__class_Odivide(T_a,c_Groups_Oone__class_Oone(T_a),V_a)),V_n) ) ).

fof(arity_Nat__Onat__Groups_Oone,axiom,
    class_Groups_Oone(tc_Nat_Onat) ).

fof(fact_minus__divide__right,axiom,
    ! [V_b,V_a,T_a] :
      ( c_Groups_Ouminus__class_Ouminus(T_a,c_Rings_Oinverse__class_Odivide(T_a,V_a,V_b)) = c_Rings_Oinverse__class_Odivide(T_a,V_a,c_Groups_Ouminus__class_Ouminus(T_a,V_b))
     <= class_Fields_Ofield__inverse__zero(T_a) ) ).

fof(fact_neg__le__iff__le,axiom,
    ! [V_a_2,V_b_2,T_a] :
      ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_a_2,V_b_2)
      <=> c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ouminus__class_Ouminus(T_a,V_b_2),c_Groups_Ouminus__class_Ouminus(T_a,V_a_2)) )
     <= class_Groups_Oordered__ab__group__add(T_a) ) ).

fof(fact_mult__cancel1,axiom,
    ! [V_na_2,V_m_2,V_k_2] :
      ( hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_k_2),V_m_2) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_k_2),V_na_2)
    <=> ( V_na_2 = V_m_2
        | V_k_2 = c_Groups_Ozero__class_Ozero(tc_Nat_Onat) ) ) ).

fof(fact_less__iff__Suc__add,axiom,
    ! [V_na_2,V_m_2] :
      ( ? [B_k] : V_na_2 = c_Nat_OSuc(c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_m_2,B_k))
    <=> c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_m_2,V_na_2) ) ).

fof(fact_add__left__imp__eq,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( class_Groups_Ocancel__semigroup__add(T_a)
     => ( c_Groups_Oplus__class_Oplus(T_a,V_a,V_b) = c_Groups_Oplus__class_Oplus(T_a,V_a,V_c)
       => V_c = V_b ) ) ).

fof(fact_sum__squares__eq__zero__iff,axiom,
    ! [V_y_2,V_x_2,T_a] :
      ( class_Rings_Olinordered__ring__strict(T_a)
     => ( ( c_Groups_Ozero__class_Ozero(T_a) = V_x_2
          & V_y_2 = c_Groups_Ozero__class_Ozero(T_a) )
      <=> c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_x_2),V_x_2),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_y_2),V_y_2)) = c_Groups_Ozero__class_Ozero(T_a) ) ) ).

fof(fact_q__pos__lemma,axiom,
    ! [V_r_H,V_q_H,V_b_H] :
      ( ( c_Orderings_Oord__class_Oless(tc_Int_Oint,V_r_H,V_b_H)
       => ( c_Orderings_Oord__class_Oless(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_b_H)
         => c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_q_H) ) )
     <= c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),c_Groups_Oplus__class_Oplus(tc_Int_Oint,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_b_H),V_q_H),V_r_H)) ) ).

fof(arity_Int__Oint__Rings_Oidom,axiom,
    class_Rings_Oidom(tc_Int_Oint) ).

fof(fact_not__less0,axiom,
    ! [V_n] : ~ c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_n,c_Groups_Ozero__class_Ozero(tc_Nat_Onat)) ).

fof(fact_order,axiom,
    ! [V_a,V_p,T_a] :
      ( ( V_p != c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a))
       => ( hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Polynomial_Opoly(T_a)),hAPP(hAPP(c_Power_Opower__class_Opower(tc_Polynomial_Opoly(T_a)),c_Polynomial_OpCons(T_a,c_Groups_Ouminus__class_Ouminus(T_a,V_a),c_Polynomial_OpCons(T_a,c_Groups_Oone__class_Oone(T_a),c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a))))),c_Polynomial_Oorder(T_a,V_a,V_p))),V_p))
          & ~ hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Polynomial_Opoly(T_a)),hAPP(hAPP(c_Power_Opower__class_Opower(tc_Polynomial_Opoly(T_a)),c_Polynomial_OpCons(T_a,c_Groups_Ouminus__class_Ouminus(T_a,V_a),c_Polynomial_OpCons(T_a,c_Groups_Oone__class_Oone(T_a),c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a))))),c_Nat_OSuc(c_Polynomial_Oorder(T_a,V_a,V_p)))),V_p)) ) )
     <= class_Rings_Oidom(T_a) ) ).

fof(fact_mult__left_Odiff,axiom,
    ! [V_ya,V_y,V_x,T_a] :
      ( class_RealVector_Oreal__normed__algebra(T_a)
     => c_Groups_Ominus__class_Ominus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_x),V_ya),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_y),V_ya)) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Groups_Ominus__class_Ominus(T_a,V_x,V_y)),V_ya) ) ).

fof(arity_Polynomial__Opoly__Rings_Oidom,axiom,
    ! [T_1] :
      ( class_Rings_Oidom(tc_Polynomial_Opoly(T_1))
     <= class_Rings_Oidom(T_1) ) ).

fof(fact_mult__Suc__right,axiom,
    ! [V_n,V_m] : c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_m,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_m),V_n)) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_m),c_Nat_OSuc(V_n)) ).

fof(fact_mult_Odiff__left,axiom,
    ! [V_b,V_a_H,V_a,T_a] :
      ( c_Groups_Ominus__class_Ominus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a_H),V_b)) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Groups_Ominus__class_Ominus(T_a,V_a,V_a_H)),V_b)
     <= class_RealVector_Oreal__normed__algebra(T_a) ) ).

fof(arity_Nat__Onat__Rings_Olinordered__semiring,axiom,
    class_Rings_Olinordered__semiring(tc_Nat_Onat) ).

fof(fact_less__eq__Suc__le,axiom,
    ! [V_m_2,V_na_2] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,c_Nat_OSuc(V_na_2),V_m_2)
    <=> c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_na_2,V_m_2) ) ).

fof(fact_add__le__less__mono,axiom,
    ! [V_d,V_c,V_b,V_a,T_a] :
      ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_a,V_b)
       => ( c_Orderings_Oord__class_Oless(T_a,V_c,V_d)
         => c_Orderings_Oord__class_Oless(T_a,c_Groups_Oplus__class_Oplus(T_a,V_a,V_c),c_Groups_Oplus__class_Oplus(T_a,V_b,V_d)) ) )
     <= class_Groups_Oordered__cancel__ab__semigroup__add(T_a) ) ).

fof(fact_mod__0,axiom,
    ! [V_a,T_a] :
      ( class_Divides_Osemiring__div(T_a)
     => c_Divides_Odiv__class_Omod(T_a,c_Groups_Ozero__class_Ozero(T_a),V_a) = c_Groups_Ozero__class_Ozero(T_a) ) ).

fof(fact__096p_A_061_A0_061_061_062_A_IALL_Ax_O_Apoly_Ap_Ax_A_061_A0_A_N_N_062_Apoly_Aq_Ax_A_061_A0_J_A_061_A_Ip_Advd_Aq_A_094_Adegree_Ap_A_124_Ap_A_061_A0_A_G_Aq_A_061_A0_J_096,axiom,
    ( ( ( ( v_q = c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(tc_Complex_Ocomplex))
          & v_p = c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(tc_Complex_Ocomplex)) )
        | hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Polynomial_Opoly(tc_Complex_Ocomplex)),v_p),hAPP(hAPP(c_Power_Opower__class_Opower(tc_Polynomial_Opoly(tc_Complex_Ocomplex)),v_q),c_Polynomial_Odegree(tc_Complex_Ocomplex,v_p)))) )
    <=> ! [B_x] :
          ( hAPP(c_Polynomial_Opoly(tc_Complex_Ocomplex,v_p),B_x) = c_Groups_Ozero__class_Ozero(tc_Complex_Ocomplex)
         => hAPP(c_Polynomial_Opoly(tc_Complex_Ocomplex,v_q),B_x) = c_Groups_Ozero__class_Ozero(tc_Complex_Ocomplex) ) )
   <= c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(tc_Complex_Ocomplex)) = v_p ) ).

fof(fact_add__imp__eq,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( class_Groups_Ocancel__ab__semigroup__add(T_a)
     => ( V_c = V_b
       <= c_Groups_Oplus__class_Oplus(T_a,V_a,V_b) = c_Groups_Oplus__class_Oplus(T_a,V_a,V_c) ) ) ).

fof(fact_eq__divide__imp,axiom,
    ! [V_b,V_a,V_c,T_a] :
      ( class_Rings_Odivision__ring(T_a)
     => ( V_c != c_Groups_Ozero__class_Ozero(T_a)
       => ( V_a = c_Rings_Oinverse__class_Odivide(T_a,V_b,V_c)
         <= V_b = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_c) ) ) ) ).

fof(fact_mult__less__imp__less__right,axiom,
    ! [V_b,V_c,V_a,T_a] :
      ( ( c_Orderings_Oord__class_Oless(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_c),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b),V_c))
       => ( c_Orderings_Oord__class_Oless(T_a,V_a,V_b)
         <= c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_c) ) )
     <= class_Rings_Olinordered__semiring__strict(T_a) ) ).

fof(arity_Int__Oint__Rings_Oring,axiom,
    class_Rings_Oring(tc_Int_Oint) ).

fof(fact_zmult__zminus,axiom,
    ! [V_w,V_z] : c_Groups_Ouminus__class_Ouminus(tc_Int_Oint,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_z),V_w)) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),c_Groups_Ouminus__class_Ouminus(tc_Int_Oint,V_z)),V_w) ).

fof(fact_comm__semiring__1__class_Onormalizing__semiring__rules_I34_J,axiom,
    ! [V_z,V_y,V_x,T_a] :
      ( class_Rings_Ocomm__semiring__1(T_a)
     => c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_x),V_y),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_x),V_z)) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_x),c_Groups_Oplus__class_Oplus(T_a,V_y,V_z)) ) ).

fof(fact_split__mult__neg__le,axiom,
    ! [V_b,V_a,T_a] :
      ( ( c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b),c_Groups_Ozero__class_Ozero(T_a))
       <= ( ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_b)
            & c_Orderings_Oord__class_Oless__eq(T_a,V_a,c_Groups_Ozero__class_Ozero(T_a)) )
          | ( c_Orderings_Oord__class_Oless__eq(T_a,V_b,c_Groups_Ozero__class_Ozero(T_a))
            & c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_a) ) ) )
     <= class_Rings_Oordered__cancel__semiring(T_a) ) ).

fof(fact_diff__less,axiom,
    ! [V_m,V_n] :
      ( ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_m,V_n),V_m)
       <= c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_m) )
     <= c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_n) ) ).

fof(fact_le0,axiom,
    ! [V_n] : c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_n) ).

fof(arity_Polynomial__Opoly__Groups_Ocancel__comm__monoid__add,axiom,
    ! [T_1] :
      ( class_Groups_Ocancel__comm__monoid__add(T_1)
     => class_Groups_Ocancel__comm__monoid__add(tc_Polynomial_Opoly(T_1)) ) ).

fof(fact_coeff__minus,axiom,
    ! [V_n,V_p,T_a] :
      ( c_Groups_Ouminus__class_Ouminus(T_a,hAPP(c_Polynomial_Ocoeff(T_a,V_p),V_n)) = hAPP(c_Polynomial_Ocoeff(T_a,c_Groups_Ouminus__class_Ouminus(tc_Polynomial_Opoly(T_a),V_p)),V_n)
     <= class_Groups_Oab__group__add(T_a) ) ).

fof(fact_linorder__antisym__conv1,axiom,
    ! [V_y_2,V_x_2,T_a] :
      ( ( ~ c_Orderings_Oord__class_Oless(T_a,V_x_2,V_y_2)
       => ( c_Orderings_Oord__class_Oless__eq(T_a,V_x_2,V_y_2)
        <=> V_x_2 = V_y_2 ) )
     <= class_Orderings_Olinorder(T_a) ) ).

fof(fact_pos__poly__mult,axiom,
    ! [V_q,V_p,T_a] :
      ( class_Rings_Olinordered__idom(T_a)
     => ( c_Polynomial_Opos__poly(T_a,V_p)
       => ( c_Polynomial_Opos__poly(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Polynomial_Opoly(T_a)),V_p),V_q))
         <= c_Polynomial_Opos__poly(T_a,V_q) ) ) ) ).

fof(fact_xt1_I11_J,axiom,
    ! [V_a,V_b,T_a] :
      ( class_Orderings_Oorder(T_a)
     => ( ( c_Orderings_Oord__class_Oless(T_a,V_b,V_a)
         <= V_a != V_b )
       <= c_Orderings_Oord__class_Oless__eq(T_a,V_b,V_a) ) ) ).

fof(fact_compl__eq__compl__iff,axiom,
    ! [V_y_2,V_x_2,T_a] :
      ( ( c_Groups_Ouminus__class_Ouminus(T_a,V_y_2) = c_Groups_Ouminus__class_Ouminus(T_a,V_x_2)
      <=> V_x_2 = V_y_2 )
     <= class_Lattices_Oboolean__algebra(T_a) ) ).

fof(fact_order__trans,axiom,
    ! [V_z,V_y,V_x,T_a] :
      ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_x,V_y)
       => ( c_Orderings_Oord__class_Oless__eq(T_a,V_x,V_z)
         <= c_Orderings_Oord__class_Oless__eq(T_a,V_y,V_z) ) )
     <= class_Orderings_Opreorder(T_a) ) ).

fof(fact_mult__divide__mult__cancel__right,axiom,
    ! [V_b,V_a,V_c,T_a] :
      ( ( c_Rings_Oinverse__class_Odivide(T_a,V_a,V_b) = c_Rings_Oinverse__class_Odivide(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_c),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b),V_c))
       <= V_c != c_Groups_Ozero__class_Ozero(T_a) )
     <= class_Fields_Ofield__inverse__zero(T_a) ) ).

fof(fact_degree__mult__eq,axiom,
    ! [V_q,V_p,T_a] :
      ( class_Rings_Oidom(T_a)
     => ( V_p != c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a))
       => ( c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a)) != V_q
         => c_Groups_Oplus__class_Oplus(tc_Nat_Onat,c_Polynomial_Odegree(T_a,V_p),c_Polynomial_Odegree(T_a,V_q)) = c_Polynomial_Odegree(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Polynomial_Opoly(T_a)),V_p),V_q)) ) ) ) ).

fof(fact_monom__0,axiom,
    ! [V_a,T_a] :
      ( c_Polynomial_Omonom(T_a,V_a,c_Groups_Ozero__class_Ozero(tc_Nat_Onat)) = c_Polynomial_OpCons(T_a,V_a,c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a)))
     <= class_Groups_Ozero(T_a) ) ).

fof(fact_pos__zmult__eq__1__iff,axiom,
    ! [V_na_2,V_m_2] :
      ( ( hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_m_2),V_na_2) = c_Groups_Oone__class_Oone(tc_Int_Oint)
      <=> ( V_m_2 = c_Groups_Oone__class_Oone(tc_Int_Oint)
          & V_na_2 = c_Groups_Oone__class_Oone(tc_Int_Oint) ) )
     <= c_Orderings_Oord__class_Oless(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_m_2) ) ).

fof(fact_mult__pos__pos,axiom,
    ! [V_b,V_a,T_a] :
      ( class_Rings_Olinordered__semiring__strict(T_a)
     => ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_a)
       => ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b))
         <= c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_b) ) ) ) ).

fof(fact_order__refl,axiom,
    ! [V_x,T_a] :
      ( class_Orderings_Opreorder(T_a)
     => c_Orderings_Oord__class_Oless__eq(T_a,V_x,V_x) ) ).

fof(fact_power__0,axiom,
    ! [V_a,T_a] :
      ( class_Power_Opower(T_a)
     => c_Groups_Oone__class_Oone(T_a) = hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),c_Groups_Ozero__class_Ozero(tc_Nat_Onat)) ) ).

fof(arity_Nat__Onat__Groups_Ocomm__monoid__add,axiom,
    class_Groups_Ocomm__monoid__add(tc_Nat_Onat) ).

fof(fact_termination__basic__simps_I2_J,axiom,
    ! [V_y,V_z,V_x] :
      ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_x,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_y,V_z))
     <= c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_x,V_z) ) ).

fof(fact_add__nonneg__pos,axiom,
    ! [V_b,V_a,T_a] :
      ( ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_a)
       => ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),c_Groups_Oplus__class_Oplus(T_a,V_a,V_b))
         <= c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_b) ) )
     <= class_Groups_Oordered__comm__monoid__add(T_a) ) ).

fof(fact_diffs0__imp__equal,axiom,
    ! [V_n,V_m] :
      ( c_Groups_Ozero__class_Ozero(tc_Nat_Onat) = c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_m,V_n)
     => ( V_m = V_n
       <= c_Groups_Ozero__class_Ozero(tc_Nat_Onat) = c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_n,V_m) ) ) ).

fof(fact_zdvd__imp__le,axiom,
    ! [V_n,V_z] :
      ( ( c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,V_z,V_n)
       <= c_Orderings_Oord__class_Oless(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_n) )
     <= hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Int_Oint),V_z),V_n)) ) ).

fof(fact_linorder__not__less,axiom,
    ! [V_y_2,V_x_2,T_a] :
      ( class_Orderings_Olinorder(T_a)
     => ( c_Orderings_Oord__class_Oless__eq(T_a,V_y_2,V_x_2)
      <=> ~ c_Orderings_Oord__class_Oless(T_a,V_x_2,V_y_2) ) ) ).

fof(fact_coeff__diff,axiom,
    ! [V_n,V_q,V_p,T_a] :
      ( hAPP(c_Polynomial_Ocoeff(T_a,c_Groups_Ominus__class_Ominus(tc_Polynomial_Opoly(T_a),V_p,V_q)),V_n) = c_Groups_Ominus__class_Ominus(T_a,hAPP(c_Polynomial_Ocoeff(T_a,V_p),V_n),hAPP(c_Polynomial_Ocoeff(T_a,V_q),V_n))
     <= class_Groups_Oab__group__add(T_a) ) ).

fof(fact_zless__linear,axiom,
    ! [V_y,V_x] :
      ( V_x = V_y
      | c_Orderings_Oord__class_Oless(tc_Int_Oint,V_y,V_x)
      | c_Orderings_Oord__class_Oless(tc_Int_Oint,V_x,V_y) ) ).

fof(fact_less__not__refl2,axiom,
    ! [V_m,V_n] :
      ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_n,V_m)
     => V_m != V_n ) ).

fof(fact_add__diff__cancel,axiom,
    ! [V_b,V_a,T_a] :
      ( class_Groups_Ogroup__add(T_a)
     => V_a = c_Groups_Ominus__class_Ominus(T_a,c_Groups_Oplus__class_Oplus(T_a,V_a,V_b),V_b) ) ).

fof(fact_mult__divide__mult__cancel__left,axiom,
    ! [V_b,V_a,V_c,T_a] :
      ( class_Fields_Ofield__inverse__zero(T_a)
     => ( c_Rings_Oinverse__class_Odivide(T_a,V_a,V_b) = c_Rings_Oinverse__class_Odivide(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_c),V_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_c),V_b))
       <= c_Groups_Ozero__class_Ozero(T_a) != V_c ) ) ).

fof(arity_Int__Oint__Rings_Ono__zero__divisors,axiom,
    class_Rings_Ono__zero__divisors(tc_Int_Oint) ).

fof(fact_eq__divide__eq,axiom,
    ! [V_c_2,V_b_2,V_a_2,T_a] :
      ( class_Fields_Ofield__inverse__zero(T_a)
     => ( V_a_2 = c_Rings_Oinverse__class_Odivide(T_a,V_b_2,V_c_2)
      <=> ( ( hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a_2),V_c_2) = V_b_2
           <= c_Groups_Ozero__class_Ozero(T_a) != V_c_2 )
          & ( c_Groups_Ozero__class_Ozero(T_a) = V_a_2
           <= c_Groups_Ozero__class_Ozero(T_a) = V_c_2 ) ) ) ) ).

fof(fact_mod__smult__left,axiom,
    ! [V_y,V_x,V_a,T_a] :
      ( class_Fields_Ofield(T_a)
     => c_Polynomial_Osmult(T_a,V_a,c_Divides_Odiv__class_Omod(tc_Polynomial_Opoly(T_a),V_x,V_y)) = c_Divides_Odiv__class_Omod(tc_Polynomial_Opoly(T_a),c_Polynomial_Osmult(T_a,V_a,V_x),V_y) ) ).

fof(fact_degree__diff__le,axiom,
    ! [V_q,V_n,V_p,T_a] :
      ( class_Groups_Oab__group__add(T_a)
     => ( ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,c_Polynomial_Odegree(T_a,c_Groups_Ominus__class_Ominus(tc_Polynomial_Opoly(T_a),V_p,V_q)),V_n)
         <= c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,c_Polynomial_Odegree(T_a,V_q),V_n) )
       <= c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,c_Polynomial_Odegree(T_a,V_p),V_n) ) ) ).

fof(fact_psize__def,axiom,
    ! [V_p,T_a] :
      ( class_Groups_Ozero(T_a)
     => ( ( c_Nat_OSuc(c_Polynomial_Odegree(T_a,V_p)) = c_Fundamental__Theorem__Algebra__Mirabelle_Opsize(T_a,V_p)
         <= V_p != c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a)) )
        & ( V_p = c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a))
         => c_Fundamental__Theorem__Algebra__Mirabelle_Opsize(T_a,V_p) = c_Groups_Ozero__class_Ozero(tc_Nat_Onat) ) ) ) ).

fof(arity_Nat__Onat__Rings_Osemiring__0,axiom,
    class_Rings_Osemiring__0(tc_Nat_Onat) ).

fof(fact_one__le__mult__iff,axiom,
    ! [V_na_2,V_m_2] :
      ( ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,c_Nat_OSuc(c_Groups_Ozero__class_Ozero(tc_Nat_Onat)),V_na_2)
        & c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,c_Nat_OSuc(c_Groups_Ozero__class_Ozero(tc_Nat_Onat)),V_m_2) )
    <=> c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,c_Nat_OSuc(c_Groups_Ozero__class_Ozero(tc_Nat_Onat)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_m_2),V_na_2)) ) ).

fof(fact_degree__pCons__eq__if,axiom,
    ! [V_a,V_p,T_a] :
      ( class_Groups_Ozero(T_a)
     => ( ( c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a)) != V_p
         => c_Polynomial_Odegree(T_a,c_Polynomial_OpCons(T_a,V_a,V_p)) = c_Nat_OSuc(c_Polynomial_Odegree(T_a,V_p)) )
        & ( V_p = c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a))
         => c_Groups_Ozero__class_Ozero(tc_Nat_Onat) = c_Polynomial_Odegree(T_a,c_Polynomial_OpCons(T_a,V_a,V_p)) ) ) ) ).

fof(fact_diff__le__mono,axiom,
    ! [V_l,V_n,V_m] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m,V_n)
     => c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_m,V_l),c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_n,V_l)) ) ).

fof(arity_Int__Oint__Groups_Oordered__ab__semigroup__add,axiom,
    class_Groups_Oordered__ab__semigroup__add(tc_Int_Oint) ).

fof(fact_minus__mult__commute,axiom,
    ! [V_b,V_a,T_a] :
      ( hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),c_Groups_Ouminus__class_Ouminus(T_a,V_b)) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Groups_Ouminus__class_Ouminus(T_a,V_a)),V_b)
     <= class_Rings_Oring(T_a) ) ).

fof(fact_zle__diff1__eq,axiom,
    ! [V_z_2,V_w_2] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,V_w_2,c_Groups_Ominus__class_Ominus(tc_Int_Oint,V_z_2,c_Groups_Oone__class_Oone(tc_Int_Oint)))
    <=> c_Orderings_Oord__class_Oless(tc_Int_Oint,V_w_2,V_z_2) ) ).

fof(fact_add__diff__inverse,axiom,
    ! [V_n,V_m] :
      ( c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_n,c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_m,V_n)) = V_m
     <= ~ c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_m,V_n) ) ).

fof(fact_less__not__refl3,axiom,
    ! [V_t,V_s] :
      ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_s,V_t)
     => V_s != V_t ) ).

fof(fact_dvd_Oord__less__eq__trans,axiom,
    ! [V_c,V_b,V_a] :
      ( ( V_c = V_b
       => ( ~ hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Nat_Onat),V_c),V_a))
          & hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Nat_Onat),V_a),V_c)) ) )
     <= ( hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Nat_Onat),V_a),V_b))
        & ~ hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Nat_Onat),V_b),V_a)) ) ) ).

fof(arity_fun__Groups_Ouminus,axiom,
    ! [T_2,T_1] :
      ( class_Groups_Ouminus(T_1)
     => class_Groups_Ouminus(tc_fun(T_2,T_1)) ) ).

fof(fact_dvd__power,axiom,
    ! [V_x,V_n,T_a] :
      ( class_Rings_Ocomm__semiring__1(T_a)
     => ( ( V_x = c_Groups_Oone__class_Oone(T_a)
          | c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_n) )
       => hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(T_a),V_x),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_x),V_n))) ) ) ).

fof(fact_zdiff__zmult__distrib,axiom,
    ! [V_w,V_z2,V_z1] : hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),c_Groups_Ominus__class_Ominus(tc_Int_Oint,V_z1,V_z2)),V_w) = c_Groups_Ominus__class_Ominus(tc_Int_Oint,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_z1),V_w),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_z2),V_w)) ).

fof(fact_mult__eq__1__iff,axiom,
    ! [V_na_2,V_m_2] :
      ( c_Nat_OSuc(c_Groups_Ozero__class_Ozero(tc_Nat_Onat)) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_m_2),V_na_2)
    <=> ( c_Nat_OSuc(c_Groups_Ozero__class_Ozero(tc_Nat_Onat)) = V_na_2
        & V_m_2 = c_Nat_OSuc(c_Groups_Ozero__class_Ozero(tc_Nat_Onat)) ) ) ).

fof(fact_comm__semiring__1__class_Onormalizing__semiring__rules_I23_J,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( c_Groups_Oplus__class_Oplus(T_a,c_Groups_Oplus__class_Oplus(T_a,V_a,V_b),V_c) = c_Groups_Oplus__class_Oplus(T_a,c_Groups_Oplus__class_Oplus(T_a,V_a,V_c),V_b)
     <= class_Rings_Ocomm__semiring__1(T_a) ) ).

fof(fact_mult__strict__right__mono,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( class_Rings_Olinordered__semiring__strict(T_a)
     => ( ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_c)
         => c_Orderings_Oord__class_Oless(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_c),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b),V_c)) )
       <= c_Orderings_Oord__class_Oless(T_a,V_a,V_b) ) ) ).

fof(fact_neg__equal__iff__equal,axiom,
    ! [V_b_2,V_a_2,T_a] :
      ( class_Groups_Ogroup__add(T_a)
     => ( c_Groups_Ouminus__class_Ouminus(T_a,V_b_2) = c_Groups_Ouminus__class_Ouminus(T_a,V_a_2)
      <=> V_b_2 = V_a_2 ) ) ).

fof(fact_Suc__inject,axiom,
    ! [V_y,V_x] :
      ( c_Nat_OSuc(V_x) = c_Nat_OSuc(V_y)
     => V_x = V_y ) ).

fof(fact_smult__eq__0__iff,axiom,
    ! [V_pa_2,V_a_2,T_a] :
      ( class_Rings_Oidom(T_a)
     => ( c_Polynomial_Osmult(T_a,V_a_2,V_pa_2) = c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a))
      <=> ( c_Groups_Ozero__class_Ozero(T_a) = V_a_2
          | V_pa_2 = c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a)) ) ) ) ).

fof(fact_power__divide,axiom,
    ! [V_n,V_b,V_a,T_a] :
      ( hAPP(hAPP(c_Power_Opower__class_Opower(T_a),c_Rings_Oinverse__class_Odivide(T_a,V_a,V_b)),V_n) = c_Rings_Oinverse__class_Odivide(T_a,hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_n),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_b),V_n))
     <= class_Fields_Ofield__inverse__zero(T_a) ) ).

fof(fact_diff__add__assoc,axiom,
    ! [V_i,V_j,V_k] :
      ( c_Groups_Ominus__class_Ominus(tc_Nat_Onat,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_i,V_j),V_k) = c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_i,c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_j,V_k))
     <= c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_k,V_j) ) ).

fof(fact_divide__right__mono__neg,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_a,V_b)
       => ( c_Orderings_Oord__class_Oless__eq(T_a,V_c,c_Groups_Ozero__class_Ozero(T_a))
         => c_Orderings_Oord__class_Oless__eq(T_a,c_Rings_Oinverse__class_Odivide(T_a,V_b,V_c),c_Rings_Oinverse__class_Odivide(T_a,V_a,V_c)) ) )
     <= class_Fields_Olinordered__field__inverse__zero(T_a) ) ).

fof(fact_add__right__imp__eq,axiom,
    ! [V_c,V_a,V_b,T_a] :
      ( class_Groups_Ocancel__semigroup__add(T_a)
     => ( V_b = V_c
       <= c_Groups_Oplus__class_Oplus(T_a,V_c,V_a) = c_Groups_Oplus__class_Oplus(T_a,V_b,V_a) ) ) ).

fof(arity_Int__Oint__Rings_Oring__1__no__zero__divisors,axiom,
    class_Rings_Oring__1__no__zero__divisors(tc_Int_Oint) ).

fof(fact_diff__Suc__less,axiom,
    ! [V_i,V_n] :
      ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_n,c_Nat_OSuc(V_i)),V_n)
     <= c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_n) ) ).

fof(fact_realpow__num__eq__if,axiom,
    ! [V_m,V_n,T_a] :
      ( ( ( V_n != c_Groups_Ozero__class_Ozero(tc_Nat_Onat)
         => hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_m),V_n) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_m),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_m),c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_n,c_Groups_Oone__class_Oone(tc_Nat_Onat)))) )
        & ( V_n = c_Groups_Ozero__class_Ozero(tc_Nat_Onat)
         => c_Groups_Oone__class_Oone(T_a) = hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_m),V_n) ) )
     <= class_Power_Opower(T_a) ) ).

fof(fact_add__divide__eq__iff,axiom,
    ! [V_y,V_x,V_z,T_a] :
      ( ( c_Groups_Oplus__class_Oplus(T_a,V_x,c_Rings_Oinverse__class_Odivide(T_a,V_y,V_z)) = c_Rings_Oinverse__class_Odivide(T_a,c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_z),V_x),V_y),V_z)
       <= c_Groups_Ozero__class_Ozero(T_a) != V_z )
     <= class_Fields_Ofield(T_a) ) ).

fof(fact_mult__pos__neg2,axiom,
    ! [V_b,V_a,T_a] :
      ( class_Rings_Olinordered__semiring__strict(T_a)
     => ( ( c_Orderings_Oord__class_Oless(T_a,V_b,c_Groups_Ozero__class_Ozero(T_a))
         => c_Orderings_Oord__class_Oless(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b),V_a),c_Groups_Ozero__class_Ozero(T_a)) )
       <= c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_a) ) ) ).

fof(fact_Nat__Transfer_Otransfer__nat__int__function__closures_I2_J,axiom,
    ! [V_y,V_x] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_x)
     => ( c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_x),V_y))
       <= c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_y) ) ) ).

fof(fact_minus__divide__left,axiom,
    ! [V_b,V_a,T_a] :
      ( c_Groups_Ouminus__class_Ouminus(T_a,c_Rings_Oinverse__class_Odivide(T_a,V_a,V_b)) = c_Rings_Oinverse__class_Odivide(T_a,c_Groups_Ouminus__class_Ouminus(T_a,V_a),V_b)
     <= class_Rings_Odivision__ring(T_a) ) ).

fof(arity_Nat__Onat__Groups_Oab__semigroup__add,axiom,
    class_Groups_Oab__semigroup__add(tc_Nat_Onat) ).

fof(fact_less__bin__lemma,axiom,
    ! [V_l_2,V_k_2] :
      ( c_Orderings_Oord__class_Oless(tc_Int_Oint,V_k_2,V_l_2)
    <=> c_Orderings_Oord__class_Oless(tc_Int_Oint,c_Groups_Ominus__class_Ominus(tc_Int_Oint,V_k_2,V_l_2),c_Groups_Ozero__class_Ozero(tc_Int_Oint)) ) ).

fof(fact_pdivmod__rel__unique,axiom,
    ! [V_r2,V_q2,V_r1,V_q1,V_y,V_x,T_a] :
      ( class_Fields_Ofield(T_a)
     => ( ( c_Polynomial_Opdivmod__rel(T_a,V_x,V_y,V_q2,V_r2)
         => ( V_r2 = V_r1
            & V_q2 = V_q1 ) )
       <= c_Polynomial_Opdivmod__rel(T_a,V_x,V_y,V_q1,V_r1) ) ) ).

fof(fact_add__mult__distrib2,axiom,
    ! [V_n,V_m,V_k] : c_Groups_Oplus__class_Oplus(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_k),V_m),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_k),V_n)) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_k),c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_m,V_n)) ).

fof(fact_less__Suc__eq__le,axiom,
    ! [V_na_2,V_m_2] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m_2,V_na_2)
    <=> c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_m_2,c_Nat_OSuc(V_na_2)) ) ).

fof(fact_zero__less__one,axiom,
    ! [T_a] :
      ( class_Rings_Olinordered__semidom(T_a)
     => c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),c_Groups_Oone__class_Oone(T_a)) ) ).

fof(fact_mult__left__le__imp__le,axiom,
    ! [V_b,V_a,V_c,T_a] :
      ( class_Rings_Olinordered__semiring__strict(T_a)
     => ( c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_c),V_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_c),V_b))
       => ( c_Orderings_Oord__class_Oless__eq(T_a,V_a,V_b)
         <= c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_c) ) ) ) ).

fof(arity_Polynomial__Opoly__Groups_Ocomm__monoid__mult,axiom,
    ! [T_1] :
      ( class_Rings_Ocomm__semiring__1(T_1)
     => class_Groups_Ocomm__monoid__mult(tc_Polynomial_Opoly(T_1)) ) ).

fof(arity_Complex__Ocomplex__Power_Opower,axiom,
    class_Power_Opower(tc_Complex_Ocomplex) ).

fof(fact_pdivmod__rel__unique__div,axiom,
    ! [V_r2,V_q2,V_r1,V_q1,V_y,V_x,T_a] :
      ( ( c_Polynomial_Opdivmod__rel(T_a,V_x,V_y,V_q1,V_r1)
       => ( c_Polynomial_Opdivmod__rel(T_a,V_x,V_y,V_q2,V_r2)
         => V_q2 = V_q1 ) )
     <= class_Fields_Ofield(T_a) ) ).

fof(fact_le__imp__0__less,axiom,
    ! [V_z] :
      ( c_Orderings_Oord__class_Oless(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),c_Groups_Oplus__class_Oplus(tc_Int_Oint,c_Groups_Oone__class_Oone(tc_Int_Oint),V_z))
     <= c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_z) ) ).

fof(arity_Complex__Ocomplex__Rings_Ocomm__semiring__1,axiom,
    class_Rings_Ocomm__semiring__1(tc_Complex_Ocomplex) ).

fof(fact_less__irrefl__nat,axiom,
    ! [V_n] : ~ c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_n,V_n) ).

fof(fact_degree__monom__le,axiom,
    ! [V_n,V_a,T_a] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,c_Polynomial_Odegree(T_a,c_Polynomial_Omonom(T_a,V_a,V_n)),V_n)
     <= class_Groups_Ozero(T_a) ) ).

fof(arity_Int__Oint__Rings_Olinordered__semiring,axiom,
    class_Rings_Olinordered__semiring(tc_Int_Oint) ).

fof(fact_mult__right__mono,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( ( ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_c)
         => c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_c),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b),V_c)) )
       <= c_Orderings_Oord__class_Oless__eq(T_a,V_a,V_b) )
     <= class_Rings_Oordered__semiring(T_a) ) ).

fof(arity_Int__Oint__Groups_Oab__group__add,axiom,
    class_Groups_Oab__group__add(tc_Int_Oint) ).

fof(fact_comm__semiring__1__class_Onormalizing__semiring__rules_I27_J,axiom,
    ! [V_q,V_x,T_a] :
      ( class_Rings_Ocomm__semiring__1(T_a)
     => hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_x),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_x),V_q)) = hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_x),c_Nat_OSuc(V_q)) ) ).

fof(arity_Int__Oint__Rings_Oring__no__zero__divisors,axiom,
    class_Rings_Oring__no__zero__divisors(tc_Int_Oint) ).

fof(fact_dvd_Ole__neq__trans,axiom,
    ! [V_b,V_a] :
      ( hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Nat_Onat),V_a),V_b))
     => ( ( hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Nat_Onat),V_a),V_b))
          & ~ hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Nat_Onat),V_b),V_a)) )
       <= V_a != V_b ) ) ).

fof(fact_zmult__1,axiom,
    ! [V_z] : V_z = hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),c_Groups_Oone__class_Oone(tc_Int_Oint)),V_z) ).

fof(fact_minus__add__distrib,axiom,
    ! [V_b,V_a,T_a] :
      ( c_Groups_Ouminus__class_Ouminus(T_a,c_Groups_Oplus__class_Oplus(T_a,V_a,V_b)) = c_Groups_Oplus__class_Oplus(T_a,c_Groups_Ouminus__class_Ouminus(T_a,V_a),c_Groups_Ouminus__class_Ouminus(T_a,V_b))
     <= class_Groups_Oab__group__add(T_a) ) ).

fof(fact_dvd__power__le,axiom,
    ! [V_m,V_n,V_y,V_x,T_a] :
      ( class_Rings_Ocomm__semiring__1(T_a)
     => ( ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_n,V_m)
         => hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(T_a),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_x),V_n)),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_y),V_m))) )
       <= hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(T_a),V_x),V_y)) ) ) ).

fof(arity_Polynomial__Opoly__Rings_Ocomm__ring__1,axiom,
    ! [T_1] :
      ( class_Rings_Ocomm__ring__1(T_1)
     => class_Rings_Ocomm__ring__1(tc_Polynomial_Opoly(T_1)) ) ).

fof(fact_divide__self__if,axiom,
    ! [V_a,T_a] :
      ( ( ( c_Groups_Ozero__class_Ozero(T_a) = c_Rings_Oinverse__class_Odivide(T_a,V_a,V_a)
         <= V_a = c_Groups_Ozero__class_Ozero(T_a) )
        & ( c_Groups_Oone__class_Oone(T_a) = c_Rings_Oinverse__class_Odivide(T_a,V_a,V_a)
         <= V_a != c_Groups_Ozero__class_Ozero(T_a) ) )
     <= class_Rings_Odivision__ring__inverse__zero(T_a) ) ).

fof(fact_degree__power__le,axiom,
    ! [V_n,V_p,T_a] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,c_Polynomial_Odegree(T_a,hAPP(hAPP(c_Power_Opower__class_Opower(tc_Polynomial_Opoly(T_a)),V_p),V_n)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),c_Polynomial_Odegree(T_a,V_p)),V_n))
     <= class_Rings_Ocomm__semiring__1(T_a) ) ).

fof(fact_nat__power__eq__Suc__0__iff,axiom,
    ! [V_m_2,V_x_2] :
      ( c_Nat_OSuc(c_Groups_Ozero__class_Ozero(tc_Nat_Onat)) = hAPP(hAPP(c_Power_Opower__class_Opower(tc_Nat_Onat),V_x_2),V_m_2)
    <=> ( V_x_2 = c_Nat_OSuc(c_Groups_Ozero__class_Ozero(tc_Nat_Onat))
        | c_Groups_Ozero__class_Ozero(tc_Nat_Onat) = V_m_2 ) ) ).

fof(fact_mult__strict__mono,axiom,
    ! [V_d,V_c,V_b,V_a,T_a] :
      ( ( c_Orderings_Oord__class_Oless(T_a,V_a,V_b)
       => ( c_Orderings_Oord__class_Oless(T_a,V_c,V_d)
         => ( ( c_Orderings_Oord__class_Oless(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_c),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b),V_d))
             <= c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_c) )
           <= c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_b) ) ) )
     <= class_Rings_Olinordered__semiring__strict(T_a) ) ).

fof(fact_power__le__imp__le__exp,axiom,
    ! [V_n,V_m,V_a,T_a] :
      ( class_Rings_Olinordered__semidom(T_a)
     => ( ( c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_m),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_n))
         => c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m,V_n) )
       <= c_Orderings_Oord__class_Oless(T_a,c_Groups_Oone__class_Oone(T_a),V_a) ) ) ).

fof(fact_order__antisym,axiom,
    ! [V_y,V_x,T_a] :
      ( ( ( V_y = V_x
         <= c_Orderings_Oord__class_Oless__eq(T_a,V_y,V_x) )
       <= c_Orderings_Oord__class_Oless__eq(T_a,V_x,V_y) )
     <= class_Orderings_Oorder(T_a) ) ).

fof(fact_dvd__diff,axiom,
    ! [V_z,V_y,V_x,T_a] :
      ( class_Rings_Ocomm__ring__1(T_a)
     => ( ( hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(T_a),V_x),V_z))
         => hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(T_a),V_x),c_Groups_Ominus__class_Ominus(T_a,V_y,V_z))) )
       <= hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(T_a),V_x),V_y)) ) ) ).

fof(arity_Int__Oint__Groups_Olinordered__ab__group__add,axiom,
    class_Groups_Olinordered__ab__group__add(tc_Int_Oint) ).

fof(fact_minus__mult__minus,axiom,
    ! [V_b,V_a,T_a] :
      ( class_Rings_Oring(T_a)
     => hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Groups_Ouminus__class_Ouminus(T_a,V_a)),c_Groups_Ouminus__class_Ouminus(T_a,V_b)) ) ).

fof(fact_order__less__imp__not__eq,axiom,
    ! [V_y,V_x,T_a] :
      ( ( c_Orderings_Oord__class_Oless(T_a,V_x,V_y)
       => V_x != V_y )
     <= class_Orderings_Oorder(T_a) ) ).

fof(fact_neg__equal__0__iff__equal,axiom,
    ! [V_a_2,T_a] :
      ( ( c_Groups_Ouminus__class_Ouminus(T_a,V_a_2) = c_Groups_Ozero__class_Ozero(T_a)
      <=> c_Groups_Ozero__class_Ozero(T_a) = V_a_2 )
     <= class_Groups_Ogroup__add(T_a) ) ).

fof(fact_poly__power,axiom,
    ! [V_x,V_n,V_p,T_a] :
      ( class_Rings_Ocomm__semiring__1(T_a)
     => hAPP(c_Polynomial_Opoly(T_a,hAPP(hAPP(c_Power_Opower__class_Opower(tc_Polynomial_Opoly(T_a)),V_p),V_n)),V_x) = hAPP(hAPP(c_Power_Opower__class_Opower(T_a),hAPP(c_Polynomial_Opoly(T_a,V_p),V_x)),V_n) ) ).

fof(fact_add__pCons,axiom,
    ! [V_q,V_b,V_p,V_a,T_a] :
      ( c_Groups_Oplus__class_Oplus(tc_Polynomial_Opoly(T_a),c_Polynomial_OpCons(T_a,V_a,V_p),c_Polynomial_OpCons(T_a,V_b,V_q)) = c_Polynomial_OpCons(T_a,c_Groups_Oplus__class_Oplus(T_a,V_a,V_b),c_Groups_Oplus__class_Oplus(tc_Polynomial_Opoly(T_a),V_p,V_q))
     <= class_Groups_Ocomm__monoid__add(T_a) ) ).

fof(fact_mult__nonneg__nonpos,axiom,
    ! [V_b,V_a,T_a] :
      ( ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_b,c_Groups_Ozero__class_Ozero(T_a))
         => c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b),c_Groups_Ozero__class_Ozero(T_a)) )
       <= c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_a) )
     <= class_Rings_Oordered__cancel__semiring(T_a) ) ).

fof(arity_HOL__Obool__Orderings_Opreorder,axiom,
    class_Orderings_Opreorder(tc_HOL_Obool) ).

fof(fact_le__trans,axiom,
    ! [V_k,V_j,V_i] :
      ( ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_i,V_k)
       <= c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_j,V_k) )
     <= c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_i,V_j) ) ).

fof(arity_Int__Oint__Rings_Ocomm__ring__1,axiom,
    class_Rings_Ocomm__ring__1(tc_Int_Oint) ).

fof(fact_mult__mono,axiom,
    ! [V_d,V_c,V_b,V_a,T_a] :
      ( ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_c,V_d)
         => ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_b)
           => ( c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_c),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b),V_d))
             <= c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_c) ) ) )
       <= c_Orderings_Oord__class_Oless__eq(T_a,V_a,V_b) )
     <= class_Rings_Oordered__semiring(T_a) ) ).

fof(fact_dvd__add,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( class_Rings_Ocomm__semiring__1(T_a)
     => ( hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(T_a),V_a),V_b))
       => ( hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(T_a),V_a),V_c))
         => hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(T_a),V_a),c_Groups_Oplus__class_Oplus(T_a,V_b,V_c))) ) ) ) ).

fof(fact_le__iff__diff__le__0,axiom,
    ! [V_b_2,V_a_2,T_a] :
      ( ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ominus__class_Ominus(T_a,V_a_2,V_b_2),c_Groups_Ozero__class_Ozero(T_a))
      <=> c_Orderings_Oord__class_Oless__eq(T_a,V_a_2,V_b_2) )
     <= class_Groups_Oordered__ab__group__add(T_a) ) ).

fof(fact_divide__strict__left__mono,axiom,
    ! [V_c,V_a,V_b,T_a] :
      ( class_Fields_Olinordered__field(T_a)
     => ( ( ( c_Orderings_Oord__class_Oless(T_a,c_Rings_Oinverse__class_Odivide(T_a,V_c,V_a),c_Rings_Oinverse__class_Odivide(T_a,V_c,V_b))
           <= c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b)) )
         <= c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_c) )
       <= c_Orderings_Oord__class_Oless(T_a,V_b,V_a) ) ) ).

fof(arity_Nat__Onat__Orderings_Oorder,axiom,
    class_Orderings_Oorder(tc_Nat_Onat) ).

fof(fact_mult__strict__mono_H,axiom,
    ! [V_d,V_c,V_b,V_a,T_a] :
      ( class_Rings_Olinordered__semiring__strict(T_a)
     => ( c_Orderings_Oord__class_Oless(T_a,V_a,V_b)
       => ( c_Orderings_Oord__class_Oless(T_a,V_c,V_d)
         => ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_a)
           => ( c_Orderings_Oord__class_Oless(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_c),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b),V_d))
             <= c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_c) ) ) ) ) ) ).

fof(fact_dvd_Ole__less__trans,axiom,
    ! [V_z,V_y,V_x] :
      ( ( ( ~ hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Nat_Onat),V_z),V_x))
          & hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Nat_Onat),V_x),V_z)) )
       <= ( ~ hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Nat_Onat),V_z),V_y))
          & hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Nat_Onat),V_y),V_z)) ) )
     <= hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Nat_Onat),V_x),V_y)) ) ).

fof(fact_not__less__eq__eq,axiom,
    ! [V_na_2,V_m_2] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,c_Nat_OSuc(V_na_2),V_m_2)
    <=> ~ c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m_2,V_na_2) ) ).

fof(fact_diff__divide__distrib,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( class_Rings_Odivision__ring(T_a)
     => c_Rings_Oinverse__class_Odivide(T_a,c_Groups_Ominus__class_Ominus(T_a,V_a,V_b),V_c) = c_Groups_Ominus__class_Ominus(T_a,c_Rings_Oinverse__class_Odivide(T_a,V_a,V_c),c_Rings_Oinverse__class_Odivide(T_a,V_b,V_c)) ) ).

fof(arity_Polynomial__Opoly__Rings_Omult__zero,axiom,
    ! [T_1] :
      ( class_Rings_Omult__zero(tc_Polynomial_Opoly(T_1))
     <= class_Rings_Ocomm__semiring__0(T_1) ) ).

fof(fact_crossproduct__noteq,axiom,
    ! [V_d_2,V_c_2,V_b_2,V_a_2,T_a] :
      ( class_Semiring__Normalization_Ocomm__semiring__1__cancel__crossproduct(T_a)
     => ( c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a_2),V_c_2),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b_2),V_d_2)) != c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a_2),V_d_2),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b_2),V_c_2))
      <=> ( V_b_2 != V_a_2
          & V_d_2 != V_c_2 ) ) ) ).

fof(fact_mult__right_Oadd,axiom,
    ! [V_y,V_x,V_xa,T_a] :
      ( class_RealVector_Oreal__normed__algebra(T_a)
     => c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_xa),V_x),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_xa),V_y)) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_xa),c_Groups_Oplus__class_Oplus(T_a,V_x,V_y)) ) ).

fof(fact_ext,axiom,
    ! [V_g_2,V_f_2] :
      ( V_g_2 = V_f_2
     <= ! [B_x] : hAPP(V_g_2,B_x) = hAPP(V_f_2,B_x) ) ).

fof(fact_pos__poly__add,axiom,
    ! [V_q,V_p,T_a] :
      ( class_Rings_Olinordered__idom(T_a)
     => ( ( c_Polynomial_Opos__poly(T_a,V_q)
         => c_Polynomial_Opos__poly(T_a,c_Groups_Oplus__class_Oplus(tc_Polynomial_Opoly(T_a),V_p,V_q)) )
       <= c_Polynomial_Opos__poly(T_a,V_p) ) ) ).

fof(fact_mult__right_Ominus,axiom,
    ! [V_x,V_xa,T_a] :
      ( class_RealVector_Oreal__normed__algebra(T_a)
     => c_Groups_Ouminus__class_Ouminus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_xa),V_x)) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_xa),c_Groups_Ouminus__class_Ouminus(T_a,V_x)) ) ).

fof(fact_divide__eq__imp,axiom,
    ! [V_a,V_b,V_c,T_a] :
      ( ( ( hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_c) = V_b
         => V_a = c_Rings_Oinverse__class_Odivide(T_a,V_b,V_c) )
       <= V_c != c_Groups_Ozero__class_Ozero(T_a) )
     <= class_Rings_Odivision__ring(T_a) ) ).

fof(fact_trans__le__add1,axiom,
    ! [V_m,V_j,V_i] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_i,V_j)
     => c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_i,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_j,V_m)) ) ).

fof(fact_add__less__mono,axiom,
    ! [V_l,V_k,V_j,V_i] :
      ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_i,V_j)
     => ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_k,V_l)
       => c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_i,V_k),c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_j,V_l)) ) ) ).

fof(fact_divide__nonpos__neg,axiom,
    ! [V_y,V_x,T_a] :
      ( ( ( c_Orderings_Oord__class_Oless(T_a,V_y,c_Groups_Ozero__class_Ozero(T_a))
         => c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),c_Rings_Oinverse__class_Odivide(T_a,V_x,V_y)) )
       <= c_Orderings_Oord__class_Oless__eq(T_a,V_x,c_Groups_Ozero__class_Ozero(T_a)) )
     <= class_Fields_Olinordered__field(T_a) ) ).

fof(fact_degree__add__le,axiom,
    ! [V_q,V_n,V_p,T_a] :
      ( class_Groups_Ocomm__monoid__add(T_a)
     => ( ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,c_Polynomial_Odegree(T_a,V_q),V_n)
         => c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,c_Polynomial_Odegree(T_a,c_Groups_Oplus__class_Oplus(tc_Polynomial_Opoly(T_a),V_p,V_q)),V_n) )
       <= c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,c_Polynomial_Odegree(T_a,V_p),V_n) ) ) ).

fof(fact_nat_Osimps_I2_J,axiom,
    ! [V_nat_H] : c_Nat_OSuc(V_nat_H) != c_Groups_Ozero__class_Ozero(tc_Nat_Onat) ).

fof(fact_mult__le__less__imp__less,axiom,
    ! [V_d,V_c,V_b,V_a,T_a] :
      ( ( ( c_Orderings_Oord__class_Oless(T_a,V_c,V_d)
         => ( ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_c)
             => c_Orderings_Oord__class_Oless(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_c),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b),V_d)) )
           <= c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_a) ) )
       <= c_Orderings_Oord__class_Oless__eq(T_a,V_a,V_b) )
     <= class_Rings_Olinordered__semiring__strict(T_a) ) ).

fof(fact_power__le__imp__le__base,axiom,
    ! [V_b,V_n,V_a,T_a] :
      ( ( c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),c_Nat_OSuc(V_n)),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_b),c_Nat_OSuc(V_n)))
       => ( c_Orderings_Oord__class_Oless__eq(T_a,V_a,V_b)
         <= c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_b) ) )
     <= class_Rings_Olinordered__semidom(T_a) ) ).

fof(fact_degree__add__eq__right,axiom,
    ! [V_q,V_p,T_a] :
      ( ( c_Polynomial_Odegree(T_a,c_Groups_Oplus__class_Oplus(tc_Polynomial_Opoly(T_a),V_p,V_q)) = c_Polynomial_Odegree(T_a,V_q)
       <= c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Polynomial_Odegree(T_a,V_p),c_Polynomial_Odegree(T_a,V_q)) )
     <= class_Groups_Ocomm__monoid__add(T_a) ) ).

fof(fact_mult__le__cancel1,axiom,
    ! [V_na_2,V_m_2,V_k_2] :
      ( ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m_2,V_na_2)
       <= c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_k_2) )
    <=> c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_k_2),V_m_2),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_k_2),V_na_2)) ) ).

fof(fact_nat__add__left__cancel__le,axiom,
    ! [V_na_2,V_m_2,V_k_2] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_k_2,V_m_2),c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_k_2,V_na_2))
    <=> c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m_2,V_na_2) ) ).

fof(fact_dvd__mult__cancel__left,axiom,
    ! [V_b_2,V_a_2,V_c_2,T_a] :
      ( class_Rings_Oidom(T_a)
     => ( ( hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(T_a),V_a_2),V_b_2))
          | c_Groups_Ozero__class_Ozero(T_a) = V_c_2 )
      <=> hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_c_2),V_a_2)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_c_2),V_b_2))) ) ) ).

fof(fact_add__less__cancel__right,axiom,
    ! [V_b_2,V_c_2,V_a_2,T_a] :
      ( class_Groups_Oordered__ab__semigroup__add__imp__le(T_a)
     => ( c_Orderings_Oord__class_Oless(T_a,V_a_2,V_b_2)
      <=> c_Orderings_Oord__class_Oless(T_a,c_Groups_Oplus__class_Oplus(T_a,V_a_2,V_c_2),c_Groups_Oplus__class_Oplus(T_a,V_b_2,V_c_2)) ) ) ).

fof(arity_Polynomial__Opoly__Rings_Olinordered__semidom,axiom,
    ! [T_1] :
      ( class_Rings_Olinordered__idom(T_1)
     => class_Rings_Olinordered__semidom(tc_Polynomial_Opoly(T_1)) ) ).

fof(fact_mult__le__cancel__left__neg,axiom,
    ! [V_b_2,V_a_2,V_c_2,T_a] :
      ( class_Rings_Olinordered__ring__strict(T_a)
     => ( c_Orderings_Oord__class_Oless(T_a,V_c_2,c_Groups_Ozero__class_Ozero(T_a))
       => ( c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_c_2),V_a_2),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_c_2),V_b_2))
        <=> c_Orderings_Oord__class_Oless__eq(T_a,V_b_2,V_a_2) ) ) ) ).

fof(fact_mult__idem,axiom,
    ! [V_x,T_a] :
      ( hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_x),V_x) = V_x
     <= class_Lattices_Oab__semigroup__idem__mult(T_a) ) ).

fof(fact_zdiff__zmult__distrib2,axiom,
    ! [V_z2,V_z1,V_w] : hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_w),c_Groups_Ominus__class_Ominus(tc_Int_Oint,V_z1,V_z2)) = c_Groups_Ominus__class_Ominus(tc_Int_Oint,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_w),V_z1),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_w),V_z2)) ).

fof(arity_Polynomial__Opoly__Groups_Ocancel__semigroup__add,axiom,
    ! [T_1] :
      ( class_Groups_Ocancel__comm__monoid__add(T_1)
     => class_Groups_Ocancel__semigroup__add(tc_Polynomial_Opoly(T_1)) ) ).

fof(fact_add__le__imp__le__right,axiom,
    ! [V_b,V_c,V_a,T_a] :
      ( class_Groups_Oordered__ab__semigroup__add__imp__le(T_a)
     => ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Oplus__class_Oplus(T_a,V_a,V_c),c_Groups_Oplus__class_Oplus(T_a,V_b,V_c))
       => c_Orderings_Oord__class_Oless__eq(T_a,V_a,V_b) ) ) ).

fof(fact_add__num__frac,axiom,
    ! [V_x,V_z,V_y,T_a] :
      ( ( c_Groups_Oplus__class_Oplus(T_a,V_z,c_Rings_Oinverse__class_Odivide(T_a,V_x,V_y)) = c_Rings_Oinverse__class_Odivide(T_a,c_Groups_Oplus__class_Oplus(T_a,V_x,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_z),V_y)),V_y)
       <= c_Groups_Ozero__class_Ozero(T_a) != V_y )
     <= class_Fields_Ofield__inverse__zero(T_a) ) ).

fof(fact_unity__coeff__ex,axiom,
    ! [V_l_2,V_P_2,T_a] :
      ( ( class_Rings_Odvd(T_a)
        & class_Rings_Osemiring__0(T_a) )
     => ( ? [B_x] : hBOOL(hAPP(V_P_2,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_l_2),B_x)))
      <=> ? [B_x] :
            ( hBOOL(hAPP(V_P_2,B_x))
            & hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(T_a),V_l_2),c_Groups_Oplus__class_Oplus(T_a,B_x,c_Groups_Ozero__class_Ozero(T_a)))) ) ) ) ).

fof(fact_dvd__iff__poly__eq__0,axiom,
    ! [V_pa_2,V_c_2,T_a] :
      ( ( hAPP(c_Polynomial_Opoly(T_a,V_pa_2),c_Groups_Ouminus__class_Ouminus(T_a,V_c_2)) = c_Groups_Ozero__class_Ozero(T_a)
      <=> hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Polynomial_Opoly(T_a)),c_Polynomial_OpCons(T_a,V_c_2,c_Polynomial_OpCons(T_a,c_Groups_Oone__class_Oone(T_a),c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a))))),V_pa_2)) )
     <= class_Rings_Oidom(T_a) ) ).

fof(fact_diff__diff__left,axiom,
    ! [V_k,V_j,V_i] : c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_i,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_j,V_k)) = c_Groups_Ominus__class_Ominus(tc_Nat_Onat,c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_i,V_j),V_k) ).

fof(fact_le__funD,axiom,
    ! [V_x_2,V_g_2,V_f_2,T_a,T_b] :
      ( class_Orderings_Oord(T_b)
     => ( c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,T_b),V_f_2,V_g_2)
       => c_Orderings_Oord__class_Oless__eq(T_b,hAPP(V_f_2,V_x_2),hAPP(V_g_2,V_x_2)) ) ) ).

fof(arity_Int__Oint__Groups_Oordered__ab__semigroup__add__imp__le,axiom,
    class_Groups_Oordered__ab__semigroup__add__imp__le(tc_Int_Oint) ).

fof(fact_minus__add__cancel,axiom,
    ! [V_b,V_a,T_a] :
      ( class_Groups_Ogroup__add(T_a)
     => V_b = c_Groups_Oplus__class_Oplus(T_a,c_Groups_Ouminus__class_Ouminus(T_a,V_a),c_Groups_Oplus__class_Oplus(T_a,V_a,V_b)) ) ).

fof(fact_dvd__mult__left,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( class_Rings_Ocomm__semiring__1(T_a)
     => ( hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b)),V_c))
       => hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(T_a),V_a),V_c)) ) ) ).

fof(arity_Nat__Onat__Rings_Ozero__neq__one,axiom,
    class_Rings_Ozero__neq__one(tc_Nat_Onat) ).

fof(fact_divide_Oadd,axiom,
    ! [V_ya,V_y,V_x,T_a] :
      ( c_Rings_Oinverse__class_Odivide(T_a,c_Groups_Oplus__class_Oplus(T_a,V_x,V_y),V_ya) = c_Groups_Oplus__class_Oplus(T_a,c_Rings_Oinverse__class_Odivide(T_a,V_x,V_ya),c_Rings_Oinverse__class_Odivide(T_a,V_y,V_ya))
     <= class_RealVector_Oreal__normed__field(T_a) ) ).

fof(fact_order__less__imp__not__less,axiom,
    ! [V_y,V_x,T_a] :
      ( class_Orderings_Opreorder(T_a)
     => ( c_Orderings_Oord__class_Oless(T_a,V_x,V_y)
       => ~ c_Orderings_Oord__class_Oless(T_a,V_y,V_x) ) ) ).

fof(fact_power__gt1__lemma,axiom,
    ! [V_n,V_a,T_a] :
      ( class_Rings_Olinordered__semidom(T_a)
     => ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Oone__class_Oone(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_n)))
       <= c_Orderings_Oord__class_Oless(T_a,c_Groups_Oone__class_Oone(T_a),V_a) ) ) ).

fof(arity_Polynomial__Opoly__Rings_Olinordered__idom,axiom,
    ! [T_1] :
      ( class_Rings_Olinordered__idom(tc_Polynomial_Opoly(T_1))
     <= class_Rings_Olinordered__idom(T_1) ) ).

fof(fact_dvd_Oeq__refl,axiom,
    ! [V_y,V_x] :
      ( hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Nat_Onat),V_x),V_y))
     <= V_y = V_x ) ).

fof(arity_Int__Oint__Groups_Ocancel__comm__monoid__add,axiom,
    class_Groups_Ocancel__comm__monoid__add(tc_Int_Oint) ).

fof(fact_termination__basic__simps_I1_J,axiom,
    ! [V_z,V_y,V_x] :
      ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_x,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_y,V_z))
     <= c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_x,V_y) ) ).

fof(fact_mult__pCons__right,axiom,
    ! [V_q,V_a,V_p,T_a] :
      ( c_Groups_Oplus__class_Oplus(tc_Polynomial_Opoly(T_a),c_Polynomial_Osmult(T_a,V_a,V_p),c_Polynomial_OpCons(T_a,c_Groups_Ozero__class_Ozero(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Polynomial_Opoly(T_a)),V_p),V_q))) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Polynomial_Opoly(T_a)),V_p),c_Polynomial_OpCons(T_a,V_a,V_q))
     <= class_Rings_Ocomm__semiring__0(T_a) ) ).

fof(fact_neg__divide__less__eq,axiom,
    ! [V_a_2,V_b_2,V_c_2,T_a] :
      ( ( ( c_Orderings_Oord__class_Oless(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a_2),V_c_2),V_b_2)
        <=> c_Orderings_Oord__class_Oless(T_a,c_Rings_Oinverse__class_Odivide(T_a,V_b_2,V_c_2),V_a_2) )
       <= c_Orderings_Oord__class_Oless(T_a,V_c_2,c_Groups_Ozero__class_Ozero(T_a)) )
     <= class_Fields_Olinordered__field(T_a) ) ).

fof(fact_poly__mult,axiom,
    ! [V_x,V_q,V_p,T_a] :
      ( class_Rings_Ocomm__semiring__0(T_a)
     => hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),hAPP(c_Polynomial_Opoly(T_a,V_p),V_x)),hAPP(c_Polynomial_Opoly(T_a,V_q),V_x)) = hAPP(c_Polynomial_Opoly(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Polynomial_Opoly(T_a)),V_p),V_q)),V_x) ) ).

fof(arity_fun__Orderings_Oorder,axiom,
    ! [T_2,T_1] :
      ( class_Orderings_Oorder(tc_fun(T_2,T_1))
     <= class_Orderings_Oorder(T_1) ) ).

fof(fact_le__iff__add,axiom,
    ! [V_na_2,V_m_2] :
      ( ? [B_k] : V_na_2 = c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_m_2,B_k)
    <=> c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m_2,V_na_2) ) ).

fof(arity_Nat__Onat__Rings_Omult__zero,axiom,
    class_Rings_Omult__zero(tc_Nat_Onat) ).

fof(fact_add__leD1,axiom,
    ! [V_n,V_k,V_m] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m,V_n)
     <= c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_m,V_k),V_n) ) ).

fof(fact_add__mono,axiom,
    ! [V_d,V_c,V_b,V_a,T_a] :
      ( class_Groups_Oordered__ab__semigroup__add(T_a)
     => ( c_Orderings_Oord__class_Oless__eq(T_a,V_a,V_b)
       => ( c_Orderings_Oord__class_Oless__eq(T_a,V_c,V_d)
         => c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Oplus__class_Oplus(T_a,V_a,V_c),c_Groups_Oplus__class_Oplus(T_a,V_b,V_d)) ) ) ) ).

fof(fact_comm__semiring__1__class_Onormalizing__semiring__rules_I1_J,axiom,
    ! [V_b,V_m,V_a,T_a] :
      ( class_Rings_Ocomm__semiring__1(T_a)
     => hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Groups_Oplus__class_Oplus(T_a,V_a,V_b)),V_m) = c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_m),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b),V_m)) ) ).

fof(arity_Polynomial__Opoly__Rings_Oring__no__zero__divisors,axiom,
    ! [T_1] :
      ( class_Rings_Oring__no__zero__divisors(tc_Polynomial_Opoly(T_1))
     <= class_Rings_Oidom(T_1) ) ).

fof(fact_smult__minus__left,axiom,
    ! [V_p,V_a,T_a] :
      ( class_Rings_Ocomm__ring(T_a)
     => c_Polynomial_Osmult(T_a,c_Groups_Ouminus__class_Ouminus(T_a,V_a),V_p) = c_Groups_Ouminus__class_Ouminus(tc_Polynomial_Opoly(T_a),c_Polynomial_Osmult(T_a,V_a,V_p)) ) ).

fof(fact_dvd_Oless__imp__not__less,axiom,
    ! [V_y,V_x] :
      ( ~ ( hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Nat_Onat),V_y),V_x))
          & ~ hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Nat_Onat),V_x),V_y)) )
     <= ( ~ hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Nat_Onat),V_y),V_x))
        & hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Nat_Onat),V_x),V_y)) ) ) ).

fof(fact_zadd__zminus__inverse2,axiom,
    ! [V_z] : c_Groups_Oplus__class_Oplus(tc_Int_Oint,c_Groups_Ouminus__class_Ouminus(tc_Int_Oint,V_z),V_z) = c_Groups_Ozero__class_Ozero(tc_Int_Oint) ).

fof(arity_Int__Oint__Rings_Omult__zero,axiom,
    class_Rings_Omult__zero(tc_Int_Oint) ).

fof(fact_Suc__leI,axiom,
    ! [V_n,V_m] :
      ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_m,V_n)
     => c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,c_Nat_OSuc(V_m),V_n) ) ).

fof(fact_divide__less__eq,axiom,
    ! [V_a_2,V_c_2,V_b_2,T_a] :
      ( ( ( ( ( ( c_Orderings_Oord__class_Oless(T_a,V_c_2,c_Groups_Ozero__class_Ozero(T_a))
               => c_Orderings_Oord__class_Oless(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a_2),V_c_2),V_b_2) )
              & ( ~ c_Orderings_Oord__class_Oless(T_a,V_c_2,c_Groups_Ozero__class_Ozero(T_a))
               => c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_a_2) ) )
           <= ~ c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_c_2) )
          & ( c_Orderings_Oord__class_Oless(T_a,V_b_2,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a_2),V_c_2))
           <= c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_c_2) ) )
      <=> c_Orderings_Oord__class_Oless(T_a,c_Rings_Oinverse__class_Odivide(T_a,V_b_2,V_c_2),V_a_2) )
     <= class_Fields_Olinordered__field__inverse__zero(T_a) ) ).

fof(fact_mult_Ozero__left,axiom,
    ! [V_b,T_a] :
      ( hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Groups_Ozero__class_Ozero(T_a)),V_b) = c_Groups_Ozero__class_Ozero(T_a)
     <= class_RealVector_Oreal__normed__algebra(T_a) ) ).

fof(fact_zdvd__mult__cancel,axiom,
    ! [V_n,V_m,V_k] :
      ( hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Int_Oint),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_k),V_m)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_k),V_n)))
     => ( hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Int_Oint),V_m),V_n))
       <= V_k != c_Groups_Ozero__class_Ozero(tc_Int_Oint) ) ) ).

fof(fact_add__strict__mono,axiom,
    ! [V_d,V_c,V_b,V_a,T_a] :
      ( class_Groups_Oordered__cancel__ab__semigroup__add(T_a)
     => ( ( c_Orderings_Oord__class_Oless(T_a,V_c,V_d)
         => c_Orderings_Oord__class_Oless(T_a,c_Groups_Oplus__class_Oplus(T_a,V_a,V_c),c_Groups_Oplus__class_Oplus(T_a,V_b,V_d)) )
       <= c_Orderings_Oord__class_Oless(T_a,V_a,V_b) ) ) ).

fof(fact_Limits_Ominus__diff__minus,axiom,
    ! [V_b,V_a,T_a] :
      ( class_Groups_Oab__group__add(T_a)
     => c_Groups_Ouminus__class_Ouminus(T_a,c_Groups_Ominus__class_Ominus(T_a,V_a,V_b)) = c_Groups_Ominus__class_Ominus(T_a,c_Groups_Ouminus__class_Ouminus(T_a,V_a),c_Groups_Ouminus__class_Ouminus(T_a,V_b)) ) ).

fof(arity_Nat__Onat__Groups_Oordered__ab__semigroup__add__imp__le,axiom,
    class_Groups_Oordered__ab__semigroup__add__imp__le(tc_Nat_Onat) ).

fof(fact_divide__le__eq,axiom,
    ! [V_a_2,V_c_2,V_b_2,T_a] :
      ( class_Fields_Olinordered__field__inverse__zero(T_a)
     => ( ( ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_c_2)
           => c_Orderings_Oord__class_Oless__eq(T_a,V_b_2,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a_2),V_c_2)) )
          & ( ~ c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_c_2)
           => ( ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_a_2)
               <= ~ c_Orderings_Oord__class_Oless(T_a,V_c_2,c_Groups_Ozero__class_Ozero(T_a)) )
              & ( c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a_2),V_c_2),V_b_2)
               <= c_Orderings_Oord__class_Oless(T_a,V_c_2,c_Groups_Ozero__class_Ozero(T_a)) ) ) ) )
      <=> c_Orderings_Oord__class_Oless__eq(T_a,c_Rings_Oinverse__class_Odivide(T_a,V_b_2,V_c_2),V_a_2) ) ) ).

fof(fact_minus__dvd__iff,axiom,
    ! [V_y_2,V_x_2,T_a] :
      ( ( hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(T_a),V_x_2),V_y_2))
      <=> hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(T_a),c_Groups_Ouminus__class_Ouminus(T_a,V_x_2)),V_y_2)) )
     <= class_Rings_Ocomm__ring__1(T_a) ) ).

fof(arity_Nat__Onat__Rings_Oordered__comm__semiring,axiom,
    class_Rings_Oordered__comm__semiring(tc_Nat_Onat) ).

fof(arity_Int__Oint__Rings_Olinordered__ring,axiom,
    class_Rings_Olinordered__ring(tc_Int_Oint) ).

fof(arity_Int__Oint__Orderings_Olinorder,axiom,
    class_Orderings_Olinorder(tc_Int_Oint) ).

fof(arity_Int__Oint__Divides_Osemiring__div,axiom,
    class_Divides_Osemiring__div(tc_Int_Oint) ).

fof(fact_pow__divides__pow__nat,axiom,
    ! [V_b,V_n,V_a] :
      ( ( hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Nat_Onat),V_a),V_b))
       <= c_Groups_Ozero__class_Ozero(tc_Nat_Onat) != V_n )
     <= hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Nat_Onat),hAPP(hAPP(c_Power_Opower__class_Opower(tc_Nat_Onat),V_a),V_n)),hAPP(hAPP(c_Power_Opower__class_Opower(tc_Nat_Onat),V_b),V_n))) ) ).

fof(fact_diff__pCons,axiom,
    ! [V_q,V_b,V_p,V_a,T_a] :
      ( c_Polynomial_OpCons(T_a,c_Groups_Ominus__class_Ominus(T_a,V_a,V_b),c_Groups_Ominus__class_Ominus(tc_Polynomial_Opoly(T_a),V_p,V_q)) = c_Groups_Ominus__class_Ominus(tc_Polynomial_Opoly(T_a),c_Polynomial_OpCons(T_a,V_a,V_p),c_Polynomial_OpCons(T_a,V_b,V_q))
     <= class_Groups_Oab__group__add(T_a) ) ).

fof(fact_diff__le__self,axiom,
    ! [V_n,V_m] : c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_m,V_n),V_m) ).

fof(fact_eq__zero__or__degree__less,axiom,
    ! [V_n,V_p,T_a] :
      ( class_Groups_Ozero(T_a)
     => ( ( c_Groups_Ozero__class_Ozero(T_a) = hAPP(c_Polynomial_Ocoeff(T_a,V_p),V_n)
         => ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Polynomial_Odegree(T_a,V_p),V_n)
            | c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a)) = V_p ) )
       <= c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,c_Polynomial_Odegree(T_a,V_p),V_n) ) ) ).

fof(fact_add__0__right,axiom,
    ! [V_a,T_a] :
      ( class_Groups_Omonoid__add(T_a)
     => c_Groups_Oplus__class_Oplus(T_a,V_a,c_Groups_Ozero__class_Ozero(T_a)) = V_a ) ).

fof(fact_n__less__m__mult__n,axiom,
    ! [V_m,V_n] :
      ( ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Nat_OSuc(c_Groups_Ozero__class_Ozero(tc_Nat_Onat)),V_m)
       => c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_n,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_m),V_n)) )
     <= c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Nat_OSuc(c_Groups_Ozero__class_Ozero(tc_Nat_Onat)),V_n) ) ).

fof(fact_dvd__pos__nat,axiom,
    ! [V_m,V_n] :
      ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_n)
     => ( hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Nat_Onat),V_m),V_n))
       => c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_m) ) ) ).

fof(arity_Complex__Ocomplex__Fields_Ofield,axiom,
    class_Fields_Ofield(tc_Complex_Ocomplex) ).

fof(fact_dvd__1__iff__1,axiom,
    ! [V_m_2] :
      ( hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Nat_Onat),V_m_2),c_Nat_OSuc(c_Groups_Ozero__class_Ozero(tc_Nat_Onat))))
    <=> V_m_2 = c_Nat_OSuc(c_Groups_Ozero__class_Ozero(tc_Nat_Onat)) ) ).

fof(fact_nat__mult__1__right,axiom,
    ! [V_n] : hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_n),c_Groups_Oone__class_Oone(tc_Nat_Onat)) = V_n ).

fof(fact_coeff__pCons__0,axiom,
    ! [V_p,V_a,T_a] :
      ( class_Groups_Ozero(T_a)
     => V_a = hAPP(c_Polynomial_Ocoeff(T_a,c_Polynomial_OpCons(T_a,V_a,V_p)),c_Groups_Ozero__class_Ozero(tc_Nat_Onat)) ) ).

fof(fact_divide__strict__right__mono__neg,axiom,
    ! [V_c,V_a,V_b,T_a] :
      ( ( c_Orderings_Oord__class_Oless(T_a,V_b,V_a)
       => ( c_Orderings_Oord__class_Oless(T_a,c_Rings_Oinverse__class_Odivide(T_a,V_a,V_c),c_Rings_Oinverse__class_Odivide(T_a,V_b,V_c))
         <= c_Orderings_Oord__class_Oless(T_a,V_c,c_Groups_Ozero__class_Ozero(T_a)) ) )
     <= class_Fields_Olinordered__field(T_a) ) ).

fof(arity_Nat__Onat__Divides_Osemiring__div,axiom,
    class_Divides_Osemiring__div(tc_Nat_Onat) ).

fof(fact_power__less__imp__less__base,axiom,
    ! [V_b,V_n,V_a,T_a] :
      ( class_Rings_Olinordered__semidom(T_a)
     => ( c_Orderings_Oord__class_Oless(T_a,hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_n),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_b),V_n))
       => ( c_Orderings_Oord__class_Oless(T_a,V_a,V_b)
         <= c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_b) ) ) ) ).

fof(fact_crossproduct__eq,axiom,
    ! [V_z_2,V_x_2,V_y_2,V_w_2,T_a] :
      ( class_Semiring__Normalization_Ocomm__semiring__1__cancel__crossproduct(T_a)
     => ( c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_w_2),V_y_2),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_x_2),V_z_2)) = c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_w_2),V_z_2),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_x_2),V_y_2))
      <=> ( V_z_2 = V_y_2
          | V_x_2 = V_w_2 ) ) ) ).

fof(arity_Polynomial__Opoly__Rings_Olinordered__semiring,axiom,
    ! [T_1] :
      ( class_Rings_Olinordered__idom(T_1)
     => class_Rings_Olinordered__semiring(tc_Polynomial_Opoly(T_1)) ) ).

fof(fact_comm__semiring__1__class_Onormalizing__semiring__rules_I31_J,axiom,
    ! [V_q,V_p,V_x,T_a] :
      ( hAPP(hAPP(c_Power_Opower__class_Opower(T_a),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_x),V_p)),V_q) = hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_x),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_p),V_q))
     <= class_Rings_Ocomm__semiring__1(T_a) ) ).

fof(fact_linorder__linear,axiom,
    ! [V_y,V_x,T_a] :
      ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_x,V_y)
        | c_Orderings_Oord__class_Oless__eq(T_a,V_y,V_x) )
     <= class_Orderings_Olinorder(T_a) ) ).

fof(fact_power__Suc2,axiom,
    ! [V_n,V_a,T_a] :
      ( hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_n)),V_a) = hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),c_Nat_OSuc(V_n))
     <= class_Groups_Omonoid__mult(T_a) ) ).

fof(arity_Nat__Onat__Power_Opower,axiom,
    class_Power_Opower(tc_Nat_Onat) ).

fof(fact_termination__basic__simps_I3_J,axiom,
    ! [V_z,V_y,V_x] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_x,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_y,V_z))
     <= c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_x,V_y) ) ).

fof(arity_Complex__Ocomplex__Rings_Omult__zero,axiom,
    class_Rings_Omult__zero(tc_Complex_Ocomplex) ).

fof(fact_pCons__eq__0__iff,axiom,
    ! [V_pa_2,V_a_2,T_a] :
      ( ( ( c_Groups_Ozero__class_Ozero(T_a) = V_a_2
          & c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a)) = V_pa_2 )
      <=> c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a)) = c_Polynomial_OpCons(T_a,V_a_2,V_pa_2) )
     <= class_Groups_Ozero(T_a) ) ).

fof(fact_mult__Suc,axiom,
    ! [V_n,V_m] : c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_n,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_m),V_n)) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),c_Nat_OSuc(V_m)),V_n) ).

fof(fact_diff__add__inverse2,axiom,
    ! [V_n,V_m] : V_m = c_Groups_Ominus__class_Ominus(tc_Nat_Onat,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_m,V_n),V_n) ).

fof(fact_comm__semiring__1__class_Onormalizing__semiring__rules_I15_J,axiom,
    ! [V_ry,V_rx,V_ly,V_lx,T_a] :
      ( class_Rings_Ocomm__semiring__1(T_a)
     => hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_rx),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_lx),V_ly)),V_ry)) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_lx),V_ly)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_rx),V_ry)) ) ).

fof(fact_dvd_Oless__trans,axiom,
    ! [V_z,V_y,V_x] :
      ( ( ~ hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Nat_Onat),V_y),V_x))
        & hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Nat_Onat),V_x),V_y)) )
     => ( ( ~ hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Nat_Onat),V_z),V_y))
          & hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Nat_Onat),V_y),V_z)) )
       => ( hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Nat_Onat),V_x),V_z))
          & ~ hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Nat_Onat),V_z),V_x)) ) ) ) ).

fof(fact_one__less__power,axiom,
    ! [V_n,V_a,T_a] :
      ( class_Rings_Olinordered__semidom(T_a)
     => ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Oone__class_Oone(T_a),V_a)
       => ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_n)
         => c_Orderings_Oord__class_Oless(T_a,c_Groups_Oone__class_Oone(T_a),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_n)) ) ) ) ).

fof(fact_order__neq__le__trans,axiom,
    ! [V_b,V_a,T_a] :
      ( ( V_b != V_a
       => ( c_Orderings_Oord__class_Oless(T_a,V_a,V_b)
         <= c_Orderings_Oord__class_Oless__eq(T_a,V_a,V_b) ) )
     <= class_Orderings_Oorder(T_a) ) ).

fof(fact_divisors__zero,axiom,
    ! [V_b,V_a,T_a] :
      ( class_Rings_Ono__zero__divisors(T_a)
     => ( c_Groups_Ozero__class_Ozero(T_a) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b)
       => ( V_a = c_Groups_Ozero__class_Ozero(T_a)
          | c_Groups_Ozero__class_Ozero(T_a) = V_b ) ) ) ).

fof(fact_nat__mult__eq__1__iff,axiom,
    ! [V_na_2,V_m_2] :
      ( c_Groups_Oone__class_Oone(tc_Nat_Onat) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_m_2),V_na_2)
    <=> ( c_Groups_Oone__class_Oone(tc_Nat_Onat) = V_m_2
        & c_Groups_Oone__class_Oone(tc_Nat_Onat) = V_na_2 ) ) ).

fof(fact_mult__smult__right,axiom,
    ! [V_q,V_a,V_p,T_a] :
      ( class_Rings_Ocomm__semiring__0(T_a)
     => hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Polynomial_Opoly(T_a)),V_p),c_Polynomial_Osmult(T_a,V_a,V_q)) = c_Polynomial_Osmult(T_a,V_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Polynomial_Opoly(T_a)),V_p),V_q)) ) ).

fof(fact_plus__nat_Oadd__0,axiom,
    ! [V_n] : V_n = c_Groups_Oplus__class_Oplus(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_n) ).

fof(fact_divide__pos__neg,axiom,
    ! [V_y,V_x,T_a] :
      ( class_Fields_Olinordered__field(T_a)
     => ( ( c_Orderings_Oord__class_Oless(T_a,V_y,c_Groups_Ozero__class_Ozero(T_a))
         => c_Orderings_Oord__class_Oless(T_a,c_Rings_Oinverse__class_Odivide(T_a,V_x,V_y),c_Groups_Ozero__class_Ozero(T_a)) )
       <= c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_x) ) ) ).

fof(fact_degree__pCons__eq,axiom,
    ! [V_a,V_p,T_a] :
      ( class_Groups_Ozero(T_a)
     => ( c_Nat_OSuc(c_Polynomial_Odegree(T_a,V_p)) = c_Polynomial_Odegree(T_a,c_Polynomial_OpCons(T_a,V_a,V_p))
       <= c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a)) != V_p ) ) ).

fof(fact_power__strict__mono,axiom,
    ! [V_n,V_b,V_a,T_a] :
      ( ( ( ( c_Orderings_Oord__class_Oless(T_a,hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_n),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_b),V_n))
           <= c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_n) )
         <= c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_a) )
       <= c_Orderings_Oord__class_Oless(T_a,V_a,V_b) )
     <= class_Rings_Olinordered__semidom(T_a) ) ).

fof(fact_less__divide__eq,axiom,
    ! [V_c_2,V_b_2,V_a_2,T_a] :
      ( class_Fields_Olinordered__field__inverse__zero(T_a)
     => ( ( ( c_Orderings_Oord__class_Oless(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a_2),V_c_2),V_b_2)
           <= c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_c_2) )
          & ( ( ( c_Orderings_Oord__class_Oless(T_a,V_b_2,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a_2),V_c_2))
               <= c_Orderings_Oord__class_Oless(T_a,V_c_2,c_Groups_Ozero__class_Ozero(T_a)) )
              & ( ~ c_Orderings_Oord__class_Oless(T_a,V_c_2,c_Groups_Ozero__class_Ozero(T_a))
               => c_Orderings_Oord__class_Oless(T_a,V_a_2,c_Groups_Ozero__class_Ozero(T_a)) ) )
           <= ~ c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_c_2) ) )
      <=> c_Orderings_Oord__class_Oless(T_a,V_a_2,c_Rings_Oinverse__class_Odivide(T_a,V_b_2,V_c_2)) ) ) ).

fof(fact_diff__0__eq__0,axiom,
    ! [V_n] : c_Groups_Ozero__class_Ozero(tc_Nat_Onat) = c_Groups_Ominus__class_Ominus(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_n) ).

fof(fact_add__increasing2,axiom,
    ! [V_a,V_b,V_c,T_a] :
      ( class_Groups_Oordered__comm__monoid__add(T_a)
     => ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_c)
       => ( c_Orderings_Oord__class_Oless__eq(T_a,V_b,c_Groups_Oplus__class_Oplus(T_a,V_a,V_c))
         <= c_Orderings_Oord__class_Oless__eq(T_a,V_b,V_a) ) ) ) ).

fof(fact_diff__self__eq__0,axiom,
    ! [V_m] : c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_m,V_m) = c_Groups_Ozero__class_Ozero(tc_Nat_Onat) ).

fof(fact_poly__mod__minus__left,axiom,
    ! [V_y,V_x,T_a] :
      ( c_Divides_Odiv__class_Omod(tc_Polynomial_Opoly(T_a),c_Groups_Ouminus__class_Ouminus(tc_Polynomial_Opoly(T_a),V_x),V_y) = c_Groups_Ouminus__class_Ouminus(tc_Polynomial_Opoly(T_a),c_Divides_Odiv__class_Omod(tc_Polynomial_Opoly(T_a),V_x,V_y))
     <= class_Fields_Ofield(T_a) ) ).

fof(fact_minus__add,axiom,
    ! [V_b,V_a,T_a] :
      ( class_Groups_Ogroup__add(T_a)
     => c_Groups_Ouminus__class_Ouminus(T_a,c_Groups_Oplus__class_Oplus(T_a,V_a,V_b)) = c_Groups_Oplus__class_Oplus(T_a,c_Groups_Ouminus__class_Ouminus(T_a,V_b),c_Groups_Ouminus__class_Ouminus(T_a,V_a)) ) ).

fof(fact_comm__semiring__1__class_Onormalizing__semiring__rules_I9_J,axiom,
    ! [V_a,T_a] :
      ( hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Groups_Ozero__class_Ozero(T_a)),V_a) = c_Groups_Ozero__class_Ozero(T_a)
     <= class_Rings_Ocomm__semiring__1(T_a) ) ).

fof(fact_poly__diff,axiom,
    ! [V_x,V_q,V_p,T_a] :
      ( class_Rings_Ocomm__ring(T_a)
     => hAPP(c_Polynomial_Opoly(T_a,c_Groups_Ominus__class_Ominus(tc_Polynomial_Opoly(T_a),V_p,V_q)),V_x) = c_Groups_Ominus__class_Ominus(T_a,hAPP(c_Polynomial_Opoly(T_a,V_p),V_x),hAPP(c_Polynomial_Opoly(T_a,V_q),V_x)) ) ).

fof(fact_zdvd__zdiffD,axiom,
    ! [V_n,V_m,V_k] :
      ( hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Int_Oint),V_k),c_Groups_Ominus__class_Ominus(tc_Int_Oint,V_m,V_n)))
     => ( hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Int_Oint),V_k),V_n))
       => hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Int_Oint),V_k),V_m)) ) ) ).

fof(arity_Polynomial__Opoly__Rings_Oring,axiom,
    ! [T_1] :
      ( class_Rings_Oring(tc_Polynomial_Opoly(T_1))
     <= class_Rings_Ocomm__ring(T_1) ) ).

fof(fact_divide__le__0__iff,axiom,
    ! [V_b_2,V_a_2,T_a] :
      ( ( ( ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_a_2)
            & c_Orderings_Oord__class_Oless__eq(T_a,V_b_2,c_Groups_Ozero__class_Ozero(T_a)) )
          | ( c_Orderings_Oord__class_Oless__eq(T_a,V_a_2,c_Groups_Ozero__class_Ozero(T_a))
            & c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_b_2) ) )
      <=> c_Orderings_Oord__class_Oless__eq(T_a,c_Rings_Oinverse__class_Odivide(T_a,V_a_2,V_b_2),c_Groups_Ozero__class_Ozero(T_a)) )
     <= class_Fields_Olinordered__field__inverse__zero(T_a) ) ).

fof(arity_Int__Oint__Rings_Olinordered__semiring__1,axiom,
    class_Rings_Olinordered__semiring__1(tc_Int_Oint) ).

fof(fact_xt1_I9_J,axiom,
    ! [V_a,V_b,T_a] :
      ( ( ~ c_Orderings_Oord__class_Oless(T_a,V_a,V_b)
       <= c_Orderings_Oord__class_Oless(T_a,V_b,V_a) )
     <= class_Orderings_Oorder(T_a) ) ).

fof(fact_sum__squares__ge__zero,axiom,
    ! [V_y,V_x,T_a] :
      ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_x),V_x),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_y),V_y)))
     <= class_Rings_Olinordered__ring(T_a) ) ).

fof(fact_diff__commute,axiom,
    ! [V_k,V_j,V_i] : c_Groups_Ominus__class_Ominus(tc_Nat_Onat,c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_i,V_j),V_k) = c_Groups_Ominus__class_Ominus(tc_Nat_Onat,c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_i,V_k),V_j) ).

fof(fact_nat__add__left__cancel__less,axiom,
    ! [V_na_2,V_m_2,V_k_2] :
      ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_m_2,V_na_2)
    <=> c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_k_2,V_m_2),c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_k_2,V_na_2)) ) ).

fof(fact_power__dvd__imp__le,axiom,
    ! [V_n,V_m,V_i] :
      ( hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Nat_Onat),hAPP(hAPP(c_Power_Opower__class_Opower(tc_Nat_Onat),V_i),V_m)),hAPP(hAPP(c_Power_Opower__class_Opower(tc_Nat_Onat),V_i),V_n)))
     => ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m,V_n)
       <= c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Oone__class_Oone(tc_Nat_Onat),V_i) ) ) ).

fof(fact_degree__diff__less,axiom,
    ! [V_q,V_n,V_p,T_a] :
      ( class_Groups_Oab__group__add(T_a)
     => ( ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Polynomial_Odegree(T_a,c_Groups_Ominus__class_Ominus(tc_Polynomial_Opoly(T_a),V_p,V_q)),V_n)
         <= c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Polynomial_Odegree(T_a,V_q),V_n) )
       <= c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Polynomial_Odegree(T_a,V_p),V_n) ) ) ).

fof(arity_Nat__Onat__Rings_Olinordered__semidom,axiom,
    class_Rings_Olinordered__semidom(tc_Nat_Onat) ).

fof(fact_zminus__zminus,axiom,
    ! [V_z] : V_z = c_Groups_Ouminus__class_Ouminus(tc_Int_Oint,c_Groups_Ouminus__class_Ouminus(tc_Int_Oint,V_z)) ).

fof(fact_synthetic__div__correct,axiom,
    ! [V_c,V_p,T_a] :
      ( class_Rings_Ocomm__semiring__0(T_a)
     => c_Groups_Oplus__class_Oplus(tc_Polynomial_Opoly(T_a),V_p,c_Polynomial_Osmult(T_a,V_c,c_Polynomial_Osynthetic__div(T_a,V_p,V_c))) = c_Polynomial_OpCons(T_a,hAPP(c_Polynomial_Opoly(T_a,V_p),V_c),c_Polynomial_Osynthetic__div(T_a,V_p,V_c)) ) ).

fof(arity_Int__Oint__Groups_Oone,axiom,
    class_Groups_Oone(tc_Int_Oint) ).

fof(fact_add__less__mono1,axiom,
    ! [V_k,V_j,V_i] :
      ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_i,V_k),c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_j,V_k))
     <= c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_i,V_j) ) ).

fof(arity_Complex__Ocomplex__Groups_Ozero,axiom,
    class_Groups_Ozero(tc_Complex_Ocomplex) ).

fof(fact_diff__int__def__symmetric,axiom,
    ! [V_w,V_z] : c_Groups_Ominus__class_Ominus(tc_Int_Oint,V_z,V_w) = c_Groups_Oplus__class_Oplus(tc_Int_Oint,V_z,c_Groups_Ouminus__class_Ouminus(tc_Int_Oint,V_w)) ).

fof(fact_Suc__pred_H,axiom,
    ! [V_n] :
      ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_n)
     => V_n = c_Nat_OSuc(c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_n,c_Groups_Oone__class_Oone(tc_Nat_Onat))) ) ).

fof(fact_minus__zero,axiom,
    ! [T_a] :
      ( c_Groups_Ozero__class_Ozero(T_a) = c_Groups_Ouminus__class_Ouminus(T_a,c_Groups_Ozero__class_Ozero(T_a))
     <= class_Groups_Ogroup__add(T_a) ) ).

fof(fact_nat__diff__add__eq1,axiom,
    ! [V_n,V_m,V_u,V_i,V_j] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_j,V_i)
     => c_Groups_Ominus__class_Ominus(tc_Nat_Onat,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_i),V_u),V_m),c_Groups_Oplus__class_Oplus(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_j),V_u),V_n)) = c_Groups_Ominus__class_Ominus(tc_Nat_Onat,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_i,V_j)),V_u),V_m),V_n) ) ).

fof(fact_calculation,axiom,
    ( ( ! [B_x] :
          ( c_Groups_Ozero__class_Ozero(tc_Complex_Ocomplex) = hAPP(c_Polynomial_Opoly(tc_Complex_Ocomplex,v_q),B_x)
         <= hAPP(c_Polynomial_Opoly(tc_Complex_Ocomplex,v_p),B_x) = c_Groups_Ozero__class_Ozero(tc_Complex_Ocomplex) )
    <=> ( hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Polynomial_Opoly(tc_Complex_Ocomplex)),v_p),hAPP(hAPP(c_Power_Opower__class_Opower(tc_Polynomial_Opoly(tc_Complex_Ocomplex)),v_q),c_Polynomial_Odegree(tc_Complex_Ocomplex,v_p))))
        | ( c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(tc_Complex_Ocomplex)) = v_q
          & v_p = c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(tc_Complex_Ocomplex)) ) ) )
   <= c_Groups_Ozero__class_Ozero(tc_Nat_Onat) = c_Polynomial_Odegree(tc_Complex_Ocomplex,v_p) ) ).

fof(fact__096_B_Bthesis_O_A_I_B_Bn_O_Adegree_Ap_A_061_ASuc_An_A_061_061_062_Athesis_J_A_061_061_062_Athesis_096,axiom,
    ~ ! [B_n] : c_Nat_OSuc(B_n) != c_Polynomial_Odegree(tc_Complex_Ocomplex,v_p) ).

fof(fact_Suc__le__lessD,axiom,
    ! [V_n,V_m] :
      ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_m,V_n)
     <= c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,c_Nat_OSuc(V_m),V_n) ) ).

fof(arity_Int__Oint__Groups_Oordered__comm__monoid__add,axiom,
    class_Groups_Oordered__comm__monoid__add(tc_Int_Oint) ).

fof(fact_add__nonpos__nonpos,axiom,
    ! [V_b,V_a,T_a] :
      ( ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_b,c_Groups_Ozero__class_Ozero(T_a))
         => c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Oplus__class_Oplus(T_a,V_a,V_b),c_Groups_Ozero__class_Ozero(T_a)) )
       <= c_Orderings_Oord__class_Oless__eq(T_a,V_a,c_Groups_Ozero__class_Ozero(T_a)) )
     <= class_Groups_Oordered__comm__monoid__add(T_a) ) ).

fof(fact_power__inject__base,axiom,
    ! [V_b,V_n,V_a,T_a] :
      ( ( ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_a)
         => ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_b)
           => V_b = V_a ) )
       <= hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_b),c_Nat_OSuc(V_n)) = hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),c_Nat_OSuc(V_n)) )
     <= class_Rings_Olinordered__semidom(T_a) ) ).

fof(arity_Complex__Ocomplex__Groups_Ouminus,axiom,
    class_Groups_Ouminus(tc_Complex_Ocomplex) ).

fof(fact_zadd__commute,axiom,
    ! [V_w,V_z] : c_Groups_Oplus__class_Oplus(tc_Int_Oint,V_w,V_z) = c_Groups_Oplus__class_Oplus(tc_Int_Oint,V_z,V_w) ).

fof(arity_Int__Oint__Orderings_Oord,axiom,
    class_Orderings_Oord(tc_Int_Oint) ).

fof(arity_Polynomial__Opoly__Rings_Olinordered__semiring__strict,axiom,
    ! [T_1] :
      ( class_Rings_Olinordered__idom(T_1)
     => class_Rings_Olinordered__semiring__strict(tc_Polynomial_Opoly(T_1)) ) ).

fof(arity_Nat__Onat__Groups_Omonoid__mult,axiom,
    class_Groups_Omonoid__mult(tc_Nat_Onat) ).

fof(fact_power__minus,axiom,
    ! [V_n,V_a,T_a] :
      ( class_Rings_Oring__1(T_a)
     => hAPP(hAPP(c_Power_Opower__class_Opower(T_a),c_Groups_Ouminus__class_Ouminus(T_a,V_a)),V_n) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),c_Groups_Ouminus__class_Ouminus(T_a,c_Groups_Oone__class_Oone(T_a))),V_n)),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_n)) ) ).

fof(fact__096_091_124_AALL_Ax_O_Apoly_Ap_Ax_A_061_A0_A_N_N_062_Apoly_Aq_Ax_A_061_A0_059_Adegree_Ap_A_061_Adegree_Ap_059_Adegree_Ap_A_126_061_A0_A_124_093_061_061_062_Ap_Advd_Aq_A_094_Adegree_Ap_096,axiom,
    ( ! [B_x] :
        ( c_Groups_Ozero__class_Ozero(tc_Complex_Ocomplex) = hAPP(c_Polynomial_Opoly(tc_Complex_Ocomplex,v_q),B_x)
       <= hAPP(c_Polynomial_Opoly(tc_Complex_Ocomplex,v_p),B_x) = c_Groups_Ozero__class_Ozero(tc_Complex_Ocomplex) )
   => ( hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Polynomial_Opoly(tc_Complex_Ocomplex)),v_p),hAPP(hAPP(c_Power_Opower__class_Opower(tc_Polynomial_Opoly(tc_Complex_Ocomplex)),v_q),c_Polynomial_Odegree(tc_Complex_Ocomplex,v_p))))
     <= c_Groups_Ozero__class_Ozero(tc_Nat_Onat) != c_Polynomial_Odegree(tc_Complex_Ocomplex,v_p) ) ) ).

fof(fact_nat__less__le,axiom,
    ! [V_na_2,V_m_2] :
      ( ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m_2,V_na_2)
        & V_m_2 != V_na_2 )
    <=> c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_m_2,V_na_2) ) ).

fof(fact_one__less__mult,axiom,
    ! [V_m,V_n] :
      ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Nat_OSuc(c_Groups_Ozero__class_Ozero(tc_Nat_Onat)),V_n)
     => ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Nat_OSuc(c_Groups_Ozero__class_Ozero(tc_Nat_Onat)),V_m)
       => c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Nat_OSuc(c_Groups_Ozero__class_Ozero(tc_Nat_Onat)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_m),V_n)) ) ) ).

fof(arity_Int__Oint__Rings_Olinordered__idom,axiom,
    class_Rings_Olinordered__idom(tc_Int_Oint) ).

fof(fact_less__nat__zero__code,axiom,
    ! [V_n] : ~ c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_n,c_Groups_Ozero__class_Ozero(tc_Nat_Onat)) ).

fof(arity_Polynomial__Opoly__Rings_Olinordered__comm__semiring__strict,axiom,
    ! [T_1] :
      ( class_Rings_Olinordered__idom(T_1)
     => class_Rings_Olinordered__comm__semiring__strict(tc_Polynomial_Opoly(T_1)) ) ).

fof(arity_Int__Oint__Rings_Ozero__neq__one,axiom,
    class_Rings_Ozero__neq__one(tc_Int_Oint) ).

fof(fact_less__imp__le__nat,axiom,
    ! [V_n,V_m] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m,V_n)
     <= c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_m,V_n) ) ).

fof(fact_comm__semiring__1__class_Onormalizing__semiring__rules_I33_J,axiom,
    ! [V_x,T_a] :
      ( class_Rings_Ocomm__semiring__1(T_a)
     => hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_x),c_Groups_Oone__class_Oone(tc_Nat_Onat)) = V_x ) ).

fof(fact_eq__add__iff1,axiom,
    ! [V_d_2,V_b_2,V_c_2,V_e_2,V_a_2,T_a] :
      ( class_Rings_Oring(T_a)
     => ( c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a_2),V_e_2),V_c_2) = c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b_2),V_e_2),V_d_2)
      <=> V_d_2 = c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Groups_Ominus__class_Ominus(T_a,V_a_2,V_b_2)),V_e_2),V_c_2) ) ) ).

fof(arity_Int__Oint__Groups_Oordered__cancel__ab__semigroup__add,axiom,
    class_Groups_Oordered__cancel__ab__semigroup__add(tc_Int_Oint) ).

fof(fact_dvd_Oantisym__conv,axiom,
    ! [V_x_2,V_y_2] :
      ( hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Nat_Onat),V_y_2),V_x_2))
     => ( V_x_2 = V_y_2
      <=> hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Nat_Onat),V_x_2),V_y_2)) ) ) ).

fof(fact_nat__diff__add__eq2,axiom,
    ! [V_n,V_m,V_u,V_j,V_i] :
      ( c_Groups_Ominus__class_Ominus(tc_Nat_Onat,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_i),V_u),V_m),c_Groups_Oplus__class_Oplus(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_j),V_u),V_n)) = c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_m,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_j,V_i)),V_u),V_n))
     <= c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_i,V_j) ) ).

fof(fact_right__inverse__eq,axiom,
    ! [V_a_2,V_b_2,T_a] :
      ( ( ( V_b_2 = V_a_2
        <=> c_Groups_Oone__class_Oone(T_a) = c_Rings_Oinverse__class_Odivide(T_a,V_a_2,V_b_2) )
       <= V_b_2 != c_Groups_Ozero__class_Ozero(T_a) )
     <= class_Rings_Odivision__ring(T_a) ) ).

fof(fact_pos__poly__total,axiom,
    ! [V_p,T_a] :
      ( ( c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a)) = V_p
        | c_Polynomial_Opos__poly(T_a,V_p)
        | c_Polynomial_Opos__poly(T_a,c_Groups_Ouminus__class_Ouminus(tc_Polynomial_Opoly(T_a),V_p)) )
     <= class_Rings_Olinordered__idom(T_a) ) ).

fof(fact_zminus__zadd__distrib,axiom,
    ! [V_w,V_z] : c_Groups_Oplus__class_Oplus(tc_Int_Oint,c_Groups_Ouminus__class_Ouminus(tc_Int_Oint,V_z),c_Groups_Ouminus__class_Ouminus(tc_Int_Oint,V_w)) = c_Groups_Ouminus__class_Ouminus(tc_Int_Oint,c_Groups_Oplus__class_Oplus(tc_Int_Oint,V_z,V_w)) ).

fof(fact_zero__le__double__add__iff__zero__le__single__add,axiom,
    ! [V_a_2,T_a] :
      ( ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),c_Groups_Oplus__class_Oplus(T_a,V_a_2,V_a_2))
      <=> c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_a_2) )
     <= class_Groups_Olinordered__ab__group__add(T_a) ) ).

fof(arity_Complex__Ocomplex__RealVector_Oreal__normed__field,axiom,
    class_RealVector_Oreal__normed__field(tc_Complex_Ocomplex) ).

fof(fact_divide__neg__pos,axiom,
    ! [V_y,V_x,T_a] :
      ( class_Fields_Olinordered__field(T_a)
     => ( c_Orderings_Oord__class_Oless(T_a,V_x,c_Groups_Ozero__class_Ozero(T_a))
       => ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_y)
         => c_Orderings_Oord__class_Oless(T_a,c_Rings_Oinverse__class_Odivide(T_a,V_x,V_y),c_Groups_Ozero__class_Ozero(T_a)) ) ) ) ).

fof(fact_nat__add__commute,axiom,
    ! [V_n,V_m] : c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_m,V_n) = c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_n,V_m) ).

fof(fact_double__add__less__zero__iff__single__add__less__zero,axiom,
    ! [V_a_2,T_a] :
      ( class_Groups_Olinordered__ab__group__add(T_a)
     => ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Oplus__class_Oplus(T_a,V_a_2,V_a_2),c_Groups_Ozero__class_Ozero(T_a))
      <=> c_Orderings_Oord__class_Oless(T_a,V_a_2,c_Groups_Ozero__class_Ozero(T_a)) ) ) ).

fof(arity_Complex__Ocomplex__Rings_Oring__no__zero__divisors,axiom,
    class_Rings_Oring__no__zero__divisors(tc_Complex_Ocomplex) ).

fof(fact_less__add__Suc2,axiom,
    ! [V_m,V_i] : c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_i,c_Nat_OSuc(c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_m,V_i))) ).

fof(fact_diff__less__mono2,axiom,
    ! [V_l,V_n,V_m] :
      ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_m,V_n)
     => ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_l,V_n),c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_l,V_m))
       <= c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_m,V_l) ) ) ).

fof(fact_order__2,axiom,
    ! [V_a,V_p,T_a] :
      ( ( V_p != c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a))
       => ~ hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Polynomial_Opoly(T_a)),hAPP(hAPP(c_Power_Opower__class_Opower(tc_Polynomial_Opoly(T_a)),c_Polynomial_OpCons(T_a,c_Groups_Ouminus__class_Ouminus(T_a,V_a),c_Polynomial_OpCons(T_a,c_Groups_Oone__class_Oone(T_a),c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a))))),c_Nat_OSuc(c_Polynomial_Oorder(T_a,V_a,V_p)))),V_p)) )
     <= class_Rings_Oidom(T_a) ) ).

fof(fact_one__reorient,axiom,
    ! [V_x_2,T_a] :
      ( ( V_x_2 = c_Groups_Oone__class_Oone(T_a)
      <=> c_Groups_Oone__class_Oone(T_a) = V_x_2 )
     <= class_Groups_Oone(T_a) ) ).

fof(fact_comm__semiring__1__class_Onormalizing__semiring__rules_I11_J,axiom,
    ! [V_a,T_a] :
      ( hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Groups_Oone__class_Oone(T_a)),V_a) = V_a
     <= class_Rings_Ocomm__semiring__1(T_a) ) ).

fof(fact_divide__add__eq__iff,axiom,
    ! [V_y,V_x,V_z,T_a] :
      ( class_Fields_Ofield(T_a)
     => ( c_Rings_Oinverse__class_Odivide(T_a,c_Groups_Oplus__class_Oplus(T_a,V_x,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_z),V_y)),V_z) = c_Groups_Oplus__class_Oplus(T_a,c_Rings_Oinverse__class_Odivide(T_a,V_x,V_z),V_y)
       <= c_Groups_Ozero__class_Ozero(T_a) != V_z ) ) ).

fof(fact_dvd__power__same,axiom,
    ! [V_n,V_y,V_x,T_a] :
      ( class_Rings_Ocomm__semiring__1(T_a)
     => ( hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(T_a),V_x),V_y))
       => hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(T_a),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_x),V_n)),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_y),V_n))) ) ) ).

fof(fact_termination__basic__simps_I4_J,axiom,
    ! [V_y,V_z,V_x] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_x,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_y,V_z))
     <= c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_x,V_z) ) ).

fof(fact_smult__minus__right,axiom,
    ! [V_p,V_a,T_a] :
      ( class_Rings_Ocomm__ring(T_a)
     => c_Polynomial_Osmult(T_a,V_a,c_Groups_Ouminus__class_Ouminus(tc_Polynomial_Opoly(T_a),V_p)) = c_Groups_Ouminus__class_Ouminus(tc_Polynomial_Opoly(T_a),c_Polynomial_Osmult(T_a,V_a,V_p)) ) ).

fof(arity_Int__Oint__Rings_Oordered__ring,axiom,
    class_Rings_Oordered__ring(tc_Int_Oint) ).

fof(fact_add__le__cancel__left,axiom,
    ! [V_b_2,V_a_2,V_c_2,T_a] :
      ( ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Oplus__class_Oplus(T_a,V_c_2,V_a_2),c_Groups_Oplus__class_Oplus(T_a,V_c_2,V_b_2))
      <=> c_Orderings_Oord__class_Oless__eq(T_a,V_a_2,V_b_2) )
     <= class_Groups_Oordered__ab__semigroup__add__imp__le(T_a) ) ).

fof(fact_mult__left__mono__neg,axiom,
    ! [V_c,V_a,V_b,T_a] :
      ( class_Rings_Oordered__ring(T_a)
     => ( c_Orderings_Oord__class_Oless__eq(T_a,V_b,V_a)
       => ( c_Orderings_Oord__class_Oless__eq(T_a,V_c,c_Groups_Ozero__class_Ozero(T_a))
         => c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_c),V_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_c),V_b)) ) ) ) ).

fof(fact_combine__common__factor,axiom,
    ! [V_c,V_b,V_e,V_a,T_a] :
      ( class_Rings_Osemiring(T_a)
     => c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_e),c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b),V_e),V_c)) = c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Groups_Oplus__class_Oplus(T_a,V_a,V_b)),V_e),V_c) ) ).

fof(fact_less__imp__neq,axiom,
    ! [V_y,V_x,T_a] :
      ( class_Orderings_Oorder(T_a)
     => ( c_Orderings_Oord__class_Oless(T_a,V_x,V_y)
       => V_x != V_y ) ) ).

fof(fact_diff__add__inverse,axiom,
    ! [V_m,V_n] : c_Groups_Ominus__class_Ominus(tc_Nat_Onat,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_n,V_m),V_n) = V_m ).

fof(arity_Nat__Onat__Groups_Oordered__comm__monoid__add,axiom,
    class_Groups_Oordered__comm__monoid__add(tc_Nat_Onat) ).

fof(fact_pdivmod__rel__0__iff,axiom,
    ! [V_r_2,V_qa_2,V_y_2,T_a] :
      ( ( ( c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a)) = V_qa_2
          & V_r_2 = c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a)) )
      <=> c_Polynomial_Opdivmod__rel(T_a,c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a)),V_y_2,V_qa_2,V_r_2) )
     <= class_Fields_Ofield(T_a) ) ).

fof(arity_Nat__Onat__Groups_Ocancel__semigroup__add,axiom,
    class_Groups_Ocancel__semigroup__add(tc_Nat_Onat) ).

fof(fact_minus__le__self__iff,axiom,
    ! [V_a_2,T_a] :
      ( class_Groups_Olinordered__ab__group__add(T_a)
     => ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_a_2)
      <=> c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ouminus__class_Ouminus(T_a,V_a_2),V_a_2) ) ) ).

fof(fact_le__minus__self__iff,axiom,
    ! [V_a_2,T_a] :
      ( class_Groups_Olinordered__ab__group__add(T_a)
     => ( c_Orderings_Oord__class_Oless__eq(T_a,V_a_2,c_Groups_Ouminus__class_Ouminus(T_a,V_a_2))
      <=> c_Orderings_Oord__class_Oless__eq(T_a,V_a_2,c_Groups_Ozero__class_Ozero(T_a)) ) ) ).

fof(fact_dvd_Oeq__iff,axiom,
    ! [V_y_2,V_x_2] :
      ( ( hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Nat_Onat),V_x_2),V_y_2))
        & hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Nat_Onat),V_y_2),V_x_2)) )
    <=> V_x_2 = V_y_2 ) ).

fof(fact_zle__antisym,axiom,
    ! [V_w,V_z] :
      ( ( V_w = V_z
       <= c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,V_w,V_z) )
     <= c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,V_z,V_w) ) ).

fof(fact_minus__pCons,axiom,
    ! [V_p,V_a,T_a] :
      ( c_Groups_Ouminus__class_Ouminus(tc_Polynomial_Opoly(T_a),c_Polynomial_OpCons(T_a,V_a,V_p)) = c_Polynomial_OpCons(T_a,c_Groups_Ouminus__class_Ouminus(T_a,V_a),c_Groups_Ouminus__class_Ouminus(tc_Polynomial_Opoly(T_a),V_p))
     <= class_Groups_Oab__group__add(T_a) ) ).

fof(arity_Nat__Onat__Orderings_Opreorder,axiom,
    class_Orderings_Opreorder(tc_Nat_Onat) ).

fof(fact_order__root,axiom,
    ! [V_a_2,V_pa_2,T_a] :
      ( class_Rings_Oidom(T_a)
     => ( ( c_Polynomial_Oorder(T_a,V_a_2,V_pa_2) != c_Groups_Ozero__class_Ozero(tc_Nat_Onat)
          | V_pa_2 = c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a)) )
      <=> c_Groups_Ozero__class_Ozero(T_a) = hAPP(c_Polynomial_Opoly(T_a,V_pa_2),V_a_2) ) ) ).

fof(fact_mult_Ozero__right,axiom,
    ! [V_a,T_a] :
      ( c_Groups_Ozero__class_Ozero(T_a) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),c_Groups_Ozero__class_Ozero(T_a))
     <= class_RealVector_Oreal__normed__algebra(T_a) ) ).

fof(fact_zdvd__antisym__nonneg,axiom,
    ! [V_n,V_m] :
      ( ( c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_n)
       => ( ( V_m = V_n
           <= hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Int_Oint),V_n),V_m)) )
         <= hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Int_Oint),V_m),V_n)) ) )
     <= c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_m) ) ).

fof(fact_order__less__trans,axiom,
    ! [V_z,V_y,V_x,T_a] :
      ( ( ( c_Orderings_Oord__class_Oless(T_a,V_x,V_z)
         <= c_Orderings_Oord__class_Oless(T_a,V_y,V_z) )
       <= c_Orderings_Oord__class_Oless(T_a,V_x,V_y) )
     <= class_Orderings_Opreorder(T_a) ) ).

fof(fact_comm__semiring__1__class_Onormalizing__semiring__rules_I30_J,axiom,
    ! [V_q,V_y,V_x,T_a] :
      ( hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_x),V_q)),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_y),V_q)) = hAPP(hAPP(c_Power_Opower__class_Opower(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_x),V_y)),V_q)
     <= class_Rings_Ocomm__semiring__1(T_a) ) ).

fof(fact_not__square__less__zero,axiom,
    ! [V_a,T_a] :
      ( class_Rings_Olinordered__ring(T_a)
     => ~ c_Orderings_Oord__class_Oless(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_a),c_Groups_Ozero__class_Ozero(T_a)) ) ).

fof(fact_minus__minus,axiom,
    ! [V_a,T_a] :
      ( c_Groups_Ouminus__class_Ouminus(T_a,c_Groups_Ouminus__class_Ouminus(T_a,V_a)) = V_a
     <= class_Groups_Ogroup__add(T_a) ) ).

fof(fact_degree__synthetic__div,axiom,
    ! [V_c,V_p,T_a] :
      ( c_Polynomial_Odegree(T_a,c_Polynomial_Osynthetic__div(T_a,V_p,V_c)) = c_Groups_Ominus__class_Ominus(tc_Nat_Onat,c_Polynomial_Odegree(T_a,V_p),c_Groups_Oone__class_Oone(tc_Nat_Onat))
     <= class_Rings_Ocomm__semiring__0(T_a) ) ).

fof(fact_pdivmod__rel__pCons,axiom,
    ! [V_a,V_b,V_r,V_q,V_y,V_x,T_a] :
      ( class_Fields_Ofield(T_a)
     => ( ( ( V_b = c_Rings_Oinverse__class_Odivide(T_a,hAPP(c_Polynomial_Ocoeff(T_a,c_Polynomial_OpCons(T_a,V_a,V_r)),c_Polynomial_Odegree(T_a,V_y)),hAPP(c_Polynomial_Ocoeff(T_a,V_y),c_Polynomial_Odegree(T_a,V_y)))
           => c_Polynomial_Opdivmod__rel(T_a,c_Polynomial_OpCons(T_a,V_a,V_x),V_y,c_Polynomial_OpCons(T_a,V_b,V_q),c_Groups_Ominus__class_Ominus(tc_Polynomial_Opoly(T_a),c_Polynomial_OpCons(T_a,V_a,V_r),c_Polynomial_Osmult(T_a,V_b,V_y))) )
         <= c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a)) != V_y )
       <= c_Polynomial_Opdivmod__rel(T_a,V_x,V_y,V_q,V_r) ) ) ).

fof(fact_diff__poly__code_I1_J,axiom,
    ! [V_q,T_a] :
      ( c_Groups_Ouminus__class_Ouminus(tc_Polynomial_Opoly(T_a),V_q) = c_Groups_Ominus__class_Ominus(tc_Polynomial_Opoly(T_a),c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a)),V_q)
     <= class_Groups_Oab__group__add(T_a) ) ).

fof(fact_le__add__diff,axiom,
    ! [V_m,V_n,V_k] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m,c_Groups_Ominus__class_Ominus(tc_Nat_Onat,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_n,V_m),V_k))
     <= c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_k,V_n) ) ).

fof(fact_linorder__neqE__linordered__idom,axiom,
    ! [V_y,V_x,T_a] :
      ( class_Rings_Olinordered__idom(T_a)
     => ( V_y != V_x
       => ( c_Orderings_Oord__class_Oless(T_a,V_y,V_x)
         <= ~ c_Orderings_Oord__class_Oless(T_a,V_x,V_y) ) ) ) ).

fof(arity_Complex__Ocomplex__Groups_Ocancel__ab__semigroup__add,axiom,
    class_Groups_Ocancel__ab__semigroup__add(tc_Complex_Ocomplex) ).

fof(fact_gcd__lcm__complete__lattice__nat_Obot__least,axiom,
    ! [V_x] : hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Nat_Onat),c_Groups_Oone__class_Oone(tc_Nat_Onat)),V_x)) ).

fof(fact_le__divide__eq,axiom,
    ! [V_c_2,V_b_2,V_a_2,T_a] :
      ( ( ( ( c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a_2),V_c_2),V_b_2)
           <= c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_c_2) )
          & ( ~ c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_c_2)
           => ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_a_2,c_Groups_Ozero__class_Ozero(T_a))
               <= ~ c_Orderings_Oord__class_Oless(T_a,V_c_2,c_Groups_Ozero__class_Ozero(T_a)) )
              & ( c_Orderings_Oord__class_Oless__eq(T_a,V_b_2,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a_2),V_c_2))
               <= c_Orderings_Oord__class_Oless(T_a,V_c_2,c_Groups_Ozero__class_Ozero(T_a)) ) ) ) )
      <=> c_Orderings_Oord__class_Oless__eq(T_a,V_a_2,c_Rings_Oinverse__class_Odivide(T_a,V_b_2,V_c_2)) )
     <= class_Fields_Olinordered__field__inverse__zero(T_a) ) ).

fof(arity_Complex__Ocomplex__Rings_Ocomm__semiring,axiom,
    class_Rings_Ocomm__semiring(tc_Complex_Ocomplex) ).

fof(fact_pos__divide__less__eq,axiom,
    ! [V_a_2,V_b_2,V_c_2,T_a] :
      ( class_Fields_Olinordered__field(T_a)
     => ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_c_2)
       => ( c_Orderings_Oord__class_Oless(T_a,V_b_2,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a_2),V_c_2))
        <=> c_Orderings_Oord__class_Oless(T_a,c_Rings_Oinverse__class_Odivide(T_a,V_b_2,V_c_2),V_a_2) ) ) ) ).

fof(fact_le__diff__conv2,axiom,
    ! [V_i_2,V_j_2,V_k_2] :
      ( ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_i_2,c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_j_2,V_k_2))
      <=> c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_i_2,V_k_2),V_j_2) )
     <= c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_k_2,V_j_2) ) ).

fof(fact_nat__lt__two__imp__zero__or__one,axiom,
    ! [V_x] :
      ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_x,c_Nat_OSuc(c_Nat_OSuc(c_Groups_Ozero__class_Ozero(tc_Nat_Onat))))
     => ( V_x = c_Groups_Ozero__class_Ozero(tc_Nat_Onat)
        | c_Nat_OSuc(c_Groups_Ozero__class_Ozero(tc_Nat_Onat)) = V_x ) ) ).

fof(fact_comm__semiring__1__class_Onormalizing__semiring__rules_I10_J,axiom,
    ! [V_a,T_a] :
      ( class_Rings_Ocomm__semiring__1(T_a)
     => hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),c_Groups_Ozero__class_Ozero(T_a)) = c_Groups_Ozero__class_Ozero(T_a) ) ).

fof(fact_power__strict__increasing,axiom,
    ! [V_a,V_N,V_n,T_a] :
      ( ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_n,V_N)
       => ( c_Orderings_Oord__class_Oless(T_a,hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_n),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_N))
         <= c_Orderings_Oord__class_Oless(T_a,c_Groups_Oone__class_Oone(T_a),V_a) ) )
     <= class_Rings_Olinordered__semidom(T_a) ) ).

fof(fact_add__eq__self__zero,axiom,
    ! [V_n,V_m] :
      ( c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_m,V_n) = V_m
     => V_n = c_Groups_Ozero__class_Ozero(tc_Nat_Onat) ) ).

fof(fact_comm__semiring__1__class_Onormalizing__semiring__rules_I16_J,axiom,
    ! [V_rx,V_ly,V_lx,T_a] :
      ( hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_lx),V_rx)),V_ly) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_lx),V_ly)),V_rx)
     <= class_Rings_Ocomm__semiring__1(T_a) ) ).

fof(fact_lessI,axiom,
    ! [V_n] : c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_n,c_Nat_OSuc(V_n)) ).

fof(fact_neg__less__iff__less,axiom,
    ! [V_a_2,V_b_2,T_a] :
      ( class_Groups_Oordered__ab__group__add(T_a)
     => ( c_Orderings_Oord__class_Oless(T_a,V_a_2,V_b_2)
      <=> c_Orderings_Oord__class_Oless(T_a,c_Groups_Ouminus__class_Ouminus(T_a,V_b_2),c_Groups_Ouminus__class_Ouminus(T_a,V_a_2)) ) ) ).

fof(fact_diff__divide__eq__iff,axiom,
    ! [V_y,V_x,V_z,T_a] :
      ( class_Fields_Ofield(T_a)
     => ( c_Rings_Oinverse__class_Odivide(T_a,c_Groups_Ominus__class_Ominus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_z),V_x),V_y),V_z) = c_Groups_Ominus__class_Ominus(T_a,V_x,c_Rings_Oinverse__class_Odivide(T_a,V_y,V_z))
       <= c_Groups_Ozero__class_Ozero(T_a) != V_z ) ) ).

fof(fact_pdivmod__rel__smult__left,axiom,
    ! [V_a,V_r,V_q,V_y,V_x,T_a] :
      ( class_Fields_Ofield(T_a)
     => ( c_Polynomial_Opdivmod__rel(T_a,V_x,V_y,V_q,V_r)
       => c_Polynomial_Opdivmod__rel(T_a,c_Polynomial_Osmult(T_a,V_a,V_x),V_y,c_Polynomial_Osmult(T_a,V_a,V_q),c_Polynomial_Osmult(T_a,V_a,V_r)) ) ) ).

fof(fact_degree__pCons__0,axiom,
    ! [V_a,T_a] :
      ( class_Groups_Ozero(T_a)
     => c_Polynomial_Odegree(T_a,c_Polynomial_OpCons(T_a,V_a,c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a)))) = c_Groups_Ozero__class_Ozero(tc_Nat_Onat) ) ).

fof(fact_poly__pCons,axiom,
    ! [V_x,V_p,V_a,T_a] :
      ( c_Groups_Oplus__class_Oplus(T_a,V_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_x),hAPP(c_Polynomial_Opoly(T_a,V_p),V_x))) = hAPP(c_Polynomial_Opoly(T_a,c_Polynomial_OpCons(T_a,V_a,V_p)),V_x)
     <= class_Rings_Ocomm__semiring__0(T_a) ) ).

fof(fact_le__less__Suc__eq,axiom,
    ! [V_na_2,V_m_2] :
      ( ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_na_2,c_Nat_OSuc(V_m_2))
      <=> V_m_2 = V_na_2 )
     <= c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m_2,V_na_2) ) ).

fof(fact_order__eq__refl,axiom,
    ! [V_y,V_x,T_a] :
      ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_x,V_y)
       <= V_y = V_x )
     <= class_Orderings_Opreorder(T_a) ) ).

fof(fact_nat__diff__split,axiom,
    ! [V_b_2,V_a_2,V_P_2] :
      ( hBOOL(hAPP(V_P_2,c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_a_2,V_b_2)))
    <=> ( ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_a_2,V_b_2)
         => hBOOL(hAPP(V_P_2,c_Groups_Ozero__class_Ozero(tc_Nat_Onat))) )
        & ! [B_d] :
            ( V_a_2 = c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_b_2,B_d)
           => hBOOL(hAPP(V_P_2,B_d)) ) ) ) ).

fof(fact_neg__less__divide__eq,axiom,
    ! [V_b_2,V_a_2,V_c_2,T_a] :
      ( ( ( c_Orderings_Oord__class_Oless(T_a,V_b_2,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a_2),V_c_2))
        <=> c_Orderings_Oord__class_Oless(T_a,V_a_2,c_Rings_Oinverse__class_Odivide(T_a,V_b_2,V_c_2)) )
       <= c_Orderings_Oord__class_Oless(T_a,V_c_2,c_Groups_Ozero__class_Ozero(T_a)) )
     <= class_Fields_Olinordered__field(T_a) ) ).

fof(fact_xt1_I3_J,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_c,V_a)
         <= c_Orderings_Oord__class_Oless__eq(T_a,V_c,V_b) )
       <= V_b = V_a )
     <= class_Orderings_Oorder(T_a) ) ).

fof(arity_Complex__Ocomplex__Rings_Oring,axiom,
    class_Rings_Oring(tc_Complex_Ocomplex) ).

fof(fact_dvd__mult__cancel2,axiom,
    ! [V_na_2,V_m_2] :
      ( ( hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Nat_Onat),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_na_2),V_m_2)),V_m_2))
      <=> c_Groups_Oone__class_Oone(tc_Nat_Onat) = V_na_2 )
     <= c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_m_2) ) ).

fof(fact_order__less__not__sym,axiom,
    ! [V_y,V_x,T_a] :
      ( ( c_Orderings_Oord__class_Oless(T_a,V_x,V_y)
       => ~ c_Orderings_Oord__class_Oless(T_a,V_y,V_x) )
     <= class_Orderings_Opreorder(T_a) ) ).

fof(fact_Suc__diff__diff,axiom,
    ! [V_k,V_n,V_m] : c_Groups_Ominus__class_Ominus(tc_Nat_Onat,c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_m,V_n),V_k) = c_Groups_Ominus__class_Ominus(tc_Nat_Onat,c_Groups_Ominus__class_Ominus(tc_Nat_Onat,c_Nat_OSuc(V_m),V_n),c_Nat_OSuc(V_k)) ).

fof(fact_not__one__le__zero,axiom,
    ! [T_a] :
      ( ~ c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Oone__class_Oone(T_a),c_Groups_Ozero__class_Ozero(T_a))
     <= class_Rings_Olinordered__semidom(T_a) ) ).

fof(fact_diff__add__0,axiom,
    ! [V_m,V_n] : c_Groups_Ozero__class_Ozero(tc_Nat_Onat) = c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_n,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_n,V_m)) ).

fof(fact_dvd_Oless__le,axiom,
    ! [V_y_2,V_x_2] :
      ( ( V_y_2 != V_x_2
        & hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Nat_Onat),V_x_2),V_y_2)) )
    <=> ( ~ hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Nat_Onat),V_y_2),V_x_2))
        & hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Nat_Onat),V_x_2),V_y_2)) ) ) ).

fof(fact_double__add__le__zero__iff__single__add__le__zero,axiom,
    ! [V_a_2,T_a] :
      ( class_Groups_Olinordered__ab__group__add(T_a)
     => ( c_Orderings_Oord__class_Oless__eq(T_a,V_a_2,c_Groups_Ozero__class_Ozero(T_a))
      <=> c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Oplus__class_Oplus(T_a,V_a_2,V_a_2),c_Groups_Ozero__class_Ozero(T_a)) ) ) ).

fof(fact_zmult__zless__mono2,axiom,
    ! [V_k,V_j,V_i] :
      ( c_Orderings_Oord__class_Oless(tc_Int_Oint,V_i,V_j)
     => ( c_Orderings_Oord__class_Oless(tc_Int_Oint,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_k),V_i),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_k),V_j))
       <= c_Orderings_Oord__class_Oless(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_k) ) ) ).

fof(fact_mult__left__idem,axiom,
    ! [V_b,V_a,T_a] :
      ( class_Lattices_Oab__semigroup__idem__mult(T_a)
     => hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b)) ) ).

fof(fact_le__imp__power__dvd,axiom,
    ! [V_a,V_n,V_m,T_a] :
      ( class_Rings_Ocomm__semiring__1(T_a)
     => ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m,V_n)
       => hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(T_a),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_m)),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_n))) ) ) ).

fof(fact_zero__le__mult__iff,axiom,
    ! [V_b_2,V_a_2,T_a] :
      ( ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a_2),V_b_2))
      <=> ( ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_a_2)
            & c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_b_2) )
          | ( c_Orderings_Oord__class_Oless__eq(T_a,V_a_2,c_Groups_Ozero__class_Ozero(T_a))
            & c_Orderings_Oord__class_Oless__eq(T_a,V_b_2,c_Groups_Ozero__class_Ozero(T_a)) ) ) )
     <= class_Rings_Olinordered__ring__strict(T_a) ) ).

fof(arity_Polynomial__Opoly__Groups_Oab__semigroup__add,axiom,
    ! [T_1] :
      ( class_Groups_Oab__semigroup__add(tc_Polynomial_Opoly(T_1))
     <= class_Groups_Ocomm__monoid__add(T_1) ) ).

fof(fact_Suc__diff__1,axiom,
    ! [V_n] :
      ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_n)
     => V_n = c_Nat_OSuc(c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_n,c_Groups_Oone__class_Oone(tc_Nat_Onat))) ) ).

fof(fact_mult__eq__self__implies__10,axiom,
    ! [V_n,V_m] :
      ( hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_m),V_n) = V_m
     => ( V_n = c_Groups_Oone__class_Oone(tc_Nat_Onat)
        | c_Groups_Ozero__class_Ozero(tc_Nat_Onat) = V_m ) ) ).

fof(fact_nat__less__add__iff1,axiom,
    ! [V_na_2,V_m_2,V_u_2,V_i_2,V_j_2] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_j_2,V_i_2)
     => ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_i_2,V_j_2)),V_u_2),V_m_2),V_na_2)
      <=> c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_i_2),V_u_2),V_m_2),c_Groups_Oplus__class_Oplus(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_j_2),V_u_2),V_na_2)) ) ) ).

fof(fact_diff__diff__right,axiom,
    ! [V_i,V_j,V_k] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_k,V_j)
     => c_Groups_Ominus__class_Ominus(tc_Nat_Onat,c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_i,V_k),V_j) = c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_i,c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_j,V_k)) ) ).

fof(fact_power__diff,axiom,
    ! [V_m,V_n,V_a,T_a] :
      ( ( ( hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_m,V_n)) = c_Rings_Oinverse__class_Odivide(T_a,hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_m),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_n))
         <= c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_n,V_m) )
       <= c_Groups_Ozero__class_Ozero(T_a) != V_a )
     <= class_Fields_Ofield(T_a) ) ).

fof(fact_power__Suc__less,axiom,
    ! [V_n,V_a,T_a] :
      ( ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_a)
       => ( c_Orderings_Oord__class_Oless(T_a,V_a,c_Groups_Oone__class_Oone(T_a))
         => c_Orderings_Oord__class_Oless(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_n)),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_n)) ) )
     <= class_Rings_Olinordered__semidom(T_a) ) ).

fof(fact_comm__semiring__1__class_Onormalizing__semiring__rules_I25_J,axiom,
    ! [V_d,V_c,V_a,T_a] :
      ( class_Rings_Ocomm__semiring__1(T_a)
     => c_Groups_Oplus__class_Oplus(T_a,c_Groups_Oplus__class_Oplus(T_a,V_a,V_c),V_d) = c_Groups_Oplus__class_Oplus(T_a,V_a,c_Groups_Oplus__class_Oplus(T_a,V_c,V_d)) ) ).

fof(fact_nonzero__minus__divide__divide,axiom,
    ! [V_a,V_b,T_a] :
      ( ( c_Groups_Ozero__class_Ozero(T_a) != V_b
       => c_Rings_Oinverse__class_Odivide(T_a,c_Groups_Ouminus__class_Ouminus(T_a,V_a),c_Groups_Ouminus__class_Ouminus(T_a,V_b)) = c_Rings_Oinverse__class_Odivide(T_a,V_a,V_b) )
     <= class_Rings_Odivision__ring(T_a) ) ).

fof(arity_Int__Oint__Rings_Olinordered__semiring__strict,axiom,
    class_Rings_Olinordered__semiring__strict(tc_Int_Oint) ).

fof(fact_mult__imp__le__div__pos,axiom,
    ! [V_x,V_z,V_y,T_a] :
      ( ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_y)
       => ( c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_z),V_y),V_x)
         => c_Orderings_Oord__class_Oless__eq(T_a,V_z,c_Rings_Oinverse__class_Odivide(T_a,V_x,V_y)) ) )
     <= class_Fields_Olinordered__field(T_a) ) ).

fof(arity_Int__Oint__Groups_Ocancel__ab__semigroup__add,axiom,
    class_Groups_Ocancel__ab__semigroup__add(tc_Int_Oint) ).

fof(fact_comm__semiring__1__class_Onormalizing__semiring__rules_I12_J,axiom,
    ! [V_a,T_a] :
      ( V_a = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),c_Groups_Oone__class_Oone(T_a))
     <= class_Rings_Ocomm__semiring__1(T_a) ) ).

fof(fact_mult__poly__0__left,axiom,
    ! [V_q,T_a] :
      ( class_Rings_Ocomm__semiring__0(T_a)
     => c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a)) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Polynomial_Opoly(T_a)),c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a))),V_q) ) ).

fof(fact_xt1_I5_J,axiom,
    ! [V_x,V_y,T_a] :
      ( ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_x,V_y)
         => V_x = V_y )
       <= c_Orderings_Oord__class_Oless__eq(T_a,V_y,V_x) )
     <= class_Orderings_Oorder(T_a) ) ).

fof(fact_power__less__imp__less__exp,axiom,
    ! [V_n,V_m,V_a,T_a] :
      ( class_Rings_Olinordered__semidom(T_a)
     => ( ( c_Orderings_Oord__class_Oless(T_a,hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_m),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_n))
         => c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_m,V_n) )
       <= c_Orderings_Oord__class_Oless(T_a,c_Groups_Oone__class_Oone(T_a),V_a) ) ) ).

fof(fact_zle__linear,axiom,
    ! [V_w,V_z] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,V_z,V_w)
      | c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,V_w,V_z) ) ).

fof(fact_pdivmod__rel__mult,axiom,
    ! [V_r_H,V_q_H,V_z,V_r,V_q,V_y,V_x,T_a] :
      ( class_Fields_Ofield(T_a)
     => ( c_Polynomial_Opdivmod__rel(T_a,V_x,V_y,V_q,V_r)
       => ( c_Polynomial_Opdivmod__rel(T_a,V_x,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Polynomial_Opoly(T_a)),V_y),V_z),V_q_H,c_Groups_Oplus__class_Oplus(tc_Polynomial_Opoly(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Polynomial_Opoly(T_a)),V_y),V_r_H),V_r))
         <= c_Polynomial_Opdivmod__rel(T_a,V_q,V_z,V_q_H,V_r_H) ) ) ) ).

fof(fact_power__le__dvd,axiom,
    ! [V_m,V_b,V_n,V_a,T_a] :
      ( ( hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(T_a),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_n)),V_b))
       => ( hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(T_a),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_m)),V_b))
         <= c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m,V_n) ) )
     <= class_Rings_Ocomm__semiring__1(T_a) ) ).

fof(fact_pe,axiom,
    c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(tc_Complex_Ocomplex)) != v_p ).

fof(arity_Int__Oint__Groups_Ocomm__monoid__add,axiom,
    class_Groups_Ocomm__monoid__add(tc_Int_Oint) ).

fof(fact_square__eq__iff,axiom,
    ! [V_b_2,V_a_2,T_a] :
      ( ( ( V_b_2 = V_a_2
          | V_a_2 = c_Groups_Ouminus__class_Ouminus(T_a,V_b_2) )
      <=> hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a_2),V_a_2) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b_2),V_b_2) )
     <= class_Rings_Oidom(T_a) ) ).

fof(fact_add__le__cancel__right,axiom,
    ! [V_b_2,V_c_2,V_a_2,T_a] :
      ( class_Groups_Oordered__ab__semigroup__add__imp__le(T_a)
     => ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Oplus__class_Oplus(T_a,V_a_2,V_c_2),c_Groups_Oplus__class_Oplus(T_a,V_b_2,V_c_2))
      <=> c_Orderings_Oord__class_Oless__eq(T_a,V_a_2,V_b_2) ) ) ).

fof(fact_incr__mult__lemma,axiom,
    ! [V_k_2,V_P_2,V_d_2] :
      ( ( ! [B_x] :
            ( hBOOL(hAPP(V_P_2,B_x))
           => hBOOL(hAPP(V_P_2,c_Groups_Oplus__class_Oplus(tc_Int_Oint,B_x,V_d_2))) )
       => ( c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_k_2)
         => ! [B_x] :
              ( hBOOL(hAPP(V_P_2,B_x))
             => hBOOL(hAPP(V_P_2,c_Groups_Oplus__class_Oplus(tc_Int_Oint,B_x,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_k_2),V_d_2)))) ) ) )
     <= c_Orderings_Oord__class_Oless(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_d_2) ) ).

fof(fact_unique__quotient__lemma__neg,axiom,
    ! [V_r,V_q,V_r_H,V_q_H,V_b] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Oplus__class_Oplus(tc_Int_Oint,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_b),V_q_H),V_r_H),c_Groups_Oplus__class_Oplus(tc_Int_Oint,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_b),V_q),V_r))
     => ( c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,V_r,c_Groups_Ozero__class_Ozero(tc_Int_Oint))
       => ( ( c_Orderings_Oord__class_Oless(tc_Int_Oint,V_b,V_r_H)
           => c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,V_q,V_q_H) )
         <= c_Orderings_Oord__class_Oless(tc_Int_Oint,V_b,V_r) ) ) ) ).

fof(fact_neg__divide__le__eq,axiom,
    ! [V_a_2,V_b_2,V_c_2,T_a] :
      ( ( ( c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a_2),V_c_2),V_b_2)
        <=> c_Orderings_Oord__class_Oless__eq(T_a,c_Rings_Oinverse__class_Odivide(T_a,V_b_2,V_c_2),V_a_2) )
       <= c_Orderings_Oord__class_Oless(T_a,V_c_2,c_Groups_Ozero__class_Ozero(T_a)) )
     <= class_Fields_Olinordered__field(T_a) ) ).

fof(fact_realpow__two__diff,axiom,
    ! [V_y,V_x,T_a] :
      ( class_Rings_Ocomm__ring__1(T_a)
     => hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Groups_Ominus__class_Ominus(T_a,V_x,V_y)),c_Groups_Oplus__class_Oplus(T_a,V_x,V_y)) = c_Groups_Ominus__class_Ominus(T_a,hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_x),c_Nat_OSuc(c_Nat_OSuc(c_Groups_Ozero__class_Ozero(tc_Nat_Onat)))),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_y),c_Nat_OSuc(c_Nat_OSuc(c_Groups_Ozero__class_Ozero(tc_Nat_Onat))))) ) ).

fof(fact_divide__self,axiom,
    ! [V_a,T_a] :
      ( class_Rings_Odivision__ring(T_a)
     => ( c_Groups_Oone__class_Oone(T_a) = c_Rings_Oinverse__class_Odivide(T_a,V_a,V_a)
       <= V_a != c_Groups_Ozero__class_Ozero(T_a) ) ) ).

fof(fact_smult__0__left,axiom,
    ! [V_p,T_a] :
      ( c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a)) = c_Polynomial_Osmult(T_a,c_Groups_Ozero__class_Ozero(T_a),V_p)
     <= class_Rings_Ocomm__semiring__0(T_a) ) ).

fof(fact_mult_Oadd__right,axiom,
    ! [V_b_H,V_b,V_a,T_a] :
      ( class_RealVector_Oreal__normed__algebra(T_a)
     => hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),c_Groups_Oplus__class_Oplus(T_a,V_b,V_b_H)) = c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b_H)) ) ).

fof(fact_nat__mult__1,axiom,
    ! [V_n] : hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),c_Groups_Oone__class_Oone(tc_Nat_Onat)),V_n) = V_n ).

fof(fact_dvd__smult,axiom,
    ! [V_a,V_q,V_p,T_a] :
      ( ( hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Polynomial_Opoly(T_a)),V_p),c_Polynomial_Osmult(T_a,V_a,V_q)))
       <= hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Polynomial_Opoly(T_a)),V_p),V_q)) )
     <= class_Rings_Ocomm__semiring__1(T_a) ) ).

fof(fact_not__less__eq,axiom,
    ! [V_na_2,V_m_2] :
      ( ~ c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_m_2,V_na_2)
    <=> c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_na_2,c_Nat_OSuc(V_m_2)) ) ).

fof(fact_order__le__imp__less__or__eq,axiom,
    ! [V_y,V_x,T_a] :
      ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_x,V_y)
       => ( V_y = V_x
          | c_Orderings_Oord__class_Oless(T_a,V_x,V_y) ) )
     <= class_Orderings_Oorder(T_a) ) ).

fof(fact_nat__mult__dvd__cancel__disj,axiom,
    ! [V_na_2,V_m_2,V_k_2] :
      ( ( c_Groups_Ozero__class_Ozero(tc_Nat_Onat) = V_k_2
        | hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Nat_Onat),V_m_2),V_na_2)) )
    <=> hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Nat_Onat),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_k_2),V_m_2)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_k_2),V_na_2))) ) ).

fof(arity_Polynomial__Opoly__Groups_Ocancel__ab__semigroup__add,axiom,
    ! [T_1] :
      ( class_Groups_Ocancel__ab__semigroup__add(tc_Polynomial_Opoly(T_1))
     <= class_Groups_Ocancel__comm__monoid__add(T_1) ) ).

fof(arity_Complex__Ocomplex__Groups_Ocomm__monoid__mult,axiom,
    class_Groups_Ocomm__monoid__mult(tc_Complex_Ocomplex) ).

fof(fact_mult__right__le__imp__le,axiom,
    ! [V_b,V_c,V_a,T_a] :
      ( ( ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_c)
         => c_Orderings_Oord__class_Oless__eq(T_a,V_a,V_b) )
       <= c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_c),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b),V_c)) )
     <= class_Rings_Olinordered__semiring__strict(T_a) ) ).

fof(fact_power__add,axiom,
    ! [V_n,V_m,V_a,T_a] :
      ( hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_m)),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_n)) = hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_m,V_n))
     <= class_Groups_Omonoid__mult(T_a) ) ).

fof(fact_zless__imp__add1__zle,axiom,
    ! [V_z,V_w] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Oplus__class_Oplus(tc_Int_Oint,V_w,c_Groups_Oone__class_Oone(tc_Int_Oint)),V_z)
     <= c_Orderings_Oord__class_Oless(tc_Int_Oint,V_w,V_z) ) ).

fof(fact_add__nonneg__nonneg,axiom,
    ! [V_b,V_a,T_a] :
      ( ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_a)
       => ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_b)
         => c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),c_Groups_Oplus__class_Oplus(T_a,V_a,V_b)) ) )
     <= class_Groups_Oordered__comm__monoid__add(T_a) ) ).

fof(fact_mult__strict__left__mono,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( ( c_Orderings_Oord__class_Oless(T_a,V_a,V_b)
       => ( c_Orderings_Oord__class_Oless(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_c),V_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_c),V_b))
         <= c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_c) ) )
     <= class_Rings_Olinordered__semiring__strict(T_a) ) ).

fof(fact_Suc__mono,axiom,
    ! [V_n,V_m] :
      ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Nat_OSuc(V_m),c_Nat_OSuc(V_n))
     <= c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_m,V_n) ) ).

fof(fact_power__decreasing,axiom,
    ! [V_a,V_N,V_n,T_a] :
      ( ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_n,V_N)
       => ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_a,c_Groups_Oone__class_Oone(T_a))
           => c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_N),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_n)) )
         <= c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_a) ) )
     <= class_Rings_Olinordered__semidom(T_a) ) ).

fof(arity_Nat__Onat__Groups_Ocomm__monoid__mult,axiom,
    class_Groups_Ocomm__monoid__mult(tc_Nat_Onat) ).

fof(fact_le__diff__iff,axiom,
    ! [V_na_2,V_m_2,V_k_2] :
      ( ( ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_m_2,V_k_2),c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_na_2,V_k_2))
        <=> c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m_2,V_na_2) )
       <= c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_k_2,V_na_2) )
     <= c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_k_2,V_m_2) ) ).

fof(fact_comm__semiring__1__class_Onormalizing__semiring__rules_I3_J,axiom,
    ! [V_a,V_m,T_a] :
      ( class_Rings_Ocomm__semiring__1(T_a)
     => hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Groups_Oplus__class_Oplus(T_a,V_a,c_Groups_Oone__class_Oone(T_a))),V_m) = c_Groups_Oplus__class_Oplus(T_a,V_m,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_m)) ) ).

fof(arity_Polynomial__Opoly__Rings_Oordered__cancel__semiring,axiom,
    ! [T_1] :
      ( class_Rings_Oordered__cancel__semiring(tc_Polynomial_Opoly(T_1))
     <= class_Rings_Olinordered__idom(T_1) ) ).

fof(fact_pos__add__strict,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( ( ( c_Orderings_Oord__class_Oless(T_a,V_b,V_c)
         => c_Orderings_Oord__class_Oless(T_a,V_b,c_Groups_Oplus__class_Oplus(T_a,V_a,V_c)) )
       <= c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_a) )
     <= class_Rings_Olinordered__semidom(T_a) ) ).

fof(fact_neg__le__divide__eq,axiom,
    ! [V_b_2,V_a_2,V_c_2,T_a] :
      ( class_Fields_Olinordered__field(T_a)
     => ( c_Orderings_Oord__class_Oless(T_a,V_c_2,c_Groups_Ozero__class_Ozero(T_a))
       => ( c_Orderings_Oord__class_Oless__eq(T_a,V_b_2,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a_2),V_c_2))
        <=> c_Orderings_Oord__class_Oless__eq(T_a,V_a_2,c_Rings_Oinverse__class_Odivide(T_a,V_b_2,V_c_2)) ) ) ) ).

fof(arity_Nat__Onat__Groups_Ocancel__comm__monoid__add,axiom,
    class_Groups_Ocancel__comm__monoid__add(tc_Nat_Onat) ).

fof(fact_zdiv__mono2__lemma,axiom,
    ! [V_r_H,V_q_H,V_b_H,V_r,V_q,V_b] :
      ( c_Groups_Oplus__class_Oplus(tc_Int_Oint,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_b),V_q),V_r) = c_Groups_Oplus__class_Oplus(tc_Int_Oint,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_b_H),V_q_H),V_r_H)
     => ( c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),c_Groups_Oplus__class_Oplus(tc_Int_Oint,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_b_H),V_q_H),V_r_H))
       => ( ( ( c_Orderings_Oord__class_Oless(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_b_H)
             => ( c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,V_b_H,V_b)
               => c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,V_q,V_q_H) ) )
           <= c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_r) )
         <= c_Orderings_Oord__class_Oless(tc_Int_Oint,V_r_H,V_b_H) ) ) ) ).

fof(fact_neq0__conv,axiom,
    ! [V_na_2] :
      ( c_Groups_Ozero__class_Ozero(tc_Nat_Onat) != V_na_2
    <=> c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_na_2) ) ).

fof(fact_zdvd__reduce,axiom,
    ! [V_m_2,V_na_2,V_k_2] :
      ( hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Int_Oint),V_k_2),c_Groups_Oplus__class_Oplus(tc_Int_Oint,V_na_2,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_k_2),V_m_2))))
    <=> hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Int_Oint),V_k_2),V_na_2)) ) ).

fof(fact_neg__less__nonneg,axiom,
    ! [V_a_2,T_a] :
      ( class_Groups_Olinordered__ab__group__add(T_a)
     => ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Ouminus__class_Ouminus(T_a,V_a_2),V_a_2)
      <=> c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_a_2) ) ) ).

fof(fact_offset__poly__pCons,axiom,
    ! [V_h,V_p,V_a,T_a] :
      ( c_Groups_Oplus__class_Oplus(tc_Polynomial_Opoly(T_a),c_Polynomial_Osmult(T_a,V_h,c_Fundamental__Theorem__Algebra__Mirabelle_Ooffset__poly(T_a,V_p,V_h)),c_Polynomial_OpCons(T_a,V_a,c_Fundamental__Theorem__Algebra__Mirabelle_Ooffset__poly(T_a,V_p,V_h))) = c_Fundamental__Theorem__Algebra__Mirabelle_Ooffset__poly(T_a,c_Polynomial_OpCons(T_a,V_a,V_p),V_h)
     <= class_Rings_Ocomm__semiring__0(T_a) ) ).

fof(fact_zadd__zmult__distrib,axiom,
    ! [V_w,V_z2,V_z1] : c_Groups_Oplus__class_Oplus(tc_Int_Oint,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_z1),V_w),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_z2),V_w)) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),c_Groups_Oplus__class_Oplus(tc_Int_Oint,V_z1,V_z2)),V_w) ).

fof(fact_dvd_Oless__asym_H,axiom,
    ! [V_b,V_a] :
      ( ~ ( hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Nat_Onat),V_b),V_a))
          & ~ hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Nat_Onat),V_a),V_b)) )
     <= ( ~ hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Nat_Onat),V_b),V_a))
        & hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Nat_Onat),V_a),V_b)) ) ) ).

fof(fact_zero__le__power,axiom,
    ! [V_n,V_a,T_a] :
      ( class_Rings_Olinordered__semidom(T_a)
     => ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_a)
       => c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_n)) ) ) ).

fof(fact_dvdI,axiom,
    ! [V_k,V_b,V_a,T_a] :
      ( ( hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(T_a),V_b),V_a))
       <= V_a = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b),V_k) )
     <= class_Rings_Odvd(T_a) ) ).

fof(fact_minus__unique,axiom,
    ! [V_b,V_a,T_a] :
      ( class_Groups_Ogroup__add(T_a)
     => ( c_Groups_Ouminus__class_Ouminus(T_a,V_a) = V_b
       <= c_Groups_Ozero__class_Ozero(T_a) = c_Groups_Oplus__class_Oplus(T_a,V_a,V_b) ) ) ).

fof(fact_zero__le__square,axiom,
    ! [V_a,T_a] :
      ( class_Rings_Olinordered__ring(T_a)
     => c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_a)) ) ).

fof(arity_Polynomial__Opoly__Rings_Ocomm__semiring__1,axiom,
    ! [T_1] :
      ( class_Rings_Ocomm__semiring__1(T_1)
     => class_Rings_Ocomm__semiring__1(tc_Polynomial_Opoly(T_1)) ) ).

fof(fact_Suc__n__not__n,axiom,
    ! [V_n] : V_n != c_Nat_OSuc(V_n) ).

fof(arity_Polynomial__Opoly__Groups_Oone,axiom,
    ! [T_1] :
      ( class_Rings_Ocomm__semiring__1(T_1)
     => class_Groups_Oone(tc_Polynomial_Opoly(T_1)) ) ).

fof(fact_one__poly__def,axiom,
    ! [T_a] :
      ( c_Polynomial_OpCons(T_a,c_Groups_Oone__class_Oone(T_a),c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a))) = c_Groups_Oone__class_Oone(tc_Polynomial_Opoly(T_a))
     <= class_Rings_Ocomm__semiring__1(T_a) ) ).

fof(fact_power__power__power,axiom,
    ! [T_a] :
      ( class_Power_Opower(T_a)
     => c_Power_Opower__class_Opower(T_a) = c_Power_Opower_Opower(T_a,c_Groups_Oone__class_Oone(T_a),c_Groups_Otimes__class_Otimes(T_a)) ) ).

fof(fact_smult__pCons,axiom,
    ! [V_p,V_b,V_a,T_a] :
      ( class_Rings_Ocomm__semiring__0(T_a)
     => c_Polynomial_Osmult(T_a,V_a,c_Polynomial_OpCons(T_a,V_b,V_p)) = c_Polynomial_OpCons(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b),c_Polynomial_Osmult(T_a,V_a,V_p)) ) ).

fof(fact_smult__dvd,axiom,
    ! [V_a,V_q,V_p,T_a] :
      ( ( ( hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Polynomial_Opoly(T_a)),c_Polynomial_Osmult(T_a,V_a,V_p)),V_q))
         <= c_Groups_Ozero__class_Ozero(T_a) != V_a )
       <= hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Polynomial_Opoly(T_a)),V_p),V_q)) )
     <= class_Fields_Ofield(T_a) ) ).

fof(fact_mult__neg__pos,axiom,
    ! [V_b,V_a,T_a] :
      ( class_Rings_Olinordered__semiring__strict(T_a)
     => ( ( c_Orderings_Oord__class_Oless(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b),c_Groups_Ozero__class_Ozero(T_a))
         <= c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_b) )
       <= c_Orderings_Oord__class_Oless(T_a,V_a,c_Groups_Ozero__class_Ozero(T_a)) ) ) ).

fof(fact_double__eq__0__iff,axiom,
    ! [V_a_2,T_a] :
      ( ( V_a_2 = c_Groups_Ozero__class_Ozero(T_a)
      <=> c_Groups_Oplus__class_Oplus(T_a,V_a_2,V_a_2) = c_Groups_Ozero__class_Ozero(T_a) )
     <= class_Groups_Olinordered__ab__group__add(T_a) ) ).

fof(fact_poly__rec__pCons,axiom,
    ! [V_pa_2,V_a_2,T_a,V_z_2,V_f_2,T_b] :
      ( class_Groups_Ozero(T_b)
     => ( hAPP(hAPP(hAPP(V_f_2,V_a_2),V_pa_2),c_Polynomial_Opoly__rec(T_a,T_b,V_z_2,V_f_2,V_pa_2)) = c_Polynomial_Opoly__rec(T_a,T_b,V_z_2,V_f_2,c_Polynomial_OpCons(T_b,V_a_2,V_pa_2))
       <= V_z_2 = hAPP(hAPP(hAPP(V_f_2,c_Groups_Ozero__class_Ozero(T_b)),c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_b))),V_z_2) ) ) ).

fof(fact_mult__imp__div__pos__less,axiom,
    ! [V_z,V_x,V_y,T_a] :
      ( ( ( c_Orderings_Oord__class_Oless(T_a,V_x,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_z),V_y))
         => c_Orderings_Oord__class_Oless(T_a,c_Rings_Oinverse__class_Odivide(T_a,V_x,V_y),V_z) )
       <= c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_y) )
     <= class_Fields_Olinordered__field(T_a) ) ).

fof(fact_mult__left_Ominus,axiom,
    ! [V_y,V_x,T_a] :
      ( class_RealVector_Oreal__normed__algebra(T_a)
     => c_Groups_Ouminus__class_Ouminus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_x),V_y)) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Groups_Ouminus__class_Ouminus(T_a,V_x)),V_y) ) ).

fof(arity_Complex__Ocomplex__Rings_Ozero__neq__one,axiom,
    class_Rings_Ozero__neq__one(tc_Complex_Ocomplex) ).

fof(fact_mult__le__mono1,axiom,
    ! [V_k,V_j,V_i] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_i),V_k),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_j),V_k))
     <= c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_i,V_j) ) ).

fof(fact_Suc__not__Zero,axiom,
    ! [V_m] : c_Groups_Ozero__class_Ozero(tc_Nat_Onat) != c_Nat_OSuc(V_m) ).

fof(arity_Polynomial__Opoly__Rings_Oring__1,axiom,
    ! [T_1] :
      ( class_Rings_Oring__1(tc_Polynomial_Opoly(T_1))
     <= class_Rings_Ocomm__ring__1(T_1) ) ).

fof(fact_poly__replicate__append,axiom,
    ! [V_x,V_p,V_n,T_a] :
      ( hAPP(c_Polynomial_Opoly(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Polynomial_Opoly(T_a)),c_Polynomial_Omonom(T_a,c_Groups_Oone__class_Oone(T_a),V_n)),V_p)),V_x) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_x),V_n)),hAPP(c_Polynomial_Opoly(T_a,V_p),V_x))
     <= class_Rings_Ocomm__ring__1(T_a) ) ).

fof(fact_minus__divide__divide,axiom,
    ! [V_b,V_a,T_a] :
      ( c_Rings_Oinverse__class_Odivide(T_a,c_Groups_Ouminus__class_Ouminus(T_a,V_a),c_Groups_Ouminus__class_Ouminus(T_a,V_b)) = c_Rings_Oinverse__class_Odivide(T_a,V_a,V_b)
     <= class_Fields_Ofield__inverse__zero(T_a) ) ).

fof(arity_Complex__Ocomplex__Groups_Ogroup__add,axiom,
    class_Groups_Ogroup__add(tc_Complex_Ocomplex) ).

fof(fact_degree__mult__le,axiom,
    ! [V_q,V_p,T_a] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,c_Polynomial_Odegree(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Polynomial_Opoly(T_a)),V_p),V_q)),c_Groups_Oplus__class_Oplus(tc_Nat_Onat,c_Polynomial_Odegree(T_a,V_p),c_Polynomial_Odegree(T_a,V_q)))
     <= class_Rings_Ocomm__semiring__0(T_a) ) ).

fof(fact_mult__diff__mult,axiom,
    ! [V_b,V_a,V_y,V_x,T_a] :
      ( class_Rings_Oring(T_a)
     => c_Groups_Ominus__class_Ominus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_x),V_y),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b)) = c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_x),c_Groups_Ominus__class_Ominus(T_a,V_y,V_b)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),c_Groups_Ominus__class_Ominus(T_a,V_x,V_a)),V_b)) ) ).

fof(fact_add__left__cancel,axiom,
    ! [V_c_2,V_b_2,V_a_2,T_a] :
      ( ( V_c_2 = V_b_2
      <=> c_Groups_Oplus__class_Oplus(T_a,V_a_2,V_b_2) = c_Groups_Oplus__class_Oplus(T_a,V_a_2,V_c_2) )
     <= class_Groups_Ocancel__semigroup__add(T_a) ) ).

fof(fact_diff__less__mono,axiom,
    ! [V_c,V_b,V_a] :
      ( ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_a,V_c),c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_b,V_c))
       <= c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_c,V_a) )
     <= c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_a,V_b) ) ).

fof(fact_poly__rec_Osimps,axiom,
    ! [V_pa_2,V_a_2,V_f_2,V_z_2,T_a,T_b] :
      ( c_Polynomial_Opoly__rec(T_a,T_b,V_z_2,V_f_2,c_Polynomial_OpCons(T_b,V_a_2,V_pa_2)) = hAPP(hAPP(hAPP(V_f_2,V_a_2),V_pa_2),c_If(T_a,c_fequal(V_pa_2,c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_b))),V_z_2,c_Polynomial_Opoly__rec(T_a,T_b,V_z_2,V_f_2,V_pa_2)))
     <= class_Groups_Ozero(T_b) ) ).

fof(fact_mult__nonneg__nonneg,axiom,
    ! [V_b,V_a,T_a] :
      ( ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_a)
       => ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b))
         <= c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_b) ) )
     <= class_Rings_Oordered__cancel__semiring(T_a) ) ).

fof(fact_mult__less__cancel__right__disj,axiom,
    ! [V_b_2,V_c_2,V_a_2,T_a] :
      ( ( c_Orderings_Oord__class_Oless(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a_2),V_c_2),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_b_2),V_c_2))
      <=> ( ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_c_2)
            & c_Orderings_Oord__class_Oless(T_a,V_a_2,V_b_2) )
          | ( c_Orderings_Oord__class_Oless(T_a,V_b_2,V_a_2)
            & c_Orderings_Oord__class_Oless(T_a,V_c_2,c_Groups_Ozero__class_Ozero(T_a)) ) ) )
     <= class_Rings_Olinordered__ring__strict(T_a) ) ).

fof(fact_add__frac__eq,axiom,
    ! [V_w,V_x,V_z,V_y,T_a] :
      ( class_Fields_Ofield(T_a)
     => ( ( c_Groups_Ozero__class_Ozero(T_a) != V_z
         => c_Groups_Oplus__class_Oplus(T_a,c_Rings_Oinverse__class_Odivide(T_a,V_x,V_y),c_Rings_Oinverse__class_Odivide(T_a,V_w,V_z)) = c_Rings_Oinverse__class_Odivide(T_a,c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_x),V_z),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_w),V_y)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_y),V_z)) )
       <= c_Groups_Ozero__class_Ozero(T_a) != V_y ) ) ).

fof(fact_pow__divides__eq__int,axiom,
    ! [V_b_2,V_a_2,V_na_2] :
      ( c_Groups_Ozero__class_Ozero(tc_Nat_Onat) != V_na_2
     => ( hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Int_Oint),hAPP(hAPP(c_Power_Opower__class_Opower(tc_Int_Oint),V_a_2),V_na_2)),hAPP(hAPP(c_Power_Opower__class_Opower(tc_Int_Oint),V_b_2),V_na_2)))
      <=> hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Int_Oint),V_a_2),V_b_2)) ) ) ).

fof(fact_coeff__mult__degree__sum,axiom,
    ! [V_q,V_p,T_a] :
      ( class_Rings_Ocomm__semiring__0(T_a)
     => hAPP(c_Polynomial_Ocoeff(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Polynomial_Opoly(T_a)),V_p),V_q)),c_Groups_Oplus__class_Oplus(tc_Nat_Onat,c_Polynomial_Odegree(T_a,V_p),c_Polynomial_Odegree(T_a,V_q))) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),hAPP(c_Polynomial_Ocoeff(T_a,V_p),c_Polynomial_Odegree(T_a,V_p))),hAPP(c_Polynomial_Ocoeff(T_a,V_q),c_Polynomial_Odegree(T_a,V_q))) ) ).

fof(fact_coeff__add,axiom,
    ! [V_n,V_q,V_p,T_a] :
      ( hAPP(c_Polynomial_Ocoeff(T_a,c_Groups_Oplus__class_Oplus(tc_Polynomial_Opoly(T_a),V_p,V_q)),V_n) = c_Groups_Oplus__class_Oplus(T_a,hAPP(c_Polynomial_Ocoeff(T_a,V_p),V_n),hAPP(c_Polynomial_Ocoeff(T_a,V_q),V_n))
     <= class_Groups_Ocomm__monoid__add(T_a) ) ).

fof(fact_order__le__neq__trans,axiom,
    ! [V_b,V_a,T_a] :
      ( class_Orderings_Oorder(T_a)
     => ( ( V_b != V_a
         => c_Orderings_Oord__class_Oless(T_a,V_a,V_b) )
       <= c_Orderings_Oord__class_Oless__eq(T_a,V_a,V_b) ) ) ).

fof(arity_Complex__Ocomplex__Groups_Oone,axiom,
    class_Groups_Oone(tc_Complex_Ocomplex) ).

fof(fact_dvd__0__left,axiom,
    ! [V_a,T_a] :
      ( ( hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(T_a),c_Groups_Ozero__class_Ozero(T_a)),V_a))
       => c_Groups_Ozero__class_Ozero(T_a) = V_a )
     <= class_Rings_Ocomm__semiring__1(T_a) ) ).

fof(fact_nonzero__power__divide,axiom,
    ! [V_n,V_a,V_b,T_a] :
      ( class_Fields_Ofield(T_a)
     => ( hAPP(hAPP(c_Power_Opower__class_Opower(T_a),c_Rings_Oinverse__class_Odivide(T_a,V_a,V_b)),V_n) = c_Rings_Oinverse__class_Odivide(T_a,hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_a),V_n),hAPP(hAPP(c_Power_Opower__class_Opower(T_a),V_b),V_n))
       <= V_b != c_Groups_Ozero__class_Ozero(T_a) ) ) ).

fof(fact_split__mult__pos__le,axiom,
    ! [V_b,V_a,T_a] :
      ( class_Rings_Oordered__ring(T_a)
     => ( ( ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_a)
            & c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),V_b) )
          | ( c_Orderings_Oord__class_Oless__eq(T_a,V_a,c_Groups_Ozero__class_Ozero(T_a))
            & c_Orderings_Oord__class_Oless__eq(T_a,V_b,c_Groups_Ozero__class_Ozero(T_a)) ) )
       => c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Ozero__class_Ozero(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a),V_b)) ) ) ).

fof(fact_mult__less__mono1,axiom,
    ! [V_k,V_j,V_i] :
      ( ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Groups_Ozero__class_Ozero(tc_Nat_Onat),V_k)
       => c_Orderings_Oord__class_Oless(tc_Nat_Onat,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_i),V_k),hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Nat_Onat),V_j),V_k)) )
     <= c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_i,V_j) ) ).

fof(arity_Int__Oint__Rings_Olinordered__comm__semiring__strict,axiom,
    class_Rings_Olinordered__comm__semiring__strict(tc_Int_Oint) ).

fof(fact_dvd__diffD,axiom,
    ! [V_n,V_m,V_k] :
      ( hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Nat_Onat),V_k),c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_m,V_n)))
     => ( ( hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Nat_Onat),V_k),V_m))
         <= c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_n,V_m) )
       <= hBOOL(hAPP(hAPP(c_Rings_Odvd__class_Odvd(tc_Nat_Onat),V_k),V_n)) ) ) ).

fof(fact_mod__pCons,axiom,
    ! [V_x,V_a,V_y,T_a] :
      ( class_Fields_Ofield(T_a)
     => ( c_Groups_Ozero__class_Ozero(tc_Polynomial_Opoly(T_a)) != V_y
       => c_Groups_Ominus__class_Ominus(tc_Polynomial_Opoly(T_a),c_Polynomial_OpCons(T_a,V_a,c_Divides_Odiv__class_Omod(tc_Polynomial_Opoly(T_a),V_x,V_y)),c_Polynomial_Osmult(T_a,c_Rings_Oinverse__class_Odivide(T_a,hAPP(c_Polynomial_Ocoeff(T_a,c_Polynomial_OpCons(T_a,V_a,c_Divides_Odiv__class_Omod(tc_Polynomial_Opoly(T_a),V_x,V_y))),c_Polynomial_Odegree(T_a,V_y)),hAPP(c_Polynomial_Ocoeff(T_a,V_y),c_Polynomial_Odegree(T_a,V_y))),V_y)) = c_Divides_Odiv__class_Omod(tc_Polynomial_Opoly(T_a),c_Polynomial_OpCons(T_a,V_a,V_x),V_y) ) ) ).

fof(fact_self__quotient__aux1,axiom,
    ! [V_q,V_r,V_a] :
      ( c_Orderings_Oord__class_Oless(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_a)
     => ( c_Groups_Oplus__class_Oplus(tc_Int_Oint,V_r,hAPP(hAPP(c_Groups_Otimes__class_Otimes(tc_Int_Oint),V_a),V_q)) = V_a
       => ( c_Orderings_Oord__class_Oless(tc_Int_Oint,V_r,V_a)
         => c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Oone__class_Oone(tc_Int_Oint),V_q) ) ) ) ).

fof(fact_comm__semiring__1__class_Onormalizing__semiring__rules_I14_J,axiom,
    ! [V_ry,V_rx,V_ly,V_lx,T_a] :
      ( class_Rings_Ocomm__semiring__1(T_a)
     => hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_lx),V_ly)),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_rx),V_ry)) = hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_lx),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_ly),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_rx),V_ry))) ) ).

fof(arity_Polynomial__Opoly__Divides_Osemiring__div,axiom,
    ! [T_1] :
      ( class_Divides_Osemiring__div(tc_Polynomial_Opoly(T_1))
     <= class_Fields_Ofield(T_1) ) ).

fof(fact_sum__squares__le__zero__iff,axiom,
    ! [V_y_2,V_x_2,T_a] :
      ( class_Rings_Olinordered__ring__strict(T_a)
     => ( c_Orderings_Oord__class_Oless__eq(T_a,c_Groups_Oplus__class_Oplus(T_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_x_2),V_x_2),hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_y_2),V_y_2)),c_Groups_Ozero__class_Ozero(T_a))
      <=> ( c_Groups_Ozero__class_Ozero(T_a) = V_y_2
          & V_x_2 = c_Groups_Ozero__class_Ozero(T_a) ) ) ) ).

fof(fact_zadd__left__mono,axiom,
    ! [V_k,V_j,V_i] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Oplus__class_Oplus(tc_Int_Oint,V_k,V_i),c_Groups_Oplus__class_Oplus(tc_Int_Oint,V_k,V_j))
     <= c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,V_i,V_j) ) ).

fof(fact_Nat_Oadd__0__right,axiom,
    ! [V_m] : c_Groups_Oplus__class_Oplus(tc_Nat_Onat,V_m,c_Groups_Ozero__class_Ozero(tc_Nat_Onat)) = V_m ).

fof(fact_power_Opower_Opower__0,axiom,
    ! [V_a_2,V_times_2,V_one_2,T_a] : hAPP(hAPP(c_Power_Opower_Opower(T_a,V_one_2,V_times_2),V_a_2),c_Groups_Ozero__class_Ozero(tc_Nat_Onat)) = V_one_2 ).

fof(fact_diff__monom,axiom,
    ! [V_b,V_n,V_a,T_a] :
      ( class_Groups_Oab__group__add(T_a)
     => c_Groups_Ominus__class_Ominus(tc_Polynomial_Opoly(T_a),c_Polynomial_Omonom(T_a,V_a,V_n),c_Polynomial_Omonom(T_a,V_b,V_n)) = c_Polynomial_Omonom(T_a,c_Groups_Ominus__class_Ominus(T_a,V_a,V_b),V_n) ) ).

fof(fact_pos__divide__le__eq,axiom,
    ! [V_a_2,V_b_2,V_c_2,T_a] :
      ( ( c_Orderings_Oord__class_Oless(T_a,c_Groups_Ozero__class_Ozero(T_a),V_c_2)
       => ( c_Orderings_Oord__class_Oless__eq(T_a,V_b_2,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_a_2),V_c_2))
        <=> c_Orderings_Oord__class_Oless__eq(T_a,c_Rings_Oinverse__class_Odivide(T_a,V_b_2,V_c_2),V_a_2) ) )
     <= class_Fields_Olinordered__field(T_a) ) ).

fof(arity_Nat__Onat__Orderings_Oord,axiom,
    class_Orderings_Oord(tc_Nat_Onat) ).

fof(fact_int__one__le__iff__zero__less,axiom,
    ! [V_z_2] :
      ( c_Orderings_Oord__class_Oless(tc_Int_Oint,c_Groups_Ozero__class_Ozero(tc_Int_Oint),V_z_2)
    <=> c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,c_Groups_Oone__class_Oone(tc_Int_Oint),V_z_2) ) ).

fof(fact_add__scale__eq__noteq,axiom,
    ! [V_d,V_c,V_b,V_a,V_r,T_a] :
      ( class_Semiring__Normalization_Ocomm__semiring__1__cancel__crossproduct(T_a)
     => ( ( ( V_b = V_a
            & V_c != V_d )
         => c_Groups_Oplus__class_Oplus(T_a,V_b,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_r),V_d)) != c_Groups_Oplus__class_Oplus(T_a,V_a,hAPP(hAPP(c_Groups_Otimes__class_Otimes(T_a),V_r),V_c)) )
       <= V_r != c_Groups_Ozero__class_Ozero(T_a) ) ) ).

fof(fact_le__add__diff__inverse2,axiom,
    ! [V_m,V_n] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_n,V_m)
     => c_Groups_Oplus__class_Oplus(tc_Nat_Onat,c_Groups_Ominus__class_Ominus(tc_Nat_Onat,V_m,V_n),V_n) = V_m ) ).

fof(arity_Complex__Ocomplex__Groups_Omonoid__mult,axiom,
    class_Groups_Omonoid__mult(tc_Complex_Ocomplex) ).

fof(fact_zadd__zless__mono,axiom,
    ! [V_z,V_z_H,V_w,V_w_H] :
      ( ( c_Orderings_Oord__class_Oless(tc_Int_Oint,c_Groups_Oplus__class_Oplus(tc_Int_Oint,V_w_H,V_z_H),c_Groups_Oplus__class_Oplus(tc_Int_Oint,V_w,V_z))
       <= c_Orderings_Oord__class_Oless__eq(tc_Int_Oint,V_z_H,V_z) )
     <= c_Orderings_Oord__class_Oless(tc_Int_Oint,V_w_H,V_w) ) ).

