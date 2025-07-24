include('Axioms/SWB001+0.ax').
fof(premise_rdfbased_sem_restrict_term_dataqcr,axiom,
    ( iext(uri_rdf_type,uri_ex_p,uri_owl_DatatypeProperty)
    & iext(uri_owl_onProperty,uri_ex_z2,uri_ex_p)
    & iext(uri_owl_onDataRange,uri_ex_z2,uri_ex_d)
    & iext(uri_rdf_type,uri_ex_d,uri_rdfs_Datatype)
    & iext(uri_owl_onProperty,uri_ex_z1,uri_ex_p)
    & iext(uri_owl_onClass,uri_ex_z1,uri_ex_d)
    & iext(uri_owl_qualifiedCardinality,uri_ex_z1,literal_typed(dat_str_1,uri_xsd_nonNegativeInteger))
    & iext(uri_owl_qualifiedCardinality,uri_ex_z2,literal_typed(dat_str_1,uri_xsd_nonNegativeInteger)) ) ).

fof(conclusion_rdfbased_sem_restrict_term_dataqcr,conjecture,
    iext(uri_owl_equivalentClass,uri_ex_z1,uri_ex_z2) ).

