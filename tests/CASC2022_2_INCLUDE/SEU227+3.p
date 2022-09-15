%------------------------------------------------------------------------------
% File     : SEU227+3 : TPTP v8.1.0. Released v3.2.0.
% Domain   : Set theory
% Problem  : Functions and their basic properties, theorem 146
% Version  : [Urb06] axioms : Especial.
% English  :

% Refs     : [Byl90] Bylinski (1990), Functions and Their Basic Properties
%          : [Urb06] Urban (2006), Email to G. Sutcliffe
% Source   : [Urb06]
% Names    : funct_1__t146_funct_1 [Urb06]

% Status   : Theorem
% Rating   : 0.56 v8.1.0, 0.58 v7.5.0, 0.56 v7.4.0, 0.47 v7.3.0, 0.45 v7.2.0, 0.41 v7.1.0, 0.43 v7.0.0, 0.50 v6.4.0, 0.54 v6.2.0, 0.68 v6.1.0, 0.80 v6.0.0, 0.78 v5.5.0, 0.74 v5.4.0, 0.75 v5.3.0, 0.78 v5.2.0, 0.65 v5.1.0, 0.71 v4.1.0, 0.74 v4.0.0, 0.75 v3.5.0, 0.74 v3.4.0, 0.84 v3.3.0, 0.71 v3.2.0
% Syntax   : Number of formulae    :   40 (  11 unt;   0 def)
%            Number of atoms       :   93 (   7 equ)
%            Maximal formula atoms :    6 (   2 avg)
%            Number of connectives :   68 (  15   ~;   1   |;  27   &)
%                                         (   8 <=>;  17  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   10 (   4 avg)
%            Maximal term depth    :    3 (   1 avg)
%            Number of predicates  :    9 (   8 usr;   0 prp; 1-2 aty)
%            Number of functors    :    8 (   8 usr;   1 con; 0-2 aty)
%            Number of variables   :   69 (  55   !;  14   ?)
% SPC      : FOF_THM_RFO_SEQ

% Comments : Translated by MPTP 0.2 from the original problem in the Mizar
%            library, www.mizar.org
%------------------------------------------------------------------------------
fof(antisymmetry_r2_hidden,axiom,
    ! [A,B] :
      ( in(A,B)
     => ~ in(B,A) ) ).

fof(cc1_funct_1,axiom,
    ! [A] :
      ( empty(A)
     => function(A) ) ).

fof(cc1_relat_1,axiom,
    ! [A] :
      ( empty(A)
     => relation(A) ) ).

fof(cc2_funct_1,axiom,
    ! [A] :
      ( ( relation(A)
        & empty(A)
        & function(A) )
     => ( relation(A)
        & function(A)
        & one_to_one(A) ) ) ).

fof(commutativity_k2_tarski,axiom,
    ! [A,B] : unordered_pair(A,B) = unordered_pair(B,A) ).

fof(d13_relat_1,axiom,
    ! [A] :
      ( relation(A)
     => ! [B,C] :
          ( C = relation_image(A,B)
        <=> ! [D] :
              ( in(D,C)
            <=> ? [E] :
                  ( in(ordered_pair(E,D),A)
                  & in(E,B) ) ) ) ) ).

fof(d14_relat_1,axiom,
    ! [A] :
      ( relation(A)
     => ! [B,C] :
          ( C = relation_inverse_image(A,B)
        <=> ! [D] :
              ( in(D,C)
            <=> ? [E] :
                  ( in(ordered_pair(D,E),A)
                  & in(E,B) ) ) ) ) ).

fof(d3_tarski,axiom,
    ! [A,B] :
      ( subset(A,B)
    <=> ! [C] :
          ( in(C,A)
         => in(C,B) ) ) ).

fof(d4_relat_1,axiom,
    ! [A] :
      ( relation(A)
     => ! [B] :
          ( B = relation_dom(A)
        <=> ! [C] :
              ( in(C,B)
            <=> ? [D] : in(ordered_pair(C,D),A) ) ) ) ).

fof(d5_tarski,axiom,
    ! [A,B] : ordered_pair(A,B) = unordered_pair(unordered_pair(A,B),singleton(A)) ).

fof(existence_m1_subset_1,axiom,
    ! [A] :
    ? [B] : element(B,A) ).

fof(fc12_relat_1,axiom,
    ( empty(empty_set)
    & relation(empty_set)
    & relation_empty_yielding(empty_set) ) ).

fof(fc1_subset_1,axiom,
    ! [A] : ~ empty(powerset(A)) ).

fof(fc1_xboole_0,axiom,
    empty(empty_set) ).

fof(fc1_zfmisc_1,axiom,
    ! [A,B] : ~ empty(ordered_pair(A,B)) ).

fof(fc2_subset_1,axiom,
    ! [A] : ~ empty(singleton(A)) ).

fof(fc3_subset_1,axiom,
    ! [A,B] : ~ empty(unordered_pair(A,B)) ).

fof(fc4_relat_1,axiom,
    ( empty(empty_set)
    & relation(empty_set) ) ).

fof(fc5_relat_1,axiom,
    ! [A] :
      ( ( ~ empty(A)
        & relation(A) )
     => ~ empty(relation_dom(A)) ) ).

fof(fc7_relat_1,axiom,
    ! [A] :
      ( empty(A)
     => ( empty(relation_dom(A))
        & relation(relation_dom(A)) ) ) ).

fof(rc1_funct_1,axiom,
    ? [A] :
      ( relation(A)
      & function(A) ) ).

fof(rc1_relat_1,axiom,
    ? [A] :
      ( empty(A)
      & relation(A) ) ).

fof(rc1_subset_1,axiom,
    ! [A] :
      ( ~ empty(A)
     => ? [B] :
          ( element(B,powerset(A))
          & ~ empty(B) ) ) ).

fof(rc1_xboole_0,axiom,
    ? [A] : empty(A) ).

fof(rc2_funct_1,axiom,
    ? [A] :
      ( relation(A)
      & empty(A)
      & function(A) ) ).

fof(rc2_relat_1,axiom,
    ? [A] :
      ( ~ empty(A)
      & relation(A) ) ).

fof(rc2_subset_1,axiom,
    ! [A] :
    ? [B] :
      ( element(B,powerset(A))
      & empty(B) ) ).

fof(rc2_xboole_0,axiom,
    ? [A] : ~ empty(A) ).

fof(rc3_funct_1,axiom,
    ? [A] :
      ( relation(A)
      & function(A)
      & one_to_one(A) ) ).

fof(rc3_relat_1,axiom,
    ? [A] :
      ( relation(A)
      & relation_empty_yielding(A) ) ).

fof(reflexivity_r1_tarski,axiom,
    ! [A,B] : subset(A,A) ).

fof(t146_funct_1,conjecture,
    ! [A,B] :
      ( relation(B)
     => ( subset(A,relation_dom(B))
       => subset(A,relation_inverse_image(B,relation_image(B,A))) ) ) ).

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
