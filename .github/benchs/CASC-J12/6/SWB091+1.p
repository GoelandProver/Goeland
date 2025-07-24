include('Axioms/SWB001+0.ax').
fof(conclusion_rdfbased_sem_restrict_maxqcr_inst_subj_one,conjecture,
    iext(uri_rdf_type,uri_ex_w,uri_ex_z) ).

fof(premise_rdfbased_sem_restrict_maxqcr_inst_subj_one,axiom,
    ? [X1,X3,X2,X0] :
      ( iext(uri_rdfs_range,uri_ex_p,X0)
      & iext(uri_owl_maxQualifiedCardinality,uri_ex_z,literal_typed(dat_str_1,uri_xsd_nonNegativeInteger))
      & iext(uri_owl_onClass,uri_ex_z,uri_ex_c)
      & iext(uri_rdf_rest,X1,X2)
      & iext(uri_owl_complementOf,X3,uri_ex_c)
      & iext(uri_rdf_type,uri_ex_x2,X3)
      & iext(uri_ex_p,uri_ex_w,uri_ex_x2)
      & iext(uri_rdf_rest,X2,uri_rdf_nil)
      & iext(uri_rdf_first,X2,uri_ex_x2)
      & iext(uri_rdf_type,uri_ex_x1,uri_ex_c)
      & iext(uri_owl_oneOf,X0,X1)
      & iext(uri_rdf_first,X1,uri_ex_x1)
      & iext(uri_owl_onProperty,uri_ex_z,uri_ex_p) ) ).

