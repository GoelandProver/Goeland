%--------------------------------------------------------------------------
% File     : NLP218+1 : TPTP v8.1.2. Released v2.4.0.
% Domain   : Natural Language Processing
% Problem  : An old dirty white Chevy, problem 105
% Version  : [Bos00b] axioms.
% English  : Eliminating non-informative interpretations in the statement
%            "An old dirty white chevy barrels down a lonely street in
%            hollywood. Two young fellas are in the front seat. They are
%            wearing cheap black coats. Jules is behind the wheel."

% Refs     : [Bos00a] Bos (2000), DORIS: Discourse Oriented Representation a
%            [Bos00b] Bos (2000), Applied Theorem Proving - Natural Language
% Source   : [Bos00b]
% Names    : doris195 [Bos00b]

% Status   : CounterSatisfiable
% Rating   : 0.00 v7.5.0, 0.20 v7.4.0, 0.00 v6.2.0, 0.27 v6.0.0, 0.23 v5.5.0, 0.25 v5.4.0, 0.29 v5.2.0, 0.33 v5.0.0, 0.14 v4.1.0, 0.60 v4.0.1, 0.40 v4.0.0, 0.25 v3.7.0, 0.00 v3.4.0, 0.50 v3.3.0, 0.33 v3.2.0, 0.50 v3.1.0, 0.67 v2.7.0, 0.83 v2.6.0, 0.75 v2.5.0, 1.00 v2.4.0
% Syntax   : Number of formulae    :   72 (   1 unt;   0 def)
%            Number of atoms       :  244 (   7 equ)
%            Maximal formula atoms :   88 (   3 avg)
%            Number of connectives :  190 (  18   ~;   1   |;  90   &)
%                                         (   1 <=>;  80  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   52 (   5 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :   72 (  71 usr;   0 prp; 1-4 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :  187 ( 158   !;  29   ?)
% SPC      : FOF_CSA_RFO_SEQ

% Comments :
%--------------------------------------------------------------------------
fof(ax1,axiom,
    ! [U,V] :
      ( jules_forename(U,V)
     => forename(U,V) ) ).

fof(ax2,axiom,
    ! [U,V] :
      ( forename(U,V)
     => relname(U,V) ) ).

fof(ax3,axiom,
    ! [U,V] :
      ( furniture(U,V)
     => instrumentality(U,V) ) ).

fof(ax4,axiom,
    ! [U,V] :
      ( seat(U,V)
     => furniture(U,V) ) ).

fof(ax5,axiom,
    ! [U,V] :
      ( frontseat(U,V)
     => seat(U,V) ) ).

fof(ax6,axiom,
    ! [U,V] :
      ( location(U,V)
     => object(U,V) ) ).

fof(ax7,axiom,
    ! [U,V] :
      ( city(U,V)
     => location(U,V) ) ).

fof(ax8,axiom,
    ! [U,V] :
      ( hollywood_placename(U,V)
     => placename(U,V) ) ).

fof(ax9,axiom,
    ! [U,V] :
      ( abstraction(U,V)
     => unisex(U,V) ) ).

fof(ax10,axiom,
    ! [U,V] :
      ( abstraction(U,V)
     => general(U,V) ) ).

fof(ax11,axiom,
    ! [U,V] :
      ( abstraction(U,V)
     => nonhuman(U,V) ) ).

fof(ax12,axiom,
    ! [U,V] :
      ( abstraction(U,V)
     => thing(U,V) ) ).

fof(ax13,axiom,
    ! [U,V] :
      ( relation(U,V)
     => abstraction(U,V) ) ).

fof(ax14,axiom,
    ! [U,V] :
      ( relname(U,V)
     => relation(U,V) ) ).

fof(ax15,axiom,
    ! [U,V] :
      ( placename(U,V)
     => relname(U,V) ) ).

fof(ax16,axiom,
    ! [U,V] :
      ( transport(U,V)
     => instrumentality(U,V) ) ).

fof(ax17,axiom,
    ! [U,V] :
      ( vehicle(U,V)
     => transport(U,V) ) ).

fof(ax18,axiom,
    ! [U,V] :
      ( car(U,V)
     => vehicle(U,V) ) ).

fof(ax19,axiom,
    ! [U,V] :
      ( chevy(U,V)
     => car(U,V) ) ).

fof(ax20,axiom,
    ! [U,V] :
      ( way(U,V)
     => artifact(U,V) ) ).

fof(ax21,axiom,
    ! [U,V] :
      ( street(U,V)
     => way(U,V) ) ).

fof(ax22,axiom,
    ! [U,V] :
      ( barrel(U,V)
     => event(U,V) ) ).

fof(ax23,axiom,
    ! [U,V] :
      ( two(U,V)
     => group(U,V) ) ).

fof(ax24,axiom,
    ! [U,V] :
      ( man(U,V)
     => male(U,V) ) ).

fof(ax25,axiom,
    ! [U,V] :
      ( human_person(U,V)
     => animate(U,V) ) ).

fof(ax26,axiom,
    ! [U,V] :
      ( human_person(U,V)
     => human(U,V) ) ).

fof(ax27,axiom,
    ! [U,V] :
      ( organism(U,V)
     => living(U,V) ) ).

fof(ax28,axiom,
    ! [U,V] :
      ( organism(U,V)
     => impartial(U,V) ) ).

fof(ax29,axiom,
    ! [U,V] :
      ( organism(U,V)
     => entity(U,V) ) ).

fof(ax30,axiom,
    ! [U,V] :
      ( human_person(U,V)
     => organism(U,V) ) ).

fof(ax31,axiom,
    ! [U,V] :
      ( man(U,V)
     => human_person(U,V) ) ).

fof(ax32,axiom,
    ! [U,V] :
      ( fellow(U,V)
     => man(U,V) ) ).

fof(ax33,axiom,
    ! [U,V] :
      ( wear(U,V)
     => event(U,V) ) ).

fof(ax34,axiom,
    ! [U,V] :
      ( set(U,V)
     => multiple(U,V) ) ).

fof(ax35,axiom,
    ! [U,V] :
      ( group(U,V)
     => set(U,V) ) ).

fof(ax36,axiom,
    ! [U,V] :
      ( clothes(U,V)
     => artifact(U,V) ) ).

fof(ax37,axiom,
    ! [U,V] :
      ( coat(U,V)
     => clothes(U,V) ) ).

fof(ax38,axiom,
    ! [U,V] :
      ( object(U,V)
     => unisex(U,V) ) ).

fof(ax39,axiom,
    ! [U,V] :
      ( object(U,V)
     => impartial(U,V) ) ).

fof(ax40,axiom,
    ! [U,V] :
      ( object(U,V)
     => nonliving(U,V) ) ).

fof(ax41,axiom,
    ! [U,V] :
      ( entity(U,V)
     => existent(U,V) ) ).

fof(ax42,axiom,
    ! [U,V] :
      ( entity(U,V)
     => specific(U,V) ) ).

fof(ax43,axiom,
    ! [U,V] :
      ( entity(U,V)
     => thing(U,V) ) ).

fof(ax44,axiom,
    ! [U,V] :
      ( object(U,V)
     => entity(U,V) ) ).

fof(ax45,axiom,
    ! [U,V] :
      ( artifact(U,V)
     => object(U,V) ) ).

fof(ax46,axiom,
    ! [U,V] :
      ( instrumentality(U,V)
     => artifact(U,V) ) ).

fof(ax47,axiom,
    ! [U,V] :
      ( device(U,V)
     => instrumentality(U,V) ) ).

fof(ax48,axiom,
    ! [U,V] :
      ( wheel(U,V)
     => device(U,V) ) ).

fof(ax49,axiom,
    ! [U,V] :
      ( event(U,V)
     => eventuality(U,V) ) ).

fof(ax50,axiom,
    ! [U,V] :
      ( state(U,V)
     => event(U,V) ) ).

fof(ax51,axiom,
    ! [U,V] :
      ( eventuality(U,V)
     => unisex(U,V) ) ).

fof(ax52,axiom,
    ! [U,V] :
      ( eventuality(U,V)
     => nonexistent(U,V) ) ).

fof(ax53,axiom,
    ! [U,V] :
      ( eventuality(U,V)
     => specific(U,V) ) ).

fof(ax54,axiom,
    ! [U,V] :
      ( thing(U,V)
     => singleton(U,V) ) ).

fof(ax55,axiom,
    ! [U,V] :
      ( eventuality(U,V)
     => thing(U,V) ) ).

fof(ax56,axiom,
    ! [U,V] :
      ( state(U,V)
     => eventuality(U,V) ) ).

fof(ax57,axiom,
    ! [U,V] :
      ( animate(U,V)
     => ~ nonliving(U,V) ) ).

fof(ax58,axiom,
    ! [U,V] :
      ( existent(U,V)
     => ~ nonexistent(U,V) ) ).

fof(ax59,axiom,
    ! [U,V] :
      ( nonhuman(U,V)
     => ~ human(U,V) ) ).

fof(ax60,axiom,
    ! [U,V] :
      ( nonliving(U,V)
     => ~ living(U,V) ) ).

fof(ax61,axiom,
    ! [U,V] :
      ( singleton(U,V)
     => ~ multiple(U,V) ) ).

fof(ax62,axiom,
    ! [U,V] :
      ( specific(U,V)
     => ~ general(U,V) ) ).

fof(ax63,axiom,
    ! [U,V] :
      ( unisex(U,V)
     => ~ male(U,V) ) ).

fof(ax64,axiom,
    ! [U,V] :
      ( white(U,V)
     => ~ black(U,V) ) ).

fof(ax65,axiom,
    ! [U,V] :
      ( young(U,V)
     => ~ old(U,V) ) ).

fof(ax66,axiom,
    ! [U,V,W] :
      ( ( entity(U,V)
        & forename(U,W)
        & of(U,W,V) )
     => ~ ? [X] :
            ( forename(U,X)
            & X != W
            & of(U,X,V) ) ) ).

fof(ax67,axiom,
    ! [U,V,W] :
      ( ( entity(U,V)
        & placename(U,W)
        & of(U,W,V) )
     => ~ ? [X] :
            ( placename(U,X)
            & X != W
            & of(U,X,V) ) ) ).

fof(ax68,axiom,
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

fof(ax69,axiom,
    ! [U,V,W,X] :
      ( ( nonreflexive(U,V)
        & agent(U,V,W)
        & patient(U,V,X) )
     => W != X ) ).

fof(ax70,axiom,
    ! [U] :
      ~ ? [V] : member(U,V,V) ).

fof(ax71,axiom,
    ! [U,V,W,X] :
      ( be(U,V,W,X)
     => W = X ) ).

fof(co1,conjecture,
    ~ ( ? [U] :
          ( actual_world(U)
          & ? [V,W,X,Y,Z,X1] :
              ( frontseat(U,X)
              & chevy(U,V)
              & white(U,V)
              & dirty(U,V)
              & old(U,V)
              & of(U,W,X)
              & city(U,X)
              & hollywood_placename(U,W)
              & placename(U,W)
              & street(U,X)
              & lonely(U,X)
              & event(U,Y)
              & agent(U,Y,V)
              & present(U,Y)
              & barrel(U,Y)
              & down(U,Y,X)
              & in(U,Y,X)
              & ! [X2] :
                  ( member(U,X2,Z)
                 => ? [X3,X4] :
                      ( state(U,X3)
                      & be(U,X3,X2,X4)
                      & in(U,X4,X) ) )
              & two(U,Z)
              & group(U,Z)
              & ! [X5] :
                  ( member(U,X5,Z)
                 => ( fellow(U,X5)
                    & young(U,X5) ) )
              & ! [X6] :
                  ( member(U,X6,X1)
                 => ! [X7] :
                      ( member(U,X7,Z)
                     => ? [X8] :
                          ( event(U,X8)
                          & agent(U,X8,X7)
                          & patient(U,X8,X6)
                          & present(U,X8)
                          & nonreflexive(U,X8)
                          & wear(U,X8) ) ) )
              & group(U,X1)
              & ! [X9] :
                  ( member(U,X9,X1)
                 => ( coat(U,X9)
                    & black(U,X9)
                    & cheap(U,X9) ) ) ) )
      & ~ ? [X10] :
            ( actual_world(X10)
            & ? [X11,X12,V,W,X,Y,Z,X1,X13,X14] :
                ( of(X10,X12,X11)
                & man(X10,X11)
                & jules_forename(X10,X12)
                & forename(X10,X12)
                & frontseat(X10,X)
                & chevy(X10,V)
                & white(X10,V)
                & dirty(X10,V)
                & old(X10,V)
                & of(X10,W,X)
                & city(X10,X)
                & hollywood_placename(X10,W)
                & placename(X10,W)
                & street(X10,X)
                & lonely(X10,X)
                & event(X10,Y)
                & agent(X10,Y,V)
                & present(X10,Y)
                & barrel(X10,Y)
                & down(X10,Y,X)
                & in(X10,Y,X)
                & ! [X2] :
                    ( member(X10,X2,Z)
                   => ? [X3,X4] :
                        ( state(X10,X3)
                        & be(X10,X3,X2,X4)
                        & in(X10,X4,X) ) )
                & two(X10,Z)
                & group(X10,Z)
                & ! [X5] :
                    ( member(X10,X5,Z)
                   => ( fellow(X10,X5)
                      & young(X10,X5) ) )
                & ! [X6] :
                    ( member(X10,X6,X1)
                   => ! [X7] :
                        ( member(X10,X7,Z)
                       => ? [X8] :
                            ( event(X10,X8)
                            & agent(X10,X8,X7)
                            & patient(X10,X8,X6)
                            & present(X10,X8)
                            & nonreflexive(X10,X8)
                            & wear(X10,X8) ) ) )
                & group(X10,X1)
                & ! [X9] :
                    ( member(X10,X9,X1)
                   => ( coat(X10,X9)
                      & black(X10,X9)
                      & cheap(X10,X9) ) )
                & wheel(X10,X14)
                & state(X10,X13)
                & be(X10,X13,X11,X14)
                & behind(X10,X14,X14) ) ) ) ).

%--------------------------------------------------------------------------
