%------------------------------------------------------------------------------
% File     : PUZ138+2 : TPTP v8.1.2. Released v5.5.0.
% Domain   : Puzzles (Sudoku)
% Problem  : Platinum Blonde
% Version  : [Kos08] axioms : Especial.
% English  : +---+---+---+
%            |   |   | 12|
%            |   |   |  3|
%            |  2|3  |4  |
%            +---+---+---+
%            |  1|8  |  5|
%            | 6 | 7 |8  |
%            |   |  9|   |
%            +---+---+---+
%            |  8|5  |   |
%            |9  | 4 |5  |
%            |47 |  6|   |
%            +---+---+---+

% Refs     : [Kos08] Kossey (2008), Email to G. Sutcliffe
%          : [Sti12] Stickel (2012), Email to G. Sutcliffe
% Source   : [Sti12]
% Names    :

% Status   : Satisfiable
% Rating   : 0.00 v7.3.0, 0.67 v7.1.0, 0.00 v5.5.0
% Syntax   : Number of formulae    : 10551 (  21 unt;   0 def)
%            Number of atoms       : 23349 (   0 equ)
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
%------------------------------------------------------------------------------
include('Axioms/PUZ006+0.ax').
%------------------------------------------------------------------------------
fof(ax181,axiom,
    p(n1,n8,n1) ).

fof(ax192,axiom,
    p(n1,n9,n2) ).

fof(ax293,axiom,
    p(n2,n9,n3) ).

fof(ax332,axiom,
    p(n3,n3,n2) ).

fof(ax343,axiom,
    p(n3,n4,n3) ).

fof(ax374,axiom,
    p(n3,n7,n4) ).

fof(ax431,axiom,
    p(n4,n3,n1) ).

fof(ax448,axiom,
    p(n4,n4,n8) ).

fof(ax495,axiom,
    p(n4,n9,n5) ).

fof(ax526,axiom,
    p(n5,n2,n6) ).

fof(ax557,axiom,
    p(n5,n5,n7) ).

fof(ax578,axiom,
    p(n5,n7,n8) ).

fof(ax669,axiom,
    p(n6,n6,n9) ).

fof(ax738,axiom,
    p(n7,n3,n8) ).

fof(ax745,axiom,
    p(n7,n4,n5) ).

fof(ax819,axiom,
    p(n8,n1,n9) ).

fof(ax854,axiom,
    p(n8,n5,n4) ).

fof(ax875,axiom,
    p(n8,n7,n5) ).

fof(ax914,axiom,
    p(n9,n1,n4) ).

fof(ax927,axiom,
    p(n9,n2,n7) ).

fof(ax966,axiom,
    p(n9,n6,n6) ).

%------------------------------------------------------------------------------
