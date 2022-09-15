%------------------------------------------------------------------------------
% File     : SWB026+1 : TPTP v8.1.0. Released v5.2.0.
% Domain   : Semantic Web
% Problem  : Inferred Property Characteristics I
% Version  : [Sch11] axioms.
% English  : 

% Refs     : [Sch11] Schneider, M. (2011), Email to G. Sutcliffe
% Source   : [Sch11]
% Names    : 026_Inferred_Property_Characteristics_I [Sch11]

% Status   : Theorem
% Rating   : 0.72 v8.1.0, 0.67 v7.5.0, 0.72 v7.4.0, 0.67 v7.3.0, 0.69 v7.1.0, 0.65 v7.0.0, 0.73 v6.3.0, 0.71 v6.2.0, 0.76 v6.1.0, 0.80 v6.0.0, 0.87 v5.5.0, 0.89 v5.3.0, 0.93 v5.2.0
% Syntax   : Number of formulae    :  560 ( 197 unt;   0 def)
%            Number of atoms       : 1781 (  90 equ)
%            Maximal formula atoms :   32 (   3 avg)
%            Number of connectives : 1357 ( 136   ~;  35   |; 765   &)
%                                         ( 126 <=>; 295  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   27 (   5 avg)
%            Maximal term depth    :    2 (   1 avg)
%            Number of predicates  :   13 (  12 usr;   1 prp; 0-3 aty)
%            Number of functors    :  160 ( 160 usr; 159 con; 0-2 aty)
%            Number of variables   :  977 ( 911   !;  66   ?)
% SPC      : FOF_THM_RFO_SEQ

% Comments :
%------------------------------------------------------------------------------
%----Include OWL 2 Full axioms
%------------------------------------------------------------------------------
% File     : SWB001+0 : TPTP v8.1.0. Released v5.2.0.
% Domain   : Semantic Web
% Axioms   : OWL 2 Full
% Version  : [Sch03] axioms : Especial.
% English  :

% Refs     : [Sch03] Schneider, M. (2011), Email to G. Sutcliffe
% Source   : [Sch03]
% Names    : axioms-owl2full-standard.tptp [Sch03]

% Status   : Satisfiable
% Syntax   : Number of formulae    :  558 ( 196 unt;   0 def)
%            Number of atoms       : 1772 (  90 equ)
%            Maximal formula atoms :   32 (   3 avg)
%            Number of connectives : 1350 ( 136   ~;  35   |; 758   &)
%                                         ( 126 <=>; 295  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   27 (   5 avg)
%            Maximal term depth    :    2 (   1 avg)
%            Number of predicates  :   13 (  12 usr;   1 prp; 0-3 aty)
%            Number of functors    :  157 ( 157 usr; 156 con; 0-2 aty)
%            Number of variables   :  973 ( 911   !;  62   ?)
% SPC      : FOF_SAT_RFO_SEQ

% Comments : 
%------------------------------------------------------------------------------
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

fof(owl_class_alldifferent_ext,axiom,
    ! [X] :
      ( icext(uri_owl_AllDifferent,X)
     => ir(X) ) ).

fof(owl_class_alldifferent_type,axiom,
    ic(uri_owl_AllDifferent) ).

fof(owl_class_alldisjointclasses_ext,axiom,
    ! [X] :
      ( icext(uri_owl_AllDisjointClasses,X)
     => ir(X) ) ).

fof(owl_class_alldisjointclasses_type,axiom,
    ic(uri_owl_AllDisjointClasses) ).

fof(owl_class_alldisjointproperties_ext,axiom,
    ! [X] :
      ( icext(uri_owl_AllDisjointProperties,X)
     => ir(X) ) ).

fof(owl_class_alldisjointproperties_type,axiom,
    ic(uri_owl_AllDisjointProperties) ).

fof(owl_class_annotation_ext,axiom,
    ! [X] :
      ( icext(uri_owl_Annotation,X)
     => ir(X) ) ).

fof(owl_class_annotation_type,axiom,
    ic(uri_owl_Annotation) ).

fof(owl_class_annotationproperty_ext,axiom,
    ! [X] :
      ( icext(uri_owl_AnnotationProperty,X)
    <=> ioap(X) ) ).

fof(owl_class_annotationproperty_type,axiom,
    ic(uri_owl_AnnotationProperty) ).

fof(owl_class_asymmetricproperty_ext,axiom,
    ! [X] :
      ( icext(uri_owl_AsymmetricProperty,X)
     => ip(X) ) ).

fof(owl_class_asymmetricproperty_type,axiom,
    ic(uri_owl_AsymmetricProperty) ).

fof(owl_class_axiom_ext,axiom,
    ! [X] :
      ( icext(uri_owl_Axiom,X)
     => ir(X) ) ).

fof(owl_class_axiom_type,axiom,
    ic(uri_owl_Axiom) ).

%----owl:Class
fof(owl_class_classowl_ext,axiom,
    ! [X] :
      ( icext(uri_owl_Class,X)
    <=> ic(X) ) ).

%----owl:Class
fof(owl_class_classowl_type,axiom,
    ic(uri_owl_Class) ).

%----rdfs:Class
fof(owl_class_classrdfs_ext,axiom,
    ! [X] :
      ( icext(uri_rdfs_Class,X)
    <=> ic(X) ) ).

%----rdfs:Class
fof(owl_class_classrdfs_type,axiom,
    ic(uri_rdfs_Class) ).

fof(owl_class_datarange_ext,axiom,
    ! [X] :
      ( icext(uri_owl_DataRange,X)
    <=> idc(X) ) ).

fof(owl_class_datarange_type,axiom,
    ic(uri_owl_DataRange) ).

%----rdfs:Datatype
fof(owl_class_datatype_ext,axiom,
    ! [X] :
      ( icext(uri_rdfs_Datatype,X)
    <=> idc(X) ) ).

%----rdfs:Datatype
fof(owl_class_datatype_type,axiom,
    ic(uri_rdfs_Datatype) ).

fof(owl_class_datatypeproperty_ext,axiom,
    ! [X] :
      ( icext(uri_owl_DatatypeProperty,X)
    <=> iodp(X) ) ).

fof(owl_class_datatypeproperty_type,axiom,
    ic(uri_owl_DatatypeProperty) ).

fof(owl_class_deprecatedclass_ext,axiom,
    ! [X] :
      ( icext(uri_owl_DeprecatedClass,X)
     => ic(X) ) ).

fof(owl_class_deprecatedclass_type,axiom,
    ic(uri_owl_DeprecatedClass) ).

fof(owl_class_deprecatedproperty_ext,axiom,
    ! [X] :
      ( icext(uri_owl_DeprecatedProperty,X)
     => ip(X) ) ).

fof(owl_class_deprecatedproperty_type,axiom,
    ic(uri_owl_DeprecatedProperty) ).

fof(owl_class_functionalproperty_ext,axiom,
    ! [X] :
      ( icext(uri_owl_FunctionalProperty,X)
     => ip(X) ) ).

fof(owl_class_functionalproperty_type,axiom,
    ic(uri_owl_FunctionalProperty) ).

fof(owl_class_inversefunctionalproperty_ext,axiom,
    ! [X] :
      ( icext(uri_owl_InverseFunctionalProperty,X)
     => ip(X) ) ).

%----owl:InverseFunctionalProperty
fof(owl_class_inversefunctionalproperty_type,axiom,
    ic(uri_owl_InverseFunctionalProperty) ).

fof(owl_class_irreflexiveproperty_ext,axiom,
    ! [X] :
      ( icext(uri_owl_IrreflexiveProperty,X)
     => ip(X) ) ).

fof(owl_class_irreflexiveproperty_type,axiom,
    ic(uri_owl_IrreflexiveProperty) ).

fof(owl_class_literal_ext,axiom,
    ! [X] :
      ( icext(uri_rdfs_Literal,X)
    <=> lv(X) ) ).

fof(owl_class_literal_type,axiom,
    idc(uri_rdfs_Literal) ).

fof(owl_class_namedindividual_ext,axiom,
    ! [X] :
      ( icext(uri_owl_NamedIndividual,X)
     => ir(X) ) ).

fof(owl_class_namedindividual_type,axiom,
    ic(uri_owl_NamedIndividual) ).

fof(owl_class_negativepropertyassertion_ext,axiom,
    ! [X] :
      ( icext(uri_owl_NegativePropertyAssertion,X)
     => ir(X) ) ).

fof(owl_class_negativepropertyassertion_type,axiom,
    ic(uri_owl_NegativePropertyAssertion) ).

%----owl:Nothing
fof(owl_class_nothing_ext,axiom,
    ! [X] : ~ icext(uri_owl_Nothing,X) ).

fof(owl_class_nothing_type,axiom,
    ic(uri_owl_Nothing) ).

%----owl:ObjectProperty
fof(owl_class_objectproperty_ext,axiom,
    ! [X] :
      ( icext(uri_owl_ObjectProperty,X)
    <=> ip(X) ) ).

fof(owl_class_objectproperty_type,axiom,
    ic(uri_owl_ObjectProperty) ).

fof(owl_class_ontology_ext,axiom,
    ! [X] :
      ( icext(uri_owl_Ontology,X)
    <=> ix(X) ) ).

fof(owl_class_ontology_type,axiom,
    ic(uri_owl_Ontology) ).

fof(owl_class_ontologyproperty_ext,axiom,
    ! [X] :
      ( icext(uri_owl_OntologyProperty,X)
    <=> ioxp(X) ) ).

fof(owl_class_ontologyproperty_type,axiom,
    ic(uri_owl_OntologyProperty) ).

fof(owl_class_property_ext,axiom,
    ! [X] :
      ( icext(uri_rdf_Property,X)
    <=> ip(X) ) ).

fof(owl_class_property_type,axiom,
    ic(uri_rdf_Property) ).

fof(owl_class_reflexiveproperty_ext,axiom,
    ! [X] :
      ( icext(uri_owl_ReflexiveProperty,X)
     => ip(X) ) ).

fof(owl_class_reflexiveproperty_type,axiom,
    ic(uri_owl_ReflexiveProperty) ).

fof(owl_class_resource_ext,axiom,
    ! [X] :
      ( icext(uri_rdfs_Resource,X)
    <=> ir(X) ) ).

fof(owl_class_resource_type,axiom,
    ic(uri_rdfs_Resource) ).

fof(owl_class_restriction_ext,axiom,
    ! [X] :
      ( icext(uri_owl_Restriction,X)
     => ic(X) ) ).

fof(owl_class_restriction_type,axiom,
    ic(uri_owl_Restriction) ).

fof(owl_class_symmetricproperty_ext,axiom,
    ! [X] :
      ( icext(uri_owl_SymmetricProperty,X)
     => ip(X) ) ).

fof(owl_class_symmetricproperty_type,axiom,
    ic(uri_owl_SymmetricProperty) ).

%----owl:Thing
fof(owl_class_thing_ext,axiom,
    ! [X] :
      ( icext(uri_owl_Thing,X)
    <=> ir(X) ) ).

%----owl:Thing
fof(owl_class_thing_type,axiom,
    ic(uri_owl_Thing) ).

fof(owl_class_transitiveproperty_ext,axiom,
    ! [X] :
      ( icext(uri_owl_TransitiveProperty,X)
     => ip(X) ) ).

fof(owl_class_transitiveproperty_type,axiom,
    ic(uri_owl_TransitiveProperty) ).

%----owl:allValuesFrom
fof(owl_prop_allvaluesfrom_ext,axiom,
    ! [X,Y] :
      ( iext(uri_owl_allValuesFrom,X,Y)
     => ( icext(uri_owl_Restriction,X)
        & ic(Y) ) ) ).

fof(owl_prop_allvaluesfrom_type,axiom,
    ip(uri_owl_allValuesFrom) ).

fof(owl_prop_annotatedproperty_ext,axiom,
    ! [X,Y] :
      ( iext(uri_owl_annotatedProperty,X,Y)
     => ( ir(X)
        & ir(Y) ) ) ).

fof(owl_prop_annotatedproperty_type,axiom,
    ip(uri_owl_annotatedProperty) ).

fof(owl_prop_annotatedsource_ext,axiom,
    ! [X,Y] :
      ( iext(uri_owl_annotatedSource,X,Y)
     => ( ir(X)
        & ir(Y) ) ) ).

fof(owl_prop_annotatedsource_type,axiom,
    ip(uri_owl_annotatedSource) ).

fof(owl_prop_annotatedtarget_ext,axiom,
    ! [X,Y] :
      ( iext(uri_owl_annotatedTarget,X,Y)
     => ( ir(X)
        & ir(Y) ) ) ).

fof(owl_prop_annotatedtarget_type,axiom,
    ip(uri_owl_annotatedTarget) ).

fof(owl_prop_assertionproperty_ext,axiom,
    ! [X,Y] :
      ( iext(uri_owl_assertionProperty,X,Y)
     => ( icext(uri_owl_NegativePropertyAssertion,X)
        & ip(Y) ) ) ).

fof(owl_prop_assertionproperty_type,axiom,
    ip(uri_owl_assertionProperty) ).

fof(owl_prop_backwardcompatiblewith_ext,axiom,
    ! [X,Y] :
      ( iext(uri_owl_backwardCompatibleWith,X,Y)
     => ( ix(X)
        & ix(Y) ) ) ).

fof(owl_prop_backwardcompatiblewith_type_annot,axiom,
    ioap(uri_owl_backwardCompatibleWith) ).

fof(owl_prop_backwardcompatiblewith_type_onto,axiom,
    ioxp(uri_owl_backwardCompatibleWith) ).

fof(owl_prop_bottomdataproperty_ext,axiom,
    ! [X,Y] : ~ iext(uri_owl_bottomDataProperty,X,Y) ).

fof(owl_prop_bottomdataproperty_type,axiom,
    iodp(uri_owl_bottomDataProperty) ).

fof(owl_prop_bottomobjectproperty_ext,axiom,
    ! [X,Y] : ~ iext(uri_owl_bottomObjectProperty,X,Y) ).

fof(owl_prop_bottomobjectproperty_type,axiom,
    ip(uri_owl_bottomObjectProperty) ).

fof(owl_prop_cardinality_ext,axiom,
    ! [X,Y] :
      ( iext(uri_owl_cardinality,X,Y)
     => ( icext(uri_owl_Restriction,X)
        & icext(uri_xml_nonNegativeInteger,Y) ) ) ).

fof(owl_prop_cardinality_type,axiom,
    ip(uri_owl_cardinality) ).

fof(owl_prop_comment_ext,axiom,
    ! [X,Y] :
      ( iext(uri_rdfs_comment,X,Y)
     => ( ir(X)
        & lv(Y) ) ) ).

fof(owl_prop_comment_type,axiom,
    ioap(uri_rdfs_comment) ).

fof(owl_prop_complementof_ext,axiom,
    ! [X,Y] :
      ( iext(uri_owl_complementOf,X,Y)
     => ( ic(X)
        & ic(Y) ) ) ).

fof(owl_prop_complementof_type,axiom,
    ip(uri_owl_complementOf) ).

fof(owl_prop_datatypecomplementof_ext,axiom,
    ! [X,Y] :
      ( iext(uri_owl_datatypeComplementOf,X,Y)
     => ( idc(X)
        & idc(Y) ) ) ).

fof(owl_prop_datatypecomplementof_type,axiom,
    ip(uri_owl_datatypeComplementOf) ).

fof(owl_prop_deprecated_ext,axiom,
    ! [X,Y] :
      ( iext(uri_owl_deprecated,X,Y)
     => ( ir(X)
        & ir(Y) ) ) ).

fof(owl_prop_deprecated_type,axiom,
    ioap(uri_owl_deprecated) ).

fof(owl_prop_differentfrom_ext,axiom,
    ! [X,Y] :
      ( iext(uri_owl_differentFrom,X,Y)
     => ( ir(X)
        & ir(Y) ) ) ).

fof(owl_prop_differentfrom_type,axiom,
    ip(uri_owl_differentFrom) ).

fof(owl_prop_disjointunionof_ext,axiom,
    ! [X,Y] :
      ( iext(uri_owl_disjointUnionOf,X,Y)
     => ( ic(X)
        & icext(uri_rdf_List,Y) ) ) ).

fof(owl_prop_disjointunionof_type,axiom,
    ip(uri_owl_disjointUnionOf) ).

%----owl:disjointWith
fof(owl_prop_disjointwith_ext,axiom,
    ! [X,Y] :
      ( iext(uri_owl_disjointWith,X,Y)
     => ( ic(X)
        & ic(Y) ) ) ).

fof(owl_prop_disjointwith_type,axiom,
    ip(uri_owl_disjointWith) ).

fof(owl_prop_distinctmembers_ext,axiom,
    ! [X,Y] :
      ( iext(uri_owl_distinctMembers,X,Y)
     => ( icext(uri_owl_AllDifferent,X)
        & icext(uri_rdf_List,Y) ) ) ).

fof(owl_prop_distinctmembers_type,axiom,
    ip(uri_owl_distinctMembers) ).

%----owl:equivalentClass
fof(owl_prop_equivalentclass_ext,axiom,
    ! [X,Y] :
      ( iext(uri_owl_equivalentClass,X,Y)
     => ( ic(X)
        & ic(Y) ) ) ).

%----owl:equivalentClass
fof(owl_prop_equivalentclass_type,axiom,
    ip(uri_owl_equivalentClass) ).

fof(owl_prop_equivalentproperty_ext,axiom,
    ! [X,Y] :
      ( iext(uri_owl_equivalentProperty,X,Y)
     => ( ip(X)
        & ip(Y) ) ) ).

fof(owl_prop_equivalentproperty_type,axiom,
    ip(uri_owl_equivalentProperty) ).

fof(owl_prop_haskey_ext,axiom,
    ! [X,Y] :
      ( iext(uri_owl_hasKey,X,Y)
     => ( ic(X)
        & icext(uri_rdf_List,Y) ) ) ).

fof(owl_prop_haskey_type,axiom,
    ip(uri_owl_hasKey) ).

fof(owl_prop_hasself_ext,axiom,
    ! [X,Y] :
      ( iext(uri_owl_hasSelf,X,Y)
     => ( icext(uri_owl_Restriction,X)
        & ir(Y) ) ) ).

fof(owl_prop_hasself_type,axiom,
    ip(uri_owl_hasSelf) ).

fof(owl_prop_hasvalue_ext,axiom,
    ! [X,Y] :
      ( iext(uri_owl_hasValue,X,Y)
     => ( icext(uri_owl_Restriction,X)
        & ir(Y) ) ) ).

fof(owl_prop_hasvalue_type,axiom,
    ip(uri_owl_hasValue) ).

fof(owl_prop_imports_ext,axiom,
    ! [X,Y] :
      ( iext(uri_owl_imports,X,Y)
     => ( ix(X)
        & ix(Y) ) ) ).

fof(owl_prop_imports_type,axiom,
    ioxp(uri_owl_imports) ).

fof(owl_prop_incompatiblewith_ext,axiom,
    ! [X,Y] :
      ( iext(uri_owl_incompatibleWith,X,Y)
     => ( ix(X)
        & ix(Y) ) ) ).

fof(owl_prop_incompatiblewith_type_annot,axiom,
    ioap(uri_owl_incompatibleWith) ).

fof(owl_prop_incompatiblewith_type_onto,axiom,
    ioxp(uri_owl_incompatibleWith) ).

fof(owl_prop_intersectionof_ext,axiom,
    ! [X,Y] :
      ( iext(uri_owl_intersectionOf,X,Y)
     => ( ic(X)
        & icext(uri_rdf_List,Y) ) ) ).

fof(owl_prop_intersectionof_type,axiom,
    ip(uri_owl_intersectionOf) ).

%----owl:inverseOf
fof(owl_prop_inverseof_ext,axiom,
    ! [X,Y] :
      ( iext(uri_owl_inverseOf,X,Y)
     => ( ip(X)
        & ip(Y) ) ) ).

fof(owl_prop_inverseof_type,axiom,
    ip(uri_owl_inverseOf) ).

fof(owl_prop_isdefinedby_ext,axiom,
    ! [X,Y] :
      ( iext(uri_rdfs_isDefinedBy,X,Y)
     => ( ir(X)
        & ir(Y) ) ) ).

fof(owl_prop_isdefinedby_type,axiom,
    ioap(uri_rdfs_isDefinedBy) ).

fof(owl_prop_label_ext,axiom,
    ! [X,Y] :
      ( iext(uri_rdfs_label,X,Y)
     => ( ir(X)
        & lv(Y) ) ) ).

fof(owl_prop_label_type,axiom,
    ioap(uri_rdfs_label) ).

fof(owl_prop_maxcardinality_ext,axiom,
    ! [X,Y] :
      ( iext(uri_owl_maxCardinality,X,Y)
     => ( icext(uri_owl_Restriction,X)
        & icext(uri_xml_nonNegativeInteger,Y) ) ) ).

fof(owl_prop_maxcardinality_type,axiom,
    ip(uri_owl_maxCardinality) ).

fof(owl_prop_maxqualifiedcardinality_ext,axiom,
    ! [X,Y] :
      ( iext(uri_owl_maxQualifiedCardinality,X,Y)
     => ( icext(uri_owl_Restriction,X)
        & icext(uri_xml_nonNegativeInteger,Y) ) ) ).

fof(owl_prop_maxqualifiedcardinality_type,axiom,
    ip(uri_owl_maxQualifiedCardinality) ).

fof(owl_prop_members_ext,axiom,
    ! [X,Y] :
      ( iext(uri_owl_members,X,Y)
     => ( ir(X)
        & icext(uri_rdf_List,Y) ) ) ).

fof(owl_prop_members_type,axiom,
    ip(uri_owl_members) ).

fof(owl_prop_mincardinality_ext,axiom,
    ! [X,Y] :
      ( iext(uri_owl_minCardinality,X,Y)
     => ( icext(uri_owl_Restriction,X)
        & icext(uri_xml_nonNegativeInteger,Y) ) ) ).

fof(owl_prop_mincardinality_type,axiom,
    ip(uri_owl_minCardinality) ).

fof(owl_prop_minqualifiedcardinality_ext,axiom,
    ! [X,Y] :
      ( iext(uri_owl_minQualifiedCardinality,X,Y)
     => ( icext(uri_owl_Restriction,X)
        & icext(uri_xml_nonNegativeInteger,Y) ) ) ).

fof(owl_prop_minqualifiedcardinality_type,axiom,
    ip(uri_owl_minQualifiedCardinality) ).

fof(owl_prop_onclass_ext,axiom,
    ! [X,Y] :
      ( iext(uri_owl_onClass,X,Y)
     => ( icext(uri_owl_Restriction,X)
        & ic(Y) ) ) ).

fof(owl_prop_onclass_type,axiom,
    ip(uri_owl_onClass) ).

fof(owl_prop_ondatarange_ext,axiom,
    ! [X,Y] :
      ( iext(uri_owl_onDataRange,X,Y)
     => ( icext(uri_owl_Restriction,X)
        & idc(Y) ) ) ).

fof(owl_prop_ondatarange_type,axiom,
    ip(uri_owl_onDataRange) ).

fof(owl_prop_ondatatype_ext,axiom,
    ! [X,Y] :
      ( iext(uri_owl_onDatatype,X,Y)
     => ( idc(X)
        & idc(Y) ) ) ).

fof(owl_prop_ondatatype_type,axiom,
    ip(uri_owl_onDatatype) ).

%----owl:oneOf
fof(owl_prop_oneof_ext,axiom,
    ! [X,Y] :
      ( iext(uri_owl_oneOf,X,Y)
     => ( ic(X)
        & icext(uri_rdf_List,Y) ) ) ).

fof(owl_prop_oneof_type,axiom,
    ip(uri_owl_oneOf) ).

%----owl:onProperty
fof(owl_prop_onproperty_ext,axiom,
    ! [X,Y] :
      ( iext(uri_owl_onProperty,X,Y)
     => ( icext(uri_owl_Restriction,X)
        & ip(Y) ) ) ).

fof(owl_prop_onproperty_type,axiom,
    ip(uri_owl_onProperty) ).

fof(owl_prop_priorversion_ext,axiom,
    ! [X,Y] :
      ( iext(uri_owl_priorVersion,X,Y)
     => ( ix(X)
        & ix(Y) ) ) ).

fof(owl_prop_priorversion_type_annot,axiom,
    ioap(uri_owl_priorVersion) ).

fof(owl_prop_priorversion_type_onto,axiom,
    ioxp(uri_owl_priorVersion) ).

fof(owl_prop_propertychainaxiom_ext,axiom,
    ! [X,Y] :
      ( iext(uri_owl_propertyChainAxiom,X,Y)
     => ( ip(X)
        & icext(uri_rdf_List,Y) ) ) ).

fof(owl_prop_propertychainaxiom_type,axiom,
    ip(uri_owl_propertyChainAxiom) ).

fof(owl_prop_propertydisjointwith_ext,axiom,
    ! [X,Y] :
      ( iext(uri_owl_propertyDisjointWith,X,Y)
     => ( ip(X)
        & ip(Y) ) ) ).

fof(owl_prop_propertydisjointwith_type,axiom,
    ip(uri_owl_propertyDisjointWith) ).

fof(owl_prop_qualifiedcardinality_ext,axiom,
    ! [X,Y] :
      ( iext(uri_owl_qualifiedCardinality,X,Y)
     => ( icext(uri_owl_Restriction,X)
        & icext(uri_xml_nonNegativeInteger,Y) ) ) ).

fof(owl_prop_qualifiedcardinality_type,axiom,
    ip(uri_owl_qualifiedCardinality) ).

fof(owl_prop_sameas_ext,axiom,
    ! [X,Y] :
      ( iext(uri_owl_sameAs,X,Y)
     => ( ir(X)
        & ir(Y) ) ) ).

fof(owl_prop_sameas_type,axiom,
    ip(uri_owl_sameAs) ).

fof(owl_prop_seealso_ext,axiom,
    ! [X,Y] :
      ( iext(uri_rdfs_seeAlso,X,Y)
     => ( ir(X)
        & ir(Y) ) ) ).

fof(owl_prop_seealso_type,axiom,
    ioap(uri_rdfs_seeAlso) ).

fof(owl_prop_somevaluesfrom_ext,axiom,
    ! [X,Y] :
      ( iext(uri_owl_someValuesFrom,X,Y)
     => ( icext(uri_owl_Restriction,X)
        & ic(Y) ) ) ).

fof(owl_prop_somevaluesfrom_type,axiom,
    ip(uri_owl_someValuesFrom) ).

%----owl:sourceIndividual
fof(owl_prop_sourceindividual_ext,axiom,
    ! [X,Y] :
      ( iext(uri_owl_sourceIndividual,X,Y)
     => ( icext(uri_owl_NegativePropertyAssertion,X)
        & ir(Y) ) ) ).

fof(owl_prop_sourceindividual_type,axiom,
    ip(uri_owl_sourceIndividual) ).

fof(owl_prop_targetindividual_ext,axiom,
    ! [X,Y] :
      ( iext(uri_owl_targetIndividual,X,Y)
     => ( icext(uri_owl_NegativePropertyAssertion,X)
        & ir(Y) ) ) ).

fof(owl_prop_targetindividual_type,axiom,
    ip(uri_owl_targetIndividual) ).

fof(owl_prop_targetvalue_ext,axiom,
    ! [X,Y] :
      ( iext(uri_owl_targetValue,X,Y)
     => ( icext(uri_owl_NegativePropertyAssertion,X)
        & lv(Y) ) ) ).

fof(owl_prop_targetvalue_type,axiom,
    ip(uri_owl_targetValue) ).

fof(owl_prop_topdataproperty_ext,axiom,
    ! [X,Y] :
      ( iext(uri_owl_topDataProperty,X,Y)
    <=> ( ir(X)
        & lv(Y) ) ) ).

fof(owl_prop_topdataproperty_type,axiom,
    iodp(uri_owl_topDataProperty) ).

fof(owl_prop_topobjectproperty_ext,axiom,
    ! [X,Y] :
      ( iext(uri_owl_topObjectProperty,X,Y)
    <=> ( ir(X)
        & ir(Y) ) ) ).

fof(owl_prop_topobjectproperty_type,axiom,
    ip(uri_owl_topObjectProperty) ).

%----owl:unionOf
fof(owl_prop_unionof_ext,axiom,
    ! [X,Y] :
      ( iext(uri_owl_unionOf,X,Y)
     => ( ic(X)
        & icext(uri_rdf_List,Y) ) ) ).

fof(owl_prop_unionof_type,axiom,
    ip(uri_owl_unionOf) ).

fof(owl_prop_versioninfo_ext,axiom,
    ! [X,Y] :
      ( iext(uri_owl_versionInfo,X,Y)
     => ( ir(X)
        & ir(Y) ) ) ).

fof(owl_prop_versioninfo_type,axiom,
    ioap(uri_owl_versionInfo) ).

fof(owl_prop_versioniri_ext,axiom,
    ! [X,Y] :
      ( iext(uri_owl_versionIRI,X,Y)
     => ( ix(X)
        & ix(Y) ) ) ).

fof(owl_prop_versioniri_type,axiom,
    ioxp(uri_owl_versionIRI) ).

fof(owl_prop_withrestrictions_ext,axiom,
    ! [X,Y] :
      ( iext(uri_owl_withRestrictions,X,Y)
     => ( idc(X)
        & icext(uri_rdf_List,Y) ) ) ).

fof(owl_prop_withrestrictions_type,axiom,
    ip(uri_owl_withRestrictions) ).

%----owl:complementOf / classes
fof(owl_bool_complementof_class,axiom,
    ! [Z,C] :
      ( iext(uri_owl_complementOf,Z,C)
     => ( ic(Z)
        & ic(C)
        & ! [X] :
            ( icext(Z,X)
          <=> ~ icext(C,X) ) ) ) ).

%----owl:datatypeComplementOf
fof(owl_bool_datatypecomplementof,axiom,
    ! [Z,D] :
      ( iext(uri_owl_datatypeComplementOf,Z,D)
     => ! [X] :
          ( icext(Z,X)
        <=> ( lv(X)
            & ~ icext(D,X) ) ) ) ).

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

%----owl:intersectionOf / datatypes
%----unary
fof(owl_bool_intersectionof_dtype_001,axiom,
    ! [Z,S1,D1] :
      ( ( iext(uri_rdf_first,S1,D1)
        & iext(uri_rdf_rest,S1,uri_rdf_nil)
        & idc(D1)
        & iext(uri_owl_intersectionOf,Z,S1) )
     => idc(Z) ) ).

%----owl:intersectionOf / datatypes
%----binary
fof(owl_bool_intersectionof_dtype_002,axiom,
    ! [Z,S1,D1,S2,D2] :
      ( ( iext(uri_rdf_first,S1,D1)
        & iext(uri_rdf_rest,S1,S2)
        & iext(uri_rdf_first,S2,D2)
        & iext(uri_rdf_rest,S2,uri_rdf_nil)
        & idc(D1)
        & idc(D2)
        & iext(uri_owl_intersectionOf,Z,S1) )
     => idc(Z) ) ).

%----owl:intersectionOf / datatypes
%----ternary
fof(owl_bool_intersectionof_dtype_003,axiom,
    ! [Z,S1,D1,S2,D2,S3,D3] :
      ( ( iext(uri_rdf_first,S1,D1)
        & iext(uri_rdf_rest,S1,S2)
        & iext(uri_rdf_first,S2,D2)
        & iext(uri_rdf_rest,S2,S3)
        & iext(uri_rdf_first,S3,D3)
        & iext(uri_rdf_rest,S3,uri_rdf_nil)
        & idc(D1)
        & idc(D2)
        & idc(D3)
        & iext(uri_owl_intersectionOf,Z,S1) )
     => idc(Z) ) ).

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
%----ternary
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

%----owl:unionOf / datatypes
%----unary
fof(owl_bool_unionof_dtype_001,axiom,
    ! [Z,S1,D1] :
      ( ( iext(uri_rdf_first,S1,D1)
        & iext(uri_rdf_rest,S1,uri_rdf_nil)
        & idc(D1)
        & iext(uri_owl_unionOf,Z,S1) )
     => idc(Z) ) ).

%----owl:unionOf / datatypes
%----binary
fof(owl_bool_unionof_dtype_002,axiom,
    ! [Z,S1,D1,S2,D2] :
      ( ( iext(uri_rdf_first,S1,D1)
        & iext(uri_rdf_rest,S1,S2)
        & iext(uri_rdf_first,S2,D2)
        & iext(uri_rdf_rest,S2,uri_rdf_nil)
        & idc(D1)
        & idc(D2)
        & iext(uri_owl_unionOf,Z,S1) )
     => idc(Z) ) ).

%----owl:unionOf / datatypes
%----ternary
fof(owl_bool_unionof_dtype_003,axiom,
    ! [Z,S1,D1,S2,D2,S3,D3] :
      ( ( iext(uri_rdf_first,S1,D1)
        & iext(uri_rdf_rest,S1,S2)
        & iext(uri_rdf_first,S2,D2)
        & iext(uri_rdf_rest,S2,S3)
        & iext(uri_rdf_first,S3,D3)
        & iext(uri_rdf_rest,S3,uri_rdf_nil)
        & idc(D1)
        & idc(D2)
        & idc(D3)
        & iext(uri_owl_unionOf,Z,S1) )
     => idc(Z) ) ).

%----owl:oneOf / individuals / empty
fof(owl_enum_class_000,axiom,
    ! [Z] :
      ( iext(uri_owl_oneOf,Z,uri_rdf_nil)
    <=> ( ic(Z)
        & ! [X] : ~ icext(Z,X) ) ) ).

%----owl:oneOf / individuals / singleton
fof(owl_enum_class_001,axiom,
    ! [Z,S1,A1] :
      ( ( iext(uri_rdf_first,S1,A1)
        & iext(uri_rdf_rest,S1,uri_rdf_nil) )
     => ( iext(uri_owl_oneOf,Z,S1)
      <=> ( ic(Z)
          & ! [X] :
              ( icext(Z,X)
            <=> X = A1 ) ) ) ) ).

%----owl:oneOf / individuals / dual
fof(owl_enum_class_002,axiom,
    ! [Z,S1,A1,S2,A2] :
      ( ( iext(uri_rdf_first,S1,A1)
        & iext(uri_rdf_rest,S1,S2)
        & iext(uri_rdf_first,S2,A2)
        & iext(uri_rdf_rest,S2,uri_rdf_nil) )
     => ( iext(uri_owl_oneOf,Z,S1)
      <=> ( ic(Z)
          & ! [X] :
              ( icext(Z,X)
            <=> ( X = A1
                | X = A2 ) ) ) ) ) ).

%----owl:oneOf / individuals / ternary
fof(owl_enum_class_003,axiom,
    ! [Z,S1,A1,S2,A2,S3,A3] :
      ( ( iext(uri_rdf_first,S1,A1)
        & iext(uri_rdf_rest,S1,S2)
        & iext(uri_rdf_first,S2,A2)
        & iext(uri_rdf_rest,S2,S3)
        & iext(uri_rdf_first,S3,A3)
        & iext(uri_rdf_rest,S3,uri_rdf_nil) )
     => ( iext(uri_owl_oneOf,Z,S1)
      <=> ( ic(Z)
          & ! [X] :
              ( icext(Z,X)
            <=> ( X = A1
                | X = A2
                | X = A3 ) ) ) ) ) ).

%----owl:oneOf / data values/ singleton
fof(owl_enum_dtype_001,axiom,
    ! [Z,S1,V1] :
      ( ( iext(uri_rdf_first,S1,V1)
        & iext(uri_rdf_rest,S1,uri_rdf_nil)
        & lv(V1)
        & iext(uri_owl_oneOf,Z,S1) )
     => idc(Z) ) ).

%----owl:oneOf / data values / dual
fof(owl_enum_dtype_002,axiom,
    ! [Z,S1,V1,S2,V2] :
      ( ( iext(uri_rdf_first,S1,V1)
        & iext(uri_rdf_rest,S1,S2)
        & iext(uri_rdf_first,S2,V2)
        & iext(uri_rdf_rest,S2,uri_rdf_nil)
        & lv(V1)
        & lv(V2)
        & iext(uri_owl_oneOf,Z,S1) )
     => idc(Z) ) ).

%----owl:oneOf / data values / ternary
fof(owl_enum_dtype_003,axiom,
    ! [Z,S1,V1,S2,V2,S3,V3] :
      ( ( iext(uri_rdf_first,S1,V1)
        & iext(uri_rdf_rest,S1,S2)
        & iext(uri_rdf_first,S2,V2)
        & iext(uri_rdf_rest,S2,S3)
        & iext(uri_rdf_first,S3,V3)
        & iext(uri_rdf_rest,S3,uri_rdf_nil)
        & lv(V1)
        & lv(V2)
        & lv(V3)
        & iext(uri_owl_oneOf,Z,S1) )
     => idc(Z) ) ).

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

%----Exact Cardinality #0
fof(owl_restrict_exactcard_000,axiom,
    ! [Z,P] :
      ( ( iext(uri_owl_cardinality,Z,literal_typed(dat_str_0,uri_xsd_nonNegativeInteger))
        & iext(uri_owl_onProperty,Z,P) )
     => ! [X] :
          ( icext(Z,X)
        <=> ~ ? [Y] : iext(P,X,Y) ) ) ).

%----Exact Cardinality #1
fof(owl_restrict_exactcard_001,axiom,
    ! [Z,P] :
      ( ( iext(uri_owl_cardinality,Z,literal_typed(dat_str_1,uri_xsd_nonNegativeInteger))
        & iext(uri_owl_onProperty,Z,P) )
     => ! [X] :
          ( icext(Z,X)
        <=> ( ? [Y] : iext(P,X,Y)
            & ! [Y1,Y2] :
                ( ( iext(P,X,Y1)
                  & iext(P,X,Y2) )
               => Y2 = Y1 ) ) ) ) ).

%----Exact Cardinality #2
fof(owl_restrict_exactcard_002,axiom,
    ! [Z,P] :
      ( ( iext(uri_owl_cardinality,Z,literal_typed(dat_str_2,uri_xsd_nonNegativeInteger))
        & iext(uri_owl_onProperty,Z,P) )
     => ! [X] :
          ( icext(Z,X)
        <=> ( ? [Y1,Y2] :
                ( iext(P,X,Y1)
                & iext(P,X,Y2)
                & Y1 != Y2 )
            & ! [Y1,Y2,Y3] :
                ( ( iext(P,X,Y1)
                  & iext(P,X,Y2)
                  & iext(P,X,Y3) )
               => ( Y3 = Y1
                  | Y3 = Y2 ) ) ) ) ) ).

%----Exact Cardinality #3
fof(owl_restrict_exactcard_003,axiom,
    ! [Z,P] :
      ( ( iext(uri_owl_cardinality,Z,literal_typed(dat_str_3,uri_xsd_nonNegativeInteger))
        & iext(uri_owl_onProperty,Z,P) )
     => ! [X] :
          ( icext(Z,X)
        <=> ( ? [Y1,Y2,Y3] :
                ( iext(P,X,Y1)
                & iext(P,X,Y2)
                & iext(P,X,Y3)
                & Y1 != Y2
                & Y1 != Y3
                & Y2 != Y3 )
            & ! [Y1,Y2,Y3,Y4] :
                ( ( iext(P,X,Y1)
                  & iext(P,X,Y2)
                  & iext(P,X,Y3)
                  & iext(P,X,Y4) )
               => ( Y4 = Y1
                  | Y4 = Y2
                  | Y4 = Y3 ) ) ) ) ) ).

%----Exact Data QCR #0
fof(owl_restrict_exactqcr_data_000,axiom,
    ! [Z,P,D] :
      ( ( iext(uri_owl_qualifiedCardinality,Z,literal_typed(dat_str_0,uri_xsd_nonNegativeInteger))
        & iext(uri_owl_onProperty,Z,P)
        & iext(uri_owl_onDataRange,Z,D) )
     => ( iodp(P)
        & ! [X] :
            ( icext(Z,X)
          <=> ~ ? [Y] :
                  ( lv(Y)
                  & iext(P,X,Y)
                  & icext(D,Y) ) ) ) ) ).

%----Exact Data QCR #1
fof(owl_restrict_exactqcr_data_001,axiom,
    ! [Z,P,D] :
      ( ( iext(uri_owl_qualifiedCardinality,Z,literal_typed(dat_str_1,uri_xsd_nonNegativeInteger))
        & iext(uri_owl_onProperty,Z,P)
        & iext(uri_owl_onDataRange,Z,D) )
     => ( iodp(P)
        & ! [X] :
            ( icext(Z,X)
          <=> ( ? [Y] :
                  ( lv(Y)
                  & iext(P,X,Y)
                  & icext(D,Y) )
              & ! [Y1,Y2] :
                  ( ( lv(Y1)
                    & iext(P,X,Y1)
                    & icext(D,Y1)
                    & lv(Y2)
                    & iext(P,X,Y2)
                    & icext(D,Y2) )
                 => Y2 = Y1 ) ) ) ) ) ).

%----Exact Data QCR #2
fof(owl_restrict_exactqcr_data_002,axiom,
    ! [Z,P,D] :
      ( ( iext(uri_owl_qualifiedCardinality,Z,literal_typed(dat_str_2,uri_xsd_nonNegativeInteger))
        & iext(uri_owl_onProperty,Z,P)
        & iext(uri_owl_onDataRange,Z,D) )
     => ( iodp(P)
        & ! [X] :
            ( icext(Z,X)
          <=> ( ? [Y1,Y2] :
                  ( lv(Y1)
                  & iext(P,X,Y1)
                  & icext(D,Y1)
                  & lv(Y2)
                  & iext(P,X,Y2)
                  & icext(D,Y2)
                  & Y1 != Y2 )
              & ! [Y1,Y2,Y3] :
                  ( ( lv(Y1)
                    & iext(P,X,Y1)
                    & icext(D,Y1)
                    & lv(Y2)
                    & iext(P,X,Y2)
                    & icext(D,Y2)
                    & lv(Y3)
                    & iext(P,X,Y3)
                    & icext(D,Y3) )
                 => ( Y3 = Y1
                    | Y3 = Y2 ) ) ) ) ) ) ).

%----Exact Data QCR #3
fof(owl_restrict_exactqcr_data_003,axiom,
    ! [Z,P,D] :
      ( ( iext(uri_owl_qualifiedCardinality,Z,literal_typed(dat_str_3,uri_xsd_nonNegativeInteger))
        & iext(uri_owl_onProperty,Z,P)
        & iext(uri_owl_onDataRange,Z,D) )
     => ( iodp(P)
        & ! [X] :
            ( icext(Z,X)
          <=> ( ? [Y1,Y2,Y3] :
                  ( lv(Y1)
                  & iext(P,X,Y1)
                  & icext(D,Y1)
                  & lv(Y2)
                  & iext(P,X,Y2)
                  & icext(D,Y2)
                  & lv(Y3)
                  & iext(P,X,Y3)
                  & icext(D,Y3)
                  & Y1 != Y2
                  & Y1 != Y3
                  & Y2 != Y3 )
              & ! [Y1,Y2,Y3,Y4] :
                  ( ( lv(Y1)
                    & iext(P,X,Y1)
                    & icext(D,Y1)
                    & lv(Y2)
                    & iext(P,X,Y2)
                    & icext(D,Y2)
                    & lv(Y3)
                    & iext(P,X,Y3)
                    & icext(D,Y3)
                    & lv(Y4)
                    & iext(P,X,Y4)
                    & icext(D,Y4) )
                 => ( Y4 = Y1
                    | Y4 = Y2
                    | Y4 = Y3 ) ) ) ) ) ) ).

%----Exact Object QCR #0
fof(owl_restrict_exactqcr_object_000,axiom,
    ! [Z,P,C] :
      ( ( iext(uri_owl_qualifiedCardinality,Z,literal_typed(dat_str_0,uri_xsd_nonNegativeInteger))
        & iext(uri_owl_onProperty,Z,P)
        & iext(uri_owl_onClass,Z,C) )
     => ! [X] :
          ( icext(Z,X)
        <=> ~ ? [Y] :
                ( iext(P,X,Y)
                & icext(C,Y) ) ) ) ).

%----Exact Object QCR #1
fof(owl_restrict_exactqcr_object_001,axiom,
    ! [Z,P,C] :
      ( ( iext(uri_owl_qualifiedCardinality,Z,literal_typed(dat_str_1,uri_xsd_nonNegativeInteger))
        & iext(uri_owl_onProperty,Z,P)
        & iext(uri_owl_onClass,Z,C) )
     => ! [X] :
          ( icext(Z,X)
        <=> ( ? [Y] :
                ( iext(P,X,Y)
                & icext(C,Y) )
            & ! [Y1,Y2] :
                ( ( iext(P,X,Y1)
                  & icext(C,Y1)
                  & iext(P,X,Y2)
                  & icext(C,Y2) )
               => Y2 = Y1 ) ) ) ) ).

%----Exact Object QCR #2
fof(owl_restrict_exactqcr_object_002,axiom,
    ! [Z,P,C] :
      ( ( iext(uri_owl_qualifiedCardinality,Z,literal_typed(dat_str_2,uri_xsd_nonNegativeInteger))
        & iext(uri_owl_onProperty,Z,P)
        & iext(uri_owl_onClass,Z,C) )
     => ! [X] :
          ( icext(Z,X)
        <=> ( ? [Y1,Y2] :
                ( iext(P,X,Y1)
                & icext(C,Y1)
                & iext(P,X,Y2)
                & icext(C,Y2)
                & Y1 != Y2 )
            & ! [Y1,Y2,Y3] :
                ( ( iext(P,X,Y1)
                  & icext(C,Y1)
                  & iext(P,X,Y2)
                  & icext(C,Y2)
                  & iext(P,X,Y3)
                  & icext(C,Y3) )
               => ( Y3 = Y1
                  | Y3 = Y2 ) ) ) ) ) ).

%----Exact Object QCR #3
fof(owl_restrict_exactqcr_object_003,axiom,
    ! [Z,P,C] :
      ( ( iext(uri_owl_qualifiedCardinality,Z,literal_typed(dat_str_3,uri_xsd_nonNegativeInteger))
        & iext(uri_owl_onProperty,Z,P)
        & iext(uri_owl_onClass,Z,C) )
     => ! [X] :
          ( icext(Z,X)
        <=> ( ? [Y1,Y2,Y3] :
                ( iext(P,X,Y1)
                & icext(C,Y1)
                & iext(P,X,Y2)
                & icext(C,Y2)
                & iext(P,X,Y3)
                & icext(C,Y3)
                & Y1 != Y2
                & Y1 != Y3
                & Y2 != Y3 )
            & ! [Y1,Y2,Y3,Y4] :
                ( ( iext(P,X,Y1)
                  & icext(C,Y1)
                  & iext(P,X,Y2)
                  & icext(C,Y2)
                  & iext(P,X,Y3)
                  & icext(C,Y3)
                  & iext(P,X,Y4)
                  & icext(C,Y4) )
               => ( Y4 = Y1
                  | Y4 = Y2
                  | Y4 = Y3 ) ) ) ) ) ).

%----owl:hasSelf
fof(owl_restrict_hasself,axiom,
    ! [Z,P,V] :
      ( ( iext(uri_owl_hasSelf,Z,V)
        & iext(uri_owl_onProperty,Z,P) )
     => ! [X] :
          ( icext(Z,X)
        <=> iext(P,X,X) ) ) ).

%----owl:hasValue
fof(owl_restrict_hasvalue,axiom,
    ! [Z,P,A] :
      ( ( iext(uri_owl_hasValue,Z,A)
        & iext(uri_owl_onProperty,Z,P) )
     => ! [X] :
          ( icext(Z,X)
        <=> iext(P,X,A) ) ) ).

%----Max Cardinality #0
fof(owl_restrict_maxcard_000,axiom,
    ! [Z,P] :
      ( ( iext(uri_owl_maxCardinality,Z,literal_typed(dat_str_0,uri_xsd_nonNegativeInteger))
        & iext(uri_owl_onProperty,Z,P) )
     => ! [X] :
          ( icext(Z,X)
        <=> ~ ? [Y] : iext(P,X,Y) ) ) ).

%----Max Cardinality #1
fof(owl_restrict_maxcard_001,axiom,
    ! [Z,P] :
      ( ( iext(uri_owl_maxCardinality,Z,literal_typed(dat_str_1,uri_xsd_nonNegativeInteger))
        & iext(uri_owl_onProperty,Z,P) )
     => ! [X] :
          ( icext(Z,X)
        <=> ! [Y1,Y2] :
              ( ( iext(P,X,Y1)
                & iext(P,X,Y2) )
             => Y2 = Y1 ) ) ) ).

%----Max Cardinality #2
fof(owl_restrict_maxcard_002,axiom,
    ! [Z,P] :
      ( ( iext(uri_owl_maxCardinality,Z,literal_typed(dat_str_2,uri_xsd_nonNegativeInteger))
        & iext(uri_owl_onProperty,Z,P) )
     => ! [X] :
          ( icext(Z,X)
        <=> ! [Y1,Y2,Y3] :
              ( ( iext(P,X,Y1)
                & iext(P,X,Y2)
                & iext(P,X,Y3) )
             => ( Y3 = Y1
                | Y3 = Y2 ) ) ) ) ).

%----Max Cardinality #3
fof(owl_restrict_maxcard_003,axiom,
    ! [Z,P] :
      ( ( iext(uri_owl_maxCardinality,Z,literal_typed(dat_str_3,uri_xsd_nonNegativeInteger))
        & iext(uri_owl_onProperty,Z,P) )
     => ! [X] :
          ( icext(Z,X)
        <=> ! [Y1,Y2,Y3,Y4] :
              ( ( iext(P,X,Y1)
                & iext(P,X,Y2)
                & iext(P,X,Y3)
                & iext(P,X,Y4) )
             => ( Y4 = Y1
                | Y4 = Y2
                | Y4 = Y3 ) ) ) ) ).

%----Max Data QCR #0
fof(owl_restrict_maxqcr_data_000,axiom,
    ! [Z,P,D] :
      ( ( iext(uri_owl_maxQualifiedCardinality,Z,literal_typed(dat_str_0,uri_xsd_nonNegativeInteger))
        & iext(uri_owl_onProperty,Z,P)
        & iext(uri_owl_onDataRange,Z,D) )
     => ( iodp(P)
        & ! [X] :
            ( icext(Z,X)
          <=> ~ ? [Y] :
                  ( lv(Y)
                  & iext(P,X,Y)
                  & icext(D,Y) ) ) ) ) ).

%----Max Data QCR #1
fof(owl_restrict_maxqcr_data_001,axiom,
    ! [Z,P,D] :
      ( ( iext(uri_owl_maxQualifiedCardinality,Z,literal_typed(dat_str_1,uri_xsd_nonNegativeInteger))
        & iext(uri_owl_onProperty,Z,P)
        & iext(uri_owl_onDataRange,Z,D) )
     => ( iodp(P)
        & ! [X] :
            ( icext(Z,X)
          <=> ! [Y1,Y2] :
                ( ( lv(Y1)
                  & iext(P,X,Y1)
                  & icext(D,Y1)
                  & lv(Y2)
                  & iext(P,X,Y2)
                  & icext(D,Y2) )
               => Y2 = Y1 ) ) ) ) ).

%----Max Data QCR #2
fof(owl_restrict_maxqcr_data_002,axiom,
    ! [Z,P,D] :
      ( ( iext(uri_owl_maxQualifiedCardinality,Z,literal_typed(dat_str_2,uri_xsd_nonNegativeInteger))
        & iext(uri_owl_onProperty,Z,P)
        & iext(uri_owl_onDataRange,Z,D) )
     => ( iodp(P)
        & ! [X] :
            ( icext(Z,X)
          <=> ! [Y1,Y2,Y3] :
                ( ( lv(Y1)
                  & iext(P,X,Y1)
                  & icext(D,Y1)
                  & lv(Y2)
                  & iext(P,X,Y2)
                  & icext(D,Y2)
                  & lv(Y3)
                  & iext(P,X,Y3)
                  & icext(D,Y3) )
               => ( Y3 = Y1
                  | Y3 = Y2 ) ) ) ) ) ).

%----Max Data QCR #2
fof(owl_restrict_maxqcr_data_003,axiom,
    ! [Z,P,D] :
      ( ( iext(uri_owl_maxQualifiedCardinality,Z,literal_typed(dat_str_3,uri_xsd_nonNegativeInteger))
        & iext(uri_owl_onProperty,Z,P)
        & iext(uri_owl_onDataRange,Z,D) )
     => ( iodp(P)
        & ! [X] :
            ( icext(Z,X)
          <=> ! [Y1,Y2,Y3,Y4] :
                ( ( lv(Y1)
                  & iext(P,X,Y1)
                  & icext(D,Y1)
                  & lv(Y2)
                  & iext(P,X,Y2)
                  & icext(D,Y2)
                  & lv(Y3)
                  & iext(P,X,Y3)
                  & icext(D,Y3)
                  & lv(Y4)
                  & iext(P,X,Y4)
                  & icext(D,Y4) )
               => ( Y4 = Y1
                  | Y4 = Y2
                  | Y4 = Y3 ) ) ) ) ) ).

%----Max Object QCR #0
fof(owl_restrict_maxqcr_object_000,axiom,
    ! [Z,P,C] :
      ( ( iext(uri_owl_maxQualifiedCardinality,Z,literal_typed(dat_str_0,uri_xsd_nonNegativeInteger))
        & iext(uri_owl_onProperty,Z,P)
        & iext(uri_owl_onClass,Z,C) )
     => ! [X] :
          ( icext(Z,X)
        <=> ~ ? [Y] :
                ( iext(P,X,Y)
                & icext(C,Y) ) ) ) ).

%----Max Object QCR #1
fof(owl_restrict_maxqcr_object_001,axiom,
    ! [Z,P,C] :
      ( ( iext(uri_owl_maxQualifiedCardinality,Z,literal_typed(dat_str_1,uri_xsd_nonNegativeInteger))
        & iext(uri_owl_onProperty,Z,P)
        & iext(uri_owl_onClass,Z,C) )
     => ! [X] :
          ( icext(Z,X)
        <=> ! [Y1,Y2] :
              ( ( iext(P,X,Y1)
                & icext(C,Y1)
                & iext(P,X,Y2)
                & icext(C,Y2) )
             => Y2 = Y1 ) ) ) ).

%----Max Object QCR #2
fof(owl_restrict_maxqcr_object_002,axiom,
    ! [Z,P,C] :
      ( ( iext(uri_owl_maxQualifiedCardinality,Z,literal_typed(dat_str_2,uri_xsd_nonNegativeInteger))
        & iext(uri_owl_onProperty,Z,P)
        & iext(uri_owl_onClass,Z,C) )
     => ! [X] :
          ( icext(Z,X)
        <=> ! [Y1,Y2,Y3] :
              ( ( iext(P,X,Y1)
                & icext(C,Y1)
                & iext(P,X,Y2)
                & icext(C,Y2)
                & iext(P,X,Y3)
                & icext(C,Y3) )
             => ( Y3 = Y1
                | Y3 = Y2 ) ) ) ) ).

%----Max Object QCR #3
fof(owl_restrict_maxqcr_object_003,axiom,
    ! [Z,P,C] :
      ( ( iext(uri_owl_maxQualifiedCardinality,Z,literal_typed(dat_str_3,uri_xsd_nonNegativeInteger))
        & iext(uri_owl_onProperty,Z,P)
        & iext(uri_owl_onClass,Z,C) )
     => ! [X] :
          ( icext(Z,X)
        <=> ! [Y1,Y2,Y3,Y4] :
              ( ( iext(P,X,Y1)
                & icext(C,Y1)
                & iext(P,X,Y2)
                & icext(C,Y2)
                & iext(P,X,Y3)
                & icext(C,Y3)
                & iext(P,X,Y4)
                & icext(C,Y4) )
             => ( Y4 = Y1
                | Y4 = Y2
                | Y4 = Y3 ) ) ) ) ).

%----Min Cardinality #0
fof(owl_restrict_mincard_000,axiom,
    ! [Z,P] :
      ( ( iext(uri_owl_minCardinality,Z,literal_typed(dat_str_0,uri_xsd_nonNegativeInteger))
        & iext(uri_owl_onProperty,Z,P) )
     => ! [X] : icext(Z,X) ) ).

%----Min Cardinality #1
fof(owl_restrict_mincard_001,axiom,
    ! [Z,P] :
      ( ( iext(uri_owl_minCardinality,Z,literal_typed(dat_str_1,uri_xsd_nonNegativeInteger))
        & iext(uri_owl_onProperty,Z,P) )
     => ! [X] :
          ( icext(Z,X)
        <=> ? [Y] : iext(P,X,Y) ) ) ).

%----Min Cardinality #2
fof(owl_restrict_mincard_002,axiom,
    ! [Z,P] :
      ( ( iext(uri_owl_minCardinality,Z,literal_typed(dat_str_2,uri_xsd_nonNegativeInteger))
        & iext(uri_owl_onProperty,Z,P) )
     => ! [X] :
          ( icext(Z,X)
        <=> ? [Y1,Y2] :
              ( iext(P,X,Y1)
              & iext(P,X,Y2)
              & Y1 != Y2 ) ) ) ).

%----Min Cardinality #3
fof(owl_restrict_mincard_003,axiom,
    ! [Z,P] :
      ( ( iext(uri_owl_minCardinality,Z,literal_typed(dat_str_3,uri_xsd_nonNegativeInteger))
        & iext(uri_owl_onProperty,Z,P) )
     => ! [X] :
          ( icext(Z,X)
        <=> ? [Y1,Y2,Y3] :
              ( iext(P,X,Y1)
              & iext(P,X,Y2)
              & iext(P,X,Y3)
              & Y1 != Y2
              & Y1 != Y3
              & Y2 != Y3 ) ) ) ).

%----Min Data QCR #0
fof(owl_restrict_minqcr_data_000,axiom,
    ! [Z,P,D] :
      ( ( iext(uri_owl_minQualifiedCardinality,Z,literal_typed(dat_str_0,uri_xsd_nonNegativeInteger))
        & iext(uri_owl_onProperty,Z,P)
        & iext(uri_owl_onDataRange,Z,D) )
     => ( iodp(P)
        & ! [X] : icext(Z,X) ) ) ).

%----Min Data QCR #1
fof(owl_restrict_minqcr_data_001,axiom,
    ! [Z,P,D] :
      ( ( iext(uri_owl_minQualifiedCardinality,Z,literal_typed(dat_str_1,uri_xsd_nonNegativeInteger))
        & iext(uri_owl_onProperty,Z,P)
        & iext(uri_owl_onDataRange,Z,D) )
     => ( iodp(P)
        & ! [X] :
            ( icext(Z,X)
          <=> ? [Y] :
                ( lv(Y)
                & iext(P,X,Y)
                & icext(D,Y) ) ) ) ) ).

%----Min Data QCR #2
fof(owl_restrict_minqcr_data_002,axiom,
    ! [Z,P,D] :
      ( ( iext(uri_owl_minQualifiedCardinality,Z,literal_typed(dat_str_2,uri_xsd_nonNegativeInteger))
        & iext(uri_owl_onProperty,Z,P)
        & iext(uri_owl_onDataRange,Z,D) )
     => ( iodp(P)
        & ! [X] :
            ( icext(Z,X)
          <=> ? [Y1,Y2] :
                ( lv(Y1)
                & iext(P,X,Y1)
                & icext(D,Y1)
                & lv(Y2)
                & iext(P,X,Y2)
                & icext(D,Y2)
                & Y1 != Y2 ) ) ) ) ).

%----Min Data QCR #3
fof(owl_restrict_minqcr_data_003,axiom,
    ! [Z,P,D] :
      ( ( iext(uri_owl_minQualifiedCardinality,Z,literal_typed(dat_str_3,uri_xsd_nonNegativeInteger))
        & iext(uri_owl_onProperty,Z,P)
        & iext(uri_owl_onDataRange,Z,D) )
     => ( iodp(P)
        & ! [X] :
            ( icext(Z,X)
          <=> ? [Y1,Y2,Y3] :
                ( lv(Y1)
                & iext(P,X,Y1)
                & icext(D,Y1)
                & lv(Y2)
                & iext(P,X,Y2)
                & icext(D,Y2)
                & lv(Y3)
                & iext(P,X,Y3)
                & icext(D,Y3)
                & Y1 != Y2
                & Y1 != Y3
                & Y2 != Y3 ) ) ) ) ).

%----Min Object QCR #0
fof(owl_restrict_minqcr_object_000,axiom,
    ! [Z,P,C] :
      ( ( iext(uri_owl_minQualifiedCardinality,Z,literal_typed(dat_str_0,uri_xsd_nonNegativeInteger))
        & iext(uri_owl_onProperty,Z,P)
        & iext(uri_owl_onClass,Z,C) )
     => ! [X] : icext(Z,X) ) ).

%----Min Object QCR #1
fof(owl_restrict_minqcr_object_001,axiom,
    ! [Z,P,C] :
      ( ( iext(uri_owl_minQualifiedCardinality,Z,literal_typed(dat_str_1,uri_xsd_nonNegativeInteger))
        & iext(uri_owl_onProperty,Z,P)
        & iext(uri_owl_onClass,Z,C) )
     => ! [X] :
          ( icext(Z,X)
        <=> ? [Y] :
              ( iext(P,X,Y)
              & icext(C,Y) ) ) ) ).

fof(owl_restrict_minqcr_object_002,axiom,
    ! [Z,P,C] :
      ( ( iext(uri_owl_minQualifiedCardinality,Z,literal_typed(dat_str_2,uri_xsd_nonNegativeInteger))
        & iext(uri_owl_onProperty,Z,P)
        & iext(uri_owl_onClass,Z,C) )
     => ! [X] :
          ( icext(Z,X)
        <=> ? [Y1,Y2] :
              ( iext(P,X,Y1)
              & icext(C,Y1)
              & iext(P,X,Y2)
              & icext(C,Y2)
              & Y1 != Y2 ) ) ) ).

fof(owl_restrict_minqcr_object_003,axiom,
    ! [Z,P,C] :
      ( ( iext(uri_owl_minQualifiedCardinality,Z,literal_typed(dat_str_3,uri_xsd_nonNegativeInteger))
        & iext(uri_owl_onProperty,Z,P)
        & iext(uri_owl_onClass,Z,C) )
     => ! [X] :
          ( icext(Z,X)
        <=> ? [Y1,Y2,Y3] :
              ( iext(P,X,Y1)
              & icext(C,Y1)
              & iext(P,X,Y2)
              & icext(C,Y2)
              & iext(P,X,Y3)
              & icext(C,Y3)
              & Y1 != Y2
              & Y1 != Y3
              & Y2 != Y3 ) ) ) ).

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

%----owl:differentFrom
fof(owl_eqdis_differentfrom,axiom,
    ! [X,Y] :
      ( iext(uri_owl_differentFrom,X,Y)
    <=> X != Y ) ).

%----owl:disjointUnionOf
%----nullary
fof(owl_eqdis_disjointunionof_000,axiom,
    ! [C] :
      ( iext(uri_owl_disjointUnionOf,C,uri_rdf_nil)
    <=> ( ic(C)
        & ! [X] : ~ icext(C,X) ) ) ).

%----owl:disjointUnionOf
%----unary
fof(owl_eqdis_disjointunionof_001,axiom,
    ! [C,S1,C1] :
      ( ( iext(uri_rdf_first,S1,C1)
        & iext(uri_rdf_rest,S1,uri_rdf_nil) )
     => ( iext(uri_owl_disjointUnionOf,C,S1)
      <=> ( ic(C)
          & ic(C1)
          & ! [X] :
              ( icext(C,X)
            <=> icext(C1,X) ) ) ) ) ).

%----owl:disjointUnionOf
%----binary
fof(owl_eqdis_disjointunionof_002,axiom,
    ! [C,S1,C1,S2,C2] :
      ( ( iext(uri_rdf_first,S1,C1)
        & iext(uri_rdf_rest,S1,S2)
        & iext(uri_rdf_first,S2,C2)
        & iext(uri_rdf_rest,S2,uri_rdf_nil) )
     => ( iext(uri_owl_disjointUnionOf,C,S1)
      <=> ( ic(C)
          & ic(C1)
          & ic(C2)
          & ! [X] :
              ( icext(C,X)
            <=> ( ( icext(C1,X)
                  | icext(C2,X) )
                & ~ ( icext(C1,X)
                    & icext(C2,X) ) ) ) ) ) ) ).

%----owl:disjointUnionOf
%----ternary
fof(owl_eqdis_disjointunionof_003,axiom,
    ! [C,S1,C1,S2,C2,S3,C3] :
      ( ( iext(uri_rdf_first,S1,C1)
        & iext(uri_rdf_rest,S1,S2)
        & iext(uri_rdf_first,S2,C2)
        & iext(uri_rdf_rest,S2,S3)
        & iext(uri_rdf_first,S3,C3)
        & iext(uri_rdf_rest,S3,uri_rdf_nil) )
     => ( iext(uri_owl_disjointUnionOf,C,S1)
      <=> ( ic(C)
          & ic(C1)
          & ic(C2)
          & ic(C3)
          & ! [X] :
              ( icext(C,X)
            <=> ( ( icext(C1,X)
                  | icext(C2,X)
                  | icext(C3,X) )
                & ~ ( icext(C1,X)
                    & icext(C2,X) )
                & ~ ( icext(C1,X)
                    & icext(C3,X) )
                & ~ ( icext(C2,X)
                    & icext(C3,X) ) ) ) ) ) ) ).

%----owl:disjointWith
fof(owl_eqdis_disjointwith,axiom,
    ! [C1,C2] :
      ( iext(uri_owl_disjointWith,C1,C2)
    <=> ( ic(C1)
        & ic(C2)
        & ! [X] :
            ~ ( icext(C1,X)
              & icext(C2,X) ) ) ) ).

%----owl:equivalentClass
fof(owl_eqdis_equivalentclass,axiom,
    ! [C1,C2] :
      ( iext(uri_owl_equivalentClass,C1,C2)
    <=> ( ic(C1)
        & ic(C2)
        & ! [X] :
            ( icext(C1,X)
          <=> icext(C2,X) ) ) ) ).

%----owl:equivalentProperty
fof(owl_eqdis_equivalentproperty,axiom,
    ! [P1,P2] :
      ( iext(uri_owl_equivalentProperty,P1,P2)
    <=> ( ip(P1)
        & ip(P2)
        & ! [X,Y] :
            ( iext(P1,X,Y)
          <=> iext(P2,X,Y) ) ) ) ).

%----owl:propertyDisjointWith
fof(owl_eqdis_propertydisjointwith,axiom,
    ! [P1,P2] :
      ( iext(uri_owl_propertyDisjointWith,P1,P2)
    <=> ( ip(P1)
        & ip(P2)
        & ! [X,Y] :
            ~ ( iext(P1,X,Y)
              & iext(P2,X,Y) ) ) ) ).

%----owl:sameAs
fof(owl_eqdis_sameas,axiom,
    ! [X,Y] :
      ( iext(uri_owl_sameAs,X,Y)
    <=> X = Y ) ).

%----owl:AllDifferent / owl:distinctMembers / fi-direction
%----nullary
fof(owl_ndis_alldifferent_distinctmembers_fi_000,axiom,
    ? [Z] :
      ( icext(uri_owl_AllDifferent,Z)
      & iext(uri_owl_distinctMembers,Z,uri_rdf_nil) ) ).

%----owl:AllDifferent / owl:distinctMembers / fi-direction
%----unary
fof(owl_ndis_alldifferent_distinctmembers_fi_001,axiom,
    ! [S1,A1] :
      ( ( iext(uri_rdf_first,S1,A1)
        & iext(uri_rdf_rest,S1,uri_rdf_nil) )
     => ? [Z] :
          ( icext(uri_owl_AllDifferent,Z)
          & iext(uri_owl_distinctMembers,Z,S1) ) ) ).

%----owl:AllDifferent / owl:distinctMembers / fi-direction
%----binary
fof(owl_ndis_alldifferent_distinctmembers_fi_002,axiom,
    ! [S1,A1,S2,A2] :
      ( ( iext(uri_rdf_first,S1,A1)
        & iext(uri_rdf_rest,S1,S2)
        & iext(uri_rdf_first,S2,A2)
        & iext(uri_rdf_rest,S2,uri_rdf_nil)
        & A1 != A2 )
     => ? [Z] :
          ( icext(uri_owl_AllDifferent,Z)
          & iext(uri_owl_distinctMembers,Z,S1) ) ) ).

%----owl:AllDifferent / owl:distinctMembers / fi-direction
%----ternary
fof(owl_ndis_alldifferent_distinctmembers_fi_003,axiom,
    ! [S1,A1,S2,A2,S3,A3] :
      ( ( iext(uri_rdf_first,S1,A1)
        & iext(uri_rdf_rest,S1,S2)
        & iext(uri_rdf_first,S2,A2)
        & iext(uri_rdf_rest,S2,S3)
        & iext(uri_rdf_first,S3,A3)
        & iext(uri_rdf_rest,S3,uri_rdf_nil)
        & A1 != A2
        & A1 != A3
        & A2 != A3 )
     => ? [Z] :
          ( icext(uri_owl_AllDifferent,Z)
          & iext(uri_owl_distinctMembers,Z,S1) ) ) ).

%----no semantic effect
fof(owl_ndis_alldifferent_distinctmembers_if_000,axiom,
    ( tautology
    | ~ tautology ) ).

%----no semantic effect
fof(owl_ndis_alldifferent_distinctmembers_if_001,axiom,
    ( tautology
    | ~ tautology ) ).

%----owl:AllDifferent / owl:distinctMembers / if-direction
%----binary
fof(owl_ndis_alldifferent_distinctmembers_if_002,axiom,
    ! [Z,S1,A1,S2,A2] :
      ( ( iext(uri_rdf_first,S1,A1)
        & iext(uri_rdf_rest,S1,S2)
        & iext(uri_rdf_first,S2,A2)
        & iext(uri_rdf_rest,S2,uri_rdf_nil)
        & icext(uri_owl_AllDifferent,Z)
        & iext(uri_owl_distinctMembers,Z,S1) )
     => A1 != A2 ) ).

%----owl:AllDifferent / owl:distinctMembers / if-direction
%----ternary
fof(owl_ndis_alldifferent_distinctmembers_if_003,axiom,
    ! [Z,S1,A1,S2,A2,S3,A3] :
      ( ( iext(uri_rdf_first,S1,A1)
        & iext(uri_rdf_rest,S1,S2)
        & iext(uri_rdf_first,S2,A2)
        & iext(uri_rdf_rest,S2,S3)
        & iext(uri_rdf_first,S3,A3)
        & iext(uri_rdf_rest,S3,uri_rdf_nil)
        & icext(uri_owl_AllDifferent,Z)
        & iext(uri_owl_distinctMembers,Z,S1) )
     => ( A1 != A2
        & A1 != A3
        & A2 != A3 ) ) ).

%----owl:AllDifferent / owl:members / fi-direction
%----nullary
fof(owl_ndis_alldifferent_members_fi_000,axiom,
    ? [Z] :
      ( icext(uri_owl_AllDifferent,Z)
      & iext(uri_owl_members,Z,uri_rdf_nil) ) ).

%----owl:AllDifferent / owl:members / fi-direction
%----binary
fof(owl_ndis_alldifferent_members_fi_001,axiom,
    ! [S1,A1] :
      ( ( iext(uri_rdf_first,S1,A1)
        & iext(uri_rdf_rest,S1,uri_rdf_nil) )
     => ? [Z] :
          ( icext(uri_owl_AllDifferent,Z)
          & iext(uri_owl_members,Z,S1) ) ) ).

%----owl:AllDifferent / owl:members / fi-direction
%----binary
fof(owl_ndis_alldifferent_members_fi_002,axiom,
    ! [S1,A1,S2,A2] :
      ( ( iext(uri_rdf_first,S1,A1)
        & iext(uri_rdf_rest,S1,S2)
        & iext(uri_rdf_first,S2,A2)
        & iext(uri_rdf_rest,S2,uri_rdf_nil)
        & A1 != A2 )
     => ? [Z] :
          ( icext(uri_owl_AllDifferent,Z)
          & iext(uri_owl_members,Z,S1) ) ) ).

%----owl:AllDifferent / owl:members / fi-direction
%----ternary
fof(owl_ndis_alldifferent_members_fi_003,axiom,
    ! [S1,A1,S2,A2,S3,A3] :
      ( ( iext(uri_rdf_first,S1,A1)
        & iext(uri_rdf_rest,S1,S2)
        & iext(uri_rdf_first,S2,A2)
        & iext(uri_rdf_rest,S2,S3)
        & iext(uri_rdf_first,S3,A3)
        & iext(uri_rdf_rest,S3,uri_rdf_nil)
        & A1 != A2
        & A1 != A3
        & A2 != A3 )
     => ? [Z] :
          ( icext(uri_owl_AllDifferent,Z)
          & iext(uri_owl_members,Z,S1) ) ) ).

%----no semantic effect
fof(owl_ndis_alldifferent_members_if_000,axiom,
    ( tautology
    | ~ tautology ) ).

%----no semantic effect
fof(owl_ndis_alldifferent_members_if_001,axiom,
    ( tautology
    | ~ tautology ) ).

%----owl:AllDifferent / owl:members / if-direction
%----binary
fof(owl_ndis_alldifferent_members_if_002,axiom,
    ! [Z,S1,A1,S2,A2] :
      ( ( iext(uri_rdf_first,S1,A1)
        & iext(uri_rdf_rest,S1,S2)
        & iext(uri_rdf_first,S2,A2)
        & iext(uri_rdf_rest,S2,uri_rdf_nil)
        & icext(uri_owl_AllDifferent,Z)
        & iext(uri_owl_members,Z,S1) )
     => A1 != A2 ) ).

%----owl:AllDifferent / owl:members / if-direction
%----ternary
fof(owl_ndis_alldifferent_members_if_003,axiom,
    ! [Z,S1,A1,S2,A2,S3,A3] :
      ( ( iext(uri_rdf_first,S1,A1)
        & iext(uri_rdf_rest,S1,S2)
        & iext(uri_rdf_first,S2,A2)
        & iext(uri_rdf_rest,S2,S3)
        & iext(uri_rdf_first,S3,A3)
        & iext(uri_rdf_rest,S3,uri_rdf_nil)
        & icext(uri_owl_AllDifferent,Z)
        & iext(uri_owl_members,Z,S1) )
     => ( A1 != A2
        & A1 != A3
        & A2 != A3 ) ) ).

%----owl:AllDisjointClasses / owl:members / fi-direction
%----nullary
fof(owl_ndis_alldisjointclasses_fi_000,axiom,
    ? [Z] :
      ( icext(uri_owl_AllDisjointClasses,Z)
      & iext(uri_owl_members,Z,uri_rdf_nil) ) ).

%----owl:AllDisjointClasses / owl:members / fi-direction
%----unary
fof(owl_ndis_alldisjointclasses_fi_001,axiom,
    ! [S1,C1] :
      ( ( iext(uri_rdf_first,S1,C1)
        & iext(uri_rdf_rest,S1,uri_rdf_nil) )
     => ? [Z] :
          ( icext(uri_owl_AllDisjointClasses,Z)
          & iext(uri_owl_members,Z,S1) ) ) ).

%----owl:AllDisjointClasses / owl:members / fi-direction
%----binary
fof(owl_ndis_alldisjointclasses_fi_002,axiom,
    ! [S1,C1,S2,C2] :
      ( ( iext(uri_rdf_first,S1,C1)
        & iext(uri_rdf_rest,S1,S2)
        & iext(uri_rdf_first,S2,C2)
        & iext(uri_rdf_rest,S2,uri_rdf_nil)
        & ! [X] :
            ~ ( icext(C1,X)
              & icext(C2,X) ) )
     => ? [Z] :
          ( icext(uri_owl_AllDisjointClasses,Z)
          & iext(uri_owl_members,Z,S1) ) ) ).

%----owl:AllDisjointClasses / owl:members / fi-direction
%----ternary
fof(owl_ndis_alldisjointclasses_fi_003,axiom,
    ! [S1,C1,S2,C2,S3,C3] :
      ( ( iext(uri_rdf_first,S1,C1)
        & iext(uri_rdf_rest,S1,S2)
        & iext(uri_rdf_first,S2,C2)
        & iext(uri_rdf_rest,S2,S3)
        & iext(uri_rdf_first,S3,C3)
        & iext(uri_rdf_rest,S3,uri_rdf_nil)
        & ! [X] :
            ~ ( icext(C1,X)
              & icext(C2,X) )
        & ! [X] :
            ~ ( icext(C1,X)
              & icext(C3,X) )
        & ! [X] :
            ~ ( icext(C2,X)
              & icext(C3,X) ) )
     => ? [Z] :
          ( icext(uri_owl_AllDisjointClasses,Z)
          & iext(uri_owl_members,Z,S1) ) ) ).

%----no semantic effect
fof(owl_ndis_alldisjointclasses_if_000,axiom,
    ( tautology
    | ~ tautology ) ).

%----no semantic effect
fof(owl_ndis_alldisjointclasses_if_001,axiom,
    ( tautology
    | ~ tautology ) ).

%----owl:AllDisjointClasses / owl:members / if-direction
%----binary
fof(owl_ndis_alldisjointclasses_if_002,axiom,
    ! [Z,S1,C1,S2,C2] :
      ( ( iext(uri_rdf_first,S1,C1)
        & iext(uri_rdf_rest,S1,S2)
        & iext(uri_rdf_first,S2,C2)
        & iext(uri_rdf_rest,S2,uri_rdf_nil)
        & icext(uri_owl_AllDisjointClasses,Z)
        & iext(uri_owl_members,Z,S1) )
     => ! [X] :
          ~ ( icext(C1,X)
            & icext(C2,X) ) ) ).

%----owl:AllDisjointClasses / owl:members / if-direction
%----ternary
fof(owl_ndis_alldisjointclasses_if_003,axiom,
    ! [Z,S1,C1,S2,C2,S3,C3] :
      ( ( iext(uri_rdf_first,S1,C1)
        & iext(uri_rdf_rest,S1,S2)
        & iext(uri_rdf_first,S2,C2)
        & iext(uri_rdf_rest,S2,S3)
        & iext(uri_rdf_first,S3,C3)
        & iext(uri_rdf_rest,S3,uri_rdf_nil)
        & icext(uri_owl_AllDisjointClasses,Z)
        & iext(uri_owl_members,Z,S1) )
     => ( ! [X] :
            ~ ( icext(C1,X)
              & icext(C2,X) )
        & ! [X] :
            ~ ( icext(C1,X)
              & icext(C3,X) )
        & ! [X] :
            ~ ( icext(C2,X)
              & icext(C3,X) ) ) ) ).

%----owl:AllDisjointProperties / owl:members / fi-direction
%----nullary
fof(owl_ndis_alldisjointproperties_fi_000,axiom,
    ? [Z] :
      ( icext(uri_owl_AllDisjointProperties,Z)
      & iext(uri_owl_members,Z,uri_rdf_nil) ) ).

%----owl:AllDisjointProperties / owl:members / fi-direction
%----unary
fof(owl_ndis_alldisjointproperties_fi_001,axiom,
    ! [S1,P1] :
      ( ( iext(uri_rdf_first,S1,P1)
        & iext(uri_rdf_rest,S1,uri_rdf_nil) )
     => ? [Z] :
          ( icext(uri_owl_AllDisjointProperties,Z)
          & iext(uri_owl_members,Z,S1) ) ) ).

%----owl:AllDisjointProperties / owl:members / fi-direction
%----binary
fof(owl_ndis_alldisjointproperties_fi_002,axiom,
    ! [S1,P1,S2,P2] :
      ( ( iext(uri_rdf_first,S1,P1)
        & iext(uri_rdf_rest,S1,S2)
        & iext(uri_rdf_first,S2,P2)
        & iext(uri_rdf_rest,S2,uri_rdf_nil)
        & ! [X,Y] :
            ~ ( iext(P1,X,Y)
              & iext(P2,X,Y) ) )
     => ? [Z] :
          ( icext(uri_owl_AllDisjointProperties,Z)
          & iext(uri_owl_members,Z,S1) ) ) ).

%----owl:AllDisjointProperties / owl:members / fi-direction
%----ternary
fof(owl_ndis_alldisjointproperties_fi_003,axiom,
    ! [S1,P1,S2,P2,S3,P3] :
      ( ( iext(uri_rdf_first,S1,P1)
        & iext(uri_rdf_rest,S1,S2)
        & iext(uri_rdf_first,S2,P2)
        & iext(uri_rdf_rest,S2,S3)
        & iext(uri_rdf_first,S3,P3)
        & iext(uri_rdf_rest,S3,uri_rdf_nil)
        & ! [X,Y] :
            ~ ( iext(P1,X,Y)
              & iext(P2,X,Y) )
        & ! [X,Y] :
            ~ ( iext(P1,X,Y)
              & iext(P3,X,Y) )
        & ! [X,Y] :
            ~ ( iext(P2,X,Y)
              & iext(P3,X,Y) ) )
     => ? [Z] :
          ( icext(uri_owl_AllDisjointProperties,Z)
          & iext(uri_owl_members,Z,S1) ) ) ).

%----no semantic effect
fof(owl_ndis_alldisjointproperties_if_000,axiom,
    ( tautology
    | ~ tautology ) ).

%----no semantic effect
fof(owl_ndis_alldisjointproperties_if_001,axiom,
    ( tautology
    | ~ tautology ) ).

%----owl:AllDisjointProperties / owl:members / if-direction
%----binary
fof(owl_ndis_alldisjointproperties_if_002,axiom,
    ! [Z,S1,P1,S2,P2] :
      ( ( iext(uri_rdf_first,S1,P1)
        & iext(uri_rdf_rest,S1,S2)
        & iext(uri_rdf_first,S2,P2)
        & iext(uri_rdf_rest,S2,uri_rdf_nil)
        & icext(uri_owl_AllDisjointProperties,Z)
        & iext(uri_owl_members,Z,S1) )
     => ! [X,Y] :
          ~ ( iext(P1,X,Y)
            & iext(P2,X,Y) ) ) ).

%----owl:AllDisjointProperties / owl:members / if-direction
%----ternary
fof(owl_ndis_alldisjointproperties_if_003,axiom,
    ! [Z,S1,P1,S2,P2,S3,P3] :
      ( ( iext(uri_rdf_first,S1,P1)
        & iext(uri_rdf_rest,S1,S2)
        & iext(uri_rdf_first,S2,P2)
        & iext(uri_rdf_rest,S2,S3)
        & iext(uri_rdf_first,S3,P3)
        & iext(uri_rdf_rest,S3,uri_rdf_nil)
        & icext(uri_owl_AllDisjointProperties,Z)
        & iext(uri_owl_members,Z,S1) )
     => ( ! [X,Y] :
            ~ ( iext(P1,X,Y)
              & iext(P2,X,Y) )
        & ! [X,Y] :
            ~ ( iext(P1,X,Y)
              & iext(P3,X,Y) )
        & ! [X,Y] :
            ~ ( iext(P2,X,Y)
              & iext(P3,X,Y) ) ) ) ).

%----owl:propertyChainAxiom
%----nullary
fof(owl_chain_000,axiom,
    ! [P] :
      ( iext(uri_owl_propertyChainAxiom,P,uri_rdf_nil)
    <=> ( ip(P)
        & ! [Y0] : iext(P,Y0,Y0) ) ) ).

%----owl:propertyChainAxiom
%----unary
fof(owl_chain_001,axiom,
    ! [P,S1,P1] :
      ( ( iext(uri_rdf_first,S1,P1)
        & iext(uri_rdf_rest,S1,uri_rdf_nil) )
     => ( iext(uri_owl_propertyChainAxiom,P,S1)
      <=> ( ip(P)
          & ip(P1)
          & ! [Y0,Y1] :
              ( iext(P1,Y0,Y1)
             => iext(P,Y0,Y1) ) ) ) ) ).

%----owl:propertyChainAxiom
%----binary
fof(owl_chain_002,axiom,
    ! [P,S1,P1,S2,P2] :
      ( ( iext(uri_rdf_first,S1,P1)
        & iext(uri_rdf_rest,S1,S2)
        & iext(uri_rdf_first,S2,P2)
        & iext(uri_rdf_rest,S2,uri_rdf_nil) )
     => ( iext(uri_owl_propertyChainAxiom,P,S1)
      <=> ( ip(P)
          & ip(P1)
          & ip(P2)
          & ! [Y0,Y1,Y2] :
              ( ( iext(P1,Y0,Y1)
                & iext(P2,Y1,Y2) )
             => iext(P,Y0,Y2) ) ) ) ) ).

%----owl:propertyChainAxiom
%----ternary
fof(owl_chain_003,axiom,
    ! [P,S1,P1,S2,P2,S3,P3] :
      ( ( iext(uri_rdf_first,S1,P1)
        & iext(uri_rdf_rest,S1,S2)
        & iext(uri_rdf_first,S2,P2)
        & iext(uri_rdf_rest,S2,S3)
        & iext(uri_rdf_first,S3,P3)
        & iext(uri_rdf_rest,S3,uri_rdf_nil) )
     => ( iext(uri_owl_propertyChainAxiom,P,S1)
      <=> ( ip(P)
          & ip(P1)
          & ip(P2)
          & ip(P3)
          & ! [Y0,Y1,Y2,Y3] :
              ( ( iext(P1,Y0,Y1)
                & iext(P2,Y1,Y2)
                & iext(P3,Y2,Y3) )
             => iext(P,Y0,Y3) ) ) ) ) ).

%----owl:inverseOf
fof(owl_inv,axiom,
    ! [P1,P2] :
      ( iext(uri_owl_inverseOf,P1,P2)
    <=> ( ip(P1)
        & ip(P2)
        & ! [X,Y] :
            ( iext(P1,X,Y)
          <=> iext(P2,Y,X) ) ) ) ).

%----owl:AsymmetricProperty
fof(owl_char_asymmetric,axiom,
    ! [P] :
      ( icext(uri_owl_AsymmetricProperty,P)
    <=> ( ip(P)
        & ! [X,Y] :
            ( iext(P,X,Y)
           => ~ iext(P,Y,X) ) ) ) ).

%----owl:FunctionalProperty
fof(owl_char_functional,axiom,
    ! [P] :
      ( icext(uri_owl_FunctionalProperty,P)
    <=> ( ip(P)
        & ! [X,Y1,Y2] :
            ( ( iext(P,X,Y1)
              & iext(P,X,Y2) )
           => Y1 = Y2 ) ) ) ).

%----owl:InverseFunctionalProperty
fof(owl_char_inversefunctional,axiom,
    ! [P] :
      ( icext(uri_owl_InverseFunctionalProperty,P)
    <=> ( ip(P)
        & ! [X1,X2,Y] :
            ( ( iext(P,X1,Y)
              & iext(P,X2,Y) )
           => X1 = X2 ) ) ) ).

%----owl:IrreflexiveProperty
fof(owl_char_irreflexive,axiom,
    ! [P] :
      ( icext(uri_owl_IrreflexiveReflexiveProperty,P)
    <=> ( ip(P)
        & ! [X] : ~ iext(P,X,X) ) ) ).

%----owl:ReflexiveProperty
fof(owl_char_reflexive,axiom,
    ! [P] :
      ( icext(uri_owl_ReflexiveProperty,P)
    <=> ( ip(P)
        & ! [X] : iext(P,X,X) ) ) ).

%----owl:SymmetricProperty
fof(owl_char_symmetric,axiom,
    ! [P] :
      ( icext(uri_owl_SymmetricProperty,P)
    <=> ( ip(P)
        & ! [X,Y] :
            ( iext(P,X,Y)
           => iext(P,Y,X) ) ) ) ).

%----owl:TransitiveProperty
fof(owl_char_transitive,axiom,
    ! [P] :
      ( icext(uri_owl_TransitiveProperty,P)
    <=> ( ip(P)
        & ! [X,Y,Z] :
            ( ( iext(P,X,Y)
              & iext(P,Y,Z) )
           => iext(P,X,Z) ) ) ) ).

%----owl:hasKey
%----owl:hasKey / nullary
fof(owl_key_000,axiom,
    ! [C] :
      ( iext(uri_owl_hasKey,C,uri_rdf_nil)
    <=> ( ic(C)
        & ! [X,Y] :
            ( ( icext(C,X)
              & icext(C,Y) )
           => X = Y ) ) ) ).

%----owl:hasKey
%----owl:hasKey / singleton
fof(owl_key_001,axiom,
    ! [C,S1,P1] :
      ( ( iext(uri_rdf_first,S1,P1)
        & iext(uri_rdf_rest,S1,uri_rdf_nil) )
     => ( iext(uri_owl_hasKey,C,S1)
      <=> ( ic(C)
          & ip(P1)
          & ! [X,Y,Z1] :
              ( ( icext(C,X)
                & icext(C,Y)
                & iext(P1,X,Z1)
                & iext(P1,Y,Z1) )
             => X = Y ) ) ) ) ).

%----owl:hasKey
%----owl:hasKey / binary
fof(owl_key_002,axiom,
    ! [C,S1,P1,S2,P2] :
      ( ( iext(uri_rdf_first,S1,P1)
        & iext(uri_rdf_rest,S1,S2)
        & iext(uri_rdf_first,S2,P2)
        & iext(uri_rdf_rest,S2,uri_rdf_nil) )
     => ( iext(uri_owl_hasKey,C,S1)
      <=> ( ic(C)
          & ip(P1)
          & ip(P2)
          & ! [X,Y,Z1,Z2] :
              ( ( icext(C,X)
                & icext(C,Y)
                & iext(P1,X,Z1)
                & iext(P1,Y,Z1)
                & iext(P2,X,Z2)
                & iext(P2,Y,Z2) )
             => X = Y ) ) ) ) ).

%----owl:hasKey
%----owl:hasKey / ternary
fof(owl_key_003,axiom,
    ! [C,S1,P1,S2,P2,S3,P3] :
      ( ( iext(uri_rdf_first,S1,P1)
        & iext(uri_rdf_rest,S1,S2)
        & iext(uri_rdf_first,S2,P2)
        & iext(uri_rdf_rest,S2,S3)
        & iext(uri_rdf_first,S3,P3)
        & iext(uri_rdf_rest,S3,uri_rdf_nil) )
     => ( iext(uri_owl_hasKey,C,S1)
      <=> ( ic(C)
          & ip(P1)
          & ip(P2)
          & ip(P3)
          & ! [X,Y,Z1,Z2,Z3] :
              ( ( icext(C,X)
                & icext(C,Y)
                & iext(P1,X,Z1)
                & iext(P1,Y,Z1)
                & iext(P2,X,Z2)
                & iext(P2,Y,Z2)
                & iext(P3,X,Z3)
                & iext(P3,Y,Z3) )
             => X = Y ) ) ) ) ).

%----Data NPA / fi-direction
fof(owl_npa_data_fi,axiom,
    ! [P,A,V] :
      ( ( ir(A)
        & iodp(P)
        & lv(V)
        & ~ iext(P,A,V) )
     => ? [Z] :
          ( iext(uri_owl_sourceIndividual,Z,A)
          & iext(uri_owl_assertionProperty,Z,P)
          & iext(uri_owl_targetValue,Z,V) ) ) ).

%----Data NPA / if-direction
fof(owl_npa_data_if,axiom,
    ! [Z,P,A,V] :
      ( ( iext(uri_owl_sourceIndividual,Z,A)
        & iext(uri_owl_assertionProperty,Z,P)
        & iext(uri_owl_targetValue,Z,V) )
     => ( iodp(P)
        & ~ iext(P,A,V) ) ) ).

%----Object NPA / fi-direction
fof(owl_npa_object_fi,axiom,
    ! [P,A1,A2] :
      ( ( ir(A1)
        & ip(P)
        & ir(A2)
        & ~ iext(P,A1,A2) )
     => ? [Z] :
          ( iext(uri_owl_sourceIndividual,Z,A1)
          & iext(uri_owl_assertionProperty,Z,P)
          & iext(uri_owl_targetIndividual,Z,A2) ) ) ).

%----Object NPA / if-direction
fof(owl_npa_object_if,axiom,
    ! [Z,P,A1,A2] :
      ( ( iext(uri_owl_sourceIndividual,Z,A1)
        & iext(uri_owl_assertionProperty,Z,P)
        & iext(uri_owl_targetIndividual,Z,A2) )
     => ~ iext(P,A1,A2) ) ).

fof(owl_dat_dtype_anyuri_ext,axiom,
    ! [X] :
      ( icext(uri_xsd_anyURI,X)
     => lv(X) ) ).

fof(owl_dat_dtype_anyuri_type,axiom,
    idc(uri_xsd_anyURI) ).

fof(owl_dat_dtype_base64binary_ext,axiom,
    ! [X] :
      ( icext(uri_xsd_base64Binary,X)
     => lv(X) ) ).

fof(owl_dat_dtype_base64binary_type,axiom,
    idc(uri_xsd_base64Binary) ).

fof(owl_dat_dtype_boolean_ext,axiom,
    ! [X] :
      ( icext(uri_xsd_boolean,X)
     => lv(X) ) ).

fof(owl_dat_dtype_boolean_type,axiom,
    idc(uri_xsd_boolean) ).

fof(owl_dat_dtype_byte_ext,axiom,
    ! [X] :
      ( icext(uri_xsd_byte,X)
     => lv(X) ) ).

fof(owl_dat_dtype_byte_type,axiom,
    idc(uri_xsd_byte) ).

fof(owl_dat_dtype_datetime_ext,axiom,
    ! [X] :
      ( icext(uri_xsd_dateTime,X)
     => lv(X) ) ).

fof(owl_dat_dtype_datetime_type,axiom,
    idc(uri_xsd_dateTime) ).

fof(owl_dat_dtype_datetimestamp_ext,axiom,
    ! [X] :
      ( icext(uri_xsd_dateTimeStamp,X)
     => lv(X) ) ).

fof(owl_dat_dtype_datetimestamp_type,axiom,
    idc(uri_xsd_dateTimeStamp) ).

fof(owl_dat_dtype_decimal_ext,axiom,
    ! [X] :
      ( icext(uri_xsd_decimal,X)
     => lv(X) ) ).

fof(owl_dat_dtype_decimal_type,axiom,
    idc(uri_xsd_decimal) ).

fof(owl_dat_dtype_double_ext,axiom,
    ! [X] :
      ( icext(uri_xsd_double,X)
     => lv(X) ) ).

fof(owl_dat_dtype_double_type,axiom,
    idc(uri_xsd_double) ).

fof(owl_dat_dtype_float_ext,axiom,
    ! [X] :
      ( icext(uri_xsd_float,X)
     => lv(X) ) ).

fof(owl_dat_dtype_float_type,axiom,
    idc(uri_xsd_float) ).

fof(owl_dat_dtype_hexbinary_ext,axiom,
    ! [X] :
      ( icext(uri_xsd_hexBinary,X)
     => lv(X) ) ).

fof(owl_dat_dtype_hexbinary_type,axiom,
    idc(uri_xsd_hexBinary) ).

fof(owl_dat_dtype_int_ext,axiom,
    ! [X] :
      ( icext(uri_xsd_int,X)
     => lv(X) ) ).

fof(owl_dat_dtype_int_type,axiom,
    idc(uri_xsd_int) ).

fof(owl_dat_dtype_integer_ext,axiom,
    ! [X] :
      ( icext(uri_xsd_integer,X)
     => lv(X) ) ).

fof(owl_dat_dtype_integer_type,axiom,
    idc(uri_xsd_integer) ).

fof(owl_dat_dtype_language_ext,axiom,
    ! [X] :
      ( icext(uri_xsd_language,X)
     => lv(X) ) ).

fof(owl_dat_dtype_language_type,axiom,
    idc(uri_xsd_language) ).

fof(owl_dat_dtype_long_ext,axiom,
    ! [X] :
      ( icext(uri_xsd_long,X)
     => lv(X) ) ).

fof(owl_dat_dtype_long_type,axiom,
    idc(uri_xsd_long) ).

fof(owl_dat_dtype_name_ext,axiom,
    ! [X] :
      ( icext(uri_xsd_Name,X)
     => lv(X) ) ).

fof(owl_dat_dtype_name_type,axiom,
    idc(uri_xsd_Name) ).

fof(owl_dat_dtype_ncname_ext,axiom,
    ! [X] :
      ( icext(uri_xsd_NCName,X)
     => lv(X) ) ).

fof(owl_dat_dtype_ncname_type,axiom,
    idc(uri_xsd_NCName) ).

fof(owl_dat_dtype_negativeinteger_ext,axiom,
    ! [X] :
      ( icext(uri_xsd_negativeInteger,X)
     => lv(X) ) ).

fof(owl_dat_dtype_negativeinteger_type,axiom,
    idc(uri_xsd_negativeInteger) ).

fof(owl_dat_dtype_nmtoken_ext,axiom,
    ! [X] :
      ( icext(uri_xsd_NMTOKEN,X)
     => lv(X) ) ).

fof(owl_dat_dtype_nmtoken_type,axiom,
    idc(uri_xsd_NMTOKEN) ).

fof(owl_dat_dtype_nonnegativeinteger_ext,axiom,
    ! [X] :
      ( icext(uri_xsd_nonNegativeInteger,X)
     => lv(X) ) ).

fof(owl_dat_dtype_nonnegativeinteger_type,axiom,
    idc(uri_xsd_nonNegativeInteger) ).

fof(owl_dat_dtype_nonpositiveinteger_ext,axiom,
    ! [X] :
      ( icext(uri_xsd_nonPositiveInteger,X)
     => lv(X) ) ).

fof(owl_dat_dtype_nonpositiveinteger_type,axiom,
    idc(uri_xsd_nonPositiveInteger) ).

fof(owl_dat_dtype_normalizedstring_ext,axiom,
    ! [X] :
      ( icext(uri_xsd_normalizedString,X)
     => lv(X) ) ).

fof(owl_dat_dtype_normalizedstring_type,axiom,
    idc(uri_xsd_normalizedString) ).

fof(owl_dat_dtype_plainliteral_ext,axiom,
    ! [X] :
      ( icext(uri_rdf_PlainLiteral,X)
     => lv(X) ) ).

fof(owl_dat_dtype_plainliteral_type,axiom,
    idc(uri_rdf_PlainLiteral) ).

fof(owl_dat_dtype_positiveinteger_ext,axiom,
    ! [X] :
      ( icext(uri_xsd_positiveInteger,X)
     => lv(X) ) ).

fof(owl_dat_dtype_positiveinteger_type,axiom,
    idc(uri_xsd_positiveInteger) ).

fof(owl_dat_dtype_rational_ext,axiom,
    ! [X] :
      ( icext(uri_owl_rational,X)
     => lv(X) ) ).

fof(owl_dat_dtype_rational_type,axiom,
    idc(uri_owl_rational) ).

fof(owl_dat_dtype_real_ext,axiom,
    ! [X] :
      ( icext(uri_owl_real,X)
     => lv(X) ) ).

fof(owl_dat_dtype_real_type,axiom,
    idc(uri_owl_real) ).

fof(owl_dat_dtype_short_ext,axiom,
    ! [X] :
      ( icext(uri_xsd_short,X)
     => lv(X) ) ).

fof(owl_dat_dtype_short_type,axiom,
    idc(uri_xsd_short) ).

fof(owl_dat_dtype_string_ext,axiom,
    ! [X] :
      ( icext(uri_xsd_string,X)
     => lv(X) ) ).

fof(owl_dat_dtype_string_type,axiom,
    idc(uri_xsd_string) ).

fof(owl_dat_dtype_token_ext,axiom,
    ! [X] :
      ( icext(uri_xsd_token,X)
     => lv(X) ) ).

fof(owl_dat_dtype_token_type,axiom,
    idc(uri_xsd_token) ).

fof(owl_dat_dtype_unsignedbyte_ext,axiom,
    ! [X] :
      ( icext(uri_xsd_unsignedByte,X)
     => lv(X) ) ).

fof(owl_dat_dtype_unsignedbyte_type,axiom,
    idc(uri_xsd_unsignedByte) ).

fof(owl_dat_dtype_unsignedint_ext,axiom,
    ! [X] :
      ( icext(uri_xsd_unsignedInt,X)
     => lv(X) ) ).

fof(owl_dat_dtype_unsignedint_type,axiom,
    idc(uri_xsd_unsignedInt) ).

fof(owl_dat_dtype_unsignedlong_ext,axiom,
    ! [X] :
      ( icext(uri_xsd_unsignedLong,X)
     => lv(X) ) ).

fof(owl_dat_dtype_unsignedlong_type,axiom,
    idc(uri_xsd_unsignedLong) ).

fof(owl_dat_dtype_unsignedshort_ext,axiom,
    ! [X] :
      ( icext(uri_xsd_unsignedShort,X)
     => lv(X) ) ).

fof(owl_dat_dtype_unsignedshort_type,axiom,
    idc(uri_xsd_unsignedShort) ).

fof(owl_dat_dtype_xmlliteral_ext,axiom,
    ! [X] :
      ( icext(uri_rdf_XMLLiteral,X)
     => lv(X) ) ).

fof(owl_dat_dtype_xmlliteral_type,axiom,
    idc(uri_rdf_XMLLiteral) ).

fof(owl_dat_dtype_relation_disjoint_anyuri_base64binary,axiom,
    ! [X] :
      ~ ( icext(uri_xsd_anyURI,X)
        & icext(uri_xsd_base64Binary,X) ) ).

fof(owl_dat_dtype_relation_disjoint_anyuri_boolean,axiom,
    ! [X] :
      ~ ( icext(uri_xsd_anyURI,X)
        & icext(uri_xsd_boolean,X) ) ).

fof(owl_dat_dtype_relation_disjoint_anyuri_datetime,axiom,
    ! [X] :
      ~ ( icext(uri_xsd_anyURI,X)
        & icext(uri_xsd_dateTime,X) ) ).

fof(owl_dat_dtype_relation_disjoint_anyuri_double,axiom,
    ! [X] :
      ~ ( icext(uri_xsd_anyURI,X)
        & icext(uri_xsd_double,X) ) ).

fof(owl_dat_dtype_relation_disjoint_anyuri_float,axiom,
    ! [X] :
      ~ ( icext(uri_xsd_anyURI,X)
        & icext(uri_xsd_float,X) ) ).

fof(owl_dat_dtype_relation_disjoint_anyuri_hexbinary,axiom,
    ! [X] :
      ~ ( icext(uri_xsd_anyURI,X)
        & icext(uri_xsd_hexBinary,X) ) ).

fof(owl_dat_dtype_relation_disjoint_anyuri_plainliteral,axiom,
    ! [X] :
      ~ ( icext(uri_xsd_anyURI,X)
        & icext(uri_rdf_PlainLiteral,X) ) ).

fof(owl_dat_dtype_relation_disjoint_anyuri_real,axiom,
    ! [X] :
      ~ ( icext(uri_xsd_anyURI,X)
        & icext(uri_owl_real,X) ) ).

fof(owl_dat_dtype_relation_disjoint_anyuri_xmlliteral,axiom,
    ! [X] :
      ~ ( icext(uri_xsd_anyURI,X)
        & icext(uri_rdf_XMLLiteral,X) ) ).

fof(owl_dat_dtype_relation_disjoint_base64binary_boolean,axiom,
    ! [X] :
      ~ ( icext(uri_xsd_base64Binary,X)
        & icext(uri_xsd_boolean,X) ) ).

fof(owl_dat_dtype_relation_disjoint_base64binary_datetime,axiom,
    ! [X] :
      ~ ( icext(uri_xsd_base64Binary,X)
        & icext(uri_xsd_dateTime,X) ) ).

fof(owl_dat_dtype_relation_disjoint_base64binary_double,axiom,
    ! [X] :
      ~ ( icext(uri_xsd_base64Binary,X)
        & icext(uri_xsd_double,X) ) ).

fof(owl_dat_dtype_relation_disjoint_base64binary_float,axiom,
    ! [X] :
      ~ ( icext(uri_xsd_base64Binary,X)
        & icext(uri_xsd_float,X) ) ).

fof(owl_dat_dtype_relation_disjoint_base64binary_hexbinary,axiom,
    ! [X] :
      ~ ( icext(uri_xsd_base64Binary,X)
        & icext(uri_xsd_hexBinary,X) ) ).

fof(owl_dat_dtype_relation_disjoint_base64binary_plainliteral,axiom,
    ! [X] :
      ~ ( icext(uri_xsd_base64Binary,X)
        & icext(uri_rdf_PlainLiteral,X) ) ).

fof(owl_dat_dtype_relation_disjoint_base64binary_real,axiom,
    ! [X] :
      ~ ( icext(uri_xsd_base64Binary,X)
        & icext(uri_owl_real,X) ) ).

fof(owl_dat_dtype_relation_disjoint_base64binary_xmlliteral,axiom,
    ! [X] :
      ~ ( icext(uri_xsd_base64Binary,X)
        & icext(uri_rdf_XMLLiteral,X) ) ).

fof(owl_dat_dtype_relation_disjoint_boolean_datetime,axiom,
    ! [X] :
      ~ ( icext(uri_xsd_boolean,X)
        & icext(uri_xsd_dateTime,X) ) ).

fof(owl_dat_dtype_relation_disjoint_boolean_double,axiom,
    ! [X] :
      ~ ( icext(uri_xsd_boolean,X)
        & icext(uri_xsd_double,X) ) ).

fof(owl_dat_dtype_relation_disjoint_boolean_float,axiom,
    ! [X] :
      ~ ( icext(uri_xsd_boolean,X)
        & icext(uri_xsd_float,X) ) ).

fof(owl_dat_dtype_relation_disjoint_boolean_hexbinary,axiom,
    ! [X] :
      ~ ( icext(uri_xsd_boolean,X)
        & icext(uri_xsd_hexBinary,X) ) ).

fof(owl_dat_dtype_relation_disjoint_boolean_plainliteral,axiom,
    ! [X] :
      ~ ( icext(uri_xsd_boolean,X)
        & icext(uri_rdf_PlainLiteral,X) ) ).

fof(owl_dat_dtype_relation_disjoint_boolean_real,axiom,
    ! [X] :
      ~ ( icext(uri_xsd_boolean,X)
        & icext(uri_owl_real,X) ) ).

fof(owl_dat_dtype_relation_disjoint_boolean_xmlliteral,axiom,
    ! [X] :
      ~ ( icext(uri_xsd_boolean,X)
        & icext(uri_rdf_XMLLiteral,X) ) ).

fof(owl_dat_dtype_relation_disjoint_datetime_double,axiom,
    ! [X] :
      ~ ( icext(uri_xsd_dateTime,X)
        & icext(uri_xsd_double,X) ) ).

fof(owl_dat_dtype_relation_disjoint_datetime_float,axiom,
    ! [X] :
      ~ ( icext(uri_xsd_dateTime,X)
        & icext(uri_xsd_float,X) ) ).

fof(owl_dat_dtype_relation_disjoint_datetime_hexbinary,axiom,
    ! [X] :
      ~ ( icext(uri_xsd_dateTime,X)
        & icext(uri_xsd_hexBinary,X) ) ).

fof(owl_dat_dtype_relation_disjoint_datetime_plainliteral,axiom,
    ! [X] :
      ~ ( icext(uri_xsd_dateTime,X)
        & icext(uri_rdf_PlainLiteral,X) ) ).

fof(owl_dat_dtype_relation_disjoint_datetime_real,axiom,
    ! [X] :
      ~ ( icext(uri_xsd_dateTime,X)
        & icext(uri_owl_real,X) ) ).

fof(owl_dat_dtype_relation_disjoint_datetime_xmlliteral,axiom,
    ! [X] :
      ~ ( icext(uri_xsd_dateTime,X)
        & icext(uri_rdf_XMLLiteral,X) ) ).

fof(owl_dat_dtype_relation_disjoint_double_float,axiom,
    ! [X] :
      ~ ( icext(uri_xsd_double,X)
        & icext(uri_xsd_float,X) ) ).

fof(owl_dat_dtype_relation_disjoint_double_hexbinary,axiom,
    ! [X] :
      ~ ( icext(uri_xsd_double,X)
        & icext(uri_xsd_hexBinary,X) ) ).

fof(owl_dat_dtype_relation_disjoint_double_plainliteral,axiom,
    ! [X] :
      ~ ( icext(uri_xsd_double,X)
        & icext(uri_rdf_PlainLiteral,X) ) ).

fof(owl_dat_dtype_relation_disjoint_double_real,axiom,
    ! [X] :
      ~ ( icext(uri_xsd_double,X)
        & icext(uri_owl_real,X) ) ).

fof(owl_dat_dtype_relation_disjoint_double_xmlliteral,axiom,
    ! [X] :
      ~ ( icext(uri_xsd_double,X)
        & icext(uri_rdf_XMLLiteral,X) ) ).

fof(owl_dat_dtype_relation_disjoint_float_hexbinary,axiom,
    ! [X] :
      ~ ( icext(uri_xsd_float,X)
        & icext(uri_xsd_hexBinary,X) ) ).

fof(owl_dat_dtype_relation_disjoint_float_plainliteral,axiom,
    ! [X] :
      ~ ( icext(uri_xsd_float,X)
        & icext(uri_rdf_PlainLiteral,X) ) ).

fof(owl_dat_dtype_relation_disjoint_float_real,axiom,
    ! [X] :
      ~ ( icext(uri_xsd_float,X)
        & icext(uri_owl_real,X) ) ).

fof(owl_dat_dtype_relation_disjoint_float_xmlliteral,axiom,
    ! [X] :
      ~ ( icext(uri_xsd_float,X)
        & icext(uri_rdf_XMLLiteral,X) ) ).

fof(owl_dat_dtype_relation_disjoint_hexbinary_plainliteral,axiom,
    ! [X] :
      ~ ( icext(uri_xsd_hexBinary,X)
        & icext(uri_rdf_PlainLiteral,X) ) ).

fof(owl_dat_dtype_relation_disjoint_hexbinary_real,axiom,
    ! [X] :
      ~ ( icext(uri_xsd_hexBinary,X)
        & icext(uri_owl_real,X) ) ).

fof(owl_dat_dtype_relation_disjoint_hexbinary_xmlliteral,axiom,
    ! [X] :
      ~ ( icext(uri_xsd_hexBinary,X)
        & icext(uri_rdf_XMLLiteral,X) ) ).

fof(owl_dat_dtype_relation_disjoint_plainliteral_real,axiom,
    ! [X] :
      ~ ( icext(uri_rdf_PlainLiteral,X)
        & icext(uri_owl_real,X) ) ).

fof(owl_dat_dtype_relation_disjoint_plainliteral_xmlliteral,axiom,
    ! [X] :
      ~ ( icext(uri_rdf_PlainLiteral,X)
        & icext(uri_rdf_XMLLiteral,X) ) ).

fof(owl_dat_dtype_relation_disjoint_real_xmlliteral,axiom,
    ! [X] :
      ~ ( icext(uri_owl_real,X)
        & icext(uri_rdf_XMLLiteral,X) ) ).

fof(owl_dat_dtype_relation_subtype_byte_short,axiom,
    ! [X] :
      ( icext(uri_xsd_byte,X)
     => icext(uri_xsd_short,X) ) ).

fof(owl_dat_dtype_relation_subtype_datetimestamp_datetime,axiom,
    ! [X] :
      ( icext(uri_xsd_dateTimeStamp,X)
     => icext(uri_xsd_dateTime,X) ) ).

fof(owl_dat_dtype_relation_subtype_decimal_rational,axiom,
    ! [X] :
      ( icext(uri_xsd_decimal,X)
     => icext(uri_owl_rational,X) ) ).

fof(owl_dat_dtype_relation_subtype_int_long,axiom,
    ! [X] :
      ( icext(uri_xsd_int,X)
     => icext(uri_xsd_long,X) ) ).

fof(owl_dat_dtype_relation_subtype_integer_decimal,axiom,
    ! [X] :
      ( icext(uri_xsd_integer,X)
     => icext(uri_xsd_decimal,X) ) ).

fof(owl_dat_dtype_relation_subtype_language_token,axiom,
    ! [X] :
      ( icext(uri_xsd_language,X)
     => icext(uri_xsd_token,X) ) ).

fof(owl_dat_dtype_relation_subtype_long_integer,axiom,
    ! [X] :
      ( icext(uri_xsd_long,X)
     => icext(uri_xsd_integer,X) ) ).

fof(owl_dat_dtype_relation_subtype_name_token,axiom,
    ! [X] :
      ( icext(uri_xsd_Name,X)
     => icext(uri_xsd_token,X) ) ).

fof(owl_dat_dtype_relation_subtype_ncname_name,axiom,
    ! [X] :
      ( icext(uri_xsd_NCName,X)
     => icext(uri_xsd_Name,X) ) ).

fof(owl_dat_dtype_relation_subtype_negativeinteger_nonpositiveinteger,axiom,
    ! [X] :
      ( icext(uri_xsd_negativeInteger,X)
     => icext(uri_xsd_nonPositiveInteger,X) ) ).

fof(owl_dat_dtype_relation_subtype_nmtoken_token,axiom,
    ! [X] :
      ( icext(uri_xsd_NMTOKEN,X)
     => icext(uri_xsd_token,X) ) ).

fof(owl_dat_dtype_relation_subtype_nonnegativeinteger_integer,axiom,
    ! [X] :
      ( icext(uri_xsd_nonNegativeInteger,X)
     => icext(uri_xsd_integer,X) ) ).

fof(owl_dat_dtype_relation_subtype_nonpositiveinteger_integer,axiom,
    ! [X] :
      ( icext(uri_xsd_nonPositiveInteger,X)
     => icext(uri_xsd_integer,X) ) ).

fof(owl_dat_dtype_relation_subtype_normalizedstring_string,axiom,
    ! [X] :
      ( icext(uri_xsd_normalizedString,X)
     => icext(uri_xsd_string,X) ) ).

fof(owl_dat_dtype_relation_subtype_positiveinteger_nonnegativeinteger,axiom,
    ! [X] :
      ( icext(uri_xsd_positiveInteger,X)
     => icext(uri_xsd_nonNegativeInteger,X) ) ).

fof(owl_dat_dtype_relation_subtype_rational_real,axiom,
    ! [X] :
      ( icext(uri_owl_rational,X)
     => icext(uri_owl_real,X) ) ).

fof(owl_dat_dtype_relation_subtype_short_int,axiom,
    ! [X] :
      ( icext(uri_xsd_short,X)
     => icext(uri_xsd_int,X) ) ).

fof(owl_dat_dtype_relation_subtype_string_plainliteral,axiom,
    ! [X] :
      ( icext(uri_xsd_string,X)
     => icext(uri_rdf_PlainLiteral,X) ) ).

fof(owl_dat_dtype_relation_subtype_token_normalizedstring,axiom,
    ! [X] :
      ( icext(uri_xsd_token,X)
     => icext(uri_xsd_normalizedString,X) ) ).

fof(owl_dat_dtype_relation_subtype_unsignedbyte_unsignedshort,axiom,
    ! [X] :
      ( icext(uri_xsd_unsignedByte,X)
     => icext(uri_xsd_unsignedShort,X) ) ).

fof(owl_dat_dtype_relation_subtype_unsignedint_unsignedlong,axiom,
    ! [X] :
      ( icext(uri_xsd_unsignedInt,X)
     => icext(uri_xsd_unsignedLong,X) ) ).

fof(owl_dat_dtype_relation_subtype_unsignedlong_nonnegativeinteger,axiom,
    ! [X] :
      ( icext(uri_xsd_unsignedLong,X)
     => icext(uri_xsd_nonNegativeInteger,X) ) ).

fof(owl_dat_dtype_relation_subtype_unsignedshort_unsignedint,axiom,
    ! [X] :
      ( icext(uri_xsd_unsignedShort,X)
     => icext(uri_xsd_unsignedInt,X) ) ).

fof(owl_dat_facet_langrange_ext,axiom,
    ! [X,Y] :
      ( iext(uri_rdf_langRange,X,Y)
     => ( ir(X)
        & lv(Y) ) ) ).

fof(owl_dat_facet_langrange_type,axiom,
    iodp(uri_rdf_langRange) ).

fof(owl_dat_facet_length_ext,axiom,
    ! [X,Y] :
      ( iext(uri_xsd_length,X,Y)
     => ( ir(X)
        & lv(Y) ) ) ).

fof(owl_dat_facet_length_type,axiom,
    iodp(uri_xsd_length) ).

fof(owl_dat_facet_maxexclusive_ext,axiom,
    ! [X,Y] :
      ( iext(uri_xsd_maxExclusive,X,Y)
     => ( ir(X)
        & lv(Y) ) ) ).

fof(owl_dat_facet_maxexclusive_type,axiom,
    iodp(uri_xsd_maxExclusive) ).

fof(owl_dat_facet_maxinclusive_ext,axiom,
    ! [X,Y] :
      ( iext(uri_xsd_maxInclusive,X,Y)
     => ( ir(X)
        & lv(Y) ) ) ).

fof(owl_dat_facet_maxinclusive_type,axiom,
    iodp(uri_xsd_maxInclusive) ).

fof(owl_dat_facet_maxlength_ext,axiom,
    ! [X,Y] :
      ( iext(uri_xsd_maxLength,X,Y)
     => ( ir(X)
        & lv(Y) ) ) ).

fof(owl_dat_facet_maxlength_type,axiom,
    iodp(uri_xsd_maxLength) ).

fof(owl_dat_facet_minexclusive_ext,axiom,
    ! [X,Y] :
      ( iext(uri_xsd_minExclusive,X,Y)
     => ( ir(X)
        & lv(Y) ) ) ).

fof(owl_dat_facet_minexclusive_type,axiom,
    iodp(uri_xsd_minExclusive) ).

fof(owl_dat_facet_mininclusive_ext,axiom,
    ! [X,Y] :
      ( iext(uri_xsd_minInclusive,X,Y)
     => ( ir(X)
        & lv(Y) ) ) ).

fof(owl_dat_facet_mininclusive_type,axiom,
    iodp(uri_xsd_minInclusive) ).

fof(owl_dat_facet_minlength_ext,axiom,
    ! [X,Y] :
      ( iext(uri_xsd_minLength,X,Y)
     => ( ir(X)
        & lv(Y) ) ) ).

fof(owl_dat_facet_minlength_type,axiom,
    iodp(uri_xsd_minLength) ).

fof(owl_dat_facet_pattern_ext,axiom,
    ! [X,Y] :
      ( iext(uri_xsd_pattern,X,Y)
     => ( ir(X)
        & lv(Y) ) ) ).

fof(owl_dat_facet_pattern_type,axiom,
    iodp(uri_xsd_pattern) ).

%------------------------------------------------------------------------------

%------------------------------------------------------------------------------
fof(testcase_conclusion_fullish_026_Inferred_Property_Characteristics_I,conjecture,
    iext(uri_rdf_type,uri_ex_p,uri_owl_InverseFunctionalProperty) ).

fof(testcase_premise_fullish_026_Inferred_Property_Characteristics_I,axiom,
    ? [BNODE_x1,BNODE_x2,BNODE_l1,BNODE_l2] :
      ( iext(uri_rdfs_domain,uri_ex_p,BNODE_x1)
      & iext(uri_owl_oneOf,BNODE_x1,BNODE_l1)
      & iext(uri_rdf_first,BNODE_l1,uri_ex_w)
      & iext(uri_rdf_rest,BNODE_l1,uri_rdf_nil)
      & iext(uri_rdfs_range,uri_ex_p,BNODE_x2)
      & iext(uri_owl_oneOf,BNODE_x2,BNODE_l2)
      & iext(uri_rdf_first,BNODE_l2,uri_ex_u)
      & iext(uri_rdf_rest,BNODE_l2,uri_rdf_nil) ) ).

%------------------------------------------------------------------------------
