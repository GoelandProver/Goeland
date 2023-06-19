%------------------------------------------------------------------------------
% File     : SYO636+1 : TPTP v8.1.2. Released v7.1.0.
% Domain   : Syntactic
% Problem  : Quine
% Version  : Especial.
% English  :

% Refs     : [Qui82] Quine (1982), Methods of Logic
%          : [Lam17] Lampert (2017), Email to Geoff Sutcliffe
% Source   : [Lam17]
% Names    :

% Status   : Satisfiable
% Rating   : 0.67 v7.1.0, 1.00 v7.0.0
% Syntax   : Number of formulae    :    1 (   0 unt;   0 def)
%            Number of atoms       :    4 (   0 equ)
%            Maximal formula atoms :    4 (   4 avg)
%            Number of connectives :    4 (   1   ~;   0   |;   2   &)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    7 (   7 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :    1 (   1 usr;   0 prp; 2-2 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :    3 (   2   !;   1   ?)
% SPC      : FOF_SAT_RFO_NEQ

% Comments : Has only infinite models.
%------------------------------------------------------------------------------
fof(quine,axiom,
    ! [X] :
    ? [Y] :
    ! [Z] :
      ( f(X,Y)
      & ( f(Y,Z)
       => f(X,Z) )
      & ~ f(X,X) ) ).

%------------------------------------------------------------------------------
