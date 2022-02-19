

%--------------------------------------------------------------------------
% File     : SYN379+1 : TPTP v7.4.0. Released v2.0.0.
% Domain   : Syntactic
% Problem  : Peter Andrews Problem X2131
% Version  : Especial.
% English  :

% Refs     : [And86] Andrews (1986), An Introduction to Mathematical Logic
%          : [And94] Andrews (1994), Email to G. Sutcliffe
% Source   : [And94]
% Names    : X2131 [And86]

% Status   : Theorem
% Rating   : 0.00 v5.4.0, 0.11 v5.3.0, 0.18 v5.2.0, 0.00 v4.1.0, 0.06 v4.0.1, 0.05 v3.7.0, 0.33 v3.5.0, 0.12 v3.4.0, 0.08 v3.3.0, 0.00 v3.2.0, 0.11 v3.1.0, 0.00 v2.5.0, 0.33 v2.4.0, 0.33 v2.2.1, 0.00 v2.1.0
% Syntax   : Number of formulae    :    1 (   0 unit)
%            Number of atoms       :    4 (   0 equality)
%            Maximal formula depth :    8 (   8 average)
%            Number of connectives :    5 (   2 ~  ;   0  |;   1  &)
%                                         (   0 <=>;   2 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    2 (   0 propositional; 1-3 arity)
%            Number of functors    :    0 (   0 constant; --- arity)
%            Number of variables   :    5 (   0 singleton;   4 !;   1 ?)
%            Maximal term depth    :    1 (   1 average)
% SPC      : FOF_THM_EPR_NEQ

% Comments :
%--------------------------------------------------------------------------
fof(x2131,conjecture,
    ( ! [X] : big_p(X)
   => ? [Y] :
        ( ! [X,Z] : big_q(X,Y,Z)
       => ~ ( ! [Z] :
                ( big_p(Z)
                & ~ big_q(Y,Y,Z) ) ) ) )).

%--------------------------------------------------------------------------
