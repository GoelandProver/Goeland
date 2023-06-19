%------------------------------------------------------------------------------
% File     : SWB018+4 : TPTP v8.1.2. Released v5.2.0.
% Domain   : Semantic Web
% Problem  : Modified Logical Vocabulary Semantics
% Version  : [Sch11] axioms : Especial.
% English  : 

% Refs     : [Sch11] Schneider, M. (2011), Email to G. Sutcliffe
% Source   : [Sch11]
% Names    : 018_Modified_Logical_Vocabulary_Semantics [Sch11]

% Status   : CounterSatisfiable
% Rating   : 0.00 v5.2.0
% Syntax   : Number of formulae    :   82 (  63 unt;   0 def)
%            Number of atoms       :  111 (   0 equ)
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
fof(testcase_conclusion_fullish_018_Modified_Logical_Vocabulary_Semantics,conjecture,
    iext(uri_rdf_type,uri_ex_u,uri_ex_Person) ).

fof(testcase_premise_fullish_018_Modified_Logical_Vocabulary_Semantics,axiom,
    ( iext(uri_rdfs_domain,uri_owl_sameAs,uri_ex_Person)
    & iext(uri_owl_sameAs,uri_ex_w,uri_ex_u) ) ).

%------------------------------------------------------------------------------
