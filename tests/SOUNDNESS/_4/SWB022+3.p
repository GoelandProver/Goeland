%------------------------------------------------------------------------------
% File     : SWB022+3 : TPTP v8.1.2. Released v5.2.0.
% Domain   : Semantic Web
% Problem  : List Member Access
% Version  : [Sch11] axioms : Incomplete.
% English  : 

% Refs     : [Sch11] Schneider, M. (2011), Email to G. Sutcliffe
% Source   : [Sch11]
% Names    : 022_List_Member_Access [Sch11]

% Status   : CounterSatisfiable
% Rating   : 0.00 v8.1.0, 0.33 v7.5.0, 0.67 v7.4.0, 0.33 v7.1.0, 0.67 v6.4.0, 0.25 v6.3.0, 0.50 v6.2.0, 0.89 v6.1.0, 0.90 v6.0.0, 1.00 v5.5.0, 0.86 v5.4.0, 1.00 v5.2.0
% Syntax   : Number of formulae    :  140 (  73 unt;   0 def)
%            Number of atoms       :  332 (   0 equ)
%            Maximal formula atoms :   19 (   2 avg)
%            Number of connectives :  195 (   3   ~;   3   |;  94   &)
%                                         (  38 <=>;  57  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   27 (   3 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :   11 (  11 usr;   0 prp; 1-3 aty)
%            Number of functors    :   55 (  55 usr;  55 con; 0-0 aty)
%            Number of variables   :  167 ( 157   !;  10   ?)
% SPC      : FOF_CSA_RFO_NEQ

% Comments :
%------------------------------------------------------------------------------
%----Include ALCO Full Extensional axioms
include('Axioms/SWB002+0.ax').
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
