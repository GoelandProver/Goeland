%------------------------------------------------------------------------------
% File     : SWB010+4 : TPTP v8.1.2. Released v5.2.0.
% Domain   : Semantic Web
% Problem  : Negative Property Assertions
% Version  : [Sch11] axioms : Especial.
% English  : 

% Refs     : [Sch11] Schneider, M. (2011), Email to G. Sutcliffe
% Source   : [Sch11]
% Names    : 010_Negative_Property_Assertions [Sch11]

% Status   : CounterSatisfiable
% Rating   : 0.00 v5.5.0, 0.10 v5.4.0, 0.00 v5.2.0
% Syntax   : Number of formulae    :   82 (  62 unt;   0 def)
%            Number of atoms       :  120 (   0 equ)
%            Maximal formula atoms :    8 (   1 avg)
%            Number of connectives :   38 (   0   ~;   0   |;  18   &)
%                                         (   5 <=>;  15  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   12 (   2 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :    6 (   6 usr;   0 prp; 1-3 aty)
%            Number of functors    :   45 (  45 usr;  45 con; 0-0 aty)
%            Number of variables   :   42 (  37   !;   5   ?)
% SPC      : FOF_CSA_EPR_NEQ

% Comments :
%------------------------------------------------------------------------------
%----Include RDFS axioms
include('Axioms/SWB003+0.ax').
%------------------------------------------------------------------------------

fof(testcase_conclusion_fullish_010_Negative_Property_Assertions,conjecture,
    ? [BNODE_z] :
      ( iext(uri_rdf_type,BNODE_z,uri_owl_NegativePropertyAssertion)
      & iext(uri_owl_sourceIndividual,BNODE_z,uri_ex_s)
      & iext(uri_owl_assertionProperty,BNODE_z,uri_ex_p)
      & iext(uri_owl_targetIndividual,BNODE_z,uri_ex_o) ) ).

fof(testcase_premise_fullish_010_Negative_Property_Assertions,axiom,
    ? [BNODE_x1,BNODE_x2,BNODE_x3,BNODE_x4] :
      ( iext(uri_rdf_type,uri_ex_p,uri_owl_ObjectProperty)
      & iext(uri_rdf_type,uri_ex_s,BNODE_x1)
      & iext(uri_owl_onProperty,BNODE_x1,uri_ex_p)
      & iext(uri_owl_allValuesFrom,BNODE_x1,BNODE_x2)
      & iext(uri_owl_complementOf,BNODE_x2,BNODE_x3)
      & iext(uri_owl_oneOf,BNODE_x3,BNODE_x4)
      & iext(uri_rdf_first,BNODE_x4,uri_ex_o)
      & iext(uri_rdf_rest,BNODE_x4,uri_rdf_nil) ) ).

%------------------------------------------------------------------------------
