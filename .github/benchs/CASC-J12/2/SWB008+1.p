include('Axioms/SWB001+0.ax').
fof(testcase_premise_fullish_008_Inverse_Functional_Data_Properties,axiom,
    ( iext(uri_rdf_type,uri_foaf_mbox_sha1sum,uri_owl_DatatypeProperty)
    & iext(uri_rdf_type,uri_foaf_mbox_sha1sum,uri_owl_InverseFunctionalProperty)
    & iext(uri_foaf_mbox_sha1sum,uri_ex_bob,literal_plain(dat_str_xyz))
    & iext(uri_foaf_mbox_sha1sum,uri_ex_robert,literal_plain(dat_str_xyz)) ) ).

fof(testcase_conclusion_fullish_008_Inverse_Functional_Data_Properties,conjecture,
    iext(uri_owl_sameAs,uri_ex_bob,uri_ex_robert) ).

