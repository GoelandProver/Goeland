include('Axioms/SWB001+0.ax').
fof(premise_rdfbased_sem_eqdis_eqprop_ext,axiom,
    ? [X1,X0] :
      ( iext(uri_rdfs_domain,uri_ex_p1,uri_ex_x)
      & iext(uri_ex_p1,uri_ex_s,uri_ex_o)
      & iext(uri_rdf_first,X0,uri_ex_s)
      & iext(uri_rdf_rest,X0,uri_rdf_nil)
      & iext(uri_rdf_rest,X1,uri_rdf_nil)
      & iext(uri_rdf_first,X1,uri_ex_o)
      & iext(uri_owl_oneOf,uri_ex_y,X1)
      & iext(uri_rdfs_range,uri_ex_p2,uri_ex_y)
      & iext(uri_rdfs_domain,uri_ex_p2,uri_ex_x)
      & iext(uri_owl_oneOf,uri_ex_x,X0)
      & iext(uri_ex_p2,uri_ex_s,uri_ex_o)
      & iext(uri_rdfs_range,uri_ex_p1,uri_ex_y) ) ).

fof(conclusion_rdfbased_sem_eqdis_eqprop_ext,conjecture,
    iext(uri_owl_equivalentProperty,uri_ex_p1,uri_ex_p2) ).

