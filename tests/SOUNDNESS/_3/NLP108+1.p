%--------------------------------------------------------------------------
% File     : NLP108+1 : TPTP v8.1.2. Released v2.4.0.
% Domain   : Natural Language Processing
% Problem  : Every customer in a restaurant, problem 15
% Version  : [Bos00b] axioms.
% English  : Eliminating inconsistent interpretations in the statement
%            "Every customer in a restaurant saw a person who drank a
%            coffee."

% Refs     : [Bos00a] Bos (2000), DORIS: Discourse Oriented Representation a
%            [Bos00b] Bos (2000), Applied Theorem Proving - Natural Language
% Source   : [Bos00b]
% Names    : doris085 [Bos00b]

% Status   : CounterSatisfiable
% Rating   : 0.00 v7.5.0, 0.20 v7.4.0, 0.00 v4.1.0, 0.20 v4.0.1, 0.00 v3.1.0, 0.17 v2.6.0, 0.00 v2.4.0
% Syntax   : Number of formulae    :   35 (   0 unt;   0 def)
%            Number of atoms       :   90 (   1 equ)
%            Maximal formula atoms :   18 (   2 avg)
%            Number of connectives :   60 (   5   ~;   0   |;  20   &)
%                                         (   0 <=>;  35  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   25 (   5 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :   34 (  33 usr;   0 prp; 1-3 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :   79 (  73   !;   6   ?)
% SPC      : FOF_CSA_RFO_SEQ

% Comments :
%--------------------------------------------------------------------------
fof(ax1,axiom,
    ! [U,V] :
      ( artifact(U,V)
     => object(U,V) ) ).

fof(ax2,axiom,
    ! [U,V] :
      ( building(U,V)
     => artifact(U,V) ) ).

fof(ax3,axiom,
    ! [U,V] :
      ( restaurant(U,V)
     => building(U,V) ) ).

fof(ax4,axiom,
    ! [U,V] :
      ( customer(U,V)
     => human_person(U,V) ) ).

fof(ax5,axiom,
    ! [U,V] :
      ( human_person(U,V)
     => animate(U,V) ) ).

fof(ax6,axiom,
    ! [U,V] :
      ( human_person(U,V)
     => human(U,V) ) ).

fof(ax7,axiom,
    ! [U,V] :
      ( organism(U,V)
     => living(U,V) ) ).

fof(ax8,axiom,
    ! [U,V] :
      ( organism(U,V)
     => impartial(U,V) ) ).

fof(ax9,axiom,
    ! [U,V] :
      ( organism(U,V)
     => entity(U,V) ) ).

fof(ax10,axiom,
    ! [U,V] :
      ( human_person(U,V)
     => organism(U,V) ) ).

fof(ax11,axiom,
    ! [U,V] :
      ( object(U,V)
     => unisex(U,V) ) ).

fof(ax12,axiom,
    ! [U,V] :
      ( object(U,V)
     => impartial(U,V) ) ).

fof(ax13,axiom,
    ! [U,V] :
      ( object(U,V)
     => nonliving(U,V) ) ).

fof(ax14,axiom,
    ! [U,V] :
      ( entity(U,V)
     => existent(U,V) ) ).

fof(ax15,axiom,
    ! [U,V] :
      ( entity(U,V)
     => specific(U,V) ) ).

fof(ax16,axiom,
    ! [U,V] :
      ( entity(U,V)
     => thing(U,V) ) ).

fof(ax17,axiom,
    ! [U,V] :
      ( object(U,V)
     => entity(U,V) ) ).

fof(ax18,axiom,
    ! [U,V] :
      ( substance_matter(U,V)
     => object(U,V) ) ).

fof(ax19,axiom,
    ! [U,V] :
      ( food(U,V)
     => substance_matter(U,V) ) ).

fof(ax20,axiom,
    ! [U,V] :
      ( beverage(U,V)
     => food(U,V) ) ).

fof(ax21,axiom,
    ! [U,V] :
      ( coffee(U,V)
     => beverage(U,V) ) ).

fof(ax22,axiom,
    ! [U,V] :
      ( drink(U,V)
     => event(U,V) ) ).

fof(ax23,axiom,
    ! [U,V] :
      ( eventuality(U,V)
     => unisex(U,V) ) ).

fof(ax24,axiom,
    ! [U,V] :
      ( eventuality(U,V)
     => nonexistent(U,V) ) ).

fof(ax25,axiom,
    ! [U,V] :
      ( eventuality(U,V)
     => specific(U,V) ) ).

fof(ax26,axiom,
    ! [U,V] :
      ( thing(U,V)
     => singleton(U,V) ) ).

fof(ax27,axiom,
    ! [U,V] :
      ( eventuality(U,V)
     => thing(U,V) ) ).

fof(ax28,axiom,
    ! [U,V] :
      ( event(U,V)
     => eventuality(U,V) ) ).

fof(ax29,axiom,
    ! [U,V] :
      ( see(U,V)
     => event(U,V) ) ).

fof(ax30,axiom,
    ! [U,V] :
      ( animate(U,V)
     => ~ nonliving(U,V) ) ).

fof(ax31,axiom,
    ! [U,V] :
      ( existent(U,V)
     => ~ nonexistent(U,V) ) ).

fof(ax32,axiom,
    ! [U,V] :
      ( nonliving(U,V)
     => ~ living(U,V) ) ).

fof(ax33,axiom,
    ! [U,V,W,X] :
      ( ( drink(U,V)
        & agent(U,V,W)
        & patient(U,V,X) )
     => beverage(U,X) ) ).

fof(ax34,axiom,
    ! [U,V,W,X] :
      ( ( nonreflexive(U,V)
        & agent(U,V,W)
        & patient(U,V,X) )
     => W != X ) ).

fof(co1,conjecture,
    ~ ? [U] :
        ( actual_world(U)
        & ? [V,W,X,Y] :
            ( coffee(U,V)
            & restaurant(U,W)
            & human_person(U,X)
            & event(U,Y)
            & agent(U,Y,X)
            & patient(U,Y,V)
            & past(U,Y)
            & nonreflexive(U,Y)
            & drink(U,Y)
            & ! [Z] :
                ( ( customer(U,Z)
                  & in(U,Z,W) )
               => ? [X1] :
                    ( event(U,X1)
                    & agent(U,X1,Z)
                    & patient(U,X1,X)
                    & past(U,X1)
                    & nonreflexive(U,X1)
                    & see(U,X1) ) ) ) ) ).

%--------------------------------------------------------------------------
