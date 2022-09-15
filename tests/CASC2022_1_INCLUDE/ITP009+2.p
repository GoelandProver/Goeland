%------------------------------------------------------------------------------
% File     : ITP009+2 : TPTP v8.1.0. Bugfixed v7.5.0.
% Domain   : Interactive Theorem Proving
% Problem  : HOL4 set theory export of thm_2Equotient_2EFUN__REL__EQ__REL.p, bushy mode
% Version  : [BG+19] axioms.
% English  :

% Refs     : [BG+19] Brown et al. (2019), GRUNGE: A Grand Unified ATP Chall
%          : [Gau19] Gauthier (2019), Email to Geoff Sutcliffe
% Source   : [BG+19]
% Names    : thm_2Equotient_2EFUN__REL__EQ__REL.p [Gau19]
%          : HL404001+2.p [TPAP]

% Status   : Theorem
% Rating   : 0.94 v7.5.0
% Syntax   : Number of formulae    :   37 (  10 unt;   0 def)
%            Number of atoms       :  171 (  10 equ)
%            Maximal formula atoms :   18 (   4 avg)
%            Number of connectives :  138 (   4   ~;   0   |;  18   &)
%                                         (  23 <=>;  93  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   30 (   6 avg)
%            Maximal term depth    :    7 (   2 avg)
%            Number of predicates  :    6 (   3 usr;   2 prp; 0-2 aty)
%            Number of functors    :   18 (  18 usr;   7 con; 0-4 aty)
%            Number of variables   :   85 (  85   !;   0   ?)
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
fof(mem_c_2Ebool_2E_7E,axiom,
    mem(c_2Ebool_2E_7E,arr(bool,bool)) ).

fof(ax_neg_p,axiom,
    ! [Q] :
      ( mem(Q,bool)
     => ( p(ap(c_2Ebool_2E_7E,Q))
      <=> ~ p(Q) ) ) ).

fof(mem_c_2Ebool_2EF,axiom,
    mem(c_2Ebool_2EF,bool) ).

fof(ax_false_p,axiom,
    ~ p(c_2Ebool_2EF) ).

fof(mem_c_2Ebool_2ET,axiom,
    mem(c_2Ebool_2ET,bool) ).

fof(ax_true_p,axiom,
    p(c_2Ebool_2ET) ).

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

fof(mem_c_2Equotient_2E_2D_2D_3E,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => ! [A_27b] :
          ( ne(A_27b)
         => ! [A_27c] :
              ( ne(A_27c)
             => ! [A_27d] :
                  ( ne(A_27d)
                 => mem(c_2Equotient_2E_2D_2D_3E(A_27a,A_27b,A_27c,A_27d),arr(arr(A_27a,A_27c),arr(arr(A_27b,A_27d),arr(arr(A_27c,A_27b),arr(A_27a,A_27d))))) ) ) ) ) ).

fof(mem_c_2Equotient_2E_3D_3D_3D_3E,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => ! [A_27b] :
          ( ne(A_27b)
         => mem(c_2Equotient_2E_3D_3D_3D_3E(A_27a,A_27b),arr(arr(A_27a,arr(A_27a,bool)),arr(arr(A_27b,arr(A_27b,bool)),arr(arr(A_27a,A_27b),arr(arr(A_27a,A_27b),bool))))) ) ) ).

fof(mem_c_2Equotient_2EQUOTIENT,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => ! [A_27b] :
          ( ne(A_27b)
         => mem(c_2Equotient_2EQUOTIENT(A_27a,A_27b),arr(arr(A_27a,arr(A_27a,bool)),arr(arr(A_27a,A_27b),arr(arr(A_27b,A_27a),bool)))) ) ) ).

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

fof(mem_c_2Ecombin_2EW,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => ! [A_27b] :
          ( ne(A_27b)
         => mem(c_2Ecombin_2EW(A_27a,A_27b),arr(arr(A_27a,arr(A_27a,A_27b)),arr(A_27a,A_27b))) ) ) ).

fof(mem_c_2Equotient_2Erespects,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => ! [A_27b] :
          ( ne(A_27b)
         => mem(c_2Equotient_2Erespects(A_27a,A_27b),arr(arr(A_27a,arr(A_27a,A_27b)),arr(A_27a,A_27b))) ) ) ).

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

fof(conj_thm_2Ebool_2EAND__CLAUSES,axiom,
    ! [V0t] :
      ( mem(V0t,bool)
     => ( ( ( $true
            & p(V0t) )
        <=> p(V0t) )
        & ( ( p(V0t)
            & $true )
        <=> p(V0t) )
        & ( ( $false
            & p(V0t) )
        <=> $false )
        & ( ( p(V0t)
            & $false )
        <=> $false )
        & ( ( p(V0t)
            & p(V0t) )
        <=> p(V0t) ) ) ) ).

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

fof(conj_thm_2Ebool_2EAND__IMP__INTRO,axiom,
    ! [V0t1] :
      ( mem(V0t1,bool)
     => ! [V1t2] :
          ( mem(V1t2,bool)
         => ! [V2t3] :
              ( mem(V2t3,bool)
             => ( ( p(V0t1)
                 => ( p(V1t2)
                   => p(V2t3) ) )
              <=> ( ( p(V0t1)
                    & p(V1t2) )
                 => p(V2t3) ) ) ) ) ) ).

fof(conj_thm_2Ecombin_2EW__THM,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => ! [A_27b] :
          ( ne(A_27b)
         => ! [V0f] :
              ( mem(V0f,arr(A_27a,arr(A_27a,A_27b)))
             => ! [V1x] :
                  ( mem(V1x,A_27a)
                 => ap(ap(c_2Ecombin_2EW(A_27a,A_27b),V0f),V1x) = ap(ap(V0f,V1x),V1x) ) ) ) ) ).

fof(conj_thm_2Equotient_2EQUOTIENT__REL,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => ! [A_27b] :
          ( ne(A_27b)
         => ! [V0R] :
              ( mem(V0R,arr(A_27a,arr(A_27a,bool)))
             => ! [V1abs] :
                  ( mem(V1abs,arr(A_27a,A_27b))
                 => ! [V2rep] :
                      ( mem(V2rep,arr(A_27b,A_27a))
                     => ( p(ap(ap(ap(c_2Equotient_2EQUOTIENT(A_27a,A_27b),V0R),V1abs),V2rep))
                       => ! [V3r] :
                            ( mem(V3r,A_27a)
                           => ! [V4s] :
                                ( mem(V4s,A_27a)
                               => ( p(ap(ap(V0R,V3r),V4s))
                                <=> ( p(ap(ap(V0R,V3r),V3r))
                                    & p(ap(ap(V0R,V4s),V4s))
                                    & ap(V1abs,V3r) = ap(V1abs,V4s) ) ) ) ) ) ) ) ) ) ) ).

fof(conj_thm_2Equotient_2EFUN__QUOTIENT,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => ! [A_27b] :
          ( ne(A_27b)
         => ! [A_27c] :
              ( ne(A_27c)
             => ! [A_27d] :
                  ( ne(A_27d)
                 => ! [V0R1] :
                      ( mem(V0R1,arr(A_27a,arr(A_27a,bool)))
                     => ! [V1abs1] :
                          ( mem(V1abs1,arr(A_27a,A_27c))
                         => ! [V2rep1] :
                              ( mem(V2rep1,arr(A_27c,A_27a))
                             => ( p(ap(ap(ap(c_2Equotient_2EQUOTIENT(A_27a,A_27c),V0R1),V1abs1),V2rep1))
                               => ! [V3R2] :
                                    ( mem(V3R2,arr(A_27b,arr(A_27b,bool)))
                                   => ! [V4abs2] :
                                        ( mem(V4abs2,arr(A_27b,A_27d))
                                       => ! [V5rep2] :
                                            ( mem(V5rep2,arr(A_27d,A_27b))
                                           => ( p(ap(ap(ap(c_2Equotient_2EQUOTIENT(A_27b,A_27d),V3R2),V4abs2),V5rep2))
                                             => p(ap(ap(ap(c_2Equotient_2EQUOTIENT(arr(A_27a,A_27b),arr(A_27c,A_27d)),ap(ap(c_2Equotient_2E_3D_3D_3D_3E(A_27a,A_27b),V0R1),V3R2)),ap(ap(c_2Equotient_2E_2D_2D_3E(A_27c,A_27b,A_27a,A_27d),V2rep1),V4abs2)),ap(ap(c_2Equotient_2E_2D_2D_3E(A_27a,A_27d,A_27c,A_27b),V1abs1),V5rep2))) ) ) ) ) ) ) ) ) ) ) ) ) ).

fof(ax_thm_2Equotient_2Erespects__def,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => ! [A_27b] :
          ( ne(A_27b)
         => c_2Equotient_2Erespects(A_27a,A_27b) = c_2Ecombin_2EW(A_27a,A_27b) ) ) ).

fof(conj_thm_2Equotient_2EFUN__REL__EQ__REL,conjecture,
    ! [A_27a] :
      ( ne(A_27a)
     => ! [A_27b] :
          ( ne(A_27b)
         => ! [A_27c] :
              ( ne(A_27c)
             => ! [A_27d] :
                  ( ne(A_27d)
                 => ! [V0R1] :
                      ( mem(V0R1,arr(A_27a,arr(A_27a,bool)))
                     => ! [V1abs1] :
                          ( mem(V1abs1,arr(A_27a,A_27c))
                         => ! [V2rep1] :
                              ( mem(V2rep1,arr(A_27c,A_27a))
                             => ( p(ap(ap(ap(c_2Equotient_2EQUOTIENT(A_27a,A_27c),V0R1),V1abs1),V2rep1))
                               => ! [V3R2] :
                                    ( mem(V3R2,arr(A_27b,arr(A_27b,bool)))
                                   => ! [V4abs2] :
                                        ( mem(V4abs2,arr(A_27b,A_27d))
                                       => ! [V5rep2] :
                                            ( mem(V5rep2,arr(A_27d,A_27b))
                                           => ( p(ap(ap(ap(c_2Equotient_2EQUOTIENT(A_27b,A_27d),V3R2),V4abs2),V5rep2))
                                             => ! [V6f] :
                                                  ( mem(V6f,arr(A_27a,A_27b))
                                                 => ! [V7g] :
                                                      ( mem(V7g,arr(A_27a,A_27b))
                                                     => ( p(ap(ap(ap(ap(c_2Equotient_2E_3D_3D_3D_3E(A_27a,A_27b),V0R1),V3R2),V6f),V7g))
                                                      <=> ( p(ap(ap(c_2Equotient_2Erespects(arr(A_27a,A_27b),bool),ap(ap(c_2Equotient_2E_3D_3D_3D_3E(A_27a,A_27b),V0R1),V3R2)),V6f))
                                                          & p(ap(ap(c_2Equotient_2Erespects(arr(A_27a,A_27b),bool),ap(ap(c_2Equotient_2E_3D_3D_3D_3E(A_27a,A_27b),V0R1),V3R2)),V7g))
                                                          & ap(ap(ap(c_2Equotient_2E_2D_2D_3E(A_27c,A_27b,A_27a,A_27d),V2rep1),V4abs2),V6f) = ap(ap(ap(c_2Equotient_2E_2D_2D_3E(A_27c,A_27b,A_27a,A_27d),V2rep1),V4abs2),V7g) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ).

%------------------------------------------------------------------------------
