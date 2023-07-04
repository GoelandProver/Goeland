%------------------------------------------------------------------------------
% File     : PUZ069+2 : TPTP v8.1.2. Bugfixed v5.4.0.
% Domain   : Puzzles (Sudoku)
% Problem  : Tuesday's Sudoku
% Version  : [Kos08] axioms : Especial.
% English  : 1 76
%                 85
%             2    3
%               24
%            9      6
%                53
%               7   1
%             3    2

% Refs     : [Kos08] Kossey (2008), Email to G. Sutcliffe
% Source   : [Kos08]
% Names    :

% Status   : Satisfiable
% Rating   : 0.00 v7.3.0, 0.67 v7.1.0, 0.00 v5.4.0
% Syntax   : Number of formulae    : 10547 (  17 unt;   0 def)
%            Number of atoms       : 23345 (   0 equ)
%            Maximal formula atoms :    9 (   2 avg)
%            Number of connectives : 23004 (10206   ~;2592   |;   0   &)
%                                         (   0 <=>;10206  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    9 (   3 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :    1 (   1 usr;   0 prp; 3-3 aty)
%            Number of functors    :    9 (   9 usr;   9 con; 0-0 aty)
%            Number of variables   :    0 (   0   !;   0   ?)
% SPC      : FOF_SAT_EPR_NEQ

% Comments :
% Bugfixes : v5.4.0 - fixed axiom in PUZ006+0.ax
%------------------------------------------------------------------------------
include('Axioms/PUZ006+0.ax').
%------------------------------------------------------------------------------
fof(ax353,axiom,
    p(n1,n1,n1) ).

fof(ax354,axiom,
    p(n1,n3,n7) ).

fof(ax355,axiom,
    p(n1,n4,n6) ).

fof(ax356,axiom,
    p(n2,n6,n8) ).

fof(ax357,axiom,
    p(n2,n7,n5) ).

fof(ax358,axiom,
    p(n3,n2,n2) ).

fof(ax359,axiom,
    p(n3,n7,n3) ).

fof(ax360,axiom,
    p(n4,n4,n2) ).

fof(ax361,axiom,
    p(n4,n5,n4) ).

fof(ax362,axiom,
    p(n5,n1,n9) ).

fof(ax363,axiom,
    p(n5,n8,n6) ).

fof(ax364,axiom,
    p(n6,n5,n5) ).

fof(ax365,axiom,
    p(n6,n6,n3) ).

fof(ax366,axiom,
    p(n7,n4,n7) ).

fof(ax367,axiom,
    p(n7,n8,n1) ).

fof(ax368,axiom,
    p(n8,n2,n3) ).

fof(ax369,axiom,
    p(n8,n7,n2) ).

%------------------------------------------------------------------------------
