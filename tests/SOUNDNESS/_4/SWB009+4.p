%------------------------------------------------------------------------------
% File     : SWB009+4 : TPTP v8.1.2. Released v5.2.0.
% Domain   : Semantic Web
% Problem  : Existential Restriction Entailments
% Version  : [Sch11] axioms : Especial.
% English  : 

% Refs     : [Sch11] Schneider, M. (2011), Email to G. Sutcliffe
% Source   : [Sch11]
% Names    : 009_Existential_Restriction_Entailments [Sch11]

% Status   : CounterSatisfiable
% Rating   : 0.00 v5.2.0
% Syntax   : Number of formulae    :   82 (  62 unt;   0 def)
%            Number of atoms       :  116 (   0 equ)
%            Maximal formula atoms :    6 (   1 avg)
%            Number of connectives :   34 (   0   ~;   0   |;  14   &)
%                                         (   5 <=>;  15  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    9 (   2 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :    6 (   6 usr;   0 prp; 1-3 aty)
%            Number of functors    :   41 (  41 usr;  41 con; 0-0 aty)
%            Number of variables   :   39 (  37   !;   2   ?)
% SPC      : FOF_CSA_EPR_NEQ

% Comments :
%------------------------------------------------------------------------------
%----Include RDFS axioms
include('Axioms/SWB003+0.ax').
%------------------------------------------------------------------------------
fof(testcase_conclusion_fullish_009_Existential_Restriction_Entailments,conjecture,
    ? [BNODE_x] :
      ( iext(uri_ex_p,uri_ex_s,BNODE_x)
      & iext(uri_rdf_type,BNODE_x,uri_ex_c) ) ).

fof(testcase_premise_fullish_009_Existential_Restriction_Entailments,axiom,
    ? [BNODE_z] :
      ( iext(uri_rdf_type,uri_ex_p,uri_owl_ObjectProperty)
      & iext(uri_rdf_type,uri_ex_c,uri_owl_Class)
      & iext(uri_rdf_type,uri_ex_s,BNODE_z)
      & iext(uri_rdf_type,BNODE_z,uri_owl_Restriction)
      & iext(uri_owl_onProperty,BNODE_z,uri_ex_p)
      & iext(uri_owl_someValuesFrom,BNODE_z,uri_ex_c) ) ).

%------------------------------------------------------------------------------
