include('Axioms/SWB001+0.ax').
fof(conclusion_rdfbased_sem_eqdis_disjointunion_composite,conjecture,
    ? [X1,X0] :
      ( iext(uri_owl_disjointUnionOf,uri_ex_c3,X0)
      & iext(uri_rdf_first,X0,uri_ex_c1)
      & iext(uri_rdf_rest,X0,X1)
      & iext(uri_rdf_rest,X1,uri_rdf_nil)
      & iext(uri_rdf_first,X1,uri_ex_c2) ) ).

fof(premise_rdfbased_sem_eqdis_disjointunion_composite,axiom,
    ? [X0,X1] :
      ( iext(uri_owl_disjointWith,uri_ex_c1,uri_ex_c2)
      & iext(uri_rdf_rest,X1,uri_rdf_nil)
      & iext(uri_rdf_first,X0,uri_ex_c1)
      & iext(uri_rdf_rest,X0,X1)
      & iext(uri_rdf_first,X1,uri_ex_c2)
      & iext(uri_owl_unionOf,uri_ex_c3,X0) ) ).

