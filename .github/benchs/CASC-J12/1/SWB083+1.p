include('Axioms/SWB001+0.ax').
fof(conclusion_rdfbased_sem_restrict_allvalues_inst_subj,conjecture,
    iext(uri_rdf_type,uri_ex_w,uri_ex_z) ).

fof(premise_rdfbased_sem_restrict_allvalues_inst_subj,axiom,
    ( iext(uri_owl_onProperty,uri_ex_z,uri_ex_p)
    & iext(uri_rdfs_range,uri_ex_p,uri_ex_c)
    & iext(uri_rdf_type,uri_ex_w,uri_owl_Thing)
    & iext(uri_owl_allValuesFrom,uri_ex_z,uri_ex_c) ) ).

