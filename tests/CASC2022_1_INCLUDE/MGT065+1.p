%--------------------------------------------------------------------------
% File     : MGT065+1 : TPTP v8.1.0. Released v2.4.0.
% Domain   : Management (Organisation Theory)
% Problem  : Long-run hazard of mortality
% Version  : [Han98] axioms.
% English  : The long-run hazard of mortality for an endowed organization with
%            either a fragile or a robust position in a drifting environment
%            exceeds the hazard near founding.

% Refs     : [Kam00] Kamps (2000), Email to G. Sutcliffe
%            [CH00]  Carroll & Hannan (2000), The Demography of Corporation
%            [Han98] Hannan (1998), Rethinking Age Dependence in Organizati
% Source   : [Kam00]
% Names    : THEOREM 11 [Han98]

% Status   : Theorem
% Rating   : 0.28 v8.1.0, 0.25 v7.5.0, 0.28 v7.4.0, 0.23 v7.3.0, 0.31 v7.2.0, 0.28 v7.1.0, 0.26 v7.0.0, 0.17 v6.4.0, 0.23 v6.3.0, 0.25 v6.2.0, 0.28 v6.1.0, 0.33 v6.0.0, 0.26 v5.5.0, 0.33 v5.4.0, 0.39 v5.3.0, 0.41 v5.2.0, 0.30 v5.1.0, 0.29 v4.1.0, 0.35 v4.0.0, 0.33 v3.7.0, 0.25 v3.5.0, 0.21 v3.4.0, 0.26 v3.3.0, 0.29 v3.2.0, 0.36 v3.1.0, 0.44 v2.7.0, 0.33 v2.6.0, 0.50 v2.5.0, 0.33 v2.4.0
% Syntax   : Number of formulae    :   17 (   5 unt;   0 def)
%            Number of atoms       :   70 (  12 equ)
%            Maximal formula atoms :   16 (   4 avg)
%            Number of connectives :   61 (   8   ~;   5   |;  28   &)
%                                         (   7 <=>;  13  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   18 (   5 avg)
%            Maximal term depth    :    2 (   1 avg)
%            Number of predicates  :   13 (  12 usr;   0 prp; 1-3 aty)
%            Number of functors    :   11 (  11 usr;   9 con; 0-2 aty)
%            Number of variables   :   29 (  29   !;   0   ?)
% SPC      : FOF_THM_RFO_SEQ

% Comments : See MGT042+1.p for the mnemonic names.
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
%----An endowment provides an immunity that lasts until an
%----organization's age exceeds `eta'.
fof(definition_1,axiom,
    ! [X] :
      ( has_endowment(X)
    <=> ! [T] :
          ( organization(X)
          & ( smaller_or_equal(age(X,T),eta)
           => has_immunity(X,T) )
          & ( greater(age(X,T),eta)
           => ~ has_immunity(X,T) ) ) ) ).

%----Two states of the environment are dissimilar for an organization
%----if and only if the organization cannot be aligned to both.
%----
%----Added quantification over X.
fof(definition_2,axiom,
    ! [X,T0,T] :
      ( dissimilar(X,T0,T)
    <=> ( organization(X)
        & ~ ( is_aligned(X,T0)
          <=> is_aligned(X,T) ) ) ) ).

%----An organization is aligned with the state of the environment at
%----its time of founding.
fof(assumption_13,axiom,
    ! [X,T] :
      ( ( organization(X)
        & age(X,T) = zero )
     => is_aligned(X,T) ) ).

%----Environmental drift: the environments at times separated by more
%----than `sigma' are dissimilar.
fof(assumption_15,axiom,
    ! [X,T0,T] :
      ( ( organization(X)
        & age(X,T0) = zero )
     => ( greater(age(X,T),sigma)
      <=> dissimilar(X,T0,T) ) ) ).

%----An organization's immunity. alignment of capability with the
%----current state of the environment and positional advantage jointly
%----affect the hazard of mortality with the following ordinal scaling:
fof(assumption_17,axiom,
    ! [X,T] :
      ( organization(X)
     => ( ( has_immunity(X,T)
         => hazard_of_mortality(X,T) = very_low )
        & ( ~ has_immunity(X,T)
         => ( ( ( is_aligned(X,T)
                & positional_advantage(X,T) )
             => hazard_of_mortality(X,T) = low )
            & ( ( ~ is_aligned(X,T)
                & positional_advantage(X,T) )
             => hazard_of_mortality(X,T) = mod1 )
            & ( ( is_aligned(X,T)
                & ~ positional_advantage(X,T) )
             => hazard_of_mortality(X,T) = mod2 )
            & ( ( ~ is_aligned(X,T)
                & ~ positional_advantage(X,T) )
             => hazard_of_mortality(X,T) = high ) ) ) ) ) ).

%----The levels of hazard of mortality are ordered:
%----
%----Split over 5 separate formulas because TPTP gives an error on top
%----level occurrences of `&'.
fof(assumption_18a,axiom,
    greater(high,mod1) ).

fof(assumption_18b,axiom,
    greater(mod1,low) ).

fof(assumption_18c,axiom,
    greater(low,very_low) ).

fof(assumption_18d,axiom,
    greater(high,mod2) ).

fof(assumption_18e,axiom,
    greater(mod2,low) ).

%----Problem theorems
%----The long-run hazard of mortality for an endowed organization with
%----either a fragile or a robust position in a drifting environment
%----exceeds the hazard near founding.
%----From D1, D2, A13, A15, A17, A18 (text says D1,2,4 and A1,2,13-15,17-19;
%----also needs D<, D<=, MP>str, MP>com, MP>tra).
%----
%----Expanding (age(X,T1) <= min(eta,sigma,tau)) and
%----expanding (age(X,T1) > max(eta,sigma,tau));
%----Text says RB(x) & FG(x) which contradicts lemma 10; changed to |.
%----added (hazard_of_mortality(X,T1) = hazard_of_mortality(X,T0)).
fof(theorem_11,conjecture,
    ! [X,T0,T1,T2] :
      ( ( organization(X)
        & ( robust_position(X)
          | fragile_position(X) )
        & has_endowment(X)
        & age(X,T0) = zero
        & greater(sigma,zero)
        & greater(tau,zero)
        & greater(eta,zero)
        & smaller_or_equal(age(X,T1),sigma)
        & smaller_or_equal(age(X,T1),tau)
        & smaller_or_equal(age(X,T1),eta)
        & greater(age(X,T2),sigma)
        & greater(age(X,T2),tau)
        & greater(age(X,T2),eta) )
     => ( greater(hazard_of_mortality(X,T2),hazard_of_mortality(X,T1))
        & hazard_of_mortality(X,T1) = hazard_of_mortality(X,T0) ) ) ).

%--------------------------------------------------------------------------
