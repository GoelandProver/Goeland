include('Axioms/SWB001+0.ax').
fof(premise_rdfbased_sem_inv_ext,axiom,
    ? [X3,X7,X0,X6,X4,X5,X1,X2] :
      ( iext(uri_owl_oneOf,X0,X1)
      & iext(uri_rdf_rest,X5,uri_rdf_nil)
      & iext(uri_rdf_first,X1,uri_ex_o)
      & iext(uri_owl_oneOf,X6,X5)
      & iext(uri_rdfs_domain,uri_ex_q,X0)
      & iext(uri_rdfs_range,uri_ex_q,X6)
      & iext(uri_ex_q,uri_ex_o,uri_ex_s)
      & iext(uri_rdf_first,X7,uri_ex_s)
      & iext(uri_rdf_rest,X7,uri_rdf_nil)
      & iext(uri_rdf_first,X4,uri_ex_o)
      & iext(uri_rdf_rest,X4,uri_rdf_nil)
      & iext(uri_owl_oneOf,X2,X7)
      & iext(uri_rdf_rest,X1,uri_rdf_nil)
      & iext(uri_ex_p,uri_ex_s,uri_ex_o)
      & iext(uri_rdf_first,X5,uri_ex_s)
      & iext(uri_owl_oneOf,X3,X4)
      & iext(uri_rdfs_range,uri_ex_p,X3)
      & iext(uri_rdfs_domain,uri_ex_p,X2) ) ).

fof(conclusion_rdfbased_sem_inv_ext,conjecture,
    iext(uri_owl_inverseOf,uri_ex_q,uri_ex_p) ).

