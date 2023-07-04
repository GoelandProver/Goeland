%------------------------------------------------------------------------------
% File     : KRS055+1 : TPTP v8.1.2. Released v3.1.0.
% Domain   : Knowledge Representation (Semantic Web)
% Problem  : owl:disjointWith edges may be within OWL DL
% Version  : Especial.
% English  : If the owl:disjointWith edges in the graph form undirected
%            complete subgraphs which share URIref nodes but do not share
%            blank node then this may be within OWL DL.

% Refs     : [Bec03] Bechhofer (2003), Email to G. Sutcliffe
%          : [TR+04] Tsarkov et al. (2004), Using Vampire to Reason with OW
% Source   : [Bec03]
% Names    : consistent_disjointWith-Manifest007 [Bec03]

% Status   : Satisfiable
% Rating   : 0.00 v3.1.0
% Syntax   : Number of formulae    :    4 (   0 unt;   0 def)
%            Number of atoms       :   16 (   0 equ)
%            Maximal formula atoms :    6 (   4 avg)
%            Number of connectives :   20 (   8   ~;   0   |;  11   &)
%                                         (   1 <=>;   0  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    6 (   5 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :    9 (   9 usr;   0 prp; 1-1 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :    4 (   4   !;   0   ?)
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

fof(axiom_2,axiom,
    ! [X] :
      ( ~ ( cE(X)
          & cA(X) )
      & ~ ( cE(X)
          & cD(X) )
      & ~ ( cA(X)
          & cD(X) ) ) ).

fof(axiom_3,axiom,
    ! [X] :
      ( ~ ( cB(X)
          & cA(X) )
      & ~ ( cB(X)
          & cC(X) )
      & ~ ( cA(X)
          & cC(X) ) ) ).

%------------------------------------------------------------------------------
