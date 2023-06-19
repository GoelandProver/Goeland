%------------------------------------------------------------------------------
% File     : SWB026+4 : TPTP v8.1.2. Released v5.2.0.
% Domain   : Semantic Web
% Problem  : Inferred Property Characteristics I
% Version  : [Sch11] axioms : Especial.
% English  : 

% Refs     : [Sch11] Schneider, M. (2011), Email to G. Sutcliffe
% Source   : [Sch11]
% Names    : 026_Inferred_Property_Characteristics_I [Sch11]

% Status   : CounterSatisfiable
% Rating   : 0.00 v5.5.0, 0.10 v5.4.0, 0.00 v5.2.0
% Syntax   : Number of formulae    :   82 (  63 unt;   0 def)
%            Number of atoms       :  117 (   0 equ)
%            Maximal formula atoms :    8 (   1 avg)
%            Number of connectives :   35 (   0   ~;   0   |;  15   &)
%                                         (   5 <=>;  15  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   12 (   2 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :    6 (   6 usr;   0 prp; 1-3 aty)
%            Number of functors    :   38 (  38 usr;  38 con; 0-0 aty)
%            Number of variables   :   41 (  37   !;   4   ?)
% SPC      : FOF_CSA_EPR_NEQ

% Comments :
%------------------------------------------------------------------------------
%----Include RDFS axioms
include('Axioms/SWB003+0.ax').
%------------------------------------------------------------------------------
fof(testcase_conclusion_fullish_026_Inferred_Property_Characteristics_I,conjecture,
    iext(uri_rdf_type,uri_ex_p,uri_owl_InverseFunctionalProperty) ).

fof(testcase_premise_fullish_026_Inferred_Property_Characteristics_I,axiom,
    ? [BNODE_x1,BNODE_x2,BNODE_l1,BNODE_l2] :
      ( iext(uri_rdfs_domain,uri_ex_p,BNODE_x1)
      & iext(uri_owl_oneOf,BNODE_x1,BNODE_l1)
      & iext(uri_rdf_first,BNODE_l1,uri_ex_w)
      & iext(uri_rdf_rest,BNODE_l1,uri_rdf_nil)
      & iext(uri_rdfs_range,uri_ex_p,BNODE_x2)
      & iext(uri_owl_oneOf,BNODE_x2,BNODE_l2)
      & iext(uri_rdf_first,BNODE_l2,uri_ex_u)
      & iext(uri_rdf_rest,BNODE_l2,uri_rdf_nil) ) ).

%------------------------------------------------------------------------------
