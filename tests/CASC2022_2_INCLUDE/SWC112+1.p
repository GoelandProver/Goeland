%--------------------------------------------------------------------------
% File     : SWC112+1 : TPTP v8.1.0. Released v2.4.0.
% Domain   : Software Creation
% Problem  : cond_ne_segment_total1_x_run_strict_ord_max2
% Version  : [Wei00] axioms.
% English  : Find components in a software library that match a given target
%            specification given in first-order logic. The components are
%            specified in first-order logic as well. The problem represents
%            a test of one library module specification against a target
%            specification.

% Refs     : [Wei00] Weidenbach (2000), Software Reuse of List Functions Ve
%          : [FSS98] Fischer et al. (1998), Deduction-Based Software Compon
% Source   : [Wei00]
% Names    : cond_ne_segment_total1_x_run_strict_ord_max2 [Wei00]

% Status   : Theorem
% Rating   : 0.42 v8.1.0, 0.44 v7.5.0, 0.50 v7.4.0, 0.30 v7.3.0, 0.41 v7.2.0, 0.38 v7.1.0, 0.43 v7.0.0, 0.33 v6.4.0, 0.42 v6.3.0, 0.46 v6.2.0, 0.52 v6.1.0, 0.53 v6.0.0, 0.52 v5.5.0, 0.59 v5.4.0, 0.61 v5.3.0, 0.63 v5.2.0, 0.55 v5.1.0, 0.57 v5.0.0, 0.50 v4.1.0, 0.52 v4.0.1, 0.57 v4.0.0, 0.54 v3.7.0, 0.55 v3.5.0, 0.53 v3.3.0, 0.43 v3.2.0, 0.36 v3.1.0, 0.67 v2.6.0, 0.50 v2.5.0, 0.33 v2.4.0
% Syntax   : Number of formulae    :   96 (   9 unt;   0 def)
%            Number of atoms       :  425 (  82 equ)
%            Maximal formula atoms :   31 (   4 avg)
%            Number of connectives :  360 (  31   ~;  17   |;  53   &)
%                                         (  26 <=>; 233  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   29 (   7 avg)
%            Maximal term depth    :    4 (   1 avg)
%            Number of predicates  :   20 (  19 usr;   0 prp; 1-2 aty)
%            Number of functors    :    5 (   5 usr;   1 con; 0-2 aty)
%            Number of variables   :  217 ( 196   !;  21   ?)
% SPC      : FOF_THM_RFO_SEQ

% Comments :
%--------------------------------------------------------------------------
%----Include list specification axioms
%--------------------------------------------------------------------------
% File     : SWC001+0 : TPTP v8.1.0. Released v2.4.0.
% Domain   : Software Creation
% Axioms   : List specification
% Version  : [Wei00] axioms.
% English  : Components in a software library specified in first-order logic

% Refs     : [Wei00] Weidenbach (2000), Software Reuse of List Functions Ve
%          : [FSS98] Fischer et al. (1998), Deduction-Based Software Compon
% Source   : [Wei00]
% Names    :

% Status   : Satisfiable
% Syntax   : Number of formulae    :   95 (   9 unt;   0 def)
%            Number of atoms       :  394 (  71 equ)
%            Maximal formula atoms :   10 (   4 avg)
%            Number of connectives :  323 (  24   ~;   8   |;  38   &)
%                                         (  26 <=>; 227  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   17 (   6 avg)
%            Maximal term depth    :    4 (   1 avg)
%            Number of predicates  :   20 (  19 usr;   0 prp; 1-2 aty)
%            Number of functors    :    5 (   5 usr;   1 con; 0-2 aty)
%            Number of variables   :  203 ( 190   !;  13   ?)
% SPC      : 

% Comments :
%--------------------------------------------------------------------------
fof(ax1,axiom,
    ! [U] :
      ( ssItem(U)
     => ! [V] :
          ( ssItem(V)
         => ( neq(U,V)
          <=> U != V ) ) ) ).

fof(ax2,axiom,
    ? [U] :
      ( ssItem(U)
      & ? [V] :
          ( ssItem(V)
          & U != V ) ) ).

fof(ax3,axiom,
    ! [U] :
      ( ssList(U)
     => ! [V] :
          ( ssItem(V)
         => ( memberP(U,V)
          <=> ? [W] :
                ( ssList(W)
                & ? [X] :
                    ( ssList(X)
                    & app(W,cons(V,X)) = U ) ) ) ) ) ).

fof(ax4,axiom,
    ! [U] :
      ( ssList(U)
     => ( singletonP(U)
      <=> ? [V] :
            ( ssItem(V)
            & cons(V,nil) = U ) ) ) ).

fof(ax5,axiom,
    ! [U] :
      ( ssList(U)
     => ! [V] :
          ( ssList(V)
         => ( frontsegP(U,V)
          <=> ? [W] :
                ( ssList(W)
                & app(V,W) = U ) ) ) ) ).

fof(ax6,axiom,
    ! [U] :
      ( ssList(U)
     => ! [V] :
          ( ssList(V)
         => ( rearsegP(U,V)
          <=> ? [W] :
                ( ssList(W)
                & app(W,V) = U ) ) ) ) ).

fof(ax7,axiom,
    ! [U] :
      ( ssList(U)
     => ! [V] :
          ( ssList(V)
         => ( segmentP(U,V)
          <=> ? [W] :
                ( ssList(W)
                & ? [X] :
                    ( ssList(X)
                    & app(app(W,V),X) = U ) ) ) ) ) ).

fof(ax8,axiom,
    ! [U] :
      ( ssList(U)
     => ( cyclefreeP(U)
      <=> ! [V] :
            ( ssItem(V)
           => ! [W] :
                ( ssItem(W)
               => ! [X] :
                    ( ssList(X)
                   => ! [Y] :
                        ( ssList(Y)
                       => ! [Z] :
                            ( ssList(Z)
                           => ( app(app(X,cons(V,Y)),cons(W,Z)) = U
                             => ~ ( leq(V,W)
                                  & leq(W,V) ) ) ) ) ) ) ) ) ) ).

fof(ax9,axiom,
    ! [U] :
      ( ssList(U)
     => ( totalorderP(U)
      <=> ! [V] :
            ( ssItem(V)
           => ! [W] :
                ( ssItem(W)
               => ! [X] :
                    ( ssList(X)
                   => ! [Y] :
                        ( ssList(Y)
                       => ! [Z] :
                            ( ssList(Z)
                           => ( app(app(X,cons(V,Y)),cons(W,Z)) = U
                             => ( leq(V,W)
                                | leq(W,V) ) ) ) ) ) ) ) ) ) ).

fof(ax10,axiom,
    ! [U] :
      ( ssList(U)
     => ( strictorderP(U)
      <=> ! [V] :
            ( ssItem(V)
           => ! [W] :
                ( ssItem(W)
               => ! [X] :
                    ( ssList(X)
                   => ! [Y] :
                        ( ssList(Y)
                       => ! [Z] :
                            ( ssList(Z)
                           => ( app(app(X,cons(V,Y)),cons(W,Z)) = U
                             => ( lt(V,W)
                                | lt(W,V) ) ) ) ) ) ) ) ) ) ).

fof(ax11,axiom,
    ! [U] :
      ( ssList(U)
     => ( totalorderedP(U)
      <=> ! [V] :
            ( ssItem(V)
           => ! [W] :
                ( ssItem(W)
               => ! [X] :
                    ( ssList(X)
                   => ! [Y] :
                        ( ssList(Y)
                       => ! [Z] :
                            ( ssList(Z)
                           => ( app(app(X,cons(V,Y)),cons(W,Z)) = U
                             => leq(V,W) ) ) ) ) ) ) ) ) ).

fof(ax12,axiom,
    ! [U] :
      ( ssList(U)
     => ( strictorderedP(U)
      <=> ! [V] :
            ( ssItem(V)
           => ! [W] :
                ( ssItem(W)
               => ! [X] :
                    ( ssList(X)
                   => ! [Y] :
                        ( ssList(Y)
                       => ! [Z] :
                            ( ssList(Z)
                           => ( app(app(X,cons(V,Y)),cons(W,Z)) = U
                             => lt(V,W) ) ) ) ) ) ) ) ) ).

fof(ax13,axiom,
    ! [U] :
      ( ssList(U)
     => ( duplicatefreeP(U)
      <=> ! [V] :
            ( ssItem(V)
           => ! [W] :
                ( ssItem(W)
               => ! [X] :
                    ( ssList(X)
                   => ! [Y] :
                        ( ssList(Y)
                       => ! [Z] :
                            ( ssList(Z)
                           => ( app(app(X,cons(V,Y)),cons(W,Z)) = U
                             => V != W ) ) ) ) ) ) ) ) ).

fof(ax14,axiom,
    ! [U] :
      ( ssList(U)
     => ( equalelemsP(U)
      <=> ! [V] :
            ( ssItem(V)
           => ! [W] :
                ( ssItem(W)
               => ! [X] :
                    ( ssList(X)
                   => ! [Y] :
                        ( ssList(Y)
                       => ( app(X,cons(V,cons(W,Y))) = U
                         => V = W ) ) ) ) ) ) ) ).

fof(ax15,axiom,
    ! [U] :
      ( ssList(U)
     => ! [V] :
          ( ssList(V)
         => ( neq(U,V)
          <=> U != V ) ) ) ).

fof(ax16,axiom,
    ! [U] :
      ( ssList(U)
     => ! [V] :
          ( ssItem(V)
         => ssList(cons(V,U)) ) ) ).

fof(ax17,axiom,
    ssList(nil) ).

fof(ax18,axiom,
    ! [U] :
      ( ssList(U)
     => ! [V] :
          ( ssItem(V)
         => cons(V,U) != U ) ) ).

fof(ax19,axiom,
    ! [U] :
      ( ssList(U)
     => ! [V] :
          ( ssList(V)
         => ! [W] :
              ( ssItem(W)
             => ! [X] :
                  ( ssItem(X)
                 => ( cons(W,U) = cons(X,V)
                   => ( W = X
                      & V = U ) ) ) ) ) ) ).

fof(ax20,axiom,
    ! [U] :
      ( ssList(U)
     => ( nil = U
        | ? [V] :
            ( ssList(V)
            & ? [W] :
                ( ssItem(W)
                & cons(W,V) = U ) ) ) ) ).

fof(ax21,axiom,
    ! [U] :
      ( ssList(U)
     => ! [V] :
          ( ssItem(V)
         => nil != cons(V,U) ) ) ).

fof(ax22,axiom,
    ! [U] :
      ( ssList(U)
     => ( nil != U
       => ssItem(hd(U)) ) ) ).

fof(ax23,axiom,
    ! [U] :
      ( ssList(U)
     => ! [V] :
          ( ssItem(V)
         => hd(cons(V,U)) = V ) ) ).

fof(ax24,axiom,
    ! [U] :
      ( ssList(U)
     => ( nil != U
       => ssList(tl(U)) ) ) ).

fof(ax25,axiom,
    ! [U] :
      ( ssList(U)
     => ! [V] :
          ( ssItem(V)
         => tl(cons(V,U)) = U ) ) ).

fof(ax26,axiom,
    ! [U] :
      ( ssList(U)
     => ! [V] :
          ( ssList(V)
         => ssList(app(U,V)) ) ) ).

fof(ax27,axiom,
    ! [U] :
      ( ssList(U)
     => ! [V] :
          ( ssList(V)
         => ! [W] :
              ( ssItem(W)
             => cons(W,app(V,U)) = app(cons(W,V),U) ) ) ) ).

fof(ax28,axiom,
    ! [U] :
      ( ssList(U)
     => app(nil,U) = U ) ).

fof(ax29,axiom,
    ! [U] :
      ( ssItem(U)
     => ! [V] :
          ( ssItem(V)
         => ( ( leq(U,V)
              & leq(V,U) )
           => U = V ) ) ) ).

fof(ax30,axiom,
    ! [U] :
      ( ssItem(U)
     => ! [V] :
          ( ssItem(V)
         => ! [W] :
              ( ssItem(W)
             => ( ( leq(U,V)
                  & leq(V,W) )
               => leq(U,W) ) ) ) ) ).

fof(ax31,axiom,
    ! [U] :
      ( ssItem(U)
     => leq(U,U) ) ).

fof(ax32,axiom,
    ! [U] :
      ( ssItem(U)
     => ! [V] :
          ( ssItem(V)
         => ( geq(U,V)
          <=> leq(V,U) ) ) ) ).

fof(ax33,axiom,
    ! [U] :
      ( ssItem(U)
     => ! [V] :
          ( ssItem(V)
         => ( lt(U,V)
           => ~ lt(V,U) ) ) ) ).

fof(ax34,axiom,
    ! [U] :
      ( ssItem(U)
     => ! [V] :
          ( ssItem(V)
         => ! [W] :
              ( ssItem(W)
             => ( ( lt(U,V)
                  & lt(V,W) )
               => lt(U,W) ) ) ) ) ).

fof(ax35,axiom,
    ! [U] :
      ( ssItem(U)
     => ! [V] :
          ( ssItem(V)
         => ( gt(U,V)
          <=> lt(V,U) ) ) ) ).

fof(ax36,axiom,
    ! [U] :
      ( ssItem(U)
     => ! [V] :
          ( ssList(V)
         => ! [W] :
              ( ssList(W)
             => ( memberP(app(V,W),U)
              <=> ( memberP(V,U)
                  | memberP(W,U) ) ) ) ) ) ).

fof(ax37,axiom,
    ! [U] :
      ( ssItem(U)
     => ! [V] :
          ( ssItem(V)
         => ! [W] :
              ( ssList(W)
             => ( memberP(cons(V,W),U)
              <=> ( U = V
                  | memberP(W,U) ) ) ) ) ) ).

fof(ax38,axiom,
    ! [U] :
      ( ssItem(U)
     => ~ memberP(nil,U) ) ).

fof(ax39,axiom,
    ~ singletonP(nil) ).

fof(ax40,axiom,
    ! [U] :
      ( ssList(U)
     => ! [V] :
          ( ssList(V)
         => ! [W] :
              ( ssList(W)
             => ( ( frontsegP(U,V)
                  & frontsegP(V,W) )
               => frontsegP(U,W) ) ) ) ) ).

fof(ax41,axiom,
    ! [U] :
      ( ssList(U)
     => ! [V] :
          ( ssList(V)
         => ( ( frontsegP(U,V)
              & frontsegP(V,U) )
           => U = V ) ) ) ).

fof(ax42,axiom,
    ! [U] :
      ( ssList(U)
     => frontsegP(U,U) ) ).

fof(ax43,axiom,
    ! [U] :
      ( ssList(U)
     => ! [V] :
          ( ssList(V)
         => ! [W] :
              ( ssList(W)
             => ( frontsegP(U,V)
               => frontsegP(app(U,W),V) ) ) ) ) ).

fof(ax44,axiom,
    ! [U] :
      ( ssItem(U)
     => ! [V] :
          ( ssItem(V)
         => ! [W] :
              ( ssList(W)
             => ! [X] :
                  ( ssList(X)
                 => ( frontsegP(cons(U,W),cons(V,X))
                  <=> ( U = V
                      & frontsegP(W,X) ) ) ) ) ) ) ).

fof(ax45,axiom,
    ! [U] :
      ( ssList(U)
     => frontsegP(U,nil) ) ).

fof(ax46,axiom,
    ! [U] :
      ( ssList(U)
     => ( frontsegP(nil,U)
      <=> nil = U ) ) ).

fof(ax47,axiom,
    ! [U] :
      ( ssList(U)
     => ! [V] :
          ( ssList(V)
         => ! [W] :
              ( ssList(W)
             => ( ( rearsegP(U,V)
                  & rearsegP(V,W) )
               => rearsegP(U,W) ) ) ) ) ).

fof(ax48,axiom,
    ! [U] :
      ( ssList(U)
     => ! [V] :
          ( ssList(V)
         => ( ( rearsegP(U,V)
              & rearsegP(V,U) )
           => U = V ) ) ) ).

fof(ax49,axiom,
    ! [U] :
      ( ssList(U)
     => rearsegP(U,U) ) ).

fof(ax50,axiom,
    ! [U] :
      ( ssList(U)
     => ! [V] :
          ( ssList(V)
         => ! [W] :
              ( ssList(W)
             => ( rearsegP(U,V)
               => rearsegP(app(W,U),V) ) ) ) ) ).

fof(ax51,axiom,
    ! [U] :
      ( ssList(U)
     => rearsegP(U,nil) ) ).

fof(ax52,axiom,
    ! [U] :
      ( ssList(U)
     => ( rearsegP(nil,U)
      <=> nil = U ) ) ).

fof(ax53,axiom,
    ! [U] :
      ( ssList(U)
     => ! [V] :
          ( ssList(V)
         => ! [W] :
              ( ssList(W)
             => ( ( segmentP(U,V)
                  & segmentP(V,W) )
               => segmentP(U,W) ) ) ) ) ).

fof(ax54,axiom,
    ! [U] :
      ( ssList(U)
     => ! [V] :
          ( ssList(V)
         => ( ( segmentP(U,V)
              & segmentP(V,U) )
           => U = V ) ) ) ).

fof(ax55,axiom,
    ! [U] :
      ( ssList(U)
     => segmentP(U,U) ) ).

fof(ax56,axiom,
    ! [U] :
      ( ssList(U)
     => ! [V] :
          ( ssList(V)
         => ! [W] :
              ( ssList(W)
             => ! [X] :
                  ( ssList(X)
                 => ( segmentP(U,V)
                   => segmentP(app(app(W,U),X),V) ) ) ) ) ) ).

fof(ax57,axiom,
    ! [U] :
      ( ssList(U)
     => segmentP(U,nil) ) ).

fof(ax58,axiom,
    ! [U] :
      ( ssList(U)
     => ( segmentP(nil,U)
      <=> nil = U ) ) ).

fof(ax59,axiom,
    ! [U] :
      ( ssItem(U)
     => cyclefreeP(cons(U,nil)) ) ).

fof(ax60,axiom,
    cyclefreeP(nil) ).

fof(ax61,axiom,
    ! [U] :
      ( ssItem(U)
     => totalorderP(cons(U,nil)) ) ).

fof(ax62,axiom,
    totalorderP(nil) ).

fof(ax63,axiom,
    ! [U] :
      ( ssItem(U)
     => strictorderP(cons(U,nil)) ) ).

fof(ax64,axiom,
    strictorderP(nil) ).

fof(ax65,axiom,
    ! [U] :
      ( ssItem(U)
     => totalorderedP(cons(U,nil)) ) ).

fof(ax66,axiom,
    totalorderedP(nil) ).

fof(ax67,axiom,
    ! [U] :
      ( ssItem(U)
     => ! [V] :
          ( ssList(V)
         => ( totalorderedP(cons(U,V))
          <=> ( nil = V
              | ( nil != V
                & totalorderedP(V)
                & leq(U,hd(V)) ) ) ) ) ) ).

fof(ax68,axiom,
    ! [U] :
      ( ssItem(U)
     => strictorderedP(cons(U,nil)) ) ).

fof(ax69,axiom,
    strictorderedP(nil) ).

fof(ax70,axiom,
    ! [U] :
      ( ssItem(U)
     => ! [V] :
          ( ssList(V)
         => ( strictorderedP(cons(U,V))
          <=> ( nil = V
              | ( nil != V
                & strictorderedP(V)
                & lt(U,hd(V)) ) ) ) ) ) ).

fof(ax71,axiom,
    ! [U] :
      ( ssItem(U)
     => duplicatefreeP(cons(U,nil)) ) ).

fof(ax72,axiom,
    duplicatefreeP(nil) ).

fof(ax73,axiom,
    ! [U] :
      ( ssItem(U)
     => equalelemsP(cons(U,nil)) ) ).

fof(ax74,axiom,
    equalelemsP(nil) ).

fof(ax75,axiom,
    ! [U] :
      ( ssList(U)
     => ( nil != U
       => ? [V] :
            ( ssItem(V)
            & hd(U) = V ) ) ) ).

fof(ax76,axiom,
    ! [U] :
      ( ssList(U)
     => ( nil != U
       => ? [V] :
            ( ssList(V)
            & tl(U) = V ) ) ) ).

fof(ax77,axiom,
    ! [U] :
      ( ssList(U)
     => ! [V] :
          ( ssList(V)
         => ( ( nil != V
              & nil != U
              & hd(V) = hd(U)
              & tl(V) = tl(U) )
           => V = U ) ) ) ).

fof(ax78,axiom,
    ! [U] :
      ( ssList(U)
     => ( nil != U
       => cons(hd(U),tl(U)) = U ) ) ).

fof(ax79,axiom,
    ! [U] :
      ( ssList(U)
     => ! [V] :
          ( ssList(V)
         => ! [W] :
              ( ssList(W)
             => ( app(W,V) = app(U,V)
               => W = U ) ) ) ) ).

fof(ax80,axiom,
    ! [U] :
      ( ssList(U)
     => ! [V] :
          ( ssList(V)
         => ! [W] :
              ( ssList(W)
             => ( app(V,W) = app(V,U)
               => W = U ) ) ) ) ).

fof(ax81,axiom,
    ! [U] :
      ( ssList(U)
     => ! [V] :
          ( ssItem(V)
         => cons(V,U) = app(cons(V,nil),U) ) ) ).

fof(ax82,axiom,
    ! [U] :
      ( ssList(U)
     => ! [V] :
          ( ssList(V)
         => ! [W] :
              ( ssList(W)
             => app(app(U,V),W) = app(U,app(V,W)) ) ) ) ).

fof(ax83,axiom,
    ! [U] :
      ( ssList(U)
     => ! [V] :
          ( ssList(V)
         => ( nil = app(U,V)
          <=> ( nil = V
              & nil = U ) ) ) ) ).

fof(ax84,axiom,
    ! [U] :
      ( ssList(U)
     => app(U,nil) = U ) ).

fof(ax85,axiom,
    ! [U] :
      ( ssList(U)
     => ! [V] :
          ( ssList(V)
         => ( nil != U
           => hd(app(U,V)) = hd(U) ) ) ) ).

fof(ax86,axiom,
    ! [U] :
      ( ssList(U)
     => ! [V] :
          ( ssList(V)
         => ( nil != U
           => tl(app(U,V)) = app(tl(U),V) ) ) ) ).

fof(ax87,axiom,
    ! [U] :
      ( ssItem(U)
     => ! [V] :
          ( ssItem(V)
         => ( ( geq(U,V)
              & geq(V,U) )
           => U = V ) ) ) ).

fof(ax88,axiom,
    ! [U] :
      ( ssItem(U)
     => ! [V] :
          ( ssItem(V)
         => ! [W] :
              ( ssItem(W)
             => ( ( geq(U,V)
                  & geq(V,W) )
               => geq(U,W) ) ) ) ) ).

fof(ax89,axiom,
    ! [U] :
      ( ssItem(U)
     => geq(U,U) ) ).

fof(ax90,axiom,
    ! [U] :
      ( ssItem(U)
     => ~ lt(U,U) ) ).

fof(ax91,axiom,
    ! [U] :
      ( ssItem(U)
     => ! [V] :
          ( ssItem(V)
         => ! [W] :
              ( ssItem(W)
             => ( ( leq(U,V)
                  & lt(V,W) )
               => lt(U,W) ) ) ) ) ).

fof(ax92,axiom,
    ! [U] :
      ( ssItem(U)
     => ! [V] :
          ( ssItem(V)
         => ( leq(U,V)
           => ( U = V
              | lt(U,V) ) ) ) ) ).

fof(ax93,axiom,
    ! [U] :
      ( ssItem(U)
     => ! [V] :
          ( ssItem(V)
         => ( lt(U,V)
          <=> ( U != V
              & leq(U,V) ) ) ) ) ).

fof(ax94,axiom,
    ! [U] :
      ( ssItem(U)
     => ! [V] :
          ( ssItem(V)
         => ( gt(U,V)
           => ~ gt(V,U) ) ) ) ).

fof(ax95,axiom,
    ! [U] :
      ( ssItem(U)
     => ! [V] :
          ( ssItem(V)
         => ! [W] :
              ( ssItem(W)
             => ( ( gt(U,V)
                  & gt(V,W) )
               => gt(U,W) ) ) ) ) ).

%--------------------------------------------------------------------------

%--------------------------------------------------------------------------
fof(co1,conjecture,
    ! [U] :
      ( ssList(U)
     => ! [V] :
          ( ssList(V)
         => ! [W] :
              ( ssList(W)
             => ! [X] :
                  ( ssList(X)
                 => ( V != X
                    | U != W
                    | ! [Y] :
                        ( ssList(Y)
                       => ! [Z] :
                            ( ssList(Z)
                           => ( app(app(Y,W),Z) != X
                              | ~ strictorderedP(W)
                              | ? [X1] :
                                  ( ssItem(X1)
                                  & ? [X2] :
                                      ( ssList(X2)
                                      & app(X2,cons(X1,nil)) = Y
                                      & ? [X3] :
                                          ( ssItem(X3)
                                          & ? [X4] :
                                              ( ssList(X4)
                                              & app(cons(X3,nil),X4) = W
                                              & lt(X1,X3) ) ) ) )
                              | ? [X5] :
                                  ( ssItem(X5)
                                  & ? [X6] :
                                      ( ssList(X6)
                                      & app(cons(X5,nil),X6) = Z
                                      & ? [X7] :
                                          ( ssItem(X7)
                                          & ? [X8] :
                                              ( ssList(X8)
                                              & app(X8,cons(X7,nil)) = W
                                              & lt(X7,X5) ) ) ) ) ) ) )
                    | ( nil != X
                      & nil = W )
                    | ( ( nil != V
                        | nil = U )
                      & ( ~ neq(V,nil)
                        | ( neq(U,nil)
                          & segmentP(V,U) ) ) ) ) ) ) ) ) ).

%--------------------------------------------------------------------------
