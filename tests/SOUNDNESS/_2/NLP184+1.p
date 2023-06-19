%--------------------------------------------------------------------------
% File     : NLP184+1 : TPTP v8.1.2. Released v2.4.0.
% Domain   : Natural Language Processing
% Problem  : An old dirty white Chevy, problem 71
% Version  : [Bos00b] axioms.
% English  : Eliminating non-informative interpretations in the statement
%            "An old dirty white chevy barrels down a lonely street in
%            hollywood. Two young fellas are in the front seat. They are
%            wearing cheap black coats."

% Refs     : [Bos00a] Bos (2000), DORIS: Discourse Oriented Representation a
%            [Bos00b] Bos (2000), Applied Theorem Proving - Natural Language
% Source   : [Bos00b]
% Names    : doris161 [Bos00b]

% Status   : CounterSatisfiable
% Rating   : 0.00 v7.5.0, 0.20 v7.4.0, 0.00 v6.2.0, 0.36 v6.0.0, 0.38 v5.4.0, 0.43 v5.2.0, 0.33 v5.0.0, 0.29 v4.1.0, 0.40 v4.0.1, 0.20 v4.0.0, 0.00 v3.5.0, 0.33 v3.3.0, 0.17 v3.2.0, 0.00 v3.1.0, 0.50 v2.7.0, 0.67 v2.6.0, 0.50 v2.5.0, 0.67 v2.4.0
% Syntax   : Number of formulae    :   67 (   1 unt;   0 def)
%            Number of atoms       :  210 (   6 equ)
%            Maximal formula atoms :   68 (   3 avg)
%            Number of connectives :  159 (  16   ~;   1   |;  69   &)
%                                         (   1 <=>;  72  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   46 (   5 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :   67 (  66 usr;   0 prp; 1-4 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :  167 ( 144   !;  23   ?)
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
          & ? [V,W,X,Y,Z] :
              ( frontseat(U,W)
              & of(U,V,W)
              & city(U,W)
              & hollywood_placename(U,V)
              & placename(U,V)
              & chevy(U,W)
              & white(U,W)
              & dirty(U,W)
              & old(U,W)
              & street(U,X)
              & lonely(U,X)
              & event(U,Y)
              & agent(U,Y,W)
              & present(U,Y)
              & barrel(U,Y)
              & down(U,Y,X)
              & in(U,Y,W)
              & ! [X1] :
                  ( member(U,X1,Z)
                 => ? [X2,X3] :
                      ( state(U,X2)
                      & be(U,X2,X1,X3)
                      & in(U,X3,W) ) )
              & two(U,Z)
              & group(U,Z)
              & ! [X4] :
                  ( member(U,X4,Z)
                 => ( fellow(U,X4)
                    & young(U,X4) ) ) ) )
      & ~ ? [X5] :
            ( actual_world(X5)
            & ? [X6,V,W,X,Y,Z,X7] :
                ( group(X5,X6)
                & frontseat(X5,W)
                & of(X5,V,W)
                & city(X5,W)
                & hollywood_placename(X5,V)
                & placename(X5,V)
                & chevy(X5,W)
                & white(X5,W)
                & dirty(X5,W)
                & old(X5,W)
                & street(X5,X)
                & lonely(X5,X)
                & event(X5,Y)
                & agent(X5,Y,W)
                & present(X5,Y)
                & barrel(X5,Y)
                & down(X5,Y,X)
                & in(X5,Y,W)
                & ! [X1] :
                    ( member(X5,X1,Z)
                   => ? [X2,X3] :
                        ( state(X5,X2)
                        & be(X5,X2,X1,X3)
                        & in(X5,X3,W) ) )
                & two(X5,Z)
                & group(X5,Z)
                & ! [X4] :
                    ( member(X5,X4,Z)
                   => ( fellow(X5,X4)
                      & young(X5,X4) ) )
                & ! [X8] :
                    ( member(X5,X8,X7)
                   => ! [X9] :
                        ( member(X5,X9,X6)
                       => ? [X10] :
                            ( event(X5,X10)
                            & agent(X5,X10,X9)
                            & patient(X5,X10,X8)
                            & present(X5,X10)
                            & nonreflexive(X5,X10)
                            & wear(X5,X10) ) ) )
                & group(X5,X7)
                & ! [X11] :
                    ( member(X5,X11,X7)
                   => ( coat(X5,X11)
                      & black(X5,X11)
                      & cheap(X5,X11) ) ) ) ) ) ).

%--------------------------------------------------------------------------
