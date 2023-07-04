%------------------------------------------------------------------------------
% File     : KRS032+1 : TPTP v8.1.2. Released v3.1.0.
% Domain   : Knowledge Representation (Semantic Web)
% Problem  : DL Test: t3.1
% Version  : Especial.
% English  :

% Refs     : [Bec03] Bechhofer (2003), Email to G. Sutcliffe
%          : [TR+04] Tsarkov et al. (2004), Using Vampire to Reason with OW
% Source   : [Bec03]
% Names    : consistent_description-logic-Manifest018 [Bec03]

% Status   : Satisfiable
% Rating   : 0.00 v6.1.0, 0.20 v6.0.0, 0.00 v3.4.0, 0.20 v3.3.0, 0.00 v3.1.0
% Syntax   : Number of formulae    :   21 (   1 unt;   0 def)
%            Number of atoms       :   84 (  19 equ)
%            Maximal formula atoms :   26 (   4 avg)
%            Number of connectives :   69 (   6   ~;  11   |;  32   &)
%                                         (   2 <=>;  18  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   15 (   5 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :   13 (  12 usr;   0 prp; 1-2 aty)
%            Number of functors    :    1 (   1 usr;   1 con; 0-0 aty)
%            Number of variables   :   45 (  39   !;   6   ?)
% SPC      : FOF_SAT_RFO_SEQ

% Comments : Sean Bechhofer says there are some errors in the encoding of
%            datatypes, so this problem may not be perfect. At least it's
%            still representative of the type of reasoning required for OWL.
%          : There are 90 possible partitions in the satisfiable case
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

fof(cp_substitution_1,axiom,
    ! [A,B] :
      ( ( A = B
        & cp(A) )
     => cp(B) ) ).

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
            & cp3(Y) )
        & ! [Y0,Y1,Y2,Y3] :
            ( ( rr(X,Y0)
              & rr(X,Y1)
              & rr(X,Y2)
              & rr(X,Y3) )
           => ( Y0 = Y1
              | Y0 = Y2
              | Y0 = Y3
              | Y1 = Y2
              | Y1 = Y3
              | Y2 = Y3 ) )
        & ? [Y] :
            ( rr(X,Y)
            & cp3(Y)
            & cp(Y) )
        & ? [Y] :
            ( rr(X,Y)
            & cp2(Y) )
        & ? [Y] :
            ( rr(X,Y)
            & cp2(Y)
            & cp(Y) )
        & ? [Y] :
            ( rr(X,Y)
            & cp(Y)
            & cp1(Y) )
        & ? [Y] :
            ( rr(X,Y)
            & cp1(Y) ) ) ) ).

%----Super cp1
fof(axiom_3,axiom,
    ! [X] :
      ( cp1(X)
     => ~ ( cp4(X)
          | cp3(X)
          | cp5(X)
          | cp2(X) ) ) ).

%----Super cp2
fof(axiom_4,axiom,
    ! [X] :
      ( cp2(X)
     => ~ ( cp4(X)
          | cp3(X)
          | cp5(X) ) ) ).

%----Super cp3
fof(axiom_5,axiom,
    ! [X] :
      ( cp3(X)
     => ~ ( cp4(X)
          | cp5(X) ) ) ).

%----Super cp4
fof(axiom_6,axiom,
    ! [X] :
      ( cp4(X)
     => ~ cp5(X) ) ).

%----i2003_11_14_17_15_33836
fof(axiom_7,axiom,
    cSatisfiable(i2003_11_14_17_15_33836) ).

%------------------------------------------------------------------------------
