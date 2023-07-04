%------------------------------------------------------------------------------
% File     : SWB030+3 : TPTP v8.1.2. Released v5.2.0.
% Domain   : Semantic Web
% Problem  : Bad Class
% Version  : [Sch11] axioms : Incomplete.
% English  : 

% Refs     : [Sch11] Schneider, M. (2011), Email to G. Sutcliffe
% Source   : [Sch11]
% Names    : 030_Bad_Class [Sch11]

% Status   : Satisfiable
% Rating   : 0.33 v7.5.0, 0.67 v7.3.0, 0.33 v7.1.0, 0.00 v6.3.0, 0.33 v6.2.0, 0.75 v6.0.0, 1.00 v5.5.0, 0.67 v5.4.0, 1.00 v5.2.0
% Syntax   : Number of formulae    :  139 (  73 unt;   0 def)
%            Number of atoms       :  315 (   0 equ)
%            Maximal formula atoms :   15 (   2 avg)
%            Number of connectives :  179 (   3   ~;   3   |;  78   &)
%                                         (  38 <=>;  57  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   18 (   3 avg)
%            Maximal term depth    :    2 (   1 avg)
%            Number of predicates  :   11 (  11 usr;   0 prp; 1-3 aty)
%            Number of functors    :   53 (  53 usr;  52 con; 0-2 aty)
%            Number of variables   :  160 ( 157   !;   3   ?)
% SPC      : FOF_SAT_RFO_NEQ

% Comments :
%------------------------------------------------------------------------------
%----Include ALCO Full Extensional axioms
include('Axioms/SWB002+0.ax').
%------------------------------------------------------------------------------
fof(testcase_premise_fullish_030_Bad_Class,axiom,
    ? [BNODE_x] :
      ( iext(uri_rdf_type,uri_ex_c,uri_owl_Class)
      & iext(uri_owl_complementOf,uri_ex_c,BNODE_x)
      & iext(uri_rdf_type,BNODE_x,uri_owl_Restriction)
      & iext(uri_owl_onProperty,BNODE_x,uri_rdf_type)
      & iext(uri_owl_hasSelf,BNODE_x,literal_typed(dat_str_true,uri_xsd_boolean)) ) ).

%------------------------------------------------------------------------------
