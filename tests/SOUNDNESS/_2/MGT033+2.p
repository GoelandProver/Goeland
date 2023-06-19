%--------------------------------------------------------------------------
% File     : MGT033+2 : TPTP v8.1.2. Released v2.0.0.
% Domain   : Management (Organisation Theory)
% Problem  : Selection favors FMs above EPs until EPs appear
% Version  : [PM93] axioms.
% English  : Selection favors first movers above efficient producers
%            until the appearance of efficient producers.

% Refs     : [PM93]  Peli & Masuch (1993), The Logic of Propogation Strateg
%          : [PM94]  Peli & Masuch (1994), The Logic of Propogation Strateg
%          : [PB+94] Peli et al. (1994), A Logical Approach to Formalizing
% Source   : [PM93]
% Names    : THEOREM 2 [PM93]
%          : T2 [PB+94]

% Status   : CounterSatisfiable
% Rating   : 0.00 v7.5.0, 0.20 v7.4.0, 0.00 v6.1.0, 0.09 v6.0.0, 0.08 v5.5.0, 0.00 v4.1.0, 0.60 v4.0.1, 0.40 v4.0.0, 0.25 v3.7.0, 0.00 v3.5.0, 0.67 v3.4.0, 0.00 v3.3.0, 0.33 v3.2.0, 0.00 v3.1.0, 0.33 v2.6.0, 0.50 v2.5.0, 0.67 v2.4.0, 0.00 v2.1.0
% Syntax   : Number of formulae    :   18 (   0 unt;   0 def)
%            Number of atoms       :   62 (   6 equ)
%            Maximal formula atoms :    6 (   3 avg)
%            Number of connectives :   45 (   1   ~;   2   |;  24   &)
%                                         (   1 <=>;  17  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   10 (   5 avg)
%            Maximal term depth    :    3 (   1 avg)
%            Number of predicates  :    7 (   6 usr;   0 prp; 1-3 aty)
%            Number of functors    :   10 (  10 usr;   6 con; 0-2 aty)
%            Number of variables   :   38 (  37   !;   1   ?)
% SPC      : FOF_CSA_RFO_SEQ

% Comments :
%--------------------------------------------------------------------------
%----Subsitution axioms
%----Problem axioms
%----MP2. Selection favors organizational sets with members to sets without
%----members.
fof(mp2_favour_members,axiom,
    ! [E,S1,S2,T] :
      ( ( environment(E)
        & subpopulation(S1,E,T)
        & subpopulation(S2,E,T)
        & greater(cardinality_at_time(S1,T),zero)
        & cardinality_at_time(S2,T) = zero )
     => selection_favors(S1,S2,T) ) ).

%----MP. If the number of organizations is positive in the environment,
%----then there is a non-empty subpopulation in the environment.
fof(mp_number_mean_non_empty,axiom,
    ! [E,T] :
      ( ( environment(E)
        & greater(number_of_organizations(E,T),zero) )
     => ? [S] :
          ( subpopulation(S,E,T)
          & greater(cardinality_at_time(S,T),zero) ) ) ).

%----MP. If the number of elements in x is zero, then it is not positive.
fof(mp_zero_is_not_positive,axiom,
    ! [X,T] :
      ( cardinality_at_time(X,t) = zero
     => ~ greater(cardinality_at_time(X,T),zero) ) ).

%----MP. Object x is not present in the environment before it appears in
%----the environment.
fof(mp_not_present_before_appearance,axiom,
    ! [E,X,T] :
      ( ( environment(E)
        & in_environment(E,T)
        & greater(appear(X,E),T) )
     => cardinality_at_time(X,T) = zero ) ).

%----MP. If the number of organizations is positive in an environment at
%----time-point t, then t occurs during the environment sustains.
fof(mp_positive_and_sustains,axiom,
    ! [E,T] :
      ( ( environment(E)
        & greater(number_of_organizations(E,T),zero) )
     => in_environment(E,T) ) ).

%----MP. The durations of environments are time-intervals.
fof(mp_durations_are_time_intervals,axiom,
    ! [E,T1,T2,T] :
      ( ( environment(E)
        & in_environment(E,T1)
        & in_environment(E,T2)
        & greater_or_equal(T2,T)
        & greater_or_equal(T,T1) )
     => in_environment(E,T) ) ).

%----MP. The opening time of the environment belongs to the environment's
%----duration.
fof(mp_opening_time_in_duration,axiom,
    ! [E] :
      ( environment(E)
     => in_environment(E,start_time(E)) ) ).

%----MP. FM cannot appear in an environment before it opens.
fof(mp_no_FM_before_opening,axiom,
    ! [E] :
      ( environment(E)
     => greater_or_equal(appear(first_movers,E),start_time(E)) ) ).

%----MP. If FM appear in the environment, then some organizations appear in
%----the environment.
fof(mp_FM_means_organisations,axiom,
    ! [E] :
      ( ( environment(E)
        & in_environment(E,appear(first_movers,E)) )
     => in_environment(E,appear(an_organisation,E)) ) ).

%----MP. The appearence of FM cannot precede the appearence of the first
%----organization in the environment.
fof(mp_FM_not_precede_first,axiom,
    ! [E] :
      ( environment(E)
     => greater_or_equal(appear(first_movers,E),appear(an_organisation,E)) ) ).

%----MP. The number of organizations is positive in the environment when
%----they appear in this environment.
fof(mp_positive_number_when_appear,axiom,
    ! [E] :
      ( environment(E)
     => greater(number_of_organizations(e,appear(an_organisation,E)),zero) ) ).

%----MP. First movers and efficient producers are subpopulations.
fof(mp_subpopulations,axiom,
    ! [E,T] :
      ( ( environment(E)
        & in_environment(E,T) )
     => ( subpopulation(first_movers,E,T)
        & subpopulation(efficient_producers,E,T) ) ) ).

%----MP. inequality
fof(mp_greater_transitivity,axiom,
    ! [X,Y,Z] :
      ( ( greater(X,Y)
        & greater(Y,Z) )
     => greater(X,Z) ) ).

%----MP. on "greater or equal to"
fof(mp_greater_or_equal,axiom,
    ! [X,Y] :
      ( greater_or_equal(X,Y)
    <=> ( greater(X,Y)
        | X = Y ) ) ).

%----A1. A resource configuration does not remain empty indefinitely.
fof(a1,hypothesis,
    ! [E,T] :
      ( ( environment(E)
        & in_environment(E,T)
        & greater_or_equal(T,appear(an_organisation,E)) )
     => greater(number_of_organizations(E,T),zero) ) ).

%----A3. First movers appear sooner in the environment, than efficient
%----producers.
fof(a3,hypothesis,
    ! [E] :
      ( environment(E)
     => greater(appear(efficient_producers,e),appear(first_movers,E)) ) ).

%----A11. The population contains only first movers and efficient
%----producers.
fof(a11,hypothesis,
    ! [E,X,T] :
      ( ( environment(E)
        & subpopulation(X,E,T)
        & greater(cardinality_at_time(X,T),zero) )
     => ( X = efficient_producers
        | X = first_movers ) ) ).

%----GOAL: T2. Selection favors first movers above efficient producers
%----between the appearence of first movers and the appearence of efficient
%----producers.
fof(prove_t2,conjecture,
    ! [E,T] :
      ( ( environment(E)
        & in_environment(E,T)
        & greater_or_equal(T,appear(first_movers,E))
        & greater(appear(efficient_producers,E),T) )
     => selection_favors(first_movers,efficient_producers,T) ) ).

%--------------------------------------------------------------------------
