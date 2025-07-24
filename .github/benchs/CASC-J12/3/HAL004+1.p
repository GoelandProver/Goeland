include('Axioms/HAL001+0.ax').
fof(alpha_beta_exact,axiom,
    exact(alpha,beta) ).

fof(alpha_g_f_gamma_commute,axiom,
    commute(alpha,g,f,gamma) ).

fof(h_morphism,axiom,
    morphism(h,c,r) ).

fof(f_surjection,hypothesis,
    surjection(f) ).

fof(f_morphism,axiom,
    morphism(f,a,d) ).

fof(gamma_delta_exact,axiom,
    exact(gammma,delta) ).

fof(delta_surjection,axiom,
    surjection(delta) ).

fof(gamma_morphism,axiom,
    morphism(gamma,d,e) ).

fof(beta_h_g_delta_commute,axiom,
    commute(beta,h,g,delta) ).

fof(gamma_injection,axiom,
    injection(gamma) ).

fof(delta_morphism,axiom,
    morphism(delta,e,r) ).

fof(alpha_injection,axiom,
    injection(alpha) ).

fof(beta_morphism,axiom,
    morphism(beta,b,c) ).

fof(lemma3,conjecture,
    ! [E] :
      ( element(E,e)
     => ? [R,B1] :
          ( element(R,r)
          & R = apply(delta,apply(g,B1))
          & R = apply(h,apply(beta,B1))
          & element(B1,b)
          & R = apply(delta,E) ) ) ).

fof(h_surjection,hypothesis,
    surjection(h) ).

fof(beta_surjection,axiom,
    surjection(beta) ).

fof(g_morphism,axiom,
    morphism(g,b,e) ).

fof(alpha_morphism,axiom,
    morphism(alpha,a,b) ).

