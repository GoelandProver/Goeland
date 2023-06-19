%------------------------------------------------------------------------------
% File     : SWB027+4 : TPTP v8.1.2. Released v5.2.0.
% Domain   : Semantic Web
% Problem  : Inferred Property Characteristics II
% Version  : [Sch11] axioms : Especial.
% English  : 

% Refs     : [Sch11] Schneider, M. (2011), Email to G. Sutcliffe
% Source   : [Sch11]
% Names    : 027_Inferred_Property_Characteristics_II [Sch11]

% Status   : CounterSatisfiable
% Rating   : 0.00 v6.0.0, 0.17 v5.5.0, 0.00 v5.2.0
% Syntax   : Number of formulae    :   82 (  63 unt;   0 def)
%            Number of atoms       :  115 (   0 equ)
%            Maximal formula atoms :    6 (   1 avg)
%            Number of connectives :   33 (   0   ~;   0   |;  13   &)
%                                         (   5 <=>;  15  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    9 (   2 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :    6 (   6 usr;   0 prp; 1-3 aty)
%            Number of functors    :   38 (  38 usr;  38 con; 0-0 aty)
%            Number of variables   :   40 (  37   !;   3   ?)
% SPC      : FOF_CSA_EPR_NEQ

% Comments :
%------------------------------------------------------------------------------
%----Include RDFS axioms
include('Axioms/SWB003+0.ax').
%------------------------------------------------------------------------------
fof(testcase_conclusion_fullish_027_Inferred_Property_Characteristics_II,conjecture,
    iext(uri_rdf_type,uri_ex_p,uri_owl_InverseFunctionalProperty) ).

fof(testcase_premise_fullish_027_Inferred_Property_Characteristics_II,axiom,
    ? [BNODE_l1,BNODE_l2,BNODE_v] :
      ( iext(uri_owl_propertyChainAxiom,uri_owl_sameAs,BNODE_l1)
      & iext(uri_rdf_first,BNODE_l1,uri_ex_p)
      & iext(uri_rdf_rest,BNODE_l1,BNODE_l2)
      & iext(uri_rdf_first,BNODE_l2,BNODE_v)
      & iext(uri_rdf_rest,BNODE_l2,uri_rdf_nil)
      & iext(uri_owl_inverseOf,BNODE_v,uri_ex_p) ) ).

%------------------------------------------------------------------------------
