%------------------------------------------------------------------------------
% File     : KRS021+1 : TPTP v8.1.2. Released v3.1.0.
% Domain   : Knowledge Representation (Semantic Web)
% Problem  : Informal semantics for RDF container are not respected by OWL
% Version  : Especial.
% English  : The informal semantics for RDF container vocabulary, indicated by
%            the comment, are not respected by the formal machinery of OWL.

% Refs     : [Bec03] Bechhofer (2003), Email to G. Sutcliffe
%          : [TR+04] Tsarkov et al. (2004), Using Vampire to Reason with OW
% Source   : [Bec03]
% Names    : consistent_I5.2-Manifest010 [Bec03]

% Status   : Satisfiable
% Rating   : 0.00 v3.1.0
% Syntax   : Number of formulae    :    5 (   3 unt;   0 def)
%            Number of atoms       :    7 (   0 equ)
%            Maximal formula atoms :    2 (   1 avg)
%            Number of connectives :    4 (   2   ~;   0   |;   1   &)
%                                         (   1 <=>;   0  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    4 (   2 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :    6 (   6 usr;   0 prp; 1-2 aty)
%            Number of functors    :    2 (   2 usr;   2 con; 0-0 aty)
%            Number of variables   :    2 (   2   !;   0   ?)
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

%----i2003_11_14_17_14_36685
fof(axiom_2,axiom,
    crdfBag(i2003_11_14_17_14_36685) ).

fof(axiom_3,axiom,
    rrdf_1(i2003_11_14_17_14_36685,i2003_11_14_17_14_36852) ).

%----i2003_11_14_17_14_36852
fof(axiom_4,axiom,
    cowlThing(i2003_11_14_17_14_36852) ).

%------------------------------------------------------------------------------
