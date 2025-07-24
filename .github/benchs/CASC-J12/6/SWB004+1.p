include('Axioms/SWB001+0.ax').
fof(testcase_conclusion_fullish_004_Axiomatic_Triples,conjecture,
    ( iext(uri_rdfs_subClassOf,uri_rdfs_Datatype,uri_owl_Class)
    & iext(uri_owl_equivalentClass,uri_owl_Class,uri_rdfs_Class)
    & iext(uri_rdfs_subClassOf,uri_owl_Class,uri_owl_Thing)
    & iext(uri_rdf_type,uri_owl_Class,uri_owl_Class)
    & iext(uri_rdf_type,uri_owl_Class,uri_owl_Thing) ) ).

