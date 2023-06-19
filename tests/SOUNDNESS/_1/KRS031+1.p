%------------------------------------------------------------------------------
% File     : KRS031+1 : TPTP v8.1.2. Released v3.1.0.
% Domain   : Knowledge Representation (Semantic Web)
% Problem  : DL Test: t2.1
% Version  : Especial.
% English  :

% Refs     : [Bec03] Bechhofer (2003), Email to G. Sutcliffe
%          : [TR+04] Tsarkov et al. (2004), Using Vampire to Reason with OW
% Source   : [Bec03]
% Names    : consistent_description-logic-Manifest016 [Bec03]

% Status   : Satisfiable
% Rating   : 0.00 v6.1.0, 0.20 v6.0.0, 0.00 v3.1.0
% Syntax   : Number of formulae    :   22 (   1 unt;   0 def)
%            Number of atoms       :   63 (  15 equ)
%            Maximal formula atoms :    5 (   2 avg)
%            Number of connectives :   44 (   3   ~;   0   |;  19   &)
%                                         (   2 <=>;  20  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    7 (   5 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :   11 (  10 usr;   0 prp; 1-2 aty)
%            Number of functors    :    1 (   1 usr;   1 con; 0-0 aty)
%            Number of variables   :   48 (  46   !;   2   ?)
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

fof(rf1_substitution_1,axiom,
    ! [A,B,C] :
      ( ( A = B
        & rf1(A,C) )
     => rf1(B,C) ) ).

fof(rf1_substitution_2,axiom,
    ! [A,B,C] :
      ( ( A = B
        & rf1(C,A) )
     => rf1(C,B) ) ).

fof(rf2_substitution_1,axiom,
    ! [A,B,C] :
      ( ( A = B
        & rf2(A,C) )
     => rf2(B,C) ) ).

fof(rf2_substitution_2,axiom,
    ! [A,B,C] :
      ( ( A = B
        & rf2(C,A) )
     => rf2(C,B) ) ).

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
            ( rf1(X,Y)
            & cp1(Y) )
        & ? [Y] :
            ( rf2(X,Y)
            & cp2(Y) ) ) ) ).

%----Super cp1
fof(axiom_3,axiom,
    ! [X] :
      ( cp1(X)
     => ~ cp2(X) ) ).

%----Super cowlThing
fof(axiom_4,axiom,
    ! [X] :
      ( cowlThing(X)
     => ! [Y0,Y1] :
          ( ( rf2(X,Y0)
            & rf2(X,Y1) )
         => Y0 = Y1 ) ) ).

%----Super cowlThing
fof(axiom_5,axiom,
    ! [X] :
      ( cowlThing(X)
     => ! [Y0,Y1] :
          ( ( rf1(X,Y0)
            & rf1(X,Y1) )
         => Y0 = Y1 ) ) ).

%----i2003_11_14_17_15_2938
fof(axiom_6,axiom,
    cSatisfiable(i2003_11_14_17_15_2938) ).

fof(axiom_7,axiom,
    ! [X,Y] :
      ( rr(X,Y)
     => rf1(X,Y) ) ).

fof(axiom_8,axiom,
    ! [X,Y] :
      ( rr(X,Y)
     => rf2(X,Y) ) ).

%------------------------------------------------------------------------------
