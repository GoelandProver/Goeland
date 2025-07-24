include('Axioms/SWB001+0.ax').
fof(conclusion_rdfbased_sem_restrict_term_minmaxexact,conjecture,
    iext(uri_owl_equivalentClass,uri_ex_z4,uri_ex_z1) ).

fof(premise_rdfbased_sem_restrict_term_minmaxexact,axiom,
    ? [X0,X1] :
      ( iext(uri_owl_onClass,uri_ex_z2,uri_ex_c)
      & iext(uri_rdf_rest,X0,uri_rdf_nil)
      & iext(uri_owl_maxQualifiedCardinality,uri_ex_z3,literal_typed(dat_str_1,uri_xsd_nonNegativeInteger))
      & iext(uri_owl_onProperty,uri_ex_z3,uri_ex_p)
      & iext(uri_owl_qualifiedCardinality,uri_ex_z1,literal_typed(dat_str_1,uri_xsd_nonNegativeInteger))
      & iext(uri_owl_onProperty,uri_ex_z1,uri_ex_p)
      & iext(uri_owl_intersectionOf,uri_ex_z4,X1)
      & iext(uri_owl_onClass,uri_ex_z1,uri_ex_c)
      & iext(uri_rdf_rest,X1,X0)
      & iext(uri_rdf_first,X1,uri_ex_z2)
      & iext(uri_owl_onClass,uri_ex_z3,uri_ex_c)
      & iext(uri_rdf_first,X0,uri_ex_z3)
      & iext(uri_owl_onProperty,uri_ex_z2,uri_ex_p)
      & iext(uri_owl_minQualifiedCardinality,uri_ex_z2,literal_typed(dat_str_1,uri_xsd_nonNegativeInteger)) ) ).

