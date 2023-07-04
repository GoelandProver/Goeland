%------------------------------------------------------------------------------
% File     : KRS060+1 : TPTP v8.1.2. Released v3.1.0.
% Domain   : Knowledge Representation (Semantic Web)
% Problem  : Description cannot be expressed as a multicomponent restriction
% Version  : Especial.
% English  : This description cannot be expressed as a multicomponent
%            restriction in the abstract syntax.

% Refs     : [Bec03] Bechhofer (2003), Email to G. Sutcliffe
%          : [TR+04] Tsarkov et al. (2004), Using Vampire to Reason with OW
% Source   : [Bec03]
% Names    : consistent_miscellaneous-Manifest103 [Bec03]

% Status   : Satisfiable
% Rating   : 0.00 v3.1.0
% Syntax   : Number of formulae    :    5 (   1 unt;   0 def)
%            Number of atoms       :    9 (   0 equ)
%            Maximal formula atoms :    2 (   1 avg)
%            Number of connectives :    6 (   2   ~;   0   |;   2   &)
%                                         (   1 <=>;   1  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    4 (   3 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :    8 (   8 usr;   0 prp; 1-2 aty)
%            Number of functors    :    1 (   1 usr;   1 con; 0-0 aty)
%            Number of variables   :    4 (   3   !;   1   ?)
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

%----ii
fof(axiom_2_AndLHS,axiom,
    ! [X] :
      ( rp(ii,X)
     => ca(X) ) ).

fof(axiom_2_AndRHS,axiom,
    ? [X] :
      ( rq(ii,X)
      & cs(X) ) ).

%----ii
fof(axiom_3,axiom,
    cowlThing(ii) ).

%------------------------------------------------------------------------------
