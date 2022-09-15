%--------------------------------------------------------------------------
% File     : MGT042+1 : TPTP v8.1.0. Released v2.4.0.
% Domain   : Management (Organisation Theory)
% Problem  : Conditions for a lower hazard of mortality
% Version  : [Han98] axioms.
% English  : When an organization lacks immunity, increased collective
%            knowledge and superior external ties lower its hazard of
%            mortality when internal friction does not increase.

% Refs     : [Kam00] Kamps (2000), Email to G. Sutcliffe
%            [CH00]  Carroll & Hannan (2000), The Demography of Corporation
%            [Han98] Hannan (1998), Rethinking Age Dependence in Organizati
% Source   : [Kam00]
% Names    : LEMMA 1 [Han98]

% Status   : Theorem
% Rating   : 0.22 v8.1.0, 0.19 v7.5.0, 0.22 v7.4.0, 0.20 v7.3.0, 0.24 v7.2.0, 0.21 v7.1.0, 0.17 v7.0.0, 0.27 v6.4.0, 0.31 v6.3.0, 0.29 v6.2.0, 0.32 v6.1.0, 0.40 v6.0.0, 0.26 v5.5.0, 0.37 v5.4.0, 0.43 v5.3.0, 0.56 v5.2.0, 0.45 v5.1.0, 0.43 v5.0.0, 0.42 v4.1.0, 0.35 v4.0.1, 0.30 v4.0.0, 0.29 v3.7.0, 0.30 v3.5.0, 0.26 v3.4.0, 0.47 v3.3.0, 0.50 v3.2.0, 0.64 v3.1.0, 0.78 v2.7.0, 0.67 v2.6.0, 0.83 v2.4.0
% Syntax   : Number of formulae    :   10 (   0 unt;   0 def)
%            Number of atoms       :   54 (  11 equ)
%            Maximal formula atoms :   12 (   5 avg)
%            Number of connectives :   49 (   5   ~;   4   |;  22   &)
%                                         (   3 <=>;  15  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    9 (   6 avg)
%            Maximal term depth    :    2 (   1 avg)
%            Number of predicates  :    7 (   6 usr;   0 prp; 1-2 aty)
%            Number of functors    :    6 (   6 usr;   0 con; 2-2 aty)
%            Number of variables   :   25 (  25   !;   0   ?)
% SPC      : FOF_THM_RFO_SEQ

% Comments : The original text uses mnemonic names:
%            Original:    C/F/P:  Arity:    New name:
%            zero-symbol  c       0         zero
%            eta-symbol   c       0         eta
%            sigma-symbol c       0         sigma
%            tau-symbol   c       0         tau
%            very_low     c       0         very_low
%            low          c       0         low
%            mod1         c       0         mod1
%            mod2         c       0         mod2
%            high         c       0         high
%            A            f       2         age
%            H            f       2         hazard_of_mortality
%            C            f       2         capability
%            P            f       2         position
%            K            f       2         stock_of_knowledge
%            T            f       2         external_ties
%            F            f       2         internal_friction
%            O            p       1         organization
%            EN           p       1         has_endowment
%            IM           p       2         has_immunity
%            DS           p       3         dissimilar
%            AL           p       2         is_aligned
%            PA           p       2         positional_advantage
%            FG           p       1         fragile_position
%            RB           p       1         robust_position
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
% File     : MGT001+0 : TPTP v8.1.0. Released v2.4.0.
% Domain   : Management (Organisation Theory)
% Axioms   : Inequalities.
% Version  : [Han98] axioms.
% English  :

% Refs     : [Kam00] Kamps (2000), Email to G. Sutcliffe
%            [CH00]  Carroll & Hannan (2000), The Demography of Corporation
%            [Han98] Hannan (1998), Rethinking Age Dependence in Organizati
% Source   : [Kam00]
% Names    :

% Status   : Satisfiable
% Syntax   : Number of formulae    :    6 (   0 unt;   0 def)
%            Number of atoms       :   16 (   3 equ)
%            Maximal formula atoms :    3 (   2 avg)
%            Number of connectives :   11 (   1   ~;   4   |;   2   &)
%                                         (   3 <=>;   1  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    6 (   5 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :    5 (   4 usr;   0 prp; 2-2 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :   13 (  13   !;   0   ?)
% SPC      : 

% Comments :
%--------------------------------------------------------------------------
%----Definition of smaller_or_equal (i.t.o. smaller and equal).
fof(definition_smaller_or_equal,axiom,
    ! [X,Y] :
      ( smaller_or_equal(X,Y)
    <=> ( smaller(X,Y)
        | X = Y ) ) ).

%%----Definition of smaller_or_equal (i.t.o. greater).
%input_formula(definition_smaller_or_equal, axiom, (
%    ! [X,Y] :
%      ( smaller_or_equal(X,Y)
%    <=> ( ~ greater(X,Y) ) ) )).

%----Definition of greater_or_equal (i.t.o. greater and equal).
fof(definition_greater_or_equal,axiom,
    ! [X,Y] :
      ( greater_or_equal(X,Y)
    <=> ( greater(X,Y)
        | X = Y ) ) ).

%%----Definition of greater_or_equal (i.t.o. greater and equal).
%input_formula(definition_greater_or_equal, axiom, (
%    ! [X,Y] :
%      ( greater_or_equal(X,Y)
%    <=> ( ~ greater(Y,X) ) ) )).

%----Definition of smaller (i.t.o. greater).
fof(definition_smaller,axiom,
    ! [X,Y] :
      ( smaller(X,Y)
    <=> greater(Y,X) ) ).

%----Our notion of greater is strict (irreflexive and antisymmetric).
fof(meaning_postulate_greater_strict,axiom,
    ! [X,Y] :
      ~ ( greater(X,Y)
        & greater(Y,X) ) ).

%%----Derivable from above.
%input_formula(meaning_postulate_greater_strict2, axiom, (
%    ! [X] :
%      ( ~ greater(X,X) ) )).

%----Our notion of greater is transitive.
fof(meaning_postulate_greater_transitive,axiom,
    ! [X,Y,Z] :
      ( ( greater(X,Y)
        & greater(Y,Z) )
     => greater(X,Z) ) ).

%----Hazards of mortality are comparable.
%input_formula(background_ass_a1, axiom, (
%  ! [X,T0,T] :
%    ( organization(X)
%   => ( ( greater(hazard_of_mortality(X,T),hazard_of_mortality(X,T0))
%        | equal(hazard_of_mortality(X,T),hazard_of_mortality(X,T0)) )
%       => smaller(hazard_of_mortality(X,T),hazard_of_mortality(X,T0)) ) ) )).

%----Trichotomy statement for everything.
%input_formula(meaning_postulate_greater_comparable, axiom, (
%    ! [X,Y] :
%      ( greater(Y,X)
%      | equal(X,Y)
%      | greater(X,Y) ) )).
fof(meaning_postulate_greater_comparable,axiom,
    ! [X,Y] :
      ( smaller(X,Y)
      | X = Y
      | greater(X,Y) ) ).

%--------------------------------------------------------------------------

%--------------------------------------------------------------------------
%----Problem Axioms
%----When an organization lacks immunity, superior capability and
%----position imply a lower hazard of mortality.
fof(assumption_4,axiom,
    ! [X,T0,T] :
      ( ( organization(X)
        & ~ has_immunity(X,T0)
        & ~ has_immunity(X,T) )
     => ( ( ( greater(capability(X,T),capability(X,T0))
            & greater_or_equal(position(X,T),position(X,T0)) )
         => smaller(hazard_of_mortality(X,T),hazard_of_mortality(X,T0)) )
        & ( ( greater_or_equal(capability(X,T),capability(X,T0))
            & greater(position(X,T),position(X,T0)) )
         => smaller(hazard_of_mortality(X,T),hazard_of_mortality(X,T0)) )
        & ( ( capability(X,T) = capability(X,T0)
            & position(X,T) = position(X,T0) )
         => hazard_of_mortality(X,T) = hazard_of_mortality(X,T0) ) ) ) ).

%----Increased knowledge elevates an organization's capability; and
%----increased accumulation of organizational internal frictions
%----diminishes its capability.
fof(assumption_5,axiom,
    ! [X,T0,T] :
      ( organization(X)
     => ( ( ( greater(stock_of_knowledge(X,T),stock_of_knowledge(X,T0))
            & smaller_or_equal(internal_friction(X,T),internal_friction(X,T0)) )
         => greater(capability(X,T),capability(X,T0)) )
        & ( ( smaller_or_equal(stock_of_knowledge(X,T),stock_of_knowledge(X,T0))
            & greater(internal_friction(X,T),internal_friction(X,T0)) )
         => smaller(capability(X,T),capability(X,T0)) )
        & ( ( stock_of_knowledge(X,T) = stock_of_knowledge(X,T0)
            & internal_friction(X,T) = internal_friction(X,T0) )
         => capability(X,T) = capability(X,T0) ) ) ) ).

%----Improved ties with external actors enhance an organization's position.
fof(assumption_6,axiom,
    ! [X,T0,T] :
      ( organization(X)
     => ( ( greater(external_ties(X,T),external_ties(X,T0))
         => greater(position(X,T),position(X,T0)) )
        & ( external_ties(X,T) = external_ties(X,T0)
         => position(X,T) = position(X,T0) ) ) ) ).

%----Problem theorems
%----When an organization lacks immunity, increased collective
%----knowledge and superior external ties lower its hazard of
%----mortality when internal friction does not increase.
%----From A4, A5, and A6 (text says A1-6; also needs D<, D>=, D<=).
fof(lemma_1,conjecture,
    ! [X,T0,T] :
      ( ( organization(X)
        & ~ has_immunity(X,T0)
        & ~ has_immunity(X,T) )
     => ( ( ( greater(stock_of_knowledge(X,T),stock_of_knowledge(X,T0))
            & smaller_or_equal(internal_friction(X,T),internal_friction(X,T0))
            & greater_or_equal(external_ties(X,T),external_ties(X,T0)) )
         => smaller(hazard_of_mortality(X,T),hazard_of_mortality(X,T0)) )
        & ( ( greater_or_equal(stock_of_knowledge(X,T),stock_of_knowledge(X,T0))
            & smaller_or_equal(internal_friction(X,T),internal_friction(X,T0))
            & greater(external_ties(X,T),external_ties(X,T0)) )
         => smaller(hazard_of_mortality(X,T),hazard_of_mortality(X,T0)) ) ) ) ).

%--------------------------------------------------------------------------
