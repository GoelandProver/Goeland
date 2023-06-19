%------------------------------------------------------------------------------
% File     : SWB025+4 : TPTP v8.1.2. Released v5.2.0.
% Domain   : Semantic Web
% Problem  : Cyclic Dependencies between Complex Properties
% Version  : [Sch11] axioms : Especial.
% English  : 

% Refs     : [Sch11] Schneider, M. (2011), Email to G. Sutcliffe
% Source   : [Sch11]
% Names    : 025_Cyclic_Dependencies_between_Complex_Properties [Sch11]

% Status   : CounterSatisfiable
% Rating   : 0.00 v5.5.0, 0.10 v5.4.0, 0.00 v5.2.0
% Syntax   : Number of formulae    :   82 (  62 unt;   0 def)
%            Number of atoms       :  125 (   0 equ)
%            Maximal formula atoms :   15 (   1 avg)
%            Number of connectives :   43 (   0   ~;   0   |;  23   &)
%                                         (   5 <=>;  15  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   20 (   2 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :    6 (   6 usr;   0 prp; 1-3 aty)
%            Number of functors    :   42 (  42 usr;  42 con; 0-0 aty)
%            Number of variables   :   42 (  37   !;   5   ?)
% SPC      : FOF_CSA_EPR_NEQ

% Comments :
%------------------------------------------------------------------------------
%----Include RDFS axioms
include('Axioms/SWB003+0.ax').
%------------------------------------------------------------------------------
fof(testcase_conclusion_fullish_025_Cyclic_Dependencies_between_Complex_Properties,conjecture,
    ( iext(uri_ex_hasUncle,uri_ex_alice,uri_ex_charly)
    & iext(uri_ex_hasCousin,uri_ex_bob,uri_ex_alice) ) ).

fof(testcase_premise_fullish_025_Cyclic_Dependencies_between_Complex_Properties,axiom,
    ? [BNODE_l11,BNODE_l12,BNODE_l21,BNODE_l22,BNODE_l3] :
      ( iext(uri_owl_propertyChainAxiom,uri_ex_hasUncle,BNODE_l11)
      & iext(uri_rdf_first,BNODE_l11,uri_ex_hasCousin)
      & iext(uri_rdf_rest,BNODE_l11,BNODE_l12)
      & iext(uri_rdf_first,BNODE_l12,uri_ex_hasFather)
      & iext(uri_rdf_rest,BNODE_l12,uri_rdf_nil)
      & iext(uri_owl_propertyChainAxiom,uri_ex_hasCousin,BNODE_l21)
      & iext(uri_rdf_first,BNODE_l21,uri_ex_hasUncle)
      & iext(uri_rdf_rest,BNODE_l21,BNODE_l22)
      & iext(uri_rdf_first,BNODE_l22,BNODE_l3)
      & iext(uri_rdf_rest,BNODE_l22,uri_rdf_nil)
      & iext(uri_owl_inverseOf,BNODE_l3,uri_ex_hasFather)
      & iext(uri_ex_hasFather,uri_ex_alice,uri_ex_dave)
      & iext(uri_ex_hasCousin,uri_ex_alice,uri_ex_bob)
      & iext(uri_ex_hasFather,uri_ex_bob,uri_ex_charly)
      & iext(uri_ex_hasUncle,uri_ex_bob,uri_ex_dave) ) ).

%------------------------------------------------------------------------------
