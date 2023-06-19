%------------------------------------------------------------------------------
% File     : SWB022+4 : TPTP v8.1.2. Released v5.2.0.
% Domain   : Semantic Web
% Problem  : List Member Access
% Version  : [Sch11] axioms : Especial.
% English  : 

% Refs     : [Sch11] Schneider, M. (2011), Email to G. Sutcliffe
% Source   : [Sch11]
% Names    : 022_List_Member_Access [Sch11]

% Status   : CounterSatisfiable
% Rating   : 0.00 v5.2.0
% Syntax   : Number of formulae    :   82 (  62 unt;   0 def)
%            Number of atoms       :  130 (   0 equ)
%            Maximal formula atoms :   19 (   1 avg)
%            Number of connectives :   48 (   0   ~;   0   |;  28   &)
%                                         (   5 <=>;  15  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   27 (   2 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :    6 (   6 usr;   0 prp; 1-3 aty)
%            Number of functors    :   41 (  41 usr;  41 con; 0-0 aty)
%            Number of variables   :   45 (  37   !;   8   ?)
% SPC      : FOF_CSA_EPR_NEQ

% Comments :
%------------------------------------------------------------------------------
%----Include RDFS axioms
include('Axioms/SWB003+0.ax').
%------------------------------------------------------------------------------
fof(testcase_conclusion_fullish_022_List_Member_Access,conjecture,
    ( iext(uri_skos_member,uri_ex_MyOrderedCollection,uri_ex_X)
    & iext(uri_skos_member,uri_ex_MyOrderedCollection,uri_ex_Y)
    & iext(uri_skos_member,uri_ex_MyOrderedCollection,uri_ex_Z) ) ).

fof(testcase_premise_fullish_022_List_Member_Access,axiom,
    ? [BNODE_pL,BNODE_l11,BNODE_l12,BNODE_l21,BNODE_l22,BNODE_l31,BNODE_l32,BNODE_l33] :
      ( iext(uri_rdfs_subPropertyOf,uri_skos_memberList,BNODE_pL)
      & iext(uri_owl_propertyChainAxiom,uri_skos_member,BNODE_l11)
      & iext(uri_rdf_first,BNODE_l11,BNODE_pL)
      & iext(uri_rdf_rest,BNODE_l11,BNODE_l12)
      & iext(uri_rdf_first,BNODE_l12,uri_rdf_first)
      & iext(uri_rdf_rest,BNODE_l12,uri_rdf_nil)
      & iext(uri_owl_propertyChainAxiom,BNODE_pL,BNODE_l21)
      & iext(uri_rdf_first,BNODE_l21,BNODE_pL)
      & iext(uri_rdf_rest,BNODE_l21,BNODE_l22)
      & iext(uri_rdf_first,BNODE_l22,uri_rdf_rest)
      & iext(uri_rdf_rest,BNODE_l22,uri_rdf_nil)
      & iext(uri_rdf_type,uri_ex_MyOrderedCollection,uri_skos_OrderedCollection)
      & iext(uri_skos_memberList,uri_ex_MyOrderedCollection,BNODE_l31)
      & iext(uri_rdf_first,BNODE_l31,uri_ex_X)
      & iext(uri_rdf_rest,BNODE_l31,BNODE_l32)
      & iext(uri_rdf_first,BNODE_l32,uri_ex_Y)
      & iext(uri_rdf_rest,BNODE_l32,BNODE_l33)
      & iext(uri_rdf_first,BNODE_l33,uri_ex_Z)
      & iext(uri_rdf_rest,BNODE_l33,uri_rdf_nil) ) ).

%------------------------------------------------------------------------------
