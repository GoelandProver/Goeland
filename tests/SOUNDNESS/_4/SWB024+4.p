%------------------------------------------------------------------------------
% File     : SWB024+4 : TPTP v8.1.2. Released v5.2.0.
% Domain   : Semantic Web
% Problem  : Cardinality Restrictions on Complex Properties
% Version  : [Sch11] axioms : Especial.
% English  : 

% Refs     : [Sch11] Schneider, M. (2011), Email to G. Sutcliffe
% Source   : [Sch11]
% Names    : 024_Cardinality_Restrictions_on_Complex_Properties [Sch11]

% Status   : CounterSatisfiable
% Rating   : 0.00 v6.2.0, 0.11 v6.1.0, 0.10 v6.0.0, 0.00 v5.4.0, 0.13 v5.3.0, 0.15 v5.2.0
% Syntax   : Number of formulae    :   82 (  62 unt;   0 def)
%            Number of atoms       :  118 (   0 equ)
%            Maximal formula atoms :    8 (   1 avg)
%            Number of connectives :   36 (   0   ~;   0   |;  16   &)
%                                         (   5 <=>;  15  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    9 (   2 avg)
%            Maximal term depth    :    2 (   1 avg)
%            Number of predicates  :    6 (   6 usr;   0 prp; 1-3 aty)
%            Number of functors    :   44 (  44 usr;  43 con; 0-2 aty)
%            Number of variables   :   39 (  37   !;   2   ?)
% SPC      : FOF_CSA_RFO_NEQ

% Comments :
%------------------------------------------------------------------------------
%----Include RDFS axioms
include('Axioms/SWB003+0.ax').
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
