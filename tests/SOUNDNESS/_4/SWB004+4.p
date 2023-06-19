%------------------------------------------------------------------------------
% File     : SWB004+4 : TPTP v8.1.2. Released v5.2.0.
% Domain   : Semantic Web
% Problem  : Axiomatic Triples
% Version  : [Sch11] axioms : Especial.
% English  : 

% Refs     : [Sch11] Schneider, M. (2011), Email to G. Sutcliffe
% Source   : [Sch11]
% Names    : 004_Axiomatic_Triples [Sch11]

% Status   : CounterSatisfiable
% Rating   : 0.00 v5.2.0
% Syntax   : Number of formulae    :   81 (  62 unt;   0 def)
%            Number of atoms       :  113 (   0 equ)
%            Maximal formula atoms :    5 (   1 avg)
%            Number of connectives :   32 (   0   ~;   0   |;  12   &)
%                                         (   5 <=>;  15  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    9 (   2 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :    6 (   6 usr;   0 prp; 1-3 aty)
%            Number of functors    :   36 (  36 usr;  36 con; 0-0 aty)
%            Number of variables   :   37 (  37   !;   0   ?)
% SPC      : FOF_CSA_EPR_NEQ

% Comments :
%------------------------------------------------------------------------------
%----Include RDFS axioms
include('Axioms/SWB003+0.ax').
%------------------------------------------------------------------------------
fof(testcase_conclusion_fullish_004_Axiomatic_Triples,conjecture,
    ( iext(uri_rdf_type,uri_owl_Class,uri_owl_Thing)
    & iext(uri_rdf_type,uri_owl_Class,uri_owl_Class)
    & iext(uri_rdfs_subClassOf,uri_owl_Class,uri_owl_Thing)
    & iext(uri_owl_equivalentClass,uri_owl_Class,uri_rdfs_Class)
    & iext(uri_rdfs_subClassOf,uri_rdfs_Datatype,uri_owl_Class) ) ).

%------------------------------------------------------------------------------
