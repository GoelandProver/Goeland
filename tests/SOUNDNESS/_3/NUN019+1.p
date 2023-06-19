%------------------------------------------------------------------------------
% File     : NUN019+1 : TPTP v8.1.2. Released v6.3.0.
% Domain   : Number Theory
% Problem  : Peano greater and unequal
% Version  : Especial.
% English  :

% Refs     :
% Source   : [TPTP]
% Names    :

% Status   : Satisfiable
% Rating   : 1.00 v6.3.0
% Syntax   : Number of formulae    :    3 (   1 unt;   0 def)
%            Number of atoms       :    5 (   1 equ)
%            Maximal formula atoms :    2 (   1 avg)
%            Number of connectives :    3 (   1   ~;   0   |;   0   &)
%                                         (   0 <=>;   2  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    5 (   4 avg)
%            Maximal term depth    :    2 (   1 avg)
%            Number of predicates  :    2 (   1 usr;   0 prp; 2-2 aty)
%            Number of functors    :    1 (   1 usr;   0 con; 1-1 aty)
%            Number of variables   :    5 (   5   !;   0   ?)
% SPC      : FOF_SAT_RFO_SEQ

% Comments : Stephan Schulz says "I've looked at the problem, and I cannot find %            a way in which plain superposition with selection will terminate
%            on this problem."
%          : Uwe Waldmann says "It looks like a nice application for a
%            superposition calculus with schematic terms."
%          : Christoph Weidenbach says "This is an inductive property so in
%            general no way for first-order reasoning."
%          : Nicolas Peltier says "From a theoretical point of view,
%            superposition with term schematization can terminate on your
%            example."
%------------------------------------------------------------------------------
fof(greater_0,axiom,
    ! [X] : greater(s(X),X) ).

fof(greater_1,axiom,
    ! [X,Y] :
      ( greater(X,Y)
     => greater(s(X),Y) ) ).

fof(not_equal_0,axiom,
    ! [X,Y] :
      ( greater(X,Y)
     => X != Y ) ).

%------------------------------------------------------------------------------
