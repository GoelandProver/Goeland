include('Axioms/SWB001+0.ax').
fof(conclusion_rdfbased_sem_restrict_term_cardqcr,conjecture,
    iext(uri_owl_equivalentClass,uri_ex_z1,uri_ex_z2) ).

fof(premise_rdfbased_sem_restrict_term_cardqcr,axiom,
    ( iext(uri_owl_qualifiedCardinality,uri_ex_z2,literal_typed(dat_str_1,uri_xsd_nonNegativeInteger))
    & iext(uri_owl_onProperty,uri_ex_z2,uri_ex_p)
    & iext(uri_owl_onClass,uri_ex_z2,uri_owl_Thing)
    & iext(uri_owl_onProperty,uri_ex_z1,uri_ex_p)
    & iext(uri_owl_cardinality,uri_ex_z1,literal_typed(dat_str_1,uri_xsd_nonNegativeInteger)) ) ).

