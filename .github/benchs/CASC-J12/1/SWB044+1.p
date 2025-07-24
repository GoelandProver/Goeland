include('Axioms/SWB001+0.ax').
fof(conclusion_rdfbased_sem_char_asymmetric_ext,conjecture,
    iext(uri_rdf_type,uri_ex_p,uri_owl_AsymmetricProperty) ).

fof(premise_rdfbased_sem_char_asymmetric_ext,axiom,
    ? [X2,X3,X0,X1] :
      ( iext(uri_owl_oneOf,X0,X1)
      & iext(uri_rdfs_domain,uri_ex_p,X2)
      & iext(uri_rdfs_range,uri_ex_p,X0)
      & iext(uri_ex_p,uri_ex_x,uri_ex_y)
      & iext(uri_rdf_first,X1,uri_ex_y)
      & iext(uri_rdf_rest,X3,uri_rdf_nil)
      & iext(uri_rdf_first,X3,uri_ex_x)
      & iext(uri_rdf_rest,X1,uri_rdf_nil)
      & iext(uri_owl_differentFrom,uri_ex_x,uri_ex_y)
      & iext(uri_owl_oneOf,X2,X3) ) ).

