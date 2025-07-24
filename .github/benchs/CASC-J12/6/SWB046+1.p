include('Axioms/SWB001+0.ax').
fof(premise_rdfbased_sem_char_inversefunc_ext,axiom,
    ? [X1,X0] :
      ( iext(uri_rdf_rest,X0,uri_rdf_nil)
      & iext(uri_rdfs_domain,uri_ex_p,X1)
      & iext(uri_ex_p,uri_ex_x,uri_ex_y)
      & iext(uri_owl_oneOf,X1,X0)
      & iext(uri_rdf_first,X0,uri_ex_x) ) ).

fof(conclusion_rdfbased_sem_char_inversefunc_ext,conjecture,
    iext(uri_rdf_type,uri_ex_p,uri_owl_InverseFunctionalProperty) ).

