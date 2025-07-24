include('Axioms/SWB001+0.ax').
fof(premise_rdfbased_sem_rdfsext_range_subprop,axiom,
    ( iext(uri_rdfs_range,uri_ex_p2,uri_ex_c)
    & iext(uri_rdfs_subPropertyOf,uri_ex_p1,uri_ex_p2) ) ).

fof(conclusion_rdfbased_sem_rdfsext_range_subprop,conjecture,
    iext(uri_rdfs_range,uri_ex_p1,uri_ex_c) ).

