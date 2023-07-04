%------------------------------------------------------------------------------
% File     : SWB011+3 : TPTP v8.1.2. Released v5.2.0.
% Domain   : Semantic Web
% Problem  : Entity Types as Classes
% Version  : [Sch11] axioms : Incomplete.
% English  : 

% Refs     : [Sch11] Schneider, M. (2011), Email to G. Sutcliffe
% Source   : [Sch11]
% Names    : 011_Entity_Types_as_Classes [Sch11]

% Status   : Satisfiable
% Rating   : 0.33 v7.5.0, 0.67 v7.3.0, 0.33 v7.1.0, 0.00 v6.3.0, 0.33 v6.2.0, 0.60 v6.0.0, 0.75 v5.5.0, 0.33 v5.4.0, 0.86 v5.2.0
% Syntax   : Number of formulae    :  139 (  73 unt;   0 def)
%            Number of atoms       :  313 (   0 equ)
%            Maximal formula atoms :   15 (   2 avg)
%            Number of connectives :  177 (   3   ~;   3   |;  76   &)
%                                         (  38 <=>;  57  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   18 (   3 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :   11 (  11 usr;   0 prp; 1-3 aty)
%            Number of functors    :   51 (  51 usr;  51 con; 0-0 aty)
%            Number of variables   :  159 ( 157   !;   2   ?)
% SPC      : FOF_SAT_RFO_NEQ

% Comments :
%------------------------------------------------------------------------------
%----Include ALCO Full Extensional axioms
include('Axioms/SWB002+0.ax').
%------------------------------------------------------------------------------
fof(testcase_premise_fullish_011_Entity_Types_as_Classes,axiom,
    ( iext(uri_owl_disjointWith,uri_owl_Class,uri_owl_ObjectProperty)
    & iext(uri_rdf_type,uri_ex_x,uri_owl_Class)
    & iext(uri_rdf_type,uri_ex_x,uri_owl_ObjectProperty) ) ).

%------------------------------------------------------------------------------
