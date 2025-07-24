include('Axioms/SWB001+0.ax').
fof(premise_rdfbased_sem_restrict_term_someqcr,axiom,
    ( iext(uri_owl_minQualifiedCardinality,uri_ex_z2,literal_typed(dat_str_1,uri_xsd_nonNegativeInteger))
    & iext(uri_owl_someValuesFrom,uri_ex_z1,uri_ex_c)
    & iext(uri_owl_onProperty,uri_ex_z1,uri_ex_p)
    & iext(uri_owl_onClass,uri_ex_z2,uri_ex_c)
    & iext(uri_owl_onProperty,uri_ex_z2,uri_ex_p) ) ).

fof(conclusion_rdfbased_sem_restrict_term_someqcr,conjecture,
    iext(uri_owl_equivalentClass,uri_ex_z1,uri_ex_z2) ).

