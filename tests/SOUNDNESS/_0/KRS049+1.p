%------------------------------------------------------------------------------
% File     : KRS049+1 : TPTP v8.1.2. Released v3.1.0.
% Domain   : Knowledge Representation (Semantic Web)
% Problem  : DL Test: t7f.1
% Version  : Especial.
% English  :

% Refs     : [Bec03] Bechhofer (2003), Email to G. Sutcliffe
%          : [TR+04] Tsarkov et al. (2004), Using Vampire to Reason with OW
% Source   : [Bec03]
% Names    : consistent_description-logic-Manifest631 [Bec03]

% Status   : Satisfiable
% Rating   : 0.00 v7.5.0, 0.33 v7.3.0, 0.00 v7.1.0, 0.50 v7.0.0, 0.00 v6.4.0, 0.20 v6.2.0, 0.17 v6.1.0, 0.40 v6.0.0, 0.25 v5.5.0, 0.00 v5.3.0, 0.33 v5.2.0, 0.00 v5.0.0, 0.33 v4.0.1, 0.25 v3.7.0, 0.33 v3.5.0, 0.00 v3.2.0, 0.33 v3.1.0
% Syntax   : Number of formulae    :   45 (   1 unt;   0 def)
%            Number of atoms       :  125 (  28 equ)
%            Maximal formula atoms :    4 (   2 avg)
%            Number of connectives :   85 (   5   ~;   0   |;  35   &)
%                                         (  14 <=>;  31  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    6 (   5 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :   21 (  20 usr;   0 prp; 1-2 aty)
%            Number of functors    :    1 (   1 usr;   1 con; 0-0 aty)
%            Number of variables   :  101 (  93   !;   8   ?)
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

fof(ca_Ax4_substitution_1,axiom,
    ! [A,B] :
      ( ( A = B
        & ca_Ax4(A) )
     => ca_Ax4(B) ) ).

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

fof(ca_Vx5_substitution_1,axiom,
    ! [A,B] :
      ( ( A = B
        & ca_Vx5(A) )
     => ca_Vx5(B) ) ).

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

fof(cp1xcomp_substitution_1,axiom,
    ! [A,B] :
      ( ( A = B
        & cp1xcomp(A) )
     => cp1xcomp(B) ) ).

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

fof(rf_substitution_1,axiom,
    ! [A,B,C] :
      ( ( A = B
        & rf(A,C) )
     => rf(B,C) ) ).

fof(rf_substitution_2,axiom,
    ! [A,B,C] :
      ( ( A = B
        & rf(C,A) )
     => rf(C,B) ) ).

fof(rinvF_substitution_1,axiom,
    ! [A,B,C] :
      ( ( A = B
        & rinvF(A,C) )
     => rinvF(B,C) ) ).

fof(rinvF_substitution_2,axiom,
    ! [A,B,C] :
      ( ( A = B
        & rinvF(C,A) )
     => rinvF(C,B) ) ).

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
    <=> ( ? [Y] :
            ( rr(X,Y)
            & ca_Vx5(Y) )
        & cp1(X) ) ) ).

%----Equality cp1
fof(axiom_3,axiom,
    ! [X] :
      ( cp1(X)
    <=> ~ ? [Y] : ra_Px1(X,Y) ) ).

%----Equality cp1xcomp
fof(axiom_4,axiom,
    ! [X] :
      ( cp1xcomp(X)
    <=> ? [Y0] : ra_Px1(X,Y0) ) ).

%----Equality ca_Ax4
fof(axiom_5,axiom,
    ! [X] :
      ( ca_Ax4(X)
    <=> ( ! [Y] :
            ( rinvR(X,Y)
           => ca_Cx2(Y) )
        & cp1(X) ) ) ).

%----Equality ca_Cx2
fof(axiom_6,axiom,
    ! [X] :
      ( ca_Cx2(X)
    <=> ~ ? [Y] : ra_Px2(X,Y) ) ).

%----Equality ca_Cx2xcomp
fof(axiom_7,axiom,
    ! [X] :
      ( ca_Cx2xcomp(X)
    <=> ( ca_Cx3(X)
        & cp1(X) ) ) ).

%----Equality ca_Cx2xcomp
fof(axiom_8,axiom,
    ! [X] :
      ( ca_Cx2xcomp(X)
    <=> ? [Y0] : ra_Px2(X,Y0) ) ).

%----Equality ca_Cx3
fof(axiom_9,axiom,
    ! [X] :
      ( ca_Cx3(X)
    <=> ~ ? [Y] : ra_Px3(X,Y) ) ).

%----Equality ca_Cx3xcomp
fof(axiom_10,axiom,
    ! [X] :
      ( ca_Cx3xcomp(X)
    <=> ? [Y0] : ra_Px3(X,Y0) ) ).

%----Equality ca_Cx3xcomp
fof(axiom_11,axiom,
    ! [X] :
      ( ca_Cx3xcomp(X)
    <=> ! [Y] :
          ( rr(X,Y)
         => cp1(Y) ) ) ).

%----Equality ca_Vx5
fof(axiom_12,axiom,
    ! [X] :
      ( ca_Vx5(X)
    <=> ? [Y] :
          ( rr(X,Y)
          & ca_Ax4(Y) ) ) ).

%----Functional: rf
fof(axiom_13,axiom,
    ! [X,Y,Z] :
      ( ( rf(X,Y)
        & rf(X,Z) )
     => Y = Z ) ).

%----Inverse: rinvF
fof(axiom_14,axiom,
    ! [X,Y] :
      ( rinvF(X,Y)
    <=> rf(Y,X) ) ).

%----Inverse: rinvR
fof(axiom_15,axiom,
    ! [X,Y] :
      ( rinvR(X,Y)
    <=> rr(Y,X) ) ).

%----Transitive: rr
fof(axiom_16,axiom,
    ! [X,Y,Z] :
      ( ( rr(X,Y)
        & rr(Y,Z) )
     => rr(X,Z) ) ).

%----i2003_11_14_17_16_36130
fof(axiom_17,axiom,
    cSatisfiable(i2003_11_14_17_16_36130) ).

%------------------------------------------------------------------------------
