include('Axioms/MGT001+0.ax').
fof(assumption_15,axiom,
    ! [X,T0,T] :
      ( ( age(X,T0) = zero
        & organization(X) )
     => ( greater(age(X,T),sigma)
      <=> dissimilar(X,T0,T) ) ) ).

fof(assumption_18e,axiom,
    greater(mod2,low) ).

fof(assumption_17,axiom,
    ! [X,T] :
      ( organization(X)
     => ( ( ( ( ( positional_advantage(X,T)
                & ~ is_aligned(X,T) )
             => mod1 = hazard_of_mortality(X,T) )
            & ( ( is_aligned(X,T)
                & ~ positional_advantage(X,T) )
             => mod2 = hazard_of_mortality(X,T) )
            & ( high = hazard_of_mortality(X,T)
             <= ( ~ positional_advantage(X,T)
                & ~ is_aligned(X,T) ) )
            & ( low = hazard_of_mortality(X,T)
             <= ( positional_advantage(X,T)
                & is_aligned(X,T) ) ) )
         <= ~ has_immunity(X,T) )
        & ( hazard_of_mortality(X,T) = very_low
         <= has_immunity(X,T) ) ) ) ).

fof(assumption_1,axiom,
    ! [X,T] :
      ( ~ has_immunity(X,T)
     <= ( ~ has_endowment(X)
        & organization(X) ) ) ).

fof(assumption_18a,axiom,
    greater(high,mod1) ).

fof(theorem_9,conjecture,
    ! [X,T0,T1,T2,T3] :
      ( ( smaller(hazard_of_mortality(X,T3),hazard_of_mortality(X,T1))
        & hazard_of_mortality(X,T1) = hazard_of_mortality(X,T0)
        & smaller(hazard_of_mortality(X,T1),hazard_of_mortality(X,T2)) )
     <= ( robust_position(X)
        & ~ has_endowment(X)
        & age(X,T0) = zero
        & greater(sigma,zero)
        & greater(tau,zero)
        & smaller_or_equal(age(X,T1),sigma)
        & greater(age(X,T2),sigma)
        & greater(age(X,T3),tau)
        & smaller_or_equal(age(X,T2),tau)
        & smaller(sigma,tau)
        & organization(X) ) ) ).

fof(definition_2,axiom,
    ! [X,T0,T] :
      ( ( organization(X)
        & ~ ( is_aligned(X,T)
          <=> is_aligned(X,T0) ) )
    <=> dissimilar(X,T0,T) ) ).

fof(definition_1,axiom,
    ! [X] :
      ( has_endowment(X)
    <=> ! [T] :
          ( organization(X)
          & ( smaller_or_equal(age(X,T),eta)
           => has_immunity(X,T) )
          & ( greater(age(X,T),eta)
           => ~ has_immunity(X,T) ) ) ) ).

fof(assumption_13,axiom,
    ! [X,T] :
      ( is_aligned(X,T)
     <= ( organization(X)
        & age(X,T) = zero ) ) ).

fof(assumption_19,axiom,
    greater(mod2,mod1) ).

fof(definition_4,axiom,
    ! [X] :
      ( ! [T] :
          ( ( positional_advantage(X,T)
           <= greater(age(X,T),tau) )
          & ( smaller_or_equal(age(X,T),tau)
           => ~ positional_advantage(X,T) ) )
    <=> robust_position(X) ) ).

fof(assumption_18c,axiom,
    greater(low,very_low) ).

fof(assumption_18d,axiom,
    greater(high,mod2) ).

fof(assumption_18b,axiom,
    greater(mod1,low) ).

