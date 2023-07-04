%--------------------------------------------------------------------------
% File     : MGT037+2 : TPTP v8.1.2. Released v2.0.0.
% Domain   : Management (Organisation Theory)
% Problem  : Once appeared, efficient producers do not disappear
% Version  : [PM93] axioms.
% English  :

% Refs     : [PM93]  Peli & Masuch (1993), The Logic of Propogation Strateg
%          : [PM94]  Peli & Masuch (1994), The Logic of Propogation Strateg
%          : [PB+94] Peli et al. (1994), A Logical Approach to Formalizing
% Source   : [PM93]
% Names    : THEOREM 6 [PM93]
%          : T6 [PB+94]

% Status   : CounterSatisfiable
% Rating   : 0.00 v7.5.0, 0.20 v7.4.0, 0.00 v6.2.0, 0.09 v6.0.0, 0.00 v4.1.0, 0.40 v4.0.1, 0.20 v4.0.0, 0.00 v3.5.0, 0.33 v3.4.0, 0.00 v3.2.0, 0.33 v2.6.0, 0.25 v2.5.0, 0.33 v2.4.0, 0.00 v2.1.0
% Syntax   : Number of formulae    :   16 (   1 unt;   0 def)
%            Number of atoms       :   70 (   8 equ)
%            Maximal formula atoms :    7 (   4 avg)
%            Number of connectives :   63 (   9   ~;   3   |;  32   &)
%                                         (   0 <=>;  19  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   10 (   6 avg)
%            Maximal term depth    :    2 (   1 avg)
%            Number of predicates  :    8 (   7 usr;   0 prp; 1-3 aty)
%            Number of functors    :   11 (  11 usr;   4 con; 0-2 aty)
%            Number of variables   :   35 (  33   !;   2   ?)
% SPC      : FOF_CSA_RFO_SEQ

% Comments :
%--------------------------------------------------------------------------
%----Subsitution axioms
%----Problem axioms
%----MP. If the number of efficient producers is zero in the environment
%----past their appearence, then there had to be a time not before their
%----appearence when their growth rate was negative.
fof(mp_previous_negative_growth,axiom,
    ! [E,T] :
      ( ( environment(E)
        & greater_or_equal(T,appear(efficient_producers,E))
        & cardinality_at_time(efficient_producers,T) = zero )
     => ? [To] :
          ( greater(To,appear(efficient_producers,E))
          & in_environment(E,To)
          & greater(T,To)
          & greater(zero,growth_rate(efficient_producers,To)) ) ) ).

%----MP. The number of organizations in the environment is zero until the
%----appearence of first organizations.
fof(mp_start_of_organizations,axiom,
    ! [E,T] :
      ( ( environment(E)
        & in_environment(E,T)
        & greater(appear(an_organisation,E),T) )
     => number_of_organizations(E,T) = zero ) ).

%----MP. If the number of organizations in the environment cdoes not
%----decrease, then there is an organizational group in the environment
%----that does not decrease.
fof(mp_non_decreasing,axiom,
    ! [E,T] :
      ( ( environment(E)
        & in_environment(E,T)
        & ~ decreases(number_of_organizations(E,T)) )
     => ? [X] :
          ( subpopulation(X,E,T)
          & greater(cardinality_at_time(X,T),zero)
          & ~ greater(zero,growth_rate(X,T)) ) ) ).

%----MP. If the sum of organizations in an environment is zero, then no
%----organizational group has members in the environment.
fof(mp_no_members,axiom,
    ! [E,T,X] :
      ( ( environment(E)
        & in_environment(E,T)
        & number_of_organizations(E,T) = zero
        & subpopulation(X,E,T) )
     => cardinality_at_time(X,T) = zero ) ).

%----MP. First movers and efficient producers are subpopulations.
fof(mp_subpopulations,axiom,
    ! [E,T] :
      ( ( environment(E)
        & in_environment(E,T) )
     => ( subpopulation(first_movers,E,T)
        & subpopulation(efficient_producers,E,T) ) ) ).

%----MP. An empty group of objects does not decrease in number.
fof(mp_empty_not_decreasing,axiom,
    ! [S,T] :
      ( cardinality_at_time(S,T) = zero
     => ~ greater(zero,growth_rate(S,T)) ) ).

%----MP. The number of efficient producers is non-negative.
fof(mp_efficient_producers_exist,axiom,
    ! [E,T] :
      ( ( environment(E)
        & in_environment(E,T) )
     => ( cardinality_at_time(efficient_producers,T) = zero
        | greater(cardinality_at_time(efficient_producers,T),zero) ) ) ).

%----MP. If something is constant, then it does not decreases.
fof(mp_constant_not_decrease,axiom,
    ! [X] :
      ( constant(X)
     => ~ decreases(X) ) ).

%----MP. on inquality
fof(mp_environment_inequality,axiom,
    ! [E,T] :
      ( ( environment(E)
        & in_environment(E,T) )
     => ( ~ greater_or_equal(T,appear(an_organisation,E))
        | greater(appear(an_organisation,E),T) ) ) ).

%----A1. The environment has a positive carrying capacity
fof(a1,hypothesis,
    ! [E,T] :
      ( ( environment(E)
        & in_environment(E,T)
        & greater_or_equal(T,appear(an_organisation,E)) )
     => greater(number_of_organizations(E,T),zero) ) ).

%----A2. Efficient producers are more resilient than first movers.
fof(a2,hypothesis,
    greater(resilience(efficient_producers),resilience(first_movers)) ).

%----A4. Resource availability decreases until equilibrium is reached.
fof(a4,hypothesis,
    ! [E,T] :
      ( ( environment(E)
        & in_environment(E,T)
        & greater(number_of_organizations(E,T),zero) )
     => ( ( greater(equilibrium(E),T)
         => decreases(resources(E,T)) )
        & ( ~ greater(equilibrium(E),T)
         => constant(resources(E,T)) ) ) ) ).

%----A7. If resource availability decreases, then the number of
%----organizations increases or constant.
fof(a7,hypothesis,
    ! [E,T] :
      ( ( environment(E)
        & in_environment(E,T) )
     => ( ( decreases(resources(E,T))
         => ~ decreases(number_of_organizations(E,T)) )
        & ( constant(resources(E,T))
         => constant(number_of_organizations(E,T)) ) ) ) ).

%----A11. The population contains only first movers and efficient producers.
fof(a11,hypothesis,
    ! [E,X,T] :
      ( ( environment(E)
        & subpopulation(X,E,T)
        & greater(cardinality_at_time(X,T),zero) )
     => ( X = efficient_producers
        | X = first_movers ) ) ).

%----A13. If a subpopulation does not decrease in members, then a more
%----resilient subpopulation does not decrease either.
fof(a13,hypothesis,
    ! [E,S1,S2,T] :
      ( ( environment(E)
        & in_environment(E,T)
        & ~ greater(zero,growth_rate(S1,T))
        & greater(resilience(S2),resilience(S1)) )
     => ~ greater(zero,growth_rate(S2,T)) ) ).

%----GOAL: T6. Once appeared in an environment, efficient producers do not
%----disappear.
fof(prove_t6,conjecture,
    ! [E,T] :
      ( ( environment(E)
        & in_environment(E,T)
        & greater_or_equal(T,appear(efficient_producers,E)) )
     => greater(cardinality_at_time(efficient_producers,T),zero) ) ).

%--------------------------------------------------------------------------
