%--------------------------------------------------------------------------
% File     : MGT034+1 : TPTP v8.1.2. Released v2.0.0.
% Domain   : Management (Organisation Theory)
% Problem  : Selection favors FMs above EPs until critical point reached
% Version  : [PB+94] axioms : Reduced & Augmented > Complete.
% English  : Selection favors first movers above efficient producers past
%            the appearance of efficient producers until the critical
%            point is reached.

% Refs     : [PM93]  Peli & Masuch (1993), The Logic of Propogation Strateg
%          : [PM94]  Peli & Masuch (1994), The Logic of Propogation Strateg
%          : [Kam95] Kamps (1995), Email to G. Sutcliffe
% Source   : [Kam95]
% Names    :

% Status   : CounterSatisfiable
% Rating   : 0.00 v7.5.0, 0.20 v7.4.0, 0.00 v6.1.0, 0.09 v6.0.0, 0.08 v5.5.0, 0.00 v4.1.0, 0.40 v4.0.1, 0.20 v4.0.0, 0.00 v3.5.0, 0.33 v3.4.0, 0.00 v3.1.0, 0.17 v2.7.0, 0.33 v2.6.0, 0.25 v2.5.0, 0.33 v2.4.0, 0.00 v2.1.0
% Syntax   : Number of formulae    :   19 (   0 unt;   0 def)
%            Number of atoms       :   70 (   2 equ)
%            Maximal formula atoms :    7 (   3 avg)
%            Number of connectives :   55 (   4   ~;   1   |;  29   &)
%                                         (   3 <=>;  18  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   10 (   6 avg)
%            Maximal term depth    :    3 (   1 avg)
%            Number of predicates  :    8 (   7 usr;   0 prp; 1-4 aty)
%            Number of functors    :   10 (  10 usr;   3 con; 0-2 aty)
%            Number of variables   :   39 (  39   !;   0   ?)
% SPC      : FOF_CSA_RFO_SEQ

% Comments :
%--------------------------------------------------------------------------
%----Subsitution axioms
%----Problem axioms
%----MP1. Selection favors subpopulations with higher growth rates.
fof(mp1_high_growth_rates,axiom,
    ! [E,S1,S2,T] :
      ( ( environment(E)
        & subpopulations(S1,S2,E,T)
        & greater(growth_rate(S2,T),growth_rate(S1,T)) )
     => selection_favors(S2,S1,T) ) ).

%----L3. The difference between the disbanding rates of first movers and
%----efficient producers does not decrease.
fof(l3,axiom,
    ! [E,T] :
      ( ( environment(E)
        & subpopulations(first_movers,efficient_producers,E,T) )
     => ~ decreases(difference(disbanding_rate(first_movers,T),disbanding_rate(efficient_producers,T))) ) ).

%----MP. If the environment contains a critical point, then FM and EP are
%----present at this time.
fof(mp_critical_point_means_FM_and_EP,axiom,
    ! [E] :
      ( ( environment(E)
        & in_environment(E,critical_point(E)) )
     => subpopulations(first_movers,efficient_producers,E,critical_point(E)) ) ).

%----MP. FM and EP are present when EP appear.
fof(mp_FM_and_EP_when_EP_appears,axiom,
    ! [E] :
      ( ( environment(E)
        & in_environment(E,appear(efficient_producers,E)) )
     => subpopulations(first_movers,efficient_producers,E,appear(efficient_producers,E)) ) ).

%----MP. If function "f" is decreasing until to, and it is not negative at
%----"to, then its value is positive before "to".
%----INSTANTIATION: f(x) = (growth_rate(first_movers,x) -
%----growth_rate(efficient_producers,x)
fof(mp_decreasing_function,axiom,
    ! [E,T,To] :
      ( ( environment(E)
        & in_environment(E,To)
        & greater_or_equal(difference(growth_rate(first_movers,To),growth_rate(efficient_producers,To)),zero)
        & greater_or_equal(T,appear(efficient_producers,E))
        & greater(To,T) )
     => ( decreases(difference(growth_rate(first_movers,T),growth_rate(efficient_producers,T)))
       => greater(difference(growth_rate(first_movers,T),growth_rate(efficient_producers,T)),zero) ) ) ).

%----MP. If the difference between the founding rates of FM and EP
%----decreases and the difference between their disbanding rates does
%----not decrease, then the difference between the growth rates decreases.
fof(mp_difference_between_founding_rates,axiom,
    ! [T] :
      ( ( decreases(difference(founding_rate(first_movers,T),founding_rate(efficient_producers,T)))
        & ~ decreases(difference(disbanding_rate(first_movers,T),disbanding_rate(efficient_producers,T))) )
     => decreases(difference(growth_rate(first_movers,T),growth_rate(efficient_producers,T))) ) ).

%----MP. The difference between the growth rates of first movers and
%----efficient producers is negative, if and only if, the growth rate of
%----efficient producers is higher.
fof(mp_negative_growth_rate_difference,axiom,
    ! [T] :
      ( greater(zero,difference(growth_rate(first_movers,T),growth_rate(efficient_producers,T)))
    <=> greater(growth_rate(efficient_producers,T),growth_rate(first_movers,T)) ) ).

%----MP. The difference between the growth rates of first movers and
%----efficient producers is positive, if and only if, the growth rate of
%----first movers is higher.
fof(mp_positive_growth_rate_difference,axiom,
    ! [T] :
      ( greater(difference(growth_rate(first_movers,T),growth_rate(efficient_producers,T)),zero)
    <=> greater(growth_rate(first_movers,T),growth_rate(efficient_producers,T)) ) ).

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

%----MP. The "pop" predicate is symmetric: if FM and EP are subpopulations,
%----then EP and FM are also subpopulations.
fof(mp_symmetry_of_FM_and_EP,axiom,
    ! [E,T] :
      ( ( environment(E)
        & subpopulations(first_movers,efficient_producers,E,T) )
     => subpopulations(efficient_producers,first_movers,E,T) ) ).

%----MP. If FM and EP have members in an environment at a certain point of
%----time, then EP's appearence time is already passed.
fof(mp_FM_and_EP_members_EP_appeared,axiom,
    ! [E,T] :
      ( ( environment(E)
        & subpopulations(first_movers,efficient_producers,E,T) )
     => greater_or_equal(T,appear(efficient_producers,E)) ) ).

%----MP. on "greater or equal to"
fof(mp_greater_or_equal,axiom,
    ! [X,Y] :
      ( greater_or_equal(X,Y)
    <=> ( greater(X,Y)
        | X = Y ) ) ).

%----MP. on growth rates
fof(mp_relationship_of_growth_rates,axiom,
    ! [E,T] :
      ( ( environment(E)
        & subpopulations(first_movers,efficient_producers,E,T)
        & ~ greater(zero,difference(growth_rate(first_movers,T),growth_rate(efficient_producers,T))) )
     => greater_or_equal(difference(growth_rate(first_movers,T),growth_rate(efficient_producers,T)),zero) ) ).

%----A10. If FM and EP are present in the environment at time-points t1
%----and t2, then they are present during the time-interval between
%----t1 and t2.
fof(a10,hypothesis,
    ! [E,T1,T2,T] :
      ( ( environment(E)
        & subpopulations(first_movers,efficient_producers,E,T1)
        & subpopulations(first_movers,efficient_producers,E,T2)
        & greater_or_equal(T,T1)
        & greater_or_equal(T2,T) )
     => subpopulations(first_movers,efficient_producers,E,T) ) ).

%----D1(<=). If a time-point is the critical point of the environment, then
%----it is the earliest time past which the growth rate of efficient
%----producers permanently exceeds growth rate of first movers.
fof(d1,hypothesis,
    ! [E,Tc] :
      ( ( environment(E)
        & Tc = critical_point(E) )
     => ( ~ greater(growth_rate(efficient_producers,Tc),growth_rate(first_movers,Tc))
        & ! [T] :
            ( ( subpopulations(first_movers,efficient_producers,E,T)
              & greater(T,Tc) )
           => greater(growth_rate(efficient_producers,T),growth_rate(first_movers,T)) ) ) ) ).

%----A11. The difference between the founding rates of first movers and
%----efficient producers decreases with time, whenever both subpopulations
%----are present.
fof(a11,hypothesis,
    ! [E,T] :
      ( ( environment(E)
        & subpopulations(first_movers,efficient_producers,E,T) )
     => decreases(difference(founding_rate(first_movers,T),founding_rate(efficient_producers,T))) ) ).

%----GOAL: T3. Selection favors first movers above efficient producers
%----between the appearence of efficient producers and the critical point.
fof(prove_t3,conjecture,
    ! [E,T] :
      ( ( environment(E)
        & in_environment(E,critical_point(E))
        & greater_or_equal(T,appear(efficient_producers,E))
        & greater(critical_point(E),T) )
     => selection_favors(first_movers,efficient_producers,T) ) ).

%--------------------------------------------------------------------------
