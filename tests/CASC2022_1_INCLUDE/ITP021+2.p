%------------------------------------------------------------------------------
% File     : ITP021+2 : TPTP v8.1.0. Bugfixed v7.5.0.
% Domain   : Interactive Theorem Proving
% Problem  : HOL4 set theory export of thm_2Eextreal_2Emax__le.p, bushy mode
% Version  : [BG+19] axioms.
% English  :

% Refs     : [BG+19] Brown et al. (2019), GRUNGE: A Grand Unified ATP Chall
%          : [Gau19] Gauthier (2019), Email to Geoff Sutcliffe
% Source   : [BG+19]
% Names    : thm_2Eextreal_2Emax__le.p [Gau19]
%          : HL410001+2.p [TPAP]

% Status   : Theorem
% Rating   : 0.67 v8.1.0, 0.61 v7.5.0
% Syntax   : Number of formulae    :   56 (  14 unt;   0 def)
%            Number of atoms       :  275 (  11 equ)
%            Maximal formula atoms :   18 (   4 avg)
%            Number of connectives :  265 (  46   ~;  36   |;  27   &)
%                                         (  44 <=>; 112  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   14 (   6 avg)
%            Maximal term depth    :    6 (   1 avg)
%            Number of predicates  :    6 (   3 usr;   2 prp; 0-2 aty)
%            Number of functors    :   18 (  18 usr;  11 con; 0-2 aty)
%            Number of variables   :   87 (  87   !;   0   ?)
% SPC      : FOF_THM_RFO_SEQ

% Comments :
% Bugfixes : v7.5.0 - Bugfixes in axioms and export.
%------------------------------------------------------------------------------
%------------------------------------------------------------------------------
% File     : ITP001+2 : TPTP v8.1.0. Bugfixed v7.5.0.
% Domain   : Interactive Theorem Proving
% Axioms   : HOL4 set theory export, bushy and chainy mode
% Version  : [BG+19] axioms.
% English  :

% Refs     : [BG+19] Brown et al. (2019), GRUNGE: A Grand Unified ATP Chall
% Source   : [BG+19]
% Names    : HL4001+2.ax [TPAP]

% Status   : Satisfiable
% Syntax   : Number of formulae    :    8 (   2 unt;   0 def)
%            Number of atoms       :   22 (   5 equ)
%            Maximal formula atoms :    5 (   2 avg)
%            Number of connectives :   14 (   0   ~;   0   |;   0   &)
%                                         (   1 <=>;  13  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   10 (   5 avg)
%            Maximal term depth    :    3 (   1 avg)
%            Number of predicates  :    4 (   3 usr;   0 prp; 1-2 aty)
%            Number of functors    :    6 (   6 usr;   2 con; 0-2 aty)
%            Number of variables   :   18 (  18   !;   0   ?)
% SPC      : FOF_SAT_RFO_SEQ

% Comments :
% Bugfixes : v7.5.0 - Fixes to the axioms.
%------------------------------------------------------------------------------
fof(bool_ne,axiom,
    ne(bool) ).

fof(ind_ne,axiom,
    ne(ind) ).

fof(arr_ne,axiom,
    ! [A] :
      ( ne(A)
     => ! [B] :
          ( ne(B)
         => ne(arr(A,B)) ) ) ).

fof(ap_tp,axiom,
    ! [A,B,F] :
      ( mem(F,arr(A,B))
     => ! [X] :
          ( mem(X,A)
         => mem(ap(F,X),B) ) ) ).

fof(boolext,axiom,
    ! [Q] :
      ( mem(Q,bool)
     => ! [R] :
          ( mem(R,bool)
         => ( ( p(Q)
            <=> p(R) )
           => Q = R ) ) ) ).

fof(funcext,axiom,
    ! [A,B,F] :
      ( mem(F,arr(A,B))
     => ! [G] :
          ( mem(G,arr(A,B))
         => ( ! [X] :
                ( mem(X,A)
               => ap(F,X) = ap(G,X) )
           => F = G ) ) ) ).

fof(kbeta,axiom,
    ! [A,Y,X] :
      ( mem(X,A)
     => ap(k(A,Y),X) = Y ) ).

fof(ibeta,axiom,
    ! [A,X] :
      ( mem(X,A)
     => ap(i(A),X) = X ) ).

%------------------------------------------------------------------------------

%------------------------------------------------------------------------------
fof(mem_c_2Ebool_2ET,axiom,
    mem(c_2Ebool_2ET,bool) ).

fof(ax_true_p,axiom,
    p(c_2Ebool_2ET) ).

fof(ne_ty_2Eextreal_2Eextreal,axiom,
    ne(ty_2Eextreal_2Eextreal) ).

fof(mem_c_2Eextreal_2Eextreal__le,axiom,
    mem(c_2Eextreal_2Eextreal__le,arr(ty_2Eextreal_2Eextreal,arr(ty_2Eextreal_2Eextreal,bool))) ).

fof(mem_c_2Ebool_2ECOND,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => mem(c_2Ebool_2ECOND(A_27a),arr(bool,arr(A_27a,arr(A_27a,A_27a)))) ) ).

fof(mem_c_2Eextreal_2Eextreal__max,axiom,
    mem(c_2Eextreal_2Eextreal__max,arr(ty_2Eextreal_2Eextreal,arr(ty_2Eextreal_2Eextreal,ty_2Eextreal_2Eextreal))) ).

fof(mem_c_2Ebool_2EF,axiom,
    mem(c_2Ebool_2EF,bool) ).

fof(ax_false_p,axiom,
    ~ p(c_2Ebool_2EF) ).

fof(mem_c_2Emin_2E_3D_3D_3E,axiom,
    mem(c_2Emin_2E_3D_3D_3E,arr(bool,arr(bool,bool))) ).

fof(ax_imp_p,axiom,
    ! [Q] :
      ( mem(Q,bool)
     => ! [R] :
          ( mem(R,bool)
         => ( p(ap(ap(c_2Emin_2E_3D_3D_3E,Q),R))
          <=> ( p(Q)
             => p(R) ) ) ) ) ).

fof(mem_c_2Ebool_2E_5C_2F,axiom,
    mem(c_2Ebool_2E_5C_2F,arr(bool,arr(bool,bool))) ).

fof(ax_or_p,axiom,
    ! [Q] :
      ( mem(Q,bool)
     => ! [R] :
          ( mem(R,bool)
         => ( p(ap(ap(c_2Ebool_2E_5C_2F,Q),R))
          <=> ( p(Q)
              | p(R) ) ) ) ) ).

fof(mem_c_2Ebool_2E_2F_5C,axiom,
    mem(c_2Ebool_2E_2F_5C,arr(bool,arr(bool,bool))) ).

fof(ax_and_p,axiom,
    ! [Q] :
      ( mem(Q,bool)
     => ! [R] :
          ( mem(R,bool)
         => ( p(ap(ap(c_2Ebool_2E_2F_5C,Q),R))
          <=> ( p(Q)
              & p(R) ) ) ) ) ).

fof(mem_c_2Ebool_2E_7E,axiom,
    mem(c_2Ebool_2E_7E,arr(bool,bool)) ).

fof(ax_neg_p,axiom,
    ! [Q] :
      ( mem(Q,bool)
     => ( p(ap(c_2Ebool_2E_7E,Q))
      <=> ~ p(Q) ) ) ).

fof(mem_c_2Emin_2E_3D,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => mem(c_2Emin_2E_3D(A_27a),arr(A_27a,arr(A_27a,bool))) ) ).

fof(ax_eq_p,axiom,
    ! [A] :
      ( ne(A)
     => ! [X] :
          ( mem(X,A)
         => ! [Y] :
              ( mem(Y,A)
             => ( p(ap(ap(c_2Emin_2E_3D(A),X),Y))
              <=> X = Y ) ) ) ) ).

fof(mem_c_2Ebool_2E_21,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => mem(c_2Ebool_2E_21(A_27a),arr(arr(A_27a,bool),bool)) ) ).

fof(ax_all_p,axiom,
    ! [A] :
      ( ne(A)
     => ! [Q] :
          ( mem(Q,arr(A,bool))
         => ( p(ap(c_2Ebool_2E_21(A),Q))
          <=> ! [X] :
                ( mem(X,A)
               => p(ap(Q,X)) ) ) ) ) ).

fof(conj_thm_2Ebool_2ETRUTH,axiom,
    $true ).

fof(conj_thm_2Ebool_2EIMP__ANTISYM__AX,axiom,
    ! [V0t1] :
      ( mem(V0t1,bool)
     => ! [V1t2] :
          ( mem(V1t2,bool)
         => ( ( p(V0t1)
             => p(V1t2) )
           => ( ( p(V1t2)
               => p(V0t1) )
             => ( p(V0t1)
              <=> p(V1t2) ) ) ) ) ) ).

fof(conj_thm_2Ebool_2EFALSITY,axiom,
    ! [V0t] :
      ( mem(V0t,bool)
     => ( $false
       => p(V0t) ) ) ).

fof(conj_thm_2Ebool_2EEXCLUDED__MIDDLE,axiom,
    ! [V0t] :
      ( mem(V0t,bool)
     => ( p(V0t)
        | ~ p(V0t) ) ) ).

fof(conj_thm_2Ebool_2EIMP__F,axiom,
    ! [V0t] :
      ( mem(V0t,bool)
     => ( ( p(V0t)
         => $false )
       => ~ p(V0t) ) ) ).

fof(conj_thm_2Ebool_2EF__IMP,axiom,
    ! [V0t] :
      ( mem(V0t,bool)
     => ( ~ p(V0t)
       => ( p(V0t)
         => $false ) ) ) ).

fof(conj_thm_2Ebool_2EIMP__CLAUSES,axiom,
    ! [V0t] :
      ( mem(V0t,bool)
     => ( ( ( $true
           => p(V0t) )
        <=> p(V0t) )
        & ( ( p(V0t)
           => $true )
        <=> $true )
        & ( ( $false
           => p(V0t) )
        <=> $true )
        & ( ( p(V0t)
           => p(V0t) )
        <=> $true )
        & ( ( p(V0t)
           => $false )
        <=> ~ p(V0t) ) ) ) ).

fof(conj_thm_2Ebool_2ENOT__CLAUSES,axiom,
    ( ! [V0t] :
        ( mem(V0t,bool)
       => ( ~ ~ p(V0t)
        <=> p(V0t) ) )
    & ( ~ $true
    <=> $false )
    & ( ~ $false
    <=> $true ) ) ).

fof(conj_thm_2Ebool_2EEQ__SYM__EQ,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => ! [V0x] :
          ( mem(V0x,A_27a)
         => ! [V1y] :
              ( mem(V1y,A_27a)
             => ( V0x = V1y
              <=> V1y = V0x ) ) ) ) ).

fof(conj_thm_2Ebool_2EEQ__CLAUSES,axiom,
    ! [V0t] :
      ( mem(V0t,bool)
     => ( ( ( $true
          <=> p(V0t) )
        <=> p(V0t) )
        & ( ( p(V0t)
          <=> $true )
        <=> p(V0t) )
        & ( ( $false
          <=> p(V0t) )
        <=> ~ p(V0t) )
        & ( ( p(V0t)
          <=> $false )
        <=> ~ p(V0t) ) ) ) ).

fof(conj_thm_2Ebool_2ECOND__CLAUSES,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => ! [V0t1] :
          ( mem(V0t1,A_27a)
         => ! [V1t2] :
              ( mem(V1t2,A_27a)
             => ( ap(ap(ap(c_2Ebool_2ECOND(A_27a),c_2Ebool_2ET),V0t1),V1t2) = V0t1
                & ap(ap(ap(c_2Ebool_2ECOND(A_27a),c_2Ebool_2EF),V0t1),V1t2) = V1t2 ) ) ) ) ).

fof(conj_thm_2Ebool_2EDISJ__ASSOC,axiom,
    ! [V0A] :
      ( mem(V0A,bool)
     => ! [V1B] :
          ( mem(V1B,bool)
         => ! [V2C] :
              ( mem(V2C,bool)
             => ( ( p(V0A)
                  | p(V1B)
                  | p(V2C) )
              <=> ( p(V0A)
                  | p(V1B)
                  | p(V2C) ) ) ) ) ) ).

fof(conj_thm_2Ebool_2EDISJ__SYM,axiom,
    ! [V0A] :
      ( mem(V0A,bool)
     => ! [V1B] :
          ( mem(V1B,bool)
         => ( ( p(V0A)
              | p(V1B) )
          <=> ( p(V1B)
              | p(V0A) ) ) ) ) ).

fof(conj_thm_2Ebool_2EDE__MORGAN__THM,axiom,
    ! [V0A] :
      ( mem(V0A,bool)
     => ! [V1B] :
          ( mem(V1B,bool)
         => ( ( ~ ( p(V0A)
                  & p(V1B) )
            <=> ( ~ p(V0A)
                | ~ p(V1B) ) )
            & ( ~ ( p(V0A)
                  | p(V1B) )
            <=> ( ~ p(V0A)
                & ~ p(V1B) ) ) ) ) ) ).

fof(conj_thm_2Eextreal_2Ele__trans,axiom,
    ! [V0x] :
      ( mem(V0x,ty_2Eextreal_2Eextreal)
     => ! [V1y] :
          ( mem(V1y,ty_2Eextreal_2Eextreal)
         => ! [V2z] :
              ( mem(V2z,ty_2Eextreal_2Eextreal)
             => ( ( p(ap(ap(c_2Eextreal_2Eextreal__le,V0x),V1y))
                  & p(ap(ap(c_2Eextreal_2Eextreal__le,V1y),V2z)) )
               => p(ap(ap(c_2Eextreal_2Eextreal__le,V0x),V2z)) ) ) ) ) ).

fof(conj_thm_2Eextreal_2Ele__total,axiom,
    ! [V0x] :
      ( mem(V0x,ty_2Eextreal_2Eextreal)
     => ! [V1y] :
          ( mem(V1y,ty_2Eextreal_2Eextreal)
         => ( p(ap(ap(c_2Eextreal_2Eextreal__le,V0x),V1y))
            | p(ap(ap(c_2Eextreal_2Eextreal__le,V1y),V0x)) ) ) ) ).

fof(ax_thm_2Eextreal_2Eextreal__max__def,axiom,
    ! [V0x] :
      ( mem(V0x,ty_2Eextreal_2Eextreal)
     => ! [V1y] :
          ( mem(V1y,ty_2Eextreal_2Eextreal)
         => ap(ap(c_2Eextreal_2Eextreal__max,V0x),V1y) = ap(ap(ap(c_2Ebool_2ECOND(ty_2Eextreal_2Eextreal),ap(ap(c_2Eextreal_2Eextreal__le,V0x),V1y)),V1y),V0x) ) ) ).

fof(conj_thm_2Esat_2ENOT__NOT,axiom,
    ! [V0t] :
      ( mem(V0t,bool)
     => ( ~ ~ p(V0t)
      <=> p(V0t) ) ) ).

fof(conj_thm_2Esat_2EAND__INV__IMP,axiom,
    ! [V0A] :
      ( mem(V0A,bool)
     => ( p(V0A)
       => ( ~ p(V0A)
         => $false ) ) ) ).

fof(conj_thm_2Esat_2EOR__DUAL2,axiom,
    ! [V0A] :
      ( mem(V0A,bool)
     => ! [V1B] :
          ( mem(V1B,bool)
         => ( ( ~ ( p(V0A)
                  | p(V1B) )
             => $false )
          <=> ( ( p(V0A)
               => $false )
             => ( ~ p(V1B)
               => $false ) ) ) ) ) ).

fof(conj_thm_2Esat_2EOR__DUAL3,axiom,
    ! [V0A] :
      ( mem(V0A,bool)
     => ! [V1B] :
          ( mem(V1B,bool)
         => ( ( ~ ( ~ p(V0A)
                  | p(V1B) )
             => $false )
          <=> ( p(V0A)
             => ( ~ p(V1B)
               => $false ) ) ) ) ) ).

fof(conj_thm_2Esat_2EAND__INV2,axiom,
    ! [V0A] :
      ( mem(V0A,bool)
     => ( ( ~ p(V0A)
         => $false )
       => ( ( p(V0A)
           => $false )
         => $false ) ) ) ).

fof(conj_thm_2Esat_2Edc__eq,axiom,
    ! [V0p] :
      ( mem(V0p,bool)
     => ! [V1q] :
          ( mem(V1q,bool)
         => ! [V2r] :
              ( mem(V2r,bool)
             => ( ( p(V0p)
                <=> ( p(V1q)
                  <=> p(V2r) ) )
              <=> ( ( p(V0p)
                    | p(V1q)
                    | p(V2r) )
                  & ( p(V0p)
                    | ~ p(V2r)
                    | ~ p(V1q) )
                  & ( p(V1q)
                    | ~ p(V2r)
                    | ~ p(V0p) )
                  & ( p(V2r)
                    | ~ p(V1q)
                    | ~ p(V0p) ) ) ) ) ) ) ).

fof(conj_thm_2Esat_2Edc__conj,axiom,
    ! [V0p] :
      ( mem(V0p,bool)
     => ! [V1q] :
          ( mem(V1q,bool)
         => ! [V2r] :
              ( mem(V2r,bool)
             => ( ( p(V0p)
                <=> ( p(V1q)
                    & p(V2r) ) )
              <=> ( ( p(V0p)
                    | ~ p(V1q)
                    | ~ p(V2r) )
                  & ( p(V1q)
                    | ~ p(V0p) )
                  & ( p(V2r)
                    | ~ p(V0p) ) ) ) ) ) ) ).

fof(conj_thm_2Esat_2Edc__disj,axiom,
    ! [V0p] :
      ( mem(V0p,bool)
     => ! [V1q] :
          ( mem(V1q,bool)
         => ! [V2r] :
              ( mem(V2r,bool)
             => ( ( p(V0p)
                <=> ( p(V1q)
                    | p(V2r) ) )
              <=> ( ( p(V0p)
                    | ~ p(V1q) )
                  & ( p(V0p)
                    | ~ p(V2r) )
                  & ( p(V1q)
                    | p(V2r)
                    | ~ p(V0p) ) ) ) ) ) ) ).

fof(conj_thm_2Esat_2Edc__imp,axiom,
    ! [V0p] :
      ( mem(V0p,bool)
     => ! [V1q] :
          ( mem(V1q,bool)
         => ! [V2r] :
              ( mem(V2r,bool)
             => ( ( p(V0p)
                <=> ( p(V1q)
                   => p(V2r) ) )
              <=> ( ( p(V0p)
                    | p(V1q) )
                  & ( p(V0p)
                    | ~ p(V2r) )
                  & ( ~ p(V1q)
                    | p(V2r)
                    | ~ p(V0p) ) ) ) ) ) ) ).

fof(conj_thm_2Esat_2Edc__neg,axiom,
    ! [V0p] :
      ( mem(V0p,bool)
     => ! [V1q] :
          ( mem(V1q,bool)
         => ( ( p(V0p)
            <=> ~ p(V1q) )
          <=> ( ( p(V0p)
                | p(V1q) )
              & ( ~ p(V1q)
                | ~ p(V0p) ) ) ) ) ) ).

fof(conj_thm_2Eextreal_2Emax__le,conjecture,
    ! [V0z] :
      ( mem(V0z,ty_2Eextreal_2Eextreal)
     => ! [V1x] :
          ( mem(V1x,ty_2Eextreal_2Eextreal)
         => ! [V2y] :
              ( mem(V2y,ty_2Eextreal_2Eextreal)
             => ( p(ap(ap(c_2Eextreal_2Eextreal__le,ap(ap(c_2Eextreal_2Eextreal__max,V1x),V2y)),V0z))
              <=> ( p(ap(ap(c_2Eextreal_2Eextreal__le,V1x),V0z))
                  & p(ap(ap(c_2Eextreal_2Eextreal__le,V2y),V0z)) ) ) ) ) ) ).

%------------------------------------------------------------------------------
