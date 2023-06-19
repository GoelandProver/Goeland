%------------------------------------------------------------------------------
% File     : ITP008+2 : TPTP v8.1.2. Bugfixed v7.5.0.
% Domain   : Interactive Theorem Proving
% Problem  : HOL4 set theory export of thm_2Ewellorder_2EWIN__WF2.p, bushy mode
% Version  : [BG+19] axioms.
% English  :

% Refs     : [BG+19] Brown et al. (2019), GRUNGE: A Grand Unified ATP Chall
%          : [Gau19] Gauthier (2019), Email to Geoff Sutcliffe
% Source   : [BG+19]
% Names    : thm_2Ewellorder_2EWIN__WF2.p [Gau19]
%          : HL403501+2.p [TPAP]

% Status   : CounterSatisfiable
% Rating   : 0.00 v8.1.0, 0.92 v7.5.0
% Syntax   : Number of formulae    :   26 (   2 unt;   0 def)
%            Number of atoms       :   79 (   8 equ)
%            Maximal formula atoms :    7 (   3 avg)
%            Number of connectives :   53 (   0   ~;   0   |;   0   &)
%                                         (   4 <=>;  49  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   13 (   5 avg)
%            Maximal term depth    :    5 (   1 avg)
%            Number of predicates  :    4 (   3 usr;   0 prp; 1-2 aty)
%            Number of functors    :   20 (  20 usr;   2 con; 0-3 aty)
%            Number of variables   :   54 (  54   !;   0   ?)
% SPC      : FOF_CSA_RFO_SEQ

% Comments :
% Bugfixes : v7.5.0 - Bugfixes in axioms and export.
%------------------------------------------------------------------------------
include('Axioms/ITP001/ITP001+2.ax').
%------------------------------------------------------------------------------
fof(ne_ty_2Epair_2Eprod,axiom,
    ! [A0] :
      ( ne(A0)
     => ! [A1] :
          ( ne(A1)
         => ne(ty_2Epair_2Eprod(A0,A1)) ) ) ).

fof(mem_c_2Epair_2E_2C,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => ! [A_27b] :
          ( ne(A_27b)
         => mem(c_2Epair_2E_2C(A_27a,A_27b),arr(A_27a,arr(A_27b,ty_2Epair_2Eprod(A_27a,A_27b)))) ) ) ).

fof(mem_c_2Epair_2ECURRY,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => ! [A_27b] :
          ( ne(A_27b)
         => ! [A_27c] :
              ( ne(A_27c)
             => mem(c_2Epair_2ECURRY(A_27a,A_27b,A_27c),arr(arr(ty_2Epair_2Eprod(A_27a,A_27b),A_27c),arr(A_27a,arr(A_27b,A_27c)))) ) ) ) ).

fof(mem_c_2Erelation_2EWF,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => mem(c_2Erelation_2EWF(A_27a),arr(arr(A_27a,arr(A_27a,bool)),bool)) ) ).

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

fof(ne_ty_2Ewellorder_2Ewellorder,axiom,
    ! [A0] :
      ( ne(A0)
     => ne(ty_2Ewellorder_2Ewellorder(A0)) ) ).

fof(mem_c_2Ewellorder_2Ewellorder__REP,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => mem(c_2Ewellorder_2Ewellorder__REP(A_27a),arr(ty_2Ewellorder_2Ewellorder(A_27a),arr(ty_2Epair_2Eprod(A_27a,A_27a),bool))) ) ).

fof(mem_c_2Eset__relation_2Estrict,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => mem(c_2Eset__relation_2Estrict(A_27a),arr(arr(ty_2Epair_2Eprod(A_27a,A_27a),bool),arr(ty_2Epair_2Eprod(A_27a,A_27a),bool))) ) ).

fof(mem_c_2Ebool_2EIN,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => mem(c_2Ebool_2EIN(A_27a),arr(A_27a,arr(arr(A_27a,bool),bool))) ) ).

fof(mem_c_2Ewellorder_2Ewellfounded,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => mem(c_2Ewellorder_2Ewellfounded(A_27a),arr(arr(ty_2Epair_2Eprod(A_27a,A_27a),bool),bool)) ) ).

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

fof(ax_thm_2Ebool_2EETA__AX,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => ! [A_27b] :
          ( ne(A_27b)
         => ! [V0t] :
              ( mem(V0t,arr(A_27a,A_27b))
             => f31(A_27b,A_27a,V0t) = V0t ) ) ) ).

fof(ax_thm_2Epair_2ECURRY__DEF,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => ! [A_27b] :
          ( ne(A_27b)
         => ! [A_27c] :
              ( ne(A_27c)
             => ! [V0f] :
                  ( mem(V0f,arr(ty_2Epair_2Eprod(A_27a,A_27b),A_27c))
                 => ! [V1x] :
                      ( mem(V1x,A_27a)
                     => ! [V2y] :
                          ( mem(V2y,A_27b)
                         => ap(ap(ap(c_2Epair_2ECURRY(A_27a,A_27b,A_27c),V0f),V1x),V2y) = ap(V0f,ap(ap(c_2Epair_2E_2C(A_27a,A_27b),V1x),V2y)) ) ) ) ) ) ) ).

fof(conj_thm_2Ewellorder_2Ewellfounded__WF,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => ! [V0R] :
          ( mem(V0R,arr(ty_2Epair_2Eprod(A_27a,A_27a),bool))
         => ( p(ap(c_2Ewellorder_2Ewellfounded(A_27a),V0R))
          <=> p(ap(c_2Erelation_2EWF(A_27a),ap(c_2Epair_2ECURRY(A_27a,A_27a,bool),V0R))) ) ) ) ).

fof(conj_thm_2Ewellorder_2EWIN__WF,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => ! [V0w] :
          ( mem(V0w,ty_2Ewellorder_2Ewellorder(A_27a))
         => p(ap(c_2Ewellorder_2Ewellfounded(A_27a),f1018(A_27a,V0w))) ) ) ).

fof(conj_thm_2Ewellorder_2EWIN__WF2,conjecture,
    ! [A_27a] :
      ( ne(A_27a)
     => ! [V0w] :
          ( mem(V0w,ty_2Ewellorder_2Ewellorder(A_27a))
         => p(ap(c_2Erelation_2EWF(A_27a),f1020(A_27a,V0w))) ) ) ).

%------------------------------------------------------------------------------
