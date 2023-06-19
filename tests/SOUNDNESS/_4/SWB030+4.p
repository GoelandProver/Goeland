%------------------------------------------------------------------------------
% File     : SWB030+4 : TPTP v8.1.2. Released v5.2.0.
% Domain   : Semantic Web
% Problem  : Bad Class
% Version  : [Sch11] axioms : Especial.
% English  : 

% Refs     : [Sch11] Schneider, M. (2011), Email to G. Sutcliffe
% Source   : [Sch11]
% Names    : 030_Bad_Class [Sch11]

% Status   : Satisfiable
% Rating   : 0.00 v6.1.0, 0.20 v6.0.0, 0.00 v5.4.0, 0.14 v5.2.0
% Syntax   : Number of formulae    :   81 (  62 unt;   0 def)
%            Number of atoms       :  113 (   0 equ)
%            Maximal formula atoms :    5 (   1 avg)
%            Number of connectives :   32 (   0   ~;   0   |;  12   &)
%                                         (   5 <=>;  15  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    9 (   2 avg)
%            Maximal term depth    :    2 (   1 avg)
%            Number of predicates  :    6 (   6 usr;   0 prp; 1-3 aty)
%            Number of functors    :   42 (  42 usr;  41 con; 0-2 aty)
%            Number of variables   :   38 (  37   !;   1   ?)
% SPC      : FOF_SAT_RFO_NEQ

% Comments :
%------------------------------------------------------------------------------
%----Include RDFS axioms
include('Axioms/SWB003+0.ax').
%------------------------------------------------------------------------------
fof(testcase_premise_fullish_030_Bad_Class,axiom,
    ? [BNODE_x] :
      ( iext(uri_rdf_type,uri_ex_c,uri_owl_Class)
      & iext(uri_owl_complementOf,uri_ex_c,BNODE_x)
      & iext(uri_rdf_type,BNODE_x,uri_owl_Restriction)
      & iext(uri_owl_onProperty,BNODE_x,uri_rdf_type)
      & iext(uri_owl_hasSelf,BNODE_x,literal_typed(dat_str_true,uri_xsd_boolean)) ) ).

%------------------------------------------------------------------------------
