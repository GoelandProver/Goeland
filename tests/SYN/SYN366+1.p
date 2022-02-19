%--------------------------------------------------------------------------
% File     : SYN366+1 : TPTP v7.4.0. Released v2.0.0.
% Domain   : Syntactic
% Problem  : Peter Andrews Problem X2117
% Version  : Especial.
% English  :

% Refs     : [And86] Andrews (1986), An Introduction to Mathematical Logic
%          : [And94] Andrews (1994), Email to G. Sutcliffe
% Source   : [And94]
% Names    : X2117 [And86]

% Status   : Theorem
% Rating   : 0.00 v5.3.0, 0.09 v5.2.0, 0.00 v3.2.0, 0.11 v3.1.0, 0.00 v2.5.0, 0.33 v2.4.0, 0.33 v2.2.1, 0.00 v2.1.0
% Syntax   : Number of formulae    :    1 (   0 unit)
%            Number of atoms       :    6 (   0 equality)
%            Maximal formula depth :    6 (   6 average)
%            Number of connectives :    5 (   0 ~  ;   0  |;   1  &)
%                                         (   2 <=>;   2 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    1 (   0 propositional; 2-2 arity)
%            Number of functors    :    0 (   0 constant; --- arity)
%            Number of variables   :    6 (   0 singleton;   5 !;   1 ?)
%            Maximal term depth    :    1 (   1 average)
% SPC      : FOF_THM_EPR_NEQ

% Comments :
%--------------------------------------------------------------------------
fof(x2117,conjecture,
    ( ( ! [U,V] :
          ( big_r(U,U)
        <=> big_r(U,V) )
      & ! [W,Z] :
          ( big_r(W,W)
        <=> big_r(Z,W) ) )
   => ( ? [X] : big_r(X,X)
     => ! [Y] : big_r(Y,Y) ) )).

%--------------------------------------------------------------------------