include('Axioms/SWB001+0.ax').
fof(conclusion_rdfbased_sem_enum_ext,conjecture,
    ? [X0,X1] :
      ( iext(uri_rdf_first,X0,uri_ex_y)
      & iext(uri_owl_oneOf,uri_ex_e,X1)
      & iext(uri_rdf_rest,X1,X0)
      & iext(uri_rdf_first,X1,uri_ex_x)
      & iext(uri_rdf_rest,X0,uri_rdf_nil) ) ).

fof(premise_rdfbased_sem_enum_ext,axiom,
    ? [X0,X2,X1] :
      ( iext(uri_owl_equivalentClass,uri_ex_e,X0)
      & iext(uri_rdf_rest,X2,uri_rdf_nil)
      & iext(uri_rdf_first,X2,uri_ex_y)
      & iext(uri_rdf_rest,X1,X2)
      & iext(uri_rdf_first,X1,uri_ex_x)
      & iext(uri_owl_oneOf,X0,X1) ) ).

