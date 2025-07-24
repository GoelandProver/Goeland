include('Axioms/SWB001+0.ax').
fof(premise_rdfbased_sem_restrict_hasself_cmp_prop,axiom,
    ( iext(uri_owl_hasSelf,uri_ex_x2,literal_typed(dat_str_true,uri_xsd_boolean))
    & iext(uri_owl_onProperty,uri_ex_x2,uri_ex_p2)
    & iext(uri_rdfs_subPropertyOf,uri_ex_p1,uri_ex_p2)
    & iext(uri_owl_onProperty,uri_ex_x1,uri_ex_p1)
    & iext(uri_owl_hasSelf,uri_ex_x1,literal_typed(dat_str_true,uri_xsd_boolean)) ) ).

fof(conclusion_rdfbased_sem_restrict_hasself_cmp_prop,conjecture,
    iext(uri_rdfs_subClassOf,uri_ex_x1,uri_ex_x2) ).

