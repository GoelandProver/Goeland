%------------------------------------------------------------------------------
% File     : KRS043+1 : TPTP v8.1.2. Released v3.1.0.
% Domain   : Knowledge Representation (Semantic Web)
% Problem  : DL Test: t1.1
% Version  : Especial.
% English  :

% Refs     : [Bec03] Bechhofer (2003), Email to G. Sutcliffe
%          : [TR+04] Tsarkov et al. (2004), Using Vampire to Reason with OW
% Source   : [Bec03]
% Names    : consistent_description-logic-Manifest606 [Bec03]

% Status   : Satisfiable
% Rating   : 0.00 v6.1.0, 0.20 v6.0.0, 0.00 v4.0.1, 0.25 v3.7.0, 0.00 v3.4.0, 0.40 v3.3.0, 0.00 v3.1.0
% Syntax   : Number of formulae    :   66 (   1 unt;   0 def)
%            Number of atoms       :  181 (  40 equ)
%            Maximal formula atoms :    6 (   2 avg)
%            Number of connectives :  124 (   9   ~;   0   |;  50   &)
%                                         (  21 <=>;  44  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    8 (   5 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :   31 (  30 usr;   0 prp; 1-2 aty)
%            Number of functors    :    1 (   1 usr;   1 con; 0-0 aty)
%            Number of variables   :  141 ( 125   !;  16   ?)
% SPC      : FOF_SAT_RFO_SEQ

% Comments : Sean Bechhofer says there are some errors in the encoding of
%            datatypes, so this problem may not be perfect. At least it's
%            still representative of the type of reasoning required for OWL.
%------------------------------------------------------------------------------
fof(cSatisfiable_substitution_1,axiom,
    ! [A,B] :
      ( ( A = B
        & cSatisfiable(A) )
     => cSatisfiable(B) ) ).

fof(ca_Ax14_substitution_1,axiom,
    ! [A,B] :
      ( ( A = B
        & ca_Ax14(A) )
     => ca_Ax14(B) ) ).

fof(ca_Cx1_substitution_1,axiom,
    ! [A,B] :
      ( ( A = B
        & ca_Cx1(A) )
     => ca_Cx1(B) ) ).

fof(ca_Cx1xcomp_substitution_1,axiom,
    ! [A,B] :
      ( ( A = B
        & ca_Cx1xcomp(A) )
     => ca_Cx1xcomp(B) ) ).

fof(ca_Cx2_substitution_1,axiom,
    ! [A,B] :
      ( ( A = B
        & ca_Cx2(A) )
     => ca_Cx2(B) ) ).

fof(ca_Cx2xcomp_substitution_1,axiom,
    ! [A,B] :
      ( ( A = B
        & ca_Cx2xcomp(A) )
     => ca_Cx2xcomp(B) ) ).

fof(ca_Cx3_substitution_1,axiom,
    ! [A,B] :
      ( ( A = B
        & ca_Cx3(A) )
     => ca_Cx3(B) ) ).

fof(ca_Cx3xcomp_substitution_1,axiom,
    ! [A,B] :
      ( ( A = B
        & ca_Cx3xcomp(A) )
     => ca_Cx3xcomp(B) ) ).

fof(cowlNothing_substitution_1,axiom,
    ! [A,B] :
      ( ( A = B
        & cowlNothing(A) )
     => cowlNothing(B) ) ).

fof(cowlThing_substitution_1,axiom,
    ! [A,B] :
      ( ( A = B
        & cowlThing(A) )
     => cowlThing(B) ) ).

fof(cp1_substitution_1,axiom,
    ! [A,B] :
      ( ( A = B
        & cp1(A) )
     => cp1(B) ) ).

fof(cp2_substitution_1,axiom,
    ! [A,B] :
      ( ( A = B
        & cp2(A) )
     => cp2(B) ) ).

fof(cp2xcomp_substitution_1,axiom,
    ! [A,B] :
      ( ( A = B
        & cp2xcomp(A) )
     => cp2xcomp(B) ) ).

fof(cp3_substitution_1,axiom,
    ! [A,B] :
      ( ( A = B
        & cp3(A) )
     => cp3(B) ) ).

fof(cp3xcomp_substitution_1,axiom,
    ! [A,B] :
      ( ( A = B
        & cp3xcomp(A) )
     => cp3xcomp(B) ) ).

fof(cp4_substitution_1,axiom,
    ! [A,B] :
      ( ( A = B
        & cp4(A) )
     => cp4(B) ) ).

fof(cp4xcomp_substitution_1,axiom,
    ! [A,B] :
      ( ( A = B
        & cp4xcomp(A) )
     => cp4xcomp(B) ) ).

fof(cp5_substitution_1,axiom,
    ! [A,B] :
      ( ( A = B
        & cp5(A) )
     => cp5(B) ) ).

fof(cp5xcomp_substitution_1,axiom,
    ! [A,B] :
      ( ( A = B
        & cp5xcomp(A) )
     => cp5xcomp(B) ) ).

fof(ra_Px1_substitution_1,axiom,
    ! [A,B,C] :
      ( ( A = B
        & ra_Px1(A,C) )
     => ra_Px1(B,C) ) ).

fof(ra_Px1_substitution_2,axiom,
    ! [A,B,C] :
      ( ( A = B
        & ra_Px1(C,A) )
     => ra_Px1(C,B) ) ).

fof(ra_Px2_substitution_1,axiom,
    ! [A,B,C] :
      ( ( A = B
        & ra_Px2(A,C) )
     => ra_Px2(B,C) ) ).

fof(ra_Px2_substitution_2,axiom,
    ! [A,B,C] :
      ( ( A = B
        & ra_Px2(C,A) )
     => ra_Px2(C,B) ) ).

fof(ra_Px3_substitution_1,axiom,
    ! [A,B,C] :
      ( ( A = B
        & ra_Px3(A,C) )
     => ra_Px3(B,C) ) ).

fof(ra_Px3_substitution_2,axiom,
    ! [A,B,C] :
      ( ( A = B
        & ra_Px3(C,A) )
     => ra_Px3(C,B) ) ).

fof(ra_Px4_substitution_1,axiom,
    ! [A,B,C] :
      ( ( A = B
        & ra_Px4(A,C) )
     => ra_Px4(B,C) ) ).

fof(ra_Px4_substitution_2,axiom,
    ! [A,B,C] :
      ( ( A = B
        & ra_Px4(C,A) )
     => ra_Px4(C,B) ) ).

fof(ra_Px5_substitution_1,axiom,
    ! [A,B,C] :
      ( ( A = B
        & ra_Px5(A,C) )
     => ra_Px5(B,C) ) ).

fof(ra_Px5_substitution_2,axiom,
    ! [A,B,C] :
      ( ( A = B
        & ra_Px5(C,A) )
     => ra_Px5(C,B) ) ).

fof(ra_Px6_substitution_1,axiom,
    ! [A,B,C] :
      ( ( A = B
        & ra_Px6(A,C) )
     => ra_Px6(B,C) ) ).

fof(ra_Px6_substitution_2,axiom,
    ! [A,B,C] :
      ( ( A = B
        & ra_Px6(C,A) )
     => ra_Px6(C,B) ) ).

fof(ra_Px7_substitution_1,axiom,
    ! [A,B,C] :
      ( ( A = B
        & ra_Px7(A,C) )
     => ra_Px7(B,C) ) ).

fof(ra_Px7_substitution_2,axiom,
    ! [A,B,C] :
      ( ( A = B
        & ra_Px7(C,A) )
     => ra_Px7(C,B) ) ).

fof(rinvR_substitution_1,axiom,
    ! [A,B,C] :
      ( ( A = B
        & rinvR(A,C) )
     => rinvR(B,C) ) ).

fof(rinvR_substitution_2,axiom,
    ! [A,B,C] :
      ( ( A = B
        & rinvR(C,A) )
     => rinvR(C,B) ) ).

fof(rr_substitution_1,axiom,
    ! [A,B,C] :
      ( ( A = B
        & rr(A,C) )
     => rr(B,C) ) ).

fof(rr_substitution_2,axiom,
    ! [A,B,C] :
      ( ( A = B
        & rr(C,A) )
     => rr(C,B) ) ).

fof(xsd_integer_substitution_1,axiom,
    ! [A,B] :
      ( ( A = B
        & xsd_integer(A) )
     => xsd_integer(B) ) ).

fof(xsd_string_substitution_1,axiom,
    ! [A,B] :
      ( ( A = B
        & xsd_string(A) )
     => xsd_string(B) ) ).

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
    <=> ? [Y] :
          ( rinvR(X,Y)
          & ca_Ax14(Y) ) ) ).

%----Super cp1
fof(axiom_3,axiom,
    ! [X] :
      ( cp1(X)
     => ca_Cx1(X) ) ).

%----Equality cp2
fof(axiom_4,axiom,
    ! [X] :
      ( cp2(X)
    <=> ? [Y0] : ra_Px5(X,Y0) ) ).

%----Super cp2
fof(axiom_5,axiom,
    ! [X] :
      ( cp2(X)
     => ca_Cx2(X) ) ).

%----Equality cp2xcomp
fof(axiom_6,axiom,
    ! [X] :
      ( cp2xcomp(X)
    <=> ~ ? [Y] : ra_Px5(X,Y) ) ).

%----Equality cp3
fof(axiom_7,axiom,
    ! [X] :
      ( cp3(X)
    <=> ? [Y0] : ra_Px6(X,Y0) ) ).

%----Super cp3
fof(axiom_8,axiom,
    ! [X] :
      ( cp3(X)
     => ca_Cx3(X) ) ).

%----Equality cp3xcomp
fof(axiom_9,axiom,
    ! [X] :
      ( cp3xcomp(X)
    <=> ~ ? [Y] : ra_Px6(X,Y) ) ).

%----Equality cp4
fof(axiom_10,axiom,
    ! [X] :
      ( cp4(X)
    <=> ~ ? [Y] : ra_Px7(X,Y) ) ).

%----Super cp4
fof(axiom_11,axiom,
    ! [X] :
      ( cp4(X)
     => cp5xcomp(X) ) ).

%----Equality cp4xcomp
fof(axiom_12,axiom,
    ! [X] :
      ( cp4xcomp(X)
    <=> ? [Y0] : ra_Px7(X,Y0) ) ).

%----Equality cp5
fof(axiom_13,axiom,
    ! [X] :
      ( cp5(X)
    <=> ~ ? [Y] : ra_Px4(X,Y) ) ).

%----Equality cp5xcomp
fof(axiom_14,axiom,
    ! [X] :
      ( cp5xcomp(X)
    <=> ? [Y0] : ra_Px4(X,Y0) ) ).

%----Equality ca_Ax14
fof(axiom_15,axiom,
    ! [X] :
      ( ca_Ax14(X)
    <=> ( ? [Y] :
            ( rr(X,Y)
            & cp1(Y) )
        & ! [Y0,Y1] :
            ( ( rr(X,Y0)
              & rr(X,Y1) )
           => Y0 = Y1 ) ) ) ).

%----Equality ca_Cx1
fof(axiom_16,axiom,
    ! [X] :
      ( ca_Cx1(X)
    <=> ? [Y0] : ra_Px1(X,Y0) ) ).

%----Equality ca_Cx1
fof(axiom_17,axiom,
    ! [X] :
      ( ca_Cx1(X)
    <=> ( cp5xcomp(X)
        & cp2xcomp(X)
        & cp3xcomp(X)
        & cp4xcomp(X) ) ) ).

%----Equality ca_Cx1xcomp
fof(axiom_18,axiom,
    ! [X] :
      ( ca_Cx1xcomp(X)
    <=> ~ ? [Y] : ra_Px1(X,Y) ) ).

%----Equality ca_Cx2
fof(axiom_19,axiom,
    ! [X] :
      ( ca_Cx2(X)
    <=> ~ ? [Y] : ra_Px2(X,Y) ) ).

%----Equality ca_Cx2
fof(axiom_20,axiom,
    ! [X] :
      ( ca_Cx2(X)
    <=> ( cp5xcomp(X)
        & cp3xcomp(X)
        & cp4xcomp(X) ) ) ).

%----Equality ca_Cx2xcomp
fof(axiom_21,axiom,
    ! [X] :
      ( ca_Cx2xcomp(X)
    <=> ? [Y0] : ra_Px2(X,Y0) ) ).

%----Equality ca_Cx3
fof(axiom_22,axiom,
    ! [X] :
      ( ca_Cx3(X)
    <=> ( cp5xcomp(X)
        & cp4xcomp(X) ) ) ).

%----Equality ca_Cx3
fof(axiom_23,axiom,
    ! [X] :
      ( ca_Cx3(X)
    <=> ~ ? [Y] : ra_Px3(X,Y) ) ).

%----Equality ca_Cx3xcomp
fof(axiom_24,axiom,
    ! [X] :
      ( ca_Cx3xcomp(X)
    <=> ? [Y0] : ra_Px3(X,Y0) ) ).

%----Inverse: rinvR
fof(axiom_25,axiom,
    ! [X,Y] :
      ( rinvR(X,Y)
    <=> rr(Y,X) ) ).

%----i2003_11_14_17_16_14536
fof(axiom_26,axiom,
    cSatisfiable(i2003_11_14_17_16_14536) ).

%------------------------------------------------------------------------------
