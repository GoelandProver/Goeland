include('Axioms/SWB001+0.ax').
fof(testcase_premise_fullish_027_Inferred_Property_Characteristics_II,axiom,
    ? [BNODE_l1,BNODE_l2,BNODE_v] :
      ( iext(uri_rdf_first,BNODE_l1,uri_ex_p)
      & iext(uri_owl_inverseOf,BNODE_v,uri_ex_p)
      & iext(uri_rdf_rest,BNODE_l2,uri_rdf_nil)
      & iext(uri_rdf_first,BNODE_l2,BNODE_v)
      & iext(uri_rdf_rest,BNODE_l1,BNODE_l2)
      & iext(uri_owl_propertyChainAxiom,uri_owl_sameAs,BNODE_l1) ) ).

fof(testcase_conclusion_fullish_027_Inferred_Property_Characteristics_II,conjecture,
    iext(uri_rdf_type,uri_ex_p,uri_owl_InverseFunctionalProperty) ).

