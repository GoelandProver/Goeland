%------------------------------------------------------------------------------
% File     : SWB031+4 : TPTP v8.1.2. Released v5.2.0.
% Domain   : Semantic Web
% Problem  : Large Universe
% Version  : [Sch11] axioms : Especial.
% English  : 

% Refs     : [Sch11] Schneider, M. (2011), Email to G. Sutcliffe
% Source   : [Sch11]
% Names    : 031_Large_Universe [Sch11]

% Status   : Satisfiable
% Rating   : 0.00 v5.2.0
% Syntax   : Number of formulae    :   81 (  62 unt;   0 def)
%            Number of atoms       :  112 (   0 equ)
%            Maximal formula atoms :    5 (   1 avg)
%            Number of connectives :   31 (   0   ~;   0   |;  11   &)
%                                         (   5 <=>;  15  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    9 (   2 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :    6 (   6 usr;   0 prp; 1-3 aty)
%            Number of functors    :   37 (  37 usr;  37 con; 0-0 aty)
%            Number of variables   :   39 (  37   !;   2   ?)
% SPC      : FOF_SAT_EPR_NEQ

% Comments :
%------------------------------------------------------------------------------
%----Include RDFS axioms
include('Axioms/SWB003+0.ax').
%------------------------------------------------------------------------------
fof(testcase_premise_fullish_031_Large_Universe,axiom,
    ? [BNODE_x,BNODE_l] :
      ( iext(uri_owl_equivalentClass,uri_owl_Thing,BNODE_x)
      & iext(uri_owl_oneOf,BNODE_x,BNODE_l)
      & iext(uri_rdf_first,BNODE_l,uri_ex_w)
      & iext(uri_rdf_rest,BNODE_l,uri_rdf_nil) ) ).

%------------------------------------------------------------------------------
