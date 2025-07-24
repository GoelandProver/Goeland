include('Axioms/SWB001+0.ax').
fof(testcase_conclusion_fullish_028_Inferred_Property_Characteristics_III,conjecture,
    iext(uri_rdfs_subClassOf,uri_ex_InversesOfFunctionalProperties,uri_owl_InverseFunctionalProperty) ).

fof(testcase_premise_fullish_028_Inferred_Property_Characteristics_III,axiom,
    ? [BNODE_z] :
      ( iext(uri_owl_equivalentClass,uri_ex_InversesOfFunctionalProperties,BNODE_z)
      & iext(uri_owl_onProperty,BNODE_z,uri_owl_inverseOf)
      & iext(uri_owl_someValuesFrom,BNODE_z,uri_owl_FunctionalProperty)
      & iext(uri_rdf_type,BNODE_z,uri_owl_Restriction) ) ).

