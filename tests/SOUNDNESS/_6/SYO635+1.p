%------------------------------------------------------------------------------
% File     : SYO635+1 : TPTP v8.1.2. Released v7.1.0.
% Domain   : Syntactic
% Problem  : Goldfarb
% Version  : Especial.
% English  :

% Refs     : [DG79]  Dreben & Goldfarb (1979), Decision Problem: Solvable C
%          : [Lam17] Lampert (2017), Email to Geoff Sutcliffe
% Source   : [Lam17]
% Names    : 

% Status   : Satisfiable
% Rating   : 1.00 v7.0.0
% Syntax   : Number of formulae    :    1 (   0 unt;   0 def)
%            Number of atoms       :    6 (   0 equ)
%            Maximal formula atoms :    6 (   6 avg)
%            Number of connectives :    6 (   1   ~;   0   |;   3   &)
%                                         (   0 <=>;   2  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    8 (   8 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :    2 (   2 usr;   0 prp; 2-2 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :    3 (   2   !;   1   ?)
% SPC      : FOF_SAT_RFO_NEQ

% Comments : Has only infinite models.
%------------------------------------------------------------------------------
fof(goldfarb,axiom,
    ! [X] :
    ? [Y] :
    ! [Z] :
      ( ( p(X,Z)
       => q(Y,Z) )
      & ( q(X,Z)
       => q(Y,Z) )
      & ~ q(X,X)
      & p(X,X) ) ).

%------------------------------------------------------------------------------
