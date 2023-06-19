%------------------------------------------------------------------------------
% File     : GRA026+1 : TPTP v8.1.2. Released v3.2.0.
% Domain   : Graph Theory
% Problem  : 2-colored completed graph size 20 without subgraph of size 6
% Version  : Especial.
% English  : Find a 2-colored completed graph of size 20 without a complete
%            subgraph of size 6 which all the edges have the same color.

% Refs     : [Bez05] Bezem (2005), Email to Geoff Sutcliffe
% Source   : [Bez05]
% Names    : r6_20 [Bez05]

% Status   : CounterSatisfiable
% Rating   : 0.00 v6.3.0, 0.25 v6.2.0, 0.29 v6.1.0, 0.33 v5.5.0, 0.40 v5.4.0, 0.20 v5.3.0, 0.50 v5.0.0, 0.33 v4.1.0, 0.83 v4.0.1, 0.33 v3.7.0, 0.67 v3.5.0, 0.50 v3.4.0, 0.67 v3.3.0, 0.78 v3.2.0

% Syntax   : Number of formulae    :    7 (   1 unt;   0 def)
%            Number of atoms       :   61 (   0 equ)
%            Maximal formula atoms :   19 (   8 avg)
%            Number of connectives :   54 (   0   ~;   1   |;  48   &)
%                                         (   0 <=>;   5  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   22 (  11 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :    4 (   4 usr;   1 prp; 0-2 aty)
%            Number of functors    :   20 (  20 usr;  20 con; 0-0 aty)
%            Number of variables   :   19 (  19   !;   0   ?)
% SPC      : FOF_CSA_EPR_NEQ

% Comments :
%------------------------------------------------------------------------------
fof(ordering,axiom,
    ( less_than(n1,n2)
    & less_than(n2,n3)
    & less_than(n3,n4)
    & less_than(n4,n5)
    & less_than(n5,n6)
    & less_than(n6,n7)
    & less_than(n7,n8)
    & less_than(n8,n9)
    & less_than(n9,n10)
    & less_than(n10,n11)
    & less_than(n11,n12)
    & less_than(n12,n13)
    & less_than(n13,n14)
    & less_than(n14,n15)
    & less_than(n15,n16)
    & less_than(n16,n17)
    & less_than(n17,n18)
    & less_than(n18,n19)
    & less_than(n19,n20) ) ).

fof(red_clique,axiom,
    ! [A,B,C,D,E,F] :
      ( ( red(A,B)
        & red(A,C)
        & red(B,C)
        & red(A,D)
        & red(B,D)
        & red(C,D)
        & red(A,E)
        & red(B,E)
        & red(C,E)
        & red(D,E)
        & red(A,F)
        & red(B,F)
        & red(C,F)
        & red(D,F)
        & red(E,F) )
     => goal ) ).

fof(green_clique,axiom,
    ! [A,B,C,D,E,F] :
      ( ( green(A,B)
        & green(A,C)
        & green(B,C)
        & green(A,D)
        & green(B,D)
        & green(C,D)
        & green(A,E)
        & green(B,E)
        & green(C,E)
        & green(D,E)
        & green(A,F)
        & green(B,F)
        & green(C,F)
        & green(D,F)
        & green(E,F) )
     => goal ) ).

fof(no_overlap,axiom,
    ! [A,B] :
      ( ( red(A,B)
        & green(A,B) )
     => goal ) ).

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
