%--------------------------------------------------------------------------
% File     : SYN361+1 : TPTP v7.4.0. Released v2.0.0.
% Domain   : Syntactic
% Problem  : Peter Andrews Problem X2112
% Version  : Especial.
% English  :

% Refs     : [And86] Andrews (1986), An Introduction to Mathematical Logic
%          : [And94] Andrews (1994), Email to G. Sutcliffe
% Source   : [And94]
% Names    : X2112 [And86]

% Status   : Theorem
% Rating   : 0.00 v6.4.0, 0.07 v6.3.0, 0.08 v6.2.0, 0.09 v6.1.0, 0.08 v6.0.0, 0.25 v5.5.0, 0.04 v5.3.0, 0.13 v5.2.0, 0.00 v3.2.0, 0.11 v3.1.0, 0.00 v2.5.0, 0.33 v2.4.0, 0.33 v2.2.1, 0.00 v2.1.0
% Syntax   : Number of formulae    :    1 (   0 unit)
%            Number of atoms       :    6 (   0 equality)
%            Maximal formula depth :    8 (   8 average)
%            Number of connectives :    7 (   2 ~  ;   0  |;   2  &)
%                                         (   0 <=>;   3 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    3 (   0 propositional; 1-2 arity)
%            Number of functors    :    0 (   0 constant; --- arity)
%            Number of variables   :    7 (   0 singleton;   4 !;   3 ?)
%            Maximal term depth    :    1 (   1 average)
% SPC      : FOF_THM_RFO_NEQ

% Comments :
%--------------------------------------------------------------------------
fof(x2112,conjecture,
    ( ( ? [V] :
        ! [X] : big_p(X,V)
      & ! [X] :
          ( big_s(X)
         => ? [Y] : big_q(Y,X) )
      & ! [X,Y] :
          ( big_p(X,Y)
         => ~ big_q(X,Y) ) )
   => ? [U] : ~ big_s(U) )).

%--------------------------------------------------------------------------
