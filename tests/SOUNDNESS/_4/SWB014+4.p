%------------------------------------------------------------------------------
% File     : SWB014+4 : TPTP v8.1.2. Released v5.2.0.
% Domain   : Semantic Web
% Problem  : Harry belongs to some Species
% Version  : [Sch11] axioms : Especial.
% English  : 

% Refs     : [Sch11] Schneider, M. (2011), Email to G. Sutcliffe
% Source   : [Sch11]
% Names    : 014_Harry_belongs_to_some_Species [Sch11]

% Status   : CounterSatisfiable
% Rating   : 0.00 v5.2.0
% Syntax   : Number of formulae    :   82 (  62 unt;   0 def)
%            Number of atoms       :  118 (   0 equ)
%            Maximal formula atoms :    8 (   1 avg)
%            Number of connectives :   36 (   0   ~;   0   |;  16   &)
%                                         (   5 <=>;  15  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   11 (   2 avg)
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
fof(testcase_conclusion_fullish_014_Harry_belongs_to_some_Species,conjecture,
    ? [BNODE_x] :
      ( iext(uri_rdf_type,uri_ex_harry,BNODE_x)
      & iext(uri_rdf_type,BNODE_x,uri_ex_Species) ) ).

fof(testcase_premise_fullish_014_Harry_belongs_to_some_Species,axiom,
    ? [BNODE_u,BNODE_l1,BNODE_l2] :
      ( iext(uri_rdf_type,uri_ex_Eagle,uri_ex_Species)
      & iext(uri_rdf_type,uri_ex_Falcon,uri_ex_Species)
      & iext(uri_rdf_type,uri_ex_harry,BNODE_u)
      & iext(uri_owl_unionOf,BNODE_u,BNODE_l1)
      & iext(uri_rdf_first,BNODE_l1,uri_ex_Eagle)
      & iext(uri_rdf_rest,BNODE_l1,BNODE_l2)
      & iext(uri_rdf_first,BNODE_l2,uri_ex_Falcon)
      & iext(uri_rdf_rest,BNODE_l2,uri_rdf_nil) ) ).

%------------------------------------------------------------------------------
