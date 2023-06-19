%------------------------------------------------------------------------------
% File     : SWB007+4 : TPTP v8.1.2. Released v5.2.0.
% Domain   : Semantic Web
% Problem  : Equal Classes
% Version  : [Sch11] axioms : Especial.
% English  : 

% Refs     : [Sch11] Schneider, M. (2011), Email to G. Sutcliffe
% Source   : [Sch11]
% Names    : 007_Equal_Classes [Sch11]

% Status   : CounterSatisfiable
% Rating   : 0.00 v6.1.0, 0.17 v6.0.0, 0.00 v5.2.0
% Syntax   : Number of formulae    :   82 (  62 unt;   0 def)
%            Number of atoms       :  115 (   0 equ)
%            Maximal formula atoms :    5 (   1 avg)
%            Number of connectives :   33 (   0   ~;   0   |;  13   &)
%                                         (   5 <=>;  15  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    9 (   2 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :    6 (   6 usr;   0 prp; 1-3 aty)
%            Number of functors    :   39 (  39 usr;  39 con; 0-0 aty)
%            Number of variables   :   37 (  37   !;   0   ?)
% SPC      : FOF_CSA_EPR_NEQ

% Comments :
%------------------------------------------------------------------------------
%----Include RDFS axioms
include('Axioms/SWB003+0.ax').
%------------------------------------------------------------------------------
fof(testcase_conclusion_fullish_007_Equal_Classes,conjecture,
    ( iext(uri_rdf_type,uri_ex_w,uri_ex_c2)
    & iext(uri_rdfs_subClassOf,uri_ex_c,uri_ex_c2)
    & iext(uri_rdfs_range,uri_ex_p,uri_ex_c2) ) ).

fof(testcase_premise_fullish_007_Equal_Classes,axiom,
    ( iext(uri_owl_sameAs,uri_ex_c1,uri_ex_c2)
    & iext(uri_rdf_type,uri_ex_w,uri_ex_c1)
    & iext(uri_rdfs_subClassOf,uri_ex_c,uri_ex_c1)
    & iext(uri_rdfs_range,uri_ex_p,uri_ex_c1) ) ).

%------------------------------------------------------------------------------
