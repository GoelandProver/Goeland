%------------------------------------------------------------------------------
% File     : SWB019+4 : TPTP v8.1.2. Released v5.2.0.
% Domain   : Semantic Web
% Problem  : Disjoint Annotation Properties
% Version  : [Sch11] axioms : Especial.
% English  : 

% Refs     : [Sch11] Schneider, M. (2011), Email to G. Sutcliffe
% Source   : [Sch11]
% Names    : 019_Disjoint_Annotation_Properties [Sch11]

% Status   : Satisfiable
% Rating   : 0.33 v7.1.0, 0.00 v5.4.0, 0.14 v5.2.0
% Syntax   : Number of formulae    :   81 (  62 unt;   0 def)
%            Number of atoms       :  115 (   0 equ)
%            Maximal formula atoms :    7 (   1 avg)
%            Number of connectives :   34 (   0   ~;   0   |;  14   &)
%                                         (   5 <=>;  15  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    9 (   2 avg)
%            Maximal term depth    :    2 (   1 avg)
%            Number of predicates  :    6 (   6 usr;   0 prp; 1-3 aty)
%            Number of functors    :   40 (  40 usr;  39 con; 0-1 aty)
%            Number of variables   :   37 (  37   !;   0   ?)
% SPC      : FOF_SAT_RFO_NEQ

% Comments :
%------------------------------------------------------------------------------
%----Include RDFS axioms
include('Axioms/SWB003+0.ax').
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
