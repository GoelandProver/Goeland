%--------------------------------------------------------------------------
% File     : SYN359+1 : TPTP v7.4.0. Released v2.0.0.
% Domain   : Syntactic
% Problem  : Peter Andrews Problem X2110
% Version  : Especial.
% English  :

% Refs     : [And86] Andrews (1986), An Introduction to Mathematical Logic
%          : [And94] Andrews (1994), Email to G. Sutcliffe
% Source   : [And94]
% Names    : X2110 [And86]

% Status   : Theorem
% Rating   : 0.00 v5.3.0, 0.09 v5.2.0, 0.00 v3.2.0, 0.22 v3.1.0, 0.00 v2.5.0, 0.33 v2.4.0, 0.33 v2.2.1, 0.00 v2.1.0
% Syntax   : Number of formulae    :    1 (   0 unit)
%            Number of atoms       :    7 (   0 equality)
%            Maximal formula depth :    7 (   7 average)
%            Number of connectives :    6 (   0 ~  ;   0  |;   3  &)
%                                         (   0 <=>;   3 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    2 (   0 propositional; 1-2 arity)
%            Number of functors    :    0 (   0 constant; --- arity)
%            Number of variables   :    7 (   0 singleton;   3 !;   4 ?)
%            Maximal term depth    :    1 (   1 average)
% SPC      : FOF_THM_RFO_NEQ

% Comments :
%--------------------------------------------------------------------------
fof(x2110,conjecture,
    ( ( ? [X] : big_r(X)
      & ! [Y] :
          ( big_r(Y)
         => ? [Z] : big_q(Y,Z) )
      & ! [X,Y] :
          ( big_q(X,Y)
         => big_q(X,X) ) )
   => ? [X,Y] :
        ( big_q(X,Y)
        & big_r(Y) ) )).

%--------------------------------------------------------------------------