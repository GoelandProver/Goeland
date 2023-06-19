%------------------------------------------------------------------------------
% File     : SWB008+4 : TPTP v8.1.2. Released v5.2.0.
% Domain   : Semantic Web
% Problem  : Inverse Functional Data Properties
% Version  : [Sch11] axioms : Especial.
% English  : 

% Refs     : [Sch11] Schneider, M. (2011), Email to G. Sutcliffe
% Source   : [Sch11]
% Names    : 008_Inverse_Functional_Data_Properties [Sch11]

% Status   : CounterSatisfiable
% Rating   : 0.00 v5.4.0, 0.07 v5.3.0, 0.15 v5.2.0
% Syntax   : Number of formulae    :   82 (  63 unt;   0 def)
%            Number of atoms       :  113 (   0 equ)
%            Maximal formula atoms :    5 (   1 avg)
%            Number of connectives :   31 (   0   ~;   0   |;  11   &)
%                                         (   5 <=>;  15  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    9 (   2 avg)
%            Maximal term depth    :    2 (   1 avg)
%            Number of predicates  :    6 (   6 usr;   0 prp; 1-3 aty)
%            Number of functors    :   41 (  41 usr;  40 con; 0-1 aty)
%            Number of variables   :   37 (  37   !;   0   ?)
% SPC      : FOF_CSA_RFO_NEQ

% Comments :
%------------------------------------------------------------------------------
%----Include RDFS axioms
include('Axioms/SWB003+0.ax').
%------------------------------------------------------------------------------
fof(testcase_conclusion_fullish_008_Inverse_Functional_Data_Properties,conjecture,
    iext(uri_owl_sameAs,uri_ex_bob,uri_ex_robert) ).

fof(testcase_premise_fullish_008_Inverse_Functional_Data_Properties,axiom,
    ( iext(uri_rdf_type,uri_foaf_mbox_sha1sum,uri_owl_DatatypeProperty)
    & iext(uri_rdf_type,uri_foaf_mbox_sha1sum,uri_owl_InverseFunctionalProperty)
    & iext(uri_foaf_mbox_sha1sum,uri_ex_bob,literal_plain(dat_str_xyz))
    & iext(uri_foaf_mbox_sha1sum,uri_ex_robert,literal_plain(dat_str_xyz)) ) ).

%------------------------------------------------------------------------------
