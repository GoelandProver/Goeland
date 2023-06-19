%------------------------------------------------------------------------------
% File     : KRS173+1 : TPTP v8.1.2. Released v3.1.0.
% Domain   : Knowledge Representation (Semantic Web)
% Problem  : A simple infinite loop for implementors to avoid
% Version  : Especial.
% English  :

% Refs     : [Bec03] Bechhofer (2003), Email to G. Sutcliffe
%          : [TR+04] Tsarkov et al. (2004), Using Vampire to Reason with OW
% Source   : [Bec03]
% Names    : positive_someValuesFrom-Manifest003 [Bec03]

% Status   : CounterSatisfiable
% Rating   : 0.00 v7.0.0, 0.33 v6.4.0, 0.00 v6.1.0, 0.10 v6.0.0, 0.00 v5.5.0, 0.14 v5.4.0, 0.40 v5.3.0, 0.46 v5.2.0, 0.25 v5.0.0, 0.11 v4.1.0, 0.17 v4.0.1, 0.33 v3.5.0, 0.25 v3.4.0, 0.17 v3.2.0, 0.00 v3.1.0
% Syntax   : Number of formulae    :    5 (   1 unt;   0 def)
%            Number of atoms       :   17 (   0 equ)
%            Maximal formula atoms :    9 (   3 avg)
%            Number of connectives :   16 (   4   ~;   0   |;   9   &)
%                                         (   3 <=>;   0  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    7 (   4 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :    6 (   6 usr;   0 prp; 1-2 aty)
%            Number of functors    :    3 (   3 usr;   3 con; 0-0 aty)
%            Number of variables   :    6 (   5   !;   1   ?)
% SPC      : FOF_CSA_RFO_NEQ

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

%----Equality cperson
fof(axiom_2,axiom,
    ! [X] :
      ( cperson(X)
    <=> ? [Y] :
          ( rparent(X,Y)
          & cperson(Y) ) ) ).

%----ifred
fof(axiom_3,axiom,
    cperson(ifred) ).

%----Thing and Nothing
%----String and Integer disjoint
%----ifred
%----i2003_11_14_17_14_14920
%----i2003_11_14_17_14_14998
fof(the_axiom,conjecture,
    ( ! [X] :
        ( cowlThing(X)
        & ~ cowlNothing(X) )
    & ! [X] :
        ( xsd_string(X)
      <=> ~ xsd_integer(X) )
    & cowlThing(ifred)
    & rparent(ifred,i2003_11_14_17_14_14998)
    & cowlThing(i2003_11_14_17_14_14920)
    & cowlThing(i2003_11_14_17_14_14998)
    & rparent(i2003_11_14_17_14_14998,i2003_11_14_17_14_14920) ) ).

%------------------------------------------------------------------------------
