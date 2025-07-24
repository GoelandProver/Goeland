include('Axioms/SWB001+0.ax').
fof(conclusion_rdfbased_sem_char_inversefunc_term,conjecture,
    iext(uri_rdf_type,uri_ex_p2,uri_owl_InverseFunctionalProperty) ).

fof(premise_rdfbased_sem_char_inversefunc_term,axiom,
    ( iext(uri_owl_inverseOf,uri_ex_p2,uri_ex_p1)
    & iext(uri_rdf_type,uri_ex_p1,uri_owl_FunctionalProperty) ) ).

