%------------------------------------------------------------------------------
% File     : GEO353+1 : TPTP v8.1.2. Released v6.4.0.
% Domain   : Geometry (Constructive)
% Problem  : Apartness geometry
% Version  : [vPl95] axioms.
% English  :

% Refs     : [vPl95] von Plato (1995), The Axioms of Constructive Geometry
% Source   : [TPTP]
% Names    :

% Status   : Satisfiable
% Rating   : 0.33 v7.1.0, 0.00 v6.4.0
% Syntax   : Number of formulae    :   35 (   7 unt;   0 def)
%            Number of atoms       :   93 (   0 equ)
%            Maximal formula atoms :    6 (   2 avg)
%            Number of connectives :   86 (  28   ~;  19   |;  13   &)
%                                         (   5 <=>;  21  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    9 (   5 avg)
%            Maximal term depth    :    2 (   1 avg)
%            Number of predicates  :   12 (  12 usr;   0 prp; 1-2 aty)
%            Number of functors    :    4 (   4 usr;   0 con; 2-2 aty)
%            Number of variables   :   81 (  81   !;   0   ?)
% SPC      : FOF_SAT_RFO_NEQ

% Comments :
%------------------------------------------------------------------------------
%----Apartness geometry
include('Axioms/GEO006+0.ax').
%----Projective geometry
include('Axioms/GEO006+1.ax').
%----Affine geometry
include('Axioms/GEO006+2.ax').
%----Orthogonality
include('Axioms/GEO006+3.ax').
%----Classical orthogonality
include('Axioms/GEO006+4.ax').
%----Rules of construction
include('Axioms/GEO006+5.ax').
%----Geometry definitions
include('Axioms/GEO006+6.ax').
%------------------------------------------------------------------------------
