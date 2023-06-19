%--------------------------------------------------------------------------
% File     : MGT033+1 : TPTP v8.1.2. Released v2.0.0.
% Domain   : Management (Organisation Theory)
% Problem  : Selection favors FMs above EPs until EPs appear
% Version  : [PB+94] axioms : Reduced & Augmented > Complete.
% English  : Selection favors first movers above efficient producers
%            until the appearance of efficient producers.

% Refs     : [PM93]  Peli & Masuch (1993), The Logic of Propogation Strateg
%          : [PM94]  Peli & Masuch (1994), The Logic of Propogation Strateg
%          : [Kam95] Kamps (1995), Email to G. Sutcliffe
% Source   : [Kam95]
% Names    :

% Status   : CounterSatisfiable
% Rating   : 0.00 v7.5.0, 0.20 v7.4.0, 0.00 v6.1.0, 0.09 v6.0.0, 0.00 v5.5.0, 0.12 v5.4.0, 0.00 v4.1.0, 0.40 v4.0.0, 0.25 v3.7.0, 0.00 v3.5.0, 0.33 v3.4.0, 0.00 v3.1.0, 0.17 v2.7.0, 0.33 v2.6.0, 0.00 v2.5.0, 0.33 v2.4.0, 0.00 v2.1.0
% Syntax   : Number of formulae    :   14 (   0 unt;   0 def)
%            Number of atoms       :   53 (   6 equ)
%            Maximal formula atoms :    6 (   3 avg)
%            Number of connectives :   40 (   1   ~;   1   |;  24   &)
%                                         (   0 <=>;  14  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   10 (   6 avg)
%            Maximal term depth    :    2 (   1 avg)
%            Number of predicates  :    7 (   6 usr;   0 prp; 1-3 aty)
%            Number of functors    :    9 (   9 usr;   5 con; 0-2 aty)
%            Number of variables   :   31 (  30   !;   1   ?)
% SPC      : FOF_CSA_RFO_SEQ

% Comments :
%--------------------------------------------------------------------------
%----Problem axioms
%----MP2. Selection favors organizational sets with members to set without
%----members.
fof(mp2_favour_members,axiom,
    ! [E,S1,S2,T] :
      ( ( environment(E)
        & subpopulation(S1,E,T)
        & subpopulation(S2,E,T)
        & greater(cardinality_at_time(S1,T),zero)
        & cardinality_at_time(S2,T) = zero )
     => selection_favors(S1,S2,T) ) ).

%----MP. Object x is not present in the environment before it appears in
%----the environment.
fof(mp_not_present_before_appearance,axiom,
    ! [E,X,T] :
      ( ( environment(E)
        & in_environment(E,T)
        & greater(appear(X,E),T) )
     => cardinality_at_time(X,T) = zero ) ).

%----MP. If the sum of organizations in an environment is positive, then
%----some of the constituent organizational groups must have members.
fof(mp_positive_sum_means_members,axiom,
    ! [E,T] :
      ( ( environment(E)
        & greater(number_of_organizations(E,T),zero) )
     => ? [X] :
          ( subpopulation(X,E,T)
          & greater(cardinality_at_time(X,T),zero) ) ) ).

%----MP. If the number of elements in x is zero, then it is not positive.
fof(mp_zero_is_not_positive,axiom,
    ! [X,T] :
      ( cardinality_at_time(X,t) = zero
     => ~ greater(cardinality_at_time(X,T),zero) ) ).

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

%----MP. First movers and efficient producers are subpopulations.
fof(mp_subpopulations,axiom,
    ! [E,T] :
      ( ( environment(E)
        & in_environment(E,T) )
     => ( subpopulation(first_movers,E,T)
        & subpopulation(efficient_producers,E,T) ) ) ).

%----MP. If FM appear in the environment, then some organizations appear in
%----the environment.
fof(mp_FM_means_organisations,axiom,
    ! [E] :
      ( ( environment(E)
        & in_environment(E,appear(first_movers,E)) )
     => in_environment(E,appear(an_organisation,E)) ) ).

%----A1. The environment has a positive carrying capacity
fof(a1,hypothesis,
    ! [E,T] :
      ( ( environment(E)
        & in_environment(E,T)
        & greater_or_equal(T,appear(an_organisation,E)) )
     => greater(number_of_organizations(E,T),zero) ) ).

%----A9. The population contains only first movers and efficient
%----producers.
fof(a9,hypothesis,
    ! [E,X,T] :
      ( ( environment(E)
        & subpopulation(X,E,T)
        & greater(cardinality_at_time(X,T),zero) )
     => ( X = efficient_producers
        | X = first_movers ) ) ).

%----L13. First movers are the first organizations that appear in the
%----environment.
fof(l13,hypothesis,
    ! [E] :
      ( ( environment(E)
        & in_environment(E,appear(an_organisation,E)) )
     => appear(an_organisation,E) = appear(first_movers,E) ) ).

%----GOAL:T2. Selection favors first movers above efficient producers
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
