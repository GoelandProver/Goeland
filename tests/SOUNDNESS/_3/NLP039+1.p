%--------------------------------------------------------------------------
% File     : NLP039+1 : TPTP v8.1.2. Released v2.4.0.
% Domain   : Natural Language Processing
% Problem  : Three young guys, problem 14
% Version  : [Bos00b] axioms.
% English  : Eliminating inconsistent interpretations in the statement
%            "Three young guys sit at a table with hamburgers."

% Refs     : [Bos00a] Bos (2000), DORIS: Discourse Oriented Representation a
%            [Bos00b] Bos (2000), Applied Theorem Proving - Natural Language
% Source   : [Bos00b]
% Names    : doris016 [Bos00b]

% Status   : CounterSatisfiable
% Rating   : 0.00 v7.5.0, 0.20 v7.4.0, 0.00 v6.1.0, 0.09 v6.0.0, 0.08 v5.5.0, 0.00 v4.1.0, 0.20 v4.0.1, 0.00 v3.1.0, 0.33 v2.7.0, 0.50 v2.6.0, 0.25 v2.5.0, 0.33 v2.4.0
% Syntax   : Number of formulae    :   43 (   1 unt;   0 def)
%            Number of atoms       :  110 (   6 equ)
%            Maximal formula atoms :   18 (   2 avg)
%            Number of connectives :   77 (  10   ~;   2   |;  19   &)
%                                         (   1 <=>;  45  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   20 (   5 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :   42 (  41 usr;   0 prp; 1-3 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :   97 (  88   !;   9   ?)
% SPC      : FOF_CSA_RFO_SEQ

% Comments :
%--------------------------------------------------------------------------
fof(ax1,axiom,
    ! [U,V] :
      ( artifact(U,V)
     => object(U,V) ) ).

fof(ax2,axiom,
    ! [U,V] :
      ( instrumentality(U,V)
     => artifact(U,V) ) ).

fof(ax3,axiom,
    ! [U,V] :
      ( furniture(U,V)
     => instrumentality(U,V) ) ).

fof(ax4,axiom,
    ! [U,V] :
      ( table(U,V)
     => furniture(U,V) ) ).

fof(ax5,axiom,
    ! [U,V] :
      ( eventuality(U,V)
     => unisex(U,V) ) ).

fof(ax6,axiom,
    ! [U,V] :
      ( eventuality(U,V)
     => nonexistent(U,V) ) ).

fof(ax7,axiom,
    ! [U,V] :
      ( eventuality(U,V)
     => specific(U,V) ) ).

fof(ax8,axiom,
    ! [U,V] :
      ( eventuality(U,V)
     => thing(U,V) ) ).

fof(ax9,axiom,
    ! [U,V] :
      ( event(U,V)
     => eventuality(U,V) ) ).

fof(ax10,axiom,
    ! [U,V] :
      ( sit(U,V)
     => event(U,V) ) ).

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
      ( object(U,V)
     => entity(U,V) ) ).

fof(ax15,axiom,
    ! [U,V] :
      ( substance_matter(U,V)
     => object(U,V) ) ).

fof(ax16,axiom,
    ! [U,V] :
      ( food(U,V)
     => substance_matter(U,V) ) ).

fof(ax17,axiom,
    ! [U,V] :
      ( meat(U,V)
     => food(U,V) ) ).

fof(ax18,axiom,
    ! [U,V] :
      ( burger(U,V)
     => meat(U,V) ) ).

fof(ax19,axiom,
    ! [U,V] :
      ( hamburger(U,V)
     => burger(U,V) ) ).

fof(ax20,axiom,
    ! [U,V] :
      ( three(U,V)
     => group(U,V) ) ).

fof(ax21,axiom,
    ! [U,V] :
      ( set(U,V)
     => multiple(U,V) ) ).

fof(ax22,axiom,
    ! [U,V] :
      ( group(U,V)
     => set(U,V) ) ).

fof(ax23,axiom,
    ! [U,V] :
      ( man(U,V)
     => male(U,V) ) ).

fof(ax24,axiom,
    ! [U,V] :
      ( human_person(U,V)
     => animate(U,V) ) ).

fof(ax25,axiom,
    ! [U,V] :
      ( human_person(U,V)
     => human(U,V) ) ).

fof(ax26,axiom,
    ! [U,V] :
      ( organism(U,V)
     => living(U,V) ) ).

fof(ax27,axiom,
    ! [U,V] :
      ( organism(U,V)
     => impartial(U,V) ) ).

fof(ax28,axiom,
    ! [U,V] :
      ( entity(U,V)
     => existent(U,V) ) ).

fof(ax29,axiom,
    ! [U,V] :
      ( entity(U,V)
     => specific(U,V) ) ).

fof(ax30,axiom,
    ! [U,V] :
      ( thing(U,V)
     => singleton(U,V) ) ).

fof(ax31,axiom,
    ! [U,V] :
      ( entity(U,V)
     => thing(U,V) ) ).

fof(ax32,axiom,
    ! [U,V] :
      ( organism(U,V)
     => entity(U,V) ) ).

fof(ax33,axiom,
    ! [U,V] :
      ( human_person(U,V)
     => organism(U,V) ) ).

fof(ax34,axiom,
    ! [U,V] :
      ( man(U,V)
     => human_person(U,V) ) ).

fof(ax35,axiom,
    ! [U,V] :
      ( guy(U,V)
     => man(U,V) ) ).

fof(ax36,axiom,
    ! [U,V] :
      ( animate(U,V)
     => ~ nonliving(U,V) ) ).

fof(ax37,axiom,
    ! [U,V] :
      ( existent(U,V)
     => ~ nonexistent(U,V) ) ).

fof(ax38,axiom,
    ! [U,V] :
      ( nonliving(U,V)
     => ~ living(U,V) ) ).

fof(ax39,axiom,
    ! [U,V] :
      ( singleton(U,V)
     => ~ multiple(U,V) ) ).

fof(ax40,axiom,
    ! [U,V] :
      ( unisex(U,V)
     => ~ male(U,V) ) ).

fof(ax41,axiom,
    ! [U,V] :
      ( three(U,V)
    <=> ? [W] :
          ( member(U,W,V)
          & ? [X] :
              ( member(U,X,V)
              & X != W
              & ? [Y] :
                  ( member(U,Y,V)
                  & Y != X
                  & Y != W
                  & ! [Z] :
                      ( member(U,Z,V)
                     => ( Z = Y
                        | Z = X
                        | Z = W ) ) ) ) ) ) ).

fof(ax42,axiom,
    ! [U] :
      ~ ? [V] : member(U,V,V) ).

fof(co1,conjecture,
    ~ ? [U] :
        ( actual_world(U)
        & ? [V] :
            ( ! [W] :
                ( member(U,W,V)
               => ? [X,Y] :
                    ( table(U,X)
                    & ! [Z] :
                        ( member(U,Z,Y)
                       => ? [X1] :
                            ( event(U,X1)
                            & agent(U,X1,W)
                            & present(U,X1)
                            & sit(U,X1)
                            & at(U,X1,X)
                            & with(U,X1,Z) ) )
                    & group(U,Y)
                    & ! [X2] :
                        ( member(U,X2,Y)
                       => hamburger(U,X2) ) ) )
            & three(U,V)
            & group(U,V)
            & ! [X3] :
                ( member(U,X3,V)
               => ( guy(U,X3)
                  & young(U,X3) ) ) ) ) ).

%--------------------------------------------------------------------------
