%------------------------------------------------------------------------------
% File     : GEO224+2 : TPTP v8.1.2. Released v3.3.0.
% Domain   : Geometry (Constructive)
% Problem  : Find point incident to line
% Version  : [vPl95] axioms : Reduced > Especial.
% English  : Assume orthogonal geometry. Given a point and a line, to find
%            a point incident with the line.

% Refs     : [vPl95] von Plato (1995), The Axioms of Constructive Geometry
%          : [Li97]  Li (1997), Replacing the Axioms for Connecting Lines a
%          : [Li98]  Li (1998), A Shorter and Intuitive Axiom to Replace th
%          : [ROK06] Raths et al. (2006), The ILTP Problem Library for Intu
% Source   : [ILTP]
% Names    :

% Status   : CounterSatisfiable
% Rating   : 0.00 v7.4.0, 0.33 v7.3.0, 0.00 v7.0.0, 0.33 v6.4.0, 0.00 v6.2.0, 0.22 v6.1.0, 0.10 v6.0.0, 0.00 v5.5.0, 0.29 v5.4.0, 0.80 v5.3.0, 0.85 v5.2.0, 0.62 v5.0.0, 0.56 v4.1.0, 0.33 v4.0.1, 0.67 v3.7.0, 0.33 v3.5.0, 0.00 v3.4.0, 0.50 v3.3.0
% Syntax   : Number of formulae    :   25 (   7 unt;   0 def)
%            Number of atoms       :   73 (   0 equ)
%            Maximal formula atoms :    6 (   2 avg)
%            Number of connectives :   56 (   8   ~;  16   |;  13   &)
%                                         (   0 <=>;  19  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    9 (   6 avg)
%            Maximal term depth    :    2 (   1 avg)
%            Number of predicates  :    8 (   8 usr;   0 prp; 1-2 aty)
%            Number of functors    :    4 (   4 usr;   0 con; 2-2 aty)
%            Number of variables   :   61 (  60   !;   1   ?)
% SPC      : FOF_CSA_RFO_NEQ

% Comments : Definitions unfolded, hence Especial.
%------------------------------------------------------------------------------
include('Axioms/GEO008+0.ax').
include('Axioms/GEO006+2.ax').
include('Axioms/GEO006+3.ax').
include('Axioms/GEO006+5.ax').
%------------------------------------------------------------------------------
fof(con,conjecture,
    ! [X,Y] :
      ( ( point(X)
        & line(Y) )
     => ? [Z] :
          ( point(Z)
          & ~ apt(Z,Y) ) ) ).

%------------------------------------------------------------------------------
