%------------------------------------------------------------------------------
% File     : SWB024+3 : TPTP v8.1.2. Released v5.2.0.
% Domain   : Semantic Web
% Problem  : Cardinality Restrictions on Complex Properties
% Version  : [Sch11] axioms : Incomplete.
% English  : 

% Refs     : [Sch11] Schneider, M. (2011), Email to G. Sutcliffe
% Source   : [Sch11]
% Names    : 024_Cardinality_Restrictions_on_Complex_Properties [Sch11]

% Status   : CounterSatisfiable
% Rating   : 0.00 v7.5.0, 0.67 v7.4.0, 0.33 v7.3.0, 0.00 v7.1.0, 0.33 v6.4.0, 0.00 v6.3.0, 0.50 v6.2.0, 0.91 v6.1.0, 0.96 v6.0.0, 1.00 v5.5.0, 0.96 v5.4.0, 1.00 v5.2.0
% Syntax   : Number of formulae    :  140 (  73 unt;   0 def)
%            Number of atoms       :  320 (   0 equ)
%            Maximal formula atoms :   15 (   2 avg)
%            Number of connectives :  183 (   3   ~;   3   |;  82   &)
%                                         (  38 <=>;  57  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   18 (   3 avg)
%            Maximal term depth    :    2 (   1 avg)
%            Number of predicates  :   11 (  11 usr;   0 prp; 1-3 aty)
%            Number of functors    :   56 (  56 usr;  55 con; 0-2 aty)
%            Number of variables   :  161 ( 157   !;   4   ?)
% SPC      : FOF_CSA_RFO_NEQ

% Comments :
%------------------------------------------------------------------------------
%----Include ALCO Full Extensional axioms
include('Axioms/SWB002+0.ax').
%------------------------------------------------------------------------------
fof(testcase_conclusion_fullish_024_Cardinality_Restrictions_on_Complex_Properties,conjecture,
    ? [BNODE_x] :
      ( iext(uri_ex_hasAncestor,uri_ex_bob,BNODE_x)
      & iext(uri_ex_hasAncestor,uri_ex_alice,BNODE_x) ) ).

fof(testcase_premise_fullish_024_Cardinality_Restrictions_on_Complex_Properties,axiom,
    ? [BNODE_z] :
      ( iext(uri_rdf_type,uri_ex_hasAncestor,uri_owl_TransitiveProperty)
      & iext(uri_rdfs_subClassOf,uri_ex_Person,BNODE_z)
      & iext(uri_rdf_type,BNODE_z,uri_owl_Restriction)
      & iext(uri_owl_onProperty,BNODE_z,uri_ex_hasAncestor)
      & iext(uri_owl_minCardinality,BNODE_z,literal_typed(dat_str_1,uri_xsd_nonNegativeInteger))
      & iext(uri_rdf_type,uri_ex_alice,uri_ex_Person)
      & iext(uri_rdf_type,uri_ex_bob,uri_ex_Person)
      & iext(uri_ex_hasAncestor,uri_ex_alice,uri_ex_bob) ) ).

%------------------------------------------------------------------------------
