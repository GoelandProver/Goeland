fof(a11,hypothesis,
    ! [E,X,T] :
      ( ( efficient_producers = X
        | first_movers = X )
     <= ( greater(cardinality_at_time(X,T),zero)
        & subpopulation(X,E,T)
        & environment(E) ) ) ).

fof(a4,hypothesis,
    ! [E,T] :
      ( ( ( greater(equilibrium(E),T)
         => decreases(resources(E,T)) )
        & ( constant(resources(E,T))
         <= ~ greater(equilibrium(E),T) ) )
     <= ( environment(E)
        & in_environment(E,T)
        & greater(number_of_organizations(E,T),zero) ) ) ).

fof(mp_environment_not_empty,axiom,
    ! [E,T] :
      ( greater(number_of_organizations(E,T),zero)
     <= ( environment(E)
        & subpopulations(first_movers,efficient_producers,E,T) ) ) ).

fof(mp_only_members,axiom,
    ! [E,X,T] :
      ( ( environment(E)
        & subpopulation(X,E,T)
        & ( greater(cardinality_at_time(X,T),zero)
         => ( X = first_movers
            | efficient_producers = X ) ) )
     => sum(cardinality_at_time(first_movers,T),cardinality_at_time(efficient_producers,T)) = number_of_organizations(E,T) ) ).

fof(l1,hypothesis,
    ! [E] :
      ( ( stable(E)
        & environment(E) )
     => ? [To] :
          ( in_environment(E,To)
          & ! [T] :
              ( greater(growth_rate(efficient_producers,T),growth_rate(first_movers,T))
             <= ( subpopulations(first_movers,efficient_producers,E,T)
                & greater_or_equal(T,To) ) ) ) ) ).

fof(mp_abc_sum_increase,axiom,
    ! [A,B,C] :
      ( ( constant(A)
        & A = sum(B,C) )
     => ( ( constant(C)
          & constant(B) )
        | ( decreases(C)
          & increases(B) )
        | ( decreases(B)
          & increases(C) ) ) ) ).

fof(mp_time_point_in_environment,axiom,
    ! [E,T] :
      ( ( subpopulations(first_movers,efficient_producers,E,T)
        & environment(E) )
     => in_environment(E,T) ) ).

fof(prove_t4,conjecture,
    ! [E] :
      ( ( environment(E)
        & stable(E) )
     => ? [To] :
          ( in_environment(E,To)
          & ! [T] :
              ( ( greater_or_equal(T,To)
                & subpopulations(first_movers,efficient_producers,E,T) )
             => outcompetes(efficient_producers,first_movers,T) ) ) ) ).

fof(a5,hypothesis,
    ! [E] :
      ( ? [T] :
          ( in_environment(E,T)
          & greater_or_equal(T,equilibrium(E)) )
     <= ( environment(E)
        & stable(E) ) ) ).

fof(d2,hypothesis,
    ! [E,S1,S2,T] :
      ( ( subpopulations(S1,S2,E,T)
        & environment(E) )
     => ( ( greater_or_equal(growth_rate(S2,T),zero)
          & greater(zero,growth_rate(S1,T)) )
      <=> outcompetes(S2,S1,T) ) ) ).

fof(mp_times_in_environment,axiom,
    ! [E,T1,T2] :
      ( ( greater(T1,T2)
        | T2 = T1
        | greater(T2,T1) )
     <= ( in_environment(E,T2)
        & in_environment(E,T1) ) ) ).

fof(mp6_2,axiom,
    ! [X,Y] :
      ~ ( greater(Y,X)
        & greater(X,Y) ) ).

fof(mp_equilibrium,axiom,
    ! [E,T] :
      ( ~ greater(equilibrium(E),T)
     <= ( greater_or_equal(T,equilibrium(E))
        & environment(E) ) ) ).

fof(mp_greater_or_equal,axiom,
    ! [X,Y] :
      ( ( X = Y
        | greater(X,Y) )
    <=> greater_or_equal(X,Y) ) ).

fof(mp_FM_and_EP_organisational,axiom,
    ! [E,T] :
      ( ( subpopulation(efficient_producers,E,T)
        & subpopulation(first_movers,E,T) )
     <= ( in_environment(E,T)
        & environment(E) ) ) ).

fof(mp_greater_transitivity,axiom,
    ! [X,Y,Z] :
      ( greater(X,Z)
     <= ( greater(Y,Z)
        & greater(X,Y) ) ) ).

fof(mp_growth_rate,axiom,
    ! [X,E,T] :
      ( ( in_environment(E,T)
        & greater(cardinality_at_time(X,T),zero)
        & subpopulation(X,E,T)
        & environment(E) )
     => ( ( constant(cardinality_at_time(X,T))
         => growth_rate(X,T) = zero )
        & ( increases(cardinality_at_time(X,T))
         => greater(growth_rate(X,T),zero) )
        & ( decreases(cardinality_at_time(X,T))
         => greater(zero,growth_rate(X,T)) ) ) ) ).

fof(mp_positive_number_of_organizations,axiom,
    ! [E,T] :
      ( ( greater(cardinality_at_time(efficient_producers,T),zero)
        & greater(cardinality_at_time(first_movers,T),zero) )
     <= ( subpopulations(first_movers,efficient_producers,E,T)
        & environment(E) ) ) ).

fof(mp6_1,axiom,
    ! [X,Y] :
      ~ ( Y = X
        & greater(X,Y) ) ).

fof(a7,hypothesis,
    ! [E,T] :
      ( ( ( constant(resources(E,T))
         => constant(number_of_organizations(E,T)) )
        & ( ~ decreases(number_of_organizations(E,T))
         <= decreases(resources(E,T)) ) )
     <= ( environment(E)
        & in_environment(E,T) ) ) ).

