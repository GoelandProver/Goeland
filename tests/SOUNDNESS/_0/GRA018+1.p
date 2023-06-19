%------------------------------------------------------------------------------
% File     : GRA018+1 : TPTP v8.1.2. Released v3.2.0.
% Domain   : Graph Theory
% Problem  : 2-colored completed graph size 17 without subgraph of size 4
% Version  : Especial.
% English  : Find a 2-colored completed graph of size 17 without a complete
%            subgraph of size 4 which all the edges have the same color.

% Refs     : [Bez05] Bezem (2005), Email to Geoff Sutcliffe
% Source   : [Bez05]
% Names    : r4_17 [Bez05]

% Status   : CounterSatisfiable
% Rating   : 0.00 v6.3.0, 0.25 v6.2.0, 0.29 v6.1.0, 0.50 v6.0.0, 0.33 v5.5.0, 0.50 v5.4.0, 0.40 v5.3.0, 0.75 v5.0.0, 0.67 v3.7.0, 0.33 v3.5.0, 0.50 v3.4.0, 0.67 v3.3.0, 0.89 v3.2.0

% Syntax   : Number of formulae    :    7 (   1 unt;   0 def)
%            Number of atoms       :   40 (   0 equ)
%            Maximal formula atoms :   16 (   5 avg)
%            Number of connectives :   33 (   0   ~;   1   |;  27   &)
%                                         (   0 <=>;   5  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   16 (   8 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :    4 (   4 usr;   1 prp; 0-2 aty)
%            Number of functors    :   17 (  17 usr;  17 con; 0-0 aty)
%            Number of variables   :   15 (  15   !;   0   ?)
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
    & less_than(n16,n17) ) ).

fof(red_clique,axiom,
    ! [A,B,C,D] :
      ( ( red(A,B)
        & red(A,C)
        & red(B,C)
        & red(A,D)
        & red(B,D)
        & red(C,D) )
     => goal ) ).

fof(green_clique,axiom,
    ! [A,B,C,D] :
      ( ( green(A,B)
        & green(A,C)
        & green(B,C)
        & green(A,D)
        & green(B,D)
        & green(C,D) )
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
