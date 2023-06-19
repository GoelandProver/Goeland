%------------------------------------------------------------------------------
% File     : KRS026+1 : TPTP v8.1.2. Released v3.1.0.
% Domain   : Knowledge Representation (Semantic Web)
% Problem  : The extension of OWL Thing may be a singleton in OWL DL
% Version  : Especial.
% English  :

% Refs     : [Bec03] Bechhofer (2003), Email to G. Sutcliffe
%          : [TR+04] Tsarkov et al. (2004), Using Vampire to Reason with OW
% Source   : [Bec03]
% Names    : consistent_Thing-Manifest004 [Bec03]

% Status   : Satisfiable
% Rating   : 0.00 v7.3.0, 0.67 v7.1.0, 0.00 v3.1.0
% Syntax   : Number of formulae    :    8 (   1 unt;   0 def)
%            Number of atoms       :   19 (   5 equ)
%            Maximal formula atoms :    3 (   2 avg)
%            Number of connectives :   13 (   2   ~;   0   |;   5   &)
%                                         (   2 <=>;   4  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    5 (   4 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :    5 (   4 usr;   0 prp; 1-2 aty)
%            Number of functors    :    1 (   1 usr;   1 con; 0-0 aty)
%            Number of variables   :   11 (  11   !;   0   ?)
% SPC      : FOF_SAT_EPR_SEQ

% Comments : Sean Bechhofer says there are some errors in the encoding of
%            datatypes, so this problem may not be perfect. At least it's
%            still representative of the type of reasoning required for OWL.
%------------------------------------------------------------------------------
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

%----Enumeration cowlThing
fof(axiom_2,axiom,
    ! [X] :
      ( cowlThing(X)
    <=> X = is ) ).

%----is
fof(axiom_3,axiom,
    cowlThing(is) ).

%------------------------------------------------------------------------------
