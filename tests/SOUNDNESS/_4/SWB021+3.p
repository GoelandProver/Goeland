%------------------------------------------------------------------------------
% File     : SWB021+3 : TPTP v8.1.2. Released v5.2.0.
% Domain   : Semantic Web
% Problem  : Composite Enumerations
% Version  : [Sch11] axioms : Incomplete.
% English  : 

% Refs     : [Sch11] Schneider, M. (2011), Email to G. Sutcliffe
% Source   : [Sch11]
% Names    : 021_Composite_Enumerations [Sch11]

% Status   : CounterSatisfiable
% Rating   : 0.00 v8.1.0, 0.33 v7.5.0, 0.67 v7.4.0, 0.33 v7.1.0, 0.67 v6.4.0, 0.50 v6.3.0, 0.67 v6.2.0, 0.89 v6.1.0, 0.90 v6.0.0, 1.00 v5.5.0, 0.86 v5.4.0, 1.00 v5.2.0
% Syntax   : Number of formulae    :  140 (  74 unt;   0 def)
%            Number of atoms       :  333 (   0 equ)
%            Maximal formula atoms :   22 (   2 avg)
%            Number of connectives :  196 (   3   ~;   3   |;  95   &)
%                                         (  38 <=>;  57  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   31 (   3 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :   11 (  11 usr;   0 prp; 1-3 aty)
%            Number of functors    :   56 (  56 usr;  56 con; 0-0 aty)
%            Number of variables   :  168 ( 157   !;  11   ?)
% SPC      : FOF_CSA_RFO_NEQ

% Comments :
%------------------------------------------------------------------------------
%----Include ALCO Full Extensional axioms
include('Axioms/SWB002+0.ax').
%------------------------------------------------------------------------------
fof(testcase_conclusion_fullish_021_Composite_Enumerations,conjecture,
    iext(uri_owl_equivalentClass,uri_ex_c3,uri_ex_c4) ).

fof(testcase_premise_fullish_021_Composite_Enumerations,axiom,
    ? [BNODE_l11,BNODE_l12,BNODE_l21,BNODE_l22,BNODE_l31,BNODE_l32,BNODE_l33,BNODE_l41,BNODE_l42] :
      ( iext(uri_owl_oneOf,uri_ex_c1,BNODE_l11)
      & iext(uri_rdf_first,BNODE_l11,uri_ex_w1)
      & iext(uri_rdf_rest,BNODE_l11,BNODE_l12)
      & iext(uri_rdf_first,BNODE_l12,uri_ex_w2)
      & iext(uri_rdf_rest,BNODE_l12,uri_rdf_nil)
      & iext(uri_owl_oneOf,uri_ex_c2,BNODE_l21)
      & iext(uri_rdf_first,BNODE_l21,uri_ex_w2)
      & iext(uri_rdf_rest,BNODE_l21,BNODE_l22)
      & iext(uri_rdf_first,BNODE_l22,uri_ex_w3)
      & iext(uri_rdf_rest,BNODE_l22,uri_rdf_nil)
      & iext(uri_owl_oneOf,uri_ex_c3,BNODE_l31)
      & iext(uri_rdf_first,BNODE_l31,uri_ex_w1)
      & iext(uri_rdf_rest,BNODE_l31,BNODE_l32)
      & iext(uri_rdf_first,BNODE_l32,uri_ex_w2)
      & iext(uri_rdf_rest,BNODE_l32,BNODE_l33)
      & iext(uri_rdf_first,BNODE_l33,uri_ex_w3)
      & iext(uri_rdf_rest,BNODE_l33,uri_rdf_nil)
      & iext(uri_owl_unionOf,uri_ex_c4,BNODE_l41)
      & iext(uri_rdf_first,BNODE_l41,uri_ex_c1)
      & iext(uri_rdf_rest,BNODE_l41,BNODE_l42)
      & iext(uri_rdf_first,BNODE_l42,uri_ex_c2)
      & iext(uri_rdf_rest,BNODE_l42,uri_rdf_nil) ) ).

%------------------------------------------------------------------------------
