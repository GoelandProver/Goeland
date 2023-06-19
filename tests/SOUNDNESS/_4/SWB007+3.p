%------------------------------------------------------------------------------
% File     : SWB007+3 : TPTP v8.1.2. Released v5.2.0.
% Domain   : Semantic Web
% Problem  : Equal Classes
% Version  : [Sch11] axioms : Incomplete.
% English  : 

% Refs     : [Sch11] Schneider, M. (2011), Email to G. Sutcliffe
% Source   : [Sch11]
% Names    : 007_Equal_Classes [Sch11]

% Status   : CounterSatisfiable
% Rating   : 0.00 v7.5.0, 0.67 v7.4.0, 0.33 v7.3.0, 0.00 v7.1.0, 0.33 v6.4.0, 0.25 v6.3.0, 0.50 v6.2.0, 0.78 v6.1.0, 0.70 v6.0.0, 0.86 v5.5.0, 0.71 v5.4.0, 0.93 v5.3.0, 0.92 v5.2.0
% Syntax   : Number of formulae    :  140 (  73 unt;   0 def)
%            Number of atoms       :  317 (   0 equ)
%            Maximal formula atoms :   15 (   2 avg)
%            Number of connectives :  180 (   3   ~;   3   |;  79   &)
%                                         (  38 <=>;  57  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   18 (   3 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :   11 (  11 usr;   0 prp; 1-3 aty)
%            Number of functors    :   53 (  53 usr;  53 con; 0-0 aty)
%            Number of variables   :  159 ( 157   !;   2   ?)
% SPC      : FOF_CSA_RFO_NEQ

% Comments :
%------------------------------------------------------------------------------
%----Include ALCO Full Extensional axioms
include('Axioms/SWB002+0.ax').
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
