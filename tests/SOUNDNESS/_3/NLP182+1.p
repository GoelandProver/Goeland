%--------------------------------------------------------------------------
% File     : NLP182+1 : TPTP v8.1.2. Released v2.4.0.
% Domain   : Natural Language Processing
% Problem  : An old dirty white Chevy, problem 69
% Version  : [Bos00b] axioms.
% English  : Eliminating non-informative interpretations in the statement
%            "An old dirty white chevy barrels down a lonely street in
%            hollywood. Two young fellas are in the front seat. They are
%            wearing cheap black coats."

% Refs     : [Bos00a] Bos (2000), DORIS: Discourse Oriented Representation a
%            [Bos00b] Bos (2000), Applied Theorem Proving - Natural Language
% Source   : [Bos00b]
% Names    : doris159 [Bos00b]

% Status   : CounterSatisfiable
% Rating   : 0.00 v7.5.0, 0.20 v7.4.0, 0.00 v6.2.0, 0.36 v6.0.0, 0.38 v5.4.0, 0.43 v5.2.0, 0.33 v5.0.0, 0.29 v4.1.0, 0.40 v4.0.1, 0.20 v4.0.0, 0.00 v3.5.0, 0.33 v3.3.0, 0.17 v3.2.0, 0.00 v3.1.0, 0.50 v2.7.0, 0.67 v2.6.0, 0.50 v2.5.0, 0.67 v2.4.0
% Syntax   : Number of formulae    :   67 (   1 unt;   0 def)
%            Number of atoms       :  210 (   6 equ)
%            Maximal formula atoms :   68 (   3 avg)
%            Number of connectives :  159 (  16   ~;   1   |;  69   &)
%                                         (   1 <=>;  72  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   47 (   5 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :   67 (  66 usr;   0 prp; 1-4 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :  169 ( 144   !;  25   ?)
% SPC      : FOF_CSA_RFO_SEQ

% Comments :
%--------------------------------------------------------------------------
fof(ax1,axiom,
    ! [U,V] :
      ( furniture(U,V)
     => instrumentality(U,V) ) ).

fof(ax2,axiom,
    ! [U,V] :
      ( seat(U,V)
     => furniture(U,V) ) ).

fof(ax3,axiom,
    ! [U,V] :
      ( frontseat(U,V)
     => seat(U,V) ) ).

fof(ax4,axiom,
    ! [U,V] :
      ( instrumentality(U,V)
     => artifact(U,V) ) ).

fof(ax5,axiom,
    ! [U,V] :
      ( transport(U,V)
     => instrumentality(U,V) ) ).

fof(ax6,axiom,
    ! [U,V] :
      ( vehicle(U,V)
     => transport(U,V) ) ).

fof(ax7,axiom,
    ! [U,V] :
      ( car(U,V)
     => vehicle(U,V) ) ).

fof(ax8,axiom,
    ! [U,V] :
      ( chevy(U,V)
     => car(U,V) ) ).

fof(ax9,axiom,
    ! [U,V] :
      ( location(U,V)
     => object(U,V) ) ).

fof(ax10,axiom,
    ! [U,V] :
      ( city(U,V)
     => location(U,V) ) ).

fof(ax11,axiom,
    ! [U,V] :
      ( hollywood_placename(U,V)
     => placename(U,V) ) ).

fof(ax12,axiom,
    ! [U,V] :
      ( abstraction(U,V)
     => unisex(U,V) ) ).

fof(ax13,axiom,
    ! [U,V] :
      ( abstraction(U,V)
     => general(U,V) ) ).

fof(ax14,axiom,
    ! [U,V] :
      ( abstraction(U,V)
     => nonhuman(U,V) ) ).

fof(ax15,axiom,
    ! [U,V] :
      ( abstraction(U,V)
     => thing(U,V) ) ).

fof(ax16,axiom,
    ! [U,V] :
      ( relation(U,V)
     => abstraction(U,V) ) ).

fof(ax17,axiom,
    ! [U,V] :
      ( relname(U,V)
     => relation(U,V) ) ).

fof(ax18,axiom,
    ! [U,V] :
      ( placename(U,V)
     => relname(U,V) ) ).

fof(ax19,axiom,
    ! [U,V] :
      ( way(U,V)
     => artifact(U,V) ) ).

fof(ax20,axiom,
    ! [U,V] :
      ( street(U,V)
     => way(U,V) ) ).

fof(ax21,axiom,
    ! [U,V] :
      ( barrel(U,V)
     => event(U,V) ) ).

fof(ax22,axiom,
    ! [U,V] :
      ( state(U,V)
     => event(U,V) ) ).

fof(ax23,axiom,
    ! [U,V] :
      ( state(U,V)
     => eventuality(U,V) ) ).

fof(ax24,axiom,
    ! [U,V] :
      ( two(U,V)
     => group(U,V) ) ).

fof(ax25,axiom,
    ! [U,V] :
      ( man(U,V)
     => male(U,V) ) ).

fof(ax26,axiom,
    ! [U,V] :
      ( human_person(U,V)
     => animate(U,V) ) ).

fof(ax27,axiom,
    ! [U,V] :
      ( human_person(U,V)
     => human(U,V) ) ).

fof(ax28,axiom,
    ! [U,V] :
      ( organism(U,V)
     => living(U,V) ) ).

fof(ax29,axiom,
    ! [U,V] :
      ( organism(U,V)
     => impartial(U,V) ) ).

fof(ax30,axiom,
    ! [U,V] :
      ( organism(U,V)
     => entity(U,V) ) ).

fof(ax31,axiom,
    ! [U,V] :
      ( human_person(U,V)
     => organism(U,V) ) ).

fof(ax32,axiom,
    ! [U,V] :
      ( man(U,V)
     => human_person(U,V) ) ).

fof(ax33,axiom,
    ! [U,V] :
      ( fellow(U,V)
     => man(U,V) ) ).

fof(ax34,axiom,
    ! [U,V] :
      ( eventuality(U,V)
     => unisex(U,V) ) ).

fof(ax35,axiom,
    ! [U,V] :
      ( eventuality(U,V)
     => nonexistent(U,V) ) ).

fof(ax36,axiom,
    ! [U,V] :
      ( eventuality(U,V)
     => specific(U,V) ) ).

fof(ax37,axiom,
    ! [U,V] :
      ( eventuality(U,V)
     => thing(U,V) ) ).

fof(ax38,axiom,
    ! [U,V] :
      ( event(U,V)
     => eventuality(U,V) ) ).

fof(ax39,axiom,
    ! [U,V] :
      ( wear(U,V)
     => event(U,V) ) ).

fof(ax40,axiom,
    ! [U,V] :
      ( set(U,V)
     => multiple(U,V) ) ).

fof(ax41,axiom,
    ! [U,V] :
      ( group(U,V)
     => set(U,V) ) ).

fof(ax42,axiom,
    ! [U,V] :
      ( object(U,V)
     => unisex(U,V) ) ).

fof(ax43,axiom,
    ! [U,V] :
      ( object(U,V)
     => impartial(U,V) ) ).

fof(ax44,axiom,
    ! [U,V] :
      ( object(U,V)
     => nonliving(U,V) ) ).

fof(ax45,axiom,
    ! [U,V] :
      ( entity(U,V)
     => existent(U,V) ) ).

fof(ax46,axiom,
    ! [U,V] :
      ( entity(U,V)
     => specific(U,V) ) ).

fof(ax47,axiom,
    ! [U,V] :
      ( thing(U,V)
     => singleton(U,V) ) ).

fof(ax48,axiom,
    ! [U,V] :
      ( entity(U,V)
     => thing(U,V) ) ).

fof(ax49,axiom,
    ! [U,V] :
      ( object(U,V)
     => entity(U,V) ) ).

fof(ax50,axiom,
    ! [U,V] :
      ( artifact(U,V)
     => object(U,V) ) ).

fof(ax51,axiom,
    ! [U,V] :
      ( clothes(U,V)
     => artifact(U,V) ) ).

fof(ax52,axiom,
    ! [U,V] :
      ( coat(U,V)
     => clothes(U,V) ) ).

fof(ax53,axiom,
    ! [U,V] :
      ( animate(U,V)
     => ~ nonliving(U,V) ) ).

fof(ax54,axiom,
    ! [U,V] :
      ( existent(U,V)
     => ~ nonexistent(U,V) ) ).

fof(ax55,axiom,
    ! [U,V] :
      ( nonhuman(U,V)
     => ~ human(U,V) ) ).

fof(ax56,axiom,
    ! [U,V] :
      ( nonliving(U,V)
     => ~ living(U,V) ) ).

fof(ax57,axiom,
    ! [U,V] :
      ( singleton(U,V)
     => ~ multiple(U,V) ) ).

fof(ax58,axiom,
    ! [U,V] :
      ( specific(U,V)
     => ~ general(U,V) ) ).

fof(ax59,axiom,
    ! [U,V] :
      ( unisex(U,V)
     => ~ male(U,V) ) ).

fof(ax60,axiom,
    ! [U,V] :
      ( white(U,V)
     => ~ black(U,V) ) ).

fof(ax61,axiom,
    ! [U,V] :
      ( young(U,V)
     => ~ old(U,V) ) ).

fof(ax62,axiom,
    ! [U,V,W] :
      ( ( entity(U,V)
        & placename(U,W)
        & of(U,W,V) )
     => ~ ? [X] :
            ( placename(U,X)
            & X != W
            & of(U,X,V) ) ) ).

fof(ax63,axiom,
    ! [U,V,W,X] :
      ( be(U,V,W,X)
     => W = X ) ).

fof(ax64,axiom,
    ! [U,V] :
      ( two(U,V)
    <=> ? [W] :
          ( member(U,W,V)
          & ? [X] :
              ( member(U,X,V)
              & X != W
              & ! [Y] :
                  ( member(U,Y,V)
                 => ( Y = X
                    | Y = W ) ) ) ) ) ).

fof(ax65,axiom,
    ! [U,V,W,X] :
      ( ( nonreflexive(U,V)
        & agent(U,V,W)
        & patient(U,V,X) )
     => W != X ) ).

fof(ax66,axiom,
    ! [U] :
      ~ ? [V] : member(U,V,V) ).

fof(co1,conjecture,
    ~ ( ? [U] :
          ( actual_world(U)
          & ? [V,W,X,Y,Z,X1] :
              ( frontseat(U,Y)
              & of(U,W,V)
              & city(U,V)
              & hollywood_placename(U,W)
              & placename(U,W)
              & chevy(U,X)
              & white(U,X)
              & dirty(U,X)
              & old(U,X)
              & street(U,Y)
              & lonely(U,Y)
              & event(U,Z)
              & agent(U,Z,X)
              & present(U,Z)
              & barrel(U,Z)
              & down(U,Z,Y)
              & in(U,Z,V)
              & ! [X2] :
                  ( member(U,X2,X1)
                 => ? [X3,X4] :
                      ( state(U,X3)
                      & be(U,X3,X2,X4)
                      & in(U,X4,Y) ) )
              & two(U,X1)
              & group(U,X1)
              & ! [X5] :
                  ( member(U,X5,X1)
                 => ( fellow(U,X5)
                    & young(U,X5) ) ) ) )
      & ~ ? [X6] :
            ( actual_world(X6)
            & ? [X7,V,W,X,Y,Z,X1,X8] :
                ( group(X6,X7)
                & frontseat(X6,Y)
                & of(X6,W,V)
                & city(X6,V)
                & hollywood_placename(X6,W)
                & placename(X6,W)
                & chevy(X6,X)
                & white(X6,X)
                & dirty(X6,X)
                & old(X6,X)
                & street(X6,Y)
                & lonely(X6,Y)
                & event(X6,Z)
                & agent(X6,Z,X)
                & present(X6,Z)
                & barrel(X6,Z)
                & down(X6,Z,Y)
                & in(X6,Z,V)
                & ! [X2] :
                    ( member(X6,X2,X1)
                   => ? [X3,X4] :
                        ( state(X6,X3)
                        & be(X6,X3,X2,X4)
                        & in(X6,X4,Y) ) )
                & two(X6,X1)
                & group(X6,X1)
                & ! [X5] :
                    ( member(X6,X5,X1)
                   => ( fellow(X6,X5)
                      & young(X6,X5) ) )
                & ! [X9] :
                    ( member(X6,X9,X8)
                   => ! [X10] :
                        ( member(X6,X10,X7)
                       => ? [X11] :
                            ( event(X6,X11)
                            & agent(X6,X11,X10)
                            & patient(X6,X11,X9)
                            & present(X6,X11)
                            & nonreflexive(X6,X11)
                            & wear(X6,X11) ) ) )
                & group(X6,X8)
                & ! [X12] :
                    ( member(X6,X12,X8)
                   => ( coat(X6,X12)
                      & black(X6,X12)
                      & cheap(X6,X12) ) ) ) ) ) ).

%--------------------------------------------------------------------------
