include('Axioms/SWB001+0.ax').
fof(testcase_conclusion_fullish_009_Existential_Restriction_Entailments,conjecture,
    ? [BNODE_x] :
      ( iext(uri_ex_p,uri_ex_s,BNODE_x)
      & iext(uri_rdf_type,BNODE_x,uri_ex_c) ) ).

fof(testcase_premise_fullish_009_Existential_Restriction_Entailments,axiom,
    ? [BNODE_z] :
      ( iext(uri_rdf_type,uri_ex_p,uri_owl_ObjectProperty)
      & iext(uri_owl_someValuesFrom,BNODE_z,uri_ex_c)
      & iext(uri_owl_onProperty,BNODE_z,uri_ex_p)
      & iext(uri_rdf_type,BNODE_z,uri_owl_Restriction)
      & iext(uri_rdf_type,uri_ex_s,BNODE_z)
      & iext(uri_rdf_type,uri_ex_c,uri_owl_Class) ) ).

