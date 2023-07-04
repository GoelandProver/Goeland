%------------------------------------------------------------------------------
% File     : KRS042+1 : TPTP v8.1.2. Released v3.1.0.
% Domain   : Knowledge Representation (Semantic Web)
% Problem  : DL Test: fact4.2
% Version  : Especial.
% English  :

% Refs     : [Bec03] Bechhofer (2003), Email to G. Sutcliffe
%          : [TR+04] Tsarkov et al. (2004), Using Vampire to Reason with OW
% Source   : [Bec03]
% Names    : consistent_description-logic-Manifest605 [Bec03]

% Status   : Satisfiable
% Rating   : 0.00 v6.1.0, 0.20 v6.0.0, 0.00 v3.1.0
% Syntax   : Number of formulae    :   53 (   1 unt;   0 def)
%            Number of atoms       :  148 (  37 equ)
%            Maximal formula atoms :    6 (   2 avg)
%            Number of connectives :   98 (   3   ~;   0   |;  44   &)
%                                         (   6 <=>;  45  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    7 (   5 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :   22 (  21 usr;   0 prp; 1-2 aty)
%            Number of functors    :    1 (   1 usr;   1 con; 0-0 aty)
%            Number of variables   :  129 ( 124   !;   5   ?)
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

fof(ca_Ax2_substitution_1,axiom,
    ! [A,B] :
      ( ( A = B
        & ca_Ax2(A) )
     => ca_Ax2(B) ) ).

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

fof(cc1_substitution_1,axiom,
    ! [A,B] :
      ( ( A = B
        & cc1(A) )
     => cc1(B) ) ).

fof(cc2_substitution_1,axiom,
    ! [A,B] :
      ( ( A = B
        & cc2(A) )
     => cc2(B) ) ).

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

fof(rrx_substitution_1,axiom,
    ! [A,B,C] :
      ( ( A = B
        & rrx(A,C) )
     => rrx(B,C) ) ).

fof(rrx_substitution_2,axiom,
    ! [A,B,C] :
      ( ( A = B
        & rrx(C,A) )
     => rrx(C,B) ) ).

fof(rrx1_substitution_1,axiom,
    ! [A,B,C] :
      ( ( A = B
        & rrx1(A,C) )
     => rrx1(B,C) ) ).

fof(rrx1_substitution_2,axiom,
    ! [A,B,C] :
      ( ( A = B
        & rrx1(C,A) )
     => rrx1(C,B) ) ).

fof(rrx1a_substitution_1,axiom,
    ! [A,B,C] :
      ( ( A = B
        & rrx1a(A,C) )
     => rrx1a(B,C) ) ).

fof(rrx1a_substitution_2,axiom,
    ! [A,B,C] :
      ( ( A = B
        & rrx1a(C,A) )
     => rrx1a(C,B) ) ).

fof(rrx2_substitution_1,axiom,
    ! [A,B,C] :
      ( ( A = B
        & rrx2(A,C) )
     => rrx2(B,C) ) ).

fof(rrx2_substitution_2,axiom,
    ! [A,B,C] :
      ( ( A = B
        & rrx2(C,A) )
     => rrx2(C,B) ) ).

fof(rrx2a_substitution_1,axiom,
    ! [A,B,C] :
      ( ( A = B
        & rrx2a(A,C) )
     => rrx2a(B,C) ) ).

fof(rrx2a_substitution_2,axiom,
    ! [A,B,C] :
      ( ( A = B
        & rrx2a(C,A) )
     => rrx2a(C,B) ) ).

fof(rrx3_substitution_1,axiom,
    ! [A,B,C] :
      ( ( A = B
        & rrx3(A,C) )
     => rrx3(B,C) ) ).

fof(rrx3_substitution_2,axiom,
    ! [A,B,C] :
      ( ( A = B
        & rrx3(C,A) )
     => rrx3(C,B) ) ).

fof(rrx3a_substitution_1,axiom,
    ! [A,B,C] :
      ( ( A = B
        & rrx3a(A,C) )
     => rrx3a(B,C) ) ).

fof(rrx3a_substitution_2,axiom,
    ! [A,B,C] :
      ( ( A = B
        & rrx3a(C,A) )
     => rrx3a(C,B) ) ).

fof(rrx4_substitution_1,axiom,
    ! [A,B,C] :
      ( ( A = B
        & rrx4(A,C) )
     => rrx4(B,C) ) ).

fof(rrx4_substitution_2,axiom,
    ! [A,B,C] :
      ( ( A = B
        & rrx4(C,A) )
     => rrx4(C,B) ) ).

fof(rrx4a_substitution_1,axiom,
    ! [A,B,C] :
      ( ( A = B
        & rrx4a(A,C) )
     => rrx4a(B,C) ) ).

fof(rrx4a_substitution_2,axiom,
    ! [A,B,C] :
      ( ( A = B
        & rrx4a(C,A) )
     => rrx4a(C,B) ) ).

fof(rrxa_substitution_1,axiom,
    ! [A,B,C] :
      ( ( A = B
        & rrxa(A,C) )
     => rrxa(B,C) ) ).

fof(rrxa_substitution_2,axiom,
    ! [A,B,C] :
      ( ( A = B
        & rrxa(C,A) )
     => rrxa(C,B) ) ).

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
            ( rrx3a(X,Y)
            & cc1(Y) )
        & ca_Cx1(X)
        & ? [Y] :
            ( rrx4a(X,Y)
            & cc2(Y) ) ) ) ).

%----Equality ca_Ax2
fof(axiom_3,axiom,
    ! [X] :
      ( ca_Ax2(X)
    <=> ( cc2(X)
        & cc1(X) ) ) ).

%----Equality ca_Cx1
fof(axiom_4,axiom,
    ! [X] :
      ( ca_Cx1(X)
    <=> ? [Y0] : ra_Px1(X,Y0) ) ).

%----Equality ca_Cx1xcomp
fof(axiom_5,axiom,
    ! [X] :
      ( ca_Cx1xcomp(X)
    <=> ? [Y] :
          ( rrx3a(X,Y)
          & ca_Ax2(Y) ) ) ).

%----Equality ca_Cx1xcomp
fof(axiom_6,axiom,
    ! [X] :
      ( ca_Cx1xcomp(X)
    <=> ~ ? [Y] : ra_Px1(X,Y) ) ).

%----Functional: rrx
fof(axiom_7,axiom,
    ! [X,Y,Z] :
      ( ( rrx(X,Y)
        & rrx(X,Z) )
     => Y = Z ) ).

%----Functional: rrx3
fof(axiom_8,axiom,
    ! [X,Y,Z] :
      ( ( rrx3(X,Y)
        & rrx3(X,Z) )
     => Y = Z ) ).

%----Functional: rrx3a
fof(axiom_9,axiom,
    ! [X,Y,Z] :
      ( ( rrx3a(X,Y)
        & rrx3a(X,Z) )
     => Y = Z ) ).

%----Functional: rrx4
fof(axiom_10,axiom,
    ! [X,Y,Z] :
      ( ( rrx4(X,Y)
        & rrx4(X,Z) )
     => Y = Z ) ).

%----Functional: rrx4a
fof(axiom_11,axiom,
    ! [X,Y,Z] :
      ( ( rrx4a(X,Y)
        & rrx4a(X,Z) )
     => Y = Z ) ).

%----i2003_11_14_17_16_10980
fof(axiom_12,axiom,
    cSatisfiable(i2003_11_14_17_16_10980) ).

fof(axiom_13,axiom,
    ! [X,Y] :
      ( rrx3a(X,Y)
     => rrx1a(X,Y) ) ).

fof(axiom_14,axiom,
    ! [X,Y] :
      ( rrx4(X,Y)
     => rrx(X,Y) ) ).

fof(axiom_15,axiom,
    ! [X,Y] :
      ( rrx3(X,Y)
     => rrx(X,Y) ) ).

fof(axiom_16,axiom,
    ! [X,Y] :
      ( rrx4a(X,Y)
     => rrxa(X,Y) ) ).

fof(axiom_17,axiom,
    ! [X,Y] :
      ( rrx3a(X,Y)
     => rrxa(X,Y) ) ).

fof(axiom_18,axiom,
    ! [X,Y] :
      ( rrx3(X,Y)
     => rrx1(X,Y) ) ).

fof(axiom_19,axiom,
    ! [X,Y] :
      ( rrx4a(X,Y)
     => rrx2a(X,Y) ) ).

fof(axiom_20,axiom,
    ! [X,Y] :
      ( rrx4(X,Y)
     => rrx2(X,Y) ) ).

%------------------------------------------------------------------------------
