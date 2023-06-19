%------------------------------------------------------------------------------
% File     : SWB023+4 : TPTP v8.1.2. Released v5.2.0.
% Domain   : Semantic Web
% Problem  : Unique List Components
% Version  : [Sch11] axioms : Especial.
% English  : 

% Refs     : [Sch11] Schneider, M. (2011), Email to G. Sutcliffe
% Source   : [Sch11]
% Names    : 023_Unique_List_Components [Sch11]

% Status   : CounterSatisfiable
% Rating   : 0.00 v5.5.0, 0.10 v5.4.0, 0.00 v5.2.0
% Syntax   : Number of formulae    :   82 (  62 unt;   0 def)
%            Number of atoms       :  117 (   0 equ)
%            Maximal formula atoms :    7 (   1 avg)
%            Number of connectives :   35 (   0   ~;   0   |;  15   &)
%                                         (   5 <=>;  15  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    9 (   2 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :    6 (   6 usr;   0 prp; 1-3 aty)
%            Number of functors    :   40 (  40 usr;  40 con; 0-0 aty)
%            Number of variables   :   39 (  37   !;   2   ?)
% SPC      : FOF_CSA_EPR_NEQ

% Comments :
%------------------------------------------------------------------------------
%----Include RDFS axioms
include('Axioms/SWB003+0.ax').
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
