include('Axioms/SWB001+0.ax').
fof(conclusion_rdfbased_sem_enum_inst_closed,conjecture,
    iext(uri_owl_sameAs,uri_ex_z,uri_ex_y) ).

fof(premise_rdfbased_sem_enum_inst_closed,axiom,
    ? [X0,X1] :
      ( iext(uri_rdf_type,uri_ex_z,uri_ex_e)
      & iext(uri_rdf_first,X0,uri_ex_x)
      & iext(uri_rdf_rest,X0,X1)
      & iext(uri_rdf_first,X1,uri_ex_y)
      & iext(uri_rdf_rest,X1,uri_rdf_nil)
      & iext(uri_owl_oneOf,uri_ex_e,X0)
      & iext(uri_owl_differentFrom,uri_ex_z,uri_ex_x) ) ).

