include('Axioms/SWB001+0.ax').
fof(testcase_conclusion_fullish_024_Cardinality_Restrictions_on_Complex_Properties,conjecture,
    ? [BNODE_x] :
      ( iext(uri_ex_hasAncestor,uri_ex_alice,BNODE_x)
      & iext(uri_ex_hasAncestor,uri_ex_bob,BNODE_x) ) ).

fof(testcase_premise_fullish_024_Cardinality_Restrictions_on_Complex_Properties,axiom,
    ? [BNODE_z] :
      ( iext(uri_rdfs_subClassOf,uri_ex_Person,BNODE_z)
      & iext(uri_owl_onProperty,BNODE_z,uri_ex_hasAncestor)
      & iext(uri_rdf_type,uri_ex_alice,uri_ex_Person)
      & iext(uri_rdf_type,uri_ex_bob,uri_ex_Person)
      & iext(uri_ex_hasAncestor,uri_ex_alice,uri_ex_bob)
      & iext(uri_owl_minCardinality,BNODE_z,literal_typed(dat_str_1,uri_xsd_nonNegativeInteger))
      & iext(uri_rdf_type,BNODE_z,uri_owl_Restriction)
      & iext(uri_rdf_type,uri_ex_hasAncestor,uri_owl_TransitiveProperty) ) ).

