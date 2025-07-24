include('Axioms/SWB001+0.ax').
fof(premise_rdfbased_sem_ndis_alldisjointclasses_bw,axiom,
    ? [X1,X2,X0] :
      ( iext(uri_owl_disjointWith,uri_ex_c2,uri_ex_c3)
      & iext(uri_rdf_first,X0,uri_ex_c2)
      & iext(uri_rdf_rest,X0,X1)
      & iext(uri_owl_disjointWith,uri_ex_c1,uri_ex_c3)
      & iext(uri_rdf_first,X2,uri_ex_c1)
      & iext(uri_rdf_first,X1,uri_ex_c3)
      & iext(uri_rdf_rest,X1,uri_rdf_nil)
      & iext(uri_rdf_rest,X2,X0)
      & iext(uri_owl_disjointWith,uri_ex_c1,uri_ex_c2) ) ).

fof(conclusion_rdfbased_sem_ndis_alldisjointclasses_bw,conjecture,
    ? [X2,X3,X0,X1] :
      ( iext(uri_rdf_first,X1,uri_ex_c3)
      & iext(uri_rdf_type,X2,uri_owl_AllDisjointClasses)
      & iext(uri_owl_members,X2,X3)
      & iext(uri_rdf_rest,X3,X0)
      & iext(uri_rdf_first,X3,uri_ex_c1)
      & iext(uri_rdf_rest,X1,uri_rdf_nil)
      & iext(uri_rdf_rest,X0,X1)
      & iext(uri_rdf_first,X0,uri_ex_c2) ) ).

