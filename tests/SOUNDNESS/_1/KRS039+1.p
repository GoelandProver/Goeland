%------------------------------------------------------------------------------
% File     : KRS039+1 : TPTP v8.1.2. Released v3.1.0.
% Domain   : Knowledge Representation (Semantic Web)
% Problem  : DL Test: t8.1
% Version  : Especial.
% English  :

% Refs     : [Bec03] Bechhofer (2003), Email to G. Sutcliffe
%          : [TR+04] Tsarkov et al. (2004), Using Vampire to Reason with OW
% Source   : [Bec03]
% Names    : consistent_description-logic-Manifest034 [Bec03]

% Status   : Satisfiable
% Rating   : 0.00 v5.3.0, 0.14 v5.2.0, 0.00 v4.1.0, 0.25 v4.0.1, 0.00 v3.1.0
% Syntax   : Number of formulae    :    5 (   1 unt;   0 def)
%            Number of atoms       :   16 (   0 equ)
%            Maximal formula atoms :    9 (   3 avg)
%            Number of connectives :   14 (   3   ~;   0   |;   4   &)
%                                         (   3 <=>;   4  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   11 (   5 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :    9 (   9 usr;   0 prp; 1-2 aty)
%            Number of functors    :    1 (   1 usr;   1 con; 0-0 aty)
%            Number of variables   :   11 (   9   !;   2   ?)
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
            & ! [Z] :
                ( rinvR(Y,Z)
               => ! [W] :
                    ( rr1(Z,W)
                   => cp(W) ) ) )
        & ? [Y] :
            ( rr(X,Y)
            & ! [Z] :
                ( rinvR(Y,Z)
               => ! [W] :
                    ( rr1(Z,W)
                   => ~ cp(W) ) ) ) ) ) ).

%----Inverse: rinvR
fof(axiom_3,axiom,
    ! [X,Y] :
      ( rinvR(X,Y)
    <=> rr(Y,X) ) ).

%----i2003_11_14_17_15_58383
fof(axiom_4,axiom,
    cSatisfiable(i2003_11_14_17_15_58383) ).

%------------------------------------------------------------------------------
