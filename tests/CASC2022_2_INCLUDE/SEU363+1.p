%------------------------------------------------------------------------------
% File     : SEU363+1 : TPTP v8.1.0. Released v3.3.0.
% Domain   : Set theory
% Problem  : MPTP bushy problem t61_yellow_0
% Version  : [Urb07] axioms : Especial.
% English  :

% Refs     : [Ban01] Bancerek et al. (2001), On the Characterizations of Co
%          : [Urb07] Urban (2006), Email to G. Sutcliffe
% Source   : [Urb07]
% Names    : bushy-t61_yellow_0 [Urb07]

% Status   : Theorem
% Rating   : 0.39 v8.1.0, 0.44 v7.5.0, 0.41 v7.4.0, 0.30 v7.3.0, 0.38 v7.2.0, 0.41 v7.1.0, 0.35 v7.0.0, 0.43 v6.4.0, 0.46 v6.3.0, 0.42 v6.2.0, 0.56 v6.1.0, 0.63 v6.0.0, 0.52 v5.5.0, 0.63 v5.4.0, 0.68 v5.3.0, 0.70 v5.2.0, 0.60 v5.1.0, 0.57 v5.0.0, 0.71 v4.1.0, 0.70 v4.0.1, 0.65 v4.0.0, 0.67 v3.7.0, 0.60 v3.5.0, 0.58 v3.4.0, 0.74 v3.3.0
% Syntax   : Number of formulae    :   47 (  17 unt;   0 def)
%            Number of atoms       :  107 (   6 equ)
%            Maximal formula atoms :   13 (   2 avg)
%            Number of connectives :   71 (  11   ~;   1   |;  19   &)
%                                         (   6 <=>;  34  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   18 (   4 avg)
%            Maximal term depth    :    3 (   1 avg)
%            Number of predicates  :   15 (  13 usr;   1 prp; 0-3 aty)
%            Number of functors    :    8 (   8 usr;   1 con; 0-2 aty)
%            Number of variables   :   82 (  71   !;  11   ?)
% SPC      : FOF_THM_RFO_SEQ

% Comments : Translated by MPTP 0.2 from the original problem in the Mizar
%            library, www.mizar.org
%------------------------------------------------------------------------------
fof(antisymmetry_r2_hidden,axiom,
    ! [A,B] :
      ( in(A,B)
     => ~ in(B,A) ) ).

fof(cc1_finset_1,axiom,
    ! [A] :
      ( empty(A)
     => finite(A) ) ).

fof(cc1_relset_1,axiom,
    ! [A,B,C] :
      ( element(C,powerset(cartesian_product2(A,B)))
     => relation(C) ) ).

fof(cc2_finset_1,axiom,
    ! [A] :
      ( finite(A)
     => ! [B] :
          ( element(B,powerset(A))
         => finite(B) ) ) ).

fof(d14_yellow_0,axiom,
    ! [A] :
      ( rel_str(A)
     => ! [B] :
          ( subrelstr(B,A)
         => ( full_subrelstr(B,A)
          <=> the_InternalRel(B) = relation_restriction_as_relation_of(the_InternalRel(A),the_carrier(B)) ) ) ) ).

fof(d9_orders_2,axiom,
    ! [A] :
      ( rel_str(A)
     => ! [B] :
          ( element(B,the_carrier(A))
         => ! [C] :
              ( element(C,the_carrier(A))
             => ( related(A,B,C)
              <=> in(ordered_pair(B,C),the_InternalRel(A)) ) ) ) ) ).

fof(dt_k1_toler_1,axiom,
    ! [A,B] :
      ( relation(A)
     => relation_of2_as_subset(relation_restriction_as_relation_of(A,B),B,B) ) ).

fof(dt_k1_xboole_0,axiom,
    $true ).

fof(dt_k1_zfmisc_1,axiom,
    $true ).

fof(dt_k2_wellord1,axiom,
    ! [A,B] :
      ( relation(A)
     => relation(relation_restriction(A,B)) ) ).

fof(dt_k2_zfmisc_1,axiom,
    $true ).

fof(dt_k4_tarski,axiom,
    $true ).

fof(dt_l1_orders_2,axiom,
    ! [A] :
      ( rel_str(A)
     => one_sorted_str(A) ) ).

fof(dt_l1_struct_0,axiom,
    $true ).

fof(dt_m1_relset_1,axiom,
    $true ).

fof(dt_m1_subset_1,axiom,
    $true ).

fof(dt_m1_yellow_0,axiom,
    ! [A] :
      ( rel_str(A)
     => ! [B] :
          ( subrelstr(B,A)
         => rel_str(B) ) ) ).

fof(dt_m2_relset_1,axiom,
    ! [A,B,C] :
      ( relation_of2_as_subset(C,A,B)
     => element(C,powerset(cartesian_product2(A,B))) ) ).

fof(dt_u1_orders_2,axiom,
    ! [A] :
      ( rel_str(A)
     => relation_of2_as_subset(the_InternalRel(A),the_carrier(A),the_carrier(A)) ) ).

fof(dt_u1_struct_0,axiom,
    $true ).

fof(existence_l1_orders_2,axiom,
    ? [A] : rel_str(A) ).

fof(existence_l1_struct_0,axiom,
    ? [A] : one_sorted_str(A) ).

fof(existence_m1_relset_1,axiom,
    ! [A,B] :
    ? [C] : relation_of2(C,A,B) ).

fof(existence_m1_subset_1,axiom,
    ! [A] :
    ? [B] : element(B,A) ).

fof(existence_m1_yellow_0,axiom,
    ! [A] :
      ( rel_str(A)
     => ? [B] : subrelstr(B,A) ) ).

fof(existence_m2_relset_1,axiom,
    ! [A,B] :
    ? [C] : relation_of2_as_subset(C,A,B) ).

fof(fc14_finset_1,axiom,
    ! [A,B] :
      ( ( finite(A)
        & finite(B) )
     => finite(cartesian_product2(A,B)) ) ).

fof(fc1_xboole_0,axiom,
    empty(empty_set) ).

fof(rc1_finset_1,axiom,
    ? [A] :
      ( ~ empty(A)
      & finite(A) ) ).

fof(rc1_xboole_0,axiom,
    ? [A] : empty(A) ).

fof(rc2_xboole_0,axiom,
    ? [A] : ~ empty(A) ).

fof(rc3_finset_1,axiom,
    ! [A] :
      ( ~ empty(A)
     => ? [B] :
          ( element(B,powerset(A))
          & ~ empty(B)
          & finite(B) ) ) ).

fof(rc4_finset_1,axiom,
    ! [A] :
      ( ~ empty(A)
     => ? [B] :
          ( element(B,powerset(A))
          & ~ empty(B)
          & finite(B) ) ) ).

fof(redefinition_k1_toler_1,axiom,
    ! [A,B] :
      ( relation(A)
     => relation_restriction_as_relation_of(A,B) = relation_restriction(A,B) ) ).

fof(redefinition_m2_relset_1,axiom,
    ! [A,B,C] :
      ( relation_of2_as_subset(C,A,B)
    <=> relation_of2(C,A,B) ) ).

fof(reflexivity_r1_tarski,axiom,
    ! [A,B] : subset(A,A) ).

fof(t106_zfmisc_1,axiom,
    ! [A,B,C,D] :
      ( in(ordered_pair(A,B),cartesian_product2(C,D))
    <=> ( in(A,C)
        & in(B,D) ) ) ).

fof(t16_wellord1,axiom,
    ! [A,B,C] :
      ( relation(C)
     => ( in(A,relation_restriction(C,B))
      <=> ( in(A,C)
          & in(A,cartesian_product2(B,B)) ) ) ) ).

fof(t1_subset,axiom,
    ! [A,B] :
      ( in(A,B)
     => element(A,B) ) ).

fof(t2_subset,axiom,
    ! [A,B] :
      ( element(A,B)
     => ( empty(B)
        | in(A,B) ) ) ).

fof(t3_subset,axiom,
    ! [A,B] :
      ( element(A,powerset(B))
    <=> subset(A,B) ) ).

fof(t4_subset,axiom,
    ! [A,B,C] :
      ( ( in(A,B)
        & element(B,powerset(C)) )
     => element(A,C) ) ).

fof(t5_subset,axiom,
    ! [A,B,C] :
      ~ ( in(A,B)
        & element(B,powerset(C))
        & empty(C) ) ).

fof(t61_yellow_0,conjecture,
    ! [A] :
      ( rel_str(A)
     => ! [B] :
          ( ( full_subrelstr(B,A)
            & subrelstr(B,A) )
         => ! [C] :
              ( element(C,the_carrier(A))
             => ! [D] :
                  ( element(D,the_carrier(A))
                 => ! [E] :
                      ( element(E,the_carrier(B))
                     => ! [F] :
                          ( element(F,the_carrier(B))
                         => ( ( E = C
                              & F = D
                              & related(A,C,D)
                              & in(E,the_carrier(B))
                              & in(F,the_carrier(B)) )
                           => related(B,E,F) ) ) ) ) ) ) ) ).

fof(t6_boole,axiom,
    ! [A] :
      ( empty(A)
     => A = empty_set ) ).

fof(t7_boole,axiom,
    ! [A,B] :
      ~ ( in(A,B)
        & empty(B) ) ).

fof(t8_boole,axiom,
    ! [A,B] :
      ~ ( empty(A)
        & A != B
        & empty(B) ) ).

%------------------------------------------------------------------------------
