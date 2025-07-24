include('Axioms/SWB001+0.ax').
fof(testcase_premise_fullish_014_Harry_belongs_to_some_Species,axiom,
    ? [BNODE_u,BNODE_l1,BNODE_l2] :
      ( iext(uri_rdf_type,uri_ex_Eagle,uri_ex_Species)
      & iext(uri_rdf_rest,BNODE_l1,BNODE_l2)
      & iext(uri_rdf_first,BNODE_l2,uri_ex_Falcon)
      & iext(uri_rdf_rest,BNODE_l2,uri_rdf_nil)
      & iext(uri_rdf_first,BNODE_l1,uri_ex_Eagle)
      & iext(uri_owl_unionOf,BNODE_u,BNODE_l1)
      & iext(uri_rdf_type,uri_ex_harry,BNODE_u)
      & iext(uri_rdf_type,uri_ex_Falcon,uri_ex_Species) ) ).

fof(testcase_conclusion_fullish_014_Harry_belongs_to_some_Species,conjecture,
    ? [BNODE_x] :
      ( iext(uri_rdf_type,BNODE_x,uri_ex_Species)
      & iext(uri_rdf_type,uri_ex_harry,BNODE_x) ) ).

