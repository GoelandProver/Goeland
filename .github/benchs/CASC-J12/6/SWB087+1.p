include('Axioms/SWB001+0.ax').
fof(premise_rdfbased_sem_restrict_hasself_inst_subj,axiom,
    ( iext(uri_owl_hasSelf,uri_ex_z,literal_typed(dat_str_true,uri_xsd_boolean))
    & iext(uri_owl_onProperty,uri_ex_z,uri_ex_p)
    & iext(uri_ex_p,uri_ex_w,uri_ex_w) ) ).

fof(conclusion_rdfbased_sem_restrict_hasself_inst_subj,conjecture,
    iext(uri_rdf_type,uri_ex_w,uri_ex_z) ).

