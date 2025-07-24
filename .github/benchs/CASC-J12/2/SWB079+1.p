include('Axioms/SWB001+0.ax').
fof(conclusion_rdfbased_sem_rdfsext_subclass_ext,conjecture,
    iext(uri_rdfs_subClassOf,uri_ex_c1,uri_ex_c2) ).

fof(premise_rdfbased_sem_rdfsext_subclass_ext,axiom,
    ? [X0,X1,X2] :
      ( iext(uri_owl_oneOf,uri_ex_c2,X0)
      & iext(uri_rdf_rest,X0,X1)
      & iext(uri_rdf_rest,X1,uri_rdf_nil)
      & iext(uri_rdf_first,X1,uri_ex_u)
      & iext(uri_rdf_rest,X2,uri_rdf_nil)
      & iext(uri_rdf_first,X2,uri_ex_w)
      & iext(uri_owl_oneOf,uri_ex_c1,X2)
      & iext(uri_rdf_first,X0,uri_ex_w) ) ).

