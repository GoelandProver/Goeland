%------------------------------------------------------------------------------
% File     : KRS046+1 : TPTP v8.1.2. Released v3.1.0.
% Domain   : Knowledge Representation (Semantic Web)
% Problem  : DL Test: t5.1 Non-finite model example from paper
% Version  : Especial.
% English  :

% Refs     : [Bec03] Bechhofer (2003), Email to G. Sutcliffe
%          : [TR+04] Tsarkov et al. (2004), Using Vampire to Reason with OW
% Source   : [Bec03]
% Names    : consistent_description-logic-Manifest624 [Bec03]

% Status   : Satisfiable
% Rating   : 0.00 v6.1.0, 0.20 v6.0.0, 0.00 v3.4.0, 0.20 v3.3.0, 0.00 v3.1.0
% Syntax   : Number of formulae    :   30 (   1 unt;   0 def)
%            Number of atoms       :   85 (  19 equ)
%            Maximal formula atoms :    6 (   2 avg)
%            Number of connectives :   58 (   3   ~;   0   |;  26   &)
%                                         (   7 <=>;  22  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    7 (   5 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :   14 (  13 usr;   0 prp; 1-2 aty)
%            Number of functors    :    1 (   1 usr;   1 con; 0-0 aty)
%            Number of variables   :   69 (  64   !;   5   ?)
% SPC      : FOF_SAT_RFO_SEQ

% Comments : Sean Bechhofer says there are some errors in the encoding of
%            datatypes, so this problem may not be perfect. At least it's
%            still representative of the type of reasoning required for OWL.
%          : The concept should be coherent but has no finite model
%------------------------------------------------------------------------------
fof(cSatisfiable_substitution_1,axiom,
    ! [A,B] :
      ( ( A = B
        & cSatisfiable(A) )
     => cSatisfiable(B) ) ).

fof(ca_substitution_1,axiom,
    ! [A,B] :
      ( ( A = B
        & ca(A) )
     => ca(B) ) ).

fof(ca_Vx2_substitution_1,axiom,
    ! [A,B] :
      ( ( A = B
        & ca_Vx2(A) )
     => ca_Vx2(B) ) ).

fof(caxcomp_substitution_1,axiom,
    ! [A,B] :
      ( ( A = B
        & caxcomp(A) )
     => caxcomp(B) ) ).

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
            ( rinvF(X,Y)
            & ca(Y) )
        & caxcomp(X)
        & ? [Y] :
            ( rinvR(X,Y)
            & ca_Vx2(Y) ) ) ) ).

%----Equality ca
fof(axiom_3,axiom,
    ! [X] :
      ( ca(X)
    <=> ~ ? [Y] : ra_Px1(X,Y) ) ).

%----Equality caxcomp
fof(axiom_4,axiom,
    ! [X] :
      ( caxcomp(X)
    <=> ? [Y0] : ra_Px1(X,Y0) ) ).

%----Equality ca_Vx2
fof(axiom_5,axiom,
    ! [X] :
      ( ca_Vx2(X)
    <=> ? [Y] :
          ( rinvF(X,Y)
          & ca(Y) ) ) ).

%----Super cowlThing
fof(axiom_6,axiom,
    ! [X] :
      ( cowlThing(X)
     => ! [Y0,Y1] :
          ( ( rf(X,Y0)
            & rf(X,Y1) )
         => Y0 = Y1 ) ) ).

%----Inverse: rinvF
fof(axiom_7,axiom,
    ! [X,Y] :
      ( rinvF(X,Y)
    <=> rf(Y,X) ) ).

%----Inverse: rinvR
fof(axiom_8,axiom,
    ! [X,Y] :
      ( rinvR(X,Y)
    <=> rr(Y,X) ) ).

%----Transitive: rr
fof(axiom_9,axiom,
    ! [X,Y,Z] :
      ( ( rr(X,Y)
        & rr(Y,Z) )
     => rr(X,Z) ) ).

%----i2003_11_14_17_16_25617
fof(axiom_10,axiom,
    cSatisfiable(i2003_11_14_17_16_25617) ).

fof(axiom_11,axiom,
    ! [X,Y] :
      ( rf(X,Y)
     => rr(X,Y) ) ).

%------------------------------------------------------------------------------
