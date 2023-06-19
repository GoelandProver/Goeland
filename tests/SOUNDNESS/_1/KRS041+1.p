%------------------------------------------------------------------------------
% File     : KRS041+1 : TPTP v8.1.2. Released v3.1.0.
% Domain   : Knowledge Representation (Semantic Web)
% Problem  : A different encoding of description-logic-501
% Version  : Especial.
% English  :

% Refs     : [Bec03] Bechhofer (2003), Email to G. Sutcliffe
%          : [TR+04] Tsarkov et al. (2004), Using Vampire to Reason with OW
% Source   : [Bec03]
% Names    : consistent_description-logic-Manifest503 [Bec03]

% Status   : Satisfiable
% Rating   : 0.00 v7.3.0, 0.67 v7.1.0, 0.00 v3.1.0
% Syntax   : Number of formulae    :   57 (   1 unt;   0 def)
%            Number of atoms       :  203 (   0 equ)
%            Maximal formula atoms :    4 (   3 avg)
%            Number of connectives :  157 (  11   ~;  90   |;  10   &)
%                                         (   1 <=>;  45  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    5 (   5 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :   23 (  23 usr;   0 prp; 1-1 aty)
%            Number of functors    :    1 (   1 usr;   1 con; 0-0 aty)
%            Number of variables   :   56 (  56   !;   0   ?)
% SPC      : FOF_SAT_EPR_NEQ

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

%----Super cTest
fof(axiom_2,axiom,
    ! [X] :
      ( cTest(X)
     => ( cplus3(X)
        | cplus2(X)
        | cplus6(X) ) ) ).

%----Super cTest
fof(axiom_3,axiom,
    ! [X] :
      ( cTest(X)
     => ( cplus3(X)
        | cplus6(X)
        | cplus7(X) ) ) ).

%----Super cTest
fof(axiom_4,axiom,
    ! [X] :
      ( cTest(X)
     => ( cplus4(X)
        | cminus8(X)
        | cplus7(X) ) ) ).

%----Super cTest
fof(axiom_5,axiom,
    ! [X] :
      ( cTest(X)
     => ( cminus3(X)
        | cminus8(X)
        | cminus6(X) ) ) ).

%----Super cTest
fof(axiom_6,axiom,
    ! [X] :
      ( cTest(X)
     => ( cminus7(X)
        | cminus9(X)
        | cplus5(X) ) ) ).

%----Super cTest
fof(axiom_7,axiom,
    ! [X] :
      ( cTest(X)
     => ( cplus1(X)
        | cminus7(X)
        | cminus5(X) ) ) ).

%----Super cTest
fof(axiom_8,axiom,
    ! [X] :
      ( cTest(X)
     => ( cplus4(X)
        | cminus5(X)
        | cplus7(X) ) ) ).

%----Super cTest
fof(axiom_9,axiom,
    ! [X] :
      ( cTest(X)
     => ( cminus3(X)
        | cplus6(X)
        | cplus8(X) ) ) ).

%----Super cTest
fof(axiom_10,axiom,
    ! [X] :
      ( cTest(X)
     => ( cminus3(X)
        | cplus1(X)
        | cplus9(X) ) ) ).

%----Super cTest
fof(axiom_11,axiom,
    ! [X] :
      ( cTest(X)
     => ( cminus2(X)
        | cplus6(X)
        | cplus5(X) ) ) ).

%----Super cTest
fof(axiom_12,axiom,
    ! [X] :
      ( cTest(X)
     => ( cminus8(X)
        | cplus9(X)
        | cminus1(X) ) ) ).

%----Super cTest
fof(axiom_13,axiom,
    ! [X] :
      ( cTest(X)
     => ( cplus8(X)
        | cminus1(X)
        | cplus5(X) ) ) ).

%----Super cTest
fof(axiom_14,axiom,
    ! [X] :
      ( cTest(X)
     => ( cminus3(X)
        | cminus5(X)
        | cplus4(X) ) ) ).

%----Super cTest
fof(axiom_15,axiom,
    ! [X] :
      ( cTest(X)
     => ( cplus3(X)
        | cminus5(X)
        | cplus8(X) ) ) ).

%----Super cTest
fof(axiom_16,axiom,
    ! [X] :
      ( cTest(X)
     => ( cminus2(X)
        | cplus9(X)
        | cminus1(X) ) ) ).

%----Super cTest
fof(axiom_17,axiom,
    ! [X] :
      ( cTest(X)
     => ( cminus8(X)
        | cminus9(X)
        | cplus7(X) ) ) ).

%----Super cTest
fof(axiom_18,axiom,
    ! [X] :
      ( cTest(X)
     => ( cminus2(X)
        | cminus4(X)
        | cminus9(X) ) ) ).

%----Super cTest
fof(axiom_19,axiom,
    ! [X] :
      ( cTest(X)
     => ( cplus3(X)
        | cminus2(X)
        | cplus7(X) ) ) ).

%----Super cTest
fof(axiom_20,axiom,
    ! [X] :
      ( cTest(X)
     => ( cminus3(X)
        | cminus7(X)
        | cminus2(X) ) ) ).

%----Super cTest
fof(axiom_21,axiom,
    ! [X] :
      ( cTest(X)
     => ( cplus4(X)
        | cplus8(X)
        | cplus5(X) ) ) ).

%----Super cTest
fof(axiom_22,axiom,
    ! [X] :
      ( cTest(X)
     => ( cplus2(X)
        | cplus8(X)
        | cplus5(X) ) ) ).

%----Super cTest
fof(axiom_23,axiom,
    ! [X] :
      ( cTest(X)
     => ( cminus8(X)
        | cminus2(X)
        | cminus9(X) ) ) ).

%----Super cTest
fof(axiom_24,axiom,
    ! [X] :
      ( cTest(X)
     => ( cplus1(X)
        | cplus7(X)
        | cminus6(X) ) ) ).

%----Super cTest
fof(axiom_25,axiom,
    ! [X] :
      ( cTest(X)
     => ( cplus3(X)
        | cminus7(X)
        | cminus9(X) ) ) ).

%----Super cTest
fof(axiom_26,axiom,
    ! [X] :
      ( cTest(X)
     => ( cplus1(X)
        | cminus2(X)
        | cminus9(X) ) ) ).

%----Super cTest
fof(axiom_27,axiom,
    ! [X] :
      ( cTest(X)
     => ( cminus7(X)
        | cplus6(X)
        | cplus5(X) ) ) ).

%----Super cTest
fof(axiom_28,axiom,
    ! [X] :
      ( cTest(X)
     => ( cminus3(X)
        | cplus2(X)
        | cminus6(X) ) ) ).

%----Super cTest
fof(axiom_29,axiom,
    ! [X] :
      ( cTest(X)
     => ( cminus3(X)
        | cplus2(X)
        | cplus7(X) ) ) ).

%----Super cTest
fof(axiom_30,axiom,
    ! [X] :
      ( cTest(X)
     => ( cplus6(X)
        | cminus1(X)
        | cplus7(X) ) ) ).

%----Super cTest
fof(axiom_31,axiom,
    ! [X] :
      ( cTest(X)
     => ( cplus3(X)
        | cminus2(X)
        | cminus1(X) ) ) ).

%----Super cTest
fof(axiom_32,axiom,
    ! [X] :
      ( cTest(X)
     => ( cplus3(X)
        | cplus8(X)
        | cminus6(X) ) ) ).

%----Super cTest
fof(axiom_33,axiom,
    ! [X] :
      ( cTest(X)
     => ( cplus2(X)
        | cminus8(X)
        | cminus9(X) ) ) ).

%----Super cTest
fof(axiom_34,axiom,
    ! [X] :
      ( cTest(X)
     => ( cplus3(X)
        | cplus2(X)
        | cminus1(X) ) ) ).

%----Super cTest
fof(axiom_35,axiom,
    ! [X] :
      ( cTest(X)
     => ( cplus3(X)
        | cminus7(X)
        | cplus8(X) ) ) ).

%----Super cTest
fof(axiom_36,axiom,
    ! [X] :
      ( cTest(X)
     => ( cminus5(X)
        | cminus8(X)
        | cminus6(X) ) ) ).

%----Super cTest
fof(axiom_37,axiom,
    ! [X] :
      ( cTest(X)
     => ( cminus7(X)
        | cplus2(X)
        | cplus5(X) ) ) ).

%----Super cTest
fof(axiom_38,axiom,
    ! [X] :
      ( cTest(X)
     => ( cplus3(X)
        | cminus5(X)
        | cminus2(X) ) ) ).

%----Super cTest
fof(axiom_39,axiom,
    ! [X] :
      ( cTest(X)
     => ( cminus9(X)
        | cminus1(X)
        | cplus7(X) ) ) ).

%----Super cTest
fof(axiom_40,axiom,
    ! [X] :
      ( cTest(X)
     => ( cplus3(X)
        | cplus6(X)
        | cminus9(X) ) ) ).

%----Super cTest
fof(axiom_41,axiom,
    ! [X] :
      ( cTest(X)
     => ( cminus3(X)
        | cminus8(X)
        | cplus7(X) ) ) ).

%----Super cTest
fof(axiom_42,axiom,
    ! [X] :
      ( cTest(X)
     => ( cminus4(X)
        | cminus1(X)
        | cplus7(X) ) ) ).

%----Super cTest
fof(axiom_43,axiom,
    ! [X] :
      ( cTest(X)
     => ( cplus1(X)
        | cplus2(X)
        | cminus8(X) ) ) ).

%----Super cTest
fof(axiom_44,axiom,
    ! [X] :
      ( cTest(X)
     => ( cminus4(X)
        | cplus8(X)
        | cminus6(X) ) ) ).

%----Super cTest
fof(axiom_45,axiom,
    ! [X] :
      ( cTest(X)
     => ( cplus1(X)
        | cplus4(X)
        | cplus6(X) ) ) ).

%----Super cTest
fof(axiom_46,axiom,
    ! [X] :
      ( cTest(X)
     => ( cminus7(X)
        | cplus4(X)
        | cplus8(X) ) ) ).

%----i2003_11_14_17_16_07145
fof(axiom_47,axiom,
    cTest(i2003_11_14_17_16_07145) ).

fof(axiom_48,axiom,
    ! [X] :
      ~ ( cminus8(X)
        & cplus8(X) ) ).

fof(axiom_49,axiom,
    ! [X] :
      ~ ( cplus9(X)
        & cminus9(X) ) ).

fof(axiom_50,axiom,
    ! [X] :
      ~ ( cplus4(X)
        & cminus4(X) ) ).

fof(axiom_51,axiom,
    ! [X] :
      ~ ( cminus7(X)
        & cplus7(X) ) ).

fof(axiom_52,axiom,
    ! [X] :
      ~ ( cplus3(X)
        & cminus3(X) ) ).

fof(axiom_53,axiom,
    ! [X] :
      ~ ( cminus5(X)
        & cplus5(X) ) ).

fof(axiom_54,axiom,
    ! [X] :
      ~ ( cplus2(X)
        & cminus2(X) ) ).

fof(axiom_55,axiom,
    ! [X] :
      ~ ( cplus1(X)
        & cminus1(X) ) ).

fof(axiom_56,axiom,
    ! [X] :
      ~ ( cplus6(X)
        & cminus6(X) ) ).

%------------------------------------------------------------------------------
