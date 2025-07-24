include('Axioms/SWB001+0.ax').
fof(testcase_conclusion_fullish_010_Negative_Property_Assertions,conjecture,
    ? [BNODE_z] :
      ( iext(uri_rdf_type,BNODE_z,uri_owl_NegativePropertyAssertion)
      & iext(uri_owl_sourceIndividual,BNODE_z,uri_ex_s)
      & iext(uri_owl_assertionProperty,BNODE_z,uri_ex_p)
      & iext(uri_owl_targetIndividual,BNODE_z,uri_ex_o) ) ).

fof(testcase_premise_fullish_010_Negative_Property_Assertions,axiom,
    ? [BNODE_x1,BNODE_x2,BNODE_x3,BNODE_x4] :
      ( iext(uri_rdf_type,uri_ex_s,BNODE_x1)
      & iext(uri_owl_onProperty,BNODE_x1,uri_ex_p)
      & iext(uri_owl_complementOf,BNODE_x2,BNODE_x3)
      & iext(uri_rdf_rest,BNODE_x4,uri_rdf_nil)
      & iext(uri_rdf_first,BNODE_x4,uri_ex_o)
      & iext(uri_owl_oneOf,BNODE_x3,BNODE_x4)
      & iext(uri_owl_allValuesFrom,BNODE_x1,BNODE_x2)
      & iext(uri_rdf_type,uri_ex_p,uri_owl_ObjectProperty) ) ).

