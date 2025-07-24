include('Axioms/SWB001+0.ax').
fof(testcase_premise_fullish_013_Cliques,axiom,
    ? [BNODE_r,BNODE_i,BNODE_l1,BNODE_l2,BNODE_l3] :
      ( iext(uri_rdfs_range,uri_ex_sameCliqueAs,uri_ex_Clique)
      & iext(uri_rdf_type,BNODE_r,uri_owl_Restriction)
      & iext(uri_owl_someValuesFrom,BNODE_r,uri_ex_Clique)
      & iext(uri_rdf_first,BNODE_l3,BNODE_i)
      & iext(uri_rdf_rest,BNODE_l3,uri_rdf_nil)
      & iext(uri_rdf_type,uri_ex_JoesGang,uri_ex_Clique)
      & iext(uri_rdf_type,uri_ex_alice,uri_ex_JoesGang)
      & iext(uri_rdf_type,uri_ex_bob,uri_ex_JoesGang)
      & iext(uri_owl_inverseOf,BNODE_i,uri_rdf_type)
      & iext(uri_rdf_rest,BNODE_l2,BNODE_l3)
      & iext(uri_rdf_first,BNODE_l2,uri_ex_sameCliqueAs)
      & iext(uri_rdf_rest,BNODE_l1,BNODE_l2)
      & iext(uri_rdf_first,BNODE_l1,uri_rdf_type)
      & iext(uri_owl_propertyChainAxiom,uri_foaf_knows,BNODE_l1)
      & iext(uri_rdf_type,uri_foaf_knows,uri_owl_ObjectProperty)
      & iext(uri_owl_onProperty,BNODE_r,uri_ex_sameCliqueAs)
      & iext(uri_rdfs_subClassOf,uri_ex_Clique,BNODE_r)
      & iext(uri_rdfs_subPropertyOf,uri_ex_sameCliqueAs,uri_owl_sameAs)
      & iext(uri_rdf_type,uri_ex_Clique,uri_owl_Class) ) ).

fof(testcase_conclusion_fullish_013_Cliques,conjecture,
    iext(uri_foaf_knows,uri_ex_alice,uri_ex_bob) ).

