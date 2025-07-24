include('Axioms/SWB001+0.ax').
fof(premise_rdfbased_sem_eqdis_disprop_ext,axiom,
    ? [X1,X2,X0,X3] :
      ( iext(uri_rdfs_domain,uri_ex_p1,uri_ex_x1)
      & iext(uri_owl_oneOf,uri_ex_y1,X0)
      & iext(uri_rdf_first,X0,uri_ex_o1)
      & iext(uri_rdf_first,X1,uri_ex_s2)
      & iext(uri_rdfs_domain,uri_ex_p2,uri_ex_x2)
      & iext(uri_rdfs_range,uri_ex_p2,uri_ex_y2)
      & iext(uri_owl_differentFrom,uri_ex_o1,uri_ex_o2)
      & iext(uri_rdf_rest,X3,uri_rdf_nil)
      & iext(uri_ex_p1,uri_ex_s1,uri_ex_o1)
      & iext(uri_owl_oneOf,uri_ex_x2,X1)
      & iext(uri_rdf_rest,X2,uri_rdf_nil)
      & iext(uri_rdf_first,X2,uri_ex_s1)
      & iext(uri_owl_differentFrom,uri_ex_s1,uri_ex_s2)
      & iext(uri_rdf_first,X3,uri_ex_o2)
      & iext(uri_owl_oneOf,uri_ex_y2,X3)
      & iext(uri_owl_oneOf,uri_ex_x1,X2)
      & iext(uri_rdf_rest,X1,uri_rdf_nil)
      & iext(uri_rdf_rest,X0,uri_rdf_nil)
      & iext(uri_ex_p2,uri_ex_s2,uri_ex_o2)
      & iext(uri_rdfs_range,uri_ex_p1,uri_ex_y1) ) ).

fof(conclusion_rdfbased_sem_eqdis_disprop_ext,conjecture,
    iext(uri_owl_propertyDisjointWith,uri_ex_p1,uri_ex_p2) ).

