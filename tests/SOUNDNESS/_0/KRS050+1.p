%------------------------------------------------------------------------------
% File     : KRS050+1 : TPTP v8.1.2. Released v3.1.0.
% Domain   : Knowledge Representation (Semantic Web)
% Problem  : DL Test: t8.1
% Version  : Especial.
% English  :

% Refs     : [Bec03] Bechhofer (2003), Email to G. Sutcliffe
%          : [TR+04] Tsarkov et al. (2004), Using Vampire to Reason with OW
% Source   : [Bec03]
% Names    : consistent_description-logic-Manifest634 [Bec03]

% Status   : Satisfiable
% Rating   : 0.00 v5.4.0, 0.14 v5.2.0, 0.00 v4.1.0, 0.25 v4.0.1, 0.00 v3.1.0
% Syntax   : Number of formulae    :   11 (   1 unt;   0 def)
%            Number of atoms       :   28 (   0 equ)
%            Maximal formula atoms :    5 (   2 avg)
%            Number of connectives :   20 (   3   ~;   0   |;   4   &)
%                                         (   9 <=>;   4  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    6 (   4 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :   15 (  15 usr;   0 prp; 1-2 aty)
%            Number of functors    :    1 (   1 usr;   1 con; 0-0 aty)
%            Number of variables   :   19 (  15   !;   4   ?)
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

%----Equality cSatisfiable
fof(axiom_2,axiom,
    ! [X] :
      ( cSatisfiable(X)
    <=> ( ? [Y] :
            ( rr(X,Y)
            & ca_Vx4(Y) )
        & ? [Y] :
            ( rr(X,Y)
            & ca_Vx5(Y) ) ) ) ).

%----Equality cp
fof(axiom_3,axiom,
    ! [X] :
      ( cp(X)
    <=> ~ ? [Y] : ra_Px1(X,Y) ) ).

%----Equality cpxcomp
fof(axiom_4,axiom,
    ! [X] :
      ( cpxcomp(X)
    <=> ? [Y0] : ra_Px1(X,Y0) ) ).

%----Equality ca_Vx2
fof(axiom_5,axiom,
    ! [X] :
      ( ca_Vx2(X)
    <=> ! [Y] :
          ( rr1(X,Y)
         => cp(Y) ) ) ).

%----Equality ca_Vx3
fof(axiom_6,axiom,
    ! [X] :
      ( ca_Vx3(X)
    <=> ! [Y] :
          ( rr1(X,Y)
         => cpxcomp(Y) ) ) ).

%----Equality ca_Vx4
fof(axiom_7,axiom,
    ! [X] :
      ( ca_Vx4(X)
    <=> ! [Y] :
          ( rinvR(X,Y)
         => ca_Vx2(Y) ) ) ).

%----Equality ca_Vx5
fof(axiom_8,axiom,
    ! [X] :
      ( ca_Vx5(X)
    <=> ! [Y] :
          ( rinvR(X,Y)
         => ca_Vx3(Y) ) ) ).

%----Inverse: rinvR
fof(axiom_9,axiom,
    ! [X,Y] :
      ( rinvR(X,Y)
    <=> rr(Y,X) ) ).

%----i2003_11_14_17_16_39209
fof(axiom_10,axiom,
    cSatisfiable(i2003_11_14_17_16_39209) ).

%------------------------------------------------------------------------------
