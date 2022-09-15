%------------------------------------------------------------------------------
% File     : SEU364+1 : TPTP v8.1.0. Released v3.3.0.
% Domain   : Set theory
% Problem  : MPTP bushy problem s1_xboole_0__e2_28_1_1__finset_1
% Version  : [Urb07] axioms : Especial.
% English  :

% Refs     : [Ban01] Bancerek et al. (2001), On the Characterizations of Co
%          : [Urb07] Urban (2006), Email to G. Sutcliffe
% Source   : [Urb07]
% Names    : bushy-s1_xboole_0__e2_28_1_1__finset_1 [Urb07]

% Status   : Theorem
% Rating   : 0.39 v8.1.0, 0.33 v7.5.0, 0.38 v7.4.0, 0.27 v7.3.0, 0.31 v7.2.0, 0.28 v7.1.0, 0.30 v7.0.0, 0.33 v6.4.0, 0.38 v6.2.0, 0.48 v6.1.0, 0.57 v6.0.0, 0.48 v5.5.0, 0.56 v5.4.0, 0.57 v5.3.0, 0.63 v5.2.0, 0.40 v5.1.0, 0.43 v5.0.0, 0.54 v4.1.0, 0.57 v4.0.0, 0.58 v3.7.0, 0.65 v3.5.0, 0.68 v3.4.0, 0.53 v3.3.0
% Syntax   : Number of formulae    :   21 (   7 unt;   0 def)
%            Number of atoms       :   76 (   8 equ)
%            Maximal formula atoms :   24 (   3 avg)
%            Number of connectives :   72 (  17   ~;   0   |;  39   &)
%                                         (   2 <=>;  14  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   18 (   5 avg)
%            Maximal term depth    :    3 (   1 avg)
%            Number of predicates  :   11 (   9 usr;   1 prp; 0-3 aty)
%            Number of functors    :    2 (   2 usr;   0 con; 1-1 aty)
%            Number of variables   :   44 (  24   !;  20   ?)
% SPC      : FOF_THM_RFO_SEQ

% Comments : Translated by MPTP 0.2 from the original problem in the Mizar
%            library, www.mizar.org
%------------------------------------------------------------------------------
fof(s1_xboole_0__e11_2_1__waybel_0__1,conjecture,
    ! [A,B,C] :
      ( ( ~ empty_carrier(A)
        & transitive_relstr(A)
        & rel_str(A)
        & element(B,powerset(the_carrier(A)))
        & finite(C)
        & element(C,powerset(B)) )
     => ? [D] :
        ! [E] :
          ( in(E,D)
        <=> ( in(E,powerset(C))
            & ? [F] :
                ( F = E
                & ? [G] :
                    ( element(G,the_carrier(A))
                    & in(G,B)
                    & relstr_set_smaller(A,F,G) ) ) ) ) ) ).

fof(dt_l1_struct_0,axiom,
    $true ).

fof(rc3_struct_0,axiom,
    ? [A] :
      ( one_sorted_str(A)
      & ~ empty_carrier(A) ) ).

fof(fc1_struct_0,axiom,
    ! [A] :
      ( ( ~ empty_carrier(A)
        & one_sorted_str(A) )
     => ~ empty(the_carrier(A)) ) ).

fof(rc5_struct_0,axiom,
    ! [A] :
      ( ( ~ empty_carrier(A)
        & one_sorted_str(A) )
     => ? [B] :
          ( element(B,powerset(the_carrier(A)))
          & ~ empty(B) ) ) ).

fof(rc1_finset_1,axiom,
    ? [A] :
      ( ~ empty(A)
      & finite(A) ) ).

fof(cc1_finset_1,axiom,
    ! [A] :
      ( empty(A)
     => finite(A) ) ).

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

fof(rc1_subset_1,axiom,
    ! [A] :
      ( ~ empty(A)
     => ? [B] :
          ( element(B,powerset(A))
          & ~ empty(B) ) ) ).

fof(rc2_subset_1,axiom,
    ! [A] :
    ? [B] :
      ( element(B,powerset(A))
      & empty(B) ) ).

fof(rc1_xboole_0,axiom,
    ? [A] : empty(A) ).

fof(rc2_xboole_0,axiom,
    ? [A] : ~ empty(A) ).

fof(antisymmetry_r2_hidden,axiom,
    ! [A,B] :
      ( in(A,B)
     => ~ in(B,A) ) ).

fof(dt_k1_zfmisc_1,axiom,
    $true ).

fof(dt_l1_orders_2,axiom,
    ! [A] :
      ( rel_str(A)
     => one_sorted_str(A) ) ).

fof(dt_m1_subset_1,axiom,
    $true ).

fof(dt_u1_struct_0,axiom,
    $true ).

fof(cc2_finset_1,axiom,
    ! [A] :
      ( finite(A)
     => ! [B] :
          ( element(B,powerset(A))
         => finite(B) ) ) ).

fof(fc1_subset_1,axiom,
    ! [A] : ~ empty(powerset(A)) ).

fof(s1_tarski__e11_2_1__waybel_0__1,axiom,
    ! [A,B,C] :
      ( ( ~ empty_carrier(A)
        & transitive_relstr(A)
        & rel_str(A)
        & element(B,powerset(the_carrier(A)))
        & finite(C)
        & element(C,powerset(B)) )
     => ( ! [D,E,F] :
            ( ( D = E
              & ? [G] :
                  ( G = E
                  & ? [H] :
                      ( element(H,the_carrier(A))
                      & in(H,B)
                      & relstr_set_smaller(A,G,H) ) )
              & D = F
              & ? [I] :
                  ( I = F
                  & ? [J] :
                      ( element(J,the_carrier(A))
                      & in(J,B)
                      & relstr_set_smaller(A,I,J) ) ) )
           => E = F )
       => ? [D] :
          ! [E] :
            ( in(E,D)
          <=> ? [F] :
                ( in(F,powerset(C))
                & F = E
                & ? [K] :
                    ( K = E
                    & ? [L] :
                        ( element(L,the_carrier(A))
                        & in(L,B)
                        & relstr_set_smaller(A,K,L) ) ) ) ) ) ) ).

%------------------------------------------------------------------------------
