%--------------------------------------------------------------------------
% File     : SYN724+1 : TPTP v7.4.0. Released v2.5.0.
% Domain   : Syntactic
% Problem  : Peter Andrews Problem THM31
% Version  : Especial.
% English  :

% Refs     : [And97] Andrews (1994), Email to G. Sutcliffe
% Source   : [And97]
% Names    : THM31 [And97]

% Status   : Theorem
% Rating   : 0.00 v4.0.1, 0.05 v4.0.0, 0.10 v3.7.0, 0.00 v3.3.0, 0.11 v3.1.0, 0.17 v2.7.0, 0.00 v2.5.0
% Syntax   : Number of formulae    :    1 (   0 unit)
%            Number of atoms       :    5 (   0 equality)
%            Maximal formula depth :    5 (   5 average)
%            Number of connectives :    4 (   0 ~  ;   0  |;   1  &)
%                                         (   2 <=>;   1 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    2 (   0 propositional; 1-1 arity)
%            Number of functors    :    0 (   0 constant; --- arity)
%            Number of variables   :    2 (   0 singleton;   2 !;   0 ?)
%            Maximal term depth    :    1 (   1 average)
% SPC      : FOF_THM_EPR_NEQ

% Comments :
%--------------------------------------------------------------------------
fof(thm31,conjecture,
    ( ! [X] :
        ( r(X)
       => s(X) )
  <=> ! [X] :
        ( ( r(X)
          & s(X) )
      <=> r(X) ) )).
