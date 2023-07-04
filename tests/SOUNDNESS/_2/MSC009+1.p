%--------------------------------------------------------------------------
% File     : MSC009+1 : TPTP v8.1.2. Released v2.0.0.
% Domain   : Miscellaneous
% Problem  : Definitions of a family structure
% Version  : Especial.
% English  :

% Refs     : [FL+93] Fermuller et al. (1993), Resolution Methods for the De
% Source   : [FL+93]
% Names    :

% Status   : Satisfiable
% Rating   : 0.00 v6.1.0, 0.20 v6.0.0, 0.00 v4.1.0, 0.25 v4.0.1, 0.00 v3.1.0, 0.17 v2.6.0, 0.25 v2.5.0, 0.33 v2.4.0, 0.00 v2.1.0
% Syntax   : Number of formulae    :    7 (   0 unt;   0 def)
%            Number of atoms       :   26 (   0 equ)
%            Maximal formula atoms :    5 (   3 avg)
%            Number of connectives :   21 (   2   ~;   1   |;  10   &)
%                                         (   7 <=>;   1  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    8 (   6 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :   10 (  10 usr;   0 prp; 1-2 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :   13 (   8   !;   5   ?)
% SPC      : FOF_SAT_RFO_NEQ

% Comments :
%--------------------------------------------------------------------------
fof(female,axiom,
    ! [X] :
      ( female(X)
    <=> ~ male(X) ) ).

fof(person,axiom,
    ! [X] :
      ( person(X)
    <=> ? [Y] :
          ( sex(X,Y)
          & ( male(Y)
            | female(Y) ) ) ) ).

fof(parent,axiom,
    ! [X] :
      ( parent(X)
    <=> ( person(X)
        & ? [Y] :
            ( child(X,Y)
            & person(Y) ) ) ) ).

fof(mother,axiom,
    ! [X] :
      ( mother(X)
    <=> ( parent(X)
        & ? [Y] :
            ( sex(X,Y)
            & female(Y) ) ) ) ).

fof(father,axiom,
    ! [X] :
      ( father(X)
    <=> ( parent(X)
        & ~ mother(X) ) ) ).

fof(grandparent,axiom,
    ! [X] :
      ( grandparent(X)
    <=> ( parent(X)
        & ? [Y] :
            ( child(X,Y)
            & parent(Y) ) ) ) ).

fof(parent_with_sons_only,axiom,
    ! [X] :
      ( parent_with_sons_only(X)
    <=> ( parent(X)
        & ! [Y] :
            ( child(X,Y)
           => ? [Z] :
                ( sex(Y,Z)
                & male(Z) ) ) ) ) ).

%--------------------------------------------------------------------------
