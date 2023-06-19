%--------------------------------------------------------------------------
% File     : NLP125+1 : TPTP v8.1.2. Released v2.4.0.
% Domain   : Natural Language Processing
% Problem  : An old dirty white Chevy, problem 12
% Version  : [Bos00b] axioms.
% English  : Eliminating inconsistent interpretations in the statement
%            "An old dirty white chevy barrels down a lonely street in
%            hollywood."

% Refs     : [Bos00a] Bos (2000), DORIS: Discourse Oriented Representation a
%            [Bos00b] Bos (2000), Applied Theorem Proving - Natural Language
% Source   : [Bos00b]
% Names    : doris102 [Bos00b]

% Status   : CounterSatisfiable
% Rating   : 0.00 v4.1.0, 0.20 v4.0.1, 0.00 v3.1.0, 0.17 v2.6.0, 0.00 v2.4.0
% Syntax   : Number of formulae    :   36 (   0 unt;   0 def)
%            Number of atoms       :   91 (   1 equ)
%            Maximal formula atoms :   17 (   2 avg)
%            Number of connectives :   60 (   5   ~;   0   |;  20   &)
%                                         (   0 <=>;  35  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   23 (   5 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :   41 (  40 usr;   0 prp; 1-3 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :   77 (  71   !;   6   ?)
% SPC      : FOF_CSA_EPR_SEQ

% Comments :
%--------------------------------------------------------------------------
fof(ax1,axiom,
    ! [U,V] :
      ( instrumentality(U,V)
     => artifact(U,V) ) ).

fof(ax2,axiom,
    ! [U,V] :
      ( transport(U,V)
     => instrumentality(U,V) ) ).

fof(ax3,axiom,
    ! [U,V] :
      ( vehicle(U,V)
     => transport(U,V) ) ).

fof(ax4,axiom,
    ! [U,V] :
      ( car(U,V)
     => vehicle(U,V) ) ).

fof(ax5,axiom,
    ! [U,V] :
      ( chevy(U,V)
     => car(U,V) ) ).

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
      ( object(U,V)
     => unisex(U,V) ) ).

fof(ax17,axiom,
    ! [U,V] :
      ( object(U,V)
     => impartial(U,V) ) ).

fof(ax18,axiom,
    ! [U,V] :
      ( object(U,V)
     => nonliving(U,V) ) ).

fof(ax19,axiom,
    ! [U,V] :
      ( entity(U,V)
     => existent(U,V) ) ).

fof(ax20,axiom,
    ! [U,V] :
      ( entity(U,V)
     => specific(U,V) ) ).

fof(ax21,axiom,
    ! [U,V] :
      ( entity(U,V)
     => thing(U,V) ) ).

fof(ax22,axiom,
    ! [U,V] :
      ( object(U,V)
     => entity(U,V) ) ).

fof(ax23,axiom,
    ! [U,V] :
      ( artifact(U,V)
     => object(U,V) ) ).

fof(ax24,axiom,
    ! [U,V] :
      ( way(U,V)
     => artifact(U,V) ) ).

fof(ax25,axiom,
    ! [U,V] :
      ( street(U,V)
     => way(U,V) ) ).

fof(ax26,axiom,
    ! [U,V] :
      ( eventuality(U,V)
     => unisex(U,V) ) ).

fof(ax27,axiom,
    ! [U,V] :
      ( eventuality(U,V)
     => nonexistent(U,V) ) ).

fof(ax28,axiom,
    ! [U,V] :
      ( eventuality(U,V)
     => specific(U,V) ) ).

fof(ax29,axiom,
    ! [U,V] :
      ( thing(U,V)
     => singleton(U,V) ) ).

fof(ax30,axiom,
    ! [U,V] :
      ( eventuality(U,V)
     => thing(U,V) ) ).

fof(ax31,axiom,
    ! [U,V] :
      ( event(U,V)
     => eventuality(U,V) ) ).

fof(ax32,axiom,
    ! [U,V] :
      ( barrel(U,V)
     => event(U,V) ) ).

fof(ax33,axiom,
    ! [U,V] :
      ( existent(U,V)
     => ~ nonexistent(U,V) ) ).

fof(ax34,axiom,
    ! [U,V] :
      ( specific(U,V)
     => ~ general(U,V) ) ).

fof(ax35,axiom,
    ! [U,V,W] :
      ( ( entity(U,V)
        & placename(U,W)
        & of(U,W,V) )
     => ~ ? [X] :
            ( placename(U,X)
            & X != W
            & of(U,X,V) ) ) ).

fof(co1,conjecture,
    ~ ? [U] :
        ( actual_world(U)
        & ? [V,W,X,Y] :
            ( of(U,V,W)
            & city(U,W)
            & hollywood_placename(U,V)
            & placename(U,V)
            & street(U,W)
            & lonely(U,W)
            & chevy(U,X)
            & white(U,X)
            & dirty(U,X)
            & old(U,X)
            & event(U,Y)
            & agent(U,Y,X)
            & present(U,Y)
            & barrel(U,Y)
            & down(U,Y,W)
            & in(U,Y,W) ) ) ).

%--------------------------------------------------------------------------
