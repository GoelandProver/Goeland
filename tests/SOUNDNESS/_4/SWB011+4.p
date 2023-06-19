%------------------------------------------------------------------------------
% File     : SWB011+4 : TPTP v8.1.2. Released v5.2.0.
% Domain   : Semantic Web
% Problem  : Entity Types as Classes
% Version  : [Sch11] axioms : Especial.
% English  : 

% Refs     : [Sch11] Schneider, M. (2011), Email to G. Sutcliffe
% Source   : [Sch11]
% Names    : 011_Entity_Types_as_Classes [Sch11]

% Status   : Satisfiable
% Rating   : 0.00 v5.2.0
% Syntax   : Number of formulae    :   81 (  62 unt;   0 def)
%            Number of atoms       :  111 (   0 equ)
%            Maximal formula atoms :    5 (   1 avg)
%            Number of connectives :   30 (   0   ~;   0   |;  10   &)
%                                         (   5 <=>;  15  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    9 (   2 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :    6 (   6 usr;   0 prp; 1-3 aty)
%            Number of functors    :   37 (  37 usr;  37 con; 0-0 aty)
%            Number of variables   :   37 (  37   !;   0   ?)
% SPC      : FOF_SAT_EPR_NEQ

% Comments :
%------------------------------------------------------------------------------
%----Include RDFS axioms
include('Axioms/SWB003+0.ax').
%------------------------------------------------------------------------------
fof(testcase_premise_fullish_011_Entity_Types_as_Classes,axiom,
    ( iext(uri_owl_disjointWith,uri_owl_Class,uri_owl_ObjectProperty)
    & iext(uri_rdf_type,uri_ex_x,uri_owl_Class)
    & iext(uri_rdf_type,uri_ex_x,uri_owl_ObjectProperty) ) ).

%------------------------------------------------------------------------------
