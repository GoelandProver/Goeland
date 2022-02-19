%--------------------------------------------------------------------------
% File     : SYN355+1 : TPTP v7.4.0. Released v2.0.0.
% Domain   : Syntactic
% Problem  : Peter Andrews Problem X2106
% Version  : Especial.
% English  :

% Refs     : [And86] Andrews (1986), An Introduction to Mathematical Logic
%          : [And94] Andrews (1994), Email to G. Sutcliffe
% Source   : [And94]
% Names    : X2106 [And86]

% Status   : Theorem
% Rating   : 0.00 v5.3.0, 0.09 v5.2.0, 0.00 v2.1.0
% Syntax   : Number of formulae    :    1 (   0 unit)
%            Number of atoms       :    6 (   0 equality)
%            Maximal formula depth :    6 (   6 average)
%            Number of connectives :    6 (   1 ~  ;   1  |;   1  &)
%                                         (   0 <=>;   3 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    3 (   0 propositional; 1-1 arity)
%            Number of functors    :    0 (   0 constant; --- arity)
%            Number of variables   :    3 (   0 singleton;   3 !;   0 ?)
%            Maximal term depth    :    1 (   1 average)
% SPC      : FOF_THM_EPR_NEQ

% Comments :
%--------------------------------------------------------------------------
fof(x2106,conjecture,
    ( ( ! [X] :
          ( big_r(X)
         => big_p(X) )
      & ! [X] :
          ( ~ big_q(X)
         => big_r(X) ) )
   => ! [X] :
        ( big_p(X)
        | big_q(X) ) )).

%--------------------------------------------------------------------------