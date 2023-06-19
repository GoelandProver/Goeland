%------------------------------------------------------------------------------
% File     : SWB020+4 : TPTP v8.1.2. Released v5.2.0.
% Domain   : Semantic Web
% Problem  : Logical Complications
% Version  : [Sch11] axioms : Especial.
% English  : 

% Refs     : [Sch11] Schneider, M. (2011), Email to G. Sutcliffe
% Source   : [Sch11]
% Names    : 020_Logical_Complications [Sch11]

% Status   : CounterSatisfiable
% Rating   : 0.00 v5.2.0
% Syntax   : Number of formulae    :   82 (  63 unt;   0 def)
%            Number of atoms       :  124 (   0 equ)
%            Maximal formula atoms :   15 (   1 avg)
%            Number of connectives :   42 (   0   ~;   0   |;  22   &)
%                                         (   5 <=>;  15  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   22 (   2 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :    6 (   6 usr;   0 prp; 1-3 aty)
%            Number of functors    :   42 (  42 usr;  42 con; 0-0 aty)
%            Number of variables   :   44 (  37   !;   7   ?)
% SPC      : FOF_CSA_EPR_NEQ

% Comments :
%------------------------------------------------------------------------------
%----Include RDFS axioms
include('Axioms/SWB003+0.ax').
%------------------------------------------------------------------------------
fof(testcase_conclusion_fullish_020_Logical_Complications,conjecture,
    iext(uri_rdfs_subClassOf,uri_ex_d,uri_ex_c3) ).

fof(testcase_premise_fullish_020_Logical_Complications,axiom,
    ? [BNODE_xs,BNODE_xc,BNODE_lu1,BNODE_lu2,BNODE_lu3,BNODE_li1,BNODE_li2] :
      ( iext(uri_owl_unionOf,uri_ex_c,BNODE_lu1)
      & iext(uri_rdf_first,BNODE_lu1,uri_ex_c1)
      & iext(uri_rdf_rest,BNODE_lu1,BNODE_lu2)
      & iext(uri_rdf_first,BNODE_lu2,uri_ex_c2)
      & iext(uri_rdf_rest,BNODE_lu2,BNODE_lu3)
      & iext(uri_rdf_first,BNODE_lu3,uri_ex_c3)
      & iext(uri_rdf_rest,BNODE_lu3,uri_rdf_nil)
      & iext(uri_owl_disjointWith,uri_ex_d,uri_ex_c1)
      & iext(uri_rdfs_subClassOf,uri_ex_d,BNODE_xs)
      & iext(uri_owl_intersectionOf,BNODE_xs,BNODE_li1)
      & iext(uri_rdf_first,BNODE_li1,uri_ex_c)
      & iext(uri_rdf_rest,BNODE_li1,BNODE_li2)
      & iext(uri_rdf_first,BNODE_li2,BNODE_xc)
      & iext(uri_rdf_rest,BNODE_li2,uri_rdf_nil)
      & iext(uri_owl_complementOf,BNODE_xc,uri_ex_c2) ) ).

%------------------------------------------------------------------------------
