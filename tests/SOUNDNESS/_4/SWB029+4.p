%------------------------------------------------------------------------------
% File     : SWB029+4 : TPTP v8.1.2. Released v5.2.0.
% Domain   : Semantic Web
% Problem  : Ex Falso Quodlibet
% Version  : [Sch11] axioms : Especial.
% English  : 

% Refs     : [Sch11] Schneider, M. (2011), Email to G. Sutcliffe
% Source   : [Sch11]
% Names    : 029_Ex_Falso_Quodlibet [Sch11]

% Status   : CounterSatisfiable
% Rating   : 0.00 v5.5.0, 0.30 v5.4.0, 0.00 v5.2.0
% Syntax   : Number of formulae    :   82 (  63 unt;   0 def)
%            Number of atoms       :  118 (   0 equ)
%            Maximal formula atoms :    9 (   1 avg)
%            Number of connectives :   36 (   0   ~;   0   |;  16   &)
%                                         (   5 <=>;  15  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   13 (   2 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :    6 (   6 usr;   0 prp; 1-3 aty)
%            Number of functors    :   39 (  39 usr;  39 con; 0-0 aty)
%            Number of variables   :   41 (  37   !;   4   ?)
% SPC      : FOF_CSA_EPR_NEQ

% Comments :
%------------------------------------------------------------------------------
%----Include RDFS axioms
include('Axioms/SWB003+0.ax').
%------------------------------------------------------------------------------
fof(testcase_conclusion_fullish_029_Ex_Falso_Quodlibet,conjecture,
    iext(uri_rdf_type,uri_ex_w,uri_ex_B) ).

fof(testcase_premise_fullish_029_Ex_Falso_Quodlibet,axiom,
    ? [BNODE_x,BNODE_y,BNODE_l1,BNODE_l2] :
      ( iext(uri_rdf_type,uri_ex_A,uri_owl_Class)
      & iext(uri_rdf_type,uri_ex_B,uri_owl_Class)
      & iext(uri_rdf_type,uri_ex_w,BNODE_x)
      & iext(uri_owl_intersectionOf,BNODE_x,BNODE_l1)
      & iext(uri_rdf_first,BNODE_l1,uri_ex_A)
      & iext(uri_rdf_rest,BNODE_l1,BNODE_l2)
      & iext(uri_rdf_first,BNODE_l2,BNODE_y)
      & iext(uri_rdf_rest,BNODE_l2,uri_rdf_nil)
      & iext(uri_owl_complementOf,BNODE_y,uri_ex_A) ) ).

%------------------------------------------------------------------------------
