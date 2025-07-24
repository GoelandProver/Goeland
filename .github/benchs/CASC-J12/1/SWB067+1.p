include('Axioms/SWB001+0.ax').
fof(premise_rdfbased_sem_inv_trans,axiom,
    ( iext(uri_owl_inverseOf,uri_ex_p3,uri_ex_p2)
    & iext(uri_owl_inverseOf,uri_ex_p2,uri_ex_p1) ) ).

fof(conclusion_rdfbased_sem_inv_trans,conjecture,
    iext(uri_owl_equivalentProperty,uri_ex_p3,uri_ex_p1) ).

