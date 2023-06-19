%------------------------------------------------------------------------------
% File     : KRS019+1 : TPTP v8.1.2. Released v3.1.0.
% Domain   : Knowledge Representation (Semantic Web)
% Problem  : The complement of a class can be defined using OWL Lite
% Version  : Especial.
% English  :

% Refs     : [Bec03] Bechhofer (2003), Email to G. Sutcliffe
%          : [TR+04] Tsarkov et al. (2004), Using Vampire to Reason with OW
% Source   : [Bec03]
% Names    : consistent_I5.2-Manifest003 [Bec03]

% Status   : Satisfiable
% Rating   : 0.00 v4.1.0, 0.25 v4.0.1, 0.00 v3.1.0
% Syntax   : Number of formulae    :    6 (   0 unt;   0 def)
%            Number of atoms       :   14 (   0 equ)
%            Maximal formula atoms :    3 (   2 avg)
%            Number of connectives :   11 (   3   ~;   0   |;   2   &)
%                                         (   3 <=>;   3  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    5 (   5 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :    9 (   9 usr;   0 prp; 1-2 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :   10 (   7   !;   3   ?)
% SPC      : FOF_SAT_RFO_NEQ

% Comments : Sean Bechhofer says there are some errors in the encoding of
%            datatypes, so this problem may not be perfect. At least it's
%            still representative of the type of reasoning required for OWL.
%------------------------------------------------------------------------------
%----Thing and Nothing
fof(axiom_0,axiom,
    ! [X] :
      ( cowlThing(X)
      & ~ cowlNothing(X) ) ).

%----String and Integer disjoint
fof(axiom_1,axiom,
    ! [X] :
      ( xsd_string(X)
    <=> ~ xsd_integer(X) ) ).

%----Equality cA
fof(axiom_2,axiom,
    ! [X] :
      ( cA(X)
    <=> ? [Y] :
          ( rq(X,Y)
          & cowlThing(Y) ) ) ).

%----Super cNothing
fof(axiom_3,axiom,
    ! [X] :
      ( cNothing(X)
     => ~ ? [Y] : rp(X,Y) ) ).

%----Super cNothing
fof(axiom_4,axiom,
    ! [X] :
      ( cNothing(X)
     => ? [Y0] : rp(X,Y0) ) ).

%----Equality cnotA
fof(axiom_5,axiom,
    ! [X] :
      ( cnotA(X)
    <=> ! [Y] :
          ( rq(X,Y)
         => cNothing(Y) ) ) ).

%------------------------------------------------------------------------------
