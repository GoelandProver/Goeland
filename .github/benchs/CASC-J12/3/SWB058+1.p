include('Axioms/SWB001+0.ax').
fof(conclusion_rdfbased_sem_eqdis_disclass_ext,conjecture,
    iext(uri_owl_disjointWith,uri_ex_c1,uri_ex_c2) ).

fof(premise_rdfbased_sem_eqdis_disclass_ext,axiom,
    ? [X1,X0] :
      ( iext(uri_owl_oneOf,uri_ex_c1,X1)
      & iext(uri_rdf_first,X0,uri_ex_y)
      & iext(uri_rdf_rest,X0,uri_rdf_nil)
      & iext(uri_owl_differentFrom,uri_ex_x,uri_ex_y)
      & iext(uri_rdf_rest,X1,uri_rdf_nil)
      & iext(uri_rdf_first,X1,uri_ex_x)
      & iext(uri_owl_oneOf,uri_ex_c2,X0) ) ).

