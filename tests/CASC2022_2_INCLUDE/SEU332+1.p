%------------------------------------------------------------------------------
% File     : SEU332+1 : TPTP v8.1.0. Released v3.3.0.
% Domain   : Set theory
% Problem  : MPTP bushy problem s1_xboole_0__e4_5_1__funct_1
% Version  : [Urb07] axioms : Especial.
% English  :

% Refs     : [Ban01] Bancerek et al. (2001), On the Characterizations of Co
%          : [Urb07] Urban (2006), Email to G. Sutcliffe
% Source   : [Urb07]
% Names    : bushy-s1_xboole_0__e4_5_1__funct_1 [Urb07]

% Status   : Theorem
% Rating   : 0.67 v8.1.0, 0.58 v7.5.0, 0.72 v7.4.0, 0.57 v7.3.0, 0.62 v7.1.0, 0.61 v7.0.0, 0.63 v6.4.0, 0.62 v6.3.0, 0.58 v6.2.0, 0.64 v6.1.0, 0.73 v6.0.0, 0.70 v5.5.0, 0.74 v5.4.0, 0.75 v5.3.0, 0.81 v5.2.0, 0.65 v5.1.0, 0.67 v5.0.0, 0.79 v4.1.0, 0.78 v4.0.0, 0.79 v3.7.0, 0.75 v3.5.0, 0.74 v3.3.0
% Syntax   : Number of formulae    :   32 (   7 unt;   0 def)
%            Number of atoms       :  125 (  17 equ)
%            Maximal formula atoms :   23 (   3 avg)
%            Number of connectives :  101 (   8   ~;   0   |;  48   &)
%                                         (   2 <=>;  43  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   20 (   5 avg)
%            Maximal term depth    :    4 (   1 avg)
%            Number of predicates  :   17 (  15 usr;   1 prp; 0-2 aty)
%            Number of functors    :    5 (   5 usr;   0 con; 1-2 aty)
%            Number of variables   :   68 (  54   !;  14   ?)
% SPC      : FOF_THM_RFO_SEQ

% Comments : Translated by MPTP 0.2 from the original problem in the Mizar
%            library, www.mizar.org
%------------------------------------------------------------------------------
fof(s1_xboole_0__e4_7_2__tops_2__1,conjecture,
    ! [A,B] :
      ( ( one_sorted_str(A)
        & element(B,powerset(powerset(the_carrier(A)))) )
     => ! [C] :
        ? [D] :
        ! [E] :
          ( in(E,D)
        <=> ( in(E,cartesian_product2(B,C))
            & ? [F,G] :
                ( ordered_pair(F,G) = E
                & in(F,B)
                & ! [H] :
                    ( element(H,powerset(the_carrier(A)))
                   => ( H = F
                     => G = subset_complement(the_carrier(A),H) ) ) ) ) ) ) ).

fof(cc1_membered,axiom,
    ! [A] :
      ( v5_membered(A)
     => v4_membered(A) ) ).

fof(cc2_membered,axiom,
    ! [A] :
      ( v4_membered(A)
     => v3_membered(A) ) ).

fof(cc3_membered,axiom,
    ! [A] :
      ( v3_membered(A)
     => v2_membered(A) ) ).

fof(cc4_membered,axiom,
    ! [A] :
      ( v2_membered(A)
     => v1_membered(A) ) ).

fof(rc1_membered,axiom,
    ? [A] :
      ( ~ empty(A)
      & v1_membered(A)
      & v2_membered(A)
      & v3_membered(A)
      & v4_membered(A)
      & v5_membered(A) ) ).

fof(cc10_membered,axiom,
    ! [A] :
      ( v1_membered(A)
     => ! [B] :
          ( element(B,A)
         => v1_xcmplx_0(B) ) ) ).

fof(cc11_membered,axiom,
    ! [A] :
      ( v2_membered(A)
     => ! [B] :
          ( element(B,A)
         => ( v1_xcmplx_0(B)
            & v1_xreal_0(B) ) ) ) ).

fof(cc12_membered,axiom,
    ! [A] :
      ( v3_membered(A)
     => ! [B] :
          ( element(B,A)
         => ( v1_xcmplx_0(B)
            & v1_xreal_0(B)
            & v1_rat_1(B) ) ) ) ).

fof(cc13_membered,axiom,
    ! [A] :
      ( v4_membered(A)
     => ! [B] :
          ( element(B,A)
         => ( v1_xcmplx_0(B)
            & v1_xreal_0(B)
            & v1_int_1(B)
            & v1_rat_1(B) ) ) ) ).

fof(cc14_membered,axiom,
    ! [A] :
      ( v5_membered(A)
     => ! [B] :
          ( element(B,A)
         => ( v1_xcmplx_0(B)
            & natural(B)
            & v1_xreal_0(B)
            & v1_int_1(B)
            & v1_rat_1(B) ) ) ) ).

fof(cc16_membered,axiom,
    ! [A] :
      ( v1_membered(A)
     => ! [B] :
          ( element(B,powerset(A))
         => v1_membered(B) ) ) ).

fof(cc17_membered,axiom,
    ! [A] :
      ( v2_membered(A)
     => ! [B] :
          ( element(B,powerset(A))
         => ( v1_membered(B)
            & v2_membered(B) ) ) ) ).

fof(cc18_membered,axiom,
    ! [A] :
      ( v3_membered(A)
     => ! [B] :
          ( element(B,powerset(A))
         => ( v1_membered(B)
            & v2_membered(B)
            & v3_membered(B) ) ) ) ).

fof(cc19_membered,axiom,
    ! [A] :
      ( v4_membered(A)
     => ! [B] :
          ( element(B,powerset(A))
         => ( v1_membered(B)
            & v2_membered(B)
            & v3_membered(B)
            & v4_membered(B) ) ) ) ).

fof(cc20_membered,axiom,
    ! [A] :
      ( v5_membered(A)
     => ! [B] :
          ( element(B,powerset(A))
         => ( v1_membered(B)
            & v2_membered(B)
            & v3_membered(B)
            & v4_membered(B)
            & v5_membered(B) ) ) ) ).

fof(cc15_membered,axiom,
    ! [A] :
      ( empty(A)
     => ( v1_membered(A)
        & v2_membered(A)
        & v3_membered(A)
        & v4_membered(A)
        & v5_membered(A) ) ) ).

fof(rc1_subset_1,axiom,
    ! [A] :
      ( ~ empty(A)
     => ? [B] :
          ( element(B,powerset(A))
          & ~ empty(B) ) ) ).

fof(fc4_subset_1,axiom,
    ! [A,B] :
      ( ( ~ empty(A)
        & ~ empty(B) )
     => ~ empty(cartesian_product2(A,B)) ) ).

fof(rc2_subset_1,axiom,
    ! [A] :
    ? [B] :
      ( element(B,powerset(A))
      & empty(B) ) ).

fof(involutiveness_k3_subset_1,axiom,
    ! [A,B] :
      ( element(B,powerset(A))
     => subset_complement(A,subset_complement(A,B)) = B ) ).

fof(antisymmetry_r2_hidden,axiom,
    ! [A,B] :
      ( in(A,B)
     => ~ in(B,A) ) ).

fof(dt_k1_zfmisc_1,axiom,
    $true ).

fof(dt_k2_zfmisc_1,axiom,
    $true ).

fof(dt_k3_subset_1,axiom,
    ! [A,B] :
      ( element(B,powerset(A))
     => element(subset_complement(A,B),powerset(A)) ) ).

fof(dt_k4_tarski,axiom,
    $true ).

fof(dt_l1_struct_0,axiom,
    $true ).

fof(dt_m1_subset_1,axiom,
    $true ).

fof(dt_u1_struct_0,axiom,
    $true ).

fof(cc1_relset_1,axiom,
    ! [A,B,C] :
      ( element(C,powerset(cartesian_product2(A,B)))
     => relation(C) ) ).

fof(fc1_subset_1,axiom,
    ! [A] : ~ empty(powerset(A)) ).

fof(s1_tarski__e4_7_2__tops_2__2,axiom,
    ! [A,B] :
      ( ( one_sorted_str(A)
        & element(B,powerset(powerset(the_carrier(A)))) )
     => ! [C] :
          ( ! [D,E,F] :
              ( ( D = E
                & ? [G,H] :
                    ( ordered_pair(G,H) = E
                    & in(G,B)
                    & ! [I] :
                        ( element(I,powerset(the_carrier(A)))
                       => ( I = G
                         => H = subset_complement(the_carrier(A),I) ) ) )
                & D = F
                & ? [J,K] :
                    ( ordered_pair(J,K) = F
                    & in(J,B)
                    & ! [L] :
                        ( element(L,powerset(the_carrier(A)))
                       => ( L = J
                         => K = subset_complement(the_carrier(A),L) ) ) ) )
             => E = F )
         => ? [D] :
            ! [E] :
              ( in(E,D)
            <=> ? [F] :
                  ( in(F,cartesian_product2(B,C))
                  & F = E
                  & ? [M,N] :
                      ( ordered_pair(M,N) = E
                      & in(M,B)
                      & ! [O] :
                          ( element(O,powerset(the_carrier(A)))
                         => ( O = M
                           => N = subset_complement(the_carrier(A),O) ) ) ) ) ) ) ) ).

%------------------------------------------------------------------------------
