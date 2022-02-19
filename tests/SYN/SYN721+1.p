
%--------------------------------------------------------------------------
% File     : SYN721+1 : TPTP v7.4.0. Released v2.5.0.
% Domain   : Syntactic
% Problem  : Peter Andrews Problem LX1
% Version  : Especial.
% English  :

% Refs     : [And97] Andrews (1994), Email to G. Sutcliffe
% Source   : [And97]
% Names    : LX1 [And97]

% Status   : Theorem
% Rating   : 0.00 v2.5.0
% Syntax   : Number of formulae    :    1 (   0 unit)
%            Number of atoms       :    7 (   0 equality)
%            Maximal formula depth :    8 (   8 average)
%            Number of connectives :    6 (   0 ~  ;   0  |;   3  &)
%                                         (   0 <=>;   3 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    2 (   0 propositional; 2-2 arity)
%            Number of functors    :    2 (   2 constant; 0-0 arity)
%            Number of variables   :    6 (   0 singleton;   4 !;   2 ?)
%            Maximal term depth    :    1 (   1 average)
% SPC      : FOF_THM_EPR_NEQ

% Comments :
%--------------------------------------------------------------------------
fof(lx1,conjecture,
    ( ( r(a,b)
      & ! [X] :
          ( ? [Y] : r(X,Y)
         => q(X,X) )
      & ! [U,V] :
          ( q(U,V)
         => ! [Z] : r(Z,V) ) )
   => ? [W] :
        ( r(b,W)
        & q(W,a) ) )).

%--------------------------------------------------------------------------

