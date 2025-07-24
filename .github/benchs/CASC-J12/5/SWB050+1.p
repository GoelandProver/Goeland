include('Axioms/SWB001+0.ax').
fof(conclusion_rdfbased_sem_char_symmetric_ext,conjecture,
    iext(uri_rdf_type,uri_ex_p,uri_owl_SymmetricProperty) ).

fof(premise_rdfbased_sem_char_symmetric_ext,axiom,
    ? [X0,X2,X3,X5,X1,X4] :
      ( iext(uri_rdfs_range,uri_ex_p,X1)
      & iext(uri_rdf_first,X5,uri_ex_y)
      & iext(uri_rdf_rest,X5,uri_rdf_nil)
      & iext(uri_ex_p,uri_ex_y,uri_ex_x)
      & iext(uri_ex_p,uri_ex_y,uri_ex_y)
      & iext(uri_rdf_rest,X3,X5)
      & iext(uri_rdf_first,X3,uri_ex_x)
      & iext(uri_rdf_rest,X4,uri_rdf_nil)
      & iext(uri_rdf_first,X4,uri_ex_y)
      & iext(uri_rdf_rest,X2,X4)
      & iext(uri_rdf_first,X2,uri_ex_x)
      & iext(uri_ex_p,uri_ex_x,uri_ex_x)
      & iext(uri_ex_p,uri_ex_x,uri_ex_y)
      & iext(uri_owl_oneOf,X1,X3)
      & iext(uri_owl_oneOf,X0,X2)
      & iext(uri_rdfs_domain,uri_ex_p,X0) ) ).

