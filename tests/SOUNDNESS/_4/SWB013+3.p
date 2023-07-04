%------------------------------------------------------------------------------
% File     : SWB013+3 : TPTP v8.1.2. Released v5.2.0.
% Domain   : Semantic Web
% Problem  : Cliques
% Version  : [Sch11] axioms : Incomplete.
% English  : 

% Refs     : [Sch11] Schneider, M. (2011), Email to G. Sutcliffe
% Source   : [Sch11]
% Names    : 013_Cliques [Sch11]

% Status   : CounterSatisfiable
% Rating   : 0.33 v7.5.0, 0.67 v7.3.0, 0.33 v7.1.0, 0.67 v6.4.0, 0.50 v6.3.0, 0.67 v6.2.0, 1.00 v5.2.0
% Syntax   : Number of formulae    :  140 (  74 unt;   0 def)
%            Number of atoms       :  330 (   0 equ)
%            Maximal formula atoms :   19 (   2 avg)
%            Number of connectives :  193 (   3   ~;   3   |;  92   &)
%                                         (  38 <=>;  57  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   24 (   3 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :   11 (  11 usr;   0 prp; 1-3 aty)
%            Number of functors    :   58 (  58 usr;  58 con; 0-0 aty)
%            Number of variables   :  164 ( 157   !;   7   ?)
% SPC      : FOF_CSA_RFO_NEQ

% Comments :
%------------------------------------------------------------------------------
%----Include ALCO Full Extensional axioms
include('Axioms/SWB002+0.ax').
%------------------------------------------------------------------------------
fof(testcase_conclusion_fullish_013_Cliques,conjecture,
    iext(uri_foaf_knows,uri_ex_alice,uri_ex_bob) ).

fof(testcase_premise_fullish_013_Cliques,axiom,
    ? [BNODE_r,BNODE_i,BNODE_l1,BNODE_l2,BNODE_l3] :
      ( iext(uri_rdf_type,uri_ex_Clique,uri_owl_Class)
      & iext(uri_rdfs_subPropertyOf,uri_ex_sameCliqueAs,uri_owl_sameAs)
      & iext(uri_rdfs_range,uri_ex_sameCliqueAs,uri_ex_Clique)
      & iext(uri_rdfs_subClassOf,uri_ex_Clique,BNODE_r)
      & iext(uri_rdf_type,BNODE_r,uri_owl_Restriction)
      & iext(uri_owl_onProperty,BNODE_r,uri_ex_sameCliqueAs)
      & iext(uri_owl_someValuesFrom,BNODE_r,uri_ex_Clique)
      & iext(uri_rdf_type,uri_foaf_knows,uri_owl_ObjectProperty)
      & iext(uri_owl_propertyChainAxiom,uri_foaf_knows,BNODE_l1)
      & iext(uri_rdf_first,BNODE_l1,uri_rdf_type)
      & iext(uri_rdf_rest,BNODE_l1,BNODE_l2)
      & iext(uri_rdf_first,BNODE_l2,uri_ex_sameCliqueAs)
      & iext(uri_rdf_rest,BNODE_l2,BNODE_l3)
      & iext(uri_rdf_first,BNODE_l3,BNODE_i)
      & iext(uri_rdf_rest,BNODE_l3,uri_rdf_nil)
      & iext(uri_owl_inverseOf,BNODE_i,uri_rdf_type)
      & iext(uri_rdf_type,uri_ex_JoesGang,uri_ex_Clique)
      & iext(uri_rdf_type,uri_ex_alice,uri_ex_JoesGang)
      & iext(uri_rdf_type,uri_ex_bob,uri_ex_JoesGang) ) ).

%------------------------------------------------------------------------------
