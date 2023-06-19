%--------------------------------------------------------------------------
% File     : NLP077+1 : TPTP v8.1.2. Released v2.4.0.
% Domain   : Natural Language Processing
% Problem  : A man comes out of the bathroom, problem 17
% Version  : [Bos00b] axioms.
% English  : Eliminating inconsistent interpretations in the statement
%            "A man comes out of the bathroom with a magnum in his hand.
%            The man fires six shots from his canon."

% Refs     : [Bos00a] Bos (2000), DORIS: Discourse Oriented Representation a
%            [Bos00b] Bos (2000), Applied Theorem Proving - Natural Language
% Source   : [Bos00b]
% Names    : doris054 [Bos00b]

% Status   : CounterSatisfiable
% Rating   : 0.33 v8.1.0, 0.25 v7.5.0, 0.20 v7.4.0, 0.00 v6.2.0, 0.27 v6.1.0, 0.36 v6.0.0, 0.31 v5.5.0, 0.25 v5.4.0, 0.29 v5.3.0, 0.43 v5.2.0, 0.50 v5.0.0, 0.29 v4.1.0, 0.40 v4.0.1, 0.20 v4.0.0, 0.00 v3.4.0, 0.50 v3.3.0, 0.33 v3.2.0, 0.25 v3.1.0, 0.50 v2.6.0, 0.25 v2.5.0, 0.33 v2.4.0
% Syntax   : Number of formulae    :   42 (   1 unt;   0 def)
%            Number of atoms       :  127 (  22 equ)
%            Maximal formula atoms :   29 (   3 avg)
%            Number of connectives :  108 (  23   ~;   5   |;  37   &)
%                                         (   1 <=>;  42  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   38 (   5 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :   41 (  40 usr;   0 prp; 1-3 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :   97 (  87   !;  10   ?)
% SPC      : FOF_CSA_RFO_SEQ

% Comments :
%--------------------------------------------------------------------------
fof(ax1,axiom,
    ! [U,V] :
      ( man(U,V)
     => male(U,V) ) ).

fof(ax2,axiom,
    ! [U,V] :
      ( human_person(U,V)
     => animate(U,V) ) ).

fof(ax3,axiom,
    ! [U,V] :
      ( human_person(U,V)
     => human(U,V) ) ).

fof(ax4,axiom,
    ! [U,V] :
      ( organism(U,V)
     => living(U,V) ) ).

fof(ax5,axiom,
    ! [U,V] :
      ( organism(U,V)
     => impartial(U,V) ) ).

fof(ax6,axiom,
    ! [U,V] :
      ( organism(U,V)
     => entity(U,V) ) ).

fof(ax7,axiom,
    ! [U,V] :
      ( human_person(U,V)
     => organism(U,V) ) ).

fof(ax8,axiom,
    ! [U,V] :
      ( man(U,V)
     => human_person(U,V) ) ).

fof(ax9,axiom,
    ! [U,V] :
      ( object(U,V)
     => unisex(U,V) ) ).

fof(ax10,axiom,
    ! [U,V] :
      ( object(U,V)
     => impartial(U,V) ) ).

fof(ax11,axiom,
    ! [U,V] :
      ( object(U,V)
     => nonliving(U,V) ) ).

fof(ax12,axiom,
    ! [U,V] :
      ( entity(U,V)
     => existent(U,V) ) ).

fof(ax13,axiom,
    ! [U,V] :
      ( entity(U,V)
     => specific(U,V) ) ).

fof(ax14,axiom,
    ! [U,V] :
      ( entity(U,V)
     => thing(U,V) ) ).

fof(ax15,axiom,
    ! [U,V] :
      ( object(U,V)
     => entity(U,V) ) ).

fof(ax16,axiom,
    ! [U,V] :
      ( artifact(U,V)
     => object(U,V) ) ).

fof(ax17,axiom,
    ! [U,V] :
      ( instrumentality(U,V)
     => artifact(U,V) ) ).

fof(ax18,axiom,
    ! [U,V] :
      ( weaponry(U,V)
     => instrumentality(U,V) ) ).

fof(ax19,axiom,
    ! [U,V] :
      ( weapon(U,V)
     => weaponry(U,V) ) ).

fof(ax20,axiom,
    ! [U,V] :
      ( cannon(U,V)
     => weapon(U,V) ) ).

fof(ax21,axiom,
    ! [U,V] :
      ( fire(U,V)
     => event(U,V) ) ).

fof(ax22,axiom,
    ! [U,V] :
      ( six(U,V)
     => group(U,V) ) ).

fof(ax23,axiom,
    ! [U,V] :
      ( set(U,V)
     => multiple(U,V) ) ).

fof(ax24,axiom,
    ! [U,V] :
      ( group(U,V)
     => set(U,V) ) ).

fof(ax25,axiom,
    ! [U,V] :
      ( eventuality(U,V)
     => unisex(U,V) ) ).

fof(ax26,axiom,
    ! [U,V] :
      ( eventuality(U,V)
     => nonexistent(U,V) ) ).

fof(ax27,axiom,
    ! [U,V] :
      ( eventuality(U,V)
     => specific(U,V) ) ).

fof(ax28,axiom,
    ! [U,V] :
      ( thing(U,V)
     => singleton(U,V) ) ).

fof(ax29,axiom,
    ! [U,V] :
      ( eventuality(U,V)
     => thing(U,V) ) ).

fof(ax30,axiom,
    ! [U,V] :
      ( event(U,V)
     => eventuality(U,V) ) ).

fof(ax31,axiom,
    ! [U,V] :
      ( act(U,V)
     => event(U,V) ) ).

fof(ax32,axiom,
    ! [U,V] :
      ( action(U,V)
     => act(U,V) ) ).

fof(ax33,axiom,
    ! [U,V] :
      ( shot(U,V)
     => action(U,V) ) ).

fof(ax34,axiom,
    ! [U,V] :
      ( animate(U,V)
     => ~ nonliving(U,V) ) ).

fof(ax35,axiom,
    ! [U,V] :
      ( existent(U,V)
     => ~ nonexistent(U,V) ) ).

fof(ax36,axiom,
    ! [U,V] :
      ( nonliving(U,V)
     => ~ living(U,V) ) ).

fof(ax37,axiom,
    ! [U,V] :
      ( singleton(U,V)
     => ~ multiple(U,V) ) ).

fof(ax38,axiom,
    ! [U,V] :
      ( unisex(U,V)
     => ~ male(U,V) ) ).

fof(ax39,axiom,
    ! [U,V,W,X] :
      ( ( nonreflexive(U,V)
        & agent(U,V,W)
        & patient(U,V,X) )
     => W != X ) ).

fof(ax40,axiom,
    ! [U,V] :
      ( six(U,V)
    <=> ? [W] :
          ( member(U,W,V)
          & ? [X] :
              ( member(U,X,V)
              & X != W
              & ? [Y] :
                  ( member(U,Y,V)
                  & Y != X
                  & Y != W
                  & ? [Z] :
                      ( member(U,Z,V)
                      & Z != Y
                      & Z != X
                      & Z != W
                      & ? [X1] :
                          ( member(U,X1,V)
                          & X1 != Z
                          & X1 != Y
                          & X1 != X
                          & X1 != W
                          & ? [X2] :
                              ( member(U,X2,V)
                              & X2 != X1
                              & X2 != Z
                              & X2 != Y
                              & X2 != X
                              & X2 != W
                              & ! [X3] :
                                  ( member(U,X3,V)
                                 => ( X3 = X2
                                    | X3 = X1
                                    | X3 = Z
                                    | X3 = Y
                                    | X3 = X
                                    | X3 = W ) ) ) ) ) ) ) ) ) ).

fof(ax41,axiom,
    ! [U] :
      ~ ? [V] : member(U,V,V) ).

fof(co1,conjecture,
    ~ ? [U] :
        ( actual_world(U)
        & ? [V] :
            ( ! [W,X] :
                ( ( male(U,W)
                  & man(U,W)
                  & of(U,X,W)
                  & cannon(U,X)
                  & member(U,X,V) )
               => ? [Y] :
                    ( event(U,Y)
                    & agent(U,Y,W)
                    & patient(U,Y,X)
                    & present(U,Y)
                    & nonreflexive(U,Y)
                    & fire(U,Y)
                    & from_loc(U,Y,X) ) )
            & six(U,V)
            & group(U,V)
            & ! [Z] :
                ( member(U,Z,V)
               => shot(U,Z) ) ) ) ).

%--------------------------------------------------------------------------
