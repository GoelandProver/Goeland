%------------------------------------------------------------------------------
% File     : SWB006+4 : TPTP v8.1.2. Released v5.2.0.
% Domain   : Semantic Web
% Problem  : Literal Values represented by URIs and Blank Nodes
% Version  : [Sch11] axioms : Especial.
% English  : 

% Refs     : [Sch11] Schneider, M. (2011), Email to G. Sutcliffe
% Source   : [Sch11]
% Names    : 006_Literal_Values_represented_by_URIs_and_Blank_Nodes [Sch11]

% Status   : CounterSatisfiable
% Rating   : 0.00 v6.2.0, 0.11 v6.1.0, 0.10 v6.0.0, 0.00 v5.4.0, 0.07 v5.3.0, 0.15 v5.2.0
% Syntax   : Number of formulae    :   82 (  63 unt;   0 def)
%            Number of atoms       :  112 (   0 equ)
%            Maximal formula atoms :    5 (   1 avg)
%            Number of connectives :   30 (   0   ~;   0   |;  10   &)
%                                         (   5 <=>;  15  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    9 (   2 avg)
%            Maximal term depth    :    2 (   1 avg)
%            Number of predicates  :    6 (   6 usr;   0 prp; 1-3 aty)
%            Number of functors    :   38 (  38 usr;  37 con; 0-1 aty)
%            Number of variables   :   38 (  37   !;   1   ?)
% SPC      : FOF_CSA_RFO_NEQ

% Comments :
%------------------------------------------------------------------------------
%----Include RDFS axioms
include('Axioms/SWB003+0.ax').
%------------------------------------------------------------------------------
fof(testcase_conclusion_fullish_006_Literal_Values_represented_by_URIs_and_Blank_Nodes,conjecture,
    iext(uri_owl_sameAs,uri_ex_u,uri_ex_w) ).

fof(testcase_premise_fullish_006_Literal_Values_represented_by_URIs_and_Blank_Nodes,axiom,
    ? [BNODE_x] :
      ( iext(uri_owl_sameAs,uri_ex_u,literal_plain(dat_str_abc))
      & iext(uri_owl_sameAs,BNODE_x,literal_plain(dat_str_abc))
      & iext(uri_owl_sameAs,BNODE_x,uri_ex_w) ) ).

%------------------------------------------------------------------------------
