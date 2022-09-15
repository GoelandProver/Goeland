%------------------------------------------------------------------------------
% File     : SWB012+3 : TPTP v8.1.0. Released v5.2.0.
% Domain   : Semantic Web
% Problem  : Template Class
% Version  : [Sch11] axioms : Incomplete.
% English  : 

% Refs     : [Sch11] Schneider, M. (2011), Email to G. Sutcliffe
% Source   : [Sch11]
% Names    : 012_Template_Class [Sch11]

% Status   : Theorem
% Rating   : 0.27 v8.1.0, 0.21 v7.5.0, 0.43 v7.4.0, 0.44 v7.3.0, 0.57 v7.2.0, 0.50 v6.3.0, 0.38 v6.2.0, 0.45 v6.1.0, 0.56 v6.0.0, 0.50 v5.5.0, 0.54 v5.4.0, 0.61 v5.3.0, 0.70 v5.2.0
% Syntax   : Number of formulae    :  140 (  73 unt;   0 def)
%            Number of atoms       :  325 (   0 equ)
%            Maximal formula atoms :   15 (   2 avg)
%            Number of connectives :  188 (   3   ~;   3   |;  87   &)
%                                         (  38 <=>;  57  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   18 (   3 avg)
%            Maximal term depth    :    2 (   1 avg)
%            Number of predicates  :   11 (  11 usr;   0 prp; 1-3 aty)
%            Number of functors    :   55 (  55 usr;  54 con; 0-1 aty)
%            Number of variables   :  163 ( 157   !;   6   ?)
% SPC      : FOF_THM_RFO_NEQ

% Comments :
%------------------------------------------------------------------------------
%----Include ALCO Full Extensional axioms
%------------------------------------------------------------------------------
% File     : SWB002+0 : TPTP v8.1.0. Released v5.2.0.
% Domain   : Semantic Web
% Axioms   : ALCO Full Extensional
% Version  : [Sch03] axioms : Especial.
% English  :

% Refs     : [Sch03] Schneider, M. (2011), Email to G. Sutcliffe
% Source   : [Sch03]
% Names    : axioms-alco_full_plus_a_bit [Sch03]

% Status   : Satisfiable
% Syntax   : Number of formulae    :  138 (  73 unt;   0 def)
%            Number of atoms       :  310 (   0 equ)
%            Maximal formula atoms :   15 (   2 avg)
%            Number of connectives :  175 (   3   ~;   3   |;  74   &)
%                                         (  38 <=>;  57  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   18 (   3 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :   11 (  11 usr;   0 prp; 1-3 aty)
%            Number of functors    :   47 (  47 usr;  47 con; 0-0 aty)
%            Number of variables   :  159 ( 157   !;   2   ?)
% SPC      : FOF_SAT_RFO_NEQ

% Comments : 
%------------------------------------------------------------------------------
%----owl:complementOf / classes
fof(owl_bool_complementof_class,axiom,
    ! [Z,C] :
      ( iext(uri_owl_complementOf,Z,C)
     => ( ic(Z)
        & ic(C)
        & ! [X] :
            ( icext(Z,X)
          <=> ~ icext(C,X) ) ) ) ).

%----owl:intersectionOf / classes
%----nullary
fof(owl_bool_intersectionof_class_000,axiom,
    ! [Z] :
      ( iext(uri_owl_intersectionOf,Z,uri_rdf_nil)
    <=> ( ic(Z)
        & ! [X] :
            ( icext(Z,X)
          <=> ir(X) ) ) ) ).

%----owl:intersectionOf / classes
%----unary
fof(owl_bool_intersectionof_class_001,axiom,
    ! [Z,S1,C1] :
      ( ( iext(uri_rdf_first,S1,C1)
        & iext(uri_rdf_rest,S1,uri_rdf_nil) )
     => ( iext(uri_owl_intersectionOf,Z,S1)
      <=> ( ic(Z)
          & ic(C1)
          & ! [X] :
              ( icext(Z,X)
            <=> icext(C1,X) ) ) ) ) ).

%----owl:intersectionOf / classes
%----binary
fof(owl_bool_intersectionof_class_002,axiom,
    ! [Z,S1,C1,S2,C2] :
      ( ( iext(uri_rdf_first,S1,C1)
        & iext(uri_rdf_rest,S1,S2)
        & iext(uri_rdf_first,S2,C2)
        & iext(uri_rdf_rest,S2,uri_rdf_nil) )
     => ( iext(uri_owl_intersectionOf,Z,S1)
      <=> ( ic(Z)
          & ic(C1)
          & ic(C2)
          & ! [X] :
              ( icext(Z,X)
            <=> ( icext(C1,X)
                & icext(C2,X) ) ) ) ) ) ).

%----owl:intersectionOf / classes
%----ternary
fof(owl_bool_intersectionof_class_003,axiom,
    ! [Z,S1,C1,S2,C2,S3,C3] :
      ( ( iext(uri_rdf_first,S1,C1)
        & iext(uri_rdf_rest,S1,S2)
        & iext(uri_rdf_first,S2,C2)
        & iext(uri_rdf_rest,S2,S3)
        & iext(uri_rdf_first,S3,C3)
        & iext(uri_rdf_rest,S3,uri_rdf_nil) )
     => ( iext(uri_owl_intersectionOf,Z,S1)
      <=> ( ic(Z)
          & ic(C1)
          & ic(C2)
          & ic(C3)
          & ! [X] :
              ( icext(Z,X)
            <=> ( icext(C1,X)
                & icext(C2,X)
                & icext(C3,X) ) ) ) ) ) ).

%----owl:unionOf / classes
%----nullary
fof(owl_bool_unionof_class_000,axiom,
    ! [Z] :
      ( iext(uri_owl_unionOf,Z,uri_rdf_nil)
    <=> ( ic(Z)
        & ! [X] : ~ icext(Z,X) ) ) ).

%----owl:unionOf / classes
%----unary
fof(owl_bool_unionof_class_001,axiom,
    ! [Z,S1,C1] :
      ( ( iext(uri_rdf_first,S1,C1)
        & iext(uri_rdf_rest,S1,uri_rdf_nil) )
     => ( iext(uri_owl_unionOf,Z,S1)
      <=> ( ic(Z)
          & ic(C1)
          & ! [X] :
              ( icext(Z,X)
            <=> icext(C1,X) ) ) ) ) ).

%----owl:unionOf / classes
%----binary
fof(owl_bool_unionof_class_002,axiom,
    ! [Z,S1,C1,S2,C2] :
      ( ( iext(uri_rdf_first,S1,C1)
        & iext(uri_rdf_rest,S1,S2)
        & iext(uri_rdf_first,S2,C2)
        & iext(uri_rdf_rest,S2,uri_rdf_nil) )
     => ( iext(uri_owl_unionOf,Z,S1)
      <=> ( ic(Z)
          & ic(C1)
          & ic(C2)
          & ! [X] :
              ( icext(Z,X)
            <=> ( icext(C1,X)
                | icext(C2,X) ) ) ) ) ) ).

%----owl:unionOf / classes
%----binary
fof(owl_bool_unionof_class_003,axiom,
    ! [Z,S1,C1,S2,C2,S3,C3] :
      ( ( iext(uri_rdf_first,S1,C1)
        & iext(uri_rdf_rest,S1,S2)
        & iext(uri_rdf_first,S2,C2)
        & iext(uri_rdf_rest,S2,S3)
        & iext(uri_rdf_first,S3,C3)
        & iext(uri_rdf_rest,S3,uri_rdf_nil) )
     => ( iext(uri_owl_unionOf,Z,S1)
      <=> ( ic(Z)
          & ic(C1)
          & ic(C2)
          & ic(C3)
          & ! [X] :
              ( icext(Z,X)
            <=> ( icext(C1,X)
                | icext(C2,X)
                | icext(C3,X) ) ) ) ) ) ).

%----owl:Nothing
fof(owl_class_nothing_ext,axiom,
    ! [X] : ~ icext(uri_owl_Nothing,X) ).

fof(owl_class_nothing_type,axiom,
    ic(uri_owl_Nothing) ).

%----owl:Thing
fof(owl_class_thing_ext,axiom,
    ! [X] :
      ( icext(uri_owl_Thing,X)
    <=> ir(X) ) ).

%----owl:Thing
fof(owl_class_thing_type,axiom,
    ic(uri_owl_Thing) ).

%----Semantic Condition on the Instances of Part IC (Classes)
fof(owl_parts_ic_cond_inst,axiom,
    ! [X] :
      ( ic(X)
     => ! [Y] :
          ( icext(X,Y)
         => ir(Y) ) ) ).

%----Semantic Condition on Part IC (Classes)
fof(owl_parts_ic_cond_set,axiom,
    ! [X] :
      ( ic(X)
     => ir(X) ) ).

%----Definition of Part IC (Classes)
fof(owl_parts_ic_def,axiom,
    ! [X] :
      ( ic(X)
    <=> iext(uri_rdf_type,X,uri_rdfs_Class) ) ).

%----Semantic Condition on the Instances of Part IDC (Datatypes)
fof(owl_parts_idc_cond_inst,axiom,
    ! [X] :
      ( idc(X)
     => ! [Y] :
          ( icext(X,Y)
         => lv(Y) ) ) ).

%----Semantic Condition on Part IDC (Datatypes)
fof(owl_parts_idc_cond_set,axiom,
    ! [X] :
      ( idc(X)
     => ic(X) ) ).

%----Definition of Part IDC (Datatypes)
fof(owl_parts_idc_def,axiom,
    ! [X] :
      ( idc(X)
    <=> iext(uri_rdf_type,X,uri_rdfs_Datatype) ) ).

%----Semantic Condition on the Instances of Part IOAP (Annotation Properties)
fof(owl_parts_ioap_cond_inst,axiom,
    ! [X] :
      ( ioap(X)
     => ! [Y,Z] :
          ( iext(X,Y,Z)
         => ( ir(Y)
            & ir(Z) ) ) ) ).

%----Semantic Condition on Part IOAP (Annotation Properties)
fof(owl_parts_ioap_cond_set,axiom,
    ! [X] :
      ( ioap(X)
     => ip(X) ) ).

%----Definition of Part IOAP (Annotation Properties)
fof(owl_parts_ioap_def,axiom,
    ! [X] :
      ( ioap(X)
    <=> iext(uri_rdf_type,X,uri_owl_AnnotationProperty) ) ).

%----Semantic Condition on the Instances of Part IODP (Data Properties)
fof(owl_parts_iodp_cond_inst,axiom,
    ! [X] :
      ( iodp(X)
     => ! [Y,Z] :
          ( iext(X,Y,Z)
         => ( ir(Y)
            & lv(Z) ) ) ) ).

%----Semantic Condition on Part IODP (Data Properties)
fof(owl_parts_iodp_cond_set,axiom,
    ! [X] :
      ( iodp(X)
     => ip(X) ) ).

%----Definition of Part IODP (Data Properties)
fof(owl_parts_iodp_def,axiom,
    ! [X] :
      ( iodp(X)
    <=> iext(uri_rdf_type,X,uri_owl_DatatypeProperty) ) ).

%----Semantic Condition on the Instances of Part IOXP (Ontology Properties)
fof(owl_parts_ioxp_cond_inst,axiom,
    ! [X] :
      ( ioxp(X)
     => ! [Y,Z] :
          ( iext(X,Y,Z)
         => ( ix(Y)
            & ix(Z) ) ) ) ).

%----Semantic Condition on Part IOXP (Ontology Properties)
fof(owl_parts_ioxp_cond_set,axiom,
    ! [X] :
      ( ioxp(X)
     => ip(X) ) ).

%----Definition of Part IOXP (Ontology Properties)
fof(owl_parts_ioxp_def,axiom,
    ! [X] :
      ( ioxp(X)
    <=> iext(uri_rdf_type,X,uri_owl_OntologyProperty) ) ).

%----Semantic Condition on the Instances of Part IP (Properties)
fof(owl_parts_ip_cond_inst,axiom,
    ! [X] :
      ( ip(X)
     => ! [Y,Z] :
          ( iext(X,Y,Z)
         => ( ir(Y)
            & ir(Z) ) ) ) ).

%----Semantic Condition on Part IP (Properties)
fof(owl_parts_ip_cond_set,axiom,
    ! [X] :
      ( ip(X)
     => ir(X) ) ).

%----Definition of Part IP (Properties)
fof(owl_parts_ip_def,axiom,
    ! [X] :
      ( ip(X)
    <=> iext(uri_rdf_type,X,uri_rdf_Property) ) ).

%----Semantic Condition on Part IR (Individuals)
fof(owl_parts_ir_cond_set,axiom,
    ? [X] : ir(X) ).

%----Definition of Part IR (Individuals)
fof(owl_parts_ir_def,axiom,
    ! [X] :
      ( ir(X)
    <=> iext(uri_rdf_type,X,uri_rdfs_Resource) ) ).

%----Semantic Condition on Part IX (Ontologies)
fof(owl_parts_ix_cond_set,axiom,
    ! [X] :
      ( ix(X)
     => ir(X) ) ).

%----Definition of Part IX (Ontologies)
fof(owl_parts_ix_def,axiom,
    ! [X] :
      ( ix(X)
    <=> iext(uri_rdf_type,X,uri_owl_Ontology) ) ).

%----Semantic Condition on Part LV (Data Values)
fof(owl_parts_lv_cond_set,axiom,
    ! [X] :
      ( lv(X)
     => ir(X) ) ).

%----Definition of Part LV (Data Values)
fof(owl_parts_lv_def,axiom,
    ! [X] :
      ( lv(X)
    <=> iext(uri_rdf_type,X,uri_rdfs_Literal) ) ).

%----owl:allValuesFrom
fof(owl_prop_allvaluesfrom_ext,axiom,
    ! [X,Y] :
      ( iext(uri_owl_allValuesFrom,X,Y)
     => ( icext(uri_owl_Restriction,X)
        & ic(Y) ) ) ).

fof(owl_prop_allvaluesfrom_type,axiom,
    ip(uri_owl_allValuesFrom) ).

fof(owl_prop_complementof_ext,axiom,
    ! [X,Y] :
      ( iext(uri_owl_complementOf,X,Y)
     => ( ic(X)
        & ic(Y) ) ) ).

fof(owl_prop_complementof_type,axiom,
    ip(uri_owl_complementOf) ).

fof(owl_prop_hasvalue_ext,axiom,
    ! [X,Y] :
      ( iext(uri_owl_hasValue,X,Y)
     => ( icext(uri_owl_Restriction,X)
        & ir(Y) ) ) ).

fof(owl_prop_hasvalue_type,axiom,
    ip(uri_owl_hasValue) ).

fof(owl_prop_intersectionof_ext,axiom,
    ! [X,Y] :
      ( iext(uri_owl_intersectionOf,X,Y)
     => ( ic(X)
        & icext(uri_rdf_List,Y) ) ) ).

fof(owl_prop_intersectionof_type,axiom,
    ip(uri_owl_intersectionOf) ).

%----owl:onProperty
fof(owl_prop_onproperty_ext,axiom,
    ! [X,Y] :
      ( iext(uri_owl_onProperty,X,Y)
     => ( icext(uri_owl_Restriction,X)
        & ip(Y) ) ) ).

fof(owl_prop_onproperty_type,axiom,
    ip(uri_owl_onProperty) ).

fof(owl_prop_somevaluesfrom_ext,axiom,
    ! [X,Y] :
      ( iext(uri_owl_someValuesFrom,X,Y)
     => ( icext(uri_owl_Restriction,X)
        & ic(Y) ) ) ).

fof(owl_prop_somevaluesfrom_type,axiom,
    ip(uri_owl_someValuesFrom) ).

%----owl:unionOf
fof(owl_prop_unionof_ext,axiom,
    ! [X,Y] :
      ( iext(uri_owl_unionOf,X,Y)
     => ( ic(X)
        & icext(uri_rdf_List,Y) ) ) ).

fof(owl_prop_unionof_type,axiom,
    ip(uri_owl_unionOf) ).

%----rdfs:domain
fof(owl_rdfsext_domain,axiom,
    ! [P,C] :
      ( iext(uri_rdfs_domain,P,C)
    <=> ( ip(P)
        & ic(C)
        & ! [X,Y] :
            ( iext(P,X,Y)
           => icext(C,X) ) ) ) ).

%----rdfs:range
fof(owl_rdfsext_range,axiom,
    ! [P,C] :
      ( iext(uri_rdfs_range,P,C)
    <=> ( ip(P)
        & ip(C)
        & ! [X,Y] :
            ( iext(P,X,Y)
           => icext(C,Y) ) ) ) ).

%----rdfs:subClassOf
fof(owl_rdfsext_subclassof,axiom,
    ! [C1,C2] :
      ( iext(uri_rdfs_subClassOf,C1,C2)
    <=> ( ic(C1)
        & ic(C2)
        & ! [X] :
            ( icext(C1,X)
           => icext(C2,X) ) ) ) ).

%----rdfs:subPropertyOf
fof(owl_rdfsext_subpropertyof,axiom,
    ! [P1,P2] :
      ( iext(uri_rdfs_subPropertyOf,P1,P2)
    <=> ( ip(P1)
        & ip(P2)
        & ! [X,Y] :
            ( iext(P1,X,Y)
           => iext(P2,X,Y) ) ) ) ).

%----owl:allValuesFrom
fof(owl_restrict_allvaluesfrom,axiom,
    ! [Z,P,C] :
      ( ( iext(uri_owl_allValuesFrom,Z,C)
        & iext(uri_owl_onProperty,Z,P) )
     => ! [X] :
          ( icext(Z,X)
        <=> ! [Y] :
              ( iext(P,X,Y)
             => icext(C,Y) ) ) ) ).

%----owl:hasValue
fof(owl_restrict_hasvalue,axiom,
    ! [Z,P,A] :
      ( ( iext(uri_owl_hasValue,Z,A)
        & iext(uri_owl_onProperty,Z,P) )
     => ! [X] :
          ( icext(Z,X)
        <=> iext(P,X,A) ) ) ).

%----owl:someValuesFrom
fof(owl_restrict_somevaluesfrom,axiom,
    ! [Z,P,C] :
      ( ( iext(uri_owl_someValuesFrom,Z,C)
        & iext(uri_owl_onProperty,Z,P) )
     => ! [X] :
          ( icext(Z,X)
        <=> ? [Y] :
              ( iext(P,X,Y)
              & icext(C,Y) ) ) ) ).

%----Axiomatic Triples for the Collection Vocabulary (Lists): rdf:first
fof(rdf_collection_first_type,axiom,
    iext(uri_rdf_type,uri_rdf_first,uri_rdf_Property) ).

%----Axiomatic Triples for the Collection Vocabulary (Lists): rdf:nil
fof(rdf_collection_nil_type,axiom,
    iext(uri_rdf_type,uri_rdf_nil,uri_rdf_List) ).

%----Axiomatic Triples for the Collection Vocabulary (Lists): rdf:rest
fof(rdf_collection_rest_type,axiom,
    iext(uri_rdf_type,uri_rdf_rest,uri_rdf_Property) ).

%----Axiomatic Triples for the Container Vocabulary: rdf:_n
fof(rdf_container_n_type_001,axiom,
    iext(uri_rdf_type,uri_rdf__1,uri_rdf_Property) ).

%----Axiomatic Triples for the Container Vocabulary: rdf:_n
fof(rdf_container_n_type_002,axiom,
    iext(uri_rdf_type,uri_rdf__2,uri_rdf_Property) ).

%----Axiomatic Triples for the Container Vocabulary: rdf:_n
fof(rdf_container_n_type_003,axiom,
    iext(uri_rdf_type,uri_rdf__3,uri_rdf_Property) ).

%----Axiomatic Triples for the Reification Vocabulary: rdf:object
fof(rdf_reification_object_type,axiom,
    iext(uri_rdf_type,uri_rdf_object,uri_rdf_Property) ).

%----Axiomatic Triples for rdf:value--
fof(rdf_reification_predicate_type,axiom,
    iext(uri_rdf_type,uri_rdf_value,uri_rdf_Property) ).

%----Axiomatic Triples for the Reification Vocabulary: rdf:subject
fof(rdf_reification_subject_type,axiom,
    iext(uri_rdf_type,uri_rdf_subject,uri_rdf_Property) ).

%----IP and rdf:Property
fof(rdf_type_ip,axiom,
    ! [P] :
      ( iext(uri_rdf_type,P,uri_rdf_Property)
    <=> ip(P) ) ).

%----Axiomatic Triple for rdf:type
fof(rdf_type_type,axiom,
    iext(uri_rdf_type,uri_rdf_type,uri_rdf_Property) ).

%----Axiomatic Triple for rdf:type
fof(rdf_value_type,axiom,
    iext(uri_rdf_type,uri_rdf_type,uri_rdf_Property) ).

fof(rdfs_annotation_comment_domain,axiom,
    iext(uri_rdfs_domain,uri_rdfs_comment,uri_rdfs_Resource) ).

fof(rdfs_annotation_comment_range,axiom,
    iext(uri_rdfs_range,uri_rdfs_comment,uri_rdfs_Literal) ).

fof(rdfs_annotation_isdefinedby_domain,axiom,
    iext(uri_rdfs_domain,uri_rdfs_isDefinedBy,uri_rdfs_Resource) ).

fof(rdfs_annotation_isdefinedby_range,axiom,
    iext(uri_rdfs_range,uri_rdfs_isDefinedBy,uri_rdfs_Resource) ).

fof(rdfs_annotation_isdefinedby_sub,axiom,
    iext(uri_rdfs_subPropertyOf,uri_rdfs_isDefinedBy,uri_rdfs_seeAlso) ).

fof(rdfs_annotation_label_domain,axiom,
    iext(uri_rdfs_domain,uri_rdfs_label,uri_rdfs_Resource) ).

fof(rdfs_annotation_label_range,axiom,
    iext(uri_rdfs_range,uri_rdfs_label,uri_rdfs_Literal) ).

fof(rdfs_annotation_seealso_domain,axiom,
    iext(uri_rdfs_domain,uri_rdfs_seeAlso,uri_rdfs_Resource) ).

fof(rdfs_annotation_seealso_range,axiom,
    iext(uri_rdfs_range,uri_rdfs_seeAlso,uri_rdfs_Resource) ).

%----Definition of ICEXT
fof(rdfs_cext_def,axiom,
    ! [X,C] :
      ( iext(uri_rdf_type,X,C)
    <=> icext(C,X) ) ).

%----IC and rdfs:Resource
fof(rdfs_class_instsub_resource,axiom,
    ! [C] :
      ( ic(C)
     => iext(uri_rdfs_subClassOf,C,uri_rdfs_Resource) ) ).

%----IC and rdfs:Resource
fof(rdfs_collection_first_domain,axiom,
    iext(uri_rdfs_domain,uri_rdf_first,uri_rdf_List) ).

%----IC and rdfs:Resource
fof(rdfs_collection_first_range,axiom,
    iext(uri_rdfs_range,uri_rdf_first,uri_rdfs_Resource) ).

fof(rdfs_collection_rest_domain,axiom,
    iext(uri_rdfs_domain,uri_rdf_rest,uri_rdf_List) ).

fof(rdfs_collection_rest_range,axiom,
    iext(uri_rdfs_range,uri_rdf_rest,uri_rdf_List) ).

fof(rdfs_container_alt_sub,axiom,
    iext(uri_rdfs_subClassOf,uri_rdf_Alt,uri_rdfs_Container) ).

fof(rdfs_container_bag_sub,axiom,
    iext(uri_rdfs_subClassOf,uri_rdf_Bag,uri_rdfs_Container) ).

%----rdfs:ContainerMembershipProperty
fof(rdfs_container_containermembershipproperty_instsub_member,axiom,
    ! [P] :
      ( icext(uri_rdfs_ContainerMembershipProperty,P)
     => iext(uri_rdfs_subPropertyOf,P,uri_rdfs_member) ) ).

fof(rdfs_container_containermembershipproperty_sub,axiom,
    iext(uri_rdfs_subClassOf,uri_rdfs_ContainerMembershipProperty,uri_rdf_Property) ).

fof(rdfs_container_member_domain,axiom,
    iext(uri_rdfs_domain,uri_rdfs_member,uri_rdfs_Resource) ).

fof(rdfs_container_member_range,axiom,
    iext(uri_rdfs_range,uri_rdfs_member,uri_rdfs_Resource) ).

fof(rdfs_container_n_domain_001,axiom,
    iext(uri_rdfs_domain,uri_rdf__1,uri_rdfs_Resource) ).

fof(rdfs_container_n_domain_002,axiom,
    iext(uri_rdfs_domain,uri_rdf__2,uri_rdfs_Resource) ).

fof(rdfs_container_n_domain_003,axiom,
    iext(uri_rdfs_domain,uri_rdf__3,uri_rdfs_Resource) ).

fof(rdfs_container_n_range_001,axiom,
    iext(uri_rdfs_range,uri_rdf__1,uri_rdfs_Resource) ).

fof(rdfs_container_n_range_002,axiom,
    iext(uri_rdfs_range,uri_rdf__2,uri_rdfs_Resource) ).

fof(rdfs_container_n_range_003,axiom,
    iext(uri_rdfs_range,uri_rdf__3,uri_rdfs_Resource) ).

fof(rdfs_container_n_type_001,axiom,
    iext(uri_rdf_type,uri_rdf__1,uri_rdfs_ContainerMembershipProperty) ).

fof(rdfs_container_n_type_002,axiom,
    iext(uri_rdf_type,uri_rdf__2,uri_rdfs_ContainerMembershipProperty) ).

fof(rdfs_container_n_type_003,axiom,
    iext(uri_rdf_type,uri_rdf__3,uri_rdfs_ContainerMembershipProperty) ).

fof(rdfs_container_seq_sub,axiom,
    iext(uri_rdfs_subClassOf,uri_rdfs_Seq,uri_rdfs_Container) ).

fof(rdfs_dat_xmlliteral_sub,axiom,
    iext(uri_rdfs_subClassOf,uri_rdf_XMLLiteral,uri_rdfs_Literal) ).

%----type of rdf:XMLLiteral
fof(rdfs_dat_xmlliteral_type,axiom,
    iext(uri_rdf_type,uri_rdf_XMLLiteral,uri_rdfs_Datatype) ).

%----rdfs:Datatype and rdfs:Literal
fof(rdfs_datatype_instsub_literal,axiom,
    ! [D] :
      ( icext(uri_rdfs_Datatype,D)
     => iext(uri_rdfs_subClassOf,D,uri_rdfs_Literal) ) ).

%----rdfs:Datatype is a sub class of rdfs:Class
fof(rdfs_datatype_sub,axiom,
    iext(uri_rdfs_subClassOf,uri_rdfs_Datatype,uri_rdfs_Class) ).

%----domain of rdfs:domain
fof(rdfs_domain_domain,axiom,
    iext(uri_rdfs_domain,uri_rdfs_domain,uri_rdf_Property) ).

%----Semantic Condition for rdfs:domain
fof(rdfs_domain_main,axiom,
    ! [P,C,X,Y] :
      ( ( iext(uri_rdfs_domain,P,C)
        & iext(P,X,Y) )
     => icext(C,X) ) ).

%----range of rdfs:domain
fof(rdfs_domain_range,axiom,
    iext(uri_rdfs_range,uri_rdfs_domain,uri_rdfs_Class) ).

%----Definition of set IC based on class extensions of rdfs:Class
fof(rdfs_ic_def,axiom,
    ! [X] :
      ( ic(X)
    <=> icext(uri_rdfs_Class,X) ) ).

%----Definition of set IR based on class extensions of rdfs:Resource
fof(rdfs_ir_def,axiom,
    ! [X] :
      ( ir(X)
    <=> icext(uri_rdfs_Resource,X) ) ).

%----Definition of set LV based on class extensions of rdfs:Literal
fof(rdfs_lv_def,axiom,
    ! [X] :
      ( lv(X)
    <=> icext(uri_rdfs_Literal,X) ) ).

%----type of rdf:Property (derivable RDFS-valid triple)
fof(rdfs_property_type,axiom,
    iext(uri_rdf_type,uri_rdf_Property,uri_rdfs_Class) ).

%----domain of rdfs:range
fof(rdfs_range_domain,axiom,
    iext(uri_rdfs_domain,uri_rdfs_range,uri_rdf_Property) ).

%----Semantic Condition for rdfs:range
fof(rdfs_range_main,axiom,
    ! [P,C,X,Y] :
      ( ( iext(uri_rdfs_range,P,C)
        & iext(P,X,Y) )
     => icext(C,Y) ) ).

%----range of rdfs:range
fof(rdfs_range_range,axiom,
    iext(uri_rdfs_range,uri_rdfs_range,uri_rdfs_Class) ).

fof(rdfs_reification_object_domain,axiom,
    iext(uri_rdfs_domain,uri_rdf_object,uri_rdfs_Statement) ).

fof(rdfs_reification_object_range,axiom,
    iext(uri_rdfs_range,uri_rdf_predicate,uri_rdfs_Resource) ).

fof(rdfs_reification_predicate_domain,axiom,
    iext(uri_rdfs_domain,uri_rdf_predicate,uri_rdfs_Statement) ).

fof(rdfs_reification_predicate_range,axiom,
    iext(uri_rdfs_range,uri_rdf_predicate,uri_rdfs_Resource) ).

fof(rdfs_reification_subject_domain,axiom,
    iext(uri_rdfs_domain,uri_rdf_subject,uri_rdfs_Statement) ).

fof(rdfs_reification_subject_range,axiom,
    iext(uri_rdfs_range,uri_rdf_subject,uri_rdfs_Resource) ).

%----domain of rdfs:subClassOf
fof(rdfs_subclassof_domain,axiom,
    iext(uri_rdfs_domain,uri_rdfs_subClassOf,uri_rdfs_Class) ).

%----Main Semantic Conditions for rdfs:subClassOf
fof(rdfs_subclassof_main,axiom,
    ! [C,D] :
      ( iext(uri_rdfs_subClassOf,C,D)
     => ( ic(C)
        & ic(D)
        & ! [X] :
            ( icext(C,X)
           => icext(D,X) ) ) ) ).

%----range of rdfs:subClassOf
fof(rdfs_subclassof_range,axiom,
    iext(uri_rdfs_range,uri_rdfs_subClassOf,uri_rdfs_Class) ).

%----Reflexivity of rdfs:subClassOf on IC
fof(rdfs_subclassof_reflex,axiom,
    ! [C] :
      ( ic(C)
     => iext(uri_rdfs_subClassOf,C,C) ) ).

%----Transitivity of rdfs:subClassOf on IC
fof(rdfs_subclassof_trans,axiom,
    ! [C,D,E] :
      ( ( iext(uri_rdfs_subClassOf,C,D)
        & iext(uri_rdfs_subClassOf,D,E) )
     => iext(uri_rdfs_subClassOf,C,E) ) ).

%----domain of rdfs:subPropertyOf
fof(rdfs_subpropertyof_domain,axiom,
    iext(uri_rdfs_domain,uri_rdfs_subPropertyOf,uri_rdf_Property) ).

%----Main Semantic Condition for rdfs:subPropertyOf
fof(rdfs_subpropertyof_main,axiom,
    ! [P,Q] :
      ( iext(uri_rdfs_subPropertyOf,P,Q)
     => ( ip(P)
        & ip(Q)
        & ! [X,Y] :
            ( iext(P,X,Y)
           => iext(Q,X,Y) ) ) ) ).

%----range of rdfs:subPropertyOf
fof(rdfs_subpropertyof_range,axiom,
    iext(uri_rdfs_range,uri_rdfs_subPropertyOf,uri_rdf_Property) ).

%----Reflexivity of rdfs:subPropertyOf on IP
fof(rdfs_subpropertyof_reflex,axiom,
    ! [P] :
      ( ip(P)
     => iext(uri_rdfs_subPropertyOf,P,P) ) ).

%----Transitivity of rdfs:subPropertyOf on IP
fof(rdfs_subpropertyof_trans,axiom,
    ! [P,Q,R] :
      ( ( iext(uri_rdfs_subPropertyOf,P,Q)
        & iext(uri_rdfs_subPropertyOf,Q,R) )
     => iext(uri_rdfs_subPropertyOf,P,R) ) ).

%----domain of rdf:type
fof(rdfs_type_domain,axiom,
    iext(uri_rdfs_domain,uri_rdf_type,uri_rdfs_Resource) ).

%----range of rdf:type
fof(rdfs_type_range,axiom,
    iext(uri_rdfs_range,uri_rdf_type,uri_rdfs_Class) ).

fof(rdfs_value_domain,axiom,
    iext(uri_rdfs_domain,uri_rdf_value,uri_rdfs_Resource) ).

fof(rdfs_value_range,axiom,
    iext(uri_rdfs_range,uri_rdf_value,uri_rdfs_Resource) ).

%----I(s p o) = true -> I(p) in IP
%----Note: the "iext" predicate seems to represent a true triple,
%----not quite the IEXT mapping [CHECK!]
fof(simple_iext_property,axiom,
    ! [S,P,O] :
      ( iext(P,S,O)
     => ip(P) ) ).

%----Set IR
%----The set IR is the set of all resources.
fof(simple_ir,axiom,
    ! [X] : ir(X) ).

%----Set LV
%----The set LV of all data values is a subset of IR.
fof(simple_lv,axiom,
    ! [X] :
      ( lv(X)
     => ir(X) ) ).

%------------------------------------------------------------------------------

%------------------------------------------------------------------------------
fof(testcase_conclusion_fullish_012_Template_Class,conjecture,
    ( iext(uri_rdf_type,uri_ex_name,uri_owl_FunctionalProperty)
    & iext(uri_rdf_type,uri_ex_alice,uri_foaf_Person) ) ).

fof(testcase_premise_fullish_012_Template_Class,axiom,
    ? [BNODE_l1,BNODE_l2,BNODE_l3,BNODE_r] :
      ( iext(uri_rdf_type,uri_foaf_Person,uri_owl_Class)
      & iext(uri_owl_intersectionOf,uri_ex_PersonAttribute,BNODE_l1)
      & iext(uri_rdf_first,BNODE_l1,uri_owl_DatatypeProperty)
      & iext(uri_rdf_rest,BNODE_l1,BNODE_l2)
      & iext(uri_rdf_first,BNODE_l2,uri_owl_FunctionalProperty)
      & iext(uri_rdf_rest,BNODE_l2,BNODE_l3)
      & iext(uri_rdf_first,BNODE_l3,BNODE_r)
      & iext(uri_rdf_rest,BNODE_l3,uri_rdf_nil)
      & iext(uri_rdf_type,BNODE_r,uri_owl_Restriction)
      & iext(uri_owl_onProperty,BNODE_r,uri_rdfs_domain)
      & iext(uri_owl_hasValue,BNODE_r,uri_foaf_Person)
      & iext(uri_rdf_type,uri_ex_name,uri_ex_PersonAttribute)
      & iext(uri_ex_name,uri_ex_alice,literal_plain(dat_str_alice)) ) ).

%------------------------------------------------------------------------------
