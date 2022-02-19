%--------------------------------------------------------------------------
% File     : SYN398+1 : TPTP v7.4.0. Released v2.0.0.
% Domain   : Syntactic
% Problem  : Kalish and Montague Problem 215
% Version  : Especial.
% English  : Laws of confinement.

% Refs     : [KM64]  Kalish & Montegue (1964), Logic: Techniques of Formal
%          : [Hah94] Haehnle (1994), Email to G. Sutcliffe
% Source   : [Hah94]
% Names    : kalish215 [Hah94]

% Status   : Theorem
% Rating   : 0.00 v5.3.0, 0.09 v5.2.0, 0.00 v4.0.1, 0.05 v3.7.0, 0.00 v3.2.0, 0.11 v3.1.0, 0.00 v2.5.0, 0.33 v2.4.0, 0.33 v2.2.1, 0.00 v2.1.0
% Syntax   : Number of formulae    :    1 (   0 unit)
%            Number of atoms       :    4 (   0 equality)
%            Maximal formula depth :    4 (   4 average)
%            Number of connectives :    3 (   0 ~  ;   0  |;   2  &)
%                                         (   1 <=>;   0 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    2 (   1 propositional; 0-1 arity)
%            Number of functors    :    0 (   0 constant; --- arity)
%            Number of variables   :    2 (   0 singleton;   2 !;   0 ?)
%            Maximal term depth    :    1 (   1 average)
% SPC      : FOF_THM_EPR_NEQ

% Comments :
%--------------------------------------------------------------------------
fof(kalish215,conjecture,
    ( ! [X] :
        ( p
        & f(X) )
  <=> ( p
      & ! [Y] : f(Y) ) )).

%--------------------------------------------------------------------------