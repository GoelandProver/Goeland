%------------------------------------------------------------------------------
% File     : SWB013+4 : TPTP v8.1.2. Released v5.2.0.
% Domain   : Semantic Web
% Problem  : Cliques
% Version  : [Sch11] axioms : Especial.
% English  : 

% Refs     : [Sch11] Schneider, M. (2011), Email to G. Sutcliffe
% Source   : [Sch11]
% Names    : 013_Cliques [Sch11]

% Status   : CounterSatisfiable
% Rating   : 0.00 v5.2.0
% Syntax   : Number of formulae    :   82 (  63 unt;   0 def)
%            Number of atoms       :  128 (   0 equ)
%            Maximal formula atoms :   19 (   1 avg)
%            Number of connectives :   46 (   0   ~;   0   |;  26   &)
%                                         (   5 <=>;  15  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   24 (   2 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :    6 (   6 usr;   0 prp; 1-3 aty)
%            Number of functors    :   47 (  47 usr;  47 con; 0-0 aty)
%            Number of variables   :   42 (  37   !;   5   ?)
% SPC      : FOF_CSA_EPR_NEQ

% Comments :
%------------------------------------------------------------------------------
%----Include RDFS axioms
include('Axioms/SWB003+0.ax').
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
