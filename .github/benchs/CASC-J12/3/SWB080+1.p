include('Axioms/SWB001+0.ax').
fof(conclusion_rdfbased_sem_rdfsext_subprop_ext,conjecture,
    iext(uri_rdfs_subPropertyOf,uri_ex_p1,uri_ex_p2) ).

fof(premise_rdfbased_sem_rdfsext_subprop_ext,axiom,
    ? [X8,X4,X2,X5,X1,X6,X3,X7,X0] :
      ( iext(uri_rdfs_range,uri_ex_p1,X1)
      & iext(uri_rdf_first,X2,uri_ex_u)
      & iext(uri_rdf_rest,X2,uri_rdf_nil)
      & iext(uri_rdf_first,X3,uri_ex_w)
      & iext(uri_rdf_rest,X3,uri_rdf_nil)
      & iext(uri_rdf_first,X4,uri_ex_w)
      & iext(uri_owl_oneOf,X1,X2)
      & iext(uri_rdf_first,X7,uri_ex_u)
      & iext(uri_owl_oneOf,X6,X7)
      & iext(uri_rdf_rest,X8,uri_rdf_nil)
      & iext(uri_ex_p2,uri_ex_w,uri_ex_w)
      & iext(uri_ex_p2,uri_ex_w,uri_ex_u)
      & iext(uri_ex_p1,uri_ex_w,uri_ex_u)
      & iext(uri_rdf_first,X8,uri_ex_w)
      & iext(uri_owl_oneOf,X5,X4)
      & iext(uri_owl_oneOf,X0,X3)
      & iext(uri_rdf_rest,X7,X8)
      & iext(uri_rdfs_range,uri_ex_p2,X6)
      & iext(uri_rdfs_domain,uri_ex_p2,X5)
      & iext(uri_rdf_rest,X4,uri_rdf_nil)
      & iext(uri_rdfs_domain,uri_ex_p1,X0) ) ).

