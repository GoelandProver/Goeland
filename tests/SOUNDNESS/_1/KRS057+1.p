%------------------------------------------------------------------------------
% File     : KRS057+1 : TPTP v8.1.2. Released v3.1.0.
% Domain   : Knowledge Representation (Semantic Web)
% Problem  : A possible mapping of the EquivalentClasses axiom
% Version  : Especial.
% English  : A possible mapping of the EquivalentClasses axiom, which is
%            connected but without a Hamiltonian path.

% Refs     : [Bec03] Bechhofer (2003), Email to G. Sutcliffe
%          : [TR+04] Tsarkov et al. (2004), Using Vampire to Reason with OW
% Source   : [Bec03]
% Names    : consistent_equivalentClass-Manifest009 [Bec03]

% Status   : Satisfiable
% Rating   : 0.00 v7.3.0, 0.67 v7.1.0, 0.00 v3.1.0
% Syntax   : Number of formulae    :   11 (   1 unt;   0 def)
%            Number of atoms       :   38 (  10 equ)
%            Maximal formula atoms :   12 (   3 avg)
%            Number of connectives :   32 (   5   ~;   0   |;  13   &)
%                                         (   7 <=>;   7  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    9 (   5 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :    8 (   7 usr;   0 prp; 1-2 aty)
%            Number of functors    :    1 (   1 usr;   1 con; 0-0 aty)
%            Number of variables   :   17 (  17   !;   0   ?)
% SPC      : FOF_SAT_EPR_SEQ

% Comments : Sean Bechhofer says there are some errors in the encoding of
%            datatypes, so this problem may not be perfect. At least it's
%            still representative of the type of reasoning required for OWL.
%------------------------------------------------------------------------------
fof(cB_substitution_1,axiom,
    ! [A,B] :
      ( ( A = B
        & cB(A) )
     => cB(B) ) ).

fof(cC_substitution_1,axiom,
    ! [A,B] :
      ( ( A = B
        & cC(A) )
     => cC(B) ) ).

fof(cD_substitution_1,axiom,
    ! [A,B] :
      ( ( A = B
        & cD(A) )
     => cD(B) ) ).

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

%----iA
fof(axiom_2,axiom,
    cowlThing(iA) ).

fof(axiom_3,axiom,
    ! [X] :
      ( ( cB(X)
      <=> cC(X) )
      & ( cB(X)
      <=> X = iA )
      & ( cB(X)
      <=> ~ cD(X) )
      & ( cC(X)
      <=> X = iA )
      & ( cC(X)
      <=> ~ cD(X) )
      & ( X = iA
      <=> ~ cD(X) ) ) ).

%------------------------------------------------------------------------------
