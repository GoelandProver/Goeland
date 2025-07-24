include('Axioms/HAL001+0.ax').
fof(x_morphism,hypothesis,
    morphism(x,any1,any2) ).

fof(injection_properties_2,axiom,
    ! [Morphism,Dom,Cod] :
      ( ( injection_2(Morphism)
        & morphism(Morphism,Dom,Cod) )
     => ! [El] :
          ( ( element(El,Dom)
            & zero(Cod) = apply(Morphism,El) )
         => zero(Dom) = El ) ) ).

fof(my,conjecture,
    ( injection_2(x)
  <=> injection(x) ) ).

fof(properties_for_injection_2,axiom,
    ! [Morphism,Dom,Cod] :
      ( injection_2(Morphism)
     <= ( ! [El] :
            ( El = zero(Dom)
           <= ( element(El,Dom)
              & apply(Morphism,El) = zero(Cod) ) )
        & morphism(Morphism,Dom,Cod) ) ) ).

