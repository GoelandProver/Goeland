include('Axioms/MGT001+0.ax').
fof(assumption_1,axiom,
    ! [X,T] :
      ( ( organization(X)
        & ~ has_endowment(X) )
     => ~ has_immunity(X,T) ) ).

fof(theorem_10,conjecture,
    ! [X,T0,T1,T2,T3] :
      ( ( smaller(hazard_of_mortality(X,T2),hazard_of_mortality(X,T3))
        & hazard_of_mortality(X,T1) = hazard_of_mortality(X,T0)
        & smaller(hazard_of_mortality(X,T3),hazard_of_mortality(X,T1)) )
     <= ( organization(X)
        & robust_position(X)
        & ~ has_endowment(X)
        & zero = age(X,T0)
        & greater(sigma,tau)
        & smaller_or_equal(age(X,T1),tau)
        & greater(age(X,T2),tau)
        & smaller_or_equal(age(X,T2),sigma)
        & greater(age(X,T3),sigma)
        & greater(tau,zero)
        & greater(sigma,zero) ) ) ).

fof(assumption_18a,axiom,
    greater(high,mod1) ).

fof(assumption_15,axiom,
    ! [X,T0,T] :
      ( ( zero = age(X,T0)
        & organization(X) )
     => ( greater(age(X,T),sigma)
      <=> dissimilar(X,T0,T) ) ) ).

fof(definition_2,axiom,
    ! [X,T0,T] :
      ( dissimilar(X,T0,T)
    <=> ( organization(X)
        & ~ ( is_aligned(X,T0)
          <=> is_aligned(X,T) ) ) ) ).

fof(assumption_18c,axiom,
    greater(low,very_low) ).

fof(assumption_13,axiom,
    ! [X,T] :
      ( is_aligned(X,T)
     <= ( age(X,T) = zero
        & organization(X) ) ) ).

fof(assumption_18e,axiom,
    greater(mod2,low) ).

fof(assumption_18b,axiom,
    greater(mod1,low) ).

fof(assumption_19,axiom,
    greater(mod2,mod1) ).

fof(definition_4,axiom,
    ! [X] :
      ( ! [T] :
          ( ( positional_advantage(X,T)
           <= greater(age(X,T),tau) )
          & ( ~ positional_advantage(X,T)
           <= smaller_or_equal(age(X,T),tau) ) )
    <=> robust_position(X) ) ).

fof(assumption_17,axiom,
    ! [X,T] :
      ( ( ( very_low = hazard_of_mortality(X,T)
         <= has_immunity(X,T) )
        & ( ( ( hazard_of_mortality(X,T) = mod2
             <= ( is_aligned(X,T)
                & ~ positional_advantage(X,T) ) )
            & ( ( ~ is_aligned(X,T)
                & ~ positional_advantage(X,T) )
             => hazard_of_mortality(X,T) = high )
            & ( hazard_of_mortality(X,T) = mod1
             <= ( ~ is_aligned(X,T)
                & positional_advantage(X,T) ) )
            & ( low = hazard_of_mortality(X,T)
             <= ( is_aligned(X,T)
                & positional_advantage(X,T) ) ) )
         <= ~ has_immunity(X,T) ) )
     <= organization(X) ) ).

fof(assumption_18d,axiom,
    greater(high,mod2) ).

fof(definition_1,axiom,
    ! [X] :
      ( has_endowment(X)
    <=> ! [T] :
          ( organization(X)
          & ( greater(age(X,T),eta)
           => ~ has_immunity(X,T) )
          & ( has_immunity(X,T)
           <= smaller_or_equal(age(X,T),eta) ) ) ) ).

