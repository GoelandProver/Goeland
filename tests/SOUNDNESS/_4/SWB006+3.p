%------------------------------------------------------------------------------
% File     : SWB006+3 : TPTP v8.1.2. Released v5.2.0.
% Domain   : Semantic Web
% Problem  : Literal Values represented by URIs and Blank Nodes
% Version  : [Sch11] axioms : Incomplete.
% English  : 

% Refs     : [Sch11] Schneider, M. (2011), Email to G. Sutcliffe
% Source   : [Sch11]
% Names    : 006_Literal_Values_represented_by_URIs_and_Blank_Nodes [Sch11]

% Status   : CounterSatisfiable
% Rating   : 0.00 v7.5.0, 0.67 v7.4.0, 0.33 v7.3.0, 0.00 v7.1.0, 0.33 v6.4.0, 0.00 v6.3.0, 0.50 v6.2.0, 0.91 v6.1.0, 0.96 v6.0.0, 1.00 v5.5.0, 0.96 v5.4.0, 1.00 v5.2.0
% Syntax   : Number of formulae    :  140 (  74 unt;   0 def)
%            Number of atoms       :  314 (   0 equ)
%            Maximal formula atoms :   15 (   2 avg)
%            Number of connectives :  177 (   3   ~;   3   |;  76   &)
%                                         (  38 <=>;  57  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   18 (   3 avg)
%            Maximal term depth    :    2 (   1 avg)
%            Number of predicates  :   11 (  11 usr;   0 prp; 1-3 aty)
%            Number of functors    :   52 (  52 usr;  51 con; 0-1 aty)
%            Number of variables   :  160 ( 157   !;   3   ?)
% SPC      : FOF_CSA_RFO_NEQ

% Comments :
%------------------------------------------------------------------------------
%----Include ALCO Full Extensional axioms
include('Axioms/SWB002+0.ax').
%------------------------------------------------------------------------------
fof(testcase_conclusion_fullish_006_Literal_Values_represented_by_URIs_and_Blank_Nodes,conjecture,
    iext(uri_owl_sameAs,uri_ex_u,uri_ex_w) ).

fof(testcase_premise_fullish_006_Literal_Values_represented_by_URIs_and_Blank_Nodes,axiom,
    ? [BNODE_x] :
      ( iext(uri_owl_sameAs,uri_ex_u,literal_plain(dat_str_abc))
      & iext(uri_owl_sameAs,BNODE_x,literal_plain(dat_str_abc))
      & iext(uri_owl_sameAs,BNODE_x,uri_ex_w) ) ).

%------------------------------------------------------------------------------
