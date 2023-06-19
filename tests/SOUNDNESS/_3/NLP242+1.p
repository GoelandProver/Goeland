%--------------------------------------------------------------------------
% File     : NLP242+1 : TPTP v8.1.2. Released v2.4.0.
% Domain   : Natural Language Processing
% Problem  : Vincent believes that every man smokes, problem 23
% Version  : [Bos00b] axioms.
% English  : Eliminating inconsistent interpretations in the statement
%            "Vincent believes that every man smokes. Jules is a man.
%            Vincent believes that jules smokes."

% Refs     : [Bos00a] Bos (2000), DORIS: Discourse Oriented Representation a
%            [Bos00b] Bos (2000), Applied Theorem Proving - Natural Language
% Source   : [Bos00b]
% Names    : doris219 [Bos00b]

% Status   : CounterSatisfiable
% Rating   : 0.00 v7.5.0, 0.20 v7.4.0, 0.00 v6.1.0, 0.09 v6.0.0, 0.15 v5.5.0, 0.00 v4.1.0, 0.40 v4.0.1, 0.20 v4.0.0, 0.00 v3.4.0, 0.17 v3.2.0, 0.00 v3.1.0, 0.17 v2.6.0, 0.00 v2.4.0
% Syntax   : Number of formulae    :   72 (   0 unt;   0 def)
%            Number of atoms       :  229 (   3 equ)
%            Maximal formula atoms :   42 (   3 avg)
%            Number of connectives :  164 (   7   ~;   0   |;  85   &)
%                                         (   0 <=>;  72  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   53 (   6 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :   37 (  36 usr;   0 prp; 1-4 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :  205 ( 189   !;  16   ?)
% SPC      : FOF_CSA_RFO_SEQ

% Comments :
%--------------------------------------------------------------------------
fof(ax1,axiom,
    ! [U,V] :
      ( jules_forename(U,V)
     => forename(U,V) ) ).

fof(ax2,axiom,
    ! [U,V] :
      ( vincent_forename(U,V)
     => forename(U,V) ) ).

fof(ax3,axiom,
    ! [U,V] :
      ( relname(U,V)
     => relation(U,V) ) ).

fof(ax4,axiom,
    ! [U,V] :
      ( forename(U,V)
     => relname(U,V) ) ).

fof(ax5,axiom,
    ! [U,V] :
      ( man(U,V)
     => male(U,V) ) ).

fof(ax6,axiom,
    ! [U,V] :
      ( human_person(U,V)
     => animate(U,V) ) ).

fof(ax7,axiom,
    ! [U,V] :
      ( human_person(U,V)
     => human(U,V) ) ).

fof(ax8,axiom,
    ! [U,V] :
      ( organism(U,V)
     => living(U,V) ) ).

fof(ax9,axiom,
    ! [U,V] :
      ( organism(U,V)
     => impartial(U,V) ) ).

fof(ax10,axiom,
    ! [U,V] :
      ( entity(U,V)
     => existent(U,V) ) ).

fof(ax11,axiom,
    ! [U,V] :
      ( entity(U,V)
     => specific(U,V) ) ).

fof(ax12,axiom,
    ! [U,V] :
      ( entity(U,V)
     => thing(U,V) ) ).

fof(ax13,axiom,
    ! [U,V] :
      ( organism(U,V)
     => entity(U,V) ) ).

fof(ax14,axiom,
    ! [U,V] :
      ( human_person(U,V)
     => organism(U,V) ) ).

fof(ax15,axiom,
    ! [U,V] :
      ( man(U,V)
     => human_person(U,V) ) ).

fof(ax16,axiom,
    ! [U,V] :
      ( state(U,V)
     => event(U,V) ) ).

fof(ax17,axiom,
    ! [U,V] :
      ( state(U,V)
     => eventuality(U,V) ) ).

fof(ax18,axiom,
    ! [U,V] :
      ( abstraction(U,V)
     => unisex(U,V) ) ).

fof(ax19,axiom,
    ! [U,V] :
      ( abstraction(U,V)
     => general(U,V) ) ).

fof(ax20,axiom,
    ! [U,V] :
      ( abstraction(U,V)
     => nonhuman(U,V) ) ).

fof(ax21,axiom,
    ! [U,V] :
      ( abstraction(U,V)
     => thing(U,V) ) ).

fof(ax22,axiom,
    ! [U,V] :
      ( relation(U,V)
     => abstraction(U,V) ) ).

fof(ax23,axiom,
    ! [U,V] :
      ( proposition(U,V)
     => relation(U,V) ) ).

fof(ax24,axiom,
    ! [U,V] :
      ( eventuality(U,V)
     => unisex(U,V) ) ).

fof(ax25,axiom,
    ! [U,V] :
      ( eventuality(U,V)
     => nonexistent(U,V) ) ).

fof(ax26,axiom,
    ! [U,V] :
      ( eventuality(U,V)
     => specific(U,V) ) ).

fof(ax27,axiom,
    ! [U,V] :
      ( thing(U,V)
     => singleton(U,V) ) ).

fof(ax28,axiom,
    ! [U,V] :
      ( eventuality(U,V)
     => thing(U,V) ) ).

fof(ax29,axiom,
    ! [U,V] :
      ( event(U,V)
     => eventuality(U,V) ) ).

fof(ax30,axiom,
    ! [U,V] :
      ( smoke(U,V)
     => event(U,V) ) ).

fof(ax31,axiom,
    ! [U,V] :
      ( existent(U,V)
     => ~ nonexistent(U,V) ) ).

fof(ax32,axiom,
    ! [U,V] :
      ( nonhuman(U,V)
     => ~ human(U,V) ) ).

fof(ax33,axiom,
    ! [U,V] :
      ( specific(U,V)
     => ~ general(U,V) ) ).

fof(ax34,axiom,
    ! [U,V] :
      ( unisex(U,V)
     => ~ male(U,V) ) ).

fof(ax35,axiom,
    ! [U,V,W] :
      ( ( accessible_world(V,W)
        & jules_forename(V,U) )
     => jules_forename(W,U) ) ).

fof(ax36,axiom,
    ! [U,V,W,X] :
      ( ( accessible_world(W,X)
        & of(W,U,V) )
     => of(X,U,V) ) ).

fof(ax37,axiom,
    ! [U,V,W] :
      ( ( accessible_world(V,W)
        & vincent_forename(V,U) )
     => vincent_forename(W,U) ) ).

fof(ax38,axiom,
    ! [U,V,W] :
      ( ( accessible_world(V,W)
        & relname(V,U) )
     => relname(W,U) ) ).

fof(ax39,axiom,
    ! [U,V,W] :
      ( ( accessible_world(V,W)
        & forename(V,U) )
     => forename(W,U) ) ).

fof(ax40,axiom,
    ! [U,V,W] :
      ( ( accessible_world(V,W)
        & male(V,U) )
     => male(W,U) ) ).

fof(ax41,axiom,
    ! [U,V,W] :
      ( ( accessible_world(V,W)
        & animate(V,U) )
     => animate(W,U) ) ).

fof(ax42,axiom,
    ! [U,V,W] :
      ( ( accessible_world(V,W)
        & human(V,U) )
     => human(W,U) ) ).

fof(ax43,axiom,
    ! [U,V,W] :
      ( ( accessible_world(V,W)
        & living(V,U) )
     => living(W,U) ) ).

fof(ax44,axiom,
    ! [U,V,W] :
      ( ( accessible_world(V,W)
        & impartial(V,U) )
     => impartial(W,U) ) ).

fof(ax45,axiom,
    ! [U,V,W] :
      ( ( accessible_world(V,W)
        & existent(V,U) )
     => existent(W,U) ) ).

fof(ax46,axiom,
    ! [U,V,W] :
      ( ( accessible_world(V,W)
        & entity(V,U) )
     => entity(W,U) ) ).

fof(ax47,axiom,
    ! [U,V,W] :
      ( ( accessible_world(V,W)
        & organism(V,U) )
     => organism(W,U) ) ).

fof(ax48,axiom,
    ! [U,V,W] :
      ( ( accessible_world(V,W)
        & human_person(V,U) )
     => human_person(W,U) ) ).

fof(ax49,axiom,
    ! [U,V,W] :
      ( ( accessible_world(V,W)
        & man(V,U) )
     => man(W,U) ) ).

fof(ax50,axiom,
    ! [U,V,W] :
      ( ( accessible_world(V,W)
        & state(V,U) )
     => state(W,U) ) ).

fof(ax51,axiom,
    ! [U,V,W,X,Y] :
      ( ( accessible_world(X,Y)
        & be(X,U,V,W) )
     => be(Y,U,V,W) ) ).

fof(ax52,axiom,
    ! [U,V,W] :
      ( ( accessible_world(V,W)
        & general(V,U) )
     => general(W,U) ) ).

fof(ax53,axiom,
    ! [U,V,W] :
      ( ( accessible_world(V,W)
        & nonhuman(V,U) )
     => nonhuman(W,U) ) ).

fof(ax54,axiom,
    ! [U,V,W] :
      ( ( accessible_world(V,W)
        & abstraction(V,U) )
     => abstraction(W,U) ) ).

fof(ax55,axiom,
    ! [U,V,W] :
      ( ( accessible_world(V,W)
        & relation(V,U) )
     => relation(W,U) ) ).

fof(ax56,axiom,
    ! [U,V,W] :
      ( ( accessible_world(V,W)
        & proposition(V,U) )
     => proposition(W,U) ) ).

fof(ax57,axiom,
    ! [U,V,W,X] :
      ( ( accessible_world(W,X)
        & theme(W,U,V) )
     => theme(X,U,V) ) ).

fof(ax58,axiom,
    ! [U,V,W] :
      ( ( accessible_world(V,W)
        & think_believe_consider(V,U) )
     => think_believe_consider(W,U) ) ).

fof(ax59,axiom,
    ! [U,V,W,X] :
      ( ( accessible_world(W,X)
        & agent(W,U,V) )
     => agent(X,U,V) ) ).

fof(ax60,axiom,
    ! [U,V,W] :
      ( ( accessible_world(V,W)
        & present(V,U) )
     => present(W,U) ) ).

fof(ax61,axiom,
    ! [U,V,W] :
      ( ( accessible_world(V,W)
        & unisex(V,U) )
     => unisex(W,U) ) ).

fof(ax62,axiom,
    ! [U,V,W] :
      ( ( accessible_world(V,W)
        & nonexistent(V,U) )
     => nonexistent(W,U) ) ).

fof(ax63,axiom,
    ! [U,V,W] :
      ( ( accessible_world(V,W)
        & specific(V,U) )
     => specific(W,U) ) ).

fof(ax64,axiom,
    ! [U,V,W] :
      ( ( accessible_world(V,W)
        & singleton(V,U) )
     => singleton(W,U) ) ).

fof(ax65,axiom,
    ! [U,V,W] :
      ( ( accessible_world(V,W)
        & thing(V,U) )
     => thing(W,U) ) ).

fof(ax66,axiom,
    ! [U,V,W] :
      ( ( accessible_world(V,W)
        & eventuality(V,U) )
     => eventuality(W,U) ) ).

fof(ax67,axiom,
    ! [U,V,W] :
      ( ( accessible_world(V,W)
        & event(V,U) )
     => event(W,U) ) ).

fof(ax68,axiom,
    ! [U,V,W] :
      ( ( accessible_world(V,W)
        & smoke(V,U) )
     => smoke(W,U) ) ).

fof(ax69,axiom,
    ! [U,V,W] :
      ( ( entity(U,V)
        & forename(U,W)
        & of(U,W,V) )
     => ~ ? [X] :
            ( forename(U,X)
            & X != W
            & of(U,X,V) ) ) ).

fof(ax70,axiom,
    ! [U,V,W,X] :
      ( be(U,V,W,X)
     => W = X ) ).

fof(ax71,axiom,
    ! [U,V,W,X,Y,Z] :
      ( ( think_believe_consider(U,V)
        & proposition(U,Y)
        & theme(U,V,Y)
        & agent(U,V,X)
        & think_believe_consider(U,W)
        & proposition(U,Z)
        & theme(U,W,Z)
        & agent(U,W,X) )
     => Y = Z ) ).

fof(co1,conjecture,
    ~ ? [U] :
        ( actual_world(U)
        & ? [V,W,X,Y,Z,X1,X2,X3,X4,X5,X6,X7] :
            ( of(U,W,V)
            & man(U,V)
            & vincent_forename(U,W)
            & forename(U,W)
            & of(U,X,X4)
            & jules_forename(U,X)
            & forename(U,X)
            & of(U,Z,Y)
            & man(U,Y)
            & vincent_forename(U,Z)
            & forename(U,Z)
            & proposition(U,X2)
            & agent(U,X1,Y)
            & theme(U,X1,X2)
            & event(U,X1)
            & present(U,X1)
            & think_believe_consider(U,X1)
            & accessible_world(U,X2)
            & ! [X8] :
                ( man(X2,X8)
               => ? [X9] :
                    ( event(X2,X9)
                    & agent(X2,X9,X8)
                    & present(X2,X9)
                    & smoke(X2,X9) ) )
            & of(U,X3,X4)
            & man(U,X4)
            & jules_forename(U,X3)
            & forename(U,X3)
            & man(U,X4)
            & state(U,X5)
            & be(U,X5,X4,X4)
            & proposition(U,X7)
            & agent(U,X6,V)
            & theme(U,X6,X7)
            & event(U,X6)
            & present(U,X6)
            & think_believe_consider(U,X6)
            & accessible_world(U,X7)
            & ? [X10] :
                ( event(X7,X10)
                & agent(X7,X10,X4)
                & present(X7,X10)
                & smoke(X7,X10) ) ) ) ).

%--------------------------------------------------------------------------
