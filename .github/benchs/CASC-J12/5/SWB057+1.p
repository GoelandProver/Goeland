include('Axioms/SWB001+0.ax').
fof(conclusion_rdfbased_sem_eqdis_different_ext,conjecture,
    iext(uri_owl_differentFrom,uri_ex_w,uri_ex_u) ).

fof(premise_rdfbased_sem_eqdis_different_ext,axiom,
    ? [X0] :
      ( iext(uri_rdf_type,uri_ex_u,X0)
      & iext(uri_owl_complementOf,X0,uri_ex_c)
      & iext(uri_rdf_type,uri_ex_w,uri_ex_c) ) ).

