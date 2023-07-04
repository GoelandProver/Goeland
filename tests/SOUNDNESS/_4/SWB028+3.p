%------------------------------------------------------------------------------
% File     : SWB028+3 : TPTP v8.1.2. Released v5.2.0.
% Domain   : Semantic Web
% Problem  : Inferred Property Characteristics III
% Version  : [Sch11] axioms : Incomplete.
% English  : 

% Refs     : [Sch11] Schneider, M. (2011), Email to G. Sutcliffe
% Source   : [Sch11]
% Names    : 028_Inferred_Property_Characteristics_III [Sch11]

% Status   : CounterSatisfiable
% Rating   : 0.00 v7.5.0, 0.67 v7.4.0, 0.33 v7.3.0, 0.00 v7.1.0, 0.33 v7.0.0, 0.67 v6.4.0, 0.00 v6.3.0, 0.50 v6.2.0, 0.67 v6.1.0, 0.70 v6.0.0, 0.86 v5.5.0, 0.71 v5.4.0, 0.93 v5.3.0, 0.92 v5.2.0
% Syntax   : Number of formulae    :  140 (  74 unt;   0 def)
%            Number of atoms       :  315 (   0 equ)
%            Maximal formula atoms :   15 (   2 avg)
%            Number of connectives :  178 (   3   ~;   3   |;  77   &)
%                                         (  38 <=>;  57  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   18 (   3 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :   11 (  11 usr;   0 prp; 1-3 aty)
%            Number of functors    :   52 (  52 usr;  52 con; 0-0 aty)
%            Number of variables   :  160 ( 157   !;   3   ?)
% SPC      : FOF_CSA_RFO_NEQ

% Comments :
%------------------------------------------------------------------------------
%----Include ALCO Full Extensional axioms
include('Axioms/SWB002+0.ax').
%------------------------------------------------------------------------------
fof(testcase_conclusion_fullish_028_Inferred_Property_Characteristics_III,conjecture,
    iext(uri_rdfs_subClassOf,uri_ex_InversesOfFunctionalProperties,uri_owl_InverseFunctionalProperty) ).

fof(testcase_premise_fullish_028_Inferred_Property_Characteristics_III,axiom,
    ? [BNODE_z] :
      ( iext(uri_owl_equivalentClass,uri_ex_InversesOfFunctionalProperties,BNODE_z)
      & iext(uri_rdf_type,BNODE_z,uri_owl_Restriction)
      & iext(uri_owl_onProperty,BNODE_z,uri_owl_inverseOf)
      & iext(uri_owl_someValuesFrom,BNODE_z,uri_owl_FunctionalProperty) ) ).

%------------------------------------------------------------------------------
