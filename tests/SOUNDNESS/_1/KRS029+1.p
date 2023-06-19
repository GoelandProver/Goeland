%------------------------------------------------------------------------------
% File     : KRS029+1 : TPTP v8.1.2. Released v3.1.0.
% Domain   : Knowledge Representation (Semantic Web)
% Problem  : DL Test: t1.1
% Version  : Especial.
% English  :

% Refs     : [Bec03] Bechhofer (2003), Email to G. Sutcliffe
%          : [TR+04] Tsarkov et al. (2004), Using Vampire to Reason with OW
% Source   : [Bec03]
% Names    : consistent_description-logic-Manifest006 [Bec03]

% Status   : Satisfiable
% Rating   : 0.00 v6.1.0, 0.20 v6.0.0, 0.00 v4.0.1, 0.25 v3.7.0, 0.00 v3.4.0, 0.40 v3.3.0, 0.00 v3.1.0
% Syntax   : Number of formulae    :   23 (   1 unt;   0 def)
%            Number of atoms       :   70 (  15 equ)
%            Maximal formula atoms :    7 (   3 avg)
%            Number of connectives :   53 (   6   ~;   6   |;  19   &)
%                                         (   3 <=>;  19  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   10 (   5 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :   13 (  12 usr;   0 prp; 1-2 aty)
%            Number of functors    :    1 (   1 usr;   1 con; 0-0 aty)
%            Number of variables   :   45 (  43   !;   2   ?)
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

fof(cp3_substitution_1,axiom,
    ! [A,B] :
      ( ( A = B
        & cp3(A) )
     => cp3(B) ) ).

fof(cp4_substitution_1,axiom,
    ! [A,B] :
      ( ( A = B
        & cp4(A) )
     => cp4(B) ) ).

fof(cp5_substitution_1,axiom,
    ! [A,B] :
      ( ( A = B
        & cp5(A) )
     => cp5(B) ) ).

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
          & ? [Z] :
              ( rr(Y,Z)
              & cp1(Z) )
          & ! [Z0,Z1] :
              ( ( rr(Y,Z0)
                & rr(Y,Z1) )
             => Z0 = Z1 ) ) ) ).

%----Super cp1
fof(axiom_3,axiom,
    ! [X] :
      ( cp1(X)
     => ~ ( cp2(X)
          | cp5(X)
          | cp4(X)
          | cp3(X) ) ) ).

%----Super cp2
fof(axiom_4,axiom,
    ! [X] :
      ( cp2(X)
     => ~ ( cp5(X)
          | cp4(X)
          | cp3(X) ) ) ).

%----Super cp3
fof(axiom_5,axiom,
    ! [X] :
      ( cp3(X)
     => ~ ( cp5(X)
          | cp4(X) ) ) ).

%----Super cp4
fof(axiom_6,axiom,
    ! [X] :
      ( cp4(X)
     => ~ cp5(X) ) ).

%----Inverse: rinvR
fof(axiom_7,axiom,
    ! [X,Y] :
      ( rinvR(X,Y)
    <=> rr(Y,X) ) ).

%----i2003_11_14_17_15_22537
fof(axiom_8,axiom,
    cSatisfiable(i2003_11_14_17_15_22537) ).

%------------------------------------------------------------------------------
