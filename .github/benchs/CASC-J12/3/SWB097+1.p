include('Axioms/SWB001+0.ax').
fof(premise_rdfbased_sem_restrict_minqcr_inst_subj_one,axiom,
    ( iext(uri_rdf_type,uri_ex_x,uri_ex_c)
    & iext(uri_ex_p,uri_ex_w,uri_ex_x)
    & iext(uri_owl_onClass,uri_ex_z,uri_ex_c)
    & iext(uri_owl_onProperty,uri_ex_z,uri_ex_p)
    & iext(uri_owl_minQualifiedCardinality,uri_ex_z,literal_typed(dat_str_1,uri_xsd_nonNegativeInteger)) ) ).

fof(conclusion_rdfbased_sem_restrict_minqcr_inst_subj_one,conjecture,
    iext(uri_rdf_type,uri_ex_w,uri_ex_z) ).

