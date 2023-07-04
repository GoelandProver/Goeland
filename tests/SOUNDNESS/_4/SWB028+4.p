%------------------------------------------------------------------------------
% File     : SWB028+4 : TPTP v8.1.2. Released v5.2.0.
% Domain   : Semantic Web
% Problem  : Inferred Property Characteristics III
% Version  : [Sch11] axioms : Especial.
% English  : 

% Refs     : [Sch11] Schneider, M. (2011), Email to G. Sutcliffe
% Source   : [Sch11]
% Names    : 028_Inferred_Property_Characteristics_III [Sch11]

% Status   : CounterSatisfiable
% Rating   : 0.00 v5.2.0
% Syntax   : Number of formulae    :   82 (  63 unt;   0 def)
%            Number of atoms       :  113 (   0 equ)
%            Maximal formula atoms :    5 (   1 avg)
%            Number of connectives :   31 (   0   ~;   0   |;  11   &)
%                                         (   5 <=>;  15  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    9 (   2 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :    6 (   6 usr;   0 prp; 1-3 aty)
%            Number of functors    :   41 (  41 usr;  41 con; 0-0 aty)
%            Number of variables   :   38 (  37   !;   1   ?)
% SPC      : FOF_CSA_EPR_NEQ

% Comments :
%------------------------------------------------------------------------------
%----Include RDFS axioms
include('Axioms/SWB003+0.ax').
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
