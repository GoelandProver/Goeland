%------------------------------------------------------------------------------
% File     : SWB005+4 : TPTP v8.1.2. Released v5.2.0.
% Domain   : Semantic Web
% Problem  : Everything is a Resource
% Version  : [Sch11] axioms : Especial.
% English  : 

% Refs     : [Sch11] Schneider, M. (2011), Email to G. Sutcliffe
% Source   : [Sch11]
% Names    : 005_Everything_is_a_Resource [Sch11]

% Status   : CounterSatisfiable
% Rating   : 0.00 v5.2.0
% Syntax   : Number of formulae    :   82 (  63 unt;   0 def)
%            Number of atoms       :  117 (   0 equ)
%            Maximal formula atoms :    8 (   1 avg)
%            Number of connectives :   35 (   0   ~;   0   |;  15   &)
%                                         (   5 <=>;  15  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    9 (   2 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :    6 (   6 usr;   0 prp; 1-3 aty)
%            Number of functors    :   38 (  38 usr;  38 con; 0-0 aty)
%            Number of variables   :   37 (  37   !;   0   ?)
% SPC      : FOF_CSA_EPR_NEQ

% Comments :
%------------------------------------------------------------------------------
%----Include RDFS axioms
include('Axioms/SWB003+0.ax').
%------------------------------------------------------------------------------
fof(testcase_conclusion_fullish_005_Everything_is_a_Resource,conjecture,
    ( iext(uri_rdf_type,uri_ex_s,uri_rdfs_Resource)
    & iext(uri_rdf_type,uri_ex_s,uri_owl_Thing)
    & iext(uri_rdf_type,uri_ex_p,uri_rdfs_Resource)
    & iext(uri_rdf_type,uri_ex_p,uri_owl_Thing)
    & iext(uri_rdf_type,uri_ex_p,uri_rdf_Property)
    & iext(uri_rdf_type,uri_ex_p,uri_owl_ObjectProperty)
    & iext(uri_rdf_type,uri_ex_o,uri_rdfs_Resource)
    & iext(uri_rdf_type,uri_ex_o,uri_owl_Thing) ) ).

fof(testcase_premise_fullish_005_Everything_is_a_Resource,axiom,
    iext(uri_ex_p,uri_ex_s,uri_ex_o) ).

%------------------------------------------------------------------------------
