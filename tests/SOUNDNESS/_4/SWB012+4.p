%------------------------------------------------------------------------------
% File     : SWB012+4 : TPTP v8.1.2. Released v5.2.0.
% Domain   : Semantic Web
% Problem  : Template Class
% Version  : [Sch11] axioms : Especial.
% English  : 

% Refs     : [Sch11] Schneider, M. (2011), Email to G. Sutcliffe
% Source   : [Sch11]
% Names    : 012_Template_Class [Sch11]

% Status   : CounterSatisfiable
% Rating   : 0.00 v6.3.0, 0.17 v6.2.0, 0.33 v6.1.0, 0.20 v6.0.0, 0.14 v5.5.0, 0.00 v5.4.0, 0.13 v5.3.0, 0.15 v5.2.0
% Syntax   : Number of formulae    :   82 (  62 unt;   0 def)
%            Number of atoms       :  123 (   0 equ)
%            Maximal formula atoms :   13 (   1 avg)
%            Number of connectives :   41 (   0   ~;   0   |;  21   &)
%                                         (   5 <=>;  15  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   17 (   2 avg)
%            Maximal term depth    :    2 (   1 avg)
%            Number of predicates  :    6 (   6 usr;   0 prp; 1-3 aty)
%            Number of functors    :   46 (  46 usr;  45 con; 0-1 aty)
%            Number of variables   :   41 (  37   !;   4   ?)
% SPC      : FOF_CSA_RFO_NEQ

% Comments :
%------------------------------------------------------------------------------
%----Include RDFS axioms
include('Axioms/SWB003+0.ax').
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
