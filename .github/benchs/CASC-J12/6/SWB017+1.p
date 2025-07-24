include('Axioms/SWB001+0.ax').
fof(testcase_conclusion_fullish_017_Built_in_Based_Definitions,conjecture,
    iext(uri_owl_differentFrom,uri_ex_w,uri_ex_u) ).

fof(testcase_premise_fullish_017_Built_in_Based_Definitions,axiom,
    ( iext(uri_rdf_type,uri_ex_w,uri_ex_c)
    & iext(uri_ex_notInstanceOf,uri_ex_u,uri_ex_c)
    & iext(uri_owl_propertyDisjointWith,uri_ex_notInstanceOf,uri_rdf_type) ) ).

