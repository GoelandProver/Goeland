%--------------------------------------------------------------------------
% File     : SYN073+1 : TPTP v7.4.0. Released v2.0.0.
% Domain   : Syntactic
% Problem  : Pelletier Problem 50
% Version  : Especial.
% English  :

% Refs     : [Pel86] Pelletier (1986), Seventy-five Problems for Testing Au
%          : [Hah94] Haehnle (1994), Email to G. Sutcliffe
% Source   : [Hah94]
% Names    : Pelletier 50 [Pel86]

% Status   : Theorem
% Rating   : 0.00 v6.3.0, 0.08 v6.2.0, 0.00 v5.5.0, 0.04 v5.3.0, 0.09 v5.2.0, 0.07 v5.0.0, 0.05 v4.1.0, 0.06 v4.0.1, 0.05 v3.7.0, 0.33 v3.5.0, 0.12 v3.4.0, 0.08 v3.3.0, 0.11 v3.1.0, 0.00 v2.5.0, 0.33 v2.4.0, 0.33 v2.2.1, 0.00 v2.1.0
% Syntax   : Number of formulae    :    1 (   0 unit)
%            Number of atoms       :    3 (   0 equality)
%            Maximal formula depth :    5 (   5 average)
%            Number of connectives :    2 (   0 ~  ;   1  |;   0  &)
%                                         (   0 <=>;   1 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    1 (   0 propositional; 2-2 arity)
%            Number of functors    :    1 (   1 constant; 0-0 arity)
%            Number of variables   :    4 (   0 singleton;   3 !;   1 ?)
%            Maximal term depth    :    1 (   1 average)
% SPC      : FOF_THM_RFO_NEQ

% Comments :
%--------------------------------------------------------------------------
fof(pel50,conjecture,
    ( ! [X] :
        ( big_f(a,X)
        | ! [Y] : big_f(X,Y) )
   => ? [X1] :
      ! [Y1] : big_f(X1,Y1) )).

%--------------------------------------------------------------------------