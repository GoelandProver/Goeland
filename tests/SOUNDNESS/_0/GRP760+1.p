%------------------------------------------------------------------------------
% File     : GRP760+1 : TPTP v8.1.2. Released v4.0.0.
% Domain   : Group Theory
% Problem  : A group that must be infinite
% Version  : Especial.
% English  : A group containing an element of order 2 and having square roots
%            must be infinite.

% Refs     : [Sta08] Stanovsky (2008), Email to Geoff Sutcliffe
% Source   : [Sta08]
% Names    :

% Status   : Satisfiable
% Rating   : 1.00 v4.0.0
% Syntax   : Number of formulae    :    5 (   4 unt;   0 def)
%            Number of atoms       :    6 (   6 equ)
%            Maximal formula atoms :    2 (   1 avg)
%            Number of connectives :    2 (   1   ~;   0   |;   1   &)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    4 (   3 avg)
%            Maximal term depth    :    3 (   1 avg)
%            Number of predicates  :    1 (   0 usr;   0 prp; 2-2 aty)
%            Number of functors    :    4 (   4 usr;   2 con; 0-2 aty)
%            Number of variables   :    7 (   6   !;   1   ?)
% SPC      : FOF_SAT_RFO_PEQ

% Comments : The only proof Stanovsky knows is using Lagrange's theorem.
%          : Infinox solves this easily.
%------------------------------------------------------------------------------
fof(f01,axiom,
    ! [A] : mult(A,i(A)) = e ).

fof(f02,axiom,
    ! [A] : mult(A,e) = A ).

fof(f03,axiom,
    ! [B,A,C] : mult(A,mult(B,C)) = mult(mult(A,B),C) ).

fof(f04,axiom,
    ( mult(a,a) = e
    & a != e ) ).

fof(f05,axiom,
    ! [A] :
    ? [B] : mult(B,B) = A ).

%------------------------------------------------------------------------------
