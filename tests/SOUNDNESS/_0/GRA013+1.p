%------------------------------------------------------------------------------
% File     : GRA013+1 : TPTP v8.1.2. Released v3.2.0.
% Domain   : Graph Theory
% Problem  : 2-colored completed graph size 5 without subgraph of size 3
% Version  : Especial.
% English  : Find a 2-colored completed graph of size 5 without a complete
%            subgraph of size 3 which all the edges have the same color.

% Refs     : [Bez05] Bezem (2005), Email to Geoff Sutcliffe
% Source   : [Bez05]
% Names    : r3_5 [Bez05]

% Status   : CounterSatisfiable
% Rating   : 0.00 v6.1.0, 0.17 v6.0.0, 0.00 v4.1.0, 0.17 v4.0.1, 0.00 v3.3.0, 0.56 v3.2.0

% Syntax   : Number of formulae    :    6 (   1 unt;   0 def)
%            Number of atoms       :   19 (   0 equ)
%            Maximal formula atoms :    4 (   3 avg)
%            Number of connectives :   13 (   0   ~;   1   |;   8   &)
%                                         (   0 <=>;   4  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    7 (   5 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :    4 (   4 usr;   1 prp; 0-2 aty)
%            Number of functors    :    5 (   5 usr;   5 con; 0-0 aty)
%            Number of variables   :   11 (  11   !;   0   ?)
% SPC      : FOF_CSA_EPR_NEQ

% Comments :
%------------------------------------------------------------------------------
fof(red_clique,axiom,
    ! [A,B,C] :
      ( ( red(A,B)
        & red(B,C)
        & red(A,C) )
     => goal ) ).

fof(green_clique,axiom,
    ! [A,B,C] :
      ( ( green(A,B)
        & green(B,C)
        & green(A,C) )
     => goal ) ).

fof(ordering,axiom,
    ( less_than(n1,n2)
    & less_than(n2,n3)
    & less_than(n3,n4)
    & less_than(n4,n5) ) ).

fof(less_than_transitive,axiom,
    ! [A,B,C] :
      ( ( less_than(A,B)
        & less_than(B,C) )
     => less_than(A,C) ) ).

fof(partition,axiom,
    ! [A,B] :
      ( less_than(A,B)
     => ( red(A,B)
        | green(A,B) ) ) ).

fof(goal_to_be_proved,conjecture,
    goal ).

%------------------------------------------------------------------------------
