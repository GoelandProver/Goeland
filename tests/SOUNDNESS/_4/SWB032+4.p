%------------------------------------------------------------------------------
% File     : SWB032+4 : TPTP v8.1.2. Released v5.2.0.
% Domain   : Semantic Web
% Problem  : Datatype Relationships
% Version  : [Sch11] axioms : Especial.
% English  : 

% Refs     : [Sch11] Schneider, M. (2011), Email to G. Sutcliffe
% Source   : [Sch11]
% Names    : 032_Datatype_Relationships [Sch11]

% Status   : CounterSatisfiable
% Rating   : 0.00 v6.1.0, 0.17 v6.0.0, 0.00 v5.2.0
% Syntax   : Number of formulae    :   81 (  62 unt;   0 def)
%            Number of atoms       :  110 (   0 equ)
%            Maximal formula atoms :    5 (   1 avg)
%            Number of connectives :   29 (   0   ~;   0   |;   9   &)
%                                         (   5 <=>;  15  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    9 (   2 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :    6 (   6 usr;   0 prp; 1-3 aty)
%            Number of functors    :   37 (  37 usr;  37 con; 0-0 aty)
%            Number of variables   :   37 (  37   !;   0   ?)
% SPC      : FOF_CSA_EPR_NEQ

% Comments :
%------------------------------------------------------------------------------
%----Include RDFS axioms
include('Axioms/SWB003+0.ax').
%------------------------------------------------------------------------------
fof(testcase_conclusion_fullish_032_Datatype_Relationships,conjecture,
    ( iext(uri_owl_disjointWith,uri_xsd_decimal,uri_xsd_string)
    & iext(uri_rdfs_subClassOf,uri_xsd_integer,uri_xsd_decimal) ) ).

%------------------------------------------------------------------------------
