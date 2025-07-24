fof(owl_prop_sourceindividual_ext,axiom,
    ! [X,Y] :
      ( iext(uri_owl_sourceIndividual,X,Y)
     => ( icext(uri_owl_NegativePropertyAssertion,X)
        & ir(Y) ) ) ).

fof(testcase_premise_fullish_010_Negative_Property_Assertions,axiom,
    ? [BNODE_x1,BNODE_x2,BNODE_x3,BNODE_x4] :
      ( iext(uri_rdf_type,uri_ex_s,BNODE_x1)
      & iext(uri_owl_allValuesFrom,BNODE_x1,BNODE_x2)
      & iext(uri_owl_complementOf,BNODE_x2,BNODE_x3)
      & iext(uri_rdf_first,BNODE_x4,uri_ex_o)
      & iext(uri_rdf_rest,BNODE_x4,uri_rdf_nil)
      & iext(uri_owl_oneOf,BNODE_x3,BNODE_x4)
      & iext(uri_owl_onProperty,BNODE_x1,uri_ex_p)
      & iext(uri_rdf_type,uri_ex_p,uri_owl_ObjectProperty) ) ).

fof(rdfs_cext_def,axiom,
    ! [X,C] :
      ( icext(C,X)
    <=> iext(uri_rdf_type,X,C) ) ).

fof(owl_bool_complementof_class,axiom,
    ! [Z,C] :
      ( iext(uri_owl_complementOf,Z,C)
     => ( ic(Z)
        & ic(C)
        & ! [X] :
            ( ~ icext(C,X)
          <=> icext(Z,X) ) ) ) ).

fof(owl_prop_onproperty_ext,axiom,
    ! [X,Y] :
      ( iext(uri_owl_onProperty,X,Y)
     => ( ip(Y)
        & icext(uri_owl_Restriction,X) ) ) ).

fof(testcase_conclusion_fullish_010_Negative_Property_Assertions,conjecture,
    ? [BNODE_z] :
      ( iext(uri_rdf_type,BNODE_z,uri_owl_NegativePropertyAssertion)
      & iext(uri_owl_assertionProperty,BNODE_z,uri_ex_p)
      & iext(uri_owl_targetIndividual,BNODE_z,uri_ex_o)
      & iext(uri_owl_sourceIndividual,BNODE_z,uri_ex_s) ) ).

fof(owl_enum_class_001,axiom,
    ! [Z,S1,A1] :
      ( ( iext(uri_rdf_rest,S1,uri_rdf_nil)
        & iext(uri_rdf_first,S1,A1) )
     => ( ( ! [X] :
              ( X = A1
            <=> icext(Z,X) )
          & ic(Z) )
      <=> iext(uri_owl_oneOf,Z,S1) ) ) ).

fof(owl_npa_object_fi,axiom,
    ! [P,A1,A2] :
      ( ( ir(A1)
        & ip(P)
        & ir(A2)
        & ~ iext(P,A1,A2) )
     => ? [Z] :
          ( iext(uri_owl_assertionProperty,Z,P)
          & iext(uri_owl_targetIndividual,Z,A2)
          & iext(uri_owl_sourceIndividual,Z,A1) ) ) ).

fof(owl_restrict_allvaluesfrom,axiom,
    ! [Z,P,C] :
      ( ( iext(uri_owl_allValuesFrom,Z,C)
        & iext(uri_owl_onProperty,Z,P) )
     => ! [X] :
          ( icext(Z,X)
        <=> ! [Y] :
              ( icext(C,Y)
             <= iext(P,X,Y) ) ) ) ).

fof(simple_ir,axiom,
    ! [X] : ir(X) ).

