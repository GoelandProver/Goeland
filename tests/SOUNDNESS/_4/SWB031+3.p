%------------------------------------------------------------------------------
% File     : SWB031+3 : TPTP v8.1.2. Released v5.2.0.
% Domain   : Semantic Web
% Problem  : Large Universe
% Version  : [Sch11] axioms : Incomplete.
% English  : 

% Refs     : [Sch11] Schneider, M. (2011), Email to G. Sutcliffe
% Source   : [Sch11]
% Names    : 031_Large_Universe [Sch11]

% Status   : Satisfiable
% Rating   : 0.33 v8.1.0, 0.67 v7.1.0, 0.33 v6.2.0, 0.80 v6.0.0, 1.00 v5.5.0, 0.67 v5.4.0, 1.00 v5.2.0
% Syntax   : Number of formulae    :  139 (  73 unt;   0 def)
%            Number of atoms       :  314 (   0 equ)
%            Maximal formula atoms :   15 (   2 avg)
%            Number of connectives :  178 (   3   ~;   3   |;  77   &)
%                                         (  38 <=>;  57  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   18 (   3 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :   11 (  11 usr;   0 prp; 1-3 aty)
%            Number of functors    :   50 (  50 usr;  50 con; 0-0 aty)
%            Number of variables   :  161 ( 157   !;   4   ?)
% SPC      : FOF_SAT_RFO_NEQ

% Comments :
%------------------------------------------------------------------------------
%----Include ALCO Full Extensional axioms
include('Axioms/SWB002+0.ax').
%------------------------------------------------------------------------------
fof(testcase_premise_fullish_031_Large_Universe,axiom,
    ? [BNODE_x,BNODE_l] :
      ( iext(uri_owl_equivalentClass,uri_owl_Thing,BNODE_x)
      & iext(uri_owl_oneOf,BNODE_x,BNODE_l)
      & iext(uri_rdf_first,BNODE_l,uri_ex_w)
      & iext(uri_rdf_rest,BNODE_l,uri_rdf_nil) ) ).

%------------------------------------------------------------------------------
