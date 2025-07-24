include('Axioms/SWB001+0.ax').
fof(testcase_premise_fullish_020_Logical_Complications,axiom,
    ? [BNODE_xs,BNODE_xc,BNODE_lu1,BNODE_lu2,BNODE_lu3,BNODE_li1,BNODE_li2] :
      ( iext(uri_rdf_first,BNODE_lu1,uri_ex_c1)
      & iext(uri_rdf_first,BNODE_lu2,uri_ex_c2)
      & iext(uri_rdf_rest,BNODE_lu2,BNODE_lu3)
      & iext(uri_rdf_rest,BNODE_lu3,uri_rdf_nil)
      & iext(uri_owl_disjointWith,uri_ex_d,uri_ex_c1)
      & iext(uri_owl_intersectionOf,BNODE_xs,BNODE_li1)
      & iext(uri_rdf_first,BNODE_li1,uri_ex_c)
      & iext(uri_rdf_rest,BNODE_li1,BNODE_li2)
      & iext(uri_rdf_first,BNODE_li2,BNODE_xc)
      & iext(uri_owl_complementOf,BNODE_xc,uri_ex_c2)
      & iext(uri_rdf_rest,BNODE_li2,uri_rdf_nil)
      & iext(uri_rdfs_subClassOf,uri_ex_d,BNODE_xs)
      & iext(uri_rdf_first,BNODE_lu3,uri_ex_c3)
      & iext(uri_rdf_rest,BNODE_lu1,BNODE_lu2)
      & iext(uri_owl_unionOf,uri_ex_c,BNODE_lu1) ) ).

fof(testcase_conclusion_fullish_020_Logical_Complications,conjecture,
    iext(uri_rdfs_subClassOf,uri_ex_d,uri_ex_c3) ).

