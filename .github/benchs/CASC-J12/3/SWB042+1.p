include('Axioms/SWB001+0.ax').
fof(premise_rdfbased_sem_chain_ext,axiom,
    ? [X2,X1,X4,X5,X0,X3] :
      ( iext(uri_ex_p2,uri_ex_z,uri_ex_y)
      & iext(uri_rdf_rest,X1,uri_rdf_nil)
      & iext(uri_rdf_first,X2,uri_ex_y)
      & iext(uri_ex_p1,uri_ex_x,uri_ex_z)
      & iext(uri_ex_p,uri_ex_x,uri_ex_y)
      & iext(uri_rdf_first,X4,uri_ex_p2)
      & iext(uri_owl_oneOf,X0,X1)
      & iext(uri_rdf_rest,X5,X4)
      & iext(uri_rdf_first,X5,uri_ex_p1)
      & iext(uri_owl_oneOf,X3,X2)
      & iext(uri_rdf_rest,X4,uri_rdf_nil)
      & iext(uri_rdfs_range,uri_ex_p2,X3)
      & iext(uri_rdf_rest,X2,uri_rdf_nil)
      & iext(uri_rdf_first,X1,uri_ex_x)
      & iext(uri_rdfs_domain,uri_ex_p1,X0) ) ).

fof(conclusion_rdfbased_sem_chain_ext,conjecture,
    ? [X0,X1] :
      ( iext(uri_rdf_rest,X0,X1)
      & iext(uri_rdf_first,X0,uri_ex_p1)
      & iext(uri_rdf_rest,X1,uri_rdf_nil)
      & iext(uri_rdf_first,X1,uri_ex_p2)
      & iext(uri_owl_propertyChainAxiom,uri_ex_p,X0) ) ).

