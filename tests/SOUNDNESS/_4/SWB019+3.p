%------------------------------------------------------------------------------
% File     : SWB019+3 : TPTP v8.1.2. Released v5.2.0.
% Domain   : Semantic Web
% Problem  : Disjoint Annotation Properties
% Version  : [Sch11] axioms : Incomplete.
% English  : 

% Refs     : [Sch11] Schneider, M. (2011), Email to G. Sutcliffe
% Source   : [Sch11]
% Names    : 019_Disjoint_Annotation_Properties [Sch11]

% Status   : Satisfiable
% Rating   : 0.33 v7.1.0, 0.00 v6.3.0, 0.33 v6.2.0, 0.75 v6.0.0, 1.00 v5.5.0, 0.67 v5.4.0, 1.00 v5.2.0
% Syntax   : Number of formulae    :  139 (  73 unt;   0 def)
%            Number of atoms       :  317 (   0 equ)
%            Maximal formula atoms :   15 (   2 avg)
%            Number of connectives :  181 (   3   ~;   3   |;  80   &)
%                                         (  38 <=>;  57  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   18 (   3 avg)
%            Maximal term depth    :    2 (   1 avg)
%            Number of predicates  :   11 (  11 usr;   0 prp; 1-3 aty)
%            Number of functors    :   53 (  53 usr;  52 con; 0-1 aty)
%            Number of variables   :  159 ( 157   !;   2   ?)
% SPC      : FOF_SAT_RFO_NEQ

% Comments :
%------------------------------------------------------------------------------
%----Include ALCO Full Extensional axioms
include('Axioms/SWB002+0.ax').
%------------------------------------------------------------------------------
fof(testcase_premise_fullish_019_Disjoint_Annotation_Properties,axiom,
    ( iext(uri_rdf_type,uri_skos_prefLabel,uri_owl_AnnotationProperty)
    & iext(uri_rdfs_subPropertyOf,uri_skos_prefLabel,uri_rdfs_label)
    & iext(uri_rdf_type,uri_skos_altLabel,uri_owl_AnnotationProperty)
    & iext(uri_rdfs_subPropertyOf,uri_skos_altLabel,uri_rdfs_label)
    & iext(uri_owl_propertyDisjointWith,uri_skos_prefLabel,uri_skos_altLabel)
    & iext(uri_skos_prefLabel,uri_ex_foo,literal_plain(dat_str_foo))
    & iext(uri_skos_altLabel,uri_ex_foo,literal_plain(dat_str_foo)) ) ).

%------------------------------------------------------------------------------
