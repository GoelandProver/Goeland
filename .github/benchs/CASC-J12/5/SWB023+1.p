include('Axioms/SWB001+0.ax').
fof(testcase_conclusion_fullish_023_Unique_List_Components,conjecture,
    ( iext(uri_owl_sameAs,uri_ex_w,uri_ex_v)
    & iext(uri_owl_sameAs,uri_ex_w,uri_ex_u) ) ).

fof(testcase_premise_fullish_023_Unique_List_Components,axiom,
    ? [BNODE_o,BNODE_l] :
      ( iext(uri_rdf_type,uri_ex_w,BNODE_o)
      & iext(uri_rdf_type,BNODE_o,uri_owl_Class)
      & iext(uri_owl_oneOf,BNODE_o,BNODE_l)
      & iext(uri_rdf_first,BNODE_l,uri_ex_v)
      & iext(uri_rdf_rest,BNODE_l,uri_rdf_nil)
      & iext(uri_rdf_first,BNODE_l,uri_ex_u)
      & iext(uri_rdf_type,uri_rdf_first,uri_owl_FunctionalProperty) ) ).

