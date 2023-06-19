%------------------------------------------------------------------------------
% File     : KRS030+1 : TPTP v8.1.2. Released v3.1.0.
% Domain   : Knowledge Representation (Semantic Web)
% Problem  : DL Test: t10.1
% Version  : Especial.
% English  :

% Refs     : [Bec03] Bechhofer (2003), Email to G. Sutcliffe
%          : [TR+04] Tsarkov et al. (2004), Using Vampire to Reason with OW
% Source   : [Bec03]
% Names    : consistent_description-logic-Manifest009 [Bec03]

% Status   : Satisfiable
% Rating   : 0.00 v6.1.0, 0.20 v6.0.0, 0.00 v3.1.0
% Syntax   : Number of formulae    :   30 (   1 unt;   0 def)
%            Number of atoms       :   83 (  21 equ)
%            Maximal formula atoms :    5 (   2 avg)
%            Number of connectives :   56 (   3   ~;   0   |;  25   &)
%                                         (   5 <=>;  23  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    7 (   5 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :   13 (  12 usr;   0 prp; 1-2 aty)
%            Number of functors    :    1 (   1 usr;   1 con; 0-0 aty)
%            Number of variables   :   72 (  70   !;   2   ?)
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

fof(cp_substitution_1,axiom,
    ! [A,B] :
      ( ( A = B
        & cp(A) )
     => cp(B) ) ).

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

fof(rinvF1_substitution_1,axiom,
    ! [A,B,C] :
      ( ( A = B
        & rinvF1(A,C) )
     => rinvF1(B,C) ) ).

fof(rinvF1_substitution_2,axiom,
    ! [A,B,C] :
      ( ( A = B
        & rinvF1(C,A) )
     => rinvF1(C,B) ) ).

fof(rinvS_substitution_1,axiom,
    ! [A,B,C] :
      ( ( A = B
        & rinvS(A,C) )
     => rinvS(B,C) ) ).

fof(rinvS_substitution_2,axiom,
    ! [A,B,C] :
      ( ( A = B
        & rinvS(C,A) )
     => rinvS(C,B) ) ).

fof(rs_substitution_1,axiom,
    ! [A,B,C] :
      ( ( A = B
        & rs(A,C) )
     => rs(B,C) ) ).

fof(rs_substitution_2,axiom,
    ! [A,B,C] :
      ( ( A = B
        & rs(C,A) )
     => rs(C,B) ) ).

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
            & ~ cp(Y) )
        & ? [Y] :
            ( rf(X,Y)
            & cp(Y) ) ) ) ).

%----Functional: rf
fof(axiom_3,axiom,
    ! [X,Y,Z] :
      ( ( rf(X,Y)
        & rf(X,Z) )
     => Y = Z ) ).

%----Functional: rf1
fof(axiom_4,axiom,
    ! [X,Y,Z] :
      ( ( rf1(X,Y)
        & rf1(X,Z) )
     => Y = Z ) ).

%----Inverse: rinvF
fof(axiom_5,axiom,
    ! [X,Y] :
      ( rinvF(X,Y)
    <=> rf(Y,X) ) ).

%----Inverse: rinvF1
fof(axiom_6,axiom,
    ! [X,Y] :
      ( rinvF1(X,Y)
    <=> rf1(Y,X) ) ).

%----Inverse: rinvS
fof(axiom_7,axiom,
    ! [X,Y] :
      ( rinvS(X,Y)
    <=> rs(Y,X) ) ).

%----Functional: rs
fof(axiom_8,axiom,
    ! [X,Y,Z] :
      ( ( rs(X,Y)
        & rs(X,Z) )
     => Y = Z ) ).

%----i2003_11_14_17_15_26245
fof(axiom_9,axiom,
    cSatisfiable(i2003_11_14_17_15_26245) ).

fof(axiom_10,axiom,
    ! [X,Y] :
      ( rs(X,Y)
     => rf(X,Y) ) ).

fof(axiom_11,axiom,
    ! [X,Y] :
      ( rs(X,Y)
     => rf1(X,Y) ) ).

%------------------------------------------------------------------------------
