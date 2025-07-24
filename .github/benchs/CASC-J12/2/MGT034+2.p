fof(mp_decreasing_function,axiom,
    ! [E,T,To] :
      ( ( environment(E)
        & in_environment(E,To)
        & greater_or_equal(T,appear(efficient_producers,E))
        & greater(To,T)
        & greater_or_equal(difference(growth_rate(first_movers,To),growth_rate(efficient_producers,To)),zero) )
     => ( decreases(difference(growth_rate(first_movers,T),growth_rate(efficient_producers,T)))
       => greater(difference(growth_rate(first_movers,T),growth_rate(efficient_producers,T)),zero) ) ) ).

fof(a10,hypothesis,
    ! [E,T1,T2,T] :
      ( ( environment(E)
        & subpopulations(first_movers,efficient_producers,E,T2)
        & greater_or_equal(T2,T)
        & greater_or_equal(T,T1)
        & subpopulations(first_movers,efficient_producers,E,T1) )
     => subpopulations(first_movers,efficient_producers,E,T) ) ).

fof(mp_positive_growth_rate_difference,axiom,
    ! [T] :
      ( greater(growth_rate(first_movers,T),growth_rate(efficient_producers,T))
    <=> greater(difference(growth_rate(first_movers,T),growth_rate(efficient_producers,T)),zero) ) ).

fof(l3,axiom,
    ! [E,T] :
      ( ( subpopulations(first_movers,efficient_producers,E,T)
        & environment(E) )
     => ~ decreases(difference(disbanding_rate(first_movers,T),disbanding_rate(efficient_producers,T))) ) ).

fof(mp_critical_point_means_FM_and_EP,axiom,
    ! [E] :
      ( ( in_environment(E,critical_point(E))
        & environment(E) )
     => subpopulations(first_movers,efficient_producers,E,critical_point(E)) ) ).

fof(mp_contains_FM_and_EP,axiom,
    ! [E,T] :
      ( subpopulations(first_movers,efficient_producers,E,T)
     <= ( environment(E)
        & greater(cardinality_at_time(efficient_producers,T),zero)
        & greater(cardinality_at_time(first_movers,T),zero)
        & in_environment(E,T) ) ) ).

fof(mp_symmetry_of_subpopulations,axiom,
    ! [E,T] :
      ( ( subpopulations(first_movers,efficient_producers,E,T)
        & environment(E) )
     => subpopulations(efficient_producers,first_movers,E,T) ) ).

fof(mp_opening_time_in_duration,axiom,
    ! [E] :
      ( environment(E)
     => in_environment(E,start_time(E)) ) ).

fof(d1,hypothesis,
    ! [E,Tc] :
      ( ( ! [T] :
            ( ( greater(T,Tc)
              & subpopulations(first_movers,efficient_producers,E,T) )
           => greater(growth_rate(efficient_producers,T),growth_rate(first_movers,T)) )
        & ~ greater(growth_rate(efficient_producers,Tc),growth_rate(first_movers,Tc)) )
     <= ( environment(E)
        & Tc = critical_point(E) ) ) ).

fof(mp_difference_between_founding_rates,axiom,
    ! [T] :
      ( ( ~ decreases(difference(disbanding_rate(first_movers,T),disbanding_rate(efficient_producers,T)))
        & decreases(difference(founding_rate(first_movers,T),founding_rate(efficient_producers,T))) )
     => decreases(difference(growth_rate(first_movers,T),growth_rate(efficient_producers,T))) ) ).

fof(mp1_high_growth_rates,axiom,
    ! [E,S1,S2,T] :
      ( selection_favors(S2,S1,T)
     <= ( environment(E)
        & greater(growth_rate(S2,T),growth_rate(S1,T))
        & subpopulations(S1,S2,E,T) ) ) ).

fof(mp_FM_and_EP_when_EP_appears,axiom,
    ! [E] :
      ( subpopulations(first_movers,efficient_producers,E,appear(efficient_producers,E))
     <= ( in_environment(E,appear(efficient_producers,E))
        & environment(E) ) ) ).

fof(prove_t3,conjecture,
    ! [E,T] :
      ( selection_favors(first_movers,efficient_producers,T)
     <= ( in_environment(E,critical_point(E))
        & greater(critical_point(E),T)
        & greater_or_equal(T,appear(efficient_producers,E))
        & environment(E) ) ) ).

fof(mp_critical_time_points,axiom,
    ! [E,T] :
      ( in_environment(E,T)
     <= ( environment(E)
        & in_environment(E,critical_point(E))
        & greater_or_equal(T,appear(efficient_producers,E))
        & greater(critical_point(E),T) ) ) ).

fof(mp_no_FM_before_opening,axiom,
    ! [E] :
      ( environment(E)
     => greater_or_equal(appear(first_movers,E),start_time(E)) ) ).

fof(a12,hypothesis,
    ! [E,T] :
      ( ( environment(E)
        & subpopulations(first_movers,efficient_producers,E,T) )
     => decreases(difference(founding_rate(first_movers,T),founding_rate(efficient_producers,T))) ) ).

fof(mp_greater_or_equal,axiom,
    ! [X,Y] :
      ( greater_or_equal(X,Y)
    <=> ( X = Y
        | greater(X,Y) ) ) ).

fof(mp_relationship_of_growth_rates,axiom,
    ! [E,T] :
      ( greater_or_equal(difference(growth_rate(first_movers,T),growth_rate(efficient_producers,T)),zero)
     <= ( environment(E)
        & ~ greater(zero,difference(growth_rate(first_movers,T),growth_rate(efficient_producers,T)))
        & subpopulations(first_movers,efficient_producers,E,T) ) ) ).

fof(mp_negative_growth_rate_difference,axiom,
    ! [T] :
      ( greater(zero,difference(growth_rate(first_movers,T),growth_rate(efficient_producers,T)))
    <=> greater(growth_rate(efficient_producers,T),growth_rate(first_movers,T)) ) ).

fof(mp_FM_and_EP_members_EP_appeared,axiom,
    ! [E,T] :
      ( greater_or_equal(T,appear(efficient_producers,E))
     <= ( environment(E)
        & subpopulations(first_movers,efficient_producers,E,T) ) ) ).

fof(mp_durations_are_time_intervals,axiom,
    ! [E,T1,T2,T] :
      ( ( environment(E)
        & in_environment(E,T1)
        & greater_or_equal(T,T1)
        & greater_or_equal(T2,T)
        & in_environment(E,T2) )
     => in_environment(E,T) ) ).

