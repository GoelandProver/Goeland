%------------------------------------------------------------------------------
% File     : SWB023+3 : TPTP v8.1.2. Released v5.2.0.
% Domain   : Semantic Web
% Problem  : Unique List Components
% Version  : [Sch11] axioms : Incomplete.
% English  : 

% Refs     : [Sch11] Schneider, M. (2011), Email to G. Sutcliffe
% Source   : [Sch11]
% Names    : 023_Unique_List_Components [Sch11]

% Status   : CounterSatisfiable
% Rating   : 0.00 v8.1.0, 0.33 v7.5.0, 0.67 v7.4.0, 0.33 v7.1.0, 0.67 v6.4.0, 0.50 v6.3.0, 0.67 v6.2.0, 0.89 v6.1.0, 0.90 v6.0.0, 1.00 v5.5.0, 0.86 v5.4.0, 1.00 v5.2.0
% Syntax   : Number of formulae    :  140 (  73 unt;   0 def)
%            Number of atoms       :  319 (   0 equ)
%            Maximal formula atoms :   15 (   2 avg)
%            Number of connectives :  182 (   3   ~;   3   |;  81   &)
%                                         (  38 <=>;  57  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   18 (   3 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :   11 (  11 usr;   0 prp; 1-3 aty)
%            Number of functors    :   54 (  54 usr;  54 con; 0-0 aty)
%            Number of variables   :  161 ( 157   !;   4   ?)
% SPC      : FOF_CSA_RFO_NEQ

% Comments :
%------------------------------------------------------------------------------
%----Include ALCO Full Extensional axioms
include('Axioms/SWB002+0.ax').
%------------------------------------------------------------------------------
fof(testcase_conclusion_fullish_023_Unique_List_Components,conjecture,
    ( iext(uri_owl_sameAs,uri_ex_w,uri_ex_u)
    & iext(uri_owl_sameAs,uri_ex_w,uri_ex_v) ) ).

fof(testcase_premise_fullish_023_Unique_List_Components,axiom,
    ? [BNODE_o,BNODE_l] :
      ( iext(uri_rdf_type,uri_rdf_first,uri_owl_FunctionalProperty)
      & iext(uri_rdf_type,uri_ex_w,BNODE_o)
      & iext(uri_rdf_type,BNODE_o,uri_owl_Class)
      & iext(uri_owl_oneOf,BNODE_o,BNODE_l)
      & iext(uri_rdf_first,BNODE_l,uri_ex_u)
      & iext(uri_rdf_first,BNODE_l,uri_ex_v)
      & iext(uri_rdf_rest,BNODE_l,uri_rdf_nil) ) ).

%------------------------------------------------------------------------------
