include('Axioms/SWB001+0.ax').
fof(conclusion_rdfbased_sem_restrict_term_sameall,conjecture,
    iext(uri_owl_equivalentClass,uri_ex_z1,uri_ex_nz2) ).

fof(premise_rdfbased_sem_restrict_term_sameall,axiom,
    ( iext(uri_owl_complementOf,uri_ex_nz2,uri_ex_z2)
    & iext(uri_owl_onProperty,uri_ex_z2,uri_ex_p)
    & iext(uri_owl_allValuesFrom,uri_ex_z1,uri_ex_nc)
    & iext(uri_owl_onProperty,uri_ex_z1,uri_ex_p)
    & iext(uri_owl_someValuesFrom,uri_ex_z2,uri_ex_c)
    & iext(uri_owl_complementOf,uri_ex_nc,uri_ex_c) ) ).

