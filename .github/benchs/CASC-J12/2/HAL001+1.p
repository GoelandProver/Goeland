include('Axioms/HAL001+0.ax').
fof(f_morphism,axiom,
    morphism(f,a,d) ).

fof(g_morphism,axiom,
    morphism(g,b,e) ).

fof(beta_morphism,axiom,
    morphism(beta,b,c) ).

fof(gamma_delta_exact,axiom,
    exact(gammma,delta) ).

fof(delta_morphism,axiom,
    morphism(delta,e,r) ).

fof(alpha_g_f_gamma_commute,axiom,
    commute(alpha,g,f,gamma) ).

fof(alpha_beta_exact,axiom,
    exact(alpha,beta) ).

fof(gamma_morphism,axiom,
    morphism(gamma,d,e) ).

fof(delta_surjection,axiom,
    surjection(delta) ).

fof(gamma_injection,axiom,
    injection(gamma) ).

fof(g_injection,conjecture,
    injection(g) ).

fof(h_injection,hypothesis,
    injection(h) ).

fof(beta_h_g_delta_commute,axiom,
    commute(beta,h,g,delta) ).

fof(f_injection,hypothesis,
    injection(f) ).

fof(h_morphism,axiom,
    morphism(h,c,r) ).

fof(beta_surjection,axiom,
    surjection(beta) ).

fof(alpha_injection,axiom,
    injection(alpha) ).

fof(alpha_morphism,axiom,
    morphism(alpha,a,b) ).

