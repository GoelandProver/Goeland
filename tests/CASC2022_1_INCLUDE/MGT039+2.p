%--------------------------------------------------------------------------
% File     : MGT039+2 : TPTP v8.1.0. Released v2.0.0.
% Domain   : Management (Organisation Theory)
% Problem  : Selection favours EPs above Fms if change is slow
% Version  : [PM93] axioms.
% English  : Selection favors efficient producers above first movers if
%            environmental change is slow.

% Refs     : [PM93]  Peli & Masuch (1993), The Logic of Propogation Strateg
%          : [PM94]  Peli & Masuch (1994), The Logic of Propogation Strateg
%          : [Kam95] Kamps (1995), Email to G. Sutcliffe
% Source   : [PM93]
% Names    : Theorem 8 [PM93]

% Status   : Theorem
% Rating   : 0.25 v8.1.0, 0.22 v7.5.0, 0.28 v7.4.0, 0.20 v7.3.0, 0.24 v7.2.0, 0.21 v7.1.0, 0.17 v7.0.0, 0.23 v6.3.0, 0.21 v6.2.0, 0.28 v6.1.0, 0.33 v6.0.0, 0.26 v5.5.0, 0.33 v5.4.0, 0.36 v5.3.0, 0.41 v5.2.0, 0.20 v5.1.0, 0.24 v5.0.0, 0.25 v4.1.0, 0.26 v4.0.1, 0.30 v4.0.0, 0.29 v3.7.0, 0.30 v3.5.0, 0.26 v3.4.0, 0.32 v3.3.0, 0.36 v3.2.0, 0.55 v3.1.0, 0.56 v2.7.0, 0.50 v2.6.0, 0.57 v2.5.0, 0.62 v2.4.0, 0.50 v2.3.0, 0.33 v2.2.1, 0.00 v2.1.0
% Syntax   : Number of formulae    :   19 (   2 unt;   0 def)
%            Number of atoms       :   71 (   3 equ)
%            Maximal formula atoms :    7 (   3 avg)
%            Number of connectives :   54 (   2   ~;   1   |;  31   &)
%                                         (   1 <=>;  19  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   10 (   6 avg)
%            Maximal term depth    :    2 (   1 avg)
%            Number of predicates  :   11 (  10 usr;   0 prp; 1-4 aty)
%            Number of functors    :    9 (   9 usr;   3 con; 0-2 aty)
%            Number of variables   :   38 (  37   !;   1   ?)
% SPC      : FOF_THM_RFO_SEQ

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

%----MP3. If selection favors organizations of a certain propagation
%----strategy, s1, above an other, s2, at the endpoints of all
%----environments in the observational period, then it favors s1 above
%----s2 during the whole observational period.
%----Instantiation: EP = s1 ; FM = s2
fof(mp3_favoured_trategy,axiom,
    ! [P] :
      ( ( observational_period(P)
        & propagation_strategy(first_movers)
        & propagation_strategy(efficient_producers)
        & ! [E] :
            ( ( environment(E)
              & in_environment(P,E) )
           => selection_favors(efficient_producers,first_movers,end_time(E)) ) )
     => selection_favors(efficient_producers,first_movers,P) ) ).

%----MP4. If environmental change is slow during an observational
%----period, then all the environments in the observational period contain a
%----critical point.
fof(mp4_critical_point,axiom,
    ! [P] :
      ( ( observational_period(P)
        & slow_change(P) )
     => ! [E] :
          ( ( environment(E)
            & in_environment(P,E) )
         => ? [T] :
              ( in_environment(E,T)
              & greater(T,critical_point(E)) ) ) ) ).

%----MP. First movers and efficient producers are organizational sets of a
%----certain propagation strategy.
fof(mp_organizational_sets1,axiom,
    propagation_strategy(first_movers) ).

fof(mp_organizational_sets2,axiom,
    propagation_strategy(efficient_producers) ).

%----MP. If a time point occurs between the beginning and the end of the
%----environment, then it belongs to the environment.
fof(mp_time_in_environment,axiom,
    ! [E,T] :
      ( ( environment(E)
        & greater_or_equal(T,start_time(E))
        & greater_or_equal(end_time(E),T) )
     => in_environment(E,T) ) ).

%----MP. If a time point belongs to the environment, then the end-point of
%----the environment cannot precede it.
fof(mp_environment_end_point,axiom,
    ! [E,T] :
      ( ( environment(E)
        & in_environment(E,T) )
     => greater_or_equal(end_time(E),T) ) ).

%----MP.  If the number of both first movers and efficient producers is
%----positive in an environment, then the population in this environment
%----contains a first mover and an efficient producer subpopulation.
fof(mp_contains_FM_and_EP,axiom,
    ! [E,T] :
      ( ( environment(E)
        & in_environment(E,T)
        & greater(cardinality_at_time(first_movers,T),zero)
        & greater(cardinality_at_time(efficient_producers,T),zero) )
     => subpopulations(first_movers,efficient_producers,E,T) ) ).

%----MP. The number of first movers cannot be negative.
fof(mp_first_movers_exist,axiom,
    ! [E,T] :
      ( ( environment(E)
        & in_environment(E,T) )
     => greater_or_equal(cardinality_at_time(first_movers,T),zero) ) ).

%----MP. First movers and efficient producers are subpopulations.
fof(mp_subpopulations,axiom,
    ! [E,T] :
      ( ( environment(E)
        & in_environment(E,T) )
     => ( subpopulation(first_movers,E,T)
        & subpopulation(efficient_producers,E,T) ) ) ).

%----MP. The critical point cannot precede the appearence of efficient
%----producers.
fof(mp_critical_point_after_EP,axiom,
    ! [E] :
      ( environment(E)
     => greater_or_equal(critical_point(E),appear(efficient_producers,E)) ) ).

%----MP. The critical point of an environment cannot precede the
%----environment's opening time.
fof(mp_time_of_critical_point,axiom,
    ! [E] :
      ( environment(E)
     => greater_or_equal(critical_point(E),start_time(E)) ) ).

%----MP. inequality
fof(mp_greater_transitivity,axiom,
    ! [X,Y,Z] :
      ( ( greater(X,Y)
        & greater(Y,Z) )
     => greater(X,Z) ) ).

%----MP. on beginning and ending times
fof(mp_beginning_and_ending,axiom,
    ! [E,T] :
      ( ( environment(E)
        & greater(T,start_time(E))
        & ~ greater(T,end_time(E)) )
     => greater_or_equal(end_time(E),T) ) ).

%----MP. on "greater or equal to"
fof(mp_greater_or_equal,axiom,
    ! [X,Y] :
      ( greater_or_equal(X,Y)
    <=> ( greater(X,Y)
        | X = Y ) ) ).

%----D1(<=). If a time-point is the critical point of the environment,
%----then it is the earliest time past which the growth rate of efficient
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

%----T6. Once appeared in an environment, efficient producers do not
%----disappear.
fof(t6,hypothesis,
    ! [E,T] :
      ( ( environment(E)
        & in_environment(E,T)
        & greater_or_equal(T,appear(efficient_producers,E)) )
     => greater(cardinality_at_time(efficient_producers,T),zero) ) ).

%----GOAL: T8. Selection favors efficient producers above first movers if
%----environmental change is slow.
fof(prove_t8,conjecture,
    ! [P] :
      ( ( observational_period(P)
        & slow_change(P) )
     => selection_favors(efficient_producers,first_movers,P) ) ).

%--------------------------------------------------------------------------
