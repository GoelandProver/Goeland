include('Axioms/SWB001+0.ax').
fof(conclusion_rdfbased_sem_restrict_maxqcr_cmp_card,conjecture,
    iext(uri_rdfs_subClassOf,uri_ex_x1,uri_ex_x2) ).

fof(premise_rdfbased_sem_restrict_maxqcr_cmp_card,axiom,
    ( iext(uri_owl_maxQualifiedCardinality,uri_ex_x2,literal_typed(dat_str_2,uri_xsd_nonNegativeInteger))
    & iext(uri_owl_onProperty,uri_ex_x2,uri_ex_p)
    & iext(uri_owl_maxQualifiedCardinality,uri_ex_x1,literal_typed(dat_str_1,uri_xsd_nonNegativeInteger))
    & iext(uri_owl_onProperty,uri_ex_x1,uri_ex_p)
    & iext(uri_owl_onClass,uri_ex_x1,uri_ex_c)
    & iext(uri_owl_onClass,uri_ex_x2,uri_ex_c) ) ).

